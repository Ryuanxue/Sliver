#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1546CWE134_Uncontrolled_Format_String__char_environment_printf_1564_1(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_dataBuffer_0;
  switch (6)
  {
    case 6:
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_dataLen_0) - 1);
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
      opsink(_CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_data_0);
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  CWE134_Uncontrolled_Format_String__char_environment_printf_15_bad_label_:
  {
    ;
  }

}

