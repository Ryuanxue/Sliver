#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b31_1(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0))
{
  void (*_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_funcPtr_0)(int) = CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0 = -1;
  fscanf(stdin, "%d", &_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0);
  {
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad_label_:
  {
    ;
  }

}

