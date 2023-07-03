#include "_costom_header_.h"
#include "_slice_header_.h"
extern int goodB2G2Static;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21172CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21149_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodB2G2_data_0))
{
  int _goodB2G2_data_0;
  _goodB2G2_data_0 = -1;
  {
    if (fgets(_goodB2G2_inputBuffer_0, (3 * (sizeof(_goodB2G2_data_0))) + 2, stdin) != 0)
    {
      _goodB2G2_data_0 = atoi(_goodB2G2_inputBuffer_0);
    }
    else
    {
      printLine("fgets() failed.");
    }

  }
  goodB2G2Static = 1;
  {
    if (goodB2G2Static)
    {
      {
        int _goodB2G2Sink_i_0;
        int _goodB2G2Sink_buffer_0[10] = {0};
        if ((_goodB2G2_data_0 >= 0) && (_goodB2G2_data_0 < 10))
        {
          opsink(_goodB2G2_data_0);
          for (_goodB2G2Sink_i_0 = 0; _goodB2G2Sink_i_0 < 10; _goodB2G2Sink_i_0++)
          {
            printIntLine(_goodB2G2Sink_buffer_0[_goodB2G2Sink_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is out-of-bounds");
        }

      }
    }

    goodB2G2Sink_label_:
    {
      ;
    }

  }
  goodB2G2_label_:
  {
    ;
  }

}

