#include "_costom_header_.h"
#include "_slice_header_.h"
extern int staticFive;
void CWE606_Unchecked_Loop_Condition__char_file_07168CWE606_Unchecked_Loop_Condition__char_file_07225_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (staticFive == 5)
    {
      {
        size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        FILE *_goodB2G2_pFile_0;
        if ((100 - _goodB2G2_dataLen_0) > 1)
        {
          _goodB2G2_pFile_0 = fopen("/tmp/file.txt", "r");
          if (_goodB2G2_pFile_0 != 0)
          {
            if (fgets(_goodB2G2_data_0 + _goodB2G2_dataLen_0, (int) (100 - _goodB2G2_dataLen_0), _goodB2G2_pFile_0) == 0)
            {
              printLine("fgets() failed");
              _goodB2G2_data_0[_goodB2G2_dataLen_0] = '\0';
            }

            fclose(_goodB2G2_pFile_0);
          }

        }

      }
    }

    if (staticFive == 5)
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
  {
    char *_goodG2B1_data_0;
    char _goodG2B1_dataBuffer_0[100] = "";
    _goodG2B1_data_0 = _goodG2B1_dataBuffer_0;
    if (staticFive != 5)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      strcpy(_goodG2B1_data_0, "15");
    }

    if (staticFive == 5)
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
  CWE606_Unchecked_Loop_Condition__char_file_07_good_label_:
  {
    ;
  }

}

