#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global;
void CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1(char *_goodB2G2_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0))
{
  char *_goodB2G2_data_0;
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  {
    size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
    _goodB2G2_environment_0 = getenv("ADD");
    if (_goodB2G2_environment_0 != 0)
    {
      strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global = 1;
  {
    if (CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global)
    {
      {
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_i_0;
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0;
        int _CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0;
        if (sscanf(_goodB2G2_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0) == 1)
        {
          if (_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0 < 10000)
          {
            _CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0 = 0;
            opsink(_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0);
            printIntLine(_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0);
          }

        }

      }
    }

    CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_label_:
    {
      ;
    }

  }
  goodB2G2_label_:
  {
    ;
  }

}

