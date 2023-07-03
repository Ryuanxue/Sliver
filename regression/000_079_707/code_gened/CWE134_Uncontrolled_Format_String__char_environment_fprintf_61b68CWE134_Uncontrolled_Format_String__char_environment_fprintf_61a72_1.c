#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b68CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a72_1(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_environment_0, char * *CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_return_, void (*opsink)(char *_goodB2G_data_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_dataLen_0 = strlen(_goodB2G_data_0);
      _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_environment_0 = getenv("ADD");
      if (_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_environment_0 != 0)
      {
        strncat(_goodB2G_data_0 + _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_dataLen_0, _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_environment_0, (100 - _CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_dataLen_0) - 1);
      }

    }
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_return_ = _goodB2G_data_0;
    goto CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_label_;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_label_:
    {
      ;
    }

  }
  _goodB2G_data_0 = CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource_return_;
  fprintf(stdout, "%s\n", _goodB2G_data_0);
  opsink(_goodB2G_data_0);
}

