#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_listen_socket_65a211CWE606_Unchecked_Loop_Condition__char_listen_socket_65b57_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    int _goodB2G_recvResult_0;
    struct sockaddr_in _goodB2G_service_0;
    char *_goodB2G_replace_0;
    int _goodB2G_listenSocket_0 = -1;
    int _goodB2G_acceptSocket_0 = -1;
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    do
    {
      _goodB2G_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_goodB2G_listenSocket_0 == (-1))
      {
        break;
      }

      memset(&_goodB2G_service_0, 0, sizeof(_goodB2G_service_0));
      _goodB2G_service_0.sin_family = AF_INET;
      _goodB2G_service_0.sin_addr.s_addr = INADDR_ANY;
      _goodB2G_service_0.sin_port = htons(27015);
      if (bind(_goodB2G_listenSocket_0, (struct sockaddr *) (&_goodB2G_service_0), sizeof(_goodB2G_service_0)) == (-1))
      {
        break;
      }

      if (__CPROVER_uninterpreted_listen(_goodB2G_listenSocket_0, 5) == (-1))
      {
        break;
      }

      _goodB2G_acceptSocket_0 = __CPROVER_uninterpreted_accept(_goodB2G_listenSocket_0, 0, 0);
      if (_goodB2G_acceptSocket_0 == (-1))
      {
        break;
      }

      _goodB2G_recvResult_0 = recv(_goodB2G_acceptSocket_0, (char *) (_goodB2G_data_0 + _goodB2G_dataLen_0), (sizeof(char)) * ((100 - _goodB2G_dataLen_0) - 1), 0);
      if ((_goodB2G_recvResult_0 == (-1)) || (_goodB2G_recvResult_0 == 0))
      {
        break;
      }

      _goodB2G_data_0[_goodB2G_dataLen_0 + (_goodB2G_recvResult_0 / (sizeof(char)))] = '\0';
      _goodB2G_replace_0 = strchr(_goodB2G_data_0, '\r');
      if (_goodB2G_replace_0)
      {
        *_goodB2G_replace_0 = '\0';
      }

      _goodB2G_replace_0 = strchr(_goodB2G_data_0, '\n');
      if (_goodB2G_replace_0)
      {
        *_goodB2G_replace_0 = '\0';
      }

    }
    while (0);
    if (_goodB2G_listenSocket_0 != (-1))
    {
      close(_goodB2G_listenSocket_0);
    }

    if (_goodB2G_acceptSocket_0 != (-1))
    {
      close(_goodB2G_acceptSocket_0);
    }

  }
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_intVariable_0);
      }

    }
    CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

