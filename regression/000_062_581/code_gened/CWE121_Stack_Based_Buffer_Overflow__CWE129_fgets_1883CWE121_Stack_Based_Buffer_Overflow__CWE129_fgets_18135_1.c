#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
  {
    int _goodB2G_data_0;
    _goodB2G_data_0 = -1;
    goto goodB2G_source;
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
        _goodB2G_buffer_0[_goodB2G_data_0] = 1;
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
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    goto goodG2B_source;
    goodG2B_source:
    {
      _goodG2B_data_0 = 7;
    }

    goto goodG2B_sink;
    goodG2B_sink:
    {
      int _goodG2B_i_0;
      int _goodG2B_buffer_0[10] = {0};
      if (_goodG2B_data_0 >= 0)
      {
        opsink(_goodG2B_data_0);
        for (_goodG2B_i_0 = 0; _goodG2B_i_0 < 10; _goodG2B_i_0++)
        {
          printIntLine(_goodG2B_buffer_0[_goodG2B_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good_label_:
  {
    ;
  }

}

