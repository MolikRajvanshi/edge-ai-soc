#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_input_data "../tv/cdatafile/c.accel_top.autotvin_input_data.dat"
#define AUTOTB_TVOUT_input_data "../tv/cdatafile/c.accel_top.autotvout_input_data.dat"
#define AUTOTB_TVIN_weight_data "../tv/cdatafile/c.accel_top.autotvin_weight_data.dat"
#define AUTOTB_TVOUT_weight_data "../tv/cdatafile/c.accel_top.autotvout_weight_data.dat"
#define AUTOTB_TVIN_bias_data "../tv/cdatafile/c.accel_top.autotvin_bias_data.dat"
#define AUTOTB_TVOUT_bias_data "../tv/cdatafile/c.accel_top.autotvout_bias_data.dat"
#define AUTOTB_TVIN_output_data "../tv/cdatafile/c.accel_top.autotvin_output_data.dat"
#define AUTOTB_TVOUT_output_data "../tv/cdatafile/c.accel_top.autotvout_output_data.dat"
#define AUTOTB_TVIN_kernel_size "../tv/cdatafile/c.accel_top.autotvin_kernel_size.dat"
#define AUTOTB_TVOUT_kernel_size "../tv/cdatafile/c.accel_top.autotvout_kernel_size.dat"
#define AUTOTB_TVIN_in_channels "../tv/cdatafile/c.accel_top.autotvin_in_channels.dat"
#define AUTOTB_TVOUT_in_channels "../tv/cdatafile/c.accel_top.autotvout_in_channels.dat"
#define AUTOTB_TVIN_out_channels "../tv/cdatafile/c.accel_top.autotvin_out_channels.dat"
#define AUTOTB_TVOUT_out_channels "../tv/cdatafile/c.accel_top.autotvout_out_channels.dat"
#define AUTOTB_TVIN_in_height "../tv/cdatafile/c.accel_top.autotvin_in_height.dat"
#define AUTOTB_TVOUT_in_height "../tv/cdatafile/c.accel_top.autotvout_in_height.dat"
#define AUTOTB_TVIN_in_width "../tv/cdatafile/c.accel_top.autotvin_in_width.dat"
#define AUTOTB_TVOUT_in_width "../tv/cdatafile/c.accel_top.autotvout_in_width.dat"
#define AUTOTB_TVIN_stride "../tv/cdatafile/c.accel_top.autotvin_stride.dat"
#define AUTOTB_TVOUT_stride "../tv/cdatafile/c.accel_top.autotvout_stride.dat"
#define AUTOTB_TVIN_padding "../tv/cdatafile/c.accel_top.autotvin_padding.dat"
#define AUTOTB_TVOUT_padding "../tv/cdatafile/c.accel_top.autotvout_padding.dat"
#define AUTOTB_TVIN_relu_enable "../tv/cdatafile/c.accel_top.autotvin_relu_enable.dat"
#define AUTOTB_TVOUT_relu_enable "../tv/cdatafile/c.accel_top.autotvout_relu_enable.dat"
#define AUTOTB_TVIN_pool_enable "../tv/cdatafile/c.accel_top.autotvin_pool_enable.dat"
#define AUTOTB_TVOUT_pool_enable "../tv/cdatafile/c.accel_top.autotvout_pool_enable.dat"
#define AUTOTB_TVIN_DATA "../tv/cdatafile/c.accel_top.autotvin_DATA.dat"
#define AUTOTB_TVOUT_DATA "../tv/cdatafile/c.accel_top.autotvout_DATA.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_input_data "../tv/rtldatafile/rtl.accel_top.autotvout_input_data.dat"
#define AUTOTB_TVOUT_PC_weight_data "../tv/rtldatafile/rtl.accel_top.autotvout_weight_data.dat"
#define AUTOTB_TVOUT_PC_bias_data "../tv/rtldatafile/rtl.accel_top.autotvout_bias_data.dat"
#define AUTOTB_TVOUT_PC_output_data "../tv/rtldatafile/rtl.accel_top.autotvout_output_data.dat"
#define AUTOTB_TVOUT_PC_kernel_size "../tv/rtldatafile/rtl.accel_top.autotvout_kernel_size.dat"
#define AUTOTB_TVOUT_PC_in_channels "../tv/rtldatafile/rtl.accel_top.autotvout_in_channels.dat"
#define AUTOTB_TVOUT_PC_out_channels "../tv/rtldatafile/rtl.accel_top.autotvout_out_channels.dat"
#define AUTOTB_TVOUT_PC_in_height "../tv/rtldatafile/rtl.accel_top.autotvout_in_height.dat"
#define AUTOTB_TVOUT_PC_in_width "../tv/rtldatafile/rtl.accel_top.autotvout_in_width.dat"
#define AUTOTB_TVOUT_PC_stride "../tv/rtldatafile/rtl.accel_top.autotvout_stride.dat"
#define AUTOTB_TVOUT_PC_padding "../tv/rtldatafile/rtl.accel_top.autotvout_padding.dat"
#define AUTOTB_TVOUT_PC_relu_enable "../tv/rtldatafile/rtl.accel_top.autotvout_relu_enable.dat"
#define AUTOTB_TVOUT_PC_pool_enable "../tv/rtldatafile/rtl.accel_top.autotvout_pool_enable.dat"
#define AUTOTB_TVOUT_PC_DATA "../tv/rtldatafile/rtl.accel_top.autotvout_DATA.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  input_data_depth = 0;
  weight_data_depth = 0;
  bias_data_depth = 0;
  output_data_depth = 0;
  kernel_size_depth = 0;
  in_channels_depth = 0;
  out_channels_depth = 0;
  in_height_depth = 0;
  in_width_depth = 0;
  stride_depth = 0;
  padding_depth = 0;
  relu_enable_depth = 0;
  pool_enable_depth = 0;
  DATA_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{input_data " << input_data_depth << "}\n";
  total_list << "{weight_data " << weight_data_depth << "}\n";
  total_list << "{bias_data " << bias_data_depth << "}\n";
  total_list << "{output_data " << output_data_depth << "}\n";
  total_list << "{kernel_size " << kernel_size_depth << "}\n";
  total_list << "{in_channels " << in_channels_depth << "}\n";
  total_list << "{out_channels " << out_channels_depth << "}\n";
  total_list << "{in_height " << in_height_depth << "}\n";
  total_list << "{in_width " << in_width_depth << "}\n";
  total_list << "{stride " << stride_depth << "}\n";
  total_list << "{padding " << padding_depth << "}\n";
  total_list << "{relu_enable " << relu_enable_depth << "}\n";
  total_list << "{pool_enable " << pool_enable_depth << "}\n";
  total_list << "{DATA " << DATA_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int input_data_depth;
    int weight_data_depth;
    int bias_data_depth;
    int output_data_depth;
    int kernel_size_depth;
    int in_channels_depth;
    int out_channels_depth;
    int in_height_depth;
    int in_width_depth;
    int stride_depth;
    int padding_depth;
    int relu_enable_depth;
    int pool_enable_depth;
    int DATA_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void accel_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, int, int, int, int, int, int, int, int, int);

