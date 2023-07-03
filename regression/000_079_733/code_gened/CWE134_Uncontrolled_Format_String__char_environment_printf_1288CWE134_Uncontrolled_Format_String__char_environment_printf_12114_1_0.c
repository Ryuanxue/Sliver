#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1288CWE134_Uncontrolled_Format_String__char_environment_printf_12114_1_0(char *_goodB2G_environment_0, void (*opsink)(char *_goodB2G_data_0))
{
  char *_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  if (0)
  {
    {
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
      _goodB2G_environment_0 = getenv("ADD");
      if (_goodB2G_environment_0 != 0)
      {
        strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
      }

    }
  }
  else
  {
    {
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
      _goodB2G_environment_0 = getenv("ADD");
      if (_goodB2G_environment_0 != 0)
      {
        strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
      }

    }
  }

  if (0)
  {
    opsink(_goodB2G_data_0);
  }
  else
  {
    printf("%s\n", _goodB2G_data_0);
  }

  goodB2G_label_:
  {
    ;
  }

}

