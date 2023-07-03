#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_listen_socket_68a105CWE606_Unchecked_Loop_Condition__char_listen_socket_68b62_1(char *_CWE606_Unchecked_Loop_Condition__char_listen_socket_68_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_listen_socket_68a212CWE606_Unchecked_Loop_Condition__char_listen_socket_68b108_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink_n_0));

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
 