#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_vprintf_3265CWE134_Uncontrolled_Format_String__char_file_vprintf_3279_1(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_2))
{
  char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_0;
  char **_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataPtr1_0 = &_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_0;
  char **_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataPtr2_0 = &_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataBuffer_0;
  {
    _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1 = *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataPtr1_0;
    {
      size_t _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1);
      FILE *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_pFile_0;
      if ((100 - _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataLen_0) > 1)
      {
        _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_pFile_0 != 0)
        {
          if (fgets(_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1 + _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataLen_0, (int) (100 - _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataLen_0), _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1[_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataLen_0] = '\0';
          }

          fclose(_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_pFile_0);
        }

      }

    }
    *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataPtr1_0 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_1;
  }
  {
    char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_2 = *_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_dataPtr2_0;
    opsink(_CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_data_2);
  }
  CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad_label_:
  {
    ;
  }

}

