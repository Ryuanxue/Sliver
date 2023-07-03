#include "_costom_header_.h"
#include "_slice_header_.h"
extern int goodB2G1Static;
void CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1Sink_n_0))
{
  char *_goodB2G1_data_0;
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  {
    size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
    _goodB2G1_environment_0 = getenv("ADD");
    if (_goodB2G1_environment_0 != 0)
    {
      strncat(_goodB2G1_data_0 + _goodB2G1_dataLen_0, _goodB2G1_environment_0, (100 - _goodB2G1_dataLen_0) - 1);
    }

  }
  goodB2G1Static = 0;
  {
    if (goodB2G1Static)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _goodB2G1Sink_i_0;
        int _goodB2G1Sink_n_0;
        int _goodB2G1Sink_intVariable_0;
        if (sscanf(_goodB2G1_data_0, "%d", &_goodB2G1Sink_n_0) == 1)
        {
          if (_goodB2G1Sink_n_0 < 10000)
          {
            _goodB2G1Sink_intVariable_0 = 0;
            opsink(_goodB2G1Sink_n_0);
            printIntLine(_goodB2G1Sink_intVariable_0);
          }

        }

      }
    }

    goodB2G1Sink_label_:
    {
      ;
    }

  }
  goodB2G1_label_:
  {
    ;
  }

}

