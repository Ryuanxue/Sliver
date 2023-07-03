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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i39 = alloca i32, align 4
  %buffer40 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %data, align 4, !dbg !110
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !111
  %tobool = icmp ne i32 %call, 0, !dbg !111
  br i1 %tobool, label %if.then, label %if.else, !dbg !113

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !118, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 -1, i32* %connectSocket, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  br label %do.body, !dbg !144

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !145
  store i32 %call1, i32* %connectSocket, align 4, !dbg !147
  %0 = load i32, i32* %connectSocket, align 4, !dbg !148
  %cmp = icmp eq i32 %0, -1, !dbg !150
  br i1 %cmp, label %if.then2, label %if.end, !dbg !151

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !152

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !154
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !155
  store i16 2, i16* %sin_family, align 4, !dbg !156
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !157
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !158
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !159
  store i32 %call3, i32* %s_addr, align 4, !dbg !160
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !161
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !162
  store i16 %call4, i16* %sin_port, align 2, !dbg !163
  %2 = load i32, i32* %connectSocket, align 4, !dbg !164
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !166
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !167
  %cmp6 = icmp eq i32 %call5, -1, !dbg !168
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !169

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !170

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !172
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !174
  %conv = trunc i64 %call9 to i32, !dbg !174
  store i32 %conv, i32* %recvResult, align 4, !dbg !175
  %5 = load i32, i32* %recvResult, align 4, !dbg !176
  %cmp10 = icmp eq i32 %5, -1, !dbg !178
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !179

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !180
  %cmp12 = icmp eq i32 %6, 0, !dbg !181
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !182

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !183

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !185
  %idxprom = sext i32 %7 to i64, !dbg !186
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !186
  store i8 0, i8* %arrayidx, align 1, !dbg !187
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !188
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !189
  store i32 %call17, i32* %data, align 4, !dbg !190
  br label %do.end, !dbg !191

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !192
  %cmp18 = icmp ne i32 %8, -1, !dbg !194
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !195

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !196
  %call21 = call i32 @close(i32 %9), !dbg !198
  br label %if.end22, !dbg !199

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !200

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !201
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end22
  %call24 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !203
  %tobool25 = icmp ne i32 %call24, 0, !dbg !203
  br i1 %tobool25, label %if.then26, label %if.else38, !dbg !205

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !210, metadata !DIExpression()), !dbg !214
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !214
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !214
  %11 = load i32, i32* %data, align 4, !dbg !215
  %cmp27 = icmp sge i32 %11, 0, !dbg !217
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !218

if.then29:                                        ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !219
  %idxprom30 = sext i32 %12 to i64, !dbg !221
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !221
  store i32 1, i32* %arrayidx31, align 4, !dbg !222
  store i32 0, i32* %i, align 4, !dbg !223
  br label %for.cond, !dbg !225

for.cond:                                         ; preds = %for.inc, %if.then29
  %13 = load i32, i32* %i, align 4, !dbg !226
  %cmp32 = icmp slt i32 %13, 10, !dbg !228
  br i1 %cmp32, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !230
  %idxprom34 = sext i32 %14 to i64, !dbg !232
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !232
  %15 = load i32, i32* %arrayidx35, align 4, !dbg !232
  call void @printIntLine(i32 %15), !dbg !233
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !235
  %inc = add nsw i32 %16, 1, !dbg !235
  store i32 %inc, i32* %i, align 4, !dbg !235
  br label %for.cond, !dbg !236, !llvm.loop !237

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !240

if.else36:                                        ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !241
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end59, !dbg !243

if.else38:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i39, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer40, metadata !248, metadata !DIExpression()), !dbg !249
  %17 = bitcast [10 x i32]* %buffer40 to i8*, !dbg !249
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 40, i1 false), !dbg !249
  %18 = load i32, i32* %data, align 4, !dbg !250
  %cmp41 = icmp sge i32 %18, 0, !dbg !252
  br i1 %cmp41, label %land.lhs.true, label %if.else57, !dbg !253

land.lhs.true:                                    ; preds = %if.else38
  %19 = load i32, i32* %data, align 4, !dbg !254
  %cmp43 = icmp slt i32 %19, 10, !dbg !255
  br i1 %cmp43, label %if.then45, label %if.else57, !dbg !256

if.then45:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %data, align 4, !dbg !257
  %idxprom46 = sext i32 %20 to i64, !dbg !259
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer40, i64 0, i64 %idxprom46, !dbg !259
  store i32 1, i32* %arrayidx47, align 4, !dbg !260
  store i32 0, i32* %i39, align 4, !dbg !261
  br label %for.cond48, !dbg !263

for.cond48:                                       ; preds = %for.inc54, %if.then45
  %21 = load i32, i32* %i39, align 4, !dbg !264
  %cmp49 = icmp slt i32 %21, 10, !dbg !266
  br i1 %cmp49, label %for.body51, label %for.end56, !dbg !267

for.body51:                                       ; preds = %for.cond48
  %22 = load i32, i32* %i39, align 4, !dbg !268
  %idxprom52 = sext i32 %22 to i64, !dbg !270
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer40, i64 0, i64 %idxprom52, !dbg !270
  %23 = load i32, i32* %arrayidx53, align 4, !dbg !270
  call void @printIntLine(i32 %23), !dbg !271
  br label %for.inc54, !dbg !272

for.inc54:                                        ; preds = %for.body51
  %24 = load i32, i32* %i39, align 4, !dbg !273
  %inc55 = add nsw i32 %24, 1, !dbg !273
  store i32 %inc55, i32* %i39, align 4, !dbg !273
  br label %for.cond48, !dbg !274, !llvm.loop !275

for.end56:                                        ; preds = %for.cond48
  br label %if.end58, !dbg !277

if.else57:                                        ; preds = %land.lhs.true, %if.else38
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !278
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %for.end56
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end37
  ret void, !dbg !280
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
define dso_local void @goodB2G() #0 !dbg !281 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %recvResult23 = alloca i32, align 4
  %service24 = alloca %struct.sockaddr_in, align 4
  %connectSocket25 = alloca i32, align 4
  %inputBuffer26 = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i82 = alloca i32, align 4
  %buffer83 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !282, metadata !DIExpression()), !dbg !283
  store i32 -1, i32* %data, align 4, !dbg !284
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !285
  %tobool = icmp ne i32 %call, 0, !dbg !285
  br i1 %tobool, label %if.then, label %if.else, !dbg !287

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 -1, i32* %connectSocket, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !296, metadata !DIExpression()), !dbg !297
  br label %do.body, !dbg !298

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !299
  store i32 %call1, i32* %connectSocket, align 4, !dbg !301
  %0 = load i32, i32* %connectSocket, align 4, !dbg !302
  %cmp = icmp eq i32 %0, -1, !dbg !304
  br i1 %cmp, label %if.then2, label %if.end, !dbg !305

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !306

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !308
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !308
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !309
  store i16 2, i16* %sin_family, align 4, !dbg !310
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !311
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !312
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !313
  store i32 %call3, i32* %s_addr, align 4, !dbg !314
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !315
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !316
  store i16 %call4, i16* %sin_port, align 2, !dbg !317
  %2 = load i32, i32* %connectSocket, align 4, !dbg !318
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !320
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !321
  %cmp6 = icmp eq i32 %call5, -1, !dbg !322
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !323

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !324

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !326
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !327
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !328
  %conv = trunc i64 %call9 to i32, !dbg !328
  store i32 %conv, i32* %recvResult, align 4, !dbg !329
  %5 = load i32, i32* %recvResult, align 4, !dbg !330
  %cmp10 = icmp eq i32 %5, -1, !dbg !332
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !333

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !334
  %cmp12 = icmp eq i32 %6, 0, !dbg !335
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !336

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !337

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !339
  %idxprom = sext i32 %7 to i64, !dbg !340
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !340
  store i8 0, i8* %arrayidx, align 1, !dbg !341
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !342
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !343
  store i32 %call17, i32* %data, align 4, !dbg !344
  br label %do.end, !dbg !345

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !346
  %cmp18 = icmp ne i32 %8, -1, !dbg !348
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !349

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !350
  %call21 = call i32 @close(i32 %9), !dbg !352
  br label %if.end22, !dbg !353

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end64, !dbg !354

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult23, metadata !355, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service24, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %connectSocket25, metadata !361, metadata !DIExpression()), !dbg !362
  store i32 -1, i32* %connectSocket25, align 4, !dbg !362
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer26, metadata !363, metadata !DIExpression()), !dbg !364
  br label %do.body27, !dbg !365

do.body27:                                        ; preds = %if.else
  %call28 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !366
  store i32 %call28, i32* %connectSocket25, align 4, !dbg !368
  %10 = load i32, i32* %connectSocket25, align 4, !dbg !369
  %cmp29 = icmp eq i32 %10, -1, !dbg !371
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !372

if.then31:                                        ; preds = %do.body27
  br label %do.end58, !dbg !373

