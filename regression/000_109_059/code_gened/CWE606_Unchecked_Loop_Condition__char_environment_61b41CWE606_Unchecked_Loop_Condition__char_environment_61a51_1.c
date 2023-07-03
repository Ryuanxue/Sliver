#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0, char * *CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0;
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0);
      _CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0 = getenv("ADD");
      if (_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0 != 0)
      {
        strncat(_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0, _CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0, (100 - _CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0) - 1);
      }

    }
    CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_ = _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0;
    goto CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_;
    CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_:
    {
      ;
    }

  }
  _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0 = CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_;
  {
    int _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_i_0;
    int _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0;
    int _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0;
    if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0) == 1)
    {
      _CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0 = 0;
      opsink(_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0);
      printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_61_bad_label_:
  {
    ;
  }

}

