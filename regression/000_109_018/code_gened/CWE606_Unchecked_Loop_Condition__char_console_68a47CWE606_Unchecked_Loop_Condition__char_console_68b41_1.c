#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE606_Unchecked_Loop_Condition__char_console_68_badData;
void CWE606_Unchecked_Loop_Condition__char_console_68a47CWE606_Unchecked_Loop_Condition__char_console_68b41_1(char *_CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0);
    if ((100 - _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0) > 1)
    {
      if (fgets(_CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0), stdin) != 0)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0);
        if ((_CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0 > 0) && (_CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0 - 1] == '\n'))
        {
          _CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_console_68_bad_dataLen_0] = '\0';
      }

    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_68_badData = _CWE606_Unchecked_Loop_Condition__char_console_68_bad_data_0;
  {
    char *_CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_data_0 = CWE606_Unchecked_Loop_Condition__char_console_68_badData;
    {
      int _CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_intVariable_0);
      }

    }
    CWE606_Unchecked_Loop_Condition__char_console_68b_badSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_68_bad_label_:
  {
    ;
  }

}

