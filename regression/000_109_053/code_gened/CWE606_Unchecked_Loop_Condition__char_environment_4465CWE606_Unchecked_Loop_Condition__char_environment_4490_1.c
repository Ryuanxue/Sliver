#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_4465CWE606_Unchecked_Loop_Condition__char_environment_4490_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_environment_0, void (*opsink)(int _goodG2BSink_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0);
    _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_environment_0 = getenv("ADD");
    if (_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_environment_0 != 0)
    {
      strncat(_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_dataLen_0, _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_environment_0, (100 - _CWE606_Unchecked_Loop_Condition__char_environment_44_bad_dataLen_0) - 1);
    }

  }
  {
    {
      int _goodG2BSink_i_0;
      int _goodG2BSink_n_0;
      int _goodG2BSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0, "%d", &_goodG2BSink_n_0) == 1)
      {
        _goodG2BSink_intVariable_0 = 0;
        opsink(_goodG2BSink_n_0);
        printIntLine(_goodG2BSink_intVariable_0);
      }

    }
    goodG2BSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_44_bad_label_:
  {
    ;
  }

}

