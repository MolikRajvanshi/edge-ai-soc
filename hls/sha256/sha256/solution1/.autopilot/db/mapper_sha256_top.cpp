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
extern "C" void sha256_top(int*, int, int, int);
extern "C" void apatb_sha256_top_hw(volatile void * __xlx_apatb_param_message, volatile void * __xlx_apatb_param_digest, int __xlx_apatb_param_msg_len_words) {
  // Collect __xlx_message_digest__tmp_vec
  vector<sc_bv<32> >__xlx_message_digest__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_message)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_message)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_message)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_message)[j*4+3];
    __xlx_message_digest__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_message = 256;
  int __xlx_offset_param_message = 0;
  int __xlx_offset_byte_param_message = 0*4;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_digest)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_digest)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_digest)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_digest)[j*4+3];
    __xlx_message_digest__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_digest = 8;
  int __xlx_offset_param_digest = 256;
  int __xlx_offset_byte_param_digest = 256*4;
  int* __xlx_message_digest__input_buffer= new int[__xlx_message_digest__tmp_vec.size()];
  for (int i = 0; i < __xlx_message_digest__tmp_vec.size(); ++i) {
    __xlx_message_digest__input_buffer[i] = __xlx_message_digest__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  sha256_top(__xlx_message_digest__input_buffer, __xlx_offset_byte_param_message, __xlx_offset_byte_param_digest, __xlx_apatb_param_msg_len_words);
// print __xlx_apatb_param_message
  sc_bv<32>*__xlx_message_output_buffer = new sc_bv<32>[__xlx_size_param_message];
  for (int i = 0; i < __xlx_size_param_message; ++i) {
    __xlx_message_output_buffer[i] = __xlx_message_digest__input_buffer[i+__xlx_offset_param_message];
  }
  for (int i = 0; i < __xlx_size_param_message; ++i) {
    ((char*)__xlx_apatb_param_message)[i*4+0] = __xlx_message_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_message)[i*4+1] = __xlx_message_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_message)[i*4+2] = __xlx_message_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_message)[i*4+3] = __xlx_message_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_digest
  sc_bv<32>*__xlx_digest_output_buffer = new sc_bv<32>[__xlx_size_param_digest];
  for (int i = 0; i < __xlx_size_param_digest; ++i) {
    __xlx_digest_output_buffer[i] = __xlx_message_digest__input_buffer[i+__xlx_offset_param_digest];
  }
  for (int i = 0; i < __xlx_size_param_digest; ++i) {
    ((char*)__xlx_apatb_param_digest)[i*4+0] = __xlx_digest_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_digest)[i*4+1] = __xlx_digest_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_digest)[i*4+2] = __xlx_digest_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_digest)[i*4+3] = __xlx_digest_output_buffer[i].range(31, 24).to_uint();
  }
}
