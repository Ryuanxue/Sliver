#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_1552CWE134_Uncontrolled_Format_String__char_file_printf_1572_1(char *_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0))
{
  char _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataBuffer_0;
  switch (6)
  {
    case 6:
    {
      size_t _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0);
      FILE *_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_pFile_0;
      if ((100 - _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataLen_0) > 1)
      {
        _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_pFile_0 != 0)
        {
          if (fgets(_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataLen_0, (int) (100 - _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataLen_0), _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0[_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_dataLen_0] = '\0';
          }

          fclose(_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_pFile_0);
        }

      }

    }
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  switch (7)
  {
    case 7:
      opsink(_CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_data_0);
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  CWE134_Uncontrolled_Format_String__char_file_printf_15_bad_label_:
  {
    ;
  }

}

