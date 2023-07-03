#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b177CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a121_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_inputBuffer_0, int CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_return_, void (*opsink)(int _goodB2G_data_0))
{
  int _goodB2G_data_0;
  _goodB2G_data_0 = -1;
  {
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_recvResult_0;
      struct sockaddr_in _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0 = -1;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0 = -1;
      do
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0 == (-1))
        {
          break;
        }

        memset(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0, 0, sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0));
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0.sin_family = AF_INET;
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0.sin_addr.s_addr = INADDR_ANY;
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0.sin_port = htons(27015);
        if (bind(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0, (struct sockaddr *) (&_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0), sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_service_0)) == (-1))
        {
          break;
        }

        if (__CPROVER_uninterpreted_listen(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0, 5) == (-1))
        {
          break;
        }

        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0 = __CPROVER_uninterpreted_accept(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0, 0, 0);
        if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0 == (-1))
        {
          break;
        }

        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_recvResult_0 = recv(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0, _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_inputBuffer_0, ((3 * (sizeof(_goodB2G_data_0))) + 2) - 1, 0);
        if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_recvResult_0 == (-1)) || (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_recvResult_0 == 0))
        {
          break;
        }

        _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_inputBuffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_recvResult_0] = '\0';
        _goodB2G_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_inputBuffer_0);
      }
      while (0);
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0 != (-1))
      {
        close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_listenSocket_0);
      }

      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0 != (-1))
      {
        close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_acceptSocket_0);
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_return_ = _goodB2G_data_0;
    goto CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_label_;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_label_:
    {
      ;
    }

  }
  _goodB2G_data_0 = CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource_return_;
  {
    int _goodB2G_i_0;
    int _goodB2G_buffer_0[10] = {0};
    if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
    {
      opsink(_goodB2G_data_0);
      for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 10; _goodB2G_i_0++)
      {
        printIntLine(_goodB2G_buffer_0[_goodB2G_i_0]);
      }

    }
    else
    {
      printLine("ERROR: Array index is out-of-bounds");
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

