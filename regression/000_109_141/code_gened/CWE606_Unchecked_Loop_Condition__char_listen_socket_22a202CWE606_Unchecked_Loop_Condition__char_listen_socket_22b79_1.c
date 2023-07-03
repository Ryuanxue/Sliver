#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global;
void CWE606_Unchecked_Loop_Condition__char_listen_socket_22a202CWE606_Unchecked_Loop_Condition__char_listen_socket_22b79_1(char *_goodB2G1_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_n_0))
{
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  {
    int _goodB2G1_recvResult_0;
    struct sockaddr_in _goodB2G1_service_0;
    char *_goodB2G1_replace_0;
    int _goodB2G1_listenSocket_0 = -1;
    int _goodB2G1_acceptSocket_0 = -1;
    size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
    do
    {
      _goodB2G1_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_goodB2G1_listenSocket_0 == (-1))
      {
        break;
      }

      memset(&_goodB2G1_service_0, 0, sizeof(_goodB2G1_service_0));
      _goodB2G1_service_0.sin_family = AF_INET;
      _goodB2G1_service_0.sin_addr.s_addr = INADDR_ANY;
      _goodB2G1_service_0.sin_port = htons(27015);
      if (bind(_goodB2G1_listenSocket_0, (struct sockaddr *) (&_goodB2G1_service_0), sizeof(_goodB2G1_service_0)) == (-1))
      {
        break;
      }

      if (__CPROVER_uninterpreted_listen(_goodB2G1_listenSocket_0, 5) == (-1))
      {
        break;
      }

      _goodB2G1_acceptSocket_0 = __CPROVER_uninterpreted_accept(_goodB2G1_listenSocket_0, 0, 0);
      if (_goodB2G1_acceptSocket_0 == (-1))
      {
        break;
      }

      _goodB2G1_recvResult_0 = recv(_goodB2G1_acceptSocket_0, (char *) (_goodB2G1_data_0 + _goodB2G1_dataLen_0), (sizeof(char)) * ((100 - _goodB2G1_dataLen_0) - 1), 0);
      if ((_goodB2G1_recvResult_0 == (-1)) || (_goodB2G1_recvResult_0 == 0))
      {
        break;
      }

      _goodB2G1_data_0[_goodB2G1_dataLen_0 + (_goodB2G1_recvResult_0 / (sizeof(char)))] = '\0';
      _goodB2G1_replace_0 = strchr(_goodB2G1_data_0, '\r');
      if (_goodB2G1_replace_0)
      {
        *_goodB2G1_replace_0 = '\0';
      }

      _goodB2G1_replace_0 = strchr(_goodB2G1_data_0, '\n');
      if (_goodB2G1_replace_0)
      {
        *_goodB2G1_replace_0 = '\0';
      }

    }
    while (0);
    if (_goodB2G1_listenSocket_0 != (-1))
    {
      close(_goodB2G1_listenSocket_0);
    }

    if (_goodB2G1_acceptSocket_0 != (-1))
    {
      close(_goodB2G1_acceptSocket_0);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global = 0;
  {
    if (CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_i_0;
        int _CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_n_0;
        int _CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_intVariable_0;
        if (sscanf(_goodB2G1_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_n_0) == 1)
        {
          if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_n_0 < 10000)
          {
            _CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_intVariable_0 = 0;
            opsink(_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_n_0);
            printIntLine(_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_intVariable_0);
          }

        }

      }
    }

    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink_label_:
    {
      ;
    }

  }
  goodB2G1_label_:
  {
    ;
  }

}

