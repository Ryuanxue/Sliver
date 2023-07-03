#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodG2B_data_0))
{
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
    goodB2GSink(_goodB2G_data_0);
    goodB2G_label_:
    {
      ;
    }

  }
  {
    int _goodG2B_data_0;
    _goodG2B_data_0 = -1;
    _goodG2B_data_0 = 7;
    {
      {
        int _goodG2BSink_i_0;
        int _goodG2BSink_buffer_0[10] = {0};
        if (_goodG2B_data_0 >= 0)
        {
          opsink(_goodG2B_data_0);
          for (_goodG2BSink_i_0 = 0; _goodG2BSink_i_0 < 10; _goodG2BSink_i_0++)
          {
            printIntLine(_goodG2BSink_buffer_0[_goodG2BSink_i_0]);
          }

        }
        else
        {
          printLine("ERROR: Array index is negative.");
        }

      }
      goodG2BSink_label_:
      {
        ;
      }

    }
    goodG2B_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good_label_:
  {
    ;
  }

}

