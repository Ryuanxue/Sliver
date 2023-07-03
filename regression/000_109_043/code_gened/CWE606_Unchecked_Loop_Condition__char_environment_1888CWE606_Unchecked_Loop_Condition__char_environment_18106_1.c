#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18106_1(char *_goodB2G_environment_0, void (*opsink)(int _goodB2G_n_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  goodB2G_source:
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    _goodB2G_environment_0 = getenv("ADD");
    if (_goodB2G_environment_0 != 0)
    {
      strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
    }

  }

  goto goodB2G_sink;
  goodB2G_sink:
  {
    int _goodB2G_i_0;
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

  goodB2G_label_:
  {
    ;
  }

}

