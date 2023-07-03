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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !117, metadata !DIExpression()), !dbg !121
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !122
  store i8* %arraydecay, i8** %data, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !127, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 -1, i32* %listenSocket, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %acceptSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !150, metadata !DIExpression()), !dbg !154
  %1 = load i8*, i8** %data, align 8, !dbg !155
  %call = call i64 @strlen(i8* %1) #7, !dbg !156
  store i64 %call, i64* %dataLen, align 8, !dbg !154
  br label %do.body, !dbg !157

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !158
  store i32 %call1, i32* %listenSocket, align 4, !dbg !160
  %2 = load i32, i32* %listenSocket, align 4, !dbg !161
  %cmp = icmp eq i32 %2, -1, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !165

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !167
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !168
  store i16 2, i16* %sin_family, align 4, !dbg !169
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !170
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !171
  store i32 0, i32* %s_addr, align 4, !dbg !172
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !173
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !174
  store i16 %call2, i16* %sin_port, align 2, !dbg !175
  %4 = load i32, i32* %listenSocket, align 4, !dbg !176
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !178
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !179
  %cmp4 = icmp eq i32 %call3, -1, !dbg !180
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !181

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !182

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !184
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !186
  %cmp8 = icmp eq i32 %call7, -1, !dbg !187
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !188

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !189

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !191
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !192
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !193
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !194
  %cmp12 = icmp eq i32 %8, -1, !dbg !196
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !197

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !198

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !200
  %10 = load i8*, i8** %data, align 8, !dbg !201
  %11 = load i64, i64* %dataLen, align 8, !dbg !202
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !203
  %12 = load i64, i64* %dataLen, align 8, !dbg !204
  %sub = sub i64 100, %12, !dbg !205
  %sub15 = sub i64 %sub, 1, !dbg !206
  %mul = mul i64 1, %sub15, !dbg !207
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !208
  %conv = trunc i64 %call16 to i32, !dbg !208
  store i32 %conv, i32* %recvResult, align 4, !dbg !209
  %13 = load i32, i32* %recvResult, align 4, !dbg !210
  %cmp17 = icmp eq i32 %13, -1, !dbg !212
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !213

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !214
  %cmp19 = icmp eq i32 %14, 0, !dbg !215
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !216

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !217

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !219
  %16 = load i64, i64* %dataLen, align 8, !dbg !220
  %17 = load i32, i32* %recvResult, align 4, !dbg !221
  %conv23 = sext i32 %17 to i64, !dbg !221
  %div = udiv i64 %conv23, 1, !dbg !222
  %add = add i64 %16, %div, !dbg !223
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !219
  store i8 0, i8* %arrayidx, align 1, !dbg !224
  %18 = load i8*, i8** %data, align 8, !dbg !225
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !226
  store i8* %call24, i8** %replace, align 8, !dbg !227
  %19 = load i8*, i8** %replace, align 8, !dbg !228
  %tobool = icmp ne i8* %19, null, !dbg !228
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !230

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !231
  store i8 0, i8* %20, align 1, !dbg !233
  br label %if.end26, !dbg !234

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !235
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !236
  store i8* %call27, i8** %replace, align 8, !dbg !237
  %22 = load i8*, i8** %replace, align 8, !dbg !238
  %tobool28 = icmp ne i8* %22, null, !dbg !238
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !240

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !241
  store i8 0, i8* %23, align 1, !dbg !243
  br label %if.end30, !dbg !244

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !245

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !246
  %cmp31 = icmp ne i32 %24, -1, !dbg !248
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !249

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !250
  %call34 = call i32 @close(i32 %25), !dbg !252
  br label %if.end35, !dbg !253

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !254
  %cmp36 = icmp ne i32 %26, -1, !dbg !256
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !257

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !258
  %call39 = call i32 @close(i32 %27), !dbg !260
  br label %if.end40, !dbg !261

