#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_vprintf_3161CWE134_Uncontrolled_Format_String__char_file_vprintf_3174_1(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_1))
{
  char _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataBuffer_0;
  {
    size_t _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0);
    FILE *_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_pFile_0;
    if ((100 - _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataLen_0) > 1)
    {
      _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_pFile_0 != 0)
      {
        if (fgets(_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataLen_0, (int) (100 - _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataLen_0), _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_pFile_0) == 0)
        {
          printLine("fgets() failed");
          _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0[_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataLen_0] = '\0';
        }

        fclose(_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_pFile_0);
      }

    }

  }
  {
    char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataCopy_0 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_0;
    char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_1 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_dataCopy_0;
    opsink(_CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_data_1);
  }
  CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad_label_:
  {
    ;
  }

}

