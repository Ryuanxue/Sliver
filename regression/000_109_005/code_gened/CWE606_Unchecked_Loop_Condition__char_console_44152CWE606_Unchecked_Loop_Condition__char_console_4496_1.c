#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_44152CWE606_Unchecked_Loop_Condition__char_console_4496_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2BSink_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    if ((100 - _goodB2G_dataLen_0) > 1)
    {
      if (fgets(_goodB2G_data_0 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), stdin) != 0)
      {
        _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
        if ((_goodB2G_dataLen_0 > 0) && (_goodB2G_data_0[_goodB2G_dataLen_0 - 1] == '\n'))
        {
          _goodB2G_data_0[_goodB2G_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _goodB2G_data_0[_goodB2G_dataLen_0] = '\0';
      }

    }

  }
  {
    {
      int _goodG2BSink_i_0;
      int _goodG2BSink_n_0;
      int _goodG2BSink_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_goodG2BSink_n_0) == 1)
      {
        _goodG2BSink_intVariable_0 = 0;
        opsink(_goodG2BSink_n_0);
        printIntLine(_goodG2BSink_intVariable_0);
      }

    }
    goodG2BSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

