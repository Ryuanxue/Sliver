#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData;
void CWE606_Unchecked_Loop_Condition__char_connect_socket_45114CWE606_Unchecked_Loop_Condition__char_connect_socket_4563_1(char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0, void (*opsink)(int _badSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataBuffer_0;
  {
    int _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_recvResult_0;
    struct sockaddr_in _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0;
    char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0;
    int _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0 = -1;
    size_t _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0);
    do
    {
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0 == (-1))
      {
        break;
      }

      memset(&_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0, 0, sizeof(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0));
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0.sin_family = AF_INET;
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0.sin_port = htons(27015);
      if (connect(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0, (struct sockaddr *) (&_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0), sizeof(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_service_0)) == (-1))
      {
        break;
      }

      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_recvResult_0 = recv(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0, (char *) (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataLen_0), (sizeof(char)) * ((100 - _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataLen_0) - 1), 0);
      if ((_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_recvResult_0 == (-1)) || (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_recvResult_0 == 0))
      {
        break;
      }

      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_dataLen_0 + (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_recvResult_0 / (sizeof(char)))] = '\0';
      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0, '\r');
      if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0)
      {
        *_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0 = '\0';
      }

      _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0, '\n');
      if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0)
      {
        *_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_replace_0 = '\0';
      }

    }
    while (0);
    if (_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0 != (-1))
    {
      close(_CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_connectSocket_0);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData = _CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_data_0;
  {
    char *_badSink_data_0 = CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData;
    {
      int _badSink_i_0;
      int _badSink_n_0;
      int _badSink_intVariable_0;
      if (sscanf(_badSink_data_0, "%d", &_badSink_n_0) == 1)
      {
        _badSink_intVariable_0 = 0;
        opsink(_badSink_n_0);
        printIntLine(_badSink_intVariable_0);
      }

    }
    badSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad_label_:
  {
    ;
  }

}

