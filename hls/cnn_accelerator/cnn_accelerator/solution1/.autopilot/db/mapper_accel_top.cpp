#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void accel_top(int*, int, int, int, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_accel_top_hw(volatile void * __xlx_apatb_param_input_data, volatile void * __xlx_apatb_param_weight_data, volatile void * __xlx_apatb_param_bias_data, volatile void * __xlx_apatb_param_output_data, int __xlx_apatb_param_kernel_size, int __xlx_apatb_param_in_channels, int __xlx_apatb_param_out_channels, int __xlx_apatb_param_in_height, int __xlx_apatb_param_in_width, int __xlx_apatb_param_stride, int __xlx_apatb_param_padding, int __xlx_apatb_param_relu_enable, int __xlx_apatb_param_pool_enable) {
  // Collect __xlx_input_data_weight_data_bias_data_output_data__tmp_vec
  vector<sc_bv<32> >__xlx_input_data_weight_data_bias_data_output_data__tmp_vec;
  for (int j = 0, e = 16384; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_input_data)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_input_data)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_input_data)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_input_data)[j*4+3];
    __xlx_input_data_weight_data_bias_data_output_data__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_input_data = 16384;
  int __xlx_offset_param_input_data = 0;
  int __xlx_offset_byte_param_input_data = 0*4;
  for (int j = 0, e = 16384; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weight_data)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weight_data)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_weight_data)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_weight_data)[j*4+3];
    __xlx_input_data_weight_data_bias_data_output_data__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weight_data = 16384;
  int __xlx_offset_param_weight_data = 16384;
  int __xlx_offset_byte_param_weight_data = 16384*4;
  for (int j = 0, e = 64; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_bias_data)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_bias_data)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_bias_data)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_bias_data)[j*4+3];
    __xlx_input_data_weight_data_bias_data_output_data__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_bias_data = 64;
  int __xlx_offset_param_bias_data = 32768;
  int __xlx_offset_byte_param_bias_data = 32768*4;
  for (int j = 0, e = 65536; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_output_data)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_output_data)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_output_data)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_output_data)[j*4+3];
    __xlx_input_data_weight_data_bias_data_output_data__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_output_data = 65536;
  int __xlx_offset_param_output_data = 32832;
  int __xlx_offset_byte_param_output_data = 32832*4;
  int* __xlx_input_data_weight_data_bias_data_output_data__input_buffer= new int[__xlx_input_data_weight_data_bias_data_output_data__tmp_vec.size()];
  for (int i = 0; i < __xlx_input_data_weight_data_bias_data_output_data__tmp_vec.size(); ++i) {
    __xlx_input_data_weight_data_bias_data_output_data__input_buffer[i] = __xlx_input_data_weight_data_bias_data_output_data__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  accel_top(__xlx_input_data_weight_data_bias_data_output_data__input_buffer, __xlx_offset_byte_param_input_data, __xlx_offset_byte_param_weight_data, __xlx_offset_byte_param_bias_data, __xlx_offset_byte_param_output_data, __xlx_apatb_param_kernel_size, __xlx_apatb_param_in_channels, __xlx_apatb_param_out_channels, __xlx_apatb_param_in_height, __xlx_apatb_param_in_width, __xlx_apatb_param_stride, __xlx_apatb_param_padding, __xlx_apatb_param_relu_enable, __xlx_apatb_param_pool_enable);
// print __xlx_apatb_param_input_data
  sc_bv<32>*__xlx_input_data_output_buffer = new sc_bv<32>[__xlx_size_param_input_data];
  for (int i = 0; i < __xlx_size_param_input_data; ++i) {
    __xlx_input_data_output_buffer[i] = __xlx_input_data_weight_data_bias_data_output_data__input_buffer[i+__xlx_offset_param_input_data];
  }
  for (int i = 0; i < __xlx_size_param_input_data; ++i) {
    ((char*)__xlx_apatb_param_input_data)[i*4+0] = __xlx_input_data_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_input_data)[i*4+1] = __xlx_input_data_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_input_data)[i*4+2] = __xlx_input_data_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_input_data)[i*4+3] = __xlx_input_data_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_weight_data
  sc_bv<32>*__xlx_weight_data_output_buffer = new sc_bv<32>[__xlx_size_param_weight_data];
  for (int i = 0; i < __xlx_size_param_weight_data; ++i) {
    __xlx_weight_data_output_buffer[i] = __xlx_input_data_weight_data_bias_data_output_data__input_buffer[i+__xlx_offset_param_weight_data];
  }
  for (int i = 0; i < __xlx_size_param_weight_data; ++i) {
    ((char*)__xlx_apatb_param_weight_data)[i*4+0] = __xlx_weight_data_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weight_data)[i*4+1] = __xlx_weight_data_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_weight_data)[i*4+2] = __xlx_weight_data_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_weight_data)[i*4+3] = __xlx_weight_data_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_bias_data
  sc_bv<32>*__xlx_bias_data_output_buffer = new sc_bv<32>[__xlx_size_param_bias_data];
  for (int i = 0; i < __xlx_size_param_bias_data; ++i) {
    __xlx_bias_data_output_buffer[i] = __xlx_input_data_weight_data_bias_data_output_data__input_buffer[i+__xlx_offset_param_bias_data];
  }
  for (int i = 0; i < __xlx_size_param_bias_data; ++i) {
    ((char*)__xlx_apatb_param_bias_data)[i*4+0] = __xlx_bias_data_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_bias_data)[i*4+1] = __xlx_bias_data_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_bias_data)[i*4+2] = __xlx_bias_data_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_bias_data)[i*4+3] = __xlx_bias_data_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_output_data
  sc_bv<32>*__xlx_output_data_output_buffer = new sc_bv<32>[__xlx_size_param_output_data];
  for (int i = 0; i < __xlx_size_param_output_data; ++i) {
    __xlx_output_data_output_buffer[i] = __xlx_input_data_weight_data_bias_data_output_data__input_buffer[i+__xlx_offset_param_output_data];
  }
  for (int i = 0; i < __xlx_size_param_output_data; ++i) {
    ((char*)__xlx_apatb_param_output_data)[i*4+0] = __xlx_output_data_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_output_data)[i*4+1] = __xlx_output_data_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_output_data)[i*4+2] = __xlx_output_data_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_output_data)[i*4+3] = __xlx_output_data_output_buffer[i].range(31, 24).to_uint();
  }
}