extern "C" void apatb_accel_top_hw(volatile void * __xlx_apatb_param_input_data, volatile void * __xlx_apatb_param_weight_data, volatile void * __xlx_apatb_param_bias_data, volatile void * __xlx_apatb_param_output_data, int __xlx_apatb_param_kernel_size, int __xlx_apatb_param_in_channels, int __xlx_apatb_param_out_channels, int __xlx_apatb_param_in_height, int __xlx_apatb_param_in_width, int __xlx_apatb_param_stride, int __xlx_apatb_param_padding, int __xlx_apatb_param_relu_enable, int __xlx_apatb_param_pool_enable) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(98368);
aesl_fh.read(AUTOTB_TVOUT_PC_DATA, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_input_data, 16384, 0);
tr.send<4>((char*)__xlx_apatb_param_weight_data, 16384, 16384);
tr.send<4>((char*)__xlx_apatb_param_bias_data, 64, 32768);
tr.send<4>((char*)__xlx_apatb_param_output_data, 65536, 32832);
}
#else
try {
static PostCheck<32> pc(AUTOTB_TVOUT_PC_DATA);
pc.psize = 4;
pc.param = (char*)__xlx_apatb_param_input_data;
pc.depth = 16384;
pc.run(AESL_transaction_pc, 0);pc.param = (char*)__xlx_apatb_param_weight_data;
pc.depth = 16384;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_bias_data;
pc.depth = 64;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_output_data;
pc.depth = 65536;
pc.run(AESL_transaction_pc, 0);

} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_input_data = 0;
unsigned __xlx_offset_byte_param_weight_data = 0;
unsigned __xlx_offset_byte_param_bias_data = 0;
unsigned __xlx_offset_byte_param_output_data = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_DATA, 'b');
transaction<32> tr(98368);
__xlx_offset_byte_param_input_data = 0*4;
if (__xlx_apatb_param_input_data) {
  tr.import<4>((char*)__xlx_apatb_param_input_data, 16384, 0);
}
__xlx_offset_byte_param_weight_data = 16384*4;
if (__xlx_apatb_param_weight_data) {
  tr.import<4>((char*)__xlx_apatb_param_weight_data, 16384, 0);
}
__xlx_offset_byte_param_bias_data = 32768*4;
if (__xlx_apatb_param_bias_data) {
  tr.import<4>((char*)__xlx_apatb_param_bias_data, 64, 0);
}
__xlx_offset_byte_param_output_data = 32832*4;
if (__xlx_apatb_param_output_data) {
  tr.import<4>((char*)__xlx_apatb_param_output_data, 65536, 0);
}
aesl_fh.write(AUTOTB_TVIN_DATA, tr.p, tr.tbytes);
tcl_file.set_num(98368, &tcl_file.DATA_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_DATA);
{
aesl_fh.write(AUTOTB_TVIN_DATA, begin_str(AESL_transaction));
__xlx_offset_byte_param_input_data = 0*4;
if (__xlx_apatb_param_input_data) {
for (size_t i = 0; i < 16384; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_input_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_DATA, s);
}
}
__xlx_offset_byte_param_weight_data = 16384*4;
if (__xlx_apatb_param_weight_data) {
for (size_t i = 0; i < 16384; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weight_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_DATA, s);
}
}
__xlx_offset_byte_param_bias_data = 32768*4;
if (__xlx_apatb_param_bias_data) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_bias_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_DATA, s);
}
}
__xlx_offset_byte_param_output_data = 32832*4;
if (__xlx_apatb_param_output_data) {
for (size_t i = 0; i < 65536; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_output_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_DATA, s);
}
}
tcl_file.set_num(98368, &tcl_file.DATA_depth);
aesl_fh.write(AUTOTB_TVIN_DATA, end_str());
}
#endif
// print input_data Transactions
{
aesl_fh.write(AUTOTB_TVIN_input_data, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_input_data;
aesl_fh.write(AUTOTB_TVIN_input_data, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.input_data_depth);
aesl_fh.write(AUTOTB_TVIN_input_data, end_str());
}

// print weight_data Transactions
{
aesl_fh.write(AUTOTB_TVIN_weight_data, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_weight_data;
aesl_fh.write(AUTOTB_TVIN_weight_data, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.weight_data_depth);
aesl_fh.write(AUTOTB_TVIN_weight_data, end_str());
}

// print bias_data Transactions
{
aesl_fh.write(AUTOTB_TVIN_bias_data, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_bias_data;
aesl_fh.write(AUTOTB_TVIN_bias_data, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.bias_data_depth);
aesl_fh.write(AUTOTB_TVIN_bias_data, end_str());
}

// print output_data Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_data, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_output_data;
aesl_fh.write(AUTOTB_TVIN_output_data, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.output_data_depth);
aesl_fh.write(AUTOTB_TVIN_output_data, end_str());
}

// print kernel_size Transactions
{
aesl_fh.write(AUTOTB_TVIN_kernel_size, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_kernel_size;
aesl_fh.write(AUTOTB_TVIN_kernel_size, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.kernel_size_depth);
aesl_fh.write(AUTOTB_TVIN_kernel_size, end_str());
}

// print in_channels Transactions
{
aesl_fh.write(AUTOTB_TVIN_in_channels, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_in_channels;
aesl_fh.write(AUTOTB_TVIN_in_channels, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.in_channels_depth);
aesl_fh.write(AUTOTB_TVIN_in_channels, end_str());
}

// print out_channels Transactions
{
aesl_fh.write(AUTOTB_TVIN_out_channels, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_out_channels;
aesl_fh.write(AUTOTB_TVIN_out_channels, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.out_channels_depth);
aesl_fh.write(AUTOTB_TVIN_out_channels, end_str());
}

// print in_height Transactions
{
aesl_fh.write(AUTOTB_TVIN_in_height, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_in_height;
aesl_fh.write(AUTOTB_TVIN_in_height, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.in_height_depth);
aesl_fh.write(AUTOTB_TVIN_in_height, end_str());
}

// print in_width Transactions
{
aesl_fh.write(AUTOTB_TVIN_in_width, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_in_width;
aesl_fh.write(AUTOTB_TVIN_in_width, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.in_width_depth);
aesl_fh.write(AUTOTB_TVIN_in_width, end_str());
}

// print stride Transactions
{
aesl_fh.write(AUTOTB_TVIN_stride, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_stride;
aesl_fh.write(AUTOTB_TVIN_stride, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.stride_depth);
aesl_fh.write(AUTOTB_TVIN_stride, end_str());
}

// print padding Transactions
{
aesl_fh.write(AUTOTB_TVIN_padding, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_padding;
aesl_fh.write(AUTOTB_TVIN_padding, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.padding_depth);
aesl_fh.write(AUTOTB_TVIN_padding, end_str());
}

// print relu_enable Transactions
{
aesl_fh.write(AUTOTB_TVIN_relu_enable, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_relu_enable;
aesl_fh.write(AUTOTB_TVIN_relu_enable, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.relu_enable_depth);
aesl_fh.write(AUTOTB_TVIN_relu_enable, end_str());
}

// print pool_enable Transactions
{
aesl_fh.write(AUTOTB_TVIN_pool_enable, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_pool_enable;
aesl_fh.write(AUTOTB_TVIN_pool_enable, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.pool_enable_depth);
aesl_fh.write(AUTOTB_TVIN_pool_enable, end_str());
}

CodeState = CALL_C_DUT;
accel_top_hw_stub_wrapper(__xlx_apatb_param_input_data, __xlx_apatb_param_weight_data, __xlx_apatb_param_bias_data, __xlx_apatb_param_output_data, __xlx_apatb_param_kernel_size, __xlx_apatb_param_in_channels, __xlx_apatb_param_out_channels, __xlx_apatb_param_in_height, __xlx_apatb_param_in_width, __xlx_apatb_param_stride, __xlx_apatb_param_padding, __xlx_apatb_param_relu_enable, __xlx_apatb_param_pool_enable);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_DATA, 'b');
transaction<32> tr(98368);
__xlx_offset_byte_param_input_data = 0*4;
if (__xlx_apatb_param_input_data) {
  tr.import<4>((char*)__xlx_apatb_param_input_data, 16384, 0);
}
__xlx_offset_byte_param_weight_data = 16384*4;
if (__xlx_apatb_param_weight_data) {
  tr.import<4>((char*)__xlx_apatb_param_weight_data, 16384, 0);
}
__xlx_offset_byte_param_bias_data = 32768*4;
if (__xlx_apatb_param_bias_data) {
  tr.import<4>((char*)__xlx_apatb_param_bias_data, 64, 0);
}
__xlx_offset_byte_param_output_data = 32832*4;
if (__xlx_apatb_param_output_data) {
  tr.import<4>((char*)__xlx_apatb_param_output_data, 65536, 0);
}
aesl_fh.write(AUTOTB_TVOUT_DATA, tr.p, tr.tbytes);
tcl_file.set_num(98368, &tcl_file.DATA_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_DATA);
{
aesl_fh.write(AUTOTB_TVOUT_DATA, begin_str(AESL_transaction));
__xlx_offset_byte_param_input_data = 0*4;
if (__xlx_apatb_param_input_data) {
for (size_t i = 0; i < 16384; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_input_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_DATA, s);
}
}
__xlx_offset_byte_param_weight_data = 16384*4;
if (__xlx_apatb_param_weight_data) {
for (size_t i = 0; i < 16384; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weight_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_DATA, s);
}
}
__xlx_offset_byte_param_bias_data = 32768*4;
if (__xlx_apatb_param_bias_data) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_bias_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_DATA, s);
}
}
__xlx_offset_byte_param_output_data = 32832*4;
if (__xlx_apatb_param_output_data) {
for (size_t i = 0; i < 65536; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_output_data + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_DATA, s);
}
}
tcl_file.set_num(98368, &tcl_file.DATA_depth);
aesl_fh.write(AUTOTB_TVOUT_DATA, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
