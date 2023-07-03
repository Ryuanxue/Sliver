#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b90_1(int _goodB2G_data_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_data_0))
{
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType _goodB2G_myStruct_0;
  _goodB2G_data_0 = -1;
  fscanf(stdin, "%d", &_goodB2G_data_0);
  _goodB2G_myStruct_0.structFirst = _goodB2G_data_0;
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_data_0 = _goodB2G_myStruct_0.structFirst;
    {
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_i_0;
      int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_buffer_0[10] = {0};
      if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_data_0 >= 0) && (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_data_0 < 10))
      {
        opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_data_0);
        for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_i_0++)
        {
          printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

