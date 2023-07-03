#include "_costom_header_.h"
#include "_slice_header_.h"
extern int staticFalse;
extern int staticTrue;
void CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05167_1(char *_goodB2G1_environment_0, void (*opsink)(char *_goodG2B2_data_0))
{
  {
    char *_goodB2G1_data_0;
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    if (staticTrue)
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

    if (staticFalse)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      printf("%s\n", _goodB2G1_data_0);
    }

    goodB2G1_label_:
    {
      ;
    }

  }
  goodB2G2();
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    if (staticTrue)
    {
      strcpy(_goodG2B2_data_0, "fixedstringtest");
    }

    if (staticTrue)
    {
      opsink(_goodG2B2_data_0);
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_printf_05_good_label_:
  {
    ;
  }

}

