; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data22 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !110, metadata !DIExpression()), !dbg !112
  store i32* %data, i32** %dataPtr1, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !113, metadata !DIExpression()), !dbg !114
  store i32* %data, i32** %dataPtr2, align 8, !dbg !114
  store i32 -1, i32* %data, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !116, metadata !DIExpression()), !dbg !118
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !119
  %1 = load i32, i32* %0, align 4, !dbg !120
  store i32 %1, i32* %data1, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 -1, i32* %connectSocket, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !148, metadata !DIExpression()), !dbg !149
  br label %do.body, !dbg !150

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !151
  store i32 %call, i32* %connectSocket, align 4, !dbg !153
  %2 = load i32, i32* %connectSocket, align 4, !dbg !154
  %cmp = icmp eq i32 %2, -1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !158

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !160
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !161
  store i16 2, i16* %sin_family, align 4, !dbg !162
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !163
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !164
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !165
  store i32 %call2, i32* %s_addr, align 4, !dbg !166
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !167
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !168
  store i16 %call3, i16* %sin_port, align 2, !dbg !169
  %4 = load i32, i32* %connectSocket, align 4, !dbg !170
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !172
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !173
  %cmp5 = icmp eq i32 %call4, -1, !dbg !174
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !175

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !176

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !178
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !179
  %call8 = call i64 @recv(i32 %6, i8* %arraydecay, i64 13, i32 0), !dbg !180
  %conv = trunc i64 %call8 to i32, !dbg !180
  store i32 %conv, i32* %recvResult, align 4, !dbg !181
  %7 = load i32, i32* %recvResult, align 4, !dbg !182
  %cmp9 = icmp eq i32 %7, -1, !dbg !184
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %recvResult, align 4, !dbg !186
  %cmp11 = icmp eq i32 %8, 0, !dbg !187
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !188

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !189

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %recvResult, align 4, !dbg !191
  %idxprom = sext i32 %9 to i64, !dbg !192
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !192
  store i8 0, i8* %arrayidx, align 1, !dbg !193
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !194
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !195
  store i32 %call16, i32* %data1, align 4, !dbg !196
  br label %do.end, !dbg !197

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %10 = load i32, i32* %connectSocket, align 4, !dbg !198
  %cmp17 = icmp ne i32 %10, -1, !dbg !200
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !201

if.then19:                                        ; preds = %do.end
  %11 = load i32, i32* %connectSocket, align 4, !dbg !202
  %call20 = call i32 @close(i32 %11), !dbg !204
  br label %if.end21, !dbg !205

if.end21:                                         ; preds = %if.then19, %do.end
  %12 = load i32, i32* %data1, align 4, !dbg !206
  %13 = load i32*, i32** %dataPtr1, align 8, !dbg !207
  store i32 %12, i32* %13, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %data22, metadata !209, metadata !DIExpression()), !dbg !211
  %14 = load i32*, i32** %dataPtr2, align 8, !dbg !212
  %15 = load i32, i32* %14, align 4, !dbg !213
  store i32 %15, i32* %data22, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %i, metadata !214, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !217, metadata !DIExpression()), !dbg !221
  %16 = bitcast [10 x i32]* %buffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !221
  %17 = load i32, i32* %data22, align 4, !dbg !222
  %cmp23 = icmp sge i32 %17, 0, !dbg !224
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !225

if.then25:                                        ; preds = %if.end21
  %18 = load i32, i32* %data22, align 4, !dbg !226
  %idxprom26 = sext i32 %18 to i64, !dbg !228
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !228
  store i32 1, i32* %arrayidx27, align 4, !dbg !229
  store i32 0, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.inc, %if.then25
  %19 = load i32, i32* %i, align 4, !dbg !233
  %cmp28 = icmp slt i32 %19, 10, !dbg !235
  br i1 %cmp28, label %for.body, label %for.end, !dbg !236

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !dbg !237
  %idxprom30 = sext i32 %20 to i64, !dbg !239
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !239
  %21 = load i32, i32* %arrayidx31, align 4, !dbg !239
  call void @printIntLine(i32 %21), !dbg !240
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !242
  %inc = add nsw i32 %22, 1, !dbg !242
  store i32 %inc, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !247

if.else:                                          ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !248
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !250
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !251 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %data2 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !254, metadata !DIExpression()), !dbg !255
  store i32* %data, i32** %dataPtr1, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !256, metadata !DIExpression()), !dbg !257
  store i32* %data, i32** %dataPtr2, align 8, !dbg !257
  store i32 -1, i32* %data, align 4, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !259, metadata !DIExpression()), !dbg !261
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !262
  %1 = load i32, i32* %0, align 4, !dbg !263
  store i32 %1, i32* %data1, align 4, !dbg !261
  store i32 7, i32* %data1, align 4, !dbg !264
  %2 = load i32, i32* %data1, align 4, !dbg !265
  %3 = load i32*, i32** %dataPtr1, align 8, !dbg !266
  store i32 %2, i32* %3, align 4, !dbg !267
  call void @llvm.dbg.declare(metadata i32* %data2, metadata !268, metadata !DIExpression()), !dbg !270
  %4 = load i32*, i32** %dataPtr2, align 8, !dbg !271
  %5 = load i32, i32* %4, align 4, !dbg !272
  store i32 %5, i32* %data2, align 4, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !276, metadata !DIExpression()), !dbg !277
  %6 = bitcast [10 x i32]* %buffer to i8*, !dbg !277
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !277
  %7 = load i32, i32* %data2, align 4, !dbg !278
  %cmp = icmp sge i32 %7, 0, !dbg !280
  br i1 %cmp, label %if.then, label %if.else, !dbg !281

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %data2, align 4, !dbg !282
  %idxprom = sext i32 %8 to i64, !dbg !284
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !284
  store i32 1, i32* %arrayidx, align 4, !dbg !285
  store i32 0, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !289
  %cmp3 = icmp slt i32 %9, 10, !dbg !291
  br i1 %cmp3, label %for.body, label %for.end, !dbg !292

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !293
  %idxprom4 = sext i32 %10 to i64, !dbg !295
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !295
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !295
  call void @printIntLine(i32 %11), !dbg !296
  br label %for.inc, !dbg !297

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !298
  %inc = add nsw i32 %12, 1, !dbg !298
  store i32 %inc, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !299, !llvm.loop !300

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !302

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !303
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !306 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data22 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !309, metadata !DIExpression()), !dbg !310
  store i32* %data, i32** %dataPtr1, align 8, !dbg !310
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !311, metadata !DIExpression()), !dbg !312
  store i32* %data, i32** %dataPtr2, align 8, !dbg !312
  store i32 -1, i32* %data, align 4, !dbg !313
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !314, metadata !DIExpression()), !dbg !316
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !317
  %1 = load i32, i32* %0, align 4, !dbg !318
  store i32 %1, i32* %data1, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !319, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !324, metadata !DIExpression()), !dbg !325
  store i32 -1, i32* %connectSocket, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !326, metadata !DIExpression()), !dbg !327
  br label %do.body, !dbg !328

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !329
  store i32 %call, i32* %connectSocket, align 4, !dbg !331
  %2 = load i32, i32* %connectSocket, align 4, !dbg !332
  %cmp = icmp eq i32 %2, -1, !dbg !334
  br i1 %cmp, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !336

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !338
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !338
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !339
  store i16 2, i16* %sin_family, align 4, !dbg !340
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !341
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !342
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !343
  store i32 %call2, i32* %s_addr, align 4, !dbg !344
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !345
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !346
  store i16 %call3, i16* %sin_port, align 2, !dbg !347
  %4 = load i32, i32* %connectSocket, align 4, !dbg !348
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !350
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !351
  %cmp5 = icmp eq i32 %call4, -1, !dbg !352
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !353

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !354

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !356
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !357
  %call8 = call i64 @recv(i32 %6, i8* %arraydecay, i64 13, i32 0), !dbg !358
  %conv = trunc i64 %call8 to i32, !dbg !358
  store i32 %conv, i32* %recvResult, align 4, !dbg !359
  %7 = load i32, i32* %recvResult, align 4, !dbg !360
  %cmp9 = icmp eq i32 %7, -1, !dbg !362
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !363

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %recvResult, align 4, !dbg !364
  %cmp11 = icmp eq i32 %8, 0, !dbg !365
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !366

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !367

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %recvResult, align 4, !dbg !369
  %idxprom = sext i32 %9 to i64, !dbg !370
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !370
  store i8 0, i8* %arrayidx, align 1, !dbg !371
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !372
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !373
  store i32 %call16, i32* %data1, align 4, !dbg !374
  br label %do.end, !dbg !375

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %10 = load i32, i32* %connectSocket, align 4, !dbg !376
  %cmp17 = icmp ne i32 %10, -1, !dbg !378
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !379

