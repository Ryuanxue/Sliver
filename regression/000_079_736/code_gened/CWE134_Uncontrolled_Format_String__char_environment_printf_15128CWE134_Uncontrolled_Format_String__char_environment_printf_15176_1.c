#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15176_1(char *_goodB2G2_environment_0, void (*opsink)(char *_goodG2B1_data_0))
{
  {
    char *_goodB2G2_data_0;
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    switch (6)
    {
      case 6:
      {
        size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        _goodB2G2_environment_0 = getenv("ADD");
        if (_goodB2G2_environment_0 != 0)
        {
          strncat(_goodB2G2_data_0 + _goodB2G2_dataLen_0, _goodB2G2_environment_0, (100 - _goodB2G2_dataLen_0) - 1);
        }

      }
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (7)
    {
      case 7:
        printf("%s\n", _goodB2G2_data_0);
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodB2G2_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B1_data_0;
    char _goodG2B1_dataBuffer_0[100] = "";
    _goodG2B1_data_0 = _goodG2B1_dataBuffer_0;
    switch (5)
    {
      case 6:
        printLine("Benign, fixed string");
        break;

      default:
        strcpy(_goodG2B1_data_0, "fixedstringtest");
        break;

    }

    switch (7)
    {
      case 7:
        opsink(_goodG2B1_data_0);
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_printf_15_good_label_:
  {
    ;
  }

}

