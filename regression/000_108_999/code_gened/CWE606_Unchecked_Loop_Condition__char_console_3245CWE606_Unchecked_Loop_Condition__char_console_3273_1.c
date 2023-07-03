#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_3245CWE606_Unchecked_Loop_Condition__char_console_3273_1(char *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0;
  char **_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0 = &_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0;
  char **_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0 = &_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataBuffer_0;
  {
    _CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1 = *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0;
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1);
      if ((100 - _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0) > 1)
      {
        if (fgets(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1 + _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0), stdin) != 0)
        {
          _CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1);
          if ((_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 > 0) && (_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1[_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 - 1] == '\n'))
          {
            _CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1[_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0 - 1] = '\0';
          }

        }
        else
        {
          printLine("fgets() failed");
          _CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1[_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataLen_0] = '\0';
        }

      }

    }
    *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr1_0 = _CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_1;
  }
  {
    char *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2 = *_CWE606_Unchecked_Loop_Condition__char_console_32_bad_dataPtr2_0;
    {
      int _CWE606_Unchecked_Loop_Condition__char_console_32_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_data_2, "%d", &_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_console_32_bad_intVariable_0);
      }

    }
  }
  CWE606_Unchecked_Loop_Condition__char_console_32_bad_label_:
  {
    ;
  }

}

