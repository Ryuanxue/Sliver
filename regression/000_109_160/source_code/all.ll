; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !122, metadata !DIExpression()), !dbg !126
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !126
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !127
  store i8* %arraydecay, i8** %data, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !132, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 -1, i32* %listenSocket, align 4, !dbg !152
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %acceptSocket, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !155, metadata !DIExpression()), !dbg !159
  %1 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i64 @strlen(i8* %1) #7, !dbg !161
  store i64 %call, i64* %dataLen, align 8, !dbg !159
  br label %do.body, !dbg !162

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !163
  store i32 %call1, i32* %listenSocket, align 4, !dbg !165
  %2 = load i32, i32* %listenSocket, align 4, !dbg !166
  %cmp = icmp eq i32 %2, -1, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !170

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !172
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !173
  store i16 2, i16* %sin_family, align 4, !dbg !174
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !175
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !176
  store i32 0, i32* %s_addr, align 4, !dbg !177
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !178
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !179
  store i16 %call2, i16* %sin_port, align 2, !dbg !180
  %4 = load i32, i32* %listenSocket, align 4, !dbg !181
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !183
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !184
  %cmp4 = icmp eq i32 %call3, -1, !dbg !185
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !186

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !187

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !189
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !191
  %cmp8 = icmp eq i32 %call7, -1, !dbg !192
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !193

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !194

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !196
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !197
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !198
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !199
  %cmp12 = icmp eq i32 %8, -1, !dbg !201
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !202

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !203

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !205
  %10 = load i8*, i8** %data, align 8, !dbg !206
  %11 = load i64, i64* %dataLen, align 8, !dbg !207
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !208
  %12 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %12, !dbg !210
  %sub15 = sub i64 %sub, 1, !dbg !211
  %mul = mul i64 1, %sub15, !dbg !212
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !213
  %conv = trunc i64 %call16 to i32, !dbg !213
  store i32 %conv, i32* %recvResult, align 4, !dbg !214
  %13 = load i32, i32* %recvResult, align 4, !dbg !215
  %cmp17 = icmp eq i32 %13, -1, !dbg !217
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !218

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !219
  %cmp19 = icmp eq i32 %14, 0, !dbg !220
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !221

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !222

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !224
  %16 = load i64, i64* %dataLen, align 8, !dbg !225
  %17 = load i32, i32* %recvResult, align 4, !dbg !226
  %conv23 = sext i32 %17 to i64, !dbg !226
  %div = udiv i64 %conv23, 1, !dbg !227
  %add = add i64 %16, %div, !dbg !228
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !224
  store i8 0, i8* %arrayidx, align 1, !dbg !229
  %18 = load i8*, i8** %data, align 8, !dbg !230
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !231
  store i8* %call24, i8** %replace, align 8, !dbg !232
  %19 = load i8*, i8** %replace, align 8, !dbg !233
  %tobool = icmp ne i8* %19, null, !dbg !233
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !235

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !236
  store i8 0, i8* %20, align 1, !dbg !238
  br label %if.end26, !dbg !239

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !240
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !241
  store i8* %call27, i8** %replace, align 8, !dbg !242
  %22 = load i8*, i8** %replace, align 8, !dbg !243
  %tobool28 = icmp ne i8* %22, null, !dbg !243
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !245

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !246
  store i8 0, i8* %23, align 1, !dbg !248
  br label %if.end30, !dbg !249

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !250

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !251
  %cmp31 = icmp ne i32 %24, -1, !dbg !253
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !254

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !255
  %call34 = call i32 @close(i32 %25), !dbg !257
  br label %if.end35, !dbg !258

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !259
  %cmp36 = icmp ne i32 %26, -1, !dbg !261
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !262

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !263
  %call39 = call i32 @close(i32 %27), !dbg !265
  br label %if.end40, !dbg !266

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !267
  %arrayidx41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !268
  store i8* %28, i8** %arrayidx41, align 16, !dbg !269
  %arraydecay42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !270
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink(i8** %arraydecay42), !dbg !271
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
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  %1 = load i8*, i8** %data, align 8, !dbg !282
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !283
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !285
  store i8* %2, i8** %arrayidx, align 16, !dbg !286
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !287
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink(i8** %arraydecay1), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !290 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !293, metadata !DIExpression()), !dbg !294
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
  %arrayidx41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !420
  store i8* %28, i8** %arrayidx41, align 16, !dbg !421
  %arraydecay42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !422
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink(i8** %arraydecay42), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66_good() #0 !dbg !425 {
entry:
  call void @goodG2B(), !dbg !426
  call void @goodB2G(), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink(i8** %dataArray) #0 !dbg !429 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i8** %data, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !436
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !436
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !436
  store i8* %1, i8** %data, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i32* %i, metadata !437, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i32* %n, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !442, metadata !DIExpression()), !dbg !443
  %2 = load i8*, i8** %data, align 8, !dbg !444
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !446
  %cmp = icmp eq i32 %call, 1, !dbg !447
  br i1 %cmp, label %if.then, label %if.end, !dbg !448

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !449
  store i32 0, i32* %i, align 4, !dbg !451
  br label %for.cond, !dbg !453

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !454
  %4 = load i32, i32* %n, align 4, !dbg !456
  %cmp1 = icmp slt i32 %3, %4, !dbg !457
  br i1 %cmp1, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !459
  %inc = add nsw i32 %5, 1, !dbg !459
  store i32 %inc, i32* %intVariable, align 4, !dbg !459
  br label %for.inc, !dbg !461

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !462
  %inc2 = add nsw i32 %6, 1, !dbg !462
  store i32 %inc2, i32* %i, align 4, !dbg !462
  br label %for.cond, !dbg !463, !llvm.loop !464

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !467
  call void @printIntLine(i32 %7), !dbg !468
  br label %if.end, !dbg !469

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !470
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink(i8** %dataArray) #0 !dbg !471 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i8** %data, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !476
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !476
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !476
  store i8* %1, i8** %data, align 8, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %i, metadata !477, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %n, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !482, metadata !DIExpression()), !dbg !483
  %2 = load i8*, i8** %data, align 8, !dbg !484
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !486
  %cmp = icmp eq i32 %call, 1, !dbg !487
  br i1 %cmp, label %if.then, label %if.end, !dbg !488

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !489
  store i32 0, i32* %i, align 4, !dbg !491
  br label %for.cond, !dbg !493

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !494
  %4 = load i32, i32* %n, align 4, !dbg !496
  %cmp1 = icmp slt i32 %3, %4, !dbg !497
  br i1 %cmp1, label %for.body, label %for.end, !dbg !498

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !499
  %inc = add nsw i32 %5, 1, !dbg !499
  store i32 %inc, i32* %intVariable, align 4, !dbg !499
  br label %for.inc, !dbg !501

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !502
  %inc2 = add nsw i32 %6, 1, !dbg !502
  store i32 %inc2, i32* %i, align 4, !dbg !502
  br label %for.cond, !dbg !503, !llvm.loop !504

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !506
  call void @printIntLine(i32 %7), !dbg !507
  br label %if.end, !dbg !508

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink(i8** %dataArray) #0 !dbg !510 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i8** %data, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !515
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !515
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !515
  store i8* %1, i8** %data, align 8, !dbg !514
  call void @llvm.dbg.declare(metadata i32* %i, metadata !516, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %n, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !521, metadata !DIExpression()), !dbg !522
  %2 = load i8*, i8** %data, align 8, !dbg !523
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !525
  %cmp = icmp eq i32 %call, 1, !dbg !526
  br i1 %cmp, label %if.then, label %if.end5, !dbg !527

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !528
  %cmp1 = icmp slt i32 %3, 10000, !dbg !531
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !532

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !533
  store i32 0, i32* %i, align 4, !dbg !535
  br label %for.cond, !dbg !537

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !538
  %5 = load i32, i32* %n, align 4, !dbg !540
  %cmp3 = icmp slt i32 %4, %5, !dbg !541
  br i1 %cmp3, label %for.body, label %for.end, !dbg !542

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !543
  %inc = add nsw i32 %6, 1, !dbg !543
  store i32 %inc, i32* %intVariable, align 4, !dbg !543
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !546
  %inc4 = add nsw i32 %7, 1, !dbg !546
  store i32 %inc4, i32* %i, align 4, !dbg !546
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !550
  call void @printIntLine(i32 %8), !dbg !551
  br label %if.end, !dbg !552

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !553

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !555 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !560
  %0 = load i8*, i8** %line.addr, align 8, !dbg !561
  %cmp = icmp ne i8* %0, null, !dbg !563
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !565
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !567
  br label %if.end, !dbg !568

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !569
  ret void, !dbg !570
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !571 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i8*, i8** %line.addr, align 8, !dbg !574
  %cmp = icmp ne i8* %0, null, !dbg !576
  br i1 %cmp, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !580
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !583 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i32*, i32** %line.addr, align 8, !dbg !590
  %cmp = icmp ne i32* %0, null, !dbg !592
  br i1 %cmp, label %if.then, label %if.end, !dbg !593

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !594
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !596
  br label %if.end, !dbg !597

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !598
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !599 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !607 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !613
  %conv = sext i16 %0 to i32, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !616 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !622
  %conv = fpext float %0 to double, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !625 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !629, metadata !DIExpression()), !dbg !630
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !631
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !634 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !645 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !648, metadata !DIExpression()), !dbg !649
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !650
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !653 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !656, metadata !DIExpression()), !dbg !657
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !658
  %conv = sext i8 %0 to i32, !dbg !658
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !661 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !666, metadata !DIExpression()), !dbg !670
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !671
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !672
  store i32 %0, i32* %arrayidx, align 4, !dbg !673
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !674
  store i32 0, i32* %arrayidx1, align 4, !dbg !675
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !676
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !677
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !679 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !684
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !685
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !687 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !692
  %conv = zext i8 %0 to i32, !dbg !692
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !695 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !701
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !702
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !704 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !714, metadata !DIExpression()), !dbg !715
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !716
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !717
  %1 = load i32, i32* %intOne, align 4, !dbg !717
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !718
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !719
  %3 = load i32, i32* %intTwo, align 4, !dbg !719
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !722 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i64* %i, metadata !730, metadata !DIExpression()), !dbg !731
  store i64 0, i64* %i, align 8, !dbg !732
  br label %for.cond, !dbg !734

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !735
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !737
  %cmp = icmp ult i64 %0, %1, !dbg !738
  br i1 %cmp, label %for.body, label %for.end, !dbg !739

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !740
  %3 = load i64, i64* %i, align 8, !dbg !742
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !740
  %4 = load i8, i8* %arrayidx, align 1, !dbg !740
  %conv = zext i8 %4 to i32, !dbg !740
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !743
  br label %for.inc, !dbg !744

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !745
  %inc = add i64 %5, 1, !dbg !745
  store i64 %inc, i64* %i, align 8, !dbg !745
  br label %for.cond, !dbg !746, !llvm.loop !747

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !749
  ret void, !dbg !750
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !751 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !754, metadata !DIExpression()), !dbg !755
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !756, metadata !DIExpression()), !dbg !757
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !760, metadata !DIExpression()), !dbg !761
  store i64 0, i64* %numWritten, align 8, !dbg !761
  br label %while.cond, !dbg !762

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !763
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !764
  %cmp = icmp ult i64 %0, %1, !dbg !765
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !766

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !767
  %2 = load i16*, i16** %call, align 8, !dbg !767
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !767
  %4 = load i64, i64* %numWritten, align 8, !dbg !767
  %mul = mul i64 2, %4, !dbg !767
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !767
  %5 = load i8, i8* %arrayidx, align 1, !dbg !767
  %conv = sext i8 %5 to i32, !dbg !767
  %idxprom = sext i32 %conv to i64, !dbg !767
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !767
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !767
  %conv2 = zext i16 %6 to i32, !dbg !767
  %and = and i32 %conv2, 4096, !dbg !767
  %tobool = icmp ne i32 %and, 0, !dbg !767
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !768

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !769
  %7 = load i16*, i16** %call3, align 8, !dbg !769
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !769
  %9 = load i64, i64* %numWritten, align 8, !dbg !769
  %mul4 = mul i64 2, %9, !dbg !769
  %add = add i64 %mul4, 1, !dbg !769
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !769
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !769
  %conv6 = sext i8 %10 to i32, !dbg !769
  %idxprom7 = sext i32 %conv6 to i64, !dbg !769
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !769
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !769
  %conv9 = zext i16 %11 to i32, !dbg !769
  %and10 = and i32 %conv9, 4096, !dbg !769
  %tobool11 = icmp ne i32 %and10, 0, !dbg !768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !770
  br i1 %12, label %while.body, label %while.end, !dbg !762

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !771, metadata !DIExpression()), !dbg !773
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !774
  %14 = load i64, i64* %numWritten, align 8, !dbg !775
  %mul12 = mul i64 2, %14, !dbg !776
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !774
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !777
  %15 = load i32, i32* %byte, align 4, !dbg !778
  %conv15 = trunc i32 %15 to i8, !dbg !779
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !780
  %17 = load i64, i64* %numWritten, align 8, !dbg !781
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !780
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !782
  %18 = load i64, i64* %numWritten, align 8, !dbg !783
  %inc = add i64 %18, 1, !dbg !783
  store i64 %inc, i64* %numWritten, align 8, !dbg !783
  br label %while.cond, !dbg !762, !llvm.loop !784

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !786
  ret i64 %19, !dbg !787
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !788 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !791, metadata !DIExpression()), !dbg !792
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !797, metadata !DIExpression()), !dbg !798
  store i64 0, i64* %numWritten, align 8, !dbg !798
  br label %while.cond, !dbg !799

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !800
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !801
  %cmp = icmp ult i64 %0, %1, !dbg !802
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !803

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !804
  %3 = load i64, i64* %numWritten, align 8, !dbg !805
  %mul = mul i64 2, %3, !dbg !806
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !804
  %4 = load i32, i32* %arrayidx, align 4, !dbg !804
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !807
  %tobool = icmp ne i32 %call, 0, !dbg !807
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !808

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !809
  %6 = load i64, i64* %numWritten, align 8, !dbg !810
  %mul1 = mul i64 2, %6, !dbg !811
  %add = add i64 %mul1, 1, !dbg !812
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !809
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !809
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !813
  %tobool4 = icmp ne i32 %call3, 0, !dbg !808
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !814
  br i1 %8, label %while.body, label %while.end, !dbg !799

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !815, metadata !DIExpression()), !dbg !817
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !818
  %10 = load i64, i64* %numWritten, align 8, !dbg !819
  %mul5 = mul i64 2, %10, !dbg !820
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !818
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !821
  %11 = load i32, i32* %byte, align 4, !dbg !822
  %conv = trunc i32 %11 to i8, !dbg !823
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !824
  %13 = load i64, i64* %numWritten, align 8, !dbg !825
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !824
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !826
  %14 = load i64, i64* %numWritten, align 8, !dbg !827
  %inc = add i64 %14, 1, !dbg !827
  store i64 %inc, i64* %numWritten, align 8, !dbg !827
  br label %while.cond, !dbg !799, !llvm.loop !828

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !830
  ret i64 %15, !dbg !831
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !832 {
entry:
  ret i32 1, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !836 {
entry:
  ret i32 0, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !838 {
entry:
  %call = call i32 @rand() #8, !dbg !839
  %rem = srem i32 %call, 2, !dbg !840
  ret i32 %rem, !dbg !841
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !850 {
entry:
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !852 {
entry:
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !854 {
entry:
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !856 {
entry:
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !858 {
entry:
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !860 {
entry:
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !862 {
entry:
  ret void, !dbg !863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !864 {
entry:
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !866 {
entry:
  ret void, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !868 {
entry:
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !870 {
entry:
  ret void, !dbg !871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !872 {
entry:
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !874 {
entry:
  ret void, !dbg !875
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !876 {
entry:
  ret void, !dbg !877
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66_bad", scope: !45, file: !45, line: 52, type: !113, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 54, type: !42)
!116 = !DILocation(line: 54, column: 12, scope: !112)
!117 = !DILocalVariable(name: "dataArray", scope: !112, file: !45, line: 55, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 5)
!121 = !DILocation(line: 55, column: 12, scope: !112)
!122 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 56, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 100)
!126 = !DILocation(line: 56, column: 10, scope: !112)
!127 = !DILocation(line: 57, column: 12, scope: !112)
!128 = !DILocation(line: 57, column: 10, scope: !112)
!129 = !DILocalVariable(name: "recvResult", scope: !130, file: !45, line: 63, type: !23)
!130 = distinct !DILexicalBlock(scope: !112, file: !45, line: 58, column: 5)
!131 = !DILocation(line: 63, column: 13, scope: !130)
!132 = !DILocalVariable(name: "service", scope: !130, file: !45, line: 64, type: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !134)
!134 = !{!135, !136, !140, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !133, file: !60, line: 240, baseType: !99, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !133, file: !60, line: 241, baseType: !137, size: 16, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !133, file: !60, line: 242, baseType: !141, size: 32, offset: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !141, file: !60, line: 33, baseType: !89, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !133, file: !60, line: 245, baseType: !145, size: 64, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DILocation(line: 64, column: 28, scope: !130)
!149 = !DILocalVariable(name: "replace", scope: !130, file: !45, line: 65, type: !42)
!150 = !DILocation(line: 65, column: 15, scope: !130)
!151 = !DILocalVariable(name: "listenSocket", scope: !130, file: !45, line: 66, type: !23)
!152 = !DILocation(line: 66, column: 16, scope: !130)
!153 = !DILocalVariable(name: "acceptSocket", scope: !130, file: !45, line: 67, type: !23)
!154 = !DILocation(line: 67, column: 16, scope: !130)
!155 = !DILocalVariable(name: "dataLen", scope: !130, file: !45, line: 68, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !158)
!157 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DILocation(line: 68, column: 16, scope: !130)
!160 = !DILocation(line: 68, column: 33, scope: !130)
!161 = !DILocation(line: 68, column: 26, scope: !130)
!162 = !DILocation(line: 69, column: 9, scope: !130)
!163 = !DILocation(line: 79, column: 28, scope: !164)
!164 = distinct !DILexicalBlock(scope: !130, file: !45, line: 70, column: 9)
!165 = !DILocation(line: 79, column: 26, scope: !164)
!166 = !DILocation(line: 80, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !45, line: 80, column: 17)
!168 = !DILocation(line: 80, column: 30, scope: !167)
!169 = !DILocation(line: 80, column: 17, scope: !164)
!170 = !DILocation(line: 82, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 81, column: 13)
!172 = !DILocation(line: 84, column: 13, scope: !164)
!173 = !DILocation(line: 85, column: 21, scope: !164)
!174 = !DILocation(line: 85, column: 32, scope: !164)
!175 = !DILocation(line: 86, column: 21, scope: !164)
!176 = !DILocation(line: 86, column: 30, scope: !164)
!177 = !DILocation(line: 86, column: 37, scope: !164)
!178 = !DILocation(line: 87, column: 32, scope: !164)
!179 = !DILocation(line: 87, column: 21, scope: !164)
!180 = !DILocation(line: 87, column: 30, scope: !164)
!181 = !DILocation(line: 88, column: 22, scope: !182)
!182 = distinct !DILexicalBlock(scope: !164, file: !45, line: 88, column: 17)
!183 = !DILocation(line: 88, column: 36, scope: !182)
!184 = !DILocation(line: 88, column: 17, scope: !182)
!185 = !DILocation(line: 88, column: 81, scope: !182)
!186 = !DILocation(line: 88, column: 17, scope: !164)
!187 = !DILocation(line: 90, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !45, line: 89, column: 13)
!189 = !DILocation(line: 92, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !164, file: !45, line: 92, column: 17)
!191 = !DILocation(line: 92, column: 17, scope: !190)
!192 = !DILocation(line: 92, column: 54, scope: !190)
!193 = !DILocation(line: 92, column: 17, scope: !164)
!194 = !DILocation(line: 94, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 93, column: 13)
!196 = !DILocation(line: 96, column: 35, scope: !164)
!197 = !DILocation(line: 96, column: 28, scope: !164)
!198 = !DILocation(line: 96, column: 26, scope: !164)
!199 = !DILocation(line: 97, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !164, file: !45, line: 97, column: 17)
!201 = !DILocation(line: 97, column: 30, scope: !200)
!202 = !DILocation(line: 97, column: 17, scope: !164)
!203 = !DILocation(line: 99, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 98, column: 13)
!205 = !DILocation(line: 102, column: 31, scope: !164)
!206 = !DILocation(line: 102, column: 54, scope: !164)
!207 = !DILocation(line: 102, column: 61, scope: !164)
!208 = !DILocation(line: 102, column: 59, scope: !164)
!209 = !DILocation(line: 102, column: 93, scope: !164)
!210 = !DILocation(line: 102, column: 91, scope: !164)
!211 = !DILocation(line: 102, column: 101, scope: !164)
!212 = !DILocation(line: 102, column: 84, scope: !164)
!213 = !DILocation(line: 102, column: 26, scope: !164)
!214 = !DILocation(line: 102, column: 24, scope: !164)
!215 = !DILocation(line: 103, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !164, file: !45, line: 103, column: 17)
!217 = !DILocation(line: 103, column: 28, scope: !216)
!218 = !DILocation(line: 103, column: 44, scope: !216)
!219 = !DILocation(line: 103, column: 47, scope: !216)
!220 = !DILocation(line: 103, column: 58, scope: !216)
!221 = !DILocation(line: 103, column: 17, scope: !164)
!222 = !DILocation(line: 105, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !45, line: 104, column: 13)
!224 = !DILocation(line: 108, column: 13, scope: !164)
!225 = !DILocation(line: 108, column: 18, scope: !164)
!226 = !DILocation(line: 108, column: 28, scope: !164)
!227 = !DILocation(line: 108, column: 39, scope: !164)
!228 = !DILocation(line: 108, column: 26, scope: !164)
!229 = !DILocation(line: 108, column: 55, scope: !164)
!230 = !DILocation(line: 110, column: 30, scope: !164)
!231 = !DILocation(line: 110, column: 23, scope: !164)
!232 = !DILocation(line: 110, column: 21, scope: !164)
!233 = !DILocation(line: 111, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !164, file: !45, line: 111, column: 17)
!235 = !DILocation(line: 111, column: 17, scope: !164)
!236 = !DILocation(line: 113, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !45, line: 112, column: 13)
!238 = !DILocation(line: 113, column: 26, scope: !237)
!239 = !DILocation(line: 114, column: 13, scope: !237)
!240 = !DILocation(line: 115, column: 30, scope: !164)
!241 = !DILocation(line: 115, column: 23, scope: !164)
!242 = !DILocation(line: 115, column: 21, scope: !164)
!243 = !DILocation(line: 116, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !164, file: !45, line: 116, column: 17)
!245 = !DILocation(line: 116, column: 17, scope: !164)
!246 = !DILocation(line: 118, column: 18, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !45, line: 117, column: 13)
!248 = !DILocation(line: 118, column: 26, scope: !247)
!249 = !DILocation(line: 119, column: 13, scope: !247)
!250 = !DILocation(line: 120, column: 9, scope: !164)
!251 = !DILocation(line: 122, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !130, file: !45, line: 122, column: 13)
!253 = !DILocation(line: 122, column: 26, scope: !252)
!254 = !DILocation(line: 122, column: 13, scope: !130)
!255 = !DILocation(line: 124, column: 26, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 123, column: 9)
!257 = !DILocation(line: 124, column: 13, scope: !256)
!258 = !DILocation(line: 125, column: 9, scope: !256)
!259 = !DILocation(line: 126, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !130, file: !45, line: 126, column: 13)
!261 = !DILocation(line: 126, column: 26, scope: !260)
!262 = !DILocation(line: 126, column: 13, scope: !130)
!263 = !DILocation(line: 128, column: 26, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !45, line: 127, column: 9)
!265 = !DILocation(line: 128, column: 13, scope: !264)
!266 = !DILocation(line: 129, column: 9, scope: !264)
!267 = !DILocation(line: 138, column: 20, scope: !112)
!268 = !DILocation(line: 138, column: 5, scope: !112)
!269 = !DILocation(line: 138, column: 18, scope: !112)
!270 = !DILocation(line: 139, column: 69, scope: !112)
!271 = !DILocation(line: 139, column: 5, scope: !112)
!272 = !DILocation(line: 140, column: 1, scope: !112)
!273 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 148, type: !113, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!274 = !DILocalVariable(name: "data", scope: !273, file: !45, line: 150, type: !42)
!275 = !DILocation(line: 150, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataArray", scope: !273, file: !45, line: 151, type: !118)
!277 = !DILocation(line: 151, column: 12, scope: !273)
!278 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !45, line: 152, type: !123)
!279 = !DILocation(line: 152, column: 10, scope: !273)
!280 = !DILocation(line: 153, column: 12, scope: !273)
!281 = !DILocation(line: 153, column: 10, scope: !273)
!282 = !DILocation(line: 155, column: 12, scope: !273)
!283 = !DILocation(line: 155, column: 5, scope: !273)
!284 = !DILocation(line: 156, column: 20, scope: !273)
!285 = !DILocation(line: 156, column: 5, scope: !273)
!286 = !DILocation(line: 156, column: 18, scope: !273)
!287 = !DILocation(line: 157, column: 73, scope: !273)
!288 = !DILocation(line: 157, column: 5, scope: !273)
!289 = !DILocation(line: 158, column: 1, scope: !273)
!290 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 162, type: !113, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!291 = !DILocalVariable(name: "data", scope: !290, file: !45, line: 164, type: !42)
!292 = !DILocation(line: 164, column: 12, scope: !290)
!293 = !DILocalVariable(name: "dataArray", scope: !290, file: !45, line: 165, type: !118)
!294 = !DILocation(line: 165, column: 12, scope: !290)
!295 = !DILocalVariable(name: "dataBuffer", scope: !290, file: !45, line: 166, type: !123)
!296 = !DILocation(line: 166, column: 10, scope: !290)
!297 = !DILocation(line: 167, column: 12, scope: !290)
!298 = !DILocation(line: 167, column: 10, scope: !290)
!299 = !DILocalVariable(name: "recvResult", scope: !300, file: !45, line: 173, type: !23)
!300 = distinct !DILexicalBlock(scope: !290, file: !45, line: 168, column: 5)
!301 = !DILocation(line: 173, column: 13, scope: !300)
!302 = !DILocalVariable(name: "service", scope: !300, file: !45, line: 174, type: !133)
!303 = !DILocation(line: 174, column: 28, scope: !300)
!304 = !DILocalVariable(name: "replace", scope: !300, file: !45, line: 175, type: !42)
!305 = !DILocation(line: 175, column: 15, scope: !300)
!306 = !DILocalVariable(name: "listenSocket", scope: !300, file: !45, line: 176, type: !23)
!307 = !DILocation(line: 176, column: 16, scope: !300)
!308 = !DILocalVariable(name: "acceptSocket", scope: !300, file: !45, line: 177, type: !23)
!309 = !DILocation(line: 177, column: 16, scope: !300)
!310 = !DILocalVariable(name: "dataLen", scope: !300, file: !45, line: 178, type: !156)
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
!419 = !DILocation(line: 247, column: 20, scope: !290)
!420 = !DILocation(line: 247, column: 5, scope: !290)
!421 = !DILocation(line: 247, column: 18, scope: !290)
!422 = !DILocation(line: 248, column: 73, scope: !290)
!423 = !DILocation(line: 248, column: 5, scope: !290)
!424 = !DILocation(line: 249, column: 1, scope: !290)
!425 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66_good", scope: !45, file: !45, line: 251, type: !113, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!426 = !DILocation(line: 253, column: 5, scope: !425)
!427 = !DILocation(line: 254, column: 5, scope: !425)
!428 = !DILocation(line: 255, column: 1, scope: !425)
!429 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink", scope: !106, file: !106, line: 49, type: !430, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !41}
!432 = !DILocalVariable(name: "dataArray", arg: 1, scope: !429, file: !106, line: 49, type: !41)
!433 = !DILocation(line: 49, column: 77, scope: !429)
!434 = !DILocalVariable(name: "data", scope: !429, file: !106, line: 52, type: !42)
!435 = !DILocation(line: 52, column: 12, scope: !429)
!436 = !DILocation(line: 52, column: 19, scope: !429)
!437 = !DILocalVariable(name: "i", scope: !438, file: !106, line: 54, type: !23)
!438 = distinct !DILexicalBlock(scope: !429, file: !106, line: 53, column: 5)
!439 = !DILocation(line: 54, column: 13, scope: !438)
!440 = !DILocalVariable(name: "n", scope: !438, file: !106, line: 54, type: !23)
!441 = !DILocation(line: 54, column: 16, scope: !438)
!442 = !DILocalVariable(name: "intVariable", scope: !438, file: !106, line: 54, type: !23)
!443 = !DILocation(line: 54, column: 19, scope: !438)
!444 = !DILocation(line: 55, column: 20, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !106, line: 55, column: 13)
!446 = !DILocation(line: 55, column: 13, scope: !445)
!447 = !DILocation(line: 55, column: 36, scope: !445)
!448 = !DILocation(line: 55, column: 13, scope: !438)
!449 = !DILocation(line: 58, column: 25, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !106, line: 56, column: 9)
!451 = !DILocation(line: 59, column: 20, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !106, line: 59, column: 13)
!453 = !DILocation(line: 59, column: 18, scope: !452)
!454 = !DILocation(line: 59, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !106, line: 59, column: 13)
!456 = !DILocation(line: 59, column: 29, scope: !455)
!457 = !DILocation(line: 59, column: 27, scope: !455)
!458 = !DILocation(line: 59, column: 13, scope: !452)
!459 = !DILocation(line: 62, column: 28, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !106, line: 60, column: 13)
!461 = !DILocation(line: 63, column: 13, scope: !460)
!462 = !DILocation(line: 59, column: 33, scope: !455)
!463 = !DILocation(line: 59, column: 13, scope: !455)
!464 = distinct !{!464, !458, !465, !466}
!465 = !DILocation(line: 63, column: 13, scope: !452)
!466 = !{!"llvm.loop.mustprogress"}
!467 = !DILocation(line: 64, column: 26, scope: !450)
!468 = !DILocation(line: 64, column: 13, scope: !450)
!469 = !DILocation(line: 65, column: 9, scope: !450)
!470 = !DILocation(line: 67, column: 1, scope: !429)
!471 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink", scope: !106, file: !106, line: 74, type: !430, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!472 = !DILocalVariable(name: "dataArray", arg: 1, scope: !471, file: !106, line: 74, type: !41)
!473 = !DILocation(line: 74, column: 81, scope: !471)
!474 = !DILocalVariable(name: "data", scope: !471, file: !106, line: 76, type: !42)
!475 = !DILocation(line: 76, column: 12, scope: !471)
!476 = !DILocation(line: 76, column: 19, scope: !471)
!477 = !DILocalVariable(name: "i", scope: !478, file: !106, line: 78, type: !23)
!478 = distinct !DILexicalBlock(scope: !471, file: !106, line: 77, column: 5)
!479 = !DILocation(line: 78, column: 13, scope: !478)
!480 = !DILocalVariable(name: "n", scope: !478, file: !106, line: 78, type: !23)
!481 = !DILocation(line: 78, column: 16, scope: !478)
!482 = !DILocalVariable(name: "intVariable", scope: !478, file: !106, line: 78, type: !23)
!483 = !DILocation(line: 78, column: 19, scope: !478)
!484 = !DILocation(line: 79, column: 20, scope: !485)
!485 = distinct !DILexicalBlock(scope: !478, file: !106, line: 79, column: 13)
!486 = !DILocation(line: 79, column: 13, scope: !485)
!487 = !DILocation(line: 79, column: 36, scope: !485)
!488 = !DILocation(line: 79, column: 13, scope: !478)
!489 = !DILocation(line: 82, column: 25, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !106, line: 80, column: 9)
!491 = !DILocation(line: 83, column: 20, scope: !492)
!492 = distinct !DILexicalBlock(scope: !490, file: !106, line: 83, column: 13)
!493 = !DILocation(line: 83, column: 18, scope: !492)
!494 = !DILocation(line: 83, column: 25, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !106, line: 83, column: 13)
!496 = !DILocation(line: 83, column: 29, scope: !495)
!497 = !DILocation(line: 83, column: 27, scope: !495)
!498 = !DILocation(line: 83, column: 13, scope: !492)
!499 = !DILocation(line: 86, column: 28, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !106, line: 84, column: 13)
!501 = !DILocation(line: 87, column: 13, scope: !500)
!502 = !DILocation(line: 83, column: 33, scope: !495)
!503 = !DILocation(line: 83, column: 13, scope: !495)
!504 = distinct !{!504, !498, !505, !466}
!505 = !DILocation(line: 87, column: 13, scope: !492)
!506 = !DILocation(line: 88, column: 26, scope: !490)
!507 = !DILocation(line: 88, column: 13, scope: !490)
!508 = !DILocation(line: 89, column: 9, scope: !490)
!509 = !DILocation(line: 91, column: 1, scope: !471)
!510 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink", scope: !106, file: !106, line: 94, type: !430, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!511 = !DILocalVariable(name: "dataArray", arg: 1, scope: !510, file: !106, line: 94, type: !41)
!512 = !DILocation(line: 94, column: 81, scope: !510)
!513 = !DILocalVariable(name: "data", scope: !510, file: !106, line: 96, type: !42)
!514 = !DILocation(line: 96, column: 12, scope: !510)
!515 = !DILocation(line: 96, column: 19, scope: !510)
!516 = !DILocalVariable(name: "i", scope: !517, file: !106, line: 98, type: !23)
!517 = distinct !DILexicalBlock(scope: !510, file: !106, line: 97, column: 5)
!518 = !DILocation(line: 98, column: 13, scope: !517)
!519 = !DILocalVariable(name: "n", scope: !517, file: !106, line: 98, type: !23)
!520 = !DILocation(line: 98, column: 16, scope: !517)
!521 = !DILocalVariable(name: "intVariable", scope: !517, file: !106, line: 98, type: !23)
!522 = !DILocation(line: 98, column: 19, scope: !517)
!523 = !DILocation(line: 99, column: 20, scope: !524)
!524 = distinct !DILexicalBlock(scope: !517, file: !106, line: 99, column: 13)
!525 = !DILocation(line: 99, column: 13, scope: !524)
!526 = !DILocation(line: 99, column: 36, scope: !524)
!527 = !DILocation(line: 99, column: 13, scope: !517)
!528 = !DILocation(line: 102, column: 17, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !106, line: 102, column: 17)
!530 = distinct !DILexicalBlock(scope: !524, file: !106, line: 100, column: 9)
!531 = !DILocation(line: 102, column: 19, scope: !529)
!532 = !DILocation(line: 102, column: 17, scope: !530)
!533 = !DILocation(line: 104, column: 29, scope: !534)
!534 = distinct !DILexicalBlock(scope: !529, file: !106, line: 103, column: 13)
!535 = !DILocation(line: 105, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !534, file: !106, line: 105, column: 17)
!537 = !DILocation(line: 105, column: 22, scope: !536)
!538 = !DILocation(line: 105, column: 29, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !106, line: 105, column: 17)
!540 = !DILocation(line: 105, column: 33, scope: !539)
!541 = !DILocation(line: 105, column: 31, scope: !539)
!542 = !DILocation(line: 105, column: 17, scope: !536)
!543 = !DILocation(line: 108, column: 32, scope: !544)
!544 = distinct !DILexicalBlock(scope: !539, file: !106, line: 106, column: 17)
!545 = !DILocation(line: 109, column: 17, scope: !544)
!546 = !DILocation(line: 105, column: 37, scope: !539)
!547 = !DILocation(line: 105, column: 17, scope: !539)
!548 = distinct !{!548, !542, !549, !466}
!549 = !DILocation(line: 109, column: 17, scope: !536)
!550 = !DILocation(line: 110, column: 30, scope: !534)
!551 = !DILocation(line: 110, column: 17, scope: !534)
!552 = !DILocation(line: 111, column: 13, scope: !534)
!553 = !DILocation(line: 112, column: 9, scope: !530)
!554 = !DILocation(line: 114, column: 1, scope: !510)
!555 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !556, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !42}
!558 = !DILocalVariable(name: "line", arg: 1, scope: !555, file: !3, line: 11, type: !42)
!559 = !DILocation(line: 11, column: 25, scope: !555)
!560 = !DILocation(line: 13, column: 1, scope: !555)
!561 = !DILocation(line: 14, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !555, file: !3, line: 14, column: 8)
!563 = !DILocation(line: 14, column: 13, scope: !562)
!564 = !DILocation(line: 14, column: 8, scope: !555)
!565 = !DILocation(line: 16, column: 24, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 15, column: 5)
!567 = !DILocation(line: 16, column: 9, scope: !566)
!568 = !DILocation(line: 17, column: 5, scope: !566)
!569 = !DILocation(line: 18, column: 5, scope: !555)
!570 = !DILocation(line: 19, column: 1, scope: !555)
!571 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !556, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DILocalVariable(name: "line", arg: 1, scope: !571, file: !3, line: 20, type: !42)
!573 = !DILocation(line: 20, column: 29, scope: !571)
!574 = !DILocation(line: 22, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 22, column: 8)
!576 = !DILocation(line: 22, column: 13, scope: !575)
!577 = !DILocation(line: 22, column: 8, scope: !571)
!578 = !DILocation(line: 24, column: 24, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !3, line: 23, column: 5)
!580 = !DILocation(line: 24, column: 9, scope: !579)
!581 = !DILocation(line: 25, column: 5, scope: !579)
!582 = !DILocation(line: 26, column: 1, scope: !571)
!583 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !584, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !157, line: 74, baseType: !23)
!588 = !DILocalVariable(name: "line", arg: 1, scope: !583, file: !3, line: 27, type: !586)
!589 = !DILocation(line: 27, column: 29, scope: !583)
!590 = !DILocation(line: 29, column: 8, scope: !591)
!591 = distinct !DILexicalBlock(scope: !583, file: !3, line: 29, column: 8)
!592 = !DILocation(line: 29, column: 13, scope: !591)
!593 = !DILocation(line: 29, column: 8, scope: !583)
!594 = !DILocation(line: 31, column: 27, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !3, line: 30, column: 5)
!596 = !DILocation(line: 31, column: 9, scope: !595)
!597 = !DILocation(line: 32, column: 5, scope: !595)
!598 = !DILocation(line: 33, column: 1, scope: !583)
!599 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !600, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !23}
!602 = !DILocalVariable(name: "intNumber", arg: 1, scope: !599, file: !3, line: 35, type: !23)
!603 = !DILocation(line: 35, column: 24, scope: !599)
!604 = !DILocation(line: 37, column: 20, scope: !599)
!605 = !DILocation(line: 37, column: 5, scope: !599)
!606 = !DILocation(line: 38, column: 1, scope: !599)
!607 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !608, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!611 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !607, file: !3, line: 40, type: !610)
!612 = !DILocation(line: 40, column: 28, scope: !607)
!613 = !DILocation(line: 42, column: 21, scope: !607)
!614 = !DILocation(line: 42, column: 5, scope: !607)
!615 = !DILocation(line: 43, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !617, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!620 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !616, file: !3, line: 45, type: !619)
!621 = !DILocation(line: 45, column: 28, scope: !616)
!622 = !DILocation(line: 47, column: 20, scope: !616)
!623 = !DILocation(line: 47, column: 5, scope: !616)
!624 = !DILocation(line: 48, column: 1, scope: !616)
!625 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !626, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!629 = !DILocalVariable(name: "longNumber", arg: 1, scope: !625, file: !3, line: 50, type: !628)
!630 = !DILocation(line: 50, column: 26, scope: !625)
!631 = !DILocation(line: 52, column: 21, scope: !625)
!632 = !DILocation(line: 52, column: 5, scope: !625)
!633 = !DILocation(line: 53, column: 1, scope: !625)
!634 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !635, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !637}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !638, line: 27, baseType: !639)
!638 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !628)
!640 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !634, file: !3, line: 55, type: !637)
!641 = !DILocation(line: 55, column: 33, scope: !634)
!642 = !DILocation(line: 57, column: 29, scope: !634)
!643 = !DILocation(line: 57, column: 5, scope: !634)
!644 = !DILocation(line: 58, column: 1, scope: !634)
!645 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !646, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !156}
!648 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !645, file: !3, line: 60, type: !156)
!649 = !DILocation(line: 60, column: 29, scope: !645)
!650 = !DILocation(line: 62, column: 21, scope: !645)
!651 = !DILocation(line: 62, column: 5, scope: !645)
!652 = !DILocation(line: 63, column: 1, scope: !645)
!653 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !654, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !43}
!656 = !DILocalVariable(name: "charHex", arg: 1, scope: !653, file: !3, line: 65, type: !43)
!657 = !DILocation(line: 65, column: 29, scope: !653)
!658 = !DILocation(line: 67, column: 22, scope: !653)
!659 = !DILocation(line: 67, column: 5, scope: !653)
!660 = !DILocation(line: 68, column: 1, scope: !653)
!661 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !662, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !587}
!664 = !DILocalVariable(name: "wideChar", arg: 1, scope: !661, file: !3, line: 70, type: !587)
!665 = !DILocation(line: 70, column: 29, scope: !661)
!666 = !DILocalVariable(name: "s", scope: !661, file: !3, line: 74, type: !667)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 64, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 2)
!670 = !DILocation(line: 74, column: 13, scope: !661)
!671 = !DILocation(line: 75, column: 16, scope: !661)
!672 = !DILocation(line: 75, column: 9, scope: !661)
!673 = !DILocation(line: 75, column: 14, scope: !661)
!674 = !DILocation(line: 76, column: 9, scope: !661)
!675 = !DILocation(line: 76, column: 14, scope: !661)
!676 = !DILocation(line: 77, column: 21, scope: !661)
!677 = !DILocation(line: 77, column: 5, scope: !661)
!678 = !DILocation(line: 78, column: 1, scope: !661)
!679 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !680, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !7}
!682 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !679, file: !3, line: 80, type: !7)
!683 = !DILocation(line: 80, column: 33, scope: !679)
!684 = !DILocation(line: 82, column: 20, scope: !679)
!685 = !DILocation(line: 82, column: 5, scope: !679)
!686 = !DILocation(line: 83, column: 1, scope: !679)
!687 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !688, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !25}
!690 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !687, file: !3, line: 85, type: !25)
!691 = !DILocation(line: 85, column: 45, scope: !687)
!692 = !DILocation(line: 87, column: 22, scope: !687)
!693 = !DILocation(line: 87, column: 5, scope: !687)
!694 = !DILocation(line: 88, column: 1, scope: !687)
!695 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !696, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698}
!698 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!699 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !695, file: !3, line: 90, type: !698)
!700 = !DILocation(line: 90, column: 29, scope: !695)
!701 = !DILocation(line: 92, column: 20, scope: !695)
!702 = !DILocation(line: 92, column: 5, scope: !695)
!703 = !DILocation(line: 93, column: 1, scope: !695)
!704 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !705, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !709, line: 100, baseType: !710)
!709 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/source_code")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !709, line: 96, size: 64, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !710, file: !709, line: 98, baseType: !23, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !710, file: !709, line: 99, baseType: !23, size: 32, offset: 32)
!714 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !704, file: !3, line: 95, type: !707)
!715 = !DILocation(line: 95, column: 40, scope: !704)
!716 = !DILocation(line: 97, column: 26, scope: !704)
!717 = !DILocation(line: 97, column: 47, scope: !704)
!718 = !DILocation(line: 97, column: 55, scope: !704)
!719 = !DILocation(line: 97, column: 76, scope: !704)
!720 = !DILocation(line: 97, column: 5, scope: !704)
!721 = !DILocation(line: 98, column: 1, scope: !704)
!722 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !723, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725, !156}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!726 = !DILocalVariable(name: "bytes", arg: 1, scope: !722, file: !3, line: 100, type: !725)
!727 = !DILocation(line: 100, column: 38, scope: !722)
!728 = !DILocalVariable(name: "numBytes", arg: 2, scope: !722, file: !3, line: 100, type: !156)
!729 = !DILocation(line: 100, column: 52, scope: !722)
!730 = !DILocalVariable(name: "i", scope: !722, file: !3, line: 102, type: !156)
!731 = !DILocation(line: 102, column: 12, scope: !722)
!732 = !DILocation(line: 103, column: 12, scope: !733)
!733 = distinct !DILexicalBlock(scope: !722, file: !3, line: 103, column: 5)
!734 = !DILocation(line: 103, column: 10, scope: !733)
!735 = !DILocation(line: 103, column: 17, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 103, column: 5)
!737 = !DILocation(line: 103, column: 21, scope: !736)
!738 = !DILocation(line: 103, column: 19, scope: !736)
!739 = !DILocation(line: 103, column: 5, scope: !733)
!740 = !DILocation(line: 105, column: 24, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !3, line: 104, column: 5)
!742 = !DILocation(line: 105, column: 30, scope: !741)
!743 = !DILocation(line: 105, column: 9, scope: !741)
!744 = !DILocation(line: 106, column: 5, scope: !741)
!745 = !DILocation(line: 103, column: 31, scope: !736)
!746 = !DILocation(line: 103, column: 5, scope: !736)
!747 = distinct !{!747, !739, !748, !466}
!748 = !DILocation(line: 106, column: 5, scope: !733)
!749 = !DILocation(line: 107, column: 5, scope: !722)
!750 = !DILocation(line: 108, column: 1, scope: !722)
!751 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !752, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DISubroutineType(types: !753)
!753 = !{!156, !725, !156, !42}
!754 = !DILocalVariable(name: "bytes", arg: 1, scope: !751, file: !3, line: 113, type: !725)
!755 = !DILocation(line: 113, column: 39, scope: !751)
!756 = !DILocalVariable(name: "numBytes", arg: 2, scope: !751, file: !3, line: 113, type: !156)
!757 = !DILocation(line: 113, column: 53, scope: !751)
!758 = !DILocalVariable(name: "hex", arg: 3, scope: !751, file: !3, line: 113, type: !42)
!759 = !DILocation(line: 113, column: 71, scope: !751)
!760 = !DILocalVariable(name: "numWritten", scope: !751, file: !3, line: 115, type: !156)
!761 = !DILocation(line: 115, column: 12, scope: !751)
!762 = !DILocation(line: 121, column: 5, scope: !751)
!763 = !DILocation(line: 121, column: 12, scope: !751)
!764 = !DILocation(line: 121, column: 25, scope: !751)
!765 = !DILocation(line: 121, column: 23, scope: !751)
!766 = !DILocation(line: 121, column: 34, scope: !751)
!767 = !DILocation(line: 121, column: 37, scope: !751)
!768 = !DILocation(line: 121, column: 67, scope: !751)
!769 = !DILocation(line: 121, column: 70, scope: !751)
!770 = !DILocation(line: 0, scope: !751)
!771 = !DILocalVariable(name: "byte", scope: !772, file: !3, line: 123, type: !23)
!772 = distinct !DILexicalBlock(scope: !751, file: !3, line: 122, column: 5)
!773 = !DILocation(line: 123, column: 13, scope: !772)
!774 = !DILocation(line: 124, column: 17, scope: !772)
!775 = !DILocation(line: 124, column: 25, scope: !772)
!776 = !DILocation(line: 124, column: 23, scope: !772)
!777 = !DILocation(line: 124, column: 9, scope: !772)
!778 = !DILocation(line: 125, column: 45, scope: !772)
!779 = !DILocation(line: 125, column: 29, scope: !772)
!780 = !DILocation(line: 125, column: 9, scope: !772)
!781 = !DILocation(line: 125, column: 15, scope: !772)
!782 = !DILocation(line: 125, column: 27, scope: !772)
!783 = !DILocation(line: 126, column: 9, scope: !772)
!784 = distinct !{!784, !762, !785, !466}
!785 = !DILocation(line: 127, column: 5, scope: !751)
!786 = !DILocation(line: 129, column: 12, scope: !751)
!787 = !DILocation(line: 129, column: 5, scope: !751)
!788 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !789, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DISubroutineType(types: !790)
!790 = !{!156, !725, !156, !586}
!791 = !DILocalVariable(name: "bytes", arg: 1, scope: !788, file: !3, line: 135, type: !725)
!792 = !DILocation(line: 135, column: 41, scope: !788)
!793 = !DILocalVariable(name: "numBytes", arg: 2, scope: !788, file: !3, line: 135, type: !156)
!794 = !DILocation(line: 135, column: 55, scope: !788)
!795 = !DILocalVariable(name: "hex", arg: 3, scope: !788, file: !3, line: 135, type: !586)
!796 = !DILocation(line: 135, column: 76, scope: !788)
!797 = !DILocalVariable(name: "numWritten", scope: !788, file: !3, line: 137, type: !156)
!798 = !DILocation(line: 137, column: 12, scope: !788)
!799 = !DILocation(line: 143, column: 5, scope: !788)
!800 = !DILocation(line: 143, column: 12, scope: !788)
!801 = !DILocation(line: 143, column: 25, scope: !788)
!802 = !DILocation(line: 143, column: 23, scope: !788)
!803 = !DILocation(line: 143, column: 34, scope: !788)
!804 = !DILocation(line: 143, column: 47, scope: !788)
!805 = !DILocation(line: 143, column: 55, scope: !788)
!806 = !DILocation(line: 143, column: 53, scope: !788)
!807 = !DILocation(line: 143, column: 37, scope: !788)
!808 = !DILocation(line: 143, column: 68, scope: !788)
!809 = !DILocation(line: 143, column: 81, scope: !788)
!810 = !DILocation(line: 143, column: 89, scope: !788)
!811 = !DILocation(line: 143, column: 87, scope: !788)
!812 = !DILocation(line: 143, column: 100, scope: !788)
!813 = !DILocation(line: 143, column: 71, scope: !788)
!814 = !DILocation(line: 0, scope: !788)
!815 = !DILocalVariable(name: "byte", scope: !816, file: !3, line: 145, type: !23)
!816 = distinct !DILexicalBlock(scope: !788, file: !3, line: 144, column: 5)
!817 = !DILocation(line: 145, column: 13, scope: !816)
!818 = !DILocation(line: 146, column: 18, scope: !816)
!819 = !DILocation(line: 146, column: 26, scope: !816)
!820 = !DILocation(line: 146, column: 24, scope: !816)
!821 = !DILocation(line: 146, column: 9, scope: !816)
!822 = !DILocation(line: 147, column: 45, scope: !816)
!823 = !DILocation(line: 147, column: 29, scope: !816)
!824 = !DILocation(line: 147, column: 9, scope: !816)
!825 = !DILocation(line: 147, column: 15, scope: !816)
!826 = !DILocation(line: 147, column: 27, scope: !816)
!827 = !DILocation(line: 148, column: 9, scope: !816)
!828 = distinct !{!828, !799, !829, !466}
!829 = !DILocation(line: 149, column: 5, scope: !788)
!830 = !DILocation(line: 151, column: 12, scope: !788)
!831 = !DILocation(line: 151, column: 5, scope: !788)
!832 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !833, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!833 = !DISubroutineType(types: !834)
!834 = !{!23}
!835 = !DILocation(line: 158, column: 5, scope: !832)
!836 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !833, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!837 = !DILocation(line: 163, column: 5, scope: !836)
!838 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !833, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!839 = !DILocation(line: 168, column: 13, scope: !838)
!840 = !DILocation(line: 168, column: 20, scope: !838)
!841 = !DILocation(line: 168, column: 5, scope: !838)
!842 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!843 = !DILocation(line: 187, column: 16, scope: !842)
!844 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!845 = !DILocation(line: 188, column: 16, scope: !844)
!846 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!847 = !DILocation(line: 189, column: 16, scope: !846)
!848 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!849 = !DILocation(line: 190, column: 16, scope: !848)
!850 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!851 = !DILocation(line: 191, column: 16, scope: !850)
!852 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!853 = !DILocation(line: 192, column: 16, scope: !852)
!854 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!855 = !DILocation(line: 193, column: 16, scope: !854)
!856 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!857 = !DILocation(line: 194, column: 16, scope: !856)
!858 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!859 = !DILocation(line: 195, column: 16, scope: !858)
!860 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!861 = !DILocation(line: 198, column: 15, scope: !860)
!862 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!863 = !DILocation(line: 199, column: 15, scope: !862)
!864 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!865 = !DILocation(line: 200, column: 15, scope: !864)
!866 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!867 = !DILocation(line: 201, column: 15, scope: !866)
!868 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!869 = !DILocation(line: 202, column: 15, scope: !868)
!870 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!871 = !DILocation(line: 203, column: 15, scope: !870)
!872 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!873 = !DILocation(line: 204, column: 15, scope: !872)
!874 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!875 = !DILocation(line: 205, column: 15, scope: !874)
!876 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!877 = !DILocation(line: 206, column: 15, scope: !876)
