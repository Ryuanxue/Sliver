#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45148CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45126_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodB2GSink_data_0))
{
  int _goodB2G_data_0;
  _goodB2G_data_0 = -1;
  {
    if (fgets(_goodB2G_inputBuffer_0, (3 * (sizeof(_goodB2G_data_0))) + 2, stdin) != 0)
    {
      _goodB2G_data_0 = atoi(_goodB2G_inputBuffer_0);
    }
    else
    {
      printLine("fgets() failed.");
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData = _goodB2G_data_0;
  {
    int _goodB2GSink_data_0 = CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData;
    {
      int _goodB2GSink_i_0;
      int _goodB2GSink_buffer_0[10] = {0};
      if ((_goodB2GSink_data_0 >= 0) && (_goodB2GSink_data_0 < 10))
      {
        opsink(_goodB2GSink_data_0);
        for (_goodB2GSink_i_0 = 0; _goodB2GSink_i_0 < 10; _goodB2GSink_i_0++)
        {
          printIntLine(_goodB2GSink_buffer_0[_goodB2GSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
    goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

