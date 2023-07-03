#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_4465CWE606_Unchecked_Loop_Condition__char_environment_44122_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_environment_0, void (*opsink)(int _goodB2GSink_n_0))
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
      int _goodB2GSink_i_0;
      int _goodB2GSink_n_0;
      int _goodB2GSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_44_bad_data_0, "%d", &_goodB2GSink_n_0) == 1)
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
  CWE606_Unchecked_Loop_Condition__char_environment_44_bad_label_:
  {
    ;
  }

}

