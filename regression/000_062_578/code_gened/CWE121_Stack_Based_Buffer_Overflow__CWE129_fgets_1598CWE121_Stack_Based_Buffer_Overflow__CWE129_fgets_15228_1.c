#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodG2B1_data_0))
{
  {
    int _goodB2G1_data_0;
    _goodB2G1_data_0 = -1;
    switch (6)
    {
      case 6:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (8)
    {
      case 7:
        printLine("Benign, fixed string");
        break;

      default:
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
        break;

    }

    goodB2G1_label_:
    {
      ;
    }

  }
  goodB2G2();
  {
    int _goodG2B1_data_0;
    _goodG2B1_data_0 = -1;
    switch (5)
    {
      case 6:
        printLine("Benign, fixed string");
        break;

      default:
        _goodG2B1_data_0 = 7;
        break;

    }

    switch (7)
    {
      case 7:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodG2B1_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good_label_:
  {
    ;
  }

}

