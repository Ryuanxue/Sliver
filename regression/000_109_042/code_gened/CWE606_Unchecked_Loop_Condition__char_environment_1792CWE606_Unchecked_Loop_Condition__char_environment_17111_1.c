#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17111_1(char *_goodB2G_environment_0, int _goodB2G_i_0, int _goodB2G_k_0, void (*opsink)(int _goodB2G_n_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 1; _goodB2G_i_0++)
  {
    {
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
      _goodB2G_environment_0 = getenv("ADD");
      if (_goodB2G_environment_0 != 0)
      {
        strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
      }

    }
  }

  for (_goodB2G_k_0 = 0; _goodB2G_k_0 < 1; _goodB2G_k_0++)
  {
    {
      int _goodB2G_i_1;
      int _goodB2G_n_0;
      int _goodB2G_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_goodB2G_n_0) == 1)
      {
        if (_goodB2G_n_0 < 10000)
        {
          _goodB2G_intVariable_0 = 0;
          opsink(_goodB2G_n_0);
          printIntLine(_goodB2G_intVariable_0);
        }

      }

    }
  }

  goodB2G_label_:
  {
    ;
  }

}

