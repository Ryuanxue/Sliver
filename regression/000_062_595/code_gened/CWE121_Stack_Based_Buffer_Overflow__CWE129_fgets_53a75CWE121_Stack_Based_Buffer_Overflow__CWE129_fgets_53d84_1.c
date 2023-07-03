#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodB2G_data_0))
{
  int _goodB2G_data_0;
  _goodB2G_data_0 = -1;
  {
    if (fgets(_goodB2G_inputBuffer_0, (3 * (sizeof(_goodB2G_data_0))) + 2, stdin) != 0)
    {
      _goodB2G_data_0 = atoi(_goodB2G_inputBuffer_0);
    }
    else
    {
      printLine("fgets() failed.");
    }

  }
  {
    {
      {
        {
          int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0;
          int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0[10] = {0};
          if ((_goodB2G_data_0 >= 0) && (_goodB2G_data_0 < 10))
          {
            opsink(_goodB2G_data_0);
            for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0++)
            {
              printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0]);
            }

          }
          else
          {
            printLine("ERROR: Array index is out-of-bounds");
          }

        }
        CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_label_:
        {
          ;
        }

      }
      CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink_label_:
      {
        ;
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

