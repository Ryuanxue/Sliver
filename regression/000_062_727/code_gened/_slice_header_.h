#include "_costom_header_.h"
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b36_1(char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad_inputBuffer_0, void (*opsink)(int _CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad_data_0));
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a186CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b76_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodB2G1_data_0));
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a186CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1(char *_goodB2G1_inputBuffer_0, void (*opsink)(int _goodG2B_data_0));
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b102_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodB2G2_data_0));
void CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1(char *_goodB2G2_inputBuffer_0, void (*opsink)(int _goodG2B_data_0));

int __CPROVER_uninterpreted_socket(int domain, int type, int protocol);
int connect (int sockfd, struct sockaddr * serv_addr, int addrlen){return 1;}
int bind(int sockfd, const struct sockaddr *addr,socklen_t){return 1;}
int __CPROVER_uninterpreted_listen ( int sockfd,  int backlog );
int __CPROVER_uninterpreted_accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);
int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
ssize_t recv(int sockfd, void *buf, size_t len, int flags) {
    int ret;
    for(size_t i=0; i<ret; i++)
  {
    ((char *)buf)[i] = __VERIFIER_nondet_char();
  }
  return ret;
}
 