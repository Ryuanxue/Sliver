#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a88CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b63_1(char *_goodB2G_environment_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink_data_0))
{
  char *_goodB2G_data_0;
  CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType _goodB2G_myStruct_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    _goodB2G_environment_0 = getenv("ADD");
    if (_goodB2G_environment_0 != 0)
    {
      strncat(_goodB2G_data_0 + _goodB2G_dataLen_0, _goodB2G_environment_0, (100 - _goodB2G_dataLen_0) - 1);
    }

  }
  _goodB2G_myStruct_0.structFirst = _goodB2G_data_0;
  {
    char *_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink_data_0 = _goodB2G_myStruct_0.structFirst;
    opsink(_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink_data_0);
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

