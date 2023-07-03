#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
  {
    int _goodB2G_data_0;
    _goodB2G_data_0 = -1;
    while (1)
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
      break;
    }

    while (1)
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
      break;
    }

    goodB2G_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    while (1)
    {
      _goodG2B_data_0 = 7;
      break;
    }

    while (1)
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
      break;
    }

    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good_label_:
  {
    ;
  }

}

