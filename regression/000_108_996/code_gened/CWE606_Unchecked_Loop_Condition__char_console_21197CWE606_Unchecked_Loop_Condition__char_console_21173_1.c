#include "_costom_header_.h"
#include "_slice_header_.h"
extern int goodB2G2Static;
void CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21173_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2Sink_n_0))
{
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  {
    size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
    if ((100 - _goodB2G2_dataLen_0) > 1)
    {
      if (fgets(_goodB2G2_data_0 + _goodB2G2_dataLen_0, (int) (100 - _goodB2G2_dataLen_0), stdin) != 0)
      {
        _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        if ((_goodB2G2_dataLen_0 > 0) && (_goodB2G2_data_0[_goodB2G2_dataLen_0 - 1] == '\n'))
        {
          _goodB2G2_data_0[_goodB2G2_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _goodB2G2_data_0[_goodB2G2_dataLen_0] = '\0';
      }

    }

  }
  goodB2G2Static = 1;
  {
    if (goodB2G2Static)
    {
      {
        int _goodB2G2Sink_i_0;
        int _goodB2G2Sink_n_0;
        int _goodB2G2Sink_intVariable_0;
        if (sscanf(_goodB2G2_data_0, "%d", &_goodB2G2Sink_n_0) == 1)
        {
          if (_goodB2G2Sink_n_0 < 10000)
          {
            _goodB2G2Sink_intVariable_0 = 0;
            opsink(_goodB2G2Sink_n_0);
            printIntLine(_goodB2G2Sink_intVariable_0);
          }

        }

      }
    }

    goodB2G2Sink_label_:
    {
      ;
    }

  }
  goodB2G2_label_:
  {
    ;
  }

}

