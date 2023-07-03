#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_42140_1(char *_goodB2GSource_environment_0, char * *goodB2GSource_return_, void (*opsink)(int _goodB2G_n_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    {
      size_t _goodB2GSource_dataLen_0 = strlen(_goodB2G_data_0);
      _goodB2GSource_environment_0 = getenv("ADD");
      if (_goodB2GSource_environment_0 != 0)
      {
        strncat(_goodB2G_data_0 + _goodB2GSource_dataLen_0, _goodB2GSource_environment_0, (100 - _goodB2GSource_dataLen_0) - 1);
      }

    }
    goodB2GSource_return_ = _goodB2G_data_0;
    goto goodB2GSource_label_;
    goodB2GSource_label_:
    {
      ;
    }

  }
  _goodB2G_data_0 = goodB2GSource_return_;
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

