#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global;
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a100CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b68_1(char *_goodB2G2_environment_0, void (*opsink)(char *_goodB2G2_data_0))
{
  char *_goodB2G2_data_0;
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  {
    size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
    _goodB2G2_environment_0 = getenv("ADD");
    if (_goodB2G2_environment_0 != 0)
    {
      strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global = 1;
  {
    if (CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global)
    {
      opsink(_goodB2G2_data_0);
    }

    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Sink_label_:
    {
      ;
    }

  }
  goodB2G2_label_:
  {
    ;
  }

}

