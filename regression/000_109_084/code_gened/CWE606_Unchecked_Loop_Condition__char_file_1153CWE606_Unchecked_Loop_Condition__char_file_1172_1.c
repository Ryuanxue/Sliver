#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_1153CWE606_Unchecked_Loop_Condition__char_file_1172_1(char *_CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_11_bad_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataBuffer_0;
  if (globalReturnsTrue())
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0);
      FILE *_CWE606_Unchecked_Loop_Condition__char_file_11_bad_pFile_0;
      if ((100 - _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataLen_0) > 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_file_11_bad_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE606_Unchecked_Loop_Condition__char_file_11_bad_pFile_0 != 0)
        {
          if (fgets(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataLen_0), _CWE606_Unchecked_Loop_Condition__char_file_11_bad_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_file_11_bad_dataLen_0] = '\0';
          }

          fclose(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_pFile_0);
        }

      }

    }
  }

  if (globalReturnsTrue())
  {
    {
      int _CWE606_Unchecked_Loop_Condition__char_file_11_bad_i_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_11_bad_n_0;
      int _CWE606_Unchecked_Loop_Condition__char_file_11_bad_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_data_0, "%d", &_CWE606_Unchecked_Loop_Condition__char_file_11_bad_n_0) == 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_file_11_bad_intVariable_0 = 0;
        opsink(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_n_0);
        printIntLine(_CWE606_Unchecked_Loop_Condition__char_file_11_bad_intVariable_0);
      }

    }
  }

  CWE606_Unchecked_Loop_Condition__char_file_11_bad_label_:
  {
    ;
  }

}

