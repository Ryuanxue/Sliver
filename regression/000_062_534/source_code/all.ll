; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !62
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !65
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !67
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !69
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !93
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !95
@globalTrue = dso_local global i32 1, align 4, !dbg !97
@globalFalse = dso_local global i32 0, align 4, !dbg !99
@globalFive = dso_local global i32 5, align 4, !dbg !101
@globalArgc = dso_local global i32 0, align 4, !dbg !103
@globalArgv = dso_local global i8** null, align 8, !dbg !105
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @badSink(i32 %data) #0 !dbg !113 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load i32, i32* @badStatic, align 4, !dbg !119
  %tobool = icmp ne i32 %0, 0, !dbg !119
  br i1 %tobool, label %if.then, label %if.end5, !dbg !121

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !126, metadata !DIExpression()), !dbg !130
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !130
  %2 = load i32, i32* %data.addr, align 4, !dbg !131
  %cmp = icmp sge i32 %2, 0, !dbg !133
  br i1 %cmp, label %if.then1, label %if.else, !dbg !134

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !135
  %idxprom = sext i32 %3 to i64, !dbg !137
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !137
  store i32 1, i32* %arrayidx, align 4, !dbg !138
  store i32 0, i32* %i, align 4, !dbg !139
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !142
  %cmp2 = icmp slt i32 %4, 10, !dbg !144
  br i1 %cmp2, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !146
  %idxprom3 = sext i32 %5 to i64, !dbg !148
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !148
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !148
  call void @printIntLine(i32 %6), !dbg !149
  br label %for.inc, !dbg !150

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !151
  %inc = add nsw i32 %7, 1, !dbg !151
  store i32 %inc, i32* %i, align 4, !dbg !151
  br label %for.cond, !dbg !152, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !156

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !157
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !159

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_bad() #0 !dbg !161 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !164, metadata !DIExpression()), !dbg !165
  store i32 -1, i32* %data, align 4, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !170, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 -1, i32* %connectSocket, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !194, metadata !DIExpression()), !dbg !195
  br label %do.body, !dbg !196

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !197
  store i32 %call, i32* %connectSocket, align 4, !dbg !199
  %0 = load i32, i32* %connectSocket, align 4, !dbg !200
  %cmp = icmp eq i32 %0, -1, !dbg !202
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !204

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !206
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !207
  store i16 2, i16* %sin_family, align 4, !dbg !208
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !209
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !210
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !211
  store i32 %call1, i32* %s_addr, align 4, !dbg !212
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !213
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !214
  store i16 %call2, i16* %sin_port, align 2, !dbg !215
  %2 = load i32, i32* %connectSocket, align 4, !dbg !216
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !218
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !219
  %cmp4 = icmp eq i32 %call3, -1, !dbg !220
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !221

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !222

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !224
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !225
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !226
  %conv = trunc i64 %call7 to i32, !dbg !226
  store i32 %conv, i32* %recvResult, align 4, !dbg !227
  %5 = load i32, i32* %recvResult, align 4, !dbg !228
  %cmp8 = icmp eq i32 %5, -1, !dbg !230
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !231

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !232
  %cmp10 = icmp eq i32 %6, 0, !dbg !233
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !234

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !235

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !237
  %idxprom = sext i32 %7 to i64, !dbg !238
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !238
  store i8 0, i8* %arrayidx, align 1, !dbg !239
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !240
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !241
  store i32 %call15, i32* %data, align 4, !dbg !242
  br label %do.end, !dbg !243

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !244
  %cmp16 = icmp ne i32 %8, -1, !dbg !246
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !247

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !248
  %call19 = call i32 @close(i32 %9), !dbg !250
  br label %if.end20, !dbg !251

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 1, i32* @badStatic, align 4, !dbg !252
  %10 = load i32, i32* %data, align 4, !dbg !253
  call void @badSink(i32 %10), !dbg !254
  ret void, !dbg !255
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
define dso_local void @goodB2G1Sink(i32 %data) #0 !dbg !256 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !259
  %tobool = icmp ne i32 %0, 0, !dbg !259
  br i1 %tobool, label %if.then, label %if.else, !dbg !261

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !262
  br label %if.end7, !dbg !264

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !269, metadata !DIExpression()), !dbg !270
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !270
  %2 = load i32, i32* %data.addr, align 4, !dbg !271
  %cmp = icmp sge i32 %2, 0, !dbg !273
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !274

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !275
  %cmp1 = icmp slt i32 %3, 10, !dbg !276
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !277

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !278
  %idxprom = sext i32 %4 to i64, !dbg !280
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !280
  store i32 1, i32* %arrayidx, align 4, !dbg !281
  store i32 0, i32* %i, align 4, !dbg !282
  br label %for.cond, !dbg !284

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !285
  %cmp3 = icmp slt i32 %5, 10, !dbg !287
  br i1 %cmp3, label %for.body, label %for.end, !dbg !288

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !289
  %idxprom4 = sext i32 %6 to i64, !dbg !291
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !291
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !291
  call void @printIntLine(i32 %7), !dbg !292
  br label %for.inc, !dbg !293

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !294
  %inc = add nsw i32 %8, 1, !dbg !294
  store i32 %inc, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !298

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !299
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !302 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !303, metadata !DIExpression()), !dbg !304
  store i32 -1, i32* %data, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !311, metadata !DIExpression()), !dbg !312
  store i32 -1, i32* %connectSocket, align 4, !dbg !312
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !313, metadata !DIExpression()), !dbg !314
  br label %do.body, !dbg !315

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !316
  store i32 %call, i32* %connectSocket, align 4, !dbg !318
  %0 = load i32, i32* %connectSocket, align 4, !dbg !319
  %cmp = icmp eq i32 %0, -1, !dbg !321
  br i1 %cmp, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !323

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !325
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !325
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !326
  store i16 2, i16* %sin_family, align 4, !dbg !327
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !328
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !329
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !330
  store i32 %call1, i32* %s_addr, align 4, !dbg !331
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !332
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !333
  store i16 %call2, i16* %sin_port, align 2, !dbg !334
  %2 = load i32, i32* %connectSocket, align 4, !dbg !335
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !337
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !338
  %cmp4 = icmp eq i32 %call3, -1, !dbg !339
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !340

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !341

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !343
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !344
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !345
  %conv = trunc i64 %call7 to i32, !dbg !345
  store i32 %conv, i32* %recvResult, align 4, !dbg !346
  %5 = load i32, i32* %recvResult, align 4, !dbg !347
  %cmp8 = icmp eq i32 %5, -1, !dbg !349
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !350

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !351
  %cmp10 = icmp eq i32 %6, 0, !dbg !352
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !353

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !354

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !356
  %idxprom = sext i32 %7 to i64, !dbg !357
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !357
  store i8 0, i8* %arrayidx, align 1, !dbg !358
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !359
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !360
  store i32 %call15, i32* %data, align 4, !dbg !361
  br label %do.end, !dbg !362

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !363
  %cmp16 = icmp ne i32 %8, -1, !dbg !365
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !366

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !367
  %call19 = call i32 @close(i32 %9), !dbg !369
  br label %if.end20, !dbg !370

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !371
  %10 = load i32, i32* %data, align 4, !dbg !372
  call void @goodB2G1Sink(i32 %10), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i32 %data) #0 !dbg !375 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !378
  %tobool = icmp ne i32 %0, 0, !dbg !378
  br i1 %tobool, label %if.then, label %if.end6, !dbg !380

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !381, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !385, metadata !DIExpression()), !dbg !386
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !386
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !386
  %2 = load i32, i32* %data.addr, align 4, !dbg !387
  %cmp = icmp sge i32 %2, 0, !dbg !389
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !390

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !391
  %cmp1 = icmp slt i32 %3, 10, !dbg !392
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !393

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !394
  %idxprom = sext i32 %4 to i64, !dbg !396
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !396
  store i32 1, i32* %arrayidx, align 4, !dbg !397
  store i32 0, i32* %i, align 4, !dbg !398
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !401
  %cmp3 = icmp slt i32 %5, 10, !dbg !403
  br i1 %cmp3, label %for.body, label %for.end, !dbg !404

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !405
  %idxprom4 = sext i32 %6 to i64, !dbg !407
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !407
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !407
  call void @printIntLine(i32 %7), !dbg !408
  br label %for.inc, !dbg !409

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !410
  %inc = add nsw i32 %8, 1, !dbg !410
  store i32 %inc, i32* %i, align 4, !dbg !410
  br label %for.cond, !dbg !411, !llvm.loop !412

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !414

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !415
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !417

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !419 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 -1, i32* %data, align 4, !dbg !422
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !428, metadata !DIExpression()), !dbg !429
  store i32 -1, i32* %connectSocket, align 4, !dbg !429
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !430, metadata !DIExpression()), !dbg !431
  br label %do.body, !dbg !432

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !433
  store i32 %call, i32* %connectSocket, align 4, !dbg !435
  %0 = load i32, i32* %connectSocket, align 4, !dbg !436
  %cmp = icmp eq i32 %0, -1, !dbg !438
  br i1 %cmp, label %if.then, label %if.end, !dbg !439

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !440

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !442
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !442
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !443
  store i16 2, i16* %sin_family, align 4, !dbg !444
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !445
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !446
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !447
  store i32 %call1, i32* %s_addr, align 4, !dbg !448
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !449
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !450
  store i16 %call2, i16* %sin_port, align 2, !dbg !451
  %2 = load i32, i32* %connectSocket, align 4, !dbg !452
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !454
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !455
  %cmp4 = icmp eq i32 %call3, -1, !dbg !456
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !457

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !458

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !460
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !461
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !462
  %conv = trunc i64 %call7 to i32, !dbg !462
  store i32 %conv, i32* %recvResult, align 4, !dbg !463
  %5 = load i32, i32* %recvResult, align 4, !dbg !464
  %cmp8 = icmp eq i32 %5, -1, !dbg !466
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !467

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !468
  %cmp10 = icmp eq i32 %6, 0, !dbg !469
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !470

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !471

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !473
  %idxprom = sext i32 %7 to i64, !dbg !474
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !474
  store i8 0, i8* %arrayidx, align 1, !dbg !475
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !476
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !477
  store i32 %call15, i32* %data, align 4, !dbg !478
  br label %do.end, !dbg !479

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !480
  %cmp16 = icmp ne i32 %8, -1, !dbg !482
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !483

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !484
  %call19 = call i32 @close(i32 %9), !dbg !486
  br label %if.end20, !dbg !487

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !488
  %10 = load i32, i32* %data, align 4, !dbg !489
  call void @goodB2G2Sink(i32 %10), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !492 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !495
  %tobool = icmp ne i32 %0, 0, !dbg !495
  br i1 %tobool, label %if.then, label %if.end5, !dbg !497

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !498, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !502, metadata !DIExpression()), !dbg !503
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !503
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !503
  %2 = load i32, i32* %data.addr, align 4, !dbg !504
  %cmp = icmp sge i32 %2, 0, !dbg !506
  br i1 %cmp, label %if.then1, label %if.else, !dbg !507

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !508
  %idxprom = sext i32 %3 to i64, !dbg !510
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !510
  store i32 1, i32* %arrayidx, align 4, !dbg !511
  store i32 0, i32* %i, align 4, !dbg !512
  br label %for.cond, !dbg !514

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !515
  %cmp2 = icmp slt i32 %4, 10, !dbg !517
  br i1 %cmp2, label %for.body, label %for.end, !dbg !518

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !519
  %idxprom3 = sext i32 %5 to i64, !dbg !521
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !521
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !521
  call void @printIntLine(i32 %6), !dbg !522
  br label %for.inc, !dbg !523

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !524
  %inc = add nsw i32 %7, 1, !dbg !524
  store i32 %inc, i32* %i, align 4, !dbg !524
  br label %for.cond, !dbg !525, !llvm.loop !526

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !528

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !529
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !531

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !533 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !534, metadata !DIExpression()), !dbg !535
  store i32 -1, i32* %data, align 4, !dbg !536
  store i32 7, i32* %data, align 4, !dbg !537
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !538
  %0 = load i32, i32* %data, align 4, !dbg !539
  call void @goodG2BSink(i32 %0), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_good() #0 !dbg !542 {
