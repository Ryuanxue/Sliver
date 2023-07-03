#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1(char *_goodB2G_environment_0, void (*opsink)(char *_goodG2B_data_0))
{
  {
    char *_goodB2G_data_0;
    char _goodB2G_dataBuffer_0[100] = "";
    _goodB2G_data_0 = _goodB2G_dataBuffer_0;
    while (1)
    {
      {
        size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
        _goodB2G_environment_0 = getenv("ADD");
        if (_goodB2G_environment_0 != 0)
        {
          strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
        }

      }
      break;
    }

    while (1)
    {
      printf("%s\n", _goodB2G_data_0);
      break;
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    while (1)
    {
      strcpy(_goodG2B_data_0, "fixedstringtest");
      break;
    }

    while (1)
    {
      opsink(_goodG2B_data_0);
      break;
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_printf_16_good_label_:
  {
    ;
  }

}

