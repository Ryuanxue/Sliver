#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData;
void CWE606_Unchecked_Loop_Condition__char_environment_45146CWE606_Unchecked_Loop_Condition__char_environment_45127_1(char *_goodB2G_environment_0, void (*opsink)(int _goodB2GSink_n_0))
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
  CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData = _goodB2G_data_0;
  {
    char *_goodB2GSink_data_0 = CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData;
    {
      int _goodB2GSink_i_0;
      int _goodB2GSink_n_0;
      int _goodB2GSink_intVariable_0;
      if (sscanf(_goodB2GSink_data_0, "%d", &_goodB2GSink_n_0) == 1)
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
  goodB2G_label_:
  {
    ;
  }

}

