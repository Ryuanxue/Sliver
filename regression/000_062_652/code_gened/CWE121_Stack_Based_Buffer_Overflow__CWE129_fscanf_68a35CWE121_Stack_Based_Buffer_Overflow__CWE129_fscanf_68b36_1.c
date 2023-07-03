#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b36_1(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad_data_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_data_0))
{
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad_data_0 = -1;
  fscanf(stdin, "%d", &_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad_data_0);
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad_data_0;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_data_0 = CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData;
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_buffer_0[10] = {0};
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_data_0 >= 0)
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad_label_:
  {
    ;
  }

}

