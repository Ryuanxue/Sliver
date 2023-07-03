#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_32144CWE606_Unchecked_Loop_Condition__char_file_32166_1(char *_goodB2G_data_1, void (*opsink)(int _goodB2G_n_0))
{
  char *_goodB2G_data_0;
  char **_goodB2G_dataPtr1_0 = &_goodB2G_data_0;
  char **_goodB2G_dataPtr2_0 = &_goodB2G_data_0;
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    _goodB2G_data_1 = *_goodB2G_dataPtr1_0;
    {
      size_t _goodB2G_dataLen_0 = strlen(_goodB2G_data_1);
      FILE *_goodB2G_pFile_0;
      if ((100 - _goodB2G_dataLen_0) > 1)
      {
        _goodB2G_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_goodB2G_pFile_0 != 0)
        {
          if (fgets(_goodB2G_data_1 + _goodB2G_dataLen_0, (int) (100 - _goodB2G_dataLen_0), _goodB2G_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _goodB2G_data_1[_goodB2G_dataLen_0] = '\0';
          }

          fclose(_goodB2G_pFile_0);
        }

      }

    }
    *_goodB2G_dataPtr1_0 = _goodB2G_data_1;
  }
  {
    char *_goodB2G_data_2 = *_goodB2G_dataPtr2_0;
    {
      int _goodB2G_i_0;
      int _goodB2G_n_0;
      int _goodB2G_intVariable_0;
      if (sscanf(_goodB2G_data_2, "%d", &_goodB2G_n_0) == 1)
      {
        if (_goodB2G_n_0 < 10000)
        {
          _goodB2G_intVariable_0 = 0;
          opsink(_goodB2G_n_0);
          printIntLine(_goodB2G_intVariable_0);
        }

      }

    }
  }
  goodB2G_label_:
  {
    ;
  }

}

