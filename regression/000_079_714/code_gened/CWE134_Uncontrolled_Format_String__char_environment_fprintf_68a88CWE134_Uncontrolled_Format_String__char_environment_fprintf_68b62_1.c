#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData;
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a88CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b62_1(char *_goodB2G_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink_data_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    _goodB2G_environment_0 = getenv("ADD");
    if (_goodB2G_environment_0 != 0)
    {
      strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData = _goodB2G_data_0;
  {
    char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink_data_0 = CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData;
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink_data_0);
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