if.end32:                                         ; preds = %do.body27
  %11 = bitcast %struct.sockaddr_in* %service24 to i8*, !dbg !375
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false), !dbg !375
  %sin_family33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 0, !dbg !376
  store i16 2, i16* %sin_family33, align 4, !dbg !377
  %call34 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !378
  %sin_addr35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 2, !dbg !379
  %s_addr36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr35, i32 0, i32 0, !dbg !380
  store i32 %call34, i32* %s_addr36, align 4, !dbg !381
  %call37 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !382
  %sin_port38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 1, !dbg !383
  store i16 %call37, i16* %sin_port38, align 2, !dbg !384
  %12 = load i32, i32* %connectSocket25, align 4, !dbg !385
  %13 = bitcast %struct.sockaddr_in* %service24 to %struct.sockaddr*, !dbg !387
  %call39 = call i32 @connect(i32 %12, %struct.sockaddr* %13, i32 16), !dbg !388
  %cmp40 = icmp eq i32 %call39, -1, !dbg !389
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !390

if.then42:                                        ; preds = %if.end32
  br label %do.end58, !dbg !391

if.end43:                                         ; preds = %if.end32
  %14 = load i32, i32* %connectSocket25, align 4, !dbg !393
  %arraydecay44 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 0, !dbg !394
  %call45 = call i64 @recv(i32 %14, i8* %arraydecay44, i64 13, i32 0), !dbg !395
  %conv46 = trunc i64 %call45 to i32, !dbg !395
  store i32 %conv46, i32* %recvResult23, align 4, !dbg !396
  %15 = load i32, i32* %recvResult23, align 4, !dbg !397
  %cmp47 = icmp eq i32 %15, -1, !dbg !399
  br i1 %cmp47, label %if.then52, label %lor.lhs.false49, !dbg !400

lor.lhs.false49:                                  ; preds = %if.end43
  %16 = load i32, i32* %recvResult23, align 4, !dbg !401
  %cmp50 = icmp eq i32 %16, 0, !dbg !402
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !403

if.then52:                                        ; preds = %lor.lhs.false49, %if.end43
  br label %do.end58, !dbg !404

if.end53:                                         ; preds = %lor.lhs.false49
  %17 = load i32, i32* %recvResult23, align 4, !dbg !406
  %idxprom54 = sext i32 %17 to i64, !dbg !407
  %arrayidx55 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 %idxprom54, !dbg !407
  store i8 0, i8* %arrayidx55, align 1, !dbg !408
  %arraydecay56 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 0, !dbg !409
  %call57 = call i32 @atoi(i8* %arraydecay56) #9, !dbg !410
  store i32 %call57, i32* %data, align 4, !dbg !411
  br label %do.end58, !dbg !412

do.end58:                                         ; preds = %if.end53, %if.then52, %if.then42, %if.then31
  %18 = load i32, i32* %connectSocket25, align 4, !dbg !413
  %cmp59 = icmp ne i32 %18, -1, !dbg !415
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !416

if.then61:                                        ; preds = %do.end58
  %19 = load i32, i32* %connectSocket25, align 4, !dbg !417
  %call62 = call i32 @close(i32 %19), !dbg !419
  br label %if.end63, !dbg !420

if.end63:                                         ; preds = %if.then61, %do.end58
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end22
  %call65 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !421
  %tobool66 = icmp ne i32 %call65, 0, !dbg !421
  br i1 %tobool66, label %if.then67, label %if.else81, !dbg !423

if.then67:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !424, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !428, metadata !DIExpression()), !dbg !429
  %20 = bitcast [10 x i32]* %buffer to i8*, !dbg !429
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !429
  %21 = load i32, i32* %data, align 4, !dbg !430
  %cmp68 = icmp sge i32 %21, 0, !dbg !432
  br i1 %cmp68, label %land.lhs.true, label %if.else79, !dbg !433

land.lhs.true:                                    ; preds = %if.then67
  %22 = load i32, i32* %data, align 4, !dbg !434
  %cmp70 = icmp slt i32 %22, 10, !dbg !435
  br i1 %cmp70, label %if.then72, label %if.else79, !dbg !436

if.then72:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %data, align 4, !dbg !437
  %idxprom73 = sext i32 %23 to i64, !dbg !439
  %arrayidx74 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom73, !dbg !439
  store i32 1, i32* %arrayidx74, align 4, !dbg !440
  store i32 0, i32* %i, align 4, !dbg !441
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.inc, %if.then72
  %24 = load i32, i32* %i, align 4, !dbg !444
  %cmp75 = icmp slt i32 %24, 10, !dbg !446
  br i1 %cmp75, label %for.body, label %for.end, !dbg !447

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !dbg !448
  %idxprom77 = sext i32 %25 to i64, !dbg !450
  %arrayidx78 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom77, !dbg !450
  %26 = load i32, i32* %arrayidx78, align 4, !dbg !450
  call void @printIntLine(i32 %26), !dbg !451
  br label %for.inc, !dbg !452

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !453
  %inc = add nsw i32 %27, 1, !dbg !453
  store i32 %inc, i32* %i, align 4, !dbg !453
  br label %for.cond, !dbg !454, !llvm.loop !455

for.end:                                          ; preds = %for.cond
  br label %if.end80, !dbg !457

if.else79:                                        ; preds = %land.lhs.true, %if.then67
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !458
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %for.end
  br label %if.end103, !dbg !460

if.else81:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i32* %i82, metadata !461, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer83, metadata !465, metadata !DIExpression()), !dbg !466
  %28 = bitcast [10 x i32]* %buffer83 to i8*, !dbg !466
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 40, i1 false), !dbg !466
  %29 = load i32, i32* %data, align 4, !dbg !467
  %cmp84 = icmp sge i32 %29, 0, !dbg !469
  br i1 %cmp84, label %land.lhs.true86, label %if.else101, !dbg !470

land.lhs.true86:                                  ; preds = %if.else81
  %30 = load i32, i32* %data, align 4, !dbg !471
  %cmp87 = icmp slt i32 %30, 10, !dbg !472
  br i1 %cmp87, label %if.then89, label %if.else101, !dbg !473

if.then89:                                        ; preds = %land.lhs.true86
  %31 = load i32, i32* %data, align 4, !dbg !474
  %idxprom90 = sext i32 %31 to i64, !dbg !476
  %arrayidx91 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer83, i64 0, i64 %idxprom90, !dbg !476
  store i32 1, i32* %arrayidx91, align 4, !dbg !477
  store i32 0, i32* %i82, align 4, !dbg !478
  br label %for.cond92, !dbg !480

for.cond92:                                       ; preds = %for.inc98, %if.then89
  %32 = load i32, i32* %i82, align 4, !dbg !481
  %cmp93 = icmp slt i32 %32, 10, !dbg !483
  br i1 %cmp93, label %for.body95, label %for.end100, !dbg !484

for.body95:                                       ; preds = %for.cond92
  %33 = load i32, i32* %i82, align 4, !dbg !485
  %idxprom96 = sext i32 %33 to i64, !dbg !487
  %arrayidx97 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer83, i64 0, i64 %idxprom96, !dbg !487
  %34 = load i32, i32* %arrayidx97, align 4, !dbg !487
  call void @printIntLine(i32 %34), !dbg !488
  br label %for.inc98, !dbg !489

for.inc98:                                        ; preds = %for.body95
  %35 = load i32, i32* %i82, align 4, !dbg !490
  %inc99 = add nsw i32 %35, 1, !dbg !490
  store i32 %inc99, i32* %i82, align 4, !dbg !490
  br label %for.cond92, !dbg !491, !llvm.loop !492

for.end100:                                       ; preds = %for.cond92
  br label %if.end102, !dbg !494

if.else101:                                       ; preds = %land.lhs.true86, %if.else81
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !495
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %for.end100
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end80
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !498 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i11 = alloca i32, align 4
  %buffer12 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !499, metadata !DIExpression()), !dbg !500
  store i32 -1, i32* %data, align 4, !dbg !501
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !502
  %tobool = icmp ne i32 %call, 0, !dbg !502
  br i1 %tobool, label %if.then, label %if.else, !dbg !504

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !505
  br label %if.end, !dbg !507

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !508
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !510
  %tobool2 = icmp ne i32 %call1, 0, !dbg !510
  br i1 %tobool2, label %if.then3, label %if.else10, !dbg !512

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !513, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !518
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !518
  %1 = load i32, i32* %data, align 4, !dbg !519
  %cmp = icmp sge i32 %1, 0, !dbg !521
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !522

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !523
  %idxprom = sext i32 %2 to i64, !dbg !525
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !525
  store i32 1, i32* %arrayidx, align 4, !dbg !526
  store i32 0, i32* %i, align 4, !dbg !527
  br label %for.cond, !dbg !529

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !530
  %cmp5 = icmp slt i32 %3, 10, !dbg !532
  br i1 %cmp5, label %for.body, label %for.end, !dbg !533

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !534
  %idxprom6 = sext i32 %4 to i64, !dbg !536
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !536
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !536
  call void @printIntLine(i32 %5), !dbg !537
  br label %for.inc, !dbg !538

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !539
  %inc = add nsw i32 %6, 1, !dbg !539
  store i32 %inc, i32* %i, align 4, !dbg !539
  br label %for.cond, !dbg !540, !llvm.loop !541

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !543

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !544
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end27, !dbg !546

