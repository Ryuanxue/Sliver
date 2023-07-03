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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %data, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !114, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !136, metadata !DIExpression()), !dbg !137
  store i32 -1, i32* %connectSocket, align 4, !dbg !137
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  br label %do.body, !dbg !140

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !141
  store i32 %call, i32* %connectSocket, align 4, !dbg !143
  %0 = load i32, i32* %connectSocket, align 4, !dbg !144
  %cmp = icmp eq i32 %0, -1, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !148

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !150
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !151
  store i16 2, i16* %sin_family, align 4, !dbg !152
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !153
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !154
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !155
  store i32 %call1, i32* %s_addr, align 4, !dbg !156
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !157
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !158
  store i16 %call2, i16* %sin_port, align 2, !dbg !159
  %2 = load i32, i32* %connectSocket, align 4, !dbg !160
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !162
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !163
  %cmp4 = icmp eq i32 %call3, -1, !dbg !164
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !165

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !166

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !168
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !169
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !170
  %conv = trunc i64 %call7 to i32, !dbg !170
  store i32 %conv, i32* %recvResult, align 4, !dbg !171
  %5 = load i32, i32* %recvResult, align 4, !dbg !172
  %cmp8 = icmp eq i32 %5, -1, !dbg !174
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !175

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !176
  %cmp10 = icmp eq i32 %6, 0, !dbg !177
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !178

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !179

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !181
  %idxprom = sext i32 %7 to i64, !dbg !182
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !182
  store i8 0, i8* %arrayidx, align 1, !dbg !183
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !184
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !185
  store i32 %call15, i32* %data, align 4, !dbg !186
  br label %do.end, !dbg !187

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !188
  %cmp16 = icmp ne i32 %8, -1, !dbg !190
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !191

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !192
  %call19 = call i32 @close(i32 %9), !dbg !194
  br label %if.end20, !dbg !195

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !196, metadata !DIExpression()), !dbg !198
  %10 = load i32, i32* %data, align 4, !dbg !199
  store i32 %10, i32* %dataCopy, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !200, metadata !DIExpression()), !dbg !201
  %11 = load i32, i32* %dataCopy, align 4, !dbg !202
  store i32 %11, i32* %data21, align 4, !dbg !201
  call void @llvm.dbg.declare(metadata i32* %i, metadata !203, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !206, metadata !DIExpression()), !dbg !210
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !210
  %13 = load i32, i32* %data21, align 4, !dbg !211
  %cmp22 = icmp sge i32 %13, 0, !dbg !213
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !214

if.then24:                                        ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !215
  %idxprom25 = sext i32 %14 to i64, !dbg !217
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !217
  store i32 1, i32* %arrayidx26, align 4, !dbg !218
  store i32 0, i32* %i, align 4, !dbg !219
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !222
  %cmp27 = icmp slt i32 %15, 10, !dbg !224
  br i1 %cmp27, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !226
  %idxprom29 = sext i32 %16 to i64, !dbg !228
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !228
  %17 = load i32, i32* %arrayidx30, align 4, !dbg !228
  call void @printIntLine(i32 %17), !dbg !229
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !231
  %inc = add nsw i32 %18, 1, !dbg !231
  store i32 %inc, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !236

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !237
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  ret void, !dbg !239
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
define dso_local void @goodG2B() #0 !dbg !240 {
entry:
  %data = alloca i32, align 4
  %dataCopy = alloca i32, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 -1, i32* %data, align 4, !dbg !243
  store i32 7, i32* %data, align 4, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !245, metadata !DIExpression()), !dbg !247
  %0 = load i32, i32* %data, align 4, !dbg !248
  store i32 %0, i32* %dataCopy, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !249, metadata !DIExpression()), !dbg !250
  %1 = load i32, i32* %dataCopy, align 4, !dbg !251
  store i32 %1, i32* %data1, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %i, metadata !252, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !255, metadata !DIExpression()), !dbg !256
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !256
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !256
  %3 = load i32, i32* %data1, align 4, !dbg !257
  %cmp = icmp sge i32 %3, 0, !dbg !259
  br i1 %cmp, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !261
  %idxprom = sext i32 %4 to i64, !dbg !263
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !263
  store i32 1, i32* %arrayidx, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !268
  %cmp2 = icmp slt i32 %5, 10, !dbg !270
  br i1 %cmp2, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !272
  %idxprom3 = sext i32 %6 to i64, !dbg !274
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !274
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !274
  call void @printIntLine(i32 %7), !dbg !275
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !277
  %inc = add nsw i32 %8, 1, !dbg !277
  store i32 %inc, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !281

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !282
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !285 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 -1, i32* %data, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 -1, i32* %connectSocket, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !296, metadata !DIExpression()), !dbg !297
  br label %do.body, !dbg !298

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !299
  store i32 %call, i32* %connectSocket, align 4, !dbg !301
  %0 = load i32, i32* %connectSocket, align 4, !dbg !302
  %cmp = icmp eq i32 %0, -1, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !306

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !308
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !308
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !309
  store i16 2, i16* %sin_family, align 4, !dbg !310
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !311
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !312
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !313
  store i32 %call1, i32* %s_addr, align 4, !dbg !314
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !315
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !316
  store i16 %call2, i16* %sin_port, align 2, !dbg !317
  %2 = load i32, i32* %connectSocket, align 4, !dbg !318
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !320
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !321
  %cmp4 = icmp eq i32 %call3, -1, !dbg !322
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !323

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !324

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !326
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !327
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !328
  %conv = trunc i64 %call7 to i32, !dbg !328
  store i32 %conv, i32* %recvResult, align 4, !dbg !329
  %5 = load i32, i32* %recvResult, align 4, !dbg !330
  %cmp8 = icmp eq i32 %5, -1, !dbg !332
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !333

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !334
  %cmp10 = icmp eq i32 %6, 0, !dbg !335
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !336

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !337

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !339
  %idxprom = sext i32 %7 to i64, !dbg !340
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !340
  store i8 0, i8* %arrayidx, align 1, !dbg !341
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !342
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !343
  store i32 %call15, i32* %data, align 4, !dbg !344
  br label %do.end, !dbg !345

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !346
  %cmp16 = icmp ne i32 %8, -1, !dbg !348
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !349

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !350
  %call19 = call i32 @close(i32 %9), !dbg !352
  br label %if.end20, !dbg !353

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !354, metadata !DIExpression()), !dbg !356
  %10 = load i32, i32* %data, align 4, !dbg !357
  store i32 %10, i32* %dataCopy, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !358, metadata !DIExpression()), !dbg !359
  %11 = load i32, i32* %dataCopy, align 4, !dbg !360
  store i32 %11, i32* %data21, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata i32* %i, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !364, metadata !DIExpression()), !dbg !365
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !365
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !365
  %13 = load i32, i32* %data21, align 4, !dbg !366
  %cmp22 = icmp sge i32 %13, 0, !dbg !368
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !369

