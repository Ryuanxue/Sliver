#include "_costom_header_.h"
#include "_slice_header_.h"
extern int STATIC_CONST_TRUE;
void CWE134_Uncontrolled_Format_String__char_file_printf_04140CWE134_Uncontrolled_Format_String__char_file_printf_04154_1(char *_goodB2G2_data_0, void (*opsink)(char *_goodB2G2_data_0))
{
  char _goodB2G2_dataBuffer_0[100] = "";
  _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
  if (STATIC_CONST_TRUE)
  {
    {
      size_t _goodB2G2_dataLen_0 = strlen(_goodB2G2_data_0);
      FILE *_goodB2G2_pFile_0;
      if ((100 - _goodB2G2_dataLen_0) > 1)
      {
        _goodB2G2_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_goodB2G2_pFile_0 != 0)
        {
          if (fgets(_goodB2G2_data_0 + _goodB2G2_dataLen_0, (int) (100 - _goodB2G2_dataLen_0), _goodB2G2_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _goodB2G2_data_0[_goodB2G2_dataLen_0] = '\0';
          }

          fclose(_goodB2G2_pFile_0);
        }

      }

    }
  }

  if (STATIC_CONST_TRUE)
  {
    opsink(_goodB2G2_data_0);
  }

  goodB2G2_label_:
  {
    ;
  }

}

