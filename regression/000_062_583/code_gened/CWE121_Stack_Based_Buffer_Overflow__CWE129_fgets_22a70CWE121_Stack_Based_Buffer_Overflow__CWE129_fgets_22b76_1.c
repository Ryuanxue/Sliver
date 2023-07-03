#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a70CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b76_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodB2G1_data_0))
{
  int _goodB2G1_data_0;
  _goodB2G1_data_0 = -1;
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
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global = 0;
  {
    if (CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global)
    {
      printLine("Benign, fixed string");
    }
    else
    {
      {
        int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_i_0;
        int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_buffer_0[10] = {0};
        if ((_goodB2G1_data_0 >= 0) && (_goodB2G1_data_0 < 10))
        {
          opsink(_goodB2G1_data_0);
          for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_i_0++)
          {
            printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is out-of-bounds");
        }

      }
    }

    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink_label_:
    {
      ;
    }

  }
  goodB2G1_label_:
  {
    ;
  }

}

