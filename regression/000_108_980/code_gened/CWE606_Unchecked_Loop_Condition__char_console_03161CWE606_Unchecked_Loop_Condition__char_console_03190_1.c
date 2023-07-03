#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_03161CWE606_Unchecked_Loop_Condition__char_console_03190_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0))
{
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  if (5 == 5)
  {
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
  }

  if (5 == 5)
  {
    {
      int _goodB2G2_i_0;
      int _goodB2G2_n_0;
      int _goodB2G2_intVariable_0;
      if (sscanf(_goodB2G2_data_0, "%d", &_goodB2G2_n_0) == 1)
      {
        if (_goodB2G2_n_0 < 10000)
        {
          _goodB2G2_intVariable_0 = 0;
          opsink(_goodB2G2_n_0);
          printIntLine(_goodB2G2_intVariable_0);
        }

      }

    }
  }

  goodB2G2_label_:
  {
    ;
  }

}

