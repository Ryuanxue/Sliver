; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData = dso_local global i8* null, align 8, !dbg !68
@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData = dso_local global i8* null, align 8, !dbg !70
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !72
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !97
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !99
@globalTrue = dso_local global i32 1, align 4, !dbg !101
@globalFalse = dso_local global i32 0, align 4, !dbg !103
@globalFive = dso_local global i32 5, align 4, !dbg !105
@globalArgc = dso_local global i32 0, align 4, !dbg !107
@globalArgv = dso_local global i8** null, align 8, !dbg !109
@.str.8 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.12 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_bad() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !134, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %listenSocket, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 -1, i32* %acceptSocket, align 4, !dbg !156
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !157, metadata !DIExpression()), !dbg !161
  %1 = load i8*, i8** %data, align 8, !dbg !162
  %call = call i64 @strlen(i8* %1) #7, !dbg !163
  store i64 %call, i64* %dataLen, align 8, !dbg !161
  br label %do.body, !dbg !164

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !165
  store i32 %call1, i32* %listenSocket, align 4, !dbg !167
  %2 = load i32, i32* %listenSocket, align 4, !dbg !168
  %cmp = icmp eq i32 %2, -1, !dbg !170
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !172

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !174
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !175
  store i16 2, i16* %sin_family, align 4, !dbg !176
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !177
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !178
  store i32 0, i32* %s_addr, align 4, !dbg !179
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !180
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !181
  store i16 %call2, i16* %sin_port, align 2, !dbg !182
  %4 = load i32, i32* %listenSocket, align 4, !dbg !183
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !185
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !186
  %cmp4 = icmp eq i32 %call3, -1, !dbg !187
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !188

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !189

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !191
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !193
  %cmp8 = icmp eq i32 %call7, -1, !dbg !194
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !195

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !196

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !198
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !199
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !200
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !201
  %cmp12 = icmp eq i32 %8, -1, !dbg !203
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !204

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !205

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !207
  %10 = load i8*, i8** %data, align 8, !dbg !208
  %11 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !210
  %12 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub = sub i64 100, %12, !dbg !212
  %sub15 = sub i64 %sub, 1, !dbg !213
  %mul = mul i64 1, %sub15, !dbg !214
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !215
  %conv = trunc i64 %call16 to i32, !dbg !215
  store i32 %conv, i32* %recvResult, align 4, !dbg !216
  %13 = load i32, i32* %recvResult, align 4, !dbg !217
  %cmp17 = icmp eq i32 %13, -1, !dbg !219
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !220

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !221
  %cmp19 = icmp eq i32 %14, 0, !dbg !222
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !223

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !224

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !226
  %16 = load i64, i64* %dataLen, align 8, !dbg !227
  %17 = load i32, i32* %recvResult, align 4, !dbg !228
  %conv23 = sext i32 %17 to i64, !dbg !228
  %div = udiv i64 %conv23, 1, !dbg !229
  %add = add i64 %16, %div, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !226
  store i8 0, i8* %arrayidx, align 1, !dbg !231
  %18 = load i8*, i8** %data, align 8, !dbg !232
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !233
  store i8* %call24, i8** %replace, align 8, !dbg !234
  %19 = load i8*, i8** %replace, align 8, !dbg !235
  %tobool = icmp ne i8* %19, null, !dbg !235
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !237

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !238
  store i8 0, i8* %20, align 1, !dbg !240
  br label %if.end26, !dbg !241

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !242
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !243
  store i8* %call27, i8** %replace, align 8, !dbg !244
  %22 = load i8*, i8** %replace, align 8, !dbg !245
  %tobool28 = icmp ne i8* %22, null, !dbg !245
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !247

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !248
  store i8 0, i8* %23, align 1, !dbg !250
  br label %if.end30, !dbg !251

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !252

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !253
  %cmp31 = icmp ne i32 %24, -1, !dbg !255
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !256

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !257
  %call34 = call i32 @close(i32 %25), !dbg !259
  br label %if.end35, !dbg !260

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !261
  %cmp36 = icmp ne i32 %26, -1, !dbg !263
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !264

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !265
  %call39 = call i32 @close(i32 %27), !dbg !267
  br label %if.end40, !dbg !268

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !269
  store i8* %28, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData, align 8, !dbg !270
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink to void (...)*)(), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #4

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !273 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !277
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !277
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !278
  store i8* %arraydecay, i8** %data, align 8, !dbg !279
  %1 = load i8*, i8** %data, align 8, !dbg !280
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !281
  %2 = load i8*, i8** %data, align 8, !dbg !282
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData, align 8, !dbg !283
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodG2BSink to void (...)*)(), !dbg !284
  ret void, !dbg !285
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !286 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !290
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !290
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !291
  store i8* %arraydecay, i8** %data, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 -1, i32* %listenSocket, align 4, !dbg !301
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 -1, i32* %acceptSocket, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !304, metadata !DIExpression()), !dbg !305
  %1 = load i8*, i8** %data, align 8, !dbg !306
  %call = call i64 @strlen(i8* %1) #7, !dbg !307
  store i64 %call, i64* %dataLen, align 8, !dbg !305
  br label %do.body, !dbg !308

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !309
  store i32 %call1, i32* %listenSocket, align 4, !dbg !311
  %2 = load i32, i32* %listenSocket, align 4, !dbg !312
  %cmp = icmp eq i32 %2, -1, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !316

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !318
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !318
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !319
  store i16 2, i16* %sin_family, align 4, !dbg !320
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !321
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !322
  store i32 0, i32* %s_addr, align 4, !dbg !323
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !324
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !325
  store i16 %call2, i16* %sin_port, align 2, !dbg !326
  %4 = load i32, i32* %listenSocket, align 4, !dbg !327
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !329
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !330
  %cmp4 = icmp eq i32 %call3, -1, !dbg !331
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !332

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !333

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !335
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !337
  %cmp8 = icmp eq i32 %call7, -1, !dbg !338
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !339

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !340

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !342
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !343
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !344
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !345
  %cmp12 = icmp eq i32 %8, -1, !dbg !347
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !348

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !349

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !351
  %10 = load i8*, i8** %data, align 8, !dbg !352
  %11 = load i64, i64* %dataLen, align 8, !dbg !353
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !354
  %12 = load i64, i64* %dataLen, align 8, !dbg !355
  %sub = sub i64 100, %12, !dbg !356
  %sub15 = sub i64 %sub, 1, !dbg !357
  %mul = mul i64 1, %sub15, !dbg !358
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !359
  %conv = trunc i64 %call16 to i32, !dbg !359
  store i32 %conv, i32* %recvResult, align 4, !dbg !360
  %13 = load i32, i32* %recvResult, align 4, !dbg !361
  %cmp17 = icmp eq i32 %13, -1, !dbg !363
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !364

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !365
  %cmp19 = icmp eq i32 %14, 0, !dbg !366
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !367

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !368

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !370
  %16 = load i64, i64* %dataLen, align 8, !dbg !371
  %17 = load i32, i32* %recvResult, align 4, !dbg !372
  %conv23 = sext i32 %17 to i64, !dbg !372
  %div = udiv i64 %conv23, 1, !dbg !373
  %add = add i64 %16, %div, !dbg !374
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !370
  store i8 0, i8* %arrayidx, align 1, !dbg !375
  %18 = load i8*, i8** %data, align 8, !dbg !376
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !377
  store i8* %call24, i8** %replace, align 8, !dbg !378
  %19 = load i8*, i8** %replace, align 8, !dbg !379
  %tobool = icmp ne i8* %19, null, !dbg !379
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !381

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !382
  store i8 0, i8* %20, align 1, !dbg !384
  br label %if.end26, !dbg !385

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !386
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !387
  store i8* %call27, i8** %replace, align 8, !dbg !388
  %22 = load i8*, i8** %replace, align 8, !dbg !389
  %tobool28 = icmp ne i8* %22, null, !dbg !389
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !391

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !392
  store i8 0, i8* %23, align 1, !dbg !394
  br label %if.end30, !dbg !395

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !396

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !397
  %cmp31 = icmp ne i32 %24, -1, !dbg !399
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !400

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !401
  %call34 = call i32 @close(i32 %25), !dbg !403
  br label %if.end35, !dbg !404

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !405
  %cmp36 = icmp ne i32 %26, -1, !dbg !407
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !408

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !409
  %call39 = call i32 @close(i32 %27), !dbg !411
  br label %if.end40, !dbg !412

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !413
  store i8* %28, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData, align 8, !dbg !414
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink to void (...)*)(), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_good() #0 !dbg !417 {
entry:
  call void @goodG2B(), !dbg !418
  call void @goodB2G(), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink() #0 !dbg !421 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData, align 8, !dbg !424
  store i8* %0, i8** %data, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata i32* %i, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %n, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !430, metadata !DIExpression()), !dbg !431
  %1 = load i8*, i8** %data, align 8, !dbg !432
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !434
  %cmp = icmp eq i32 %call, 1, !dbg !435
  br i1 %cmp, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !437
  store i32 0, i32* %i, align 4, !dbg !439
  br label %for.cond, !dbg !441

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !442
  %3 = load i32, i32* %n, align 4, !dbg !444
  %cmp1 = icmp slt i32 %2, %3, !dbg !445
  br i1 %cmp1, label %for.body, label %for.end, !dbg !446

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !447
  %inc = add nsw i32 %4, 1, !dbg !447
  store i32 %inc, i32* %intVariable, align 4, !dbg !447
  br label %for.inc, !dbg !449

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !450
  %inc2 = add nsw i32 %5, 1, !dbg !450
  store i32 %inc2, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !451, !llvm.loop !452

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !455
  call void @printIntLine(i32 %6), !dbg !456
  br label %if.end, !dbg !457

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !458
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodG2BSink() #0 !dbg !459 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData, align 8, !dbg !462
  store i8* %0, i8** %data, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i32* %i, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata i32* %n, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !468, metadata !DIExpression()), !dbg !469
  %1 = load i8*, i8** %data, align 8, !dbg !470
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !472
  %cmp = icmp eq i32 %call, 1, !dbg !473
  br i1 %cmp, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !475
  store i32 0, i32* %i, align 4, !dbg !477
  br label %for.cond, !dbg !479

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !480
  %3 = load i32, i32* %n, align 4, !dbg !482
  %cmp1 = icmp slt i32 %2, %3, !dbg !483
  br i1 %cmp1, label %for.body, label %for.end, !dbg !484

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !485
  %inc = add nsw i32 %4, 1, !dbg !485
  store i32 %inc, i32* %intVariable, align 4, !dbg !485
  br label %for.inc, !dbg !487

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !488
  %inc2 = add nsw i32 %5, 1, !dbg !488
  store i32 %inc2, i32* %i, align 4, !dbg !488
  br label %for.cond, !dbg !489, !llvm.loop !490

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !492
  call void @printIntLine(i32 %6), !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink() #0 !dbg !496 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData, align 8, !dbg !499
  store i8* %0, i8** %data, align 8, !dbg !498
  call void @llvm.dbg.declare(metadata i32* %i, metadata !500, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata i32* %n, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !505, metadata !DIExpression()), !dbg !506
  %1 = load i8*, i8** %data, align 8, !dbg !507
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !509
  %cmp = icmp eq i32 %call, 1, !dbg !510
  br i1 %cmp, label %if.then, label %if.end5, !dbg !511

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !512
  %cmp1 = icmp slt i32 %2, 10000, !dbg !515
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !516

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !517
  store i32 0, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !521

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !522
  %4 = load i32, i32* %n, align 4, !dbg !524
  %cmp3 = icmp slt i32 %3, %4, !dbg !525
  br i1 %cmp3, label %for.body, label %for.end, !dbg !526

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !527
  %inc = add nsw i32 %5, 1, !dbg !527
  store i32 %inc, i32* %intVariable, align 4, !dbg !527
  br label %for.inc, !dbg !529

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !530
  %inc4 = add nsw i32 %6, 1, !dbg !530
  store i32 %inc4, i32* %i, align 4, !dbg !530
  br label %for.cond, !dbg !531, !llvm.loop !532

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !534
  call void @printIntLine(i32 %7), !dbg !535
  br label %if.end, !dbg !536

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !537

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !539 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !544
  %0 = load i8*, i8** %line.addr, align 8, !dbg !545
  %cmp = icmp ne i8* %0, null, !dbg !547
  br i1 %cmp, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !549
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !551
  br label %if.end, !dbg !552

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !553
  ret void, !dbg !554
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !555 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load i8*, i8** %line.addr, align 8, !dbg !558
  %cmp = icmp ne i8* %0, null, !dbg !560
  br i1 %cmp, label %if.then, label %if.end, !dbg !561

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !562
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !564
  br label %if.end, !dbg !565

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !567 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i32*, i32** %line.addr, align 8, !dbg !574
  %cmp = icmp ne i32* %0, null, !dbg !576
  br i1 %cmp, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !578
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !580
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !582
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !583 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !588
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !591 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !597
  %conv = sext i16 %0 to i32, !dbg !597
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !600 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !606
  %conv = fpext float %0 to double, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !609 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !618 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !624, metadata !DIExpression()), !dbg !625
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !626
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !627
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !629 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !634
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !637 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !642
  %conv = sext i8 %0 to i32, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !645 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !650, metadata !DIExpression()), !dbg !654
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !655
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !656
  store i32 %0, i32* %arrayidx, align 4, !dbg !657
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !658
  store i32 0, i32* %arrayidx1, align 4, !dbg !659
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !660
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !663 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !666, metadata !DIExpression()), !dbg !667
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !668
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !669
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !671 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !674, metadata !DIExpression()), !dbg !675
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !676
  %conv = zext i8 %0 to i32, !dbg !676
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !677
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !679 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !683, metadata !DIExpression()), !dbg !684
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !685
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !686
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !688 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !700
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !701
  %1 = load i32, i32* %intOne, align 4, !dbg !701
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !702
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !703
  %3 = load i32, i32* %intTwo, align 4, !dbg !703
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !704
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !706 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !710, metadata !DIExpression()), !dbg !711
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !712, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.declare(metadata i64* %i, metadata !714, metadata !DIExpression()), !dbg !715
  store i64 0, i64* %i, align 8, !dbg !716
  br label %for.cond, !dbg !718

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !719
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !721
  %cmp = icmp ult i64 %0, %1, !dbg !722
  br i1 %cmp, label %for.body, label %for.end, !dbg !723

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !724
  %3 = load i64, i64* %i, align 8, !dbg !726
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !724
  %4 = load i8, i8* %arrayidx, align 1, !dbg !724
  %conv = zext i8 %4 to i32, !dbg !724
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !727
  br label %for.inc, !dbg !728

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !729
  %inc = add i64 %5, 1, !dbg !729
  store i64 %inc, i64* %i, align 8, !dbg !729
  br label %for.cond, !dbg !730, !llvm.loop !731

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !733
  ret void, !dbg !734
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !735 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !738, metadata !DIExpression()), !dbg !739
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !744, metadata !DIExpression()), !dbg !745
  store i64 0, i64* %numWritten, align 8, !dbg !745
  br label %while.cond, !dbg !746

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !747
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !748
  %cmp = icmp ult i64 %0, %1, !dbg !749
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !750

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !751
  %2 = load i16*, i16** %call, align 8, !dbg !751
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !751
  %4 = load i64, i64* %numWritten, align 8, !dbg !751
  %mul = mul i64 2, %4, !dbg !751
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !751
  %5 = load i8, i8* %arrayidx, align 1, !dbg !751
  %conv = sext i8 %5 to i32, !dbg !751
  %idxprom = sext i32 %conv to i64, !dbg !751
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !751
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !751
  %conv2 = zext i16 %6 to i32, !dbg !751
  %and = and i32 %conv2, 4096, !dbg !751
  %tobool = icmp ne i32 %and, 0, !dbg !751
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !752

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !753
  %7 = load i16*, i16** %call3, align 8, !dbg !753
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !753
  %9 = load i64, i64* %numWritten, align 8, !dbg !753
  %mul4 = mul i64 2, %9, !dbg !753
  %add = add i64 %mul4, 1, !dbg !753
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !753
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !753
  %conv6 = sext i8 %10 to i32, !dbg !753
  %idxprom7 = sext i32 %conv6 to i64, !dbg !753
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !753
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !753
  %conv9 = zext i16 %11 to i32, !dbg !753
  %and10 = and i32 %conv9, 4096, !dbg !753
  %tobool11 = icmp ne i32 %and10, 0, !dbg !752
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !754
  br i1 %12, label %while.body, label %while.end, !dbg !746

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !755, metadata !DIExpression()), !dbg !757
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !758
  %14 = load i64, i64* %numWritten, align 8, !dbg !759
  %mul12 = mul i64 2, %14, !dbg !760
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !758
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !761
  %15 = load i32, i32* %byte, align 4, !dbg !762
  %conv15 = trunc i32 %15 to i8, !dbg !763
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !764
  %17 = load i64, i64* %numWritten, align 8, !dbg !765
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !764
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !766
  %18 = load i64, i64* %numWritten, align 8, !dbg !767
  %inc = add i64 %18, 1, !dbg !767
  store i64 %inc, i64* %numWritten, align 8, !dbg !767
  br label %while.cond, !dbg !746, !llvm.loop !768

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !770
  ret i64 %19, !dbg !771
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !772 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !775, metadata !DIExpression()), !dbg !776
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !777, metadata !DIExpression()), !dbg !778
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !781, metadata !DIExpression()), !dbg !782
  store i64 0, i64* %numWritten, align 8, !dbg !782
  br label %while.cond, !dbg !783

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !784
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !785
  %cmp = icmp ult i64 %0, %1, !dbg !786
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !787

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !788
  %3 = load i64, i64* %numWritten, align 8, !dbg !789
  %mul = mul i64 2, %3, !dbg !790
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !788
  %4 = load i32, i32* %arrayidx, align 4, !dbg !788
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !791
  %tobool = icmp ne i32 %call, 0, !dbg !791
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !792

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !793
  %6 = load i64, i64* %numWritten, align 8, !dbg !794
  %mul1 = mul i64 2, %6, !dbg !795
  %add = add i64 %mul1, 1, !dbg !796
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !793
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !793
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !797
  %tobool4 = icmp ne i32 %call3, 0, !dbg !792
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !798
  br i1 %8, label %while.body, label %while.end, !dbg !783

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !799, metadata !DIExpression()), !dbg !801
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !802
  %10 = load i64, i64* %numWritten, align 8, !dbg !803
  %mul5 = mul i64 2, %10, !dbg !804
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !802
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !805
  %11 = load i32, i32* %byte, align 4, !dbg !806
  %conv = trunc i32 %11 to i8, !dbg !807
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !808
  %13 = load i64, i64* %numWritten, align 8, !dbg !809
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !808
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !810
  %14 = load i64, i64* %numWritten, align 8, !dbg !811
  %inc = add i64 %14, 1, !dbg !811
  store i64 %inc, i64* %numWritten, align 8, !dbg !811
  br label %while.cond, !dbg !783, !llvm.loop !812

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !814
  ret i64 %15, !dbg !815
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !816 {
entry:
  ret i32 1, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !820 {
entry:
  ret i32 0, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !822 {
entry:
  %call = call i32 @rand() #8, !dbg !823
  %rem = srem i32 %call, 2, !dbg !824
  ret i32 %rem, !dbg !825
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !834 {
entry:
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !836 {
entry:
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !838 {
entry:
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !840 {
entry:
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !850 {
entry:
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !852 {
entry:
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !854 {
entry:
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !856 {
entry:
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !858 {
entry:
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !860 {
entry:
  ret void, !dbg !861
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !112, !74}
!llvm.ident = !{!115, !115, !115}
!llvm.module.flags = !{!116, !117, !118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData", scope: !2, file: !3, line: 48, type: !66, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_162/source_code")
!4 = !{!5, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 40, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!21 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!45 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!46 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!47 = !{!48, !53, !66}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !55, line: 178, size: 128, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!56 = !{!57, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !54, file: !55, line: 180, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !59, line: 28, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !54, file: !55, line: 181, baseType: !62, size: 112, offset: 16)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 112, elements: !64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !{!65}
!65 = !DISubrange(count: 14)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!67 = !{!0, !68, !70}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData", scope: !2, file: !3, line: 49, type: !66, isLocal: false, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData", scope: !2, file: !3, line: 50, type: !66, isLocal: false, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !74, file: !75, line: 174, type: !94, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !92, globals: !96, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_162/source_code")
!76 = !{!77}
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 46, baseType: !7, size: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!92 = !{!93, !94, !60, !95}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!72, !97, !99, !101, !103, !105, !107, !109}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !74, file: !75, line: 175, type: !94, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !74, file: !75, line: 176, type: !94, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "globalTrue", scope: !74, file: !75, line: 181, type: !94, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "globalFalse", scope: !74, file: !75, line: 182, type: !94, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "globalFive", scope: !74, file: !75, line: 183, type: !94, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "globalArgc", scope: !74, file: !75, line: 214, type: !94, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "globalArgv", scope: !74, file: !75, line: 215, type: !111, isLocal: false, isDefinition: true)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_162/source_code")
!114 = !{}
!115 = !{!"clang version 12.0.0"}
!116 = !{i32 7, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_bad", scope: !3, file: !3, line: 56, type: !120, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DILocalVariable(name: "data", scope: !119, file: !3, line: 58, type: !66)
!123 = !DILocation(line: 58, column: 12, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !3, line: 59, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 800, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 100)
!128 = !DILocation(line: 59, column: 10, scope: !119)
!129 = !DILocation(line: 60, column: 12, scope: !119)
!130 = !DILocation(line: 60, column: 10, scope: !119)
!131 = !DILocalVariable(name: "recvResult", scope: !132, file: !3, line: 66, type: !94)
!132 = distinct !DILexicalBlock(scope: !119, file: !3, line: 61, column: 5)
!133 = !DILocation(line: 66, column: 13, scope: !132)
!134 = !DILocalVariable(name: "service", scope: !132, file: !3, line: 67, type: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !136)
!136 = !{!137, !138, !142, !146}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !135, file: !19, line: 240, baseType: !58, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !135, file: !19, line: 241, baseType: !139, size: 16, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !135, file: !19, line: 242, baseType: !143, size: 32, offset: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !143, file: !19, line: 33, baseType: !48, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !135, file: !19, line: 245, baseType: !147, size: 64, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DILocation(line: 67, column: 28, scope: !132)
!151 = !DILocalVariable(name: "replace", scope: !132, file: !3, line: 68, type: !66)
!152 = !DILocation(line: 68, column: 15, scope: !132)
!153 = !DILocalVariable(name: "listenSocket", scope: !132, file: !3, line: 69, type: !94)
!154 = !DILocation(line: 69, column: 16, scope: !132)
!155 = !DILocalVariable(name: "acceptSocket", scope: !132, file: !3, line: 70, type: !94)
!156 = !DILocation(line: 70, column: 16, scope: !132)
!157 = !DILocalVariable(name: "dataLen", scope: !132, file: !3, line: 71, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!160 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DILocation(line: 71, column: 16, scope: !132)
!162 = !DILocation(line: 71, column: 33, scope: !132)
!163 = !DILocation(line: 71, column: 26, scope: !132)
!164 = !DILocation(line: 72, column: 9, scope: !132)
!165 = !DILocation(line: 82, column: 28, scope: !166)
!166 = distinct !DILexicalBlock(scope: !132, file: !3, line: 73, column: 9)
!167 = !DILocation(line: 82, column: 26, scope: !166)
!168 = !DILocation(line: 83, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 83, column: 17)
!170 = !DILocation(line: 83, column: 30, scope: !169)
!171 = !DILocation(line: 83, column: 17, scope: !166)
!172 = !DILocation(line: 85, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !3, line: 84, column: 13)
!174 = !DILocation(line: 87, column: 13, scope: !166)
!175 = !DILocation(line: 88, column: 21, scope: !166)
!176 = !DILocation(line: 88, column: 32, scope: !166)
!177 = !DILocation(line: 89, column: 21, scope: !166)
!178 = !DILocation(line: 89, column: 30, scope: !166)
!179 = !DILocation(line: 89, column: 37, scope: !166)
!180 = !DILocation(line: 90, column: 32, scope: !166)
!181 = !DILocation(line: 90, column: 21, scope: !166)
!182 = !DILocation(line: 90, column: 30, scope: !166)
!183 = !DILocation(line: 91, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !166, file: !3, line: 91, column: 17)
!185 = !DILocation(line: 91, column: 36, scope: !184)
!186 = !DILocation(line: 91, column: 17, scope: !184)
!187 = !DILocation(line: 91, column: 81, scope: !184)
!188 = !DILocation(line: 91, column: 17, scope: !166)
!189 = !DILocation(line: 93, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !3, line: 92, column: 13)
!191 = !DILocation(line: 95, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !3, line: 95, column: 17)
!193 = !DILocation(line: 95, column: 17, scope: !192)
!194 = !DILocation(line: 95, column: 54, scope: !192)
!195 = !DILocation(line: 95, column: 17, scope: !166)
!196 = !DILocation(line: 97, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 96, column: 13)
!198 = !DILocation(line: 99, column: 35, scope: !166)
!199 = !DILocation(line: 99, column: 28, scope: !166)
!200 = !DILocation(line: 99, column: 26, scope: !166)
!201 = !DILocation(line: 100, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !166, file: !3, line: 100, column: 17)
!203 = !DILocation(line: 100, column: 30, scope: !202)
!204 = !DILocation(line: 100, column: 17, scope: !166)
!205 = !DILocation(line: 102, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 101, column: 13)
!207 = !DILocation(line: 105, column: 31, scope: !166)
!208 = !DILocation(line: 105, column: 54, scope: !166)
!209 = !DILocation(line: 105, column: 61, scope: !166)
!210 = !DILocation(line: 105, column: 59, scope: !166)
!211 = !DILocation(line: 105, column: 93, scope: !166)
!212 = !DILocation(line: 105, column: 91, scope: !166)
!213 = !DILocation(line: 105, column: 101, scope: !166)
!214 = !DILocation(line: 105, column: 84, scope: !166)
!215 = !DILocation(line: 105, column: 26, scope: !166)
!216 = !DILocation(line: 105, column: 24, scope: !166)
!217 = !DILocation(line: 106, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !166, file: !3, line: 106, column: 17)
!219 = !DILocation(line: 106, column: 28, scope: !218)
!220 = !DILocation(line: 106, column: 44, scope: !218)
!221 = !DILocation(line: 106, column: 47, scope: !218)
!222 = !DILocation(line: 106, column: 58, scope: !218)
!223 = !DILocation(line: 106, column: 17, scope: !166)
!224 = !DILocation(line: 108, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !3, line: 107, column: 13)
!226 = !DILocation(line: 111, column: 13, scope: !166)
!227 = !DILocation(line: 111, column: 18, scope: !166)
!228 = !DILocation(line: 111, column: 28, scope: !166)
!229 = !DILocation(line: 111, column: 39, scope: !166)
!230 = !DILocation(line: 111, column: 26, scope: !166)
!231 = !DILocation(line: 111, column: 55, scope: !166)
!232 = !DILocation(line: 113, column: 30, scope: !166)
!233 = !DILocation(line: 113, column: 23, scope: !166)
!234 = !DILocation(line: 113, column: 21, scope: !166)
!235 = !DILocation(line: 114, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !166, file: !3, line: 114, column: 17)
!237 = !DILocation(line: 114, column: 17, scope: !166)
!238 = !DILocation(line: 116, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 115, column: 13)
!240 = !DILocation(line: 116, column: 26, scope: !239)
!241 = !DILocation(line: 117, column: 13, scope: !239)
!242 = !DILocation(line: 118, column: 30, scope: !166)
!243 = !DILocation(line: 118, column: 23, scope: !166)
!244 = !DILocation(line: 118, column: 21, scope: !166)
!245 = !DILocation(line: 119, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !166, file: !3, line: 119, column: 17)
!247 = !DILocation(line: 119, column: 17, scope: !166)
!248 = !DILocation(line: 121, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 120, column: 13)
!250 = !DILocation(line: 121, column: 26, scope: !249)
!251 = !DILocation(line: 122, column: 13, scope: !249)
!252 = !DILocation(line: 123, column: 9, scope: !166)
!253 = !DILocation(line: 125, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !132, file: !3, line: 125, column: 13)
!255 = !DILocation(line: 125, column: 26, scope: !254)
!256 = !DILocation(line: 125, column: 13, scope: !132)
!257 = !DILocation(line: 127, column: 26, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 126, column: 9)
!259 = !DILocation(line: 127, column: 13, scope: !258)
!260 = !DILocation(line: 128, column: 9, scope: !258)
!261 = !DILocation(line: 129, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !132, file: !3, line: 129, column: 13)
!263 = !DILocation(line: 129, column: 26, scope: !262)
!264 = !DILocation(line: 129, column: 13, scope: !132)
!265 = !DILocation(line: 131, column: 26, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 130, column: 9)
!267 = !DILocation(line: 131, column: 13, scope: !266)
!268 = !DILocation(line: 132, column: 9, scope: !266)
!269 = !DILocation(line: 140, column: 70, scope: !119)
!270 = !DILocation(line: 140, column: 68, scope: !119)
!271 = !DILocation(line: 141, column: 5, scope: !119)
!272 = !DILocation(line: 142, column: 1, scope: !119)
!273 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 151, type: !120, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!274 = !DILocalVariable(name: "data", scope: !273, file: !3, line: 153, type: !66)
!275 = !DILocation(line: 153, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !3, line: 154, type: !125)
!277 = !DILocation(line: 154, column: 10, scope: !273)
!278 = !DILocation(line: 155, column: 12, scope: !273)
!279 = !DILocation(line: 155, column: 10, scope: !273)
!280 = !DILocation(line: 157, column: 12, scope: !273)
!281 = !DILocation(line: 157, column: 5, scope: !273)
!282 = !DILocation(line: 158, column: 74, scope: !273)
!283 = !DILocation(line: 158, column: 72, scope: !273)
!284 = !DILocation(line: 159, column: 5, scope: !273)
!285 = !DILocation(line: 160, column: 1, scope: !273)
!286 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 163, type: !120, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!287 = !DILocalVariable(name: "data", scope: !286, file: !3, line: 165, type: !66)
!288 = !DILocation(line: 165, column: 12, scope: !286)
!289 = !DILocalVariable(name: "dataBuffer", scope: !286, file: !3, line: 166, type: !125)
!290 = !DILocation(line: 166, column: 10, scope: !286)
!291 = !DILocation(line: 167, column: 12, scope: !286)
!292 = !DILocation(line: 167, column: 10, scope: !286)
!293 = !DILocalVariable(name: "recvResult", scope: !294, file: !3, line: 173, type: !94)
!294 = distinct !DILexicalBlock(scope: !286, file: !3, line: 168, column: 5)
!295 = !DILocation(line: 173, column: 13, scope: !294)
!296 = !DILocalVariable(name: "service", scope: !294, file: !3, line: 174, type: !135)
!297 = !DILocation(line: 174, column: 28, scope: !294)
!298 = !DILocalVariable(name: "replace", scope: !294, file: !3, line: 175, type: !66)
!299 = !DILocation(line: 175, column: 15, scope: !294)
!300 = !DILocalVariable(name: "listenSocket", scope: !294, file: !3, line: 176, type: !94)
!301 = !DILocation(line: 176, column: 16, scope: !294)
!302 = !DILocalVariable(name: "acceptSocket", scope: !294, file: !3, line: 177, type: !94)
!303 = !DILocation(line: 177, column: 16, scope: !294)
!304 = !DILocalVariable(name: "dataLen", scope: !294, file: !3, line: 178, type: !158)
!305 = !DILocation(line: 178, column: 16, scope: !294)
!306 = !DILocation(line: 178, column: 33, scope: !294)
!307 = !DILocation(line: 178, column: 26, scope: !294)
!308 = !DILocation(line: 179, column: 9, scope: !294)
!309 = !DILocation(line: 189, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !294, file: !3, line: 180, column: 9)
!311 = !DILocation(line: 189, column: 26, scope: !310)
!312 = !DILocation(line: 190, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 190, column: 17)
!314 = !DILocation(line: 190, column: 30, scope: !313)
!315 = !DILocation(line: 190, column: 17, scope: !310)
!316 = !DILocation(line: 192, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 191, column: 13)
!318 = !DILocation(line: 194, column: 13, scope: !310)
!319 = !DILocation(line: 195, column: 21, scope: !310)
!320 = !DILocation(line: 195, column: 32, scope: !310)
!321 = !DILocation(line: 196, column: 21, scope: !310)
!322 = !DILocation(line: 196, column: 30, scope: !310)
!323 = !DILocation(line: 196, column: 37, scope: !310)
!324 = !DILocation(line: 197, column: 32, scope: !310)
!325 = !DILocation(line: 197, column: 21, scope: !310)
!326 = !DILocation(line: 197, column: 30, scope: !310)
!327 = !DILocation(line: 198, column: 22, scope: !328)
!328 = distinct !DILexicalBlock(scope: !310, file: !3, line: 198, column: 17)
!329 = !DILocation(line: 198, column: 36, scope: !328)
!330 = !DILocation(line: 198, column: 17, scope: !328)
!331 = !DILocation(line: 198, column: 81, scope: !328)
!332 = !DILocation(line: 198, column: 17, scope: !310)
!333 = !DILocation(line: 200, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 199, column: 13)
!335 = !DILocation(line: 202, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !310, file: !3, line: 202, column: 17)
!337 = !DILocation(line: 202, column: 17, scope: !336)
!338 = !DILocation(line: 202, column: 54, scope: !336)
!339 = !DILocation(line: 202, column: 17, scope: !310)
!340 = !DILocation(line: 204, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 203, column: 13)
!342 = !DILocation(line: 206, column: 35, scope: !310)
!343 = !DILocation(line: 206, column: 28, scope: !310)
!344 = !DILocation(line: 206, column: 26, scope: !310)
!345 = !DILocation(line: 207, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !310, file: !3, line: 207, column: 17)
!347 = !DILocation(line: 207, column: 30, scope: !346)
!348 = !DILocation(line: 207, column: 17, scope: !310)
!349 = !DILocation(line: 209, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 208, column: 13)
!351 = !DILocation(line: 212, column: 31, scope: !310)
!352 = !DILocation(line: 212, column: 54, scope: !310)
!353 = !DILocation(line: 212, column: 61, scope: !310)
!354 = !DILocation(line: 212, column: 59, scope: !310)
!355 = !DILocation(line: 212, column: 93, scope: !310)
!356 = !DILocation(line: 212, column: 91, scope: !310)
!357 = !DILocation(line: 212, column: 101, scope: !310)
!358 = !DILocation(line: 212, column: 84, scope: !310)
!359 = !DILocation(line: 212, column: 26, scope: !310)
!360 = !DILocation(line: 212, column: 24, scope: !310)
!361 = !DILocation(line: 213, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !310, file: !3, line: 213, column: 17)
!363 = !DILocation(line: 213, column: 28, scope: !362)
!364 = !DILocation(line: 213, column: 44, scope: !362)
!365 = !DILocation(line: 213, column: 47, scope: !362)
!366 = !DILocation(line: 213, column: 58, scope: !362)
!367 = !DILocation(line: 213, column: 17, scope: !310)
!368 = !DILocation(line: 215, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 214, column: 13)
!370 = !DILocation(line: 218, column: 13, scope: !310)
!371 = !DILocation(line: 218, column: 18, scope: !310)
!372 = !DILocation(line: 218, column: 28, scope: !310)
!373 = !DILocation(line: 218, column: 39, scope: !310)
!374 = !DILocation(line: 218, column: 26, scope: !310)
!375 = !DILocation(line: 218, column: 55, scope: !310)
!376 = !DILocation(line: 220, column: 30, scope: !310)
!377 = !DILocation(line: 220, column: 23, scope: !310)
!378 = !DILocation(line: 220, column: 21, scope: !310)
!379 = !DILocation(line: 221, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !310, file: !3, line: 221, column: 17)
!381 = !DILocation(line: 221, column: 17, scope: !310)
!382 = !DILocation(line: 223, column: 18, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 222, column: 13)
!384 = !DILocation(line: 223, column: 26, scope: !383)
!385 = !DILocation(line: 224, column: 13, scope: !383)
!386 = !DILocation(line: 225, column: 30, scope: !310)
!387 = !DILocation(line: 225, column: 23, scope: !310)
!388 = !DILocation(line: 225, column: 21, scope: !310)
!389 = !DILocation(line: 226, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !310, file: !3, line: 226, column: 17)
!391 = !DILocation(line: 226, column: 17, scope: !310)
!392 = !DILocation(line: 228, column: 18, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 227, column: 13)
!394 = !DILocation(line: 228, column: 26, scope: !393)
!395 = !DILocation(line: 229, column: 13, scope: !393)
!396 = !DILocation(line: 230, column: 9, scope: !310)
!397 = !DILocation(line: 232, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !294, file: !3, line: 232, column: 13)
!399 = !DILocation(line: 232, column: 26, scope: !398)
!400 = !DILocation(line: 232, column: 13, scope: !294)
!401 = !DILocation(line: 234, column: 26, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 233, column: 9)
!403 = !DILocation(line: 234, column: 13, scope: !402)
!404 = !DILocation(line: 235, column: 9, scope: !402)
!405 = !DILocation(line: 236, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !294, file: !3, line: 236, column: 13)
!407 = !DILocation(line: 236, column: 26, scope: !406)
!408 = !DILocation(line: 236, column: 13, scope: !294)
!409 = !DILocation(line: 238, column: 26, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 237, column: 9)
!411 = !DILocation(line: 238, column: 13, scope: !410)
!412 = !DILocation(line: 239, column: 9, scope: !410)
!413 = !DILocation(line: 247, column: 74, scope: !286)
!414 = !DILocation(line: 247, column: 72, scope: !286)
!415 = !DILocation(line: 248, column: 5, scope: !286)
!416 = !DILocation(line: 249, column: 1, scope: !286)
!417 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_good", scope: !3, file: !3, line: 251, type: !120, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!418 = !DILocation(line: 253, column: 5, scope: !417)
!419 = !DILocation(line: 254, column: 5, scope: !417)
!420 = !DILocation(line: 255, column: 1, scope: !417)
!421 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink", scope: !113, file: !113, line: 53, type: !120, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!422 = !DILocalVariable(name: "data", scope: !421, file: !113, line: 55, type: !66)
!423 = !DILocation(line: 55, column: 12, scope: !421)
!424 = !DILocation(line: 55, column: 19, scope: !421)
!425 = !DILocalVariable(name: "i", scope: !426, file: !113, line: 57, type: !94)
!426 = distinct !DILexicalBlock(scope: !421, file: !113, line: 56, column: 5)
!427 = !DILocation(line: 57, column: 13, scope: !426)
!428 = !DILocalVariable(name: "n", scope: !426, file: !113, line: 57, type: !94)
!429 = !DILocation(line: 57, column: 16, scope: !426)
!430 = !DILocalVariable(name: "intVariable", scope: !426, file: !113, line: 57, type: !94)
!431 = !DILocation(line: 57, column: 19, scope: !426)
!432 = !DILocation(line: 58, column: 20, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !113, line: 58, column: 13)
!434 = !DILocation(line: 58, column: 13, scope: !433)
!435 = !DILocation(line: 58, column: 36, scope: !433)
!436 = !DILocation(line: 58, column: 13, scope: !426)
!437 = !DILocation(line: 61, column: 25, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !113, line: 59, column: 9)
!439 = !DILocation(line: 62, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !113, line: 62, column: 13)
!441 = !DILocation(line: 62, column: 18, scope: !440)
!442 = !DILocation(line: 62, column: 25, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !113, line: 62, column: 13)
!444 = !DILocation(line: 62, column: 29, scope: !443)
!445 = !DILocation(line: 62, column: 27, scope: !443)
!446 = !DILocation(line: 62, column: 13, scope: !440)
!447 = !DILocation(line: 65, column: 28, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !113, line: 63, column: 13)
!449 = !DILocation(line: 66, column: 13, scope: !448)
!450 = !DILocation(line: 62, column: 33, scope: !443)
!451 = !DILocation(line: 62, column: 13, scope: !443)
!452 = distinct !{!452, !446, !453, !454}
!453 = !DILocation(line: 66, column: 13, scope: !440)
!454 = !{!"llvm.loop.mustprogress"}
!455 = !DILocation(line: 67, column: 26, scope: !438)
!456 = !DILocation(line: 67, column: 13, scope: !438)
!457 = !DILocation(line: 68, column: 9, scope: !438)
!458 = !DILocation(line: 70, column: 1, scope: !421)
!459 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodG2BSink", scope: !113, file: !113, line: 77, type: !120, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!460 = !DILocalVariable(name: "data", scope: !459, file: !113, line: 79, type: !66)
!461 = !DILocation(line: 79, column: 12, scope: !459)
!462 = !DILocation(line: 79, column: 19, scope: !459)
!463 = !DILocalVariable(name: "i", scope: !464, file: !113, line: 81, type: !94)
!464 = distinct !DILexicalBlock(scope: !459, file: !113, line: 80, column: 5)
!465 = !DILocation(line: 81, column: 13, scope: !464)
!466 = !DILocalVariable(name: "n", scope: !464, file: !113, line: 81, type: !94)
!467 = !DILocation(line: 81, column: 16, scope: !464)
!468 = !DILocalVariable(name: "intVariable", scope: !464, file: !113, line: 81, type: !94)
!469 = !DILocation(line: 81, column: 19, scope: !464)
!470 = !DILocation(line: 82, column: 20, scope: !471)
!471 = distinct !DILexicalBlock(scope: !464, file: !113, line: 82, column: 13)
!472 = !DILocation(line: 82, column: 13, scope: !471)
!473 = !DILocation(line: 82, column: 36, scope: !471)
!474 = !DILocation(line: 82, column: 13, scope: !464)
!475 = !DILocation(line: 85, column: 25, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !113, line: 83, column: 9)
!477 = !DILocation(line: 86, column: 20, scope: !478)
!478 = distinct !DILexicalBlock(scope: !476, file: !113, line: 86, column: 13)
!479 = !DILocation(line: 86, column: 18, scope: !478)
!480 = !DILocation(line: 86, column: 25, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !113, line: 86, column: 13)
!482 = !DILocation(line: 86, column: 29, scope: !481)
!483 = !DILocation(line: 86, column: 27, scope: !481)
!484 = !DILocation(line: 86, column: 13, scope: !478)
!485 = !DILocation(line: 89, column: 28, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !113, line: 87, column: 13)
!487 = !DILocation(line: 90, column: 13, scope: !486)
!488 = !DILocation(line: 86, column: 33, scope: !481)
!489 = !DILocation(line: 86, column: 13, scope: !481)
!490 = distinct !{!490, !484, !491, !454}
!491 = !DILocation(line: 90, column: 13, scope: !478)
!492 = !DILocation(line: 91, column: 26, scope: !476)
!493 = !DILocation(line: 91, column: 13, scope: !476)
!494 = !DILocation(line: 92, column: 9, scope: !476)
!495 = !DILocation(line: 94, column: 1, scope: !459)
!496 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink", scope: !113, file: !113, line: 97, type: !120, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!497 = !DILocalVariable(name: "data", scope: !496, file: !113, line: 99, type: !66)
!498 = !DILocation(line: 99, column: 12, scope: !496)
!499 = !DILocation(line: 99, column: 19, scope: !496)
!500 = !DILocalVariable(name: "i", scope: !501, file: !113, line: 101, type: !94)
!501 = distinct !DILexicalBlock(scope: !496, file: !113, line: 100, column: 5)
!502 = !DILocation(line: 101, column: 13, scope: !501)
!503 = !DILocalVariable(name: "n", scope: !501, file: !113, line: 101, type: !94)
!504 = !DILocation(line: 101, column: 16, scope: !501)
!505 = !DILocalVariable(name: "intVariable", scope: !501, file: !113, line: 101, type: !94)
!506 = !DILocation(line: 101, column: 19, scope: !501)
!507 = !DILocation(line: 102, column: 20, scope: !508)
!508 = distinct !DILexicalBlock(scope: !501, file: !113, line: 102, column: 13)
!509 = !DILocation(line: 102, column: 13, scope: !508)
!510 = !DILocation(line: 102, column: 36, scope: !508)
!511 = !DILocation(line: 102, column: 13, scope: !501)
!512 = !DILocation(line: 105, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !113, line: 105, column: 17)
!514 = distinct !DILexicalBlock(scope: !508, file: !113, line: 103, column: 9)
!515 = !DILocation(line: 105, column: 19, scope: !513)
!516 = !DILocation(line: 105, column: 17, scope: !514)
!517 = !DILocation(line: 107, column: 29, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !113, line: 106, column: 13)
!519 = !DILocation(line: 108, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !113, line: 108, column: 17)
!521 = !DILocation(line: 108, column: 22, scope: !520)
!522 = !DILocation(line: 108, column: 29, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !113, line: 108, column: 17)
!524 = !DILocation(line: 108, column: 33, scope: !523)
!525 = !DILocation(line: 108, column: 31, scope: !523)
!526 = !DILocation(line: 108, column: 17, scope: !520)
!527 = !DILocation(line: 111, column: 32, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !113, line: 109, column: 17)
!529 = !DILocation(line: 112, column: 17, scope: !528)
!530 = !DILocation(line: 108, column: 37, scope: !523)
!531 = !DILocation(line: 108, column: 17, scope: !523)
!532 = distinct !{!532, !526, !533, !454}
!533 = !DILocation(line: 112, column: 17, scope: !520)
!534 = !DILocation(line: 113, column: 30, scope: !518)
!535 = !DILocation(line: 113, column: 17, scope: !518)
!536 = !DILocation(line: 114, column: 13, scope: !518)
!537 = !DILocation(line: 115, column: 9, scope: !514)
!538 = !DILocation(line: 117, column: 1, scope: !496)
!539 = distinct !DISubprogram(name: "printLine", scope: !75, file: !75, line: 11, type: !540, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !66}
!542 = !DILocalVariable(name: "line", arg: 1, scope: !539, file: !75, line: 11, type: !66)
!543 = !DILocation(line: 11, column: 25, scope: !539)
!544 = !DILocation(line: 13, column: 1, scope: !539)
!545 = !DILocation(line: 14, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !75, line: 14, column: 8)
!547 = !DILocation(line: 14, column: 13, scope: !546)
!548 = !DILocation(line: 14, column: 8, scope: !539)
!549 = !DILocation(line: 16, column: 24, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !75, line: 15, column: 5)
!551 = !DILocation(line: 16, column: 9, scope: !550)
!552 = !DILocation(line: 17, column: 5, scope: !550)
!553 = !DILocation(line: 18, column: 5, scope: !539)
!554 = !DILocation(line: 19, column: 1, scope: !539)
!555 = distinct !DISubprogram(name: "printSinkLine", scope: !75, file: !75, line: 20, type: !540, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!556 = !DILocalVariable(name: "line", arg: 1, scope: !555, file: !75, line: 20, type: !66)
!557 = !DILocation(line: 20, column: 29, scope: !555)
!558 = !DILocation(line: 22, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !75, line: 22, column: 8)
!560 = !DILocation(line: 22, column: 13, scope: !559)
!561 = !DILocation(line: 22, column: 8, scope: !555)
!562 = !DILocation(line: 24, column: 24, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !75, line: 23, column: 5)
!564 = !DILocation(line: 24, column: 9, scope: !563)
!565 = !DILocation(line: 25, column: 5, scope: !563)
!566 = !DILocation(line: 26, column: 1, scope: !555)
!567 = distinct !DISubprogram(name: "printWLine", scope: !75, file: !75, line: 27, type: !568, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !159, line: 74, baseType: !94)
!572 = !DILocalVariable(name: "line", arg: 1, scope: !567, file: !75, line: 27, type: !570)
!573 = !DILocation(line: 27, column: 29, scope: !567)
!574 = !DILocation(line: 29, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !567, file: !75, line: 29, column: 8)
!576 = !DILocation(line: 29, column: 13, scope: !575)
!577 = !DILocation(line: 29, column: 8, scope: !567)
!578 = !DILocation(line: 31, column: 27, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !75, line: 30, column: 5)
!580 = !DILocation(line: 31, column: 9, scope: !579)
!581 = !DILocation(line: 32, column: 5, scope: !579)
!582 = !DILocation(line: 33, column: 1, scope: !567)
!583 = distinct !DISubprogram(name: "printIntLine", scope: !75, file: !75, line: 35, type: !584, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !94}
!586 = !DILocalVariable(name: "intNumber", arg: 1, scope: !583, file: !75, line: 35, type: !94)
!587 = !DILocation(line: 35, column: 24, scope: !583)
!588 = !DILocation(line: 37, column: 20, scope: !583)
!589 = !DILocation(line: 37, column: 5, scope: !583)
!590 = !DILocation(line: 38, column: 1, scope: !583)
!591 = distinct !DISubprogram(name: "printShortLine", scope: !75, file: !75, line: 40, type: !592, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !594}
!594 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!595 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !591, file: !75, line: 40, type: !594)
!596 = !DILocation(line: 40, column: 28, scope: !591)
!597 = !DILocation(line: 42, column: 21, scope: !591)
!598 = !DILocation(line: 42, column: 5, scope: !591)
!599 = !DILocation(line: 43, column: 1, scope: !591)
!600 = distinct !DISubprogram(name: "printFloatLine", scope: !75, file: !75, line: 45, type: !601, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!604 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !600, file: !75, line: 45, type: !603)
!605 = !DILocation(line: 45, column: 28, scope: !600)
!606 = !DILocation(line: 47, column: 20, scope: !600)
!607 = !DILocation(line: 47, column: 5, scope: !600)
!608 = !DILocation(line: 48, column: 1, scope: !600)
!609 = distinct !DISubprogram(name: "printLongLine", scope: !75, file: !75, line: 50, type: !610, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612}
!612 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!613 = !DILocalVariable(name: "longNumber", arg: 1, scope: !609, file: !75, line: 50, type: !612)
!614 = !DILocation(line: 50, column: 26, scope: !609)
!615 = !DILocation(line: 52, column: 21, scope: !609)
!616 = !DILocation(line: 52, column: 5, scope: !609)
!617 = !DILocation(line: 53, column: 1, scope: !609)
!618 = distinct !DISubprogram(name: "printLongLongLine", scope: !75, file: !75, line: 55, type: !619, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !622, line: 27, baseType: !623)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !52, line: 44, baseType: !612)
!624 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !618, file: !75, line: 55, type: !621)
!625 = !DILocation(line: 55, column: 33, scope: !618)
!626 = !DILocation(line: 57, column: 29, scope: !618)
!627 = !DILocation(line: 57, column: 5, scope: !618)
!628 = !DILocation(line: 58, column: 1, scope: !618)
!629 = distinct !DISubprogram(name: "printSizeTLine", scope: !75, file: !75, line: 60, type: !630, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !158}
!632 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !629, file: !75, line: 60, type: !158)
!633 = !DILocation(line: 60, column: 29, scope: !629)
!634 = !DILocation(line: 62, column: 21, scope: !629)
!635 = !DILocation(line: 62, column: 5, scope: !629)
!636 = !DILocation(line: 63, column: 1, scope: !629)
!637 = distinct !DISubprogram(name: "printHexCharLine", scope: !75, file: !75, line: 65, type: !638, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !63}
!640 = !DILocalVariable(name: "charHex", arg: 1, scope: !637, file: !75, line: 65, type: !63)
!641 = !DILocation(line: 65, column: 29, scope: !637)
!642 = !DILocation(line: 67, column: 22, scope: !637)
!643 = !DILocation(line: 67, column: 5, scope: !637)
!644 = !DILocation(line: 68, column: 1, scope: !637)
!645 = distinct !DISubprogram(name: "printWcharLine", scope: !75, file: !75, line: 70, type: !646, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !571}
!648 = !DILocalVariable(name: "wideChar", arg: 1, scope: !645, file: !75, line: 70, type: !571)
!649 = !DILocation(line: 70, column: 29, scope: !645)
!650 = !DILocalVariable(name: "s", scope: !645, file: !75, line: 74, type: !651)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 2)
!654 = !DILocation(line: 74, column: 13, scope: !645)
!655 = !DILocation(line: 75, column: 16, scope: !645)
!656 = !DILocation(line: 75, column: 9, scope: !645)
!657 = !DILocation(line: 75, column: 14, scope: !645)
!658 = !DILocation(line: 76, column: 9, scope: !645)
!659 = !DILocation(line: 76, column: 14, scope: !645)
!660 = !DILocation(line: 77, column: 21, scope: !645)
!661 = !DILocation(line: 77, column: 5, scope: !645)
!662 = !DILocation(line: 78, column: 1, scope: !645)
!663 = distinct !DISubprogram(name: "printUnsignedLine", scope: !75, file: !75, line: 80, type: !664, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !7}
!666 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !663, file: !75, line: 80, type: !7)
!667 = !DILocation(line: 80, column: 33, scope: !663)
!668 = !DILocation(line: 82, column: 20, scope: !663)
!669 = !DILocation(line: 82, column: 5, scope: !663)
!670 = !DILocation(line: 83, column: 1, scope: !663)
!671 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !75, file: !75, line: 85, type: !672, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !95}
!674 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !671, file: !75, line: 85, type: !95)
!675 = !DILocation(line: 85, column: 45, scope: !671)
!676 = !DILocation(line: 87, column: 22, scope: !671)
!677 = !DILocation(line: 87, column: 5, scope: !671)
!678 = !DILocation(line: 88, column: 1, scope: !671)
!679 = distinct !DISubprogram(name: "printDoubleLine", scope: !75, file: !75, line: 90, type: !680, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682}
!682 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!683 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !679, file: !75, line: 90, type: !682)
!684 = !DILocation(line: 90, column: 29, scope: !679)
!685 = !DILocation(line: 92, column: 20, scope: !679)
!686 = !DILocation(line: 92, column: 5, scope: !679)
!687 = !DILocation(line: 93, column: 1, scope: !679)
!688 = distinct !DISubprogram(name: "printStructLine", scope: !75, file: !75, line: 95, type: !689, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !693, line: 100, baseType: !694)
!693 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_162/source_code")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !693, line: 96, size: 64, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !694, file: !693, line: 98, baseType: !94, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !694, file: !693, line: 99, baseType: !94, size: 32, offset: 32)
!698 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !688, file: !75, line: 95, type: !691)
!699 = !DILocation(line: 95, column: 40, scope: !688)
!700 = !DILocation(line: 97, column: 26, scope: !688)
!701 = !DILocation(line: 97, column: 47, scope: !688)
!702 = !DILocation(line: 97, column: 55, scope: !688)
!703 = !DILocation(line: 97, column: 76, scope: !688)
!704 = !DILocation(line: 97, column: 5, scope: !688)
!705 = !DILocation(line: 98, column: 1, scope: !688)
!706 = distinct !DISubprogram(name: "printBytesLine", scope: !75, file: !75, line: 100, type: !707, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !709, !158}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!710 = !DILocalVariable(name: "bytes", arg: 1, scope: !706, file: !75, line: 100, type: !709)
!711 = !DILocation(line: 100, column: 38, scope: !706)
!712 = !DILocalVariable(name: "numBytes", arg: 2, scope: !706, file: !75, line: 100, type: !158)
!713 = !DILocation(line: 100, column: 52, scope: !706)
!714 = !DILocalVariable(name: "i", scope: !706, file: !75, line: 102, type: !158)
!715 = !DILocation(line: 102, column: 12, scope: !706)
!716 = !DILocation(line: 103, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !706, file: !75, line: 103, column: 5)
!718 = !DILocation(line: 103, column: 10, scope: !717)
!719 = !DILocation(line: 103, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !75, line: 103, column: 5)
!721 = !DILocation(line: 103, column: 21, scope: !720)
!722 = !DILocation(line: 103, column: 19, scope: !720)
!723 = !DILocation(line: 103, column: 5, scope: !717)
!724 = !DILocation(line: 105, column: 24, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !75, line: 104, column: 5)
!726 = !DILocation(line: 105, column: 30, scope: !725)
!727 = !DILocation(line: 105, column: 9, scope: !725)
!728 = !DILocation(line: 106, column: 5, scope: !725)
!729 = !DILocation(line: 103, column: 31, scope: !720)
!730 = !DILocation(line: 103, column: 5, scope: !720)
!731 = distinct !{!731, !723, !732, !454}
!732 = !DILocation(line: 106, column: 5, scope: !717)
!733 = !DILocation(line: 107, column: 5, scope: !706)
!734 = !DILocation(line: 108, column: 1, scope: !706)
!735 = distinct !DISubprogram(name: "decodeHexChars", scope: !75, file: !75, line: 113, type: !736, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!736 = !DISubroutineType(types: !737)
!737 = !{!158, !709, !158, !66}
!738 = !DILocalVariable(name: "bytes", arg: 1, scope: !735, file: !75, line: 113, type: !709)
!739 = !DILocation(line: 113, column: 39, scope: !735)
!740 = !DILocalVariable(name: "numBytes", arg: 2, scope: !735, file: !75, line: 113, type: !158)
!741 = !DILocation(line: 113, column: 53, scope: !735)
!742 = !DILocalVariable(name: "hex", arg: 3, scope: !735, file: !75, line: 113, type: !66)
!743 = !DILocation(line: 113, column: 71, scope: !735)
!744 = !DILocalVariable(name: "numWritten", scope: !735, file: !75, line: 115, type: !158)
!745 = !DILocation(line: 115, column: 12, scope: !735)
!746 = !DILocation(line: 121, column: 5, scope: !735)
!747 = !DILocation(line: 121, column: 12, scope: !735)
!748 = !DILocation(line: 121, column: 25, scope: !735)
!749 = !DILocation(line: 121, column: 23, scope: !735)
!750 = !DILocation(line: 121, column: 34, scope: !735)
!751 = !DILocation(line: 121, column: 37, scope: !735)
!752 = !DILocation(line: 121, column: 67, scope: !735)
!753 = !DILocation(line: 121, column: 70, scope: !735)
!754 = !DILocation(line: 0, scope: !735)
!755 = !DILocalVariable(name: "byte", scope: !756, file: !75, line: 123, type: !94)
!756 = distinct !DILexicalBlock(scope: !735, file: !75, line: 122, column: 5)
!757 = !DILocation(line: 123, column: 13, scope: !756)
!758 = !DILocation(line: 124, column: 17, scope: !756)
!759 = !DILocation(line: 124, column: 25, scope: !756)
!760 = !DILocation(line: 124, column: 23, scope: !756)
!761 = !DILocation(line: 124, column: 9, scope: !756)
!762 = !DILocation(line: 125, column: 45, scope: !756)
!763 = !DILocation(line: 125, column: 29, scope: !756)
!764 = !DILocation(line: 125, column: 9, scope: !756)
!765 = !DILocation(line: 125, column: 15, scope: !756)
!766 = !DILocation(line: 125, column: 27, scope: !756)
!767 = !DILocation(line: 126, column: 9, scope: !756)
!768 = distinct !{!768, !746, !769, !454}
!769 = !DILocation(line: 127, column: 5, scope: !735)
!770 = !DILocation(line: 129, column: 12, scope: !735)
!771 = !DILocation(line: 129, column: 5, scope: !735)
!772 = distinct !DISubprogram(name: "decodeHexWChars", scope: !75, file: !75, line: 135, type: !773, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!773 = !DISubroutineType(types: !774)
!774 = !{!158, !709, !158, !570}
!775 = !DILocalVariable(name: "bytes", arg: 1, scope: !772, file: !75, line: 135, type: !709)
!776 = !DILocation(line: 135, column: 41, scope: !772)
!777 = !DILocalVariable(name: "numBytes", arg: 2, scope: !772, file: !75, line: 135, type: !158)
!778 = !DILocation(line: 135, column: 55, scope: !772)
!779 = !DILocalVariable(name: "hex", arg: 3, scope: !772, file: !75, line: 135, type: !570)
!780 = !DILocation(line: 135, column: 76, scope: !772)
!781 = !DILocalVariable(name: "numWritten", scope: !772, file: !75, line: 137, type: !158)
!782 = !DILocation(line: 137, column: 12, scope: !772)
!783 = !DILocation(line: 143, column: 5, scope: !772)
!784 = !DILocation(line: 143, column: 12, scope: !772)
!785 = !DILocation(line: 143, column: 25, scope: !772)
!786 = !DILocation(line: 143, column: 23, scope: !772)
!787 = !DILocation(line: 143, column: 34, scope: !772)
!788 = !DILocation(line: 143, column: 47, scope: !772)
!789 = !DILocation(line: 143, column: 55, scope: !772)
!790 = !DILocation(line: 143, column: 53, scope: !772)
!791 = !DILocation(line: 143, column: 37, scope: !772)
!792 = !DILocation(line: 143, column: 68, scope: !772)
!793 = !DILocation(line: 143, column: 81, scope: !772)
!794 = !DILocation(line: 143, column: 89, scope: !772)
!795 = !DILocation(line: 143, column: 87, scope: !772)
!796 = !DILocation(line: 143, column: 100, scope: !772)
!797 = !DILocation(line: 143, column: 71, scope: !772)
!798 = !DILocation(line: 0, scope: !772)
!799 = !DILocalVariable(name: "byte", scope: !800, file: !75, line: 145, type: !94)
!800 = distinct !DILexicalBlock(scope: !772, file: !75, line: 144, column: 5)
!801 = !DILocation(line: 145, column: 13, scope: !800)
!802 = !DILocation(line: 146, column: 18, scope: !800)
!803 = !DILocation(line: 146, column: 26, scope: !800)
!804 = !DILocation(line: 146, column: 24, scope: !800)
!805 = !DILocation(line: 146, column: 9, scope: !800)
!806 = !DILocation(line: 147, column: 45, scope: !800)
!807 = !DILocation(line: 147, column: 29, scope: !800)
!808 = !DILocation(line: 147, column: 9, scope: !800)
!809 = !DILocation(line: 147, column: 15, scope: !800)
!810 = !DILocation(line: 147, column: 27, scope: !800)
!811 = !DILocation(line: 148, column: 9, scope: !800)
!812 = distinct !{!812, !783, !813, !454}
!813 = !DILocation(line: 149, column: 5, scope: !772)
!814 = !DILocation(line: 151, column: 12, scope: !772)
!815 = !DILocation(line: 151, column: 5, scope: !772)
!816 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !75, file: !75, line: 156, type: !817, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!817 = !DISubroutineType(types: !818)
!818 = !{!94}
!819 = !DILocation(line: 158, column: 5, scope: !816)
!820 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !75, file: !75, line: 161, type: !817, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!821 = !DILocation(line: 163, column: 5, scope: !820)
!822 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !75, file: !75, line: 166, type: !817, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!823 = !DILocation(line: 168, column: 13, scope: !822)
!824 = !DILocation(line: 168, column: 20, scope: !822)
!825 = !DILocation(line: 168, column: 5, scope: !822)
!826 = distinct !DISubprogram(name: "good1", scope: !75, file: !75, line: 187, type: !120, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!827 = !DILocation(line: 187, column: 16, scope: !826)
!828 = distinct !DISubprogram(name: "good2", scope: !75, file: !75, line: 188, type: !120, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!829 = !DILocation(line: 188, column: 16, scope: !828)
!830 = distinct !DISubprogram(name: "good3", scope: !75, file: !75, line: 189, type: !120, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!831 = !DILocation(line: 189, column: 16, scope: !830)
!832 = distinct !DISubprogram(name: "good4", scope: !75, file: !75, line: 190, type: !120, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!833 = !DILocation(line: 190, column: 16, scope: !832)
!834 = distinct !DISubprogram(name: "good5", scope: !75, file: !75, line: 191, type: !120, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!835 = !DILocation(line: 191, column: 16, scope: !834)
!836 = distinct !DISubprogram(name: "good6", scope: !75, file: !75, line: 192, type: !120, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!837 = !DILocation(line: 192, column: 16, scope: !836)
!838 = distinct !DISubprogram(name: "good7", scope: !75, file: !75, line: 193, type: !120, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!839 = !DILocation(line: 193, column: 16, scope: !838)
!840 = distinct !DISubprogram(name: "good8", scope: !75, file: !75, line: 194, type: !120, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!841 = !DILocation(line: 194, column: 16, scope: !840)
!842 = distinct !DISubprogram(name: "good9", scope: !75, file: !75, line: 195, type: !120, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!843 = !DILocation(line: 195, column: 16, scope: !842)
!844 = distinct !DISubprogram(name: "bad1", scope: !75, file: !75, line: 198, type: !120, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!845 = !DILocation(line: 198, column: 15, scope: !844)
!846 = distinct !DISubprogram(name: "bad2", scope: !75, file: !75, line: 199, type: !120, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!847 = !DILocation(line: 199, column: 15, scope: !846)
!848 = distinct !DISubprogram(name: "bad3", scope: !75, file: !75, line: 200, type: !120, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!849 = !DILocation(line: 200, column: 15, scope: !848)
!850 = distinct !DISubprogram(name: "bad4", scope: !75, file: !75, line: 201, type: !120, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!851 = !DILocation(line: 201, column: 15, scope: !850)
!852 = distinct !DISubprogram(name: "bad5", scope: !75, file: !75, line: 202, type: !120, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!853 = !DILocation(line: 202, column: 15, scope: !852)
!854 = distinct !DISubprogram(name: "bad6", scope: !75, file: !75, line: 203, type: !120, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!855 = !DILocation(line: 203, column: 15, scope: !854)
!856 = distinct !DISubprogram(name: "bad7", scope: !75, file: !75, line: 204, type: !120, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!857 = !DILocation(line: 204, column: 15, scope: !856)
!858 = distinct !DISubprogram(name: "bad8", scope: !75, file: !75, line: 205, type: !120, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!859 = !DILocation(line: 205, column: 15, scope: !858)
!860 = distinct !DISubprogram(name: "bad9", scope: !75, file: !75, line: 206, type: !120, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!861 = !DILocation(line: 206, column: 15, scope: !860)
