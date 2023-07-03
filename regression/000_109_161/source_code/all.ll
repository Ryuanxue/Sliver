; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !117, metadata !DIExpression()), !dbg !123
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
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !270
  store i8* %28, i8** %structFirst, align 8, !dbg !271
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !272
  %29 = load i8*, i8** %coerce.dive, align 8, !dbg !272
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_badSink(i8* %29), !dbg !272
  ret void, !dbg !273
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
define dso_local void @goodG2B() #0 !dbg !274 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !280
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !280
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !281
  store i8* %arraydecay, i8** %data, align 8, !dbg !282
  %1 = load i8*, i8** %data, align 8, !dbg !283
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !284
  %2 = load i8*, i8** %data, align 8, !dbg !285
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !286
  store i8* %2, i8** %structFirst, align 8, !dbg !287
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !288
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !288
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodG2BSink(i8* %3), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !290 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !296
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !296
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !297
  store i8* %arraydecay, i8** %data, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !306, metadata !DIExpression()), !dbg !307
  store i32 -1, i32* %listenSocket, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !308, metadata !DIExpression()), !dbg !309
  store i32 -1, i32* %acceptSocket, align 4, !dbg !309
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !310, metadata !DIExpression()), !dbg !311
  %1 = load i8*, i8** %data, align 8, !dbg !312
  %call = call i64 @strlen(i8* %1) #7, !dbg !313
  store i64 %call, i64* %dataLen, align 8, !dbg !311
  br label %do.body, !dbg !314

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !315
  store i32 %call1, i32* %listenSocket, align 4, !dbg !317
  %2 = load i32, i32* %listenSocket, align 4, !dbg !318
  %cmp = icmp eq i32 %2, -1, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !322

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !324
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !324
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !325
  store i16 2, i16* %sin_family, align 4, !dbg !326
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !327
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !328
  store i32 0, i32* %s_addr, align 4, !dbg !329
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !330
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !331
  store i16 %call2, i16* %sin_port, align 2, !dbg !332
  %4 = load i32, i32* %listenSocket, align 4, !dbg !333
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !335
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !336
  %cmp4 = icmp eq i32 %call3, -1, !dbg !337
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !338

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !339

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !341
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !343
  %cmp8 = icmp eq i32 %call7, -1, !dbg !344
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !345

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !346

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !348
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !349
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !350
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !351
  %cmp12 = icmp eq i32 %8, -1, !dbg !353
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !354

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !355

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !357
  %10 = load i8*, i8** %data, align 8, !dbg !358
  %11 = load i64, i64* %dataLen, align 8, !dbg !359
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !360
  %12 = load i64, i64* %dataLen, align 8, !dbg !361
  %sub = sub i64 100, %12, !dbg !362
  %sub15 = sub i64 %sub, 1, !dbg !363
  %mul = mul i64 1, %sub15, !dbg !364
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !365
  %conv = trunc i64 %call16 to i32, !dbg !365
  store i32 %conv, i32* %recvResult, align 4, !dbg !366
  %13 = load i32, i32* %recvResult, align 4, !dbg !367
  %cmp17 = icmp eq i32 %13, -1, !dbg !369
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !370

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !371
  %cmp19 = icmp eq i32 %14, 0, !dbg !372
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !373

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !374

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !376
  %16 = load i64, i64* %dataLen, align 8, !dbg !377
  %17 = load i32, i32* %recvResult, align 4, !dbg !378
  %conv23 = sext i32 %17 to i64, !dbg !378
  %div = udiv i64 %conv23, 1, !dbg !379
  %add = add i64 %16, %div, !dbg !380
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !376
  store i8 0, i8* %arrayidx, align 1, !dbg !381
  %18 = load i8*, i8** %data, align 8, !dbg !382
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !383
  store i8* %call24, i8** %replace, align 8, !dbg !384
  %19 = load i8*, i8** %replace, align 8, !dbg !385
  %tobool = icmp ne i8* %19, null, !dbg !385
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !387

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !388
  store i8 0, i8* %20, align 1, !dbg !390
  br label %if.end26, !dbg !391

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !392
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !393
  store i8* %call27, i8** %replace, align 8, !dbg !394
  %22 = load i8*, i8** %replace, align 8, !dbg !395
  %tobool28 = icmp ne i8* %22, null, !dbg !395
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !397

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !398
  store i8 0, i8* %23, align 1, !dbg !400
  br label %if.end30, !dbg !401

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !402

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !403
  %cmp31 = icmp ne i32 %24, -1, !dbg !405
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !406

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !407
  %call34 = call i32 @close(i32 %25), !dbg !409
  br label %if.end35, !dbg !410

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !411
  %cmp36 = icmp ne i32 %26, -1, !dbg !413
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !414

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !415
  %call39 = call i32 @close(i32 %27), !dbg !417
  br label %if.end40, !dbg !418

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !419
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !420
  store i8* %28, i8** %structFirst, align 8, !dbg !421
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !422
  %29 = load i8*, i8** %coerce.dive, align 8, !dbg !422
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink(i8* %29), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67_good() #0 !dbg !424 {
entry:
  call void @goodG2B(), !dbg !425
  call void @goodB2G(), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_badSink(i8* %myStruct.coerce) #0 !dbg !428 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i8** %data, metadata !437, metadata !DIExpression()), !dbg !438
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !439
  %0 = load i8*, i8** %structFirst, align 8, !dbg !439
  store i8* %0, i8** %data, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata i32* %i, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %n, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !445, metadata !DIExpression()), !dbg !446
  %1 = load i8*, i8** %data, align 8, !dbg !447
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !449
  %cmp = icmp eq i32 %call, 1, !dbg !450
  br i1 %cmp, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !452
  store i32 0, i32* %i, align 4, !dbg !454
  br label %for.cond, !dbg !456

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !457
  %3 = load i32, i32* %n, align 4, !dbg !459
  %cmp1 = icmp slt i32 %2, %3, !dbg !460
  br i1 %cmp1, label %for.body, label %for.end, !dbg !461

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !462
  %inc = add nsw i32 %4, 1, !dbg !462
  store i32 %inc, i32* %intVariable, align 4, !dbg !462
  br label %for.inc, !dbg !464

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !465
  %inc2 = add nsw i32 %5, 1, !dbg !465
  store i32 %inc2, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !466, !llvm.loop !467

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !470
  call void @printIntLine(i32 %6), !dbg !471
  br label %if.end, !dbg !472

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !473
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !474 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata i8** %data, metadata !477, metadata !DIExpression()), !dbg !478
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !479
  %0 = load i8*, i8** %structFirst, align 8, !dbg !479
  store i8* %0, i8** %data, align 8, !dbg !478
  call void @llvm.dbg.declare(metadata i32* %i, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i32* %n, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !485, metadata !DIExpression()), !dbg !486
  %1 = load i8*, i8** %data, align 8, !dbg !487
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !489
  %cmp = icmp eq i32 %call, 1, !dbg !490
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !492
  store i32 0, i32* %i, align 4, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !497
  %3 = load i32, i32* %n, align 4, !dbg !499
  %cmp1 = icmp slt i32 %2, %3, !dbg !500
  br i1 %cmp1, label %for.body, label %for.end, !dbg !501

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !502
  %inc = add nsw i32 %4, 1, !dbg !502
  store i32 %inc, i32* %intVariable, align 4, !dbg !502
  br label %for.inc, !dbg !504

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !505
  %inc2 = add nsw i32 %5, 1, !dbg !505
  store i32 %inc2, i32* %i, align 4, !dbg !505
  br label %for.cond, !dbg !506, !llvm.loop !507

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !509
  call void @printIntLine(i32 %6), !dbg !510
  br label %if.end, !dbg !511

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !513 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i8** %data, metadata !516, metadata !DIExpression()), !dbg !517
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !518
  %0 = load i8*, i8** %structFirst, align 8, !dbg !518
  store i8* %0, i8** %data, align 8, !dbg !517
  call void @llvm.dbg.declare(metadata i32* %i, metadata !519, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %n, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !524, metadata !DIExpression()), !dbg !525
  %1 = load i8*, i8** %data, align 8, !dbg !526
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !528
  %cmp = icmp eq i32 %call, 1, !dbg !529
  br i1 %cmp, label %if.then, label %if.end5, !dbg !530

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !531
  %cmp1 = icmp slt i32 %2, 10000, !dbg !534
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !535

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !536
  store i32 0, i32* %i, align 4, !dbg !538
  br label %for.cond, !dbg !540

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !541
  %4 = load i32, i32* %n, align 4, !dbg !543
  %cmp3 = icmp slt i32 %3, %4, !dbg !544
  br i1 %cmp3, label %for.body, label %for.end, !dbg !545

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !546
  %inc = add nsw i32 %5, 1, !dbg !546
  store i32 %inc, i32* %intVariable, align 4, !dbg !546
  br label %for.inc, !dbg !548

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !549
  %inc4 = add nsw i32 %6, 1, !dbg !549
  store i32 %inc4, i32* %i, align 4, !dbg !549
  br label %for.cond, !dbg !550, !llvm.loop !551

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !553
  call void @printIntLine(i32 %7), !dbg !554
  br label %if.end, !dbg !555

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !556

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !558 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !563
  %0 = load i8*, i8** %line.addr, align 8, !dbg !564
  %cmp = icmp ne i8* %0, null, !dbg !566
  br i1 %cmp, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !568
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !570
  br label %if.end, !dbg !571

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !572
  ret void, !dbg !573
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !574 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i8*, i8** %line.addr, align 8, !dbg !577
  %cmp = icmp ne i8* %0, null, !dbg !579
  br i1 %cmp, label %if.then, label %if.end, !dbg !580

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !583
  br label %if.end, !dbg !584

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !586 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load i32*, i32** %line.addr, align 8, !dbg !593
  %cmp = icmp ne i32* %0, null, !dbg !595
  br i1 %cmp, label %if.then, label %if.end, !dbg !596

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !597
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !599
  br label %if.end, !dbg !600

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !601
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !602 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !610 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !616
  %conv = sext i16 %0 to i32, !dbg !616
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !619 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !623, metadata !DIExpression()), !dbg !624
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !625
  %conv = fpext float %0 to double, !dbg !625
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !626
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !628 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !634
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !637 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !648 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !656 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !659, metadata !DIExpression()), !dbg !660
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !661
  %conv = sext i8 %0 to i32, !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !664 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !669, metadata !DIExpression()), !dbg !673
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !674
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !675
  store i32 %0, i32* %arrayidx, align 4, !dbg !676
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !677
  store i32 0, i32* %arrayidx1, align 4, !dbg !678
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !679
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !682 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !685, metadata !DIExpression()), !dbg !686
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !687
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !690 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !695
  %conv = zext i8 %0 to i32, !dbg !695
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !696
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !698 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !702, metadata !DIExpression()), !dbg !703
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !704
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !705
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !707 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !717, metadata !DIExpression()), !dbg !718
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !719
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !720
  %1 = load i32, i32* %intOne, align 4, !dbg !720
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !721
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !722
  %3 = load i32, i32* %intTwo, align 4, !dbg !722
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !723
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !725 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !731, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata i64* %i, metadata !733, metadata !DIExpression()), !dbg !734
  store i64 0, i64* %i, align 8, !dbg !735
  br label %for.cond, !dbg !737

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !738
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !740
  %cmp = icmp ult i64 %0, %1, !dbg !741
  br i1 %cmp, label %for.body, label %for.end, !dbg !742

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !743
  %3 = load i64, i64* %i, align 8, !dbg !745
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !743
  %4 = load i8, i8* %arrayidx, align 1, !dbg !743
  %conv = zext i8 %4 to i32, !dbg !743
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !746
  br label %for.inc, !dbg !747

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !748
  %inc = add i64 %5, 1, !dbg !748
  store i64 %inc, i64* %i, align 8, !dbg !748
  br label %for.cond, !dbg !749, !llvm.loop !750

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !752
  ret void, !dbg !753
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !754 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !757, metadata !DIExpression()), !dbg !758
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !759, metadata !DIExpression()), !dbg !760
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !763, metadata !DIExpression()), !dbg !764
  store i64 0, i64* %numWritten, align 8, !dbg !764
  br label %while.cond, !dbg !765

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !766
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !767
  %cmp = icmp ult i64 %0, %1, !dbg !768
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !769

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !770
  %2 = load i16*, i16** %call, align 8, !dbg !770
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !770
  %4 = load i64, i64* %numWritten, align 8, !dbg !770
  %mul = mul i64 2, %4, !dbg !770
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !770
  %5 = load i8, i8* %arrayidx, align 1, !dbg !770
  %conv = sext i8 %5 to i32, !dbg !770
  %idxprom = sext i32 %conv to i64, !dbg !770
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !770
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !770
  %conv2 = zext i16 %6 to i32, !dbg !770
  %and = and i32 %conv2, 4096, !dbg !770
  %tobool = icmp ne i32 %and, 0, !dbg !770
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !771

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !772
  %7 = load i16*, i16** %call3, align 8, !dbg !772
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !772
  %9 = load i64, i64* %numWritten, align 8, !dbg !772
  %mul4 = mul i64 2, %9, !dbg !772
  %add = add i64 %mul4, 1, !dbg !772
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !772
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !772
  %conv6 = sext i8 %10 to i32, !dbg !772
  %idxprom7 = sext i32 %conv6 to i64, !dbg !772
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !772
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !772
  %conv9 = zext i16 %11 to i32, !dbg !772
  %and10 = and i32 %conv9, 4096, !dbg !772
  %tobool11 = icmp ne i32 %and10, 0, !dbg !771
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !773
  br i1 %12, label %while.body, label %while.end, !dbg !765

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !774, metadata !DIExpression()), !dbg !776
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !777
  %14 = load i64, i64* %numWritten, align 8, !dbg !778
  %mul12 = mul i64 2, %14, !dbg !779
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !777
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !780
  %15 = load i32, i32* %byte, align 4, !dbg !781
  %conv15 = trunc i32 %15 to i8, !dbg !782
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !783
  %17 = load i64, i64* %numWritten, align 8, !dbg !784
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !783
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !785
  %18 = load i64, i64* %numWritten, align 8, !dbg !786
  %inc = add i64 %18, 1, !dbg !786
  store i64 %inc, i64* %numWritten, align 8, !dbg !786
  br label %while.cond, !dbg !765, !llvm.loop !787

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !789
  ret i64 %19, !dbg !790
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !791 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 0, i64* %numWritten, align 8, !dbg !801
  br label %while.cond, !dbg !802

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !803
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !804
  %cmp = icmp ult i64 %0, %1, !dbg !805
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !806

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !807
  %3 = load i64, i64* %numWritten, align 8, !dbg !808
  %mul = mul i64 2, %3, !dbg !809
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !807
  %4 = load i32, i32* %arrayidx, align 4, !dbg !807
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !810
  %tobool = icmp ne i32 %call, 0, !dbg !810
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !811

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !812
  %6 = load i64, i64* %numWritten, align 8, !dbg !813
  %mul1 = mul i64 2, %6, !dbg !814
  %add = add i64 %mul1, 1, !dbg !815
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !812
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !812
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !816
  %tobool4 = icmp ne i32 %call3, 0, !dbg !811
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !817
  br i1 %8, label %while.body, label %while.end, !dbg !802

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !818, metadata !DIExpression()), !dbg !820
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !821
  %10 = load i64, i64* %numWritten, align 8, !dbg !822
  %mul5 = mul i64 2, %10, !dbg !823
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !821
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !824
  %11 = load i32, i32* %byte, align 4, !dbg !825
  %conv = trunc i32 %11 to i8, !dbg !826
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !827
  %13 = load i64, i64* %numWritten, align 8, !dbg !828
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !827
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !829
  %14 = load i64, i64* %numWritten, align 8, !dbg !830
  %inc = add i64 %14, 1, !dbg !830
  store i64 %inc, i64* %numWritten, align 8, !dbg !830
  br label %while.cond, !dbg !802, !llvm.loop !831

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !833
  ret i64 %15, !dbg !834
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !835 {
entry:
  ret i32 1, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !839 {
entry:
  ret i32 0, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !841 {
entry:
  %call = call i32 @rand() #8, !dbg !842
  %rem = srem i32 %call, 2, !dbg !843
  ret i32 %rem, !dbg !844
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !849 {
entry:
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !851 {
entry:
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !857 {
entry:
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !859 {
entry:
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !861 {
entry:
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !863 {
entry:
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !865 {
entry:
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !867 {
entry:
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !869 {
entry:
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !871 {
entry:
  ret void, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !873 {
entry:
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !879 {
entry:
  ret void, !dbg !880
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

!llvm.dbg.cu = !{!44, !105, !2}
!llvm.ident = !{!108, !108, !108}
!llvm.module.flags = !{!109, !110, !111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !88, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/source_code")
!46 = !{!47, !59}
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !48, line: 24, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 40, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!62 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!66 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!68 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!69 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!70 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!71 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!72 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!74 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!75 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!76 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!77 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!78 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!79 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!80 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!81 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!82 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!83 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!84 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!85 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!86 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!87 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!88 = !{!89, !94, !42}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !7)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !96, line: 178, size: 128, elements: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !95, file: !96, line: 180, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !100, line: 28, baseType: !24)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !95, file: !96, line: 181, baseType: !102, size: 112, offset: 16)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 14)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67_bad", scope: !45, file: !45, line: 53, type: !113, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 55, type: !42)
!116 = !DILocation(line: 55, column: 12, scope: !112)
!117 = !DILocalVariable(name: "myStruct", scope: !112, file: !45, line: 56, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !119, line: 8, baseType: !120)
!119 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/source_code")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !119, line: 5, size: 64, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !120, file: !119, line: 7, baseType: !42, size: 64)
!123 = !DILocation(line: 56, column: 71, scope: !112)
!124 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 57, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 100)
!128 = !DILocation(line: 57, column: 10, scope: !112)
!129 = !DILocation(line: 58, column: 12, scope: !112)
!130 = !DILocation(line: 58, column: 10, scope: !112)
!131 = !DILocalVariable(name: "recvResult", scope: !132, file: !45, line: 64, type: !23)
!132 = distinct !DILexicalBlock(scope: !112, file: !45, line: 59, column: 5)
!133 = !DILocation(line: 64, column: 13, scope: !132)
!134 = !DILocalVariable(name: "service", scope: !132, file: !45, line: 65, type: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !136)
!136 = !{!137, !138, !142, !146}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !135, file: !60, line: 240, baseType: !99, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !135, file: !60, line: 241, baseType: !139, size: 16, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !135, file: !60, line: 242, baseType: !143, size: 32, offset: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !143, file: !60, line: 33, baseType: !89, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !135, file: !60, line: 245, baseType: !147, size: 64, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DILocation(line: 65, column: 28, scope: !132)
!151 = !DILocalVariable(name: "replace", scope: !132, file: !45, line: 66, type: !42)
!152 = !DILocation(line: 66, column: 15, scope: !132)
!153 = !DILocalVariable(name: "listenSocket", scope: !132, file: !45, line: 67, type: !23)
!154 = !DILocation(line: 67, column: 16, scope: !132)
!155 = !DILocalVariable(name: "acceptSocket", scope: !132, file: !45, line: 68, type: !23)
!156 = !DILocation(line: 68, column: 16, scope: !132)
!157 = !DILocalVariable(name: "dataLen", scope: !132, file: !45, line: 69, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!160 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DILocation(line: 69, column: 16, scope: !132)
!162 = !DILocation(line: 69, column: 33, scope: !132)
!163 = !DILocation(line: 69, column: 26, scope: !132)
!164 = !DILocation(line: 70, column: 9, scope: !132)
!165 = !DILocation(line: 80, column: 28, scope: !166)
!166 = distinct !DILexicalBlock(scope: !132, file: !45, line: 71, column: 9)
!167 = !DILocation(line: 80, column: 26, scope: !166)
!168 = !DILocation(line: 81, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !45, line: 81, column: 17)
!170 = !DILocation(line: 81, column: 30, scope: !169)
!171 = !DILocation(line: 81, column: 17, scope: !166)
!172 = !DILocation(line: 83, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !45, line: 82, column: 13)
!174 = !DILocation(line: 85, column: 13, scope: !166)
!175 = !DILocation(line: 86, column: 21, scope: !166)
!176 = !DILocation(line: 86, column: 32, scope: !166)
!177 = !DILocation(line: 87, column: 21, scope: !166)
!178 = !DILocation(line: 87, column: 30, scope: !166)
!179 = !DILocation(line: 87, column: 37, scope: !166)
!180 = !DILocation(line: 88, column: 32, scope: !166)
!181 = !DILocation(line: 88, column: 21, scope: !166)
!182 = !DILocation(line: 88, column: 30, scope: !166)
!183 = !DILocation(line: 89, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !166, file: !45, line: 89, column: 17)
!185 = !DILocation(line: 89, column: 36, scope: !184)
!186 = !DILocation(line: 89, column: 17, scope: !184)
!187 = !DILocation(line: 89, column: 81, scope: !184)
!188 = !DILocation(line: 89, column: 17, scope: !166)
!189 = !DILocation(line: 91, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !45, line: 90, column: 13)
!191 = !DILocation(line: 93, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !45, line: 93, column: 17)
!193 = !DILocation(line: 93, column: 17, scope: !192)
!194 = !DILocation(line: 93, column: 54, scope: !192)
!195 = !DILocation(line: 93, column: 17, scope: !166)
!196 = !DILocation(line: 95, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !45, line: 94, column: 13)
!198 = !DILocation(line: 97, column: 35, scope: !166)
!199 = !DILocation(line: 97, column: 28, scope: !166)
!200 = !DILocation(line: 97, column: 26, scope: !166)
!201 = !DILocation(line: 98, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !166, file: !45, line: 98, column: 17)
!203 = !DILocation(line: 98, column: 30, scope: !202)
!204 = !DILocation(line: 98, column: 17, scope: !166)
!205 = !DILocation(line: 100, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !45, line: 99, column: 13)
!207 = !DILocation(line: 103, column: 31, scope: !166)
!208 = !DILocation(line: 103, column: 54, scope: !166)
!209 = !DILocation(line: 103, column: 61, scope: !166)
!210 = !DILocation(line: 103, column: 59, scope: !166)
!211 = !DILocation(line: 103, column: 93, scope: !166)
!212 = !DILocation(line: 103, column: 91, scope: !166)
!213 = !DILocation(line: 103, column: 101, scope: !166)
!214 = !DILocation(line: 103, column: 84, scope: !166)
!215 = !DILocation(line: 103, column: 26, scope: !166)
!216 = !DILocation(line: 103, column: 24, scope: !166)
!217 = !DILocation(line: 104, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !166, file: !45, line: 104, column: 17)
!219 = !DILocation(line: 104, column: 28, scope: !218)
!220 = !DILocation(line: 104, column: 44, scope: !218)
!221 = !DILocation(line: 104, column: 47, scope: !218)
!222 = !DILocation(line: 104, column: 58, scope: !218)
!223 = !DILocation(line: 104, column: 17, scope: !166)
!224 = !DILocation(line: 106, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !45, line: 105, column: 13)
!226 = !DILocation(line: 109, column: 13, scope: !166)
!227 = !DILocation(line: 109, column: 18, scope: !166)
!228 = !DILocation(line: 109, column: 28, scope: !166)
!229 = !DILocation(line: 109, column: 39, scope: !166)
!230 = !DILocation(line: 109, column: 26, scope: !166)
!231 = !DILocation(line: 109, column: 55, scope: !166)
!232 = !DILocation(line: 111, column: 30, scope: !166)
!233 = !DILocation(line: 111, column: 23, scope: !166)
!234 = !DILocation(line: 111, column: 21, scope: !166)
!235 = !DILocation(line: 112, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !166, file: !45, line: 112, column: 17)
!237 = !DILocation(line: 112, column: 17, scope: !166)
!238 = !DILocation(line: 114, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !45, line: 113, column: 13)
!240 = !DILocation(line: 114, column: 26, scope: !239)
!241 = !DILocation(line: 115, column: 13, scope: !239)
!242 = !DILocation(line: 116, column: 30, scope: !166)
!243 = !DILocation(line: 116, column: 23, scope: !166)
!244 = !DILocation(line: 116, column: 21, scope: !166)
!245 = !DILocation(line: 117, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !166, file: !45, line: 117, column: 17)
!247 = !DILocation(line: 117, column: 17, scope: !166)
!248 = !DILocation(line: 119, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !45, line: 118, column: 13)
!250 = !DILocation(line: 119, column: 26, scope: !249)
!251 = !DILocation(line: 120, column: 13, scope: !249)
!252 = !DILocation(line: 121, column: 9, scope: !166)
!253 = !DILocation(line: 123, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !132, file: !45, line: 123, column: 13)
!255 = !DILocation(line: 123, column: 26, scope: !254)
!256 = !DILocation(line: 123, column: 13, scope: !132)
!257 = !DILocation(line: 125, column: 26, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !45, line: 124, column: 9)
!259 = !DILocation(line: 125, column: 13, scope: !258)
!260 = !DILocation(line: 126, column: 9, scope: !258)
!261 = !DILocation(line: 127, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !132, file: !45, line: 127, column: 13)
!263 = !DILocation(line: 127, column: 26, scope: !262)
!264 = !DILocation(line: 127, column: 13, scope: !132)
!265 = !DILocation(line: 129, column: 26, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !45, line: 128, column: 9)
!267 = !DILocation(line: 129, column: 13, scope: !266)
!268 = !DILocation(line: 130, column: 9, scope: !266)
!269 = !DILocation(line: 138, column: 28, scope: !112)
!270 = !DILocation(line: 138, column: 14, scope: !112)
!271 = !DILocation(line: 138, column: 26, scope: !112)
!272 = !DILocation(line: 139, column: 5, scope: !112)
!273 = !DILocation(line: 140, column: 1, scope: !112)
!274 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 148, type: !113, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!275 = !DILocalVariable(name: "data", scope: !274, file: !45, line: 150, type: !42)
!276 = !DILocation(line: 150, column: 12, scope: !274)
!277 = !DILocalVariable(name: "myStruct", scope: !274, file: !45, line: 151, type: !118)
!278 = !DILocation(line: 151, column: 71, scope: !274)
!279 = !DILocalVariable(name: "dataBuffer", scope: !274, file: !45, line: 152, type: !125)
!280 = !DILocation(line: 152, column: 10, scope: !274)
!281 = !DILocation(line: 153, column: 12, scope: !274)
!282 = !DILocation(line: 153, column: 10, scope: !274)
!283 = !DILocation(line: 155, column: 12, scope: !274)
!284 = !DILocation(line: 155, column: 5, scope: !274)
!285 = !DILocation(line: 156, column: 28, scope: !274)
!286 = !DILocation(line: 156, column: 14, scope: !274)
!287 = !DILocation(line: 156, column: 26, scope: !274)
!288 = !DILocation(line: 157, column: 5, scope: !274)
!289 = !DILocation(line: 158, column: 1, scope: !274)
!290 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 162, type: !113, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!291 = !DILocalVariable(name: "data", scope: !290, file: !45, line: 164, type: !42)
!292 = !DILocation(line: 164, column: 12, scope: !290)
!293 = !DILocalVariable(name: "myStruct", scope: !290, file: !45, line: 165, type: !118)
!294 = !DILocation(line: 165, column: 71, scope: !290)
!295 = !DILocalVariable(name: "dataBuffer", scope: !290, file: !45, line: 166, type: !125)
!296 = !DILocation(line: 166, column: 10, scope: !290)
!297 = !DILocation(line: 167, column: 12, scope: !290)
!298 = !DILocation(line: 167, column: 10, scope: !290)
!299 = !DILocalVariable(name: "recvResult", scope: !300, file: !45, line: 173, type: !23)
!300 = distinct !DILexicalBlock(scope: !290, file: !45, line: 168, column: 5)
!301 = !DILocation(line: 173, column: 13, scope: !300)
!302 = !DILocalVariable(name: "service", scope: !300, file: !45, line: 174, type: !135)
!303 = !DILocation(line: 174, column: 28, scope: !300)
!304 = !DILocalVariable(name: "replace", scope: !300, file: !45, line: 175, type: !42)
!305 = !DILocation(line: 175, column: 15, scope: !300)
!306 = !DILocalVariable(name: "listenSocket", scope: !300, file: !45, line: 176, type: !23)
!307 = !DILocation(line: 176, column: 16, scope: !300)
!308 = !DILocalVariable(name: "acceptSocket", scope: !300, file: !45, line: 177, type: !23)
!309 = !DILocation(line: 177, column: 16, scope: !300)
!310 = !DILocalVariable(name: "dataLen", scope: !300, file: !45, line: 178, type: !158)
!311 = !DILocation(line: 178, column: 16, scope: !300)
!312 = !DILocation(line: 178, column: 33, scope: !300)
!313 = !DILocation(line: 178, column: 26, scope: !300)
!314 = !DILocation(line: 179, column: 9, scope: !300)
!315 = !DILocation(line: 189, column: 28, scope: !316)
!316 = distinct !DILexicalBlock(scope: !300, file: !45, line: 180, column: 9)
!317 = !DILocation(line: 189, column: 26, scope: !316)
!318 = !DILocation(line: 190, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !45, line: 190, column: 17)
!320 = !DILocation(line: 190, column: 30, scope: !319)
!321 = !DILocation(line: 190, column: 17, scope: !316)
!322 = !DILocation(line: 192, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !45, line: 191, column: 13)
!324 = !DILocation(line: 194, column: 13, scope: !316)
!325 = !DILocation(line: 195, column: 21, scope: !316)
!326 = !DILocation(line: 195, column: 32, scope: !316)
!327 = !DILocation(line: 196, column: 21, scope: !316)
!328 = !DILocation(line: 196, column: 30, scope: !316)
!329 = !DILocation(line: 196, column: 37, scope: !316)
!330 = !DILocation(line: 197, column: 32, scope: !316)
!331 = !DILocation(line: 197, column: 21, scope: !316)
!332 = !DILocation(line: 197, column: 30, scope: !316)
!333 = !DILocation(line: 198, column: 22, scope: !334)
!334 = distinct !DILexicalBlock(scope: !316, file: !45, line: 198, column: 17)
!335 = !DILocation(line: 198, column: 36, scope: !334)
!336 = !DILocation(line: 198, column: 17, scope: !334)
!337 = !DILocation(line: 198, column: 81, scope: !334)
!338 = !DILocation(line: 198, column: 17, scope: !316)
!339 = !DILocation(line: 200, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !334, file: !45, line: 199, column: 13)
!341 = !DILocation(line: 202, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !316, file: !45, line: 202, column: 17)
!343 = !DILocation(line: 202, column: 17, scope: !342)
!344 = !DILocation(line: 202, column: 54, scope: !342)
!345 = !DILocation(line: 202, column: 17, scope: !316)
!346 = !DILocation(line: 204, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !45, line: 203, column: 13)
!348 = !DILocation(line: 206, column: 35, scope: !316)
!349 = !DILocation(line: 206, column: 28, scope: !316)
!350 = !DILocation(line: 206, column: 26, scope: !316)
!351 = !DILocation(line: 207, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !316, file: !45, line: 207, column: 17)
!353 = !DILocation(line: 207, column: 30, scope: !352)
!354 = !DILocation(line: 207, column: 17, scope: !316)
!355 = !DILocation(line: 209, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !45, line: 208, column: 13)
!357 = !DILocation(line: 212, column: 31, scope: !316)
!358 = !DILocation(line: 212, column: 54, scope: !316)
!359 = !DILocation(line: 212, column: 61, scope: !316)
!360 = !DILocation(line: 212, column: 59, scope: !316)
!361 = !DILocation(line: 212, column: 93, scope: !316)
!362 = !DILocation(line: 212, column: 91, scope: !316)
!363 = !DILocation(line: 212, column: 101, scope: !316)
!364 = !DILocation(line: 212, column: 84, scope: !316)
!365 = !DILocation(line: 212, column: 26, scope: !316)
!366 = !DILocation(line: 212, column: 24, scope: !316)
!367 = !DILocation(line: 213, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !316, file: !45, line: 213, column: 17)
!369 = !DILocation(line: 213, column: 28, scope: !368)
!370 = !DILocation(line: 213, column: 44, scope: !368)
!371 = !DILocation(line: 213, column: 47, scope: !368)
!372 = !DILocation(line: 213, column: 58, scope: !368)
!373 = !DILocation(line: 213, column: 17, scope: !316)
!374 = !DILocation(line: 215, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !45, line: 214, column: 13)
!376 = !DILocation(line: 218, column: 13, scope: !316)
!377 = !DILocation(line: 218, column: 18, scope: !316)
!378 = !DILocation(line: 218, column: 28, scope: !316)
!379 = !DILocation(line: 218, column: 39, scope: !316)
!380 = !DILocation(line: 218, column: 26, scope: !316)
!381 = !DILocation(line: 218, column: 55, scope: !316)
!382 = !DILocation(line: 220, column: 30, scope: !316)
!383 = !DILocation(line: 220, column: 23, scope: !316)
!384 = !DILocation(line: 220, column: 21, scope: !316)
!385 = !DILocation(line: 221, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !316, file: !45, line: 221, column: 17)
!387 = !DILocation(line: 221, column: 17, scope: !316)
!388 = !DILocation(line: 223, column: 18, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !45, line: 222, column: 13)
!390 = !DILocation(line: 223, column: 26, scope: !389)
!391 = !DILocation(line: 224, column: 13, scope: !389)
!392 = !DILocation(line: 225, column: 30, scope: !316)
!393 = !DILocation(line: 225, column: 23, scope: !316)
!394 = !DILocation(line: 225, column: 21, scope: !316)
!395 = !DILocation(line: 226, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !316, file: !45, line: 226, column: 17)
!397 = !DILocation(line: 226, column: 17, scope: !316)
!398 = !DILocation(line: 228, column: 18, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !45, line: 227, column: 13)
!400 = !DILocation(line: 228, column: 26, scope: !399)
!401 = !DILocation(line: 229, column: 13, scope: !399)
!402 = !DILocation(line: 230, column: 9, scope: !316)
!403 = !DILocation(line: 232, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !300, file: !45, line: 232, column: 13)
!405 = !DILocation(line: 232, column: 26, scope: !404)
!406 = !DILocation(line: 232, column: 13, scope: !300)
!407 = !DILocation(line: 234, column: 26, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !45, line: 233, column: 9)
!409 = !DILocation(line: 234, column: 13, scope: !408)
!410 = !DILocation(line: 235, column: 9, scope: !408)
!411 = !DILocation(line: 236, column: 13, scope: !412)
!412 = distinct !DILexicalBlock(scope: !300, file: !45, line: 236, column: 13)
!413 = !DILocation(line: 236, column: 26, scope: !412)
!414 = !DILocation(line: 236, column: 13, scope: !300)
!415 = !DILocation(line: 238, column: 26, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !45, line: 237, column: 9)
!417 = !DILocation(line: 238, column: 13, scope: !416)
!418 = !DILocation(line: 239, column: 9, scope: !416)
!419 = !DILocation(line: 247, column: 28, scope: !290)
!420 = !DILocation(line: 247, column: 14, scope: !290)
!421 = !DILocation(line: 247, column: 26, scope: !290)
!422 = !DILocation(line: 248, column: 5, scope: !290)
!423 = !DILocation(line: 249, column: 1, scope: !290)
!424 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67_good", scope: !45, file: !45, line: 251, type: !113, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!425 = !DILocation(line: 253, column: 5, scope: !424)
!426 = !DILocation(line: 254, column: 5, scope: !424)
!427 = !DILocation(line: 255, column: 1, scope: !424)
!428 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_badSink", scope: !106, file: !106, line: 54, type: !429, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !106, line: 50, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !106, line: 47, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !432, file: !106, line: 49, baseType: !42, size: 64)
!435 = !DILocalVariable(name: "myStruct", arg: 1, scope: !428, file: !106, line: 54, type: !431)
!436 = !DILocation(line: 54, column: 136, scope: !428)
!437 = !DILocalVariable(name: "data", scope: !428, file: !106, line: 56, type: !42)
!438 = !DILocation(line: 56, column: 12, scope: !428)
!439 = !DILocation(line: 56, column: 28, scope: !428)
!440 = !DILocalVariable(name: "i", scope: !441, file: !106, line: 58, type: !23)
!441 = distinct !DILexicalBlock(scope: !428, file: !106, line: 57, column: 5)
!442 = !DILocation(line: 58, column: 13, scope: !441)
!443 = !DILocalVariable(name: "n", scope: !441, file: !106, line: 58, type: !23)
!444 = !DILocation(line: 58, column: 16, scope: !441)
!445 = !DILocalVariable(name: "intVariable", scope: !441, file: !106, line: 58, type: !23)
!446 = !DILocation(line: 58, column: 19, scope: !441)
!447 = !DILocation(line: 59, column: 20, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !106, line: 59, column: 13)
!449 = !DILocation(line: 59, column: 13, scope: !448)
!450 = !DILocation(line: 59, column: 36, scope: !448)
!451 = !DILocation(line: 59, column: 13, scope: !441)
!452 = !DILocation(line: 62, column: 25, scope: !453)
!453 = distinct !DILexicalBlock(scope: !448, file: !106, line: 60, column: 9)
!454 = !DILocation(line: 63, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !106, line: 63, column: 13)
!456 = !DILocation(line: 63, column: 18, scope: !455)
!457 = !DILocation(line: 63, column: 25, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !106, line: 63, column: 13)
!459 = !DILocation(line: 63, column: 29, scope: !458)
!460 = !DILocation(line: 63, column: 27, scope: !458)
!461 = !DILocation(line: 63, column: 13, scope: !455)
!462 = !DILocation(line: 66, column: 28, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !106, line: 64, column: 13)
!464 = !DILocation(line: 67, column: 13, scope: !463)
!465 = !DILocation(line: 63, column: 33, scope: !458)
!466 = !DILocation(line: 63, column: 13, scope: !458)
!467 = distinct !{!467, !461, !468, !469}
!468 = !DILocation(line: 67, column: 13, scope: !455)
!469 = !{!"llvm.loop.mustprogress"}
!470 = !DILocation(line: 68, column: 26, scope: !453)
!471 = !DILocation(line: 68, column: 13, scope: !453)
!472 = !DILocation(line: 69, column: 9, scope: !453)
!473 = !DILocation(line: 71, column: 1, scope: !428)
!474 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodG2BSink", scope: !106, file: !106, line: 78, type: !429, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!475 = !DILocalVariable(name: "myStruct", arg: 1, scope: !474, file: !106, line: 78, type: !431)
!476 = !DILocation(line: 78, column: 140, scope: !474)
!477 = !DILocalVariable(name: "data", scope: !474, file: !106, line: 80, type: !42)
!478 = !DILocation(line: 80, column: 12, scope: !474)
!479 = !DILocation(line: 80, column: 28, scope: !474)
!480 = !DILocalVariable(name: "i", scope: !481, file: !106, line: 82, type: !23)
!481 = distinct !DILexicalBlock(scope: !474, file: !106, line: 81, column: 5)
!482 = !DILocation(line: 82, column: 13, scope: !481)
!483 = !DILocalVariable(name: "n", scope: !481, file: !106, line: 82, type: !23)
!484 = !DILocation(line: 82, column: 16, scope: !481)
!485 = !DILocalVariable(name: "intVariable", scope: !481, file: !106, line: 82, type: !23)
!486 = !DILocation(line: 82, column: 19, scope: !481)
!487 = !DILocation(line: 83, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !106, line: 83, column: 13)
!489 = !DILocation(line: 83, column: 13, scope: !488)
!490 = !DILocation(line: 83, column: 36, scope: !488)
!491 = !DILocation(line: 83, column: 13, scope: !481)
!492 = !DILocation(line: 86, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !106, line: 84, column: 9)
!494 = !DILocation(line: 87, column: 20, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !106, line: 87, column: 13)
!496 = !DILocation(line: 87, column: 18, scope: !495)
!497 = !DILocation(line: 87, column: 25, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !106, line: 87, column: 13)
!499 = !DILocation(line: 87, column: 29, scope: !498)
!500 = !DILocation(line: 87, column: 27, scope: !498)
!501 = !DILocation(line: 87, column: 13, scope: !495)
!502 = !DILocation(line: 90, column: 28, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !106, line: 88, column: 13)
!504 = !DILocation(line: 91, column: 13, scope: !503)
!505 = !DILocation(line: 87, column: 33, scope: !498)
!506 = !DILocation(line: 87, column: 13, scope: !498)
!507 = distinct !{!507, !501, !508, !469}
!508 = !DILocation(line: 91, column: 13, scope: !495)
!509 = !DILocation(line: 92, column: 26, scope: !493)
!510 = !DILocation(line: 92, column: 13, scope: !493)
!511 = !DILocation(line: 93, column: 9, scope: !493)
!512 = !DILocation(line: 95, column: 1, scope: !474)
!513 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink", scope: !106, file: !106, line: 98, type: !429, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!514 = !DILocalVariable(name: "myStruct", arg: 1, scope: !513, file: !106, line: 98, type: !431)
!515 = !DILocation(line: 98, column: 140, scope: !513)
!516 = !DILocalVariable(name: "data", scope: !513, file: !106, line: 100, type: !42)
!517 = !DILocation(line: 100, column: 12, scope: !513)
!518 = !DILocation(line: 100, column: 28, scope: !513)
!519 = !DILocalVariable(name: "i", scope: !520, file: !106, line: 102, type: !23)
!520 = distinct !DILexicalBlock(scope: !513, file: !106, line: 101, column: 5)
!521 = !DILocation(line: 102, column: 13, scope: !520)
!522 = !DILocalVariable(name: "n", scope: !520, file: !106, line: 102, type: !23)
!523 = !DILocation(line: 102, column: 16, scope: !520)
!524 = !DILocalVariable(name: "intVariable", scope: !520, file: !106, line: 102, type: !23)
!525 = !DILocation(line: 102, column: 19, scope: !520)
!526 = !DILocation(line: 103, column: 20, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !106, line: 103, column: 13)
!528 = !DILocation(line: 103, column: 13, scope: !527)
!529 = !DILocation(line: 103, column: 36, scope: !527)
!530 = !DILocation(line: 103, column: 13, scope: !520)
!531 = !DILocation(line: 106, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !106, line: 106, column: 17)
!533 = distinct !DILexicalBlock(scope: !527, file: !106, line: 104, column: 9)
!534 = !DILocation(line: 106, column: 19, scope: !532)
!535 = !DILocation(line: 106, column: 17, scope: !533)
!536 = !DILocation(line: 108, column: 29, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !106, line: 107, column: 13)
!538 = !DILocation(line: 109, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !106, line: 109, column: 17)
!540 = !DILocation(line: 109, column: 22, scope: !539)
!541 = !DILocation(line: 109, column: 29, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !106, line: 109, column: 17)
!543 = !DILocation(line: 109, column: 33, scope: !542)
!544 = !DILocation(line: 109, column: 31, scope: !542)
!545 = !DILocation(line: 109, column: 17, scope: !539)
!546 = !DILocation(line: 112, column: 32, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !106, line: 110, column: 17)
!548 = !DILocation(line: 113, column: 17, scope: !547)
!549 = !DILocation(line: 109, column: 37, scope: !542)
!550 = !DILocation(line: 109, column: 17, scope: !542)
!551 = distinct !{!551, !545, !552, !469}
!552 = !DILocation(line: 113, column: 17, scope: !539)
!553 = !DILocation(line: 114, column: 30, scope: !537)
!554 = !DILocation(line: 114, column: 17, scope: !537)
!555 = !DILocation(line: 115, column: 13, scope: !537)
!556 = !DILocation(line: 116, column: 9, scope: !533)
!557 = !DILocation(line: 118, column: 1, scope: !513)
!558 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !559, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !42}
!561 = !DILocalVariable(name: "line", arg: 1, scope: !558, file: !3, line: 11, type: !42)
!562 = !DILocation(line: 11, column: 25, scope: !558)
!563 = !DILocation(line: 13, column: 1, scope: !558)
!564 = !DILocation(line: 14, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !558, file: !3, line: 14, column: 8)
!566 = !DILocation(line: 14, column: 13, scope: !565)
!567 = !DILocation(line: 14, column: 8, scope: !558)
!568 = !DILocation(line: 16, column: 24, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 15, column: 5)
!570 = !DILocation(line: 16, column: 9, scope: !569)
!571 = !DILocation(line: 17, column: 5, scope: !569)
!572 = !DILocation(line: 18, column: 5, scope: !558)
!573 = !DILocation(line: 19, column: 1, scope: !558)
!574 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !559, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!575 = !DILocalVariable(name: "line", arg: 1, scope: !574, file: !3, line: 20, type: !42)
!576 = !DILocation(line: 20, column: 29, scope: !574)
!577 = !DILocation(line: 22, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !3, line: 22, column: 8)
!579 = !DILocation(line: 22, column: 13, scope: !578)
!580 = !DILocation(line: 22, column: 8, scope: !574)
!581 = !DILocation(line: 24, column: 24, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 23, column: 5)
!583 = !DILocation(line: 24, column: 9, scope: !582)
!584 = !DILocation(line: 25, column: 5, scope: !582)
!585 = !DILocation(line: 26, column: 1, scope: !574)
!586 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !587, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !159, line: 74, baseType: !23)
!591 = !DILocalVariable(name: "line", arg: 1, scope: !586, file: !3, line: 27, type: !589)
!592 = !DILocation(line: 27, column: 29, scope: !586)
!593 = !DILocation(line: 29, column: 8, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !3, line: 29, column: 8)
!595 = !DILocation(line: 29, column: 13, scope: !594)
!596 = !DILocation(line: 29, column: 8, scope: !586)
!597 = !DILocation(line: 31, column: 27, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 30, column: 5)
!599 = !DILocation(line: 31, column: 9, scope: !598)
!600 = !DILocation(line: 32, column: 5, scope: !598)
!601 = !DILocation(line: 33, column: 1, scope: !586)
!602 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !603, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !23}
!605 = !DILocalVariable(name: "intNumber", arg: 1, scope: !602, file: !3, line: 35, type: !23)
!606 = !DILocation(line: 35, column: 24, scope: !602)
!607 = !DILocation(line: 37, column: 20, scope: !602)
!608 = !DILocation(line: 37, column: 5, scope: !602)
!609 = !DILocation(line: 38, column: 1, scope: !602)
!610 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !611, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !613}
!613 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!614 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !610, file: !3, line: 40, type: !613)
!615 = !DILocation(line: 40, column: 28, scope: !610)
!616 = !DILocation(line: 42, column: 21, scope: !610)
!617 = !DILocation(line: 42, column: 5, scope: !610)
!618 = !DILocation(line: 43, column: 1, scope: !610)
!619 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !620, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !622}
!622 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!623 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !619, file: !3, line: 45, type: !622)
!624 = !DILocation(line: 45, column: 28, scope: !619)
!625 = !DILocation(line: 47, column: 20, scope: !619)
!626 = !DILocation(line: 47, column: 5, scope: !619)
!627 = !DILocation(line: 48, column: 1, scope: !619)
!628 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !629, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631}
!631 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!632 = !DILocalVariable(name: "longNumber", arg: 1, scope: !628, file: !3, line: 50, type: !631)
!633 = !DILocation(line: 50, column: 26, scope: !628)
!634 = !DILocation(line: 52, column: 21, scope: !628)
!635 = !DILocation(line: 52, column: 5, scope: !628)
!636 = !DILocation(line: 53, column: 1, scope: !628)
!637 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !638, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !641, line: 27, baseType: !642)
!641 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !631)
!643 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !637, file: !3, line: 55, type: !640)
!644 = !DILocation(line: 55, column: 33, scope: !637)
!645 = !DILocation(line: 57, column: 29, scope: !637)
!646 = !DILocation(line: 57, column: 5, scope: !637)
!647 = !DILocation(line: 58, column: 1, scope: !637)
!648 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !649, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !158}
!651 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !648, file: !3, line: 60, type: !158)
!652 = !DILocation(line: 60, column: 29, scope: !648)
!653 = !DILocation(line: 62, column: 21, scope: !648)
!654 = !DILocation(line: 62, column: 5, scope: !648)
!655 = !DILocation(line: 63, column: 1, scope: !648)
!656 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !657, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !43}
!659 = !DILocalVariable(name: "charHex", arg: 1, scope: !656, file: !3, line: 65, type: !43)
!660 = !DILocation(line: 65, column: 29, scope: !656)
!661 = !DILocation(line: 67, column: 22, scope: !656)
!662 = !DILocation(line: 67, column: 5, scope: !656)
!663 = !DILocation(line: 68, column: 1, scope: !656)
!664 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !665, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !590}
!667 = !DILocalVariable(name: "wideChar", arg: 1, scope: !664, file: !3, line: 70, type: !590)
!668 = !DILocation(line: 70, column: 29, scope: !664)
!669 = !DILocalVariable(name: "s", scope: !664, file: !3, line: 74, type: !670)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 64, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 2)
!673 = !DILocation(line: 74, column: 13, scope: !664)
!674 = !DILocation(line: 75, column: 16, scope: !664)
!675 = !DILocation(line: 75, column: 9, scope: !664)
!676 = !DILocation(line: 75, column: 14, scope: !664)
!677 = !DILocation(line: 76, column: 9, scope: !664)
!678 = !DILocation(line: 76, column: 14, scope: !664)
!679 = !DILocation(line: 77, column: 21, scope: !664)
!680 = !DILocation(line: 77, column: 5, scope: !664)
!681 = !DILocation(line: 78, column: 1, scope: !664)
!682 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !683, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !7}
!685 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !682, file: !3, line: 80, type: !7)
!686 = !DILocation(line: 80, column: 33, scope: !682)
!687 = !DILocation(line: 82, column: 20, scope: !682)
!688 = !DILocation(line: 82, column: 5, scope: !682)
!689 = !DILocation(line: 83, column: 1, scope: !682)
!690 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !691, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !25}
!693 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !690, file: !3, line: 85, type: !25)
!694 = !DILocation(line: 85, column: 45, scope: !690)
!695 = !DILocation(line: 87, column: 22, scope: !690)
!696 = !DILocation(line: 87, column: 5, scope: !690)
!697 = !DILocation(line: 88, column: 1, scope: !690)
!698 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !699, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !701}
!701 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!702 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !698, file: !3, line: 90, type: !701)
!703 = !DILocation(line: 90, column: 29, scope: !698)
!704 = !DILocation(line: 92, column: 20, scope: !698)
!705 = !DILocation(line: 92, column: 5, scope: !698)
!706 = !DILocation(line: 93, column: 1, scope: !698)
!707 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !708, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !712, line: 100, baseType: !713)
!712 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/source_code")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !712, line: 96, size: 64, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !713, file: !712, line: 98, baseType: !23, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !713, file: !712, line: 99, baseType: !23, size: 32, offset: 32)
!717 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !707, file: !3, line: 95, type: !710)
!718 = !DILocation(line: 95, column: 40, scope: !707)
!719 = !DILocation(line: 97, column: 26, scope: !707)
!720 = !DILocation(line: 97, column: 47, scope: !707)
!721 = !DILocation(line: 97, column: 55, scope: !707)
!722 = !DILocation(line: 97, column: 76, scope: !707)
!723 = !DILocation(line: 97, column: 5, scope: !707)
!724 = !DILocation(line: 98, column: 1, scope: !707)
!725 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !726, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !728, !158}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!729 = !DILocalVariable(name: "bytes", arg: 1, scope: !725, file: !3, line: 100, type: !728)
!730 = !DILocation(line: 100, column: 38, scope: !725)
!731 = !DILocalVariable(name: "numBytes", arg: 2, scope: !725, file: !3, line: 100, type: !158)
!732 = !DILocation(line: 100, column: 52, scope: !725)
!733 = !DILocalVariable(name: "i", scope: !725, file: !3, line: 102, type: !158)
!734 = !DILocation(line: 102, column: 12, scope: !725)
!735 = !DILocation(line: 103, column: 12, scope: !736)
!736 = distinct !DILexicalBlock(scope: !725, file: !3, line: 103, column: 5)
!737 = !DILocation(line: 103, column: 10, scope: !736)
!738 = !DILocation(line: 103, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !736, file: !3, line: 103, column: 5)
!740 = !DILocation(line: 103, column: 21, scope: !739)
!741 = !DILocation(line: 103, column: 19, scope: !739)
!742 = !DILocation(line: 103, column: 5, scope: !736)
!743 = !DILocation(line: 105, column: 24, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 104, column: 5)
!745 = !DILocation(line: 105, column: 30, scope: !744)
!746 = !DILocation(line: 105, column: 9, scope: !744)
!747 = !DILocation(line: 106, column: 5, scope: !744)
!748 = !DILocation(line: 103, column: 31, scope: !739)
!749 = !DILocation(line: 103, column: 5, scope: !739)
!750 = distinct !{!750, !742, !751, !469}
!751 = !DILocation(line: 106, column: 5, scope: !736)
!752 = !DILocation(line: 107, column: 5, scope: !725)
!753 = !DILocation(line: 108, column: 1, scope: !725)
!754 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !755, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DISubroutineType(types: !756)
!756 = !{!158, !728, !158, !42}
!757 = !DILocalVariable(name: "bytes", arg: 1, scope: !754, file: !3, line: 113, type: !728)
!758 = !DILocation(line: 113, column: 39, scope: !754)
!759 = !DILocalVariable(name: "numBytes", arg: 2, scope: !754, file: !3, line: 113, type: !158)
!760 = !DILocation(line: 113, column: 53, scope: !754)
!761 = !DILocalVariable(name: "hex", arg: 3, scope: !754, file: !3, line: 113, type: !42)
!762 = !DILocation(line: 113, column: 71, scope: !754)
!763 = !DILocalVariable(name: "numWritten", scope: !754, file: !3, line: 115, type: !158)
!764 = !DILocation(line: 115, column: 12, scope: !754)
!765 = !DILocation(line: 121, column: 5, scope: !754)
!766 = !DILocation(line: 121, column: 12, scope: !754)
!767 = !DILocation(line: 121, column: 25, scope: !754)
!768 = !DILocation(line: 121, column: 23, scope: !754)
!769 = !DILocation(line: 121, column: 34, scope: !754)
!770 = !DILocation(line: 121, column: 37, scope: !754)
!771 = !DILocation(line: 121, column: 67, scope: !754)
!772 = !DILocation(line: 121, column: 70, scope: !754)
!773 = !DILocation(line: 0, scope: !754)
!774 = !DILocalVariable(name: "byte", scope: !775, file: !3, line: 123, type: !23)
!775 = distinct !DILexicalBlock(scope: !754, file: !3, line: 122, column: 5)
!776 = !DILocation(line: 123, column: 13, scope: !775)
!777 = !DILocation(line: 124, column: 17, scope: !775)
!778 = !DILocation(line: 124, column: 25, scope: !775)
!779 = !DILocation(line: 124, column: 23, scope: !775)
!780 = !DILocation(line: 124, column: 9, scope: !775)
!781 = !DILocation(line: 125, column: 45, scope: !775)
!782 = !DILocation(line: 125, column: 29, scope: !775)
!783 = !DILocation(line: 125, column: 9, scope: !775)
!784 = !DILocation(line: 125, column: 15, scope: !775)
!785 = !DILocation(line: 125, column: 27, scope: !775)
!786 = !DILocation(line: 126, column: 9, scope: !775)
!787 = distinct !{!787, !765, !788, !469}
!788 = !DILocation(line: 127, column: 5, scope: !754)
!789 = !DILocation(line: 129, column: 12, scope: !754)
!790 = !DILocation(line: 129, column: 5, scope: !754)
!791 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !792, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!792 = !DISubroutineType(types: !793)
!793 = !{!158, !728, !158, !589}
!794 = !DILocalVariable(name: "bytes", arg: 1, scope: !791, file: !3, line: 135, type: !728)
!795 = !DILocation(line: 135, column: 41, scope: !791)
!796 = !DILocalVariable(name: "numBytes", arg: 2, scope: !791, file: !3, line: 135, type: !158)
!797 = !DILocation(line: 135, column: 55, scope: !791)
!798 = !DILocalVariable(name: "hex", arg: 3, scope: !791, file: !3, line: 135, type: !589)
!799 = !DILocation(line: 135, column: 76, scope: !791)
!800 = !DILocalVariable(name: "numWritten", scope: !791, file: !3, line: 137, type: !158)
!801 = !DILocation(line: 137, column: 12, scope: !791)
!802 = !DILocation(line: 143, column: 5, scope: !791)
!803 = !DILocation(line: 143, column: 12, scope: !791)
!804 = !DILocation(line: 143, column: 25, scope: !791)
!805 = !DILocation(line: 143, column: 23, scope: !791)
!806 = !DILocation(line: 143, column: 34, scope: !791)
!807 = !DILocation(line: 143, column: 47, scope: !791)
!808 = !DILocation(line: 143, column: 55, scope: !791)
!809 = !DILocation(line: 143, column: 53, scope: !791)
!810 = !DILocation(line: 143, column: 37, scope: !791)
!811 = !DILocation(line: 143, column: 68, scope: !791)
!812 = !DILocation(line: 143, column: 81, scope: !791)
!813 = !DILocation(line: 143, column: 89, scope: !791)
!814 = !DILocation(line: 143, column: 87, scope: !791)
!815 = !DILocation(line: 143, column: 100, scope: !791)
!816 = !DILocation(line: 143, column: 71, scope: !791)
!817 = !DILocation(line: 0, scope: !791)
!818 = !DILocalVariable(name: "byte", scope: !819, file: !3, line: 145, type: !23)
!819 = distinct !DILexicalBlock(scope: !791, file: !3, line: 144, column: 5)
!820 = !DILocation(line: 145, column: 13, scope: !819)
!821 = !DILocation(line: 146, column: 18, scope: !819)
!822 = !DILocation(line: 146, column: 26, scope: !819)
!823 = !DILocation(line: 146, column: 24, scope: !819)
!824 = !DILocation(line: 146, column: 9, scope: !819)
!825 = !DILocation(line: 147, column: 45, scope: !819)
!826 = !DILocation(line: 147, column: 29, scope: !819)
!827 = !DILocation(line: 147, column: 9, scope: !819)
!828 = !DILocation(line: 147, column: 15, scope: !819)
!829 = !DILocation(line: 147, column: 27, scope: !819)
!830 = !DILocation(line: 148, column: 9, scope: !819)
!831 = distinct !{!831, !802, !832, !469}
!832 = !DILocation(line: 149, column: 5, scope: !791)
!833 = !DILocation(line: 151, column: 12, scope: !791)
!834 = !DILocation(line: 151, column: 5, scope: !791)
!835 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !836, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DISubroutineType(types: !837)
!837 = !{!23}
!838 = !DILocation(line: 158, column: 5, scope: !835)
!839 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !836, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 163, column: 5, scope: !839)
!841 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !836, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 168, column: 13, scope: !841)
!843 = !DILocation(line: 168, column: 20, scope: !841)
!844 = !DILocation(line: 168, column: 5, scope: !841)
!845 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 187, column: 16, scope: !845)
!847 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 188, column: 16, scope: !847)
!849 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 189, column: 16, scope: !849)
!851 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!852 = !DILocation(line: 190, column: 16, scope: !851)
!853 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!854 = !DILocation(line: 191, column: 16, scope: !853)
!855 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!856 = !DILocation(line: 192, column: 16, scope: !855)
!857 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DILocation(line: 193, column: 16, scope: !857)
!859 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DILocation(line: 194, column: 16, scope: !859)
!861 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!862 = !DILocation(line: 195, column: 16, scope: !861)
!863 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 198, column: 15, scope: !863)
!865 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 199, column: 15, scope: !865)
!867 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 200, column: 15, scope: !867)
!869 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 201, column: 15, scope: !869)
!871 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!872 = !DILocation(line: 202, column: 15, scope: !871)
!873 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 203, column: 15, scope: !873)
!875 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 204, column: 15, scope: !875)
!877 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 205, column: 15, scope: !877)
!879 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 206, column: 15, scope: !879)
