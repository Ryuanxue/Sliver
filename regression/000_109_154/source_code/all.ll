; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.26 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad() #0 !dbg !118 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !123, metadata !DIExpression()), !dbg !127
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !127
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !128
  store i8* %arraydecay, i8** %data, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !133, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 -1, i32* %listenSocket, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 -1, i32* %acceptSocket, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !156, metadata !DIExpression()), !dbg !160
  %1 = load i8*, i8** %data, align 8, !dbg !161
  %call = call i64 @strlen(i8* %1) #7, !dbg !162
  store i64 %call, i64* %dataLen, align 8, !dbg !160
  br label %do.body, !dbg !163

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !164
  store i32 %call1, i32* %listenSocket, align 4, !dbg !166
  %2 = load i32, i32* %listenSocket, align 4, !dbg !167
  %cmp = icmp eq i32 %2, -1, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !171

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !173
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !174
  store i16 2, i16* %sin_family, align 4, !dbg !175
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !176
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !177
  store i32 0, i32* %s_addr, align 4, !dbg !178
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !179
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !180
  store i16 %call2, i16* %sin_port, align 2, !dbg !181
  %4 = load i32, i32* %listenSocket, align 4, !dbg !182
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !184
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !185
  %cmp4 = icmp eq i32 %call3, -1, !dbg !186
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !187

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !188

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !190
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !192
  %cmp8 = icmp eq i32 %call7, -1, !dbg !193
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !194

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !195

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !197
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !198
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !199
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !200
  %cmp12 = icmp eq i32 %8, -1, !dbg !202
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !203

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !204

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !206
  %10 = load i8*, i8** %data, align 8, !dbg !207
  %11 = load i64, i64* %dataLen, align 8, !dbg !208
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !209
  %12 = load i64, i64* %dataLen, align 8, !dbg !210
  %sub = sub i64 100, %12, !dbg !211
  %sub15 = sub i64 %sub, 1, !dbg !212
  %mul = mul i64 1, %sub15, !dbg !213
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !214
  %conv = trunc i64 %call16 to i32, !dbg !214
  store i32 %conv, i32* %recvResult, align 4, !dbg !215
  %13 = load i32, i32* %recvResult, align 4, !dbg !216
  %cmp17 = icmp eq i32 %13, -1, !dbg !218
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !219

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !220
  %cmp19 = icmp eq i32 %14, 0, !dbg !221
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !222

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !223

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !225
  %16 = load i64, i64* %dataLen, align 8, !dbg !226
  %17 = load i32, i32* %recvResult, align 4, !dbg !227
  %conv23 = sext i32 %17 to i64, !dbg !227
  %div = udiv i64 %conv23, 1, !dbg !228
  %add = add i64 %16, %div, !dbg !229
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !225
  store i8 0, i8* %arrayidx, align 1, !dbg !230
  %18 = load i8*, i8** %data, align 8, !dbg !231
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !232
  store i8* %call24, i8** %replace, align 8, !dbg !233
  %19 = load i8*, i8** %replace, align 8, !dbg !234
  %tobool = icmp ne i8* %19, null, !dbg !234
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !236

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !237
  store i8 0, i8* %20, align 1, !dbg !239
  br label %if.end26, !dbg !240

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !241
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !242
  store i8* %call27, i8** %replace, align 8, !dbg !243
  %22 = load i8*, i8** %replace, align 8, !dbg !244
  %tobool28 = icmp ne i8* %22, null, !dbg !244
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !246

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !247
  store i8 0, i8* %23, align 1, !dbg !249
  br label %if.end30, !dbg !250

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !251

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !252
  %cmp31 = icmp ne i32 %24, -1, !dbg !254
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !255

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !256
  %call34 = call i32 @close(i32 %25), !dbg !258
  br label %if.end35, !dbg !259

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !260
  %cmp36 = icmp ne i32 %26, -1, !dbg !262
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !263

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !264
  %call39 = call i32 @close(i32 %27), !dbg !266
  br label %if.end40, !dbg !267

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !268
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_badSink(i8* %28), !dbg !269
  ret void, !dbg !270
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
define dso_local void @goodG2B() #0 !dbg !271 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !275
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !276
  store i8* %arraydecay, i8** %data, align 8, !dbg !277
  %1 = load i8*, i8** %data, align 8, !dbg !278
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !279
  %2 = load i8*, i8** %data, align 8, !dbg !280
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodG2BSink(i8* %2), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !283 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !287
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !287
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !288
  store i8* %arraydecay, i8** %data, align 8, !dbg !289
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !297, metadata !DIExpression()), !dbg !298
  store i32 -1, i32* %listenSocket, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !299, metadata !DIExpression()), !dbg !300
  store i32 -1, i32* %acceptSocket, align 4, !dbg !300
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !301, metadata !DIExpression()), !dbg !302
  %1 = load i8*, i8** %data, align 8, !dbg !303
  %call = call i64 @strlen(i8* %1) #7, !dbg !304
  store i64 %call, i64* %dataLen, align 8, !dbg !302
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !306
  store i32 %call1, i32* %listenSocket, align 4, !dbg !308
  %2 = load i32, i32* %listenSocket, align 4, !dbg !309
  %cmp = icmp eq i32 %2, -1, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !313

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !315
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !316
  store i16 2, i16* %sin_family, align 4, !dbg !317
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !318
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !319
  store i32 0, i32* %s_addr, align 4, !dbg !320
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !321
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !322
  store i16 %call2, i16* %sin_port, align 2, !dbg !323
  %4 = load i32, i32* %listenSocket, align 4, !dbg !324
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !326
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !327
  %cmp4 = icmp eq i32 %call3, -1, !dbg !328
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !329

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !330

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !332
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !334
  %cmp8 = icmp eq i32 %call7, -1, !dbg !335
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !336

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !337

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !339
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !340
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !341
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !342
  %cmp12 = icmp eq i32 %8, -1, !dbg !344
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !345

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !346

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !348
  %10 = load i8*, i8** %data, align 8, !dbg !349
  %11 = load i64, i64* %dataLen, align 8, !dbg !350
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !351
  %12 = load i64, i64* %dataLen, align 8, !dbg !352
  %sub = sub i64 100, %12, !dbg !353
  %sub15 = sub i64 %sub, 1, !dbg !354
  %mul = mul i64 1, %sub15, !dbg !355
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !356
  %conv = trunc i64 %call16 to i32, !dbg !356
  store i32 %conv, i32* %recvResult, align 4, !dbg !357
  %13 = load i32, i32* %recvResult, align 4, !dbg !358
  %cmp17 = icmp eq i32 %13, -1, !dbg !360
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !361

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !362
  %cmp19 = icmp eq i32 %14, 0, !dbg !363
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !364

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !365

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !367
  %16 = load i64, i64* %dataLen, align 8, !dbg !368
  %17 = load i32, i32* %recvResult, align 4, !dbg !369
  %conv23 = sext i32 %17 to i64, !dbg !369
  %div = udiv i64 %conv23, 1, !dbg !370
  %add = add i64 %16, %div, !dbg !371
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !367
  store i8 0, i8* %arrayidx, align 1, !dbg !372
  %18 = load i8*, i8** %data, align 8, !dbg !373
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !374
  store i8* %call24, i8** %replace, align 8, !dbg !375
  %19 = load i8*, i8** %replace, align 8, !dbg !376
  %tobool = icmp ne i8* %19, null, !dbg !376
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !378

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !379
  store i8 0, i8* %20, align 1, !dbg !381
  br label %if.end26, !dbg !382

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !383
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !384
  store i8* %call27, i8** %replace, align 8, !dbg !385
  %22 = load i8*, i8** %replace, align 8, !dbg !386
  %tobool28 = icmp ne i8* %22, null, !dbg !386
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !388

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !389
  store i8 0, i8* %23, align 1, !dbg !391
  br label %if.end30, !dbg !392

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !393

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !394
  %cmp31 = icmp ne i32 %24, -1, !dbg !396
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !397

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !398
  %call34 = call i32 @close(i32 %25), !dbg !400
  br label %if.end35, !dbg !401

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !402
  %cmp36 = icmp ne i32 %26, -1, !dbg !404
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !405

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !406
  %call39 = call i32 @close(i32 %27), !dbg !408
  br label %if.end40, !dbg !409

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !410
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodB2GSink(i8* %28), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54_good() #0 !dbg !413 {
entry:
  call void @goodG2B(), !dbg !414
  call void @goodB2G(), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_badSink(i8* %data) #0 !dbg !417 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8*, i8** %data.addr, align 8, !dbg !422
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_badSink(i8* %0), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodG2BSink(i8* %data) #0 !dbg !425 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i8*, i8** %data.addr, align 8, !dbg !428
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodG2BSink(i8* %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodB2GSink(i8* %data) #0 !dbg !431 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i8*, i8** %data.addr, align 8, !dbg !434
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodB2GSink(i8* %0), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_badSink(i8* %data) #0 !dbg !437 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i8*, i8** %data.addr, align 8, !dbg !440
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_badSink(i8* %0), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodG2BSink(i8* %data) #0 !dbg !443 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i8*, i8** %data.addr, align 8, !dbg !446
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodG2BSink(i8* %0), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodB2GSink(i8* %data) #0 !dbg !449 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8*, i8** %data.addr, align 8, !dbg !452
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodB2GSink(i8* %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_badSink(i8* %data) #0 !dbg !455 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i8*, i8** %data.addr, align 8, !dbg !458
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink(i8* %0), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodG2BSink(i8* %data) #0 !dbg !461 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i8*, i8** %data.addr, align 8, !dbg !464
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodG2BSink(i8* %0), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodB2GSink(i8* %data) #0 !dbg !467 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i8*, i8** %data.addr, align 8, !dbg !470
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodB2GSink(i8* %0), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink(i8* %data) #0 !dbg !473 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %i, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %n, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i8*, i8** %data.addr, align 8, !dbg !483
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !485
  %cmp = icmp eq i32 %call, 1, !dbg !486
  br i1 %cmp, label %if.then, label %if.end, !dbg !487

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !488
  store i32 0, i32* %i, align 4, !dbg !490
  br label %for.cond, !dbg !492

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !493
  %2 = load i32, i32* %n, align 4, !dbg !495
  %cmp1 = icmp slt i32 %1, %2, !dbg !496
  br i1 %cmp1, label %for.body, label %for.end, !dbg !497

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !498
  %inc = add nsw i32 %3, 1, !dbg !498
  store i32 %inc, i32* %intVariable, align 4, !dbg !498
  br label %for.inc, !dbg !500

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !501
  %inc2 = add nsw i32 %4, 1, !dbg !501
  store i32 %inc2, i32* %i, align 4, !dbg !501
  br label %for.cond, !dbg !502, !llvm.loop !503

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !506
  call void @printIntLine(i32 %5), !dbg !507
  br label %if.end, !dbg !508

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !509
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodG2BSink(i8* %data) #0 !dbg !510 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %i, metadata !513, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %n, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i8*, i8** %data.addr, align 8, !dbg !520
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !522
  %cmp = icmp eq i32 %call, 1, !dbg !523
  br i1 %cmp, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !525
  store i32 0, i32* %i, align 4, !dbg !527
  br label %for.cond, !dbg !529

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !530
  %2 = load i32, i32* %n, align 4, !dbg !532
  %cmp1 = icmp slt i32 %1, %2, !dbg !533
  br i1 %cmp1, label %for.body, label %for.end, !dbg !534

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !535
  %inc = add nsw i32 %3, 1, !dbg !535
  store i32 %inc, i32* %intVariable, align 4, !dbg !535
  br label %for.inc, !dbg !537

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !538
  %inc2 = add nsw i32 %4, 1, !dbg !538
  store i32 %inc2, i32* %i, align 4, !dbg !538
  br label %for.cond, !dbg !539, !llvm.loop !540

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !542
  call void @printIntLine(i32 %5), !dbg !543
  br label %if.end, !dbg !544

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodB2GSink(i8* %data) #0 !dbg !546 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata i32* %i, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %n, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i8*, i8** %data.addr, align 8, !dbg !556
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !558
  %cmp = icmp eq i32 %call, 1, !dbg !559
  br i1 %cmp, label %if.then, label %if.end5, !dbg !560

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !561
  %cmp1 = icmp slt i32 %1, 10000, !dbg !564
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !565

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !566
  store i32 0, i32* %i, align 4, !dbg !568
  br label %for.cond, !dbg !570

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !571
  %3 = load i32, i32* %n, align 4, !dbg !573
  %cmp3 = icmp slt i32 %2, %3, !dbg !574
  br i1 %cmp3, label %for.body, label %for.end, !dbg !575

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !576
  %inc = add nsw i32 %4, 1, !dbg !576
  store i32 %inc, i32* %intVariable, align 4, !dbg !576
  br label %for.inc, !dbg !578

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !579
  %inc4 = add nsw i32 %5, 1, !dbg !579
  store i32 %inc4, i32* %i, align 4, !dbg !579
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !583
  call void @printIntLine(i32 %6), !dbg !584
  br label %if.end, !dbg !585

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !586

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !588 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !589, metadata !DIExpression()), !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)), !dbg !591
  %0 = load i8*, i8** %line.addr, align 8, !dbg !592
  %cmp = icmp ne i8* %0, null, !dbg !594
  br i1 %cmp, label %if.then, label %if.end, !dbg !595

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !596
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !598
  br label %if.end, !dbg !599

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !600
  ret void, !dbg !601
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !602 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = load i8*, i8** %line.addr, align 8, !dbg !605
  %cmp = icmp ne i8* %0, null, !dbg !607
  br i1 %cmp, label %if.then, label %if.end, !dbg !608

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !609
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !611
  br label %if.end, !dbg !612

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !614 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i32*, i32** %line.addr, align 8, !dbg !621
  %cmp = icmp ne i32* %0, null, !dbg !623
  br i1 %cmp, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !625
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !627
  br label %if.end, !dbg !628

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !629
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !630 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !633, metadata !DIExpression()), !dbg !634
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !635
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !636
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !638 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !644
  %conv = sext i16 %0 to i32, !dbg !644
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !647 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !653
  %conv = fpext float %0 to double, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !656 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !662
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !663
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !665 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !673
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !674
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !676 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !681
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !682
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !684 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !687, metadata !DIExpression()), !dbg !688
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !689
  %conv = sext i8 %0 to i32, !dbg !689
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !690
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !692 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !697, metadata !DIExpression()), !dbg !701
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !702
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !703
  store i32 %0, i32* %arrayidx, align 4, !dbg !704
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !705
  store i32 0, i32* %arrayidx1, align 4, !dbg !706
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !707
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !708
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !710 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !713, metadata !DIExpression()), !dbg !714
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !715
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !716
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !718 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !721, metadata !DIExpression()), !dbg !722
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !723
  %conv = zext i8 %0 to i32, !dbg !723
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !724
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !726 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !730, metadata !DIExpression()), !dbg !731
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !732
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !733
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !735 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !745, metadata !DIExpression()), !dbg !746
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !747
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !748
  %1 = load i32, i32* %intOne, align 4, !dbg !748
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !749
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !750
  %3 = load i32, i32* %intTwo, align 4, !dbg !750
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !751
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !753 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !757, metadata !DIExpression()), !dbg !758
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i64* %i, metadata !761, metadata !DIExpression()), !dbg !762
  store i64 0, i64* %i, align 8, !dbg !763
  br label %for.cond, !dbg !765

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !766
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !768
  %cmp = icmp ult i64 %0, %1, !dbg !769
  br i1 %cmp, label %for.body, label %for.end, !dbg !770

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !771
  %3 = load i64, i64* %i, align 8, !dbg !773
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !771
  %4 = load i8, i8* %arrayidx, align 1, !dbg !771
  %conv = zext i8 %4 to i32, !dbg !771
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !774
  br label %for.inc, !dbg !775

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !776
  %inc = add i64 %5, 1, !dbg !776
  store i64 %inc, i64* %i, align 8, !dbg !776
  br label %for.cond, !dbg !777, !llvm.loop !778

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !780
  ret void, !dbg !781
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !782 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !785, metadata !DIExpression()), !dbg !786
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !787, metadata !DIExpression()), !dbg !788
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !791, metadata !DIExpression()), !dbg !792
  store i64 0, i64* %numWritten, align 8, !dbg !792
  br label %while.cond, !dbg !793

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !794
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !795
  %cmp = icmp ult i64 %0, %1, !dbg !796
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !797

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !798
  %2 = load i16*, i16** %call, align 8, !dbg !798
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !798
  %4 = load i64, i64* %numWritten, align 8, !dbg !798
  %mul = mul i64 2, %4, !dbg !798
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !798
  %5 = load i8, i8* %arrayidx, align 1, !dbg !798
  %conv = sext i8 %5 to i32, !dbg !798
  %idxprom = sext i32 %conv to i64, !dbg !798
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !798
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !798
  %conv2 = zext i16 %6 to i32, !dbg !798
  %and = and i32 %conv2, 4096, !dbg !798
  %tobool = icmp ne i32 %and, 0, !dbg !798
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !799

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !800
  %7 = load i16*, i16** %call3, align 8, !dbg !800
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !800
  %9 = load i64, i64* %numWritten, align 8, !dbg !800
  %mul4 = mul i64 2, %9, !dbg !800
  %add = add i64 %mul4, 1, !dbg !800
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !800
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !800
  %conv6 = sext i8 %10 to i32, !dbg !800
  %idxprom7 = sext i32 %conv6 to i64, !dbg !800
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !800
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !800
  %conv9 = zext i16 %11 to i32, !dbg !800
  %and10 = and i32 %conv9, 4096, !dbg !800
  %tobool11 = icmp ne i32 %and10, 0, !dbg !799
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !801
  br i1 %12, label %while.body, label %while.end, !dbg !793

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !802, metadata !DIExpression()), !dbg !804
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !805
  %14 = load i64, i64* %numWritten, align 8, !dbg !806
  %mul12 = mul i64 2, %14, !dbg !807
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !805
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !808
  %15 = load i32, i32* %byte, align 4, !dbg !809
  %conv15 = trunc i32 %15 to i8, !dbg !810
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !811
  %17 = load i64, i64* %numWritten, align 8, !dbg !812
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !811
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !813
  %18 = load i64, i64* %numWritten, align 8, !dbg !814
  %inc = add i64 %18, 1, !dbg !814
  store i64 %inc, i64* %numWritten, align 8, !dbg !814
  br label %while.cond, !dbg !793, !llvm.loop !815

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !817
  ret i64 %19, !dbg !818
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !819 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !822, metadata !DIExpression()), !dbg !823
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 0, i64* %numWritten, align 8, !dbg !829
  br label %while.cond, !dbg !830

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !831
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !832
  %cmp = icmp ult i64 %0, %1, !dbg !833
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !834

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !835
  %3 = load i64, i64* %numWritten, align 8, !dbg !836
  %mul = mul i64 2, %3, !dbg !837
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !835
  %4 = load i32, i32* %arrayidx, align 4, !dbg !835
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !838
  %tobool = icmp ne i32 %call, 0, !dbg !838
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !839

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !840
  %6 = load i64, i64* %numWritten, align 8, !dbg !841
  %mul1 = mul i64 2, %6, !dbg !842
  %add = add i64 %mul1, 1, !dbg !843
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !840
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !840
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !844
  %tobool4 = icmp ne i32 %call3, 0, !dbg !839
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !845
  br i1 %8, label %while.body, label %while.end, !dbg !830

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !846, metadata !DIExpression()), !dbg !848
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !849
  %10 = load i64, i64* %numWritten, align 8, !dbg !850
  %mul5 = mul i64 2, %10, !dbg !851
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !849
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !852
  %11 = load i32, i32* %byte, align 4, !dbg !853
  %conv = trunc i32 %11 to i8, !dbg !854
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !855
  %13 = load i64, i64* %numWritten, align 8, !dbg !856
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !855
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !857
  %14 = load i64, i64* %numWritten, align 8, !dbg !858
  %inc = add i64 %14, 1, !dbg !858
  store i64 %inc, i64* %numWritten, align 8, !dbg !858
  br label %while.cond, !dbg !830, !llvm.loop !859

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !861
  ret i64 %15, !dbg !862
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !863 {
entry:
  ret i32 1, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !867 {
entry:
  ret i32 0, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !869 {
entry:
  %call = call i32 @rand() #8, !dbg !870
  %rem = srem i32 %call, 2, !dbg !871
  ret i32 %rem, !dbg !872
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !873 {
entry:
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !887 {
entry:
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !889 {
entry:
  ret void, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !891 {
entry:
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !893 {
entry:
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !895 {
entry:
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !897 {
entry:
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !899 {
entry:
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !901 {
entry:
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !903 {
entry:
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !905 {
entry:
  ret void, !dbg !906
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !907 {
entry:
  ret void, !dbg !908
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

!llvm.dbg.cu = !{!44, !105, !108, !110, !112, !2}
!llvm.ident = !{!114, !114, !114, !114, !114, !114}
!llvm.module.flags = !{!115, !116, !117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
!114 = !{!"clang version 12.0.0"}
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54_bad", scope: !45, file: !45, line: 52, type: !119, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!119 = !DISubroutineType(types: !120)
!120 = !{null}
!121 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 54, type: !42)
!122 = !DILocation(line: 54, column: 12, scope: !118)
!123 = !DILocalVariable(name: "dataBuffer", scope: !118, file: !45, line: 55, type: !124)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 100)
!127 = !DILocation(line: 55, column: 10, scope: !118)
!128 = !DILocation(line: 56, column: 12, scope: !118)
!129 = !DILocation(line: 56, column: 10, scope: !118)
!130 = !DILocalVariable(name: "recvResult", scope: !131, file: !45, line: 62, type: !23)
!131 = distinct !DILexicalBlock(scope: !118, file: !45, line: 57, column: 5)
!132 = !DILocation(line: 62, column: 13, scope: !131)
!133 = !DILocalVariable(name: "service", scope: !131, file: !45, line: 63, type: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !135)
!135 = !{!136, !137, !141, !145}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !134, file: !60, line: 240, baseType: !99, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !134, file: !60, line: 241, baseType: !138, size: 16, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !134, file: !60, line: 242, baseType: !142, size: 32, offset: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !142, file: !60, line: 33, baseType: !89, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !134, file: !60, line: 245, baseType: !146, size: 64, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DILocation(line: 63, column: 28, scope: !131)
!150 = !DILocalVariable(name: "replace", scope: !131, file: !45, line: 64, type: !42)
!151 = !DILocation(line: 64, column: 15, scope: !131)
!152 = !DILocalVariable(name: "listenSocket", scope: !131, file: !45, line: 65, type: !23)
!153 = !DILocation(line: 65, column: 16, scope: !131)
!154 = !DILocalVariable(name: "acceptSocket", scope: !131, file: !45, line: 66, type: !23)
!155 = !DILocation(line: 66, column: 16, scope: !131)
!156 = !DILocalVariable(name: "dataLen", scope: !131, file: !45, line: 67, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!159 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocation(line: 67, column: 16, scope: !131)
!161 = !DILocation(line: 67, column: 33, scope: !131)
!162 = !DILocation(line: 67, column: 26, scope: !131)
!163 = !DILocation(line: 68, column: 9, scope: !131)
!164 = !DILocation(line: 78, column: 28, scope: !165)
!165 = distinct !DILexicalBlock(scope: !131, file: !45, line: 69, column: 9)
!166 = !DILocation(line: 78, column: 26, scope: !165)
!167 = !DILocation(line: 79, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !45, line: 79, column: 17)
!169 = !DILocation(line: 79, column: 30, scope: !168)
!170 = !DILocation(line: 79, column: 17, scope: !165)
!171 = !DILocation(line: 81, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 80, column: 13)
!173 = !DILocation(line: 83, column: 13, scope: !165)
!174 = !DILocation(line: 84, column: 21, scope: !165)
!175 = !DILocation(line: 84, column: 32, scope: !165)
!176 = !DILocation(line: 85, column: 21, scope: !165)
!177 = !DILocation(line: 85, column: 30, scope: !165)
!178 = !DILocation(line: 85, column: 37, scope: !165)
!179 = !DILocation(line: 86, column: 32, scope: !165)
!180 = !DILocation(line: 86, column: 21, scope: !165)
!181 = !DILocation(line: 86, column: 30, scope: !165)
!182 = !DILocation(line: 87, column: 22, scope: !183)
!183 = distinct !DILexicalBlock(scope: !165, file: !45, line: 87, column: 17)
!184 = !DILocation(line: 87, column: 36, scope: !183)
!185 = !DILocation(line: 87, column: 17, scope: !183)
!186 = !DILocation(line: 87, column: 81, scope: !183)
!187 = !DILocation(line: 87, column: 17, scope: !165)
!188 = !DILocation(line: 89, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !183, file: !45, line: 88, column: 13)
!190 = !DILocation(line: 91, column: 24, scope: !191)
!191 = distinct !DILexicalBlock(scope: !165, file: !45, line: 91, column: 17)
!192 = !DILocation(line: 91, column: 17, scope: !191)
!193 = !DILocation(line: 91, column: 54, scope: !191)
!194 = !DILocation(line: 91, column: 17, scope: !165)
!195 = !DILocation(line: 93, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !45, line: 92, column: 13)
!197 = !DILocation(line: 95, column: 35, scope: !165)
!198 = !DILocation(line: 95, column: 28, scope: !165)
!199 = !DILocation(line: 95, column: 26, scope: !165)
!200 = !DILocation(line: 96, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !165, file: !45, line: 96, column: 17)
!202 = !DILocation(line: 96, column: 30, scope: !201)
!203 = !DILocation(line: 96, column: 17, scope: !165)
!204 = !DILocation(line: 98, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !45, line: 97, column: 13)
!206 = !DILocation(line: 101, column: 31, scope: !165)
!207 = !DILocation(line: 101, column: 54, scope: !165)
!208 = !DILocation(line: 101, column: 61, scope: !165)
!209 = !DILocation(line: 101, column: 59, scope: !165)
!210 = !DILocation(line: 101, column: 93, scope: !165)
!211 = !DILocation(line: 101, column: 91, scope: !165)
!212 = !DILocation(line: 101, column: 101, scope: !165)
!213 = !DILocation(line: 101, column: 84, scope: !165)
!214 = !DILocation(line: 101, column: 26, scope: !165)
!215 = !DILocation(line: 101, column: 24, scope: !165)
!216 = !DILocation(line: 102, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !165, file: !45, line: 102, column: 17)
!218 = !DILocation(line: 102, column: 28, scope: !217)
!219 = !DILocation(line: 102, column: 44, scope: !217)
!220 = !DILocation(line: 102, column: 47, scope: !217)
!221 = !DILocation(line: 102, column: 58, scope: !217)
!222 = !DILocation(line: 102, column: 17, scope: !165)
!223 = !DILocation(line: 104, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !217, file: !45, line: 103, column: 13)
!225 = !DILocation(line: 107, column: 13, scope: !165)
!226 = !DILocation(line: 107, column: 18, scope: !165)
!227 = !DILocation(line: 107, column: 28, scope: !165)
!228 = !DILocation(line: 107, column: 39, scope: !165)
!229 = !DILocation(line: 107, column: 26, scope: !165)
!230 = !DILocation(line: 107, column: 55, scope: !165)
!231 = !DILocation(line: 109, column: 30, scope: !165)
!232 = !DILocation(line: 109, column: 23, scope: !165)
!233 = !DILocation(line: 109, column: 21, scope: !165)
!234 = !DILocation(line: 110, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !165, file: !45, line: 110, column: 17)
!236 = !DILocation(line: 110, column: 17, scope: !165)
!237 = !DILocation(line: 112, column: 18, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !45, line: 111, column: 13)
!239 = !DILocation(line: 112, column: 26, scope: !238)
!240 = !DILocation(line: 113, column: 13, scope: !238)
!241 = !DILocation(line: 114, column: 30, scope: !165)
!242 = !DILocation(line: 114, column: 23, scope: !165)
!243 = !DILocation(line: 114, column: 21, scope: !165)
!244 = !DILocation(line: 115, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !165, file: !45, line: 115, column: 17)
!246 = !DILocation(line: 115, column: 17, scope: !165)
!247 = !DILocation(line: 117, column: 18, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !45, line: 116, column: 13)
!249 = !DILocation(line: 117, column: 26, scope: !248)
!250 = !DILocation(line: 118, column: 13, scope: !248)
!251 = !DILocation(line: 119, column: 9, scope: !165)
!252 = !DILocation(line: 121, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !131, file: !45, line: 121, column: 13)
!254 = !DILocation(line: 121, column: 26, scope: !253)
!255 = !DILocation(line: 121, column: 13, scope: !131)
!256 = !DILocation(line: 123, column: 26, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !45, line: 122, column: 9)
!258 = !DILocation(line: 123, column: 13, scope: !257)
!259 = !DILocation(line: 124, column: 9, scope: !257)
!260 = !DILocation(line: 125, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !131, file: !45, line: 125, column: 13)
!262 = !DILocation(line: 125, column: 26, scope: !261)
!263 = !DILocation(line: 125, column: 13, scope: !131)
!264 = !DILocation(line: 127, column: 26, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !45, line: 126, column: 9)
!266 = !DILocation(line: 127, column: 13, scope: !265)
!267 = !DILocation(line: 128, column: 9, scope: !265)
!268 = !DILocation(line: 136, column: 69, scope: !118)
!269 = !DILocation(line: 136, column: 5, scope: !118)
!270 = !DILocation(line: 137, column: 1, scope: !118)
!271 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !119, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!272 = !DILocalVariable(name: "data", scope: !271, file: !45, line: 147, type: !42)
!273 = !DILocation(line: 147, column: 12, scope: !271)
!274 = !DILocalVariable(name: "dataBuffer", scope: !271, file: !45, line: 148, type: !124)
!275 = !DILocation(line: 148, column: 10, scope: !271)
!276 = !DILocation(line: 149, column: 12, scope: !271)
!277 = !DILocation(line: 149, column: 10, scope: !271)
!278 = !DILocation(line: 151, column: 12, scope: !271)
!279 = !DILocation(line: 151, column: 5, scope: !271)
!280 = !DILocation(line: 152, column: 73, scope: !271)
!281 = !DILocation(line: 152, column: 5, scope: !271)
!282 = !DILocation(line: 153, column: 1, scope: !271)
!283 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !119, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!284 = !DILocalVariable(name: "data", scope: !283, file: !45, line: 159, type: !42)
!285 = !DILocation(line: 159, column: 12, scope: !283)
!286 = !DILocalVariable(name: "dataBuffer", scope: !283, file: !45, line: 160, type: !124)
!287 = !DILocation(line: 160, column: 10, scope: !283)
!288 = !DILocation(line: 161, column: 12, scope: !283)
!289 = !DILocation(line: 161, column: 10, scope: !283)
!290 = !DILocalVariable(name: "recvResult", scope: !291, file: !45, line: 167, type: !23)
!291 = distinct !DILexicalBlock(scope: !283, file: !45, line: 162, column: 5)
!292 = !DILocation(line: 167, column: 13, scope: !291)
!293 = !DILocalVariable(name: "service", scope: !291, file: !45, line: 168, type: !134)
!294 = !DILocation(line: 168, column: 28, scope: !291)
!295 = !DILocalVariable(name: "replace", scope: !291, file: !45, line: 169, type: !42)
!296 = !DILocation(line: 169, column: 15, scope: !291)
!297 = !DILocalVariable(name: "listenSocket", scope: !291, file: !45, line: 170, type: !23)
!298 = !DILocation(line: 170, column: 16, scope: !291)
!299 = !DILocalVariable(name: "acceptSocket", scope: !291, file: !45, line: 171, type: !23)
!300 = !DILocation(line: 171, column: 16, scope: !291)
!301 = !DILocalVariable(name: "dataLen", scope: !291, file: !45, line: 172, type: !157)
!302 = !DILocation(line: 172, column: 16, scope: !291)
!303 = !DILocation(line: 172, column: 33, scope: !291)
!304 = !DILocation(line: 172, column: 26, scope: !291)
!305 = !DILocation(line: 173, column: 9, scope: !291)
!306 = !DILocation(line: 183, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !291, file: !45, line: 174, column: 9)
!308 = !DILocation(line: 183, column: 26, scope: !307)
!309 = !DILocation(line: 184, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !45, line: 184, column: 17)
!311 = !DILocation(line: 184, column: 30, scope: !310)
!312 = !DILocation(line: 184, column: 17, scope: !307)
!313 = !DILocation(line: 186, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !45, line: 185, column: 13)
!315 = !DILocation(line: 188, column: 13, scope: !307)
!316 = !DILocation(line: 189, column: 21, scope: !307)
!317 = !DILocation(line: 189, column: 32, scope: !307)
!318 = !DILocation(line: 190, column: 21, scope: !307)
!319 = !DILocation(line: 190, column: 30, scope: !307)
!320 = !DILocation(line: 190, column: 37, scope: !307)
!321 = !DILocation(line: 191, column: 32, scope: !307)
!322 = !DILocation(line: 191, column: 21, scope: !307)
!323 = !DILocation(line: 191, column: 30, scope: !307)
!324 = !DILocation(line: 192, column: 22, scope: !325)
!325 = distinct !DILexicalBlock(scope: !307, file: !45, line: 192, column: 17)
!326 = !DILocation(line: 192, column: 36, scope: !325)
!327 = !DILocation(line: 192, column: 17, scope: !325)
!328 = !DILocation(line: 192, column: 81, scope: !325)
!329 = !DILocation(line: 192, column: 17, scope: !307)
!330 = !DILocation(line: 194, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !45, line: 193, column: 13)
!332 = !DILocation(line: 196, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !307, file: !45, line: 196, column: 17)
!334 = !DILocation(line: 196, column: 17, scope: !333)
!335 = !DILocation(line: 196, column: 54, scope: !333)
!336 = !DILocation(line: 196, column: 17, scope: !307)
!337 = !DILocation(line: 198, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !45, line: 197, column: 13)
!339 = !DILocation(line: 200, column: 35, scope: !307)
!340 = !DILocation(line: 200, column: 28, scope: !307)
!341 = !DILocation(line: 200, column: 26, scope: !307)
!342 = !DILocation(line: 201, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !307, file: !45, line: 201, column: 17)
!344 = !DILocation(line: 201, column: 30, scope: !343)
!345 = !DILocation(line: 201, column: 17, scope: !307)
!346 = !DILocation(line: 203, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !45, line: 202, column: 13)
!348 = !DILocation(line: 206, column: 31, scope: !307)
!349 = !DILocation(line: 206, column: 54, scope: !307)
!350 = !DILocation(line: 206, column: 61, scope: !307)
!351 = !DILocation(line: 206, column: 59, scope: !307)
!352 = !DILocation(line: 206, column: 93, scope: !307)
!353 = !DILocation(line: 206, column: 91, scope: !307)
!354 = !DILocation(line: 206, column: 101, scope: !307)
!355 = !DILocation(line: 206, column: 84, scope: !307)
!356 = !DILocation(line: 206, column: 26, scope: !307)
!357 = !DILocation(line: 206, column: 24, scope: !307)
!358 = !DILocation(line: 207, column: 17, scope: !359)
!359 = distinct !DILexicalBlock(scope: !307, file: !45, line: 207, column: 17)
!360 = !DILocation(line: 207, column: 28, scope: !359)
!361 = !DILocation(line: 207, column: 44, scope: !359)
!362 = !DILocation(line: 207, column: 47, scope: !359)
!363 = !DILocation(line: 207, column: 58, scope: !359)
!364 = !DILocation(line: 207, column: 17, scope: !307)
!365 = !DILocation(line: 209, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !45, line: 208, column: 13)
!367 = !DILocation(line: 212, column: 13, scope: !307)
!368 = !DILocation(line: 212, column: 18, scope: !307)
!369 = !DILocation(line: 212, column: 28, scope: !307)
!370 = !DILocation(line: 212, column: 39, scope: !307)
!371 = !DILocation(line: 212, column: 26, scope: !307)
!372 = !DILocation(line: 212, column: 55, scope: !307)
!373 = !DILocation(line: 214, column: 30, scope: !307)
!374 = !DILocation(line: 214, column: 23, scope: !307)
!375 = !DILocation(line: 214, column: 21, scope: !307)
!376 = !DILocation(line: 215, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !307, file: !45, line: 215, column: 17)
!378 = !DILocation(line: 215, column: 17, scope: !307)
!379 = !DILocation(line: 217, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !45, line: 216, column: 13)
!381 = !DILocation(line: 217, column: 26, scope: !380)
!382 = !DILocation(line: 218, column: 13, scope: !380)
!383 = !DILocation(line: 219, column: 30, scope: !307)
!384 = !DILocation(line: 219, column: 23, scope: !307)
!385 = !DILocation(line: 219, column: 21, scope: !307)
!386 = !DILocation(line: 220, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !307, file: !45, line: 220, column: 17)
!388 = !DILocation(line: 220, column: 17, scope: !307)
!389 = !DILocation(line: 222, column: 18, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !45, line: 221, column: 13)
!391 = !DILocation(line: 222, column: 26, scope: !390)
!392 = !DILocation(line: 223, column: 13, scope: !390)
!393 = !DILocation(line: 224, column: 9, scope: !307)
!394 = !DILocation(line: 226, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !291, file: !45, line: 226, column: 13)
!396 = !DILocation(line: 226, column: 26, scope: !395)
!397 = !DILocation(line: 226, column: 13, scope: !291)
!398 = !DILocation(line: 228, column: 26, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !45, line: 227, column: 9)
!400 = !DILocation(line: 228, column: 13, scope: !399)
!401 = !DILocation(line: 229, column: 9, scope: !399)
!402 = !DILocation(line: 230, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !291, file: !45, line: 230, column: 13)
!404 = !DILocation(line: 230, column: 26, scope: !403)
!405 = !DILocation(line: 230, column: 13, scope: !291)
!406 = !DILocation(line: 232, column: 26, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !45, line: 231, column: 9)
!408 = !DILocation(line: 232, column: 13, scope: !407)
!409 = !DILocation(line: 233, column: 9, scope: !407)
!410 = !DILocation(line: 241, column: 73, scope: !283)
!411 = !DILocation(line: 241, column: 5, scope: !283)
!412 = !DILocation(line: 242, column: 1, scope: !283)
!413 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54_good", scope: !45, file: !45, line: 244, type: !119, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!414 = !DILocation(line: 246, column: 5, scope: !413)
!415 = !DILocation(line: 247, column: 5, scope: !413)
!416 = !DILocation(line: 248, column: 1, scope: !413)
!417 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_badSink", scope: !106, file: !106, line: 52, type: !418, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !42}
!420 = !DILocalVariable(name: "data", arg: 1, scope: !417, file: !106, line: 52, type: !42)
!421 = !DILocation(line: 52, column: 77, scope: !417)
!422 = !DILocation(line: 54, column: 69, scope: !417)
!423 = !DILocation(line: 54, column: 5, scope: !417)
!424 = !DILocation(line: 55, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodG2BSink", scope: !106, file: !106, line: 64, type: !418, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!426 = !DILocalVariable(name: "data", arg: 1, scope: !425, file: !106, line: 64, type: !42)
!427 = !DILocation(line: 64, column: 81, scope: !425)
!428 = !DILocation(line: 66, column: 73, scope: !425)
!429 = !DILocation(line: 66, column: 5, scope: !425)
!430 = !DILocation(line: 67, column: 1, scope: !425)
!431 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54b_goodB2GSink", scope: !106, file: !106, line: 72, type: !418, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!432 = !DILocalVariable(name: "data", arg: 1, scope: !431, file: !106, line: 72, type: !42)
!433 = !DILocation(line: 72, column: 81, scope: !431)
!434 = !DILocation(line: 74, column: 73, scope: !431)
!435 = !DILocation(line: 74, column: 5, scope: !431)
!436 = !DILocation(line: 75, column: 1, scope: !431)
!437 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_badSink", scope: !109, file: !109, line: 52, type: !418, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!438 = !DILocalVariable(name: "data", arg: 1, scope: !437, file: !109, line: 52, type: !42)
!439 = !DILocation(line: 52, column: 77, scope: !437)
!440 = !DILocation(line: 54, column: 69, scope: !437)
!441 = !DILocation(line: 54, column: 5, scope: !437)
!442 = !DILocation(line: 55, column: 1, scope: !437)
!443 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodG2BSink", scope: !109, file: !109, line: 64, type: !418, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!444 = !DILocalVariable(name: "data", arg: 1, scope: !443, file: !109, line: 64, type: !42)
!445 = !DILocation(line: 64, column: 81, scope: !443)
!446 = !DILocation(line: 66, column: 73, scope: !443)
!447 = !DILocation(line: 66, column: 5, scope: !443)
!448 = !DILocation(line: 67, column: 1, scope: !443)
!449 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54c_goodB2GSink", scope: !109, file: !109, line: 72, type: !418, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!450 = !DILocalVariable(name: "data", arg: 1, scope: !449, file: !109, line: 72, type: !42)
!451 = !DILocation(line: 72, column: 81, scope: !449)
!452 = !DILocation(line: 74, column: 73, scope: !449)
!453 = !DILocation(line: 74, column: 5, scope: !449)
!454 = !DILocation(line: 75, column: 1, scope: !449)
!455 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_badSink", scope: !111, file: !111, line: 52, type: !418, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!456 = !DILocalVariable(name: "data", arg: 1, scope: !455, file: !111, line: 52, type: !42)
!457 = !DILocation(line: 52, column: 77, scope: !455)
!458 = !DILocation(line: 54, column: 69, scope: !455)
!459 = !DILocation(line: 54, column: 5, scope: !455)
!460 = !DILocation(line: 55, column: 1, scope: !455)
!461 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodG2BSink", scope: !111, file: !111, line: 64, type: !418, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!462 = !DILocalVariable(name: "data", arg: 1, scope: !461, file: !111, line: 64, type: !42)
!463 = !DILocation(line: 64, column: 81, scope: !461)
!464 = !DILocation(line: 66, column: 73, scope: !461)
!465 = !DILocation(line: 66, column: 5, scope: !461)
!466 = !DILocation(line: 67, column: 1, scope: !461)
!467 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54d_goodB2GSink", scope: !111, file: !111, line: 72, type: !418, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!468 = !DILocalVariable(name: "data", arg: 1, scope: !467, file: !111, line: 72, type: !42)
!469 = !DILocation(line: 72, column: 81, scope: !467)
!470 = !DILocation(line: 74, column: 73, scope: !467)
!471 = !DILocation(line: 74, column: 5, scope: !467)
!472 = !DILocation(line: 75, column: 1, scope: !467)
!473 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_badSink", scope: !113, file: !113, line: 49, type: !418, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!474 = !DILocalVariable(name: "data", arg: 1, scope: !473, file: !113, line: 49, type: !42)
!475 = !DILocation(line: 49, column: 77, scope: !473)
!476 = !DILocalVariable(name: "i", scope: !477, file: !113, line: 52, type: !23)
!477 = distinct !DILexicalBlock(scope: !473, file: !113, line: 51, column: 5)
!478 = !DILocation(line: 52, column: 13, scope: !477)
!479 = !DILocalVariable(name: "n", scope: !477, file: !113, line: 52, type: !23)
!480 = !DILocation(line: 52, column: 16, scope: !477)
!481 = !DILocalVariable(name: "intVariable", scope: !477, file: !113, line: 52, type: !23)
!482 = !DILocation(line: 52, column: 19, scope: !477)
!483 = !DILocation(line: 53, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !113, line: 53, column: 13)
!485 = !DILocation(line: 53, column: 13, scope: !484)
!486 = !DILocation(line: 53, column: 36, scope: !484)
!487 = !DILocation(line: 53, column: 13, scope: !477)
!488 = !DILocation(line: 56, column: 25, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !113, line: 54, column: 9)
!490 = !DILocation(line: 57, column: 20, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !113, line: 57, column: 13)
!492 = !DILocation(line: 57, column: 18, scope: !491)
!493 = !DILocation(line: 57, column: 25, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !113, line: 57, column: 13)
!495 = !DILocation(line: 57, column: 29, scope: !494)
!496 = !DILocation(line: 57, column: 27, scope: !494)
!497 = !DILocation(line: 57, column: 13, scope: !491)
!498 = !DILocation(line: 60, column: 28, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !113, line: 58, column: 13)
!500 = !DILocation(line: 61, column: 13, scope: !499)
!501 = !DILocation(line: 57, column: 33, scope: !494)
!502 = !DILocation(line: 57, column: 13, scope: !494)
!503 = distinct !{!503, !497, !504, !505}
!504 = !DILocation(line: 61, column: 13, scope: !491)
!505 = !{!"llvm.loop.mustprogress"}
!506 = !DILocation(line: 62, column: 26, scope: !489)
!507 = !DILocation(line: 62, column: 13, scope: !489)
!508 = !DILocation(line: 63, column: 9, scope: !489)
!509 = !DILocation(line: 65, column: 1, scope: !473)
!510 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodG2BSink", scope: !113, file: !113, line: 72, type: !418, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!511 = !DILocalVariable(name: "data", arg: 1, scope: !510, file: !113, line: 72, type: !42)
!512 = !DILocation(line: 72, column: 81, scope: !510)
!513 = !DILocalVariable(name: "i", scope: !514, file: !113, line: 75, type: !23)
!514 = distinct !DILexicalBlock(scope: !510, file: !113, line: 74, column: 5)
!515 = !DILocation(line: 75, column: 13, scope: !514)
!516 = !DILocalVariable(name: "n", scope: !514, file: !113, line: 75, type: !23)
!517 = !DILocation(line: 75, column: 16, scope: !514)
!518 = !DILocalVariable(name: "intVariable", scope: !514, file: !113, line: 75, type: !23)
!519 = !DILocation(line: 75, column: 19, scope: !514)
!520 = !DILocation(line: 76, column: 20, scope: !521)
!521 = distinct !DILexicalBlock(scope: !514, file: !113, line: 76, column: 13)
!522 = !DILocation(line: 76, column: 13, scope: !521)
!523 = !DILocation(line: 76, column: 36, scope: !521)
!524 = !DILocation(line: 76, column: 13, scope: !514)
!525 = !DILocation(line: 79, column: 25, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !113, line: 77, column: 9)
!527 = !DILocation(line: 80, column: 20, scope: !528)
!528 = distinct !DILexicalBlock(scope: !526, file: !113, line: 80, column: 13)
!529 = !DILocation(line: 80, column: 18, scope: !528)
!530 = !DILocation(line: 80, column: 25, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !113, line: 80, column: 13)
!532 = !DILocation(line: 80, column: 29, scope: !531)
!533 = !DILocation(line: 80, column: 27, scope: !531)
!534 = !DILocation(line: 80, column: 13, scope: !528)
!535 = !DILocation(line: 83, column: 28, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !113, line: 81, column: 13)
!537 = !DILocation(line: 84, column: 13, scope: !536)
!538 = !DILocation(line: 80, column: 33, scope: !531)
!539 = !DILocation(line: 80, column: 13, scope: !531)
!540 = distinct !{!540, !534, !541, !505}
!541 = !DILocation(line: 84, column: 13, scope: !528)
!542 = !DILocation(line: 85, column: 26, scope: !526)
!543 = !DILocation(line: 85, column: 13, scope: !526)
!544 = !DILocation(line: 86, column: 9, scope: !526)
!545 = !DILocation(line: 88, column: 1, scope: !510)
!546 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_54e_goodB2GSink", scope: !113, file: !113, line: 91, type: !418, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!547 = !DILocalVariable(name: "data", arg: 1, scope: !546, file: !113, line: 91, type: !42)
!548 = !DILocation(line: 91, column: 81, scope: !546)
!549 = !DILocalVariable(name: "i", scope: !550, file: !113, line: 94, type: !23)
!550 = distinct !DILexicalBlock(scope: !546, file: !113, line: 93, column: 5)
!551 = !DILocation(line: 94, column: 13, scope: !550)
!552 = !DILocalVariable(name: "n", scope: !550, file: !113, line: 94, type: !23)
!553 = !DILocation(line: 94, column: 16, scope: !550)
!554 = !DILocalVariable(name: "intVariable", scope: !550, file: !113, line: 94, type: !23)
!555 = !DILocation(line: 94, column: 19, scope: !550)
!556 = !DILocation(line: 95, column: 20, scope: !557)
!557 = distinct !DILexicalBlock(scope: !550, file: !113, line: 95, column: 13)
!558 = !DILocation(line: 95, column: 13, scope: !557)
!559 = !DILocation(line: 95, column: 36, scope: !557)
!560 = !DILocation(line: 95, column: 13, scope: !550)
!561 = !DILocation(line: 98, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !113, line: 98, column: 17)
!563 = distinct !DILexicalBlock(scope: !557, file: !113, line: 96, column: 9)
!564 = !DILocation(line: 98, column: 19, scope: !562)
!565 = !DILocation(line: 98, column: 17, scope: !563)
!566 = !DILocation(line: 100, column: 29, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !113, line: 99, column: 13)
!568 = !DILocation(line: 101, column: 24, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !113, line: 101, column: 17)
!570 = !DILocation(line: 101, column: 22, scope: !569)
!571 = !DILocation(line: 101, column: 29, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !113, line: 101, column: 17)
!573 = !DILocation(line: 101, column: 33, scope: !572)
!574 = !DILocation(line: 101, column: 31, scope: !572)
!575 = !DILocation(line: 101, column: 17, scope: !569)
!576 = !DILocation(line: 104, column: 32, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !113, line: 102, column: 17)
!578 = !DILocation(line: 105, column: 17, scope: !577)
!579 = !DILocation(line: 101, column: 37, scope: !572)
!580 = !DILocation(line: 101, column: 17, scope: !572)
!581 = distinct !{!581, !575, !582, !505}
!582 = !DILocation(line: 105, column: 17, scope: !569)
!583 = !DILocation(line: 106, column: 30, scope: !567)
!584 = !DILocation(line: 106, column: 17, scope: !567)
!585 = !DILocation(line: 107, column: 13, scope: !567)
!586 = !DILocation(line: 108, column: 9, scope: !563)
!587 = !DILocation(line: 110, column: 1, scope: !546)
!588 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !418, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!589 = !DILocalVariable(name: "line", arg: 1, scope: !588, file: !3, line: 11, type: !42)
!590 = !DILocation(line: 11, column: 25, scope: !588)
!591 = !DILocation(line: 13, column: 1, scope: !588)
!592 = !DILocation(line: 14, column: 8, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !3, line: 14, column: 8)
!594 = !DILocation(line: 14, column: 13, scope: !593)
!595 = !DILocation(line: 14, column: 8, scope: !588)
!596 = !DILocation(line: 16, column: 24, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !3, line: 15, column: 5)
!598 = !DILocation(line: 16, column: 9, scope: !597)
!599 = !DILocation(line: 17, column: 5, scope: !597)
!600 = !DILocation(line: 18, column: 5, scope: !588)
!601 = !DILocation(line: 19, column: 1, scope: !588)
!602 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !418, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!603 = !DILocalVariable(name: "line", arg: 1, scope: !602, file: !3, line: 20, type: !42)
!604 = !DILocation(line: 20, column: 29, scope: !602)
!605 = !DILocation(line: 22, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 22, column: 8)
!607 = !DILocation(line: 22, column: 13, scope: !606)
!608 = !DILocation(line: 22, column: 8, scope: !602)
!609 = !DILocation(line: 24, column: 24, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 23, column: 5)
!611 = !DILocation(line: 24, column: 9, scope: !610)
!612 = !DILocation(line: 25, column: 5, scope: !610)
!613 = !DILocation(line: 26, column: 1, scope: !602)
!614 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !615, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !158, line: 74, baseType: !23)
!619 = !DILocalVariable(name: "line", arg: 1, scope: !614, file: !3, line: 27, type: !617)
!620 = !DILocation(line: 27, column: 29, scope: !614)
!621 = !DILocation(line: 29, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !3, line: 29, column: 8)
!623 = !DILocation(line: 29, column: 13, scope: !622)
!624 = !DILocation(line: 29, column: 8, scope: !614)
!625 = !DILocation(line: 31, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 30, column: 5)
!627 = !DILocation(line: 31, column: 9, scope: !626)
!628 = !DILocation(line: 32, column: 5, scope: !626)
!629 = !DILocation(line: 33, column: 1, scope: !614)
!630 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !631, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !23}
!633 = !DILocalVariable(name: "intNumber", arg: 1, scope: !630, file: !3, line: 35, type: !23)
!634 = !DILocation(line: 35, column: 24, scope: !630)
!635 = !DILocation(line: 37, column: 20, scope: !630)
!636 = !DILocation(line: 37, column: 5, scope: !630)
!637 = !DILocation(line: 38, column: 1, scope: !630)
!638 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !639, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641}
!641 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!642 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !638, file: !3, line: 40, type: !641)
!643 = !DILocation(line: 40, column: 28, scope: !638)
!644 = !DILocation(line: 42, column: 21, scope: !638)
!645 = !DILocation(line: 42, column: 5, scope: !638)
!646 = !DILocation(line: 43, column: 1, scope: !638)
!647 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !648, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650}
!650 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!651 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !647, file: !3, line: 45, type: !650)
!652 = !DILocation(line: 45, column: 28, scope: !647)
!653 = !DILocation(line: 47, column: 20, scope: !647)
!654 = !DILocation(line: 47, column: 5, scope: !647)
!655 = !DILocation(line: 48, column: 1, scope: !647)
!656 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !657, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659}
!659 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!660 = !DILocalVariable(name: "longNumber", arg: 1, scope: !656, file: !3, line: 50, type: !659)
!661 = !DILocation(line: 50, column: 26, scope: !656)
!662 = !DILocation(line: 52, column: 21, scope: !656)
!663 = !DILocation(line: 52, column: 5, scope: !656)
!664 = !DILocation(line: 53, column: 1, scope: !656)
!665 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !666, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668}
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !669, line: 27, baseType: !670)
!669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !659)
!671 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !665, file: !3, line: 55, type: !668)
!672 = !DILocation(line: 55, column: 33, scope: !665)
!673 = !DILocation(line: 57, column: 29, scope: !665)
!674 = !DILocation(line: 57, column: 5, scope: !665)
!675 = !DILocation(line: 58, column: 1, scope: !665)
!676 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !677, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !157}
!679 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !676, file: !3, line: 60, type: !157)
!680 = !DILocation(line: 60, column: 29, scope: !676)
!681 = !DILocation(line: 62, column: 21, scope: !676)
!682 = !DILocation(line: 62, column: 5, scope: !676)
!683 = !DILocation(line: 63, column: 1, scope: !676)
!684 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !685, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !43}
!687 = !DILocalVariable(name: "charHex", arg: 1, scope: !684, file: !3, line: 65, type: !43)
!688 = !DILocation(line: 65, column: 29, scope: !684)
!689 = !DILocation(line: 67, column: 22, scope: !684)
!690 = !DILocation(line: 67, column: 5, scope: !684)
!691 = !DILocation(line: 68, column: 1, scope: !684)
!692 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !693, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !618}
!695 = !DILocalVariable(name: "wideChar", arg: 1, scope: !692, file: !3, line: 70, type: !618)
!696 = !DILocation(line: 70, column: 29, scope: !692)
!697 = !DILocalVariable(name: "s", scope: !692, file: !3, line: 74, type: !698)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 64, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 2)
!701 = !DILocation(line: 74, column: 13, scope: !692)
!702 = !DILocation(line: 75, column: 16, scope: !692)
!703 = !DILocation(line: 75, column: 9, scope: !692)
!704 = !DILocation(line: 75, column: 14, scope: !692)
!705 = !DILocation(line: 76, column: 9, scope: !692)
!706 = !DILocation(line: 76, column: 14, scope: !692)
!707 = !DILocation(line: 77, column: 21, scope: !692)
!708 = !DILocation(line: 77, column: 5, scope: !692)
!709 = !DILocation(line: 78, column: 1, scope: !692)
!710 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !711, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !7}
!713 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !710, file: !3, line: 80, type: !7)
!714 = !DILocation(line: 80, column: 33, scope: !710)
!715 = !DILocation(line: 82, column: 20, scope: !710)
!716 = !DILocation(line: 82, column: 5, scope: !710)
!717 = !DILocation(line: 83, column: 1, scope: !710)
!718 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !719, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !25}
!721 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !718, file: !3, line: 85, type: !25)
!722 = !DILocation(line: 85, column: 45, scope: !718)
!723 = !DILocation(line: 87, column: 22, scope: !718)
!724 = !DILocation(line: 87, column: 5, scope: !718)
!725 = !DILocation(line: 88, column: 1, scope: !718)
!726 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !727, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !729}
!729 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!730 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !726, file: !3, line: 90, type: !729)
!731 = !DILocation(line: 90, column: 29, scope: !726)
!732 = !DILocation(line: 92, column: 20, scope: !726)
!733 = !DILocation(line: 92, column: 5, scope: !726)
!734 = !DILocation(line: 93, column: 1, scope: !726)
!735 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !736, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !740, line: 100, baseType: !741)
!740 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_154/source_code")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !740, line: 96, size: 64, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !741, file: !740, line: 98, baseType: !23, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !741, file: !740, line: 99, baseType: !23, size: 32, offset: 32)
!745 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !735, file: !3, line: 95, type: !738)
!746 = !DILocation(line: 95, column: 40, scope: !735)
!747 = !DILocation(line: 97, column: 26, scope: !735)
!748 = !DILocation(line: 97, column: 47, scope: !735)
!749 = !DILocation(line: 97, column: 55, scope: !735)
!750 = !DILocation(line: 97, column: 76, scope: !735)
!751 = !DILocation(line: 97, column: 5, scope: !735)
!752 = !DILocation(line: 98, column: 1, scope: !735)
!753 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !754, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756, !157}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!757 = !DILocalVariable(name: "bytes", arg: 1, scope: !753, file: !3, line: 100, type: !756)
!758 = !DILocation(line: 100, column: 38, scope: !753)
!759 = !DILocalVariable(name: "numBytes", arg: 2, scope: !753, file: !3, line: 100, type: !157)
!760 = !DILocation(line: 100, column: 52, scope: !753)
!761 = !DILocalVariable(name: "i", scope: !753, file: !3, line: 102, type: !157)
!762 = !DILocation(line: 102, column: 12, scope: !753)
!763 = !DILocation(line: 103, column: 12, scope: !764)
!764 = distinct !DILexicalBlock(scope: !753, file: !3, line: 103, column: 5)
!765 = !DILocation(line: 103, column: 10, scope: !764)
!766 = !DILocation(line: 103, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !3, line: 103, column: 5)
!768 = !DILocation(line: 103, column: 21, scope: !767)
!769 = !DILocation(line: 103, column: 19, scope: !767)
!770 = !DILocation(line: 103, column: 5, scope: !764)
!771 = !DILocation(line: 105, column: 24, scope: !772)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 104, column: 5)
!773 = !DILocation(line: 105, column: 30, scope: !772)
!774 = !DILocation(line: 105, column: 9, scope: !772)
!775 = !DILocation(line: 106, column: 5, scope: !772)
!776 = !DILocation(line: 103, column: 31, scope: !767)
!777 = !DILocation(line: 103, column: 5, scope: !767)
!778 = distinct !{!778, !770, !779, !505}
!779 = !DILocation(line: 106, column: 5, scope: !764)
!780 = !DILocation(line: 107, column: 5, scope: !753)
!781 = !DILocation(line: 108, column: 1, scope: !753)
!782 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !783, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DISubroutineType(types: !784)
!784 = !{!157, !756, !157, !42}
!785 = !DILocalVariable(name: "bytes", arg: 1, scope: !782, file: !3, line: 113, type: !756)
!786 = !DILocation(line: 113, column: 39, scope: !782)
!787 = !DILocalVariable(name: "numBytes", arg: 2, scope: !782, file: !3, line: 113, type: !157)
!788 = !DILocation(line: 113, column: 53, scope: !782)
!789 = !DILocalVariable(name: "hex", arg: 3, scope: !782, file: !3, line: 113, type: !42)
!790 = !DILocation(line: 113, column: 71, scope: !782)
!791 = !DILocalVariable(name: "numWritten", scope: !782, file: !3, line: 115, type: !157)
!792 = !DILocation(line: 115, column: 12, scope: !782)
!793 = !DILocation(line: 121, column: 5, scope: !782)
!794 = !DILocation(line: 121, column: 12, scope: !782)
!795 = !DILocation(line: 121, column: 25, scope: !782)
!796 = !DILocation(line: 121, column: 23, scope: !782)
!797 = !DILocation(line: 121, column: 34, scope: !782)
!798 = !DILocation(line: 121, column: 37, scope: !782)
!799 = !DILocation(line: 121, column: 67, scope: !782)
!800 = !DILocation(line: 121, column: 70, scope: !782)
!801 = !DILocation(line: 0, scope: !782)
!802 = !DILocalVariable(name: "byte", scope: !803, file: !3, line: 123, type: !23)
!803 = distinct !DILexicalBlock(scope: !782, file: !3, line: 122, column: 5)
!804 = !DILocation(line: 123, column: 13, scope: !803)
!805 = !DILocation(line: 124, column: 17, scope: !803)
!806 = !DILocation(line: 124, column: 25, scope: !803)
!807 = !DILocation(line: 124, column: 23, scope: !803)
!808 = !DILocation(line: 124, column: 9, scope: !803)
!809 = !DILocation(line: 125, column: 45, scope: !803)
!810 = !DILocation(line: 125, column: 29, scope: !803)
!811 = !DILocation(line: 125, column: 9, scope: !803)
!812 = !DILocation(line: 125, column: 15, scope: !803)
!813 = !DILocation(line: 125, column: 27, scope: !803)
!814 = !DILocation(line: 126, column: 9, scope: !803)
!815 = distinct !{!815, !793, !816, !505}
!816 = !DILocation(line: 127, column: 5, scope: !782)
!817 = !DILocation(line: 129, column: 12, scope: !782)
!818 = !DILocation(line: 129, column: 5, scope: !782)
!819 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !820, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!820 = !DISubroutineType(types: !821)
!821 = !{!157, !756, !157, !617}
!822 = !DILocalVariable(name: "bytes", arg: 1, scope: !819, file: !3, line: 135, type: !756)
!823 = !DILocation(line: 135, column: 41, scope: !819)
!824 = !DILocalVariable(name: "numBytes", arg: 2, scope: !819, file: !3, line: 135, type: !157)
!825 = !DILocation(line: 135, column: 55, scope: !819)
!826 = !DILocalVariable(name: "hex", arg: 3, scope: !819, file: !3, line: 135, type: !617)
!827 = !DILocation(line: 135, column: 76, scope: !819)
!828 = !DILocalVariable(name: "numWritten", scope: !819, file: !3, line: 137, type: !157)
!829 = !DILocation(line: 137, column: 12, scope: !819)
!830 = !DILocation(line: 143, column: 5, scope: !819)
!831 = !DILocation(line: 143, column: 12, scope: !819)
!832 = !DILocation(line: 143, column: 25, scope: !819)
!833 = !DILocation(line: 143, column: 23, scope: !819)
!834 = !DILocation(line: 143, column: 34, scope: !819)
!835 = !DILocation(line: 143, column: 47, scope: !819)
!836 = !DILocation(line: 143, column: 55, scope: !819)
!837 = !DILocation(line: 143, column: 53, scope: !819)
!838 = !DILocation(line: 143, column: 37, scope: !819)
!839 = !DILocation(line: 143, column: 68, scope: !819)
!840 = !DILocation(line: 143, column: 81, scope: !819)
!841 = !DILocation(line: 143, column: 89, scope: !819)
!842 = !DILocation(line: 143, column: 87, scope: !819)
!843 = !DILocation(line: 143, column: 100, scope: !819)
!844 = !DILocation(line: 143, column: 71, scope: !819)
!845 = !DILocation(line: 0, scope: !819)
!846 = !DILocalVariable(name: "byte", scope: !847, file: !3, line: 145, type: !23)
!847 = distinct !DILexicalBlock(scope: !819, file: !3, line: 144, column: 5)
!848 = !DILocation(line: 145, column: 13, scope: !847)
!849 = !DILocation(line: 146, column: 18, scope: !847)
!850 = !DILocation(line: 146, column: 26, scope: !847)
!851 = !DILocation(line: 146, column: 24, scope: !847)
!852 = !DILocation(line: 146, column: 9, scope: !847)
!853 = !DILocation(line: 147, column: 45, scope: !847)
!854 = !DILocation(line: 147, column: 29, scope: !847)
!855 = !DILocation(line: 147, column: 9, scope: !847)
!856 = !DILocation(line: 147, column: 15, scope: !847)
!857 = !DILocation(line: 147, column: 27, scope: !847)
!858 = !DILocation(line: 148, column: 9, scope: !847)
!859 = distinct !{!859, !830, !860, !505}
!860 = !DILocation(line: 149, column: 5, scope: !819)
!861 = !DILocation(line: 151, column: 12, scope: !819)
!862 = !DILocation(line: 151, column: 5, scope: !819)
!863 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !864, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DISubroutineType(types: !865)
!865 = !{!23}
!866 = !DILocation(line: 158, column: 5, scope: !863)
!867 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !864, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 163, column: 5, scope: !867)
!869 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !864, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 168, column: 13, scope: !869)
!871 = !DILocation(line: 168, column: 20, scope: !869)
!872 = !DILocation(line: 168, column: 5, scope: !869)
!873 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !119, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 187, column: 16, scope: !873)
!875 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !119, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 188, column: 16, scope: !875)
!877 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !119, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 189, column: 16, scope: !877)
!879 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !119, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 190, column: 16, scope: !879)
!881 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !119, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 191, column: 16, scope: !881)
!883 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !119, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 192, column: 16, scope: !883)
!885 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !119, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 193, column: 16, scope: !885)
!887 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !119, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 194, column: 16, scope: !887)
!889 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !119, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!890 = !DILocation(line: 195, column: 16, scope: !889)
!891 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !119, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DILocation(line: 198, column: 15, scope: !891)
!893 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !119, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!894 = !DILocation(line: 199, column: 15, scope: !893)
!895 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !119, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DILocation(line: 200, column: 15, scope: !895)
!897 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !119, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DILocation(line: 201, column: 15, scope: !897)
!899 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !119, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!900 = !DILocation(line: 202, column: 15, scope: !899)
!901 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !119, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DILocation(line: 203, column: 15, scope: !901)
!903 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !119, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!904 = !DILocation(line: 204, column: 15, scope: !903)
!905 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !119, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!906 = !DILocation(line: 205, column: 15, scope: !905)
!907 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !119, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!908 = !DILocation(line: 206, column: 15, scope: !907)
