#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1(char *_goodB2G_environment_0, void (*opsink)(char *_goodG2B_data_0))
{
  {
    int _goodB2G_i_0;
    int _goodB2G_k_0;
    char *_goodB2G_data_0;
    char _goodB2G_dataBuffer_0[100] = "";
    _goodB2G_data_0 = _goodB2G_dataBuffer_0;
    for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 1; _goodB2G_i_0++)
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

    for (_goodB2G_k_0 = 0; _goodB2G_k_0 < 1; _goodB2G_k_0++)
    {
      printf("%s\n", _goodB2G_data_0);
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_h_0;
    int _goodG2B_j_0;
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    for (_goodG2B_h_0 = 0; _goodG2B_h_0 < 1; _goodG2B_h_0++)
    {
      strcpy(_goodG2B_data_0, "fixedstringtest");
    }

    for (_goodG2B_j_0 = 0; _goodG2B_j_0 < 1; _goodG2B_j_0++)
    {
      opsink(_goodG2B_data_0);
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_printf_17_good_label_:
  {
    ;
  }

}

