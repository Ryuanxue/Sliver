#include "_costom_header_.h"
#include "_slice_header_.h"
extern int badStatic;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2162CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2139_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0;
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0 = -1;
  {
    if (fgets(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0, (3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0))) + 2, stdin) != 0)
    {
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0);
    }
    else
    {
      printLine("fgets() failed.");
    }

  }
  badStatic = 1;
  {
    if (badStatic)
    {
      {
        int _badSink_i_0;
        int _badSink_buffer_0[10] = {0};
        if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0 >= 0)
        {
          opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_data_0);
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
    }

    badSink_label_:
    {
      ;
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_label_:
  {
    ;
  }

}

