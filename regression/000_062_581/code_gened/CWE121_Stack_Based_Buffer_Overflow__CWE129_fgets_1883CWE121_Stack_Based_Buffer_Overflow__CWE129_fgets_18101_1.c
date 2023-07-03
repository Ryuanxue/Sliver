#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18101_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodB2G_data_0))
{
  int _goodB2G_data_0;
  _goodB2G_data_0 = -1;
  goodB2G_source:
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

  goto goodB2G_sink;
  goodB2G_sink:
  {
    int _goodB2G_i_0;
    int _goodB2G_buffer_0[10] = {0};
    if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
    {
      opsink(_goodB2G_data_0);
      for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 10; _goodB2G_i_0++)
      {
        printIntLine(_goodB2G_buffer_0[_goodB2G_i_0]);
      }

    }
    else
    {
      printLine("ERROR: Array index is out-of-bounds");
    }

  }

  goodB2G_label_:
  {
    ;
  }

}

