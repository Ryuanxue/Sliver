#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData;
void CWE606_Unchecked_Loop_Condition__char_file_68a106CWE606_Unchecked_Loop_Condition__char_file_68b93_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    FILE *_goodB2G_pFile_0;
    if ((100 - _goodB2G_dataLen_0) > 1)
    {
      _goodB2G_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_goodB2G_pFile_0 != 0)
      {
        if (fgets(_goodB2G_data_0 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), _goodB2G_pFile_0) == 0)
        {
          printLine("fgets() failed");
          _goodB2G_data_0[_goodB2G_dataLen_0] = '\0';
        }

        fclose(_goodB2G_pFile_0);
      }

    }

  }
  CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData = _goodB2G_data_0;
  {
    char *_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_data_0 = CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData;
    {
      int _CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_n_0) == 1)
      {
        if (_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_n_0 < 10000)
        {
          _CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_intVariable_0 = 0;
          opsink(_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_n_0);
          printIntLine(_CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_intVariable_0);
        }

      }

    }
    CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

