#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_02108CWE134_Uncontrolled_Format_String__char_environment_printf_02120_1(char *_goodB2G2_environment_0, void (*opsink)(char *_goodB2G2_data_0))
{
  char *_goodB2G2_data_0;
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  if (1)
  {
    {
      size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
      _goodB2G2_environment_0 = getenv("ADD");
      if (_goodB2G2_environment_0 != 0)
      {
        strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
      }

    }
  }

  if (1)
  {
    opsink(_goodB2G2_data_0);
  }

  goodB2G2_label_:
  {
    ;
  }

}

