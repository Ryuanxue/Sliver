#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_61b86CWE606_Unchecked_Loop_Condition__char_file_61a103_1(char *_goodB2G_data_0, char * *CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_return_, void (*opsink)(int _goodB2G_n_0))
{
  char _goodB2G_dataBuffer_0[100] = "";
  _goodB2G_data_0 = _goodB2G_dataBuffer_0;
  {
    {
      size_t _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_dataLen_0 = strlen(_goodB2G_data_0);
      FILE *_CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_pFile_0;
      if ((100 - _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_dataLen_0) > 1)
      {
        _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_pFile_0 = fopen("/tmp/file.txt", "r");
        if (_CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_pFile_0 != 0)
        {
          if (fgets(_goodB2G_data_0 + _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_dataLen_0, (int) (100 - _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_dataLen_0), _CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_pFile_0) == 0)
          {
            printLine("fgets() failed");
            _goodB2G_data_0[_CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_dataLen_0] = '\0';
          }

          fclose(_CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_pFile_0);
        }

      }

    }
    CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_return_ = _goodB2G_data_0;
    goto CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_label_;
    CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_label_:
    {
      ;
    }

  }
  _goodB2G_data_0 = CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource_return_;
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
  goodB2G_label_:
  {
    ;
  }

}

