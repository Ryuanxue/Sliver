#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12214_1_14(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
  {
    int _goodB2G_data_0;
    _goodB2G_data_0 = -1;
    if (1)
    {
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
    }
    else
    {
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
    }

    if (1)
    {
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
    }
    else
    {
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
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    if (1)
    {
      _goodG2B_data_0 = 7;
    }
    else
    {
      _goodG2B_data_0 = 7;
    }

    if (0)
    {
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
    }
    else
    {
      {
        int _goodG2B_i_0;
        int _goodG2B_buffer_0[10] = {0};
        if (_goodG2B_data_0 >= 0)
        {
          _goodG2B_buffer_0[_goodG2B_data_0] = 1;
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
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good_label_:
  {
    ;
  }

}

