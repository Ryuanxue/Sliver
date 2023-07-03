#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4281CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42119_1(char *_badSource_inputBuffer_0, int badSource_return_, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0 = -1;
  {
    {
      int _badSource_recvResult_0;
      struct sockaddr_in _badSource_service_0;
      int _badSource_connectSocket_0 = -1;
      do
      {
        _badSource_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (_badSource_connectSocket_0 == (-1))
        {
          break;
        }

        memset(&_badSource_service_0, 0, sizeof(_badSource_service_0));
        _badSource_service_0.sin_family = AF_INET;
        _badSource_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
        _badSource_service_0.sin_port = htons(27015);
        if (connect(_badSource_connectSocket_0, (struct sockaddr *) (&_badSource_service_0), sizeof(_badSource_service_0)) == (-1))
        {
          break;
        }

        _badSource_recvResult_0 = recv(_badSource_connectSocket_0, _badSource_inputBuffer_0, ((3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0))) + 2) - 1, 0);
        if ((_badSource_recvResult_0 == (-1)) || (_badSource_recvResult_0 == 0))
        {
          break;
        }

        _badSource_inputBuffer_0[_badSource_recvResult_0] = '\0';
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0 = atoi(_badSource_inputBuffer_0);
      }
      while (0);
      if (_badSource_connectSocket_0 != (-1))
      {
        close(_badSource_connectSocket_0);
      }

    }
    badSource_return_ = _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0;
    goto badSource_label_;
    badSource_label_:
    {
      ;
    }

  }
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0 = badSource_return_;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_i_0;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_buffer_0[10] = {0};
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0 >= 0)
    {
      opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_data_0);
      for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_i_0++)
      {
        printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_i_0]);
      }

    }
    else
    {
      printLine("ERROR: Array index is negative.");
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad_label_:
  {
    ;
  }

}

