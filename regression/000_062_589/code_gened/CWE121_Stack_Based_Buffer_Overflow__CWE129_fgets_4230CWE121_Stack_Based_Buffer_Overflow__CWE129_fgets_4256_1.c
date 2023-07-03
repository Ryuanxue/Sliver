#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4230CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4256_1(char *_badSource_inputBuffer_0, int badSource_return_, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0 = -1;
  {
    {
      if (fgets(_badSource_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0))) + 2, stdin) != 0)
      {
        _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0 = atoi(_badSource_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
    badSource_return_ = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0;
    goto badSource_label_;
    badSource_label_:
    {
      ;
    }

  }
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0 = badSource_return_;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_i_0;
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_buffer_0[10] = {0};
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0 >= 0)
    {
      opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_data_0);
      for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_i_0++)
      {
        printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_i_0]);
      }

    }
    else
    {
      printLine("ERROR: Array index is negative.");
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad_label_:
  {
    ;
  }

}

