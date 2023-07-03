#include "_costom_header_.h"
#include "_slice_header_.h"
extern int STATIC_CONST_FALSE;
extern int STATIC_CONST_TRUE;
void CWE606_Unchecked_Loop_Condition__char_file_04112CWE606_Unchecked_Loop_Condition__char_file_04256_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0))
{
  {
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    if (STATIC_CONST_TRUE)
    {
      {
        size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
        FILE *_goodB2G1_pFile_0;
        if ((100 - _goodB2G1_dataLen_0) > 1)
        {
          _goodB2G1_pFile_0 = fopen("/tmp/file.txt", "r");
          if (_goodB2G1_pFile_0 != 0)
          {
            if (fgets(_goodB2G1_data_0 + _goodB2G1_dataLen_0, (int) (100 - _goodB2G1_dataLen_0), _goodB2G1_pFile_0) == 0)
            {
              printLine("fgets() failed");
              _goodB2G1_data_0[_goodB2G1_dataLen_0] = '\0';
            }

            fclose(_goodB2G1_pFile_0);
          }

        }

      }
    }

    if (STATIC_CONST_FALSE)
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
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    if (STATIC_CONST_TRUE)
    {
      strcpy(_goodG2B2_data_0, "15");
    }

    if (STATIC_CONST_TRUE)
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
  CWE606_Unchecked_Loop_Condition__char_file_04_good_label_:
  {
    ;
  }

}