if.else10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !547, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer12, metadata !551, metadata !DIExpression()), !dbg !552
  %7 = bitcast [10 x i32]* %buffer12 to i8*, !dbg !552
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false), !dbg !552
  %8 = load i32, i32* %data, align 4, !dbg !553
  %cmp13 = icmp sge i32 %8, 0, !dbg !555
  br i1 %cmp13, label %if.then14, label %if.else25, !dbg !556

if.then14:                                        ; preds = %if.else10
  %9 = load i32, i32* %data, align 4, !dbg !557
  %idxprom15 = sext i32 %9 to i64, !dbg !559
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom15, !dbg !559
  store i32 1, i32* %arrayidx16, align 4, !dbg !560
  store i32 0, i32* %i11, align 4, !dbg !561
  br label %for.cond17, !dbg !563

for.cond17:                                       ; preds = %for.inc22, %if.then14
  %10 = load i32, i32* %i11, align 4, !dbg !564
  %cmp18 = icmp slt i32 %10, 10, !dbg !566
  br i1 %cmp18, label %for.body19, label %for.end24, !dbg !567

for.body19:                                       ; preds = %for.cond17
  %11 = load i32, i32* %i11, align 4, !dbg !568
  %idxprom20 = sext i32 %11 to i64, !dbg !570
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom20, !dbg !570
  %12 = load i32, i32* %arrayidx21, align 4, !dbg !570
  call void @printIntLine(i32 %12), !dbg !571
  br label %for.inc22, !dbg !572

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, i32* %i11, align 4, !dbg !573
  %inc23 = add nsw i32 %13, 1, !dbg !573
  store i32 %inc23, i32* %i11, align 4, !dbg !573
  br label %for.cond17, !dbg !574, !llvm.loop !575

for.end24:                                        ; preds = %for.cond17
  br label %if.end26, !dbg !577

if.else25:                                        ; preds = %if.else10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !578
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good() #0 !dbg !581 {
entry:
  call void @goodB2G(), !dbg !582
  call void @goodG2B(), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !585 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !590
  %0 = load i8*, i8** %line.addr, align 8, !dbg !591
  %cmp = icmp ne i8* %0, null, !dbg !593
  br i1 %cmp, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !595
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !597
  br label %if.end, !dbg !598

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !599
  ret void, !dbg !600
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !601 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i8*, i8** %line.addr, align 8, !dbg !604
  %cmp = icmp ne i8* %0, null, !dbg !606
  br i1 %cmp, label %if.then, label %if.end, !dbg !607

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !610
  br label %if.end, !dbg !611

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !613 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i32*, i32** %line.addr, align 8, !dbg !621
  %cmp = icmp ne i32* %0, null, !dbg !623
  br i1 %cmp, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !625
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !627
  br label %if.end, !dbg !628

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !629
}

