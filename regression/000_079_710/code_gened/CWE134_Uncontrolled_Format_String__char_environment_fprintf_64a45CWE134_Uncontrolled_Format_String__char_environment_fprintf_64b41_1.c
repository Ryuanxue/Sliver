#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0;
  {
    size_t _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0);
    _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0 = getenv("ADD");
    if (_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0 != 0)
    {
      strncat(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0) - 1);
    }

  }
  {
    char **_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0 = (char **) (&_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0);
    char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0 = *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0;
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0);
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_label_:
  {
    ;
  }

}

