#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_12(char *_goodB2G_data_0, void (*opsink)(int _goodG2B_n_0))
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

    if (1)
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
            for (_goodB2G_i_0 = 0; _goodB2G_i_0 < _goodB2G_n_0; _goodB2G_i_0++)
            {
              _goodB2G_intVariable_0++;
            }

            printIntLine(_goodB2G_intVariable_0);
          }

        }

      }
    }
    else
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
            for (_goodB2G_i_0 = 0; _goodB2G_i_0 < _goodB2G_n_0; _goodB2G_i_0++)
            {
              _goodB2G_intVariable_0++;
            }

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
  {
    char *_goodG2B_data_0;
    char _goodG2B_dataBuffer_0[100] = "";
    _goodG2B_data_0 = _goodG2B_dataBuffer_0;
    if (0)
    {
      strcpy(_goodG2B_data_0, "15");
    }
    else
    {
      strcpy(_goodG2B_data_0, "15");
    }

    if (0)
    {
      {
        int _goodG2B_i_0;
        int _goodG2B_n_0;
        int _goodG2B_intVariable_0;
        if (sscanf(_goodG2B_data_0, "%d", &_goodG2B_n_0) == 1)
        {
          _goodG2B_intVariable_0 = 0;
          for (_goodG2B_i_0 = 0; _goodG2B_i_0 < _goodG2B_n_0; _goodG2B_i_0++)
          {
            _goodG2B_intVariable_0++;
          }

          printIntLine(_goodG2B_intVariable_0);
        }

      }
    }
    else
    {
      {
        int _goodG2B_i_0;
        int _goodG2B_n_0;
        int _goodG2B_intVariable_0;
        if (sscanf(_goodG2B_data_0, "%d", &_goodG2B_n_0) == 1)
        {
          _goodG2B_intVariable_0 = 0;
          opsink(_goodG2B_n_0);
          printIntLine(_goodG2B_intVariable_0);
        }

      }
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE606_Unchecked_Loop_Condition__char_file_12_good_label_:
  {
    ;
  }

}

