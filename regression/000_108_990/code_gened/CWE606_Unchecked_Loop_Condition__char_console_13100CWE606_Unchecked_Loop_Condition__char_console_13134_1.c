#include "_costom_header_.h"
#include "_slice_header_.h"
extern int GLOBAL_CONST_FIVE;
void CWE606_Unchecked_Loop_Condition__char_console_13100CWE606_Unchecked_Loop_Condition__char_console_13134_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0))
{
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  if (GLOBAL_CONST_FIVE == 5)
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

  if (GLOBAL_CONST_FIVE != 5)
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
          opsink(_goodB2G1_n_0);
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

