#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_32230CWE606_Unchecked_Loop_Condition__char_connect_socket_32273_1(char *_goodB2G_data_1, void (*opsink)(int _goodB2G_n_0))
{
  char *_goodB2G_data_0;
  char **_goodB2G_dataPtr1_0 = &_goodB2G_data_0;
  char **_goodB2G_dataPtr2_0 = &_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    _goodB2G_data_1 = *_goodB2G_dataPtr1_0;
    {
      int _goodB2G_recvResult_0;
      struct sockaddr_in _goodB2G_service_0;
      char *_goodB2G_replace_0;
      int _goodB2G_connectSocket_0 = -1;
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_1);
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

        _goodB2G_recvResult_0 = recv(_goodB2G_connectSocket_0, (char *) (_goodB2G_data_1 + _goodB2G_dataLen_0), (sizeof(char)) * ((100 - _goodB2G_dataLen_0) - 1), 0);
        if ((_goodB2G_recvResult_0 == (-1)) || (_goodB2G_recvResult_0 == 0))
        {
          break;
        }

        _goodB2G_data_1[_goodB2G_dataLen_0 + (_goodB2G_recvResult_0 / (sizeof(char)))] = '\0';
        _goodB2G_replace_0 = strchr(_goodB2G_data_1, '\r');
        if (_goodB2G_replace_0)
        {
          *_goodB2G_replace_0 = '\0';
        }

        _goodB2G_replace_0 = strchr(_goodB2G_data_1, '\n');
        if (_goodB2G_replace_0)
        {
          *_goodB2G_replace_0 = '\0';
        }

      }
      while (0);
      if (_goodB2G_connectSocket_0 != (-1))
      {
        close(_goodB2G_connectSocket_0);
      }

    }
    *_goodB2G_dataPtr1_0 = _goodB2G_data_1;
  }
  {
    char *_goodB2G_data_2 = *_goodB2G_dataPtr2_0;
    {
      int _goodB2G_i_0;
      int _goodB2G_n_0;
      int _goodB2G_intVariable_0;
      if (sscanf(_goodB2G_data_2, "%d", &_goodB2G_n_0) == 1)
      {
        if (_goodB2G_n_0 < 10000)
        {
          _goodB2G_intVariable_0 = 0;
          opsink(_goodB2G_n_0);
          printIntLine(_goodB2G_intVariable_0);
        }

      }

    }
  }
  goodB2G_label_:
  {
    ;
  }

}

