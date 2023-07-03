#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1(char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18231_1(char *_goodB2G_data_0, void (*opsink)(int _goodB2G_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2B_n_0));

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
 