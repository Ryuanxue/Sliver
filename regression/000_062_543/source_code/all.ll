; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
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
define dso_local void @badSink(i32 %data) #0 !dbg !104 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !113, metadata !DIExpression()), !dbg !117
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !117
  %1 = load i32, i32* %data.addr, align 4, !dbg !118
  %cmp = icmp sge i32 %1, 0, !dbg !120
  br i1 %cmp, label %if.then, label %if.else, !dbg !121

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !122
  %idxprom = sext i32 %2 to i64, !dbg !124
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !124
  store i32 1, i32* %arrayidx, align 4, !dbg !125
  store i32 0, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !128

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !129
  %cmp1 = icmp slt i32 %3, 10, !dbg !131
  br i1 %cmp1, label %for.body, label %for.end, !dbg !132

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !133
  %idxprom2 = sext i32 %4 to i64, !dbg !135
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !135
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !135
  call void @printIntLine(i32 %5), !dbg !136
  br label %for.inc, !dbg !137

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !138
  %inc = add nsw i32 %6, 1, !dbg !138
  store i32 %inc, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !143

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !144
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !146
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad() #0 !dbg !147 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !152, metadata !DIExpression()), !dbg !154
  store void (i32)* @badSink, void (i32)** %funcPtr, align 8, !dbg !154
  store i32 -1, i32* %data, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !159, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 -1, i32* %connectSocket, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  br label %do.body, !dbg !185

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !186
  store i32 %call, i32* %connectSocket, align 4, !dbg !188
  %0 = load i32, i32* %connectSocket, align 4, !dbg !189
  %cmp = icmp eq i32 %0, -1, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !193

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !195
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !196
  store i16 2, i16* %sin_family, align 4, !dbg !197
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !198
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !199
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !200
  store i32 %call1, i32* %s_addr, align 4, !dbg !201
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !202
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !203
  store i16 %call2, i16* %sin_port, align 2, !dbg !204
  %2 = load i32, i32* %connectSocket, align 4, !dbg !205
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !207
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !208
  %cmp4 = icmp eq i32 %call3, -1, !dbg !209
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !210

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !211

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !213
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !214
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !215
  %conv = trunc i64 %call7 to i32, !dbg !215
  store i32 %conv, i32* %recvResult, align 4, !dbg !216
  %5 = load i32, i32* %recvResult, align 4, !dbg !217
  %cmp8 = icmp eq i32 %5, -1, !dbg !219
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !220

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !221
  %cmp10 = icmp eq i32 %6, 0, !dbg !222
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !223

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !224

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !226
  %idxprom = sext i32 %7 to i64, !dbg !227
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !227
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !229
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !230
  store i32 %call15, i32* %data, align 4, !dbg !231
  br label %do.end, !dbg !232

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !233
  %cmp16 = icmp ne i32 %8, -1, !dbg !235
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !236

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !237
  %call19 = call i32 @close(i32 %9), !dbg !239
  br label %if.end20, !dbg !240

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !241
  %11 = load i32, i32* %data, align 4, !dbg !242
  call void %10(i32 %11), !dbg !241
  ret void, !dbg !243
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
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %i, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !251
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !251
  %1 = load i32, i32* %data.addr, align 4, !dbg !252
  %cmp = icmp sge i32 %1, 0, !dbg !254
  br i1 %cmp, label %if.then, label %if.else, !dbg !255

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !256
  %idxprom = sext i32 %2 to i64, !dbg !258
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !258
  store i32 1, i32* %arrayidx, align 4, !dbg !259
  store i32 0, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !263
  %cmp1 = icmp slt i32 %3, 10, !dbg !265
  br i1 %cmp1, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !267
  %idxprom2 = sext i32 %4 to i64, !dbg !269
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !269
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !269
  call void @printIntLine(i32 %5), !dbg !270
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !272
  %inc = add nsw i32 %6, 1, !dbg !272
  store i32 %inc, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !276

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !277
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !280 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !283, metadata !DIExpression()), !dbg !284
  store void (i32)* @goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !284
  store i32 -1, i32* %data, align 4, !dbg !285
  store i32 7, i32* %data, align 4, !dbg !286
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !287
  %1 = load i32, i32* %data, align 4, !dbg !288
  call void %0(i32 %1), !dbg !287
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !290 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %i, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !297
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !297
  %1 = load i32, i32* %data.addr, align 4, !dbg !298
  %cmp = icmp sge i32 %1, 0, !dbg !300
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !301

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !302
  %cmp1 = icmp slt i32 %2, 10, !dbg !303
  br i1 %cmp1, label %if.then, label %if.else, !dbg !304

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !305
  %idxprom = sext i32 %3 to i64, !dbg !307
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !307
  store i32 1, i32* %arrayidx, align 4, !dbg !308
  store i32 0, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !311

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !312
  %cmp2 = icmp slt i32 %4, 10, !dbg !314
  br i1 %cmp2, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !316
  %idxprom3 = sext i32 %5 to i64, !dbg !318
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !318
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !318
  call void @printIntLine(i32 %6), !dbg !319
  br label %for.inc, !dbg !320

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !321
  %inc = add nsw i32 %7, 1, !dbg !321
  store i32 %inc, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !322, !llvm.loop !323

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !325

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !326
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !329 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !332, metadata !DIExpression()), !dbg !333
  store void (i32)* @goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !333
  store i32 -1, i32* %data, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 -1, i32* %connectSocket, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !342, metadata !DIExpression()), !dbg !343
  br label %do.body, !dbg !344

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !345
  store i32 %call, i32* %connectSocket, align 4, !dbg !347
  %0 = load i32, i32* %connectSocket, align 4, !dbg !348
  %cmp = icmp eq i32 %0, -1, !dbg !350
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !352

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !354
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !354
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !355
  store i16 2, i16* %sin_family, align 4, !dbg !356
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !357
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !358
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !359
  store i32 %call1, i32* %s_addr, align 4, !dbg !360
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !361
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !362
  store i16 %call2, i16* %sin_port, align 2, !dbg !363
  %2 = load i32, i32* %connectSocket, align 4, !dbg !364
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !366
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !367
  %cmp4 = icmp eq i32 %call3, -1, !dbg !368
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !369

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !370

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !372
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !373
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !374
  %conv = trunc i64 %call7 to i32, !dbg !374
  store i32 %conv, i32* %recvResult, align 4, !dbg !375
  %5 = load i32, i32* %recvResult, align 4, !dbg !376
  %cmp8 = icmp eq i32 %5, -1, !dbg !378
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !379

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !380
  %cmp10 = icmp eq i32 %6, 0, !dbg !381
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !382

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !383

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !385
  %idxprom = sext i32 %7 to i64, !dbg !386
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !386
  store i8 0, i8* %arrayidx, align 1, !dbg !387
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !388
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !389
  store i32 %call15, i32* %data, align 4, !dbg !390
  br label %do.end, !dbg !391

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !392
  %cmp16 = icmp ne i32 %8, -1, !dbg !394
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !395

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !396
  %call19 = call i32 @close(i32 %9), !dbg !398
  br label %if.end20, !dbg !399

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !400
  %11 = load i32, i32* %data, align 4, !dbg !401
  call void %10(i32 %11), !dbg !400
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_good() #0 !dbg !403 {
entry:
  call void @goodG2B(), !dbg !404
  call void @goodB2G(), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !407 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !412
  %0 = load i8*, i8** %line.addr, align 8, !dbg !413
  %cmp = icmp ne i8* %0, null, !dbg !415
  br i1 %cmp, label %if.then, label %if.end, !dbg !416

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !417
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !419
  br label %if.end, !dbg !420

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !421
  ret void, !dbg !422
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !423 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8*, i8** %line.addr, align 8, !dbg !426
  %cmp = icmp ne i8* %0, null, !dbg !428
  br i1 %cmp, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !432
  br label %if.end, !dbg !433

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !435 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i32*, i32** %line.addr, align 8, !dbg !443
  %cmp = icmp ne i32* %0, null, !dbg !445
  br i1 %cmp, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !447
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !449
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !451
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !452 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !458 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !464
  %conv = sext i16 %0 to i32, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !467 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !473
  %conv = fpext float %0 to double, !dbg !473
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !476 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !485 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !496 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !506 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !511
  %conv = sext i8 %0 to i32, !dbg !511
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !514 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !519, metadata !DIExpression()), !dbg !523
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !524
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !525
  store i32 %0, i32* %arrayidx, align 4, !dbg !526
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !527
  store i32 0, i32* %arrayidx1, align 4, !dbg !528
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !532 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !540 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !545
  %conv = zext i8 %0 to i32, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !548 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !557 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !569
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !570
  %1 = load i32, i32* %intOne, align 4, !dbg !570
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !571
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !572
  %3 = load i32, i32* %intTwo, align 4, !dbg !572
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !573
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !575 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i64* %i, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 0, i64* %i, align 8, !dbg !585
  br label %for.cond, !dbg !587

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !588
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !590
  %cmp = icmp ult i64 %0, %1, !dbg !591
  br i1 %cmp, label %for.body, label %for.end, !dbg !592

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !593
  %3 = load i64, i64* %i, align 8, !dbg !595
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !593
  %4 = load i8, i8* %arrayidx, align 1, !dbg !593
  %conv = zext i8 %4 to i32, !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !596
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !598
  %inc = add i64 %5, 1, !dbg !598
  store i64 %inc, i64* %i, align 8, !dbg !598
  br label %for.cond, !dbg !599, !llvm.loop !600

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !602
  ret void, !dbg !603
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !604 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 0, i64* %numWritten, align 8, !dbg !614
  br label %while.cond, !dbg !615

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !616
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !617
  %cmp = icmp ult i64 %0, %1, !dbg !618
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !619

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !620
  %2 = load i16*, i16** %call, align 8, !dbg !620
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !620
  %4 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul = mul i64 2, %4, !dbg !620
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !620
  %5 = load i8, i8* %arrayidx, align 1, !dbg !620
  %conv = sext i8 %5 to i32, !dbg !620
  %idxprom = sext i32 %conv to i64, !dbg !620
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !620
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !620
  %conv2 = zext i16 %6 to i32, !dbg !620
  %and = and i32 %conv2, 4096, !dbg !620
  %tobool = icmp ne i32 %and, 0, !dbg !620
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !621

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !622
  %7 = load i16*, i16** %call3, align 8, !dbg !622
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !622
  %9 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul4 = mul i64 2, %9, !dbg !622
  %add = add i64 %mul4, 1, !dbg !622
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !622
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !622
  %conv6 = sext i8 %10 to i32, !dbg !622
  %idxprom7 = sext i32 %conv6 to i64, !dbg !622
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !622
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !622
  %conv9 = zext i16 %11 to i32, !dbg !622
  %and10 = and i32 %conv9, 4096, !dbg !622
  %tobool11 = icmp ne i32 %and10, 0, !dbg !621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !623
  br i1 %12, label %while.body, label %while.end, !dbg !615

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !624, metadata !DIExpression()), !dbg !626
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !627
  %14 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul12 = mul i64 2, %14, !dbg !629
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !627
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !630
  %15 = load i32, i32* %byte, align 4, !dbg !631
  %conv15 = trunc i32 %15 to i8, !dbg !632
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !633
  %17 = load i64, i64* %numWritten, align 8, !dbg !634
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !633
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !635
  %18 = load i64, i64* %numWritten, align 8, !dbg !636
  %inc = add i64 %18, 1, !dbg !636
  store i64 %inc, i64* %numWritten, align 8, !dbg !636
  br label %while.cond, !dbg !615, !llvm.loop !637

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !639
  ret i64 %19, !dbg !640
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !641 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !650, metadata !DIExpression()), !dbg !651
  store i64 0, i64* %numWritten, align 8, !dbg !651
  br label %while.cond, !dbg !652

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !653
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !654
  %cmp = icmp ult i64 %0, %1, !dbg !655
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !656

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !657
  %3 = load i64, i64* %numWritten, align 8, !dbg !658
  %mul = mul i64 2, %3, !dbg !659
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !657
  %4 = load i32, i32* %arrayidx, align 4, !dbg !657
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !660
  %tobool = icmp ne i32 %call, 0, !dbg !660
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !661

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !662
  %6 = load i64, i64* %numWritten, align 8, !dbg !663
  %mul1 = mul i64 2, %6, !dbg !664
  %add = add i64 %mul1, 1, !dbg !665
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !662
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !662
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !666
  %tobool4 = icmp ne i32 %call3, 0, !dbg !661
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !667
  br i1 %8, label %while.body, label %while.end, !dbg !652

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !668, metadata !DIExpression()), !dbg !670
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !671
  %10 = load i64, i64* %numWritten, align 8, !dbg !672
  %mul5 = mul i64 2, %10, !dbg !673
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !671
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !674
  %11 = load i32, i32* %byte, align 4, !dbg !675
  %conv = trunc i32 %11 to i8, !dbg !676
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !677
  %13 = load i64, i64* %numWritten, align 8, !dbg !678
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !677
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !679
  %14 = load i64, i64* %numWritten, align 8, !dbg !680
  %inc = add i64 %14, 1, !dbg !680
  store i64 %inc, i64* %numWritten, align 8, !dbg !680
  br label %while.cond, !dbg !652, !llvm.loop !681

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !683
  ret i64 %15, !dbg !684
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !685 {
entry:
  ret i32 1, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !689 {
entry:
  ret i32 0, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !691 {
entry:
  %call = call i32 @rand() #7, !dbg !692
  %rem = srem i32 %call, 2, !dbg !693
  ret i32 %rem, !dbg !694
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !729 {
entry:
  ret void, !dbg !730
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!100, !100}
!llvm.module.flags = !{!101, !102, !103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_543/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_543/source_code")
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
!104 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !23}
!107 = !{}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !104, file: !45, line: 45, type: !23)
!109 = !DILocation(line: 45, column: 18, scope: !104)
!110 = !DILocalVariable(name: "i", scope: !111, file: !45, line: 48, type: !23)
!111 = distinct !DILexicalBlock(scope: !104, file: !45, line: 47, column: 5)
!112 = !DILocation(line: 48, column: 13, scope: !111)
!113 = !DILocalVariable(name: "buffer", scope: !111, file: !45, line: 49, type: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 10)
!117 = !DILocation(line: 49, column: 13, scope: !111)
!118 = !DILocation(line: 52, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !45, line: 52, column: 13)
!120 = !DILocation(line: 52, column: 18, scope: !119)
!121 = !DILocation(line: 52, column: 13, scope: !111)
!122 = !DILocation(line: 54, column: 20, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !45, line: 53, column: 9)
!124 = !DILocation(line: 54, column: 13, scope: !123)
!125 = !DILocation(line: 54, column: 26, scope: !123)
!126 = !DILocation(line: 56, column: 19, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !45, line: 56, column: 13)
!128 = !DILocation(line: 56, column: 17, scope: !127)
!129 = !DILocation(line: 56, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !45, line: 56, column: 13)
!131 = !DILocation(line: 56, column: 26, scope: !130)
!132 = !DILocation(line: 56, column: 13, scope: !127)
!133 = !DILocation(line: 58, column: 37, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !45, line: 57, column: 13)
!135 = !DILocation(line: 58, column: 30, scope: !134)
!136 = !DILocation(line: 58, column: 17, scope: !134)
!137 = !DILocation(line: 59, column: 13, scope: !134)
!138 = !DILocation(line: 56, column: 33, scope: !130)
!139 = !DILocation(line: 56, column: 13, scope: !130)
!140 = distinct !{!140, !132, !141, !142}
!141 = !DILocation(line: 59, column: 13, scope: !127)
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 60, column: 9, scope: !123)
!144 = !DILocation(line: 63, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !119, file: !45, line: 62, column: 9)
!146 = !DILocation(line: 66, column: 1, scope: !104)
!147 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad", scope: !45, file: !45, line: 68, type: !148, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!148 = !DISubroutineType(types: !149)
!149 = !{null}
!150 = !DILocalVariable(name: "data", scope: !147, file: !45, line: 70, type: !23)
!151 = !DILocation(line: 70, column: 9, scope: !147)
!152 = !DILocalVariable(name: "funcPtr", scope: !147, file: !45, line: 72, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!154 = !DILocation(line: 72, column: 12, scope: !147)
!155 = !DILocation(line: 74, column: 10, scope: !147)
!156 = !DILocalVariable(name: "recvResult", scope: !157, file: !45, line: 80, type: !23)
!157 = distinct !DILexicalBlock(scope: !147, file: !45, line: 75, column: 5)
!158 = !DILocation(line: 80, column: 13, scope: !157)
!159 = !DILocalVariable(name: "service", scope: !157, file: !45, line: 81, type: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !161)
!161 = !{!162, !163, !169, !176}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !160, file: !60, line: 240, baseType: !94, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !160, file: !60, line: 241, baseType: !164, size: 16, offset: 16)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !166, line: 25, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !168, line: 40, baseType: !24)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !160, file: !60, line: 242, baseType: !170, size: 32, offset: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !170, file: !60, line: 33, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !166, line: 26, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !168, line: 42, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !160, file: !60, line: 245, baseType: !177, size: 64, offset: 64)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 8)
!180 = !DILocation(line: 81, column: 28, scope: !157)
!181 = !DILocalVariable(name: "connectSocket", scope: !157, file: !45, line: 82, type: !23)
!182 = !DILocation(line: 82, column: 16, scope: !157)
!183 = !DILocalVariable(name: "inputBuffer", scope: !157, file: !45, line: 83, type: !97)
!184 = !DILocation(line: 83, column: 14, scope: !157)
!185 = !DILocation(line: 84, column: 9, scope: !157)
!186 = !DILocation(line: 94, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !157, file: !45, line: 85, column: 9)
!188 = !DILocation(line: 94, column: 27, scope: !187)
!189 = !DILocation(line: 95, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !45, line: 95, column: 17)
!191 = !DILocation(line: 95, column: 31, scope: !190)
!192 = !DILocation(line: 95, column: 17, scope: !187)
!193 = !DILocation(line: 97, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !45, line: 96, column: 13)
!195 = !DILocation(line: 99, column: 13, scope: !187)
!196 = !DILocation(line: 100, column: 21, scope: !187)
!197 = !DILocation(line: 100, column: 32, scope: !187)
!198 = !DILocation(line: 101, column: 39, scope: !187)
!199 = !DILocation(line: 101, column: 21, scope: !187)
!200 = !DILocation(line: 101, column: 30, scope: !187)
!201 = !DILocation(line: 101, column: 37, scope: !187)
!202 = !DILocation(line: 102, column: 32, scope: !187)
!203 = !DILocation(line: 102, column: 21, scope: !187)
!204 = !DILocation(line: 102, column: 30, scope: !187)
!205 = !DILocation(line: 103, column: 25, scope: !206)
!206 = distinct !DILexicalBlock(scope: !187, file: !45, line: 103, column: 17)
!207 = !DILocation(line: 103, column: 40, scope: !206)
!208 = !DILocation(line: 103, column: 17, scope: !206)
!209 = !DILocation(line: 103, column: 85, scope: !206)
!210 = !DILocation(line: 103, column: 17, scope: !187)
!211 = !DILocation(line: 105, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !45, line: 104, column: 13)
!213 = !DILocation(line: 109, column: 31, scope: !187)
!214 = !DILocation(line: 109, column: 46, scope: !187)
!215 = !DILocation(line: 109, column: 26, scope: !187)
!216 = !DILocation(line: 109, column: 24, scope: !187)
!217 = !DILocation(line: 110, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !187, file: !45, line: 110, column: 17)
!219 = !DILocation(line: 110, column: 28, scope: !218)
!220 = !DILocation(line: 110, column: 44, scope: !218)
!221 = !DILocation(line: 110, column: 47, scope: !218)
!222 = !DILocation(line: 110, column: 58, scope: !218)
!223 = !DILocation(line: 110, column: 17, scope: !187)
!224 = !DILocation(line: 112, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !45, line: 111, column: 13)
!226 = !DILocation(line: 115, column: 25, scope: !187)
!227 = !DILocation(line: 115, column: 13, scope: !187)
!228 = !DILocation(line: 115, column: 37, scope: !187)
!229 = !DILocation(line: 117, column: 25, scope: !187)
!230 = !DILocation(line: 117, column: 20, scope: !187)
!231 = !DILocation(line: 117, column: 18, scope: !187)
!232 = !DILocation(line: 118, column: 9, scope: !187)
!233 = !DILocation(line: 120, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !157, file: !45, line: 120, column: 13)
!235 = !DILocation(line: 120, column: 27, scope: !234)
!236 = !DILocation(line: 120, column: 13, scope: !157)
!237 = !DILocation(line: 122, column: 26, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !45, line: 121, column: 9)
!239 = !DILocation(line: 122, column: 13, scope: !238)
!240 = !DILocation(line: 123, column: 9, scope: !238)
!241 = !DILocation(line: 132, column: 5, scope: !147)
!242 = !DILocation(line: 132, column: 13, scope: !147)
!243 = !DILocation(line: 133, column: 1, scope: !147)
!244 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 140, type: !105, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !45, line: 140, type: !23)
!246 = !DILocation(line: 140, column: 22, scope: !244)
!247 = !DILocalVariable(name: "i", scope: !248, file: !45, line: 143, type: !23)
!248 = distinct !DILexicalBlock(scope: !244, file: !45, line: 142, column: 5)
!249 = !DILocation(line: 143, column: 13, scope: !248)
!250 = !DILocalVariable(name: "buffer", scope: !248, file: !45, line: 144, type: !114)
!251 = !DILocation(line: 144, column: 13, scope: !248)
!252 = !DILocation(line: 147, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !45, line: 147, column: 13)
!254 = !DILocation(line: 147, column: 18, scope: !253)
!255 = !DILocation(line: 147, column: 13, scope: !248)
!256 = !DILocation(line: 149, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !45, line: 148, column: 9)
!258 = !DILocation(line: 149, column: 13, scope: !257)
!259 = !DILocation(line: 149, column: 26, scope: !257)
!260 = !DILocation(line: 151, column: 19, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 151, column: 13)
!262 = !DILocation(line: 151, column: 17, scope: !261)
!263 = !DILocation(line: 151, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !45, line: 151, column: 13)
!265 = !DILocation(line: 151, column: 26, scope: !264)
!266 = !DILocation(line: 151, column: 13, scope: !261)
!267 = !DILocation(line: 153, column: 37, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !45, line: 152, column: 13)
!269 = !DILocation(line: 153, column: 30, scope: !268)
!270 = !DILocation(line: 153, column: 17, scope: !268)
!271 = !DILocation(line: 154, column: 13, scope: !268)
!272 = !DILocation(line: 151, column: 33, scope: !264)
!273 = !DILocation(line: 151, column: 13, scope: !264)
!274 = distinct !{!274, !266, !275, !142}
!275 = !DILocation(line: 154, column: 13, scope: !261)
!276 = !DILocation(line: 155, column: 9, scope: !257)
!277 = !DILocation(line: 158, column: 13, scope: !278)
!278 = distinct !DILexicalBlock(scope: !253, file: !45, line: 157, column: 9)
!279 = !DILocation(line: 161, column: 1, scope: !244)
!280 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 163, type: !148, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!281 = !DILocalVariable(name: "data", scope: !280, file: !45, line: 165, type: !23)
!282 = !DILocation(line: 165, column: 9, scope: !280)
!283 = !DILocalVariable(name: "funcPtr", scope: !280, file: !45, line: 166, type: !153)
!284 = !DILocation(line: 166, column: 12, scope: !280)
!285 = !DILocation(line: 168, column: 10, scope: !280)
!286 = !DILocation(line: 171, column: 10, scope: !280)
!287 = !DILocation(line: 172, column: 5, scope: !280)
!288 = !DILocation(line: 172, column: 13, scope: !280)
!289 = !DILocation(line: 173, column: 1, scope: !280)
!290 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 176, type: !105, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!291 = !DILocalVariable(name: "data", arg: 1, scope: !290, file: !45, line: 176, type: !23)
!292 = !DILocation(line: 176, column: 22, scope: !290)
!293 = !DILocalVariable(name: "i", scope: !294, file: !45, line: 179, type: !23)
!294 = distinct !DILexicalBlock(scope: !290, file: !45, line: 178, column: 5)
!295 = !DILocation(line: 179, column: 13, scope: !294)
!296 = !DILocalVariable(name: "buffer", scope: !294, file: !45, line: 180, type: !114)
!297 = !DILocation(line: 180, column: 13, scope: !294)
!298 = !DILocation(line: 182, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !45, line: 182, column: 13)
!300 = !DILocation(line: 182, column: 18, scope: !299)
!301 = !DILocation(line: 182, column: 23, scope: !299)
!302 = !DILocation(line: 182, column: 26, scope: !299)
!303 = !DILocation(line: 182, column: 31, scope: !299)
!304 = !DILocation(line: 182, column: 13, scope: !294)
!305 = !DILocation(line: 184, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !45, line: 183, column: 9)
!307 = !DILocation(line: 184, column: 13, scope: !306)
!308 = !DILocation(line: 184, column: 26, scope: !306)
!309 = !DILocation(line: 186, column: 19, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !45, line: 186, column: 13)
!311 = !DILocation(line: 186, column: 17, scope: !310)
!312 = !DILocation(line: 186, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !45, line: 186, column: 13)
!314 = !DILocation(line: 186, column: 26, scope: !313)
!315 = !DILocation(line: 186, column: 13, scope: !310)
!316 = !DILocation(line: 188, column: 37, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !45, line: 187, column: 13)
!318 = !DILocation(line: 188, column: 30, scope: !317)
!319 = !DILocation(line: 188, column: 17, scope: !317)
!320 = !DILocation(line: 189, column: 13, scope: !317)
!321 = !DILocation(line: 186, column: 33, scope: !313)
!322 = !DILocation(line: 186, column: 13, scope: !313)
!323 = distinct !{!323, !315, !324, !142}
!324 = !DILocation(line: 189, column: 13, scope: !310)
!325 = !DILocation(line: 190, column: 9, scope: !306)
!326 = !DILocation(line: 193, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !299, file: !45, line: 192, column: 9)
!328 = !DILocation(line: 196, column: 1, scope: !290)
!329 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 198, type: !148, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!330 = !DILocalVariable(name: "data", scope: !329, file: !45, line: 200, type: !23)
!331 = !DILocation(line: 200, column: 9, scope: !329)
!332 = !DILocalVariable(name: "funcPtr", scope: !329, file: !45, line: 201, type: !153)
!333 = !DILocation(line: 201, column: 12, scope: !329)
!334 = !DILocation(line: 203, column: 10, scope: !329)
!335 = !DILocalVariable(name: "recvResult", scope: !336, file: !45, line: 209, type: !23)
!336 = distinct !DILexicalBlock(scope: !329, file: !45, line: 204, column: 5)
!337 = !DILocation(line: 209, column: 13, scope: !336)
!338 = !DILocalVariable(name: "service", scope: !336, file: !45, line: 210, type: !160)
!339 = !DILocation(line: 210, column: 28, scope: !336)
!340 = !DILocalVariable(name: "connectSocket", scope: !336, file: !45, line: 211, type: !23)
!341 = !DILocation(line: 211, column: 16, scope: !336)
!342 = !DILocalVariable(name: "inputBuffer", scope: !336, file: !45, line: 212, type: !97)
!343 = !DILocation(line: 212, column: 14, scope: !336)
!344 = !DILocation(line: 213, column: 9, scope: !336)
!345 = !DILocation(line: 223, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !336, file: !45, line: 214, column: 9)
!347 = !DILocation(line: 223, column: 27, scope: !346)
!348 = !DILocation(line: 224, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !45, line: 224, column: 17)
!350 = !DILocation(line: 224, column: 31, scope: !349)
!351 = !DILocation(line: 224, column: 17, scope: !346)
!352 = !DILocation(line: 226, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !45, line: 225, column: 13)
!354 = !DILocation(line: 228, column: 13, scope: !346)
!355 = !DILocation(line: 229, column: 21, scope: !346)
!356 = !DILocation(line: 229, column: 32, scope: !346)
!357 = !DILocation(line: 230, column: 39, scope: !346)
!358 = !DILocation(line: 230, column: 21, scope: !346)
!359 = !DILocation(line: 230, column: 30, scope: !346)
!360 = !DILocation(line: 230, column: 37, scope: !346)
!361 = !DILocation(line: 231, column: 32, scope: !346)
!362 = !DILocation(line: 231, column: 21, scope: !346)
!363 = !DILocation(line: 231, column: 30, scope: !346)
!364 = !DILocation(line: 232, column: 25, scope: !365)
!365 = distinct !DILexicalBlock(scope: !346, file: !45, line: 232, column: 17)
!366 = !DILocation(line: 232, column: 40, scope: !365)
!367 = !DILocation(line: 232, column: 17, scope: !365)
!368 = !DILocation(line: 232, column: 85, scope: !365)
!369 = !DILocation(line: 232, column: 17, scope: !346)
!370 = !DILocation(line: 234, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !365, file: !45, line: 233, column: 13)
!372 = !DILocation(line: 238, column: 31, scope: !346)
!373 = !DILocation(line: 238, column: 46, scope: !346)
!374 = !DILocation(line: 238, column: 26, scope: !346)
!375 = !DILocation(line: 238, column: 24, scope: !346)
!376 = !DILocation(line: 239, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !346, file: !45, line: 239, column: 17)
!378 = !DILocation(line: 239, column: 28, scope: !377)
!379 = !DILocation(line: 239, column: 44, scope: !377)
!380 = !DILocation(line: 239, column: 47, scope: !377)
!381 = !DILocation(line: 239, column: 58, scope: !377)
!382 = !DILocation(line: 239, column: 17, scope: !346)
!383 = !DILocation(line: 241, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !377, file: !45, line: 240, column: 13)
!385 = !DILocation(line: 244, column: 25, scope: !346)
!386 = !DILocation(line: 244, column: 13, scope: !346)
!387 = !DILocation(line: 244, column: 37, scope: !346)
!388 = !DILocation(line: 246, column: 25, scope: !346)
!389 = !DILocation(line: 246, column: 20, scope: !346)
!390 = !DILocation(line: 246, column: 18, scope: !346)
!391 = !DILocation(line: 247, column: 9, scope: !346)
!392 = !DILocation(line: 249, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !336, file: !45, line: 249, column: 13)
!394 = !DILocation(line: 249, column: 27, scope: !393)
!395 = !DILocation(line: 249, column: 13, scope: !336)
!396 = !DILocation(line: 251, column: 26, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !45, line: 250, column: 9)
!398 = !DILocation(line: 251, column: 13, scope: !397)
!399 = !DILocation(line: 252, column: 9, scope: !397)
!400 = !DILocation(line: 260, column: 5, scope: !329)
!401 = !DILocation(line: 260, column: 13, scope: !329)
!402 = !DILocation(line: 261, column: 1, scope: !329)
!403 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_good", scope: !45, file: !45, line: 263, type: !148, scopeLine: 264, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!404 = !DILocation(line: 265, column: 5, scope: !403)
!405 = !DILocation(line: 266, column: 5, scope: !403)
!406 = !DILocation(line: 267, column: 1, scope: !403)
!407 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !408, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !42}
!410 = !DILocalVariable(name: "line", arg: 1, scope: !407, file: !3, line: 11, type: !42)
!411 = !DILocation(line: 11, column: 25, scope: !407)
!412 = !DILocation(line: 13, column: 1, scope: !407)
!413 = !DILocation(line: 14, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 14, column: 8)
!415 = !DILocation(line: 14, column: 13, scope: !414)
!416 = !DILocation(line: 14, column: 8, scope: !407)
!417 = !DILocation(line: 16, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !3, line: 15, column: 5)
!419 = !DILocation(line: 16, column: 9, scope: !418)
!420 = !DILocation(line: 17, column: 5, scope: !418)
!421 = !DILocation(line: 18, column: 5, scope: !407)
!422 = !DILocation(line: 19, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !408, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!424 = !DILocalVariable(name: "line", arg: 1, scope: !423, file: !3, line: 20, type: !42)
!425 = !DILocation(line: 20, column: 29, scope: !423)
!426 = !DILocation(line: 22, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 22, column: 8)
!428 = !DILocation(line: 22, column: 13, scope: !427)
!429 = !DILocation(line: 22, column: 8, scope: !423)
!430 = !DILocation(line: 24, column: 24, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 23, column: 5)
!432 = !DILocation(line: 24, column: 9, scope: !431)
!433 = !DILocation(line: 25, column: 5, scope: !431)
!434 = !DILocation(line: 26, column: 1, scope: !423)
!435 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !436, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !440, line: 74, baseType: !23)
!440 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!441 = !DILocalVariable(name: "line", arg: 1, scope: !435, file: !3, line: 27, type: !438)
!442 = !DILocation(line: 27, column: 29, scope: !435)
!443 = !DILocation(line: 29, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 29, column: 8)
!445 = !DILocation(line: 29, column: 13, scope: !444)
!446 = !DILocation(line: 29, column: 8, scope: !435)
!447 = !DILocation(line: 31, column: 27, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !3, line: 30, column: 5)
!449 = !DILocation(line: 31, column: 9, scope: !448)
!450 = !DILocation(line: 32, column: 5, scope: !448)
!451 = !DILocation(line: 33, column: 1, scope: !435)
!452 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !105, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!453 = !DILocalVariable(name: "intNumber", arg: 1, scope: !452, file: !3, line: 35, type: !23)
!454 = !DILocation(line: 35, column: 24, scope: !452)
!455 = !DILocation(line: 37, column: 20, scope: !452)
!456 = !DILocation(line: 37, column: 5, scope: !452)
!457 = !DILocation(line: 38, column: 1, scope: !452)
!458 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !459, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!462 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !458, file: !3, line: 40, type: !461)
!463 = !DILocation(line: 40, column: 28, scope: !458)
!464 = !DILocation(line: 42, column: 21, scope: !458)
!465 = !DILocation(line: 42, column: 5, scope: !458)
!466 = !DILocation(line: 43, column: 1, scope: !458)
!467 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !468, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!471 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !467, file: !3, line: 45, type: !470)
!472 = !DILocation(line: 45, column: 28, scope: !467)
!473 = !DILocation(line: 47, column: 20, scope: !467)
!474 = !DILocation(line: 47, column: 5, scope: !467)
!475 = !DILocation(line: 48, column: 1, scope: !467)
!476 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !477, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !479}
!479 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!480 = !DILocalVariable(name: "longNumber", arg: 1, scope: !476, file: !3, line: 50, type: !479)
!481 = !DILocation(line: 50, column: 26, scope: !476)
!482 = !DILocation(line: 52, column: 21, scope: !476)
!483 = !DILocation(line: 52, column: 5, scope: !476)
!484 = !DILocation(line: 53, column: 1, scope: !476)
!485 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !486, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !488}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !489, line: 27, baseType: !490)
!489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !168, line: 44, baseType: !479)
!491 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !485, file: !3, line: 55, type: !488)
!492 = !DILocation(line: 55, column: 33, scope: !485)
!493 = !DILocation(line: 57, column: 29, scope: !485)
!494 = !DILocation(line: 57, column: 5, scope: !485)
!495 = !DILocation(line: 58, column: 1, scope: !485)
!496 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !497, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !440, line: 46, baseType: !500)
!500 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!501 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !496, file: !3, line: 60, type: !499)
!502 = !DILocation(line: 60, column: 29, scope: !496)
!503 = !DILocation(line: 62, column: 21, scope: !496)
!504 = !DILocation(line: 62, column: 5, scope: !496)
!505 = !DILocation(line: 63, column: 1, scope: !496)
!506 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !507, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !43}
!509 = !DILocalVariable(name: "charHex", arg: 1, scope: !506, file: !3, line: 65, type: !43)
!510 = !DILocation(line: 65, column: 29, scope: !506)
!511 = !DILocation(line: 67, column: 22, scope: !506)
!512 = !DILocation(line: 67, column: 5, scope: !506)
!513 = !DILocation(line: 68, column: 1, scope: !506)
!514 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !515, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !439}
!517 = !DILocalVariable(name: "wideChar", arg: 1, scope: !514, file: !3, line: 70, type: !439)
!518 = !DILocation(line: 70, column: 29, scope: !514)
!519 = !DILocalVariable(name: "s", scope: !514, file: !3, line: 74, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 64, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 2)
!523 = !DILocation(line: 74, column: 13, scope: !514)
!524 = !DILocation(line: 75, column: 16, scope: !514)
!525 = !DILocation(line: 75, column: 9, scope: !514)
!526 = !DILocation(line: 75, column: 14, scope: !514)
!527 = !DILocation(line: 76, column: 9, scope: !514)
!528 = !DILocation(line: 76, column: 14, scope: !514)
!529 = !DILocation(line: 77, column: 21, scope: !514)
!530 = !DILocation(line: 77, column: 5, scope: !514)
!531 = !DILocation(line: 78, column: 1, scope: !514)
!532 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !533, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !7}
!535 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !532, file: !3, line: 80, type: !7)
!536 = !DILocation(line: 80, column: 33, scope: !532)
!537 = !DILocation(line: 82, column: 20, scope: !532)
!538 = !DILocation(line: 82, column: 5, scope: !532)
!539 = !DILocation(line: 83, column: 1, scope: !532)
!540 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !541, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !25}
!543 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !540, file: !3, line: 85, type: !25)
!544 = !DILocation(line: 85, column: 45, scope: !540)
!545 = !DILocation(line: 87, column: 22, scope: !540)
!546 = !DILocation(line: 87, column: 5, scope: !540)
!547 = !DILocation(line: 88, column: 1, scope: !540)
!548 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !549, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!552 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !548, file: !3, line: 90, type: !551)
!553 = !DILocation(line: 90, column: 29, scope: !548)
!554 = !DILocation(line: 92, column: 20, scope: !548)
!555 = !DILocation(line: 92, column: 5, scope: !548)
!556 = !DILocation(line: 93, column: 1, scope: !548)
!557 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !558, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !562, line: 100, baseType: !563)
!562 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_543/source_code")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !562, line: 96, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !563, file: !562, line: 98, baseType: !23, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !563, file: !562, line: 99, baseType: !23, size: 32, offset: 32)
!567 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !557, file: !3, line: 95, type: !560)
!568 = !DILocation(line: 95, column: 40, scope: !557)
!569 = !DILocation(line: 97, column: 26, scope: !557)
!570 = !DILocation(line: 97, column: 47, scope: !557)
!571 = !DILocation(line: 97, column: 55, scope: !557)
!572 = !DILocation(line: 97, column: 76, scope: !557)
!573 = !DILocation(line: 97, column: 5, scope: !557)
!574 = !DILocation(line: 98, column: 1, scope: !557)
!575 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !576, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578, !499}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!579 = !DILocalVariable(name: "bytes", arg: 1, scope: !575, file: !3, line: 100, type: !578)
!580 = !DILocation(line: 100, column: 38, scope: !575)
!581 = !DILocalVariable(name: "numBytes", arg: 2, scope: !575, file: !3, line: 100, type: !499)
!582 = !DILocation(line: 100, column: 52, scope: !575)
!583 = !DILocalVariable(name: "i", scope: !575, file: !3, line: 102, type: !499)
!584 = !DILocation(line: 102, column: 12, scope: !575)
!585 = !DILocation(line: 103, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !3, line: 103, column: 5)
!587 = !DILocation(line: 103, column: 10, scope: !586)
!588 = !DILocation(line: 103, column: 17, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 103, column: 5)
!590 = !DILocation(line: 103, column: 21, scope: !589)
!591 = !DILocation(line: 103, column: 19, scope: !589)
!592 = !DILocation(line: 103, column: 5, scope: !586)
!593 = !DILocation(line: 105, column: 24, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 104, column: 5)
!595 = !DILocation(line: 105, column: 30, scope: !594)
!596 = !DILocation(line: 105, column: 9, scope: !594)
!597 = !DILocation(line: 106, column: 5, scope: !594)
!598 = !DILocation(line: 103, column: 31, scope: !589)
!599 = !DILocation(line: 103, column: 5, scope: !589)
!600 = distinct !{!600, !592, !601, !142}
!601 = !DILocation(line: 106, column: 5, scope: !586)
!602 = !DILocation(line: 107, column: 5, scope: !575)
!603 = !DILocation(line: 108, column: 1, scope: !575)
!604 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !605, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!605 = !DISubroutineType(types: !606)
!606 = !{!499, !578, !499, !42}
!607 = !DILocalVariable(name: "bytes", arg: 1, scope: !604, file: !3, line: 113, type: !578)
!608 = !DILocation(line: 113, column: 39, scope: !604)
!609 = !DILocalVariable(name: "numBytes", arg: 2, scope: !604, file: !3, line: 113, type: !499)
!610 = !DILocation(line: 113, column: 53, scope: !604)
!611 = !DILocalVariable(name: "hex", arg: 3, scope: !604, file: !3, line: 113, type: !42)
!612 = !DILocation(line: 113, column: 71, scope: !604)
!613 = !DILocalVariable(name: "numWritten", scope: !604, file: !3, line: 115, type: !499)
!614 = !DILocation(line: 115, column: 12, scope: !604)
!615 = !DILocation(line: 121, column: 5, scope: !604)
!616 = !DILocation(line: 121, column: 12, scope: !604)
!617 = !DILocation(line: 121, column: 25, scope: !604)
!618 = !DILocation(line: 121, column: 23, scope: !604)
!619 = !DILocation(line: 121, column: 34, scope: !604)
!620 = !DILocation(line: 121, column: 37, scope: !604)
!621 = !DILocation(line: 121, column: 67, scope: !604)
!622 = !DILocation(line: 121, column: 70, scope: !604)
!623 = !DILocation(line: 0, scope: !604)
!624 = !DILocalVariable(name: "byte", scope: !625, file: !3, line: 123, type: !23)
!625 = distinct !DILexicalBlock(scope: !604, file: !3, line: 122, column: 5)
!626 = !DILocation(line: 123, column: 13, scope: !625)
!627 = !DILocation(line: 124, column: 17, scope: !625)
!628 = !DILocation(line: 124, column: 25, scope: !625)
!629 = !DILocation(line: 124, column: 23, scope: !625)
!630 = !DILocation(line: 124, column: 9, scope: !625)
!631 = !DILocation(line: 125, column: 45, scope: !625)
!632 = !DILocation(line: 125, column: 29, scope: !625)
!633 = !DILocation(line: 125, column: 9, scope: !625)
!634 = !DILocation(line: 125, column: 15, scope: !625)
!635 = !DILocation(line: 125, column: 27, scope: !625)
!636 = !DILocation(line: 126, column: 9, scope: !625)
!637 = distinct !{!637, !615, !638, !142}
!638 = !DILocation(line: 127, column: 5, scope: !604)
!639 = !DILocation(line: 129, column: 12, scope: !604)
!640 = !DILocation(line: 129, column: 5, scope: !604)
!641 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !642, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!642 = !DISubroutineType(types: !643)
!643 = !{!499, !578, !499, !438}
!644 = !DILocalVariable(name: "bytes", arg: 1, scope: !641, file: !3, line: 135, type: !578)
!645 = !DILocation(line: 135, column: 41, scope: !641)
!646 = !DILocalVariable(name: "numBytes", arg: 2, scope: !641, file: !3, line: 135, type: !499)
!647 = !DILocation(line: 135, column: 55, scope: !641)
!648 = !DILocalVariable(name: "hex", arg: 3, scope: !641, file: !3, line: 135, type: !438)
!649 = !DILocation(line: 135, column: 76, scope: !641)
!650 = !DILocalVariable(name: "numWritten", scope: !641, file: !3, line: 137, type: !499)
!651 = !DILocation(line: 137, column: 12, scope: !641)
!652 = !DILocation(line: 143, column: 5, scope: !641)
!653 = !DILocation(line: 143, column: 12, scope: !641)
!654 = !DILocation(line: 143, column: 25, scope: !641)
!655 = !DILocation(line: 143, column: 23, scope: !641)
!656 = !DILocation(line: 143, column: 34, scope: !641)
!657 = !DILocation(line: 143, column: 47, scope: !641)
!658 = !DILocation(line: 143, column: 55, scope: !641)
!659 = !DILocation(line: 143, column: 53, scope: !641)
!660 = !DILocation(line: 143, column: 37, scope: !641)
!661 = !DILocation(line: 143, column: 68, scope: !641)
!662 = !DILocation(line: 143, column: 81, scope: !641)
!663 = !DILocation(line: 143, column: 89, scope: !641)
!664 = !DILocation(line: 143, column: 87, scope: !641)
!665 = !DILocation(line: 143, column: 100, scope: !641)
!666 = !DILocation(line: 143, column: 71, scope: !641)
!667 = !DILocation(line: 0, scope: !641)
!668 = !DILocalVariable(name: "byte", scope: !669, file: !3, line: 145, type: !23)
!669 = distinct !DILexicalBlock(scope: !641, file: !3, line: 144, column: 5)
!670 = !DILocation(line: 145, column: 13, scope: !669)
!671 = !DILocation(line: 146, column: 18, scope: !669)
!672 = !DILocation(line: 146, column: 26, scope: !669)
!673 = !DILocation(line: 146, column: 24, scope: !669)
!674 = !DILocation(line: 146, column: 9, scope: !669)
!675 = !DILocation(line: 147, column: 45, scope: !669)
!676 = !DILocation(line: 147, column: 29, scope: !669)
!677 = !DILocation(line: 147, column: 9, scope: !669)
!678 = !DILocation(line: 147, column: 15, scope: !669)
!679 = !DILocation(line: 147, column: 27, scope: !669)
!680 = !DILocation(line: 148, column: 9, scope: !669)
!681 = distinct !{!681, !652, !682, !142}
!682 = !DILocation(line: 149, column: 5, scope: !641)
!683 = !DILocation(line: 151, column: 12, scope: !641)
!684 = !DILocation(line: 151, column: 5, scope: !641)
!685 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !686, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!686 = !DISubroutineType(types: !687)
!687 = !{!23}
!688 = !DILocation(line: 158, column: 5, scope: !685)
!689 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !686, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!690 = !DILocation(line: 163, column: 5, scope: !689)
!691 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !686, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!692 = !DILocation(line: 168, column: 13, scope: !691)
!693 = !DILocation(line: 168, column: 20, scope: !691)
!694 = !DILocation(line: 168, column: 5, scope: !691)
!695 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !148, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DILocation(line: 187, column: 16, scope: !695)
!697 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !148, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!698 = !DILocation(line: 188, column: 16, scope: !697)
!699 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !148, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!700 = !DILocation(line: 189, column: 16, scope: !699)
!701 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !148, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!702 = !DILocation(line: 190, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !148, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!704 = !DILocation(line: 191, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !148, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!706 = !DILocation(line: 192, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !148, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!708 = !DILocation(line: 193, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !148, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!710 = !DILocation(line: 194, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !148, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!712 = !DILocation(line: 195, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !148, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DILocation(line: 198, column: 15, scope: !713)
!715 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !148, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DILocation(line: 199, column: 15, scope: !715)
!717 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !148, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!718 = !DILocation(line: 200, column: 15, scope: !717)
!719 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !148, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!720 = !DILocation(line: 201, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !148, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!722 = !DILocation(line: 202, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !148, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!724 = !DILocation(line: 203, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !148, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!726 = !DILocation(line: 204, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !148, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!728 = !DILocation(line: 205, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !148, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!730 = !DILocation(line: 206, column: 15, scope: !729)
