#include "_costom_header_.h"
#include "_slice_header_.h"
extern int goodB2G1Static;
void CWE606_Unchecked_Loop_Condition__char_file_21144CWE606_Unchecked_Loop_Condition__char_file_21116_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1Sink_n_0))
{
  char _goodB2G1_dataBuffer_0[100] = "";
  _goodB2G1_data_0 = _goodB2G1_dataBuffer_0;
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
  goodB2G1Static = 0;
  {
    if (goodB2G1Static)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _goodB2G1Sink_i_0;
        int _goodB2G1Sink_n_0;
        int _goodB2G1Sink_intVariable_0;
        if (sscanf(_goodB2G1_data_0, "%d", &_goodB2G1Sink_n_0) == 1)
        {
          if (_goodB2G1Sink_n_0 < 10000)
          {
            _goodB2G1Sink_intVariable_0 = 0;
            opsink(_goodB2G1Sink_n_0);
            printIntLine(_goodB2G1Sink_intVariable_0);
          }

        }

      }
    }

    goodB2G1Sink_label_:
    {
      ;
    }

  }
  goodB2G1_label_:
  {
    ;
  }

}

