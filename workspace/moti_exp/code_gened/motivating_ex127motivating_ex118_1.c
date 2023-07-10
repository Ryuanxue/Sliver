#include "_costom_header_.h"
#include "_slice_header_.h"
extern char *sensitive_data;/* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:5:6 */
void motivating_ex127motivating_ex118_1(char *__src__secret, char **_main_argv_0, int auth_return_, void (*opsink)(char *sensitive_data))
{
  {
    if (!strcmp(_main_argv_0[1], "passwd")) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:26:2*/
    {
      op(copy, __src__secret);  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:27:3 */
      auth_return_ = 1;  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:28:3 */
      goto auth_label_;
    }

    auth_return_ = 0;  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:30:2 */
    goto auth_label_;
    auth_label_:
    {
      ;
    }

  }
  int _main_auth_ret_0 = auth(_main_argv_0[1]);  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:36:6 */
  if (_main_auth_ret_0) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:37:2*/
  {
    dummy();  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:38:3 */
    {
      {
        opsink(sensitive_data);
        sink_mtd_label_:
        {
          ;
        }

      }
      pass_label_:
      {
        ;
      }

    }
  }
  else
  {
    fail();  /* /home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code/motivating_ex1.c:41:3 */
  }

  main_label_:
  {
    ;
  }

}

