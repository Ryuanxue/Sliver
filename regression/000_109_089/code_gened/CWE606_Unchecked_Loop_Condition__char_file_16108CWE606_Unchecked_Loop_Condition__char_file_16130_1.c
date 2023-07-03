#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_16108CWE606_Unchecked_Loop_Condition__char_file_16130_1(char *_goodB2G_data_0, void (*opsink)(int _goodB2G_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  while (1)
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
    break;
  }

  while (1)
  {
    {
      int _goodB2G_i_0;
      int _goodB2G_n_0;
      int _goodB2G_intVariable_0;
      if (sscanf(_goodB2G_data_0, "%d", &_goodB2G_n_0) == 1)
      {
        if (_goodB2G_n_0 < 10000)
        {
          _goodB2G_intVariable_0 = 0;
          opsink(_goodB2G_n_0);
          printIntLine(_goodB2G_intVariable_0);
        }

      }

    }
    break;
  }

  goodB2G_label_:
  {
    ;
  }

}

