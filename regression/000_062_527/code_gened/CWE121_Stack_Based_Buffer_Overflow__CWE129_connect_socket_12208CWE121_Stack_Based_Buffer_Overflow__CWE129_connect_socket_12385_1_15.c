#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_15(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
  {
    int _goodB2G_data_0;
    _goodB2G_data_0 = -1;
    if (1)
    {
      {
        int _goodB2G_recvResult_0;
        struct sockaddr_in _goodB2G_service_0;
        int _goodB2G_connectSocket_0 = -1;
        do
        {
          _goodB2G_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
          if (_goodB2G_connectSocket_0 == (-1))
          {
            break;
          }

          memset(&_goodB2G_service_0, 0, sizeof(_goodB2G_service_0));
          _goodB2G_service_0.sin_family = AF_INET;
          _goodB2G_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
          _goodB2G_service_0.sin_port = htons(27015);
          if (connect(_goodB2G_connectSocket_0, (struct sockaddr *) (&_goodB2G_service_0), sizeof(_goodB2G_service_0)) == (-1))
          {
            break;
          }

          _goodB2G_recvResult_0 = recv(_goodB2G_connectSocket_0, _goodB2G_inputBuffer_0, ((3 * (sizeof(_goodB2G_data_0))) + 2) - 1, 0);
          if ((_goodB2G_recvResult_0 == (-1)) || (_goodB2G_recvResult_0 == 0))
          {
            break;
          }

          _goodB2G_inputBuffer_0[_goodB2G_recvResult_0] = '\0';
          _goodB2G_data_0 = atoi(_goodB2G_inputBuffer_0);
        }
        while (0);
        if (_goodB2G_connectSocket_0 != (-1))
        {
          close(_goodB2G_connectSocket_0);
        }

      }
    }
    else
    {
      {
        int _goodB2G_recvResult_0;
        struct sockaddr_in _goodB2G_service_0;
        int _goodB2G_connectSocket_0 = -1;
        do
        {
          _goodB2G_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
          if (_goodB2G_connectSocket_0 == (-1))
          {
            break;
          }

          memset(&_goodB2G_service_0, 0, sizeof(_goodB2G_service_0));
          _goodB2G_service_0.sin_family = AF_INET;
          _goodB2G_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
          _goodB2G_service_0.sin_port = htons(27015);
          if (connect(_goodB2G_connectSocket_0, (struct sockaddr *) (&_goodB2G_service_0), sizeof(_goodB2G_service_0)) == (-1))
          {
            break;
          }

          _goodB2G_recvResult_0 = recv(_goodB2G_connectSocket_0, _goodB2G_inputBuffer_0, ((3 * (sizeof(_goodB2G_data_0))) + 2) - 1, 0);
          if ((_goodB2G_recvResult_0 == (-1)) || (_goodB2G_recvResult_0 == 0))
          {
            break;
          }

          _goodB2G_inputBuffer_0[_goodB2G_recvResult_0] = '\0';
          _goodB2G_data_0 = atoi(_goodB2G_inputBuffer_0);
        }
        while (0);
        if (_goodB2G_connectSocket_0 != (-1))
        {
          close(_goodB2G_connectSocket_0);
        }

      }
    }

    if (1)
    {
      {
        int _goodB2G_i_0;
        int _goodB2G_buffer_0[10] = {0};
        if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
        {
          _goodB2G_buffer_0[_goodB2G_data_0] = 1;
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
    }
    else
    {
      {
        int _goodB2G_i_0;
        int _goodB2G_buffer_0[10] = {0};
        if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
        {
          _goodB2G_buffer_0[_goodB2G_data_0] = 1;
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
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    if (1)
    {
      _goodG2B_data_0 = 7;
    }
    else
    {
      _goodG2B_data_0 = 7;
    }

    if (1)
    {
      {
        int _goodG2B_i_0;
        int _goodG2B_buffer_0[10] = {0};
        if (_goodG2B_data_0 >= 0)
        {
          _goodG2B_buffer_0[_goodG2B_data_0] = 1;
          for (_goodG2B_i_0 = 0; _goodG2B_i_0 < 10; _goodG2B_i_0++)
          {
            printIntLine(_goodG2B_buffer_0[_goodG2B_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is negative.");
        }

      }
    }
    else
    {
      {
        int _goodG2B_i_0;
        int _goodG2B_buffer_0[10] = {0};
        if (_goodG2B_data_0 >= 0)
        {
          opsink(_goodG2B_data_0);
          for (_goodG2B_i_0 = 0; _goodG2B_i_0 < 10; _goodG2B_i_0++)
          {
            printIntLine(_goodG2B_buffer_0[_goodG2B_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is negative.");
        }

      }
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good_label_:
  {
    ;
  }

}

