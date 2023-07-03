#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal;
extern int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global;
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a78CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b78_1(char *_goodB2G1_environment_0, void (*opsink)(char *_goodG2B_data_0))
{
  {
    char *_goodB2G1_data_0;
    char _goodB2G1_dataBuffer_0[100] = "";
    _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
    {
      size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
      _goodB2G1_environment_0 = getenv("ADD");
      if (_goodB2G1_environment_0 != 0)
      {
        strncat(_goodB2G1_data_0 + _goodB2G1_dataLen_0, _goodB2G1_environment_0, (100 - _goodB2G1_dataLen_0) - 1);
      }

    }
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global = 0;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Sink(_goodB2G1_data_0);
    goodB2G1_label_:
    {
      ;
    }

  }
  goodB2G2();
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    strcpy(_goodG2B_data_0, "fixedstringtest");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal = 1;
    {
      if (CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal)
      {
        opsink(_goodG2B_data_0);
      }

      CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BSink_label_:
      {
        ;
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_good_label_:
  {
    ;
  }

}

