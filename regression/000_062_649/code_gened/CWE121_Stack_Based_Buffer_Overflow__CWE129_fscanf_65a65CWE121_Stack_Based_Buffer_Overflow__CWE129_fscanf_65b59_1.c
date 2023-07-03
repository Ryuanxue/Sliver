#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1(int _goodB2G_data_0, void (*opsink)(int _goodB2G_data_0))
{
  void (*_goodB2G_funcPtr_0)(int) = CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink;
  _goodB2G_data_0 = -1;
  fscanf(stdin, "%d", &_goodB2G_data_0);
  {
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0[10] = {0};
      if (_goodB2G_data_0 >= 0)
      {
        opsink(_goodB2G_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

