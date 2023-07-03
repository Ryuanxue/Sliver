#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_vprintf_4241CWE134_Uncontrolled_Format_String__char_environment_vprintf_4269_1(char *_badSource_environment_0, char * *badSource_return_, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_dataBuffer_0;
  {
    {
      size_t _badSource_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0);
      _badSource_environment_0 = getenv("ADD");
      if (_badSource_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0 + _badSource_dataLen_0, _badSource_environment_0, (100 - _badSource_dataLen_0) - 1);
      }

    }
    badSource_return_ = _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0;
    goto badSource_label_;
    badSource_label_:
    {
      ;
    }

  }
  _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0 = badSource_return_;
  badVaSink(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0, _CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0);
  opsink(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_42_bad_data_0);
}