entry:
  call void @goodB2G1(), !dbg !543
  call void @goodB2G2(), !dbg !544
  call void @goodG2B(), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !547 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !552
  %0 = load i8*, i8** %line.addr, align 8, !dbg !553
  %cmp = icmp ne i8* %0, null, !dbg !555
  br i1 %cmp, label %if.then, label %if.end, !dbg !556

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !557
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !559
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !561
  ret void, !dbg !562
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !563 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load i8*, i8** %line.addr, align 8, !dbg !566
  %cmp = icmp ne i8* %0, null, !dbg !568
  br i1 %cmp, label %if.then, label %if.end, !dbg !569

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !570
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !572
  br label %if.end, !dbg !573

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !575 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i32*, i32** %line.addr, align 8, !dbg !583
  %cmp = icmp ne i32* %0, null, !dbg !585
  br i1 %cmp, label %if.then, label %if.end, !dbg !586

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !587
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !589
  br label %if.end, !dbg !590

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !591
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !592 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !596
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
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !643
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !644
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !646 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !651
  %conv = sext i8 %0 to i32, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !654 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !657, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !659, metadata !DIExpression()), !dbg !663
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !664
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !665
  store i32 %0, i32* %arrayidx, align 4, !dbg !666
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !667
  store i32 0, i32* %arrayidx1, align 4, !dbg !668
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !669
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !670
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !672 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !677
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !680 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !683, metadata !DIExpression()), !dbg !684
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !685
  %conv = zext i8 %0 to i32, !dbg !685
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !686
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !688 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !694
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !697 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !709
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !710
  %1 = load i32, i32* %intOne, align 4, !dbg !710
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !711
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !712
  %3 = load i32, i32* %intTwo, align 4, !dbg !712
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !715 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %i, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %i, align 8, !dbg !725
  br label %for.cond, !dbg !727

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !728
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !730
  %cmp = icmp ult i64 %0, %1, !dbg !731
  br i1 %cmp, label %for.body, label %for.end, !dbg !732

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !733
  %3 = load i64, i64* %i, align 8, !dbg !735
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !733
  %4 = load i8, i8* %arrayidx, align 1, !dbg !733
  %conv = zext i8 %4 to i32, !dbg !733
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !736
  br label %for.inc, !dbg !737

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !738
  %inc = add i64 %5, 1, !dbg !738
  store i64 %inc, i64* %i, align 8, !dbg !738
  br label %for.cond, !dbg !739, !llvm.loop !740

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !742
  ret void, !dbg !743
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !744 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !747, metadata !DIExpression()), !dbg !748
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !749, metadata !DIExpression()), !dbg !750
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !751, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !753, metadata !DIExpression()), !dbg !754
  store i64 0, i64* %numWritten, align 8, !dbg !754
  br label %while.cond, !dbg !755

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !756
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !757
  %cmp = icmp ult i64 %0, %1, !dbg !758
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !759

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !760
  %2 = load i16*, i16** %call, align 8, !dbg !760
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !760
  %4 = load i64, i64* %numWritten, align 8, !dbg !760
  %mul = mul i64 2, %4, !dbg !760
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !760
  %5 = load i8, i8* %arrayidx, align 1, !dbg !760
  %conv = sext i8 %5 to i32, !dbg !760
  %idxprom = sext i32 %conv to i64, !dbg !760
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !760
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !760
  %conv2 = zext i16 %6 to i32, !dbg !760
  %and = and i32 %conv2, 4096, !dbg !760
  %tobool = icmp ne i32 %and, 0, !dbg !760
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !761

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !762
  %7 = load i16*, i16** %call3, align 8, !dbg !762
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !762
  %9 = load i64, i64* %numWritten, align 8, !dbg !762
  %mul4 = mul i64 2, %9, !dbg !762
  %add = add i64 %mul4, 1, !dbg !762
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !762
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !762
  %conv6 = sext i8 %10 to i32, !dbg !762
  %idxprom7 = sext i32 %conv6 to i64, !dbg !762
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !762
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !762
  %conv9 = zext i16 %11 to i32, !dbg !762
  %and10 = and i32 %conv9, 4096, !dbg !762
  %tobool11 = icmp ne i32 %and10, 0, !dbg !761
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !763
  br i1 %12, label %while.body, label %while.end, !dbg !755

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !764, metadata !DIExpression()), !dbg !766
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !767
  %14 = load i64, i64* %numWritten, align 8, !dbg !768
  %mul12 = mul i64 2, %14, !dbg !769
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !767
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !770
  %15 = load i32, i32* %byte, align 4, !dbg !771
  %conv15 = trunc i32 %15 to i8, !dbg !772
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !773
  %17 = load i64, i64* %numWritten, align 8, !dbg !774
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !773
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !775
  %18 = load i64, i64* %numWritten, align 8, !dbg !776
  %inc = add i64 %18, 1, !dbg !776
  store i64 %inc, i64* %numWritten, align 8, !dbg !776
  br label %while.cond, !dbg !755, !llvm.loop !777

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !779
  ret i64 %19, !dbg !780
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !781 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !784, metadata !DIExpression()), !dbg !785
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !786, metadata !DIExpression()), !dbg !787
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !790, metadata !DIExpression()), !dbg !791
  store i64 0, i64* %numWritten, align 8, !dbg !791
  br label %while.cond, !dbg !792

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !793
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !794
  %cmp = icmp ult i64 %0, %1, !dbg !795
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !796

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !797
  %3 = load i64, i64* %numWritten, align 8, !dbg !798
  %mul = mul i64 2, %3, !dbg !799
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !797
  %4 = load i32, i32* %arrayidx, align 4, !dbg !797
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !800
  %tobool = icmp ne i32 %call, 0, !dbg !800
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !801

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !802
  %6 = load i64, i64* %numWritten, align 8, !dbg !803
  %mul1 = mul i64 2, %6, !dbg !804
  %add = add i64 %mul1, 1, !dbg !805
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !802
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !802
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !806
  %tobool4 = icmp ne i32 %call3, 0, !dbg !801
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !807
  br i1 %8, label %while.body, label %while.end, !dbg !792

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !808, metadata !DIExpression()), !dbg !810
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !811
  %10 = load i64, i64* %numWritten, align 8, !dbg !812
  %mul5 = mul i64 2, %10, !dbg !813
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !811
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !814
  %11 = load i32, i32* %byte, align 4, !dbg !815
  %conv = trunc i32 %11 to i8, !dbg !816
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !817
  %13 = load i64, i64* %numWritten, align 8, !dbg !818
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !817
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !819
  %14 = load i64, i64* %numWritten, align 8, !dbg !820
  %inc = add i64 %14, 1, !dbg !820
  store i64 %inc, i64* %numWritten, align 8, !dbg !820
  br label %while.cond, !dbg !792, !llvm.loop !821

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !823
  ret i64 %15, !dbg !824
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !825 {
entry:
  ret i32 1, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !829 {
entry:
  ret i32 0, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !831 {
entry:
  %call = call i32 @rand() #7, !dbg !832
  %rem = srem i32 %call, 2, !dbg !833
  ret i32 %rem, !dbg !834
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !849 {
entry:
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !851 {
entry:
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !857 {
entry:
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !859 {
entry:
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !861 {
entry:
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !863 {
entry:
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !865 {
entry:
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !867 {
entry:
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !869 {
entry:
  ret void, !dbg !870
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

!llvm.dbg.cu = !{!2, !71}
!llvm.ident = !{!109, !109}
!llvm.module.flags = !{!110, !111, !112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 46, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_534/source_code")
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
!61 = !{!0, !62, !65, !67}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 144, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 145, type: !64, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 146, type: !64, isLocal: false, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !71, file: !72, line: 174, type: !64, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !89, globals: !92, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_534/source_code")
!73 = !{!74}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!77 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!89 = !{!90, !64, !55, !91}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !{!69, !93, !95, !97, !99, !101, !103, !105}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !71, file: !72, line: 175, type: !64, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !71, file: !72, line: 176, type: !64, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "globalTrue", scope: !71, file: !72, line: 181, type: !64, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "globalFalse", scope: !71, file: !72, line: 182, type: !64, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "globalFive", scope: !71, file: !72, line: 183, type: !64, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "globalArgc", scope: !71, file: !72, line: 214, type: !64, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "globalArgv", scope: !71, file: !72, line: 215, type: !107, isLocal: false, isDefinition: true)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!109 = !{!"clang version 12.0.0"}
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 48, type: !114, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !64}
!116 = !{}
!117 = !DILocalVariable(name: "data", arg: 1, scope: !113, file: !3, line: 48, type: !64)
!118 = !DILocation(line: 48, column: 18, scope: !113)
!119 = !DILocation(line: 50, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !3, line: 50, column: 8)
!121 = !DILocation(line: 50, column: 8, scope: !113)
!122 = !DILocalVariable(name: "i", scope: !123, file: !3, line: 53, type: !64)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 52, column: 9)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 51, column: 5)
!125 = !DILocation(line: 53, column: 17, scope: !123)
!126 = !DILocalVariable(name: "buffer", scope: !123, file: !3, line: 54, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 10)
!130 = !DILocation(line: 54, column: 17, scope: !123)
!131 = !DILocation(line: 57, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !123, file: !3, line: 57, column: 17)
!133 = !DILocation(line: 57, column: 22, scope: !132)
!134 = !DILocation(line: 57, column: 17, scope: !123)
!135 = !DILocation(line: 59, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 58, column: 13)
!137 = !DILocation(line: 59, column: 17, scope: !136)
!138 = !DILocation(line: 59, column: 30, scope: !136)
!139 = !DILocation(line: 61, column: 23, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !3, line: 61, column: 17)
!141 = !DILocation(line: 61, column: 21, scope: !140)
!142 = !DILocation(line: 61, column: 28, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !3, line: 61, column: 17)
!144 = !DILocation(line: 61, column: 30, scope: !143)
!145 = !DILocation(line: 61, column: 17, scope: !140)
!146 = !DILocation(line: 63, column: 41, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 62, column: 17)
!148 = !DILocation(line: 63, column: 34, scope: !147)
!149 = !DILocation(line: 63, column: 21, scope: !147)
!150 = !DILocation(line: 64, column: 17, scope: !147)
!151 = !DILocation(line: 61, column: 37, scope: !143)
!152 = !DILocation(line: 61, column: 17, scope: !143)
!153 = distinct !{!153, !145, !154, !155}
!154 = !DILocation(line: 64, column: 17, scope: !140)
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 65, column: 13, scope: !136)
!157 = !DILocation(line: 68, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !132, file: !3, line: 67, column: 13)
!159 = !DILocation(line: 71, column: 5, scope: !124)
!160 = !DILocation(line: 72, column: 1, scope: !113)
!161 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_bad", scope: !3, file: !3, line: 74, type: !162, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!162 = !DISubroutineType(types: !163)
!163 = !{null}
!164 = !DILocalVariable(name: "data", scope: !161, file: !3, line: 76, type: !64)
!165 = !DILocation(line: 76, column: 9, scope: !161)
!166 = !DILocation(line: 78, column: 10, scope: !161)
!167 = !DILocalVariable(name: "recvResult", scope: !168, file: !3, line: 84, type: !64)
!168 = distinct !DILexicalBlock(scope: !161, file: !3, line: 79, column: 5)
!169 = !DILocation(line: 84, column: 13, scope: !168)
!170 = !DILocalVariable(name: "service", scope: !168, file: !3, line: 85, type: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !172)
!172 = !{!173, !174, !180, !187}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !171, file: !19, line: 240, baseType: !53, size: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !171, file: !19, line: 241, baseType: !175, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !179, line: 40, baseType: !55)
!179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !171, file: !19, line: 242, baseType: !181, size: 32, offset: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !181, file: !19, line: 33, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 26, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !179, line: 42, baseType: !7)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !171, file: !19, line: 245, baseType: !188, size: 64, offset: 64)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DILocation(line: 85, column: 28, scope: !168)
!192 = !DILocalVariable(name: "connectSocket", scope: !168, file: !3, line: 86, type: !64)
!193 = !DILocation(line: 86, column: 16, scope: !168)
!194 = !DILocalVariable(name: "inputBuffer", scope: !168, file: !3, line: 87, type: !57)
!195 = !DILocation(line: 87, column: 14, scope: !168)
!196 = !DILocation(line: 88, column: 9, scope: !168)
!197 = !DILocation(line: 98, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !168, file: !3, line: 89, column: 9)
!199 = !DILocation(line: 98, column: 27, scope: !198)
!200 = !DILocation(line: 99, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 99, column: 17)
!202 = !DILocation(line: 99, column: 31, scope: !201)
!203 = !DILocation(line: 99, column: 17, scope: !198)
!204 = !DILocation(line: 101, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 100, column: 13)
!206 = !DILocation(line: 103, column: 13, scope: !198)
!207 = !DILocation(line: 104, column: 21, scope: !198)
!208 = !DILocation(line: 104, column: 32, scope: !198)
!209 = !DILocation(line: 105, column: 39, scope: !198)
!210 = !DILocation(line: 105, column: 21, scope: !198)
!211 = !DILocation(line: 105, column: 30, scope: !198)
!212 = !DILocation(line: 105, column: 37, scope: !198)
!213 = !DILocation(line: 106, column: 32, scope: !198)
!214 = !DILocation(line: 106, column: 21, scope: !198)
!215 = !DILocation(line: 106, column: 30, scope: !198)
!216 = !DILocation(line: 107, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !198, file: !3, line: 107, column: 17)
!218 = !DILocation(line: 107, column: 40, scope: !217)
!219 = !DILocation(line: 107, column: 17, scope: !217)
!220 = !DILocation(line: 107, column: 85, scope: !217)
!221 = !DILocation(line: 107, column: 17, scope: !198)
!222 = !DILocation(line: 109, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 108, column: 13)
!224 = !DILocation(line: 113, column: 31, scope: !198)
!225 = !DILocation(line: 113, column: 46, scope: !198)
!226 = !DILocation(line: 113, column: 26, scope: !198)
!227 = !DILocation(line: 113, column: 24, scope: !198)
!228 = !DILocation(line: 114, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !198, file: !3, line: 114, column: 17)
!230 = !DILocation(line: 114, column: 28, scope: !229)
!231 = !DILocation(line: 114, column: 44, scope: !229)
!232 = !DILocation(line: 114, column: 47, scope: !229)
!233 = !DILocation(line: 114, column: 58, scope: !229)
!234 = !DILocation(line: 114, column: 17, scope: !198)
!235 = !DILocation(line: 116, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !3, line: 115, column: 13)
!237 = !DILocation(line: 119, column: 25, scope: !198)
!238 = !DILocation(line: 119, column: 13, scope: !198)
!239 = !DILocation(line: 119, column: 37, scope: !198)
!240 = !DILocation(line: 121, column: 25, scope: !198)
!241 = !DILocation(line: 121, column: 20, scope: !198)
!242 = !DILocation(line: 121, column: 18, scope: !198)
!243 = !DILocation(line: 122, column: 9, scope: !198)
!244 = !DILocation(line: 124, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !168, file: !3, line: 124, column: 13)
!246 = !DILocation(line: 124, column: 27, scope: !245)
!247 = !DILocation(line: 124, column: 13, scope: !168)
!248 = !DILocation(line: 126, column: 26, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 125, column: 9)
!250 = !DILocation(line: 126, column: 13, scope: !249)
!251 = !DILocation(line: 127, column: 9, scope: !249)
!252 = !DILocation(line: 135, column: 15, scope: !161)
!253 = !DILocation(line: 136, column: 13, scope: !161)
!254 = !DILocation(line: 136, column: 5, scope: !161)
!255 = !DILocation(line: 137, column: 1, scope: !161)
!256 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 149, type: !114, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!257 = !DILocalVariable(name: "data", arg: 1, scope: !256, file: !3, line: 149, type: !64)
!258 = !DILocation(line: 149, column: 23, scope: !256)
!259 = !DILocation(line: 151, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 151, column: 8)
!261 = !DILocation(line: 151, column: 8, scope: !256)
!262 = !DILocation(line: 154, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 152, column: 5)
!264 = !DILocation(line: 155, column: 5, scope: !263)
!265 = !DILocalVariable(name: "i", scope: !266, file: !3, line: 159, type: !64)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 158, column: 9)
!267 = distinct !DILexicalBlock(scope: !260, file: !3, line: 157, column: 5)
!268 = !DILocation(line: 159, column: 17, scope: !266)
!269 = !DILocalVariable(name: "buffer", scope: !266, file: !3, line: 160, type: !127)
!270 = !DILocation(line: 160, column: 17, scope: !266)
!271 = !DILocation(line: 162, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !3, line: 162, column: 17)
!273 = !DILocation(line: 162, column: 22, scope: !272)
!274 = !DILocation(line: 162, column: 27, scope: !272)
!275 = !DILocation(line: 162, column: 30, scope: !272)
!276 = !DILocation(line: 162, column: 35, scope: !272)
!277 = !DILocation(line: 162, column: 17, scope: !266)
!278 = !DILocation(line: 164, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 163, column: 13)
!280 = !DILocation(line: 164, column: 17, scope: !279)
!281 = !DILocation(line: 164, column: 30, scope: !279)
!282 = !DILocation(line: 166, column: 23, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 166, column: 17)
!284 = !DILocation(line: 166, column: 21, scope: !283)
!285 = !DILocation(line: 166, column: 28, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 166, column: 17)
!287 = !DILocation(line: 166, column: 30, scope: !286)
!288 = !DILocation(line: 166, column: 17, scope: !283)
!289 = !DILocation(line: 168, column: 41, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 167, column: 17)
!291 = !DILocation(line: 168, column: 34, scope: !290)
!292 = !DILocation(line: 168, column: 21, scope: !290)
!293 = !DILocation(line: 169, column: 17, scope: !290)
!294 = !DILocation(line: 166, column: 37, scope: !286)
!295 = !DILocation(line: 166, column: 17, scope: !286)
!296 = distinct !{!296, !288, !297, !155}
!297 = !DILocation(line: 169, column: 17, scope: !283)
!298 = !DILocation(line: 170, column: 13, scope: !279)
!299 = !DILocation(line: 173, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !272, file: !3, line: 172, column: 13)
!301 = !DILocation(line: 177, column: 1, scope: !256)
!302 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 179, type: !162, scopeLine: 180, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!303 = !DILocalVariable(name: "data", scope: !302, file: !3, line: 181, type: !64)
!304 = !DILocation(line: 181, column: 9, scope: !302)
!305 = !DILocation(line: 183, column: 10, scope: !302)
!306 = !DILocalVariable(name: "recvResult", scope: !307, file: !3, line: 189, type: !64)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 184, column: 5)
!308 = !DILocation(line: 189, column: 13, scope: !307)
!309 = !DILocalVariable(name: "service", scope: !307, file: !3, line: 190, type: !171)
!310 = !DILocation(line: 190, column: 28, scope: !307)
!311 = !DILocalVariable(name: "connectSocket", scope: !307, file: !3, line: 191, type: !64)
!312 = !DILocation(line: 191, column: 16, scope: !307)
!313 = !DILocalVariable(name: "inputBuffer", scope: !307, file: !3, line: 192, type: !57)
!314 = !DILocation(line: 192, column: 14, scope: !307)
!315 = !DILocation(line: 193, column: 9, scope: !307)
!316 = !DILocation(line: 203, column: 29, scope: !317)
!317 = distinct !DILexicalBlock(scope: !307, file: !3, line: 194, column: 9)
!318 = !DILocation(line: 203, column: 27, scope: !317)
!319 = !DILocation(line: 204, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !3, line: 204, column: 17)
!321 = !DILocation(line: 204, column: 31, scope: !320)
!322 = !DILocation(line: 204, column: 17, scope: !317)
!323 = !DILocation(line: 206, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 205, column: 13)
!325 = !DILocation(line: 208, column: 13, scope: !317)
!326 = !DILocation(line: 209, column: 21, scope: !317)
!327 = !DILocation(line: 209, column: 32, scope: !317)
!328 = !DILocation(line: 210, column: 39, scope: !317)
!329 = !DILocation(line: 210, column: 21, scope: !317)
!330 = !DILocation(line: 210, column: 30, scope: !317)
!331 = !DILocation(line: 210, column: 37, scope: !317)
!332 = !DILocation(line: 211, column: 32, scope: !317)
!333 = !DILocation(line: 211, column: 21, scope: !317)
!334 = !DILocation(line: 211, column: 30, scope: !317)
!335 = !DILocation(line: 212, column: 25, scope: !336)
!336 = distinct !DILexicalBlock(scope: !317, file: !3, line: 212, column: 17)
!337 = !DILocation(line: 212, column: 40, scope: !336)
!338 = !DILocation(line: 212, column: 17, scope: !336)
!339 = !DILocation(line: 212, column: 85, scope: !336)
!340 = !DILocation(line: 212, column: 17, scope: !317)
!341 = !DILocation(line: 214, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !3, line: 213, column: 13)
!343 = !DILocation(line: 218, column: 31, scope: !317)
!344 = !DILocation(line: 218, column: 46, scope: !317)
!345 = !DILocation(line: 218, column: 26, scope: !317)
!346 = !DILocation(line: 218, column: 24, scope: !317)
!347 = !DILocation(line: 219, column: 17, scope: !348)
!348 = distinct !DILexicalBlock(scope: !317, file: !3, line: 219, column: 17)
!349 = !DILocation(line: 219, column: 28, scope: !348)
!350 = !DILocation(line: 219, column: 44, scope: !348)
!351 = !DILocation(line: 219, column: 47, scope: !348)
!352 = !DILocation(line: 219, column: 58, scope: !348)
!353 = !DILocation(line: 219, column: 17, scope: !317)
!354 = !DILocation(line: 221, column: 17, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !3, line: 220, column: 13)
!356 = !DILocation(line: 224, column: 25, scope: !317)
!357 = !DILocation(line: 224, column: 13, scope: !317)
!358 = !DILocation(line: 224, column: 37, scope: !317)
!359 = !DILocation(line: 226, column: 25, scope: !317)
!360 = !DILocation(line: 226, column: 20, scope: !317)
!361 = !DILocation(line: 226, column: 18, scope: !317)
!362 = !DILocation(line: 227, column: 9, scope: !317)
!363 = !DILocation(line: 229, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !307, file: !3, line: 229, column: 13)
!365 = !DILocation(line: 229, column: 27, scope: !364)
!366 = !DILocation(line: 229, column: 13, scope: !307)
!367 = !DILocation(line: 231, column: 26, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 230, column: 9)
!369 = !DILocation(line: 231, column: 13, scope: !368)
!370 = !DILocation(line: 232, column: 9, scope: !368)
!371 = !DILocation(line: 240, column: 20, scope: !302)
!372 = !DILocation(line: 241, column: 18, scope: !302)
!373 = !DILocation(line: 241, column: 5, scope: !302)
!374 = !DILocation(line: 242, column: 1, scope: !302)
!375 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 245, type: !114, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!376 = !DILocalVariable(name: "data", arg: 1, scope: !375, file: !3, line: 245, type: !64)
!377 = !DILocation(line: 245, column: 23, scope: !375)
!378 = !DILocation(line: 247, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 247, column: 8)
!380 = !DILocation(line: 247, column: 8, scope: !375)
!381 = !DILocalVariable(name: "i", scope: !382, file: !3, line: 250, type: !64)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 249, column: 9)
!383 = distinct !DILexicalBlock(scope: !379, file: !3, line: 248, column: 5)
!384 = !DILocation(line: 250, column: 17, scope: !382)
!385 = !DILocalVariable(name: "buffer", scope: !382, file: !3, line: 251, type: !127)
!386 = !DILocation(line: 251, column: 17, scope: !382)
!387 = !DILocation(line: 253, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 253, column: 17)
!389 = !DILocation(line: 253, column: 22, scope: !388)
!390 = !DILocation(line: 253, column: 27, scope: !388)
!391 = !DILocation(line: 253, column: 30, scope: !388)
!392 = !DILocation(line: 253, column: 35, scope: !388)
!393 = !DILocation(line: 253, column: 17, scope: !382)
!394 = !DILocation(line: 255, column: 24, scope: !395)
!395 = distinct !DILexicalBlock(scope: !388, file: !3, line: 254, column: 13)
!396 = !DILocation(line: 255, column: 17, scope: !395)
!397 = !DILocation(line: 255, column: 30, scope: !395)
!398 = !DILocation(line: 257, column: 23, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 257, column: 17)
!400 = !DILocation(line: 257, column: 21, scope: !399)
!401 = !DILocation(line: 257, column: 28, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 257, column: 17)
!403 = !DILocation(line: 257, column: 30, scope: !402)
!404 = !DILocation(line: 257, column: 17, scope: !399)
!405 = !DILocation(line: 259, column: 41, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !3, line: 258, column: 17)
!407 = !DILocation(line: 259, column: 34, scope: !406)
!408 = !DILocation(line: 259, column: 21, scope: !406)
!409 = !DILocation(line: 260, column: 17, scope: !406)
!410 = !DILocation(line: 257, column: 37, scope: !402)
!411 = !DILocation(line: 257, column: 17, scope: !402)
!412 = distinct !{!412, !404, !413, !155}
!413 = !DILocation(line: 260, column: 17, scope: !399)
!414 = !DILocation(line: 261, column: 13, scope: !395)
!415 = !DILocation(line: 264, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !388, file: !3, line: 263, column: 13)
!417 = !DILocation(line: 267, column: 5, scope: !383)
!418 = !DILocation(line: 268, column: 1, scope: !375)
!419 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 270, type: !162, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!420 = !DILocalVariable(name: "data", scope: !419, file: !3, line: 272, type: !64)
!421 = !DILocation(line: 272, column: 9, scope: !419)
!422 = !DILocation(line: 274, column: 10, scope: !419)
!423 = !DILocalVariable(name: "recvResult", scope: !424, file: !3, line: 280, type: !64)
!424 = distinct !DILexicalBlock(scope: !419, file: !3, line: 275, column: 5)
!425 = !DILocation(line: 280, column: 13, scope: !424)
!426 = !DILocalVariable(name: "service", scope: !424, file: !3, line: 281, type: !171)
!427 = !DILocation(line: 281, column: 28, scope: !424)
!428 = !DILocalVariable(name: "connectSocket", scope: !424, file: !3, line: 282, type: !64)
!429 = !DILocation(line: 282, column: 16, scope: !424)
!430 = !DILocalVariable(name: "inputBuffer", scope: !424, file: !3, line: 283, type: !57)
!431 = !DILocation(line: 283, column: 14, scope: !424)
!432 = !DILocation(line: 284, column: 9, scope: !424)
!433 = !DILocation(line: 294, column: 29, scope: !434)
!434 = distinct !DILexicalBlock(scope: !424, file: !3, line: 285, column: 9)
!435 = !DILocation(line: 294, column: 27, scope: !434)
!436 = !DILocation(line: 295, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 295, column: 17)
!438 = !DILocation(line: 295, column: 31, scope: !437)
!439 = !DILocation(line: 295, column: 17, scope: !434)
!440 = !DILocation(line: 297, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 296, column: 13)
!442 = !DILocation(line: 299, column: 13, scope: !434)
!443 = !DILocation(line: 300, column: 21, scope: !434)
!444 = !DILocation(line: 300, column: 32, scope: !434)
!445 = !DILocation(line: 301, column: 39, scope: !434)
!446 = !DILocation(line: 301, column: 21, scope: !434)
!447 = !DILocation(line: 301, column: 30, scope: !434)
!448 = !DILocation(line: 301, column: 37, scope: !434)
!449 = !DILocation(line: 302, column: 32, scope: !434)
!450 = !DILocation(line: 302, column: 21, scope: !434)
!451 = !DILocation(line: 302, column: 30, scope: !434)
!452 = !DILocation(line: 303, column: 25, scope: !453)
!453 = distinct !DILexicalBlock(scope: !434, file: !3, line: 303, column: 17)
!454 = !DILocation(line: 303, column: 40, scope: !453)
!455 = !DILocation(line: 303, column: 17, scope: !453)
!456 = !DILocation(line: 303, column: 85, scope: !453)
!457 = !DILocation(line: 303, column: 17, scope: !434)
!458 = !DILocation(line: 305, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !453, file: !3, line: 304, column: 13)
!460 = !DILocation(line: 309, column: 31, scope: !434)
!461 = !DILocation(line: 309, column: 46, scope: !434)
!462 = !DILocation(line: 309, column: 26, scope: !434)
!463 = !DILocation(line: 309, column: 24, scope: !434)
!464 = !DILocation(line: 310, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !434, file: !3, line: 310, column: 17)
!466 = !DILocation(line: 310, column: 28, scope: !465)
!467 = !DILocation(line: 310, column: 44, scope: !465)
!468 = !DILocation(line: 310, column: 47, scope: !465)
!469 = !DILocation(line: 310, column: 58, scope: !465)
!470 = !DILocation(line: 310, column: 17, scope: !434)
!471 = !DILocation(line: 312, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !3, line: 311, column: 13)
!473 = !DILocation(line: 315, column: 25, scope: !434)
!474 = !DILocation(line: 315, column: 13, scope: !434)
!475 = !DILocation(line: 315, column: 37, scope: !434)
!476 = !DILocation(line: 317, column: 25, scope: !434)
!477 = !DILocation(line: 317, column: 20, scope: !434)
!478 = !DILocation(line: 317, column: 18, scope: !434)
!479 = !DILocation(line: 318, column: 9, scope: !434)
!480 = !DILocation(line: 320, column: 13, scope: !481)
!481 = distinct !DILexicalBlock(scope: !424, file: !3, line: 320, column: 13)
!482 = !DILocation(line: 320, column: 27, scope: !481)
!483 = !DILocation(line: 320, column: 13, scope: !424)
!484 = !DILocation(line: 322, column: 26, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 321, column: 9)
!486 = !DILocation(line: 322, column: 13, scope: !485)
!487 = !DILocation(line: 323, column: 9, scope: !485)
!488 = !DILocation(line: 331, column: 20, scope: !419)
!489 = !DILocation(line: 332, column: 18, scope: !419)
!490 = !DILocation(line: 332, column: 5, scope: !419)
!491 = !DILocation(line: 333, column: 1, scope: !419)
!492 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 336, type: !114, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!493 = !DILocalVariable(name: "data", arg: 1, scope: !492, file: !3, line: 336, type: !64)
!494 = !DILocation(line: 336, column: 22, scope: !492)
!495 = !DILocation(line: 338, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 338, column: 8)
!497 = !DILocation(line: 338, column: 8, scope: !492)
!498 = !DILocalVariable(name: "i", scope: !499, file: !3, line: 341, type: !64)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 340, column: 9)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 339, column: 5)
!501 = !DILocation(line: 341, column: 17, scope: !499)
!502 = !DILocalVariable(name: "buffer", scope: !499, file: !3, line: 342, type: !127)
!503 = !DILocation(line: 342, column: 17, scope: !499)
!504 = !DILocation(line: 345, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !499, file: !3, line: 345, column: 17)
!506 = !DILocation(line: 345, column: 22, scope: !505)
!507 = !DILocation(line: 345, column: 17, scope: !499)
!508 = !DILocation(line: 347, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 346, column: 13)
!510 = !DILocation(line: 347, column: 17, scope: !509)
!511 = !DILocation(line: 347, column: 30, scope: !509)
!512 = !DILocation(line: 349, column: 23, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 349, column: 17)
!514 = !DILocation(line: 349, column: 21, scope: !513)
!515 = !DILocation(line: 349, column: 28, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 349, column: 17)
!517 = !DILocation(line: 349, column: 30, scope: !516)
!518 = !DILocation(line: 349, column: 17, scope: !513)
!519 = !DILocation(line: 351, column: 41, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !3, line: 350, column: 17)
!521 = !DILocation(line: 351, column: 34, scope: !520)
!522 = !DILocation(line: 351, column: 21, scope: !520)
!523 = !DILocation(line: 352, column: 17, scope: !520)
!524 = !DILocation(line: 349, column: 37, scope: !516)
!525 = !DILocation(line: 349, column: 17, scope: !516)
!526 = distinct !{!526, !518, !527, !155}
!527 = !DILocation(line: 352, column: 17, scope: !513)
!528 = !DILocation(line: 353, column: 13, scope: !509)
!529 = !DILocation(line: 356, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !505, file: !3, line: 355, column: 13)
!531 = !DILocation(line: 359, column: 5, scope: !500)
!532 = !DILocation(line: 360, column: 1, scope: !492)
!533 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 362, type: !162, scopeLine: 363, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!534 = !DILocalVariable(name: "data", scope: !533, file: !3, line: 364, type: !64)
!535 = !DILocation(line: 364, column: 9, scope: !533)
!536 = !DILocation(line: 366, column: 10, scope: !533)
!537 = !DILocation(line: 369, column: 10, scope: !533)
!538 = !DILocation(line: 370, column: 19, scope: !533)
!539 = !DILocation(line: 371, column: 17, scope: !533)
!540 = !DILocation(line: 371, column: 5, scope: !533)
!541 = !DILocation(line: 372, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_good", scope: !3, file: !3, line: 374, type: !162, scopeLine: 375, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!543 = !DILocation(line: 376, column: 5, scope: !542)
!544 = !DILocation(line: 377, column: 5, scope: !542)
!545 = !DILocation(line: 378, column: 5, scope: !542)
!546 = !DILocation(line: 379, column: 1, scope: !542)
!547 = distinct !DISubprogram(name: "printLine", scope: !72, file: !72, line: 11, type: !548, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !108}
!550 = !DILocalVariable(name: "line", arg: 1, scope: !547, file: !72, line: 11, type: !108)
!551 = !DILocation(line: 11, column: 25, scope: !547)
!552 = !DILocation(line: 13, column: 1, scope: !547)
!553 = !DILocation(line: 14, column: 8, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !72, line: 14, column: 8)
!555 = !DILocation(line: 14, column: 13, scope: !554)
!556 = !DILocation(line: 14, column: 8, scope: !547)
!557 = !DILocation(line: 16, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !72, line: 15, column: 5)
!559 = !DILocation(line: 16, column: 9, scope: !558)
!560 = !DILocation(line: 17, column: 5, scope: !558)
!561 = !DILocation(line: 18, column: 5, scope: !547)
!562 = !DILocation(line: 19, column: 1, scope: !547)
!563 = distinct !DISubprogram(name: "printSinkLine", scope: !72, file: !72, line: 20, type: !548, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!564 = !DILocalVariable(name: "line", arg: 1, scope: !563, file: !72, line: 20, type: !108)
!565 = !DILocation(line: 20, column: 29, scope: !563)
!566 = !DILocation(line: 22, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !72, line: 22, column: 8)
!568 = !DILocation(line: 22, column: 13, scope: !567)
!569 = !DILocation(line: 22, column: 8, scope: !563)
!570 = !DILocation(line: 24, column: 24, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !72, line: 23, column: 5)
!572 = !DILocation(line: 24, column: 9, scope: !571)
!573 = !DILocation(line: 25, column: 5, scope: !571)
!574 = !DILocation(line: 26, column: 1, scope: !563)
!575 = distinct !DISubprogram(name: "printWLine", scope: !72, file: !72, line: 27, type: !576, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !580, line: 74, baseType: !64)
!580 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!581 = !DILocalVariable(name: "line", arg: 1, scope: !575, file: !72, line: 27, type: !578)
!582 = !DILocation(line: 27, column: 29, scope: !575)
!583 = !DILocation(line: 29, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !575, file: !72, line: 29, column: 8)
!585 = !DILocation(line: 29, column: 13, scope: !584)
!586 = !DILocation(line: 29, column: 8, scope: !575)
!587 = !DILocation(line: 31, column: 27, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !72, line: 30, column: 5)
!589 = !DILocation(line: 31, column: 9, scope: !588)
!590 = !DILocation(line: 32, column: 5, scope: !588)
!591 = !DILocation(line: 33, column: 1, scope: !575)
!592 = distinct !DISubprogram(name: "printIntLine", scope: !72, file: !72, line: 35, type: !114, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!593 = !DILocalVariable(name: "intNumber", arg: 1, scope: !592, file: !72, line: 35, type: !64)
!594 = !DILocation(line: 35, column: 24, scope: !592)
!595 = !DILocation(line: 37, column: 20, scope: !592)
!596 = !DILocation(line: 37, column: 5, scope: !592)
!597 = !DILocation(line: 38, column: 1, scope: !592)
!598 = distinct !DISubprogram(name: "printShortLine", scope: !72, file: !72, line: 40, type: !599, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!602 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !598, file: !72, line: 40, type: !601)
!603 = !DILocation(line: 40, column: 28, scope: !598)
!604 = !DILocation(line: 42, column: 21, scope: !598)
!605 = !DILocation(line: 42, column: 5, scope: !598)
!606 = !DILocation(line: 43, column: 1, scope: !598)
!607 = distinct !DISubprogram(name: "printFloatLine", scope: !72, file: !72, line: 45, type: !608, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!611 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !607, file: !72, line: 45, type: !610)
!612 = !DILocation(line: 45, column: 28, scope: !607)
!613 = !DILocation(line: 47, column: 20, scope: !607)
!614 = !DILocation(line: 47, column: 5, scope: !607)
!615 = !DILocation(line: 48, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "printLongLine", scope: !72, file: !72, line: 50, type: !617, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!620 = !DILocalVariable(name: "longNumber", arg: 1, scope: !616, file: !72, line: 50, type: !619)
!621 = !DILocation(line: 50, column: 26, scope: !616)
!622 = !DILocation(line: 52, column: 21, scope: !616)
!623 = !DILocation(line: 52, column: 5, scope: !616)
!624 = !DILocation(line: 53, column: 1, scope: !616)
!625 = distinct !DISubprogram(name: "printLongLongLine", scope: !72, file: !72, line: 55, type: !626, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !629, line: 27, baseType: !630)
!629 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !179, line: 44, baseType: !619)
!631 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !625, file: !72, line: 55, type: !628)
!632 = !DILocation(line: 55, column: 33, scope: !625)
!633 = !DILocation(line: 57, column: 29, scope: !625)
!634 = !DILocation(line: 57, column: 5, scope: !625)
!635 = !DILocation(line: 58, column: 1, scope: !625)
!636 = distinct !DISubprogram(name: "printSizeTLine", scope: !72, file: !72, line: 60, type: !637, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !580, line: 46, baseType: !640)
!640 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!641 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !636, file: !72, line: 60, type: !639)
!642 = !DILocation(line: 60, column: 29, scope: !636)
!643 = !DILocation(line: 62, column: 21, scope: !636)
!644 = !DILocation(line: 62, column: 5, scope: !636)
!645 = !DILocation(line: 63, column: 1, scope: !636)
!646 = distinct !DISubprogram(name: "printHexCharLine", scope: !72, file: !72, line: 65, type: !647, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !58}
!649 = !DILocalVariable(name: "charHex", arg: 1, scope: !646, file: !72, line: 65, type: !58)
!650 = !DILocation(line: 65, column: 29, scope: !646)
!651 = !DILocation(line: 67, column: 22, scope: !646)
!652 = !DILocation(line: 67, column: 5, scope: !646)
!653 = !DILocation(line: 68, column: 1, scope: !646)
!654 = distinct !DISubprogram(name: "printWcharLine", scope: !72, file: !72, line: 70, type: !655, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !579}
!657 = !DILocalVariable(name: "wideChar", arg: 1, scope: !654, file: !72, line: 70, type: !579)
!658 = !DILocation(line: 70, column: 29, scope: !654)
!659 = !DILocalVariable(name: "s", scope: !654, file: !72, line: 74, type: !660)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 64, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 2)
!663 = !DILocation(line: 74, column: 13, scope: !654)
!664 = !DILocation(line: 75, column: 16, scope: !654)
!665 = !DILocation(line: 75, column: 9, scope: !654)
!666 = !DILocation(line: 75, column: 14, scope: !654)
!667 = !DILocation(line: 76, column: 9, scope: !654)
!668 = !DILocation(line: 76, column: 14, scope: !654)
!669 = !DILocation(line: 77, column: 21, scope: !654)
!670 = !DILocation(line: 77, column: 5, scope: !654)
!671 = !DILocation(line: 78, column: 1, scope: !654)
!672 = distinct !DISubprogram(name: "printUnsignedLine", scope: !72, file: !72, line: 80, type: !673, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !7}
!675 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !672, file: !72, line: 80, type: !7)
!676 = !DILocation(line: 80, column: 33, scope: !672)
!677 = !DILocation(line: 82, column: 20, scope: !672)
!678 = !DILocation(line: 82, column: 5, scope: !672)
!679 = !DILocation(line: 83, column: 1, scope: !672)
!680 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !72, file: !72, line: 85, type: !681, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !91}
!683 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !680, file: !72, line: 85, type: !91)
!684 = !DILocation(line: 85, column: 45, scope: !680)
!685 = !DILocation(line: 87, column: 22, scope: !680)
!686 = !DILocation(line: 87, column: 5, scope: !680)
!687 = !DILocation(line: 88, column: 1, scope: !680)
!688 = distinct !DISubprogram(name: "printDoubleLine", scope: !72, file: !72, line: 90, type: !689, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !691}
!691 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!692 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !688, file: !72, line: 90, type: !691)
!693 = !DILocation(line: 90, column: 29, scope: !688)
!694 = !DILocation(line: 92, column: 20, scope: !688)
!695 = !DILocation(line: 92, column: 5, scope: !688)
!696 = !DILocation(line: 93, column: 1, scope: !688)
!697 = distinct !DISubprogram(name: "printStructLine", scope: !72, file: !72, line: 95, type: !698, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !702, line: 100, baseType: !703)
!702 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_534/source_code")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !702, line: 96, size: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !703, file: !702, line: 98, baseType: !64, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !703, file: !702, line: 99, baseType: !64, size: 32, offset: 32)
!707 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !697, file: !72, line: 95, type: !700)
!708 = !DILocation(line: 95, column: 40, scope: !697)
!709 = !DILocation(line: 97, column: 26, scope: !697)
!710 = !DILocation(line: 97, column: 47, scope: !697)
!711 = !DILocation(line: 97, column: 55, scope: !697)
!712 = !DILocation(line: 97, column: 76, scope: !697)
!713 = !DILocation(line: 97, column: 5, scope: !697)
!714 = !DILocation(line: 98, column: 1, scope: !697)
!715 = distinct !DISubprogram(name: "printBytesLine", scope: !72, file: !72, line: 100, type: !716, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !718, !639}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!719 = !DILocalVariable(name: "bytes", arg: 1, scope: !715, file: !72, line: 100, type: !718)
!720 = !DILocation(line: 100, column: 38, scope: !715)
!721 = !DILocalVariable(name: "numBytes", arg: 2, scope: !715, file: !72, line: 100, type: !639)
!722 = !DILocation(line: 100, column: 52, scope: !715)
!723 = !DILocalVariable(name: "i", scope: !715, file: !72, line: 102, type: !639)
!724 = !DILocation(line: 102, column: 12, scope: !715)
!725 = !DILocation(line: 103, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !715, file: !72, line: 103, column: 5)
!727 = !DILocation(line: 103, column: 10, scope: !726)
!728 = !DILocation(line: 103, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !72, line: 103, column: 5)
!730 = !DILocation(line: 103, column: 21, scope: !729)
!731 = !DILocation(line: 103, column: 19, scope: !729)
!732 = !DILocation(line: 103, column: 5, scope: !726)
!733 = !DILocation(line: 105, column: 24, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !72, line: 104, column: 5)
!735 = !DILocation(line: 105, column: 30, scope: !734)
!736 = !DILocation(line: 105, column: 9, scope: !734)
!737 = !DILocation(line: 106, column: 5, scope: !734)
!738 = !DILocation(line: 103, column: 31, scope: !729)
!739 = !DILocation(line: 103, column: 5, scope: !729)
!740 = distinct !{!740, !732, !741, !155}
!741 = !DILocation(line: 106, column: 5, scope: !726)
!742 = !DILocation(line: 107, column: 5, scope: !715)
!743 = !DILocation(line: 108, column: 1, scope: !715)
!744 = distinct !DISubprogram(name: "decodeHexChars", scope: !72, file: !72, line: 113, type: !745, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!745 = !DISubroutineType(types: !746)
!746 = !{!639, !718, !639, !108}
!747 = !DILocalVariable(name: "bytes", arg: 1, scope: !744, file: !72, line: 113, type: !718)
!748 = !DILocation(line: 113, column: 39, scope: !744)
!749 = !DILocalVariable(name: "numBytes", arg: 2, scope: !744, file: !72, line: 113, type: !639)
!750 = !DILocation(line: 113, column: 53, scope: !744)
!751 = !DILocalVariable(name: "hex", arg: 3, scope: !744, file: !72, line: 113, type: !108)
!752 = !DILocation(line: 113, column: 71, scope: !744)
!753 = !DILocalVariable(name: "numWritten", scope: !744, file: !72, line: 115, type: !639)
!754 = !DILocation(line: 115, column: 12, scope: !744)
!755 = !DILocation(line: 121, column: 5, scope: !744)
!756 = !DILocation(line: 121, column: 12, scope: !744)
!757 = !DILocation(line: 121, column: 25, scope: !744)
!758 = !DILocation(line: 121, column: 23, scope: !744)
!759 = !DILocation(line: 121, column: 34, scope: !744)
!760 = !DILocation(line: 121, column: 37, scope: !744)
!761 = !DILocation(line: 121, column: 67, scope: !744)
!762 = !DILocation(line: 121, column: 70, scope: !744)
!763 = !DILocation(line: 0, scope: !744)
!764 = !DILocalVariable(name: "byte", scope: !765, file: !72, line: 123, type: !64)
!765 = distinct !DILexicalBlock(scope: !744, file: !72, line: 122, column: 5)
!766 = !DILocation(line: 123, column: 13, scope: !765)
!767 = !DILocation(line: 124, column: 17, scope: !765)
!768 = !DILocation(line: 124, column: 25, scope: !765)
!769 = !DILocation(line: 124, column: 23, scope: !765)
!770 = !DILocation(line: 124, column: 9, scope: !765)
!771 = !DILocation(line: 125, column: 45, scope: !765)
!772 = !DILocation(line: 125, column: 29, scope: !765)
!773 = !DILocation(line: 125, column: 9, scope: !765)
!774 = !DILocation(line: 125, column: 15, scope: !765)
!775 = !DILocation(line: 125, column: 27, scope: !765)
!776 = !DILocation(line: 126, column: 9, scope: !765)
!777 = distinct !{!777, !755, !778, !155}
!778 = !DILocation(line: 127, column: 5, scope: !744)
!779 = !DILocation(line: 129, column: 12, scope: !744)
!780 = !DILocation(line: 129, column: 5, scope: !744)
!781 = distinct !DISubprogram(name: "decodeHexWChars", scope: !72, file: !72, line: 135, type: !782, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!782 = !DISubroutineType(types: !783)
!783 = !{!639, !718, !639, !578}
!784 = !DILocalVariable(name: "bytes", arg: 1, scope: !781, file: !72, line: 135, type: !718)
!785 = !DILocation(line: 135, column: 41, scope: !781)
!786 = !DILocalVariable(name: "numBytes", arg: 2, scope: !781, file: !72, line: 135, type: !639)
!787 = !DILocation(line: 135, column: 55, scope: !781)
!788 = !DILocalVariable(name: "hex", arg: 3, scope: !781, file: !72, line: 135, type: !578)
!789 = !DILocation(line: 135, column: 76, scope: !781)
!790 = !DILocalVariable(name: "numWritten", scope: !781, file: !72, line: 137, type: !639)
!791 = !DILocation(line: 137, column: 12, scope: !781)
!792 = !DILocation(line: 143, column: 5, scope: !781)
!793 = !DILocation(line: 143, column: 12, scope: !781)
!794 = !DILocation(line: 143, column: 25, scope: !781)
!795 = !DILocation(line: 143, column: 23, scope: !781)
!796 = !DILocation(line: 143, column: 34, scope: !781)
!797 = !DILocation(line: 143, column: 47, scope: !781)
!798 = !DILocation(line: 143, column: 55, scope: !781)
!799 = !DILocation(line: 143, column: 53, scope: !781)
!800 = !DILocation(line: 143, column: 37, scope: !781)
!801 = !DILocation(line: 143, column: 68, scope: !781)
!802 = !DILocation(line: 143, column: 81, scope: !781)
!803 = !DILocation(line: 143, column: 89, scope: !781)
!804 = !DILocation(line: 143, column: 87, scope: !781)
!805 = !DILocation(line: 143, column: 100, scope: !781)
!806 = !DILocation(line: 143, column: 71, scope: !781)
!807 = !DILocation(line: 0, scope: !781)
!808 = !DILocalVariable(name: "byte", scope: !809, file: !72, line: 145, type: !64)
!809 = distinct !DILexicalBlock(scope: !781, file: !72, line: 144, column: 5)
!810 = !DILocation(line: 145, column: 13, scope: !809)
!811 = !DILocation(line: 146, column: 18, scope: !809)
!812 = !DILocation(line: 146, column: 26, scope: !809)
!813 = !DILocation(line: 146, column: 24, scope: !809)
!814 = !DILocation(line: 146, column: 9, scope: !809)
!815 = !DILocation(line: 147, column: 45, scope: !809)
!816 = !DILocation(line: 147, column: 29, scope: !809)
!817 = !DILocation(line: 147, column: 9, scope: !809)
!818 = !DILocation(line: 147, column: 15, scope: !809)
!819 = !DILocation(line: 147, column: 27, scope: !809)
!820 = !DILocation(line: 148, column: 9, scope: !809)
!821 = distinct !{!821, !792, !822, !155}
!822 = !DILocation(line: 149, column: 5, scope: !781)
!823 = !DILocation(line: 151, column: 12, scope: !781)
!824 = !DILocation(line: 151, column: 5, scope: !781)
!825 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !72, file: !72, line: 156, type: !826, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!826 = !DISubroutineType(types: !827)
!827 = !{!64}
!828 = !DILocation(line: 158, column: 5, scope: !825)
!829 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !72, file: !72, line: 161, type: !826, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!830 = !DILocation(line: 163, column: 5, scope: !829)
!831 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !72, file: !72, line: 166, type: !826, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!832 = !DILocation(line: 168, column: 13, scope: !831)
!833 = !DILocation(line: 168, column: 20, scope: !831)
!834 = !DILocation(line: 168, column: 5, scope: !831)
!835 = distinct !DISubprogram(name: "good1", scope: !72, file: !72, line: 187, type: !162, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!836 = !DILocation(line: 187, column: 16, scope: !835)
!837 = distinct !DISubprogram(name: "good2", scope: !72, file: !72, line: 188, type: !162, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!838 = !DILocation(line: 188, column: 16, scope: !837)
!839 = distinct !DISubprogram(name: "good3", scope: !72, file: !72, line: 189, type: !162, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!840 = !DILocation(line: 189, column: 16, scope: !839)
!841 = distinct !DISubprogram(name: "good4", scope: !72, file: !72, line: 190, type: !162, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!842 = !DILocation(line: 190, column: 16, scope: !841)
!843 = distinct !DISubprogram(name: "good5", scope: !72, file: !72, line: 191, type: !162, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!844 = !DILocation(line: 191, column: 16, scope: !843)
!845 = distinct !DISubprogram(name: "good6", scope: !72, file: !72, line: 192, type: !162, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!846 = !DILocation(line: 192, column: 16, scope: !845)
!847 = distinct !DISubprogram(name: "good7", scope: !72, file: !72, line: 193, type: !162, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!848 = !DILocation(line: 193, column: 16, scope: !847)
!849 = distinct !DISubprogram(name: "good8", scope: !72, file: !72, line: 194, type: !162, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!850 = !DILocation(line: 194, column: 16, scope: !849)
!851 = distinct !DISubprogram(name: "good9", scope: !72, file: !72, line: 195, type: !162, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!852 = !DILocation(line: 195, column: 16, scope: !851)
!853 = distinct !DISubprogram(name: "bad1", scope: !72, file: !72, line: 198, type: !162, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!854 = !DILocation(line: 198, column: 15, scope: !853)
!855 = distinct !DISubprogram(name: "bad2", scope: !72, file: !72, line: 199, type: !162, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!856 = !DILocation(line: 199, column: 15, scope: !855)
!857 = distinct !DISubprogram(name: "bad3", scope: !72, file: !72, line: 200, type: !162, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!858 = !DILocation(line: 200, column: 15, scope: !857)
!859 = distinct !DISubprogram(name: "bad4", scope: !72, file: !72, line: 201, type: !162, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!860 = !DILocation(line: 201, column: 15, scope: !859)
!861 = distinct !DISubprogram(name: "bad5", scope: !72, file: !72, line: 202, type: !162, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!862 = !DILocation(line: 202, column: 15, scope: !861)
!863 = distinct !DISubprogram(name: "bad6", scope: !72, file: !72, line: 203, type: !162, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!864 = !DILocation(line: 203, column: 15, scope: !863)
!865 = distinct !DISubprogram(name: "bad7", scope: !72, file: !72, line: 204, type: !162, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!866 = !DILocation(line: 204, column: 15, scope: !865)
!867 = distinct !DISubprogram(name: "bad8", scope: !72, file: !72, line: 205, type: !162, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!868 = !DILocation(line: 205, column: 15, scope: !867)
!869 = distinct !DISubprogram(name: "bad9", scope: !72, file: !72, line: 206, type: !162, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !116)
!870 = !DILocation(line: 206, column: 15, scope: !869)
