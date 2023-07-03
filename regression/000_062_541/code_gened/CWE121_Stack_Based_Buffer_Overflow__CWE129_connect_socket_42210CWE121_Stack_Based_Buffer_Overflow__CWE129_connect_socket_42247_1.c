#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42247_1(char *_goodB2GSource_inputBuffer_0, int goodB2GSource_return_, void (*opsink)(int _goodB2G_data_0))
{
  int _goodB2G_data_0;
  _goodB2G_data_0 = -1;
  {
    {
      int _goodB2GSource_recvResult_0;
      struct sockaddr_in _goodB2GSource_service_0;
      int _goodB2GSource_connectSocket_0 = -1;
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

        _goodB2GSource_recvResult_0 = recv(_goodB2GSource_connectSocket_0, _goodB2GSource_inputBuffer_0, ((3 * (sizeof(_goodB2G_data_0))) + 2) - 1, 0);
        if ((_goodB2GSource_recvResult_0 == (-1)) || (_goodB2GSource_recvResult_0 == 0))
        {
          break;
        }

        _goodB2GSource_inputBuffer_0[_goodB2GSource_recvResult_0] = '\0';
        _goodB2G_data_0 = atoi(_goodB2GSource_inputBuffer_0);
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
    int _goodB2G_buffer_0[10] = {0};
    if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
    {
      opsink(_goodB2G_data_0);
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
  goodB2G_label_:
  {
    ;
  }

}

