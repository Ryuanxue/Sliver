#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#include <winsock2.h>
#include <windows.h>
#include <direct.h>
#pragma comment(lib, "ws2_32") /* include ws2_32.lib when linking */
#define CLOSE_SOCKET closesocket
#else
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#define INVALID_SOCKET -1
#define SOCKET_ERROR -1
#define CLOSE_SOCKET close
#define SOCKET int
#endif
#define TCP_PORT 27015
#define LISTEN_BACKLOG 5
void CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink(char * dataArray[]);
void CWE606_Unchecked_Loop_Condition__char_listen_socket_66_bad();
void CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink(char * dataArray[]);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink(char * dataArray[]);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_listen_socket_66_good();
#endif