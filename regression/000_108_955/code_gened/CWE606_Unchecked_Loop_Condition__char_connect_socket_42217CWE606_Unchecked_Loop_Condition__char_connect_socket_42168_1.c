#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1(char *_goodB2G_data_0, char * *goodB2GSource_return_, void (*opsink)(int _goodG2B_n_0))
{
  {
    char _goodB2G_dataBuffer_0[100] = "";
    _goodB2G_data_0 = _goodB2G_dataBuffer_0;
    {
      {
        int _goodB2GSource_recvResult_0;
        struct sockaddr_in _goodB2GSource_service_0;
        char *_goodB2GSource_replace_0;
        int _goodB2GSource_connectSocket_0 = -1;
        size_t _goodB2GSource_dataLen_0 = strlen(_goodB2G_data_0);
        do
        {
          _goodB2GSource_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
          if (_goodB2GSource_connectSocket_0 == (-1))
          {
            break;
          }

          memset(&_goodB2GSource_service_0, 0, sizeof(_goodB2GSource_service_0));
          _goodB2GSource_service_0.sin_family = AF_INET;
          _goodB2GSource_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
          _goodB2GSource_service_0.sin_port = htons(27015);
          if (connect(_goodB2GSource_connectSocket_0, (struct sockaddr *) (&_goodB2GSource_service_0), sizeof(_goodB2GSource_service_0)) == (-1))
          {
            break;
          }

          _goodB2GSource_recvResult_0 = recv(_goodB2GSource_connectSocket_0, (char *) (_goodB2G_data_0 + _goodB2GSource_dataLen_0), (sizeof(char)) * ((100 - _goodB2GSource_dataLen_0) - 1), 0);
          if ((_goodB2GSource_recvResult_0 == (-1)) || (_goodB2GSource_recvResult_0 == 0))
          {
            break;
          }

          _goodB2G_data_0[_goodB2GSource_dataLen_0 + (_goodB2GSource_recvResult_0 / (sizeof(char)))] = '\0';
          _goodB2GSource_replace_0 = strchr(_goodB2G_data_0, '\r');
          if (_goodB2GSource_replace_0)
          {
            *_goodB2GSource_replace_0 = '\0';
          }

          _goodB2GSource_replace_0 = strchr(_goodB2G_data_0, '\n');
          if (_goodB2GSource_replace_0)
          {
            *_goodB2GSource_replace_0 = '\0';
          }

        }
        while (0);
        if (_goodB2GSource_connectSocket_0 != (-1))
        {
          close(_goodB2GSource_connectSocket_0);
        }

      }
      goodB2GSource_return_ = _goodB2G_data_0;
      goto goodB2GSource_label_;
      goodB2GSource_label_:
      {
        ;
      }

    }
    _goodB2G_data_0 = goodB2GSource_return_;
    {
      int _goodB2G_i_0;
      int _goodB2G_n_0;
      int _goodB2G_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_goodB2G_n_0) == 1)
      {
        if (_goodB2G_n_0 < 10000)
        {
          _goodB2G_intVariable_0 = 0;
          for (_goodB2G_i_0 = 0; _goodB2G_i_0 < _goodB2G_n_0; _goodB2G_i_0++)
          {
            _goodB2G_intVariable_0++;
          }

          printIntLine(_goodB2G_intVariable_0);
        }

      }

    }
    goodB2G_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    _goodG2B_data_0 = goodG2BSource(_goodG2B_data_0);
    {
      int _goodG2B_i_0;
      int _goodG2B_n_0;
      int _goodG2B_intVariable_0;
      if (sscanf(_goodG2B_data_0, "%d", &_goodG2B_n_0) == 1)
      {
        _goodG2B_intVariable_0 = 0;
        opsink(_goodG2B_n_0);
        printIntLine(_goodG2B_intVariable_0);
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good_label_:
  {
    ;
  }

}

