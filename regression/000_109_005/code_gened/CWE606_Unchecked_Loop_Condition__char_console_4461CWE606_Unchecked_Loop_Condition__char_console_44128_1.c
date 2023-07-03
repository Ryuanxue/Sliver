#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_4461CWE606_Unchecked_Loop_Condition__char_console_44128_1(char *_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0, void (*opsink)(int _goodB2GSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0);
    if ((100 - _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0) > 1)
    {
      if (fgets(_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0), stdin) != 0)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0);
        if ((_CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0 > 0) && (_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0 - 1] == '\n'))
        {
          _CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_44_bad_dataLen_0] = '\0';
      }

    }

  }
  {
    {
      int _goodB2GSink_i_0;
      int _goodB2GSink_n_0;
      int _goodB2GSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0, "%d", &_goodB2GSink_n_0) == 1)
      {
        if (_goodB2GSink_n_0 < 10000)
        {
          _goodB2GSink_intVariable_0 = 0;
          opsink(_goodB2GSink_n_0);
          printIntLine(_goodB2GSink_intVariable_0);
        }

      }

    }
    goodB2GSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_44_bad_label_:
  {
    ;
  }

}