declare dso_local i32 @wprintf(i32*, ...) #5

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
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !686 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !691
  %conv = sext i8 %0 to i32, !dbg !691
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !692
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !694 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !699, metadata !DIExpression()), !dbg !703
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !704
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !705
  store i32 %0, i32* %arrayidx, align 4, !dbg !706
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !707
  store i32 0, i32* %arrayidx1, align 4, !dbg !708
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !709
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !710
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !712 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !717
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !718
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !720 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !723, metadata !DIExpression()), !dbg !724
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !725
  %conv = zext i8 %0 to i32, !dbg !725
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !726
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !728 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !734
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !735
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !737 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !749
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !750
  %1 = load i32, i32* %intOne, align 4, !dbg !750
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !751
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !752
  %3 = load i32, i32* %intTwo, align 4, !dbg !752
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !753
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !755 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !759, metadata !DIExpression()), !dbg !760
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata i64* %i, metadata !763, metadata !DIExpression()), !dbg !764
  store i64 0, i64* %i, align 8, !dbg !765
  br label %for.cond, !dbg !767

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !768
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !770
  %cmp = icmp ult i64 %0, %1, !dbg !771
  br i1 %cmp, label %for.body, label %for.end, !dbg !772

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !773
  %3 = load i64, i64* %i, align 8, !dbg !775
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !773
  %4 = load i8, i8* %arrayidx, align 1, !dbg !773
  %conv = zext i8 %4 to i32, !dbg !773
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !776
  br label %for.inc, !dbg !777

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !778
  %inc = add i64 %5, 1, !dbg !778
  store i64 %inc, i64* %i, align 8, !dbg !778
  br label %for.cond, !dbg !779, !llvm.loop !780

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !782
  ret void, !dbg !783
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !784 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !787, metadata !DIExpression()), !dbg !788
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !793, metadata !DIExpression()), !dbg !794
  store i64 0, i64* %numWritten, align 8, !dbg !794
  br label %while.cond, !dbg !795

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !796
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !797
  %cmp = icmp ult i64 %0, %1, !dbg !798
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !799

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !800
  %2 = load i16*, i16** %call, align 8, !dbg !800
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !800
  %4 = load i64, i64* %numWritten, align 8, !dbg !800
  %mul = mul i64 2, %4, !dbg !800
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !800
  %5 = load i8, i8* %arrayidx, align 1, !dbg !800
  %conv = sext i8 %5 to i32, !dbg !800
  %idxprom = sext i32 %conv to i64, !dbg !800
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !800
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !800
  %conv2 = zext i16 %6 to i32, !dbg !800
  %and = and i32 %conv2, 4096, !dbg !800
  %tobool = icmp ne i32 %and, 0, !dbg !800
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !801

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !802
  %7 = load i16*, i16** %call3, align 8, !dbg !802
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !802
  %9 = load i64, i64* %numWritten, align 8, !dbg !802
  %mul4 = mul i64 2, %9, !dbg !802
  %add = add i64 %mul4, 1, !dbg !802
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !802
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !802
  %conv6 = sext i8 %10 to i32, !dbg !802
  %idxprom7 = sext i32 %conv6 to i64, !dbg !802
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !802
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !802
  %conv9 = zext i16 %11 to i32, !dbg !802
  %and10 = and i32 %conv9, 4096, !dbg !802
  %tobool11 = icmp ne i32 %and10, 0, !dbg !801
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !803
  br i1 %12, label %while.body, label %while.end, !dbg !795

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !804, metadata !DIExpression()), !dbg !806
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !807
  %14 = load i64, i64* %numWritten, align 8, !dbg !808
  %mul12 = mul i64 2, %14, !dbg !809
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !807
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !810
  %15 = load i32, i32* %byte, align 4, !dbg !811
  %conv15 = trunc i32 %15 to i8, !dbg !812
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !813
  %17 = load i64, i64* %numWritten, align 8, !dbg !814
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !813
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !815
  %18 = load i64, i64* %numWritten, align 8, !dbg !816
  %inc = add i64 %18, 1, !dbg !816
  store i64 %inc, i64* %numWritten, align 8, !dbg !816
  br label %while.cond, !dbg !795, !llvm.loop !817

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !819
  ret i64 %19, !dbg !820
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !821 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !830, metadata !DIExpression()), !dbg !831
  store i64 0, i64* %numWritten, align 8, !dbg !831
  br label %while.cond, !dbg !832

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !833
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !834
  %cmp = icmp ult i64 %0, %1, !dbg !835
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !836

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !837
  %3 = load i64, i64* %numWritten, align 8, !dbg !838
  %mul = mul i64 2, %3, !dbg !839
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !837
  %4 = load i32, i32* %arrayidx, align 4, !dbg !837
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !840
  %tobool = icmp ne i32 %call, 0, !dbg !840
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !841

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !842
  %6 = load i64, i64* %numWritten, align 8, !dbg !843
  %mul1 = mul i64 2, %6, !dbg !844
  %add = add i64 %mul1, 1, !dbg !845
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !842
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !842
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !846
  %tobool4 = icmp ne i32 %call3, 0, !dbg !841
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !847
  br i1 %8, label %while.body, label %while.end, !dbg !832

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !848, metadata !DIExpression()), !dbg !850
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !851
  %10 = load i64, i64* %numWritten, align 8, !dbg !852
  %mul5 = mul i64 2, %10, !dbg !853
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !851
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !854
  %11 = load i32, i32* %byte, align 4, !dbg !855
  %conv = trunc i32 %11 to i8, !dbg !856
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !857
  %13 = load i64, i64* %numWritten, align 8, !dbg !858
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !857
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !859
  %14 = load i64, i64* %numWritten, align 8, !dbg !860
  %inc = add i64 %14, 1, !dbg !860
  store i64 %inc, i64* %numWritten, align 8, !dbg !860
  br label %while.cond, !dbg !832, !llvm.loop !861

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !863
  ret i64 %15, !dbg !864
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !865 {
entry:
  ret i32 1, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !869 {
entry:
  ret i32 0, !dbg !870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !871 {
entry:
  %call = call i32 @rand() #7, !dbg !872
  %rem = srem i32 %call, 2, !dbg !873
  ret i32 %rem, !dbg !874
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !887 {
entry:
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !889 {
entry:
  ret void, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !891 {
entry:
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !893 {
entry:
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !895 {
entry:
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !897 {
entry:
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !899 {
entry:
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !901 {
entry:
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !903 {
entry:
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !905 {
entry:
  ret void, !dbg !906
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !907 {
entry:
  ret void, !dbg !908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !909 {
entry:
  ret void, !dbg !910
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocation(line: 50, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 50, column: 8)
!113 = !DILocation(line: 50, column: 8, scope: !104)
!114 = !DILocalVariable(name: "recvResult", scope: !115, file: !45, line: 57, type: !23)
!115 = distinct !DILexicalBlock(scope: !116, file: !45, line: 52, column: 9)
!116 = distinct !DILexicalBlock(scope: !112, file: !45, line: 51, column: 5)
!117 = !DILocation(line: 57, column: 17, scope: !115)
!118 = !DILocalVariable(name: "service", scope: !115, file: !45, line: 58, type: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !120)
!120 = !{!121, !122, !128, !135}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !119, file: !60, line: 240, baseType: !94, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !119, file: !60, line: 241, baseType: !123, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !125, line: 25, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !127, line: 40, baseType: !24)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !119, file: !60, line: 242, baseType: !129, size: 32, offset: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !129, file: !60, line: 33, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 26, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !7)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !119, file: !60, line: 245, baseType: !136, size: 64, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DILocation(line: 58, column: 32, scope: !115)
!140 = !DILocalVariable(name: "connectSocket", scope: !115, file: !45, line: 59, type: !23)
!141 = !DILocation(line: 59, column: 20, scope: !115)
!142 = !DILocalVariable(name: "inputBuffer", scope: !115, file: !45, line: 60, type: !97)
!143 = !DILocation(line: 60, column: 18, scope: !115)
!144 = !DILocation(line: 61, column: 13, scope: !115)
!145 = !DILocation(line: 71, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !115, file: !45, line: 62, column: 13)
!147 = !DILocation(line: 71, column: 31, scope: !146)
!148 = !DILocation(line: 72, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !45, line: 72, column: 21)
!150 = !DILocation(line: 72, column: 35, scope: !149)
!151 = !DILocation(line: 72, column: 21, scope: !146)
!152 = !DILocation(line: 74, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !45, line: 73, column: 17)
!154 = !DILocation(line: 76, column: 17, scope: !146)
!155 = !DILocation(line: 77, column: 25, scope: !146)
!156 = !DILocation(line: 77, column: 36, scope: !146)
!157 = !DILocation(line: 78, column: 43, scope: !146)
!158 = !DILocation(line: 78, column: 25, scope: !146)
!159 = !DILocation(line: 78, column: 34, scope: !146)
!160 = !DILocation(line: 78, column: 41, scope: !146)
!161 = !DILocation(line: 79, column: 36, scope: !146)
!162 = !DILocation(line: 79, column: 25, scope: !146)
!163 = !DILocation(line: 79, column: 34, scope: !146)
!164 = !DILocation(line: 80, column: 29, scope: !165)
!165 = distinct !DILexicalBlock(scope: !146, file: !45, line: 80, column: 21)
!166 = !DILocation(line: 80, column: 44, scope: !165)
!167 = !DILocation(line: 80, column: 21, scope: !165)
!168 = !DILocation(line: 80, column: 89, scope: !165)
!169 = !DILocation(line: 80, column: 21, scope: !146)
!170 = !DILocation(line: 82, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !45, line: 81, column: 17)
!172 = !DILocation(line: 86, column: 35, scope: !146)
!173 = !DILocation(line: 86, column: 50, scope: !146)
!174 = !DILocation(line: 86, column: 30, scope: !146)
!175 = !DILocation(line: 86, column: 28, scope: !146)
!176 = !DILocation(line: 87, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !146, file: !45, line: 87, column: 21)
!178 = !DILocation(line: 87, column: 32, scope: !177)
!179 = !DILocation(line: 87, column: 48, scope: !177)
!180 = !DILocation(line: 87, column: 51, scope: !177)
!181 = !DILocation(line: 87, column: 62, scope: !177)
!182 = !DILocation(line: 87, column: 21, scope: !146)
!183 = !DILocation(line: 89, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !45, line: 88, column: 17)
!185 = !DILocation(line: 92, column: 29, scope: !146)
!186 = !DILocation(line: 92, column: 17, scope: !146)
!187 = !DILocation(line: 92, column: 41, scope: !146)
!188 = !DILocation(line: 94, column: 29, scope: !146)
!189 = !DILocation(line: 94, column: 24, scope: !146)
!190 = !DILocation(line: 94, column: 22, scope: !146)
!191 = !DILocation(line: 95, column: 13, scope: !146)
!192 = !DILocation(line: 97, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !115, file: !45, line: 97, column: 17)
!194 = !DILocation(line: 97, column: 31, scope: !193)
!195 = !DILocation(line: 97, column: 17, scope: !115)
!196 = !DILocation(line: 99, column: 30, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !45, line: 98, column: 13)
!198 = !DILocation(line: 99, column: 17, scope: !197)
!199 = !DILocation(line: 100, column: 13, scope: !197)
!200 = !DILocation(line: 108, column: 5, scope: !116)
!201 = !DILocation(line: 113, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !112, file: !45, line: 110, column: 5)
!203 = !DILocation(line: 115, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !104, file: !45, line: 115, column: 8)
!205 = !DILocation(line: 115, column: 8, scope: !104)
!206 = !DILocalVariable(name: "i", scope: !207, file: !45, line: 118, type: !23)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 117, column: 9)
!208 = distinct !DILexicalBlock(scope: !204, file: !45, line: 116, column: 5)
!209 = !DILocation(line: 118, column: 17, scope: !207)
!210 = !DILocalVariable(name: "buffer", scope: !207, file: !45, line: 119, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 10)
!214 = !DILocation(line: 119, column: 17, scope: !207)
!215 = !DILocation(line: 122, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !207, file: !45, line: 122, column: 17)
!217 = !DILocation(line: 122, column: 22, scope: !216)
!218 = !DILocation(line: 122, column: 17, scope: !207)
!219 = !DILocation(line: 124, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 123, column: 13)
!221 = !DILocation(line: 124, column: 17, scope: !220)
!222 = !DILocation(line: 124, column: 30, scope: !220)
!223 = !DILocation(line: 126, column: 23, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 126, column: 17)
!225 = !DILocation(line: 126, column: 21, scope: !224)
!226 = !DILocation(line: 126, column: 28, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !45, line: 126, column: 17)
!228 = !DILocation(line: 126, column: 30, scope: !227)
!229 = !DILocation(line: 126, column: 17, scope: !224)
!230 = !DILocation(line: 128, column: 41, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 127, column: 17)
!232 = !DILocation(line: 128, column: 34, scope: !231)
!233 = !DILocation(line: 128, column: 21, scope: !231)
!234 = !DILocation(line: 129, column: 17, scope: !231)
!235 = !DILocation(line: 126, column: 37, scope: !227)
!236 = !DILocation(line: 126, column: 17, scope: !227)
!237 = distinct !{!237, !229, !238, !239}
!238 = !DILocation(line: 129, column: 17, scope: !224)
!239 = !{!"llvm.loop.mustprogress"}
!240 = !DILocation(line: 130, column: 13, scope: !220)
!241 = !DILocation(line: 133, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !216, file: !45, line: 132, column: 13)
!243 = !DILocation(line: 136, column: 5, scope: !208)
!244 = !DILocalVariable(name: "i", scope: !245, file: !45, line: 140, type: !23)
!245 = distinct !DILexicalBlock(scope: !246, file: !45, line: 139, column: 9)
!246 = distinct !DILexicalBlock(scope: !204, file: !45, line: 138, column: 5)
!247 = !DILocation(line: 140, column: 17, scope: !245)
!248 = !DILocalVariable(name: "buffer", scope: !245, file: !45, line: 141, type: !211)
!249 = !DILocation(line: 141, column: 17, scope: !245)
!250 = !DILocation(line: 143, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !245, file: !45, line: 143, column: 17)
!252 = !DILocation(line: 143, column: 22, scope: !251)
!253 = !DILocation(line: 143, column: 27, scope: !251)
!254 = !DILocation(line: 143, column: 30, scope: !251)
!255 = !DILocation(line: 143, column: 35, scope: !251)
!256 = !DILocation(line: 143, column: 17, scope: !245)
!257 = !DILocation(line: 145, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !45, line: 144, column: 13)
!259 = !DILocation(line: 145, column: 17, scope: !258)
!260 = !DILocation(line: 145, column: 30, scope: !258)
!261 = !DILocation(line: 147, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !45, line: 147, column: 17)
!263 = !DILocation(line: 147, column: 21, scope: !262)
!264 = !DILocation(line: 147, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 147, column: 17)
!266 = !DILocation(line: 147, column: 30, scope: !265)
!267 = !DILocation(line: 147, column: 17, scope: !262)
!268 = !DILocation(line: 149, column: 41, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !45, line: 148, column: 17)
!270 = !DILocation(line: 149, column: 34, scope: !269)
!271 = !DILocation(line: 149, column: 21, scope: !269)
!272 = !DILocation(line: 150, column: 17, scope: !269)
!273 = !DILocation(line: 147, column: 37, scope: !265)
!274 = !DILocation(line: 147, column: 17, scope: !265)
!275 = distinct !{!275, !267, !276, !239}
!276 = !DILocation(line: 150, column: 17, scope: !262)
!277 = !DILocation(line: 151, column: 13, scope: !258)
!278 = !DILocation(line: 154, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !251, file: !45, line: 153, column: 13)
!280 = !DILocation(line: 158, column: 1, scope: !104)
!281 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 167, type: !105, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!282 = !DILocalVariable(name: "data", scope: !281, file: !45, line: 169, type: !23)
!283 = !DILocation(line: 169, column: 9, scope: !281)
!284 = !DILocation(line: 171, column: 10, scope: !281)
!285 = !DILocation(line: 172, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !45, line: 172, column: 8)
!287 = !DILocation(line: 172, column: 8, scope: !281)
!288 = !DILocalVariable(name: "recvResult", scope: !289, file: !45, line: 179, type: !23)
!289 = distinct !DILexicalBlock(scope: !290, file: !45, line: 174, column: 9)
!290 = distinct !DILexicalBlock(scope: !286, file: !45, line: 173, column: 5)
!291 = !DILocation(line: 179, column: 17, scope: !289)
!292 = !DILocalVariable(name: "service", scope: !289, file: !45, line: 180, type: !119)
!293 = !DILocation(line: 180, column: 32, scope: !289)
!294 = !DILocalVariable(name: "connectSocket", scope: !289, file: !45, line: 181, type: !23)
!295 = !DILocation(line: 181, column: 20, scope: !289)
!296 = !DILocalVariable(name: "inputBuffer", scope: !289, file: !45, line: 182, type: !97)
!297 = !DILocation(line: 182, column: 18, scope: !289)
!298 = !DILocation(line: 183, column: 13, scope: !289)
!299 = !DILocation(line: 193, column: 33, scope: !300)
!300 = distinct !DILexicalBlock(scope: !289, file: !45, line: 184, column: 13)
!301 = !DILocation(line: 193, column: 31, scope: !300)
!302 = !DILocation(line: 194, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !45, line: 194, column: 21)
!304 = !DILocation(line: 194, column: 35, scope: !303)
!305 = !DILocation(line: 194, column: 21, scope: !300)
!306 = !DILocation(line: 196, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !45, line: 195, column: 17)
!308 = !DILocation(line: 198, column: 17, scope: !300)
!309 = !DILocation(line: 199, column: 25, scope: !300)
!310 = !DILocation(line: 199, column: 36, scope: !300)
!311 = !DILocation(line: 200, column: 43, scope: !300)
!312 = !DILocation(line: 200, column: 25, scope: !300)
!313 = !DILocation(line: 200, column: 34, scope: !300)
!314 = !DILocation(line: 200, column: 41, scope: !300)
!315 = !DILocation(line: 201, column: 36, scope: !300)
!316 = !DILocation(line: 201, column: 25, scope: !300)
!317 = !DILocation(line: 201, column: 34, scope: !300)
!318 = !DILocation(line: 202, column: 29, scope: !319)
!319 = distinct !DILexicalBlock(scope: !300, file: !45, line: 202, column: 21)
!320 = !DILocation(line: 202, column: 44, scope: !319)
!321 = !DILocation(line: 202, column: 21, scope: !319)
!322 = !DILocation(line: 202, column: 89, scope: !319)
!323 = !DILocation(line: 202, column: 21, scope: !300)
!324 = !DILocation(line: 204, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !45, line: 203, column: 17)
!326 = !DILocation(line: 208, column: 35, scope: !300)
!327 = !DILocation(line: 208, column: 50, scope: !300)
!328 = !DILocation(line: 208, column: 30, scope: !300)
!329 = !DILocation(line: 208, column: 28, scope: !300)
!330 = !DILocation(line: 209, column: 21, scope: !331)
!331 = distinct !DILexicalBlock(scope: !300, file: !45, line: 209, column: 21)
!332 = !DILocation(line: 209, column: 32, scope: !331)
!333 = !DILocation(line: 209, column: 48, scope: !331)
!334 = !DILocation(line: 209, column: 51, scope: !331)
!335 = !DILocation(line: 209, column: 62, scope: !331)
!336 = !DILocation(line: 209, column: 21, scope: !300)
!337 = !DILocation(line: 211, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !45, line: 210, column: 17)
!339 = !DILocation(line: 214, column: 29, scope: !300)
!340 = !DILocation(line: 214, column: 17, scope: !300)
!341 = !DILocation(line: 214, column: 41, scope: !300)
!342 = !DILocation(line: 216, column: 29, scope: !300)
!343 = !DILocation(line: 216, column: 24, scope: !300)
!344 = !DILocation(line: 216, column: 22, scope: !300)
!345 = !DILocation(line: 217, column: 13, scope: !300)
!346 = !DILocation(line: 219, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !289, file: !45, line: 219, column: 17)
!348 = !DILocation(line: 219, column: 31, scope: !347)
!349 = !DILocation(line: 219, column: 17, scope: !289)
!350 = !DILocation(line: 221, column: 30, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !45, line: 220, column: 13)
!352 = !DILocation(line: 221, column: 17, scope: !351)
!353 = !DILocation(line: 222, column: 13, scope: !351)
!354 = !DILocation(line: 230, column: 5, scope: !290)
!355 = !DILocalVariable(name: "recvResult", scope: !356, file: !45, line: 238, type: !23)
!356 = distinct !DILexicalBlock(scope: !357, file: !45, line: 233, column: 9)
!357 = distinct !DILexicalBlock(scope: !286, file: !45, line: 232, column: 5)
!358 = !DILocation(line: 238, column: 17, scope: !356)
!359 = !DILocalVariable(name: "service", scope: !356, file: !45, line: 239, type: !119)
!360 = !DILocation(line: 239, column: 32, scope: !356)
!361 = !DILocalVariable(name: "connectSocket", scope: !356, file: !45, line: 240, type: !23)
!362 = !DILocation(line: 240, column: 20, scope: !356)
!363 = !DILocalVariable(name: "inputBuffer", scope: !356, file: !45, line: 241, type: !97)
!364 = !DILocation(line: 241, column: 18, scope: !356)
!365 = !DILocation(line: 242, column: 13, scope: !356)
!366 = !DILocation(line: 252, column: 33, scope: !367)
!367 = distinct !DILexicalBlock(scope: !356, file: !45, line: 243, column: 13)
!368 = !DILocation(line: 252, column: 31, scope: !367)
!369 = !DILocation(line: 253, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !45, line: 253, column: 21)
!371 = !DILocation(line: 253, column: 35, scope: !370)
!372 = !DILocation(line: 253, column: 21, scope: !367)
!373 = !DILocation(line: 255, column: 21, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !45, line: 254, column: 17)
!375 = !DILocation(line: 257, column: 17, scope: !367)
!376 = !DILocation(line: 258, column: 25, scope: !367)
!377 = !DILocation(line: 258, column: 36, scope: !367)
!378 = !DILocation(line: 259, column: 43, scope: !367)
!379 = !DILocation(line: 259, column: 25, scope: !367)
!380 = !DILocation(line: 259, column: 34, scope: !367)
!381 = !DILocation(line: 259, column: 41, scope: !367)
!382 = !DILocation(line: 260, column: 36, scope: !367)
!383 = !DILocation(line: 260, column: 25, scope: !367)
!384 = !DILocation(line: 260, column: 34, scope: !367)
!385 = !DILocation(line: 261, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !367, file: !45, line: 261, column: 21)
!387 = !DILocation(line: 261, column: 44, scope: !386)
!388 = !DILocation(line: 261, column: 21, scope: !386)
!389 = !DILocation(line: 261, column: 89, scope: !386)
!390 = !DILocation(line: 261, column: 21, scope: !367)
!391 = !DILocation(line: 263, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !45, line: 262, column: 17)
!393 = !DILocation(line: 267, column: 35, scope: !367)
!394 = !DILocation(line: 267, column: 50, scope: !367)
!395 = !DILocation(line: 267, column: 30, scope: !367)
!396 = !DILocation(line: 267, column: 28, scope: !367)
!397 = !DILocation(line: 268, column: 21, scope: !398)
!398 = distinct !DILexicalBlock(scope: !367, file: !45, line: 268, column: 21)
!399 = !DILocation(line: 268, column: 32, scope: !398)
!400 = !DILocation(line: 268, column: 48, scope: !398)
!401 = !DILocation(line: 268, column: 51, scope: !398)
!402 = !DILocation(line: 268, column: 62, scope: !398)
!403 = !DILocation(line: 268, column: 21, scope: !367)
!404 = !DILocation(line: 270, column: 21, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !45, line: 269, column: 17)
!406 = !DILocation(line: 273, column: 29, scope: !367)
!407 = !DILocation(line: 273, column: 17, scope: !367)
!408 = !DILocation(line: 273, column: 41, scope: !367)
!409 = !DILocation(line: 275, column: 29, scope: !367)
!410 = !DILocation(line: 275, column: 24, scope: !367)
!411 = !DILocation(line: 275, column: 22, scope: !367)
!412 = !DILocation(line: 276, column: 13, scope: !367)
!413 = !DILocation(line: 278, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !356, file: !45, line: 278, column: 17)
!415 = !DILocation(line: 278, column: 31, scope: !414)
!416 = !DILocation(line: 278, column: 17, scope: !356)
!417 = !DILocation(line: 280, column: 30, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !45, line: 279, column: 13)
!419 = !DILocation(line: 280, column: 17, scope: !418)
!420 = !DILocation(line: 281, column: 13, scope: !418)
!421 = !DILocation(line: 290, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !281, file: !45, line: 290, column: 8)
!423 = !DILocation(line: 290, column: 8, scope: !281)
!424 = !DILocalVariable(name: "i", scope: !425, file: !45, line: 293, type: !23)
!425 = distinct !DILexicalBlock(scope: !426, file: !45, line: 292, column: 9)
!426 = distinct !DILexicalBlock(scope: !422, file: !45, line: 291, column: 5)
!427 = !DILocation(line: 293, column: 17, scope: !425)
!428 = !DILocalVariable(name: "buffer", scope: !425, file: !45, line: 294, type: !211)
!429 = !DILocation(line: 294, column: 17, scope: !425)
!430 = !DILocation(line: 296, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !425, file: !45, line: 296, column: 17)
!432 = !DILocation(line: 296, column: 22, scope: !431)
!433 = !DILocation(line: 296, column: 27, scope: !431)
!434 = !DILocation(line: 296, column: 30, scope: !431)
!435 = !DILocation(line: 296, column: 35, scope: !431)
!436 = !DILocation(line: 296, column: 17, scope: !425)
!437 = !DILocation(line: 298, column: 24, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !45, line: 297, column: 13)
!439 = !DILocation(line: 298, column: 17, scope: !438)
!440 = !DILocation(line: 298, column: 30, scope: !438)
!441 = !DILocation(line: 300, column: 23, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !45, line: 300, column: 17)
!443 = !DILocation(line: 300, column: 21, scope: !442)
!444 = !DILocation(line: 300, column: 28, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !45, line: 300, column: 17)
!446 = !DILocation(line: 300, column: 30, scope: !445)
!447 = !DILocation(line: 300, column: 17, scope: !442)
!448 = !DILocation(line: 302, column: 41, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !45, line: 301, column: 17)
!450 = !DILocation(line: 302, column: 34, scope: !449)
!451 = !DILocation(line: 302, column: 21, scope: !449)
!452 = !DILocation(line: 303, column: 17, scope: !449)
!453 = !DILocation(line: 300, column: 37, scope: !445)
!454 = !DILocation(line: 300, column: 17, scope: !445)
!455 = distinct !{!455, !447, !456, !239}
!456 = !DILocation(line: 303, column: 17, scope: !442)
!457 = !DILocation(line: 304, column: 13, scope: !438)
!458 = !DILocation(line: 307, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !431, file: !45, line: 306, column: 13)
!460 = !DILocation(line: 310, column: 5, scope: !426)
!461 = !DILocalVariable(name: "i", scope: !462, file: !45, line: 314, type: !23)
!462 = distinct !DILexicalBlock(scope: !463, file: !45, line: 313, column: 9)
!463 = distinct !DILexicalBlock(scope: !422, file: !45, line: 312, column: 5)
!464 = !DILocation(line: 314, column: 17, scope: !462)
!465 = !DILocalVariable(name: "buffer", scope: !462, file: !45, line: 315, type: !211)
!466 = !DILocation(line: 315, column: 17, scope: !462)
!467 = !DILocation(line: 317, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !45, line: 317, column: 17)
!469 = !DILocation(line: 317, column: 22, scope: !468)
!470 = !DILocation(line: 317, column: 27, scope: !468)
!471 = !DILocation(line: 317, column: 30, scope: !468)
!472 = !DILocation(line: 317, column: 35, scope: !468)
!473 = !DILocation(line: 317, column: 17, scope: !462)
!474 = !DILocation(line: 319, column: 24, scope: !475)
!475 = distinct !DILexicalBlock(scope: !468, file: !45, line: 318, column: 13)
!476 = !DILocation(line: 319, column: 17, scope: !475)
!477 = !DILocation(line: 319, column: 30, scope: !475)
!478 = !DILocation(line: 321, column: 23, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !45, line: 321, column: 17)
!480 = !DILocation(line: 321, column: 21, scope: !479)
!481 = !DILocation(line: 321, column: 28, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !45, line: 321, column: 17)
!483 = !DILocation(line: 321, column: 30, scope: !482)
!484 = !DILocation(line: 321, column: 17, scope: !479)
!485 = !DILocation(line: 323, column: 41, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !45, line: 322, column: 17)
!487 = !DILocation(line: 323, column: 34, scope: !486)
!488 = !DILocation(line: 323, column: 21, scope: !486)
!489 = !DILocation(line: 324, column: 17, scope: !486)
!490 = !DILocation(line: 321, column: 37, scope: !482)
!491 = !DILocation(line: 321, column: 17, scope: !482)
!492 = distinct !{!492, !484, !493, !239}
!493 = !DILocation(line: 324, column: 17, scope: !479)
!494 = !DILocation(line: 325, column: 13, scope: !475)
!495 = !DILocation(line: 328, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !468, file: !45, line: 327, column: 13)
!497 = !DILocation(line: 332, column: 1, scope: !281)
!498 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 337, type: !105, scopeLine: 338, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!499 = !DILocalVariable(name: "data", scope: !498, file: !45, line: 339, type: !23)
!500 = !DILocation(line: 339, column: 9, scope: !498)
!501 = !DILocation(line: 341, column: 10, scope: !498)
!502 = !DILocation(line: 342, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !45, line: 342, column: 8)
!504 = !DILocation(line: 342, column: 8, scope: !498)
!505 = !DILocation(line: 346, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !45, line: 343, column: 5)
!507 = !DILocation(line: 347, column: 5, scope: !506)
!508 = !DILocation(line: 352, column: 14, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !45, line: 349, column: 5)
!510 = !DILocation(line: 354, column: 8, scope: !511)
!511 = distinct !DILexicalBlock(scope: !498, file: !45, line: 354, column: 8)
!512 = !DILocation(line: 354, column: 8, scope: !498)
!513 = !DILocalVariable(name: "i", scope: !514, file: !45, line: 357, type: !23)
!514 = distinct !DILexicalBlock(scope: !515, file: !45, line: 356, column: 9)
!515 = distinct !DILexicalBlock(scope: !511, file: !45, line: 355, column: 5)
!516 = !DILocation(line: 357, column: 17, scope: !514)
!517 = !DILocalVariable(name: "buffer", scope: !514, file: !45, line: 358, type: !211)
!518 = !DILocation(line: 358, column: 17, scope: !514)
!519 = !DILocation(line: 361, column: 17, scope: !520)
!520 = distinct !DILexicalBlock(scope: !514, file: !45, line: 361, column: 17)
!521 = !DILocation(line: 361, column: 22, scope: !520)
!522 = !DILocation(line: 361, column: 17, scope: !514)
!523 = !DILocation(line: 363, column: 24, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !45, line: 362, column: 13)
!525 = !DILocation(line: 363, column: 17, scope: !524)
!526 = !DILocation(line: 363, column: 30, scope: !524)
!527 = !DILocation(line: 365, column: 23, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !45, line: 365, column: 17)
!529 = !DILocation(line: 365, column: 21, scope: !528)
!530 = !DILocation(line: 365, column: 28, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !45, line: 365, column: 17)
!532 = !DILocation(line: 365, column: 30, scope: !531)
!533 = !DILocation(line: 365, column: 17, scope: !528)
!534 = !DILocation(line: 367, column: 41, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !45, line: 366, column: 17)
!536 = !DILocation(line: 367, column: 34, scope: !535)
!537 = !DILocation(line: 367, column: 21, scope: !535)
!538 = !DILocation(line: 368, column: 17, scope: !535)
!539 = !DILocation(line: 365, column: 37, scope: !531)
!540 = !DILocation(line: 365, column: 17, scope: !531)
!541 = distinct !{!541, !533, !542, !239}
!542 = !DILocation(line: 368, column: 17, scope: !528)
!543 = !DILocation(line: 369, column: 13, scope: !524)
!544 = !DILocation(line: 372, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !520, file: !45, line: 371, column: 13)
!546 = !DILocation(line: 375, column: 5, scope: !515)
!547 = !DILocalVariable(name: "i", scope: !548, file: !45, line: 379, type: !23)
!548 = distinct !DILexicalBlock(scope: !549, file: !45, line: 378, column: 9)
!549 = distinct !DILexicalBlock(scope: !511, file: !45, line: 377, column: 5)
!550 = !DILocation(line: 379, column: 17, scope: !548)
!551 = !DILocalVariable(name: "buffer", scope: !548, file: !45, line: 380, type: !211)
!552 = !DILocation(line: 380, column: 17, scope: !548)
!553 = !DILocation(line: 383, column: 17, scope: !554)
!554 = distinct !DILexicalBlock(scope: !548, file: !45, line: 383, column: 17)
!555 = !DILocation(line: 383, column: 22, scope: !554)
!556 = !DILocation(line: 383, column: 17, scope: !548)
!557 = !DILocation(line: 385, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !45, line: 384, column: 13)
!559 = !DILocation(line: 385, column: 17, scope: !558)
!560 = !DILocation(line: 385, column: 30, scope: !558)
!561 = !DILocation(line: 387, column: 23, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !45, line: 387, column: 17)
!563 = !DILocation(line: 387, column: 21, scope: !562)
!564 = !DILocation(line: 387, column: 28, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !45, line: 387, column: 17)
!566 = !DILocation(line: 387, column: 30, scope: !565)
!567 = !DILocation(line: 387, column: 17, scope: !562)
!568 = !DILocation(line: 389, column: 41, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !45, line: 388, column: 17)
!570 = !DILocation(line: 389, column: 34, scope: !569)
!571 = !DILocation(line: 389, column: 21, scope: !569)
!572 = !DILocation(line: 390, column: 17, scope: !569)
!573 = !DILocation(line: 387, column: 37, scope: !565)
!574 = !DILocation(line: 387, column: 17, scope: !565)
!575 = distinct !{!575, !567, !576, !239}
!576 = !DILocation(line: 390, column: 17, scope: !562)
!577 = !DILocation(line: 391, column: 13, scope: !558)
!578 = !DILocation(line: 394, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !554, file: !45, line: 393, column: 13)
!580 = !DILocation(line: 398, column: 1, scope: !498)
!581 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good", scope: !45, file: !45, line: 400, type: !105, scopeLine: 401, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!582 = !DILocation(line: 402, column: 5, scope: !581)
!583 = !DILocation(line: 403, column: 5, scope: !581)
!584 = !DILocation(line: 404, column: 1, scope: !581)
!585 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !586, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !42}
!588 = !DILocalVariable(name: "line", arg: 1, scope: !585, file: !3, line: 11, type: !42)
!589 = !DILocation(line: 11, column: 25, scope: !585)
!590 = !DILocation(line: 13, column: 1, scope: !585)
!591 = !DILocation(line: 14, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !3, line: 14, column: 8)
!593 = !DILocation(line: 14, column: 13, scope: !592)
!594 = !DILocation(line: 14, column: 8, scope: !585)
!595 = !DILocation(line: 16, column: 24, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 15, column: 5)
!597 = !DILocation(line: 16, column: 9, scope: !596)
!598 = !DILocation(line: 17, column: 5, scope: !596)
!599 = !DILocation(line: 18, column: 5, scope: !585)
!600 = !DILocation(line: 19, column: 1, scope: !585)
!601 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !586, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!602 = !DILocalVariable(name: "line", arg: 1, scope: !601, file: !3, line: 20, type: !42)
!603 = !DILocation(line: 20, column: 29, scope: !601)
!604 = !DILocation(line: 22, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 22, column: 8)
!606 = !DILocation(line: 22, column: 13, scope: !605)
!607 = !DILocation(line: 22, column: 8, scope: !601)
!608 = !DILocation(line: 24, column: 24, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !3, line: 23, column: 5)
!610 = !DILocation(line: 24, column: 9, scope: !609)
!611 = !DILocation(line: 25, column: 5, scope: !609)
!612 = !DILocation(line: 26, column: 1, scope: !601)
!613 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !614, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !618, line: 74, baseType: !23)
!618 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!619 = !DILocalVariable(name: "line", arg: 1, scope: !613, file: !3, line: 27, type: !616)
!620 = !DILocation(line: 27, column: 29, scope: !613)
!621 = !DILocation(line: 29, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !3, line: 29, column: 8)
!623 = !DILocation(line: 29, column: 13, scope: !622)
!624 = !DILocation(line: 29, column: 8, scope: !613)
!625 = !DILocation(line: 31, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 30, column: 5)
!627 = !DILocation(line: 31, column: 9, scope: !626)
!628 = !DILocation(line: 32, column: 5, scope: !626)
!629 = !DILocation(line: 33, column: 1, scope: !613)
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
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !127, line: 44, baseType: !659)
!671 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !665, file: !3, line: 55, type: !668)
!672 = !DILocation(line: 55, column: 33, scope: !665)
!673 = !DILocation(line: 57, column: 29, scope: !665)
!674 = !DILocation(line: 57, column: 5, scope: !665)
!675 = !DILocation(line: 58, column: 1, scope: !665)
!676 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !677, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !618, line: 46, baseType: !680)
!680 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!681 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !676, file: !3, line: 60, type: !679)
!682 = !DILocation(line: 60, column: 29, scope: !676)
!683 = !DILocation(line: 62, column: 21, scope: !676)
!684 = !DILocation(line: 62, column: 5, scope: !676)
!685 = !DILocation(line: 63, column: 1, scope: !676)
!686 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !687, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !43}
!689 = !DILocalVariable(name: "charHex", arg: 1, scope: !686, file: !3, line: 65, type: !43)
!690 = !DILocation(line: 65, column: 29, scope: !686)
!691 = !DILocation(line: 67, column: 22, scope: !686)
!692 = !DILocation(line: 67, column: 5, scope: !686)
!693 = !DILocation(line: 68, column: 1, scope: !686)
!694 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !695, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !617}
!697 = !DILocalVariable(name: "wideChar", arg: 1, scope: !694, file: !3, line: 70, type: !617)
!698 = !DILocation(line: 70, column: 29, scope: !694)
!699 = !DILocalVariable(name: "s", scope: !694, file: !3, line: 74, type: !700)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 2)
!703 = !DILocation(line: 74, column: 13, scope: !694)
!704 = !DILocation(line: 75, column: 16, scope: !694)
!705 = !DILocation(line: 75, column: 9, scope: !694)
!706 = !DILocation(line: 75, column: 14, scope: !694)
!707 = !DILocation(line: 76, column: 9, scope: !694)
!708 = !DILocation(line: 76, column: 14, scope: !694)
!709 = !DILocation(line: 77, column: 21, scope: !694)
!710 = !DILocation(line: 77, column: 5, scope: !694)
!711 = !DILocation(line: 78, column: 1, scope: !694)
!712 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !713, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !7}
!715 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !712, file: !3, line: 80, type: !7)
!716 = !DILocation(line: 80, column: 33, scope: !712)
!717 = !DILocation(line: 82, column: 20, scope: !712)
!718 = !DILocation(line: 82, column: 5, scope: !712)
!719 = !DILocation(line: 83, column: 1, scope: !712)
!720 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !721, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !25}
!723 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !720, file: !3, line: 85, type: !25)
!724 = !DILocation(line: 85, column: 45, scope: !720)
!725 = !DILocation(line: 87, column: 22, scope: !720)
!726 = !DILocation(line: 87, column: 5, scope: !720)
!727 = !DILocation(line: 88, column: 1, scope: !720)
!728 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !729, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !731}
!731 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!732 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !728, file: !3, line: 90, type: !731)
!733 = !DILocation(line: 90, column: 29, scope: !728)
!734 = !DILocation(line: 92, column: 20, scope: !728)
!735 = !DILocation(line: 92, column: 5, scope: !728)
!736 = !DILocation(line: 93, column: 1, scope: !728)
!737 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !738, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !742, line: 100, baseType: !743)
!742 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/source_code")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !742, line: 96, size: 64, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !743, file: !742, line: 98, baseType: !23, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !743, file: !742, line: 99, baseType: !23, size: 32, offset: 32)
!747 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !737, file: !3, line: 95, type: !740)
!748 = !DILocation(line: 95, column: 40, scope: !737)
!749 = !DILocation(line: 97, column: 26, scope: !737)
!750 = !DILocation(line: 97, column: 47, scope: !737)
!751 = !DILocation(line: 97, column: 55, scope: !737)
!752 = !DILocation(line: 97, column: 76, scope: !737)
!753 = !DILocation(line: 97, column: 5, scope: !737)
!754 = !DILocation(line: 98, column: 1, scope: !737)
!755 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !756, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !758, !679}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!759 = !DILocalVariable(name: "bytes", arg: 1, scope: !755, file: !3, line: 100, type: !758)
!760 = !DILocation(line: 100, column: 38, scope: !755)
!761 = !DILocalVariable(name: "numBytes", arg: 2, scope: !755, file: !3, line: 100, type: !679)
!762 = !DILocation(line: 100, column: 52, scope: !755)
!763 = !DILocalVariable(name: "i", scope: !755, file: !3, line: 102, type: !679)
!764 = !DILocation(line: 102, column: 12, scope: !755)
!765 = !DILocation(line: 103, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !755, file: !3, line: 103, column: 5)
!767 = !DILocation(line: 103, column: 10, scope: !766)
!768 = !DILocation(line: 103, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 103, column: 5)
!770 = !DILocation(line: 103, column: 21, scope: !769)
!771 = !DILocation(line: 103, column: 19, scope: !769)
!772 = !DILocation(line: 103, column: 5, scope: !766)
!773 = !DILocation(line: 105, column: 24, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !3, line: 104, column: 5)
!775 = !DILocation(line: 105, column: 30, scope: !774)
!776 = !DILocation(line: 105, column: 9, scope: !774)
!777 = !DILocation(line: 106, column: 5, scope: !774)
!778 = !DILocation(line: 103, column: 31, scope: !769)
!779 = !DILocation(line: 103, column: 5, scope: !769)
!780 = distinct !{!780, !772, !781, !239}
!781 = !DILocation(line: 106, column: 5, scope: !766)
!782 = !DILocation(line: 107, column: 5, scope: !755)
!783 = !DILocation(line: 108, column: 1, scope: !755)
!784 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !785, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DISubroutineType(types: !786)
!786 = !{!679, !758, !679, !42}
!787 = !DILocalVariable(name: "bytes", arg: 1, scope: !784, file: !3, line: 113, type: !758)
!788 = !DILocation(line: 113, column: 39, scope: !784)
!789 = !DILocalVariable(name: "numBytes", arg: 2, scope: !784, file: !3, line: 113, type: !679)
!790 = !DILocation(line: 113, column: 53, scope: !784)
!791 = !DILocalVariable(name: "hex", arg: 3, scope: !784, file: !3, line: 113, type: !42)
!792 = !DILocation(line: 113, column: 71, scope: !784)
!793 = !DILocalVariable(name: "numWritten", scope: !784, file: !3, line: 115, type: !679)
!794 = !DILocation(line: 115, column: 12, scope: !784)
!795 = !DILocation(line: 121, column: 5, scope: !784)
!796 = !DILocation(line: 121, column: 12, scope: !784)
!797 = !DILocation(line: 121, column: 25, scope: !784)
!798 = !DILocation(line: 121, column: 23, scope: !784)
!799 = !DILocation(line: 121, column: 34, scope: !784)
!800 = !DILocation(line: 121, column: 37, scope: !784)
!801 = !DILocation(line: 121, column: 67, scope: !784)
!802 = !DILocation(line: 121, column: 70, scope: !784)
!803 = !DILocation(line: 0, scope: !784)
!804 = !DILocalVariable(name: "byte", scope: !805, file: !3, line: 123, type: !23)
!805 = distinct !DILexicalBlock(scope: !784, file: !3, line: 122, column: 5)
!806 = !DILocation(line: 123, column: 13, scope: !805)
!807 = !DILocation(line: 124, column: 17, scope: !805)
!808 = !DILocation(line: 124, column: 25, scope: !805)
!809 = !DILocation(line: 124, column: 23, scope: !805)
!810 = !DILocation(line: 124, column: 9, scope: !805)
!811 = !DILocation(line: 125, column: 45, scope: !805)
!812 = !DILocation(line: 125, column: 29, scope: !805)
!813 = !DILocation(line: 125, column: 9, scope: !805)
!814 = !DILocation(line: 125, column: 15, scope: !805)
!815 = !DILocation(line: 125, column: 27, scope: !805)
!816 = !DILocation(line: 126, column: 9, scope: !805)
!817 = distinct !{!817, !795, !818, !239}
!818 = !DILocation(line: 127, column: 5, scope: !784)
!819 = !DILocation(line: 129, column: 12, scope: !784)
!820 = !DILocation(line: 129, column: 5, scope: !784)
!821 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !822, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!822 = !DISubroutineType(types: !823)
!823 = !{!679, !758, !679, !616}
!824 = !DILocalVariable(name: "bytes", arg: 1, scope: !821, file: !3, line: 135, type: !758)
!825 = !DILocation(line: 135, column: 41, scope: !821)
!826 = !DILocalVariable(name: "numBytes", arg: 2, scope: !821, file: !3, line: 135, type: !679)
!827 = !DILocation(line: 135, column: 55, scope: !821)
!828 = !DILocalVariable(name: "hex", arg: 3, scope: !821, file: !3, line: 135, type: !616)
!829 = !DILocation(line: 135, column: 76, scope: !821)
!830 = !DILocalVariable(name: "numWritten", scope: !821, file: !3, line: 137, type: !679)
!831 = !DILocation(line: 137, column: 12, scope: !821)
!832 = !DILocation(line: 143, column: 5, scope: !821)
!833 = !DILocation(line: 143, column: 12, scope: !821)
!834 = !DILocation(line: 143, column: 25, scope: !821)
!835 = !DILocation(line: 143, column: 23, scope: !821)
!836 = !DILocation(line: 143, column: 34, scope: !821)
!837 = !DILocation(line: 143, column: 47, scope: !821)
!838 = !DILocation(line: 143, column: 55, scope: !821)
!839 = !DILocation(line: 143, column: 53, scope: !821)
!840 = !DILocation(line: 143, column: 37, scope: !821)
!841 = !DILocation(line: 143, column: 68, scope: !821)
!842 = !DILocation(line: 143, column: 81, scope: !821)
!843 = !DILocation(line: 143, column: 89, scope: !821)
!844 = !DILocation(line: 143, column: 87, scope: !821)
!845 = !DILocation(line: 143, column: 100, scope: !821)
!846 = !DILocation(line: 143, column: 71, scope: !821)
!847 = !DILocation(line: 0, scope: !821)
!848 = !DILocalVariable(name: "byte", scope: !849, file: !3, line: 145, type: !23)
!849 = distinct !DILexicalBlock(scope: !821, file: !3, line: 144, column: 5)
!850 = !DILocation(line: 145, column: 13, scope: !849)
!851 = !DILocation(line: 146, column: 18, scope: !849)
!852 = !DILocation(line: 146, column: 26, scope: !849)
!853 = !DILocation(line: 146, column: 24, scope: !849)
!854 = !DILocation(line: 146, column: 9, scope: !849)
!855 = !DILocation(line: 147, column: 45, scope: !849)
!856 = !DILocation(line: 147, column: 29, scope: !849)
!857 = !DILocation(line: 147, column: 9, scope: !849)
!858 = !DILocation(line: 147, column: 15, scope: !849)
!859 = !DILocation(line: 147, column: 27, scope: !849)
!860 = !DILocation(line: 148, column: 9, scope: !849)
!861 = distinct !{!861, !832, !862, !239}
!862 = !DILocation(line: 149, column: 5, scope: !821)
!863 = !DILocation(line: 151, column: 12, scope: !821)
!864 = !DILocation(line: 151, column: 5, scope: !821)
!865 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !866, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DISubroutineType(types: !867)
!867 = !{!23}
!868 = !DILocation(line: 158, column: 5, scope: !865)
!869 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !866, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 163, column: 5, scope: !869)
!871 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !866, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!872 = !DILocation(line: 168, column: 13, scope: !871)
!873 = !DILocation(line: 168, column: 20, scope: !871)
!874 = !DILocation(line: 168, column: 5, scope: !871)
!875 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 187, column: 16, scope: !875)
!877 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 188, column: 16, scope: !877)
!879 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 189, column: 16, scope: !879)
!881 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 190, column: 16, scope: !881)
!883 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 191, column: 16, scope: !883)
!885 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 192, column: 16, scope: !885)
!887 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 193, column: 16, scope: !887)
!889 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!890 = !DILocation(line: 194, column: 16, scope: !889)
!891 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DILocation(line: 195, column: 16, scope: !891)
!893 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!894 = !DILocation(line: 198, column: 15, scope: !893)
!895 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DILocation(line: 199, column: 15, scope: !895)
!897 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DILocation(line: 200, column: 15, scope: !897)
!899 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!900 = !DILocation(line: 201, column: 15, scope: !899)
!901 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DILocation(line: 202, column: 15, scope: !901)
!903 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!904 = !DILocation(line: 203, column: 15, scope: !903)
!905 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!906 = !DILocation(line: 204, column: 15, scope: !905)
!907 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!908 = !DILocation(line: 205, column: 15, scope: !907)
!909 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!910 = !DILocation(line: 206, column: 15, scope: !909)
