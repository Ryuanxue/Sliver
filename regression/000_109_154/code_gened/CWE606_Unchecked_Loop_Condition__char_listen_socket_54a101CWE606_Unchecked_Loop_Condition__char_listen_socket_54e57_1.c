#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_listen_socket_54a101CWE606_Unchecked_Loop_Condition__char_listen_socket_54e57_1(char *_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataBuffer_0;
  {
    int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_recvResult_0;
    struct sockaddr_in _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0;
    char *_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0;
    int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0 = -1;
    int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0 = -1;
    size_t _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0);
    do
    {
      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0 = __CPROVER_uninterpreted_socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0 == (-1))
      {
        break;
      }

      memset(&_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0, 0, sizeof(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0));
      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0.sin_family = AF_INET;
      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0.sin_addr.s_addr = INADDR_ANY;
      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0.sin_port = htons(27015);
      if (bind(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0, (struct sockaddr *) (&_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0), sizeof(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_service_0)) == (-1))
      {
        break;
      }

      if (__CPROVER_uninterpreted_listen(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0, 5) == (-1))
      {
        break;
      }

      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0 = __CPROVER_uninterpreted_accept(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0, 0, 0);
      if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0 == (-1))
      {
        break;
      }

      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_recvResult_0 = recv(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0, (char *) (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataLen_0), (sizeof(char)) * ((100 - _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataLen_0) - 1), 0);
      if ((_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_recvResult_0 == (-1)) || (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_recvResult_0 == 0))
      {
        break;
      }

      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_dataLen_0 + (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_recvResult_0 / (sizeof(char)))] = '\0';
      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0, '\r');
      if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0)
      {
        *_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0 = '\0';
      }

      _CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0 = strchr(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0, '\n');
      if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0)
      {
        *_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_replace_0 = '\0';
      }

    }
    while (0);
    if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0 != (-1))
    {
      close(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_listenSocket_0);
    }

    if (_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0 != (-1))
    {
      close(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_acceptSocket_0);
    }

  }
  {
    {
      {
        {
          {
            int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_i_0;
            int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_n_0;
            int _CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_intVariable_0;
            if (sscanf(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_n_0) == 1)
            {
              _CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_intVariable_0 = 0;
              opsink(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_n_0);
              printIntLine(_CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_intVariable_0);
            }

          }
          CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink_label_:
          {
            ;
          }

        }
        CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_badSink_label_:
        {
          ;
        }

      }
      CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_badSink_label_:
      {
        ;
      }

    }
    CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_badSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad_label_:
  {
    ;
  }

}

