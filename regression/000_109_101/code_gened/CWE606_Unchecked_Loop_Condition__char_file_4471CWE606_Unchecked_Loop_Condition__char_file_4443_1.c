#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_4471CWE606_Unchecked_Loop_Condition__char_file_4443_1(char *_CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0, void (*opsink)(int _badSink_n_0))
{
  char _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataBuffer_0[100] = "";
  _CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0 = _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataLen_0 = strlen(_CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0);
    FILE *_CWE606_Unchecked_Loop_Condition__char_file_44_bad_pFile_0;
    if ((100 - _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataLen_0) > 1)
    {
      _CWE606_Unchecked_Loop_Condition__char_file_44_bad_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_CWE606_Unchecked_Loop_Condition__char_file_44_bad_pFile_0 != 0)
      {
        if (fgets(_CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0 + _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataLen_0), _CWE606_Unchecked_Loop_Condition__char_file_44_bad_pFile_0) == 0)
        {
          printLine("fgets() failed");
          _CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0[_CWE606_Unchecked_Loop_Condition__char_file_44_bad_dataLen_0] = '\0';
        }

        fclose(_CWE606_Unchecked_Loop_Condition__char_file_44_bad_pFile_0);
      }

    }

  }
  {
    {
      int _badSink_i_0;
      int _badSink_n_0;
      int _badSink_intVariable_0;
      if (sscanf(_CWE606_Unchecked_Loop_Condition__char_file_44_bad_data_0, "%d", &_badSink_n_0) == 1)
      {
        _badSink_intVariable_0 = 0;
        opsink(_badSink_n_0);
        printIntLine(_badSink_intVariable_0);
      }

    }
    badSink_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_file_44_bad_label_:
  {
    ;
  }

}

