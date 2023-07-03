; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData = dso_local global i32 0, align 4, !dbg !62
@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData = dso_local global i32 0, align 4, !dbg !65
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !67
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !91
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !93
@globalTrue = dso_local global i32 1, align 4, !dbg !95
@globalFalse = dso_local global i32 0, align 4, !dbg !97
@globalFive = dso_local global i32 5, align 4, !dbg !99
@globalArgc = dso_local global i32 0, align 4, !dbg !101
@globalArgv = dso_local global i8** null, align 8, !dbg !103
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
define dso_local void @badSink() #0 !dbg !111 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData, align 4, !dbg !117
  store i32 %0, i32* %data, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !121, metadata !DIExpression()), !dbg !125
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !125
  %2 = load i32, i32* %data, align 4, !dbg !126
  %cmp = icmp sge i32 %2, 0, !dbg !128
  br i1 %cmp, label %if.then, label %if.else, !dbg !129

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !130
  %idxprom = sext i32 %3 to i64, !dbg !132
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !132
  store i32 1, i32* %arrayidx, align 4, !dbg !133
  store i32 0, i32* %i, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !137
  %cmp1 = icmp slt i32 %4, 10, !dbg !139
  br i1 %cmp1, label %for.body, label %for.end, !dbg !140

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !141
  %idxprom2 = sext i32 %5 to i64, !dbg !143
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !143
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !143
  call void @printIntLine(i32 %6), !dbg !144
  br label %for.inc, !dbg !145

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !146
  %inc = add nsw i32 %7, 1, !dbg !146
  store i32 %inc, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !147, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !151

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !152
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_bad() #0 !dbg !155 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 -1, i32* %data, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !159, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !162, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 -1, i32* %connectSocket, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !186, metadata !DIExpression()), !dbg !187
  br label %do.body, !dbg !188

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !189
  store i32 %call, i32* %connectSocket, align 4, !dbg !191
  %0 = load i32, i32* %connectSocket, align 4, !dbg !192
  %cmp = icmp eq i32 %0, -1, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !196

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !198
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !198
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !199
  store i16 2, i16* %sin_family, align 4, !dbg !200
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !201
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !202
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !203
  store i32 %call1, i32* %s_addr, align 4, !dbg !204
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !205
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !206
  store i16 %call2, i16* %sin_port, align 2, !dbg !207
  %2 = load i32, i32* %connectSocket, align 4, !dbg !208
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !210
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !211
  %cmp4 = icmp eq i32 %call3, -1, !dbg !212
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !213

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !214

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !216
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !217
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !218
  %conv = trunc i64 %call7 to i32, !dbg !218
  store i32 %conv, i32* %recvResult, align 4, !dbg !219
  %5 = load i32, i32* %recvResult, align 4, !dbg !220
  %cmp8 = icmp eq i32 %5, -1, !dbg !222
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !223

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !224
  %cmp10 = icmp eq i32 %6, 0, !dbg !225
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !226

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !227

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !229
  %idxprom = sext i32 %7 to i64, !dbg !230
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !230
  store i8 0, i8* %arrayidx, align 1, !dbg !231
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !232
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !233
  store i32 %call15, i32* %data, align 4, !dbg !234
  br label %do.end, !dbg !235

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !236
  %cmp16 = icmp ne i32 %8, -1, !dbg !238
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !239

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !240
  %call19 = call i32 @close(i32 %9), !dbg !242
  br label %if.end20, !dbg !243

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !244
  store i32 %10, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData, align 4, !dbg !245
  call void @badSink(), !dbg !246
  ret void, !dbg !247
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !248 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData, align 4, !dbg !251
  store i32 %0, i32* %data, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %i, metadata !252, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !255, metadata !DIExpression()), !dbg !256
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !256
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !256
  %2 = load i32, i32* %data, align 4, !dbg !257
  %cmp = icmp sge i32 %2, 0, !dbg !259
  br i1 %cmp, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !261
  %idxprom = sext i32 %3 to i64, !dbg !263
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !263
  store i32 1, i32* %arrayidx, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !268
  %cmp1 = icmp slt i32 %4, 10, !dbg !270
  br i1 %cmp1, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !272
  %idxprom2 = sext i32 %5 to i64, !dbg !274
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !274
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !274
  call void @printIntLine(i32 %6), !dbg !275
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !277
  %inc = add nsw i32 %7, 1, !dbg !277
  store i32 %inc, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !281

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !282
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !285 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 -1, i32* %data, align 4, !dbg !288
  store i32 7, i32* %data, align 4, !dbg !289
  %0 = load i32, i32* %data, align 4, !dbg !290
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData, align 4, !dbg !291
  call void @goodG2BSink(), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !294 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData, align 4, !dbg !297
  store i32 %0, i32* %data, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %i, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !301, metadata !DIExpression()), !dbg !302
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !302
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !302
  %2 = load i32, i32* %data, align 4, !dbg !303
  %cmp = icmp sge i32 %2, 0, !dbg !305
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !306

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !307
  %cmp1 = icmp slt i32 %3, 10, !dbg !308
  br i1 %cmp1, label %if.then, label %if.else, !dbg !309

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !310
  %idxprom = sext i32 %4 to i64, !dbg !312
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !312
  store i32 1, i32* %arrayidx, align 4, !dbg !313
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !317
  %cmp2 = icmp slt i32 %5, 10, !dbg !319
  br i1 %cmp2, label %for.body, label %for.end, !dbg !320

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !321
  %idxprom3 = sext i32 %6 to i64, !dbg !323
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !323
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !323
  call void @printIntLine(i32 %7), !dbg !324
  br label %for.inc, !dbg !325

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !326
  %inc = add nsw i32 %8, 1, !dbg !326
  store i32 %inc, i32* %i, align 4, !dbg !326
  br label %for.cond, !dbg !327, !llvm.loop !328

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !330

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !331
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !334 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 -1, i32* %data, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !343, metadata !DIExpression()), !dbg !344
  store i32 -1, i32* %connectSocket, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !345, metadata !DIExpression()), !dbg !346
  br label %do.body, !dbg !347

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !348
  store i32 %call, i32* %connectSocket, align 4, !dbg !350
  %0 = load i32, i32* %connectSocket, align 4, !dbg !351
  %cmp = icmp eq i32 %0, -1, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !355

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !357
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !357
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !358
  store i16 2, i16* %sin_family, align 4, !dbg !359
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !360
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !361
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !362
  store i32 %call1, i32* %s_addr, align 4, !dbg !363
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !364
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !365
  store i16 %call2, i16* %sin_port, align 2, !dbg !366
  %2 = load i32, i32* %connectSocket, align 4, !dbg !367
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !369
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !370
  %cmp4 = icmp eq i32 %call3, -1, !dbg !371
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !372

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !373

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !375
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !376
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !377
  %conv = trunc i64 %call7 to i32, !dbg !377
  store i32 %conv, i32* %recvResult, align 4, !dbg !378
  %5 = load i32, i32* %recvResult, align 4, !dbg !379
  %cmp8 = icmp eq i32 %5, -1, !dbg !381
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !382

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !383
  %cmp10 = icmp eq i32 %6, 0, !dbg !384
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !385

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !386

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !388
  %idxprom = sext i32 %7 to i64, !dbg !389
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !389
  store i8 0, i8* %arrayidx, align 1, !dbg !390
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !391
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !392
  store i32 %call15, i32* %data, align 4, !dbg !393
  br label %do.end, !dbg !394

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !395
  %cmp16 = icmp ne i32 %8, -1, !dbg !397
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !398

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !399
  %call19 = call i32 @close(i32 %9), !dbg !401
  br label %if.end20, !dbg !402

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !403
  store i32 %10, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData, align 4, !dbg !404
  call void @goodB2GSink(), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_good() #0 !dbg !407 {