if.then19:                                        ; preds = %do.end
  %11 = load i32, i32* %connectSocket, align 4, !dbg !380
  %call20 = call i32 @close(i32 %11), !dbg !382
  br label %if.end21, !dbg !383

if.end21:                                         ; preds = %if.then19, %do.end
  %12 = load i32, i32* %data1, align 4, !dbg !384
  %13 = load i32*, i32** %dataPtr1, align 8, !dbg !385
  store i32 %12, i32* %13, align 4, !dbg !386
  call void @llvm.dbg.declare(metadata i32* %data22, metadata !387, metadata !DIExpression()), !dbg !389
  %14 = load i32*, i32** %dataPtr2, align 8, !dbg !390
  %15 = load i32, i32* %14, align 4, !dbg !391
  store i32 %15, i32* %data22, align 4, !dbg !389
  call void @llvm.dbg.declare(metadata i32* %i, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !395, metadata !DIExpression()), !dbg !396
  %16 = bitcast [10 x i32]* %buffer to i8*, !dbg !396
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !396
  %17 = load i32, i32* %data22, align 4, !dbg !397
  %cmp23 = icmp sge i32 %17, 0, !dbg !399
  br i1 %cmp23, label %land.lhs.true, label %if.else, !dbg !400

land.lhs.true:                                    ; preds = %if.end21
  %18 = load i32, i32* %data22, align 4, !dbg !401
  %cmp25 = icmp slt i32 %18, 10, !dbg !402
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !403

if.then27:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %data22, align 4, !dbg !404
  %idxprom28 = sext i32 %19 to i64, !dbg !406
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !406
  store i32 1, i32* %arrayidx29, align 4, !dbg !407
  store i32 0, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !410

for.cond:                                         ; preds = %for.inc, %if.then27
  %20 = load i32, i32* %i, align 4, !dbg !411
  %cmp30 = icmp slt i32 %20, 10, !dbg !413
  br i1 %cmp30, label %for.body, label %for.end, !dbg !414

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !415
  %idxprom32 = sext i32 %21 to i64, !dbg !417
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !417
  %22 = load i32, i32* %arrayidx33, align 4, !dbg !417
  call void @printIntLine(i32 %22), !dbg !418
  br label %for.inc, !dbg !419

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !420
  %inc = add nsw i32 %23, 1, !dbg !420
  store i32 %inc, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !421, !llvm.loop !422

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !424

