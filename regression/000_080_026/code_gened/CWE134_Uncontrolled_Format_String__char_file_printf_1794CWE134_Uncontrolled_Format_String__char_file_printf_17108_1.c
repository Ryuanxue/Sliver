#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_1794CWE134_Uncontrolled_Format_String__char_file_printf_17108_1(char *_goodB2G_data_0, int _goodB2G_i_0, int _goodB2G_k_0, void (*opsink)(char *_goodB2G_data_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 1; _goodB2G_i_0++)
  {
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
  }

  for (_goodB2G_k_0 = 0; _goodB2G_k_0 < 1; _goodB2G_k_0++)
  {
    opsink(_goodB2G_data_0);
  }

  goodB2G_label_:
  {
    ;
  }

}

