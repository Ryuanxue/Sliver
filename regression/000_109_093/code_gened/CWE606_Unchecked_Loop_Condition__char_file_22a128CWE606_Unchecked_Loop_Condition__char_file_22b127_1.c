#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal;
extern int CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global;
void CWE606_Unchecked_Loop_Condition__char_file_22a128CWE606_Unchecked_Loop_Condition__char_file_22b127_1(char *_goodB2G2_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
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
    CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global = 1;
    CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink(_goodB2G2_data_0);
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
    CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal = 1;
    {
      if (CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal)
      {
        {
          int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_i_0;
          int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0;
          int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_intVariable_0;
          if (sscanf(_goodG2B_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0) == 1)
          {
            _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_intVariable_0 = 0;
            opsink(_CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0);
            printIntLine(_CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_intVariable_0);
          }

        }
      }

      CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_label_:
      {
        ;
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_file_22_good_label_:
  {
    ;
  }

}

