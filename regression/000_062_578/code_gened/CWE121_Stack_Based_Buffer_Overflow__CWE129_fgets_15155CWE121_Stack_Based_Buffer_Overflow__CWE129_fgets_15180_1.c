#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15155CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15180_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodB2G2_data_0))
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
        opsink(_goodB2G2_data_0);
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
