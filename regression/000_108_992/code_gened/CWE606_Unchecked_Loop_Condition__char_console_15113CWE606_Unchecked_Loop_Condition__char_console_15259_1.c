#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_15113CWE606_Unchecked_Loop_Condition__char_console_15259_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0))
{
  {
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    switch (6)
    {
      case 6:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (8)
    {
      case 7:
        printLine("Benign, fixed string");
        break;

      default:
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
        break;

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
    switch (5)
    {
      case 6:
        printLine("Benign, fixed string");
        break;

      default:
        strcpy(_goodG2B1_data_0, "15");
        break;

    }

    switch (7)
    {
      case 7:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_console_15_good_label_:
  {
    ;
  }

}

