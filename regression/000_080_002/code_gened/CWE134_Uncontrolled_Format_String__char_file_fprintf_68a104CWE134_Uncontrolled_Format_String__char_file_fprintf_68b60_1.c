#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData;
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68a104CWE134_Uncontrolled_Format_String__char_file_fprintf_68b60_1(char *_goodB2G_data_0, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink_data_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_0);
    FILE *_goodB2G_pFile_0;
    if ((100 - _goodB2G_dataLen_0) > 1)
    {
      _goodB2G_pFile_0 = fopen("/tmp/file.txt", "r");
      if (_goodB2G_pFile_0 != 0)
      {
        if (fgets(_goodB2G_data_0 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), _goodB2G_pFile_0) == 0)
        {
          printLine("fgets() failed");
          _goodB2G_data_0[_goodB2G_dataLen_0] = '\0';
        }

        fclose(_goodB2G_pFile_0);
      }

    }

  }
  CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData = _goodB2G_data_0;
  {
    char *_CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink_data_0 = CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData;
    opsink(_CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink_data_0);
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