land.lhs.true:                                    ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !370
  %cmp24 = icmp slt i32 %14, 10, !dbg !371
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !372

if.then26:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data21, align 4, !dbg !373
  %idxprom27 = sext i32 %15 to i64, !dbg !375
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !375
  store i32 1, i32* %arrayidx28, align 4, !dbg !376
  store i32 0, i32* %i, align 4, !dbg !377
  br label %for.cond, !dbg !379

for.cond:                                         ; preds = %for.inc, %if.then26
  %16 = load i32, i32* %i, align 4, !dbg !380
  %cmp29 = icmp slt i32 %16, 10, !dbg !382
  br i1 %cmp29, label %for.body, label %for.end, !dbg !383

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !384
  %idxprom31 = sext i32 %17 to i64, !dbg !386
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !386
  %18 = load i32, i32* %arrayidx32, align 4, !dbg !386
  call void @printIntLine(i32 %18), !dbg !387
  br label %for.inc, !dbg !388

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !389
  %inc = add nsw i32 %19, 1, !dbg !389
  store i32 %inc, i32* %i, align 4, !dbg !389
  br label %for.cond, !dbg !390, !llvm.loop !391

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !393

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !394
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_good() #0 !dbg !397 {
entry:
  call void @goodG2B(), !dbg !398
  call void @goodB2G(), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !401 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !406
  %0 = load i8*, i8** %line.addr, align 8, !dbg !407
  %cmp = icmp ne i8* %0, null, !dbg !409
  br i1 %cmp, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !411
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !413
  br label %if.end, !dbg !414

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !415
  ret void, !dbg !416
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !417 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i8*, i8** %line.addr, align 8, !dbg !420
  %cmp = icmp ne i8* %0, null, !dbg !422
  br i1 %cmp, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !426
  br label %if.end, !dbg !427

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !429 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i32*, i32** %line.addr, align 8, !dbg !437
  %cmp = icmp ne i32* %0, null, !dbg !439
  br i1 %cmp, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !441
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !443
  br label %if.end, !dbg !444

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !445
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !446 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !454 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !460
  %conv = sext i16 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !463 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !469
  %conv = fpext float %0 to double, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !472 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !481 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !492 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !502 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !507
  %conv = sext i8 %0 to i32, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !510 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !515, metadata !DIExpression()), !dbg !519
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !520
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !521
  store i32 %0, i32* %arrayidx, align 4, !dbg !522
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !523
  store i32 0, i32* %arrayidx1, align 4, !dbg !524
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !528 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !533
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !536 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !541
  %conv = zext i8 %0 to i32, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !544 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !553 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !565
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !566
  %1 = load i32, i32* %intOne, align 4, !dbg !566
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !567
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !568
  %3 = load i32, i32* %intTwo, align 4, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !571 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i64* %i, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 0, i64* %i, align 8, !dbg !581
  br label %for.cond, !dbg !583

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !584
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !586
  %cmp = icmp ult i64 %0, %1, !dbg !587
  br i1 %cmp, label %for.body, label %for.end, !dbg !588

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !589
  %3 = load i64, i64* %i, align 8, !dbg !591
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !589
  %4 = load i8, i8* %arrayidx, align 1, !dbg !589
  %conv = zext i8 %4 to i32, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !592
  br label %for.inc, !dbg !593

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !594
  %inc = add i64 %5, 1, !dbg !594
  store i64 %inc, i64* %i, align 8, !dbg !594
  br label %for.cond, !dbg !595, !llvm.loop !596

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !598
  ret void, !dbg !599
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !600 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !609, metadata !DIExpression()), !dbg !610
  store i64 0, i64* %numWritten, align 8, !dbg !610
  br label %while.cond, !dbg !611

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !612
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !613
  %cmp = icmp ult i64 %0, %1, !dbg !614
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !615

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !616
  %2 = load i16*, i16** %call, align 8, !dbg !616
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !616
  %4 = load i64, i64* %numWritten, align 8, !dbg !616
  %mul = mul i64 2, %4, !dbg !616
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !616
  %5 = load i8, i8* %arrayidx, align 1, !dbg !616
  %conv = sext i8 %5 to i32, !dbg !616
  %idxprom = sext i32 %conv to i64, !dbg !616
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !616
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !616
  %conv2 = zext i16 %6 to i32, !dbg !616
  %and = and i32 %conv2, 4096, !dbg !616
  %tobool = icmp ne i32 %and, 0, !dbg !616
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !617

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !618
  %7 = load i16*, i16** %call3, align 8, !dbg !618
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !618
  %9 = load i64, i64* %numWritten, align 8, !dbg !618
  %mul4 = mul i64 2, %9, !dbg !618
  %add = add i64 %mul4, 1, !dbg !618
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !618
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !618
  %conv6 = sext i8 %10 to i32, !dbg !618
  %idxprom7 = sext i32 %conv6 to i64, !dbg !618
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !618
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !618
  %conv9 = zext i16 %11 to i32, !dbg !618
  %and10 = and i32 %conv9, 4096, !dbg !618
  %tobool11 = icmp ne i32 %and10, 0, !dbg !617
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !619
  br i1 %12, label %while.body, label %while.end, !dbg !611

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !620, metadata !DIExpression()), !dbg !622
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !623
  %14 = load i64, i64* %numWritten, align 8, !dbg !624
  %mul12 = mul i64 2, %14, !dbg !625
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !623
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !626
  %15 = load i32, i32* %byte, align 4, !dbg !627
  %conv15 = trunc i32 %15 to i8, !dbg !628
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !629
  %17 = load i64, i64* %numWritten, align 8, !dbg !630
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !629
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !631
  %18 = load i64, i64* %numWritten, align 8, !dbg !632
  %inc = add i64 %18, 1, !dbg !632
  store i64 %inc, i64* %numWritten, align 8, !dbg !632
  br label %while.cond, !dbg !611, !llvm.loop !633

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !635
  ret i64 %19, !dbg !636
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !637 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !640, metadata !DIExpression()), !dbg !641
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !642, metadata !DIExpression()), !dbg !643
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !646, metadata !DIExpression()), !dbg !647
  store i64 0, i64* %numWritten, align 8, !dbg !647
  br label %while.cond, !dbg !648

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !649
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !650
  %cmp = icmp ult i64 %0, %1, !dbg !651
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !652

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !653
  %3 = load i64, i64* %numWritten, align 8, !dbg !654
  %mul = mul i64 2, %3, !dbg !655
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !653
  %4 = load i32, i32* %arrayidx, align 4, !dbg !653
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !656
  %tobool = icmp ne i32 %call, 0, !dbg !656
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !657

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !658
  %6 = load i64, i64* %numWritten, align 8, !dbg !659
  %mul1 = mul i64 2, %6, !dbg !660
  %add = add i64 %mul1, 1, !dbg !661
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !658
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !658
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !662
  %tobool4 = icmp ne i32 %call3, 0, !dbg !657
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !663
  br i1 %8, label %while.body, label %while.end, !dbg !648

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !664, metadata !DIExpression()), !dbg !666
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !667
  %10 = load i64, i64* %numWritten, align 8, !dbg !668
  %mul5 = mul i64 2, %10, !dbg !669
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !667
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !670
  %11 = load i32, i32* %byte, align 4, !dbg !671
  %conv = trunc i32 %11 to i8, !dbg !672
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !673
  %13 = load i64, i64* %numWritten, align 8, !dbg !674
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !673
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !675
  %14 = load i64, i64* %numWritten, align 8, !dbg !676
  %inc = add i64 %14, 1, !dbg !676
  store i64 %inc, i64* %numWritten, align 8, !dbg !676
  br label %while.cond, !dbg !648, !llvm.loop !677

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !679
  ret i64 %15, !dbg !680
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !681 {
entry:
  ret i32 1, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !685 {
entry:
  ret i32 0, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !687 {
entry:
  %call = call i32 @rand() #7, !dbg !688
  %rem = srem i32 %call, 2, !dbg !689
  ret i32 %rem, !dbg !690
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !725 {
entry:
  ret void, !dbg !726
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_536/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_536/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocalVariable(name: "recvResult", scope: !112, file: !45, line: 55, type: !23)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 50, column: 5)
!113 = !DILocation(line: 55, column: 13, scope: !112)
!114 = !DILocalVariable(name: "service", scope: !112, file: !45, line: 56, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !116)
!116 = !{!117, !118, !124, !131}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !115, file: !60, line: 240, baseType: !94, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !115, file: !60, line: 241, baseType: !119, size: 16, offset: 16)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !121, line: 25, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !123, line: 40, baseType: !24)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !115, file: !60, line: 242, baseType: !125, size: 32, offset: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !125, file: !60, line: 33, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !121, line: 26, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !123, line: 42, baseType: !7)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !115, file: !60, line: 245, baseType: !132, size: 64, offset: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 8)
!135 = !DILocation(line: 56, column: 28, scope: !112)
!136 = !DILocalVariable(name: "connectSocket", scope: !112, file: !45, line: 57, type: !23)
!137 = !DILocation(line: 57, column: 16, scope: !112)
!138 = !DILocalVariable(name: "inputBuffer", scope: !112, file: !45, line: 58, type: !97)
!139 = !DILocation(line: 58, column: 14, scope: !112)
!140 = !DILocation(line: 59, column: 9, scope: !112)
!141 = !DILocation(line: 69, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !112, file: !45, line: 60, column: 9)
!143 = !DILocation(line: 69, column: 27, scope: !142)
!144 = !DILocation(line: 70, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 70, column: 17)
!146 = !DILocation(line: 70, column: 31, scope: !145)
!147 = !DILocation(line: 70, column: 17, scope: !142)
!148 = !DILocation(line: 72, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !45, line: 71, column: 13)
!150 = !DILocation(line: 74, column: 13, scope: !142)
!151 = !DILocation(line: 75, column: 21, scope: !142)
!152 = !DILocation(line: 75, column: 32, scope: !142)
!153 = !DILocation(line: 76, column: 39, scope: !142)
!154 = !DILocation(line: 76, column: 21, scope: !142)
!155 = !DILocation(line: 76, column: 30, scope: !142)
!156 = !DILocation(line: 76, column: 37, scope: !142)
!157 = !DILocation(line: 77, column: 32, scope: !142)
!158 = !DILocation(line: 77, column: 21, scope: !142)
!159 = !DILocation(line: 77, column: 30, scope: !142)
!160 = !DILocation(line: 78, column: 25, scope: !161)
!161 = distinct !DILexicalBlock(scope: !142, file: !45, line: 78, column: 17)
!162 = !DILocation(line: 78, column: 40, scope: !161)
!163 = !DILocation(line: 78, column: 17, scope: !161)
!164 = !DILocation(line: 78, column: 85, scope: !161)
!165 = !DILocation(line: 78, column: 17, scope: !142)
!166 = !DILocation(line: 80, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !45, line: 79, column: 13)
!168 = !DILocation(line: 84, column: 31, scope: !142)
!169 = !DILocation(line: 84, column: 46, scope: !142)
!170 = !DILocation(line: 84, column: 26, scope: !142)
!171 = !DILocation(line: 84, column: 24, scope: !142)
!172 = !DILocation(line: 85, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !142, file: !45, line: 85, column: 17)
!174 = !DILocation(line: 85, column: 28, scope: !173)
!175 = !DILocation(line: 85, column: 44, scope: !173)
!176 = !DILocation(line: 85, column: 47, scope: !173)
!177 = !DILocation(line: 85, column: 58, scope: !173)
!178 = !DILocation(line: 85, column: 17, scope: !142)
!179 = !DILocation(line: 87, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !45, line: 86, column: 13)
!181 = !DILocation(line: 90, column: 25, scope: !142)
!182 = !DILocation(line: 90, column: 13, scope: !142)
!183 = !DILocation(line: 90, column: 37, scope: !142)
!184 = !DILocation(line: 92, column: 25, scope: !142)
!185 = !DILocation(line: 92, column: 20, scope: !142)
!186 = !DILocation(line: 92, column: 18, scope: !142)
!187 = !DILocation(line: 93, column: 9, scope: !142)
!188 = !DILocation(line: 95, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !112, file: !45, line: 95, column: 13)
!190 = !DILocation(line: 95, column: 27, scope: !189)
!191 = !DILocation(line: 95, column: 13, scope: !112)
!192 = !DILocation(line: 97, column: 26, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !45, line: 96, column: 9)
!194 = !DILocation(line: 97, column: 13, scope: !193)
!195 = !DILocation(line: 98, column: 9, scope: !193)
!196 = !DILocalVariable(name: "dataCopy", scope: !197, file: !45, line: 107, type: !23)
!197 = distinct !DILexicalBlock(scope: !104, file: !45, line: 106, column: 5)
!198 = !DILocation(line: 107, column: 13, scope: !197)
!199 = !DILocation(line: 107, column: 24, scope: !197)
!200 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 108, type: !23)
!201 = !DILocation(line: 108, column: 13, scope: !197)
!202 = !DILocation(line: 108, column: 20, scope: !197)
!203 = !DILocalVariable(name: "i", scope: !204, file: !45, line: 110, type: !23)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 109, column: 9)
!205 = !DILocation(line: 110, column: 17, scope: !204)
!206 = !DILocalVariable(name: "buffer", scope: !204, file: !45, line: 111, type: !207)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 10)
!210 = !DILocation(line: 111, column: 17, scope: !204)
!211 = !DILocation(line: 114, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !45, line: 114, column: 17)
!213 = !DILocation(line: 114, column: 22, scope: !212)
!214 = !DILocation(line: 114, column: 17, scope: !204)
!215 = !DILocation(line: 116, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !45, line: 115, column: 13)
!217 = !DILocation(line: 116, column: 17, scope: !216)
!218 = !DILocation(line: 116, column: 30, scope: !216)
!219 = !DILocation(line: 118, column: 23, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 118, column: 17)
!221 = !DILocation(line: 118, column: 21, scope: !220)
!222 = !DILocation(line: 118, column: 28, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 118, column: 17)
!224 = !DILocation(line: 118, column: 30, scope: !223)
!225 = !DILocation(line: 118, column: 17, scope: !220)
!226 = !DILocation(line: 120, column: 41, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !45, line: 119, column: 17)
!228 = !DILocation(line: 120, column: 34, scope: !227)
!229 = !DILocation(line: 120, column: 21, scope: !227)
!230 = !DILocation(line: 121, column: 17, scope: !227)
!231 = !DILocation(line: 118, column: 37, scope: !223)
!232 = !DILocation(line: 118, column: 17, scope: !223)
!233 = distinct !{!233, !225, !234, !235}
!234 = !DILocation(line: 121, column: 17, scope: !220)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 122, column: 13, scope: !216)
!237 = !DILocation(line: 125, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !212, file: !45, line: 124, column: 13)
!239 = !DILocation(line: 129, column: 1, scope: !104)
!240 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 136, type: !105, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!241 = !DILocalVariable(name: "data", scope: !240, file: !45, line: 138, type: !23)
!242 = !DILocation(line: 138, column: 9, scope: !240)
!243 = !DILocation(line: 140, column: 10, scope: !240)
!244 = !DILocation(line: 143, column: 10, scope: !240)
!245 = !DILocalVariable(name: "dataCopy", scope: !246, file: !45, line: 145, type: !23)
!246 = distinct !DILexicalBlock(scope: !240, file: !45, line: 144, column: 5)
!247 = !DILocation(line: 145, column: 13, scope: !246)
!248 = !DILocation(line: 145, column: 24, scope: !246)
!249 = !DILocalVariable(name: "data", scope: !246, file: !45, line: 146, type: !23)
!250 = !DILocation(line: 146, column: 13, scope: !246)
!251 = !DILocation(line: 146, column: 20, scope: !246)
!252 = !DILocalVariable(name: "i", scope: !253, file: !45, line: 148, type: !23)
!253 = distinct !DILexicalBlock(scope: !246, file: !45, line: 147, column: 9)
!254 = !DILocation(line: 148, column: 17, scope: !253)
!255 = !DILocalVariable(name: "buffer", scope: !253, file: !45, line: 149, type: !207)
!256 = !DILocation(line: 149, column: 17, scope: !253)
!257 = !DILocation(line: 152, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 152, column: 17)
!259 = !DILocation(line: 152, column: 22, scope: !258)
!260 = !DILocation(line: 152, column: 17, scope: !253)
!261 = !DILocation(line: 154, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !45, line: 153, column: 13)
!263 = !DILocation(line: 154, column: 17, scope: !262)
!264 = !DILocation(line: 154, column: 30, scope: !262)
!265 = !DILocation(line: 156, column: 23, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !45, line: 156, column: 17)
!267 = !DILocation(line: 156, column: 21, scope: !266)
!268 = !DILocation(line: 156, column: 28, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !45, line: 156, column: 17)
!270 = !DILocation(line: 156, column: 30, scope: !269)
!271 = !DILocation(line: 156, column: 17, scope: !266)
!272 = !DILocation(line: 158, column: 41, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !45, line: 157, column: 17)
!274 = !DILocation(line: 158, column: 34, scope: !273)
!275 = !DILocation(line: 158, column: 21, scope: !273)
!276 = !DILocation(line: 159, column: 17, scope: !273)
!277 = !DILocation(line: 156, column: 37, scope: !269)
!278 = !DILocation(line: 156, column: 17, scope: !269)
!279 = distinct !{!279, !271, !280, !235}
!280 = !DILocation(line: 159, column: 17, scope: !266)
!281 = !DILocation(line: 160, column: 13, scope: !262)
!282 = !DILocation(line: 163, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !258, file: !45, line: 162, column: 13)
!284 = !DILocation(line: 167, column: 1, scope: !240)
!285 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 170, type: !105, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!286 = !DILocalVariable(name: "data", scope: !285, file: !45, line: 172, type: !23)
!287 = !DILocation(line: 172, column: 9, scope: !285)
!288 = !DILocation(line: 174, column: 10, scope: !285)
!289 = !DILocalVariable(name: "recvResult", scope: !290, file: !45, line: 180, type: !23)
!290 = distinct !DILexicalBlock(scope: !285, file: !45, line: 175, column: 5)
!291 = !DILocation(line: 180, column: 13, scope: !290)
!292 = !DILocalVariable(name: "service", scope: !290, file: !45, line: 181, type: !115)
!293 = !DILocation(line: 181, column: 28, scope: !290)
!294 = !DILocalVariable(name: "connectSocket", scope: !290, file: !45, line: 182, type: !23)
!295 = !DILocation(line: 182, column: 16, scope: !290)
!296 = !DILocalVariable(name: "inputBuffer", scope: !290, file: !45, line: 183, type: !97)
!297 = !DILocation(line: 183, column: 14, scope: !290)
!298 = !DILocation(line: 184, column: 9, scope: !290)
!299 = !DILocation(line: 194, column: 29, scope: !300)
!300 = distinct !DILexicalBlock(scope: !290, file: !45, line: 185, column: 9)
!301 = !DILocation(line: 194, column: 27, scope: !300)
!302 = !DILocation(line: 195, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !45, line: 195, column: 17)
!304 = !DILocation(line: 195, column: 31, scope: !303)
!305 = !DILocation(line: 195, column: 17, scope: !300)
!306 = !DILocation(line: 197, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !45, line: 196, column: 13)
!308 = !DILocation(line: 199, column: 13, scope: !300)
!309 = !DILocation(line: 200, column: 21, scope: !300)
!310 = !DILocation(line: 200, column: 32, scope: !300)
!311 = !DILocation(line: 201, column: 39, scope: !300)
!312 = !DILocation(line: 201, column: 21, scope: !300)
!313 = !DILocation(line: 201, column: 30, scope: !300)
!314 = !DILocation(line: 201, column: 37, scope: !300)
!315 = !DILocation(line: 202, column: 32, scope: !300)
!316 = !DILocation(line: 202, column: 21, scope: !300)
!317 = !DILocation(line: 202, column: 30, scope: !300)
!318 = !DILocation(line: 203, column: 25, scope: !319)
!319 = distinct !DILexicalBlock(scope: !300, file: !45, line: 203, column: 17)
!320 = !DILocation(line: 203, column: 40, scope: !319)
!321 = !DILocation(line: 203, column: 17, scope: !319)
!322 = !DILocation(line: 203, column: 85, scope: !319)
!323 = !DILocation(line: 203, column: 17, scope: !300)
!324 = !DILocation(line: 205, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !45, line: 204, column: 13)
!326 = !DILocation(line: 209, column: 31, scope: !300)
!327 = !DILocation(line: 209, column: 46, scope: !300)
!328 = !DILocation(line: 209, column: 26, scope: !300)
!329 = !DILocation(line: 209, column: 24, scope: !300)
!330 = !DILocation(line: 210, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !300, file: !45, line: 210, column: 17)
!332 = !DILocation(line: 210, column: 28, scope: !331)
!333 = !DILocation(line: 210, column: 44, scope: !331)
!334 = !DILocation(line: 210, column: 47, scope: !331)
!335 = !DILocation(line: 210, column: 58, scope: !331)
!336 = !DILocation(line: 210, column: 17, scope: !300)
!337 = !DILocation(line: 212, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !45, line: 211, column: 13)
!339 = !DILocation(line: 215, column: 25, scope: !300)
!340 = !DILocation(line: 215, column: 13, scope: !300)
!341 = !DILocation(line: 215, column: 37, scope: !300)
!342 = !DILocation(line: 217, column: 25, scope: !300)
!343 = !DILocation(line: 217, column: 20, scope: !300)
!344 = !DILocation(line: 217, column: 18, scope: !300)
!345 = !DILocation(line: 218, column: 9, scope: !300)
!346 = !DILocation(line: 220, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !290, file: !45, line: 220, column: 13)
!348 = !DILocation(line: 220, column: 27, scope: !347)
!349 = !DILocation(line: 220, column: 13, scope: !290)
!350 = !DILocation(line: 222, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !45, line: 221, column: 9)
!352 = !DILocation(line: 222, column: 13, scope: !351)
!353 = !DILocation(line: 223, column: 9, scope: !351)
!354 = !DILocalVariable(name: "dataCopy", scope: !355, file: !45, line: 232, type: !23)
!355 = distinct !DILexicalBlock(scope: !285, file: !45, line: 231, column: 5)
!356 = !DILocation(line: 232, column: 13, scope: !355)
!357 = !DILocation(line: 232, column: 24, scope: !355)
!358 = !DILocalVariable(name: "data", scope: !355, file: !45, line: 233, type: !23)
!359 = !DILocation(line: 233, column: 13, scope: !355)
!360 = !DILocation(line: 233, column: 20, scope: !355)
!361 = !DILocalVariable(name: "i", scope: !362, file: !45, line: 235, type: !23)
!362 = distinct !DILexicalBlock(scope: !355, file: !45, line: 234, column: 9)
!363 = !DILocation(line: 235, column: 17, scope: !362)
!364 = !DILocalVariable(name: "buffer", scope: !362, file: !45, line: 236, type: !207)
!365 = !DILocation(line: 236, column: 17, scope: !362)
!366 = !DILocation(line: 238, column: 17, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !45, line: 238, column: 17)
!368 = !DILocation(line: 238, column: 22, scope: !367)
!369 = !DILocation(line: 238, column: 27, scope: !367)
!370 = !DILocation(line: 238, column: 30, scope: !367)
!371 = !DILocation(line: 238, column: 35, scope: !367)
!372 = !DILocation(line: 238, column: 17, scope: !362)
!373 = !DILocation(line: 240, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !45, line: 239, column: 13)
!375 = !DILocation(line: 240, column: 17, scope: !374)
!376 = !DILocation(line: 240, column: 30, scope: !374)
!377 = !DILocation(line: 242, column: 23, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !45, line: 242, column: 17)
!379 = !DILocation(line: 242, column: 21, scope: !378)
!380 = !DILocation(line: 242, column: 28, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !45, line: 242, column: 17)
!382 = !DILocation(line: 242, column: 30, scope: !381)
!383 = !DILocation(line: 242, column: 17, scope: !378)
!384 = !DILocation(line: 244, column: 41, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !45, line: 243, column: 17)
!386 = !DILocation(line: 244, column: 34, scope: !385)
!387 = !DILocation(line: 244, column: 21, scope: !385)
!388 = !DILocation(line: 245, column: 17, scope: !385)
!389 = !DILocation(line: 242, column: 37, scope: !381)
!390 = !DILocation(line: 242, column: 17, scope: !381)
!391 = distinct !{!391, !383, !392, !235}
!392 = !DILocation(line: 245, column: 17, scope: !378)
!393 = !DILocation(line: 246, column: 13, scope: !374)
!394 = !DILocation(line: 249, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !367, file: !45, line: 248, column: 13)
!396 = !DILocation(line: 253, column: 1, scope: !285)
!397 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_good", scope: !45, file: !45, line: 255, type: !105, scopeLine: 256, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!398 = !DILocation(line: 257, column: 5, scope: !397)
!399 = !DILocation(line: 258, column: 5, scope: !397)
!400 = !DILocation(line: 259, column: 1, scope: !397)
!401 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !402, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !42}
!404 = !DILocalVariable(name: "line", arg: 1, scope: !401, file: !3, line: 11, type: !42)
!405 = !DILocation(line: 11, column: 25, scope: !401)
!406 = !DILocation(line: 13, column: 1, scope: !401)
!407 = !DILocation(line: 14, column: 8, scope: !408)
!408 = distinct !DILexicalBlock(scope: !401, file: !3, line: 14, column: 8)
!409 = !DILocation(line: 14, column: 13, scope: !408)
!410 = !DILocation(line: 14, column: 8, scope: !401)
!411 = !DILocation(line: 16, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 15, column: 5)
!413 = !DILocation(line: 16, column: 9, scope: !412)
!414 = !DILocation(line: 17, column: 5, scope: !412)
!415 = !DILocation(line: 18, column: 5, scope: !401)
!416 = !DILocation(line: 19, column: 1, scope: !401)
!417 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !402, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!418 = !DILocalVariable(name: "line", arg: 1, scope: !417, file: !3, line: 20, type: !42)
!419 = !DILocation(line: 20, column: 29, scope: !417)
!420 = !DILocation(line: 22, column: 8, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 22, column: 8)
!422 = !DILocation(line: 22, column: 13, scope: !421)
!423 = !DILocation(line: 22, column: 8, scope: !417)
!424 = !DILocation(line: 24, column: 24, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 23, column: 5)
!426 = !DILocation(line: 24, column: 9, scope: !425)
!427 = !DILocation(line: 25, column: 5, scope: !425)
!428 = !DILocation(line: 26, column: 1, scope: !417)
!429 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !430, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !434, line: 74, baseType: !23)
!434 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!435 = !DILocalVariable(name: "line", arg: 1, scope: !429, file: !3, line: 27, type: !432)
!436 = !DILocation(line: 27, column: 29, scope: !429)
!437 = !DILocation(line: 29, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 29, column: 8)
!439 = !DILocation(line: 29, column: 13, scope: !438)
!440 = !DILocation(line: 29, column: 8, scope: !429)
!441 = !DILocation(line: 31, column: 27, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 30, column: 5)
!443 = !DILocation(line: 31, column: 9, scope: !442)
!444 = !DILocation(line: 32, column: 5, scope: !442)
!445 = !DILocation(line: 33, column: 1, scope: !429)
!446 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !447, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !23}
!449 = !DILocalVariable(name: "intNumber", arg: 1, scope: !446, file: !3, line: 35, type: !23)
!450 = !DILocation(line: 35, column: 24, scope: !446)
!451 = !DILocation(line: 37, column: 20, scope: !446)
!452 = !DILocation(line: 37, column: 5, scope: !446)
!453 = !DILocation(line: 38, column: 1, scope: !446)
!454 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !455, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457}
!457 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!458 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !454, file: !3, line: 40, type: !457)
!459 = !DILocation(line: 40, column: 28, scope: !454)
!460 = !DILocation(line: 42, column: 21, scope: !454)
!461 = !DILocation(line: 42, column: 5, scope: !454)
!462 = !DILocation(line: 43, column: 1, scope: !454)
!463 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !464, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466}
!466 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!467 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !463, file: !3, line: 45, type: !466)
!468 = !DILocation(line: 45, column: 28, scope: !463)
!469 = !DILocation(line: 47, column: 20, scope: !463)
!470 = !DILocation(line: 47, column: 5, scope: !463)
!471 = !DILocation(line: 48, column: 1, scope: !463)
!472 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !473, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!476 = !DILocalVariable(name: "longNumber", arg: 1, scope: !472, file: !3, line: 50, type: !475)
!477 = !DILocation(line: 50, column: 26, scope: !472)
!478 = !DILocation(line: 52, column: 21, scope: !472)
!479 = !DILocation(line: 52, column: 5, scope: !472)
!480 = !DILocation(line: 53, column: 1, scope: !472)
!481 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !482, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !485, line: 27, baseType: !486)
!485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !123, line: 44, baseType: !475)
!487 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !481, file: !3, line: 55, type: !484)
!488 = !DILocation(line: 55, column: 33, scope: !481)
!489 = !DILocation(line: 57, column: 29, scope: !481)
!490 = !DILocation(line: 57, column: 5, scope: !481)
!491 = !DILocation(line: 58, column: 1, scope: !481)
!492 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !493, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !434, line: 46, baseType: !496)
!496 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!497 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !492, file: !3, line: 60, type: !495)
!498 = !DILocation(line: 60, column: 29, scope: !492)
!499 = !DILocation(line: 62, column: 21, scope: !492)
!500 = !DILocation(line: 62, column: 5, scope: !492)
!501 = !DILocation(line: 63, column: 1, scope: !492)
!502 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !503, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !43}
!505 = !DILocalVariable(name: "charHex", arg: 1, scope: !502, file: !3, line: 65, type: !43)
!506 = !DILocation(line: 65, column: 29, scope: !502)
!507 = !DILocation(line: 67, column: 22, scope: !502)
!508 = !DILocation(line: 67, column: 5, scope: !502)
!509 = !DILocation(line: 68, column: 1, scope: !502)
!510 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !511, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !433}
!513 = !DILocalVariable(name: "wideChar", arg: 1, scope: !510, file: !3, line: 70, type: !433)
!514 = !DILocation(line: 70, column: 29, scope: !510)
!515 = !DILocalVariable(name: "s", scope: !510, file: !3, line: 74, type: !516)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 2)
!519 = !DILocation(line: 74, column: 13, scope: !510)
!520 = !DILocation(line: 75, column: 16, scope: !510)
!521 = !DILocation(line: 75, column: 9, scope: !510)
!522 = !DILocation(line: 75, column: 14, scope: !510)
!523 = !DILocation(line: 76, column: 9, scope: !510)
!524 = !DILocation(line: 76, column: 14, scope: !510)
!525 = !DILocation(line: 77, column: 21, scope: !510)
!526 = !DILocation(line: 77, column: 5, scope: !510)
!527 = !DILocation(line: 78, column: 1, scope: !510)
!528 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !529, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !7}
!531 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !528, file: !3, line: 80, type: !7)
!532 = !DILocation(line: 80, column: 33, scope: !528)
!533 = !DILocation(line: 82, column: 20, scope: !528)
!534 = !DILocation(line: 82, column: 5, scope: !528)
!535 = !DILocation(line: 83, column: 1, scope: !528)
!536 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !537, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !25}
!539 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !536, file: !3, line: 85, type: !25)
!540 = !DILocation(line: 85, column: 45, scope: !536)
!541 = !DILocation(line: 87, column: 22, scope: !536)
!542 = !DILocation(line: 87, column: 5, scope: !536)
!543 = !DILocation(line: 88, column: 1, scope: !536)
!544 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !545, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547}
!547 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!548 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !544, file: !3, line: 90, type: !547)
!549 = !DILocation(line: 90, column: 29, scope: !544)
!550 = !DILocation(line: 92, column: 20, scope: !544)
!551 = !DILocation(line: 92, column: 5, scope: !544)
!552 = !DILocation(line: 93, column: 1, scope: !544)
!553 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !554, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !558, line: 100, baseType: !559)
!558 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_536/source_code")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !558, line: 96, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !559, file: !558, line: 98, baseType: !23, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !559, file: !558, line: 99, baseType: !23, size: 32, offset: 32)
!563 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !553, file: !3, line: 95, type: !556)
!564 = !DILocation(line: 95, column: 40, scope: !553)
!565 = !DILocation(line: 97, column: 26, scope: !553)
!566 = !DILocation(line: 97, column: 47, scope: !553)
!567 = !DILocation(line: 97, column: 55, scope: !553)
!568 = !DILocation(line: 97, column: 76, scope: !553)
!569 = !DILocation(line: 97, column: 5, scope: !553)
!570 = !DILocation(line: 98, column: 1, scope: !553)
!571 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !572, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !574, !495}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!575 = !DILocalVariable(name: "bytes", arg: 1, scope: !571, file: !3, line: 100, type: !574)
!576 = !DILocation(line: 100, column: 38, scope: !571)
!577 = !DILocalVariable(name: "numBytes", arg: 2, scope: !571, file: !3, line: 100, type: !495)
!578 = !DILocation(line: 100, column: 52, scope: !571)
!579 = !DILocalVariable(name: "i", scope: !571, file: !3, line: 102, type: !495)
!580 = !DILocation(line: 102, column: 12, scope: !571)
!581 = !DILocation(line: 103, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !571, file: !3, line: 103, column: 5)
!583 = !DILocation(line: 103, column: 10, scope: !582)
!584 = !DILocation(line: 103, column: 17, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 103, column: 5)
!586 = !DILocation(line: 103, column: 21, scope: !585)
!587 = !DILocation(line: 103, column: 19, scope: !585)
!588 = !DILocation(line: 103, column: 5, scope: !582)
!589 = !DILocation(line: 105, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !3, line: 104, column: 5)
!591 = !DILocation(line: 105, column: 30, scope: !590)
!592 = !DILocation(line: 105, column: 9, scope: !590)
!593 = !DILocation(line: 106, column: 5, scope: !590)
!594 = !DILocation(line: 103, column: 31, scope: !585)
!595 = !DILocation(line: 103, column: 5, scope: !585)
!596 = distinct !{!596, !588, !597, !235}
!597 = !DILocation(line: 106, column: 5, scope: !582)
!598 = !DILocation(line: 107, column: 5, scope: !571)
!599 = !DILocation(line: 108, column: 1, scope: !571)
!600 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !601, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!601 = !DISubroutineType(types: !602)
!602 = !{!495, !574, !495, !42}
!603 = !DILocalVariable(name: "bytes", arg: 1, scope: !600, file: !3, line: 113, type: !574)
!604 = !DILocation(line: 113, column: 39, scope: !600)
!605 = !DILocalVariable(name: "numBytes", arg: 2, scope: !600, file: !3, line: 113, type: !495)
!606 = !DILocation(line: 113, column: 53, scope: !600)
!607 = !DILocalVariable(name: "hex", arg: 3, scope: !600, file: !3, line: 113, type: !42)
!608 = !DILocation(line: 113, column: 71, scope: !600)
!609 = !DILocalVariable(name: "numWritten", scope: !600, file: !3, line: 115, type: !495)
!610 = !DILocation(line: 115, column: 12, scope: !600)
!611 = !DILocation(line: 121, column: 5, scope: !600)
!612 = !DILocation(line: 121, column: 12, scope: !600)
!613 = !DILocation(line: 121, column: 25, scope: !600)
!614 = !DILocation(line: 121, column: 23, scope: !600)
!615 = !DILocation(line: 121, column: 34, scope: !600)
!616 = !DILocation(line: 121, column: 37, scope: !600)
!617 = !DILocation(line: 121, column: 67, scope: !600)
!618 = !DILocation(line: 121, column: 70, scope: !600)
!619 = !DILocation(line: 0, scope: !600)
!620 = !DILocalVariable(name: "byte", scope: !621, file: !3, line: 123, type: !23)
!621 = distinct !DILexicalBlock(scope: !600, file: !3, line: 122, column: 5)
!622 = !DILocation(line: 123, column: 13, scope: !621)
!623 = !DILocation(line: 124, column: 17, scope: !621)
!624 = !DILocation(line: 124, column: 25, scope: !621)
!625 = !DILocation(line: 124, column: 23, scope: !621)
!626 = !DILocation(line: 124, column: 9, scope: !621)
!627 = !DILocation(line: 125, column: 45, scope: !621)
!628 = !DILocation(line: 125, column: 29, scope: !621)
!629 = !DILocation(line: 125, column: 9, scope: !621)
!630 = !DILocation(line: 125, column: 15, scope: !621)
!631 = !DILocation(line: 125, column: 27, scope: !621)
!632 = !DILocation(line: 126, column: 9, scope: !621)
!633 = distinct !{!633, !611, !634, !235}
!634 = !DILocation(line: 127, column: 5, scope: !600)
!635 = !DILocation(line: 129, column: 12, scope: !600)
!636 = !DILocation(line: 129, column: 5, scope: !600)
!637 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !638, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!638 = !DISubroutineType(types: !639)
!639 = !{!495, !574, !495, !432}
!640 = !DILocalVariable(name: "bytes", arg: 1, scope: !637, file: !3, line: 135, type: !574)
!641 = !DILocation(line: 135, column: 41, scope: !637)
!642 = !DILocalVariable(name: "numBytes", arg: 2, scope: !637, file: !3, line: 135, type: !495)
!643 = !DILocation(line: 135, column: 55, scope: !637)
!644 = !DILocalVariable(name: "hex", arg: 3, scope: !637, file: !3, line: 135, type: !432)
!645 = !DILocation(line: 135, column: 76, scope: !637)
!646 = !DILocalVariable(name: "numWritten", scope: !637, file: !3, line: 137, type: !495)
!647 = !DILocation(line: 137, column: 12, scope: !637)
!648 = !DILocation(line: 143, column: 5, scope: !637)
!649 = !DILocation(line: 143, column: 12, scope: !637)
!650 = !DILocation(line: 143, column: 25, scope: !637)
!651 = !DILocation(line: 143, column: 23, scope: !637)
!652 = !DILocation(line: 143, column: 34, scope: !637)
!653 = !DILocation(line: 143, column: 47, scope: !637)
!654 = !DILocation(line: 143, column: 55, scope: !637)
!655 = !DILocation(line: 143, column: 53, scope: !637)
!656 = !DILocation(line: 143, column: 37, scope: !637)
!657 = !DILocation(line: 143, column: 68, scope: !637)
!658 = !DILocation(line: 143, column: 81, scope: !637)
!659 = !DILocation(line: 143, column: 89, scope: !637)
!660 = !DILocation(line: 143, column: 87, scope: !637)
!661 = !DILocation(line: 143, column: 100, scope: !637)
!662 = !DILocation(line: 143, column: 71, scope: !637)
!663 = !DILocation(line: 0, scope: !637)
!664 = !DILocalVariable(name: "byte", scope: !665, file: !3, line: 145, type: !23)
!665 = distinct !DILexicalBlock(scope: !637, file: !3, line: 144, column: 5)
!666 = !DILocation(line: 145, column: 13, scope: !665)
!667 = !DILocation(line: 146, column: 18, scope: !665)
!668 = !DILocation(line: 146, column: 26, scope: !665)
!669 = !DILocation(line: 146, column: 24, scope: !665)
!670 = !DILocation(line: 146, column: 9, scope: !665)
!671 = !DILocation(line: 147, column: 45, scope: !665)
!672 = !DILocation(line: 147, column: 29, scope: !665)
!673 = !DILocation(line: 147, column: 9, scope: !665)
!674 = !DILocation(line: 147, column: 15, scope: !665)
!675 = !DILocation(line: 147, column: 27, scope: !665)
!676 = !DILocation(line: 148, column: 9, scope: !665)
!677 = distinct !{!677, !648, !678, !235}
!678 = !DILocation(line: 149, column: 5, scope: !637)
!679 = !DILocation(line: 151, column: 12, scope: !637)
!680 = !DILocation(line: 151, column: 5, scope: !637)
!681 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !682, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!682 = !DISubroutineType(types: !683)
!683 = !{!23}
!684 = !DILocation(line: 158, column: 5, scope: !681)
!685 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !682, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!686 = !DILocation(line: 163, column: 5, scope: !685)
!687 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !682, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!688 = !DILocation(line: 168, column: 13, scope: !687)
!689 = !DILocation(line: 168, column: 20, scope: !687)
!690 = !DILocation(line: 168, column: 5, scope: !687)
!691 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!692 = !DILocation(line: 187, column: 16, scope: !691)
!693 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DILocation(line: 188, column: 16, scope: !693)
!695 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DILocation(line: 189, column: 16, scope: !695)
!697 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!698 = !DILocation(line: 190, column: 16, scope: !697)
!699 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!700 = !DILocation(line: 191, column: 16, scope: !699)
!701 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!702 = !DILocation(line: 192, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!704 = !DILocation(line: 193, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!706 = !DILocation(line: 194, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!708 = !DILocation(line: 195, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!710 = !DILocation(line: 198, column: 15, scope: !709)
!711 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!712 = !DILocation(line: 199, column: 15, scope: !711)
!713 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DILocation(line: 200, column: 15, scope: !713)
!715 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DILocation(line: 201, column: 15, scope: !715)
!717 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!718 = !DILocation(line: 202, column: 15, scope: !717)
!719 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!720 = !DILocation(line: 203, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!722 = !DILocation(line: 204, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!724 = !DILocation(line: 205, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!726 = !DILocation(line: 206, column: 15, scope: !725)
