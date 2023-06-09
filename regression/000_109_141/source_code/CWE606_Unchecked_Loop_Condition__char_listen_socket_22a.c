#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-22a.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: listen_socket Read data using a listen socket (server side)
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 22 Control flow: Flow controlled by value of a global variable. Sink functions are in a separate file from sources.
 *
 * */

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

#ifndef OMITBAD

/* The global variable below is used to drive control flow in the sink function */
int CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal = 0;


void CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    {
#ifdef _WIN32
        WSADATA wsaData;
        int wsaDataInit = 0;
#endif
        int recvResult;
        struct sockaddr_in service;
        char *replace;
        SOCKET listenSocket = INVALID_SOCKET;
        SOCKET acceptSocket = INVALID_SOCKET;
        size_t dataLen = strlen(data);
        do
        {
#ifdef _WIN32
            if (WSAStartup(MAKEWORD(2,2), &wsaData) != NO_ERROR)
            {
                break;
            }
            wsaDataInit = 1;
#endif
            /* POTENTIAL FLAW: Read data using a listen socket */
            listenSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
            if (listenSocket == INVALID_SOCKET)
            {
                break;
            }
            memset(&service, 0, sizeof(service));
            service.sin_family = AF_INET;
            service.sin_addr.s_addr = INADDR_ANY;
            service.sin_port = htons(TCP_PORT);
            if (bind(listenSocket, (struct sockaddr*)&service, sizeof(service)) == SOCKET_ERROR)
            {
                break;
            }
            if (listen(listenSocket, LISTEN_BACKLOG) == SOCKET_ERROR)
            {
                break;
            }
            acceptSocket = accept(listenSocket, NULL, NULL);
            if (acceptSocket == SOCKET_ERROR)
            {
                break;
            }
            /* Abort on error or the connection was closed */
            recvResult = recv(acceptSocket, (char *)(data + dataLen), sizeof(char) * (100 - dataLen - 1), 0);//SLIVER_SOURCE
            if (recvResult == SOCKET_ERROR || recvResult == 0)
            {
                break;
            }
            /* Append null terminator */
            data[dataLen + recvResult / sizeof(char)] = '\0';
            /* Eliminate CRLF */
            replace = strchr(data, '\r');
            if (replace)
            {
                *replace = '\0';
            }
            replace = strchr(data, '\n');
            if (replace)
            {
                *replace = '\0';
            }
        }
        while (0);
        if (listenSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(listenSocket);
        }
        if (acceptSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(acceptSocket);
        }
#ifdef _WIN32
        if (wsaDataInit)
        {
            WSACleanup();
        }
#endif
    }
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink(data);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* The global variables below are used to drive control flow in the sink functions. */
int CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global = 0;
int CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global = 0;
int CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal = 0;

/* goodB2G1() - use badsource and goodsink by setting the  variable to false instead of true */

void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    {
#ifdef _WIN32
        WSADATA wsaData;
        int wsaDataInit = 0;
#endif
        int recvResult;
        struct sockaddr_in service;
        char *replace;
        SOCKET listenSocket = INVALID_SOCKET;
        SOCKET acceptSocket = INVALID_SOCKET;
        size_t dataLen = strlen(data);
        do
        {
#ifdef _WIN32
            if (WSAStartup(MAKEWORD(2,2), &wsaData) != NO_ERROR)
            {
                break;
            }
            wsaDataInit = 1;
#endif
            /* POTENTIAL FLAW: Read data using a listen socket */
            listenSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
            if (listenSocket == INVALID_SOCKET)
            {
                break;
            }
            memset(&service, 0, sizeof(service));
            service.sin_family = AF_INET;
            service.sin_addr.s_addr = INADDR_ANY;
            service.sin_port = htons(TCP_PORT);
            if (bind(listenSocket, (struct sockaddr*)&service, sizeof(service)) == SOCKET_ERROR)
            {
                break;
            }
            if (listen(listenSocket, LISTEN_BACKLOG) == SOCKET_ERROR)
            {
                break;
            }
            acceptSocket = accept(listenSocket, NULL, NULL);
            if (acceptSocket == SOCKET_ERROR)
            {
                break;
            }
            /* Abort on error or the connection was closed */
            recvResult = recv(acceptSocket, (char *)(data + dataLen), sizeof(char) * (100 - dataLen - 1), 0);//SLIVER_SOURCE
            if (recvResult == SOCKET_ERROR || recvResult == 0)
            {
                break;
            }
            /* Append null terminator */
            data[dataLen + recvResult / sizeof(char)] = '\0';
            /* Eliminate CRLF */
            replace = strchr(data, '\r');
            if (replace)
            {
                *replace = '\0';
            }
            replace = strchr(data, '\n');
            if (replace)
            {
                *replace = '\0';
            }
        }
        while (0);
        if (listenSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(listenSocket);
        }
        if (acceptSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(acceptSocket);
        }
#ifdef _WIN32
        if (wsaDataInit)
        {
            WSACleanup();
        }
#endif
    }
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global = 0; /* false */
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink(data);
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the if in the sink function */

