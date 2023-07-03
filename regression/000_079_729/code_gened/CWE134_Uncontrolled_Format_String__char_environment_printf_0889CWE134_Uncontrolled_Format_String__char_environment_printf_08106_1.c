#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_0889CWE134_Uncontrolled_Format_String__char_environment_printf_08106_1(char *_goodB2G1_environment_0, void (*opsink)(char *_goodB2G1_data_0))
{
  char *_goodB2G1_data_0;
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  if (staticReturnsTrue())
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

  if (staticReturnsFalse())
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

