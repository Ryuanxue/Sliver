#include "_costom_header_.h"
#include "_slice_header_.h"
extern int globalFalse;
extern int globalTrue;
void CWE606_Unchecked_Loop_Condition__char_console_10100CWE606_Unchecked_Loop_Condition__char_console_10226_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0))
{
  {
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    if (globalTrue)
    {
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
    }

    if (globalFalse)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _goodB2G1_i_0;
        int _goodB2G1_n_0;
        int _goodB2G1_intVariable_0;
        if (sscanf(_goodB2G1_data_0, "%d", &_goodB2G1_n_0) == 1)
        {
          if (_goodB2G1_n_0 < 10000)
          {
            _goodB2G1_intVariable_0 = 0;
            for (_goodB2G1_i_0 = 0; _goodB2G1_i_0 < _goodB2G1_n_0; _goodB2G1_i_0++)
            {
              _goodB2G1_intVariable_0++;
            }

            printIntLine(_goodB2G1_intVariable_0);
          }

        }

      }
    }

    goodB2G1_label_:
    {
      ;
    }

  }
  goodB2G2();
  {
    char *_goodG2B1_data_0;
    char _goodG2B1_dataBuffer_0[100] = "";
    _goodG2B1_data_0 = _goodG2B1_dataBuffer_0;
    if (globalFalse)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      strcpy(_goodG2B1_data_0, "15");
    }

    if (globalTrue)
    {
      {
        int _goodG2B1_i_0;
        int _goodG2B1_n_0;
        int _goodG2B1_intVariable_0;
        if (sscanf(_goodG2B1_data_0, "%d", &_goodG2B1_n_0) == 1)
        {
          _goodG2B1_intVariable_0 = 0;
          opsink(_goodG2B1_n_0);
          printIntLine(_goodG2B1_intVariable_0);
        }

      }
    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_10_good_label_:
  {
    ;
  }

}

