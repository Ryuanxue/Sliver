#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_console_fprintf_54a41CWE134_Uncontrolled_Format_String__char_console_fprintf_54e29_1(char *_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0))
{
  char _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataBuffer_0;
  {
    size_t _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0);
    if ((100 - _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0) > 1)
    {
      if (fgets(_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0 + _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0, (int) (100 - _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0), stdin) != 0)
      {
        _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0);
        if ((_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0 > 0) && (_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0[_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0 - 1] == '\n'))
        {
          _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0[_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0 - 1] = '\0';
        }

      }
      else
      {
        printLine("fgets() failed");
        _CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0[_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_dataLen_0] = '\0';
      }

    }

  }
  {
    {
      {
        {
          opsink(_CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_data_0);
          CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_badSink_label_:
          {
            ;
          }

        }
        CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_badSink_label_:
        {
          ;
        }

      }
      CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_badSink_label_:
      {
        ;
      }

    }
    CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_badSink_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad_label_:
  {
    ;
  }

}

