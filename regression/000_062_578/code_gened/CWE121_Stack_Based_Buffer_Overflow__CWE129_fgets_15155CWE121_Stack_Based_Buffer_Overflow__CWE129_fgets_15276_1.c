#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15155CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15276_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodG2B2_data_0))
{
  {
    int _goodB2G2_data_0;
    _goodB2G2_data_0 = -1;
    switch (6)
    {
      case 6:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (7)
    {
      case 7:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodB2G2_label_:
    {
      ;
    }

  }
  goodG2B1();
  {
    int _goodG2B2_data_0;
    _goodG2B2_data_0 = -1;
    switch (6)
    {
      case 6:
        _goodG2B2_data_0 = 7;
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    switch (7)
    {
      case 7:
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
        break;

      default:
        printLine("Benign, fixed string");
        break;

    }

    goodG2B2_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good_label_:
  {
    ;
  }

}