if.end40:                                         ; preds = %if.then38, %if.end35
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_badSink(i8** %data), !dbg !262
  ret void, !dbg !263
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
define dso_local void @goodG2B() #0 !dbg !264 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !268
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !268
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !269
  store i8* %arraydecay, i8** %data, align 8, !dbg !270
  %1 = load i8*, i8** %data, align 8, !dbg !271
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !272
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodG2BSink(i8** %data), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !275 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink(i8** %data), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63_good() #0 !dbg !404 {
entry:
  call void @goodG2B(), !dbg !405
  call void @goodB2G(), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_badSink(i8** %dataPtr) #0 !dbg !408 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i8** %data, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !415
  %1 = load i8*, i8** %0, align 8, !dbg !416
  store i8* %1, i8** %data, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata i32* %i, metadata !417, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %n, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !422, metadata !DIExpression()), !dbg !423
  %2 = load i8*, i8** %data, align 8, !dbg !424
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !426
  %cmp = icmp eq i32 %call, 1, !dbg !427
  br i1 %cmp, label %if.then, label %if.end, !dbg !428

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !429
  store i32 0, i32* %i, align 4, !dbg !431
  br label %for.cond, !dbg !433

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !434
  %4 = load i32, i32* %n, align 4, !dbg !436
  %cmp1 = icmp slt i32 %3, %4, !dbg !437
  br i1 %cmp1, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !439
  %inc = add nsw i32 %5, 1, !dbg !439
  store i32 %inc, i32* %intVariable, align 4, !dbg !439
  br label %for.inc, !dbg !441

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !442
  %inc2 = add nsw i32 %6, 1, !dbg !442
  store i32 %inc2, i32* %i, align 4, !dbg !442
  br label %for.cond, !dbg !443, !llvm.loop !444

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !447
  call void @printIntLine(i32 %7), !dbg !448
  br label %if.end, !dbg !449

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !450
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !451 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i8** %data, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !456
  %1 = load i8*, i8** %0, align 8, !dbg !457
  store i8* %1, i8** %data, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i32* %i, metadata !458, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata i32* %n, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !463, metadata !DIExpression()), !dbg !464
  %2 = load i8*, i8** %data, align 8, !dbg !465
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !467
  %cmp = icmp eq i32 %call, 1, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !470
  store i32 0, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !474

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !475
  %4 = load i32, i32* %n, align 4, !dbg !477
  %cmp1 = icmp slt i32 %3, %4, !dbg !478
  br i1 %cmp1, label %for.body, label %for.end, !dbg !479

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !480
  %inc = add nsw i32 %5, 1, !dbg !480
  store i32 %inc, i32* %intVariable, align 4, !dbg !480
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !483
  %inc2 = add nsw i32 %6, 1, !dbg !483
  store i32 %inc2, i32* %i, align 4, !dbg !483
  br label %for.cond, !dbg !484, !llvm.loop !485

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !487
  call void @printIntLine(i32 %7), !dbg !488
  br label %if.end, !dbg !489

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !491 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i8** %data, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !496
  %1 = load i8*, i8** %0, align 8, !dbg !497
  store i8* %1, i8** %data, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata i32* %i, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i32* %n, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !503, metadata !DIExpression()), !dbg !504
  %2 = load i8*, i8** %data, align 8, !dbg !505
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !507
  %cmp = icmp eq i32 %call, 1, !dbg !508
  br i1 %cmp, label %if.then, label %if.end5, !dbg !509

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !510
  %cmp1 = icmp slt i32 %3, 10000, !dbg !513
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !514

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !515
  store i32 0, i32* %i, align 4, !dbg !517
  br label %for.cond, !dbg !519

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !520
  %5 = load i32, i32* %n, align 4, !dbg !522
  %cmp3 = icmp slt i32 %4, %5, !dbg !523
  br i1 %cmp3, label %for.body, label %for.end, !dbg !524

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !525
  %inc = add nsw i32 %6, 1, !dbg !525
  store i32 %inc, i32* %intVariable, align 4, !dbg !525
  br label %for.inc, !dbg !527

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !528
  %inc4 = add nsw i32 %7, 1, !dbg !528
  store i32 %inc4, i32* %i, align 4, !dbg !528
  br label %for.cond, !dbg !529, !llvm.loop !530

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !532
  call void @printIntLine(i32 %8), !dbg !533
  br label %if.end, !dbg !534

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !535

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !537 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !540, metadata !DIExpression()), !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !542
  %0 = load i8*, i8** %line.addr, align 8, !dbg !543
  %cmp = icmp ne i8* %0, null, !dbg !545
  br i1 %cmp, label %if.then, label %if.end, !dbg !546

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !547
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !549
  br label %if.end, !dbg !550

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !551
  ret void, !dbg !552
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !553 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i8*, i8** %line.addr, align 8, !dbg !556
  %cmp = icmp ne i8* %0, null, !dbg !558
  br i1 %cmp, label %if.then, label %if.end, !dbg !559

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !560
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !562
  br label %if.end, !dbg !563

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !565 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load i32*, i32** %line.addr, align 8, !dbg !572
  %cmp = icmp ne i32* %0, null, !dbg !574
  br i1 %cmp, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !576
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !578
  br label %if.end, !dbg !579

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !580
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !581 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !589 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !595
  %conv = sext i16 %0 to i32, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !598 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !604
  %conv = fpext float %0 to double, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !607 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !616 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !627 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !632
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !635 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !638, metadata !DIExpression()), !dbg !639
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !640
  %conv = sext i8 %0 to i32, !dbg !640
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !641
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !643 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !648, metadata !DIExpression()), !dbg !652
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !653
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !654
  store i32 %0, i32* %arrayidx, align 4, !dbg !655
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !656
  store i32 0, i32* %arrayidx1, align 4, !dbg !657
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !658
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !661 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !666
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !667
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !669 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !674
  %conv = zext i8 %0 to i32, !dbg !674
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !677 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !686 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !698
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !699
  %1 = load i32, i32* %intOne, align 4, !dbg !699
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !700
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !701
  %3 = load i32, i32* %intTwo, align 4, !dbg !701
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !702
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !704 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !708, metadata !DIExpression()), !dbg !709
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.declare(metadata i64* %i, metadata !712, metadata !DIExpression()), !dbg !713
  store i64 0, i64* %i, align 8, !dbg !714
  br label %for.cond, !dbg !716

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !717
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !719
  %cmp = icmp ult i64 %0, %1, !dbg !720
  br i1 %cmp, label %for.body, label %for.end, !dbg !721

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !722
  %3 = load i64, i64* %i, align 8, !dbg !724
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !722
  %4 = load i8, i8* %arrayidx, align 1, !dbg !722
  %conv = zext i8 %4 to i32, !dbg !722
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !725
  br label %for.inc, !dbg !726

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !727
  %inc = add i64 %5, 1, !dbg !727
  store i64 %inc, i64* %i, align 8, !dbg !727
  br label %for.cond, !dbg !728, !llvm.loop !729

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !731
  ret void, !dbg !732
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !733 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !736, metadata !DIExpression()), !dbg !737
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !738, metadata !DIExpression()), !dbg !739
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !742, metadata !DIExpression()), !dbg !743
  store i64 0, i64* %numWritten, align 8, !dbg !743
  br label %while.cond, !dbg !744

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !745
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !746
  %cmp = icmp ult i64 %0, %1, !dbg !747
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !748

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !749
  %2 = load i16*, i16** %call, align 8, !dbg !749
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !749
  %4 = load i64, i64* %numWritten, align 8, !dbg !749
  %mul = mul i64 2, %4, !dbg !749
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !749
  %5 = load i8, i8* %arrayidx, align 1, !dbg !749
  %conv = sext i8 %5 to i32, !dbg !749
  %idxprom = sext i32 %conv to i64, !dbg !749
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !749
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !749
  %conv2 = zext i16 %6 to i32, !dbg !749
  %and = and i32 %conv2, 4096, !dbg !749
  %tobool = icmp ne i32 %and, 0, !dbg !749
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !750

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !751
  %7 = load i16*, i16** %call3, align 8, !dbg !751
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !751
  %9 = load i64, i64* %numWritten, align 8, !dbg !751
  %mul4 = mul i64 2, %9, !dbg !751
  %add = add i64 %mul4, 1, !dbg !751
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !751
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !751
  %conv6 = sext i8 %10 to i32, !dbg !751
  %idxprom7 = sext i32 %conv6 to i64, !dbg !751
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !751
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !751
  %conv9 = zext i16 %11 to i32, !dbg !751
  %and10 = and i32 %conv9, 4096, !dbg !751
  %tobool11 = icmp ne i32 %and10, 0, !dbg !750
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !752
  br i1 %12, label %while.body, label %while.end, !dbg !744

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !753, metadata !DIExpression()), !dbg !755
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !756
  %14 = load i64, i64* %numWritten, align 8, !dbg !757
  %mul12 = mul i64 2, %14, !dbg !758
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !756
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !759
  %15 = load i32, i32* %byte, align 4, !dbg !760
  %conv15 = trunc i32 %15 to i8, !dbg !761
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !762
  %17 = load i64, i64* %numWritten, align 8, !dbg !763
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !762
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !764
  %18 = load i64, i64* %numWritten, align 8, !dbg !765
  %inc = add i64 %18, 1, !dbg !765
  store i64 %inc, i64* %numWritten, align 8, !dbg !765
  br label %while.cond, !dbg !744, !llvm.loop !766

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !768
  ret i64 %19, !dbg !769
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !770 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !773, metadata !DIExpression()), !dbg !774
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !775, metadata !DIExpression()), !dbg !776
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !779, metadata !DIExpression()), !dbg !780
  store i64 0, i64* %numWritten, align 8, !dbg !780
  br label %while.cond, !dbg !781

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !782
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !783
  %cmp = icmp ult i64 %0, %1, !dbg !784
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !785

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !786
  %3 = load i64, i64* %numWritten, align 8, !dbg !787
  %mul = mul i64 2, %3, !dbg !788
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !786
  %4 = load i32, i32* %arrayidx, align 4, !dbg !786
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !789
  %tobool = icmp ne i32 %call, 0, !dbg !789
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !790

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !791
  %6 = load i64, i64* %numWritten, align 8, !dbg !792
  %mul1 = mul i64 2, %6, !dbg !793
  %add = add i64 %mul1, 1, !dbg !794
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !791
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !791
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !795
  %tobool4 = icmp ne i32 %call3, 0, !dbg !790
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !796
  br i1 %8, label %while.body, label %while.end, !dbg !781

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !797, metadata !DIExpression()), !dbg !799
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !800
  %10 = load i64, i64* %numWritten, align 8, !dbg !801
  %mul5 = mul i64 2, %10, !dbg !802
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !800
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !803
  %11 = load i32, i32* %byte, align 4, !dbg !804
  %conv = trunc i32 %11 to i8, !dbg !805
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !806
  %13 = load i64, i64* %numWritten, align 8, !dbg !807
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !806
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !808
  %14 = load i64, i64* %numWritten, align 8, !dbg !809
  %inc = add i64 %14, 1, !dbg !809
  store i64 %inc, i64* %numWritten, align 8, !dbg !809
  br label %while.cond, !dbg !781, !llvm.loop !810

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !812
  ret i64 %15, !dbg !813
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !814 {
entry:
  ret i32 1, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !818 {
entry:
  ret i32 0, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !820 {
entry:
  %call = call i32 @rand() #8, !dbg !821
  %rem = srem i32 %call, 2, !dbg !822
  ret i32 %rem, !dbg !823
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !834 {
entry:
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !836 {
entry:
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !838 {
entry:
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !840 {
entry:
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !850 {
entry:
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !852 {
entry:
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !854 {
entry:
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !856 {
entry:
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !858 {
entry:
  ret void, !dbg !859
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63_bad", scope: !45, file: !45, line: 52, type: !113, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 54, type: !42)
!116 = !DILocation(line: 54, column: 12, scope: !112)
!117 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 55, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 100)
!121 = !DILocation(line: 55, column: 10, scope: !112)
!122 = !DILocation(line: 56, column: 12, scope: !112)
!123 = !DILocation(line: 56, column: 10, scope: !112)
!124 = !DILocalVariable(name: "recvResult", scope: !125, file: !45, line: 62, type: !23)
!125 = distinct !DILexicalBlock(scope: !112, file: !45, line: 57, column: 5)
!126 = !DILocation(line: 62, column: 13, scope: !125)
!127 = !DILocalVariable(name: "service", scope: !125, file: !45, line: 63, type: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !129)
!129 = !{!130, !131, !135, !139}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !128, file: !60, line: 240, baseType: !99, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !128, file: !60, line: 241, baseType: !132, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !128, file: !60, line: 242, baseType: !136, size: 32, offset: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !136, file: !60, line: 33, baseType: !89, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !128, file: !60, line: 245, baseType: !140, size: 64, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DILocation(line: 63, column: 28, scope: !125)
!144 = !DILocalVariable(name: "replace", scope: !125, file: !45, line: 64, type: !42)
!145 = !DILocation(line: 64, column: 15, scope: !125)
!146 = !DILocalVariable(name: "listenSocket", scope: !125, file: !45, line: 65, type: !23)
!147 = !DILocation(line: 65, column: 16, scope: !125)
!148 = !DILocalVariable(name: "acceptSocket", scope: !125, file: !45, line: 66, type: !23)
!149 = !DILocation(line: 66, column: 16, scope: !125)
!150 = !DILocalVariable(name: "dataLen", scope: !125, file: !45, line: 67, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!153 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!154 = !DILocation(line: 67, column: 16, scope: !125)
!155 = !DILocation(line: 67, column: 33, scope: !125)
!156 = !DILocation(line: 67, column: 26, scope: !125)
!157 = !DILocation(line: 68, column: 9, scope: !125)
!158 = !DILocation(line: 78, column: 28, scope: !159)
!159 = distinct !DILexicalBlock(scope: !125, file: !45, line: 69, column: 9)
!160 = !DILocation(line: 78, column: 26, scope: !159)
!161 = !DILocation(line: 79, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !45, line: 79, column: 17)
!163 = !DILocation(line: 79, column: 30, scope: !162)
!164 = !DILocation(line: 79, column: 17, scope: !159)
!165 = !DILocation(line: 81, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !45, line: 80, column: 13)
!167 = !DILocation(line: 83, column: 13, scope: !159)
!168 = !DILocation(line: 84, column: 21, scope: !159)
!169 = !DILocation(line: 84, column: 32, scope: !159)
!170 = !DILocation(line: 85, column: 21, scope: !159)
!171 = !DILocation(line: 85, column: 30, scope: !159)
!172 = !DILocation(line: 85, column: 37, scope: !159)
!173 = !DILocation(line: 86, column: 32, scope: !159)
!174 = !DILocation(line: 86, column: 21, scope: !159)
!175 = !DILocation(line: 86, column: 30, scope: !159)
!176 = !DILocation(line: 87, column: 22, scope: !177)
!177 = distinct !DILexicalBlock(scope: !159, file: !45, line: 87, column: 17)
!178 = !DILocation(line: 87, column: 36, scope: !177)
!179 = !DILocation(line: 87, column: 17, scope: !177)
!180 = !DILocation(line: 87, column: 81, scope: !177)
!181 = !DILocation(line: 87, column: 17, scope: !159)
!182 = !DILocation(line: 89, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !45, line: 88, column: 13)
!184 = !DILocation(line: 91, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !159, file: !45, line: 91, column: 17)
!186 = !DILocation(line: 91, column: 17, scope: !185)
!187 = !DILocation(line: 91, column: 54, scope: !185)
!188 = !DILocation(line: 91, column: 17, scope: !159)
!189 = !DILocation(line: 93, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !45, line: 92, column: 13)
!191 = !DILocation(line: 95, column: 35, scope: !159)
!192 = !DILocation(line: 95, column: 28, scope: !159)
!193 = !DILocation(line: 95, column: 26, scope: !159)
!194 = !DILocation(line: 96, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !159, file: !45, line: 96, column: 17)
!196 = !DILocation(line: 96, column: 30, scope: !195)
!197 = !DILocation(line: 96, column: 17, scope: !159)
!198 = !DILocation(line: 98, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !45, line: 97, column: 13)
!200 = !DILocation(line: 101, column: 31, scope: !159)
!201 = !DILocation(line: 101, column: 54, scope: !159)
!202 = !DILocation(line: 101, column: 61, scope: !159)
!203 = !DILocation(line: 101, column: 59, scope: !159)
!204 = !DILocation(line: 101, column: 93, scope: !159)
!205 = !DILocation(line: 101, column: 91, scope: !159)
!206 = !DILocation(line: 101, column: 101, scope: !159)
!207 = !DILocation(line: 101, column: 84, scope: !159)
!208 = !DILocation(line: 101, column: 26, scope: !159)
!209 = !DILocation(line: 101, column: 24, scope: !159)
!210 = !DILocation(line: 102, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !159, file: !45, line: 102, column: 17)
!212 = !DILocation(line: 102, column: 28, scope: !211)
!213 = !DILocation(line: 102, column: 44, scope: !211)
!214 = !DILocation(line: 102, column: 47, scope: !211)
!215 = !DILocation(line: 102, column: 58, scope: !211)
!216 = !DILocation(line: 102, column: 17, scope: !159)
!217 = !DILocation(line: 104, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !45, line: 103, column: 13)
!219 = !DILocation(line: 107, column: 13, scope: !159)
!220 = !DILocation(line: 107, column: 18, scope: !159)
!221 = !DILocation(line: 107, column: 28, scope: !159)
!222 = !DILocation(line: 107, column: 39, scope: !159)
!223 = !DILocation(line: 107, column: 26, scope: !159)
!224 = !DILocation(line: 107, column: 55, scope: !159)
!225 = !DILocation(line: 109, column: 30, scope: !159)
!226 = !DILocation(line: 109, column: 23, scope: !159)
!227 = !DILocation(line: 109, column: 21, scope: !159)
!228 = !DILocation(line: 110, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !159, file: !45, line: 110, column: 17)
!230 = !DILocation(line: 110, column: 17, scope: !159)
!231 = !DILocation(line: 112, column: 18, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !45, line: 111, column: 13)
!233 = !DILocation(line: 112, column: 26, scope: !232)
!234 = !DILocation(line: 113, column: 13, scope: !232)
!235 = !DILocation(line: 114, column: 30, scope: !159)
!236 = !DILocation(line: 114, column: 23, scope: !159)
!237 = !DILocation(line: 114, column: 21, scope: !159)
!238 = !DILocation(line: 115, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !159, file: !45, line: 115, column: 17)
!240 = !DILocation(line: 115, column: 17, scope: !159)
!241 = !DILocation(line: 117, column: 18, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !45, line: 116, column: 13)
!243 = !DILocation(line: 117, column: 26, scope: !242)
!244 = !DILocation(line: 118, column: 13, scope: !242)
!245 = !DILocation(line: 119, column: 9, scope: !159)
!246 = !DILocation(line: 121, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !125, file: !45, line: 121, column: 13)
!248 = !DILocation(line: 121, column: 26, scope: !247)
!249 = !DILocation(line: 121, column: 13, scope: !125)
!250 = !DILocation(line: 123, column: 26, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 122, column: 9)
!252 = !DILocation(line: 123, column: 13, scope: !251)
!253 = !DILocation(line: 124, column: 9, scope: !251)
!254 = !DILocation(line: 125, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !125, file: !45, line: 125, column: 13)
!256 = !DILocation(line: 125, column: 26, scope: !255)
!257 = !DILocation(line: 125, column: 13, scope: !125)
!258 = !DILocation(line: 127, column: 26, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !45, line: 126, column: 9)
!260 = !DILocation(line: 127, column: 13, scope: !259)
!261 = !DILocation(line: 128, column: 9, scope: !259)
!262 = !DILocation(line: 136, column: 5, scope: !112)
!263 = !DILocation(line: 137, column: 1, scope: !112)
!264 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !113, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!265 = !DILocalVariable(name: "data", scope: !264, file: !45, line: 147, type: !42)
!266 = !DILocation(line: 147, column: 12, scope: !264)
!267 = !DILocalVariable(name: "dataBuffer", scope: !264, file: !45, line: 148, type: !118)
!268 = !DILocation(line: 148, column: 10, scope: !264)
!269 = !DILocation(line: 149, column: 12, scope: !264)
!270 = !DILocation(line: 149, column: 10, scope: !264)
!271 = !DILocation(line: 151, column: 12, scope: !264)
!272 = !DILocation(line: 151, column: 5, scope: !264)
!273 = !DILocation(line: 152, column: 5, scope: !264)
!274 = !DILocation(line: 153, column: 1, scope: !264)
!275 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !113, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!276 = !DILocalVariable(name: "data", scope: !275, file: !45, line: 159, type: !42)
!277 = !DILocation(line: 159, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !45, line: 160, type: !118)
!279 = !DILocation(line: 160, column: 10, scope: !275)
!280 = !DILocation(line: 161, column: 12, scope: !275)
!281 = !DILocation(line: 161, column: 10, scope: !275)
!282 = !DILocalVariable(name: "recvResult", scope: !283, file: !45, line: 167, type: !23)
!283 = distinct !DILexicalBlock(scope: !275, file: !45, line: 162, column: 5)
!284 = !DILocation(line: 167, column: 13, scope: !283)
!285 = !DILocalVariable(name: "service", scope: !283, file: !45, line: 168, type: !128)
!286 = !DILocation(line: 168, column: 28, scope: !283)
!287 = !DILocalVariable(name: "replace", scope: !283, file: !45, line: 169, type: !42)
!288 = !DILocation(line: 169, column: 15, scope: !283)
!289 = !DILocalVariable(name: "listenSocket", scope: !283, file: !45, line: 170, type: !23)
!290 = !DILocation(line: 170, column: 16, scope: !283)
!291 = !DILocalVariable(name: "acceptSocket", scope: !283, file: !45, line: 171, type: !23)
!292 = !DILocation(line: 171, column: 16, scope: !283)
!293 = !DILocalVariable(name: "dataLen", scope: !283, file: !45, line: 172, type: !151)
!294 = !DILocation(line: 172, column: 16, scope: !283)
!295 = !DILocation(line: 172, column: 33, scope: !283)
!296 = !DILocation(line: 172, column: 26, scope: !283)
!297 = !DILocation(line: 173, column: 9, scope: !283)
!298 = !DILocation(line: 183, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !283, file: !45, line: 174, column: 9)
!300 = !DILocation(line: 183, column: 26, scope: !299)
!301 = !DILocation(line: 184, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !45, line: 184, column: 17)
!303 = !DILocation(line: 184, column: 30, scope: !302)
!304 = !DILocation(line: 184, column: 17, scope: !299)
!305 = !DILocation(line: 186, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !45, line: 185, column: 13)
!307 = !DILocation(line: 188, column: 13, scope: !299)
!308 = !DILocation(line: 189, column: 21, scope: !299)
!309 = !DILocation(line: 189, column: 32, scope: !299)
!310 = !DILocation(line: 190, column: 21, scope: !299)
!311 = !DILocation(line: 190, column: 30, scope: !299)
!312 = !DILocation(line: 190, column: 37, scope: !299)
!313 = !DILocation(line: 191, column: 32, scope: !299)
!314 = !DILocation(line: 191, column: 21, scope: !299)
!315 = !DILocation(line: 191, column: 30, scope: !299)
!316 = !DILocation(line: 192, column: 22, scope: !317)
!317 = distinct !DILexicalBlock(scope: !299, file: !45, line: 192, column: 17)
!318 = !DILocation(line: 192, column: 36, scope: !317)
!319 = !DILocation(line: 192, column: 17, scope: !317)
!320 = !DILocation(line: 192, column: 81, scope: !317)
!321 = !DILocation(line: 192, column: 17, scope: !299)
!322 = !DILocation(line: 194, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !45, line: 193, column: 13)
!324 = !DILocation(line: 196, column: 24, scope: !325)
!325 = distinct !DILexicalBlock(scope: !299, file: !45, line: 196, column: 17)
!326 = !DILocation(line: 196, column: 17, scope: !325)
!327 = !DILocation(line: 196, column: 54, scope: !325)
!328 = !DILocation(line: 196, column: 17, scope: !299)
!329 = !DILocation(line: 198, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !45, line: 197, column: 13)
!331 = !DILocation(line: 200, column: 35, scope: !299)
!332 = !DILocation(line: 200, column: 28, scope: !299)
!333 = !DILocation(line: 200, column: 26, scope: !299)
!334 = !DILocation(line: 201, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !299, file: !45, line: 201, column: 17)
!336 = !DILocation(line: 201, column: 30, scope: !335)
!337 = !DILocation(line: 201, column: 17, scope: !299)
!338 = !DILocation(line: 203, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !45, line: 202, column: 13)
!340 = !DILocation(line: 206, column: 31, scope: !299)
!341 = !DILocation(line: 206, column: 54, scope: !299)
!342 = !DILocation(line: 206, column: 61, scope: !299)
!343 = !DILocation(line: 206, column: 59, scope: !299)
!344 = !DILocation(line: 206, column: 93, scope: !299)
!345 = !DILocation(line: 206, column: 91, scope: !299)
!346 = !DILocation(line: 206, column: 101, scope: !299)
!347 = !DILocation(line: 206, column: 84, scope: !299)
!348 = !DILocation(line: 206, column: 26, scope: !299)
!349 = !DILocation(line: 206, column: 24, scope: !299)
!350 = !DILocation(line: 207, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !299, file: !45, line: 207, column: 17)
!352 = !DILocation(line: 207, column: 28, scope: !351)
!353 = !DILocation(line: 207, column: 44, scope: !351)
!354 = !DILocation(line: 207, column: 47, scope: !351)
!355 = !DILocation(line: 207, column: 58, scope: !351)
!356 = !DILocation(line: 207, column: 17, scope: !299)
!357 = !DILocation(line: 209, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !45, line: 208, column: 13)
!359 = !DILocation(line: 212, column: 13, scope: !299)
!360 = !DILocation(line: 212, column: 18, scope: !299)
!361 = !DILocation(line: 212, column: 28, scope: !299)
!362 = !DILocation(line: 212, column: 39, scope: !299)
!363 = !DILocation(line: 212, column: 26, scope: !299)
!364 = !DILocation(line: 212, column: 55, scope: !299)
!365 = !DILocation(line: 214, column: 30, scope: !299)
!366 = !DILocation(line: 214, column: 23, scope: !299)
!367 = !DILocation(line: 214, column: 21, scope: !299)
!368 = !DILocation(line: 215, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !299, file: !45, line: 215, column: 17)
!370 = !DILocation(line: 215, column: 17, scope: !299)
!371 = !DILocation(line: 217, column: 18, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !45, line: 216, column: 13)
!373 = !DILocation(line: 217, column: 26, scope: !372)
!374 = !DILocation(line: 218, column: 13, scope: !372)
!375 = !DILocation(line: 219, column: 30, scope: !299)
!376 = !DILocation(line: 219, column: 23, scope: !299)
!377 = !DILocation(line: 219, column: 21, scope: !299)
!378 = !DILocation(line: 220, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !299, file: !45, line: 220, column: 17)
!380 = !DILocation(line: 220, column: 17, scope: !299)
!381 = !DILocation(line: 222, column: 18, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !45, line: 221, column: 13)
!383 = !DILocation(line: 222, column: 26, scope: !382)
!384 = !DILocation(line: 223, column: 13, scope: !382)
!385 = !DILocation(line: 224, column: 9, scope: !299)
!386 = !DILocation(line: 226, column: 13, scope: !387)
!387 = distinct !DILexicalBlock(scope: !283, file: !45, line: 226, column: 13)
!388 = !DILocation(line: 226, column: 26, scope: !387)
!389 = !DILocation(line: 226, column: 13, scope: !283)
!390 = !DILocation(line: 228, column: 26, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !45, line: 227, column: 9)
!392 = !DILocation(line: 228, column: 13, scope: !391)
!393 = !DILocation(line: 229, column: 9, scope: !391)
!394 = !DILocation(line: 230, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !283, file: !45, line: 230, column: 13)
!396 = !DILocation(line: 230, column: 26, scope: !395)
!397 = !DILocation(line: 230, column: 13, scope: !283)
!398 = !DILocation(line: 232, column: 26, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !45, line: 231, column: 9)
!400 = !DILocation(line: 232, column: 13, scope: !399)
!401 = !DILocation(line: 233, column: 9, scope: !399)
!402 = !DILocation(line: 241, column: 5, scope: !275)
!403 = !DILocation(line: 242, column: 1, scope: !275)
!404 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63_good", scope: !45, file: !45, line: 244, type: !113, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!405 = !DILocation(line: 246, column: 5, scope: !404)
!406 = !DILocation(line: 247, column: 5, scope: !404)
!407 = !DILocation(line: 248, column: 1, scope: !404)
!408 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_badSink", scope: !106, file: !106, line: 49, type: !409, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !41}
!411 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !408, file: !106, line: 49, type: !41)
!412 = !DILocation(line: 49, column: 79, scope: !408)
!413 = !DILocalVariable(name: "data", scope: !408, file: !106, line: 51, type: !42)
!414 = !DILocation(line: 51, column: 12, scope: !408)
!415 = !DILocation(line: 51, column: 20, scope: !408)
!416 = !DILocation(line: 51, column: 19, scope: !408)
!417 = !DILocalVariable(name: "i", scope: !418, file: !106, line: 53, type: !23)
!418 = distinct !DILexicalBlock(scope: !408, file: !106, line: 52, column: 5)
!419 = !DILocation(line: 53, column: 13, scope: !418)
!420 = !DILocalVariable(name: "n", scope: !418, file: !106, line: 53, type: !23)
!421 = !DILocation(line: 53, column: 16, scope: !418)
!422 = !DILocalVariable(name: "intVariable", scope: !418, file: !106, line: 53, type: !23)
!423 = !DILocation(line: 53, column: 19, scope: !418)
!424 = !DILocation(line: 54, column: 20, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !106, line: 54, column: 13)
!426 = !DILocation(line: 54, column: 13, scope: !425)
!427 = !DILocation(line: 54, column: 36, scope: !425)
!428 = !DILocation(line: 54, column: 13, scope: !418)
!429 = !DILocation(line: 57, column: 25, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !106, line: 55, column: 9)
!431 = !DILocation(line: 58, column: 20, scope: !432)
!432 = distinct !DILexicalBlock(scope: !430, file: !106, line: 58, column: 13)
!433 = !DILocation(line: 58, column: 18, scope: !432)
!434 = !DILocation(line: 58, column: 25, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !106, line: 58, column: 13)
!436 = !DILocation(line: 58, column: 29, scope: !435)
!437 = !DILocation(line: 58, column: 27, scope: !435)
!438 = !DILocation(line: 58, column: 13, scope: !432)
!439 = !DILocation(line: 61, column: 28, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !106, line: 59, column: 13)
!441 = !DILocation(line: 62, column: 13, scope: !440)
!442 = !DILocation(line: 58, column: 33, scope: !435)
!443 = !DILocation(line: 58, column: 13, scope: !435)
!444 = distinct !{!444, !438, !445, !446}
!445 = !DILocation(line: 62, column: 13, scope: !432)
!446 = !{!"llvm.loop.mustprogress"}
!447 = !DILocation(line: 63, column: 26, scope: !430)
!448 = !DILocation(line: 63, column: 13, scope: !430)
!449 = !DILocation(line: 64, column: 9, scope: !430)
!450 = !DILocation(line: 66, column: 1, scope: !408)
!451 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodG2BSink", scope: !106, file: !106, line: 73, type: !409, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!452 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !451, file: !106, line: 73, type: !41)
!453 = !DILocation(line: 73, column: 83, scope: !451)
!454 = !DILocalVariable(name: "data", scope: !451, file: !106, line: 75, type: !42)
!455 = !DILocation(line: 75, column: 12, scope: !451)
!456 = !DILocation(line: 75, column: 20, scope: !451)
!457 = !DILocation(line: 75, column: 19, scope: !451)
!458 = !DILocalVariable(name: "i", scope: !459, file: !106, line: 77, type: !23)
!459 = distinct !DILexicalBlock(scope: !451, file: !106, line: 76, column: 5)
!460 = !DILocation(line: 77, column: 13, scope: !459)
!461 = !DILocalVariable(name: "n", scope: !459, file: !106, line: 77, type: !23)
!462 = !DILocation(line: 77, column: 16, scope: !459)
!463 = !DILocalVariable(name: "intVariable", scope: !459, file: !106, line: 77, type: !23)
!464 = !DILocation(line: 77, column: 19, scope: !459)
!465 = !DILocation(line: 78, column: 20, scope: !466)
!466 = distinct !DILexicalBlock(scope: !459, file: !106, line: 78, column: 13)
!467 = !DILocation(line: 78, column: 13, scope: !466)
!468 = !DILocation(line: 78, column: 36, scope: !466)
!469 = !DILocation(line: 78, column: 13, scope: !459)
!470 = !DILocation(line: 81, column: 25, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !106, line: 79, column: 9)
!472 = !DILocation(line: 82, column: 20, scope: !473)
!473 = distinct !DILexicalBlock(scope: !471, file: !106, line: 82, column: 13)
!474 = !DILocation(line: 82, column: 18, scope: !473)
!475 = !DILocation(line: 82, column: 25, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !106, line: 82, column: 13)
!477 = !DILocation(line: 82, column: 29, scope: !476)
!478 = !DILocation(line: 82, column: 27, scope: !476)
!479 = !DILocation(line: 82, column: 13, scope: !473)
!480 = !DILocation(line: 85, column: 28, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !106, line: 83, column: 13)
!482 = !DILocation(line: 86, column: 13, scope: !481)
!483 = !DILocation(line: 82, column: 33, scope: !476)
!484 = !DILocation(line: 82, column: 13, scope: !476)
!485 = distinct !{!485, !479, !486, !446}
!486 = !DILocation(line: 86, column: 13, scope: !473)
!487 = !DILocation(line: 87, column: 26, scope: !471)
!488 = !DILocation(line: 87, column: 13, scope: !471)
!489 = !DILocation(line: 88, column: 9, scope: !471)
!490 = !DILocation(line: 90, column: 1, scope: !451)
!491 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink", scope: !106, file: !106, line: 93, type: !409, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!492 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !491, file: !106, line: 93, type: !41)
!493 = !DILocation(line: 93, column: 83, scope: !491)
!494 = !DILocalVariable(name: "data", scope: !491, file: !106, line: 95, type: !42)
!495 = !DILocation(line: 95, column: 12, scope: !491)
!496 = !DILocation(line: 95, column: 20, scope: !491)
!497 = !DILocation(line: 95, column: 19, scope: !491)
!498 = !DILocalVariable(name: "i", scope: !499, file: !106, line: 97, type: !23)
!499 = distinct !DILexicalBlock(scope: !491, file: !106, line: 96, column: 5)
!500 = !DILocation(line: 97, column: 13, scope: !499)
!501 = !DILocalVariable(name: "n", scope: !499, file: !106, line: 97, type: !23)
!502 = !DILocation(line: 97, column: 16, scope: !499)
!503 = !DILocalVariable(name: "intVariable", scope: !499, file: !106, line: 97, type: !23)
!504 = !DILocation(line: 97, column: 19, scope: !499)
!505 = !DILocation(line: 98, column: 20, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !106, line: 98, column: 13)
!507 = !DILocation(line: 98, column: 13, scope: !506)
!508 = !DILocation(line: 98, column: 36, scope: !506)
!509 = !DILocation(line: 98, column: 13, scope: !499)
!510 = !DILocation(line: 101, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !106, line: 101, column: 17)
!512 = distinct !DILexicalBlock(scope: !506, file: !106, line: 99, column: 9)
!513 = !DILocation(line: 101, column: 19, scope: !511)
!514 = !DILocation(line: 101, column: 17, scope: !512)
!515 = !DILocation(line: 103, column: 29, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !106, line: 102, column: 13)
!517 = !DILocation(line: 104, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !516, file: !106, line: 104, column: 17)
!519 = !DILocation(line: 104, column: 22, scope: !518)
!520 = !DILocation(line: 104, column: 29, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !106, line: 104, column: 17)
!522 = !DILocation(line: 104, column: 33, scope: !521)
!523 = !DILocation(line: 104, column: 31, scope: !521)
!524 = !DILocation(line: 104, column: 17, scope: !518)
!525 = !DILocation(line: 107, column: 32, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !106, line: 105, column: 17)
!527 = !DILocation(line: 108, column: 17, scope: !526)
!528 = !DILocation(line: 104, column: 37, scope: !521)
!529 = !DILocation(line: 104, column: 17, scope: !521)
!530 = distinct !{!530, !524, !531, !446}
!531 = !DILocation(line: 108, column: 17, scope: !518)
!532 = !DILocation(line: 109, column: 30, scope: !516)
!533 = !DILocation(line: 109, column: 17, scope: !516)
!534 = !DILocation(line: 110, column: 13, scope: !516)
!535 = !DILocation(line: 111, column: 9, scope: !512)
!536 = !DILocation(line: 113, column: 1, scope: !491)
!537 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !538, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !42}
!540 = !DILocalVariable(name: "line", arg: 1, scope: !537, file: !3, line: 11, type: !42)
!541 = !DILocation(line: 11, column: 25, scope: !537)
!542 = !DILocation(line: 13, column: 1, scope: !537)
!543 = !DILocation(line: 14, column: 8, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 14, column: 8)
!545 = !DILocation(line: 14, column: 13, scope: !544)
!546 = !DILocation(line: 14, column: 8, scope: !537)
!547 = !DILocation(line: 16, column: 24, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !3, line: 15, column: 5)
!549 = !DILocation(line: 16, column: 9, scope: !548)
!550 = !DILocation(line: 17, column: 5, scope: !548)
!551 = !DILocation(line: 18, column: 5, scope: !537)
!552 = !DILocation(line: 19, column: 1, scope: !537)
!553 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !538, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DILocalVariable(name: "line", arg: 1, scope: !553, file: !3, line: 20, type: !42)
!555 = !DILocation(line: 20, column: 29, scope: !553)
!556 = !DILocation(line: 22, column: 8, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 22, column: 8)
!558 = !DILocation(line: 22, column: 13, scope: !557)
!559 = !DILocation(line: 22, column: 8, scope: !553)
!560 = !DILocation(line: 24, column: 24, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 23, column: 5)
!562 = !DILocation(line: 24, column: 9, scope: !561)
!563 = !DILocation(line: 25, column: 5, scope: !561)
!564 = !DILocation(line: 26, column: 1, scope: !553)
!565 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !566, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !152, line: 74, baseType: !23)
!570 = !DILocalVariable(name: "line", arg: 1, scope: !565, file: !3, line: 27, type: !568)
!571 = !DILocation(line: 27, column: 29, scope: !565)
!572 = !DILocation(line: 29, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !565, file: !3, line: 29, column: 8)
!574 = !DILocation(line: 29, column: 13, scope: !573)
!575 = !DILocation(line: 29, column: 8, scope: !565)
!576 = !DILocation(line: 31, column: 27, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !3, line: 30, column: 5)
!578 = !DILocation(line: 31, column: 9, scope: !577)
!579 = !DILocation(line: 32, column: 5, scope: !577)
!580 = !DILocation(line: 33, column: 1, scope: !565)
!581 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !582, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !23}
!584 = !DILocalVariable(name: "intNumber", arg: 1, scope: !581, file: !3, line: 35, type: !23)
!585 = !DILocation(line: 35, column: 24, scope: !581)
!586 = !DILocation(line: 37, column: 20, scope: !581)
!587 = !DILocation(line: 37, column: 5, scope: !581)
!588 = !DILocation(line: 38, column: 1, scope: !581)
!589 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !590, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592}
!592 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!593 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !589, file: !3, line: 40, type: !592)
!594 = !DILocation(line: 40, column: 28, scope: !589)
!595 = !DILocation(line: 42, column: 21, scope: !589)
!596 = !DILocation(line: 42, column: 5, scope: !589)
!597 = !DILocation(line: 43, column: 1, scope: !589)
!598 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !599, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!602 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !598, file: !3, line: 45, type: !601)
!603 = !DILocation(line: 45, column: 28, scope: !598)
!604 = !DILocation(line: 47, column: 20, scope: !598)
!605 = !DILocation(line: 47, column: 5, scope: !598)
!606 = !DILocation(line: 48, column: 1, scope: !598)
!607 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !608, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!611 = !DILocalVariable(name: "longNumber", arg: 1, scope: !607, file: !3, line: 50, type: !610)
!612 = !DILocation(line: 50, column: 26, scope: !607)
!613 = !DILocation(line: 52, column: 21, scope: !607)
!614 = !DILocation(line: 52, column: 5, scope: !607)
!615 = !DILocation(line: 53, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !617, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !620, line: 27, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !610)
!622 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !616, file: !3, line: 55, type: !619)
!623 = !DILocation(line: 55, column: 33, scope: !616)
!624 = !DILocation(line: 57, column: 29, scope: !616)
!625 = !DILocation(line: 57, column: 5, scope: !616)
!626 = !DILocation(line: 58, column: 1, scope: !616)
!627 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !628, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !151}
!630 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !627, file: !3, line: 60, type: !151)
!631 = !DILocation(line: 60, column: 29, scope: !627)
!632 = !DILocation(line: 62, column: 21, scope: !627)
!633 = !DILocation(line: 62, column: 5, scope: !627)
!634 = !DILocation(line: 63, column: 1, scope: !627)
!635 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !636, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !43}
!638 = !DILocalVariable(name: "charHex", arg: 1, scope: !635, file: !3, line: 65, type: !43)
!639 = !DILocation(line: 65, column: 29, scope: !635)
!640 = !DILocation(line: 67, column: 22, scope: !635)
!641 = !DILocation(line: 67, column: 5, scope: !635)
!642 = !DILocation(line: 68, column: 1, scope: !635)
!643 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !644, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !569}
!646 = !DILocalVariable(name: "wideChar", arg: 1, scope: !643, file: !3, line: 70, type: !569)
!647 = !DILocation(line: 70, column: 29, scope: !643)
!648 = !DILocalVariable(name: "s", scope: !643, file: !3, line: 74, type: !649)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 64, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 2)
!652 = !DILocation(line: 74, column: 13, scope: !643)
!653 = !DILocation(line: 75, column: 16, scope: !643)
!654 = !DILocation(line: 75, column: 9, scope: !643)
!655 = !DILocation(line: 75, column: 14, scope: !643)
!656 = !DILocation(line: 76, column: 9, scope: !643)
!657 = !DILocation(line: 76, column: 14, scope: !643)
!658 = !DILocation(line: 77, column: 21, scope: !643)
!659 = !DILocation(line: 77, column: 5, scope: !643)
!660 = !DILocation(line: 78, column: 1, scope: !643)
!661 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !662, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !7}
!664 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !661, file: !3, line: 80, type: !7)
!665 = !DILocation(line: 80, column: 33, scope: !661)
!666 = !DILocation(line: 82, column: 20, scope: !661)
!667 = !DILocation(line: 82, column: 5, scope: !661)
!668 = !DILocation(line: 83, column: 1, scope: !661)
!669 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !670, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !25}
!672 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !669, file: !3, line: 85, type: !25)
!673 = !DILocation(line: 85, column: 45, scope: !669)
!674 = !DILocation(line: 87, column: 22, scope: !669)
!675 = !DILocation(line: 87, column: 5, scope: !669)
!676 = !DILocation(line: 88, column: 1, scope: !669)
!677 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !678, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !680}
!680 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!681 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !677, file: !3, line: 90, type: !680)
!682 = !DILocation(line: 90, column: 29, scope: !677)
!683 = !DILocation(line: 92, column: 20, scope: !677)
!684 = !DILocation(line: 92, column: 5, scope: !677)
!685 = !DILocation(line: 93, column: 1, scope: !677)
!686 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !687, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !691, line: 100, baseType: !692)
!691 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/source_code")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !691, line: 96, size: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !692, file: !691, line: 98, baseType: !23, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !692, file: !691, line: 99, baseType: !23, size: 32, offset: 32)
!696 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !686, file: !3, line: 95, type: !689)
!697 = !DILocation(line: 95, column: 40, scope: !686)
!698 = !DILocation(line: 97, column: 26, scope: !686)
!699 = !DILocation(line: 97, column: 47, scope: !686)
!700 = !DILocation(line: 97, column: 55, scope: !686)
!701 = !DILocation(line: 97, column: 76, scope: !686)
!702 = !DILocation(line: 97, column: 5, scope: !686)
!703 = !DILocation(line: 98, column: 1, scope: !686)
!704 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !705, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707, !151}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!708 = !DILocalVariable(name: "bytes", arg: 1, scope: !704, file: !3, line: 100, type: !707)
!709 = !DILocation(line: 100, column: 38, scope: !704)
!710 = !DILocalVariable(name: "numBytes", arg: 2, scope: !704, file: !3, line: 100, type: !151)
!711 = !DILocation(line: 100, column: 52, scope: !704)
!712 = !DILocalVariable(name: "i", scope: !704, file: !3, line: 102, type: !151)
!713 = !DILocation(line: 102, column: 12, scope: !704)
!714 = !DILocation(line: 103, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !704, file: !3, line: 103, column: 5)
!716 = !DILocation(line: 103, column: 10, scope: !715)
!717 = !DILocation(line: 103, column: 17, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 103, column: 5)
!719 = !DILocation(line: 103, column: 21, scope: !718)
!720 = !DILocation(line: 103, column: 19, scope: !718)
!721 = !DILocation(line: 103, column: 5, scope: !715)
!722 = !DILocation(line: 105, column: 24, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !3, line: 104, column: 5)
!724 = !DILocation(line: 105, column: 30, scope: !723)
!725 = !DILocation(line: 105, column: 9, scope: !723)
!726 = !DILocation(line: 106, column: 5, scope: !723)
!727 = !DILocation(line: 103, column: 31, scope: !718)
!728 = !DILocation(line: 103, column: 5, scope: !718)
!729 = distinct !{!729, !721, !730, !446}
!730 = !DILocation(line: 106, column: 5, scope: !715)
!731 = !DILocation(line: 107, column: 5, scope: !704)
!732 = !DILocation(line: 108, column: 1, scope: !704)
!733 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !734, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!734 = !DISubroutineType(types: !735)
!735 = !{!151, !707, !151, !42}
!736 = !DILocalVariable(name: "bytes", arg: 1, scope: !733, file: !3, line: 113, type: !707)
!737 = !DILocation(line: 113, column: 39, scope: !733)
!738 = !DILocalVariable(name: "numBytes", arg: 2, scope: !733, file: !3, line: 113, type: !151)
!739 = !DILocation(line: 113, column: 53, scope: !733)
!740 = !DILocalVariable(name: "hex", arg: 3, scope: !733, file: !3, line: 113, type: !42)
!741 = !DILocation(line: 113, column: 71, scope: !733)
!742 = !DILocalVariable(name: "numWritten", scope: !733, file: !3, line: 115, type: !151)
!743 = !DILocation(line: 115, column: 12, scope: !733)
!744 = !DILocation(line: 121, column: 5, scope: !733)
!745 = !DILocation(line: 121, column: 12, scope: !733)
!746 = !DILocation(line: 121, column: 25, scope: !733)
!747 = !DILocation(line: 121, column: 23, scope: !733)
!748 = !DILocation(line: 121, column: 34, scope: !733)
!749 = !DILocation(line: 121, column: 37, scope: !733)
!750 = !DILocation(line: 121, column: 67, scope: !733)
!751 = !DILocation(line: 121, column: 70, scope: !733)
!752 = !DILocation(line: 0, scope: !733)
!753 = !DILocalVariable(name: "byte", scope: !754, file: !3, line: 123, type: !23)
!754 = distinct !DILexicalBlock(scope: !733, file: !3, line: 122, column: 5)
!755 = !DILocation(line: 123, column: 13, scope: !754)
!756 = !DILocation(line: 124, column: 17, scope: !754)
!757 = !DILocation(line: 124, column: 25, scope: !754)
!758 = !DILocation(line: 124, column: 23, scope: !754)
!759 = !DILocation(line: 124, column: 9, scope: !754)
!760 = !DILocation(line: 125, column: 45, scope: !754)
!761 = !DILocation(line: 125, column: 29, scope: !754)
!762 = !DILocation(line: 125, column: 9, scope: !754)
!763 = !DILocation(line: 125, column: 15, scope: !754)
!764 = !DILocation(line: 125, column: 27, scope: !754)
!765 = !DILocation(line: 126, column: 9, scope: !754)
!766 = distinct !{!766, !744, !767, !446}
!767 = !DILocation(line: 127, column: 5, scope: !733)
!768 = !DILocation(line: 129, column: 12, scope: !733)
!769 = !DILocation(line: 129, column: 5, scope: !733)
!770 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !771, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DISubroutineType(types: !772)
!772 = !{!151, !707, !151, !568}
!773 = !DILocalVariable(name: "bytes", arg: 1, scope: !770, file: !3, line: 135, type: !707)
!774 = !DILocation(line: 135, column: 41, scope: !770)
!775 = !DILocalVariable(name: "numBytes", arg: 2, scope: !770, file: !3, line: 135, type: !151)
!776 = !DILocation(line: 135, column: 55, scope: !770)
!777 = !DILocalVariable(name: "hex", arg: 3, scope: !770, file: !3, line: 135, type: !568)
!778 = !DILocation(line: 135, column: 76, scope: !770)
!779 = !DILocalVariable(name: "numWritten", scope: !770, file: !3, line: 137, type: !151)
!780 = !DILocation(line: 137, column: 12, scope: !770)
!781 = !DILocation(line: 143, column: 5, scope: !770)
!782 = !DILocation(line: 143, column: 12, scope: !770)
!783 = !DILocation(line: 143, column: 25, scope: !770)
!784 = !DILocation(line: 143, column: 23, scope: !770)
!785 = !DILocation(line: 143, column: 34, scope: !770)
!786 = !DILocation(line: 143, column: 47, scope: !770)
!787 = !DILocation(line: 143, column: 55, scope: !770)
!788 = !DILocation(line: 143, column: 53, scope: !770)
!789 = !DILocation(line: 143, column: 37, scope: !770)
!790 = !DILocation(line: 143, column: 68, scope: !770)
!791 = !DILocation(line: 143, column: 81, scope: !770)
!792 = !DILocation(line: 143, column: 89, scope: !770)
!793 = !DILocation(line: 143, column: 87, scope: !770)
!794 = !DILocation(line: 143, column: 100, scope: !770)
!795 = !DILocation(line: 143, column: 71, scope: !770)
!796 = !DILocation(line: 0, scope: !770)
!797 = !DILocalVariable(name: "byte", scope: !798, file: !3, line: 145, type: !23)
!798 = distinct !DILexicalBlock(scope: !770, file: !3, line: 144, column: 5)
!799 = !DILocation(line: 145, column: 13, scope: !798)
!800 = !DILocation(line: 146, column: 18, scope: !798)
!801 = !DILocation(line: 146, column: 26, scope: !798)
!802 = !DILocation(line: 146, column: 24, scope: !798)
!803 = !DILocation(line: 146, column: 9, scope: !798)
!804 = !DILocation(line: 147, column: 45, scope: !798)
!805 = !DILocation(line: 147, column: 29, scope: !798)
!806 = !DILocation(line: 147, column: 9, scope: !798)
!807 = !DILocation(line: 147, column: 15, scope: !798)
!808 = !DILocation(line: 147, column: 27, scope: !798)
!809 = !DILocation(line: 148, column: 9, scope: !798)
!810 = distinct !{!810, !781, !811, !446}
!811 = !DILocation(line: 149, column: 5, scope: !770)
!812 = !DILocation(line: 151, column: 12, scope: !770)
!813 = !DILocation(line: 151, column: 5, scope: !770)
!814 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !815, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!815 = !DISubroutineType(types: !816)
!816 = !{!23}
!817 = !DILocation(line: 158, column: 5, scope: !814)
!818 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !815, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!819 = !DILocation(line: 163, column: 5, scope: !818)
!820 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !815, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!821 = !DILocation(line: 168, column: 13, scope: !820)
!822 = !DILocation(line: 168, column: 20, scope: !820)
!823 = !DILocation(line: 168, column: 5, scope: !820)
!824 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!825 = !DILocation(line: 187, column: 16, scope: !824)
!826 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!827 = !DILocation(line: 188, column: 16, scope: !826)
!828 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!829 = !DILocation(line: 189, column: 16, scope: !828)
!830 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!831 = !DILocation(line: 190, column: 16, scope: !830)
!832 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!833 = !DILocation(line: 191, column: 16, scope: !832)
!834 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!835 = !DILocation(line: 192, column: 16, scope: !834)
!836 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!837 = !DILocation(line: 193, column: 16, scope: !836)
!838 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!839 = !DILocation(line: 194, column: 16, scope: !838)
!840 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!841 = !DILocation(line: 195, column: 16, scope: !840)
!842 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!843 = !DILocation(line: 198, column: 15, scope: !842)
!844 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!845 = !DILocation(line: 199, column: 15, scope: !844)
!846 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!847 = !DILocation(line: 200, column: 15, scope: !846)
!848 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!849 = !DILocation(line: 201, column: 15, scope: !848)
!850 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!851 = !DILocation(line: 202, column: 15, scope: !850)
!852 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!853 = !DILocation(line: 203, column: 15, scope: !852)
!854 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!855 = !DILocation(line: 204, column: 15, scope: !854)
!856 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!857 = !DILocation(line: 205, column: 15, scope: !856)
!858 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!859 = !DILocation(line: 206, column: 15, scope: !858)
