#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0;
  if (0)
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0) - 1);
      }

    }
  }
  else
  {
    strcpy(_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, "fixedstringtest");
  }

  if (1)
  {
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0);
  }
  else
  {
    printf("%s\n", _CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0);
  }

  CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_:
  {
    ;
  }

}