if.else:                                          ; preds = %land.lhs.true, %if.end21
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !425
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_good() #0 !dbg !428 {
entry:
  call void @goodG2B(), !dbg !429
  call void @goodB2G(), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !432 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !437
  %0 = load i8*, i8** %line.addr, align 8, !dbg !438
  %cmp = icmp ne i8* %0, null, !dbg !440
  br i1 %cmp, label %if.then, label %if.end, !dbg !441

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !442
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !444
  br label %if.end, !dbg !445

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !446
  ret void, !dbg !447
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !448 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i8*, i8** %line.addr, align 8, !dbg !451
  %cmp = icmp ne i8* %0, null, !dbg !453
  br i1 %cmp, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !460 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = load i32*, i32** %line.addr, align 8, !dbg !468
  %cmp = icmp ne i32* %0, null, !dbg !470
  br i1 %cmp, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !472
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !474
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !476
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !477 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !485 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !491
  %conv = sext i16 %0 to i32, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !494 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !500
  %conv = fpext float %0 to double, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !503 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !512 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !523 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !533 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !538
  %conv = sext i8 %0 to i32, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !541 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !546, metadata !DIExpression()), !dbg !550
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !551
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !552
  store i32 %0, i32* %arrayidx, align 4, !dbg !553
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !554
  store i32 0, i32* %arrayidx1, align 4, !dbg !555
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !559 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !564
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !565
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !567 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !572
  %conv = zext i8 %0 to i32, !dbg !572
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !573
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !575 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !584 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !596
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !597
  %1 = load i32, i32* %intOne, align 4, !dbg !597
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !598
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !599
  %3 = load i32, i32* %intTwo, align 4, !dbg !599
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !600
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !602 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata i64* %i, metadata !610, metadata !DIExpression()), !dbg !611
  store i64 0, i64* %i, align 8, !dbg !612
  br label %for.cond, !dbg !614

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !615
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !617
  %cmp = icmp ult i64 %0, %1, !dbg !618
  br i1 %cmp, label %for.body, label %for.end, !dbg !619

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !620
  %3 = load i64, i64* %i, align 8, !dbg !622
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !620
  %4 = load i8, i8* %arrayidx, align 1, !dbg !620
  %conv = zext i8 %4 to i32, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !623
  br label %for.inc, !dbg !624

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !625
  %inc = add i64 %5, 1, !dbg !625
  store i64 %inc, i64* %i, align 8, !dbg !625
  br label %for.cond, !dbg !626, !llvm.loop !627

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !629
  ret void, !dbg !630
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !631 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !634, metadata !DIExpression()), !dbg !635
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !640, metadata !DIExpression()), !dbg !641
  store i64 0, i64* %numWritten, align 8, !dbg !641
  br label %while.cond, !dbg !642

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !643
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !644
  %cmp = icmp ult i64 %0, %1, !dbg !645
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !646

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !647
  %2 = load i16*, i16** %call, align 8, !dbg !647
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !647
  %4 = load i64, i64* %numWritten, align 8, !dbg !647
  %mul = mul i64 2, %4, !dbg !647
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !647
  %5 = load i8, i8* %arrayidx, align 1, !dbg !647
  %conv = sext i8 %5 to i32, !dbg !647
  %idxprom = sext i32 %conv to i64, !dbg !647
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !647
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !647
  %conv2 = zext i16 %6 to i32, !dbg !647
  %and = and i32 %conv2, 4096, !dbg !647
  %tobool = icmp ne i32 %and, 0, !dbg !647
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !648

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !649
  %7 = load i16*, i16** %call3, align 8, !dbg !649
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !649
  %9 = load i64, i64* %numWritten, align 8, !dbg !649
  %mul4 = mul i64 2, %9, !dbg !649
  %add = add i64 %mul4, 1, !dbg !649
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !649
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !649
  %conv6 = sext i8 %10 to i32, !dbg !649
  %idxprom7 = sext i32 %conv6 to i64, !dbg !649
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !649
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !649
  %conv9 = zext i16 %11 to i32, !dbg !649
  %and10 = and i32 %conv9, 4096, !dbg !649
  %tobool11 = icmp ne i32 %and10, 0, !dbg !648
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !650
  br i1 %12, label %while.body, label %while.end, !dbg !642

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !651, metadata !DIExpression()), !dbg !653
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !654
  %14 = load i64, i64* %numWritten, align 8, !dbg !655
  %mul12 = mul i64 2, %14, !dbg !656
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !654
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !657
  %15 = load i32, i32* %byte, align 4, !dbg !658
  %conv15 = trunc i32 %15 to i8, !dbg !659
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !660
  %17 = load i64, i64* %numWritten, align 8, !dbg !661
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !660
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !662
  %18 = load i64, i64* %numWritten, align 8, !dbg !663
  %inc = add i64 %18, 1, !dbg !663
  store i64 %inc, i64* %numWritten, align 8, !dbg !663
  br label %while.cond, !dbg !642, !llvm.loop !664

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !666
  ret i64 %19, !dbg !667
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !668 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !671, metadata !DIExpression()), !dbg !672
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !673, metadata !DIExpression()), !dbg !674
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !677, metadata !DIExpression()), !dbg !678
  store i64 0, i64* %numWritten, align 8, !dbg !678
  br label %while.cond, !dbg !679

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !680
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !681
  %cmp = icmp ult i64 %0, %1, !dbg !682
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !683

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !684
  %3 = load i64, i64* %numWritten, align 8, !dbg !685
  %mul = mul i64 2, %3, !dbg !686
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !684
  %4 = load i32, i32* %arrayidx, align 4, !dbg !684
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !687
  %tobool = icmp ne i32 %call, 0, !dbg !687
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !688

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !689
  %6 = load i64, i64* %numWritten, align 8, !dbg !690
  %mul1 = mul i64 2, %6, !dbg !691
  %add = add i64 %mul1, 1, !dbg !692
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !689
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !689
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !693
  %tobool4 = icmp ne i32 %call3, 0, !dbg !688
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !694
  br i1 %8, label %while.body, label %while.end, !dbg !679

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !695, metadata !DIExpression()), !dbg !697
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !698
  %10 = load i64, i64* %numWritten, align 8, !dbg !699
  %mul5 = mul i64 2, %10, !dbg !700
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !698
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !701
  %11 = load i32, i32* %byte, align 4, !dbg !702
  %conv = trunc i32 %11 to i8, !dbg !703
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !704
  %13 = load i64, i64* %numWritten, align 8, !dbg !705
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !704
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !706
  %14 = load i64, i64* %numWritten, align 8, !dbg !707
  %inc = add i64 %14, 1, !dbg !707
  store i64 %inc, i64* %numWritten, align 8, !dbg !707
  br label %while.cond, !dbg !679, !llvm.loop !708

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !710
  ret i64 %15, !dbg !711
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !712 {
entry:
  ret i32 1, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !716 {
entry:
  ret i32 0, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !718 {
entry:
  %call = call i32 @rand() #7, !dbg !719
  %rem = srem i32 %call, 2, !dbg !720
  ret i32 %rem, !dbg !721
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !730 {
entry:
  ret void, !dbg !731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !732 {
entry:
  ret void, !dbg !733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !734 {
entry:
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !736 {
entry:
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !738 {
entry:
  ret void, !dbg !739
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !740 {
entry:
  ret void, !dbg !741
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !742 {
entry:
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !744 {
entry:
  ret void, !dbg !745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !746 {
entry:
  ret void, !dbg !747
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !748 {
entry:
  ret void, !dbg !749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !750 {
entry:
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !752 {
entry:
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !754 {
entry:
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !756 {
entry:
  ret void, !dbg !757
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!100, !100}
!llvm.module.flags = !{!101, !102, !103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_537/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_537/source_code")
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
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !91, line: 178, size: 128, elements: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !90, file: !91, line: 180, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !95, line: 28, baseType: !24)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !90, file: !91, line: 181, baseType: !97, size: 112, offset: 16)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 14)
!100 = !{!"clang version 12.0.0"}
!101 = !{i32 7, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocalVariable(name: "dataPtr1", scope: !104, file: !45, line: 48, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!112 = !DILocation(line: 48, column: 10, scope: !104)
!113 = !DILocalVariable(name: "dataPtr2", scope: !104, file: !45, line: 49, type: !111)
!114 = !DILocation(line: 49, column: 10, scope: !104)
!115 = !DILocation(line: 51, column: 10, scope: !104)
!116 = !DILocalVariable(name: "data", scope: !117, file: !45, line: 53, type: !23)
!117 = distinct !DILexicalBlock(scope: !104, file: !45, line: 52, column: 5)
!118 = !DILocation(line: 53, column: 13, scope: !117)
!119 = !DILocation(line: 53, column: 21, scope: !117)
!120 = !DILocation(line: 53, column: 20, scope: !117)
!121 = !DILocalVariable(name: "recvResult", scope: !122, file: !45, line: 59, type: !23)
!122 = distinct !DILexicalBlock(scope: !117, file: !45, line: 54, column: 9)
!123 = !DILocation(line: 59, column: 17, scope: !122)
!124 = !DILocalVariable(name: "service", scope: !122, file: !45, line: 60, type: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !126)
!126 = !{!127, !128, !134, !141}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !125, file: !60, line: 240, baseType: !94, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !125, file: !60, line: 241, baseType: !129, size: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !133, line: 40, baseType: !24)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !125, file: !60, line: 242, baseType: !135, size: 32, offset: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !135, file: !60, line: 33, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 26, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !7)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !125, file: !60, line: 245, baseType: !142, size: 64, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DILocation(line: 60, column: 32, scope: !122)
!146 = !DILocalVariable(name: "connectSocket", scope: !122, file: !45, line: 61, type: !23)
!147 = !DILocation(line: 61, column: 20, scope: !122)
!148 = !DILocalVariable(name: "inputBuffer", scope: !122, file: !45, line: 62, type: !97)
!149 = !DILocation(line: 62, column: 18, scope: !122)
!150 = !DILocation(line: 63, column: 13, scope: !122)
!151 = !DILocation(line: 73, column: 33, scope: !152)
!152 = distinct !DILexicalBlock(scope: !122, file: !45, line: 64, column: 13)
!153 = !DILocation(line: 73, column: 31, scope: !152)
!154 = !DILocation(line: 74, column: 21, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !45, line: 74, column: 21)
!156 = !DILocation(line: 74, column: 35, scope: !155)
!157 = !DILocation(line: 74, column: 21, scope: !152)
!158 = !DILocation(line: 76, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !45, line: 75, column: 17)
!160 = !DILocation(line: 78, column: 17, scope: !152)
!161 = !DILocation(line: 79, column: 25, scope: !152)
!162 = !DILocation(line: 79, column: 36, scope: !152)
!163 = !DILocation(line: 80, column: 43, scope: !152)
!164 = !DILocation(line: 80, column: 25, scope: !152)
!165 = !DILocation(line: 80, column: 34, scope: !152)
!166 = !DILocation(line: 80, column: 41, scope: !152)
!167 = !DILocation(line: 81, column: 36, scope: !152)
!168 = !DILocation(line: 81, column: 25, scope: !152)
!169 = !DILocation(line: 81, column: 34, scope: !152)
!170 = !DILocation(line: 82, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !152, file: !45, line: 82, column: 21)
!172 = !DILocation(line: 82, column: 44, scope: !171)
!173 = !DILocation(line: 82, column: 21, scope: !171)
!174 = !DILocation(line: 82, column: 89, scope: !171)
!175 = !DILocation(line: 82, column: 21, scope: !152)
!176 = !DILocation(line: 84, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !45, line: 83, column: 17)
!178 = !DILocation(line: 88, column: 35, scope: !152)
!179 = !DILocation(line: 88, column: 50, scope: !152)
!180 = !DILocation(line: 88, column: 30, scope: !152)
!181 = !DILocation(line: 88, column: 28, scope: !152)
!182 = !DILocation(line: 89, column: 21, scope: !183)
!183 = distinct !DILexicalBlock(scope: !152, file: !45, line: 89, column: 21)
!184 = !DILocation(line: 89, column: 32, scope: !183)
!185 = !DILocation(line: 89, column: 48, scope: !183)
!186 = !DILocation(line: 89, column: 51, scope: !183)
!187 = !DILocation(line: 89, column: 62, scope: !183)
!188 = !DILocation(line: 89, column: 21, scope: !152)
!189 = !DILocation(line: 91, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !45, line: 90, column: 17)
!191 = !DILocation(line: 94, column: 29, scope: !152)
!192 = !DILocation(line: 94, column: 17, scope: !152)
!193 = !DILocation(line: 94, column: 41, scope: !152)
!194 = !DILocation(line: 96, column: 29, scope: !152)
!195 = !DILocation(line: 96, column: 24, scope: !152)
!196 = !DILocation(line: 96, column: 22, scope: !152)
!197 = !DILocation(line: 97, column: 13, scope: !152)
!198 = !DILocation(line: 99, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !122, file: !45, line: 99, column: 17)
!200 = !DILocation(line: 99, column: 31, scope: !199)
!201 = !DILocation(line: 99, column: 17, scope: !122)
!202 = !DILocation(line: 101, column: 30, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !45, line: 100, column: 13)
!204 = !DILocation(line: 101, column: 17, scope: !203)
!205 = !DILocation(line: 102, column: 13, scope: !203)
!206 = !DILocation(line: 110, column: 21, scope: !117)
!207 = !DILocation(line: 110, column: 10, scope: !117)
!208 = !DILocation(line: 110, column: 19, scope: !117)
!209 = !DILocalVariable(name: "data", scope: !210, file: !45, line: 113, type: !23)
!210 = distinct !DILexicalBlock(scope: !104, file: !45, line: 112, column: 5)
!211 = !DILocation(line: 113, column: 13, scope: !210)
!212 = !DILocation(line: 113, column: 21, scope: !210)
!213 = !DILocation(line: 113, column: 20, scope: !210)
!214 = !DILocalVariable(name: "i", scope: !215, file: !45, line: 115, type: !23)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 114, column: 9)
!216 = !DILocation(line: 115, column: 17, scope: !215)
!217 = !DILocalVariable(name: "buffer", scope: !215, file: !45, line: 116, type: !218)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 10)
!221 = !DILocation(line: 116, column: 17, scope: !215)
!222 = !DILocation(line: 119, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !45, line: 119, column: 17)
!224 = !DILocation(line: 119, column: 22, scope: !223)
!225 = !DILocation(line: 119, column: 17, scope: !215)
!226 = !DILocation(line: 121, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !45, line: 120, column: 13)
!228 = !DILocation(line: 121, column: 17, scope: !227)
!229 = !DILocation(line: 121, column: 30, scope: !227)
!230 = !DILocation(line: 123, column: 23, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 123, column: 17)
!232 = !DILocation(line: 123, column: 21, scope: !231)
!233 = !DILocation(line: 123, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !45, line: 123, column: 17)
!235 = !DILocation(line: 123, column: 30, scope: !234)
!236 = !DILocation(line: 123, column: 17, scope: !231)
!237 = !DILocation(line: 125, column: 41, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !45, line: 124, column: 17)
!239 = !DILocation(line: 125, column: 34, scope: !238)
!240 = !DILocation(line: 125, column: 21, scope: !238)
!241 = !DILocation(line: 126, column: 17, scope: !238)
!242 = !DILocation(line: 123, column: 37, scope: !234)
!243 = !DILocation(line: 123, column: 17, scope: !234)
!244 = distinct !{!244, !236, !245, !246}
!245 = !DILocation(line: 126, column: 17, scope: !231)
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocation(line: 127, column: 13, scope: !227)
!248 = !DILocation(line: 130, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !223, file: !45, line: 129, column: 13)
!250 = !DILocation(line: 134, column: 1, scope: !104)
!251 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 141, type: !105, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!252 = !DILocalVariable(name: "data", scope: !251, file: !45, line: 143, type: !23)
!253 = !DILocation(line: 143, column: 9, scope: !251)
!254 = !DILocalVariable(name: "dataPtr1", scope: !251, file: !45, line: 144, type: !111)
!255 = !DILocation(line: 144, column: 10, scope: !251)
!256 = !DILocalVariable(name: "dataPtr2", scope: !251, file: !45, line: 145, type: !111)
!257 = !DILocation(line: 145, column: 10, scope: !251)
!258 = !DILocation(line: 147, column: 10, scope: !251)
!259 = !DILocalVariable(name: "data", scope: !260, file: !45, line: 149, type: !23)
!260 = distinct !DILexicalBlock(scope: !251, file: !45, line: 148, column: 5)
!261 = !DILocation(line: 149, column: 13, scope: !260)
!262 = !DILocation(line: 149, column: 21, scope: !260)
!263 = !DILocation(line: 149, column: 20, scope: !260)
!264 = !DILocation(line: 152, column: 14, scope: !260)
!265 = !DILocation(line: 153, column: 21, scope: !260)
!266 = !DILocation(line: 153, column: 10, scope: !260)
!267 = !DILocation(line: 153, column: 19, scope: !260)
!268 = !DILocalVariable(name: "data", scope: !269, file: !45, line: 156, type: !23)
!269 = distinct !DILexicalBlock(scope: !251, file: !45, line: 155, column: 5)
!270 = !DILocation(line: 156, column: 13, scope: !269)
!271 = !DILocation(line: 156, column: 21, scope: !269)
!272 = !DILocation(line: 156, column: 20, scope: !269)
!273 = !DILocalVariable(name: "i", scope: !274, file: !45, line: 158, type: !23)
!274 = distinct !DILexicalBlock(scope: !269, file: !45, line: 157, column: 9)
!275 = !DILocation(line: 158, column: 17, scope: !274)
!276 = !DILocalVariable(name: "buffer", scope: !274, file: !45, line: 159, type: !218)
!277 = !DILocation(line: 159, column: 17, scope: !274)
!278 = !DILocation(line: 162, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !45, line: 162, column: 17)
!280 = !DILocation(line: 162, column: 22, scope: !279)
!281 = !DILocation(line: 162, column: 17, scope: !274)
!282 = !DILocation(line: 164, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !45, line: 163, column: 13)
!284 = !DILocation(line: 164, column: 17, scope: !283)
!285 = !DILocation(line: 164, column: 30, scope: !283)
!286 = !DILocation(line: 166, column: 23, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !45, line: 166, column: 17)
!288 = !DILocation(line: 166, column: 21, scope: !287)
!289 = !DILocation(line: 166, column: 28, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !45, line: 166, column: 17)
!291 = !DILocation(line: 166, column: 30, scope: !290)
!292 = !DILocation(line: 166, column: 17, scope: !287)
!293 = !DILocation(line: 168, column: 41, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !45, line: 167, column: 17)
!295 = !DILocation(line: 168, column: 34, scope: !294)
!296 = !DILocation(line: 168, column: 21, scope: !294)
!297 = !DILocation(line: 169, column: 17, scope: !294)
!298 = !DILocation(line: 166, column: 37, scope: !290)
!299 = !DILocation(line: 166, column: 17, scope: !290)
!300 = distinct !{!300, !292, !301, !246}
!301 = !DILocation(line: 169, column: 17, scope: !287)
!302 = !DILocation(line: 170, column: 13, scope: !283)
!303 = !DILocation(line: 173, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !279, file: !45, line: 172, column: 13)
!305 = !DILocation(line: 177, column: 1, scope: !251)
!306 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 180, type: !105, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!307 = !DILocalVariable(name: "data", scope: !306, file: !45, line: 182, type: !23)
!308 = !DILocation(line: 182, column: 9, scope: !306)
!309 = !DILocalVariable(name: "dataPtr1", scope: !306, file: !45, line: 183, type: !111)
!310 = !DILocation(line: 183, column: 10, scope: !306)
!311 = !DILocalVariable(name: "dataPtr2", scope: !306, file: !45, line: 184, type: !111)
!312 = !DILocation(line: 184, column: 10, scope: !306)
!313 = !DILocation(line: 186, column: 10, scope: !306)
!314 = !DILocalVariable(name: "data", scope: !315, file: !45, line: 188, type: !23)
!315 = distinct !DILexicalBlock(scope: !306, file: !45, line: 187, column: 5)
!316 = !DILocation(line: 188, column: 13, scope: !315)
!317 = !DILocation(line: 188, column: 21, scope: !315)
!318 = !DILocation(line: 188, column: 20, scope: !315)
!319 = !DILocalVariable(name: "recvResult", scope: !320, file: !45, line: 194, type: !23)
!320 = distinct !DILexicalBlock(scope: !315, file: !45, line: 189, column: 9)
!321 = !DILocation(line: 194, column: 17, scope: !320)
!322 = !DILocalVariable(name: "service", scope: !320, file: !45, line: 195, type: !125)
!323 = !DILocation(line: 195, column: 32, scope: !320)
!324 = !DILocalVariable(name: "connectSocket", scope: !320, file: !45, line: 196, type: !23)
!325 = !DILocation(line: 196, column: 20, scope: !320)
!326 = !DILocalVariable(name: "inputBuffer", scope: !320, file: !45, line: 197, type: !97)
!327 = !DILocation(line: 197, column: 18, scope: !320)
!328 = !DILocation(line: 198, column: 13, scope: !320)
!329 = !DILocation(line: 208, column: 33, scope: !330)
!330 = distinct !DILexicalBlock(scope: !320, file: !45, line: 199, column: 13)
!331 = !DILocation(line: 208, column: 31, scope: !330)
!332 = !DILocation(line: 209, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !45, line: 209, column: 21)
!334 = !DILocation(line: 209, column: 35, scope: !333)
!335 = !DILocation(line: 209, column: 21, scope: !330)
!336 = !DILocation(line: 211, column: 21, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !45, line: 210, column: 17)
!338 = !DILocation(line: 213, column: 17, scope: !330)
!339 = !DILocation(line: 214, column: 25, scope: !330)
!340 = !DILocation(line: 214, column: 36, scope: !330)
!341 = !DILocation(line: 215, column: 43, scope: !330)
!342 = !DILocation(line: 215, column: 25, scope: !330)
!343 = !DILocation(line: 215, column: 34, scope: !330)
!344 = !DILocation(line: 215, column: 41, scope: !330)
!345 = !DILocation(line: 216, column: 36, scope: !330)
!346 = !DILocation(line: 216, column: 25, scope: !330)
!347 = !DILocation(line: 216, column: 34, scope: !330)
!348 = !DILocation(line: 217, column: 29, scope: !349)
!349 = distinct !DILexicalBlock(scope: !330, file: !45, line: 217, column: 21)
!350 = !DILocation(line: 217, column: 44, scope: !349)
!351 = !DILocation(line: 217, column: 21, scope: !349)
!352 = !DILocation(line: 217, column: 89, scope: !349)
!353 = !DILocation(line: 217, column: 21, scope: !330)
!354 = !DILocation(line: 219, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !45, line: 218, column: 17)
!356 = !DILocation(line: 223, column: 35, scope: !330)
!357 = !DILocation(line: 223, column: 50, scope: !330)
!358 = !DILocation(line: 223, column: 30, scope: !330)
!359 = !DILocation(line: 223, column: 28, scope: !330)
!360 = !DILocation(line: 224, column: 21, scope: !361)
!361 = distinct !DILexicalBlock(scope: !330, file: !45, line: 224, column: 21)
!362 = !DILocation(line: 224, column: 32, scope: !361)
!363 = !DILocation(line: 224, column: 48, scope: !361)
!364 = !DILocation(line: 224, column: 51, scope: !361)
!365 = !DILocation(line: 224, column: 62, scope: !361)
!366 = !DILocation(line: 224, column: 21, scope: !330)
!367 = !DILocation(line: 226, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !45, line: 225, column: 17)
!369 = !DILocation(line: 229, column: 29, scope: !330)
!370 = !DILocation(line: 229, column: 17, scope: !330)
!371 = !DILocation(line: 229, column: 41, scope: !330)
!372 = !DILocation(line: 231, column: 29, scope: !330)
!373 = !DILocation(line: 231, column: 24, scope: !330)
!374 = !DILocation(line: 231, column: 22, scope: !330)
!375 = !DILocation(line: 232, column: 13, scope: !330)
!376 = !DILocation(line: 234, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !320, file: !45, line: 234, column: 17)
!378 = !DILocation(line: 234, column: 31, scope: !377)
!379 = !DILocation(line: 234, column: 17, scope: !320)
!380 = !DILocation(line: 236, column: 30, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !45, line: 235, column: 13)
!382 = !DILocation(line: 236, column: 17, scope: !381)
!383 = !DILocation(line: 237, column: 13, scope: !381)
!384 = !DILocation(line: 245, column: 21, scope: !315)
!385 = !DILocation(line: 245, column: 10, scope: !315)
!386 = !DILocation(line: 245, column: 19, scope: !315)
!387 = !DILocalVariable(name: "data", scope: !388, file: !45, line: 248, type: !23)
!388 = distinct !DILexicalBlock(scope: !306, file: !45, line: 247, column: 5)
!389 = !DILocation(line: 248, column: 13, scope: !388)
!390 = !DILocation(line: 248, column: 21, scope: !388)
!391 = !DILocation(line: 248, column: 20, scope: !388)
!392 = !DILocalVariable(name: "i", scope: !393, file: !45, line: 250, type: !23)
!393 = distinct !DILexicalBlock(scope: !388, file: !45, line: 249, column: 9)
!394 = !DILocation(line: 250, column: 17, scope: !393)
!395 = !DILocalVariable(name: "buffer", scope: !393, file: !45, line: 251, type: !218)
!396 = !DILocation(line: 251, column: 17, scope: !393)
!397 = !DILocation(line: 253, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !45, line: 253, column: 17)
!399 = !DILocation(line: 253, column: 22, scope: !398)
!400 = !DILocation(line: 253, column: 27, scope: !398)
!401 = !DILocation(line: 253, column: 30, scope: !398)
!402 = !DILocation(line: 253, column: 35, scope: !398)
!403 = !DILocation(line: 253, column: 17, scope: !393)
!404 = !DILocation(line: 255, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !45, line: 254, column: 13)
!406 = !DILocation(line: 255, column: 17, scope: !405)
!407 = !DILocation(line: 255, column: 30, scope: !405)
!408 = !DILocation(line: 257, column: 23, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !45, line: 257, column: 17)
!410 = !DILocation(line: 257, column: 21, scope: !409)
!411 = !DILocation(line: 257, column: 28, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !45, line: 257, column: 17)
!413 = !DILocation(line: 257, column: 30, scope: !412)
!414 = !DILocation(line: 257, column: 17, scope: !409)
!415 = !DILocation(line: 259, column: 41, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !45, line: 258, column: 17)
!417 = !DILocation(line: 259, column: 34, scope: !416)
!418 = !DILocation(line: 259, column: 21, scope: !416)
!419 = !DILocation(line: 260, column: 17, scope: !416)
!420 = !DILocation(line: 257, column: 37, scope: !412)
!421 = !DILocation(line: 257, column: 17, scope: !412)
!422 = distinct !{!422, !414, !423, !246}
!423 = !DILocation(line: 260, column: 17, scope: !409)
!424 = !DILocation(line: 261, column: 13, scope: !405)
!425 = !DILocation(line: 264, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !398, file: !45, line: 263, column: 13)
!427 = !DILocation(line: 268, column: 1, scope: !306)
!428 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_good", scope: !45, file: !45, line: 270, type: !105, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!429 = !DILocation(line: 272, column: 5, scope: !428)
!430 = !DILocation(line: 273, column: 5, scope: !428)
!431 = !DILocation(line: 274, column: 1, scope: !428)
!432 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !433, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !42}
!435 = !DILocalVariable(name: "line", arg: 1, scope: !432, file: !3, line: 11, type: !42)
!436 = !DILocation(line: 11, column: 25, scope: !432)
!437 = !DILocation(line: 13, column: 1, scope: !432)
!438 = !DILocation(line: 14, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !432, file: !3, line: 14, column: 8)
!440 = !DILocation(line: 14, column: 13, scope: !439)
!441 = !DILocation(line: 14, column: 8, scope: !432)
!442 = !DILocation(line: 16, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 15, column: 5)
!444 = !DILocation(line: 16, column: 9, scope: !443)
!445 = !DILocation(line: 17, column: 5, scope: !443)
!446 = !DILocation(line: 18, column: 5, scope: !432)
!447 = !DILocation(line: 19, column: 1, scope: !432)
!448 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !433, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!449 = !DILocalVariable(name: "line", arg: 1, scope: !448, file: !3, line: 20, type: !42)
!450 = !DILocation(line: 20, column: 29, scope: !448)
!451 = !DILocation(line: 22, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 22, column: 8)
!453 = !DILocation(line: 22, column: 13, scope: !452)
!454 = !DILocation(line: 22, column: 8, scope: !448)
!455 = !DILocation(line: 24, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !3, line: 23, column: 5)
!457 = !DILocation(line: 24, column: 9, scope: !456)
!458 = !DILocation(line: 25, column: 5, scope: !456)
!459 = !DILocation(line: 26, column: 1, scope: !448)
!460 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !461, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !465, line: 74, baseType: !23)
!465 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!466 = !DILocalVariable(name: "line", arg: 1, scope: !460, file: !3, line: 27, type: !463)
!467 = !DILocation(line: 27, column: 29, scope: !460)
!468 = !DILocation(line: 29, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !3, line: 29, column: 8)
!470 = !DILocation(line: 29, column: 13, scope: !469)
!471 = !DILocation(line: 29, column: 8, scope: !460)
!472 = !DILocation(line: 31, column: 27, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 30, column: 5)
!474 = !DILocation(line: 31, column: 9, scope: !473)
!475 = !DILocation(line: 32, column: 5, scope: !473)
!476 = !DILocation(line: 33, column: 1, scope: !460)
!477 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !478, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !23}
!480 = !DILocalVariable(name: "intNumber", arg: 1, scope: !477, file: !3, line: 35, type: !23)
!481 = !DILocation(line: 35, column: 24, scope: !477)
!482 = !DILocation(line: 37, column: 20, scope: !477)
!483 = !DILocation(line: 37, column: 5, scope: !477)
!484 = !DILocation(line: 38, column: 1, scope: !477)
!485 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !486, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !488}
!488 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!489 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !485, file: !3, line: 40, type: !488)
!490 = !DILocation(line: 40, column: 28, scope: !485)
!491 = !DILocation(line: 42, column: 21, scope: !485)
!492 = !DILocation(line: 42, column: 5, scope: !485)
!493 = !DILocation(line: 43, column: 1, scope: !485)
!494 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !495, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!498 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !494, file: !3, line: 45, type: !497)
!499 = !DILocation(line: 45, column: 28, scope: !494)
!500 = !DILocation(line: 47, column: 20, scope: !494)
!501 = !DILocation(line: 47, column: 5, scope: !494)
!502 = !DILocation(line: 48, column: 1, scope: !494)
!503 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !504, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506}
!506 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!507 = !DILocalVariable(name: "longNumber", arg: 1, scope: !503, file: !3, line: 50, type: !506)
!508 = !DILocation(line: 50, column: 26, scope: !503)
!509 = !DILocation(line: 52, column: 21, scope: !503)
!510 = !DILocation(line: 52, column: 5, scope: !503)
!511 = !DILocation(line: 53, column: 1, scope: !503)
!512 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !513, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !516, line: 27, baseType: !517)
!516 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !133, line: 44, baseType: !506)
!518 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !512, file: !3, line: 55, type: !515)
!519 = !DILocation(line: 55, column: 33, scope: !512)
!520 = !DILocation(line: 57, column: 29, scope: !512)
!521 = !DILocation(line: 57, column: 5, scope: !512)
!522 = !DILocation(line: 58, column: 1, scope: !512)
!523 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !524, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !465, line: 46, baseType: !527)
!527 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!528 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !523, file: !3, line: 60, type: !526)
!529 = !DILocation(line: 60, column: 29, scope: !523)
!530 = !DILocation(line: 62, column: 21, scope: !523)
!531 = !DILocation(line: 62, column: 5, scope: !523)
!532 = !DILocation(line: 63, column: 1, scope: !523)
!533 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !534, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !43}
!536 = !DILocalVariable(name: "charHex", arg: 1, scope: !533, file: !3, line: 65, type: !43)
!537 = !DILocation(line: 65, column: 29, scope: !533)
!538 = !DILocation(line: 67, column: 22, scope: !533)
!539 = !DILocation(line: 67, column: 5, scope: !533)
!540 = !DILocation(line: 68, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !542, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !464}
!544 = !DILocalVariable(name: "wideChar", arg: 1, scope: !541, file: !3, line: 70, type: !464)
!545 = !DILocation(line: 70, column: 29, scope: !541)
!546 = !DILocalVariable(name: "s", scope: !541, file: !3, line: 74, type: !547)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 64, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 2)
!550 = !DILocation(line: 74, column: 13, scope: !541)
!551 = !DILocation(line: 75, column: 16, scope: !541)
!552 = !DILocation(line: 75, column: 9, scope: !541)
!553 = !DILocation(line: 75, column: 14, scope: !541)
!554 = !DILocation(line: 76, column: 9, scope: !541)
!555 = !DILocation(line: 76, column: 14, scope: !541)
!556 = !DILocation(line: 77, column: 21, scope: !541)
!557 = !DILocation(line: 77, column: 5, scope: !541)
!558 = !DILocation(line: 78, column: 1, scope: !541)
!559 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !560, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !7}
!562 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !559, file: !3, line: 80, type: !7)
!563 = !DILocation(line: 80, column: 33, scope: !559)
!564 = !DILocation(line: 82, column: 20, scope: !559)
!565 = !DILocation(line: 82, column: 5, scope: !559)
!566 = !DILocation(line: 83, column: 1, scope: !559)
!567 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !568, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !25}
!570 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !567, file: !3, line: 85, type: !25)
!571 = !DILocation(line: 85, column: 45, scope: !567)
!572 = !DILocation(line: 87, column: 22, scope: !567)
!573 = !DILocation(line: 87, column: 5, scope: !567)
!574 = !DILocation(line: 88, column: 1, scope: !567)
!575 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !576, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578}
!578 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!579 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !575, file: !3, line: 90, type: !578)
!580 = !DILocation(line: 90, column: 29, scope: !575)
!581 = !DILocation(line: 92, column: 20, scope: !575)
!582 = !DILocation(line: 92, column: 5, scope: !575)
!583 = !DILocation(line: 93, column: 1, scope: !575)
!584 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !585, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !589, line: 100, baseType: !590)
!589 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_537/source_code")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !589, line: 96, size: 64, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !590, file: !589, line: 98, baseType: !23, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !590, file: !589, line: 99, baseType: !23, size: 32, offset: 32)
!594 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !584, file: !3, line: 95, type: !587)
!595 = !DILocation(line: 95, column: 40, scope: !584)
!596 = !DILocation(line: 97, column: 26, scope: !584)
!597 = !DILocation(line: 97, column: 47, scope: !584)
!598 = !DILocation(line: 97, column: 55, scope: !584)
!599 = !DILocation(line: 97, column: 76, scope: !584)
!600 = !DILocation(line: 97, column: 5, scope: !584)
!601 = !DILocation(line: 98, column: 1, scope: !584)
!602 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !603, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !605, !526}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!606 = !DILocalVariable(name: "bytes", arg: 1, scope: !602, file: !3, line: 100, type: !605)
!607 = !DILocation(line: 100, column: 38, scope: !602)
!608 = !DILocalVariable(name: "numBytes", arg: 2, scope: !602, file: !3, line: 100, type: !526)
!609 = !DILocation(line: 100, column: 52, scope: !602)
!610 = !DILocalVariable(name: "i", scope: !602, file: !3, line: 102, type: !526)
!611 = !DILocation(line: 102, column: 12, scope: !602)
!612 = !DILocation(line: 103, column: 12, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !3, line: 103, column: 5)
!614 = !DILocation(line: 103, column: 10, scope: !613)
!615 = !DILocation(line: 103, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 103, column: 5)
!617 = !DILocation(line: 103, column: 21, scope: !616)
!618 = !DILocation(line: 103, column: 19, scope: !616)
!619 = !DILocation(line: 103, column: 5, scope: !613)
!620 = !DILocation(line: 105, column: 24, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 104, column: 5)
!622 = !DILocation(line: 105, column: 30, scope: !621)
!623 = !DILocation(line: 105, column: 9, scope: !621)
!624 = !DILocation(line: 106, column: 5, scope: !621)
!625 = !DILocation(line: 103, column: 31, scope: !616)
!626 = !DILocation(line: 103, column: 5, scope: !616)
!627 = distinct !{!627, !619, !628, !246}
!628 = !DILocation(line: 106, column: 5, scope: !613)
!629 = !DILocation(line: 107, column: 5, scope: !602)
!630 = !DILocation(line: 108, column: 1, scope: !602)
!631 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !632, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!632 = !DISubroutineType(types: !633)
!633 = !{!526, !605, !526, !42}
!634 = !DILocalVariable(name: "bytes", arg: 1, scope: !631, file: !3, line: 113, type: !605)
!635 = !DILocation(line: 113, column: 39, scope: !631)
!636 = !DILocalVariable(name: "numBytes", arg: 2, scope: !631, file: !3, line: 113, type: !526)
!637 = !DILocation(line: 113, column: 53, scope: !631)
!638 = !DILocalVariable(name: "hex", arg: 3, scope: !631, file: !3, line: 113, type: !42)
!639 = !DILocation(line: 113, column: 71, scope: !631)
!640 = !DILocalVariable(name: "numWritten", scope: !631, file: !3, line: 115, type: !526)
!641 = !DILocation(line: 115, column: 12, scope: !631)
!642 = !DILocation(line: 121, column: 5, scope: !631)
!643 = !DILocation(line: 121, column: 12, scope: !631)
!644 = !DILocation(line: 121, column: 25, scope: !631)
!645 = !DILocation(line: 121, column: 23, scope: !631)
!646 = !DILocation(line: 121, column: 34, scope: !631)
!647 = !DILocation(line: 121, column: 37, scope: !631)
!648 = !DILocation(line: 121, column: 67, scope: !631)
!649 = !DILocation(line: 121, column: 70, scope: !631)
!650 = !DILocation(line: 0, scope: !631)
!651 = !DILocalVariable(name: "byte", scope: !652, file: !3, line: 123, type: !23)
!652 = distinct !DILexicalBlock(scope: !631, file: !3, line: 122, column: 5)
!653 = !DILocation(line: 123, column: 13, scope: !652)
!654 = !DILocation(line: 124, column: 17, scope: !652)
!655 = !DILocation(line: 124, column: 25, scope: !652)
!656 = !DILocation(line: 124, column: 23, scope: !652)
!657 = !DILocation(line: 124, column: 9, scope: !652)
!658 = !DILocation(line: 125, column: 45, scope: !652)
!659 = !DILocation(line: 125, column: 29, scope: !652)
!660 = !DILocation(line: 125, column: 9, scope: !652)
!661 = !DILocation(line: 125, column: 15, scope: !652)
!662 = !DILocation(line: 125, column: 27, scope: !652)
!663 = !DILocation(line: 126, column: 9, scope: !652)
!664 = distinct !{!664, !642, !665, !246}
!665 = !DILocation(line: 127, column: 5, scope: !631)
!666 = !DILocation(line: 129, column: 12, scope: !631)
!667 = !DILocation(line: 129, column: 5, scope: !631)
!668 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !669, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!669 = !DISubroutineType(types: !670)
!670 = !{!526, !605, !526, !463}
!671 = !DILocalVariable(name: "bytes", arg: 1, scope: !668, file: !3, line: 135, type: !605)
!672 = !DILocation(line: 135, column: 41, scope: !668)
!673 = !DILocalVariable(name: "numBytes", arg: 2, scope: !668, file: !3, line: 135, type: !526)
!674 = !DILocation(line: 135, column: 55, scope: !668)
!675 = !DILocalVariable(name: "hex", arg: 3, scope: !668, file: !3, line: 135, type: !463)
!676 = !DILocation(line: 135, column: 76, scope: !668)
!677 = !DILocalVariable(name: "numWritten", scope: !668, file: !3, line: 137, type: !526)
!678 = !DILocation(line: 137, column: 12, scope: !668)
!679 = !DILocation(line: 143, column: 5, scope: !668)
!680 = !DILocation(line: 143, column: 12, scope: !668)
!681 = !DILocation(line: 143, column: 25, scope: !668)
!682 = !DILocation(line: 143, column: 23, scope: !668)
!683 = !DILocation(line: 143, column: 34, scope: !668)
!684 = !DILocation(line: 143, column: 47, scope: !668)
!685 = !DILocation(line: 143, column: 55, scope: !668)
!686 = !DILocation(line: 143, column: 53, scope: !668)
!687 = !DILocation(line: 143, column: 37, scope: !668)
!688 = !DILocation(line: 143, column: 68, scope: !668)
!689 = !DILocation(line: 143, column: 81, scope: !668)
!690 = !DILocation(line: 143, column: 89, scope: !668)
!691 = !DILocation(line: 143, column: 87, scope: !668)
!692 = !DILocation(line: 143, column: 100, scope: !668)
!693 = !DILocation(line: 143, column: 71, scope: !668)
!694 = !DILocation(line: 0, scope: !668)
!695 = !DILocalVariable(name: "byte", scope: !696, file: !3, line: 145, type: !23)
!696 = distinct !DILexicalBlock(scope: !668, file: !3, line: 144, column: 5)
!697 = !DILocation(line: 145, column: 13, scope: !696)
!698 = !DILocation(line: 146, column: 18, scope: !696)
!699 = !DILocation(line: 146, column: 26, scope: !696)
!700 = !DILocation(line: 146, column: 24, scope: !696)
!701 = !DILocation(line: 146, column: 9, scope: !696)
!702 = !DILocation(line: 147, column: 45, scope: !696)
!703 = !DILocation(line: 147, column: 29, scope: !696)
!704 = !DILocation(line: 147, column: 9, scope: !696)
!705 = !DILocation(line: 147, column: 15, scope: !696)
!706 = !DILocation(line: 147, column: 27, scope: !696)
!707 = !DILocation(line: 148, column: 9, scope: !696)
!708 = distinct !{!708, !679, !709, !246}
!709 = !DILocation(line: 149, column: 5, scope: !668)
!710 = !DILocation(line: 151, column: 12, scope: !668)
!711 = !DILocation(line: 151, column: 5, scope: !668)
!712 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !713, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!713 = !DISubroutineType(types: !714)
!714 = !{!23}
!715 = !DILocation(line: 158, column: 5, scope: !712)
!716 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !713, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!717 = !DILocation(line: 163, column: 5, scope: !716)
!718 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !713, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!719 = !DILocation(line: 168, column: 13, scope: !718)
!720 = !DILocation(line: 168, column: 20, scope: !718)
!721 = !DILocation(line: 168, column: 5, scope: !718)
!722 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DILocation(line: 187, column: 16, scope: !722)
!724 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!725 = !DILocation(line: 188, column: 16, scope: !724)
!726 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!727 = !DILocation(line: 189, column: 16, scope: !726)
!728 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!729 = !DILocation(line: 190, column: 16, scope: !728)
!730 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!731 = !DILocation(line: 191, column: 16, scope: !730)
!732 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!733 = !DILocation(line: 192, column: 16, scope: !732)
!734 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!735 = !DILocation(line: 193, column: 16, scope: !734)
!736 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!737 = !DILocation(line: 194, column: 16, scope: !736)
!738 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!739 = !DILocation(line: 195, column: 16, scope: !738)
!740 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!741 = !DILocation(line: 198, column: 15, scope: !740)
!742 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!743 = !DILocation(line: 199, column: 15, scope: !742)
!744 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!745 = !DILocation(line: 200, column: 15, scope: !744)
!746 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!747 = !DILocation(line: 201, column: 15, scope: !746)
!748 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!749 = !DILocation(line: 202, column: 15, scope: !748)
!750 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!751 = !DILocation(line: 203, column: 15, scope: !750)
!752 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!753 = !DILocation(line: 204, column: 15, scope: !752)
!754 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DILocation(line: 205, column: 15, scope: !754)
!756 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DILocation(line: 206, column: 15, scope: !756)
