#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1288_1_0(char *_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0;
  if (0)
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0);
      _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0 = getenv("ADD");
      if (_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0 != 0)
      {
        strncat(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0, _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, (100 - _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0) - 1);
      }

    }
  }
  else
  {
    strcpy(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, "15");
  }

  if (0)
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0 = 0;
        for (_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0 = 0; _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0 < _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0; _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0++)
        {
          _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0++;
        }

        printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0);
      }

    }
  }
  else
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0) == 1)
      {
        if (_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0 < 10000)
        {
          _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0 = 0;
          opsink(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0);
          printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0);
        }

      }

    }
  }

  CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_:
  {
    ;
  }

}

