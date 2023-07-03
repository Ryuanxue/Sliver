#include "_costom_header_.h"
#include "_slice_header_.h"
extern int goodG2BStatic;
extern int goodB2G2Static;
void CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21196_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2BSink_n_0))
{
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
    goodB2G2Static = 1;
    goodB2G2Sink(_goodB2G2_data_0);
    goodB2G2_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    strcpy(_goodG2B_data_0, "15");
    goodG2BStatic = 1;
    {
      if (goodG2BStatic)
      {
        {
          int _goodG2BSink_i_0;
          int _goodG2BSink_n_0;
          int _goodG2BSink_intVariable_0;
          if (sscanf(_goodG2B_data_0, "%d", &_goodG2BSink_n_0) == 1)
          {
            _goodG2BSink_intVariable_0 = 0;
            opsink(_goodG2BSink_n_0);
            printIntLine(_goodG2BSink_intVariable_0);
          }

        }
      }

      goodG2BSink_label_:
      {
        ;
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_21_good_label_:
  {
    ;
  }

}

