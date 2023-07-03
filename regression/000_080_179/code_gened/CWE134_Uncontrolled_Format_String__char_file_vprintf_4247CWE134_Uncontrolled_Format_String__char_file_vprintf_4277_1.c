#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE134_Uncontrolled_Format_String__char_file_vprintf_4247CWE134_Uncontrolled_Format_String__char_file_vprintf_4277_1(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0, char * *badSource_return_, void (*opsink)(char *_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0))
{
  char _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_dataBuffer_0[100] = "";
  _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0 = _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_dataBuffer_0;
  {
    {
      size_t _badSource_dataLen_0 = strlen(_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0);
      FILE *_badSource_pFile_0;
      if ((100 - _badSource_dataLen_0) > 1)
      {
        _badSource_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_badSource_pFile_0 != 0)
        {
          if (fgets(_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0 + _badSource_dataLen_0, (int) (100 - _badSource_dataLen_0), _badSource_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0[_badSource_dataLen_0] = '\0';
          }

          fclose(_badSource_pFile_0);
        }

      }

    }
    badSource_return_ = _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0;
    goto badSource_label_;
    badSource_label_:
    {
      ;
    }

  }
  _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0 = badSource_return_;
  badVaSink(_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0, _CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0);
  opsink(_CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad_data_0);
}

