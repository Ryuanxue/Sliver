#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_15315CWE606_Unchecked_Loop_Condition__char_connect_socket_15448_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    switch (6)
    {
      case 6:
      {
        int _goodB2G2_recvResult_0;
        struct sockaddr_in _goodB2G2_service_0;
        char *_goodB2G2_replace_0;
        int _goodB2G2_connectSocket_0 = -1;
        size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        do
        {
          _goodB2G2_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
          if (_goodB2G2_connectSocket_0 == (-1))
          {
            break;
          }

          memset(&_goodB2G2_service_0, 0, sizeof(_goodB2G2_service_0));
          _goodB2G2_service_0.sin_family = AF_INET;
          _goodB2G2_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
          _goodB2G2_service_0.sin_port = htons(27015);
          if (connect(_goodB2G2_connectSocket_0, (struct sockaddr *) (&_goodB2G2_service_0), sizeof(_goodB2G2_service_0)) == (-1))
          {
            break;
          }

          _goodB2G2_recvResult_0 = recv(_goodB2G2_connectSocket_0, (char *) (_goodB2G2_data_0 + _goodB2G2_dataLen_0), (sizeof(char)) * ((100 - _goodB2G2_dataLen_0) - 1), 0);
          if ((_goodB2G2_recvResult_0 == (-1)) || (_goodB2G2_recvResult_0 == 0))
          {
            break;
          }

          _goodB2G2_data_0[_goodB2G2_dataLen_0 + (_goodB2G2_recvResult_0 / (sizeof(char)))] = '\0';
          _goodB2G2_replace_0 = strchr(_goodB2G2_data_0, '\r');
          if (_goodB2G2_replace_0)
          {
            *_goodB2G2_replace_0 = '\0';
          }

          _goodB2G2_replace_0 = strchr(_goodB2G2_data_0, '\n');
          if (_goodB2G2_replace_0)
          {
            *_goodB2G2_replace_0 = '\0';
          }

        }
        while (0);
        if (_goodB2G2_connectSocket_0 != (-1))
        {
          close(_goodB2G2_connectSocket_0);
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
        int _goodB2G2_i_0;
        int _goodB2G2_n_0;
        int _goodB2G2_intVariable_0;
        if (sscanf(_goodB2G2_data_0, "%d", &_goodB2G2_n_0) == 1)
        {
          if (_goodB2G2_n_0 < 10000)
          {
            _goodB2G2_intVariable_0 = 0;
            for (_goodB2G2_i_0 = 0; _goodB2G2_i_0 < _goodB2G2_n_0; _goodB2G2_i_0++)
            {
              _goodB2G2_intVariable_0++;
            }

            printIntLine(_goodB2G2_intVariable_0);
          }

        }

      }
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodB2G2_label_:
    {
      ;
    }

  }
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    switch (6)
    {
      case 6:
        strcpy(_goodG2B2_data_0, "15");
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (7)
    {
      case 7:
      {
        int _goodG2B2_i_0;
        int _goodG2B2_n_0;
        int _goodG2B2_intVariable_0;
        if (sscanf(_goodG2B2_data_0, "%d", &_goodG2B2_n_0) == 1)
        {
          _goodG2B2_intVariable_0 = 0;
          opsink(_goodG2B2_n_0);
          printIntLine(_goodG2B2_intVariable_0);
        }

      }
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good_label_:
  {
    ;
  }

}

