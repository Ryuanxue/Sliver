#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_53a94CWE606_Unchecked_Loop_Condition__char_console_53d80_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
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
  {
    {
      {
        {
          int _CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_i_0;
          int _CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_n_0;
          int _CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_intVariable_0;
          if (sscanf(_goodB2G_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_n_0) == 1)
          {
            if (_CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_n_0 < 10000)
            {
              _CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_intVariable_0 = 0;
              opsink(_CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_n_0);
              printIntLine(_CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_intVariable_0);
            }

          }

        }
        CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink_label_:
        {
          ;
        }

      }
      CWE606_Unchecked_Loop_Condition__char_console_53c_goodB2GSink_label_:
      {
        ;
      }

    }
    CWE606_Unchecked_Loop_Condition__char_console_53b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

