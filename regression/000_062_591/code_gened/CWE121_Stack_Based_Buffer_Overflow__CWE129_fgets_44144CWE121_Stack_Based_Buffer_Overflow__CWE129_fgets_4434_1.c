#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4434_1(char *_goodB2G_inputBuffer_0, void (*opsink)(int _goodB2G_data_0))
{
  int _goodB2G_data_0;
  void (*_goodB2G_funcPtr_0)(int) = goodB2GSink;
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
      int _badSink_i_0;
      int _badSink_buffer_0[10] = {0};
      if (_goodB2G_data_0 >= 0)
      {
        opsink(_goodB2G_data_0);
        for (_badSink_i_0 = 0; _badSink_i_0 < 10; _badSink_i_0++)
        {
          printIntLine(_badSink_buffer_0[_badSink_i_0]);
        }

      }
      else
      {
        printLine("ERROR: Array index is negative.");
      }

    }
    badSink_label_:
    {
      ;
    }

  }
  goodB2G_label_:
  {
    ;
  }

}

