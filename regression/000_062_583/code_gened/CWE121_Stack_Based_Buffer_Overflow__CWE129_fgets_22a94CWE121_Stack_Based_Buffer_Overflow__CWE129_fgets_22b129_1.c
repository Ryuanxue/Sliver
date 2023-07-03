#include "_costom_header_.h"
#include "_slice_header_.h"
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal;
extern int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
  {
    int _goodB2G2_data_0;
    _goodB2G2_data_0 = -1;
    {
      if (fgets(_goodB2G2_inputBuffer_0, (3 * (sizeof(_goodB2G2_data_0))) + 2, stdin) != 0)
      {
        _goodB2G2_data_0 = atoi(_goodB2G2_inputBuffer_0);
      }
      else
      {
        printLine("fgets() failed.");
      }

    }
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = 1;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(_goodB2G2_data_0);
    goodB2G2_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    _goodG2B_data_0 = 7;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal = 1;
    {
      if (CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal)
      {
        {
          int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0;
          int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0[10] = {0};
          if (_goodG2B_data_0 >= 0)
          {
            opsink(_goodG2B_data_0);
            for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0++)
            {
              printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0]);
            }

          }
          else
          {
            printLine("ERROR: Array index is negative.");
          }

        }
      }

      CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_label_:
      {
        ;
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good_label_:
  {
    ;
  }

}

