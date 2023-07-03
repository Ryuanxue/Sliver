#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_3(char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0;
  if (1)
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_recvResult_0;
      struct sockaddr_in _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0;
      char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0;
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0 = -1;
      size_t _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0);
      do
      {
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0 == (-1))
        {
          break;
        }

        memset(&_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0, 0, sizeof(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0));
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0.sin_family = AF_INET;
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0.sin_port = htons(27015);
        if (connect(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0, (struct sockaddr *) (&_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0), sizeof(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_service_0)) == (-1))
        {
          break;
        }

        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_recvResult_0 = recv(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0, (char *) (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataLen_0), (sizeof(char)) * ((100 - _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataLen_0) - 1), 0);
        if ((_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_recvResult_0 == (-1)) || (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_recvResult_0 == 0))
        {
          break;
        }

        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataLen_0 + (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_recvResult_0 / (sizeof(char)))] = '\0';
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, '\r');
        if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0)
        {
          *_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0 = '\0';
        }

        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, '\n');
        if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0)
        {
          *_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_replace_0 = '\0';
        }

      }
      while (0);
      if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0 != (-1))
      {
        close(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_connectSocket_0);
      }

    }
  }
  else
  {
    strcpy(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, "15");
  }

  if (1)
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0 = 0;
        for (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0 = 0; _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0 < _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0; _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0++)
        {
          _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0++;
        }

        printIntLine(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0);
      }

    }
  }
  else
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0) == 1)
      {
        if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0 < 10000)
        {
          _CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0 = 0;
          opsink(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0);
          printIntLine(_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0);
        }

      }

    }
  }

  CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_label_:
  {
    ;
  }

}

