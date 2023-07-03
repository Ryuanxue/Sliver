#include "_costom_header_.h"
#include "_slice_header_.h"
extern int staticFalse;
extern int staticTrue;
void CWE134_Uncontrolled_Format_String__char_console_printf_05138CWE134_Uncontrolled_Format_String__char_console_printf_05183_1(char *_goodB2G2_data_0, void (*opsink)(char *_goodG2B1_data_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (staticTrue)
    {
      {
        size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
        if ((100 - _goodB2G2_dataLen_0) > 1)
        {
          if (fgets(_goodB2G2_data_0 + _goodB2G2_dataLen_0, (int) (100 - _goodB2G2_dataLen_0), stdin) != 0)
          {
            _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
            if ((_goodB2G2_dataLen_0 > 0) && (_goodB2G2_data_0[_goodB2G2_dataLen_0 - 1] == '\n'))
            {
              _goodB2G2_data_0[_goodB2G2_dataLen_0 - 1] = '\0';
            }

          }
          else
          {
            printLine("fgets() failed");
            _goodB2G2_data_0[_goodB2G2_dataLen_0] = '\0';
          }

        }

      }
    }

    if (staticTrue)
    {
      printf("%s\n", _goodB2G2_data_0);
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
    if (staticFalse)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      strcpy(_goodG2B1_data_0, "fixedstringtest");
    }

    if (staticTrue)
    {
      opsink(_goodG2B1_data_0);
    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_console_printf_05_good_label_:
  {
    ;
  }

}

