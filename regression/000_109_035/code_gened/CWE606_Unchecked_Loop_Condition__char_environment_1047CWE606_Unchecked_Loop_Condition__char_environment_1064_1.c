#include "_costom_header_.h"
#include "_slice_header_.h"
extern int globalTrue;
void CWE606_Unchecked_Loop_Condition__char_environment_1047CWE606_Unchecked_Loop_Condition__char_environment_1064_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_dataBuffer_0;
  if (globalTrue)
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_data_0);
      _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_environment_0 = getenv("ADD");
      if (_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_environment_0 != 0)
      {
        strncat(_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_dataLen_0, _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_environment_0, (100 - _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_dataLen_0) - 1);
      }

    }
  }

  if (globalTrue)
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_intVariable_0);
      }

    }
  }

  CWE606_Unchecked_Loop_Condition__char_environment_10_bad_label_:
  {
    ;
  }

}

