#include "_costom_header_.h"
#include "_slice_header_.h"
extern wchar_t *CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData;
void CWE606_Unchecked_Loop_Condition__wchar_t_file_4574CWE606_Unchecked_Loop_Condition__wchar_t_file_4548_1(wchar_t *_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0, void (*opsink)(int _badSink_n_0))
{
  wchar_t _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataBuffer_0[100] = L"";
  _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0 = _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataBuffer_0;
  {
    size_t _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataLen_0 = wcslen(_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0);
    FILE *_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_pFile_0;
    if ((100 - _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataLen_0) > 1)
    {
      _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_pFile_0 != 0)
      {
        if (fgetws(_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0 + _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataLen_0), _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_pFile_0) == 0)
        {
          printLine("fgetws() failed");
          _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0[_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_dataLen_0] = L'\0';
        }

        fclose(_CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_pFile_0);
      }

    }

  }
  CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData = _CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_data_0;
  {
    wchar_t *_badSink_data_0 = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData;
    {
      int _badSink_i_0;
      int _badSink_n_0;
      int _badSink_intVariable_0;
      if (swscanf(_badSink_data_0, L"%d", &_badSink_n_0) == 1)
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
  CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad_label_:
  {
    ;
  }

}

