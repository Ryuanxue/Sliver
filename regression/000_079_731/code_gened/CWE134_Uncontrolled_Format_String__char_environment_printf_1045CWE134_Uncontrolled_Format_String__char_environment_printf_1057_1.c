#include "_costom_header_.h"
#include "_slice_header_.h"
extern int globalTrue;
void CWE134_Uncontrolled_Format_String__char_environment_printf_1045CWE134_Uncontrolled_Format_String__char_environment_printf_1057_1(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_dataBuffer_0;
  if (globalTrue)
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_dataLen_0) - 1);
      }

    }
  }

  if (globalTrue)
  {
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_data_0);
  }

  CWE134_Uncontrolled_Format_String__char_environment_printf_10_bad_label_:
  {
    ;
  }

}

