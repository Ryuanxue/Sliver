#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0;
  int *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0 = &_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0;
  int *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0 = &_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0 = -1;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1 = *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0;
    {
      if (fgets(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1))) + 2, stdin) != 0)
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
    *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0 = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1;
  }
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2 = *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0;
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_label_:
  {
    ;
  }

}

