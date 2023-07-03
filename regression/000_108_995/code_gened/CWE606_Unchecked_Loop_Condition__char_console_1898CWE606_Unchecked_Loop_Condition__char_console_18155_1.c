#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2B_n_0))
{
  {
    char _goodB2G_dataBuffer_0[100] = "";
    _goodB2G_data_0 = _goodB2G_dataBuffer_0;
    goto goodB2G_source;
    goodB2G_source:
    {
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
      if ((100 - _goodB2G_dataLen_0) > 1)
      {
        if (fgets(_goodB2G_data_0 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), stdin) != 0)
        {
          _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
          if ((_goodB2G_dataLen_0 > 0) && (_goodB2G_data_0[_goodB2G_dataLen_0 - 1] == '\n'))
          {
            _goodB2G_data_0[_goodB2G_dataLen_0 - 1] = '\0';
          }

        }
        else
        {
          printLine("fgets() failed");
          _goodB2G_data_0[_goodB2G_dataLen_0] = '\0';
        }

      }

    }

    goto goodB2G_sink;
    goodB2G_sink:
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
    goto goodG2B_source;
    goodG2B_source:
    {
      strcpy(_goodG2B_data_0, "15");
    }

    goto goodG2B_sink;
    goodG2B_sink:
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
  CWE606_Unchecked_Loop_Condition__char_console_18_good_label_:
  {
    ;
  }

}

