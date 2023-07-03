#include "_costom_header_.h"
#include "_slice_header_.h"
extern int GLOBAL_CONST_FIVE;
void CWE606_Unchecked_Loop_Condition__char_console_1343CWE606_Unchecked_Loop_Condition__char_console_1370_1(char *_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_13_bad_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataBuffer_0;
  if (GLOBAL_CONST_FIVE == 5)
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0);
      if ((100 - _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0) > 1)
      {
        if (fgets(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0), stdin) != 0)
        {
          _CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0);
          if ((_CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0 > 0) && (_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0 - 1] == '\n'))
          {
            _CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0 - 1] = '\0';
          }

        }
        else
        {
          printLine("fgets() failed");
          _CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_13_bad_dataLen_0] = '\0';
        }

      }

    }
  }

  if (GLOBAL_CONST_FIVE == 5)
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_console_13_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_13_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_13_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_console_13_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_13_bad_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_console_13_bad_intVariable_0);
      }

    }
  }

  CWE606_Unchecked_Loop_Condition__char_console_13_bad_label_:
  {
    ;
  }

}

