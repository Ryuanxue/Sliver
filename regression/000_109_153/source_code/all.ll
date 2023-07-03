; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.20 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
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
@.str.15.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53_bad() #0 !dbg !116 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !121, metadata !DIExpression()), !dbg !125
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !125
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !126
  store i8* %arraydecay, i8** %data, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !131, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 -1, i32* %listenSocket, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 -1, i32* %acceptSocket, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !158
  %1 = load i8*, i8** %data, align 8, !dbg !159
  %call = call i64 @strlen(i8* %1) #7, !dbg !160
  store i64 %call, i64* %dataLen, align 8, !dbg !158
  br label %do.body, !dbg !161

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !162
  store i32 %call1, i32* %listenSocket, align 4, !dbg !164
  %2 = load i32, i32* %listenSocket, align 4, !dbg !165
  %cmp = icmp eq i32 %2, -1, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !169

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !171
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !172
  store i16 2, i16* %sin_family, align 4, !dbg !173
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !174
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !175
  store i32 0, i32* %s_addr, align 4, !dbg !176
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !177
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !178
  store i16 %call2, i16* %sin_port, align 2, !dbg !179
  %4 = load i32, i32* %listenSocket, align 4, !dbg !180
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !182
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !183
  %cmp4 = icmp eq i32 %call3, -1, !dbg !184
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !185

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !186

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !188
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !190
  %cmp8 = icmp eq i32 %call7, -1, !dbg !191
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !192

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !193

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !195
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !196
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !197
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !198
  %cmp12 = icmp eq i32 %8, -1, !dbg !200
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !201

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !202

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !204
  %10 = load i8*, i8** %data, align 8, !dbg !205
  %11 = load i64, i64* %dataLen, align 8, !dbg !206
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !207
  %12 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub = sub i64 100, %12, !dbg !209
  %sub15 = sub i64 %sub, 1, !dbg !210
  %mul = mul i64 1, %sub15, !dbg !211
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !212
  %conv = trunc i64 %call16 to i32, !dbg !212
  store i32 %conv, i32* %recvResult, align 4, !dbg !213
  %13 = load i32, i32* %recvResult, align 4, !dbg !214
  %cmp17 = icmp eq i32 %13, -1, !dbg !216
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !217

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !218
  %cmp19 = icmp eq i32 %14, 0, !dbg !219
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !220

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !221

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !223
  %16 = load i64, i64* %dataLen, align 8, !dbg !224
  %17 = load i32, i32* %recvResult, align 4, !dbg !225
  %conv23 = sext i32 %17 to i64, !dbg !225
  %div = udiv i64 %conv23, 1, !dbg !226
  %add = add i64 %16, %div, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !223
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  %18 = load i8*, i8** %data, align 8, !dbg !229
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !230
  store i8* %call24, i8** %replace, align 8, !dbg !231
  %19 = load i8*, i8** %replace, align 8, !dbg !232
  %tobool = icmp ne i8* %19, null, !dbg !232
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !234

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !235
  store i8 0, i8* %20, align 1, !dbg !237
  br label %if.end26, !dbg !238

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !239
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !240
  store i8* %call27, i8** %replace, align 8, !dbg !241
  %22 = load i8*, i8** %replace, align 8, !dbg !242
  %tobool28 = icmp ne i8* %22, null, !dbg !242
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !244

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !245
  store i8 0, i8* %23, align 1, !dbg !247
  br label %if.end30, !dbg !248

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !249

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !250
  %cmp31 = icmp ne i32 %24, -1, !dbg !252
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !253

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !254
  %call34 = call i32 @close(i32 %25), !dbg !256
  br label %if.end35, !dbg !257

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !258
  %cmp36 = icmp ne i32 %26, -1, !dbg !260
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !261

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !262
  %call39 = call i32 @close(i32 %27), !dbg !264
  br label %if.end40, !dbg !265

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !266
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_badSink(i8* %28), !dbg !267
  ret void, !dbg !268
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
define dso_local void @goodG2B() #0 !dbg !269 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !273
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !274
  store i8* %arraydecay, i8** %data, align 8, !dbg !275
  %1 = load i8*, i8** %data, align 8, !dbg !276
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !277
  %2 = load i8*, i8** %data, align 8, !dbg !278
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodG2BSink(i8* %2), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !281 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !285
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !285
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !286
  store i8* %arraydecay, i8** %data, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !295, metadata !DIExpression()), !dbg !296
  store i32 -1, i32* %listenSocket, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !297, metadata !DIExpression()), !dbg !298
  store i32 -1, i32* %acceptSocket, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !299, metadata !DIExpression()), !dbg !300
  %1 = load i8*, i8** %data, align 8, !dbg !301
  %call = call i64 @strlen(i8* %1) #7, !dbg !302
  store i64 %call, i64* %dataLen, align 8, !dbg !300
  br label %do.body, !dbg !303

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !304
  store i32 %call1, i32* %listenSocket, align 4, !dbg !306
  %2 = load i32, i32* %listenSocket, align 4, !dbg !307
  %cmp = icmp eq i32 %2, -1, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !311

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !313
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !314
  store i16 2, i16* %sin_family, align 4, !dbg !315
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !316
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !317
  store i32 0, i32* %s_addr, align 4, !dbg !318
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !319
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !320
  store i16 %call2, i16* %sin_port, align 2, !dbg !321
  %4 = load i32, i32* %listenSocket, align 4, !dbg !322
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !324
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !325
  %cmp4 = icmp eq i32 %call3, -1, !dbg !326
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !327

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !328

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !330
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !332
  %cmp8 = icmp eq i32 %call7, -1, !dbg !333
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !334

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !335

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !337
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !338
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !339
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !340
  %cmp12 = icmp eq i32 %8, -1, !dbg !342
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !343

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !344

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !346
  %10 = load i8*, i8** %data, align 8, !dbg !347
  %11 = load i64, i64* %dataLen, align 8, !dbg !348
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !349
  %12 = load i64, i64* %dataLen, align 8, !dbg !350
  %sub = sub i64 100, %12, !dbg !351
  %sub15 = sub i64 %sub, 1, !dbg !352
  %mul = mul i64 1, %sub15, !dbg !353
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !354
  %conv = trunc i64 %call16 to i32, !dbg !354
  store i32 %conv, i32* %recvResult, align 4, !dbg !355
  %13 = load i32, i32* %recvResult, align 4, !dbg !356
  %cmp17 = icmp eq i32 %13, -1, !dbg !358
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !359

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !360
  %cmp19 = icmp eq i32 %14, 0, !dbg !361
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !362

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !363

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !365
  %16 = load i64, i64* %dataLen, align 8, !dbg !366
  %17 = load i32, i32* %recvResult, align 4, !dbg !367
  %conv23 = sext i32 %17 to i64, !dbg !367
  %div = udiv i64 %conv23, 1, !dbg !368
  %add = add i64 %16, %div, !dbg !369
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !365
  store i8 0, i8* %arrayidx, align 1, !dbg !370
  %18 = load i8*, i8** %data, align 8, !dbg !371
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !372
  store i8* %call24, i8** %replace, align 8, !dbg !373
  %19 = load i8*, i8** %replace, align 8, !dbg !374
  %tobool = icmp ne i8* %19, null, !dbg !374
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !376

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !377
  store i8 0, i8* %20, align 1, !dbg !379
  br label %if.end26, !dbg !380

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !381
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !382
  store i8* %call27, i8** %replace, align 8, !dbg !383
  %22 = load i8*, i8** %replace, align 8, !dbg !384
  %tobool28 = icmp ne i8* %22, null, !dbg !384
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !386

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !387
  store i8 0, i8* %23, align 1, !dbg !389
  br label %if.end30, !dbg !390

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !391

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !392
  %cmp31 = icmp ne i32 %24, -1, !dbg !394
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !395

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !396
  %call34 = call i32 @close(i32 %25), !dbg !398
  br label %if.end35, !dbg !399

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !400
  %cmp36 = icmp ne i32 %26, -1, !dbg !402
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !403

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !404
  %call39 = call i32 @close(i32 %27), !dbg !406
  br label %if.end40, !dbg !407

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !408
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodB2GSink(i8* %28), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53_good() #0 !dbg !411 {
entry:
  call void @goodG2B(), !dbg !412
  call void @goodB2G(), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_badSink(i8* %data) #0 !dbg !415 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i8*, i8** %data.addr, align 8, !dbg !420
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_badSink(i8* %0), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodG2BSink(i8* %data) #0 !dbg !423 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8*, i8** %data.addr, align 8, !dbg !426
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodG2BSink(i8* %0), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodB2GSink(i8* %data) #0 !dbg !429 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8*, i8** %data.addr, align 8, !dbg !432
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodB2GSink(i8* %0), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_badSink(i8* %data) #0 !dbg !435 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i8*, i8** %data.addr, align 8, !dbg !438
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_badSink(i8* %0), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodG2BSink(i8* %data) #0 !dbg !441 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i8*, i8** %data.addr, align 8, !dbg !444
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodG2BSink(i8* %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodB2GSink(i8* %data) #0 !dbg !447 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i8*, i8** %data.addr, align 8, !dbg !450
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodB2GSink(i8* %0), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_badSink(i8* %data) #0 !dbg !453 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %i, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %n, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i8*, i8** %data.addr, align 8, !dbg !463
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !465
  %cmp = icmp eq i32 %call, 1, !dbg !466
  br i1 %cmp, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !468
  store i32 0, i32* %i, align 4, !dbg !470
  br label %for.cond, !dbg !472

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !473
  %2 = load i32, i32* %n, align 4, !dbg !475
  %cmp1 = icmp slt i32 %1, %2, !dbg !476
  br i1 %cmp1, label %for.body, label %for.end, !dbg !477

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !478
  %inc = add nsw i32 %3, 1, !dbg !478
  store i32 %inc, i32* %intVariable, align 4, !dbg !478
  br label %for.inc, !dbg !480

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !481
  %inc2 = add nsw i32 %4, 1, !dbg !481
  store i32 %inc2, i32* %i, align 4, !dbg !481
  br label %for.cond, !dbg !482, !llvm.loop !483

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !486
  call void @printIntLine(i32 %5), !dbg !487
  br label %if.end, !dbg !488

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !489
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodG2BSink(i8* %data) #0 !dbg !490 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i32* %i, metadata !493, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata i32* %n, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i8*, i8** %data.addr, align 8, !dbg !500
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !502
  %cmp = icmp eq i32 %call, 1, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !505
  store i32 0, i32* %i, align 4, !dbg !507
  br label %for.cond, !dbg !509

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !510
  %2 = load i32, i32* %n, align 4, !dbg !512
  %cmp1 = icmp slt i32 %1, %2, !dbg !513
  br i1 %cmp1, label %for.body, label %for.end, !dbg !514

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !515
  %inc = add nsw i32 %3, 1, !dbg !515
  store i32 %inc, i32* %intVariable, align 4, !dbg !515
  br label %for.inc, !dbg !517

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !518
  %inc2 = add nsw i32 %4, 1, !dbg !518
  store i32 %inc2, i32* %i, align 4, !dbg !518
  br label %for.cond, !dbg !519, !llvm.loop !520

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !522
  call void @printIntLine(i32 %5), !dbg !523
  br label %if.end, !dbg !524

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodB2GSink(i8* %data) #0 !dbg !526 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata i32* %i, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %n, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i8*, i8** %data.addr, align 8, !dbg !536
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !538
  %cmp = icmp eq i32 %call, 1, !dbg !539
  br i1 %cmp, label %if.then, label %if.end5, !dbg !540

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !541
  %cmp1 = icmp slt i32 %1, 10000, !dbg !544
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !545

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !546
  store i32 0, i32* %i, align 4, !dbg !548
  br label %for.cond, !dbg !550

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !551
  %3 = load i32, i32* %n, align 4, !dbg !553
  %cmp3 = icmp slt i32 %2, %3, !dbg !554
  br i1 %cmp3, label %for.body, label %for.end, !dbg !555

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !556
  %inc = add nsw i32 %4, 1, !dbg !556
  store i32 %inc, i32* %intVariable, align 4, !dbg !556
  br label %for.inc, !dbg !558

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !559
  %inc4 = add nsw i32 %5, 1, !dbg !559
  store i32 %inc4, i32* %i, align 4, !dbg !559
  br label %for.cond, !dbg !560, !llvm.loop !561

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !563
  call void @printIntLine(i32 %6), !dbg !564
  br label %if.end, !dbg !565

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !566

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !568 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !569, metadata !DIExpression()), !dbg !570
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)), !dbg !571
  %0 = load i8*, i8** %line.addr, align 8, !dbg !572
  %cmp = icmp ne i8* %0, null, !dbg !574
  br i1 %cmp, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !576
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !578
  br label %if.end, !dbg !579

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !580
  ret void, !dbg !581
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !582 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load i8*, i8** %line.addr, align 8, !dbg !585
  %cmp = icmp ne i8* %0, null, !dbg !587
  br i1 %cmp, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !591
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !594 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load i32*, i32** %line.addr, align 8, !dbg !601
  %cmp = icmp ne i32* %0, null, !dbg !603
  br i1 %cmp, label %if.then, label %if.end, !dbg !604

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !605
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !607
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !609
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !610 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !618 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !624
  %conv = sext i16 %0 to i32, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !627 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !633
  %conv = fpext float %0 to double, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !636 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !645 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !656 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !659, metadata !DIExpression()), !dbg !660
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !664 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !667, metadata !DIExpression()), !dbg !668
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !669
  %conv = sext i8 %0 to i32, !dbg !669
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !670
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !672 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !677, metadata !DIExpression()), !dbg !681
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !682
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !683
  store i32 %0, i32* %arrayidx, align 4, !dbg !684
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !685
  store i32 0, i32* %arrayidx1, align 4, !dbg !686
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !687
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !690 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !695
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !696
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !698 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !701, metadata !DIExpression()), !dbg !702
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !703
  %conv = zext i8 %0 to i32, !dbg !703
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !704
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !706 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !710, metadata !DIExpression()), !dbg !711
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !712
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !715 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !725, metadata !DIExpression()), !dbg !726
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !727
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !728
  %1 = load i32, i32* %intOne, align 4, !dbg !728
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !729
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !730
  %3 = load i32, i32* %intTwo, align 4, !dbg !730
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !731
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !733 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !737, metadata !DIExpression()), !dbg !738
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata i64* %i, metadata !741, metadata !DIExpression()), !dbg !742
  store i64 0, i64* %i, align 8, !dbg !743
  br label %for.cond, !dbg !745

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !746
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !748
  %cmp = icmp ult i64 %0, %1, !dbg !749
  br i1 %cmp, label %for.body, label %for.end, !dbg !750

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !751
  %3 = load i64, i64* %i, align 8, !dbg !753
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !751
  %4 = load i8, i8* %arrayidx, align 1, !dbg !751
  %conv = zext i8 %4 to i32, !dbg !751
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !754
  br label %for.inc, !dbg !755

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !756
  %inc = add i64 %5, 1, !dbg !756
  store i64 %inc, i64* %i, align 8, !dbg !756
  br label %for.cond, !dbg !757, !llvm.loop !758

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.23, i64 0, i64 0)), !dbg !760
  ret void, !dbg !761
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !762 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !767, metadata !DIExpression()), !dbg !768
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !771, metadata !DIExpression()), !dbg !772
  store i64 0, i64* %numWritten, align 8, !dbg !772
  br label %while.cond, !dbg !773

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !774
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !775
  %cmp = icmp ult i64 %0, %1, !dbg !776
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !777

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !778
  %2 = load i16*, i16** %call, align 8, !dbg !778
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !778
  %4 = load i64, i64* %numWritten, align 8, !dbg !778
  %mul = mul i64 2, %4, !dbg !778
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !778
  %5 = load i8, i8* %arrayidx, align 1, !dbg !778
  %conv = sext i8 %5 to i32, !dbg !778
  %idxprom = sext i32 %conv to i64, !dbg !778
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !778
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !778
  %conv2 = zext i16 %6 to i32, !dbg !778
  %and = and i32 %conv2, 4096, !dbg !778
  %tobool = icmp ne i32 %and, 0, !dbg !778
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !779

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !780
  %7 = load i16*, i16** %call3, align 8, !dbg !780
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !780
  %9 = load i64, i64* %numWritten, align 8, !dbg !780
  %mul4 = mul i64 2, %9, !dbg !780
  %add = add i64 %mul4, 1, !dbg !780
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !780
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !780
  %conv6 = sext i8 %10 to i32, !dbg !780
  %idxprom7 = sext i32 %conv6 to i64, !dbg !780
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !780
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !780
  %conv9 = zext i16 %11 to i32, !dbg !780
  %and10 = and i32 %conv9, 4096, !dbg !780
  %tobool11 = icmp ne i32 %and10, 0, !dbg !779
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !781
  br i1 %12, label %while.body, label %while.end, !dbg !773

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !782, metadata !DIExpression()), !dbg !784
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !785
  %14 = load i64, i64* %numWritten, align 8, !dbg !786
  %mul12 = mul i64 2, %14, !dbg !787
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !785
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !788
  %15 = load i32, i32* %byte, align 4, !dbg !789
  %conv15 = trunc i32 %15 to i8, !dbg !790
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !791
  %17 = load i64, i64* %numWritten, align 8, !dbg !792
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !791
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !793
  %18 = load i64, i64* %numWritten, align 8, !dbg !794
  %inc = add i64 %18, 1, !dbg !794
  store i64 %inc, i64* %numWritten, align 8, !dbg !794
  br label %while.cond, !dbg !773, !llvm.loop !795

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !797
  ret i64 %19, !dbg !798
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !799 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !802, metadata !DIExpression()), !dbg !803
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !808, metadata !DIExpression()), !dbg !809
  store i64 0, i64* %numWritten, align 8, !dbg !809
  br label %while.cond, !dbg !810

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !811
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !812
  %cmp = icmp ult i64 %0, %1, !dbg !813
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !814

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !815
  %3 = load i64, i64* %numWritten, align 8, !dbg !816
  %mul = mul i64 2, %3, !dbg !817
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !815
  %4 = load i32, i32* %arrayidx, align 4, !dbg !815
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !818
  %tobool = icmp ne i32 %call, 0, !dbg !818
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !819

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !820
  %6 = load i64, i64* %numWritten, align 8, !dbg !821
  %mul1 = mul i64 2, %6, !dbg !822
  %add = add i64 %mul1, 1, !dbg !823
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !820
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !820
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !824
  %tobool4 = icmp ne i32 %call3, 0, !dbg !819
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !825
  br i1 %8, label %while.body, label %while.end, !dbg !810

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !826, metadata !DIExpression()), !dbg !828
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !829
  %10 = load i64, i64* %numWritten, align 8, !dbg !830
  %mul5 = mul i64 2, %10, !dbg !831
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !829
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !832
  %11 = load i32, i32* %byte, align 4, !dbg !833
  %conv = trunc i32 %11 to i8, !dbg !834
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !835
  %13 = load i64, i64* %numWritten, align 8, !dbg !836
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !835
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !837
  %14 = load i64, i64* %numWritten, align 8, !dbg !838
  %inc = add i64 %14, 1, !dbg !838
  store i64 %inc, i64* %numWritten, align 8, !dbg !838
  br label %while.cond, !dbg !810, !llvm.loop !839

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !841
  ret i64 %15, !dbg !842
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !843 {
entry:
  ret i32 1, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !847 {
entry:
  ret i32 0, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !849 {
entry:
  %call = call i32 @rand() #8, !dbg !850
  %rem = srem i32 %call, 2, !dbg !851
  ret i32 %rem, !dbg !852
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !857 {
entry:
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !859 {
entry:
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !861 {
entry:
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !863 {
entry:
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !865 {
entry:
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !867 {
entry:
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !869 {
entry:
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !871 {
entry:
  ret void, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !873 {
entry:
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !887 {
entry:
  ret void, !dbg !888
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

!llvm.dbg.cu = !{!44, !105, !108, !110, !2}
!llvm.ident = !{!112, !112, !112, !112, !112}
!llvm.module.flags = !{!113, !114, !115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
!112 = !{!"clang version 12.0.0"}
!113 = !{i32 7, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53_bad", scope: !45, file: !45, line: 52, type: !117, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!117 = !DISubroutineType(types: !118)
!118 = !{null}
!119 = !DILocalVariable(name: "data", scope: !116, file: !45, line: 54, type: !42)
!120 = !DILocation(line: 54, column: 12, scope: !116)
!121 = !DILocalVariable(name: "dataBuffer", scope: !116, file: !45, line: 55, type: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 100)
!125 = !DILocation(line: 55, column: 10, scope: !116)
!126 = !DILocation(line: 56, column: 12, scope: !116)
!127 = !DILocation(line: 56, column: 10, scope: !116)
!128 = !DILocalVariable(name: "recvResult", scope: !129, file: !45, line: 62, type: !23)
!129 = distinct !DILexicalBlock(scope: !116, file: !45, line: 57, column: 5)
!130 = !DILocation(line: 62, column: 13, scope: !129)
!131 = !DILocalVariable(name: "service", scope: !129, file: !45, line: 63, type: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !133)
!133 = !{!134, !135, !139, !143}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !132, file: !60, line: 240, baseType: !99, size: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !132, file: !60, line: 241, baseType: !136, size: 16, offset: 16)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !132, file: !60, line: 242, baseType: !140, size: 32, offset: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !140, file: !60, line: 33, baseType: !89, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !132, file: !60, line: 245, baseType: !144, size: 64, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DILocation(line: 63, column: 28, scope: !129)
!148 = !DILocalVariable(name: "replace", scope: !129, file: !45, line: 64, type: !42)
!149 = !DILocation(line: 64, column: 15, scope: !129)
!150 = !DILocalVariable(name: "listenSocket", scope: !129, file: !45, line: 65, type: !23)
!151 = !DILocation(line: 65, column: 16, scope: !129)
!152 = !DILocalVariable(name: "acceptSocket", scope: !129, file: !45, line: 66, type: !23)
!153 = !DILocation(line: 66, column: 16, scope: !129)
!154 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 67, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DILocation(line: 67, column: 16, scope: !129)
!159 = !DILocation(line: 67, column: 33, scope: !129)
!160 = !DILocation(line: 67, column: 26, scope: !129)
!161 = !DILocation(line: 68, column: 9, scope: !129)
!162 = !DILocation(line: 78, column: 28, scope: !163)
!163 = distinct !DILexicalBlock(scope: !129, file: !45, line: 69, column: 9)
!164 = !DILocation(line: 78, column: 26, scope: !163)
!165 = !DILocation(line: 79, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !45, line: 79, column: 17)
!167 = !DILocation(line: 79, column: 30, scope: !166)
!168 = !DILocation(line: 79, column: 17, scope: !163)
!169 = !DILocation(line: 81, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !45, line: 80, column: 13)
!171 = !DILocation(line: 83, column: 13, scope: !163)
!172 = !DILocation(line: 84, column: 21, scope: !163)
!173 = !DILocation(line: 84, column: 32, scope: !163)
!174 = !DILocation(line: 85, column: 21, scope: !163)
!175 = !DILocation(line: 85, column: 30, scope: !163)
!176 = !DILocation(line: 85, column: 37, scope: !163)
!177 = !DILocation(line: 86, column: 32, scope: !163)
!178 = !DILocation(line: 86, column: 21, scope: !163)
!179 = !DILocation(line: 86, column: 30, scope: !163)
!180 = !DILocation(line: 87, column: 22, scope: !181)
!181 = distinct !DILexicalBlock(scope: !163, file: !45, line: 87, column: 17)
!182 = !DILocation(line: 87, column: 36, scope: !181)
!183 = !DILocation(line: 87, column: 17, scope: !181)
!184 = !DILocation(line: 87, column: 81, scope: !181)
!185 = !DILocation(line: 87, column: 17, scope: !163)
!186 = !DILocation(line: 89, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !181, file: !45, line: 88, column: 13)
!188 = !DILocation(line: 91, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !163, file: !45, line: 91, column: 17)
!190 = !DILocation(line: 91, column: 17, scope: !189)
!191 = !DILocation(line: 91, column: 54, scope: !189)
!192 = !DILocation(line: 91, column: 17, scope: !163)
!193 = !DILocation(line: 93, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !45, line: 92, column: 13)
!195 = !DILocation(line: 95, column: 35, scope: !163)
!196 = !DILocation(line: 95, column: 28, scope: !163)
!197 = !DILocation(line: 95, column: 26, scope: !163)
!198 = !DILocation(line: 96, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !163, file: !45, line: 96, column: 17)
!200 = !DILocation(line: 96, column: 30, scope: !199)
!201 = !DILocation(line: 96, column: 17, scope: !163)
!202 = !DILocation(line: 98, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !45, line: 97, column: 13)
!204 = !DILocation(line: 101, column: 31, scope: !163)
!205 = !DILocation(line: 101, column: 54, scope: !163)
!206 = !DILocation(line: 101, column: 61, scope: !163)
!207 = !DILocation(line: 101, column: 59, scope: !163)
!208 = !DILocation(line: 101, column: 93, scope: !163)
!209 = !DILocation(line: 101, column: 91, scope: !163)
!210 = !DILocation(line: 101, column: 101, scope: !163)
!211 = !DILocation(line: 101, column: 84, scope: !163)
!212 = !DILocation(line: 101, column: 26, scope: !163)
!213 = !DILocation(line: 101, column: 24, scope: !163)
!214 = !DILocation(line: 102, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !163, file: !45, line: 102, column: 17)
!216 = !DILocation(line: 102, column: 28, scope: !215)
!217 = !DILocation(line: 102, column: 44, scope: !215)
!218 = !DILocation(line: 102, column: 47, scope: !215)
!219 = !DILocation(line: 102, column: 58, scope: !215)
!220 = !DILocation(line: 102, column: 17, scope: !163)
!221 = !DILocation(line: 104, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !45, line: 103, column: 13)
!223 = !DILocation(line: 107, column: 13, scope: !163)
!224 = !DILocation(line: 107, column: 18, scope: !163)
!225 = !DILocation(line: 107, column: 28, scope: !163)
!226 = !DILocation(line: 107, column: 39, scope: !163)
!227 = !DILocation(line: 107, column: 26, scope: !163)
!228 = !DILocation(line: 107, column: 55, scope: !163)
!229 = !DILocation(line: 109, column: 30, scope: !163)
!230 = !DILocation(line: 109, column: 23, scope: !163)
!231 = !DILocation(line: 109, column: 21, scope: !163)
!232 = !DILocation(line: 110, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !163, file: !45, line: 110, column: 17)
!234 = !DILocation(line: 110, column: 17, scope: !163)
!235 = !DILocation(line: 112, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !45, line: 111, column: 13)
!237 = !DILocation(line: 112, column: 26, scope: !236)
!238 = !DILocation(line: 113, column: 13, scope: !236)
!239 = !DILocation(line: 114, column: 30, scope: !163)
!240 = !DILocation(line: 114, column: 23, scope: !163)
!241 = !DILocation(line: 114, column: 21, scope: !163)
!242 = !DILocation(line: 115, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !163, file: !45, line: 115, column: 17)
!244 = !DILocation(line: 115, column: 17, scope: !163)
!245 = !DILocation(line: 117, column: 18, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !45, line: 116, column: 13)
!247 = !DILocation(line: 117, column: 26, scope: !246)
!248 = !DILocation(line: 118, column: 13, scope: !246)
!249 = !DILocation(line: 119, column: 9, scope: !163)
!250 = !DILocation(line: 121, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !129, file: !45, line: 121, column: 13)
!252 = !DILocation(line: 121, column: 26, scope: !251)
!253 = !DILocation(line: 121, column: 13, scope: !129)
!254 = !DILocation(line: 123, column: 26, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !45, line: 122, column: 9)
!256 = !DILocation(line: 123, column: 13, scope: !255)
!257 = !DILocation(line: 124, column: 9, scope: !255)
!258 = !DILocation(line: 125, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !129, file: !45, line: 125, column: 13)
!260 = !DILocation(line: 125, column: 26, scope: !259)
!261 = !DILocation(line: 125, column: 13, scope: !129)
!262 = !DILocation(line: 127, column: 26, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !45, line: 126, column: 9)
!264 = !DILocation(line: 127, column: 13, scope: !263)
!265 = !DILocation(line: 128, column: 9, scope: !263)
!266 = !DILocation(line: 136, column: 69, scope: !116)
!267 = !DILocation(line: 136, column: 5, scope: !116)
!268 = !DILocation(line: 137, column: 1, scope: !116)
!269 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !117, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!270 = !DILocalVariable(name: "data", scope: !269, file: !45, line: 147, type: !42)
!271 = !DILocation(line: 147, column: 12, scope: !269)
!272 = !DILocalVariable(name: "dataBuffer", scope: !269, file: !45, line: 148, type: !122)
!273 = !DILocation(line: 148, column: 10, scope: !269)
!274 = !DILocation(line: 149, column: 12, scope: !269)
!275 = !DILocation(line: 149, column: 10, scope: !269)
!276 = !DILocation(line: 151, column: 12, scope: !269)
!277 = !DILocation(line: 151, column: 5, scope: !269)
!278 = !DILocation(line: 152, column: 73, scope: !269)
!279 = !DILocation(line: 152, column: 5, scope: !269)
!280 = !DILocation(line: 153, column: 1, scope: !269)
!281 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !117, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!282 = !DILocalVariable(name: "data", scope: !281, file: !45, line: 159, type: !42)
!283 = !DILocation(line: 159, column: 12, scope: !281)
!284 = !DILocalVariable(name: "dataBuffer", scope: !281, file: !45, line: 160, type: !122)
!285 = !DILocation(line: 160, column: 10, scope: !281)
!286 = !DILocation(line: 161, column: 12, scope: !281)
!287 = !DILocation(line: 161, column: 10, scope: !281)
!288 = !DILocalVariable(name: "recvResult", scope: !289, file: !45, line: 167, type: !23)
!289 = distinct !DILexicalBlock(scope: !281, file: !45, line: 162, column: 5)
!290 = !DILocation(line: 167, column: 13, scope: !289)
!291 = !DILocalVariable(name: "service", scope: !289, file: !45, line: 168, type: !132)
!292 = !DILocation(line: 168, column: 28, scope: !289)
!293 = !DILocalVariable(name: "replace", scope: !289, file: !45, line: 169, type: !42)
!294 = !DILocation(line: 169, column: 15, scope: !289)
!295 = !DILocalVariable(name: "listenSocket", scope: !289, file: !45, line: 170, type: !23)
!296 = !DILocation(line: 170, column: 16, scope: !289)
!297 = !DILocalVariable(name: "acceptSocket", scope: !289, file: !45, line: 171, type: !23)
!298 = !DILocation(line: 171, column: 16, scope: !289)
!299 = !DILocalVariable(name: "dataLen", scope: !289, file: !45, line: 172, type: !155)
!300 = !DILocation(line: 172, column: 16, scope: !289)
!301 = !DILocation(line: 172, column: 33, scope: !289)
!302 = !DILocation(line: 172, column: 26, scope: !289)
!303 = !DILocation(line: 173, column: 9, scope: !289)
!304 = !DILocation(line: 183, column: 28, scope: !305)
!305 = distinct !DILexicalBlock(scope: !289, file: !45, line: 174, column: 9)
!306 = !DILocation(line: 183, column: 26, scope: !305)
!307 = !DILocation(line: 184, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !45, line: 184, column: 17)
!309 = !DILocation(line: 184, column: 30, scope: !308)
!310 = !DILocation(line: 184, column: 17, scope: !305)
!311 = !DILocation(line: 186, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !45, line: 185, column: 13)
!313 = !DILocation(line: 188, column: 13, scope: !305)
!314 = !DILocation(line: 189, column: 21, scope: !305)
!315 = !DILocation(line: 189, column: 32, scope: !305)
!316 = !DILocation(line: 190, column: 21, scope: !305)
!317 = !DILocation(line: 190, column: 30, scope: !305)
!318 = !DILocation(line: 190, column: 37, scope: !305)
!319 = !DILocation(line: 191, column: 32, scope: !305)
!320 = !DILocation(line: 191, column: 21, scope: !305)
!321 = !DILocation(line: 191, column: 30, scope: !305)
!322 = !DILocation(line: 192, column: 22, scope: !323)
!323 = distinct !DILexicalBlock(scope: !305, file: !45, line: 192, column: 17)
!324 = !DILocation(line: 192, column: 36, scope: !323)
!325 = !DILocation(line: 192, column: 17, scope: !323)
!326 = !DILocation(line: 192, column: 81, scope: !323)
!327 = !DILocation(line: 192, column: 17, scope: !305)
!328 = !DILocation(line: 194, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !323, file: !45, line: 193, column: 13)
!330 = !DILocation(line: 196, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !305, file: !45, line: 196, column: 17)
!332 = !DILocation(line: 196, column: 17, scope: !331)
!333 = !DILocation(line: 196, column: 54, scope: !331)
!334 = !DILocation(line: 196, column: 17, scope: !305)
!335 = !DILocation(line: 198, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !45, line: 197, column: 13)
!337 = !DILocation(line: 200, column: 35, scope: !305)
!338 = !DILocation(line: 200, column: 28, scope: !305)
!339 = !DILocation(line: 200, column: 26, scope: !305)
!340 = !DILocation(line: 201, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !305, file: !45, line: 201, column: 17)
!342 = !DILocation(line: 201, column: 30, scope: !341)
!343 = !DILocation(line: 201, column: 17, scope: !305)
!344 = !DILocation(line: 203, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !45, line: 202, column: 13)
!346 = !DILocation(line: 206, column: 31, scope: !305)
!347 = !DILocation(line: 206, column: 54, scope: !305)
!348 = !DILocation(line: 206, column: 61, scope: !305)
!349 = !DILocation(line: 206, column: 59, scope: !305)
!350 = !DILocation(line: 206, column: 93, scope: !305)
!351 = !DILocation(line: 206, column: 91, scope: !305)
!352 = !DILocation(line: 206, column: 101, scope: !305)
!353 = !DILocation(line: 206, column: 84, scope: !305)
!354 = !DILocation(line: 206, column: 26, scope: !305)
!355 = !DILocation(line: 206, column: 24, scope: !305)
!356 = !DILocation(line: 207, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !305, file: !45, line: 207, column: 17)
!358 = !DILocation(line: 207, column: 28, scope: !357)
!359 = !DILocation(line: 207, column: 44, scope: !357)
!360 = !DILocation(line: 207, column: 47, scope: !357)
!361 = !DILocation(line: 207, column: 58, scope: !357)
!362 = !DILocation(line: 207, column: 17, scope: !305)
!363 = !DILocation(line: 209, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !45, line: 208, column: 13)
!365 = !DILocation(line: 212, column: 13, scope: !305)
!366 = !DILocation(line: 212, column: 18, scope: !305)
!367 = !DILocation(line: 212, column: 28, scope: !305)
!368 = !DILocation(line: 212, column: 39, scope: !305)
!369 = !DILocation(line: 212, column: 26, scope: !305)
!370 = !DILocation(line: 212, column: 55, scope: !305)
!371 = !DILocation(line: 214, column: 30, scope: !305)
!372 = !DILocation(line: 214, column: 23, scope: !305)
!373 = !DILocation(line: 214, column: 21, scope: !305)
!374 = !DILocation(line: 215, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !305, file: !45, line: 215, column: 17)
!376 = !DILocation(line: 215, column: 17, scope: !305)
!377 = !DILocation(line: 217, column: 18, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !45, line: 216, column: 13)
!379 = !DILocation(line: 217, column: 26, scope: !378)
!380 = !DILocation(line: 218, column: 13, scope: !378)
!381 = !DILocation(line: 219, column: 30, scope: !305)
!382 = !DILocation(line: 219, column: 23, scope: !305)
!383 = !DILocation(line: 219, column: 21, scope: !305)
!384 = !DILocation(line: 220, column: 17, scope: !385)
!385 = distinct !DILexicalBlock(scope: !305, file: !45, line: 220, column: 17)
!386 = !DILocation(line: 220, column: 17, scope: !305)
!387 = !DILocation(line: 222, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !45, line: 221, column: 13)
!389 = !DILocation(line: 222, column: 26, scope: !388)
!390 = !DILocation(line: 223, column: 13, scope: !388)
!391 = !DILocation(line: 224, column: 9, scope: !305)
!392 = !DILocation(line: 226, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !289, file: !45, line: 226, column: 13)
!394 = !DILocation(line: 226, column: 26, scope: !393)
!395 = !DILocation(line: 226, column: 13, scope: !289)
!396 = !DILocation(line: 228, column: 26, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !45, line: 227, column: 9)
!398 = !DILocation(line: 228, column: 13, scope: !397)
!399 = !DILocation(line: 229, column: 9, scope: !397)
!400 = !DILocation(line: 230, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !289, file: !45, line: 230, column: 13)
!402 = !DILocation(line: 230, column: 26, scope: !401)
!403 = !DILocation(line: 230, column: 13, scope: !289)
!404 = !DILocation(line: 232, column: 26, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !45, line: 231, column: 9)
!406 = !DILocation(line: 232, column: 13, scope: !405)
!407 = !DILocation(line: 233, column: 9, scope: !405)
!408 = !DILocation(line: 241, column: 73, scope: !281)
!409 = !DILocation(line: 241, column: 5, scope: !281)
!410 = !DILocation(line: 242, column: 1, scope: !281)
!411 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53_good", scope: !45, file: !45, line: 244, type: !117, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!412 = !DILocation(line: 246, column: 5, scope: !411)
!413 = !DILocation(line: 247, column: 5, scope: !411)
!414 = !DILocation(line: 248, column: 1, scope: !411)
!415 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_badSink", scope: !106, file: !106, line: 52, type: !416, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !42}
!418 = !DILocalVariable(name: "data", arg: 1, scope: !415, file: !106, line: 52, type: !42)
!419 = !DILocation(line: 52, column: 77, scope: !415)
!420 = !DILocation(line: 54, column: 69, scope: !415)
!421 = !DILocation(line: 54, column: 5, scope: !415)
!422 = !DILocation(line: 55, column: 1, scope: !415)
!423 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodG2BSink", scope: !106, file: !106, line: 64, type: !416, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!424 = !DILocalVariable(name: "data", arg: 1, scope: !423, file: !106, line: 64, type: !42)
!425 = !DILocation(line: 64, column: 81, scope: !423)
!426 = !DILocation(line: 66, column: 73, scope: !423)
!427 = !DILocation(line: 66, column: 5, scope: !423)
!428 = !DILocation(line: 67, column: 1, scope: !423)
!429 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53b_goodB2GSink", scope: !106, file: !106, line: 72, type: !416, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!430 = !DILocalVariable(name: "data", arg: 1, scope: !429, file: !106, line: 72, type: !42)
!431 = !DILocation(line: 72, column: 81, scope: !429)
!432 = !DILocation(line: 74, column: 73, scope: !429)
!433 = !DILocation(line: 74, column: 5, scope: !429)
!434 = !DILocation(line: 75, column: 1, scope: !429)
!435 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_badSink", scope: !109, file: !109, line: 52, type: !416, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!436 = !DILocalVariable(name: "data", arg: 1, scope: !435, file: !109, line: 52, type: !42)
!437 = !DILocation(line: 52, column: 77, scope: !435)
!438 = !DILocation(line: 54, column: 69, scope: !435)
!439 = !DILocation(line: 54, column: 5, scope: !435)
!440 = !DILocation(line: 55, column: 1, scope: !435)
!441 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodG2BSink", scope: !109, file: !109, line: 64, type: !416, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!442 = !DILocalVariable(name: "data", arg: 1, scope: !441, file: !109, line: 64, type: !42)
!443 = !DILocation(line: 64, column: 81, scope: !441)
!444 = !DILocation(line: 66, column: 73, scope: !441)
!445 = !DILocation(line: 66, column: 5, scope: !441)
!446 = !DILocation(line: 67, column: 1, scope: !441)
!447 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53c_goodB2GSink", scope: !109, file: !109, line: 72, type: !416, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!448 = !DILocalVariable(name: "data", arg: 1, scope: !447, file: !109, line: 72, type: !42)
!449 = !DILocation(line: 72, column: 81, scope: !447)
!450 = !DILocation(line: 74, column: 73, scope: !447)
!451 = !DILocation(line: 74, column: 5, scope: !447)
!452 = !DILocation(line: 75, column: 1, scope: !447)
!453 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_badSink", scope: !111, file: !111, line: 49, type: !416, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!454 = !DILocalVariable(name: "data", arg: 1, scope: !453, file: !111, line: 49, type: !42)
!455 = !DILocation(line: 49, column: 77, scope: !453)
!456 = !DILocalVariable(name: "i", scope: !457, file: !111, line: 52, type: !23)
!457 = distinct !DILexicalBlock(scope: !453, file: !111, line: 51, column: 5)
!458 = !DILocation(line: 52, column: 13, scope: !457)
!459 = !DILocalVariable(name: "n", scope: !457, file: !111, line: 52, type: !23)
!460 = !DILocation(line: 52, column: 16, scope: !457)
!461 = !DILocalVariable(name: "intVariable", scope: !457, file: !111, line: 52, type: !23)
!462 = !DILocation(line: 52, column: 19, scope: !457)
!463 = !DILocation(line: 53, column: 20, scope: !464)
!464 = distinct !DILexicalBlock(scope: !457, file: !111, line: 53, column: 13)
!465 = !DILocation(line: 53, column: 13, scope: !464)
!466 = !DILocation(line: 53, column: 36, scope: !464)
!467 = !DILocation(line: 53, column: 13, scope: !457)
!468 = !DILocation(line: 56, column: 25, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !111, line: 54, column: 9)
!470 = !DILocation(line: 57, column: 20, scope: !471)
!471 = distinct !DILexicalBlock(scope: !469, file: !111, line: 57, column: 13)
!472 = !DILocation(line: 57, column: 18, scope: !471)
!473 = !DILocation(line: 57, column: 25, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !111, line: 57, column: 13)
!475 = !DILocation(line: 57, column: 29, scope: !474)
!476 = !DILocation(line: 57, column: 27, scope: !474)
!477 = !DILocation(line: 57, column: 13, scope: !471)
!478 = !DILocation(line: 60, column: 28, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !111, line: 58, column: 13)
!480 = !DILocation(line: 61, column: 13, scope: !479)
!481 = !DILocation(line: 57, column: 33, scope: !474)
!482 = !DILocation(line: 57, column: 13, scope: !474)
!483 = distinct !{!483, !477, !484, !485}
!484 = !DILocation(line: 61, column: 13, scope: !471)
!485 = !{!"llvm.loop.mustprogress"}
!486 = !DILocation(line: 62, column: 26, scope: !469)
!487 = !DILocation(line: 62, column: 13, scope: !469)
!488 = !DILocation(line: 63, column: 9, scope: !469)
!489 = !DILocation(line: 65, column: 1, scope: !453)
!490 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodG2BSink", scope: !111, file: !111, line: 72, type: !416, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!491 = !DILocalVariable(name: "data", arg: 1, scope: !490, file: !111, line: 72, type: !42)
!492 = !DILocation(line: 72, column: 81, scope: !490)
!493 = !DILocalVariable(name: "i", scope: !494, file: !111, line: 75, type: !23)
!494 = distinct !DILexicalBlock(scope: !490, file: !111, line: 74, column: 5)
!495 = !DILocation(line: 75, column: 13, scope: !494)
!496 = !DILocalVariable(name: "n", scope: !494, file: !111, line: 75, type: !23)
!497 = !DILocation(line: 75, column: 16, scope: !494)
!498 = !DILocalVariable(name: "intVariable", scope: !494, file: !111, line: 75, type: !23)
!499 = !DILocation(line: 75, column: 19, scope: !494)
!500 = !DILocation(line: 76, column: 20, scope: !501)
!501 = distinct !DILexicalBlock(scope: !494, file: !111, line: 76, column: 13)
!502 = !DILocation(line: 76, column: 13, scope: !501)
!503 = !DILocation(line: 76, column: 36, scope: !501)
!504 = !DILocation(line: 76, column: 13, scope: !494)
!505 = !DILocation(line: 79, column: 25, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !111, line: 77, column: 9)
!507 = !DILocation(line: 80, column: 20, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !111, line: 80, column: 13)
!509 = !DILocation(line: 80, column: 18, scope: !508)
!510 = !DILocation(line: 80, column: 25, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !111, line: 80, column: 13)
!512 = !DILocation(line: 80, column: 29, scope: !511)
!513 = !DILocation(line: 80, column: 27, scope: !511)
!514 = !DILocation(line: 80, column: 13, scope: !508)
!515 = !DILocation(line: 83, column: 28, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !111, line: 81, column: 13)
!517 = !DILocation(line: 84, column: 13, scope: !516)
!518 = !DILocation(line: 80, column: 33, scope: !511)
!519 = !DILocation(line: 80, column: 13, scope: !511)
!520 = distinct !{!520, !514, !521, !485}
!521 = !DILocation(line: 84, column: 13, scope: !508)
!522 = !DILocation(line: 85, column: 26, scope: !506)
!523 = !DILocation(line: 85, column: 13, scope: !506)
!524 = !DILocation(line: 86, column: 9, scope: !506)
!525 = !DILocation(line: 88, column: 1, scope: !490)
!526 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_53d_goodB2GSink", scope: !111, file: !111, line: 91, type: !416, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!527 = !DILocalVariable(name: "data", arg: 1, scope: !526, file: !111, line: 91, type: !42)
!528 = !DILocation(line: 91, column: 81, scope: !526)
!529 = !DILocalVariable(name: "i", scope: !530, file: !111, line: 94, type: !23)
!530 = distinct !DILexicalBlock(scope: !526, file: !111, line: 93, column: 5)
!531 = !DILocation(line: 94, column: 13, scope: !530)
!532 = !DILocalVariable(name: "n", scope: !530, file: !111, line: 94, type: !23)
!533 = !DILocation(line: 94, column: 16, scope: !530)
!534 = !DILocalVariable(name: "intVariable", scope: !530, file: !111, line: 94, type: !23)
!535 = !DILocation(line: 94, column: 19, scope: !530)
!536 = !DILocation(line: 95, column: 20, scope: !537)
!537 = distinct !DILexicalBlock(scope: !530, file: !111, line: 95, column: 13)
!538 = !DILocation(line: 95, column: 13, scope: !537)
!539 = !DILocation(line: 95, column: 36, scope: !537)
!540 = !DILocation(line: 95, column: 13, scope: !530)
!541 = !DILocation(line: 98, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !111, line: 98, column: 17)
!543 = distinct !DILexicalBlock(scope: !537, file: !111, line: 96, column: 9)
!544 = !DILocation(line: 98, column: 19, scope: !542)
!545 = !DILocation(line: 98, column: 17, scope: !543)
!546 = !DILocation(line: 100, column: 29, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !111, line: 99, column: 13)
!548 = !DILocation(line: 101, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !547, file: !111, line: 101, column: 17)
!550 = !DILocation(line: 101, column: 22, scope: !549)
!551 = !DILocation(line: 101, column: 29, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !111, line: 101, column: 17)
!553 = !DILocation(line: 101, column: 33, scope: !552)
!554 = !DILocation(line: 101, column: 31, scope: !552)
!555 = !DILocation(line: 101, column: 17, scope: !549)
!556 = !DILocation(line: 104, column: 32, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !111, line: 102, column: 17)
!558 = !DILocation(line: 105, column: 17, scope: !557)
!559 = !DILocation(line: 101, column: 37, scope: !552)
!560 = !DILocation(line: 101, column: 17, scope: !552)
!561 = distinct !{!561, !555, !562, !485}
!562 = !DILocation(line: 105, column: 17, scope: !549)
!563 = !DILocation(line: 106, column: 30, scope: !547)
!564 = !DILocation(line: 106, column: 17, scope: !547)
!565 = !DILocation(line: 107, column: 13, scope: !547)
!566 = !DILocation(line: 108, column: 9, scope: !543)
!567 = !DILocation(line: 110, column: 1, scope: !526)
!568 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !416, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!569 = !DILocalVariable(name: "line", arg: 1, scope: !568, file: !3, line: 11, type: !42)
!570 = !DILocation(line: 11, column: 25, scope: !568)
!571 = !DILocation(line: 13, column: 1, scope: !568)
!572 = !DILocation(line: 14, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !3, line: 14, column: 8)
!574 = !DILocation(line: 14, column: 13, scope: !573)
!575 = !DILocation(line: 14, column: 8, scope: !568)
!576 = !DILocation(line: 16, column: 24, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !3, line: 15, column: 5)
!578 = !DILocation(line: 16, column: 9, scope: !577)
!579 = !DILocation(line: 17, column: 5, scope: !577)
!580 = !DILocation(line: 18, column: 5, scope: !568)
!581 = !DILocation(line: 19, column: 1, scope: !568)
!582 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !416, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!583 = !DILocalVariable(name: "line", arg: 1, scope: !582, file: !3, line: 20, type: !42)
!584 = !DILocation(line: 20, column: 29, scope: !582)
!585 = !DILocation(line: 22, column: 8, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 22, column: 8)
!587 = !DILocation(line: 22, column: 13, scope: !586)
!588 = !DILocation(line: 22, column: 8, scope: !582)
!589 = !DILocation(line: 24, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 23, column: 5)
!591 = !DILocation(line: 24, column: 9, scope: !590)
!592 = !DILocation(line: 25, column: 5, scope: !590)
!593 = !DILocation(line: 26, column: 1, scope: !582)
!594 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !595, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !156, line: 74, baseType: !23)
!599 = !DILocalVariable(name: "line", arg: 1, scope: !594, file: !3, line: 27, type: !597)
!600 = !DILocation(line: 27, column: 29, scope: !594)
!601 = !DILocation(line: 29, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !3, line: 29, column: 8)
!603 = !DILocation(line: 29, column: 13, scope: !602)
!604 = !DILocation(line: 29, column: 8, scope: !594)
!605 = !DILocation(line: 31, column: 27, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 30, column: 5)
!607 = !DILocation(line: 31, column: 9, scope: !606)
!608 = !DILocation(line: 32, column: 5, scope: !606)
!609 = !DILocation(line: 33, column: 1, scope: !594)
!610 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !611, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !23}
!613 = !DILocalVariable(name: "intNumber", arg: 1, scope: !610, file: !3, line: 35, type: !23)
!614 = !DILocation(line: 35, column: 24, scope: !610)
!615 = !DILocation(line: 37, column: 20, scope: !610)
!616 = !DILocation(line: 37, column: 5, scope: !610)
!617 = !DILocation(line: 38, column: 1, scope: !610)
!618 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !619, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621}
!621 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!622 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !618, file: !3, line: 40, type: !621)
!623 = !DILocation(line: 40, column: 28, scope: !618)
!624 = !DILocation(line: 42, column: 21, scope: !618)
!625 = !DILocation(line: 42, column: 5, scope: !618)
!626 = !DILocation(line: 43, column: 1, scope: !618)
!627 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !628, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630}
!630 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!631 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !627, file: !3, line: 45, type: !630)
!632 = !DILocation(line: 45, column: 28, scope: !627)
!633 = !DILocation(line: 47, column: 20, scope: !627)
!634 = !DILocation(line: 47, column: 5, scope: !627)
!635 = !DILocation(line: 48, column: 1, scope: !627)
!636 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !637, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!640 = !DILocalVariable(name: "longNumber", arg: 1, scope: !636, file: !3, line: 50, type: !639)
!641 = !DILocation(line: 50, column: 26, scope: !636)
!642 = !DILocation(line: 52, column: 21, scope: !636)
!643 = !DILocation(line: 52, column: 5, scope: !636)
!644 = !DILocation(line: 53, column: 1, scope: !636)
!645 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !646, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !649, line: 27, baseType: !650)
!649 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !639)
!651 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !645, file: !3, line: 55, type: !648)
!652 = !DILocation(line: 55, column: 33, scope: !645)
!653 = !DILocation(line: 57, column: 29, scope: !645)
!654 = !DILocation(line: 57, column: 5, scope: !645)
!655 = !DILocation(line: 58, column: 1, scope: !645)
!656 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !657, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !155}
!659 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !656, file: !3, line: 60, type: !155)
!660 = !DILocation(line: 60, column: 29, scope: !656)
!661 = !DILocation(line: 62, column: 21, scope: !656)
!662 = !DILocation(line: 62, column: 5, scope: !656)
!663 = !DILocation(line: 63, column: 1, scope: !656)
!664 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !665, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !43}
!667 = !DILocalVariable(name: "charHex", arg: 1, scope: !664, file: !3, line: 65, type: !43)
!668 = !DILocation(line: 65, column: 29, scope: !664)
!669 = !DILocation(line: 67, column: 22, scope: !664)
!670 = !DILocation(line: 67, column: 5, scope: !664)
!671 = !DILocation(line: 68, column: 1, scope: !664)
!672 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !673, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !598}
!675 = !DILocalVariable(name: "wideChar", arg: 1, scope: !672, file: !3, line: 70, type: !598)
!676 = !DILocation(line: 70, column: 29, scope: !672)
!677 = !DILocalVariable(name: "s", scope: !672, file: !3, line: 74, type: !678)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 64, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 2)
!681 = !DILocation(line: 74, column: 13, scope: !672)
!682 = !DILocation(line: 75, column: 16, scope: !672)
!683 = !DILocation(line: 75, column: 9, scope: !672)
!684 = !DILocation(line: 75, column: 14, scope: !672)
!685 = !DILocation(line: 76, column: 9, scope: !672)
!686 = !DILocation(line: 76, column: 14, scope: !672)
!687 = !DILocation(line: 77, column: 21, scope: !672)
!688 = !DILocation(line: 77, column: 5, scope: !672)
!689 = !DILocation(line: 78, column: 1, scope: !672)
!690 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !691, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !7}
!693 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !690, file: !3, line: 80, type: !7)
!694 = !DILocation(line: 80, column: 33, scope: !690)
!695 = !DILocation(line: 82, column: 20, scope: !690)
!696 = !DILocation(line: 82, column: 5, scope: !690)
!697 = !DILocation(line: 83, column: 1, scope: !690)
!698 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !699, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !25}
!701 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !698, file: !3, line: 85, type: !25)
!702 = !DILocation(line: 85, column: 45, scope: !698)
!703 = !DILocation(line: 87, column: 22, scope: !698)
!704 = !DILocation(line: 87, column: 5, scope: !698)
!705 = !DILocation(line: 88, column: 1, scope: !698)
!706 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !707, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !709}
!709 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!710 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !706, file: !3, line: 90, type: !709)
!711 = !DILocation(line: 90, column: 29, scope: !706)
!712 = !DILocation(line: 92, column: 20, scope: !706)
!713 = !DILocation(line: 92, column: 5, scope: !706)
!714 = !DILocation(line: 93, column: 1, scope: !706)
!715 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !716, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !720, line: 100, baseType: !721)
!720 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_153/source_code")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !720, line: 96, size: 64, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !721, file: !720, line: 98, baseType: !23, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !721, file: !720, line: 99, baseType: !23, size: 32, offset: 32)
!725 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !715, file: !3, line: 95, type: !718)
!726 = !DILocation(line: 95, column: 40, scope: !715)
!727 = !DILocation(line: 97, column: 26, scope: !715)
!728 = !DILocation(line: 97, column: 47, scope: !715)
!729 = !DILocation(line: 97, column: 55, scope: !715)
!730 = !DILocation(line: 97, column: 76, scope: !715)
!731 = !DILocation(line: 97, column: 5, scope: !715)
!732 = !DILocation(line: 98, column: 1, scope: !715)
!733 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !734, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !736, !155}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!737 = !DILocalVariable(name: "bytes", arg: 1, scope: !733, file: !3, line: 100, type: !736)
!738 = !DILocation(line: 100, column: 38, scope: !733)
!739 = !DILocalVariable(name: "numBytes", arg: 2, scope: !733, file: !3, line: 100, type: !155)
!740 = !DILocation(line: 100, column: 52, scope: !733)
!741 = !DILocalVariable(name: "i", scope: !733, file: !3, line: 102, type: !155)
!742 = !DILocation(line: 102, column: 12, scope: !733)
!743 = !DILocation(line: 103, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !733, file: !3, line: 103, column: 5)
!745 = !DILocation(line: 103, column: 10, scope: !744)
!746 = !DILocation(line: 103, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !3, line: 103, column: 5)
!748 = !DILocation(line: 103, column: 21, scope: !747)
!749 = !DILocation(line: 103, column: 19, scope: !747)
!750 = !DILocation(line: 103, column: 5, scope: !744)
!751 = !DILocation(line: 105, column: 24, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 104, column: 5)
!753 = !DILocation(line: 105, column: 30, scope: !752)
!754 = !DILocation(line: 105, column: 9, scope: !752)
!755 = !DILocation(line: 106, column: 5, scope: !752)
!756 = !DILocation(line: 103, column: 31, scope: !747)
!757 = !DILocation(line: 103, column: 5, scope: !747)
!758 = distinct !{!758, !750, !759, !485}
!759 = !DILocation(line: 106, column: 5, scope: !744)
!760 = !DILocation(line: 107, column: 5, scope: !733)
!761 = !DILocation(line: 108, column: 1, scope: !733)
!762 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !763, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DISubroutineType(types: !764)
!764 = !{!155, !736, !155, !42}
!765 = !DILocalVariable(name: "bytes", arg: 1, scope: !762, file: !3, line: 113, type: !736)
!766 = !DILocation(line: 113, column: 39, scope: !762)
!767 = !DILocalVariable(name: "numBytes", arg: 2, scope: !762, file: !3, line: 113, type: !155)
!768 = !DILocation(line: 113, column: 53, scope: !762)
!769 = !DILocalVariable(name: "hex", arg: 3, scope: !762, file: !3, line: 113, type: !42)
!770 = !DILocation(line: 113, column: 71, scope: !762)
!771 = !DILocalVariable(name: "numWritten", scope: !762, file: !3, line: 115, type: !155)
!772 = !DILocation(line: 115, column: 12, scope: !762)
!773 = !DILocation(line: 121, column: 5, scope: !762)
!774 = !DILocation(line: 121, column: 12, scope: !762)
!775 = !DILocation(line: 121, column: 25, scope: !762)
!776 = !DILocation(line: 121, column: 23, scope: !762)
!777 = !DILocation(line: 121, column: 34, scope: !762)
!778 = !DILocation(line: 121, column: 37, scope: !762)
!779 = !DILocation(line: 121, column: 67, scope: !762)
!780 = !DILocation(line: 121, column: 70, scope: !762)
!781 = !DILocation(line: 0, scope: !762)
!782 = !DILocalVariable(name: "byte", scope: !783, file: !3, line: 123, type: !23)
!783 = distinct !DILexicalBlock(scope: !762, file: !3, line: 122, column: 5)
!784 = !DILocation(line: 123, column: 13, scope: !783)
!785 = !DILocation(line: 124, column: 17, scope: !783)
!786 = !DILocation(line: 124, column: 25, scope: !783)
!787 = !DILocation(line: 124, column: 23, scope: !783)
!788 = !DILocation(line: 124, column: 9, scope: !783)
!789 = !DILocation(line: 125, column: 45, scope: !783)
!790 = !DILocation(line: 125, column: 29, scope: !783)
!791 = !DILocation(line: 125, column: 9, scope: !783)
!792 = !DILocation(line: 125, column: 15, scope: !783)
!793 = !DILocation(line: 125, column: 27, scope: !783)
!794 = !DILocation(line: 126, column: 9, scope: !783)
!795 = distinct !{!795, !773, !796, !485}
!796 = !DILocation(line: 127, column: 5, scope: !762)
!797 = !DILocation(line: 129, column: 12, scope: !762)
!798 = !DILocation(line: 129, column: 5, scope: !762)
!799 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !800, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!800 = !DISubroutineType(types: !801)
!801 = !{!155, !736, !155, !597}
!802 = !DILocalVariable(name: "bytes", arg: 1, scope: !799, file: !3, line: 135, type: !736)
!803 = !DILocation(line: 135, column: 41, scope: !799)
!804 = !DILocalVariable(name: "numBytes", arg: 2, scope: !799, file: !3, line: 135, type: !155)
!805 = !DILocation(line: 135, column: 55, scope: !799)
!806 = !DILocalVariable(name: "hex", arg: 3, scope: !799, file: !3, line: 135, type: !597)
!807 = !DILocation(line: 135, column: 76, scope: !799)
!808 = !DILocalVariable(name: "numWritten", scope: !799, file: !3, line: 137, type: !155)
!809 = !DILocation(line: 137, column: 12, scope: !799)
!810 = !DILocation(line: 143, column: 5, scope: !799)
!811 = !DILocation(line: 143, column: 12, scope: !799)
!812 = !DILocation(line: 143, column: 25, scope: !799)
!813 = !DILocation(line: 143, column: 23, scope: !799)
!814 = !DILocation(line: 143, column: 34, scope: !799)
!815 = !DILocation(line: 143, column: 47, scope: !799)
!816 = !DILocation(line: 143, column: 55, scope: !799)
!817 = !DILocation(line: 143, column: 53, scope: !799)
!818 = !DILocation(line: 143, column: 37, scope: !799)
!819 = !DILocation(line: 143, column: 68, scope: !799)
!820 = !DILocation(line: 143, column: 81, scope: !799)
!821 = !DILocation(line: 143, column: 89, scope: !799)
!822 = !DILocation(line: 143, column: 87, scope: !799)
!823 = !DILocation(line: 143, column: 100, scope: !799)
!824 = !DILocation(line: 143, column: 71, scope: !799)
!825 = !DILocation(line: 0, scope: !799)
!826 = !DILocalVariable(name: "byte", scope: !827, file: !3, line: 145, type: !23)
!827 = distinct !DILexicalBlock(scope: !799, file: !3, line: 144, column: 5)
!828 = !DILocation(line: 145, column: 13, scope: !827)
!829 = !DILocation(line: 146, column: 18, scope: !827)
!830 = !DILocation(line: 146, column: 26, scope: !827)
!831 = !DILocation(line: 146, column: 24, scope: !827)
!832 = !DILocation(line: 146, column: 9, scope: !827)
!833 = !DILocation(line: 147, column: 45, scope: !827)
!834 = !DILocation(line: 147, column: 29, scope: !827)
!835 = !DILocation(line: 147, column: 9, scope: !827)
!836 = !DILocation(line: 147, column: 15, scope: !827)
!837 = !DILocation(line: 147, column: 27, scope: !827)
!838 = !DILocation(line: 148, column: 9, scope: !827)
!839 = distinct !{!839, !810, !840, !485}
!840 = !DILocation(line: 149, column: 5, scope: !799)
!841 = !DILocation(line: 151, column: 12, scope: !799)
!842 = !DILocation(line: 151, column: 5, scope: !799)
!843 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !844, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DISubroutineType(types: !845)
!845 = !{!23}
!846 = !DILocation(line: 158, column: 5, scope: !843)
!847 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !844, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 163, column: 5, scope: !847)
!849 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !844, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 168, column: 13, scope: !849)
!851 = !DILocation(line: 168, column: 20, scope: !849)
!852 = !DILocation(line: 168, column: 5, scope: !849)
!853 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !117, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!854 = !DILocation(line: 187, column: 16, scope: !853)
!855 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !117, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!856 = !DILocation(line: 188, column: 16, scope: !855)
!857 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !117, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DILocation(line: 189, column: 16, scope: !857)
!859 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !117, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DILocation(line: 190, column: 16, scope: !859)
!861 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !117, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!862 = !DILocation(line: 191, column: 16, scope: !861)
!863 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !117, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 192, column: 16, scope: !863)
!865 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !117, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 193, column: 16, scope: !865)
!867 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !117, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 194, column: 16, scope: !867)
!869 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !117, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 195, column: 16, scope: !869)
!871 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !117, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!872 = !DILocation(line: 198, column: 15, scope: !871)
!873 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !117, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 199, column: 15, scope: !873)
!875 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !117, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 200, column: 15, scope: !875)
!877 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !117, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 201, column: 15, scope: !877)
!879 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !117, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 202, column: 15, scope: !879)
!881 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !117, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 203, column: 15, scope: !881)
!883 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !117, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 204, column: 15, scope: !883)
!885 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !117, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 205, column: 15, scope: !885)
!887 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !117, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 206, column: 15, scope: !887)
