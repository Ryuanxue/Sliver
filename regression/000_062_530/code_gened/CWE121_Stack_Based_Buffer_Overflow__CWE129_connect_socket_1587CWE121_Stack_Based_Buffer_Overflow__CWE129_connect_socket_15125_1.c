#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1587CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15125_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0 = -1;
  switch (6)
  {
    case 6:
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_recvResult_0;
      struct sockaddr_in _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0 = -1;
      do
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0 == (-1))
        {
          break;
        }

        memset(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0, 0, sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0));
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0.sin_family = AF_INET;
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0.sin_port = htons(27015);
        if (connect(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0, (struct sockaddr *) (&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0), sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_service_0)) == (-1))
        {
          break;
        }

        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_recvResult_0 = recv(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0, _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_inputBuffer_0, ((3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0))) + 2) - 1, 0);
        if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_recvResult_0 == (-1)) || (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_recvResult_0 == 0))
        {
          break;
        }

        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_inputBuffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_recvResult_0] = '\0';
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_inputBuffer_0);
      }
      while (0);
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0 != (-1))
      {
        close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_connectSocket_0);
      }

    }
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  switch (7)
  {
    case 7:
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad_label_:
  {
    ;
  }

}

