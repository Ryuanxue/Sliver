#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_connect_socket_1493CWE606_Unchecked_Loop_Condition__char_connect_socket_14133_1(char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_14_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_connect_socket_14_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14192CWE606_Unchecked_Loop_Condition__char_connect_socket_14239_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14192CWE606_Unchecked_Loop_Condition__char_connect_socket_14373_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14192CWE606_Unchecked_Loop_Condition__char_connect_socket_14403_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14373_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14403_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0));

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
 