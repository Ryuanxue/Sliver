#include "_costom_header_.h"
#include "_slice_header_.h"
extern wchar_t *CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData;
void CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1(wchar_t *_goodB2G_data_0, void (*opsink)(int _goodB2GSink_n_0))
{
  wchar_t _goodB2G_dataBuffer_0[100] = L"";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = wcslen(_goodB2G_data_0);
    FILE *_goodB2G_pFile_0;
    if ((100 - _goodB2G_dataLen_0) > 1)
    {
      _goodB2G_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_goodB2G_pFile_0 != 0)
      {
        if (fgetws(_goodB2G_data_0 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), _goodB2G_pFile_0) == 0)
        {
          printLine("fgetws() failed");
          _goodB2G_data_0[_goodB2G_dataLen_0] = L'\0';
        }

        fclose(_goodB2G_pFile_0);
      }

    }

  }
  CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = _goodB2G_data_0;
  {
    wchar_t *_goodB2GSink_data_0 = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData;
    {
      int _goodB2GSink_i_0;
      int _goodB2GSink_n_0;
      int _goodB2GSink_intVariable_0;
      if (swscanf(_goodB2GSink_data_0, L"%d", &_goodB2GSink_n_0) == 1)
      {
        if (_goodB2GSink_n_0 < 10000)
        {
          _goodB2GSink_intVariable_0 = 0;
          opsink(_goodB2GSink_n_0);
          printIntLine(_goodB2GSink_intVariable_0);
        }

      }

    }
    goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

