#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_03137CWE606_Unchecked_Loop_Condition__char_environment_03222_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0))
{
  {
    char *_goodB2G2_data_0;
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (5 == 5)
    {
      {
        size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        _goodB2G2_environment_0 = getenv("ADD");
        if (_goodB2G2_environment_0 != 0)
        {
          strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
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
            for (_goodB2G2_i_0 = 0; _goodB2G2_i_0 < _goodB2G2_n_0; _goodB2G2_i_0++)
            {
              _goodB2G2_intVariable_0++;
            }

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
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    if (5 == 5)
    {
      strcpy(_goodG2B2_data_0, "15");
    }

    if (5 == 5)
    {
      {
        int _goodG2B2_i_0;
        int _goodG2B2_n_0;
        int _goodG2B2_intVariable_0;
        if (sscanf(_goodG2B2_data_0, "%d", &_goodG2B2_n_0) == 1)
        {
          _goodG2B2_intVariable_0 = 0;
          opsink(_goodG2B2_n_0);
          printIntLine(_goodG2B2_intVariable_0);
        }

      }
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_environment_03_good_label_:
  {
    ;
  }

}

