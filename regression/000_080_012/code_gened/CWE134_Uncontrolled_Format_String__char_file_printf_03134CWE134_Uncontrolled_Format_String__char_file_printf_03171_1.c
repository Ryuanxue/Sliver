#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_printf_03134CWE134_Uncontrolled_Format_String__char_file_printf_03171_1(char *_goodB2G2_data_0, void (*opsink)(char *_goodG2B1_data_0))
{
  {
    char _goodB2G2_dataBuffer_0[100] = "";
    _goodB2G2_data_0 = _goodB2G2_dataBuffer_0;
    if (5 == 5)
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

    if (5 == 5)
    {
      printf("%s\n", _goodB2G2_data_0);
    }

    goodB2G2_label_:
    {
      ;
    }

  }
  {
    char *_goodG2B1_data_0;
    char _goodG2B1_dataBuffer_0[100] = "";
    _goodG2B1_data_0 = _goodG2B1_dataBuffer_0;
    if (5 != 5)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      strcpy(_goodG2B1_data_0, "fixedstringtest");
    }

    if (5 == 5)
    {
      opsink(_goodG2B1_data_0);
    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE134_Uncontrolled_Format_String__char_file_printf_03_good_label_:
  {
    ;
  }

}