void goodB2G2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    {
#ifdef _WIN32
        WSADATA wsaData;
        int wsaDataInit = 0;
#endif
        int recvResult;
        struct sockaddr_in service;
        char *replace;
        SOCKET listenSocket = INVALID_SOCKET;
        SOCKET acceptSocket = INVALID_SOCKET;
        size_t dataLen = strlen(data);
        do
        {
#ifdef _WIN32
            if (WSAStartup(MAKEWORD(2,2), &wsaData) != NO_ERROR)
            {
                break;
            }
            wsaDataInit = 1;
#endif
            /* POTENTIAL FLAW: Read data using a listen socket */
            listenSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
            if (listenSocket == INVALID_SOCKET)
            {
                break;
            }
            memset(&service, 0, sizeof(service));
            service.sin_family = AF_INET;
            service.sin_addr.s_addr = INADDR_ANY;
            service.sin_port = htons(TCP_PORT);
            if (bind(listenSocket, (struct sockaddr*)&service, sizeof(service)) == SOCKET_ERROR)
            {
                break;
            }
            if (listen(listenSocket, LISTEN_BACKLOG) == SOCKET_ERROR)
            {
                break;
            }
            acceptSocket = accept(listenSocket, NULL, NULL);
            if (acceptSocket == SOCKET_ERROR)
            {
                break;
            }
            /* Abort on error or the connection was closed */
            recvResult = recv(acceptSocket, (char *)(data + dataLen), sizeof(char) * (100 - dataLen - 1), 0);//SLIVER_SOURCE
            if (recvResult == SOCKET_ERROR || recvResult == 0)
            {
                break;
            }
            /* Append null terminator */
            data[dataLen + recvResult / sizeof(char)] = '\0';
            /* Eliminate CRLF */
            replace = strchr(data, '\r');
            if (replace)
            {
                *replace = '\0';
            }
            replace = strchr(data, '\n');
            if (replace)
            {
                *replace = '\0';
            }
        }
        while (0);
        if (listenSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(listenSocket);
        }
        if (acceptSocket != INVALID_SOCKET)
        {
            CLOSE_SOCKET(acceptSocket);
        }
#ifdef _WIN32
        if (wsaDataInit)
        {
            WSACleanup();
        }
#endif
    }
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(data);
}

/* goodG2B() - use goodsource and badsink */

void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Set data to a number less than MAX_LOOP */
    strcpy(data, "15");
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink(data);
}

void CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good()
{
    goodB2G1();
    goodB2G2();
    goodG2B();
}

#endif /* OMITGOOD */

/* Below is the main(). It is only used when building this testcase on
   its own for testing or for building a binary to use in testing binary
   analysis tools. It is not used when compiling all the testcases as one
   application, which is how source code analysis tools are tested. */

#ifdef INCLUDEMAIN

int main(int argc, char * argv[])
{
    /* seed randomness */
    srand( (unsigned)time(NULL) );
#ifndef OMITGOOD
    printLine("Calling good()...");
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:103--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:41 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:103--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:79 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:103--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:104 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:103--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:127 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:203--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:41 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:203--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:79 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:203--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:104 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:203--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:127 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:294--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:41 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:294--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:79 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:294--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:104 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c:294--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c:127 NO
