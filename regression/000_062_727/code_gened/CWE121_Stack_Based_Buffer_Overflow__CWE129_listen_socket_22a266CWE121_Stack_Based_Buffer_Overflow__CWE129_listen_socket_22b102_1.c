#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b102_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodB2G2_data_0))
{
  int _goodB2G2_data_0;
  _goodB2G2_data_0 = -1;
  {
    int _goodB2G2_recvResult_0;
    struct sockaddr_in _goodB2G2_service_0;
    int _goodB2G2_listenSocket_0 = -1;
    int _goodB2G2_acceptSocket_0 = -1;
    do
    {
      _goodB2G2_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_goodB2G2_listenSocket_0 == (-1))
      {
        break;
      }

      memset(&_goodB2G2_service_0, 0, sizeof(_goodB2G2_service_0));
      _goodB2G2_service_0.sin_family = AF_INET;
      _goodB2G2_service_0.sin_addr.s_addr = INADDR_ANY;
      _goodB2G2_service_0.sin_port = htons(27015);
      if (bind(_goodB2G2_listenSocket_0, (struct sockaddr *) (&_goodB2G2_service_0), sizeof(_goodB2G2_service_0)) == (-1))
      {
        break;
      }

      if (__CPROVER_uninterpreted_listen(_goodB2G2_listenSocket_0, 5) == (-1))
      {
        break;
      }

      _goodB2G2_acceptSocket_0 = __CPROVER_uninterpreted_accept(_goodB2G2_listenSocket_0, 0, 0);
      if (_goodB2G2_acceptSocket_0 == (-1))
      {
        break;
      }

      _goodB2G2_recvResult_0 = recv(_goodB2G2_acceptSocket_0, _goodB2G2_inputBuffer_0, ((3 * (sizeof(_goodB2G2_data_0))) + 2) - 1, 0);
      if ((_goodB2G2_recvResult_0 == (-1)) || (_goodB2G2_recvResult_0 == 0))
      {
        break;
      }

      _goodB2G2_inputBuffer_0[_goodB2G2_recvResult_0] = '\0';
      _goodB2G2_data_0 = atoi(_goodB2G2_inputBuffer_0);
    }
    while (0);
    if (_goodB2G2_listenSocket_0 != (-1))
    {
      close(_goodB2G2_listenSocket_0);
    }

    if (_goodB2G2_acceptSocket_0 != (-1))
    {
      close(_goodB2G2_acceptSocket_0);
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global = 1;
  {
    if (CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global)
    {
      {
        int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_i_0;
        int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_buffer_0[10] = {0};
        if ((_goodB2G2_data_0 >= 0) && (_goodB2G2_data_0 < 10))
        {
          opsink(_goodB2G2_data_0);
          for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_i_0++)
          {
            printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is out-of-bounds");
        }

      }
    }

    CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink_label_:
    {
      ;
    }

  }
  goodB2G2_label_:
  {
    ;
  }

}

