#include "_costom_header_.h"
#include "_slice_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_0184CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01113_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0))
{
  int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:47:9 */
  _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0 = -1;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:49:5 */
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_recvResult_0;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:55:13 */
    struct sockaddr_in _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:56:28 */
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0 = -1;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:57:13 */
    do /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:59:9*/
    {
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0 = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:69:13 */
      if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0 == (-1)) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:70:13*/
      {
        break;  /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:72:17*/
      }

      memset(&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0, 0, sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0));  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:74:13 */
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0.sin_family = AF_INET;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:75:13 */
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0.sin_addr.s_addr = inet_addr("127.0.0.1");  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:76:13 */
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0.sin_port = htons(27015);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:77:13 */
      if (connect(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0, (struct sockaddr *) (&_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0), sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_service_0)) == (-1)) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:78:13*/
      {
        break;  /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:80:17*/
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_recvResult_0 = recv(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0, _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0, ((3 * (sizeof(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0))) + 2) - 1, 0);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:84:13 */
      if ((_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_recvResult_0 == (-1)) || (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_recvResult_0 == 0)) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:85:13*/
      {
        break;  /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:87:17*/
      }

      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_recvResult_0] = '\0';  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:90:13 */
      _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0 = atoi(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:92:13 */
    }
    while (0); /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:59:9*/

    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0 != (-1)) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:95:9*/
    {
      close(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_connectSocket_0);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:97:13 */
    }

  }
  {
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_i_0;  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:107:13 */
    int _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_buffer_0[10] = {0};  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:108:13 */
    if (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0 >= 0) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:111:9*/
    {
      opsink(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_data_0);
      for (_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_i_0 = 0; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_i_0 < 10; _CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_i_0++) /*/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:115:13*/
      {
        printIntLine(_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_buffer_0[_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_i_0]);  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:117:17 */
      }

    }
    else
    {
      printLine("ERROR: Array index is negative.");  /* +/home/raoxue/Desktop/My_sliver/Sliver/workspace/000_062_516/source_code/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c:122:13 */
    }

  }
  CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_label_:
  {
    ;
  }

}

