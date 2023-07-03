#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44184_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0 = -1;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0;
    struct sockaddr_in _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0 = -1;
    do
    {
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0 == (-1))
      {
        break;
      }

      memset(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0, 0, sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0));
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0.sin_family = AF_INET;
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0.sin_port = htons(27015);
      if (connect(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, (struct sockaddr *) (&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0), sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0)) == (-1))
      {
        break;
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0 = recv(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0, ((3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0))) + 2) - 1, 0);
      if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0 == (-1)) || (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0 == 0))
      {
        break;
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0] = '\0';
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0);
    }
    while (0);
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0 != (-1))
    {
      close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0);
    }

  }
  {
    {
      int _goodB2GSink_i_0;
      int _goodB2GSink_buffer_0[10] = {0};
      if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0 >= 0) && (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0 < 10))
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0);
        for (_goodB2GSink_i_0 = 0; _goodB2GSink_i_0 < 10; _goodB2GSink_i_0++)
        {
          printIntLine(_goodB2GSink_buffer_0[_goodB2GSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
    goodB2GSink_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_label_:
  {
    ;
  }

}