entry:
  call void @goodG2B(), !dbg !408
  call void @goodB2G(), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !411 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !416
  %0 = load i8*, i8** %line.addr, align 8, !dbg !417
  %cmp = icmp ne i8* %0, null, !dbg !419
  br i1 %cmp, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !421
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !423
  br label %if.end, !dbg !424

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !425
  ret void, !dbg !426
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !427 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i8*, i8** %line.addr, align 8, !dbg !430
  %cmp = icmp ne i8* %0, null, !dbg !432
  br i1 %cmp, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !436
  br label %if.end, !dbg !437

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !439 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i32*, i32** %line.addr, align 8, !dbg !447
  %cmp = icmp ne i32* %0, null, !dbg !449
  br i1 %cmp, label %if.then, label %if.end, !dbg !450

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !451
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !453
  br label %if.end, !dbg !454

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !455
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !456 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !464 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !470
  %conv = sext i16 %0 to i32, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !473 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !479
  %conv = fpext float %0 to double, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !482 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !488
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !491 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !502 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !512 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !517
  %conv = sext i8 %0 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !520 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !525, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !530
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !531
  store i32 %0, i32* %arrayidx, align 4, !dbg !532
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !533
  store i32 0, i32* %arrayidx1, align 4, !dbg !534
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !538 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !546 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !551
  %conv = zext i8 %0 to i32, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !554 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !560
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !563 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !575
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !576
  %1 = load i32, i32* %intOne, align 4, !dbg !576
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !577
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !578
  %3 = load i32, i32* %intTwo, align 4, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !581 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i64* %i, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 0, i64* %i, align 8, !dbg !591
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !594
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !596
  %cmp = icmp ult i64 %0, %1, !dbg !597
  br i1 %cmp, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !599
  %3 = load i64, i64* %i, align 8, !dbg !601
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !599
  %4 = load i8, i8* %arrayidx, align 1, !dbg !599
  %conv = zext i8 %4 to i32, !dbg !599
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !602
  br label %for.inc, !dbg !603

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !604
  %inc = add i64 %5, 1, !dbg !604
  store i64 %inc, i64* %i, align 8, !dbg !604
  br label %for.cond, !dbg !605, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !608
  ret void, !dbg !609
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !610 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !615, metadata !DIExpression()), !dbg !616
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !619, metadata !DIExpression()), !dbg !620
  store i64 0, i64* %numWritten, align 8, !dbg !620
  br label %while.cond, !dbg !621

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !622
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !623
  %cmp = icmp ult i64 %0, %1, !dbg !624
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !625

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !626
  %2 = load i16*, i16** %call, align 8, !dbg !626
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !626
  %4 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul = mul i64 2, %4, !dbg !626
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !626
  %5 = load i8, i8* %arrayidx, align 1, !dbg !626
  %conv = sext i8 %5 to i32, !dbg !626
  %idxprom = sext i32 %conv to i64, !dbg !626
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !626
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !626
  %conv2 = zext i16 %6 to i32, !dbg !626
  %and = and i32 %conv2, 4096, !dbg !626
  %tobool = icmp ne i32 %and, 0, !dbg !626
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !627

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !628
  %7 = load i16*, i16** %call3, align 8, !dbg !628
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %9 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul4 = mul i64 2, %9, !dbg !628
  %add = add i64 %mul4, 1, !dbg !628
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !628
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !628
  %conv6 = sext i8 %10 to i32, !dbg !628
  %idxprom7 = sext i32 %conv6 to i64, !dbg !628
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !628
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !628
  %conv9 = zext i16 %11 to i32, !dbg !628
  %and10 = and i32 %conv9, 4096, !dbg !628
  %tobool11 = icmp ne i32 %and10, 0, !dbg !627
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !629
  br i1 %12, label %while.body, label %while.end, !dbg !621

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !630, metadata !DIExpression()), !dbg !632
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !633
  %14 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul12 = mul i64 2, %14, !dbg !635
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !633
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !636
  %15 = load i32, i32* %byte, align 4, !dbg !637
  %conv15 = trunc i32 %15 to i8, !dbg !638
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !639
  %17 = load i64, i64* %numWritten, align 8, !dbg !640
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !639
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !641
  %18 = load i64, i64* %numWritten, align 8, !dbg !642
  %inc = add i64 %18, 1, !dbg !642
  store i64 %inc, i64* %numWritten, align 8, !dbg !642
  br label %while.cond, !dbg !621, !llvm.loop !643

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !645
  ret i64 %19, !dbg !646
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !647 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !650, metadata !DIExpression()), !dbg !651
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 0, i64* %numWritten, align 8, !dbg !657
  br label %while.cond, !dbg !658

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !659
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !660
  %cmp = icmp ult i64 %0, %1, !dbg !661
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !662

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !663
  %3 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul = mul i64 2, %3, !dbg !665
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !663
  %4 = load i32, i32* %arrayidx, align 4, !dbg !663
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !666
  %tobool = icmp ne i32 %call, 0, !dbg !666
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !667

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !668
  %6 = load i64, i64* %numWritten, align 8, !dbg !669
  %mul1 = mul i64 2, %6, !dbg !670
  %add = add i64 %mul1, 1, !dbg !671
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !668
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !668
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !672
  %tobool4 = icmp ne i32 %call3, 0, !dbg !667
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !673
  br i1 %8, label %while.body, label %while.end, !dbg !658

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !674, metadata !DIExpression()), !dbg !676
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !677
  %10 = load i64, i64* %numWritten, align 8, !dbg !678
  %mul5 = mul i64 2, %10, !dbg !679
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !677
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !680
  %11 = load i32, i32* %byte, align 4, !dbg !681
  %conv = trunc i32 %11 to i8, !dbg !682
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !683
  %13 = load i64, i64* %numWritten, align 8, !dbg !684
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !683
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !685
  %14 = load i64, i64* %numWritten, align 8, !dbg !686
  %inc = add i64 %14, 1, !dbg !686
  store i64 %inc, i64* %numWritten, align 8, !dbg !686
  br label %while.cond, !dbg !658, !llvm.loop !687

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !689
  ret i64 %15, !dbg !690
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !691 {
entry:
  ret i32 1, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !695 {
entry:
  ret i32 0, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !697 {
entry:
  %call = call i32 @rand() #7, !dbg !698
  %rem = srem i32 %call, 2, !dbg !699
  ret i32 %rem, !dbg !700
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !729 {
entry:
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !731 {
entry:
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !69}
!llvm.ident = !{!107, !107}
!llvm.module.flags = !{!108, !109, !110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData", scope: !2, file: !3, line: 43, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_544/source_code")
!4 = !{!5, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 40, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!21 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!45 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!46 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !50, line: 178, size: 128, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!51 = !{!52, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !49, file: !50, line: 180, baseType: !53, size: 16)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !54, line: 28, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !49, file: !50, line: 181, baseType: !57, size: 112, offset: 16)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 112, elements: !59)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = !{!0, !62, !65}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData", scope: !2, file: !3, line: 44, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData", scope: !2, file: !3, line: 45, type: !64, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !69, file: !70, line: 174, type: !64, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !87, globals: !90, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_544/source_code")
!71 = !{!72}
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!75 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!87 = !{!88, !64, !55, !89}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !{!67, !91, !93, !95, !97, !99, !101, !103}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !69, file: !70, line: 175, type: !64, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !69, file: !70, line: 176, type: !64, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "globalTrue", scope: !69, file: !70, line: 181, type: !64, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "globalFalse", scope: !69, file: !70, line: 182, type: !64, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "globalFive", scope: !69, file: !70, line: 183, type: !64, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "globalArgc", scope: !69, file: !70, line: 214, type: !64, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "globalArgv", scope: !69, file: !70, line: 215, type: !105, isLocal: false, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!107 = !{!"clang version 12.0.0"}
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 49, type: !112, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !{}
!115 = !DILocalVariable(name: "data", scope: !111, file: !3, line: 51, type: !64)
!116 = !DILocation(line: 51, column: 9, scope: !111)
!117 = !DILocation(line: 51, column: 16, scope: !111)
!118 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 53, type: !64)
!119 = distinct !DILexicalBlock(scope: !111, file: !3, line: 52, column: 5)
!120 = !DILocation(line: 53, column: 13, scope: !119)
!121 = !DILocalVariable(name: "buffer", scope: !119, file: !3, line: 54, type: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 10)
!125 = !DILocation(line: 54, column: 13, scope: !119)
!126 = !DILocation(line: 57, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !3, line: 57, column: 13)
!128 = !DILocation(line: 57, column: 18, scope: !127)
!129 = !DILocation(line: 57, column: 13, scope: !119)
!130 = !DILocation(line: 59, column: 20, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 58, column: 9)
!132 = !DILocation(line: 59, column: 13, scope: !131)
!133 = !DILocation(line: 59, column: 26, scope: !131)
!134 = !DILocation(line: 61, column: 19, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 61, column: 13)
!136 = !DILocation(line: 61, column: 17, scope: !135)
!137 = !DILocation(line: 61, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 61, column: 13)
!139 = !DILocation(line: 61, column: 26, scope: !138)
!140 = !DILocation(line: 61, column: 13, scope: !135)
!141 = !DILocation(line: 63, column: 37, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 62, column: 13)
!143 = !DILocation(line: 63, column: 30, scope: !142)
!144 = !DILocation(line: 63, column: 17, scope: !142)
!145 = !DILocation(line: 64, column: 13, scope: !142)
!146 = !DILocation(line: 61, column: 33, scope: !138)
!147 = !DILocation(line: 61, column: 13, scope: !138)
!148 = distinct !{!148, !140, !149, !150}
!149 = !DILocation(line: 64, column: 13, scope: !135)
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 65, column: 9, scope: !131)
!152 = !DILocation(line: 68, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !127, file: !3, line: 67, column: 9)
!154 = !DILocation(line: 71, column: 1, scope: !111)
!155 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_bad", scope: !3, file: !3, line: 73, type: !112, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!156 = !DILocalVariable(name: "data", scope: !155, file: !3, line: 75, type: !64)
!157 = !DILocation(line: 75, column: 9, scope: !155)
!158 = !DILocation(line: 77, column: 10, scope: !155)
!159 = !DILocalVariable(name: "recvResult", scope: !160, file: !3, line: 83, type: !64)
!160 = distinct !DILexicalBlock(scope: !155, file: !3, line: 78, column: 5)
!161 = !DILocation(line: 83, column: 13, scope: !160)
!162 = !DILocalVariable(name: "service", scope: !160, file: !3, line: 84, type: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !164)
!164 = !{!165, !166, !172, !179}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !163, file: !19, line: 240, baseType: !53, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !163, file: !19, line: 241, baseType: !167, size: 16, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !169, line: 25, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !171, line: 40, baseType: !55)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !163, file: !19, line: 242, baseType: !173, size: 32, offset: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !173, file: !19, line: 33, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 26, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !171, line: 42, baseType: !7)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !163, file: !19, line: 245, baseType: !180, size: 64, offset: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DILocation(line: 84, column: 28, scope: !160)
!184 = !DILocalVariable(name: "connectSocket", scope: !160, file: !3, line: 85, type: !64)
!185 = !DILocation(line: 85, column: 16, scope: !160)
!186 = !DILocalVariable(name: "inputBuffer", scope: !160, file: !3, line: 86, type: !57)
!187 = !DILocation(line: 86, column: 14, scope: !160)
!188 = !DILocation(line: 87, column: 9, scope: !160)
!189 = !DILocation(line: 97, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !160, file: !3, line: 88, column: 9)
!191 = !DILocation(line: 97, column: 27, scope: !190)
!192 = !DILocation(line: 98, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 98, column: 17)
!194 = !DILocation(line: 98, column: 31, scope: !193)
!195 = !DILocation(line: 98, column: 17, scope: !190)
!196 = !DILocation(line: 100, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 99, column: 13)
!198 = !DILocation(line: 102, column: 13, scope: !190)
!199 = !DILocation(line: 103, column: 21, scope: !190)
!200 = !DILocation(line: 103, column: 32, scope: !190)
!201 = !DILocation(line: 104, column: 39, scope: !190)
!202 = !DILocation(line: 104, column: 21, scope: !190)
!203 = !DILocation(line: 104, column: 30, scope: !190)
!204 = !DILocation(line: 104, column: 37, scope: !190)
!205 = !DILocation(line: 105, column: 32, scope: !190)
!206 = !DILocation(line: 105, column: 21, scope: !190)
!207 = !DILocation(line: 105, column: 30, scope: !190)
!208 = !DILocation(line: 106, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !190, file: !3, line: 106, column: 17)
!210 = !DILocation(line: 106, column: 40, scope: !209)
!211 = !DILocation(line: 106, column: 17, scope: !209)
!212 = !DILocation(line: 106, column: 85, scope: !209)
!213 = !DILocation(line: 106, column: 17, scope: !190)
!214 = !DILocation(line: 108, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !3, line: 107, column: 13)
!216 = !DILocation(line: 112, column: 31, scope: !190)
!217 = !DILocation(line: 112, column: 46, scope: !190)
!218 = !DILocation(line: 112, column: 26, scope: !190)
!219 = !DILocation(line: 112, column: 24, scope: !190)
!220 = !DILocation(line: 113, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !190, file: !3, line: 113, column: 17)
!222 = !DILocation(line: 113, column: 28, scope: !221)
!223 = !DILocation(line: 113, column: 44, scope: !221)
!224 = !DILocation(line: 113, column: 47, scope: !221)
!225 = !DILocation(line: 113, column: 58, scope: !221)
!226 = !DILocation(line: 113, column: 17, scope: !190)
!227 = !DILocation(line: 115, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !3, line: 114, column: 13)
!229 = !DILocation(line: 118, column: 25, scope: !190)
!230 = !DILocation(line: 118, column: 13, scope: !190)
!231 = !DILocation(line: 118, column: 37, scope: !190)
!232 = !DILocation(line: 120, column: 25, scope: !190)
!233 = !DILocation(line: 120, column: 20, scope: !190)
!234 = !DILocation(line: 120, column: 18, scope: !190)
!235 = !DILocation(line: 121, column: 9, scope: !190)
!236 = !DILocation(line: 123, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !160, file: !3, line: 123, column: 13)
!238 = !DILocation(line: 123, column: 27, scope: !237)
!239 = !DILocation(line: 123, column: 13, scope: !160)
!240 = !DILocation(line: 125, column: 26, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 124, column: 9)
!242 = !DILocation(line: 125, column: 13, scope: !241)
!243 = !DILocation(line: 126, column: 9, scope: !241)
!244 = !DILocation(line: 134, column: 76, scope: !155)
!245 = !DILocation(line: 134, column: 74, scope: !155)
!246 = !DILocation(line: 135, column: 5, scope: !155)
!247 = !DILocation(line: 136, column: 1, scope: !155)
!248 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 143, type: !112, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!249 = !DILocalVariable(name: "data", scope: !248, file: !3, line: 145, type: !64)
!250 = !DILocation(line: 145, column: 9, scope: !248)
!251 = !DILocation(line: 145, column: 16, scope: !248)
!252 = !DILocalVariable(name: "i", scope: !253, file: !3, line: 147, type: !64)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 146, column: 5)
!254 = !DILocation(line: 147, column: 13, scope: !253)
!255 = !DILocalVariable(name: "buffer", scope: !253, file: !3, line: 148, type: !122)
!256 = !DILocation(line: 148, column: 13, scope: !253)
!257 = !DILocation(line: 151, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 151, column: 13)
!259 = !DILocation(line: 151, column: 18, scope: !258)
!260 = !DILocation(line: 151, column: 13, scope: !253)
!261 = !DILocation(line: 153, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 152, column: 9)
!263 = !DILocation(line: 153, column: 13, scope: !262)
!264 = !DILocation(line: 153, column: 26, scope: !262)
!265 = !DILocation(line: 155, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 155, column: 13)
!267 = !DILocation(line: 155, column: 17, scope: !266)
!268 = !DILocation(line: 155, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 155, column: 13)
!270 = !DILocation(line: 155, column: 26, scope: !269)
!271 = !DILocation(line: 155, column: 13, scope: !266)
!272 = !DILocation(line: 157, column: 37, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 156, column: 13)
!274 = !DILocation(line: 157, column: 30, scope: !273)
!275 = !DILocation(line: 157, column: 17, scope: !273)
!276 = !DILocation(line: 158, column: 13, scope: !273)
!277 = !DILocation(line: 155, column: 33, scope: !269)
!278 = !DILocation(line: 155, column: 13, scope: !269)
!279 = distinct !{!279, !271, !280, !150}
!280 = !DILocation(line: 158, column: 13, scope: !266)
!281 = !DILocation(line: 159, column: 9, scope: !262)
!282 = !DILocation(line: 162, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !258, file: !3, line: 161, column: 9)
!284 = !DILocation(line: 165, column: 1, scope: !248)
!285 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 167, type: !112, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!286 = !DILocalVariable(name: "data", scope: !285, file: !3, line: 169, type: !64)
!287 = !DILocation(line: 169, column: 9, scope: !285)
!288 = !DILocation(line: 171, column: 10, scope: !285)
!289 = !DILocation(line: 174, column: 10, scope: !285)
!290 = !DILocation(line: 175, column: 80, scope: !285)
!291 = !DILocation(line: 175, column: 78, scope: !285)
!292 = !DILocation(line: 176, column: 5, scope: !285)
!293 = !DILocation(line: 177, column: 1, scope: !285)
!294 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 180, type: !112, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!295 = !DILocalVariable(name: "data", scope: !294, file: !3, line: 182, type: !64)
!296 = !DILocation(line: 182, column: 9, scope: !294)
!297 = !DILocation(line: 182, column: 16, scope: !294)
!298 = !DILocalVariable(name: "i", scope: !299, file: !3, line: 184, type: !64)
!299 = distinct !DILexicalBlock(scope: !294, file: !3, line: 183, column: 5)
!300 = !DILocation(line: 184, column: 13, scope: !299)
!301 = !DILocalVariable(name: "buffer", scope: !299, file: !3, line: 185, type: !122)
!302 = !DILocation(line: 185, column: 13, scope: !299)
!303 = !DILocation(line: 187, column: 13, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !3, line: 187, column: 13)
!305 = !DILocation(line: 187, column: 18, scope: !304)
!306 = !DILocation(line: 187, column: 23, scope: !304)
!307 = !DILocation(line: 187, column: 26, scope: !304)
!308 = !DILocation(line: 187, column: 31, scope: !304)
!309 = !DILocation(line: 187, column: 13, scope: !299)
!310 = !DILocation(line: 189, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !3, line: 188, column: 9)
!312 = !DILocation(line: 189, column: 13, scope: !311)
!313 = !DILocation(line: 189, column: 26, scope: !311)
!314 = !DILocation(line: 191, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 191, column: 13)
!316 = !DILocation(line: 191, column: 17, scope: !315)
!317 = !DILocation(line: 191, column: 24, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 191, column: 13)
!319 = !DILocation(line: 191, column: 26, scope: !318)
!320 = !DILocation(line: 191, column: 13, scope: !315)
!321 = !DILocation(line: 193, column: 37, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 192, column: 13)
!323 = !DILocation(line: 193, column: 30, scope: !322)
!324 = !DILocation(line: 193, column: 17, scope: !322)
!325 = !DILocation(line: 194, column: 13, scope: !322)
!326 = !DILocation(line: 191, column: 33, scope: !318)
!327 = !DILocation(line: 191, column: 13, scope: !318)
!328 = distinct !{!328, !320, !329, !150}
!329 = !DILocation(line: 194, column: 13, scope: !315)
!330 = !DILocation(line: 195, column: 9, scope: !311)
!331 = !DILocation(line: 198, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !304, file: !3, line: 197, column: 9)
!333 = !DILocation(line: 201, column: 1, scope: !294)
!334 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 203, type: !112, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!335 = !DILocalVariable(name: "data", scope: !334, file: !3, line: 205, type: !64)
!336 = !DILocation(line: 205, column: 9, scope: !334)
!337 = !DILocation(line: 207, column: 10, scope: !334)
!338 = !DILocalVariable(name: "recvResult", scope: !339, file: !3, line: 213, type: !64)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 208, column: 5)
!340 = !DILocation(line: 213, column: 13, scope: !339)
!341 = !DILocalVariable(name: "service", scope: !339, file: !3, line: 214, type: !163)
!342 = !DILocation(line: 214, column: 28, scope: !339)
!343 = !DILocalVariable(name: "connectSocket", scope: !339, file: !3, line: 215, type: !64)
!344 = !DILocation(line: 215, column: 16, scope: !339)
!345 = !DILocalVariable(name: "inputBuffer", scope: !339, file: !3, line: 216, type: !57)
!346 = !DILocation(line: 216, column: 14, scope: !339)
!347 = !DILocation(line: 217, column: 9, scope: !339)
!348 = !DILocation(line: 227, column: 29, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !3, line: 218, column: 9)
!350 = !DILocation(line: 227, column: 27, scope: !349)
!351 = !DILocation(line: 228, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 228, column: 17)
!353 = !DILocation(line: 228, column: 31, scope: !352)
!354 = !DILocation(line: 228, column: 17, scope: !349)
!355 = !DILocation(line: 230, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 229, column: 13)
!357 = !DILocation(line: 232, column: 13, scope: !349)
!358 = !DILocation(line: 233, column: 21, scope: !349)
!359 = !DILocation(line: 233, column: 32, scope: !349)
!360 = !DILocation(line: 234, column: 39, scope: !349)
!361 = !DILocation(line: 234, column: 21, scope: !349)
!362 = !DILocation(line: 234, column: 30, scope: !349)
!363 = !DILocation(line: 234, column: 37, scope: !349)
!364 = !DILocation(line: 235, column: 32, scope: !349)
!365 = !DILocation(line: 235, column: 21, scope: !349)
!366 = !DILocation(line: 235, column: 30, scope: !349)
!367 = !DILocation(line: 236, column: 25, scope: !368)
!368 = distinct !DILexicalBlock(scope: !349, file: !3, line: 236, column: 17)
!369 = !DILocation(line: 236, column: 40, scope: !368)
!370 = !DILocation(line: 236, column: 17, scope: !368)
!371 = !DILocation(line: 236, column: 85, scope: !368)
!372 = !DILocation(line: 236, column: 17, scope: !349)
!373 = !DILocation(line: 238, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !3, line: 237, column: 13)
!375 = !DILocation(line: 242, column: 31, scope: !349)
!376 = !DILocation(line: 242, column: 46, scope: !349)
!377 = !DILocation(line: 242, column: 26, scope: !349)
!378 = !DILocation(line: 242, column: 24, scope: !349)
!379 = !DILocation(line: 243, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !349, file: !3, line: 243, column: 17)
!381 = !DILocation(line: 243, column: 28, scope: !380)
!382 = !DILocation(line: 243, column: 44, scope: !380)
!383 = !DILocation(line: 243, column: 47, scope: !380)
!384 = !DILocation(line: 243, column: 58, scope: !380)
!385 = !DILocation(line: 243, column: 17, scope: !349)
!386 = !DILocation(line: 245, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !3, line: 244, column: 13)
!388 = !DILocation(line: 248, column: 25, scope: !349)
!389 = !DILocation(line: 248, column: 13, scope: !349)
!390 = !DILocation(line: 248, column: 37, scope: !349)
!391 = !DILocation(line: 250, column: 25, scope: !349)
!392 = !DILocation(line: 250, column: 20, scope: !349)
!393 = !DILocation(line: 250, column: 18, scope: !349)
!394 = !DILocation(line: 251, column: 9, scope: !349)
!395 = !DILocation(line: 253, column: 13, scope: !396)
!396 = distinct !DILexicalBlock(scope: !339, file: !3, line: 253, column: 13)
!397 = !DILocation(line: 253, column: 27, scope: !396)
!398 = !DILocation(line: 253, column: 13, scope: !339)
!399 = !DILocation(line: 255, column: 26, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 254, column: 9)
!401 = !DILocation(line: 255, column: 13, scope: !400)
!402 = !DILocation(line: 256, column: 9, scope: !400)
!403 = !DILocation(line: 264, column: 80, scope: !334)
!404 = !DILocation(line: 264, column: 78, scope: !334)
!405 = !DILocation(line: 265, column: 5, scope: !334)
!406 = !DILocation(line: 266, column: 1, scope: !334)
!407 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_good", scope: !3, file: !3, line: 268, type: !112, scopeLine: 269, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!408 = !DILocation(line: 270, column: 5, scope: !407)
!409 = !DILocation(line: 271, column: 5, scope: !407)
!410 = !DILocation(line: 272, column: 1, scope: !407)
!411 = distinct !DISubprogram(name: "printLine", scope: !70, file: !70, line: 11, type: !412, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !106}
!414 = !DILocalVariable(name: "line", arg: 1, scope: !411, file: !70, line: 11, type: !106)
!415 = !DILocation(line: 11, column: 25, scope: !411)
!416 = !DILocation(line: 13, column: 1, scope: !411)
!417 = !DILocation(line: 14, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !70, line: 14, column: 8)
!419 = !DILocation(line: 14, column: 13, scope: !418)
!420 = !DILocation(line: 14, column: 8, scope: !411)
!421 = !DILocation(line: 16, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !70, line: 15, column: 5)
!423 = !DILocation(line: 16, column: 9, scope: !422)
!424 = !DILocation(line: 17, column: 5, scope: !422)
!425 = !DILocation(line: 18, column: 5, scope: !411)
!426 = !DILocation(line: 19, column: 1, scope: !411)
!427 = distinct !DISubprogram(name: "printSinkLine", scope: !70, file: !70, line: 20, type: !412, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!428 = !DILocalVariable(name: "line", arg: 1, scope: !427, file: !70, line: 20, type: !106)
!429 = !DILocation(line: 20, column: 29, scope: !427)
!430 = !DILocation(line: 22, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !70, line: 22, column: 8)
!432 = !DILocation(line: 22, column: 13, scope: !431)
!433 = !DILocation(line: 22, column: 8, scope: !427)
!434 = !DILocation(line: 24, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !70, line: 23, column: 5)
!436 = !DILocation(line: 24, column: 9, scope: !435)
!437 = !DILocation(line: 25, column: 5, scope: !435)
!438 = !DILocation(line: 26, column: 1, scope: !427)
!439 = distinct !DISubprogram(name: "printWLine", scope: !70, file: !70, line: 27, type: !440, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !444, line: 74, baseType: !64)
!444 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!445 = !DILocalVariable(name: "line", arg: 1, scope: !439, file: !70, line: 27, type: !442)
!446 = !DILocation(line: 27, column: 29, scope: !439)
!447 = !DILocation(line: 29, column: 8, scope: !448)
!448 = distinct !DILexicalBlock(scope: !439, file: !70, line: 29, column: 8)
!449 = !DILocation(line: 29, column: 13, scope: !448)
!450 = !DILocation(line: 29, column: 8, scope: !439)
!451 = !DILocation(line: 31, column: 27, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !70, line: 30, column: 5)
!453 = !DILocation(line: 31, column: 9, scope: !452)
!454 = !DILocation(line: 32, column: 5, scope: !452)
!455 = !DILocation(line: 33, column: 1, scope: !439)
!456 = distinct !DISubprogram(name: "printIntLine", scope: !70, file: !70, line: 35, type: !457, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !64}
!459 = !DILocalVariable(name: "intNumber", arg: 1, scope: !456, file: !70, line: 35, type: !64)
!460 = !DILocation(line: 35, column: 24, scope: !456)
!461 = !DILocation(line: 37, column: 20, scope: !456)
!462 = !DILocation(line: 37, column: 5, scope: !456)
!463 = !DILocation(line: 38, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printShortLine", scope: !70, file: !70, line: 40, type: !465, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!468 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !464, file: !70, line: 40, type: !467)
!469 = !DILocation(line: 40, column: 28, scope: !464)
!470 = !DILocation(line: 42, column: 21, scope: !464)
!471 = !DILocation(line: 42, column: 5, scope: !464)
!472 = !DILocation(line: 43, column: 1, scope: !464)
!473 = distinct !DISubprogram(name: "printFloatLine", scope: !70, file: !70, line: 45, type: !474, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476}
!476 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!477 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !473, file: !70, line: 45, type: !476)
!478 = !DILocation(line: 45, column: 28, scope: !473)
!479 = !DILocation(line: 47, column: 20, scope: !473)
!480 = !DILocation(line: 47, column: 5, scope: !473)
!481 = !DILocation(line: 48, column: 1, scope: !473)
!482 = distinct !DISubprogram(name: "printLongLine", scope: !70, file: !70, line: 50, type: !483, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485}
!485 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!486 = !DILocalVariable(name: "longNumber", arg: 1, scope: !482, file: !70, line: 50, type: !485)
!487 = !DILocation(line: 50, column: 26, scope: !482)
!488 = !DILocation(line: 52, column: 21, scope: !482)
!489 = !DILocation(line: 52, column: 5, scope: !482)
!490 = !DILocation(line: 53, column: 1, scope: !482)
!491 = distinct !DISubprogram(name: "printLongLongLine", scope: !70, file: !70, line: 55, type: !492, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !495, line: 27, baseType: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !171, line: 44, baseType: !485)
!497 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !491, file: !70, line: 55, type: !494)
!498 = !DILocation(line: 55, column: 33, scope: !491)
!499 = !DILocation(line: 57, column: 29, scope: !491)
!500 = !DILocation(line: 57, column: 5, scope: !491)
!501 = !DILocation(line: 58, column: 1, scope: !491)
!502 = distinct !DISubprogram(name: "printSizeTLine", scope: !70, file: !70, line: 60, type: !503, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !444, line: 46, baseType: !506)
!506 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!507 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !502, file: !70, line: 60, type: !505)
!508 = !DILocation(line: 60, column: 29, scope: !502)
!509 = !DILocation(line: 62, column: 21, scope: !502)
!510 = !DILocation(line: 62, column: 5, scope: !502)
!511 = !DILocation(line: 63, column: 1, scope: !502)
!512 = distinct !DISubprogram(name: "printHexCharLine", scope: !70, file: !70, line: 65, type: !513, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !58}
!515 = !DILocalVariable(name: "charHex", arg: 1, scope: !512, file: !70, line: 65, type: !58)
!516 = !DILocation(line: 65, column: 29, scope: !512)
!517 = !DILocation(line: 67, column: 22, scope: !512)
!518 = !DILocation(line: 67, column: 5, scope: !512)
!519 = !DILocation(line: 68, column: 1, scope: !512)
!520 = distinct !DISubprogram(name: "printWcharLine", scope: !70, file: !70, line: 70, type: !521, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !443}
!523 = !DILocalVariable(name: "wideChar", arg: 1, scope: !520, file: !70, line: 70, type: !443)
!524 = !DILocation(line: 70, column: 29, scope: !520)
!525 = !DILocalVariable(name: "s", scope: !520, file: !70, line: 74, type: !526)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 2)
!529 = !DILocation(line: 74, column: 13, scope: !520)
!530 = !DILocation(line: 75, column: 16, scope: !520)
!531 = !DILocation(line: 75, column: 9, scope: !520)
!532 = !DILocation(line: 75, column: 14, scope: !520)
!533 = !DILocation(line: 76, column: 9, scope: !520)
!534 = !DILocation(line: 76, column: 14, scope: !520)
!535 = !DILocation(line: 77, column: 21, scope: !520)
!536 = !DILocation(line: 77, column: 5, scope: !520)
!537 = !DILocation(line: 78, column: 1, scope: !520)
!538 = distinct !DISubprogram(name: "printUnsignedLine", scope: !70, file: !70, line: 80, type: !539, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !7}
!541 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !538, file: !70, line: 80, type: !7)
!542 = !DILocation(line: 80, column: 33, scope: !538)
!543 = !DILocation(line: 82, column: 20, scope: !538)
!544 = !DILocation(line: 82, column: 5, scope: !538)
!545 = !DILocation(line: 83, column: 1, scope: !538)
!546 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !70, file: !70, line: 85, type: !547, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !89}
!549 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !546, file: !70, line: 85, type: !89)
!550 = !DILocation(line: 85, column: 45, scope: !546)
!551 = !DILocation(line: 87, column: 22, scope: !546)
!552 = !DILocation(line: 87, column: 5, scope: !546)
!553 = !DILocation(line: 88, column: 1, scope: !546)
!554 = distinct !DISubprogram(name: "printDoubleLine", scope: !70, file: !70, line: 90, type: !555, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557}
!557 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!558 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !554, file: !70, line: 90, type: !557)
!559 = !DILocation(line: 90, column: 29, scope: !554)
!560 = !DILocation(line: 92, column: 20, scope: !554)
!561 = !DILocation(line: 92, column: 5, scope: !554)
!562 = !DILocation(line: 93, column: 1, scope: !554)
!563 = distinct !DISubprogram(name: "printStructLine", scope: !70, file: !70, line: 95, type: !564, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !568, line: 100, baseType: !569)
!568 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_544/source_code")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !568, line: 96, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !569, file: !568, line: 98, baseType: !64, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !569, file: !568, line: 99, baseType: !64, size: 32, offset: 32)
!573 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !563, file: !70, line: 95, type: !566)
!574 = !DILocation(line: 95, column: 40, scope: !563)
!575 = !DILocation(line: 97, column: 26, scope: !563)
!576 = !DILocation(line: 97, column: 47, scope: !563)
!577 = !DILocation(line: 97, column: 55, scope: !563)
!578 = !DILocation(line: 97, column: 76, scope: !563)
!579 = !DILocation(line: 97, column: 5, scope: !563)
!580 = !DILocation(line: 98, column: 1, scope: !563)
!581 = distinct !DISubprogram(name: "printBytesLine", scope: !70, file: !70, line: 100, type: !582, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584, !505}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!585 = !DILocalVariable(name: "bytes", arg: 1, scope: !581, file: !70, line: 100, type: !584)
!586 = !DILocation(line: 100, column: 38, scope: !581)
!587 = !DILocalVariable(name: "numBytes", arg: 2, scope: !581, file: !70, line: 100, type: !505)
!588 = !DILocation(line: 100, column: 52, scope: !581)
!589 = !DILocalVariable(name: "i", scope: !581, file: !70, line: 102, type: !505)
!590 = !DILocation(line: 102, column: 12, scope: !581)
!591 = !DILocation(line: 103, column: 12, scope: !592)
!592 = distinct !DILexicalBlock(scope: !581, file: !70, line: 103, column: 5)
!593 = !DILocation(line: 103, column: 10, scope: !592)
!594 = !DILocation(line: 103, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !70, line: 103, column: 5)
!596 = !DILocation(line: 103, column: 21, scope: !595)
!597 = !DILocation(line: 103, column: 19, scope: !595)
!598 = !DILocation(line: 103, column: 5, scope: !592)
!599 = !DILocation(line: 105, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !70, line: 104, column: 5)
!601 = !DILocation(line: 105, column: 30, scope: !600)
!602 = !DILocation(line: 105, column: 9, scope: !600)
!603 = !DILocation(line: 106, column: 5, scope: !600)
!604 = !DILocation(line: 103, column: 31, scope: !595)
!605 = !DILocation(line: 103, column: 5, scope: !595)
!606 = distinct !{!606, !598, !607, !150}
!607 = !DILocation(line: 106, column: 5, scope: !592)
!608 = !DILocation(line: 107, column: 5, scope: !581)
!609 = !DILocation(line: 108, column: 1, scope: !581)
!610 = distinct !DISubprogram(name: "decodeHexChars", scope: !70, file: !70, line: 113, type: !611, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!611 = !DISubroutineType(types: !612)
!612 = !{!505, !584, !505, !106}
!613 = !DILocalVariable(name: "bytes", arg: 1, scope: !610, file: !70, line: 113, type: !584)
!614 = !DILocation(line: 113, column: 39, scope: !610)
!615 = !DILocalVariable(name: "numBytes", arg: 2, scope: !610, file: !70, line: 113, type: !505)
!616 = !DILocation(line: 113, column: 53, scope: !610)
!617 = !DILocalVariable(name: "hex", arg: 3, scope: !610, file: !70, line: 113, type: !106)
!618 = !DILocation(line: 113, column: 71, scope: !610)
!619 = !DILocalVariable(name: "numWritten", scope: !610, file: !70, line: 115, type: !505)
!620 = !DILocation(line: 115, column: 12, scope: !610)
!621 = !DILocation(line: 121, column: 5, scope: !610)
!622 = !DILocation(line: 121, column: 12, scope: !610)
!623 = !DILocation(line: 121, column: 25, scope: !610)
!624 = !DILocation(line: 121, column: 23, scope: !610)
!625 = !DILocation(line: 121, column: 34, scope: !610)
!626 = !DILocation(line: 121, column: 37, scope: !610)
!627 = !DILocation(line: 121, column: 67, scope: !610)
!628 = !DILocation(line: 121, column: 70, scope: !610)
!629 = !DILocation(line: 0, scope: !610)
!630 = !DILocalVariable(name: "byte", scope: !631, file: !70, line: 123, type: !64)
!631 = distinct !DILexicalBlock(scope: !610, file: !70, line: 122, column: 5)
!632 = !DILocation(line: 123, column: 13, scope: !631)
!633 = !DILocation(line: 124, column: 17, scope: !631)
!634 = !DILocation(line: 124, column: 25, scope: !631)
!635 = !DILocation(line: 124, column: 23, scope: !631)
!636 = !DILocation(line: 124, column: 9, scope: !631)
!637 = !DILocation(line: 125, column: 45, scope: !631)
!638 = !DILocation(line: 125, column: 29, scope: !631)
!639 = !DILocation(line: 125, column: 9, scope: !631)
!640 = !DILocation(line: 125, column: 15, scope: !631)
!641 = !DILocation(line: 125, column: 27, scope: !631)
!642 = !DILocation(line: 126, column: 9, scope: !631)
!643 = distinct !{!643, !621, !644, !150}
!644 = !DILocation(line: 127, column: 5, scope: !610)
!645 = !DILocation(line: 129, column: 12, scope: !610)
!646 = !DILocation(line: 129, column: 5, scope: !610)
!647 = distinct !DISubprogram(name: "decodeHexWChars", scope: !70, file: !70, line: 135, type: !648, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!648 = !DISubroutineType(types: !649)
!649 = !{!505, !584, !505, !442}
!650 = !DILocalVariable(name: "bytes", arg: 1, scope: !647, file: !70, line: 135, type: !584)
!651 = !DILocation(line: 135, column: 41, scope: !647)
!652 = !DILocalVariable(name: "numBytes", arg: 2, scope: !647, file: !70, line: 135, type: !505)
!653 = !DILocation(line: 135, column: 55, scope: !647)
!654 = !DILocalVariable(name: "hex", arg: 3, scope: !647, file: !70, line: 135, type: !442)
!655 = !DILocation(line: 135, column: 76, scope: !647)
!656 = !DILocalVariable(name: "numWritten", scope: !647, file: !70, line: 137, type: !505)
!657 = !DILocation(line: 137, column: 12, scope: !647)
!658 = !DILocation(line: 143, column: 5, scope: !647)
!659 = !DILocation(line: 143, column: 12, scope: !647)
!660 = !DILocation(line: 143, column: 25, scope: !647)
!661 = !DILocation(line: 143, column: 23, scope: !647)
!662 = !DILocation(line: 143, column: 34, scope: !647)
!663 = !DILocation(line: 143, column: 47, scope: !647)
!664 = !DILocation(line: 143, column: 55, scope: !647)
!665 = !DILocation(line: 143, column: 53, scope: !647)
!666 = !DILocation(line: 143, column: 37, scope: !647)
!667 = !DILocation(line: 143, column: 68, scope: !647)
!668 = !DILocation(line: 143, column: 81, scope: !647)
!669 = !DILocation(line: 143, column: 89, scope: !647)
!670 = !DILocation(line: 143, column: 87, scope: !647)
!671 = !DILocation(line: 143, column: 100, scope: !647)
!672 = !DILocation(line: 143, column: 71, scope: !647)
!673 = !DILocation(line: 0, scope: !647)
!674 = !DILocalVariable(name: "byte", scope: !675, file: !70, line: 145, type: !64)
!675 = distinct !DILexicalBlock(scope: !647, file: !70, line: 144, column: 5)
!676 = !DILocation(line: 145, column: 13, scope: !675)
!677 = !DILocation(line: 146, column: 18, scope: !675)
!678 = !DILocation(line: 146, column: 26, scope: !675)
!679 = !DILocation(line: 146, column: 24, scope: !675)
!680 = !DILocation(line: 146, column: 9, scope: !675)
!681 = !DILocation(line: 147, column: 45, scope: !675)
!682 = !DILocation(line: 147, column: 29, scope: !675)
!683 = !DILocation(line: 147, column: 9, scope: !675)
!684 = !DILocation(line: 147, column: 15, scope: !675)
!685 = !DILocation(line: 147, column: 27, scope: !675)
!686 = !DILocation(line: 148, column: 9, scope: !675)
!687 = distinct !{!687, !658, !688, !150}
!688 = !DILocation(line: 149, column: 5, scope: !647)
!689 = !DILocation(line: 151, column: 12, scope: !647)
!690 = !DILocation(line: 151, column: 5, scope: !647)
!691 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !70, file: !70, line: 156, type: !692, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!692 = !DISubroutineType(types: !693)
!693 = !{!64}
!694 = !DILocation(line: 158, column: 5, scope: !691)
!695 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !70, file: !70, line: 161, type: !692, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!696 = !DILocation(line: 163, column: 5, scope: !695)
!697 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !70, file: !70, line: 166, type: !692, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!698 = !DILocation(line: 168, column: 13, scope: !697)
!699 = !DILocation(line: 168, column: 20, scope: !697)
!700 = !DILocation(line: 168, column: 5, scope: !697)
!701 = distinct !DISubprogram(name: "good1", scope: !70, file: !70, line: 187, type: !112, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!702 = !DILocation(line: 187, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good2", scope: !70, file: !70, line: 188, type: !112, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!704 = !DILocation(line: 188, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good3", scope: !70, file: !70, line: 189, type: !112, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!706 = !DILocation(line: 189, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good4", scope: !70, file: !70, line: 190, type: !112, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!708 = !DILocation(line: 190, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good5", scope: !70, file: !70, line: 191, type: !112, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!710 = !DILocation(line: 191, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good6", scope: !70, file: !70, line: 192, type: !112, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!712 = !DILocation(line: 192, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "good7", scope: !70, file: !70, line: 193, type: !112, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!714 = !DILocation(line: 193, column: 16, scope: !713)
!715 = distinct !DISubprogram(name: "good8", scope: !70, file: !70, line: 194, type: !112, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!716 = !DILocation(line: 194, column: 16, scope: !715)
!717 = distinct !DISubprogram(name: "good9", scope: !70, file: !70, line: 195, type: !112, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!718 = !DILocation(line: 195, column: 16, scope: !717)
!719 = distinct !DISubprogram(name: "bad1", scope: !70, file: !70, line: 198, type: !112, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!720 = !DILocation(line: 198, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad2", scope: !70, file: !70, line: 199, type: !112, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!722 = !DILocation(line: 199, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad3", scope: !70, file: !70, line: 200, type: !112, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!724 = !DILocation(line: 200, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad4", scope: !70, file: !70, line: 201, type: !112, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!726 = !DILocation(line: 201, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad5", scope: !70, file: !70, line: 202, type: !112, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!728 = !DILocation(line: 202, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad6", scope: !70, file: !70, line: 203, type: !112, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!730 = !DILocation(line: 203, column: 15, scope: !729)
!731 = distinct !DISubprogram(name: "bad7", scope: !70, file: !70, line: 204, type: !112, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!732 = !DILocation(line: 204, column: 15, scope: !731)
!733 = distinct !DISubprogram(name: "bad8", scope: !70, file: !70, line: 205, type: !112, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!734 = !DILocation(line: 205, column: 15, scope: !733)
!735 = distinct !DISubprogram(name: "bad9", scope: !70, file: !70, line: 206, type: !112, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!736 = !DILocation(line: 206, column: 15, scope: !735)
