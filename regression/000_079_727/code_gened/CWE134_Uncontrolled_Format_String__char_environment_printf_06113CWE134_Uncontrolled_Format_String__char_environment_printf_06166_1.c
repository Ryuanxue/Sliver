#include "_costom_header_.h"
#include "_slice_header_.h"
extern int STATIC_CONST_FIVE;
void CWE134_Uncontrolled_Format_String__char_environment_printf_06113CWE134_Uncontrolled_Format_String__char_environment_printf_06166_1(char *_goodB2G2_environment_0, void (*opsink)(char *_goodG2B2_data_0))
{
  {
    char *_goodB2G2_data_0;
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (STATIC_CONST_FIVE == 5)
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

    if (STATIC_CONST_FIVE == 5)
    {
      printf("%s\n", _goodB2G2_data_0);
    }

    goodB2G2_label_:
    {
      ;
    }

  }
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    if (STATIC_CONST_FIVE == 5)
    {
      strcpy(_goodG2B2_data_0, "fixedstringtest");
    }

    if (STATIC_CONST_FIVE == 5)
    {
      opsink(_goodG2B2_data_0);
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_printf_06_good_label_:
  {
    ;
  }

}

