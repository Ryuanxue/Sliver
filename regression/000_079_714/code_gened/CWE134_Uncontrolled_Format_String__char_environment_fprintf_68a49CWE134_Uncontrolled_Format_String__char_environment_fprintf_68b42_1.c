#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData;
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a49CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b42_1(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_dataBuffer_0;
  {
    size_t _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_data_0);
    _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_environment_0 = getenv("ADD");
    if (_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_environment_0 != 0)
    {
      strncat(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_dataLen_0) - 1);
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData = _CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_data_0;
  {
    char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink_data_0 = CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData;
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink_data_0);
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad_label_:
  {
    ;
  }

}

