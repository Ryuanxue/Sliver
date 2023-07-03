#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
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
#define CHAR_ARRAY_SIZE (3 * sizeof(data) + 2)
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink(int data);
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink(int data);
void goodB2G1();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(int data);
void goodB2G2();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink(int data);
void goodG2B();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good();
#endif