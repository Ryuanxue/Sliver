#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b29CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61a40_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_inputBuffer_0, int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_return_, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0 = -1;
  {
    {
      if (fgets(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0))) + 2, stdin) != 0)
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_return_ = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0;
    goto CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_label_;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_label_:
    {
      ;
    }

  }
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0 = CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource_return_;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_i_0;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_buffer_0[10] = {0};
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0 >= 0)
    {
      opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_data_0);
      for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_i_0++)
      {
        printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_i_0]);
      }

    }
    else
    {
      printLine("ERROR: Array index is negative.");
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad_label_:
  {
    ;
  }

}

