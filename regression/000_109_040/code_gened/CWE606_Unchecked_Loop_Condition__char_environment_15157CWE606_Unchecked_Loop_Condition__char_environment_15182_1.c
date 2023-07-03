#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_15157CWE606_Unchecked_Loop_Condition__char_environment_15182_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0))
{
  char *_goodB2G2_data_0;
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  switch (6)
  {
    case 6:
    {
      size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
      _goodB2G2_environment_0 = getenv("ADD");
      if (_goodB2G2_environment_0 != 0)
      {
        strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
      }

    }
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  switch (7)
  {
    case 7:
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
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  goodB2G2_label_:
  {
    ;
  }

}

