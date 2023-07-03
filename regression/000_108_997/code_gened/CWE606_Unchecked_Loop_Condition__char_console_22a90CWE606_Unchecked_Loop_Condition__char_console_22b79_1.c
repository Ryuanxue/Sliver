#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global;
void CWE606_Unchecked_Loop_Condition__char_console_22a90CWE606_Unchecked_Loop_Condition__char_console_22b79_1(char *_goodB2G1_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_n_0))
{
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  {
    size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
    if ((100 - _goodB2G1_dataLen_0) > 1)
    {
      if (fgets(_goodB2G1_data_0 + _goodB2G1_dataLen_0, (int) (100 - _goodB2G1_dataLen_0), stdin) != 0)
      {
        _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
        if ((_goodB2G1_dataLen_0 > 0) && (_goodB2G1_data_0[_goodB2G1_dataLen_0 - 1] == '\n'))
        {
          _goodB2G1_data_0[_goodB2G1_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _goodB2G1_data_0[_goodB2G1_dataLen_0] = '\0';
      }

    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global = 0;
  {
    if (CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_i_0;
        int _CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_n_0;
        int _CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_intVariable_0;
        if (sscanf(_goodB2G1_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_n_0) == 1)
        {
          if (_CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_n_0 < 10000)
          {
            _CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_intVariable_0 = 0;
            opsink(_CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_n_0);
            printIntLine(_CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_intVariable_0);
          }

        }

      }
    }

    CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink_label_:
    {
      ;
    }

  }
  goodB2G1_label_:
  {
    ;
  }

}

