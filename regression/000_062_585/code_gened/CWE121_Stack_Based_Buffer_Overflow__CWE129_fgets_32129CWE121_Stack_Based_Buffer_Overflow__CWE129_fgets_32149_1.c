#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32129CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32149_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodB2G_data_2))
{
  int _goodB2G_data_0;
  int *_goodB2G_dataPtr1_0 = &_goodB2G_data_0;
  int *_goodB2G_dataPtr2_0 = &_goodB2G_data_0;
  _goodB2G_data_0 = -1;
  {
    int _goodB2G_data_1 = *_goodB2G_dataPtr1_0;
    {
      if (fgets(_goodB2G_inputBuffer_0, (3 * (sizeof(_goodB2G_data_1))) + 2, stdin) != 0)
      {
        _goodB2G_data_1 = atoi(_goodB2G_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
    *_goodB2G_dataPtr1_0 = _goodB2G_data_1;
  }
  {
    int _goodB2G_data_2 = *_goodB2G_dataPtr2_0;
    {
      int _goodB2G_i_0;
      int _goodB2G_buffer_0[10] = {0};
      if ((_goodB2G_data_2 >= 0) && (_goodB2G_data_2 < 10))
      {
        opsink(_goodB2G_data_2);
        for (_goodB2G_i_0 = 0; _goodB2G_i_0 < 10; _goodB2G_i_0++)
        {
          printIntLine(_goodB2G_buffer_0[_goodB2G_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is out-of-bounds");
      }

    }
  }
  goodB2G_label_:
  {
    ;
  }

}

