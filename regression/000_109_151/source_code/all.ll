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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51_bad() #0 !dbg !112 {
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
  %28 = load i8*, i8** %data, align 8, !dbg !262
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_badSink(i8* %28), !dbg !263
  ret void, !dbg !264
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
define dso_local void @goodG2B() #0 !dbg !265 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !269
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !270
  store i8* %arraydecay, i8** %data, align 8, !dbg !271
  %1 = load i8*, i8** %data, align 8, !dbg !272
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !273
  %2 = load i8*, i8** %data, align 8, !dbg !274
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodG2BSink(i8* %2), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !277 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !281
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !282
  store i8* %arraydecay, i8** %data, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !291, metadata !DIExpression()), !dbg !292
  store i32 -1, i32* %listenSocket, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !293, metadata !DIExpression()), !dbg !294
  store i32 -1, i32* %acceptSocket, align 4, !dbg !294
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !295, metadata !DIExpression()), !dbg !296
  %1 = load i8*, i8** %data, align 8, !dbg !297
  %call = call i64 @strlen(i8* %1) #7, !dbg !298
  store i64 %call, i64* %dataLen, align 8, !dbg !296
  br label %do.body, !dbg !299

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !300
  store i32 %call1, i32* %listenSocket, align 4, !dbg !302
  %2 = load i32, i32* %listenSocket, align 4, !dbg !303
  %cmp = icmp eq i32 %2, -1, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !307

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !309
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !309
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !310
  store i16 2, i16* %sin_family, align 4, !dbg !311
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !312
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !313
  store i32 0, i32* %s_addr, align 4, !dbg !314
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !315
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !316
  store i16 %call2, i16* %sin_port, align 2, !dbg !317
  %4 = load i32, i32* %listenSocket, align 4, !dbg !318
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !320
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !321
  %cmp4 = icmp eq i32 %call3, -1, !dbg !322
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !323

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !324

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !326
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !328
  %cmp8 = icmp eq i32 %call7, -1, !dbg !329
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !330

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !331

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !333
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !334
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !335
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !336
  %cmp12 = icmp eq i32 %8, -1, !dbg !338
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !339

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !340

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !342
  %10 = load i8*, i8** %data, align 8, !dbg !343
  %11 = load i64, i64* %dataLen, align 8, !dbg !344
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !345
  %12 = load i64, i64* %dataLen, align 8, !dbg !346
  %sub = sub i64 100, %12, !dbg !347
  %sub15 = sub i64 %sub, 1, !dbg !348
  %mul = mul i64 1, %sub15, !dbg !349
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !350
  %conv = trunc i64 %call16 to i32, !dbg !350
  store i32 %conv, i32* %recvResult, align 4, !dbg !351
  %13 = load i32, i32* %recvResult, align 4, !dbg !352
  %cmp17 = icmp eq i32 %13, -1, !dbg !354
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !355

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !356
  %cmp19 = icmp eq i32 %14, 0, !dbg !357
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !358

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !359

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !361
  %16 = load i64, i64* %dataLen, align 8, !dbg !362
  %17 = load i32, i32* %recvResult, align 4, !dbg !363
  %conv23 = sext i32 %17 to i64, !dbg !363
  %div = udiv i64 %conv23, 1, !dbg !364
  %add = add i64 %16, %div, !dbg !365
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !361
  store i8 0, i8* %arrayidx, align 1, !dbg !366
  %18 = load i8*, i8** %data, align 8, !dbg !367
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !368
  store i8* %call24, i8** %replace, align 8, !dbg !369
  %19 = load i8*, i8** %replace, align 8, !dbg !370
  %tobool = icmp ne i8* %19, null, !dbg !370
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !372

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !373
  store i8 0, i8* %20, align 1, !dbg !375
  br label %if.end26, !dbg !376

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !377
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !378
  store i8* %call27, i8** %replace, align 8, !dbg !379
  %22 = load i8*, i8** %replace, align 8, !dbg !380
  %tobool28 = icmp ne i8* %22, null, !dbg !380
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !382

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !383
  store i8 0, i8* %23, align 1, !dbg !385
  br label %if.end30, !dbg !386

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !387

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !388
  %cmp31 = icmp ne i32 %24, -1, !dbg !390
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !391

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !392
  %call34 = call i32 @close(i32 %25), !dbg !394
  br label %if.end35, !dbg !395

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !396
  %cmp36 = icmp ne i32 %26, -1, !dbg !398
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !399

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !400
  %call39 = call i32 @close(i32 %27), !dbg !402
  br label %if.end40, !dbg !403

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !404
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodB2GSink(i8* %28), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51_good() #0 !dbg !407 {
entry:
  call void @goodG2B(), !dbg !408
  call void @goodB2G(), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_badSink(i8* %data) #0 !dbg !411 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %i, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %n, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i8*, i8** %data.addr, align 8, !dbg !423
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !425
  %cmp = icmp eq i32 %call, 1, !dbg !426
  br i1 %cmp, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !428
  store i32 0, i32* %i, align 4, !dbg !430
  br label %for.cond, !dbg !432

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !433
  %2 = load i32, i32* %n, align 4, !dbg !435
  %cmp1 = icmp slt i32 %1, %2, !dbg !436
  br i1 %cmp1, label %for.body, label %for.end, !dbg !437

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !438
  %inc = add nsw i32 %3, 1, !dbg !438
  store i32 %inc, i32* %intVariable, align 4, !dbg !438
  br label %for.inc, !dbg !440

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !441
  %inc2 = add nsw i32 %4, 1, !dbg !441
  store i32 %inc2, i32* %i, align 4, !dbg !441
  br label %for.cond, !dbg !442, !llvm.loop !443

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !446
  call void @printIntLine(i32 %5), !dbg !447
  br label %if.end, !dbg !448

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !449
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodG2BSink(i8* %data) #0 !dbg !450 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %i, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %n, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8*, i8** %data.addr, align 8, !dbg !460
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !462
  %cmp = icmp eq i32 %call, 1, !dbg !463
  br i1 %cmp, label %if.then, label %if.end, !dbg !464

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !465
  store i32 0, i32* %i, align 4, !dbg !467
  br label %for.cond, !dbg !469

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !470
  %2 = load i32, i32* %n, align 4, !dbg !472
  %cmp1 = icmp slt i32 %1, %2, !dbg !473
  br i1 %cmp1, label %for.body, label %for.end, !dbg !474

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !475
  %inc = add nsw i32 %3, 1, !dbg !475
  store i32 %inc, i32* %intVariable, align 4, !dbg !475
  br label %for.inc, !dbg !477

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !478
  %inc2 = add nsw i32 %4, 1, !dbg !478
  store i32 %inc2, i32* %i, align 4, !dbg !478
  br label %for.cond, !dbg !479, !llvm.loop !480

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !482
  call void @printIntLine(i32 %5), !dbg !483
  br label %if.end, !dbg !484

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodB2GSink(i8* %data) #0 !dbg !486 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i32* %i, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %n, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i8*, i8** %data.addr, align 8, !dbg !496
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !498
  %cmp = icmp eq i32 %call, 1, !dbg !499
  br i1 %cmp, label %if.then, label %if.end5, !dbg !500

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !501
  %cmp1 = icmp slt i32 %1, 10000, !dbg !504
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !505

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !506
  store i32 0, i32* %i, align 4, !dbg !508
  br label %for.cond, !dbg !510

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !511
  %3 = load i32, i32* %n, align 4, !dbg !513
  %cmp3 = icmp slt i32 %2, %3, !dbg !514
  br i1 %cmp3, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !516
  %inc = add nsw i32 %4, 1, !dbg !516
  store i32 %inc, i32* %intVariable, align 4, !dbg !516
  br label %for.inc, !dbg !518

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !519
  %inc4 = add nsw i32 %5, 1, !dbg !519
  store i32 %inc4, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !520, !llvm.loop !521

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !523
  call void @printIntLine(i32 %6), !dbg !524
  br label %if.end, !dbg !525

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !526

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !528 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !531
  %0 = load i8*, i8** %line.addr, align 8, !dbg !532
  %cmp = icmp ne i8* %0, null, !dbg !534
  br i1 %cmp, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !536
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !538
  br label %if.end, !dbg !539

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !540
  ret void, !dbg !541
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !542 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i8*, i8** %line.addr, align 8, !dbg !545
  %cmp = icmp ne i8* %0, null, !dbg !547
  br i1 %cmp, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !551
  br label %if.end, !dbg !552

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !554 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i32*, i32** %line.addr, align 8, !dbg !561
  %cmp = icmp ne i32* %0, null, !dbg !563
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !565
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !567
  br label %if.end, !dbg !568

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !569
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !570 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !575
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !578 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !584
  %conv = sext i16 %0 to i32, !dbg !584
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !587 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !593
  %conv = fpext float %0 to double, !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !596 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !605 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !616 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !621
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !622
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !624 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !629
  %conv = sext i8 %0 to i32, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !632 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !635, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !637, metadata !DIExpression()), !dbg !641
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !642
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !643
  store i32 %0, i32* %arrayidx, align 4, !dbg !644
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !645
  store i32 0, i32* %arrayidx1, align 4, !dbg !646
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !647
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !650 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !653, metadata !DIExpression()), !dbg !654
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !655
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !656
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !658 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !663
  %conv = zext i8 %0 to i32, !dbg !663
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !664
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !666 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !670, metadata !DIExpression()), !dbg !671
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !672
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !675 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !685, metadata !DIExpression()), !dbg !686
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !687
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !688
  %1 = load i32, i32* %intOne, align 4, !dbg !688
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !689
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !690
  %3 = load i32, i32* %intTwo, align 4, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !693 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !697, metadata !DIExpression()), !dbg !698
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i64* %i, metadata !701, metadata !DIExpression()), !dbg !702
  store i64 0, i64* %i, align 8, !dbg !703
  br label %for.cond, !dbg !705

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !706
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !708
  %cmp = icmp ult i64 %0, %1, !dbg !709
  br i1 %cmp, label %for.body, label %for.end, !dbg !710

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !711
  %3 = load i64, i64* %i, align 8, !dbg !713
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !711
  %4 = load i8, i8* %arrayidx, align 1, !dbg !711
  %conv = zext i8 %4 to i32, !dbg !711
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !714
  br label %for.inc, !dbg !715

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !716
  %inc = add i64 %5, 1, !dbg !716
  store i64 %inc, i64* %i, align 8, !dbg !716
  br label %for.cond, !dbg !717, !llvm.loop !718

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !720
  ret void, !dbg !721
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !722 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !727, metadata !DIExpression()), !dbg !728
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !731, metadata !DIExpression()), !dbg !732
  store i64 0, i64* %numWritten, align 8, !dbg !732
  br label %while.cond, !dbg !733

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !734
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !735
  %cmp = icmp ult i64 %0, %1, !dbg !736
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !737

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !738
  %2 = load i16*, i16** %call, align 8, !dbg !738
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !738
  %4 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul = mul i64 2, %4, !dbg !738
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !738
  %5 = load i8, i8* %arrayidx, align 1, !dbg !738
  %conv = sext i8 %5 to i32, !dbg !738
  %idxprom = sext i32 %conv to i64, !dbg !738
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !738
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !738
  %conv2 = zext i16 %6 to i32, !dbg !738
  %and = and i32 %conv2, 4096, !dbg !738
  %tobool = icmp ne i32 %and, 0, !dbg !738
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !739

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !740
  %7 = load i16*, i16** %call3, align 8, !dbg !740
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !740
  %9 = load i64, i64* %numWritten, align 8, !dbg !740
  %mul4 = mul i64 2, %9, !dbg !740
  %add = add i64 %mul4, 1, !dbg !740
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !740
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !740
  %conv6 = sext i8 %10 to i32, !dbg !740
  %idxprom7 = sext i32 %conv6 to i64, !dbg !740
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !740
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !740
  %conv9 = zext i16 %11 to i32, !dbg !740
  %and10 = and i32 %conv9, 4096, !dbg !740
  %tobool11 = icmp ne i32 %and10, 0, !dbg !739
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !741
  br i1 %12, label %while.body, label %while.end, !dbg !733

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !742, metadata !DIExpression()), !dbg !744
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !745
  %14 = load i64, i64* %numWritten, align 8, !dbg !746
  %mul12 = mul i64 2, %14, !dbg !747
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !745
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !748
  %15 = load i32, i32* %byte, align 4, !dbg !749
  %conv15 = trunc i32 %15 to i8, !dbg !750
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !751
  %17 = load i64, i64* %numWritten, align 8, !dbg !752
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !751
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !753
  %18 = load i64, i64* %numWritten, align 8, !dbg !754
  %inc = add i64 %18, 1, !dbg !754
  store i64 %inc, i64* %numWritten, align 8, !dbg !754
  br label %while.cond, !dbg !733, !llvm.loop !755

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !757
  ret i64 %19, !dbg !758
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !759 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !762, metadata !DIExpression()), !dbg !763
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !764, metadata !DIExpression()), !dbg !765
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !768, metadata !DIExpression()), !dbg !769
  store i64 0, i64* %numWritten, align 8, !dbg !769
  br label %while.cond, !dbg !770

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !771
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !772
  %cmp = icmp ult i64 %0, %1, !dbg !773
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !774

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !775
  %3 = load i64, i64* %numWritten, align 8, !dbg !776
  %mul = mul i64 2, %3, !dbg !777
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !775
  %4 = load i32, i32* %arrayidx, align 4, !dbg !775
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !778
  %tobool = icmp ne i32 %call, 0, !dbg !778
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !779

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !780
  %6 = load i64, i64* %numWritten, align 8, !dbg !781
  %mul1 = mul i64 2, %6, !dbg !782
  %add = add i64 %mul1, 1, !dbg !783
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !780
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !780
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !784
  %tobool4 = icmp ne i32 %call3, 0, !dbg !779
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !785
  br i1 %8, label %while.body, label %while.end, !dbg !770

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !786, metadata !DIExpression()), !dbg !788
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !789
  %10 = load i64, i64* %numWritten, align 8, !dbg !790
  %mul5 = mul i64 2, %10, !dbg !791
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !789
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !792
  %11 = load i32, i32* %byte, align 4, !dbg !793
  %conv = trunc i32 %11 to i8, !dbg !794
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !795
  %13 = load i64, i64* %numWritten, align 8, !dbg !796
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !795
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !797
  %14 = load i64, i64* %numWritten, align 8, !dbg !798
  %inc = add i64 %14, 1, !dbg !798
  store i64 %inc, i64* %numWritten, align 8, !dbg !798
  br label %while.cond, !dbg !770, !llvm.loop !799

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !801
  ret i64 %15, !dbg !802
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !803 {
entry:
  ret i32 1, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !807 {
entry:
  ret i32 0, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !809 {
entry:
  %call = call i32 @rand() #8, !dbg !810
  %rem = srem i32 %call, 2, !dbg !811
  ret i32 %rem, !dbg !812
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !813 {
entry:
  ret void, !dbg !814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !815 {
entry:
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !817 {
entry:
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !819 {
entry:
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !847 {
entry:
  ret void, !dbg !848
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_151/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_151/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_151/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51_bad", scope: !45, file: !45, line: 52, type: !113, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!262 = !DILocation(line: 136, column: 69, scope: !112)
!263 = !DILocation(line: 136, column: 5, scope: !112)
!264 = !DILocation(line: 137, column: 1, scope: !112)
!265 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !113, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!266 = !DILocalVariable(name: "data", scope: !265, file: !45, line: 147, type: !42)
!267 = !DILocation(line: 147, column: 12, scope: !265)
!268 = !DILocalVariable(name: "dataBuffer", scope: !265, file: !45, line: 148, type: !118)
!269 = !DILocation(line: 148, column: 10, scope: !265)
!270 = !DILocation(line: 149, column: 12, scope: !265)
!271 = !DILocation(line: 149, column: 10, scope: !265)
!272 = !DILocation(line: 151, column: 12, scope: !265)
!273 = !DILocation(line: 151, column: 5, scope: !265)
!274 = !DILocation(line: 152, column: 73, scope: !265)
!275 = !DILocation(line: 152, column: 5, scope: !265)
!276 = !DILocation(line: 153, column: 1, scope: !265)
!277 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !113, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!278 = !DILocalVariable(name: "data", scope: !277, file: !45, line: 159, type: !42)
!279 = !DILocation(line: 159, column: 12, scope: !277)
!280 = !DILocalVariable(name: "dataBuffer", scope: !277, file: !45, line: 160, type: !118)
!281 = !DILocation(line: 160, column: 10, scope: !277)
!282 = !DILocation(line: 161, column: 12, scope: !277)
!283 = !DILocation(line: 161, column: 10, scope: !277)
!284 = !DILocalVariable(name: "recvResult", scope: !285, file: !45, line: 167, type: !23)
!285 = distinct !DILexicalBlock(scope: !277, file: !45, line: 162, column: 5)
!286 = !DILocation(line: 167, column: 13, scope: !285)
!287 = !DILocalVariable(name: "service", scope: !285, file: !45, line: 168, type: !128)
!288 = !DILocation(line: 168, column: 28, scope: !285)
!289 = !DILocalVariable(name: "replace", scope: !285, file: !45, line: 169, type: !42)
!290 = !DILocation(line: 169, column: 15, scope: !285)
!291 = !DILocalVariable(name: "listenSocket", scope: !285, file: !45, line: 170, type: !23)
!292 = !DILocation(line: 170, column: 16, scope: !285)
!293 = !DILocalVariable(name: "acceptSocket", scope: !285, file: !45, line: 171, type: !23)
!294 = !DILocation(line: 171, column: 16, scope: !285)
!295 = !DILocalVariable(name: "dataLen", scope: !285, file: !45, line: 172, type: !151)
!296 = !DILocation(line: 172, column: 16, scope: !285)
!297 = !DILocation(line: 172, column: 33, scope: !285)
!298 = !DILocation(line: 172, column: 26, scope: !285)
!299 = !DILocation(line: 173, column: 9, scope: !285)
!300 = !DILocation(line: 183, column: 28, scope: !301)
!301 = distinct !DILexicalBlock(scope: !285, file: !45, line: 174, column: 9)
!302 = !DILocation(line: 183, column: 26, scope: !301)
!303 = !DILocation(line: 184, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !45, line: 184, column: 17)
!305 = !DILocation(line: 184, column: 30, scope: !304)
!306 = !DILocation(line: 184, column: 17, scope: !301)
!307 = !DILocation(line: 186, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !45, line: 185, column: 13)
!309 = !DILocation(line: 188, column: 13, scope: !301)
!310 = !DILocation(line: 189, column: 21, scope: !301)
!311 = !DILocation(line: 189, column: 32, scope: !301)
!312 = !DILocation(line: 190, column: 21, scope: !301)
!313 = !DILocation(line: 190, column: 30, scope: !301)
!314 = !DILocation(line: 190, column: 37, scope: !301)
!315 = !DILocation(line: 191, column: 32, scope: !301)
!316 = !DILocation(line: 191, column: 21, scope: !301)
!317 = !DILocation(line: 191, column: 30, scope: !301)
!318 = !DILocation(line: 192, column: 22, scope: !319)
!319 = distinct !DILexicalBlock(scope: !301, file: !45, line: 192, column: 17)
!320 = !DILocation(line: 192, column: 36, scope: !319)
!321 = !DILocation(line: 192, column: 17, scope: !319)
!322 = !DILocation(line: 192, column: 81, scope: !319)
!323 = !DILocation(line: 192, column: 17, scope: !301)
!324 = !DILocation(line: 194, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !45, line: 193, column: 13)
!326 = !DILocation(line: 196, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !301, file: !45, line: 196, column: 17)
!328 = !DILocation(line: 196, column: 17, scope: !327)
!329 = !DILocation(line: 196, column: 54, scope: !327)
!330 = !DILocation(line: 196, column: 17, scope: !301)
!331 = !DILocation(line: 198, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !45, line: 197, column: 13)
!333 = !DILocation(line: 200, column: 35, scope: !301)
!334 = !DILocation(line: 200, column: 28, scope: !301)
!335 = !DILocation(line: 200, column: 26, scope: !301)
!336 = !DILocation(line: 201, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !301, file: !45, line: 201, column: 17)
!338 = !DILocation(line: 201, column: 30, scope: !337)
!339 = !DILocation(line: 201, column: 17, scope: !301)
!340 = !DILocation(line: 203, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !45, line: 202, column: 13)
!342 = !DILocation(line: 206, column: 31, scope: !301)
!343 = !DILocation(line: 206, column: 54, scope: !301)
!344 = !DILocation(line: 206, column: 61, scope: !301)
!345 = !DILocation(line: 206, column: 59, scope: !301)
!346 = !DILocation(line: 206, column: 93, scope: !301)
!347 = !DILocation(line: 206, column: 91, scope: !301)
!348 = !DILocation(line: 206, column: 101, scope: !301)
!349 = !DILocation(line: 206, column: 84, scope: !301)
!350 = !DILocation(line: 206, column: 26, scope: !301)
!351 = !DILocation(line: 206, column: 24, scope: !301)
!352 = !DILocation(line: 207, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !301, file: !45, line: 207, column: 17)
!354 = !DILocation(line: 207, column: 28, scope: !353)
!355 = !DILocation(line: 207, column: 44, scope: !353)
!356 = !DILocation(line: 207, column: 47, scope: !353)
!357 = !DILocation(line: 207, column: 58, scope: !353)
!358 = !DILocation(line: 207, column: 17, scope: !301)
!359 = !DILocation(line: 209, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !353, file: !45, line: 208, column: 13)
!361 = !DILocation(line: 212, column: 13, scope: !301)
!362 = !DILocation(line: 212, column: 18, scope: !301)
!363 = !DILocation(line: 212, column: 28, scope: !301)
!364 = !DILocation(line: 212, column: 39, scope: !301)
!365 = !DILocation(line: 212, column: 26, scope: !301)
!366 = !DILocation(line: 212, column: 55, scope: !301)
!367 = !DILocation(line: 214, column: 30, scope: !301)
!368 = !DILocation(line: 214, column: 23, scope: !301)
!369 = !DILocation(line: 214, column: 21, scope: !301)
!370 = !DILocation(line: 215, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !301, file: !45, line: 215, column: 17)
!372 = !DILocation(line: 215, column: 17, scope: !301)
!373 = !DILocation(line: 217, column: 18, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !45, line: 216, column: 13)
!375 = !DILocation(line: 217, column: 26, scope: !374)
!376 = !DILocation(line: 218, column: 13, scope: !374)
!377 = !DILocation(line: 219, column: 30, scope: !301)
!378 = !DILocation(line: 219, column: 23, scope: !301)
!379 = !DILocation(line: 219, column: 21, scope: !301)
!380 = !DILocation(line: 220, column: 17, scope: !381)
!381 = distinct !DILexicalBlock(scope: !301, file: !45, line: 220, column: 17)
!382 = !DILocation(line: 220, column: 17, scope: !301)
!383 = !DILocation(line: 222, column: 18, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !45, line: 221, column: 13)
!385 = !DILocation(line: 222, column: 26, scope: !384)
!386 = !DILocation(line: 223, column: 13, scope: !384)
!387 = !DILocation(line: 224, column: 9, scope: !301)
!388 = !DILocation(line: 226, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !285, file: !45, line: 226, column: 13)
!390 = !DILocation(line: 226, column: 26, scope: !389)
!391 = !DILocation(line: 226, column: 13, scope: !285)
!392 = !DILocation(line: 228, column: 26, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !45, line: 227, column: 9)
!394 = !DILocation(line: 228, column: 13, scope: !393)
!395 = !DILocation(line: 229, column: 9, scope: !393)
!396 = !DILocation(line: 230, column: 13, scope: !397)
!397 = distinct !DILexicalBlock(scope: !285, file: !45, line: 230, column: 13)
!398 = !DILocation(line: 230, column: 26, scope: !397)
!399 = !DILocation(line: 230, column: 13, scope: !285)
!400 = !DILocation(line: 232, column: 26, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !45, line: 231, column: 9)
!402 = !DILocation(line: 232, column: 13, scope: !401)
!403 = !DILocation(line: 233, column: 9, scope: !401)
!404 = !DILocation(line: 241, column: 73, scope: !277)
!405 = !DILocation(line: 241, column: 5, scope: !277)
!406 = !DILocation(line: 242, column: 1, scope: !277)
!407 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51_good", scope: !45, file: !45, line: 244, type: !113, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!408 = !DILocation(line: 246, column: 5, scope: !407)
!409 = !DILocation(line: 247, column: 5, scope: !407)
!410 = !DILocation(line: 248, column: 1, scope: !407)
!411 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_badSink", scope: !106, file: !106, line: 49, type: !412, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !42}
!414 = !DILocalVariable(name: "data", arg: 1, scope: !411, file: !106, line: 49, type: !42)
!415 = !DILocation(line: 49, column: 77, scope: !411)
!416 = !DILocalVariable(name: "i", scope: !417, file: !106, line: 52, type: !23)
!417 = distinct !DILexicalBlock(scope: !411, file: !106, line: 51, column: 5)
!418 = !DILocation(line: 52, column: 13, scope: !417)
!419 = !DILocalVariable(name: "n", scope: !417, file: !106, line: 52, type: !23)
!420 = !DILocation(line: 52, column: 16, scope: !417)
!421 = !DILocalVariable(name: "intVariable", scope: !417, file: !106, line: 52, type: !23)
!422 = !DILocation(line: 52, column: 19, scope: !417)
!423 = !DILocation(line: 53, column: 20, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !106, line: 53, column: 13)
!425 = !DILocation(line: 53, column: 13, scope: !424)
!426 = !DILocation(line: 53, column: 36, scope: !424)
!427 = !DILocation(line: 53, column: 13, scope: !417)
!428 = !DILocation(line: 56, column: 25, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !106, line: 54, column: 9)
!430 = !DILocation(line: 57, column: 20, scope: !431)
!431 = distinct !DILexicalBlock(scope: !429, file: !106, line: 57, column: 13)
!432 = !DILocation(line: 57, column: 18, scope: !431)
!433 = !DILocation(line: 57, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !106, line: 57, column: 13)
!435 = !DILocation(line: 57, column: 29, scope: !434)
!436 = !DILocation(line: 57, column: 27, scope: !434)
!437 = !DILocation(line: 57, column: 13, scope: !431)
!438 = !DILocation(line: 60, column: 28, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !106, line: 58, column: 13)
!440 = !DILocation(line: 61, column: 13, scope: !439)
!441 = !DILocation(line: 57, column: 33, scope: !434)
!442 = !DILocation(line: 57, column: 13, scope: !434)
!443 = distinct !{!443, !437, !444, !445}
!444 = !DILocation(line: 61, column: 13, scope: !431)
!445 = !{!"llvm.loop.mustprogress"}
!446 = !DILocation(line: 62, column: 26, scope: !429)
!447 = !DILocation(line: 62, column: 13, scope: !429)
!448 = !DILocation(line: 63, column: 9, scope: !429)
!449 = !DILocation(line: 65, column: 1, scope: !411)
!450 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodG2BSink", scope: !106, file: !106, line: 72, type: !412, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!451 = !DILocalVariable(name: "data", arg: 1, scope: !450, file: !106, line: 72, type: !42)
!452 = !DILocation(line: 72, column: 81, scope: !450)
!453 = !DILocalVariable(name: "i", scope: !454, file: !106, line: 75, type: !23)
!454 = distinct !DILexicalBlock(scope: !450, file: !106, line: 74, column: 5)
!455 = !DILocation(line: 75, column: 13, scope: !454)
!456 = !DILocalVariable(name: "n", scope: !454, file: !106, line: 75, type: !23)
!457 = !DILocation(line: 75, column: 16, scope: !454)
!458 = !DILocalVariable(name: "intVariable", scope: !454, file: !106, line: 75, type: !23)
!459 = !DILocation(line: 75, column: 19, scope: !454)
!460 = !DILocation(line: 76, column: 20, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !106, line: 76, column: 13)
!462 = !DILocation(line: 76, column: 13, scope: !461)
!463 = !DILocation(line: 76, column: 36, scope: !461)
!464 = !DILocation(line: 76, column: 13, scope: !454)
!465 = !DILocation(line: 79, column: 25, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !106, line: 77, column: 9)
!467 = !DILocation(line: 80, column: 20, scope: !468)
!468 = distinct !DILexicalBlock(scope: !466, file: !106, line: 80, column: 13)
!469 = !DILocation(line: 80, column: 18, scope: !468)
!470 = !DILocation(line: 80, column: 25, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !106, line: 80, column: 13)
!472 = !DILocation(line: 80, column: 29, scope: !471)
!473 = !DILocation(line: 80, column: 27, scope: !471)
!474 = !DILocation(line: 80, column: 13, scope: !468)
!475 = !DILocation(line: 83, column: 28, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !106, line: 81, column: 13)
!477 = !DILocation(line: 84, column: 13, scope: !476)
!478 = !DILocation(line: 80, column: 33, scope: !471)
!479 = !DILocation(line: 80, column: 13, scope: !471)
!480 = distinct !{!480, !474, !481, !445}
!481 = !DILocation(line: 84, column: 13, scope: !468)
!482 = !DILocation(line: 85, column: 26, scope: !466)
!483 = !DILocation(line: 85, column: 13, scope: !466)
!484 = !DILocation(line: 86, column: 9, scope: !466)
!485 = !DILocation(line: 88, column: 1, scope: !450)
!486 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_51b_goodB2GSink", scope: !106, file: !106, line: 91, type: !412, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!487 = !DILocalVariable(name: "data", arg: 1, scope: !486, file: !106, line: 91, type: !42)
!488 = !DILocation(line: 91, column: 81, scope: !486)
!489 = !DILocalVariable(name: "i", scope: !490, file: !106, line: 94, type: !23)
!490 = distinct !DILexicalBlock(scope: !486, file: !106, line: 93, column: 5)
!491 = !DILocation(line: 94, column: 13, scope: !490)
!492 = !DILocalVariable(name: "n", scope: !490, file: !106, line: 94, type: !23)
!493 = !DILocation(line: 94, column: 16, scope: !490)
!494 = !DILocalVariable(name: "intVariable", scope: !490, file: !106, line: 94, type: !23)
!495 = !DILocation(line: 94, column: 19, scope: !490)
!496 = !DILocation(line: 95, column: 20, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !106, line: 95, column: 13)
!498 = !DILocation(line: 95, column: 13, scope: !497)
!499 = !DILocation(line: 95, column: 36, scope: !497)
!500 = !DILocation(line: 95, column: 13, scope: !490)
!501 = !DILocation(line: 98, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !106, line: 98, column: 17)
!503 = distinct !DILexicalBlock(scope: !497, file: !106, line: 96, column: 9)
!504 = !DILocation(line: 98, column: 19, scope: !502)
!505 = !DILocation(line: 98, column: 17, scope: !503)
!506 = !DILocation(line: 100, column: 29, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !106, line: 99, column: 13)
!508 = !DILocation(line: 101, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !507, file: !106, line: 101, column: 17)
!510 = !DILocation(line: 101, column: 22, scope: !509)
!511 = !DILocation(line: 101, column: 29, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !106, line: 101, column: 17)
!513 = !DILocation(line: 101, column: 33, scope: !512)
!514 = !DILocation(line: 101, column: 31, scope: !512)
!515 = !DILocation(line: 101, column: 17, scope: !509)
!516 = !DILocation(line: 104, column: 32, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !106, line: 102, column: 17)
!518 = !DILocation(line: 105, column: 17, scope: !517)
!519 = !DILocation(line: 101, column: 37, scope: !512)
!520 = !DILocation(line: 101, column: 17, scope: !512)
!521 = distinct !{!521, !515, !522, !445}
!522 = !DILocation(line: 105, column: 17, scope: !509)
!523 = !DILocation(line: 106, column: 30, scope: !507)
!524 = !DILocation(line: 106, column: 17, scope: !507)
!525 = !DILocation(line: 107, column: 13, scope: !507)
!526 = !DILocation(line: 108, column: 9, scope: !503)
!527 = !DILocation(line: 110, column: 1, scope: !486)
!528 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !412, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!529 = !DILocalVariable(name: "line", arg: 1, scope: !528, file: !3, line: 11, type: !42)
!530 = !DILocation(line: 11, column: 25, scope: !528)
!531 = !DILocation(line: 13, column: 1, scope: !528)
!532 = !DILocation(line: 14, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !3, line: 14, column: 8)
!534 = !DILocation(line: 14, column: 13, scope: !533)
!535 = !DILocation(line: 14, column: 8, scope: !528)
!536 = !DILocation(line: 16, column: 24, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !3, line: 15, column: 5)
!538 = !DILocation(line: 16, column: 9, scope: !537)
!539 = !DILocation(line: 17, column: 5, scope: !537)
!540 = !DILocation(line: 18, column: 5, scope: !528)
!541 = !DILocation(line: 19, column: 1, scope: !528)
!542 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !412, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!543 = !DILocalVariable(name: "line", arg: 1, scope: !542, file: !3, line: 20, type: !42)
!544 = !DILocation(line: 20, column: 29, scope: !542)
!545 = !DILocation(line: 22, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 22, column: 8)
!547 = !DILocation(line: 22, column: 13, scope: !546)
!548 = !DILocation(line: 22, column: 8, scope: !542)
!549 = !DILocation(line: 24, column: 24, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !3, line: 23, column: 5)
!551 = !DILocation(line: 24, column: 9, scope: !550)
!552 = !DILocation(line: 25, column: 5, scope: !550)
!553 = !DILocation(line: 26, column: 1, scope: !542)
!554 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !555, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !152, line: 74, baseType: !23)
!559 = !DILocalVariable(name: "line", arg: 1, scope: !554, file: !3, line: 27, type: !557)
!560 = !DILocation(line: 27, column: 29, scope: !554)
!561 = !DILocation(line: 29, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !554, file: !3, line: 29, column: 8)
!563 = !DILocation(line: 29, column: 13, scope: !562)
!564 = !DILocation(line: 29, column: 8, scope: !554)
!565 = !DILocation(line: 31, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 30, column: 5)
!567 = !DILocation(line: 31, column: 9, scope: !566)
!568 = !DILocation(line: 32, column: 5, scope: !566)
!569 = !DILocation(line: 33, column: 1, scope: !554)
!570 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !571, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !23}
!573 = !DILocalVariable(name: "intNumber", arg: 1, scope: !570, file: !3, line: 35, type: !23)
!574 = !DILocation(line: 35, column: 24, scope: !570)
!575 = !DILocation(line: 37, column: 20, scope: !570)
!576 = !DILocation(line: 37, column: 5, scope: !570)
!577 = !DILocation(line: 38, column: 1, scope: !570)
!578 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !579, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581}
!581 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!582 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !578, file: !3, line: 40, type: !581)
!583 = !DILocation(line: 40, column: 28, scope: !578)
!584 = !DILocation(line: 42, column: 21, scope: !578)
!585 = !DILocation(line: 42, column: 5, scope: !578)
!586 = !DILocation(line: 43, column: 1, scope: !578)
!587 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !588, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !590}
!590 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!591 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !587, file: !3, line: 45, type: !590)
!592 = !DILocation(line: 45, column: 28, scope: !587)
!593 = !DILocation(line: 47, column: 20, scope: !587)
!594 = !DILocation(line: 47, column: 5, scope: !587)
!595 = !DILocation(line: 48, column: 1, scope: !587)
!596 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !597, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !599}
!599 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!600 = !DILocalVariable(name: "longNumber", arg: 1, scope: !596, file: !3, line: 50, type: !599)
!601 = !DILocation(line: 50, column: 26, scope: !596)
!602 = !DILocation(line: 52, column: 21, scope: !596)
!603 = !DILocation(line: 52, column: 5, scope: !596)
!604 = !DILocation(line: 53, column: 1, scope: !596)
!605 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !606, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !609, line: 27, baseType: !610)
!609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !599)
!611 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !605, file: !3, line: 55, type: !608)
!612 = !DILocation(line: 55, column: 33, scope: !605)
!613 = !DILocation(line: 57, column: 29, scope: !605)
!614 = !DILocation(line: 57, column: 5, scope: !605)
!615 = !DILocation(line: 58, column: 1, scope: !605)
!616 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !617, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !151}
!619 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !616, file: !3, line: 60, type: !151)
!620 = !DILocation(line: 60, column: 29, scope: !616)
!621 = !DILocation(line: 62, column: 21, scope: !616)
!622 = !DILocation(line: 62, column: 5, scope: !616)
!623 = !DILocation(line: 63, column: 1, scope: !616)
!624 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !625, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !43}
!627 = !DILocalVariable(name: "charHex", arg: 1, scope: !624, file: !3, line: 65, type: !43)
!628 = !DILocation(line: 65, column: 29, scope: !624)
!629 = !DILocation(line: 67, column: 22, scope: !624)
!630 = !DILocation(line: 67, column: 5, scope: !624)
!631 = !DILocation(line: 68, column: 1, scope: !624)
!632 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !633, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !558}
!635 = !DILocalVariable(name: "wideChar", arg: 1, scope: !632, file: !3, line: 70, type: !558)
!636 = !DILocation(line: 70, column: 29, scope: !632)
!637 = !DILocalVariable(name: "s", scope: !632, file: !3, line: 74, type: !638)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 64, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 2)
!641 = !DILocation(line: 74, column: 13, scope: !632)
!642 = !DILocation(line: 75, column: 16, scope: !632)
!643 = !DILocation(line: 75, column: 9, scope: !632)
!644 = !DILocation(line: 75, column: 14, scope: !632)
!645 = !DILocation(line: 76, column: 9, scope: !632)
!646 = !DILocation(line: 76, column: 14, scope: !632)
!647 = !DILocation(line: 77, column: 21, scope: !632)
!648 = !DILocation(line: 77, column: 5, scope: !632)
!649 = !DILocation(line: 78, column: 1, scope: !632)
!650 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !651, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !7}
!653 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !650, file: !3, line: 80, type: !7)
!654 = !DILocation(line: 80, column: 33, scope: !650)
!655 = !DILocation(line: 82, column: 20, scope: !650)
!656 = !DILocation(line: 82, column: 5, scope: !650)
!657 = !DILocation(line: 83, column: 1, scope: !650)
!658 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !659, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !25}
!661 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !658, file: !3, line: 85, type: !25)
!662 = !DILocation(line: 85, column: 45, scope: !658)
!663 = !DILocation(line: 87, column: 22, scope: !658)
!664 = !DILocation(line: 87, column: 5, scope: !658)
!665 = !DILocation(line: 88, column: 1, scope: !658)
!666 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !667, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !669}
!669 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!670 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !666, file: !3, line: 90, type: !669)
!671 = !DILocation(line: 90, column: 29, scope: !666)
!672 = !DILocation(line: 92, column: 20, scope: !666)
!673 = !DILocation(line: 92, column: 5, scope: !666)
!674 = !DILocation(line: 93, column: 1, scope: !666)
!675 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !676, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !680, line: 100, baseType: !681)
!680 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_151/source_code")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !680, line: 96, size: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !681, file: !680, line: 98, baseType: !23, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !681, file: !680, line: 99, baseType: !23, size: 32, offset: 32)
!685 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !675, file: !3, line: 95, type: !678)
!686 = !DILocation(line: 95, column: 40, scope: !675)
!687 = !DILocation(line: 97, column: 26, scope: !675)
!688 = !DILocation(line: 97, column: 47, scope: !675)
!689 = !DILocation(line: 97, column: 55, scope: !675)
!690 = !DILocation(line: 97, column: 76, scope: !675)
!691 = !DILocation(line: 97, column: 5, scope: !675)
!692 = !DILocation(line: 98, column: 1, scope: !675)
!693 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !694, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696, !151}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!697 = !DILocalVariable(name: "bytes", arg: 1, scope: !693, file: !3, line: 100, type: !696)
!698 = !DILocation(line: 100, column: 38, scope: !693)
!699 = !DILocalVariable(name: "numBytes", arg: 2, scope: !693, file: !3, line: 100, type: !151)
!700 = !DILocation(line: 100, column: 52, scope: !693)
!701 = !DILocalVariable(name: "i", scope: !693, file: !3, line: 102, type: !151)
!702 = !DILocation(line: 102, column: 12, scope: !693)
!703 = !DILocation(line: 103, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !693, file: !3, line: 103, column: 5)
!705 = !DILocation(line: 103, column: 10, scope: !704)
!706 = !DILocation(line: 103, column: 17, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 103, column: 5)
!708 = !DILocation(line: 103, column: 21, scope: !707)
!709 = !DILocation(line: 103, column: 19, scope: !707)
!710 = !DILocation(line: 103, column: 5, scope: !704)
!711 = !DILocation(line: 105, column: 24, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !3, line: 104, column: 5)
!713 = !DILocation(line: 105, column: 30, scope: !712)
!714 = !DILocation(line: 105, column: 9, scope: !712)
!715 = !DILocation(line: 106, column: 5, scope: !712)
!716 = !DILocation(line: 103, column: 31, scope: !707)
!717 = !DILocation(line: 103, column: 5, scope: !707)
!718 = distinct !{!718, !710, !719, !445}
!719 = !DILocation(line: 106, column: 5, scope: !704)
!720 = !DILocation(line: 107, column: 5, scope: !693)
!721 = !DILocation(line: 108, column: 1, scope: !693)
!722 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !723, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{!151, !696, !151, !42}
!725 = !DILocalVariable(name: "bytes", arg: 1, scope: !722, file: !3, line: 113, type: !696)
!726 = !DILocation(line: 113, column: 39, scope: !722)
!727 = !DILocalVariable(name: "numBytes", arg: 2, scope: !722, file: !3, line: 113, type: !151)
!728 = !DILocation(line: 113, column: 53, scope: !722)
!729 = !DILocalVariable(name: "hex", arg: 3, scope: !722, file: !3, line: 113, type: !42)
!730 = !DILocation(line: 113, column: 71, scope: !722)
!731 = !DILocalVariable(name: "numWritten", scope: !722, file: !3, line: 115, type: !151)
!732 = !DILocation(line: 115, column: 12, scope: !722)
!733 = !DILocation(line: 121, column: 5, scope: !722)
!734 = !DILocation(line: 121, column: 12, scope: !722)
!735 = !DILocation(line: 121, column: 25, scope: !722)
!736 = !DILocation(line: 121, column: 23, scope: !722)
!737 = !DILocation(line: 121, column: 34, scope: !722)
!738 = !DILocation(line: 121, column: 37, scope: !722)
!739 = !DILocation(line: 121, column: 67, scope: !722)
!740 = !DILocation(line: 121, column: 70, scope: !722)
!741 = !DILocation(line: 0, scope: !722)
!742 = !DILocalVariable(name: "byte", scope: !743, file: !3, line: 123, type: !23)
!743 = distinct !DILexicalBlock(scope: !722, file: !3, line: 122, column: 5)
!744 = !DILocation(line: 123, column: 13, scope: !743)
!745 = !DILocation(line: 124, column: 17, scope: !743)
!746 = !DILocation(line: 124, column: 25, scope: !743)
!747 = !DILocation(line: 124, column: 23, scope: !743)
!748 = !DILocation(line: 124, column: 9, scope: !743)
!749 = !DILocation(line: 125, column: 45, scope: !743)
!750 = !DILocation(line: 125, column: 29, scope: !743)
!751 = !DILocation(line: 125, column: 9, scope: !743)
!752 = !DILocation(line: 125, column: 15, scope: !743)
!753 = !DILocation(line: 125, column: 27, scope: !743)
!754 = !DILocation(line: 126, column: 9, scope: !743)
!755 = distinct !{!755, !733, !756, !445}
!756 = !DILocation(line: 127, column: 5, scope: !722)
!757 = !DILocation(line: 129, column: 12, scope: !722)
!758 = !DILocation(line: 129, column: 5, scope: !722)
!759 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !760, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DISubroutineType(types: !761)
!761 = !{!151, !696, !151, !557}
!762 = !DILocalVariable(name: "bytes", arg: 1, scope: !759, file: !3, line: 135, type: !696)
!763 = !DILocation(line: 135, column: 41, scope: !759)
!764 = !DILocalVariable(name: "numBytes", arg: 2, scope: !759, file: !3, line: 135, type: !151)
!765 = !DILocation(line: 135, column: 55, scope: !759)
!766 = !DILocalVariable(name: "hex", arg: 3, scope: !759, file: !3, line: 135, type: !557)
!767 = !DILocation(line: 135, column: 76, scope: !759)
!768 = !DILocalVariable(name: "numWritten", scope: !759, file: !3, line: 137, type: !151)
!769 = !DILocation(line: 137, column: 12, scope: !759)
!770 = !DILocation(line: 143, column: 5, scope: !759)
!771 = !DILocation(line: 143, column: 12, scope: !759)
!772 = !DILocation(line: 143, column: 25, scope: !759)
!773 = !DILocation(line: 143, column: 23, scope: !759)
!774 = !DILocation(line: 143, column: 34, scope: !759)
!775 = !DILocation(line: 143, column: 47, scope: !759)
!776 = !DILocation(line: 143, column: 55, scope: !759)
!777 = !DILocation(line: 143, column: 53, scope: !759)
!778 = !DILocation(line: 143, column: 37, scope: !759)
!779 = !DILocation(line: 143, column: 68, scope: !759)
!780 = !DILocation(line: 143, column: 81, scope: !759)
!781 = !DILocation(line: 143, column: 89, scope: !759)
!782 = !DILocation(line: 143, column: 87, scope: !759)
!783 = !DILocation(line: 143, column: 100, scope: !759)
!784 = !DILocation(line: 143, column: 71, scope: !759)
!785 = !DILocation(line: 0, scope: !759)
!786 = !DILocalVariable(name: "byte", scope: !787, file: !3, line: 145, type: !23)
!787 = distinct !DILexicalBlock(scope: !759, file: !3, line: 144, column: 5)
!788 = !DILocation(line: 145, column: 13, scope: !787)
!789 = !DILocation(line: 146, column: 18, scope: !787)
!790 = !DILocation(line: 146, column: 26, scope: !787)
!791 = !DILocation(line: 146, column: 24, scope: !787)
!792 = !DILocation(line: 146, column: 9, scope: !787)
!793 = !DILocation(line: 147, column: 45, scope: !787)
!794 = !DILocation(line: 147, column: 29, scope: !787)
!795 = !DILocation(line: 147, column: 9, scope: !787)
!796 = !DILocation(line: 147, column: 15, scope: !787)
!797 = !DILocation(line: 147, column: 27, scope: !787)
!798 = !DILocation(line: 148, column: 9, scope: !787)
!799 = distinct !{!799, !770, !800, !445}
!800 = !DILocation(line: 149, column: 5, scope: !759)
!801 = !DILocation(line: 151, column: 12, scope: !759)
!802 = !DILocation(line: 151, column: 5, scope: !759)
!803 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !804, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!804 = !DISubroutineType(types: !805)
!805 = !{!23}
!806 = !DILocation(line: 158, column: 5, scope: !803)
!807 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !804, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!808 = !DILocation(line: 163, column: 5, scope: !807)
!809 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !804, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!810 = !DILocation(line: 168, column: 13, scope: !809)
!811 = !DILocation(line: 168, column: 20, scope: !809)
!812 = !DILocation(line: 168, column: 5, scope: !809)
!813 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!814 = !DILocation(line: 187, column: 16, scope: !813)
!815 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!816 = !DILocation(line: 188, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!818 = !DILocation(line: 189, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!820 = !DILocation(line: 190, column: 16, scope: !819)
!821 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!822 = !DILocation(line: 191, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!824 = !DILocation(line: 192, column: 16, scope: !823)
!825 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!826 = !DILocation(line: 193, column: 16, scope: !825)
!827 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!828 = !DILocation(line: 194, column: 16, scope: !827)
!829 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DILocation(line: 195, column: 16, scope: !829)
!831 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!832 = !DILocation(line: 198, column: 15, scope: !831)
!833 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!834 = !DILocation(line: 199, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DILocation(line: 200, column: 15, scope: !835)
!837 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DILocation(line: 201, column: 15, scope: !837)
!839 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 202, column: 15, scope: !839)
!841 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 203, column: 15, scope: !841)
!843 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DILocation(line: 204, column: 15, scope: !843)
!845 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 205, column: 15, scope: !845)
!847 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 206, column: 15, scope: !847)
