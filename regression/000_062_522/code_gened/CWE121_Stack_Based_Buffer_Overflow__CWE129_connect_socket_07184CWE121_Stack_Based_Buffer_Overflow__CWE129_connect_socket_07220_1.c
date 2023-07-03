#include "_costom_header_.h"
#include "_slice_header_.h"
extern int staticFive;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_07184CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_07220_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodB2G1_data_0))
{
  int _goodB2G1_data_0;
  _goodB2G1_data_0 = -1;
  if (staticFive == 5)
  {
    {
      int _goodB2G1_recvResult_0;
      struct sockaddr_in _goodB2G1_service_0;
      int _goodB2G1_connectSocket_0 = -1;
      do
      {
        _goodB2G1_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (_goodB2G1_connectSocket_0 == (-1))
        {
          break;
        }

        memset(&_goodB2G1_service_0, 0, sizeof(_goodB2G1_service_0));
        _goodB2G1_service_0.sin_family = AF_INET;
        _goodB2G1_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
        _goodB2G1_service_0.sin_port = htons(27015);
        if (connect(_goodB2G1_connectSocket_0, (struct sockaddr *) (&_goodB2G1_service_0), sizeof(_goodB2G1_service_0)) == (-1))
        {
          break;
        }

        _goodB2G1_recvResult_0 = recv(_goodB2G1_connectSocket_0, _goodB2G1_inputBuffer_0, ((3 * (sizeof(_goodB2G1_data_0))) + 2) - 1, 0);
        if ((_goodB2G1_recvResult_0 == (-1)) || (_goodB2G1_recvResult_0 == 0))
        {
          break;
        }

        _goodB2G1_inputBuffer_0[_goodB2G1_recvResult_0] = '\0';
        _goodB2G1_data_0 = atoi(_goodB2G1_inputBuffer_0);
      }
      while (0);
      if (_goodB2G1_connectSocket_0 != (-1))
      {
        close(_goodB2G1_connectSocket_0);
      }

    }
  }

  if (staticFive != 5)
  {
    printLine("Benign, fixed string");
  }
  else
  {
    {
      int _goodB2G1_i_0;
      int _goodB2G1_buffer_0[10] = {0};
      if ((_goodB2G1_data_0 >= 0) && (_goodB2G1_data_0 < 10))
      {
        opsink(_goodB2G1_data_0);
        for (_goodB2G1_i_0 = 0; _goodB2G1_i_0 < 10; _goodB2G1_i_0++)
        {
          printIntLine(_goodB2G1_buffer_0[_goodB2G1_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
  }

  goodB2G1_label_:
  {
    ;
  }

}

