import os
import sys
if __name__ == '__main__':
    #dic = "/home/raoxue/Documents/copy_openssl/ssl"
    dic=sys.argv[1]
    #dic ="/home/raoxue/Documents/toy_c"
    #dic="/home/raoxue/Documents/toy_for_slice"
    #dic="/home/raoxue/Documents/toy_recur"
    ##dic="/home/raoxue/Documents/const_empty_crypto_openssl_for_slice/copy_openssl/ssl"
    abspath = os.path.abspath(dic)
    dicpath = os.listdir(dic)
    os.system("cd "+dic+";rm *.dot")
    for file in dicpath:
        filename = os.path.basename(file)
        if filename.endswith(".ll"):
            if "_instrument" not in filename:
                #在abspath中查找‘/workspace’
                index = abspath.find("/workspace")
                newpath = abspath[:index]
                pass_so_dir=newpath+"/lib/libSliverUtilpass.so"
                print(pass_so_dir)
                command="cd "+dic+";opt -load libSliverUtilpass.so  -CFG "+filename
                os.system(command)

    # dot_path = "../../meta_data/cfg_dot"
    # os.system("cd ../../meta_data/cfg_dot;rm *.dot")
    dot_path=sys.argv[2]
    os.system("cd "+dot_path+";rm *.dot")
    dot_abs_path=os.path.abspath(dot_path)
    os.system("cd "+dic+";cp *.dot "+dot_abs_path)
