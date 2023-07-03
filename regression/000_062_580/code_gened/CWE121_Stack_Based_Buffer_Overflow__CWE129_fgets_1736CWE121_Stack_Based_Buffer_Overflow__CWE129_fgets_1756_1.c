#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0, int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0, int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0 = -1;
  for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0 < 1; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0++)
  {
    {
      if (fgets(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0))) + 2, stdin) != 0)
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
  }

  for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0 < 1; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0++)
  {
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
  }

  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_label_:
  {
    ;
  }

}

