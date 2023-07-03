#include "_costom_header_.h"
#include "_slice_header_.h"
extern int globalFalse;
extern int globalTrue;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodB2G1_data_0))
{
  int _goodB2G1_data_0;
  _goodB2G1_data_0 = -1;
  if (globalTrue)
  {
    {
      if (fgets(_goodB2G1_inputBuffer_0, (3 * (sizeof(_goodB2G1_data_0))) + 2, stdin) != 0)
      {
        _goodB2G1_data_0 = atoi(_goodB2G1_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
  }

  if (globalFalse)
  {
    printLine("Benign, fixed string");
  }
  else
  {
    {
      int _goodB2G1_i_0;
      int _goodB2G1_buffer_0[10] = {0};
      if ((_goodB2G1_data_0 >= 0) && (_goodB2G1_data_0 < 10))
      {
        opsink(_goodB2G1_data_0);
        for (_goodB2G1_i_0 = 0; _goodB2G1_i_0 < 10; _goodB2G1_i_0++)
        {
          printIntLine(_goodB2G1_buffer_0[_goodB2G1_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
  }

  goodB2G1_label_:
  {
    ;
  }

}
