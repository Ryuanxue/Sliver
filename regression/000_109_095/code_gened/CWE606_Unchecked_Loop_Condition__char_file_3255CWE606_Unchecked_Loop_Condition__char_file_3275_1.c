#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_3255CWE606_Unchecked_Loop_Condition__char_file_3275_1(char *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_32_bad_n_0))
{
  char *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_0;
  char **_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataPtr1_0 = &_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_0;
  char **_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataPtr2_0 = &_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_0;
  char _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataBuffer_0;
  {
    _CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1 = *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataPtr1_0;
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1);
      FILE *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_pFile_0;
      if ((100 - _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataLen_0) > 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_file_32_bad_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE606_Unchecked_Loop_Condition__char_file_32_bad_pFile_0 != 0)
        {
          if (fgets(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1 + _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataLen_0), _CWE606_Unchecked_Loop_Condition__char_file_32_bad_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1[_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataLen_0] = '\0';
          }

          fclose(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_pFile_0);
        }

      }

    }
    *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataPtr1_0 = _CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_1;
  }
  {
    char *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_2 = *_CWE606_Unchecked_Loop_Condition__char_file_32_bad_dataPtr2_0;
    {
      int _CWE606_Unchecked_Loop_Condition__char_file_32_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_32_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_32_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_data_2, "%d", &_CWE606_Unchecked_Loop_Condition__char_file_32_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_file_32_bad_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_file_32_bad_intVariable_0);
      }

    }
  }
  CWE606_Unchecked_Loop_Condition__char_file_32_bad_label_:
  {
    ;
  }

}

