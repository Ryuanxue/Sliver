#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_12128CWE134_Uncontrolled_Format_String__char_file_printf_12177_1_11(char *_goodB2G_data_0, void (*opsink)(char *_goodG2B_data_0))
{
  {
    char _goodB2G_dataBuffer_0[100] = "";
    _goodB2G_data_0 = _goodB2G_dataBuffer_0;
    if (1)
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
    else
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

    if (0)
    {
      printf("%s\n", _goodB2G_data_0);
    }
    else
    {
      printf("%s\n", _goodB2G_data_0);
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    if (1)
    {
      strcpy(_goodG2B_data_0, "fixedstringtest");
    }
    else
    {
      strcpy(_goodG2B_data_0, "fixedstringtest");
    }

    if (1)
    {
      printf(_goodG2B_data_0);
    }
    else
    {
      opsink(_goodG2B_data_0);
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_file_printf_12_good_label_:
  {
    ;
  }

}

