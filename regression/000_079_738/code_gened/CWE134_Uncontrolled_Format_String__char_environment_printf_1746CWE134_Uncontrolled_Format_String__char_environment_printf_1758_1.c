#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1746CWE134_Uncontrolled_Format_String__char_environment_printf_1758_1(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0, int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_0, int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_dataBuffer_0;
  for (_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_0 = 0; _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_0 < 1; _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_0++)
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_dataLen_0) - 1);
      }

    }
  }

  for (_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_0 = 0; _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_0 < 1; _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_0++)
  {
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_data_0);
  }

  CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_label_:
  {
    ;
  }

}

