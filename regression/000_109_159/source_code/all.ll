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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !117, metadata !DIExpression()), !dbg !121
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !121
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
  %28 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !267
  %29 = load i8*, i8** %data, align 8, !dbg !268
  call void %28(i8* %29), !dbg !267
  ret void, !dbg !269
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
define dso_local void @goodG2B() #0 !dbg !270 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !273, metadata !DIExpression()), !dbg !274
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !276
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !277
  store i8* %arraydecay, i8** %data, align 8, !dbg !278
  %1 = load i8*, i8** %data, align 8, !dbg !279
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !280
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !281
  %3 = load i8*, i8** %data, align 8, !dbg !282
  call void %2(i8* %3), !dbg !281
  ret void, !dbg !283
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !284 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !287, metadata !DIExpression()), !dbg !288
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !288
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
  %28 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !413
  %29 = load i8*, i8** %data, align 8, !dbg !414
  call void %28(i8* %29), !dbg !413
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65_good() #0 !dbg !416 {
entry:
  call void @goodG2B(), !dbg !417
  call void @goodB2G(), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink(i8* %data) #0 !dbg !420 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata i32* %i, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %n, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i8*, i8** %data.addr, align 8, !dbg !430
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !432
  %cmp = icmp eq i32 %call, 1, !dbg !433
  br i1 %cmp, label %if.then, label %if.end, !dbg !434

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !435
  store i32 0, i32* %i, align 4, !dbg !437
  br label %for.cond, !dbg !439

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !440
  %2 = load i32, i32* %n, align 4, !dbg !442
  %cmp1 = icmp slt i32 %1, %2, !dbg !443
  br i1 %cmp1, label %for.body, label %for.end, !dbg !444

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !445
  %inc = add nsw i32 %3, 1, !dbg !445
  store i32 %inc, i32* %intVariable, align 4, !dbg !445
  br label %for.inc, !dbg !447

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !448
  %inc2 = add nsw i32 %4, 1, !dbg !448
  store i32 %inc2, i32* %i, align 4, !dbg !448
  br label %for.cond, !dbg !449, !llvm.loop !450

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !453
  call void @printIntLine(i32 %5), !dbg !454
  br label %if.end, !dbg !455

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !456
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodG2BSink(i8* %data) #0 !dbg !457 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %i, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata i32* %n, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i8*, i8** %data.addr, align 8, !dbg !467
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !469
  %cmp = icmp eq i32 %call, 1, !dbg !470
  br i1 %cmp, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !472
  store i32 0, i32* %i, align 4, !dbg !474
  br label %for.cond, !dbg !476

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !477
  %2 = load i32, i32* %n, align 4, !dbg !479
  %cmp1 = icmp slt i32 %1, %2, !dbg !480
  br i1 %cmp1, label %for.body, label %for.end, !dbg !481

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !482
  %inc = add nsw i32 %3, 1, !dbg !482
  store i32 %inc, i32* %intVariable, align 4, !dbg !482
  br label %for.inc, !dbg !484

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !485
  %inc2 = add nsw i32 %4, 1, !dbg !485
  store i32 %inc2, i32* %i, align 4, !dbg !485
  br label %for.cond, !dbg !486, !llvm.loop !487

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !489
  call void @printIntLine(i32 %5), !dbg !490
  br label %if.end, !dbg !491

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodB2GSink(i8* %data) #0 !dbg !493 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata i32* %i, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %n, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i8*, i8** %data.addr, align 8, !dbg !503
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !505
  %cmp = icmp eq i32 %call, 1, !dbg !506
  br i1 %cmp, label %if.then, label %if.end5, !dbg !507

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !508
  %cmp1 = icmp slt i32 %1, 10000, !dbg !511
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !512

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !513
  store i32 0, i32* %i, align 4, !dbg !515
  br label %for.cond, !dbg !517

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !518
  %3 = load i32, i32* %n, align 4, !dbg !520
  %cmp3 = icmp slt i32 %2, %3, !dbg !521
  br i1 %cmp3, label %for.body, label %for.end, !dbg !522

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !523
  %inc = add nsw i32 %4, 1, !dbg !523
  store i32 %inc, i32* %intVariable, align 4, !dbg !523
  br label %for.inc, !dbg !525

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !526
  %inc4 = add nsw i32 %5, 1, !dbg !526
  store i32 %inc4, i32* %i, align 4, !dbg !526
  br label %for.cond, !dbg !527, !llvm.loop !528

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !530
  call void @printIntLine(i32 %6), !dbg !531
  br label %if.end, !dbg !532

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !533

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !535 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !538
  %0 = load i8*, i8** %line.addr, align 8, !dbg !539
  %cmp = icmp ne i8* %0, null, !dbg !541
  br i1 %cmp, label %if.then, label %if.end, !dbg !542

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !543
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !545
  br label %if.end, !dbg !546

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !547
  ret void, !dbg !548
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !549 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %0 = load i8*, i8** %line.addr, align 8, !dbg !552
  %cmp = icmp ne i8* %0, null, !dbg !554
  br i1 %cmp, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !558
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !561 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i32*, i32** %line.addr, align 8, !dbg !568
  %cmp = icmp ne i32* %0, null, !dbg !570
  br i1 %cmp, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !572
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !574
  br label %if.end, !dbg !575

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !576
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !577 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !585 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !589, metadata !DIExpression()), !dbg !590
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !591
  %conv = sext i16 %0 to i32, !dbg !591
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !592
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !594 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !600
  %conv = fpext float %0 to double, !dbg !600
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !601
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !603 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !609
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !612 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !623 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !628
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !629
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !631 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !636
  %conv = sext i8 %0 to i32, !dbg !636
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !637
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !639 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !644, metadata !DIExpression()), !dbg !648
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !649
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !650
  store i32 %0, i32* %arrayidx, align 4, !dbg !651
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !652
  store i32 0, i32* %arrayidx1, align 4, !dbg !653
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !654
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !655
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !657 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !662
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !663
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !665 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !668, metadata !DIExpression()), !dbg !669
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !670
  %conv = zext i8 %0 to i32, !dbg !670
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !671
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !673 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !677, metadata !DIExpression()), !dbg !678
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !679
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !682 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !694
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !695
  %1 = load i32, i32* %intOne, align 4, !dbg !695
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !696
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !697
  %3 = load i32, i32* %intTwo, align 4, !dbg !697
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !698
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !700 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.declare(metadata i64* %i, metadata !708, metadata !DIExpression()), !dbg !709
  store i64 0, i64* %i, align 8, !dbg !710
  br label %for.cond, !dbg !712

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !713
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !715
  %cmp = icmp ult i64 %0, %1, !dbg !716
  br i1 %cmp, label %for.body, label %for.end, !dbg !717

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !718
  %3 = load i64, i64* %i, align 8, !dbg !720
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !718
  %4 = load i8, i8* %arrayidx, align 1, !dbg !718
  %conv = zext i8 %4 to i32, !dbg !718
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !721
  br label %for.inc, !dbg !722

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !723
  %inc = add i64 %5, 1, !dbg !723
  store i64 %inc, i64* %i, align 8, !dbg !723
  br label %for.cond, !dbg !724, !llvm.loop !725

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !727
  ret void, !dbg !728
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !729 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !732, metadata !DIExpression()), !dbg !733
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !734, metadata !DIExpression()), !dbg !735
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !738, metadata !DIExpression()), !dbg !739
  store i64 0, i64* %numWritten, align 8, !dbg !739
  br label %while.cond, !dbg !740

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !741
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !742
  %cmp = icmp ult i64 %0, %1, !dbg !743
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !744

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !745
  %2 = load i16*, i16** %call, align 8, !dbg !745
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !745
  %4 = load i64, i64* %numWritten, align 8, !dbg !745
  %mul = mul i64 2, %4, !dbg !745
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !745
  %5 = load i8, i8* %arrayidx, align 1, !dbg !745
  %conv = sext i8 %5 to i32, !dbg !745
  %idxprom = sext i32 %conv to i64, !dbg !745
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !745
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !745
  %conv2 = zext i16 %6 to i32, !dbg !745
  %and = and i32 %conv2, 4096, !dbg !745
  %tobool = icmp ne i32 %and, 0, !dbg !745
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !746

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !747
  %7 = load i16*, i16** %call3, align 8, !dbg !747
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !747
  %9 = load i64, i64* %numWritten, align 8, !dbg !747
  %mul4 = mul i64 2, %9, !dbg !747
  %add = add i64 %mul4, 1, !dbg !747
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !747
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !747
  %conv6 = sext i8 %10 to i32, !dbg !747
  %idxprom7 = sext i32 %conv6 to i64, !dbg !747
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !747
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !747
  %conv9 = zext i16 %11 to i32, !dbg !747
  %and10 = and i32 %conv9, 4096, !dbg !747
  %tobool11 = icmp ne i32 %and10, 0, !dbg !746
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !748
  br i1 %12, label %while.body, label %while.end, !dbg !740

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !749, metadata !DIExpression()), !dbg !751
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !752
  %14 = load i64, i64* %numWritten, align 8, !dbg !753
  %mul12 = mul i64 2, %14, !dbg !754
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !752
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !755
  %15 = load i32, i32* %byte, align 4, !dbg !756
  %conv15 = trunc i32 %15 to i8, !dbg !757
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !758
  %17 = load i64, i64* %numWritten, align 8, !dbg !759
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !758
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !760
  %18 = load i64, i64* %numWritten, align 8, !dbg !761
  %inc = add i64 %18, 1, !dbg !761
  store i64 %inc, i64* %numWritten, align 8, !dbg !761
  br label %while.cond, !dbg !740, !llvm.loop !762

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !764
  ret i64 %19, !dbg !765
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !766 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !769, metadata !DIExpression()), !dbg !770
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !771, metadata !DIExpression()), !dbg !772
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !775, metadata !DIExpression()), !dbg !776
  store i64 0, i64* %numWritten, align 8, !dbg !776
  br label %while.cond, !dbg !777

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !778
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !779
  %cmp = icmp ult i64 %0, %1, !dbg !780
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !781

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !782
  %3 = load i64, i64* %numWritten, align 8, !dbg !783
  %mul = mul i64 2, %3, !dbg !784
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !782
  %4 = load i32, i32* %arrayidx, align 4, !dbg !782
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !785
  %tobool = icmp ne i32 %call, 0, !dbg !785
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !786

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !787
  %6 = load i64, i64* %numWritten, align 8, !dbg !788
  %mul1 = mul i64 2, %6, !dbg !789
  %add = add i64 %mul1, 1, !dbg !790
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !787
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !787
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !791
  %tobool4 = icmp ne i32 %call3, 0, !dbg !786
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !792
  br i1 %8, label %while.body, label %while.end, !dbg !777

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !793, metadata !DIExpression()), !dbg !795
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !796
  %10 = load i64, i64* %numWritten, align 8, !dbg !797
  %mul5 = mul i64 2, %10, !dbg !798
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !796
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !799
  %11 = load i32, i32* %byte, align 4, !dbg !800
  %conv = trunc i32 %11 to i8, !dbg !801
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !802
  %13 = load i64, i64* %numWritten, align 8, !dbg !803
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !802
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !804
  %14 = load i64, i64* %numWritten, align 8, !dbg !805
  %inc = add i64 %14, 1, !dbg !805
  store i64 %inc, i64* %numWritten, align 8, !dbg !805
  br label %while.cond, !dbg !777, !llvm.loop !806

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !808
  ret i64 %15, !dbg !809
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !810 {
entry:
  ret i32 1, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !814 {
entry:
  ret i32 0, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !816 {
entry:
  %call = call i32 @rand() #8, !dbg !817
  %rem = srem i32 %call, 2, !dbg !818
  ret i32 %rem, !dbg !819
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !820 {
entry:
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !822 {
entry:
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !834 {
entry:
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !836 {
entry:
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !838 {
entry:
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !840 {
entry:
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !850 {
entry:
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !852 {
entry:
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !854 {
entry:
  ret void, !dbg !855
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_159/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_159/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_159/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65_bad", scope: !45, file: !45, line: 52, type: !113, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 54, type: !42)
!116 = !DILocation(line: 54, column: 12, scope: !112)
!117 = !DILocalVariable(name: "funcPtr", scope: !112, file: !45, line: 56, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !42}
!121 = !DILocation(line: 56, column: 12, scope: !112)
!122 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 57, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 100)
!126 = !DILocation(line: 57, column: 10, scope: !112)
!127 = !DILocation(line: 58, column: 12, scope: !112)
!128 = !DILocation(line: 58, column: 10, scope: !112)
!129 = !DILocalVariable(name: "recvResult", scope: !130, file: !45, line: 64, type: !23)
!130 = distinct !DILexicalBlock(scope: !112, file: !45, line: 59, column: 5)
!131 = !DILocation(line: 64, column: 13, scope: !130)
!132 = !DILocalVariable(name: "service", scope: !130, file: !45, line: 65, type: !133)
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
!148 = !DILocation(line: 65, column: 28, scope: !130)
!149 = !DILocalVariable(name: "replace", scope: !130, file: !45, line: 66, type: !42)
!150 = !DILocation(line: 66, column: 15, scope: !130)
!151 = !DILocalVariable(name: "listenSocket", scope: !130, file: !45, line: 67, type: !23)
!152 = !DILocation(line: 67, column: 16, scope: !130)
!153 = !DILocalVariable(name: "acceptSocket", scope: !130, file: !45, line: 68, type: !23)
!154 = !DILocation(line: 68, column: 16, scope: !130)
!155 = !DILocalVariable(name: "dataLen", scope: !130, file: !45, line: 69, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !158)
!157 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DILocation(line: 69, column: 16, scope: !130)
!160 = !DILocation(line: 69, column: 33, scope: !130)
!161 = !DILocation(line: 69, column: 26, scope: !130)
!162 = !DILocation(line: 70, column: 9, scope: !130)
!163 = !DILocation(line: 80, column: 28, scope: !164)
!164 = distinct !DILexicalBlock(scope: !130, file: !45, line: 71, column: 9)
!165 = !DILocation(line: 80, column: 26, scope: !164)
!166 = !DILocation(line: 81, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !45, line: 81, column: 17)
!168 = !DILocation(line: 81, column: 30, scope: !167)
!169 = !DILocation(line: 81, column: 17, scope: !164)
!170 = !DILocation(line: 83, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 82, column: 13)
!172 = !DILocation(line: 85, column: 13, scope: !164)
!173 = !DILocation(line: 86, column: 21, scope: !164)
!174 = !DILocation(line: 86, column: 32, scope: !164)
!175 = !DILocation(line: 87, column: 21, scope: !164)
!176 = !DILocation(line: 87, column: 30, scope: !164)
!177 = !DILocation(line: 87, column: 37, scope: !164)
!178 = !DILocation(line: 88, column: 32, scope: !164)
!179 = !DILocation(line: 88, column: 21, scope: !164)
!180 = !DILocation(line: 88, column: 30, scope: !164)
!181 = !DILocation(line: 89, column: 22, scope: !182)
!182 = distinct !DILexicalBlock(scope: !164, file: !45, line: 89, column: 17)
!183 = !DILocation(line: 89, column: 36, scope: !182)
!184 = !DILocation(line: 89, column: 17, scope: !182)
!185 = !DILocation(line: 89, column: 81, scope: !182)
!186 = !DILocation(line: 89, column: 17, scope: !164)
!187 = !DILocation(line: 91, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !45, line: 90, column: 13)
!189 = !DILocation(line: 93, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !164, file: !45, line: 93, column: 17)
!191 = !DILocation(line: 93, column: 17, scope: !190)
!192 = !DILocation(line: 93, column: 54, scope: !190)
!193 = !DILocation(line: 93, column: 17, scope: !164)
!194 = !DILocation(line: 95, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 94, column: 13)
!196 = !DILocation(line: 97, column: 35, scope: !164)
!197 = !DILocation(line: 97, column: 28, scope: !164)
!198 = !DILocation(line: 97, column: 26, scope: !164)
!199 = !DILocation(line: 98, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !164, file: !45, line: 98, column: 17)
!201 = !DILocation(line: 98, column: 30, scope: !200)
!202 = !DILocation(line: 98, column: 17, scope: !164)
!203 = !DILocation(line: 100, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 99, column: 13)
!205 = !DILocation(line: 103, column: 31, scope: !164)
!206 = !DILocation(line: 103, column: 54, scope: !164)
!207 = !DILocation(line: 103, column: 61, scope: !164)
!208 = !DILocation(line: 103, column: 59, scope: !164)
!209 = !DILocation(line: 103, column: 93, scope: !164)
!210 = !DILocation(line: 103, column: 91, scope: !164)
!211 = !DILocation(line: 103, column: 101, scope: !164)
!212 = !DILocation(line: 103, column: 84, scope: !164)
!213 = !DILocation(line: 103, column: 26, scope: !164)
!214 = !DILocation(line: 103, column: 24, scope: !164)
!215 = !DILocation(line: 104, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !164, file: !45, line: 104, column: 17)
!217 = !DILocation(line: 104, column: 28, scope: !216)
!218 = !DILocation(line: 104, column: 44, scope: !216)
!219 = !DILocation(line: 104, column: 47, scope: !216)
!220 = !DILocation(line: 104, column: 58, scope: !216)
!221 = !DILocation(line: 104, column: 17, scope: !164)
!222 = !DILocation(line: 106, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !45, line: 105, column: 13)
!224 = !DILocation(line: 109, column: 13, scope: !164)
!225 = !DILocation(line: 109, column: 18, scope: !164)
!226 = !DILocation(line: 109, column: 28, scope: !164)
!227 = !DILocation(line: 109, column: 39, scope: !164)
!228 = !DILocation(line: 109, column: 26, scope: !164)
!229 = !DILocation(line: 109, column: 55, scope: !164)
!230 = !DILocation(line: 111, column: 30, scope: !164)
!231 = !DILocation(line: 111, column: 23, scope: !164)
!232 = !DILocation(line: 111, column: 21, scope: !164)
!233 = !DILocation(line: 112, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !164, file: !45, line: 112, column: 17)
!235 = !DILocation(line: 112, column: 17, scope: !164)
!236 = !DILocation(line: 114, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !45, line: 113, column: 13)
!238 = !DILocation(line: 114, column: 26, scope: !237)
!239 = !DILocation(line: 115, column: 13, scope: !237)
!240 = !DILocation(line: 116, column: 30, scope: !164)
!241 = !DILocation(line: 116, column: 23, scope: !164)
!242 = !DILocation(line: 116, column: 21, scope: !164)
!243 = !DILocation(line: 117, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !164, file: !45, line: 117, column: 17)
!245 = !DILocation(line: 117, column: 17, scope: !164)
!246 = !DILocation(line: 119, column: 18, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !45, line: 118, column: 13)
!248 = !DILocation(line: 119, column: 26, scope: !247)
!249 = !DILocation(line: 120, column: 13, scope: !247)
!250 = !DILocation(line: 121, column: 9, scope: !164)
!251 = !DILocation(line: 123, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !130, file: !45, line: 123, column: 13)
!253 = !DILocation(line: 123, column: 26, scope: !252)
!254 = !DILocation(line: 123, column: 13, scope: !130)
!255 = !DILocation(line: 125, column: 26, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 124, column: 9)
!257 = !DILocation(line: 125, column: 13, scope: !256)
!258 = !DILocation(line: 126, column: 9, scope: !256)
!259 = !DILocation(line: 127, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !130, file: !45, line: 127, column: 13)
!261 = !DILocation(line: 127, column: 26, scope: !260)
!262 = !DILocation(line: 127, column: 13, scope: !130)
!263 = !DILocation(line: 129, column: 26, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !45, line: 128, column: 9)
!265 = !DILocation(line: 129, column: 13, scope: !264)
!266 = !DILocation(line: 130, column: 9, scope: !264)
!267 = !DILocation(line: 139, column: 5, scope: !112)
!268 = !DILocation(line: 139, column: 13, scope: !112)
!269 = !DILocation(line: 140, column: 1, scope: !112)
!270 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 148, type: !113, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!271 = !DILocalVariable(name: "data", scope: !270, file: !45, line: 150, type: !42)
!272 = !DILocation(line: 150, column: 12, scope: !270)
!273 = !DILocalVariable(name: "funcPtr", scope: !270, file: !45, line: 151, type: !118)
!274 = !DILocation(line: 151, column: 12, scope: !270)
!275 = !DILocalVariable(name: "dataBuffer", scope: !270, file: !45, line: 152, type: !123)
!276 = !DILocation(line: 152, column: 10, scope: !270)
!277 = !DILocation(line: 153, column: 12, scope: !270)
!278 = !DILocation(line: 153, column: 10, scope: !270)
!279 = !DILocation(line: 155, column: 12, scope: !270)
!280 = !DILocation(line: 155, column: 5, scope: !270)
!281 = !DILocation(line: 156, column: 5, scope: !270)
!282 = !DILocation(line: 156, column: 13, scope: !270)
!283 = !DILocation(line: 157, column: 1, scope: !270)
!284 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 161, type: !113, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!285 = !DILocalVariable(name: "data", scope: !284, file: !45, line: 163, type: !42)
!286 = !DILocation(line: 163, column: 12, scope: !284)
!287 = !DILocalVariable(name: "funcPtr", scope: !284, file: !45, line: 164, type: !118)
!288 = !DILocation(line: 164, column: 12, scope: !284)
!289 = !DILocalVariable(name: "dataBuffer", scope: !284, file: !45, line: 165, type: !123)
!290 = !DILocation(line: 165, column: 10, scope: !284)
!291 = !DILocation(line: 166, column: 12, scope: !284)
!292 = !DILocation(line: 166, column: 10, scope: !284)
!293 = !DILocalVariable(name: "recvResult", scope: !294, file: !45, line: 172, type: !23)
!294 = distinct !DILexicalBlock(scope: !284, file: !45, line: 167, column: 5)
!295 = !DILocation(line: 172, column: 13, scope: !294)
!296 = !DILocalVariable(name: "service", scope: !294, file: !45, line: 173, type: !133)
!297 = !DILocation(line: 173, column: 28, scope: !294)
!298 = !DILocalVariable(name: "replace", scope: !294, file: !45, line: 174, type: !42)
!299 = !DILocation(line: 174, column: 15, scope: !294)
!300 = !DILocalVariable(name: "listenSocket", scope: !294, file: !45, line: 175, type: !23)
!301 = !DILocation(line: 175, column: 16, scope: !294)
!302 = !DILocalVariable(name: "acceptSocket", scope: !294, file: !45, line: 176, type: !23)
!303 = !DILocation(line: 176, column: 16, scope: !294)
!304 = !DILocalVariable(name: "dataLen", scope: !294, file: !45, line: 177, type: !156)
!305 = !DILocation(line: 177, column: 16, scope: !294)
!306 = !DILocation(line: 177, column: 33, scope: !294)
!307 = !DILocation(line: 177, column: 26, scope: !294)
!308 = !DILocation(line: 178, column: 9, scope: !294)
!309 = !DILocation(line: 188, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !294, file: !45, line: 179, column: 9)
!311 = !DILocation(line: 188, column: 26, scope: !310)
!312 = !DILocation(line: 189, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !45, line: 189, column: 17)
!314 = !DILocation(line: 189, column: 30, scope: !313)
!315 = !DILocation(line: 189, column: 17, scope: !310)
!316 = !DILocation(line: 191, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !45, line: 190, column: 13)
!318 = !DILocation(line: 193, column: 13, scope: !310)
!319 = !DILocation(line: 194, column: 21, scope: !310)
!320 = !DILocation(line: 194, column: 32, scope: !310)
!321 = !DILocation(line: 195, column: 21, scope: !310)
!322 = !DILocation(line: 195, column: 30, scope: !310)
!323 = !DILocation(line: 195, column: 37, scope: !310)
!324 = !DILocation(line: 196, column: 32, scope: !310)
!325 = !DILocation(line: 196, column: 21, scope: !310)
!326 = !DILocation(line: 196, column: 30, scope: !310)
!327 = !DILocation(line: 197, column: 22, scope: !328)
!328 = distinct !DILexicalBlock(scope: !310, file: !45, line: 197, column: 17)
!329 = !DILocation(line: 197, column: 36, scope: !328)
!330 = !DILocation(line: 197, column: 17, scope: !328)
!331 = !DILocation(line: 197, column: 81, scope: !328)
!332 = !DILocation(line: 197, column: 17, scope: !310)
!333 = !DILocation(line: 199, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !45, line: 198, column: 13)
!335 = !DILocation(line: 201, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !310, file: !45, line: 201, column: 17)
!337 = !DILocation(line: 201, column: 17, scope: !336)
!338 = !DILocation(line: 201, column: 54, scope: !336)
!339 = !DILocation(line: 201, column: 17, scope: !310)
!340 = !DILocation(line: 203, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !45, line: 202, column: 13)
!342 = !DILocation(line: 205, column: 35, scope: !310)
!343 = !DILocation(line: 205, column: 28, scope: !310)
!344 = !DILocation(line: 205, column: 26, scope: !310)
!345 = !DILocation(line: 206, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !310, file: !45, line: 206, column: 17)
!347 = !DILocation(line: 206, column: 30, scope: !346)
!348 = !DILocation(line: 206, column: 17, scope: !310)
!349 = !DILocation(line: 208, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !45, line: 207, column: 13)
!351 = !DILocation(line: 211, column: 31, scope: !310)
!352 = !DILocation(line: 211, column: 54, scope: !310)
!353 = !DILocation(line: 211, column: 61, scope: !310)
!354 = !DILocation(line: 211, column: 59, scope: !310)
!355 = !DILocation(line: 211, column: 93, scope: !310)
!356 = !DILocation(line: 211, column: 91, scope: !310)
!357 = !DILocation(line: 211, column: 101, scope: !310)
!358 = !DILocation(line: 211, column: 84, scope: !310)
!359 = !DILocation(line: 211, column: 26, scope: !310)
!360 = !DILocation(line: 211, column: 24, scope: !310)
!361 = !DILocation(line: 212, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !310, file: !45, line: 212, column: 17)
!363 = !DILocation(line: 212, column: 28, scope: !362)
!364 = !DILocation(line: 212, column: 44, scope: !362)
!365 = !DILocation(line: 212, column: 47, scope: !362)
!366 = !DILocation(line: 212, column: 58, scope: !362)
!367 = !DILocation(line: 212, column: 17, scope: !310)
!368 = !DILocation(line: 214, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !45, line: 213, column: 13)
!370 = !DILocation(line: 217, column: 13, scope: !310)
!371 = !DILocation(line: 217, column: 18, scope: !310)
!372 = !DILocation(line: 217, column: 28, scope: !310)
!373 = !DILocation(line: 217, column: 39, scope: !310)
!374 = !DILocation(line: 217, column: 26, scope: !310)
!375 = !DILocation(line: 217, column: 55, scope: !310)
!376 = !DILocation(line: 219, column: 30, scope: !310)
!377 = !DILocation(line: 219, column: 23, scope: !310)
!378 = !DILocation(line: 219, column: 21, scope: !310)
!379 = !DILocation(line: 220, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !310, file: !45, line: 220, column: 17)
!381 = !DILocation(line: 220, column: 17, scope: !310)
!382 = !DILocation(line: 222, column: 18, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !45, line: 221, column: 13)
!384 = !DILocation(line: 222, column: 26, scope: !383)
!385 = !DILocation(line: 223, column: 13, scope: !383)
!386 = !DILocation(line: 224, column: 30, scope: !310)
!387 = !DILocation(line: 224, column: 23, scope: !310)
!388 = !DILocation(line: 224, column: 21, scope: !310)
!389 = !DILocation(line: 225, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !310, file: !45, line: 225, column: 17)
!391 = !DILocation(line: 225, column: 17, scope: !310)
!392 = !DILocation(line: 227, column: 18, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !45, line: 226, column: 13)
!394 = !DILocation(line: 227, column: 26, scope: !393)
!395 = !DILocation(line: 228, column: 13, scope: !393)
!396 = !DILocation(line: 229, column: 9, scope: !310)
!397 = !DILocation(line: 231, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !294, file: !45, line: 231, column: 13)
!399 = !DILocation(line: 231, column: 26, scope: !398)
!400 = !DILocation(line: 231, column: 13, scope: !294)
!401 = !DILocation(line: 233, column: 26, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !45, line: 232, column: 9)
!403 = !DILocation(line: 233, column: 13, scope: !402)
!404 = !DILocation(line: 234, column: 9, scope: !402)
!405 = !DILocation(line: 235, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !294, file: !45, line: 235, column: 13)
!407 = !DILocation(line: 235, column: 26, scope: !406)
!408 = !DILocation(line: 235, column: 13, scope: !294)
!409 = !DILocation(line: 237, column: 26, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !45, line: 236, column: 9)
!411 = !DILocation(line: 237, column: 13, scope: !410)
!412 = !DILocation(line: 238, column: 9, scope: !410)
!413 = !DILocation(line: 246, column: 5, scope: !284)
!414 = !DILocation(line: 246, column: 13, scope: !284)
!415 = !DILocation(line: 247, column: 1, scope: !284)
!416 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65_good", scope: !45, file: !45, line: 249, type: !113, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!417 = !DILocation(line: 251, column: 5, scope: !416)
!418 = !DILocation(line: 252, column: 5, scope: !416)
!419 = !DILocation(line: 253, column: 1, scope: !416)
!420 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink", scope: !106, file: !106, line: 49, type: !119, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!421 = !DILocalVariable(name: "data", arg: 1, scope: !420, file: !106, line: 49, type: !42)
!422 = !DILocation(line: 49, column: 77, scope: !420)
!423 = !DILocalVariable(name: "i", scope: !424, file: !106, line: 52, type: !23)
!424 = distinct !DILexicalBlock(scope: !420, file: !106, line: 51, column: 5)
!425 = !DILocation(line: 52, column: 13, scope: !424)
!426 = !DILocalVariable(name: "n", scope: !424, file: !106, line: 52, type: !23)
!427 = !DILocation(line: 52, column: 16, scope: !424)
!428 = !DILocalVariable(name: "intVariable", scope: !424, file: !106, line: 52, type: !23)
!429 = !DILocation(line: 52, column: 19, scope: !424)
!430 = !DILocation(line: 53, column: 20, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !106, line: 53, column: 13)
!432 = !DILocation(line: 53, column: 13, scope: !431)
!433 = !DILocation(line: 53, column: 36, scope: !431)
!434 = !DILocation(line: 53, column: 13, scope: !424)
!435 = !DILocation(line: 56, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !106, line: 54, column: 9)
!437 = !DILocation(line: 57, column: 20, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !106, line: 57, column: 13)
!439 = !DILocation(line: 57, column: 18, scope: !438)
!440 = !DILocation(line: 57, column: 25, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !106, line: 57, column: 13)
!442 = !DILocation(line: 57, column: 29, scope: !441)
!443 = !DILocation(line: 57, column: 27, scope: !441)
!444 = !DILocation(line: 57, column: 13, scope: !438)
!445 = !DILocation(line: 60, column: 28, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !106, line: 58, column: 13)
!447 = !DILocation(line: 61, column: 13, scope: !446)
!448 = !DILocation(line: 57, column: 33, scope: !441)
!449 = !DILocation(line: 57, column: 13, scope: !441)
!450 = distinct !{!450, !444, !451, !452}
!451 = !DILocation(line: 61, column: 13, scope: !438)
!452 = !{!"llvm.loop.mustprogress"}
!453 = !DILocation(line: 62, column: 26, scope: !436)
!454 = !DILocation(line: 62, column: 13, scope: !436)
!455 = !DILocation(line: 63, column: 9, scope: !436)
!456 = !DILocation(line: 65, column: 1, scope: !420)
!457 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodG2BSink", scope: !106, file: !106, line: 72, type: !119, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!458 = !DILocalVariable(name: "data", arg: 1, scope: !457, file: !106, line: 72, type: !42)
!459 = !DILocation(line: 72, column: 81, scope: !457)
!460 = !DILocalVariable(name: "i", scope: !461, file: !106, line: 75, type: !23)
!461 = distinct !DILexicalBlock(scope: !457, file: !106, line: 74, column: 5)
!462 = !DILocation(line: 75, column: 13, scope: !461)
!463 = !DILocalVariable(name: "n", scope: !461, file: !106, line: 75, type: !23)
!464 = !DILocation(line: 75, column: 16, scope: !461)
!465 = !DILocalVariable(name: "intVariable", scope: !461, file: !106, line: 75, type: !23)
!466 = !DILocation(line: 75, column: 19, scope: !461)
!467 = !DILocation(line: 76, column: 20, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !106, line: 76, column: 13)
!469 = !DILocation(line: 76, column: 13, scope: !468)
!470 = !DILocation(line: 76, column: 36, scope: !468)
!471 = !DILocation(line: 76, column: 13, scope: !461)
!472 = !DILocation(line: 79, column: 25, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !106, line: 77, column: 9)
!474 = !DILocation(line: 80, column: 20, scope: !475)
!475 = distinct !DILexicalBlock(scope: !473, file: !106, line: 80, column: 13)
!476 = !DILocation(line: 80, column: 18, scope: !475)
!477 = !DILocation(line: 80, column: 25, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !106, line: 80, column: 13)
!479 = !DILocation(line: 80, column: 29, scope: !478)
!480 = !DILocation(line: 80, column: 27, scope: !478)
!481 = !DILocation(line: 80, column: 13, scope: !475)
!482 = !DILocation(line: 83, column: 28, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !106, line: 81, column: 13)
!484 = !DILocation(line: 84, column: 13, scope: !483)
!485 = !DILocation(line: 80, column: 33, scope: !478)
!486 = !DILocation(line: 80, column: 13, scope: !478)
!487 = distinct !{!487, !481, !488, !452}
!488 = !DILocation(line: 84, column: 13, scope: !475)
!489 = !DILocation(line: 85, column: 26, scope: !473)
!490 = !DILocation(line: 85, column: 13, scope: !473)
!491 = !DILocation(line: 86, column: 9, scope: !473)
!492 = !DILocation(line: 88, column: 1, scope: !457)
!493 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodB2GSink", scope: !106, file: !106, line: 91, type: !119, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!494 = !DILocalVariable(name: "data", arg: 1, scope: !493, file: !106, line: 91, type: !42)
!495 = !DILocation(line: 91, column: 81, scope: !493)
!496 = !DILocalVariable(name: "i", scope: !497, file: !106, line: 94, type: !23)
!497 = distinct !DILexicalBlock(scope: !493, file: !106, line: 93, column: 5)
!498 = !DILocation(line: 94, column: 13, scope: !497)
!499 = !DILocalVariable(name: "n", scope: !497, file: !106, line: 94, type: !23)
!500 = !DILocation(line: 94, column: 16, scope: !497)
!501 = !DILocalVariable(name: "intVariable", scope: !497, file: !106, line: 94, type: !23)
!502 = !DILocation(line: 94, column: 19, scope: !497)
!503 = !DILocation(line: 95, column: 20, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !106, line: 95, column: 13)
!505 = !DILocation(line: 95, column: 13, scope: !504)
!506 = !DILocation(line: 95, column: 36, scope: !504)
!507 = !DILocation(line: 95, column: 13, scope: !497)
!508 = !DILocation(line: 98, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !106, line: 98, column: 17)
!510 = distinct !DILexicalBlock(scope: !504, file: !106, line: 96, column: 9)
!511 = !DILocation(line: 98, column: 19, scope: !509)
!512 = !DILocation(line: 98, column: 17, scope: !510)
!513 = !DILocation(line: 100, column: 29, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !106, line: 99, column: 13)
!515 = !DILocation(line: 101, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !106, line: 101, column: 17)
!517 = !DILocation(line: 101, column: 22, scope: !516)
!518 = !DILocation(line: 101, column: 29, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !106, line: 101, column: 17)
!520 = !DILocation(line: 101, column: 33, scope: !519)
!521 = !DILocation(line: 101, column: 31, scope: !519)
!522 = !DILocation(line: 101, column: 17, scope: !516)
!523 = !DILocation(line: 104, column: 32, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !106, line: 102, column: 17)
!525 = !DILocation(line: 105, column: 17, scope: !524)
!526 = !DILocation(line: 101, column: 37, scope: !519)
!527 = !DILocation(line: 101, column: 17, scope: !519)
!528 = distinct !{!528, !522, !529, !452}
!529 = !DILocation(line: 105, column: 17, scope: !516)
!530 = !DILocation(line: 106, column: 30, scope: !514)
!531 = !DILocation(line: 106, column: 17, scope: !514)
!532 = !DILocation(line: 107, column: 13, scope: !514)
!533 = !DILocation(line: 108, column: 9, scope: !510)
!534 = !DILocation(line: 110, column: 1, scope: !493)
!535 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !119, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!536 = !DILocalVariable(name: "line", arg: 1, scope: !535, file: !3, line: 11, type: !42)
!537 = !DILocation(line: 11, column: 25, scope: !535)
!538 = !DILocation(line: 13, column: 1, scope: !535)
!539 = !DILocation(line: 14, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !3, line: 14, column: 8)
!541 = !DILocation(line: 14, column: 13, scope: !540)
!542 = !DILocation(line: 14, column: 8, scope: !535)
!543 = !DILocation(line: 16, column: 24, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !3, line: 15, column: 5)
!545 = !DILocation(line: 16, column: 9, scope: !544)
!546 = !DILocation(line: 17, column: 5, scope: !544)
!547 = !DILocation(line: 18, column: 5, scope: !535)
!548 = !DILocation(line: 19, column: 1, scope: !535)
!549 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !119, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!550 = !DILocalVariable(name: "line", arg: 1, scope: !549, file: !3, line: 20, type: !42)
!551 = !DILocation(line: 20, column: 29, scope: !549)
!552 = !DILocation(line: 22, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 22, column: 8)
!554 = !DILocation(line: 22, column: 13, scope: !553)
!555 = !DILocation(line: 22, column: 8, scope: !549)
!556 = !DILocation(line: 24, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 23, column: 5)
!558 = !DILocation(line: 24, column: 9, scope: !557)
!559 = !DILocation(line: 25, column: 5, scope: !557)
!560 = !DILocation(line: 26, column: 1, scope: !549)
!561 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !562, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !157, line: 74, baseType: !23)
!566 = !DILocalVariable(name: "line", arg: 1, scope: !561, file: !3, line: 27, type: !564)
!567 = !DILocation(line: 27, column: 29, scope: !561)
!568 = !DILocation(line: 29, column: 8, scope: !569)
!569 = distinct !DILexicalBlock(scope: !561, file: !3, line: 29, column: 8)
!570 = !DILocation(line: 29, column: 13, scope: !569)
!571 = !DILocation(line: 29, column: 8, scope: !561)
!572 = !DILocation(line: 31, column: 27, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 30, column: 5)
!574 = !DILocation(line: 31, column: 9, scope: !573)
!575 = !DILocation(line: 32, column: 5, scope: !573)
!576 = !DILocation(line: 33, column: 1, scope: !561)
!577 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !578, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !23}
!580 = !DILocalVariable(name: "intNumber", arg: 1, scope: !577, file: !3, line: 35, type: !23)
!581 = !DILocation(line: 35, column: 24, scope: !577)
!582 = !DILocation(line: 37, column: 20, scope: !577)
!583 = !DILocation(line: 37, column: 5, scope: !577)
!584 = !DILocation(line: 38, column: 1, scope: !577)
!585 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !586, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !588}
!588 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!589 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !585, file: !3, line: 40, type: !588)
!590 = !DILocation(line: 40, column: 28, scope: !585)
!591 = !DILocation(line: 42, column: 21, scope: !585)
!592 = !DILocation(line: 42, column: 5, scope: !585)
!593 = !DILocation(line: 43, column: 1, scope: !585)
!594 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !595, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597}
!597 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!598 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !594, file: !3, line: 45, type: !597)
!599 = !DILocation(line: 45, column: 28, scope: !594)
!600 = !DILocation(line: 47, column: 20, scope: !594)
!601 = !DILocation(line: 47, column: 5, scope: !594)
!602 = !DILocation(line: 48, column: 1, scope: !594)
!603 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !604, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !606}
!606 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!607 = !DILocalVariable(name: "longNumber", arg: 1, scope: !603, file: !3, line: 50, type: !606)
!608 = !DILocation(line: 50, column: 26, scope: !603)
!609 = !DILocation(line: 52, column: 21, scope: !603)
!610 = !DILocation(line: 52, column: 5, scope: !603)
!611 = !DILocation(line: 53, column: 1, scope: !603)
!612 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !613, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !616, line: 27, baseType: !617)
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !606)
!618 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !612, file: !3, line: 55, type: !615)
!619 = !DILocation(line: 55, column: 33, scope: !612)
!620 = !DILocation(line: 57, column: 29, scope: !612)
!621 = !DILocation(line: 57, column: 5, scope: !612)
!622 = !DILocation(line: 58, column: 1, scope: !612)
!623 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !624, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !156}
!626 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !623, file: !3, line: 60, type: !156)
!627 = !DILocation(line: 60, column: 29, scope: !623)
!628 = !DILocation(line: 62, column: 21, scope: !623)
!629 = !DILocation(line: 62, column: 5, scope: !623)
!630 = !DILocation(line: 63, column: 1, scope: !623)
!631 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !632, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !43}
!634 = !DILocalVariable(name: "charHex", arg: 1, scope: !631, file: !3, line: 65, type: !43)
!635 = !DILocation(line: 65, column: 29, scope: !631)
!636 = !DILocation(line: 67, column: 22, scope: !631)
!637 = !DILocation(line: 67, column: 5, scope: !631)
!638 = !DILocation(line: 68, column: 1, scope: !631)
!639 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !640, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !565}
!642 = !DILocalVariable(name: "wideChar", arg: 1, scope: !639, file: !3, line: 70, type: !565)
!643 = !DILocation(line: 70, column: 29, scope: !639)
!644 = !DILocalVariable(name: "s", scope: !639, file: !3, line: 74, type: !645)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 64, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 2)
!648 = !DILocation(line: 74, column: 13, scope: !639)
!649 = !DILocation(line: 75, column: 16, scope: !639)
!650 = !DILocation(line: 75, column: 9, scope: !639)
!651 = !DILocation(line: 75, column: 14, scope: !639)
!652 = !DILocation(line: 76, column: 9, scope: !639)
!653 = !DILocation(line: 76, column: 14, scope: !639)
!654 = !DILocation(line: 77, column: 21, scope: !639)
!655 = !DILocation(line: 77, column: 5, scope: !639)
!656 = !DILocation(line: 78, column: 1, scope: !639)
!657 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !658, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !7}
!660 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !657, file: !3, line: 80, type: !7)
!661 = !DILocation(line: 80, column: 33, scope: !657)
!662 = !DILocation(line: 82, column: 20, scope: !657)
!663 = !DILocation(line: 82, column: 5, scope: !657)
!664 = !DILocation(line: 83, column: 1, scope: !657)
!665 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !666, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !25}
!668 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !665, file: !3, line: 85, type: !25)
!669 = !DILocation(line: 85, column: 45, scope: !665)
!670 = !DILocation(line: 87, column: 22, scope: !665)
!671 = !DILocation(line: 87, column: 5, scope: !665)
!672 = !DILocation(line: 88, column: 1, scope: !665)
!673 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !674, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676}
!676 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!677 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !673, file: !3, line: 90, type: !676)
!678 = !DILocation(line: 90, column: 29, scope: !673)
!679 = !DILocation(line: 92, column: 20, scope: !673)
!680 = !DILocation(line: 92, column: 5, scope: !673)
!681 = !DILocation(line: 93, column: 1, scope: !673)
!682 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !683, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !687, line: 100, baseType: !688)
!687 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_159/source_code")
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !687, line: 96, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !688, file: !687, line: 98, baseType: !23, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !688, file: !687, line: 99, baseType: !23, size: 32, offset: 32)
!692 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !682, file: !3, line: 95, type: !685)
!693 = !DILocation(line: 95, column: 40, scope: !682)
!694 = !DILocation(line: 97, column: 26, scope: !682)
!695 = !DILocation(line: 97, column: 47, scope: !682)
!696 = !DILocation(line: 97, column: 55, scope: !682)
!697 = !DILocation(line: 97, column: 76, scope: !682)
!698 = !DILocation(line: 97, column: 5, scope: !682)
!699 = !DILocation(line: 98, column: 1, scope: !682)
!700 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !701, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703, !156}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!704 = !DILocalVariable(name: "bytes", arg: 1, scope: !700, file: !3, line: 100, type: !703)
!705 = !DILocation(line: 100, column: 38, scope: !700)
!706 = !DILocalVariable(name: "numBytes", arg: 2, scope: !700, file: !3, line: 100, type: !156)
!707 = !DILocation(line: 100, column: 52, scope: !700)
!708 = !DILocalVariable(name: "i", scope: !700, file: !3, line: 102, type: !156)
!709 = !DILocation(line: 102, column: 12, scope: !700)
!710 = !DILocation(line: 103, column: 12, scope: !711)
!711 = distinct !DILexicalBlock(scope: !700, file: !3, line: 103, column: 5)
!712 = !DILocation(line: 103, column: 10, scope: !711)
!713 = !DILocation(line: 103, column: 17, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !3, line: 103, column: 5)
!715 = !DILocation(line: 103, column: 21, scope: !714)
!716 = !DILocation(line: 103, column: 19, scope: !714)
!717 = !DILocation(line: 103, column: 5, scope: !711)
!718 = !DILocation(line: 105, column: 24, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 104, column: 5)
!720 = !DILocation(line: 105, column: 30, scope: !719)
!721 = !DILocation(line: 105, column: 9, scope: !719)
!722 = !DILocation(line: 106, column: 5, scope: !719)
!723 = !DILocation(line: 103, column: 31, scope: !714)
!724 = !DILocation(line: 103, column: 5, scope: !714)
!725 = distinct !{!725, !717, !726, !452}
!726 = !DILocation(line: 106, column: 5, scope: !711)
!727 = !DILocation(line: 107, column: 5, scope: !700)
!728 = !DILocation(line: 108, column: 1, scope: !700)
!729 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !730, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!730 = !DISubroutineType(types: !731)
!731 = !{!156, !703, !156, !42}
!732 = !DILocalVariable(name: "bytes", arg: 1, scope: !729, file: !3, line: 113, type: !703)
!733 = !DILocation(line: 113, column: 39, scope: !729)
!734 = !DILocalVariable(name: "numBytes", arg: 2, scope: !729, file: !3, line: 113, type: !156)
!735 = !DILocation(line: 113, column: 53, scope: !729)
!736 = !DILocalVariable(name: "hex", arg: 3, scope: !729, file: !3, line: 113, type: !42)
!737 = !DILocation(line: 113, column: 71, scope: !729)
!738 = !DILocalVariable(name: "numWritten", scope: !729, file: !3, line: 115, type: !156)
!739 = !DILocation(line: 115, column: 12, scope: !729)
!740 = !DILocation(line: 121, column: 5, scope: !729)
!741 = !DILocation(line: 121, column: 12, scope: !729)
!742 = !DILocation(line: 121, column: 25, scope: !729)
!743 = !DILocation(line: 121, column: 23, scope: !729)
!744 = !DILocation(line: 121, column: 34, scope: !729)
!745 = !DILocation(line: 121, column: 37, scope: !729)
!746 = !DILocation(line: 121, column: 67, scope: !729)
!747 = !DILocation(line: 121, column: 70, scope: !729)
!748 = !DILocation(line: 0, scope: !729)
!749 = !DILocalVariable(name: "byte", scope: !750, file: !3, line: 123, type: !23)
!750 = distinct !DILexicalBlock(scope: !729, file: !3, line: 122, column: 5)
!751 = !DILocation(line: 123, column: 13, scope: !750)
!752 = !DILocation(line: 124, column: 17, scope: !750)
!753 = !DILocation(line: 124, column: 25, scope: !750)
!754 = !DILocation(line: 124, column: 23, scope: !750)
!755 = !DILocation(line: 124, column: 9, scope: !750)
!756 = !DILocation(line: 125, column: 45, scope: !750)
!757 = !DILocation(line: 125, column: 29, scope: !750)
!758 = !DILocation(line: 125, column: 9, scope: !750)
!759 = !DILocation(line: 125, column: 15, scope: !750)
!760 = !DILocation(line: 125, column: 27, scope: !750)
!761 = !DILocation(line: 126, column: 9, scope: !750)
!762 = distinct !{!762, !740, !763, !452}
!763 = !DILocation(line: 127, column: 5, scope: !729)
!764 = !DILocation(line: 129, column: 12, scope: !729)
!765 = !DILocation(line: 129, column: 5, scope: !729)
!766 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !767, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DISubroutineType(types: !768)
!768 = !{!156, !703, !156, !564}
!769 = !DILocalVariable(name: "bytes", arg: 1, scope: !766, file: !3, line: 135, type: !703)
!770 = !DILocation(line: 135, column: 41, scope: !766)
!771 = !DILocalVariable(name: "numBytes", arg: 2, scope: !766, file: !3, line: 135, type: !156)
!772 = !DILocation(line: 135, column: 55, scope: !766)
!773 = !DILocalVariable(name: "hex", arg: 3, scope: !766, file: !3, line: 135, type: !564)
!774 = !DILocation(line: 135, column: 76, scope: !766)
!775 = !DILocalVariable(name: "numWritten", scope: !766, file: !3, line: 137, type: !156)
!776 = !DILocation(line: 137, column: 12, scope: !766)
!777 = !DILocation(line: 143, column: 5, scope: !766)
!778 = !DILocation(line: 143, column: 12, scope: !766)
!779 = !DILocation(line: 143, column: 25, scope: !766)
!780 = !DILocation(line: 143, column: 23, scope: !766)
!781 = !DILocation(line: 143, column: 34, scope: !766)
!782 = !DILocation(line: 143, column: 47, scope: !766)
!783 = !DILocation(line: 143, column: 55, scope: !766)
!784 = !DILocation(line: 143, column: 53, scope: !766)
!785 = !DILocation(line: 143, column: 37, scope: !766)
!786 = !DILocation(line: 143, column: 68, scope: !766)
!787 = !DILocation(line: 143, column: 81, scope: !766)
!788 = !DILocation(line: 143, column: 89, scope: !766)
!789 = !DILocation(line: 143, column: 87, scope: !766)
!790 = !DILocation(line: 143, column: 100, scope: !766)
!791 = !DILocation(line: 143, column: 71, scope: !766)
!792 = !DILocation(line: 0, scope: !766)
!793 = !DILocalVariable(name: "byte", scope: !794, file: !3, line: 145, type: !23)
!794 = distinct !DILexicalBlock(scope: !766, file: !3, line: 144, column: 5)
!795 = !DILocation(line: 145, column: 13, scope: !794)
!796 = !DILocation(line: 146, column: 18, scope: !794)
!797 = !DILocation(line: 146, column: 26, scope: !794)
!798 = !DILocation(line: 146, column: 24, scope: !794)
!799 = !DILocation(line: 146, column: 9, scope: !794)
!800 = !DILocation(line: 147, column: 45, scope: !794)
!801 = !DILocation(line: 147, column: 29, scope: !794)
!802 = !DILocation(line: 147, column: 9, scope: !794)
!803 = !DILocation(line: 147, column: 15, scope: !794)
!804 = !DILocation(line: 147, column: 27, scope: !794)
!805 = !DILocation(line: 148, column: 9, scope: !794)
!806 = distinct !{!806, !777, !807, !452}
!807 = !DILocation(line: 149, column: 5, scope: !766)
!808 = !DILocation(line: 151, column: 12, scope: !766)
!809 = !DILocation(line: 151, column: 5, scope: !766)
!810 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !811, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DISubroutineType(types: !812)
!812 = !{!23}
!813 = !DILocation(line: 158, column: 5, scope: !810)
!814 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !811, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!815 = !DILocation(line: 163, column: 5, scope: !814)
!816 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !811, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!817 = !DILocation(line: 168, column: 13, scope: !816)
!818 = !DILocation(line: 168, column: 20, scope: !816)
!819 = !DILocation(line: 168, column: 5, scope: !816)
!820 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!821 = !DILocation(line: 187, column: 16, scope: !820)
!822 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!823 = !DILocation(line: 188, column: 16, scope: !822)
!824 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!825 = !DILocation(line: 189, column: 16, scope: !824)
!826 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!827 = !DILocation(line: 190, column: 16, scope: !826)
!828 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!829 = !DILocation(line: 191, column: 16, scope: !828)
!830 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!831 = !DILocation(line: 192, column: 16, scope: !830)
!832 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!833 = !DILocation(line: 193, column: 16, scope: !832)
!834 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!835 = !DILocation(line: 194, column: 16, scope: !834)
!836 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!837 = !DILocation(line: 195, column: 16, scope: !836)
!838 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!839 = !DILocation(line: 198, column: 15, scope: !838)
!840 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!841 = !DILocation(line: 199, column: 15, scope: !840)
!842 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!843 = !DILocation(line: 200, column: 15, scope: !842)
!844 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!845 = !DILocation(line: 201, column: 15, scope: !844)
!846 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!847 = !DILocation(line: 202, column: 15, scope: !846)
!848 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!849 = !DILocation(line: 203, column: 15, scope: !848)
!850 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!851 = !DILocation(line: 204, column: 15, scope: !850)
!852 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!853 = !DILocation(line: 205, column: 15, scope: !852)
!854 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!855 = !DILocation(line: 206, column: 15, scope: !854)
