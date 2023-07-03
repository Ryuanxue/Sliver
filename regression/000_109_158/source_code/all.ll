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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64_bad() #0 !dbg !113 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !122
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !122
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !123
  store i8* %arraydecay, i8** %data, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !125, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !128, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 -1, i32* %listenSocket, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 -1, i32* %acceptSocket, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !151, metadata !DIExpression()), !dbg !155
  %1 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i64 @strlen(i8* %1) #7, !dbg !157
  store i64 %call, i64* %dataLen, align 8, !dbg !155
  br label %do.body, !dbg !158

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !159
  store i32 %call1, i32* %listenSocket, align 4, !dbg !161
  %2 = load i32, i32* %listenSocket, align 4, !dbg !162
  %cmp = icmp eq i32 %2, -1, !dbg !164
  br i1 %cmp, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !166

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !168
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !169
  store i16 2, i16* %sin_family, align 4, !dbg !170
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !171
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !172
  store i32 0, i32* %s_addr, align 4, !dbg !173
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !174
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !175
  store i16 %call2, i16* %sin_port, align 2, !dbg !176
  %4 = load i32, i32* %listenSocket, align 4, !dbg !177
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !179
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !180
  %cmp4 = icmp eq i32 %call3, -1, !dbg !181
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !182

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !183

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !185
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !187
  %cmp8 = icmp eq i32 %call7, -1, !dbg !188
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !189

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !190

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !192
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !193
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !194
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !195
  %cmp12 = icmp eq i32 %8, -1, !dbg !197
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !198

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !199

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !201
  %10 = load i8*, i8** %data, align 8, !dbg !202
  %11 = load i64, i64* %dataLen, align 8, !dbg !203
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !204
  %12 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub = sub i64 100, %12, !dbg !206
  %sub15 = sub i64 %sub, 1, !dbg !207
  %mul = mul i64 1, %sub15, !dbg !208
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !209
  %conv = trunc i64 %call16 to i32, !dbg !209
  store i32 %conv, i32* %recvResult, align 4, !dbg !210
  %13 = load i32, i32* %recvResult, align 4, !dbg !211
  %cmp17 = icmp eq i32 %13, -1, !dbg !213
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !214

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !215
  %cmp19 = icmp eq i32 %14, 0, !dbg !216
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !217

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !218

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !220
  %16 = load i64, i64* %dataLen, align 8, !dbg !221
  %17 = load i32, i32* %recvResult, align 4, !dbg !222
  %conv23 = sext i32 %17 to i64, !dbg !222
  %div = udiv i64 %conv23, 1, !dbg !223
  %add = add i64 %16, %div, !dbg !224
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !225
  %18 = load i8*, i8** %data, align 8, !dbg !226
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !227
  store i8* %call24, i8** %replace, align 8, !dbg !228
  %19 = load i8*, i8** %replace, align 8, !dbg !229
  %tobool = icmp ne i8* %19, null, !dbg !229
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !231

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !232
  store i8 0, i8* %20, align 1, !dbg !234
  br label %if.end26, !dbg !235

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !236
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !237
  store i8* %call27, i8** %replace, align 8, !dbg !238
  %22 = load i8*, i8** %replace, align 8, !dbg !239
  %tobool28 = icmp ne i8* %22, null, !dbg !239
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !241

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !242
  store i8 0, i8* %23, align 1, !dbg !244
  br label %if.end30, !dbg !245

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !246

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !247
  %cmp31 = icmp ne i32 %24, -1, !dbg !249
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !250

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !251
  %call34 = call i32 @close(i32 %25), !dbg !253
  br label %if.end35, !dbg !254

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !255
  %cmp36 = icmp ne i32 %26, -1, !dbg !257
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !258

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !259
  %call39 = call i32 @close(i32 %27), !dbg !261
  br label %if.end40, !dbg !262

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = bitcast i8** %data to i8*, !dbg !263
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_badSink(i8* %28), !dbg !264
  ret void, !dbg !265
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
define dso_local void @goodG2B() #0 !dbg !266 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !270
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !271
  store i8* %arraydecay, i8** %data, align 8, !dbg !272
  %1 = load i8*, i8** %data, align 8, !dbg !273
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !274
  %2 = bitcast i8** %data to i8*, !dbg !275
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodG2BSink(i8* %2), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !278 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !282
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !282
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !283
  store i8* %arraydecay, i8** %data, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !285, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !292, metadata !DIExpression()), !dbg !293
  store i32 -1, i32* %listenSocket, align 4, !dbg !293
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 -1, i32* %acceptSocket, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !296, metadata !DIExpression()), !dbg !297
  %1 = load i8*, i8** %data, align 8, !dbg !298
  %call = call i64 @strlen(i8* %1) #7, !dbg !299
  store i64 %call, i64* %dataLen, align 8, !dbg !297
  br label %do.body, !dbg !300

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !301
  store i32 %call1, i32* %listenSocket, align 4, !dbg !303
  %2 = load i32, i32* %listenSocket, align 4, !dbg !304
  %cmp = icmp eq i32 %2, -1, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !308

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !310
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !310
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !311
  store i16 2, i16* %sin_family, align 4, !dbg !312
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !313
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !314
  store i32 0, i32* %s_addr, align 4, !dbg !315
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !316
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !317
  store i16 %call2, i16* %sin_port, align 2, !dbg !318
  %4 = load i32, i32* %listenSocket, align 4, !dbg !319
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !321
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !322
  %cmp4 = icmp eq i32 %call3, -1, !dbg !323
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !324

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !325

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !327
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !329
  %cmp8 = icmp eq i32 %call7, -1, !dbg !330
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !331

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !332

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !334
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !335
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !336
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !337
  %cmp12 = icmp eq i32 %8, -1, !dbg !339
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !340

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !341

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !343
  %10 = load i8*, i8** %data, align 8, !dbg !344
  %11 = load i64, i64* %dataLen, align 8, !dbg !345
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !346
  %12 = load i64, i64* %dataLen, align 8, !dbg !347
  %sub = sub i64 100, %12, !dbg !348
  %sub15 = sub i64 %sub, 1, !dbg !349
  %mul = mul i64 1, %sub15, !dbg !350
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !351
  %conv = trunc i64 %call16 to i32, !dbg !351
  store i32 %conv, i32* %recvResult, align 4, !dbg !352
  %13 = load i32, i32* %recvResult, align 4, !dbg !353
  %cmp17 = icmp eq i32 %13, -1, !dbg !355
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !356

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !357
  %cmp19 = icmp eq i32 %14, 0, !dbg !358
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !359

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !360

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !362
  %16 = load i64, i64* %dataLen, align 8, !dbg !363
  %17 = load i32, i32* %recvResult, align 4, !dbg !364
  %conv23 = sext i32 %17 to i64, !dbg !364
  %div = udiv i64 %conv23, 1, !dbg !365
  %add = add i64 %16, %div, !dbg !366
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !362
  store i8 0, i8* %arrayidx, align 1, !dbg !367
  %18 = load i8*, i8** %data, align 8, !dbg !368
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !369
  store i8* %call24, i8** %replace, align 8, !dbg !370
  %19 = load i8*, i8** %replace, align 8, !dbg !371
  %tobool = icmp ne i8* %19, null, !dbg !371
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !373

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !374
  store i8 0, i8* %20, align 1, !dbg !376
  br label %if.end26, !dbg !377

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !378
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !379
  store i8* %call27, i8** %replace, align 8, !dbg !380
  %22 = load i8*, i8** %replace, align 8, !dbg !381
  %tobool28 = icmp ne i8* %22, null, !dbg !381
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !383

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !384
  store i8 0, i8* %23, align 1, !dbg !386
  br label %if.end30, !dbg !387

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !388

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !389
  %cmp31 = icmp ne i32 %24, -1, !dbg !391
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !392

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !393
  %call34 = call i32 @close(i32 %25), !dbg !395
  br label %if.end35, !dbg !396

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !397
  %cmp36 = icmp ne i32 %26, -1, !dbg !399
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !400

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !401
  %call39 = call i32 @close(i32 %27), !dbg !403
  br label %if.end40, !dbg !404

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = bitcast i8** %data to i8*, !dbg !405
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodB2GSink(i8* %28), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64_good() #0 !dbg !408 {
entry:
  call void @goodG2B(), !dbg !409
  call void @goodB2G(), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_badSink(i8* %dataVoidPtr) #0 !dbg !412 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !419
  %1 = bitcast i8* %0 to i8**, !dbg !420
  store i8** %1, i8*** %dataPtr, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i8** %data, metadata !421, metadata !DIExpression()), !dbg !422
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !423
  %3 = load i8*, i8** %2, align 8, !dbg !424
  store i8* %3, i8** %data, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata i32* %i, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %n, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !430, metadata !DIExpression()), !dbg !431
  %4 = load i8*, i8** %data, align 8, !dbg !432
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !434
  %cmp = icmp eq i32 %call, 1, !dbg !435
  br i1 %cmp, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !437
  store i32 0, i32* %i, align 4, !dbg !439
  br label %for.cond, !dbg !441

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !442
  %6 = load i32, i32* %n, align 4, !dbg !444
  %cmp1 = icmp slt i32 %5, %6, !dbg !445
  br i1 %cmp1, label %for.body, label %for.end, !dbg !446

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !447
  %inc = add nsw i32 %7, 1, !dbg !447
  store i32 %inc, i32* %intVariable, align 4, !dbg !447
  br label %for.inc, !dbg !449

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !450
  %inc2 = add nsw i32 %8, 1, !dbg !450
  store i32 %inc2, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !451, !llvm.loop !452

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !455
  call void @printIntLine(i32 %9), !dbg !456
  br label %if.end, !dbg !457

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !458
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !459 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !464
  %1 = bitcast i8* %0 to i8**, !dbg !465
  store i8** %1, i8*** %dataPtr, align 8, !dbg !463
  call void @llvm.dbg.declare(metadata i8** %data, metadata !466, metadata !DIExpression()), !dbg !467
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !468
  %3 = load i8*, i8** %2, align 8, !dbg !469
  store i8* %3, i8** %data, align 8, !dbg !467
  call void @llvm.dbg.declare(metadata i32* %i, metadata !470, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %n, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !475, metadata !DIExpression()), !dbg !476
  %4 = load i8*, i8** %data, align 8, !dbg !477
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !479
  %cmp = icmp eq i32 %call, 1, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !482
  store i32 0, i32* %i, align 4, !dbg !484
  br label %for.cond, !dbg !486

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !487
  %6 = load i32, i32* %n, align 4, !dbg !489
  %cmp1 = icmp slt i32 %5, %6, !dbg !490
  br i1 %cmp1, label %for.body, label %for.end, !dbg !491

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !492
  %inc = add nsw i32 %7, 1, !dbg !492
  store i32 %inc, i32* %intVariable, align 4, !dbg !492
  br label %for.inc, !dbg !494

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !495
  %inc2 = add nsw i32 %8, 1, !dbg !495
  store i32 %inc2, i32* %i, align 4, !dbg !495
  br label %for.cond, !dbg !496, !llvm.loop !497

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !499
  call void @printIntLine(i32 %9), !dbg !500
  br label %if.end, !dbg !501

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !503 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !508
  %1 = bitcast i8* %0 to i8**, !dbg !509
  store i8** %1, i8*** %dataPtr, align 8, !dbg !507
  call void @llvm.dbg.declare(metadata i8** %data, metadata !510, metadata !DIExpression()), !dbg !511
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !512
  %3 = load i8*, i8** %2, align 8, !dbg !513
  store i8* %3, i8** %data, align 8, !dbg !511
  call void @llvm.dbg.declare(metadata i32* %i, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i32* %n, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !519, metadata !DIExpression()), !dbg !520
  %4 = load i8*, i8** %data, align 8, !dbg !521
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !523
  %cmp = icmp eq i32 %call, 1, !dbg !524
  br i1 %cmp, label %if.then, label %if.end5, !dbg !525

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4, !dbg !526
  %cmp1 = icmp slt i32 %5, 10000, !dbg !529
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !530

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !531
  store i32 0, i32* %i, align 4, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i32, i32* %i, align 4, !dbg !536
  %7 = load i32, i32* %n, align 4, !dbg !538
  %cmp3 = icmp slt i32 %6, %7, !dbg !539
  br i1 %cmp3, label %for.body, label %for.end, !dbg !540

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !541
  %inc = add nsw i32 %8, 1, !dbg !541
  store i32 %inc, i32* %intVariable, align 4, !dbg !541
  br label %for.inc, !dbg !543

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !544
  %inc4 = add nsw i32 %9, 1, !dbg !544
  store i32 %inc4, i32* %i, align 4, !dbg !544
  br label %for.cond, !dbg !545, !llvm.loop !546

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !548
  call void @printIntLine(i32 %10), !dbg !549
  br label %if.end, !dbg !550

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !551

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !553 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !558
  %0 = load i8*, i8** %line.addr, align 8, !dbg !559
  %cmp = icmp ne i8* %0, null, !dbg !561
  br i1 %cmp, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !563
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !565
  br label %if.end, !dbg !566

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !567
  ret void, !dbg !568
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !569 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load i8*, i8** %line.addr, align 8, !dbg !572
  %cmp = icmp ne i8* %0, null, !dbg !574
  br i1 %cmp, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !578
  br label %if.end, !dbg !579

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !581 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load i32*, i32** %line.addr, align 8, !dbg !588
  %cmp = icmp ne i32* %0, null, !dbg !590
  br i1 %cmp, label %if.then, label %if.end, !dbg !591

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !592
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !594
  br label %if.end, !dbg !595

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !596
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !597 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !605 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !611
  %conv = sext i16 %0 to i32, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !614 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !620
  %conv = fpext float %0 to double, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !623 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !632 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !638, metadata !DIExpression()), !dbg !639
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !640
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !641
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !643 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !648
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !651 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !656
  %conv = sext i8 %0 to i32, !dbg !656
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !659 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !664, metadata !DIExpression()), !dbg !668
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !669
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !670
  store i32 %0, i32* %arrayidx, align 4, !dbg !671
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !672
  store i32 0, i32* %arrayidx1, align 4, !dbg !673
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !674
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !677 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !680, metadata !DIExpression()), !dbg !681
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !682
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !685 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !690
  %conv = zext i8 %0 to i32, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !693 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !697, metadata !DIExpression()), !dbg !698
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !699
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !700
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !702 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !712, metadata !DIExpression()), !dbg !713
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !714
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !715
  %1 = load i32, i32* %intOne, align 4, !dbg !715
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !716
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !717
  %3 = load i32, i32* %intTwo, align 4, !dbg !717
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !718
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !720 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata i64* %i, metadata !728, metadata !DIExpression()), !dbg !729
  store i64 0, i64* %i, align 8, !dbg !730
  br label %for.cond, !dbg !732

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !733
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !735
  %cmp = icmp ult i64 %0, %1, !dbg !736
  br i1 %cmp, label %for.body, label %for.end, !dbg !737

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !738
  %3 = load i64, i64* %i, align 8, !dbg !740
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !738
  %4 = load i8, i8* %arrayidx, align 1, !dbg !738
  %conv = zext i8 %4 to i32, !dbg !738
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !741
  br label %for.inc, !dbg !742

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !743
  %inc = add i64 %5, 1, !dbg !743
  store i64 %inc, i64* %i, align 8, !dbg !743
  br label %for.cond, !dbg !744, !llvm.loop !745

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !747
  ret void, !dbg !748
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !749 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !752, metadata !DIExpression()), !dbg !753
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !754, metadata !DIExpression()), !dbg !755
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !758, metadata !DIExpression()), !dbg !759
  store i64 0, i64* %numWritten, align 8, !dbg !759
  br label %while.cond, !dbg !760

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !761
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !762
  %cmp = icmp ult i64 %0, %1, !dbg !763
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !764

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !765
  %2 = load i16*, i16** %call, align 8, !dbg !765
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !765
  %4 = load i64, i64* %numWritten, align 8, !dbg !765
  %mul = mul i64 2, %4, !dbg !765
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !765
  %5 = load i8, i8* %arrayidx, align 1, !dbg !765
  %conv = sext i8 %5 to i32, !dbg !765
  %idxprom = sext i32 %conv to i64, !dbg !765
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !765
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !765
  %conv2 = zext i16 %6 to i32, !dbg !765
  %and = and i32 %conv2, 4096, !dbg !765
  %tobool = icmp ne i32 %and, 0, !dbg !765
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !766

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !767
  %7 = load i16*, i16** %call3, align 8, !dbg !767
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !767
  %9 = load i64, i64* %numWritten, align 8, !dbg !767
  %mul4 = mul i64 2, %9, !dbg !767
  %add = add i64 %mul4, 1, !dbg !767
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !767
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !767
  %conv6 = sext i8 %10 to i32, !dbg !767
  %idxprom7 = sext i32 %conv6 to i64, !dbg !767
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !767
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !767
  %conv9 = zext i16 %11 to i32, !dbg !767
  %and10 = and i32 %conv9, 4096, !dbg !767
  %tobool11 = icmp ne i32 %and10, 0, !dbg !766
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !768
  br i1 %12, label %while.body, label %while.end, !dbg !760

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !769, metadata !DIExpression()), !dbg !771
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !772
  %14 = load i64, i64* %numWritten, align 8, !dbg !773
  %mul12 = mul i64 2, %14, !dbg !774
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !772
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !775
  %15 = load i32, i32* %byte, align 4, !dbg !776
  %conv15 = trunc i32 %15 to i8, !dbg !777
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !778
  %17 = load i64, i64* %numWritten, align 8, !dbg !779
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !778
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !780
  %18 = load i64, i64* %numWritten, align 8, !dbg !781
  %inc = add i64 %18, 1, !dbg !781
  store i64 %inc, i64* %numWritten, align 8, !dbg !781
  br label %while.cond, !dbg !760, !llvm.loop !782

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !784
  ret i64 %19, !dbg !785
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !786 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !791, metadata !DIExpression()), !dbg !792
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !793, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !795, metadata !DIExpression()), !dbg !796
  store i64 0, i64* %numWritten, align 8, !dbg !796
  br label %while.cond, !dbg !797

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !798
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !799
  %cmp = icmp ult i64 %0, %1, !dbg !800
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !801

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !802
  %3 = load i64, i64* %numWritten, align 8, !dbg !803
  %mul = mul i64 2, %3, !dbg !804
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !802
  %4 = load i32, i32* %arrayidx, align 4, !dbg !802
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !805
  %tobool = icmp ne i32 %call, 0, !dbg !805
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !806

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !807
  %6 = load i64, i64* %numWritten, align 8, !dbg !808
  %mul1 = mul i64 2, %6, !dbg !809
  %add = add i64 %mul1, 1, !dbg !810
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !807
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !807
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !811
  %tobool4 = icmp ne i32 %call3, 0, !dbg !806
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !812
  br i1 %8, label %while.body, label %while.end, !dbg !797

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !813, metadata !DIExpression()), !dbg !815
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !816
  %10 = load i64, i64* %numWritten, align 8, !dbg !817
  %mul5 = mul i64 2, %10, !dbg !818
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !816
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !819
  %11 = load i32, i32* %byte, align 4, !dbg !820
  %conv = trunc i32 %11 to i8, !dbg !821
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !822
  %13 = load i64, i64* %numWritten, align 8, !dbg !823
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !822
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !824
  %14 = load i64, i64* %numWritten, align 8, !dbg !825
  %inc = add i64 %14, 1, !dbg !825
  store i64 %inc, i64* %numWritten, align 8, !dbg !825
  br label %while.cond, !dbg !797, !llvm.loop !826

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !828
  ret i64 %15, !dbg !829
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !830 {
entry:
  ret i32 1, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !834 {
entry:
  ret i32 0, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !836 {
entry:
  %call = call i32 @rand() #8, !dbg !837
  %rem = srem i32 %call, 2, !dbg !838
  ret i32 %rem, !dbg !839
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !840 {
entry:
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !850 {
entry:
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !852 {
entry:
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !854 {
entry:
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !856 {
entry:
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !858 {
entry:
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !860 {
entry:
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !862 {
entry:
  ret void, !dbg !863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !864 {
entry:
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !866 {
entry:
  ret void, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !868 {
entry:
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !870 {
entry:
  ret void, !dbg !871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !872 {
entry:
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !874 {
entry:
  ret void, !dbg !875
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
!llvm.ident = !{!109, !109, !109}
!llvm.module.flags = !{!110, !111, !112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_158/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_158/source_code")
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
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !108, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_158/source_code")
!107 = !{}
!108 = !{!41}
!109 = !{!"clang version 12.0.0"}
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64_bad", scope: !45, file: !45, line: 52, type: !114, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!114 = !DISubroutineType(types: !115)
!115 = !{null}
!116 = !DILocalVariable(name: "data", scope: !113, file: !45, line: 54, type: !42)
!117 = !DILocation(line: 54, column: 12, scope: !113)
!118 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !45, line: 55, type: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 100)
!122 = !DILocation(line: 55, column: 10, scope: !113)
!123 = !DILocation(line: 56, column: 12, scope: !113)
!124 = !DILocation(line: 56, column: 10, scope: !113)
!125 = !DILocalVariable(name: "recvResult", scope: !126, file: !45, line: 62, type: !23)
!126 = distinct !DILexicalBlock(scope: !113, file: !45, line: 57, column: 5)
!127 = !DILocation(line: 62, column: 13, scope: !126)
!128 = !DILocalVariable(name: "service", scope: !126, file: !45, line: 63, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !130)
!130 = !{!131, !132, !136, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !60, line: 240, baseType: !99, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !60, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !60, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !60, line: 33, baseType: !89, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !60, line: 245, baseType: !141, size: 64, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DILocation(line: 63, column: 28, scope: !126)
!145 = !DILocalVariable(name: "replace", scope: !126, file: !45, line: 64, type: !42)
!146 = !DILocation(line: 64, column: 15, scope: !126)
!147 = !DILocalVariable(name: "listenSocket", scope: !126, file: !45, line: 65, type: !23)
!148 = !DILocation(line: 65, column: 16, scope: !126)
!149 = !DILocalVariable(name: "acceptSocket", scope: !126, file: !45, line: 66, type: !23)
!150 = !DILocation(line: 66, column: 16, scope: !126)
!151 = !DILocalVariable(name: "dataLen", scope: !126, file: !45, line: 67, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!154 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DILocation(line: 67, column: 16, scope: !126)
!156 = !DILocation(line: 67, column: 33, scope: !126)
!157 = !DILocation(line: 67, column: 26, scope: !126)
!158 = !DILocation(line: 68, column: 9, scope: !126)
!159 = !DILocation(line: 78, column: 28, scope: !160)
!160 = distinct !DILexicalBlock(scope: !126, file: !45, line: 69, column: 9)
!161 = !DILocation(line: 78, column: 26, scope: !160)
!162 = !DILocation(line: 79, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !45, line: 79, column: 17)
!164 = !DILocation(line: 79, column: 30, scope: !163)
!165 = !DILocation(line: 79, column: 17, scope: !160)
!166 = !DILocation(line: 81, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !45, line: 80, column: 13)
!168 = !DILocation(line: 83, column: 13, scope: !160)
!169 = !DILocation(line: 84, column: 21, scope: !160)
!170 = !DILocation(line: 84, column: 32, scope: !160)
!171 = !DILocation(line: 85, column: 21, scope: !160)
!172 = !DILocation(line: 85, column: 30, scope: !160)
!173 = !DILocation(line: 85, column: 37, scope: !160)
!174 = !DILocation(line: 86, column: 32, scope: !160)
!175 = !DILocation(line: 86, column: 21, scope: !160)
!176 = !DILocation(line: 86, column: 30, scope: !160)
!177 = !DILocation(line: 87, column: 22, scope: !178)
!178 = distinct !DILexicalBlock(scope: !160, file: !45, line: 87, column: 17)
!179 = !DILocation(line: 87, column: 36, scope: !178)
!180 = !DILocation(line: 87, column: 17, scope: !178)
!181 = !DILocation(line: 87, column: 81, scope: !178)
!182 = !DILocation(line: 87, column: 17, scope: !160)
!183 = !DILocation(line: 89, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !45, line: 88, column: 13)
!185 = !DILocation(line: 91, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !160, file: !45, line: 91, column: 17)
!187 = !DILocation(line: 91, column: 17, scope: !186)
!188 = !DILocation(line: 91, column: 54, scope: !186)
!189 = !DILocation(line: 91, column: 17, scope: !160)
!190 = !DILocation(line: 93, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !45, line: 92, column: 13)
!192 = !DILocation(line: 95, column: 35, scope: !160)
!193 = !DILocation(line: 95, column: 28, scope: !160)
!194 = !DILocation(line: 95, column: 26, scope: !160)
!195 = !DILocation(line: 96, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !160, file: !45, line: 96, column: 17)
!197 = !DILocation(line: 96, column: 30, scope: !196)
!198 = !DILocation(line: 96, column: 17, scope: !160)
!199 = !DILocation(line: 98, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !45, line: 97, column: 13)
!201 = !DILocation(line: 101, column: 31, scope: !160)
!202 = !DILocation(line: 101, column: 54, scope: !160)
!203 = !DILocation(line: 101, column: 61, scope: !160)
!204 = !DILocation(line: 101, column: 59, scope: !160)
!205 = !DILocation(line: 101, column: 93, scope: !160)
!206 = !DILocation(line: 101, column: 91, scope: !160)
!207 = !DILocation(line: 101, column: 101, scope: !160)
!208 = !DILocation(line: 101, column: 84, scope: !160)
!209 = !DILocation(line: 101, column: 26, scope: !160)
!210 = !DILocation(line: 101, column: 24, scope: !160)
!211 = !DILocation(line: 102, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !160, file: !45, line: 102, column: 17)
!213 = !DILocation(line: 102, column: 28, scope: !212)
!214 = !DILocation(line: 102, column: 44, scope: !212)
!215 = !DILocation(line: 102, column: 47, scope: !212)
!216 = !DILocation(line: 102, column: 58, scope: !212)
!217 = !DILocation(line: 102, column: 17, scope: !160)
!218 = !DILocation(line: 104, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !45, line: 103, column: 13)
!220 = !DILocation(line: 107, column: 13, scope: !160)
!221 = !DILocation(line: 107, column: 18, scope: !160)
!222 = !DILocation(line: 107, column: 28, scope: !160)
!223 = !DILocation(line: 107, column: 39, scope: !160)
!224 = !DILocation(line: 107, column: 26, scope: !160)
!225 = !DILocation(line: 107, column: 55, scope: !160)
!226 = !DILocation(line: 109, column: 30, scope: !160)
!227 = !DILocation(line: 109, column: 23, scope: !160)
!228 = !DILocation(line: 109, column: 21, scope: !160)
!229 = !DILocation(line: 110, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !160, file: !45, line: 110, column: 17)
!231 = !DILocation(line: 110, column: 17, scope: !160)
!232 = !DILocation(line: 112, column: 18, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !45, line: 111, column: 13)
!234 = !DILocation(line: 112, column: 26, scope: !233)
!235 = !DILocation(line: 113, column: 13, scope: !233)
!236 = !DILocation(line: 114, column: 30, scope: !160)
!237 = !DILocation(line: 114, column: 23, scope: !160)
!238 = !DILocation(line: 114, column: 21, scope: !160)
!239 = !DILocation(line: 115, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !160, file: !45, line: 115, column: 17)
!241 = !DILocation(line: 115, column: 17, scope: !160)
!242 = !DILocation(line: 117, column: 18, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !45, line: 116, column: 13)
!244 = !DILocation(line: 117, column: 26, scope: !243)
!245 = !DILocation(line: 118, column: 13, scope: !243)
!246 = !DILocation(line: 119, column: 9, scope: !160)
!247 = !DILocation(line: 121, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !126, file: !45, line: 121, column: 13)
!249 = !DILocation(line: 121, column: 26, scope: !248)
!250 = !DILocation(line: 121, column: 13, scope: !126)
!251 = !DILocation(line: 123, column: 26, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !45, line: 122, column: 9)
!253 = !DILocation(line: 123, column: 13, scope: !252)
!254 = !DILocation(line: 124, column: 9, scope: !252)
!255 = !DILocation(line: 125, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !126, file: !45, line: 125, column: 13)
!257 = !DILocation(line: 125, column: 26, scope: !256)
!258 = !DILocation(line: 125, column: 13, scope: !126)
!259 = !DILocation(line: 127, column: 26, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !45, line: 126, column: 9)
!261 = !DILocation(line: 127, column: 13, scope: !260)
!262 = !DILocation(line: 128, column: 9, scope: !260)
!263 = !DILocation(line: 136, column: 69, scope: !113)
!264 = !DILocation(line: 136, column: 5, scope: !113)
!265 = !DILocation(line: 137, column: 1, scope: !113)
!266 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !114, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!267 = !DILocalVariable(name: "data", scope: !266, file: !45, line: 147, type: !42)
!268 = !DILocation(line: 147, column: 12, scope: !266)
!269 = !DILocalVariable(name: "dataBuffer", scope: !266, file: !45, line: 148, type: !119)
!270 = !DILocation(line: 148, column: 10, scope: !266)
!271 = !DILocation(line: 149, column: 12, scope: !266)
!272 = !DILocation(line: 149, column: 10, scope: !266)
!273 = !DILocation(line: 151, column: 12, scope: !266)
!274 = !DILocation(line: 151, column: 5, scope: !266)
!275 = !DILocation(line: 152, column: 73, scope: !266)
!276 = !DILocation(line: 152, column: 5, scope: !266)
!277 = !DILocation(line: 153, column: 1, scope: !266)
!278 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !114, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!279 = !DILocalVariable(name: "data", scope: !278, file: !45, line: 159, type: !42)
!280 = !DILocation(line: 159, column: 12, scope: !278)
!281 = !DILocalVariable(name: "dataBuffer", scope: !278, file: !45, line: 160, type: !119)
!282 = !DILocation(line: 160, column: 10, scope: !278)
!283 = !DILocation(line: 161, column: 12, scope: !278)
!284 = !DILocation(line: 161, column: 10, scope: !278)
!285 = !DILocalVariable(name: "recvResult", scope: !286, file: !45, line: 167, type: !23)
!286 = distinct !DILexicalBlock(scope: !278, file: !45, line: 162, column: 5)
!287 = !DILocation(line: 167, column: 13, scope: !286)
!288 = !DILocalVariable(name: "service", scope: !286, file: !45, line: 168, type: !129)
!289 = !DILocation(line: 168, column: 28, scope: !286)
!290 = !DILocalVariable(name: "replace", scope: !286, file: !45, line: 169, type: !42)
!291 = !DILocation(line: 169, column: 15, scope: !286)
!292 = !DILocalVariable(name: "listenSocket", scope: !286, file: !45, line: 170, type: !23)
!293 = !DILocation(line: 170, column: 16, scope: !286)
!294 = !DILocalVariable(name: "acceptSocket", scope: !286, file: !45, line: 171, type: !23)
!295 = !DILocation(line: 171, column: 16, scope: !286)
!296 = !DILocalVariable(name: "dataLen", scope: !286, file: !45, line: 172, type: !152)
!297 = !DILocation(line: 172, column: 16, scope: !286)
!298 = !DILocation(line: 172, column: 33, scope: !286)
!299 = !DILocation(line: 172, column: 26, scope: !286)
!300 = !DILocation(line: 173, column: 9, scope: !286)
!301 = !DILocation(line: 183, column: 28, scope: !302)
!302 = distinct !DILexicalBlock(scope: !286, file: !45, line: 174, column: 9)
!303 = !DILocation(line: 183, column: 26, scope: !302)
!304 = !DILocation(line: 184, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !45, line: 184, column: 17)
!306 = !DILocation(line: 184, column: 30, scope: !305)
!307 = !DILocation(line: 184, column: 17, scope: !302)
!308 = !DILocation(line: 186, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !45, line: 185, column: 13)
!310 = !DILocation(line: 188, column: 13, scope: !302)
!311 = !DILocation(line: 189, column: 21, scope: !302)
!312 = !DILocation(line: 189, column: 32, scope: !302)
!313 = !DILocation(line: 190, column: 21, scope: !302)
!314 = !DILocation(line: 190, column: 30, scope: !302)
!315 = !DILocation(line: 190, column: 37, scope: !302)
!316 = !DILocation(line: 191, column: 32, scope: !302)
!317 = !DILocation(line: 191, column: 21, scope: !302)
!318 = !DILocation(line: 191, column: 30, scope: !302)
!319 = !DILocation(line: 192, column: 22, scope: !320)
!320 = distinct !DILexicalBlock(scope: !302, file: !45, line: 192, column: 17)
!321 = !DILocation(line: 192, column: 36, scope: !320)
!322 = !DILocation(line: 192, column: 17, scope: !320)
!323 = !DILocation(line: 192, column: 81, scope: !320)
!324 = !DILocation(line: 192, column: 17, scope: !302)
!325 = !DILocation(line: 194, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !45, line: 193, column: 13)
!327 = !DILocation(line: 196, column: 24, scope: !328)
!328 = distinct !DILexicalBlock(scope: !302, file: !45, line: 196, column: 17)
!329 = !DILocation(line: 196, column: 17, scope: !328)
!330 = !DILocation(line: 196, column: 54, scope: !328)
!331 = !DILocation(line: 196, column: 17, scope: !302)
!332 = !DILocation(line: 198, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !45, line: 197, column: 13)
!334 = !DILocation(line: 200, column: 35, scope: !302)
!335 = !DILocation(line: 200, column: 28, scope: !302)
!336 = !DILocation(line: 200, column: 26, scope: !302)
!337 = !DILocation(line: 201, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !302, file: !45, line: 201, column: 17)
!339 = !DILocation(line: 201, column: 30, scope: !338)
!340 = !DILocation(line: 201, column: 17, scope: !302)
!341 = !DILocation(line: 203, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !45, line: 202, column: 13)
!343 = !DILocation(line: 206, column: 31, scope: !302)
!344 = !DILocation(line: 206, column: 54, scope: !302)
!345 = !DILocation(line: 206, column: 61, scope: !302)
!346 = !DILocation(line: 206, column: 59, scope: !302)
!347 = !DILocation(line: 206, column: 93, scope: !302)
!348 = !DILocation(line: 206, column: 91, scope: !302)
!349 = !DILocation(line: 206, column: 101, scope: !302)
!350 = !DILocation(line: 206, column: 84, scope: !302)
!351 = !DILocation(line: 206, column: 26, scope: !302)
!352 = !DILocation(line: 206, column: 24, scope: !302)
!353 = !DILocation(line: 207, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !302, file: !45, line: 207, column: 17)
!355 = !DILocation(line: 207, column: 28, scope: !354)
!356 = !DILocation(line: 207, column: 44, scope: !354)
!357 = !DILocation(line: 207, column: 47, scope: !354)
!358 = !DILocation(line: 207, column: 58, scope: !354)
!359 = !DILocation(line: 207, column: 17, scope: !302)
!360 = !DILocation(line: 209, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !45, line: 208, column: 13)
!362 = !DILocation(line: 212, column: 13, scope: !302)
!363 = !DILocation(line: 212, column: 18, scope: !302)
!364 = !DILocation(line: 212, column: 28, scope: !302)
!365 = !DILocation(line: 212, column: 39, scope: !302)
!366 = !DILocation(line: 212, column: 26, scope: !302)
!367 = !DILocation(line: 212, column: 55, scope: !302)
!368 = !DILocation(line: 214, column: 30, scope: !302)
!369 = !DILocation(line: 214, column: 23, scope: !302)
!370 = !DILocation(line: 214, column: 21, scope: !302)
!371 = !DILocation(line: 215, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !302, file: !45, line: 215, column: 17)
!373 = !DILocation(line: 215, column: 17, scope: !302)
!374 = !DILocation(line: 217, column: 18, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !45, line: 216, column: 13)
!376 = !DILocation(line: 217, column: 26, scope: !375)
!377 = !DILocation(line: 218, column: 13, scope: !375)
!378 = !DILocation(line: 219, column: 30, scope: !302)
!379 = !DILocation(line: 219, column: 23, scope: !302)
!380 = !DILocation(line: 219, column: 21, scope: !302)
!381 = !DILocation(line: 220, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !302, file: !45, line: 220, column: 17)
!383 = !DILocation(line: 220, column: 17, scope: !302)
!384 = !DILocation(line: 222, column: 18, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !45, line: 221, column: 13)
!386 = !DILocation(line: 222, column: 26, scope: !385)
!387 = !DILocation(line: 223, column: 13, scope: !385)
!388 = !DILocation(line: 224, column: 9, scope: !302)
!389 = !DILocation(line: 226, column: 13, scope: !390)
!390 = distinct !DILexicalBlock(scope: !286, file: !45, line: 226, column: 13)
!391 = !DILocation(line: 226, column: 26, scope: !390)
!392 = !DILocation(line: 226, column: 13, scope: !286)
!393 = !DILocation(line: 228, column: 26, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !45, line: 227, column: 9)
!395 = !DILocation(line: 228, column: 13, scope: !394)
!396 = !DILocation(line: 229, column: 9, scope: !394)
!397 = !DILocation(line: 230, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !286, file: !45, line: 230, column: 13)
!399 = !DILocation(line: 230, column: 26, scope: !398)
!400 = !DILocation(line: 230, column: 13, scope: !286)
!401 = !DILocation(line: 232, column: 26, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !45, line: 231, column: 9)
!403 = !DILocation(line: 232, column: 13, scope: !402)
!404 = !DILocation(line: 233, column: 9, scope: !402)
!405 = !DILocation(line: 241, column: 73, scope: !278)
!406 = !DILocation(line: 241, column: 5, scope: !278)
!407 = !DILocation(line: 242, column: 1, scope: !278)
!408 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64_good", scope: !45, file: !45, line: 244, type: !114, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!409 = !DILocation(line: 246, column: 5, scope: !408)
!410 = !DILocation(line: 247, column: 5, scope: !408)
!411 = !DILocation(line: 248, column: 1, scope: !408)
!412 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_badSink", scope: !106, file: !106, line: 49, type: !413, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !22}
!415 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !412, file: !106, line: 49, type: !22)
!416 = !DILocation(line: 49, column: 77, scope: !412)
!417 = !DILocalVariable(name: "dataPtr", scope: !412, file: !106, line: 52, type: !41)
!418 = !DILocation(line: 52, column: 14, scope: !412)
!419 = !DILocation(line: 52, column: 34, scope: !412)
!420 = !DILocation(line: 52, column: 24, scope: !412)
!421 = !DILocalVariable(name: "data", scope: !412, file: !106, line: 54, type: !42)
!422 = !DILocation(line: 54, column: 12, scope: !412)
!423 = !DILocation(line: 54, column: 21, scope: !412)
!424 = !DILocation(line: 54, column: 20, scope: !412)
!425 = !DILocalVariable(name: "i", scope: !426, file: !106, line: 56, type: !23)
!426 = distinct !DILexicalBlock(scope: !412, file: !106, line: 55, column: 5)
!427 = !DILocation(line: 56, column: 13, scope: !426)
!428 = !DILocalVariable(name: "n", scope: !426, file: !106, line: 56, type: !23)
!429 = !DILocation(line: 56, column: 16, scope: !426)
!430 = !DILocalVariable(name: "intVariable", scope: !426, file: !106, line: 56, type: !23)
!431 = !DILocation(line: 56, column: 19, scope: !426)
!432 = !DILocation(line: 57, column: 20, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !106, line: 57, column: 13)
!434 = !DILocation(line: 57, column: 13, scope: !433)
!435 = !DILocation(line: 57, column: 36, scope: !433)
!436 = !DILocation(line: 57, column: 13, scope: !426)
!437 = !DILocation(line: 60, column: 25, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !106, line: 58, column: 9)
!439 = !DILocation(line: 61, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !106, line: 61, column: 13)
!441 = !DILocation(line: 61, column: 18, scope: !440)
!442 = !DILocation(line: 61, column: 25, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !106, line: 61, column: 13)
!444 = !DILocation(line: 61, column: 29, scope: !443)
!445 = !DILocation(line: 61, column: 27, scope: !443)
!446 = !DILocation(line: 61, column: 13, scope: !440)
!447 = !DILocation(line: 64, column: 28, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !106, line: 62, column: 13)
!449 = !DILocation(line: 65, column: 13, scope: !448)
!450 = !DILocation(line: 61, column: 33, scope: !443)
!451 = !DILocation(line: 61, column: 13, scope: !443)
!452 = distinct !{!452, !446, !453, !454}
!453 = !DILocation(line: 65, column: 13, scope: !440)
!454 = !{!"llvm.loop.mustprogress"}
!455 = !DILocation(line: 66, column: 26, scope: !438)
!456 = !DILocation(line: 66, column: 13, scope: !438)
!457 = !DILocation(line: 67, column: 9, scope: !438)
!458 = !DILocation(line: 69, column: 1, scope: !412)
!459 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodG2BSink", scope: !106, file: !106, line: 76, type: !413, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!460 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !459, file: !106, line: 76, type: !22)
!461 = !DILocation(line: 76, column: 81, scope: !459)
!462 = !DILocalVariable(name: "dataPtr", scope: !459, file: !106, line: 79, type: !41)
!463 = !DILocation(line: 79, column: 14, scope: !459)
!464 = !DILocation(line: 79, column: 34, scope: !459)
!465 = !DILocation(line: 79, column: 24, scope: !459)
!466 = !DILocalVariable(name: "data", scope: !459, file: !106, line: 81, type: !42)
!467 = !DILocation(line: 81, column: 12, scope: !459)
!468 = !DILocation(line: 81, column: 21, scope: !459)
!469 = !DILocation(line: 81, column: 20, scope: !459)
!470 = !DILocalVariable(name: "i", scope: !471, file: !106, line: 83, type: !23)
!471 = distinct !DILexicalBlock(scope: !459, file: !106, line: 82, column: 5)
!472 = !DILocation(line: 83, column: 13, scope: !471)
!473 = !DILocalVariable(name: "n", scope: !471, file: !106, line: 83, type: !23)
!474 = !DILocation(line: 83, column: 16, scope: !471)
!475 = !DILocalVariable(name: "intVariable", scope: !471, file: !106, line: 83, type: !23)
!476 = !DILocation(line: 83, column: 19, scope: !471)
!477 = !DILocation(line: 84, column: 20, scope: !478)
!478 = distinct !DILexicalBlock(scope: !471, file: !106, line: 84, column: 13)
!479 = !DILocation(line: 84, column: 13, scope: !478)
!480 = !DILocation(line: 84, column: 36, scope: !478)
!481 = !DILocation(line: 84, column: 13, scope: !471)
!482 = !DILocation(line: 87, column: 25, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !106, line: 85, column: 9)
!484 = !DILocation(line: 88, column: 20, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !106, line: 88, column: 13)
!486 = !DILocation(line: 88, column: 18, scope: !485)
!487 = !DILocation(line: 88, column: 25, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !106, line: 88, column: 13)
!489 = !DILocation(line: 88, column: 29, scope: !488)
!490 = !DILocation(line: 88, column: 27, scope: !488)
!491 = !DILocation(line: 88, column: 13, scope: !485)
!492 = !DILocation(line: 91, column: 28, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !106, line: 89, column: 13)
!494 = !DILocation(line: 92, column: 13, scope: !493)
!495 = !DILocation(line: 88, column: 33, scope: !488)
!496 = !DILocation(line: 88, column: 13, scope: !488)
!497 = distinct !{!497, !491, !498, !454}
!498 = !DILocation(line: 92, column: 13, scope: !485)
!499 = !DILocation(line: 93, column: 26, scope: !483)
!500 = !DILocation(line: 93, column: 13, scope: !483)
!501 = !DILocation(line: 94, column: 9, scope: !483)
!502 = !DILocation(line: 96, column: 1, scope: !459)
!503 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_64b_goodB2GSink", scope: !106, file: !106, line: 99, type: !413, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!504 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !503, file: !106, line: 99, type: !22)
!505 = !DILocation(line: 99, column: 81, scope: !503)
!506 = !DILocalVariable(name: "dataPtr", scope: !503, file: !106, line: 102, type: !41)
!507 = !DILocation(line: 102, column: 14, scope: !503)
!508 = !DILocation(line: 102, column: 34, scope: !503)
!509 = !DILocation(line: 102, column: 24, scope: !503)
!510 = !DILocalVariable(name: "data", scope: !503, file: !106, line: 104, type: !42)
!511 = !DILocation(line: 104, column: 12, scope: !503)
!512 = !DILocation(line: 104, column: 21, scope: !503)
!513 = !DILocation(line: 104, column: 20, scope: !503)
!514 = !DILocalVariable(name: "i", scope: !515, file: !106, line: 106, type: !23)
!515 = distinct !DILexicalBlock(scope: !503, file: !106, line: 105, column: 5)
!516 = !DILocation(line: 106, column: 13, scope: !515)
!517 = !DILocalVariable(name: "n", scope: !515, file: !106, line: 106, type: !23)
!518 = !DILocation(line: 106, column: 16, scope: !515)
!519 = !DILocalVariable(name: "intVariable", scope: !515, file: !106, line: 106, type: !23)
!520 = !DILocation(line: 106, column: 19, scope: !515)
!521 = !DILocation(line: 107, column: 20, scope: !522)
!522 = distinct !DILexicalBlock(scope: !515, file: !106, line: 107, column: 13)
!523 = !DILocation(line: 107, column: 13, scope: !522)
!524 = !DILocation(line: 107, column: 36, scope: !522)
!525 = !DILocation(line: 107, column: 13, scope: !515)
!526 = !DILocation(line: 110, column: 17, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !106, line: 110, column: 17)
!528 = distinct !DILexicalBlock(scope: !522, file: !106, line: 108, column: 9)
!529 = !DILocation(line: 110, column: 19, scope: !527)
!530 = !DILocation(line: 110, column: 17, scope: !528)
!531 = !DILocation(line: 112, column: 29, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !106, line: 111, column: 13)
!533 = !DILocation(line: 113, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !106, line: 113, column: 17)
!535 = !DILocation(line: 113, column: 22, scope: !534)
!536 = !DILocation(line: 113, column: 29, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !106, line: 113, column: 17)
!538 = !DILocation(line: 113, column: 33, scope: !537)
!539 = !DILocation(line: 113, column: 31, scope: !537)
!540 = !DILocation(line: 113, column: 17, scope: !534)
!541 = !DILocation(line: 116, column: 32, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !106, line: 114, column: 17)
!543 = !DILocation(line: 117, column: 17, scope: !542)
!544 = !DILocation(line: 113, column: 37, scope: !537)
!545 = !DILocation(line: 113, column: 17, scope: !537)
!546 = distinct !{!546, !540, !547, !454}
!547 = !DILocation(line: 117, column: 17, scope: !534)
!548 = !DILocation(line: 118, column: 30, scope: !532)
!549 = !DILocation(line: 118, column: 17, scope: !532)
!550 = !DILocation(line: 119, column: 13, scope: !532)
!551 = !DILocation(line: 120, column: 9, scope: !528)
!552 = !DILocation(line: 122, column: 1, scope: !503)
!553 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !554, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !42}
!556 = !DILocalVariable(name: "line", arg: 1, scope: !553, file: !3, line: 11, type: !42)
!557 = !DILocation(line: 11, column: 25, scope: !553)
!558 = !DILocation(line: 13, column: 1, scope: !553)
!559 = !DILocation(line: 14, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !553, file: !3, line: 14, column: 8)
!561 = !DILocation(line: 14, column: 13, scope: !560)
!562 = !DILocation(line: 14, column: 8, scope: !553)
!563 = !DILocation(line: 16, column: 24, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !3, line: 15, column: 5)
!565 = !DILocation(line: 16, column: 9, scope: !564)
!566 = !DILocation(line: 17, column: 5, scope: !564)
!567 = !DILocation(line: 18, column: 5, scope: !553)
!568 = !DILocation(line: 19, column: 1, scope: !553)
!569 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !554, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!570 = !DILocalVariable(name: "line", arg: 1, scope: !569, file: !3, line: 20, type: !42)
!571 = !DILocation(line: 20, column: 29, scope: !569)
!572 = !DILocation(line: 22, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 22, column: 8)
!574 = !DILocation(line: 22, column: 13, scope: !573)
!575 = !DILocation(line: 22, column: 8, scope: !569)
!576 = !DILocation(line: 24, column: 24, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !3, line: 23, column: 5)
!578 = !DILocation(line: 24, column: 9, scope: !577)
!579 = !DILocation(line: 25, column: 5, scope: !577)
!580 = !DILocation(line: 26, column: 1, scope: !569)
!581 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !582, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !153, line: 74, baseType: !23)
!586 = !DILocalVariable(name: "line", arg: 1, scope: !581, file: !3, line: 27, type: !584)
!587 = !DILocation(line: 27, column: 29, scope: !581)
!588 = !DILocation(line: 29, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !3, line: 29, column: 8)
!590 = !DILocation(line: 29, column: 13, scope: !589)
!591 = !DILocation(line: 29, column: 8, scope: !581)
!592 = !DILocation(line: 31, column: 27, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !3, line: 30, column: 5)
!594 = !DILocation(line: 31, column: 9, scope: !593)
!595 = !DILocation(line: 32, column: 5, scope: !593)
!596 = !DILocation(line: 33, column: 1, scope: !581)
!597 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !598, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !23}
!600 = !DILocalVariable(name: "intNumber", arg: 1, scope: !597, file: !3, line: 35, type: !23)
!601 = !DILocation(line: 35, column: 24, scope: !597)
!602 = !DILocation(line: 37, column: 20, scope: !597)
!603 = !DILocation(line: 37, column: 5, scope: !597)
!604 = !DILocation(line: 38, column: 1, scope: !597)
!605 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !606, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!609 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !605, file: !3, line: 40, type: !608)
!610 = !DILocation(line: 40, column: 28, scope: !605)
!611 = !DILocation(line: 42, column: 21, scope: !605)
!612 = !DILocation(line: 42, column: 5, scope: !605)
!613 = !DILocation(line: 43, column: 1, scope: !605)
!614 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !615, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617}
!617 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!618 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !614, file: !3, line: 45, type: !617)
!619 = !DILocation(line: 45, column: 28, scope: !614)
!620 = !DILocation(line: 47, column: 20, scope: !614)
!621 = !DILocation(line: 47, column: 5, scope: !614)
!622 = !DILocation(line: 48, column: 1, scope: !614)
!623 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !624, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!627 = !DILocalVariable(name: "longNumber", arg: 1, scope: !623, file: !3, line: 50, type: !626)
!628 = !DILocation(line: 50, column: 26, scope: !623)
!629 = !DILocation(line: 52, column: 21, scope: !623)
!630 = !DILocation(line: 52, column: 5, scope: !623)
!631 = !DILocation(line: 53, column: 1, scope: !623)
!632 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !633, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !636, line: 27, baseType: !637)
!636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !626)
!638 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !632, file: !3, line: 55, type: !635)
!639 = !DILocation(line: 55, column: 33, scope: !632)
!640 = !DILocation(line: 57, column: 29, scope: !632)
!641 = !DILocation(line: 57, column: 5, scope: !632)
!642 = !DILocation(line: 58, column: 1, scope: !632)
!643 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !644, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !152}
!646 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !643, file: !3, line: 60, type: !152)
!647 = !DILocation(line: 60, column: 29, scope: !643)
!648 = !DILocation(line: 62, column: 21, scope: !643)
!649 = !DILocation(line: 62, column: 5, scope: !643)
!650 = !DILocation(line: 63, column: 1, scope: !643)
!651 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !652, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !43}
!654 = !DILocalVariable(name: "charHex", arg: 1, scope: !651, file: !3, line: 65, type: !43)
!655 = !DILocation(line: 65, column: 29, scope: !651)
!656 = !DILocation(line: 67, column: 22, scope: !651)
!657 = !DILocation(line: 67, column: 5, scope: !651)
!658 = !DILocation(line: 68, column: 1, scope: !651)
!659 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !660, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !585}
!662 = !DILocalVariable(name: "wideChar", arg: 1, scope: !659, file: !3, line: 70, type: !585)
!663 = !DILocation(line: 70, column: 29, scope: !659)
!664 = !DILocalVariable(name: "s", scope: !659, file: !3, line: 74, type: !665)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 64, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 2)
!668 = !DILocation(line: 74, column: 13, scope: !659)
!669 = !DILocation(line: 75, column: 16, scope: !659)
!670 = !DILocation(line: 75, column: 9, scope: !659)
!671 = !DILocation(line: 75, column: 14, scope: !659)
!672 = !DILocation(line: 76, column: 9, scope: !659)
!673 = !DILocation(line: 76, column: 14, scope: !659)
!674 = !DILocation(line: 77, column: 21, scope: !659)
!675 = !DILocation(line: 77, column: 5, scope: !659)
!676 = !DILocation(line: 78, column: 1, scope: !659)
!677 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !678, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !7}
!680 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !677, file: !3, line: 80, type: !7)
!681 = !DILocation(line: 80, column: 33, scope: !677)
!682 = !DILocation(line: 82, column: 20, scope: !677)
!683 = !DILocation(line: 82, column: 5, scope: !677)
!684 = !DILocation(line: 83, column: 1, scope: !677)
!685 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !686, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !25}
!688 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !685, file: !3, line: 85, type: !25)
!689 = !DILocation(line: 85, column: 45, scope: !685)
!690 = !DILocation(line: 87, column: 22, scope: !685)
!691 = !DILocation(line: 87, column: 5, scope: !685)
!692 = !DILocation(line: 88, column: 1, scope: !685)
!693 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !694, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696}
!696 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!697 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !693, file: !3, line: 90, type: !696)
!698 = !DILocation(line: 90, column: 29, scope: !693)
!699 = !DILocation(line: 92, column: 20, scope: !693)
!700 = !DILocation(line: 92, column: 5, scope: !693)
!701 = !DILocation(line: 93, column: 1, scope: !693)
!702 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !703, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !707, line: 100, baseType: !708)
!707 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_158/source_code")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !707, line: 96, size: 64, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !708, file: !707, line: 98, baseType: !23, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !708, file: !707, line: 99, baseType: !23, size: 32, offset: 32)
!712 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !702, file: !3, line: 95, type: !705)
!713 = !DILocation(line: 95, column: 40, scope: !702)
!714 = !DILocation(line: 97, column: 26, scope: !702)
!715 = !DILocation(line: 97, column: 47, scope: !702)
!716 = !DILocation(line: 97, column: 55, scope: !702)
!717 = !DILocation(line: 97, column: 76, scope: !702)
!718 = !DILocation(line: 97, column: 5, scope: !702)
!719 = !DILocation(line: 98, column: 1, scope: !702)
!720 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !721, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !723, !152}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!724 = !DILocalVariable(name: "bytes", arg: 1, scope: !720, file: !3, line: 100, type: !723)
!725 = !DILocation(line: 100, column: 38, scope: !720)
!726 = !DILocalVariable(name: "numBytes", arg: 2, scope: !720, file: !3, line: 100, type: !152)
!727 = !DILocation(line: 100, column: 52, scope: !720)
!728 = !DILocalVariable(name: "i", scope: !720, file: !3, line: 102, type: !152)
!729 = !DILocation(line: 102, column: 12, scope: !720)
!730 = !DILocation(line: 103, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !720, file: !3, line: 103, column: 5)
!732 = !DILocation(line: 103, column: 10, scope: !731)
!733 = !DILocation(line: 103, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !3, line: 103, column: 5)
!735 = !DILocation(line: 103, column: 21, scope: !734)
!736 = !DILocation(line: 103, column: 19, scope: !734)
!737 = !DILocation(line: 103, column: 5, scope: !731)
!738 = !DILocation(line: 105, column: 24, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !3, line: 104, column: 5)
!740 = !DILocation(line: 105, column: 30, scope: !739)
!741 = !DILocation(line: 105, column: 9, scope: !739)
!742 = !DILocation(line: 106, column: 5, scope: !739)
!743 = !DILocation(line: 103, column: 31, scope: !734)
!744 = !DILocation(line: 103, column: 5, scope: !734)
!745 = distinct !{!745, !737, !746, !454}
!746 = !DILocation(line: 106, column: 5, scope: !731)
!747 = !DILocation(line: 107, column: 5, scope: !720)
!748 = !DILocation(line: 108, column: 1, scope: !720)
!749 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !750, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!750 = !DISubroutineType(types: !751)
!751 = !{!152, !723, !152, !42}
!752 = !DILocalVariable(name: "bytes", arg: 1, scope: !749, file: !3, line: 113, type: !723)
!753 = !DILocation(line: 113, column: 39, scope: !749)
!754 = !DILocalVariable(name: "numBytes", arg: 2, scope: !749, file: !3, line: 113, type: !152)
!755 = !DILocation(line: 113, column: 53, scope: !749)
!756 = !DILocalVariable(name: "hex", arg: 3, scope: !749, file: !3, line: 113, type: !42)
!757 = !DILocation(line: 113, column: 71, scope: !749)
!758 = !DILocalVariable(name: "numWritten", scope: !749, file: !3, line: 115, type: !152)
!759 = !DILocation(line: 115, column: 12, scope: !749)
!760 = !DILocation(line: 121, column: 5, scope: !749)
!761 = !DILocation(line: 121, column: 12, scope: !749)
!762 = !DILocation(line: 121, column: 25, scope: !749)
!763 = !DILocation(line: 121, column: 23, scope: !749)
!764 = !DILocation(line: 121, column: 34, scope: !749)
!765 = !DILocation(line: 121, column: 37, scope: !749)
!766 = !DILocation(line: 121, column: 67, scope: !749)
!767 = !DILocation(line: 121, column: 70, scope: !749)
!768 = !DILocation(line: 0, scope: !749)
!769 = !DILocalVariable(name: "byte", scope: !770, file: !3, line: 123, type: !23)
!770 = distinct !DILexicalBlock(scope: !749, file: !3, line: 122, column: 5)
!771 = !DILocation(line: 123, column: 13, scope: !770)
!772 = !DILocation(line: 124, column: 17, scope: !770)
!773 = !DILocation(line: 124, column: 25, scope: !770)
!774 = !DILocation(line: 124, column: 23, scope: !770)
!775 = !DILocation(line: 124, column: 9, scope: !770)
!776 = !DILocation(line: 125, column: 45, scope: !770)
!777 = !DILocation(line: 125, column: 29, scope: !770)
!778 = !DILocation(line: 125, column: 9, scope: !770)
!779 = !DILocation(line: 125, column: 15, scope: !770)
!780 = !DILocation(line: 125, column: 27, scope: !770)
!781 = !DILocation(line: 126, column: 9, scope: !770)
!782 = distinct !{!782, !760, !783, !454}
!783 = !DILocation(line: 127, column: 5, scope: !749)
!784 = !DILocation(line: 129, column: 12, scope: !749)
!785 = !DILocation(line: 129, column: 5, scope: !749)
!786 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !787, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DISubroutineType(types: !788)
!788 = !{!152, !723, !152, !584}
!789 = !DILocalVariable(name: "bytes", arg: 1, scope: !786, file: !3, line: 135, type: !723)
!790 = !DILocation(line: 135, column: 41, scope: !786)
!791 = !DILocalVariable(name: "numBytes", arg: 2, scope: !786, file: !3, line: 135, type: !152)
!792 = !DILocation(line: 135, column: 55, scope: !786)
!793 = !DILocalVariable(name: "hex", arg: 3, scope: !786, file: !3, line: 135, type: !584)
!794 = !DILocation(line: 135, column: 76, scope: !786)
!795 = !DILocalVariable(name: "numWritten", scope: !786, file: !3, line: 137, type: !152)
!796 = !DILocation(line: 137, column: 12, scope: !786)
!797 = !DILocation(line: 143, column: 5, scope: !786)
!798 = !DILocation(line: 143, column: 12, scope: !786)
!799 = !DILocation(line: 143, column: 25, scope: !786)
!800 = !DILocation(line: 143, column: 23, scope: !786)
!801 = !DILocation(line: 143, column: 34, scope: !786)
!802 = !DILocation(line: 143, column: 47, scope: !786)
!803 = !DILocation(line: 143, column: 55, scope: !786)
!804 = !DILocation(line: 143, column: 53, scope: !786)
!805 = !DILocation(line: 143, column: 37, scope: !786)
!806 = !DILocation(line: 143, column: 68, scope: !786)
!807 = !DILocation(line: 143, column: 81, scope: !786)
!808 = !DILocation(line: 143, column: 89, scope: !786)
!809 = !DILocation(line: 143, column: 87, scope: !786)
!810 = !DILocation(line: 143, column: 100, scope: !786)
!811 = !DILocation(line: 143, column: 71, scope: !786)
!812 = !DILocation(line: 0, scope: !786)
!813 = !DILocalVariable(name: "byte", scope: !814, file: !3, line: 145, type: !23)
!814 = distinct !DILexicalBlock(scope: !786, file: !3, line: 144, column: 5)
!815 = !DILocation(line: 145, column: 13, scope: !814)
!816 = !DILocation(line: 146, column: 18, scope: !814)
!817 = !DILocation(line: 146, column: 26, scope: !814)
!818 = !DILocation(line: 146, column: 24, scope: !814)
!819 = !DILocation(line: 146, column: 9, scope: !814)
!820 = !DILocation(line: 147, column: 45, scope: !814)
!821 = !DILocation(line: 147, column: 29, scope: !814)
!822 = !DILocation(line: 147, column: 9, scope: !814)
!823 = !DILocation(line: 147, column: 15, scope: !814)
!824 = !DILocation(line: 147, column: 27, scope: !814)
!825 = !DILocation(line: 148, column: 9, scope: !814)
!826 = distinct !{!826, !797, !827, !454}
!827 = !DILocation(line: 149, column: 5, scope: !786)
!828 = !DILocation(line: 151, column: 12, scope: !786)
!829 = !DILocation(line: 151, column: 5, scope: !786)
!830 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !831, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!831 = !DISubroutineType(types: !832)
!832 = !{!23}
!833 = !DILocation(line: 158, column: 5, scope: !830)
!834 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !831, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!835 = !DILocation(line: 163, column: 5, scope: !834)
!836 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !831, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!837 = !DILocation(line: 168, column: 13, scope: !836)
!838 = !DILocation(line: 168, column: 20, scope: !836)
!839 = !DILocation(line: 168, column: 5, scope: !836)
!840 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !114, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!841 = !DILocation(line: 187, column: 16, scope: !840)
!842 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !114, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!843 = !DILocation(line: 188, column: 16, scope: !842)
!844 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !114, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!845 = !DILocation(line: 189, column: 16, scope: !844)
!846 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !114, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!847 = !DILocation(line: 190, column: 16, scope: !846)
!848 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !114, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!849 = !DILocation(line: 191, column: 16, scope: !848)
!850 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !114, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!851 = !DILocation(line: 192, column: 16, scope: !850)
!852 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !114, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!853 = !DILocation(line: 193, column: 16, scope: !852)
!854 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !114, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!855 = !DILocation(line: 194, column: 16, scope: !854)
!856 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !114, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!857 = !DILocation(line: 195, column: 16, scope: !856)
!858 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !114, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!859 = !DILocation(line: 198, column: 15, scope: !858)
!860 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !114, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!861 = !DILocation(line: 199, column: 15, scope: !860)
!862 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !114, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!863 = !DILocation(line: 200, column: 15, scope: !862)
!864 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !114, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!865 = !DILocation(line: 201, column: 15, scope: !864)
!866 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !114, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!867 = !DILocation(line: 202, column: 15, scope: !866)
!868 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !114, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!869 = !DILocation(line: 203, column: 15, scope: !868)
!870 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !114, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!871 = !DILocation(line: 204, column: 15, scope: !870)
!872 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !114, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!873 = !DILocation(line: 205, column: 15, scope: !872)
!874 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !114, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!875 = !DILocation(line: 206, column: 15, scope: !874)
