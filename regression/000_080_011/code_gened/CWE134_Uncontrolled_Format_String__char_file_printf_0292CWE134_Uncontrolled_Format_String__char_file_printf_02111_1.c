#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_0292CWE134_Uncontrolled_Format_String__char_file_printf_02111_1(char *_goodB2G1_data_0, void (*opsink)(char *_goodB2G1_data_0))
{
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
  if (1)
  {
    {
      size_t _goodB2G1_dataLen_0 = strlen(_goodB2G1_data_0);
      FILE *_goodB2G1_pFile_0;
      if ((100 - _goodB2G1_dataLen_0) > 1)
      {
        _goodB2G1_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_goodB2G1_pFile_0 != 0)
        {
          if (fgets(_goodB2G1_data_0 + _goodB2G1_dataLen_0, (int) (100 - _goodB2G1_dataLen_0), _goodB2G1_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _goodB2G1_data_0[_goodB2G1_dataLen_0] = '\0';
          }

          fclose(_goodB2G1_pFile_0);
        }

      }

    }
  }

  if (0)
  {
    printLine("Benign, fixed string");
  }
  else
  {
    opsink(_goodB2G1_data_0);
  }

  goodB2G1_label_:
  {
    ;
  }

}

