#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal;
void CWE606_Unchecked_Loop_Condition__char_environment_22a49CWE606_Unchecked_Loop_Condition__char_environment_22b41_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_data_0);
    _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_environment_0 = getenv("ADD");
    if (_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_environment_0 != 0)
    {
      strncat(_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_dataLen_0, _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_environment_0, (100 - _CWE606_Unchecked_Loop_Condition__char_environment_22_bad_dataLen_0) - 1);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal = 1;
  {
    if (CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal)
    {
      {
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_i_0;
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_n_0;
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_intVariable_0;
        if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_22_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_n_0) == 1)
        {
          _CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_intVariable_0 = 0;
          opsink(_CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_n_0);
          printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_intVariable_0);
        }

      }
    }

    CWE606_Unchecked_Loop_Condition__char_environment_22_badSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_22_bad_label_:
  {
    ;
  }

}

