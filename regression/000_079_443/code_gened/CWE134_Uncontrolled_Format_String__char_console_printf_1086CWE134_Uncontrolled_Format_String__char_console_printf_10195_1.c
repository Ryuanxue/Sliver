#include "_costom_header_.h"
#include "_slice_header_.h"
extern int globalFalse;
extern int globalTrue;
void CWE134_Uncontrolled_Format_String__char_console_printf_1086CWE134_Uncontrolled_Format_String__char_console_printf_10195_1(char *_goodB2G1_data_0, void (*opsink)(char *_goodG2B2_data_0))
{
  {
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    if (globalTrue)
    {
      {
        size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
        if ((100 - _goodB2G1_dataLen_0) > 1)
        {
          if (fgets(_goodB2G1_data_0 + _goodB2G1_dataLen_0, (int) (100 - _goodB2G1_dataLen_0), stdin) != 0)
          {
            _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
            if ((_goodB2G1_dataLen_0 > 0) && (_goodB2G1_data_0[_goodB2G1_dataLen_0 - 1] == '\n'))
            {
              _goodB2G1_data_0[_goodB2G1_dataLen_0 - 1] = '\0';
            }

          }
          else
          {
            printLine("fgets() failed");
            _goodB2G1_data_0[_goodB2G1_dataLen_0] = '\0';
          }

        }

      }
    }

    if (globalFalse)
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
    if (globalTrue)
    {
      strcpy(_goodG2B2_data_0, "fixedstringtest");
    }

    if (globalTrue)
    {
      opsink(_goodG2B2_data_0);
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_console_printf_10_good_label_:
  {
    ;
  }

}

