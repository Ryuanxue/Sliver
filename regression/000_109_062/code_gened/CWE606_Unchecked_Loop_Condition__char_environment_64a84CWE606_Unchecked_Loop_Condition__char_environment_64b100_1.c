#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1(char *_goodB2G_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0))
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
    char **_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0 = (char **) (&_goodB2G_data_0);
    char *_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0 = *_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0;
    {
      int _CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0) == 1)
      {
        if (_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0 < 10000)
        {
          _CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0 = 0;
          opsink(_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0);
          printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0);
        }

      }

    }
    CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

