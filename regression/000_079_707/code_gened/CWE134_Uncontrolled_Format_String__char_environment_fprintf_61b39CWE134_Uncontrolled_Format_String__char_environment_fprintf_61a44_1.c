#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0, char * *CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0))
{
  char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0;
  char _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0;
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0 != 0)
      {
        strncat(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0) - 1);
      }

    }
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_ = _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0;
    goto CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_label_;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_label_:
    {
      ;
    }

  }
  _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0 = CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_;
  fprintf(stdout, _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0);
  opsink(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0);
}

