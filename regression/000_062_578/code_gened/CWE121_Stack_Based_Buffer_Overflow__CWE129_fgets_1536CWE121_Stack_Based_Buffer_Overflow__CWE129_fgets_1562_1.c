#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1536CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1562_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0 = -1;
  switch (6)
  {
    case 6:
    {
      if (fgets(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0))) + 2, stdin) != 0)
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_inputBuffer_0);
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
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_i_0]);
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

  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad_label_:
  {
    ;
  }

}

