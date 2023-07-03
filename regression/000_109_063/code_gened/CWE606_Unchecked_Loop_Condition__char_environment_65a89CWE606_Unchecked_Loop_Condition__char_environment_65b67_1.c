#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_65a89CWE606_Unchecked_Loop_Condition__char_environment_65b67_1(char *_goodB2G_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    _goodB2G_environment_0 = getenv("ADD");
    if (_goodB2G_environment_0 != 0)
    {
      strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
    }

  }
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_intVariable_0);
      }

    }
    CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

