#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_fprintf_61b84CWE134_Uncontrolled_Format_String__char_file_fprintf_61a70_1(char *_goodB2G_data_0, char * *CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_return_, void (*opsink)(char *_goodB2G_data_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    {
      size_t _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_dataLen_0 = strlen(_goodB2G_data_0);
      FILE *_CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_pFile_0;
      if ((100 - _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_dataLen_0) > 1)
      {
        _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_pFile_0 != 0)
        {
          if (fgets(_goodB2G_data_0 + _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_dataLen_0, (int) (100 - _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_dataLen_0), _CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _goodB2G_data_0[_CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_dataLen_0] = '\0';
          }

          fclose(_CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_pFile_0);
        }

      }

    }
    CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_return_ = _goodB2G_data_0;
    goto CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_label_;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_label_:
    {
      ;
    }

  }
  _goodB2G_data_0 = CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource_return_;
  fprintf(stdout, "%s\n", _goodB2G_data_0);
  opsink(_goodB2G_data_0);
}

