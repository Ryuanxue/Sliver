#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_02134CWE134_Uncontrolled_Format_String__char_file_printf_02189_1(char *_goodB2G2_data_0, void (*opsink)(char *_goodG2B2_data_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (1)
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

    if (1)
    {
      printf("%s\n", _goodB2G2_data_0);
    }

    goodB2G2_label_:
    {
      ;
    }

  }
  goodG2B1();
  {
    char *_goodG2B2_data_0;
    char _goodG2B2_dataBuffer_0[100] = "";
    _goodG2B2_data_0 = _goodG2B2_dataBuffer_0;
    if (1)
    {
      strcpy(_goodG2B2_data_0, "fixedstringtest");
    }

    if (1)
    {
      opsink(_goodG2B2_data_0);
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_file_printf_02_good_label_:
  {
    ;
  }

}

