#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_4288CWE606_Unchecked_Loop_Condition__char_connect_socket_42134_1(char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0, char * *badSource_return_, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_dataBuffer_0;
  {
    {
      int _badSource_recvResult_0;
      struct sockaddr_in _badSource_service_0;
      char *_badSource_replace_0;
      int _badSource_connectSocket_0 = -1;
      size_t _badSource_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0);
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

        _badSource_recvResult_0 = recv(_badSource_connectSocket_0, (char *) (_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0 + _badSource_dataLen_0), (sizeof(char)) * ((100 - _badSource_dataLen_0) - 1), 0);
        if ((_badSource_recvResult_0 == (-1)) || (_badSource_recvResult_0 == 0))
        {
          break;
        }

        _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0[_badSource_dataLen_0 + (_badSource_recvResult_0 / (sizeof(char)))] = '\0';
        _badSource_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0, '\r');
        if (_badSource_replace_0)
        {
          *_badSource_replace_0 = '\0';
        }

        _badSource_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0, '\n');
        if (_badSource_replace_0)
        {
          *_badSource_replace_0 = '\0';
        }

      }
      while (0);
      if (_badSource_connectSocket_0 != (-1))
      {
        close(_badSource_connectSocket_0);
      }

    }
    badSource_return_ = _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0;
    goto badSource_label_;
    badSource_label_:
    {
      ;
    }

  }
  _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0 = badSource_return_;
  {
    int _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_i_0;
    int _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_n_0;
    int _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_intVariable_0;
    if (sscanf(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_n_0) == 1)
    {
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_intVariable_0 = 0;
      opsink(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_n_0);
      printIntLine(_CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_intVariable_0);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad_label_:
  {
    ;
  }

}

