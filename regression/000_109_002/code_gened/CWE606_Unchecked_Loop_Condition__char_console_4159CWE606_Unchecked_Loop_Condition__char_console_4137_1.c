#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_4159CWE606_Unchecked_Loop_Condition__char_console_4137_1(char *_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0, void (*opsink)(int _badSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0);
    if ((100 - _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0) > 1)
    {
      if (fgets(_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0), stdin) != 0)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0);
        if ((_CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0 > 0) && (_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0 - 1] == '\n'))
        {
          _CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_41_bad_dataLen_0] = '\0';
      }

    }

  }
  {
    {
      int _badSink_i_0;
      int _badSink_n_0;
      int _badSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_console_41_bad_data_0, "%d", &_badSink_n_0) == 1)
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
  CWE606_Unchecked_Loop_Condition__char_console_41_bad_label_:
  {
    ;
  }

}

