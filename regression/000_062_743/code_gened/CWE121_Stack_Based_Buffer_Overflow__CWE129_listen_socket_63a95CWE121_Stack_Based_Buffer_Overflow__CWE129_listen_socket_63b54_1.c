#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b54_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_data_0 = -1;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_recvResult_0;
    struct sockaddr_in _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0 = -1;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0 = -1;
    do
    {
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0 == (-1))
      {
        break;
      }

      memset(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0, 0, sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0));
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0.sin_family = AF_INET;
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0.sin_addr.s_addr = INADDR_ANY;
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0.sin_port = htons(27015);
      if (bind(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0, (struct sockaddr *) (&_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0), sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_service_0)) == (-1))
      {
        break;
      }

      if (__CPROVER_uninterpreted_listen(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0, 5) == (-1))
      {
        break;
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0 = __CPROVER_uninterpreted_accept(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0, 0, 0);
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0 == (-1))
      {
        break;
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_recvResult_0 = recv(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0, _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_inputBuffer_0, ((3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_data_0))) + 2) - 1, 0);
      if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_recvResult_0 == (-1)) || (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_recvResult_0 == 0))
      {
        break;
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_inputBuffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_recvResult_0] = '\0';
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_inputBuffer_0);
    }
    while (0);
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0 != (-1))
    {
      close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_listenSocket_0);
    }

    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0 != (-1))
    {
      close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_acceptSocket_0);
    }

  }
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_data_0 = *(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_data_0);
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad_label_:
  {
    ;
  }

}

