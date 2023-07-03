#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08148CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodG2B1_data_0))
{
  {
    int _goodB2G2_data_0;
    _goodB2G2_data_0 = -1;
    if (staticReturnsTrue())
    {
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
    }

    if (staticReturnsTrue())
    {
      {
        int _goodB2G2_i_0;
        int _goodB2G2_buffer_0[10] = {0};
        if ((_goodB2G2_data_0 >= 0) && (_goodB2G2_data_0 < 10))
        {
          _goodB2G2_buffer_0[_goodB2G2_data_0] = 1;
          for (_goodB2G2_i_0 = 0; _goodB2G2_i_0 < 10; _goodB2G2_i_0++)
          {
            printIntLine(_goodB2G2_buffer_0[_goodB2G2_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is out-of-bounds");
        }

      }
    }

    goodB2G2_label_:
    {
      ;
    }

  }
  {
    int _goodG2B1_data_0;
    _goodG2B1_data_0 = -1;
    if (staticReturnsFalse())
    {
      printLine("Benign, fixed string");
    }
    else
    {
      _goodG2B1_data_0 = 7;
    }

    if (staticReturnsTrue())
    {
      {
        int _goodG2B1_i_0;
        int _goodG2B1_buffer_0[10] = {0};
        if (_goodG2B1_data_0 >= 0)
        {
          opsink(_goodG2B1_data_0);
          for (_goodG2B1_i_0 = 0; _goodG2B1_i_0 < 10; _goodG2B1_i_0++)
          {
            printIntLine(_goodG2B1_buffer_0[_goodG2B1_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is negative.");
        }

      }
    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good_label_:
  {
    ;
  }

}

