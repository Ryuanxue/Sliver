#include "_costom_header_.h"
#include "_slice_header_.h"
extern int STATIC_CONST_FALSE;
extern int STATIC_CONST_TRUE;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0491CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04237_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodG2B2_data_0))
{
  {
    int _goodB2G1_data_0;
    _goodB2G1_data_0 = -1;
    if (STATIC_CONST_TRUE)
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

    if (STATIC_CONST_FALSE)
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
          _goodB2G1_buffer_0[_goodB2G1_data_0] = 1;
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
  goodB2G2();
  goodG2B1();
  {
    int _goodG2B2_data_0;
    _goodG2B2_data_0 = -1;
    if (STATIC_CONST_TRUE)
    {
      _goodG2B2_data_0 = 7;
    }

    if (STATIC_CONST_TRUE)
    {
      {
        int _goodG2B2_i_0;
        int _goodG2B2_buffer_0[10] = {0};
        if (_goodG2B2_data_0 >= 0)
        {
          opsink(_goodG2B2_data_0);
          for (_goodG2B2_i_0 = 0; _goodG2B2_i_0 < 10; _goodG2B2_i_0++)
          {
            printIntLine(_goodG2B2_buffer_0[_goodG2B2_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is negative.");
        }

      }
    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_04_good_label_:
  {
    ;
  }

}

