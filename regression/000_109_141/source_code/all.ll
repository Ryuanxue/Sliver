; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !68
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !71
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !73
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !75
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !99
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !101
@globalTrue = dso_local global i32 1, align 4, !dbg !103
@globalFalse = dso_local global i32 0, align 4, !dbg !105
@globalFive = dso_local global i32 5, align 4, !dbg !107
@globalArgc = dso_local global i32 0, align 4, !dbg !109
@globalArgv = dso_local global i8** null, align 8, !dbg !111
@.str.12 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12.17 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad() #0 !dbg !121 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !126, metadata !DIExpression()), !dbg !130
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !130
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !131
  store i8* %arraydecay, i8** %data, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !136, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 -1, i32* %listenSocket, align 4, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 -1, i32* %acceptSocket, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !159, metadata !DIExpression()), !dbg !163
  %1 = load i8*, i8** %data, align 8, !dbg !164
  %call = call i64 @strlen(i8* %1) #7, !dbg !165
  store i64 %call, i64* %dataLen, align 8, !dbg !163
  br label %do.body, !dbg !166

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !167
  store i32 %call1, i32* %listenSocket, align 4, !dbg !169
  %2 = load i32, i32* %listenSocket, align 4, !dbg !170
  %cmp = icmp eq i32 %2, -1, !dbg !172
  br i1 %cmp, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !174

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !176
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !177
  store i16 2, i16* %sin_family, align 4, !dbg !178
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !179
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !180
  store i32 0, i32* %s_addr, align 4, !dbg !181
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !182
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !183
  store i16 %call2, i16* %sin_port, align 2, !dbg !184
  %4 = load i32, i32* %listenSocket, align 4, !dbg !185
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !187
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !188
  %cmp4 = icmp eq i32 %call3, -1, !dbg !189
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !190

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !191

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !193
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !195
  %cmp8 = icmp eq i32 %call7, -1, !dbg !196
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !197

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !198

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !200
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !201
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !202
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !203
  %cmp12 = icmp eq i32 %8, -1, !dbg !205
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !206

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !207

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !209
  %10 = load i8*, i8** %data, align 8, !dbg !210
  %11 = load i64, i64* %dataLen, align 8, !dbg !211
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !212
  %12 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub = sub i64 100, %12, !dbg !214
  %sub15 = sub i64 %sub, 1, !dbg !215
  %mul = mul i64 1, %sub15, !dbg !216
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !217
  %conv = trunc i64 %call16 to i32, !dbg !217
  store i32 %conv, i32* %recvResult, align 4, !dbg !218
  %13 = load i32, i32* %recvResult, align 4, !dbg !219
  %cmp17 = icmp eq i32 %13, -1, !dbg !221
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !222

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !223
  %cmp19 = icmp eq i32 %14, 0, !dbg !224
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !225

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !226

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !228
  %16 = load i64, i64* %dataLen, align 8, !dbg !229
  %17 = load i32, i32* %recvResult, align 4, !dbg !230
  %conv23 = sext i32 %17 to i64, !dbg !230
  %div = udiv i64 %conv23, 1, !dbg !231
  %add = add i64 %16, %div, !dbg !232
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !228
  store i8 0, i8* %arrayidx, align 1, !dbg !233
  %18 = load i8*, i8** %data, align 8, !dbg !234
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !235
  store i8* %call24, i8** %replace, align 8, !dbg !236
  %19 = load i8*, i8** %replace, align 8, !dbg !237
  %tobool = icmp ne i8* %19, null, !dbg !237
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !239

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !240
  store i8 0, i8* %20, align 1, !dbg !242
  br label %if.end26, !dbg !243

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !244
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !245
  store i8* %call27, i8** %replace, align 8, !dbg !246
  %22 = load i8*, i8** %replace, align 8, !dbg !247
  %tobool28 = icmp ne i8* %22, null, !dbg !247
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !249

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !250
  store i8 0, i8* %23, align 1, !dbg !252
  br label %if.end30, !dbg !253

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !254

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !255
  %cmp31 = icmp ne i32 %24, -1, !dbg !257
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !258

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !259
  %call34 = call i32 @close(i32 %25), !dbg !261
  br label %if.end35, !dbg !262

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !263
  %cmp36 = icmp ne i32 %26, -1, !dbg !265
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !266

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !267
  %call39 = call i32 @close(i32 %27), !dbg !269
  br label %if.end40, !dbg !270

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal, align 4, !dbg !271
  %28 = load i8*, i8** %data, align 8, !dbg !272
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink(i8* %28), !dbg !273
  ret void, !dbg !274
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
define dso_local void @goodB2G1() #0 !dbg !275 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 -1, i32* %listenSocket, align 4, !dbg !290
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !291, metadata !DIExpression()), !dbg !292
  store i32 -1, i32* %acceptSocket, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !293, metadata !DIExpression()), !dbg !294
  %1 = load i8*, i8** %data, align 8, !dbg !295
  %call = call i64 @strlen(i8* %1) #7, !dbg !296
  store i64 %call, i64* %dataLen, align 8, !dbg !294
  br label %do.body, !dbg !297

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !298
  store i32 %call1, i32* %listenSocket, align 4, !dbg !300
  %2 = load i32, i32* %listenSocket, align 4, !dbg !301
  %cmp = icmp eq i32 %2, -1, !dbg !303
  br i1 %cmp, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !305

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !307
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !307
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !308
  store i16 2, i16* %sin_family, align 4, !dbg !309
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !310
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !311
  store i32 0, i32* %s_addr, align 4, !dbg !312
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !313
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !314
  store i16 %call2, i16* %sin_port, align 2, !dbg !315
  %4 = load i32, i32* %listenSocket, align 4, !dbg !316
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !318
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !319
  %cmp4 = icmp eq i32 %call3, -1, !dbg !320
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !321

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !322

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !324
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !326
  %cmp8 = icmp eq i32 %call7, -1, !dbg !327
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !328

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !329

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !331
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !332
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !333
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !334
  %cmp12 = icmp eq i32 %8, -1, !dbg !336
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !337

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !338

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !340
  %10 = load i8*, i8** %data, align 8, !dbg !341
  %11 = load i64, i64* %dataLen, align 8, !dbg !342
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !343
  %12 = load i64, i64* %dataLen, align 8, !dbg !344
  %sub = sub i64 100, %12, !dbg !345
  %sub15 = sub i64 %sub, 1, !dbg !346
  %mul = mul i64 1, %sub15, !dbg !347
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !348
  %conv = trunc i64 %call16 to i32, !dbg !348
  store i32 %conv, i32* %recvResult, align 4, !dbg !349
  %13 = load i32, i32* %recvResult, align 4, !dbg !350
  %cmp17 = icmp eq i32 %13, -1, !dbg !352
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !353

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !354
  %cmp19 = icmp eq i32 %14, 0, !dbg !355
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !356

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !357

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !359
  %16 = load i64, i64* %dataLen, align 8, !dbg !360
  %17 = load i32, i32* %recvResult, align 4, !dbg !361
  %conv23 = sext i32 %17 to i64, !dbg !361
  %div = udiv i64 %conv23, 1, !dbg !362
  %add = add i64 %16, %div, !dbg !363
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !359
  store i8 0, i8* %arrayidx, align 1, !dbg !364
  %18 = load i8*, i8** %data, align 8, !dbg !365
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !366
  store i8* %call24, i8** %replace, align 8, !dbg !367
  %19 = load i8*, i8** %replace, align 8, !dbg !368
  %tobool = icmp ne i8* %19, null, !dbg !368
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !370

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !371
  store i8 0, i8* %20, align 1, !dbg !373
  br label %if.end26, !dbg !374

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !375
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !376
  store i8* %call27, i8** %replace, align 8, !dbg !377
  %22 = load i8*, i8** %replace, align 8, !dbg !378
  %tobool28 = icmp ne i8* %22, null, !dbg !378
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !380

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !381
  store i8 0, i8* %23, align 1, !dbg !383
  br label %if.end30, !dbg !384

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !385

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !386
  %cmp31 = icmp ne i32 %24, -1, !dbg !388
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !389

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !390
  %call34 = call i32 @close(i32 %25), !dbg !392
  br label %if.end35, !dbg !393

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !394
  %cmp36 = icmp ne i32 %26, -1, !dbg !396
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !397

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !398
  %call39 = call i32 @close(i32 %27), !dbg !400
  br label %if.end40, !dbg !401

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global, align 4, !dbg !402
  %28 = load i8*, i8** %data, align 8, !dbg !403
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink(i8* %28), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !406 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !410
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !410
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !411
  store i8* %arraydecay, i8** %data, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 -1, i32* %listenSocket, align 4, !dbg !421
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !422, metadata !DIExpression()), !dbg !423
  store i32 -1, i32* %acceptSocket, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !424, metadata !DIExpression()), !dbg !425
  %1 = load i8*, i8** %data, align 8, !dbg !426
  %call = call i64 @strlen(i8* %1) #7, !dbg !427
  store i64 %call, i64* %dataLen, align 8, !dbg !425
  br label %do.body, !dbg !428

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !429
  store i32 %call1, i32* %listenSocket, align 4, !dbg !431
  %2 = load i32, i32* %listenSocket, align 4, !dbg !432
  %cmp = icmp eq i32 %2, -1, !dbg !434
  br i1 %cmp, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !436

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !438
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !438
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !439
  store i16 2, i16* %sin_family, align 4, !dbg !440
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !441
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !442
  store i32 0, i32* %s_addr, align 4, !dbg !443
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !444
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !445
  store i16 %call2, i16* %sin_port, align 2, !dbg !446
  %4 = load i32, i32* %listenSocket, align 4, !dbg !447
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !449
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !450
  %cmp4 = icmp eq i32 %call3, -1, !dbg !451
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !452

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !453

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !455
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !457
  %cmp8 = icmp eq i32 %call7, -1, !dbg !458
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !459

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !460

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !462
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !463
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !464
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !465
  %cmp12 = icmp eq i32 %8, -1, !dbg !467
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !468

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !469

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !471
  %10 = load i8*, i8** %data, align 8, !dbg !472
  %11 = load i64, i64* %dataLen, align 8, !dbg !473
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !474
  %12 = load i64, i64* %dataLen, align 8, !dbg !475
  %sub = sub i64 100, %12, !dbg !476
  %sub15 = sub i64 %sub, 1, !dbg !477
  %mul = mul i64 1, %sub15, !dbg !478
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !479
  %conv = trunc i64 %call16 to i32, !dbg !479
  store i32 %conv, i32* %recvResult, align 4, !dbg !480
  %13 = load i32, i32* %recvResult, align 4, !dbg !481
  %cmp17 = icmp eq i32 %13, -1, !dbg !483
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !484

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !485
  %cmp19 = icmp eq i32 %14, 0, !dbg !486
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !487

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !488

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !490
  %16 = load i64, i64* %dataLen, align 8, !dbg !491
  %17 = load i32, i32* %recvResult, align 4, !dbg !492
  %conv23 = sext i32 %17 to i64, !dbg !492
  %div = udiv i64 %conv23, 1, !dbg !493
  %add = add i64 %16, %div, !dbg !494
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !490
  store i8 0, i8* %arrayidx, align 1, !dbg !495
  %18 = load i8*, i8** %data, align 8, !dbg !496
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !497
  store i8* %call24, i8** %replace, align 8, !dbg !498
  %19 = load i8*, i8** %replace, align 8, !dbg !499
  %tobool = icmp ne i8* %19, null, !dbg !499
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !501

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !502
  store i8 0, i8* %20, align 1, !dbg !504
  br label %if.end26, !dbg !505

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !506
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !507
  store i8* %call27, i8** %replace, align 8, !dbg !508
  %22 = load i8*, i8** %replace, align 8, !dbg !509
  %tobool28 = icmp ne i8* %22, null, !dbg !509
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !511

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !512
  store i8 0, i8* %23, align 1, !dbg !514
  br label %if.end30, !dbg !515

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !516

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !517
  %cmp31 = icmp ne i32 %24, -1, !dbg !519
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !520

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !521
  %call34 = call i32 @close(i32 %25), !dbg !523
  br label %if.end35, !dbg !524

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !525
  %cmp36 = icmp ne i32 %26, -1, !dbg !527
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !528

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !529
  %call39 = call i32 @close(i32 %27), !dbg !531
  br label %if.end40, !dbg !532

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global, align 4, !dbg !533
  %28 = load i8*, i8** %data, align 8, !dbg !534
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8* %28), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !537 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !540, metadata !DIExpression()), !dbg !541
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !541
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !541
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !542
  store i8* %arraydecay, i8** %data, align 8, !dbg !543
  %1 = load i8*, i8** %data, align 8, !dbg !544
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !545
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal, align 4, !dbg !546
  %2 = load i8*, i8** %data, align 8, !dbg !547
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink(i8* %2), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good() #0 !dbg !550 {
entry:
  call void @goodB2G1(), !dbg !551
  call void @goodB2G2(), !dbg !552
  call void @goodG2B(), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink(i8* %data) #0 !dbg !555 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal, align 4, !dbg !560
  %tobool = icmp ne i32 %0, 0, !dbg !560
  br i1 %tobool, label %if.then, label %if.end4, !dbg !562

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !563, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i32* %n, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !569, metadata !DIExpression()), !dbg !570
  %1 = load i8*, i8** %data.addr, align 8, !dbg !571
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !573
  %cmp = icmp eq i32 %call, 1, !dbg !574
  br i1 %cmp, label %if.then1, label %if.end, !dbg !575

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !576
  store i32 0, i32* %i, align 4, !dbg !578
  br label %for.cond, !dbg !580

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !581
  %3 = load i32, i32* %n, align 4, !dbg !583
  %cmp2 = icmp slt i32 %2, %3, !dbg !584
  br i1 %cmp2, label %for.body, label %for.end, !dbg !585

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !586
  %inc = add nsw i32 %4, 1, !dbg !586
  store i32 %inc, i32* %intVariable, align 4, !dbg !586
  br label %for.inc, !dbg !588

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !589
  %inc3 = add nsw i32 %5, 1, !dbg !589
  store i32 %inc3, i32* %i, align 4, !dbg !589
  br label %for.cond, !dbg !590, !llvm.loop !591

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !594
  call void @printIntLine(i32 %6), !dbg !595
  br label %if.end, !dbg !596

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !597

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !598
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink(i8* %data) #0 !dbg !599 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global, align 4, !dbg !602
  %tobool = icmp ne i32 %0, 0, !dbg !602
  br i1 %tobool, label %if.then, label %if.else, !dbg !604

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !605
  br label %if.end7, !dbg !607

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %n, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !614, metadata !DIExpression()), !dbg !615
  %1 = load i8*, i8** %data.addr, align 8, !dbg !616
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !618
  %cmp = icmp eq i32 %call, 1, !dbg !619
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !620

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !621
  %cmp2 = icmp slt i32 %2, 10000, !dbg !624
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !625

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !626
  store i32 0, i32* %i, align 4, !dbg !628
  br label %for.cond, !dbg !630

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !631
  %4 = load i32, i32* %n, align 4, !dbg !633
  %cmp4 = icmp slt i32 %3, %4, !dbg !634
  br i1 %cmp4, label %for.body, label %for.end, !dbg !635

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !636
  %inc = add nsw i32 %5, 1, !dbg !636
  store i32 %inc, i32* %intVariable, align 4, !dbg !636
  br label %for.inc, !dbg !638

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !639
  %inc5 = add nsw i32 %6, 1, !dbg !639
  store i32 %inc5, i32* %i, align 4, !dbg !639
  br label %for.cond, !dbg !640, !llvm.loop !641

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !643
  call void @printIntLine(i32 %7), !dbg !644
  br label %if.end, !dbg !645

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !646

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8* %data) #0 !dbg !648 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global, align 4, !dbg !651
  %tobool = icmp ne i32 %0, 0, !dbg !651
  br i1 %tobool, label %if.then, label %if.end7, !dbg !653

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i32* %n, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !660, metadata !DIExpression()), !dbg !661
  %1 = load i8*, i8** %data.addr, align 8, !dbg !662
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !664
  %cmp = icmp eq i32 %call, 1, !dbg !665
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !666

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !667
  %cmp2 = icmp slt i32 %2, 10000, !dbg !670
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !671

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !672
  store i32 0, i32* %i, align 4, !dbg !674
  br label %for.cond, !dbg !676

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !677
  %4 = load i32, i32* %n, align 4, !dbg !679
  %cmp4 = icmp slt i32 %3, %4, !dbg !680
  br i1 %cmp4, label %for.body, label %for.end, !dbg !681

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !682
  %inc = add nsw i32 %5, 1, !dbg !682
  store i32 %inc, i32* %intVariable, align 4, !dbg !682
  br label %for.inc, !dbg !684

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !685
  %inc5 = add nsw i32 %6, 1, !dbg !685
  store i32 %inc5, i32* %i, align 4, !dbg !685
  br label %for.cond, !dbg !686, !llvm.loop !687

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !689
  call void @printIntLine(i32 %7), !dbg !690
  br label %if.end, !dbg !691

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !692

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !693

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink(i8* %data) #0 !dbg !695 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal, align 4, !dbg !698
  %tobool = icmp ne i32 %0, 0, !dbg !698
  br i1 %tobool, label %if.then, label %if.end4, !dbg !700

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !701, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata i32* %n, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !707, metadata !DIExpression()), !dbg !708
  %1 = load i8*, i8** %data.addr, align 8, !dbg !709
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !711
  %cmp = icmp eq i32 %call, 1, !dbg !712
  br i1 %cmp, label %if.then1, label %if.end, !dbg !713

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !714
  store i32 0, i32* %i, align 4, !dbg !716
  br label %for.cond, !dbg !718

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !719
  %3 = load i32, i32* %n, align 4, !dbg !721
  %cmp2 = icmp slt i32 %2, %3, !dbg !722
  br i1 %cmp2, label %for.body, label %for.end, !dbg !723

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !724
  %inc = add nsw i32 %4, 1, !dbg !724
  store i32 %inc, i32* %intVariable, align 4, !dbg !724
  br label %for.inc, !dbg !726

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !727
  %inc3 = add nsw i32 %5, 1, !dbg !727
  store i32 %inc3, i32* %i, align 4, !dbg !727
  br label %for.cond, !dbg !728, !llvm.loop !729

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !731
  call void @printIntLine(i32 %6), !dbg !732
  br label %if.end, !dbg !733

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !734

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !736 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !737, metadata !DIExpression()), !dbg !738
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)), !dbg !739
  %0 = load i8*, i8** %line.addr, align 8, !dbg !740
  %cmp = icmp ne i8* %0, null, !dbg !742
  br i1 %cmp, label %if.then, label %if.end, !dbg !743

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !744
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.13, i64 0, i64 0), i8* %1), !dbg !746
  br label %if.end, !dbg !747

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !748
  ret void, !dbg !749
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !750 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load i8*, i8** %line.addr, align 8, !dbg !753
  %cmp = icmp ne i8* %0, null, !dbg !755
  br i1 %cmp, label %if.then, label %if.end, !dbg !756

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !757
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.13, i64 0, i64 0), i8* %1), !dbg !759
  br label %if.end, !dbg !760

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !762 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load i32*, i32** %line.addr, align 8, !dbg !769
  %cmp = icmp ne i32* %0, null, !dbg !771
  br i1 %cmp, label %if.then, label %if.end, !dbg !772

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !773
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !775
  br label %if.end, !dbg !776

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !777
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !778 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !783
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !784
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !786 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !792
  %conv = sext i16 %0 to i32, !dbg !792
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !793
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !795 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !801
  %conv = fpext float %0 to double, !dbg !801
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !802
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !804 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !810
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !811
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !813 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !821
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !822
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !824 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !827, metadata !DIExpression()), !dbg !828
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !829
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !830
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !832 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !835, metadata !DIExpression()), !dbg !836
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !837
  %conv = sext i8 %0 to i32, !dbg !837
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !838
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !840 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !845, metadata !DIExpression()), !dbg !849
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !850
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !851
  store i32 %0, i32* %arrayidx, align 4, !dbg !852
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !853
  store i32 0, i32* %arrayidx1, align 4, !dbg !854
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !855
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !856
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !858 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !861, metadata !DIExpression()), !dbg !862
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !863
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !864
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !866 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !871
  %conv = zext i8 %0 to i32, !dbg !871
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !874 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !878, metadata !DIExpression()), !dbg !879
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !880
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.17, i64 0, i64 0), double %0), !dbg !881
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !883 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !893, metadata !DIExpression()), !dbg !894
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !895
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !896
  %1 = load i32, i32* %intOne, align 4, !dbg !896
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !897
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !898
  %3 = load i32, i32* %intTwo, align 4, !dbg !898
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !899
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !901 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !905, metadata !DIExpression()), !dbg !906
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !907, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.declare(metadata i64* %i, metadata !909, metadata !DIExpression()), !dbg !910
  store i64 0, i64* %i, align 8, !dbg !911
  br label %for.cond, !dbg !913

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !914
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !916
  %cmp = icmp ult i64 %0, %1, !dbg !917
  br i1 %cmp, label %for.body, label %for.end, !dbg !918

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !919
  %3 = load i64, i64* %i, align 8, !dbg !921
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !919
  %4 = load i8, i8* %arrayidx, align 1, !dbg !919
  %conv = zext i8 %4 to i32, !dbg !919
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !922
  br label %for.inc, !dbg !923

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !924
  %inc = add i64 %5, 1, !dbg !924
  store i64 %inc, i64* %i, align 8, !dbg !924
  br label %for.cond, !dbg !925, !llvm.loop !926

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !928
  ret void, !dbg !929
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !930 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !933, metadata !DIExpression()), !dbg !934
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !935, metadata !DIExpression()), !dbg !936
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !939, metadata !DIExpression()), !dbg !940
  store i64 0, i64* %numWritten, align 8, !dbg !940
  br label %while.cond, !dbg !941

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !942
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !943
  %cmp = icmp ult i64 %0, %1, !dbg !944
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !945

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !946
  %2 = load i16*, i16** %call, align 8, !dbg !946
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !946
  %4 = load i64, i64* %numWritten, align 8, !dbg !946
  %mul = mul i64 2, %4, !dbg !946
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !946
  %5 = load i8, i8* %arrayidx, align 1, !dbg !946
  %conv = sext i8 %5 to i32, !dbg !946
  %idxprom = sext i32 %conv to i64, !dbg !946
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !946
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !946
  %conv2 = zext i16 %6 to i32, !dbg !946
  %and = and i32 %conv2, 4096, !dbg !946
  %tobool = icmp ne i32 %and, 0, !dbg !946
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !947

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !948
  %7 = load i16*, i16** %call3, align 8, !dbg !948
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !948
  %9 = load i64, i64* %numWritten, align 8, !dbg !948
  %mul4 = mul i64 2, %9, !dbg !948
  %add = add i64 %mul4, 1, !dbg !948
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !948
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !948
  %conv6 = sext i8 %10 to i32, !dbg !948
  %idxprom7 = sext i32 %conv6 to i64, !dbg !948
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !948
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !948
  %conv9 = zext i16 %11 to i32, !dbg !948
  %and10 = and i32 %conv9, 4096, !dbg !948
  %tobool11 = icmp ne i32 %and10, 0, !dbg !947
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !949
  br i1 %12, label %while.body, label %while.end, !dbg !941

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !950, metadata !DIExpression()), !dbg !952
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !953
  %14 = load i64, i64* %numWritten, align 8, !dbg !954
  %mul12 = mul i64 2, %14, !dbg !955
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !953
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !956
  %15 = load i32, i32* %byte, align 4, !dbg !957
  %conv15 = trunc i32 %15 to i8, !dbg !958
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !959
  %17 = load i64, i64* %numWritten, align 8, !dbg !960
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !959
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !961
  %18 = load i64, i64* %numWritten, align 8, !dbg !962
  %inc = add i64 %18, 1, !dbg !962
  store i64 %inc, i64* %numWritten, align 8, !dbg !962
  br label %while.cond, !dbg !941, !llvm.loop !963

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !965
  ret i64 %19, !dbg !966
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !967 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !970, metadata !DIExpression()), !dbg !971
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !972, metadata !DIExpression()), !dbg !973
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !976, metadata !DIExpression()), !dbg !977
  store i64 0, i64* %numWritten, align 8, !dbg !977
  br label %while.cond, !dbg !978

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !979
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !980
  %cmp = icmp ult i64 %0, %1, !dbg !981
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !982

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !983
  %3 = load i64, i64* %numWritten, align 8, !dbg !984
  %mul = mul i64 2, %3, !dbg !985
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !983
  %4 = load i32, i32* %arrayidx, align 4, !dbg !983
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !986
  %tobool = icmp ne i32 %call, 0, !dbg !986
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !987

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !988
  %6 = load i64, i64* %numWritten, align 8, !dbg !989
  %mul1 = mul i64 2, %6, !dbg !990
  %add = add i64 %mul1, 1, !dbg !991
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !988
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !988
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !992
  %tobool4 = icmp ne i32 %call3, 0, !dbg !987
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !993
  br i1 %8, label %while.body, label %while.end, !dbg !978

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !994, metadata !DIExpression()), !dbg !996
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !997
  %10 = load i64, i64* %numWritten, align 8, !dbg !998
  %mul5 = mul i64 2, %10, !dbg !999
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !997
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !1000
  %11 = load i32, i32* %byte, align 4, !dbg !1001
  %conv = trunc i32 %11 to i8, !dbg !1002
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !1003
  %13 = load i64, i64* %numWritten, align 8, !dbg !1004
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !1003
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !1005
  %14 = load i64, i64* %numWritten, align 8, !dbg !1006
  %inc = add i64 %14, 1, !dbg !1006
  store i64 %inc, i64* %numWritten, align 8, !dbg !1006
  br label %while.cond, !dbg !978, !llvm.loop !1007

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !1009
  ret i64 %15, !dbg !1010
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !1011 {
entry:
  ret i32 1, !dbg !1014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !1015 {
entry:
  ret i32 0, !dbg !1016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !1017 {
entry:
  %call = call i32 @rand() #8, !dbg !1018
  %rem = srem i32 %call, 2, !dbg !1019
  ret i32 %rem, !dbg !1020
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !1021 {
entry:
  ret void, !dbg !1022
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !1023 {
entry:
  ret void, !dbg !1024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !1025 {
entry:
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !1027 {
entry:
  ret void, !dbg !1028
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !1029 {
entry:
  ret void, !dbg !1030
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !1031 {
entry:
  ret void, !dbg !1032
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !1033 {
entry:
  ret void, !dbg !1034
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !1035 {
entry:
  ret void, !dbg !1036
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !1037 {
entry:
  ret void, !dbg !1038
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1039 {
entry:
  ret void, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1041 {
entry:
  ret void, !dbg !1042
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1043 {
entry:
  ret void, !dbg !1044
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1045 {
entry:
  ret void, !dbg !1046
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1047 {
entry:
  ret void, !dbg !1048
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1049 {
entry:
  ret void, !dbg !1050
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1051 {
entry:
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1053 {
entry:
  ret void, !dbg !1054
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1055 {
entry:
  ret void, !dbg !1056
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

!llvm.dbg.cu = !{!2, !114, !77}
!llvm.ident = !{!117, !117, !117}
!llvm.module.flags = !{!118, !119, !120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal", scope: !2, file: !3, line: 51, type: !70, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/source_code")
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
!67 = !{!0, !68, !71, !73}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global", scope: !2, file: !3, line: 147, type: !70, isLocal: false, isDefinition: true)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global", scope: !2, file: !3, line: 148, type: !70, isLocal: false, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal", scope: !2, file: !3, line: 149, type: !70, isLocal: false, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !77, file: !78, line: 174, type: !70, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !95, globals: !98, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/source_code")
!79 = !{!80}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 46, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!95 = !{!96, !70, !60, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!75, !99, !101, !103, !105, !107, !109, !111}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !77, file: !78, line: 175, type: !70, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !77, file: !78, line: 176, type: !70, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "globalTrue", scope: !77, file: !78, line: 181, type: !70, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "globalFalse", scope: !77, file: !78, line: 182, type: !70, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "globalFive", scope: !77, file: !78, line: 183, type: !70, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "globalArgc", scope: !77, file: !78, line: 214, type: !70, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "globalArgv", scope: !77, file: !78, line: 215, type: !113, isLocal: false, isDefinition: true)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/source_code")
!116 = !{}
!117 = !{!"clang version 12.0.0"}
!118 = !{i32 7, !"Dwarf Version", i32 4}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad", scope: !3, file: !3, line: 54, type: !122, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DILocalVariable(name: "data", scope: !121, file: !3, line: 56, type: !66)
!125 = !DILocation(line: 56, column: 12, scope: !121)
!126 = !DILocalVariable(name: "dataBuffer", scope: !121, file: !3, line: 57, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 800, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 100)
!130 = !DILocation(line: 57, column: 10, scope: !121)
!131 = !DILocation(line: 58, column: 12, scope: !121)
!132 = !DILocation(line: 58, column: 10, scope: !121)
!133 = !DILocalVariable(name: "recvResult", scope: !134, file: !3, line: 64, type: !70)
!134 = distinct !DILexicalBlock(scope: !121, file: !3, line: 59, column: 5)
!135 = !DILocation(line: 64, column: 13, scope: !134)
!136 = !DILocalVariable(name: "service", scope: !134, file: !3, line: 65, type: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !138)
!138 = !{!139, !140, !144, !148}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !137, file: !19, line: 240, baseType: !58, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !137, file: !19, line: 241, baseType: !141, size: 16, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !137, file: !19, line: 242, baseType: !145, size: 32, offset: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !145, file: !19, line: 33, baseType: !48, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !137, file: !19, line: 245, baseType: !149, size: 64, offset: 64)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 8)
!152 = !DILocation(line: 65, column: 28, scope: !134)
!153 = !DILocalVariable(name: "replace", scope: !134, file: !3, line: 66, type: !66)
!154 = !DILocation(line: 66, column: 15, scope: !134)
!155 = !DILocalVariable(name: "listenSocket", scope: !134, file: !3, line: 67, type: !70)
!156 = !DILocation(line: 67, column: 16, scope: !134)
!157 = !DILocalVariable(name: "acceptSocket", scope: !134, file: !3, line: 68, type: !70)
!158 = !DILocation(line: 68, column: 16, scope: !134)
!159 = !DILocalVariable(name: "dataLen", scope: !134, file: !3, line: 69, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 46, baseType: !162)
!161 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!162 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DILocation(line: 69, column: 16, scope: !134)
!164 = !DILocation(line: 69, column: 33, scope: !134)
!165 = !DILocation(line: 69, column: 26, scope: !134)
!166 = !DILocation(line: 70, column: 9, scope: !134)
!167 = !DILocation(line: 80, column: 28, scope: !168)
!168 = distinct !DILexicalBlock(scope: !134, file: !3, line: 71, column: 9)
!169 = !DILocation(line: 80, column: 26, scope: !168)
!170 = !DILocation(line: 81, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 81, column: 17)
!172 = !DILocation(line: 81, column: 30, scope: !171)
!173 = !DILocation(line: 81, column: 17, scope: !168)
!174 = !DILocation(line: 83, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 82, column: 13)
!176 = !DILocation(line: 85, column: 13, scope: !168)
!177 = !DILocation(line: 86, column: 21, scope: !168)
!178 = !DILocation(line: 86, column: 32, scope: !168)
!179 = !DILocation(line: 87, column: 21, scope: !168)
!180 = !DILocation(line: 87, column: 30, scope: !168)
!181 = !DILocation(line: 87, column: 37, scope: !168)
!182 = !DILocation(line: 88, column: 32, scope: !168)
!183 = !DILocation(line: 88, column: 21, scope: !168)
!184 = !DILocation(line: 88, column: 30, scope: !168)
!185 = !DILocation(line: 89, column: 22, scope: !186)
!186 = distinct !DILexicalBlock(scope: !168, file: !3, line: 89, column: 17)
!187 = !DILocation(line: 89, column: 36, scope: !186)
!188 = !DILocation(line: 89, column: 17, scope: !186)
!189 = !DILocation(line: 89, column: 81, scope: !186)
!190 = !DILocation(line: 89, column: 17, scope: !168)
!191 = !DILocation(line: 91, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !3, line: 90, column: 13)
!193 = !DILocation(line: 93, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !168, file: !3, line: 93, column: 17)
!195 = !DILocation(line: 93, column: 17, scope: !194)
!196 = !DILocation(line: 93, column: 54, scope: !194)
!197 = !DILocation(line: 93, column: 17, scope: !168)
!198 = !DILocation(line: 95, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !3, line: 94, column: 13)
!200 = !DILocation(line: 97, column: 35, scope: !168)
!201 = !DILocation(line: 97, column: 28, scope: !168)
!202 = !DILocation(line: 97, column: 26, scope: !168)
!203 = !DILocation(line: 98, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !168, file: !3, line: 98, column: 17)
!205 = !DILocation(line: 98, column: 30, scope: !204)
!206 = !DILocation(line: 98, column: 17, scope: !168)
!207 = !DILocation(line: 100, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !3, line: 99, column: 13)
!209 = !DILocation(line: 103, column: 31, scope: !168)
!210 = !DILocation(line: 103, column: 54, scope: !168)
!211 = !DILocation(line: 103, column: 61, scope: !168)
!212 = !DILocation(line: 103, column: 59, scope: !168)
!213 = !DILocation(line: 103, column: 93, scope: !168)
!214 = !DILocation(line: 103, column: 91, scope: !168)
!215 = !DILocation(line: 103, column: 101, scope: !168)
!216 = !DILocation(line: 103, column: 84, scope: !168)
!217 = !DILocation(line: 103, column: 26, scope: !168)
!218 = !DILocation(line: 103, column: 24, scope: !168)
!219 = !DILocation(line: 104, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !168, file: !3, line: 104, column: 17)
!221 = !DILocation(line: 104, column: 28, scope: !220)
!222 = !DILocation(line: 104, column: 44, scope: !220)
!223 = !DILocation(line: 104, column: 47, scope: !220)
!224 = !DILocation(line: 104, column: 58, scope: !220)
!225 = !DILocation(line: 104, column: 17, scope: !168)
!226 = !DILocation(line: 106, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !3, line: 105, column: 13)
!228 = !DILocation(line: 109, column: 13, scope: !168)
!229 = !DILocation(line: 109, column: 18, scope: !168)
!230 = !DILocation(line: 109, column: 28, scope: !168)
!231 = !DILocation(line: 109, column: 39, scope: !168)
!232 = !DILocation(line: 109, column: 26, scope: !168)
!233 = !DILocation(line: 109, column: 55, scope: !168)
!234 = !DILocation(line: 111, column: 30, scope: !168)
!235 = !DILocation(line: 111, column: 23, scope: !168)
!236 = !DILocation(line: 111, column: 21, scope: !168)
!237 = !DILocation(line: 112, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !168, file: !3, line: 112, column: 17)
!239 = !DILocation(line: 112, column: 17, scope: !168)
!240 = !DILocation(line: 114, column: 18, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 113, column: 13)
!242 = !DILocation(line: 114, column: 26, scope: !241)
!243 = !DILocation(line: 115, column: 13, scope: !241)
!244 = !DILocation(line: 116, column: 30, scope: !168)
!245 = !DILocation(line: 116, column: 23, scope: !168)
!246 = !DILocation(line: 116, column: 21, scope: !168)
!247 = !DILocation(line: 117, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !168, file: !3, line: 117, column: 17)
!249 = !DILocation(line: 117, column: 17, scope: !168)
!250 = !DILocation(line: 119, column: 18, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 118, column: 13)
!252 = !DILocation(line: 119, column: 26, scope: !251)
!253 = !DILocation(line: 120, column: 13, scope: !251)
!254 = !DILocation(line: 121, column: 9, scope: !168)
!255 = !DILocation(line: 123, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !134, file: !3, line: 123, column: 13)
!257 = !DILocation(line: 123, column: 26, scope: !256)
!258 = !DILocation(line: 123, column: 13, scope: !134)
!259 = !DILocation(line: 125, column: 26, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 124, column: 9)
!261 = !DILocation(line: 125, column: 13, scope: !260)
!262 = !DILocation(line: 126, column: 9, scope: !260)
!263 = !DILocation(line: 127, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !134, file: !3, line: 127, column: 13)
!265 = !DILocation(line: 127, column: 26, scope: !264)
!266 = !DILocation(line: 127, column: 13, scope: !134)
!267 = !DILocation(line: 129, column: 26, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 128, column: 9)
!269 = !DILocation(line: 129, column: 13, scope: !268)
!270 = !DILocation(line: 130, column: 9, scope: !268)
!271 = !DILocation(line: 138, column: 70, scope: !121)
!272 = !DILocation(line: 139, column: 68, scope: !121)
!273 = !DILocation(line: 139, column: 5, scope: !121)
!274 = !DILocation(line: 140, column: 1, scope: !121)
!275 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 153, type: !122, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!276 = !DILocalVariable(name: "data", scope: !275, file: !3, line: 155, type: !66)
!277 = !DILocation(line: 155, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !3, line: 156, type: !127)
!279 = !DILocation(line: 156, column: 10, scope: !275)
!280 = !DILocation(line: 157, column: 12, scope: !275)
!281 = !DILocation(line: 157, column: 10, scope: !275)
!282 = !DILocalVariable(name: "recvResult", scope: !283, file: !3, line: 163, type: !70)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 158, column: 5)
!284 = !DILocation(line: 163, column: 13, scope: !283)
!285 = !DILocalVariable(name: "service", scope: !283, file: !3, line: 164, type: !137)
!286 = !DILocation(line: 164, column: 28, scope: !283)
!287 = !DILocalVariable(name: "replace", scope: !283, file: !3, line: 165, type: !66)
!288 = !DILocation(line: 165, column: 15, scope: !283)
!289 = !DILocalVariable(name: "listenSocket", scope: !283, file: !3, line: 166, type: !70)
!290 = !DILocation(line: 166, column: 16, scope: !283)
!291 = !DILocalVariable(name: "acceptSocket", scope: !283, file: !3, line: 167, type: !70)
!292 = !DILocation(line: 167, column: 16, scope: !283)
!293 = !DILocalVariable(name: "dataLen", scope: !283, file: !3, line: 168, type: !160)
!294 = !DILocation(line: 168, column: 16, scope: !283)
!295 = !DILocation(line: 168, column: 33, scope: !283)
!296 = !DILocation(line: 168, column: 26, scope: !283)
!297 = !DILocation(line: 169, column: 9, scope: !283)
!298 = !DILocation(line: 179, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !283, file: !3, line: 170, column: 9)
!300 = !DILocation(line: 179, column: 26, scope: !299)
!301 = !DILocation(line: 180, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 180, column: 17)
!303 = !DILocation(line: 180, column: 30, scope: !302)
!304 = !DILocation(line: 180, column: 17, scope: !299)
!305 = !DILocation(line: 182, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 181, column: 13)
!307 = !DILocation(line: 184, column: 13, scope: !299)
!308 = !DILocation(line: 185, column: 21, scope: !299)
!309 = !DILocation(line: 185, column: 32, scope: !299)
!310 = !DILocation(line: 186, column: 21, scope: !299)
!311 = !DILocation(line: 186, column: 30, scope: !299)
!312 = !DILocation(line: 186, column: 37, scope: !299)
!313 = !DILocation(line: 187, column: 32, scope: !299)
!314 = !DILocation(line: 187, column: 21, scope: !299)
!315 = !DILocation(line: 187, column: 30, scope: !299)
!316 = !DILocation(line: 188, column: 22, scope: !317)
!317 = distinct !DILexicalBlock(scope: !299, file: !3, line: 188, column: 17)
!318 = !DILocation(line: 188, column: 36, scope: !317)
!319 = !DILocation(line: 188, column: 17, scope: !317)
!320 = !DILocation(line: 188, column: 81, scope: !317)
!321 = !DILocation(line: 188, column: 17, scope: !299)
!322 = !DILocation(line: 190, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !3, line: 189, column: 13)
!324 = !DILocation(line: 192, column: 24, scope: !325)
!325 = distinct !DILexicalBlock(scope: !299, file: !3, line: 192, column: 17)
!326 = !DILocation(line: 192, column: 17, scope: !325)
!327 = !DILocation(line: 192, column: 54, scope: !325)
!328 = !DILocation(line: 192, column: 17, scope: !299)
!329 = !DILocation(line: 194, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 193, column: 13)
!331 = !DILocation(line: 196, column: 35, scope: !299)
!332 = !DILocation(line: 196, column: 28, scope: !299)
!333 = !DILocation(line: 196, column: 26, scope: !299)
!334 = !DILocation(line: 197, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !299, file: !3, line: 197, column: 17)
!336 = !DILocation(line: 197, column: 30, scope: !335)
!337 = !DILocation(line: 197, column: 17, scope: !299)
!338 = !DILocation(line: 199, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 198, column: 13)
!340 = !DILocation(line: 202, column: 31, scope: !299)
!341 = !DILocation(line: 202, column: 54, scope: !299)
!342 = !DILocation(line: 202, column: 61, scope: !299)
!343 = !DILocation(line: 202, column: 59, scope: !299)
!344 = !DILocation(line: 202, column: 93, scope: !299)
!345 = !DILocation(line: 202, column: 91, scope: !299)
!346 = !DILocation(line: 202, column: 101, scope: !299)
!347 = !DILocation(line: 202, column: 84, scope: !299)
!348 = !DILocation(line: 202, column: 26, scope: !299)
!349 = !DILocation(line: 202, column: 24, scope: !299)
!350 = !DILocation(line: 203, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !299, file: !3, line: 203, column: 17)
!352 = !DILocation(line: 203, column: 28, scope: !351)
!353 = !DILocation(line: 203, column: 44, scope: !351)
!354 = !DILocation(line: 203, column: 47, scope: !351)
!355 = !DILocation(line: 203, column: 58, scope: !351)
!356 = !DILocation(line: 203, column: 17, scope: !299)
!357 = !DILocation(line: 205, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !3, line: 204, column: 13)
!359 = !DILocation(line: 208, column: 13, scope: !299)
!360 = !DILocation(line: 208, column: 18, scope: !299)
!361 = !DILocation(line: 208, column: 28, scope: !299)
!362 = !DILocation(line: 208, column: 39, scope: !299)
!363 = !DILocation(line: 208, column: 26, scope: !299)
!364 = !DILocation(line: 208, column: 55, scope: !299)
!365 = !DILocation(line: 210, column: 30, scope: !299)
!366 = !DILocation(line: 210, column: 23, scope: !299)
!367 = !DILocation(line: 210, column: 21, scope: !299)
!368 = !DILocation(line: 211, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !299, file: !3, line: 211, column: 17)
!370 = !DILocation(line: 211, column: 17, scope: !299)
!371 = !DILocation(line: 213, column: 18, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 212, column: 13)
!373 = !DILocation(line: 213, column: 26, scope: !372)
!374 = !DILocation(line: 214, column: 13, scope: !372)
!375 = !DILocation(line: 215, column: 30, scope: !299)
!376 = !DILocation(line: 215, column: 23, scope: !299)
!377 = !DILocation(line: 215, column: 21, scope: !299)
!378 = !DILocation(line: 216, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !299, file: !3, line: 216, column: 17)
!380 = !DILocation(line: 216, column: 17, scope: !299)
!381 = !DILocation(line: 218, column: 18, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 217, column: 13)
!383 = !DILocation(line: 218, column: 26, scope: !382)
!384 = !DILocation(line: 219, column: 13, scope: !382)
!385 = !DILocation(line: 220, column: 9, scope: !299)
!386 = !DILocation(line: 222, column: 13, scope: !387)
!387 = distinct !DILexicalBlock(scope: !283, file: !3, line: 222, column: 13)
!388 = !DILocation(line: 222, column: 26, scope: !387)
!389 = !DILocation(line: 222, column: 13, scope: !283)
!390 = !DILocation(line: 224, column: 26, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 223, column: 9)
!392 = !DILocation(line: 224, column: 13, scope: !391)
!393 = !DILocation(line: 225, column: 9, scope: !391)
!394 = !DILocation(line: 226, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !283, file: !3, line: 226, column: 13)
!396 = !DILocation(line: 226, column: 26, scope: !395)
!397 = !DILocation(line: 226, column: 13, scope: !283)
!398 = !DILocation(line: 228, column: 26, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 227, column: 9)
!400 = !DILocation(line: 228, column: 13, scope: !399)
!401 = !DILocation(line: 229, column: 9, scope: !399)
!402 = !DILocation(line: 237, column: 75, scope: !275)
!403 = !DILocation(line: 238, column: 73, scope: !275)
!404 = !DILocation(line: 238, column: 5, scope: !275)
!405 = !DILocation(line: 239, column: 1, scope: !275)
!406 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 243, type: !122, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!407 = !DILocalVariable(name: "data", scope: !406, file: !3, line: 245, type: !66)
!408 = !DILocation(line: 245, column: 12, scope: !406)
!409 = !DILocalVariable(name: "dataBuffer", scope: !406, file: !3, line: 246, type: !127)
!410 = !DILocation(line: 246, column: 10, scope: !406)
!411 = !DILocation(line: 247, column: 12, scope: !406)
!412 = !DILocation(line: 247, column: 10, scope: !406)
!413 = !DILocalVariable(name: "recvResult", scope: !414, file: !3, line: 253, type: !70)
!414 = distinct !DILexicalBlock(scope: !406, file: !3, line: 248, column: 5)
!415 = !DILocation(line: 253, column: 13, scope: !414)
!416 = !DILocalVariable(name: "service", scope: !414, file: !3, line: 254, type: !137)
!417 = !DILocation(line: 254, column: 28, scope: !414)
!418 = !DILocalVariable(name: "replace", scope: !414, file: !3, line: 255, type: !66)
!419 = !DILocation(line: 255, column: 15, scope: !414)
!420 = !DILocalVariable(name: "listenSocket", scope: !414, file: !3, line: 256, type: !70)
!421 = !DILocation(line: 256, column: 16, scope: !414)
!422 = !DILocalVariable(name: "acceptSocket", scope: !414, file: !3, line: 257, type: !70)
!423 = !DILocation(line: 257, column: 16, scope: !414)
!424 = !DILocalVariable(name: "dataLen", scope: !414, file: !3, line: 258, type: !160)
!425 = !DILocation(line: 258, column: 16, scope: !414)
!426 = !DILocation(line: 258, column: 33, scope: !414)
!427 = !DILocation(line: 258, column: 26, scope: !414)
!428 = !DILocation(line: 259, column: 9, scope: !414)
!429 = !DILocation(line: 269, column: 28, scope: !430)
!430 = distinct !DILexicalBlock(scope: !414, file: !3, line: 260, column: 9)
!431 = !DILocation(line: 269, column: 26, scope: !430)
!432 = !DILocation(line: 270, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 270, column: 17)
!434 = !DILocation(line: 270, column: 30, scope: !433)
!435 = !DILocation(line: 270, column: 17, scope: !430)
!436 = !DILocation(line: 272, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 271, column: 13)
!438 = !DILocation(line: 274, column: 13, scope: !430)
!439 = !DILocation(line: 275, column: 21, scope: !430)
!440 = !DILocation(line: 275, column: 32, scope: !430)
!441 = !DILocation(line: 276, column: 21, scope: !430)
!442 = !DILocation(line: 276, column: 30, scope: !430)
!443 = !DILocation(line: 276, column: 37, scope: !430)
!444 = !DILocation(line: 277, column: 32, scope: !430)
!445 = !DILocation(line: 277, column: 21, scope: !430)
!446 = !DILocation(line: 277, column: 30, scope: !430)
!447 = !DILocation(line: 278, column: 22, scope: !448)
!448 = distinct !DILexicalBlock(scope: !430, file: !3, line: 278, column: 17)
!449 = !DILocation(line: 278, column: 36, scope: !448)
!450 = !DILocation(line: 278, column: 17, scope: !448)
!451 = !DILocation(line: 278, column: 81, scope: !448)
!452 = !DILocation(line: 278, column: 17, scope: !430)
!453 = !DILocation(line: 280, column: 17, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !3, line: 279, column: 13)
!455 = !DILocation(line: 282, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !430, file: !3, line: 282, column: 17)
!457 = !DILocation(line: 282, column: 17, scope: !456)
!458 = !DILocation(line: 282, column: 54, scope: !456)
!459 = !DILocation(line: 282, column: 17, scope: !430)
!460 = !DILocation(line: 284, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !3, line: 283, column: 13)
!462 = !DILocation(line: 286, column: 35, scope: !430)
!463 = !DILocation(line: 286, column: 28, scope: !430)
!464 = !DILocation(line: 286, column: 26, scope: !430)
!465 = !DILocation(line: 287, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !430, file: !3, line: 287, column: 17)
!467 = !DILocation(line: 287, column: 30, scope: !466)
!468 = !DILocation(line: 287, column: 17, scope: !430)
!469 = !DILocation(line: 289, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 288, column: 13)
!471 = !DILocation(line: 292, column: 31, scope: !430)
!472 = !DILocation(line: 292, column: 54, scope: !430)
!473 = !DILocation(line: 292, column: 61, scope: !430)
!474 = !DILocation(line: 292, column: 59, scope: !430)
!475 = !DILocation(line: 292, column: 93, scope: !430)
!476 = !DILocation(line: 292, column: 91, scope: !430)
!477 = !DILocation(line: 292, column: 101, scope: !430)
!478 = !DILocation(line: 292, column: 84, scope: !430)
!479 = !DILocation(line: 292, column: 26, scope: !430)
!480 = !DILocation(line: 292, column: 24, scope: !430)
!481 = !DILocation(line: 293, column: 17, scope: !482)
!482 = distinct !DILexicalBlock(scope: !430, file: !3, line: 293, column: 17)
!483 = !DILocation(line: 293, column: 28, scope: !482)
!484 = !DILocation(line: 293, column: 44, scope: !482)
!485 = !DILocation(line: 293, column: 47, scope: !482)
!486 = !DILocation(line: 293, column: 58, scope: !482)
!487 = !DILocation(line: 293, column: 17, scope: !430)
!488 = !DILocation(line: 295, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !3, line: 294, column: 13)
!490 = !DILocation(line: 298, column: 13, scope: !430)
!491 = !DILocation(line: 298, column: 18, scope: !430)
!492 = !DILocation(line: 298, column: 28, scope: !430)
!493 = !DILocation(line: 298, column: 39, scope: !430)
!494 = !DILocation(line: 298, column: 26, scope: !430)
!495 = !DILocation(line: 298, column: 55, scope: !430)
!496 = !DILocation(line: 300, column: 30, scope: !430)
!497 = !DILocation(line: 300, column: 23, scope: !430)
!498 = !DILocation(line: 300, column: 21, scope: !430)
!499 = !DILocation(line: 301, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !430, file: !3, line: 301, column: 17)
!501 = !DILocation(line: 301, column: 17, scope: !430)
!502 = !DILocation(line: 303, column: 18, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 302, column: 13)
!504 = !DILocation(line: 303, column: 26, scope: !503)
!505 = !DILocation(line: 304, column: 13, scope: !503)
!506 = !DILocation(line: 305, column: 30, scope: !430)
!507 = !DILocation(line: 305, column: 23, scope: !430)
!508 = !DILocation(line: 305, column: 21, scope: !430)
!509 = !DILocation(line: 306, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !430, file: !3, line: 306, column: 17)
!511 = !DILocation(line: 306, column: 17, scope: !430)
!512 = !DILocation(line: 308, column: 18, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 307, column: 13)
!514 = !DILocation(line: 308, column: 26, scope: !513)
!515 = !DILocation(line: 309, column: 13, scope: !513)
!516 = !DILocation(line: 310, column: 9, scope: !430)
!517 = !DILocation(line: 312, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !414, file: !3, line: 312, column: 13)
!519 = !DILocation(line: 312, column: 26, scope: !518)
!520 = !DILocation(line: 312, column: 13, scope: !414)
!521 = !DILocation(line: 314, column: 26, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 313, column: 9)
!523 = !DILocation(line: 314, column: 13, scope: !522)
!524 = !DILocation(line: 315, column: 9, scope: !522)
!525 = !DILocation(line: 316, column: 13, scope: !526)
!526 = distinct !DILexicalBlock(scope: !414, file: !3, line: 316, column: 13)
!527 = !DILocation(line: 316, column: 26, scope: !526)
!528 = !DILocation(line: 316, column: 13, scope: !414)
!529 = !DILocation(line: 318, column: 26, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !3, line: 317, column: 9)
!531 = !DILocation(line: 318, column: 13, scope: !530)
!532 = !DILocation(line: 319, column: 9, scope: !530)
!533 = !DILocation(line: 327, column: 75, scope: !406)
!534 = !DILocation(line: 328, column: 73, scope: !406)
!535 = !DILocation(line: 328, column: 5, scope: !406)
!536 = !DILocation(line: 329, column: 1, scope: !406)
!537 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 333, type: !122, scopeLine: 334, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!538 = !DILocalVariable(name: "data", scope: !537, file: !3, line: 335, type: !66)
!539 = !DILocation(line: 335, column: 12, scope: !537)
!540 = !DILocalVariable(name: "dataBuffer", scope: !537, file: !3, line: 336, type: !127)
!541 = !DILocation(line: 336, column: 10, scope: !537)
!542 = !DILocation(line: 337, column: 12, scope: !537)
!543 = !DILocation(line: 337, column: 10, scope: !537)
!544 = !DILocation(line: 339, column: 12, scope: !537)
!545 = !DILocation(line: 339, column: 5, scope: !537)
!546 = !DILocation(line: 340, column: 74, scope: !537)
!547 = !DILocation(line: 341, column: 72, scope: !537)
!548 = !DILocation(line: 341, column: 5, scope: !537)
!549 = !DILocation(line: 342, column: 1, scope: !537)
!550 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good", scope: !3, file: !3, line: 344, type: !122, scopeLine: 345, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!551 = !DILocation(line: 346, column: 5, scope: !550)
!552 = !DILocation(line: 347, column: 5, scope: !550)
!553 = !DILocation(line: 348, column: 5, scope: !550)
!554 = !DILocation(line: 349, column: 1, scope: !550)
!555 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink", scope: !115, file: !115, line: 31, type: !556, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !66}
!558 = !DILocalVariable(name: "data", arg: 1, scope: !555, file: !115, line: 31, type: !66)
!559 = !DILocation(line: 31, column: 76, scope: !555)
!560 = !DILocation(line: 33, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !555, file: !115, line: 33, column: 8)
!562 = !DILocation(line: 33, column: 8, scope: !555)
!563 = !DILocalVariable(name: "i", scope: !564, file: !115, line: 36, type: !70)
!564 = distinct !DILexicalBlock(scope: !565, file: !115, line: 35, column: 9)
!565 = distinct !DILexicalBlock(scope: !561, file: !115, line: 34, column: 5)
!566 = !DILocation(line: 36, column: 17, scope: !564)
!567 = !DILocalVariable(name: "n", scope: !564, file: !115, line: 36, type: !70)
!568 = !DILocation(line: 36, column: 20, scope: !564)
!569 = !DILocalVariable(name: "intVariable", scope: !564, file: !115, line: 36, type: !70)
!570 = !DILocation(line: 36, column: 23, scope: !564)
!571 = !DILocation(line: 37, column: 24, scope: !572)
!572 = distinct !DILexicalBlock(scope: !564, file: !115, line: 37, column: 17)
!573 = !DILocation(line: 37, column: 17, scope: !572)
!574 = !DILocation(line: 37, column: 40, scope: !572)
!575 = !DILocation(line: 37, column: 17, scope: !564)
!576 = !DILocation(line: 40, column: 29, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !115, line: 38, column: 13)
!578 = !DILocation(line: 41, column: 24, scope: !579)
!579 = distinct !DILexicalBlock(scope: !577, file: !115, line: 41, column: 17)
!580 = !DILocation(line: 41, column: 22, scope: !579)
!581 = !DILocation(line: 41, column: 29, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !115, line: 41, column: 17)
!583 = !DILocation(line: 41, column: 33, scope: !582)
!584 = !DILocation(line: 41, column: 31, scope: !582)
!585 = !DILocation(line: 41, column: 17, scope: !579)
!586 = !DILocation(line: 44, column: 32, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !115, line: 42, column: 17)
!588 = !DILocation(line: 45, column: 17, scope: !587)
!589 = !DILocation(line: 41, column: 37, scope: !582)
!590 = !DILocation(line: 41, column: 17, scope: !582)
!591 = distinct !{!591, !585, !592, !593}
!592 = !DILocation(line: 45, column: 17, scope: !579)
!593 = !{!"llvm.loop.mustprogress"}
!594 = !DILocation(line: 46, column: 30, scope: !577)
!595 = !DILocation(line: 46, column: 17, scope: !577)
!596 = !DILocation(line: 47, column: 13, scope: !577)
!597 = !DILocation(line: 49, column: 5, scope: !565)
!598 = !DILocation(line: 50, column: 1, scope: !555)
!599 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink", scope: !115, file: !115, line: 62, type: !556, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!600 = !DILocalVariable(name: "data", arg: 1, scope: !599, file: !115, line: 62, type: !66)
!601 = !DILocation(line: 62, column: 81, scope: !599)
!602 = !DILocation(line: 64, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !115, line: 64, column: 8)
!604 = !DILocation(line: 64, column: 8, scope: !599)
!605 = !DILocation(line: 67, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !115, line: 65, column: 5)
!607 = !DILocation(line: 68, column: 5, scope: !606)
!608 = !DILocalVariable(name: "i", scope: !609, file: !115, line: 72, type: !70)
!609 = distinct !DILexicalBlock(scope: !610, file: !115, line: 71, column: 9)
!610 = distinct !DILexicalBlock(scope: !603, file: !115, line: 70, column: 5)
!611 = !DILocation(line: 72, column: 17, scope: !609)
!612 = !DILocalVariable(name: "n", scope: !609, file: !115, line: 72, type: !70)
!613 = !DILocation(line: 72, column: 20, scope: !609)
!614 = !DILocalVariable(name: "intVariable", scope: !609, file: !115, line: 72, type: !70)
!615 = !DILocation(line: 72, column: 23, scope: !609)
!616 = !DILocation(line: 73, column: 24, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !115, line: 73, column: 17)
!618 = !DILocation(line: 73, column: 17, scope: !617)
!619 = !DILocation(line: 73, column: 40, scope: !617)
!620 = !DILocation(line: 73, column: 17, scope: !609)
!621 = !DILocation(line: 76, column: 21, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !115, line: 76, column: 21)
!623 = distinct !DILexicalBlock(scope: !617, file: !115, line: 74, column: 13)
!624 = !DILocation(line: 76, column: 23, scope: !622)
!625 = !DILocation(line: 76, column: 21, scope: !623)
!626 = !DILocation(line: 78, column: 33, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !115, line: 77, column: 17)
!628 = !DILocation(line: 79, column: 28, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !115, line: 79, column: 21)
!630 = !DILocation(line: 79, column: 26, scope: !629)
!631 = !DILocation(line: 79, column: 33, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !115, line: 79, column: 21)
!633 = !DILocation(line: 79, column: 37, scope: !632)
!634 = !DILocation(line: 79, column: 35, scope: !632)
!635 = !DILocation(line: 79, column: 21, scope: !629)
!636 = !DILocation(line: 82, column: 36, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !115, line: 80, column: 21)
!638 = !DILocation(line: 83, column: 21, scope: !637)
!639 = !DILocation(line: 79, column: 41, scope: !632)
!640 = !DILocation(line: 79, column: 21, scope: !632)
!641 = distinct !{!641, !635, !642, !593}
!642 = !DILocation(line: 83, column: 21, scope: !629)
!643 = !DILocation(line: 84, column: 34, scope: !627)
!644 = !DILocation(line: 84, column: 21, scope: !627)
!645 = !DILocation(line: 85, column: 17, scope: !627)
!646 = !DILocation(line: 86, column: 13, scope: !623)
!647 = !DILocation(line: 89, column: 1, scope: !599)
!648 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink", scope: !115, file: !115, line: 92, type: !556, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!649 = !DILocalVariable(name: "data", arg: 1, scope: !648, file: !115, line: 92, type: !66)
!650 = !DILocation(line: 92, column: 81, scope: !648)
!651 = !DILocation(line: 94, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !115, line: 94, column: 8)
!653 = !DILocation(line: 94, column: 8, scope: !648)
!654 = !DILocalVariable(name: "i", scope: !655, file: !115, line: 97, type: !70)
!655 = distinct !DILexicalBlock(scope: !656, file: !115, line: 96, column: 9)
!656 = distinct !DILexicalBlock(scope: !652, file: !115, line: 95, column: 5)
!657 = !DILocation(line: 97, column: 17, scope: !655)
!658 = !DILocalVariable(name: "n", scope: !655, file: !115, line: 97, type: !70)
!659 = !DILocation(line: 97, column: 20, scope: !655)
!660 = !DILocalVariable(name: "intVariable", scope: !655, file: !115, line: 97, type: !70)
!661 = !DILocation(line: 97, column: 23, scope: !655)
!662 = !DILocation(line: 98, column: 24, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !115, line: 98, column: 17)
!664 = !DILocation(line: 98, column: 17, scope: !663)
!665 = !DILocation(line: 98, column: 40, scope: !663)
!666 = !DILocation(line: 98, column: 17, scope: !655)
!667 = !DILocation(line: 101, column: 21, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !115, line: 101, column: 21)
!669 = distinct !DILexicalBlock(scope: !663, file: !115, line: 99, column: 13)
!670 = !DILocation(line: 101, column: 23, scope: !668)
!671 = !DILocation(line: 101, column: 21, scope: !669)
!672 = !DILocation(line: 103, column: 33, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !115, line: 102, column: 17)
!674 = !DILocation(line: 104, column: 28, scope: !675)
!675 = distinct !DILexicalBlock(scope: !673, file: !115, line: 104, column: 21)
!676 = !DILocation(line: 104, column: 26, scope: !675)
!677 = !DILocation(line: 104, column: 33, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !115, line: 104, column: 21)
!679 = !DILocation(line: 104, column: 37, scope: !678)
!680 = !DILocation(line: 104, column: 35, scope: !678)
!681 = !DILocation(line: 104, column: 21, scope: !675)
!682 = !DILocation(line: 107, column: 36, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !115, line: 105, column: 21)
!684 = !DILocation(line: 108, column: 21, scope: !683)
!685 = !DILocation(line: 104, column: 41, scope: !678)
!686 = !DILocation(line: 104, column: 21, scope: !678)
!687 = distinct !{!687, !681, !688, !593}
!688 = !DILocation(line: 108, column: 21, scope: !675)
!689 = !DILocation(line: 109, column: 34, scope: !673)
!690 = !DILocation(line: 109, column: 21, scope: !673)
!691 = !DILocation(line: 110, column: 17, scope: !673)
!692 = !DILocation(line: 111, column: 13, scope: !669)
!693 = !DILocation(line: 113, column: 5, scope: !656)
!694 = !DILocation(line: 114, column: 1, scope: !648)
!695 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink", scope: !115, file: !115, line: 117, type: !556, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!696 = !DILocalVariable(name: "data", arg: 1, scope: !695, file: !115, line: 117, type: !66)
!697 = !DILocation(line: 117, column: 80, scope: !695)
!698 = !DILocation(line: 119, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !115, line: 119, column: 8)
!700 = !DILocation(line: 119, column: 8, scope: !695)
!701 = !DILocalVariable(name: "i", scope: !702, file: !115, line: 122, type: !70)
!702 = distinct !DILexicalBlock(scope: !703, file: !115, line: 121, column: 9)
!703 = distinct !DILexicalBlock(scope: !699, file: !115, line: 120, column: 5)
!704 = !DILocation(line: 122, column: 17, scope: !702)
!705 = !DILocalVariable(name: "n", scope: !702, file: !115, line: 122, type: !70)
!706 = !DILocation(line: 122, column: 20, scope: !702)
!707 = !DILocalVariable(name: "intVariable", scope: !702, file: !115, line: 122, type: !70)
!708 = !DILocation(line: 122, column: 23, scope: !702)
!709 = !DILocation(line: 123, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !115, line: 123, column: 17)
!711 = !DILocation(line: 123, column: 17, scope: !710)
!712 = !DILocation(line: 123, column: 40, scope: !710)
!713 = !DILocation(line: 123, column: 17, scope: !702)
!714 = !DILocation(line: 126, column: 29, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !115, line: 124, column: 13)
!716 = !DILocation(line: 127, column: 24, scope: !717)
!717 = distinct !DILexicalBlock(scope: !715, file: !115, line: 127, column: 17)
!718 = !DILocation(line: 127, column: 22, scope: !717)
!719 = !DILocation(line: 127, column: 29, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !115, line: 127, column: 17)
!721 = !DILocation(line: 127, column: 33, scope: !720)
!722 = !DILocation(line: 127, column: 31, scope: !720)
!723 = !DILocation(line: 127, column: 17, scope: !717)
!724 = !DILocation(line: 130, column: 32, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !115, line: 128, column: 17)
!726 = !DILocation(line: 131, column: 17, scope: !725)
!727 = !DILocation(line: 127, column: 37, scope: !720)
!728 = !DILocation(line: 127, column: 17, scope: !720)
!729 = distinct !{!729, !723, !730, !593}
!730 = !DILocation(line: 131, column: 17, scope: !717)
!731 = !DILocation(line: 132, column: 30, scope: !715)
!732 = !DILocation(line: 132, column: 17, scope: !715)
!733 = !DILocation(line: 133, column: 13, scope: !715)
!734 = !DILocation(line: 135, column: 5, scope: !703)
!735 = !DILocation(line: 136, column: 1, scope: !695)
!736 = distinct !DISubprogram(name: "printLine", scope: !78, file: !78, line: 11, type: !556, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!737 = !DILocalVariable(name: "line", arg: 1, scope: !736, file: !78, line: 11, type: !66)
!738 = !DILocation(line: 11, column: 25, scope: !736)
!739 = !DILocation(line: 13, column: 1, scope: !736)
!740 = !DILocation(line: 14, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !78, line: 14, column: 8)
!742 = !DILocation(line: 14, column: 13, scope: !741)
!743 = !DILocation(line: 14, column: 8, scope: !736)
!744 = !DILocation(line: 16, column: 24, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !78, line: 15, column: 5)
!746 = !DILocation(line: 16, column: 9, scope: !745)
!747 = !DILocation(line: 17, column: 5, scope: !745)
!748 = !DILocation(line: 18, column: 5, scope: !736)
!749 = !DILocation(line: 19, column: 1, scope: !736)
!750 = distinct !DISubprogram(name: "printSinkLine", scope: !78, file: !78, line: 20, type: !556, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!751 = !DILocalVariable(name: "line", arg: 1, scope: !750, file: !78, line: 20, type: !66)
!752 = !DILocation(line: 20, column: 29, scope: !750)
!753 = !DILocation(line: 22, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !78, line: 22, column: 8)
!755 = !DILocation(line: 22, column: 13, scope: !754)
!756 = !DILocation(line: 22, column: 8, scope: !750)
!757 = !DILocation(line: 24, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !78, line: 23, column: 5)
!759 = !DILocation(line: 24, column: 9, scope: !758)
!760 = !DILocation(line: 25, column: 5, scope: !758)
!761 = !DILocation(line: 26, column: 1, scope: !750)
!762 = distinct !DISubprogram(name: "printWLine", scope: !78, file: !78, line: 27, type: !763, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !161, line: 74, baseType: !70)
!767 = !DILocalVariable(name: "line", arg: 1, scope: !762, file: !78, line: 27, type: !765)
!768 = !DILocation(line: 27, column: 29, scope: !762)
!769 = !DILocation(line: 29, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !78, line: 29, column: 8)
!771 = !DILocation(line: 29, column: 13, scope: !770)
!772 = !DILocation(line: 29, column: 8, scope: !762)
!773 = !DILocation(line: 31, column: 27, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !78, line: 30, column: 5)
!775 = !DILocation(line: 31, column: 9, scope: !774)
!776 = !DILocation(line: 32, column: 5, scope: !774)
!777 = !DILocation(line: 33, column: 1, scope: !762)
!778 = distinct !DISubprogram(name: "printIntLine", scope: !78, file: !78, line: 35, type: !779, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !70}
!781 = !DILocalVariable(name: "intNumber", arg: 1, scope: !778, file: !78, line: 35, type: !70)
!782 = !DILocation(line: 35, column: 24, scope: !778)
!783 = !DILocation(line: 37, column: 20, scope: !778)
!784 = !DILocation(line: 37, column: 5, scope: !778)
!785 = !DILocation(line: 38, column: 1, scope: !778)
!786 = distinct !DISubprogram(name: "printShortLine", scope: !78, file: !78, line: 40, type: !787, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !789}
!789 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!790 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !786, file: !78, line: 40, type: !789)
!791 = !DILocation(line: 40, column: 28, scope: !786)
!792 = !DILocation(line: 42, column: 21, scope: !786)
!793 = !DILocation(line: 42, column: 5, scope: !786)
!794 = !DILocation(line: 43, column: 1, scope: !786)
!795 = distinct !DISubprogram(name: "printFloatLine", scope: !78, file: !78, line: 45, type: !796, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !798}
!798 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!799 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !795, file: !78, line: 45, type: !798)
!800 = !DILocation(line: 45, column: 28, scope: !795)
!801 = !DILocation(line: 47, column: 20, scope: !795)
!802 = !DILocation(line: 47, column: 5, scope: !795)
!803 = !DILocation(line: 48, column: 1, scope: !795)
!804 = distinct !DISubprogram(name: "printLongLine", scope: !78, file: !78, line: 50, type: !805, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !807}
!807 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!808 = !DILocalVariable(name: "longNumber", arg: 1, scope: !804, file: !78, line: 50, type: !807)
!809 = !DILocation(line: 50, column: 26, scope: !804)
!810 = !DILocation(line: 52, column: 21, scope: !804)
!811 = !DILocation(line: 52, column: 5, scope: !804)
!812 = !DILocation(line: 53, column: 1, scope: !804)
!813 = distinct !DISubprogram(name: "printLongLongLine", scope: !78, file: !78, line: 55, type: !814, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !816}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !817, line: 27, baseType: !818)
!817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !52, line: 44, baseType: !807)
!819 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !813, file: !78, line: 55, type: !816)
!820 = !DILocation(line: 55, column: 33, scope: !813)
!821 = !DILocation(line: 57, column: 29, scope: !813)
!822 = !DILocation(line: 57, column: 5, scope: !813)
!823 = !DILocation(line: 58, column: 1, scope: !813)
!824 = distinct !DISubprogram(name: "printSizeTLine", scope: !78, file: !78, line: 60, type: !825, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !160}
!827 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !824, file: !78, line: 60, type: !160)
!828 = !DILocation(line: 60, column: 29, scope: !824)
!829 = !DILocation(line: 62, column: 21, scope: !824)
!830 = !DILocation(line: 62, column: 5, scope: !824)
!831 = !DILocation(line: 63, column: 1, scope: !824)
!832 = distinct !DISubprogram(name: "printHexCharLine", scope: !78, file: !78, line: 65, type: !833, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !63}
!835 = !DILocalVariable(name: "charHex", arg: 1, scope: !832, file: !78, line: 65, type: !63)
!836 = !DILocation(line: 65, column: 29, scope: !832)
!837 = !DILocation(line: 67, column: 22, scope: !832)
!838 = !DILocation(line: 67, column: 5, scope: !832)
!839 = !DILocation(line: 68, column: 1, scope: !832)
!840 = distinct !DISubprogram(name: "printWcharLine", scope: !78, file: !78, line: 70, type: !841, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !766}
!843 = !DILocalVariable(name: "wideChar", arg: 1, scope: !840, file: !78, line: 70, type: !766)
!844 = !DILocation(line: 70, column: 29, scope: !840)
!845 = !DILocalVariable(name: "s", scope: !840, file: !78, line: 74, type: !846)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 64, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 2)
!849 = !DILocation(line: 74, column: 13, scope: !840)
!850 = !DILocation(line: 75, column: 16, scope: !840)
!851 = !DILocation(line: 75, column: 9, scope: !840)
!852 = !DILocation(line: 75, column: 14, scope: !840)
!853 = !DILocation(line: 76, column: 9, scope: !840)
!854 = !DILocation(line: 76, column: 14, scope: !840)
!855 = !DILocation(line: 77, column: 21, scope: !840)
!856 = !DILocation(line: 77, column: 5, scope: !840)
!857 = !DILocation(line: 78, column: 1, scope: !840)
!858 = distinct !DISubprogram(name: "printUnsignedLine", scope: !78, file: !78, line: 80, type: !859, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !7}
!861 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !858, file: !78, line: 80, type: !7)
!862 = !DILocation(line: 80, column: 33, scope: !858)
!863 = !DILocation(line: 82, column: 20, scope: !858)
!864 = !DILocation(line: 82, column: 5, scope: !858)
!865 = !DILocation(line: 83, column: 1, scope: !858)
!866 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !78, file: !78, line: 85, type: !867, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !97}
!869 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !866, file: !78, line: 85, type: !97)
!870 = !DILocation(line: 85, column: 45, scope: !866)
!871 = !DILocation(line: 87, column: 22, scope: !866)
!872 = !DILocation(line: 87, column: 5, scope: !866)
!873 = !DILocation(line: 88, column: 1, scope: !866)
!874 = distinct !DISubprogram(name: "printDoubleLine", scope: !78, file: !78, line: 90, type: !875, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !877}
!877 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!878 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !874, file: !78, line: 90, type: !877)
!879 = !DILocation(line: 90, column: 29, scope: !874)
!880 = !DILocation(line: 92, column: 20, scope: !874)
!881 = !DILocation(line: 92, column: 5, scope: !874)
!882 = !DILocation(line: 93, column: 1, scope: !874)
!883 = distinct !DISubprogram(name: "printStructLine", scope: !78, file: !78, line: 95, type: !884, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !888, line: 100, baseType: !889)
!888 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/source_code")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !888, line: 96, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !889, file: !888, line: 98, baseType: !70, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !889, file: !888, line: 99, baseType: !70, size: 32, offset: 32)
!893 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !883, file: !78, line: 95, type: !886)
!894 = !DILocation(line: 95, column: 40, scope: !883)
!895 = !DILocation(line: 97, column: 26, scope: !883)
!896 = !DILocation(line: 97, column: 47, scope: !883)
!897 = !DILocation(line: 97, column: 55, scope: !883)
!898 = !DILocation(line: 97, column: 76, scope: !883)
!899 = !DILocation(line: 97, column: 5, scope: !883)
!900 = !DILocation(line: 98, column: 1, scope: !883)
!901 = distinct !DISubprogram(name: "printBytesLine", scope: !78, file: !78, line: 100, type: !902, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904, !160}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!905 = !DILocalVariable(name: "bytes", arg: 1, scope: !901, file: !78, line: 100, type: !904)
!906 = !DILocation(line: 100, column: 38, scope: !901)
!907 = !DILocalVariable(name: "numBytes", arg: 2, scope: !901, file: !78, line: 100, type: !160)
!908 = !DILocation(line: 100, column: 52, scope: !901)
!909 = !DILocalVariable(name: "i", scope: !901, file: !78, line: 102, type: !160)
!910 = !DILocation(line: 102, column: 12, scope: !901)
!911 = !DILocation(line: 103, column: 12, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !78, line: 103, column: 5)
!913 = !DILocation(line: 103, column: 10, scope: !912)
!914 = !DILocation(line: 103, column: 17, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !78, line: 103, column: 5)
!916 = !DILocation(line: 103, column: 21, scope: !915)
!917 = !DILocation(line: 103, column: 19, scope: !915)
!918 = !DILocation(line: 103, column: 5, scope: !912)
!919 = !DILocation(line: 105, column: 24, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !78, line: 104, column: 5)
!921 = !DILocation(line: 105, column: 30, scope: !920)
!922 = !DILocation(line: 105, column: 9, scope: !920)
!923 = !DILocation(line: 106, column: 5, scope: !920)
!924 = !DILocation(line: 103, column: 31, scope: !915)
!925 = !DILocation(line: 103, column: 5, scope: !915)
!926 = distinct !{!926, !918, !927, !593}
!927 = !DILocation(line: 106, column: 5, scope: !912)
!928 = !DILocation(line: 107, column: 5, scope: !901)
!929 = !DILocation(line: 108, column: 1, scope: !901)
!930 = distinct !DISubprogram(name: "decodeHexChars", scope: !78, file: !78, line: 113, type: !931, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!931 = !DISubroutineType(types: !932)
!932 = !{!160, !904, !160, !66}
!933 = !DILocalVariable(name: "bytes", arg: 1, scope: !930, file: !78, line: 113, type: !904)
!934 = !DILocation(line: 113, column: 39, scope: !930)
!935 = !DILocalVariable(name: "numBytes", arg: 2, scope: !930, file: !78, line: 113, type: !160)
!936 = !DILocation(line: 113, column: 53, scope: !930)
!937 = !DILocalVariable(name: "hex", arg: 3, scope: !930, file: !78, line: 113, type: !66)
!938 = !DILocation(line: 113, column: 71, scope: !930)
!939 = !DILocalVariable(name: "numWritten", scope: !930, file: !78, line: 115, type: !160)
!940 = !DILocation(line: 115, column: 12, scope: !930)
!941 = !DILocation(line: 121, column: 5, scope: !930)
!942 = !DILocation(line: 121, column: 12, scope: !930)
!943 = !DILocation(line: 121, column: 25, scope: !930)
!944 = !DILocation(line: 121, column: 23, scope: !930)
!945 = !DILocation(line: 121, column: 34, scope: !930)
!946 = !DILocation(line: 121, column: 37, scope: !930)
!947 = !DILocation(line: 121, column: 67, scope: !930)
!948 = !DILocation(line: 121, column: 70, scope: !930)
!949 = !DILocation(line: 0, scope: !930)
!950 = !DILocalVariable(name: "byte", scope: !951, file: !78, line: 123, type: !70)
!951 = distinct !DILexicalBlock(scope: !930, file: !78, line: 122, column: 5)
!952 = !DILocation(line: 123, column: 13, scope: !951)
!953 = !DILocation(line: 124, column: 17, scope: !951)
!954 = !DILocation(line: 124, column: 25, scope: !951)
!955 = !DILocation(line: 124, column: 23, scope: !951)
!956 = !DILocation(line: 124, column: 9, scope: !951)
!957 = !DILocation(line: 125, column: 45, scope: !951)
!958 = !DILocation(line: 125, column: 29, scope: !951)
!959 = !DILocation(line: 125, column: 9, scope: !951)
!960 = !DILocation(line: 125, column: 15, scope: !951)
!961 = !DILocation(line: 125, column: 27, scope: !951)
!962 = !DILocation(line: 126, column: 9, scope: !951)
!963 = distinct !{!963, !941, !964, !593}
!964 = !DILocation(line: 127, column: 5, scope: !930)
!965 = !DILocation(line: 129, column: 12, scope: !930)
!966 = !DILocation(line: 129, column: 5, scope: !930)
!967 = distinct !DISubprogram(name: "decodeHexWChars", scope: !78, file: !78, line: 135, type: !968, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!968 = !DISubroutineType(types: !969)
!969 = !{!160, !904, !160, !765}
!970 = !DILocalVariable(name: "bytes", arg: 1, scope: !967, file: !78, line: 135, type: !904)
!971 = !DILocation(line: 135, column: 41, scope: !967)
!972 = !DILocalVariable(name: "numBytes", arg: 2, scope: !967, file: !78, line: 135, type: !160)
!973 = !DILocation(line: 135, column: 55, scope: !967)
!974 = !DILocalVariable(name: "hex", arg: 3, scope: !967, file: !78, line: 135, type: !765)
!975 = !DILocation(line: 135, column: 76, scope: !967)
!976 = !DILocalVariable(name: "numWritten", scope: !967, file: !78, line: 137, type: !160)
!977 = !DILocation(line: 137, column: 12, scope: !967)
!978 = !DILocation(line: 143, column: 5, scope: !967)
!979 = !DILocation(line: 143, column: 12, scope: !967)
!980 = !DILocation(line: 143, column: 25, scope: !967)
!981 = !DILocation(line: 143, column: 23, scope: !967)
!982 = !DILocation(line: 143, column: 34, scope: !967)
!983 = !DILocation(line: 143, column: 47, scope: !967)
!984 = !DILocation(line: 143, column: 55, scope: !967)
!985 = !DILocation(line: 143, column: 53, scope: !967)
!986 = !DILocation(line: 143, column: 37, scope: !967)
!987 = !DILocation(line: 143, column: 68, scope: !967)
!988 = !DILocation(line: 143, column: 81, scope: !967)
!989 = !DILocation(line: 143, column: 89, scope: !967)
!990 = !DILocation(line: 143, column: 87, scope: !967)
!991 = !DILocation(line: 143, column: 100, scope: !967)
!992 = !DILocation(line: 143, column: 71, scope: !967)
!993 = !DILocation(line: 0, scope: !967)
!994 = !DILocalVariable(name: "byte", scope: !995, file: !78, line: 145, type: !70)
!995 = distinct !DILexicalBlock(scope: !967, file: !78, line: 144, column: 5)
!996 = !DILocation(line: 145, column: 13, scope: !995)
!997 = !DILocation(line: 146, column: 18, scope: !995)
!998 = !DILocation(line: 146, column: 26, scope: !995)
!999 = !DILocation(line: 146, column: 24, scope: !995)
!1000 = !DILocation(line: 146, column: 9, scope: !995)
!1001 = !DILocation(line: 147, column: 45, scope: !995)
!1002 = !DILocation(line: 147, column: 29, scope: !995)
!1003 = !DILocation(line: 147, column: 9, scope: !995)
!1004 = !DILocation(line: 147, column: 15, scope: !995)
!1005 = !DILocation(line: 147, column: 27, scope: !995)
!1006 = !DILocation(line: 148, column: 9, scope: !995)
!1007 = distinct !{!1007, !978, !1008, !593}
!1008 = !DILocation(line: 149, column: 5, scope: !967)
!1009 = !DILocation(line: 151, column: 12, scope: !967)
!1010 = !DILocation(line: 151, column: 5, scope: !967)
!1011 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !78, file: !78, line: 156, type: !1012, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!70}
!1014 = !DILocation(line: 158, column: 5, scope: !1011)
!1015 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !78, file: !78, line: 161, type: !1012, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1016 = !DILocation(line: 163, column: 5, scope: !1015)
!1017 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !78, file: !78, line: 166, type: !1012, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1018 = !DILocation(line: 168, column: 13, scope: !1017)
!1019 = !DILocation(line: 168, column: 20, scope: !1017)
!1020 = !DILocation(line: 168, column: 5, scope: !1017)
!1021 = distinct !DISubprogram(name: "good1", scope: !78, file: !78, line: 187, type: !122, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1022 = !DILocation(line: 187, column: 16, scope: !1021)
!1023 = distinct !DISubprogram(name: "good2", scope: !78, file: !78, line: 188, type: !122, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1024 = !DILocation(line: 188, column: 16, scope: !1023)
!1025 = distinct !DISubprogram(name: "good3", scope: !78, file: !78, line: 189, type: !122, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1026 = !DILocation(line: 189, column: 16, scope: !1025)
!1027 = distinct !DISubprogram(name: "good4", scope: !78, file: !78, line: 190, type: !122, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1028 = !DILocation(line: 190, column: 16, scope: !1027)
!1029 = distinct !DISubprogram(name: "good5", scope: !78, file: !78, line: 191, type: !122, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1030 = !DILocation(line: 191, column: 16, scope: !1029)
!1031 = distinct !DISubprogram(name: "good6", scope: !78, file: !78, line: 192, type: !122, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1032 = !DILocation(line: 192, column: 16, scope: !1031)
!1033 = distinct !DISubprogram(name: "good7", scope: !78, file: !78, line: 193, type: !122, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1034 = !DILocation(line: 193, column: 16, scope: !1033)
!1035 = distinct !DISubprogram(name: "good8", scope: !78, file: !78, line: 194, type: !122, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1036 = !DILocation(line: 194, column: 16, scope: !1035)
!1037 = distinct !DISubprogram(name: "good9", scope: !78, file: !78, line: 195, type: !122, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1038 = !DILocation(line: 195, column: 16, scope: !1037)
!1039 = distinct !DISubprogram(name: "bad1", scope: !78, file: !78, line: 198, type: !122, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1040 = !DILocation(line: 198, column: 15, scope: !1039)
!1041 = distinct !DISubprogram(name: "bad2", scope: !78, file: !78, line: 199, type: !122, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1042 = !DILocation(line: 199, column: 15, scope: !1041)
!1043 = distinct !DISubprogram(name: "bad3", scope: !78, file: !78, line: 200, type: !122, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1044 = !DILocation(line: 200, column: 15, scope: !1043)
!1045 = distinct !DISubprogram(name: "bad4", scope: !78, file: !78, line: 201, type: !122, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1046 = !DILocation(line: 201, column: 15, scope: !1045)
!1047 = distinct !DISubprogram(name: "bad5", scope: !78, file: !78, line: 202, type: !122, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1048 = !DILocation(line: 202, column: 15, scope: !1047)
!1049 = distinct !DISubprogram(name: "bad6", scope: !78, file: !78, line: 203, type: !122, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1050 = !DILocation(line: 203, column: 15, scope: !1049)
!1051 = distinct !DISubprogram(name: "bad7", scope: !78, file: !78, line: 204, type: !122, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1052 = !DILocation(line: 204, column: 15, scope: !1051)
!1053 = distinct !DISubprogram(name: "bad8", scope: !78, file: !78, line: 205, type: !122, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1054 = !DILocation(line: 205, column: 15, scope: !1053)
!1055 = distinct !DISubprogram(name: "bad9", scope: !78, file: !78, line: 206, type: !122, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !116)
!1056 = !DILocation(line: 206, column: 15, scope: !1055)
