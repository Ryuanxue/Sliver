#include "_costom_header_.h"
#include "_slice_header_.h"
extern int STATIC_CONST_FALSE;
extern int STATIC_CONST_TRUE;
void CWE134_Uncontrolled_Format_String__char_environment_printf_0482CWE134_Uncontrolled_Format_String__char_environment_printf_0499_1(char *_goodB2G1_environment_0, void (*opsink)(char *_goodB2G1_data_0))
{
  char *_goodB2G1_data_0;
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  if (STATIC_CONST_TRUE)
  {
    {
      size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
      _goodB2G1_environment_0 = getenv("ADD");
      if (_goodB2G1_environment_0 != 0)
      {
        strncat(_goodB2G1_data_0 + _goodB2G1_dataLen_0, _goodB2G1_environment_0, (100 - _goodB2G1_dataLen_0) - 1);
      }

    }
  }

  if (STATIC_CONST_FALSE)
  {
    printLine("Benign, fixed string");
  }
  else
  {
    opsink(_goodB2G1_data_0);
  }

  goodB2G1_label_:
  {
    ;
  }

}

