#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15180_1(char *_goodB2G2_data_0, void (*opsink)(char *_goodB2G2_data_0))
{
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  switch (6)
  {
    case 6:
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
      break;

    default:
      printLine("Benign, fixed string");
      break;

  }

  switch (7)
  {
    case 7:
      opsink(_goodB2G2_data_0);
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

