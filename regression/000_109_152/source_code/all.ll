; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.14 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.17 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14.18 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52_bad() #0 !dbg !114 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !119, metadata !DIExpression()), !dbg !123
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !123
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !124
  store i8* %arraydecay, i8** %data, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !126, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !129, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %listenSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 -1, i32* %acceptSocket, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !152, metadata !DIExpression()), !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i64 @strlen(i8* %1) #7, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  br label %do.body, !dbg !159

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !160
  store i32 %call1, i32* %listenSocket, align 4, !dbg !162
  %2 = load i32, i32* %listenSocket, align 4, !dbg !163
  %cmp = icmp eq i32 %2, -1, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !166

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !167

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !169
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !170
  store i16 2, i16* %sin_family, align 4, !dbg !171
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !172
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !173
  store i32 0, i32* %s_addr, align 4, !dbg !174
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !175
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !176
  store i16 %call2, i16* %sin_port, align 2, !dbg !177
  %4 = load i32, i32* %listenSocket, align 4, !dbg !178
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !180
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !181
  %cmp4 = icmp eq i32 %call3, -1, !dbg !182
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !183

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !184

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !186
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !188
  %cmp8 = icmp eq i32 %call7, -1, !dbg !189
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !190

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !191

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !193
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !194
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !195
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !196
  %cmp12 = icmp eq i32 %8, -1, !dbg !198
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !199

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !200

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !202
  %10 = load i8*, i8** %data, align 8, !dbg !203
  %11 = load i64, i64* %dataLen, align 8, !dbg !204
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !205
  %12 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub = sub i64 100, %12, !dbg !207
  %sub15 = sub i64 %sub, 1, !dbg !208
  %mul = mul i64 1, %sub15, !dbg !209
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !210
  %conv = trunc i64 %call16 to i32, !dbg !210
  store i32 %conv, i32* %recvResult, align 4, !dbg !211
  %13 = load i32, i32* %recvResult, align 4, !dbg !212
  %cmp17 = icmp eq i32 %13, -1, !dbg !214
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !215

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !216
  %cmp19 = icmp eq i32 %14, 0, !dbg !217
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !218

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !219

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !221
  %16 = load i64, i64* %dataLen, align 8, !dbg !222
  %17 = load i32, i32* %recvResult, align 4, !dbg !223
  %conv23 = sext i32 %17 to i64, !dbg !223
  %div = udiv i64 %conv23, 1, !dbg !224
  %add = add i64 %16, %div, !dbg !225
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !221
  store i8 0, i8* %arrayidx, align 1, !dbg !226
  %18 = load i8*, i8** %data, align 8, !dbg !227
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !228
  store i8* %call24, i8** %replace, align 8, !dbg !229
  %19 = load i8*, i8** %replace, align 8, !dbg !230
  %tobool = icmp ne i8* %19, null, !dbg !230
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !232

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !233
  store i8 0, i8* %20, align 1, !dbg !235
  br label %if.end26, !dbg !236

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !237
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !238
  store i8* %call27, i8** %replace, align 8, !dbg !239
  %22 = load i8*, i8** %replace, align 8, !dbg !240
  %tobool28 = icmp ne i8* %22, null, !dbg !240
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !242

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !243
  store i8 0, i8* %23, align 1, !dbg !245
  br label %if.end30, !dbg !246

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !247

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !248
  %cmp31 = icmp ne i32 %24, -1, !dbg !250
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !251

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !252
  %call34 = call i32 @close(i32 %25), !dbg !254
  br label %if.end35, !dbg !255

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !256
  %cmp36 = icmp ne i32 %26, -1, !dbg !258
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !259

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !260
  %call39 = call i32 @close(i32 %27), !dbg !262
  br label %if.end40, !dbg !263

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !264
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_badSink(i8* %28), !dbg !265
  ret void, !dbg !266
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
define dso_local void @goodG2B() #0 !dbg !267 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !271
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !271
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !272
  store i8* %arraydecay, i8** %data, align 8, !dbg !273
  %1 = load i8*, i8** %data, align 8, !dbg !274
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !275
  %2 = load i8*, i8** %data, align 8, !dbg !276
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodG2BSink(i8* %2), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !279 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !283
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !283
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !284
  store i8* %arraydecay, i8** %data, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !293, metadata !DIExpression()), !dbg !294
  store i32 -1, i32* %listenSocket, align 4, !dbg !294
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !295, metadata !DIExpression()), !dbg !296
  store i32 -1, i32* %acceptSocket, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !297, metadata !DIExpression()), !dbg !298
  %1 = load i8*, i8** %data, align 8, !dbg !299
  %call = call i64 @strlen(i8* %1) #7, !dbg !300
  store i64 %call, i64* %dataLen, align 8, !dbg !298
  br label %do.body, !dbg !301

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !302
  store i32 %call1, i32* %listenSocket, align 4, !dbg !304
  %2 = load i32, i32* %listenSocket, align 4, !dbg !305
  %cmp = icmp eq i32 %2, -1, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !309

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !311
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !311
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !312
  store i16 2, i16* %sin_family, align 4, !dbg !313
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !314
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !315
  store i32 0, i32* %s_addr, align 4, !dbg !316
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !317
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !318
  store i16 %call2, i16* %sin_port, align 2, !dbg !319
  %4 = load i32, i32* %listenSocket, align 4, !dbg !320
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !322
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !323
  %cmp4 = icmp eq i32 %call3, -1, !dbg !324
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !325

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !326

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !328
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !330
  %cmp8 = icmp eq i32 %call7, -1, !dbg !331
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !332

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !333

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !335
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !336
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !337
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !338
  %cmp12 = icmp eq i32 %8, -1, !dbg !340
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !341

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !342

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !344
  %10 = load i8*, i8** %data, align 8, !dbg !345
  %11 = load i64, i64* %dataLen, align 8, !dbg !346
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !347
  %12 = load i64, i64* %dataLen, align 8, !dbg !348
  %sub = sub i64 100, %12, !dbg !349
  %sub15 = sub i64 %sub, 1, !dbg !350
  %mul = mul i64 1, %sub15, !dbg !351
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !352
  %conv = trunc i64 %call16 to i32, !dbg !352
  store i32 %conv, i32* %recvResult, align 4, !dbg !353
  %13 = load i32, i32* %recvResult, align 4, !dbg !354
  %cmp17 = icmp eq i32 %13, -1, !dbg !356
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !357

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !358
  %cmp19 = icmp eq i32 %14, 0, !dbg !359
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !360

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !361

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !363
  %16 = load i64, i64* %dataLen, align 8, !dbg !364
  %17 = load i32, i32* %recvResult, align 4, !dbg !365
  %conv23 = sext i32 %17 to i64, !dbg !365
  %div = udiv i64 %conv23, 1, !dbg !366
  %add = add i64 %16, %div, !dbg !367
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !363
  store i8 0, i8* %arrayidx, align 1, !dbg !368
  %18 = load i8*, i8** %data, align 8, !dbg !369
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !370
  store i8* %call24, i8** %replace, align 8, !dbg !371
  %19 = load i8*, i8** %replace, align 8, !dbg !372
  %tobool = icmp ne i8* %19, null, !dbg !372
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !374

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !375
  store i8 0, i8* %20, align 1, !dbg !377
  br label %if.end26, !dbg !378

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !379
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !380
  store i8* %call27, i8** %replace, align 8, !dbg !381
  %22 = load i8*, i8** %replace, align 8, !dbg !382
  %tobool28 = icmp ne i8* %22, null, !dbg !382
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !384

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !385
  store i8 0, i8* %23, align 1, !dbg !387
  br label %if.end30, !dbg !388

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !389

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !390
  %cmp31 = icmp ne i32 %24, -1, !dbg !392
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !393

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !394
  %call34 = call i32 @close(i32 %25), !dbg !396
  br label %if.end35, !dbg !397

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !398
  %cmp36 = icmp ne i32 %26, -1, !dbg !400
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !401

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !402
  %call39 = call i32 @close(i32 %27), !dbg !404
  br label %if.end40, !dbg !405

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !406
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodB2GSink(i8* %28), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52_good() #0 !dbg !409 {
entry:
  call void @goodG2B(), !dbg !410
  call void @goodB2G(), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_badSink(i8* %data) #0 !dbg !413 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i8*, i8** %data.addr, align 8, !dbg !418
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_badSink(i8* %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodG2BSink(i8* %data) #0 !dbg !421 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8*, i8** %data.addr, align 8, !dbg !424
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodG2BSink(i8* %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodB2GSink(i8* %data) #0 !dbg !427 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i8*, i8** %data.addr, align 8, !dbg !430
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodB2GSink(i8* %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_badSink(i8* %data) #0 !dbg !433 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %i, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %n, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i8*, i8** %data.addr, align 8, !dbg !443
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !445
  %cmp = icmp eq i32 %call, 1, !dbg !446
  br i1 %cmp, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !448
  store i32 0, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !452

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !453
  %2 = load i32, i32* %n, align 4, !dbg !455
  %cmp1 = icmp slt i32 %1, %2, !dbg !456
  br i1 %cmp1, label %for.body, label %for.end, !dbg !457

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !458
  %inc = add nsw i32 %3, 1, !dbg !458
  store i32 %inc, i32* %intVariable, align 4, !dbg !458
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !461
  %inc2 = add nsw i32 %4, 1, !dbg !461
  store i32 %inc2, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !466
  call void @printIntLine(i32 %5), !dbg !467
  br label %if.end, !dbg !468

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !469
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodG2BSink(i8* %data) #0 !dbg !470 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %i, metadata !473, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %n, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load i8*, i8** %data.addr, align 8, !dbg !480
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !482
  %cmp = icmp eq i32 %call, 1, !dbg !483
  br i1 %cmp, label %if.then, label %if.end, !dbg !484

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !485
  store i32 0, i32* %i, align 4, !dbg !487
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !490
  %2 = load i32, i32* %n, align 4, !dbg !492
  %cmp1 = icmp slt i32 %1, %2, !dbg !493
  br i1 %cmp1, label %for.body, label %for.end, !dbg !494

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !495
  %inc = add nsw i32 %3, 1, !dbg !495
  store i32 %inc, i32* %intVariable, align 4, !dbg !495
  br label %for.inc, !dbg !497

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !498
  %inc2 = add nsw i32 %4, 1, !dbg !498
  store i32 %inc2, i32* %i, align 4, !dbg !498
  br label %for.cond, !dbg !499, !llvm.loop !500

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !502
  call void @printIntLine(i32 %5), !dbg !503
  br label %if.end, !dbg !504

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodB2GSink(i8* %data) #0 !dbg !506 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata i32* %i, metadata !509, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata i32* %n, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i8*, i8** %data.addr, align 8, !dbg !516
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !518
  %cmp = icmp eq i32 %call, 1, !dbg !519
  br i1 %cmp, label %if.then, label %if.end5, !dbg !520

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !521
  %cmp1 = icmp slt i32 %1, 10000, !dbg !524
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !525

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !526
  store i32 0, i32* %i, align 4, !dbg !528
  br label %for.cond, !dbg !530

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !531
  %3 = load i32, i32* %n, align 4, !dbg !533
  %cmp3 = icmp slt i32 %2, %3, !dbg !534
  br i1 %cmp3, label %for.body, label %for.end, !dbg !535

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !536
  %inc = add nsw i32 %4, 1, !dbg !536
  store i32 %inc, i32* %intVariable, align 4, !dbg !536
  br label %for.inc, !dbg !538

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !539
  %inc4 = add nsw i32 %5, 1, !dbg !539
  store i32 %inc4, i32* %i, align 4, !dbg !539
  br label %for.cond, !dbg !540, !llvm.loop !541

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !543
  call void @printIntLine(i32 %6), !dbg !544
  br label %if.end, !dbg !545

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !546

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !548 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)), !dbg !551
  %0 = load i8*, i8** %line.addr, align 8, !dbg !552
  %cmp = icmp ne i8* %0, null, !dbg !554
  br i1 %cmp, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !556
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !558
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !560
  ret void, !dbg !561
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !562 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i8*, i8** %line.addr, align 8, !dbg !565
  %cmp = icmp ne i8* %0, null, !dbg !567
  br i1 %cmp, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !571
  br label %if.end, !dbg !572

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !574 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i32*, i32** %line.addr, align 8, !dbg !581
  %cmp = icmp ne i32* %0, null, !dbg !583
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !585
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !587
  br label %if.end, !dbg !588

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !589
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !590 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !598 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !604
  %conv = sext i16 %0 to i32, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !607 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !613
  %conv = fpext float %0 to double, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !616 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !625 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !636 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !639, metadata !DIExpression()), !dbg !640
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !644 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !649
  %conv = sext i8 %0 to i32, !dbg !649
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.17, i64 0, i64 0), i32 %conv), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !652 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !657, metadata !DIExpression()), !dbg !661
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !662
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !663
  store i32 %0, i32* %arrayidx, align 4, !dbg !664
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !665
  store i32 0, i32* %arrayidx1, align 4, !dbg !666
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !667
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !670 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !673, metadata !DIExpression()), !dbg !674
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !675
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !676
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !678 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !683
  %conv = zext i8 %0 to i32, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.17, i64 0, i64 0), i32 %conv), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !686 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !692
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !695 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !705, metadata !DIExpression()), !dbg !706
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !707
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !708
  %1 = load i32, i32* %intOne, align 4, !dbg !708
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !709
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !710
  %3 = load i32, i32* %intTwo, align 4, !dbg !710
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !713 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata i64* %i, metadata !721, metadata !DIExpression()), !dbg !722
  store i64 0, i64* %i, align 8, !dbg !723
  br label %for.cond, !dbg !725

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !726
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !728
  %cmp = icmp ult i64 %0, %1, !dbg !729
  br i1 %cmp, label %for.body, label %for.end, !dbg !730

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !731
  %3 = load i64, i64* %i, align 8, !dbg !733
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !731
  %4 = load i8, i8* %arrayidx, align 1, !dbg !731
  %conv = zext i8 %4 to i32, !dbg !731
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.18, i64 0, i64 0), i32 %conv), !dbg !734
  br label %for.inc, !dbg !735

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !736
  %inc = add i64 %5, 1, !dbg !736
  store i64 %inc, i64* %i, align 8, !dbg !736
  br label %for.cond, !dbg !737, !llvm.loop !738

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !740
  ret void, !dbg !741
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !742 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !747, metadata !DIExpression()), !dbg !748
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !751, metadata !DIExpression()), !dbg !752
  store i64 0, i64* %numWritten, align 8, !dbg !752
  br label %while.cond, !dbg !753

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !754
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !755
  %cmp = icmp ult i64 %0, %1, !dbg !756
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !757

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !758
  %2 = load i16*, i16** %call, align 8, !dbg !758
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !758
  %4 = load i64, i64* %numWritten, align 8, !dbg !758
  %mul = mul i64 2, %4, !dbg !758
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !758
  %5 = load i8, i8* %arrayidx, align 1, !dbg !758
  %conv = sext i8 %5 to i32, !dbg !758
  %idxprom = sext i32 %conv to i64, !dbg !758
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !758
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !758
  %conv2 = zext i16 %6 to i32, !dbg !758
  %and = and i32 %conv2, 4096, !dbg !758
  %tobool = icmp ne i32 %and, 0, !dbg !758
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !759

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !760
  %7 = load i16*, i16** %call3, align 8, !dbg !760
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !760
  %9 = load i64, i64* %numWritten, align 8, !dbg !760
  %mul4 = mul i64 2, %9, !dbg !760
  %add = add i64 %mul4, 1, !dbg !760
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !760
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !760
  %conv6 = sext i8 %10 to i32, !dbg !760
  %idxprom7 = sext i32 %conv6 to i64, !dbg !760
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !760
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !760
  %conv9 = zext i16 %11 to i32, !dbg !760
  %and10 = and i32 %conv9, 4096, !dbg !760
  %tobool11 = icmp ne i32 %and10, 0, !dbg !759
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !761
  br i1 %12, label %while.body, label %while.end, !dbg !753

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !762, metadata !DIExpression()), !dbg !764
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !765
  %14 = load i64, i64* %numWritten, align 8, !dbg !766
  %mul12 = mul i64 2, %14, !dbg !767
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !765
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.18, i64 0, i64 0), i32* %byte) #8, !dbg !768
  %15 = load i32, i32* %byte, align 4, !dbg !769
  %conv15 = trunc i32 %15 to i8, !dbg !770
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !771
  %17 = load i64, i64* %numWritten, align 8, !dbg !772
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !771
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !773
  %18 = load i64, i64* %numWritten, align 8, !dbg !774
  %inc = add i64 %18, 1, !dbg !774
  store i64 %inc, i64* %numWritten, align 8, !dbg !774
  br label %while.cond, !dbg !753, !llvm.loop !775

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !777
  ret i64 %19, !dbg !778
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !779 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !782, metadata !DIExpression()), !dbg !783
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !784, metadata !DIExpression()), !dbg !785
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !786, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !788, metadata !DIExpression()), !dbg !789
  store i64 0, i64* %numWritten, align 8, !dbg !789
  br label %while.cond, !dbg !790

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !791
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !792
  %cmp = icmp ult i64 %0, %1, !dbg !793
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !794

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !795
  %3 = load i64, i64* %numWritten, align 8, !dbg !796
  %mul = mul i64 2, %3, !dbg !797
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !795
  %4 = load i32, i32* %arrayidx, align 4, !dbg !795
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !798
  %tobool = icmp ne i32 %call, 0, !dbg !798
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !799

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !800
  %6 = load i64, i64* %numWritten, align 8, !dbg !801
  %mul1 = mul i64 2, %6, !dbg !802
  %add = add i64 %mul1, 1, !dbg !803
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !800
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !800
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !804
  %tobool4 = icmp ne i32 %call3, 0, !dbg !799
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !805
  br i1 %8, label %while.body, label %while.end, !dbg !790

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !806, metadata !DIExpression()), !dbg !808
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !809
  %10 = load i64, i64* %numWritten, align 8, !dbg !810
  %mul5 = mul i64 2, %10, !dbg !811
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !809
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !812
  %11 = load i32, i32* %byte, align 4, !dbg !813
  %conv = trunc i32 %11 to i8, !dbg !814
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !815
  %13 = load i64, i64* %numWritten, align 8, !dbg !816
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !815
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !817
  %14 = load i64, i64* %numWritten, align 8, !dbg !818
  %inc = add i64 %14, 1, !dbg !818
  store i64 %inc, i64* %numWritten, align 8, !dbg !818
  br label %while.cond, !dbg !790, !llvm.loop !819

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !821
  ret i64 %15, !dbg !822
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !823 {
entry:
  ret i32 1, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !827 {
entry:
  ret i32 0, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !829 {
entry:
  %call = call i32 @rand() #8, !dbg !830
  %rem = srem i32 %call, 2, !dbg !831
  ret i32 %rem, !dbg !832
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !849 {
entry:
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !851 {
entry:
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !857 {
entry:
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !859 {
entry:
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !861 {
entry:
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !863 {
entry:
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !865 {
entry:
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !867 {
entry:
  ret void, !dbg !868
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

!llvm.dbg.cu = !{!44, !105, !108, !2}
!llvm.ident = !{!110, !110, !110, !110}
!llvm.module.flags = !{!111, !112, !113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_152/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_152/source_code")
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
!106 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_152/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_152/source_code")
!110 = !{!"clang version 12.0.0"}
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52_bad", scope: !45, file: !45, line: 52, type: !115, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!115 = !DISubroutineType(types: !116)
!116 = !{null}
!117 = !DILocalVariable(name: "data", scope: !114, file: !45, line: 54, type: !42)
!118 = !DILocation(line: 54, column: 12, scope: !114)
!119 = !DILocalVariable(name: "dataBuffer", scope: !114, file: !45, line: 55, type: !120)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 100)
!123 = !DILocation(line: 55, column: 10, scope: !114)
!124 = !DILocation(line: 56, column: 12, scope: !114)
!125 = !DILocation(line: 56, column: 10, scope: !114)
!126 = !DILocalVariable(name: "recvResult", scope: !127, file: !45, line: 62, type: !23)
!127 = distinct !DILexicalBlock(scope: !114, file: !45, line: 57, column: 5)
!128 = !DILocation(line: 62, column: 13, scope: !127)
!129 = !DILocalVariable(name: "service", scope: !127, file: !45, line: 63, type: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !131)
!131 = !{!132, !133, !137, !141}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !130, file: !60, line: 240, baseType: !99, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !130, file: !60, line: 241, baseType: !134, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !130, file: !60, line: 242, baseType: !138, size: 32, offset: 32)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !138, file: !60, line: 33, baseType: !89, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !130, file: !60, line: 245, baseType: !142, size: 64, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DILocation(line: 63, column: 28, scope: !127)
!146 = !DILocalVariable(name: "replace", scope: !127, file: !45, line: 64, type: !42)
!147 = !DILocation(line: 64, column: 15, scope: !127)
!148 = !DILocalVariable(name: "listenSocket", scope: !127, file: !45, line: 65, type: !23)
!149 = !DILocation(line: 65, column: 16, scope: !127)
!150 = !DILocalVariable(name: "acceptSocket", scope: !127, file: !45, line: 66, type: !23)
!151 = !DILocation(line: 66, column: 16, scope: !127)
!152 = !DILocalVariable(name: "dataLen", scope: !127, file: !45, line: 67, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 46, baseType: !155)
!154 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!155 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!156 = !DILocation(line: 67, column: 16, scope: !127)
!157 = !DILocation(line: 67, column: 33, scope: !127)
!158 = !DILocation(line: 67, column: 26, scope: !127)
!159 = !DILocation(line: 68, column: 9, scope: !127)
!160 = !DILocation(line: 78, column: 28, scope: !161)
!161 = distinct !DILexicalBlock(scope: !127, file: !45, line: 69, column: 9)
!162 = !DILocation(line: 78, column: 26, scope: !161)
!163 = !DILocation(line: 79, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !45, line: 79, column: 17)
!165 = !DILocation(line: 79, column: 30, scope: !164)
!166 = !DILocation(line: 79, column: 17, scope: !161)
!167 = !DILocation(line: 81, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 80, column: 13)
!169 = !DILocation(line: 83, column: 13, scope: !161)
!170 = !DILocation(line: 84, column: 21, scope: !161)
!171 = !DILocation(line: 84, column: 32, scope: !161)
!172 = !DILocation(line: 85, column: 21, scope: !161)
!173 = !DILocation(line: 85, column: 30, scope: !161)
!174 = !DILocation(line: 85, column: 37, scope: !161)
!175 = !DILocation(line: 86, column: 32, scope: !161)
!176 = !DILocation(line: 86, column: 21, scope: !161)
!177 = !DILocation(line: 86, column: 30, scope: !161)
!178 = !DILocation(line: 87, column: 22, scope: !179)
!179 = distinct !DILexicalBlock(scope: !161, file: !45, line: 87, column: 17)
!180 = !DILocation(line: 87, column: 36, scope: !179)
!181 = !DILocation(line: 87, column: 17, scope: !179)
!182 = !DILocation(line: 87, column: 81, scope: !179)
!183 = !DILocation(line: 87, column: 17, scope: !161)
!184 = !DILocation(line: 89, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !45, line: 88, column: 13)
!186 = !DILocation(line: 91, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !161, file: !45, line: 91, column: 17)
!188 = !DILocation(line: 91, column: 17, scope: !187)
!189 = !DILocation(line: 91, column: 54, scope: !187)
!190 = !DILocation(line: 91, column: 17, scope: !161)
!191 = !DILocation(line: 93, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !45, line: 92, column: 13)
!193 = !DILocation(line: 95, column: 35, scope: !161)
!194 = !DILocation(line: 95, column: 28, scope: !161)
!195 = !DILocation(line: 95, column: 26, scope: !161)
!196 = !DILocation(line: 96, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !161, file: !45, line: 96, column: 17)
!198 = !DILocation(line: 96, column: 30, scope: !197)
!199 = !DILocation(line: 96, column: 17, scope: !161)
!200 = !DILocation(line: 98, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !45, line: 97, column: 13)
!202 = !DILocation(line: 101, column: 31, scope: !161)
!203 = !DILocation(line: 101, column: 54, scope: !161)
!204 = !DILocation(line: 101, column: 61, scope: !161)
!205 = !DILocation(line: 101, column: 59, scope: !161)
!206 = !DILocation(line: 101, column: 93, scope: !161)
!207 = !DILocation(line: 101, column: 91, scope: !161)
!208 = !DILocation(line: 101, column: 101, scope: !161)
!209 = !DILocation(line: 101, column: 84, scope: !161)
!210 = !DILocation(line: 101, column: 26, scope: !161)
!211 = !DILocation(line: 101, column: 24, scope: !161)
!212 = !DILocation(line: 102, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !161, file: !45, line: 102, column: 17)
!214 = !DILocation(line: 102, column: 28, scope: !213)
!215 = !DILocation(line: 102, column: 44, scope: !213)
!216 = !DILocation(line: 102, column: 47, scope: !213)
!217 = !DILocation(line: 102, column: 58, scope: !213)
!218 = !DILocation(line: 102, column: 17, scope: !161)
!219 = !DILocation(line: 104, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !45, line: 103, column: 13)
!221 = !DILocation(line: 107, column: 13, scope: !161)
!222 = !DILocation(line: 107, column: 18, scope: !161)
!223 = !DILocation(line: 107, column: 28, scope: !161)
!224 = !DILocation(line: 107, column: 39, scope: !161)
!225 = !DILocation(line: 107, column: 26, scope: !161)
!226 = !DILocation(line: 107, column: 55, scope: !161)
!227 = !DILocation(line: 109, column: 30, scope: !161)
!228 = !DILocation(line: 109, column: 23, scope: !161)
!229 = !DILocation(line: 109, column: 21, scope: !161)
!230 = !DILocation(line: 110, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !161, file: !45, line: 110, column: 17)
!232 = !DILocation(line: 110, column: 17, scope: !161)
!233 = !DILocation(line: 112, column: 18, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !45, line: 111, column: 13)
!235 = !DILocation(line: 112, column: 26, scope: !234)
!236 = !DILocation(line: 113, column: 13, scope: !234)
!237 = !DILocation(line: 114, column: 30, scope: !161)
!238 = !DILocation(line: 114, column: 23, scope: !161)
!239 = !DILocation(line: 114, column: 21, scope: !161)
!240 = !DILocation(line: 115, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !161, file: !45, line: 115, column: 17)
!242 = !DILocation(line: 115, column: 17, scope: !161)
!243 = !DILocation(line: 117, column: 18, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !45, line: 116, column: 13)
!245 = !DILocation(line: 117, column: 26, scope: !244)
!246 = !DILocation(line: 118, column: 13, scope: !244)
!247 = !DILocation(line: 119, column: 9, scope: !161)
!248 = !DILocation(line: 121, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !127, file: !45, line: 121, column: 13)
!250 = !DILocation(line: 121, column: 26, scope: !249)
!251 = !DILocation(line: 121, column: 13, scope: !127)
!252 = !DILocation(line: 123, column: 26, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !45, line: 122, column: 9)
!254 = !DILocation(line: 123, column: 13, scope: !253)
!255 = !DILocation(line: 124, column: 9, scope: !253)
!256 = !DILocation(line: 125, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !127, file: !45, line: 125, column: 13)
!258 = !DILocation(line: 125, column: 26, scope: !257)
!259 = !DILocation(line: 125, column: 13, scope: !127)
!260 = !DILocation(line: 127, column: 26, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 126, column: 9)
!262 = !DILocation(line: 127, column: 13, scope: !261)
!263 = !DILocation(line: 128, column: 9, scope: !261)
!264 = !DILocation(line: 136, column: 69, scope: !114)
!265 = !DILocation(line: 136, column: 5, scope: !114)
!266 = !DILocation(line: 137, column: 1, scope: !114)
!267 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 145, type: !115, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!268 = !DILocalVariable(name: "data", scope: !267, file: !45, line: 147, type: !42)
!269 = !DILocation(line: 147, column: 12, scope: !267)
!270 = !DILocalVariable(name: "dataBuffer", scope: !267, file: !45, line: 148, type: !120)
!271 = !DILocation(line: 148, column: 10, scope: !267)
!272 = !DILocation(line: 149, column: 12, scope: !267)
!273 = !DILocation(line: 149, column: 10, scope: !267)
!274 = !DILocation(line: 151, column: 12, scope: !267)
!275 = !DILocation(line: 151, column: 5, scope: !267)
!276 = !DILocation(line: 152, column: 73, scope: !267)
!277 = !DILocation(line: 152, column: 5, scope: !267)
!278 = !DILocation(line: 153, column: 1, scope: !267)
!279 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 157, type: !115, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!280 = !DILocalVariable(name: "data", scope: !279, file: !45, line: 159, type: !42)
!281 = !DILocation(line: 159, column: 12, scope: !279)
!282 = !DILocalVariable(name: "dataBuffer", scope: !279, file: !45, line: 160, type: !120)
!283 = !DILocation(line: 160, column: 10, scope: !279)
!284 = !DILocation(line: 161, column: 12, scope: !279)
!285 = !DILocation(line: 161, column: 10, scope: !279)
!286 = !DILocalVariable(name: "recvResult", scope: !287, file: !45, line: 167, type: !23)
!287 = distinct !DILexicalBlock(scope: !279, file: !45, line: 162, column: 5)
!288 = !DILocation(line: 167, column: 13, scope: !287)
!289 = !DILocalVariable(name: "service", scope: !287, file: !45, line: 168, type: !130)
!290 = !DILocation(line: 168, column: 28, scope: !287)
!291 = !DILocalVariable(name: "replace", scope: !287, file: !45, line: 169, type: !42)
!292 = !DILocation(line: 169, column: 15, scope: !287)
!293 = !DILocalVariable(name: "listenSocket", scope: !287, file: !45, line: 170, type: !23)
!294 = !DILocation(line: 170, column: 16, scope: !287)
!295 = !DILocalVariable(name: "acceptSocket", scope: !287, file: !45, line: 171, type: !23)
!296 = !DILocation(line: 171, column: 16, scope: !287)
!297 = !DILocalVariable(name: "dataLen", scope: !287, file: !45, line: 172, type: !153)
!298 = !DILocation(line: 172, column: 16, scope: !287)
!299 = !DILocation(line: 172, column: 33, scope: !287)
!300 = !DILocation(line: 172, column: 26, scope: !287)
!301 = !DILocation(line: 173, column: 9, scope: !287)
!302 = !DILocation(line: 183, column: 28, scope: !303)
!303 = distinct !DILexicalBlock(scope: !287, file: !45, line: 174, column: 9)
!304 = !DILocation(line: 183, column: 26, scope: !303)
!305 = !DILocation(line: 184, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !45, line: 184, column: 17)
!307 = !DILocation(line: 184, column: 30, scope: !306)
!308 = !DILocation(line: 184, column: 17, scope: !303)
!309 = !DILocation(line: 186, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !45, line: 185, column: 13)
!311 = !DILocation(line: 188, column: 13, scope: !303)
!312 = !DILocation(line: 189, column: 21, scope: !303)
!313 = !DILocation(line: 189, column: 32, scope: !303)
!314 = !DILocation(line: 190, column: 21, scope: !303)
!315 = !DILocation(line: 190, column: 30, scope: !303)
!316 = !DILocation(line: 190, column: 37, scope: !303)
!317 = !DILocation(line: 191, column: 32, scope: !303)
!318 = !DILocation(line: 191, column: 21, scope: !303)
!319 = !DILocation(line: 191, column: 30, scope: !303)
!320 = !DILocation(line: 192, column: 22, scope: !321)
!321 = distinct !DILexicalBlock(scope: !303, file: !45, line: 192, column: 17)
!322 = !DILocation(line: 192, column: 36, scope: !321)
!323 = !DILocation(line: 192, column: 17, scope: !321)
!324 = !DILocation(line: 192, column: 81, scope: !321)
!325 = !DILocation(line: 192, column: 17, scope: !303)
!326 = !DILocation(line: 194, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !321, file: !45, line: 193, column: 13)
!328 = !DILocation(line: 196, column: 24, scope: !329)
!329 = distinct !DILexicalBlock(scope: !303, file: !45, line: 196, column: 17)
!330 = !DILocation(line: 196, column: 17, scope: !329)
!331 = !DILocation(line: 196, column: 54, scope: !329)
!332 = !DILocation(line: 196, column: 17, scope: !303)
!333 = !DILocation(line: 198, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !45, line: 197, column: 13)
!335 = !DILocation(line: 200, column: 35, scope: !303)
!336 = !DILocation(line: 200, column: 28, scope: !303)
!337 = !DILocation(line: 200, column: 26, scope: !303)
!338 = !DILocation(line: 201, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !303, file: !45, line: 201, column: 17)
!340 = !DILocation(line: 201, column: 30, scope: !339)
!341 = !DILocation(line: 201, column: 17, scope: !303)
!342 = !DILocation(line: 203, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !45, line: 202, column: 13)
!344 = !DILocation(line: 206, column: 31, scope: !303)
!345 = !DILocation(line: 206, column: 54, scope: !303)
!346 = !DILocation(line: 206, column: 61, scope: !303)
!347 = !DILocation(line: 206, column: 59, scope: !303)
!348 = !DILocation(line: 206, column: 93, scope: !303)
!349 = !DILocation(line: 206, column: 91, scope: !303)
!350 = !DILocation(line: 206, column: 101, scope: !303)
!351 = !DILocation(line: 206, column: 84, scope: !303)
!352 = !DILocation(line: 206, column: 26, scope: !303)
!353 = !DILocation(line: 206, column: 24, scope: !303)
!354 = !DILocation(line: 207, column: 17, scope: !355)
!355 = distinct !DILexicalBlock(scope: !303, file: !45, line: 207, column: 17)
!356 = !DILocation(line: 207, column: 28, scope: !355)
!357 = !DILocation(line: 207, column: 44, scope: !355)
!358 = !DILocation(line: 207, column: 47, scope: !355)
!359 = !DILocation(line: 207, column: 58, scope: !355)
!360 = !DILocation(line: 207, column: 17, scope: !303)
!361 = !DILocation(line: 209, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !355, file: !45, line: 208, column: 13)
!363 = !DILocation(line: 212, column: 13, scope: !303)
!364 = !DILocation(line: 212, column: 18, scope: !303)
!365 = !DILocation(line: 212, column: 28, scope: !303)
!366 = !DILocation(line: 212, column: 39, scope: !303)
!367 = !DILocation(line: 212, column: 26, scope: !303)
!368 = !DILocation(line: 212, column: 55, scope: !303)
!369 = !DILocation(line: 214, column: 30, scope: !303)
!370 = !DILocation(line: 214, column: 23, scope: !303)
!371 = !DILocation(line: 214, column: 21, scope: !303)
!372 = !DILocation(line: 215, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !303, file: !45, line: 215, column: 17)
!374 = !DILocation(line: 215, column: 17, scope: !303)
!375 = !DILocation(line: 217, column: 18, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !45, line: 216, column: 13)
!377 = !DILocation(line: 217, column: 26, scope: !376)
!378 = !DILocation(line: 218, column: 13, scope: !376)
!379 = !DILocation(line: 219, column: 30, scope: !303)
!380 = !DILocation(line: 219, column: 23, scope: !303)
!381 = !DILocation(line: 219, column: 21, scope: !303)
!382 = !DILocation(line: 220, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !303, file: !45, line: 220, column: 17)
!384 = !DILocation(line: 220, column: 17, scope: !303)
!385 = !DILocation(line: 222, column: 18, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !45, line: 221, column: 13)
!387 = !DILocation(line: 222, column: 26, scope: !386)
!388 = !DILocation(line: 223, column: 13, scope: !386)
!389 = !DILocation(line: 224, column: 9, scope: !303)
!390 = !DILocation(line: 226, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !287, file: !45, line: 226, column: 13)
!392 = !DILocation(line: 226, column: 26, scope: !391)
!393 = !DILocation(line: 226, column: 13, scope: !287)
!394 = !DILocation(line: 228, column: 26, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !45, line: 227, column: 9)
!396 = !DILocation(line: 228, column: 13, scope: !395)
!397 = !DILocation(line: 229, column: 9, scope: !395)
!398 = !DILocation(line: 230, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !287, file: !45, line: 230, column: 13)
!400 = !DILocation(line: 230, column: 26, scope: !399)
!401 = !DILocation(line: 230, column: 13, scope: !287)
!402 = !DILocation(line: 232, column: 26, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !45, line: 231, column: 9)
!404 = !DILocation(line: 232, column: 13, scope: !403)
!405 = !DILocation(line: 233, column: 9, scope: !403)
!406 = !DILocation(line: 241, column: 73, scope: !279)
!407 = !DILocation(line: 241, column: 5, scope: !279)
!408 = !DILocation(line: 242, column: 1, scope: !279)
!409 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52_good", scope: !45, file: !45, line: 244, type: !115, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!410 = !DILocation(line: 246, column: 5, scope: !409)
!411 = !DILocation(line: 247, column: 5, scope: !409)
!412 = !DILocation(line: 248, column: 1, scope: !409)
!413 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_badSink", scope: !106, file: !106, line: 52, type: !414, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !42}
!416 = !DILocalVariable(name: "data", arg: 1, scope: !413, file: !106, line: 52, type: !42)
!417 = !DILocation(line: 52, column: 77, scope: !413)
!418 = !DILocation(line: 54, column: 69, scope: !413)
!419 = !DILocation(line: 54, column: 5, scope: !413)
!420 = !DILocation(line: 55, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodG2BSink", scope: !106, file: !106, line: 64, type: !414, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!422 = !DILocalVariable(name: "data", arg: 1, scope: !421, file: !106, line: 64, type: !42)
!423 = !DILocation(line: 64, column: 81, scope: !421)
!424 = !DILocation(line: 66, column: 73, scope: !421)
!425 = !DILocation(line: 66, column: 5, scope: !421)
!426 = !DILocation(line: 67, column: 1, scope: !421)
!427 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52b_goodB2GSink", scope: !106, file: !106, line: 72, type: !414, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!428 = !DILocalVariable(name: "data", arg: 1, scope: !427, file: !106, line: 72, type: !42)
!429 = !DILocation(line: 72, column: 81, scope: !427)
!430 = !DILocation(line: 74, column: 73, scope: !427)
!431 = !DILocation(line: 74, column: 5, scope: !427)
!432 = !DILocation(line: 75, column: 1, scope: !427)
!433 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_badSink", scope: !109, file: !109, line: 49, type: !414, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!434 = !DILocalVariable(name: "data", arg: 1, scope: !433, file: !109, line: 49, type: !42)
!435 = !DILocation(line: 49, column: 77, scope: !433)
!436 = !DILocalVariable(name: "i", scope: !437, file: !109, line: 52, type: !23)
!437 = distinct !DILexicalBlock(scope: !433, file: !109, line: 51, column: 5)
!438 = !DILocation(line: 52, column: 13, scope: !437)
!439 = !DILocalVariable(name: "n", scope: !437, file: !109, line: 52, type: !23)
!440 = !DILocation(line: 52, column: 16, scope: !437)
!441 = !DILocalVariable(name: "intVariable", scope: !437, file: !109, line: 52, type: !23)
!442 = !DILocation(line: 52, column: 19, scope: !437)
!443 = !DILocation(line: 53, column: 20, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !109, line: 53, column: 13)
!445 = !DILocation(line: 53, column: 13, scope: !444)
!446 = !DILocation(line: 53, column: 36, scope: !444)
!447 = !DILocation(line: 53, column: 13, scope: !437)
!448 = !DILocation(line: 56, column: 25, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !109, line: 54, column: 9)
!450 = !DILocation(line: 57, column: 20, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !109, line: 57, column: 13)
!452 = !DILocation(line: 57, column: 18, scope: !451)
!453 = !DILocation(line: 57, column: 25, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !109, line: 57, column: 13)
!455 = !DILocation(line: 57, column: 29, scope: !454)
!456 = !DILocation(line: 57, column: 27, scope: !454)
!457 = !DILocation(line: 57, column: 13, scope: !451)
!458 = !DILocation(line: 60, column: 28, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !109, line: 58, column: 13)
!460 = !DILocation(line: 61, column: 13, scope: !459)
!461 = !DILocation(line: 57, column: 33, scope: !454)
!462 = !DILocation(line: 57, column: 13, scope: !454)
!463 = distinct !{!463, !457, !464, !465}
!464 = !DILocation(line: 61, column: 13, scope: !451)
!465 = !{!"llvm.loop.mustprogress"}
!466 = !DILocation(line: 62, column: 26, scope: !449)
!467 = !DILocation(line: 62, column: 13, scope: !449)
!468 = !DILocation(line: 63, column: 9, scope: !449)
!469 = !DILocation(line: 65, column: 1, scope: !433)
!470 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodG2BSink", scope: !109, file: !109, line: 72, type: !414, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!471 = !DILocalVariable(name: "data", arg: 1, scope: !470, file: !109, line: 72, type: !42)
!472 = !DILocation(line: 72, column: 81, scope: !470)
!473 = !DILocalVariable(name: "i", scope: !474, file: !109, line: 75, type: !23)
!474 = distinct !DILexicalBlock(scope: !470, file: !109, line: 74, column: 5)
!475 = !DILocation(line: 75, column: 13, scope: !474)
!476 = !DILocalVariable(name: "n", scope: !474, file: !109, line: 75, type: !23)
!477 = !DILocation(line: 75, column: 16, scope: !474)
!478 = !DILocalVariable(name: "intVariable", scope: !474, file: !109, line: 75, type: !23)
!479 = !DILocation(line: 75, column: 19, scope: !474)
!480 = !DILocation(line: 76, column: 20, scope: !481)
!481 = distinct !DILexicalBlock(scope: !474, file: !109, line: 76, column: 13)
!482 = !DILocation(line: 76, column: 13, scope: !481)
!483 = !DILocation(line: 76, column: 36, scope: !481)
!484 = !DILocation(line: 76, column: 13, scope: !474)
!485 = !DILocation(line: 79, column: 25, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !109, line: 77, column: 9)
!487 = !DILocation(line: 80, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !486, file: !109, line: 80, column: 13)
!489 = !DILocation(line: 80, column: 18, scope: !488)
!490 = !DILocation(line: 80, column: 25, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !109, line: 80, column: 13)
!492 = !DILocation(line: 80, column: 29, scope: !491)
!493 = !DILocation(line: 80, column: 27, scope: !491)
!494 = !DILocation(line: 80, column: 13, scope: !488)
!495 = !DILocation(line: 83, column: 28, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !109, line: 81, column: 13)
!497 = !DILocation(line: 84, column: 13, scope: !496)
!498 = !DILocation(line: 80, column: 33, scope: !491)
!499 = !DILocation(line: 80, column: 13, scope: !491)
!500 = distinct !{!500, !494, !501, !465}
!501 = !DILocation(line: 84, column: 13, scope: !488)
!502 = !DILocation(line: 85, column: 26, scope: !486)
!503 = !DILocation(line: 85, column: 13, scope: !486)
!504 = !DILocation(line: 86, column: 9, scope: !486)
!505 = !DILocation(line: 88, column: 1, scope: !470)
!506 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_52c_goodB2GSink", scope: !109, file: !109, line: 91, type: !414, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!507 = !DILocalVariable(name: "data", arg: 1, scope: !506, file: !109, line: 91, type: !42)
!508 = !DILocation(line: 91, column: 81, scope: !506)
!509 = !DILocalVariable(name: "i", scope: !510, file: !109, line: 94, type: !23)
!510 = distinct !DILexicalBlock(scope: !506, file: !109, line: 93, column: 5)
!511 = !DILocation(line: 94, column: 13, scope: !510)
!512 = !DILocalVariable(name: "n", scope: !510, file: !109, line: 94, type: !23)
!513 = !DILocation(line: 94, column: 16, scope: !510)
!514 = !DILocalVariable(name: "intVariable", scope: !510, file: !109, line: 94, type: !23)
!515 = !DILocation(line: 94, column: 19, scope: !510)
!516 = !DILocation(line: 95, column: 20, scope: !517)
!517 = distinct !DILexicalBlock(scope: !510, file: !109, line: 95, column: 13)
!518 = !DILocation(line: 95, column: 13, scope: !517)
!519 = !DILocation(line: 95, column: 36, scope: !517)
!520 = !DILocation(line: 95, column: 13, scope: !510)
!521 = !DILocation(line: 98, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !109, line: 98, column: 17)
!523 = distinct !DILexicalBlock(scope: !517, file: !109, line: 96, column: 9)
!524 = !DILocation(line: 98, column: 19, scope: !522)
!525 = !DILocation(line: 98, column: 17, scope: !523)
!526 = !DILocation(line: 100, column: 29, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !109, line: 99, column: 13)
!528 = !DILocation(line: 101, column: 24, scope: !529)
!529 = distinct !DILexicalBlock(scope: !527, file: !109, line: 101, column: 17)
!530 = !DILocation(line: 101, column: 22, scope: !529)
!531 = !DILocation(line: 101, column: 29, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !109, line: 101, column: 17)
!533 = !DILocation(line: 101, column: 33, scope: !532)
!534 = !DILocation(line: 101, column: 31, scope: !532)
!535 = !DILocation(line: 101, column: 17, scope: !529)
!536 = !DILocation(line: 104, column: 32, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !109, line: 102, column: 17)
!538 = !DILocation(line: 105, column: 17, scope: !537)
!539 = !DILocation(line: 101, column: 37, scope: !532)
!540 = !DILocation(line: 101, column: 17, scope: !532)
!541 = distinct !{!541, !535, !542, !465}
!542 = !DILocation(line: 105, column: 17, scope: !529)
!543 = !DILocation(line: 106, column: 30, scope: !527)
!544 = !DILocation(line: 106, column: 17, scope: !527)
!545 = !DILocation(line: 107, column: 13, scope: !527)
!546 = !DILocation(line: 108, column: 9, scope: !523)
!547 = !DILocation(line: 110, column: 1, scope: !506)
!548 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !414, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!549 = !DILocalVariable(name: "line", arg: 1, scope: !548, file: !3, line: 11, type: !42)
!550 = !DILocation(line: 11, column: 25, scope: !548)
!551 = !DILocation(line: 13, column: 1, scope: !548)
!552 = !DILocation(line: 14, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 14, column: 8)
!554 = !DILocation(line: 14, column: 13, scope: !553)
!555 = !DILocation(line: 14, column: 8, scope: !548)
!556 = !DILocation(line: 16, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 15, column: 5)
!558 = !DILocation(line: 16, column: 9, scope: !557)
!559 = !DILocation(line: 17, column: 5, scope: !557)
!560 = !DILocation(line: 18, column: 5, scope: !548)
!561 = !DILocation(line: 19, column: 1, scope: !548)
!562 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !414, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!563 = !DILocalVariable(name: "line", arg: 1, scope: !562, file: !3, line: 20, type: !42)
!564 = !DILocation(line: 20, column: 29, scope: !562)
!565 = !DILocation(line: 22, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 22, column: 8)
!567 = !DILocation(line: 22, column: 13, scope: !566)
!568 = !DILocation(line: 22, column: 8, scope: !562)
!569 = !DILocation(line: 24, column: 24, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 23, column: 5)
!571 = !DILocation(line: 24, column: 9, scope: !570)
!572 = !DILocation(line: 25, column: 5, scope: !570)
!573 = !DILocation(line: 26, column: 1, scope: !562)
!574 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !575, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !154, line: 74, baseType: !23)
!579 = !DILocalVariable(name: "line", arg: 1, scope: !574, file: !3, line: 27, type: !577)
!580 = !DILocation(line: 27, column: 29, scope: !574)
!581 = !DILocation(line: 29, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 29, column: 8)
!583 = !DILocation(line: 29, column: 13, scope: !582)
!584 = !DILocation(line: 29, column: 8, scope: !574)
!585 = !DILocation(line: 31, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 30, column: 5)
!587 = !DILocation(line: 31, column: 9, scope: !586)
!588 = !DILocation(line: 32, column: 5, scope: !586)
!589 = !DILocation(line: 33, column: 1, scope: !574)
!590 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !591, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !23}
!593 = !DILocalVariable(name: "intNumber", arg: 1, scope: !590, file: !3, line: 35, type: !23)
!594 = !DILocation(line: 35, column: 24, scope: !590)
!595 = !DILocation(line: 37, column: 20, scope: !590)
!596 = !DILocation(line: 37, column: 5, scope: !590)
!597 = !DILocation(line: 38, column: 1, scope: !590)
!598 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !599, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!602 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !598, file: !3, line: 40, type: !601)
!603 = !DILocation(line: 40, column: 28, scope: !598)
!604 = !DILocation(line: 42, column: 21, scope: !598)
!605 = !DILocation(line: 42, column: 5, scope: !598)
!606 = !DILocation(line: 43, column: 1, scope: !598)
!607 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !608, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!611 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !607, file: !3, line: 45, type: !610)
!612 = !DILocation(line: 45, column: 28, scope: !607)
!613 = !DILocation(line: 47, column: 20, scope: !607)
!614 = !DILocation(line: 47, column: 5, scope: !607)
!615 = !DILocation(line: 48, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !617, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!620 = !DILocalVariable(name: "longNumber", arg: 1, scope: !616, file: !3, line: 50, type: !619)
!621 = !DILocation(line: 50, column: 26, scope: !616)
!622 = !DILocation(line: 52, column: 21, scope: !616)
!623 = !DILocation(line: 52, column: 5, scope: !616)
!624 = !DILocation(line: 53, column: 1, scope: !616)
!625 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !626, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !629, line: 27, baseType: !630)
!629 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !619)
!631 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !625, file: !3, line: 55, type: !628)
!632 = !DILocation(line: 55, column: 33, scope: !625)
!633 = !DILocation(line: 57, column: 29, scope: !625)
!634 = !DILocation(line: 57, column: 5, scope: !625)
!635 = !DILocation(line: 58, column: 1, scope: !625)
!636 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !637, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !153}
!639 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !636, file: !3, line: 60, type: !153)
!640 = !DILocation(line: 60, column: 29, scope: !636)
!641 = !DILocation(line: 62, column: 21, scope: !636)
!642 = !DILocation(line: 62, column: 5, scope: !636)
!643 = !DILocation(line: 63, column: 1, scope: !636)
!644 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !645, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !43}
!647 = !DILocalVariable(name: "charHex", arg: 1, scope: !644, file: !3, line: 65, type: !43)
!648 = !DILocation(line: 65, column: 29, scope: !644)
!649 = !DILocation(line: 67, column: 22, scope: !644)
!650 = !DILocation(line: 67, column: 5, scope: !644)
!651 = !DILocation(line: 68, column: 1, scope: !644)
!652 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !653, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !578}
!655 = !DILocalVariable(name: "wideChar", arg: 1, scope: !652, file: !3, line: 70, type: !578)
!656 = !DILocation(line: 70, column: 29, scope: !652)
!657 = !DILocalVariable(name: "s", scope: !652, file: !3, line: 74, type: !658)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 2)
!661 = !DILocation(line: 74, column: 13, scope: !652)
!662 = !DILocation(line: 75, column: 16, scope: !652)
!663 = !DILocation(line: 75, column: 9, scope: !652)
!664 = !DILocation(line: 75, column: 14, scope: !652)
!665 = !DILocation(line: 76, column: 9, scope: !652)
!666 = !DILocation(line: 76, column: 14, scope: !652)
!667 = !DILocation(line: 77, column: 21, scope: !652)
!668 = !DILocation(line: 77, column: 5, scope: !652)
!669 = !DILocation(line: 78, column: 1, scope: !652)
!670 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !671, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !7}
!673 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !670, file: !3, line: 80, type: !7)
!674 = !DILocation(line: 80, column: 33, scope: !670)
!675 = !DILocation(line: 82, column: 20, scope: !670)
!676 = !DILocation(line: 82, column: 5, scope: !670)
!677 = !DILocation(line: 83, column: 1, scope: !670)
!678 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !679, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !25}
!681 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !678, file: !3, line: 85, type: !25)
!682 = !DILocation(line: 85, column: 45, scope: !678)
!683 = !DILocation(line: 87, column: 22, scope: !678)
!684 = !DILocation(line: 87, column: 5, scope: !678)
!685 = !DILocation(line: 88, column: 1, scope: !678)
!686 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !687, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689}
!689 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!690 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !686, file: !3, line: 90, type: !689)
!691 = !DILocation(line: 90, column: 29, scope: !686)
!692 = !DILocation(line: 92, column: 20, scope: !686)
!693 = !DILocation(line: 92, column: 5, scope: !686)
!694 = !DILocation(line: 93, column: 1, scope: !686)
!695 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !696, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !700, line: 100, baseType: !701)
!700 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_152/source_code")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !700, line: 96, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !701, file: !700, line: 98, baseType: !23, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !701, file: !700, line: 99, baseType: !23, size: 32, offset: 32)
!705 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !695, file: !3, line: 95, type: !698)
!706 = !DILocation(line: 95, column: 40, scope: !695)
!707 = !DILocation(line: 97, column: 26, scope: !695)
!708 = !DILocation(line: 97, column: 47, scope: !695)
!709 = !DILocation(line: 97, column: 55, scope: !695)
!710 = !DILocation(line: 97, column: 76, scope: !695)
!711 = !DILocation(line: 97, column: 5, scope: !695)
!712 = !DILocation(line: 98, column: 1, scope: !695)
!713 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !714, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716, !153}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!717 = !DILocalVariable(name: "bytes", arg: 1, scope: !713, file: !3, line: 100, type: !716)
!718 = !DILocation(line: 100, column: 38, scope: !713)
!719 = !DILocalVariable(name: "numBytes", arg: 2, scope: !713, file: !3, line: 100, type: !153)
!720 = !DILocation(line: 100, column: 52, scope: !713)
!721 = !DILocalVariable(name: "i", scope: !713, file: !3, line: 102, type: !153)
!722 = !DILocation(line: 102, column: 12, scope: !713)
!723 = !DILocation(line: 103, column: 12, scope: !724)
!724 = distinct !DILexicalBlock(scope: !713, file: !3, line: 103, column: 5)
!725 = !DILocation(line: 103, column: 10, scope: !724)
!726 = !DILocation(line: 103, column: 17, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 103, column: 5)
!728 = !DILocation(line: 103, column: 21, scope: !727)
!729 = !DILocation(line: 103, column: 19, scope: !727)
!730 = !DILocation(line: 103, column: 5, scope: !724)
!731 = !DILocation(line: 105, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !3, line: 104, column: 5)
!733 = !DILocation(line: 105, column: 30, scope: !732)
!734 = !DILocation(line: 105, column: 9, scope: !732)
!735 = !DILocation(line: 106, column: 5, scope: !732)
!736 = !DILocation(line: 103, column: 31, scope: !727)
!737 = !DILocation(line: 103, column: 5, scope: !727)
!738 = distinct !{!738, !730, !739, !465}
!739 = !DILocation(line: 106, column: 5, scope: !724)
!740 = !DILocation(line: 107, column: 5, scope: !713)
!741 = !DILocation(line: 108, column: 1, scope: !713)
!742 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !743, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!743 = !DISubroutineType(types: !744)
!744 = !{!153, !716, !153, !42}
!745 = !DILocalVariable(name: "bytes", arg: 1, scope: !742, file: !3, line: 113, type: !716)
!746 = !DILocation(line: 113, column: 39, scope: !742)
!747 = !DILocalVariable(name: "numBytes", arg: 2, scope: !742, file: !3, line: 113, type: !153)
!748 = !DILocation(line: 113, column: 53, scope: !742)
!749 = !DILocalVariable(name: "hex", arg: 3, scope: !742, file: !3, line: 113, type: !42)
!750 = !DILocation(line: 113, column: 71, scope: !742)
!751 = !DILocalVariable(name: "numWritten", scope: !742, file: !3, line: 115, type: !153)
!752 = !DILocation(line: 115, column: 12, scope: !742)
!753 = !DILocation(line: 121, column: 5, scope: !742)
!754 = !DILocation(line: 121, column: 12, scope: !742)
!755 = !DILocation(line: 121, column: 25, scope: !742)
!756 = !DILocation(line: 121, column: 23, scope: !742)
!757 = !DILocation(line: 121, column: 34, scope: !742)
!758 = !DILocation(line: 121, column: 37, scope: !742)
!759 = !DILocation(line: 121, column: 67, scope: !742)
!760 = !DILocation(line: 121, column: 70, scope: !742)
!761 = !DILocation(line: 0, scope: !742)
!762 = !DILocalVariable(name: "byte", scope: !763, file: !3, line: 123, type: !23)
!763 = distinct !DILexicalBlock(scope: !742, file: !3, line: 122, column: 5)
!764 = !DILocation(line: 123, column: 13, scope: !763)
!765 = !DILocation(line: 124, column: 17, scope: !763)
!766 = !DILocation(line: 124, column: 25, scope: !763)
!767 = !DILocation(line: 124, column: 23, scope: !763)
!768 = !DILocation(line: 124, column: 9, scope: !763)
!769 = !DILocation(line: 125, column: 45, scope: !763)
!770 = !DILocation(line: 125, column: 29, scope: !763)
!771 = !DILocation(line: 125, column: 9, scope: !763)
!772 = !DILocation(line: 125, column: 15, scope: !763)
!773 = !DILocation(line: 125, column: 27, scope: !763)
!774 = !DILocation(line: 126, column: 9, scope: !763)
!775 = distinct !{!775, !753, !776, !465}
!776 = !DILocation(line: 127, column: 5, scope: !742)
!777 = !DILocation(line: 129, column: 12, scope: !742)
!778 = !DILocation(line: 129, column: 5, scope: !742)
!779 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !780, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!780 = !DISubroutineType(types: !781)
!781 = !{!153, !716, !153, !577}
!782 = !DILocalVariable(name: "bytes", arg: 1, scope: !779, file: !3, line: 135, type: !716)
!783 = !DILocation(line: 135, column: 41, scope: !779)
!784 = !DILocalVariable(name: "numBytes", arg: 2, scope: !779, file: !3, line: 135, type: !153)
!785 = !DILocation(line: 135, column: 55, scope: !779)
!786 = !DILocalVariable(name: "hex", arg: 3, scope: !779, file: !3, line: 135, type: !577)
!787 = !DILocation(line: 135, column: 76, scope: !779)
!788 = !DILocalVariable(name: "numWritten", scope: !779, file: !3, line: 137, type: !153)
!789 = !DILocation(line: 137, column: 12, scope: !779)
!790 = !DILocation(line: 143, column: 5, scope: !779)
!791 = !DILocation(line: 143, column: 12, scope: !779)
!792 = !DILocation(line: 143, column: 25, scope: !779)
!793 = !DILocation(line: 143, column: 23, scope: !779)
!794 = !DILocation(line: 143, column: 34, scope: !779)
!795 = !DILocation(line: 143, column: 47, scope: !779)
!796 = !DILocation(line: 143, column: 55, scope: !779)
!797 = !DILocation(line: 143, column: 53, scope: !779)
!798 = !DILocation(line: 143, column: 37, scope: !779)
!799 = !DILocation(line: 143, column: 68, scope: !779)
!800 = !DILocation(line: 143, column: 81, scope: !779)
!801 = !DILocation(line: 143, column: 89, scope: !779)
!802 = !DILocation(line: 143, column: 87, scope: !779)
!803 = !DILocation(line: 143, column: 100, scope: !779)
!804 = !DILocation(line: 143, column: 71, scope: !779)
!805 = !DILocation(line: 0, scope: !779)
!806 = !DILocalVariable(name: "byte", scope: !807, file: !3, line: 145, type: !23)
!807 = distinct !DILexicalBlock(scope: !779, file: !3, line: 144, column: 5)
!808 = !DILocation(line: 145, column: 13, scope: !807)
!809 = !DILocation(line: 146, column: 18, scope: !807)
!810 = !DILocation(line: 146, column: 26, scope: !807)
!811 = !DILocation(line: 146, column: 24, scope: !807)
!812 = !DILocation(line: 146, column: 9, scope: !807)
!813 = !DILocation(line: 147, column: 45, scope: !807)
!814 = !DILocation(line: 147, column: 29, scope: !807)
!815 = !DILocation(line: 147, column: 9, scope: !807)
!816 = !DILocation(line: 147, column: 15, scope: !807)
!817 = !DILocation(line: 147, column: 27, scope: !807)
!818 = !DILocation(line: 148, column: 9, scope: !807)
!819 = distinct !{!819, !790, !820, !465}
!820 = !DILocation(line: 149, column: 5, scope: !779)
!821 = !DILocation(line: 151, column: 12, scope: !779)
!822 = !DILocation(line: 151, column: 5, scope: !779)
!823 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !824, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!824 = !DISubroutineType(types: !825)
!825 = !{!23}
!826 = !DILocation(line: 158, column: 5, scope: !823)
!827 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !824, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!828 = !DILocation(line: 163, column: 5, scope: !827)
!829 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !824, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DILocation(line: 168, column: 13, scope: !829)
!831 = !DILocation(line: 168, column: 20, scope: !829)
!832 = !DILocation(line: 168, column: 5, scope: !829)
!833 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !115, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!834 = !DILocation(line: 187, column: 16, scope: !833)
!835 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !115, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DILocation(line: 188, column: 16, scope: !835)
!837 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !115, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DILocation(line: 189, column: 16, scope: !837)
!839 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !115, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 190, column: 16, scope: !839)
!841 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !115, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 191, column: 16, scope: !841)
!843 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !115, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DILocation(line: 192, column: 16, scope: !843)
!845 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !115, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 193, column: 16, scope: !845)
!847 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !115, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 194, column: 16, scope: !847)
!849 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !115, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 195, column: 16, scope: !849)
!851 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !115, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!852 = !DILocation(line: 198, column: 15, scope: !851)
!853 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !115, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!854 = !DILocation(line: 199, column: 15, scope: !853)
!855 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !115, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!856 = !DILocation(line: 200, column: 15, scope: !855)
!857 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !115, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DILocation(line: 201, column: 15, scope: !857)
!859 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !115, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DILocation(line: 202, column: 15, scope: !859)
!861 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !115, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!862 = !DILocation(line: 203, column: 15, scope: !861)
!863 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !115, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 204, column: 15, scope: !863)
!865 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !115, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 205, column: 15, scope: !865)
!867 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !115, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 206, column: 15, scope: !867)
