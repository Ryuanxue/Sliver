#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_44158CWE606_Unchecked_Loop_Condition__char_file_4443_1(char *_goodB2G_data_0, void (*opsink)(int _badSink_n_0))
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
  {
    {
      int _badSink_i_0;
      int _badSink_n_0;
      int _badSink_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_badSink_n_0) == 1)
      {
        _badSink_intVariable_0 = 0;
        opsink(_badSink_n_0);
        printIntLine(_badSink_intVariable_0);
      }

    }
    badSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

