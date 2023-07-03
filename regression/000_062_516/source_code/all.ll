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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !196, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !199, metadata !DIExpression()), !dbg !203
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !203
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !203
  %11 = load i32, i32* %data, align 4, !dbg !204
  %cmp21 = icmp sge i32 %11, 0, !dbg !206
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !207

if.then23:                                        ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !208
  %idxprom24 = sext i32 %12 to i64, !dbg !210
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !210
  store i32 1, i32* %arrayidx25, align 4, !dbg !211
  store i32 0, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !214

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !215
  %cmp26 = icmp slt i32 %13, 10, !dbg !217
  br i1 %cmp26, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !219
  %idxprom28 = sext i32 %14 to i64, !dbg !221
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !221
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !221
  call void @printIntLine(i32 %15), !dbg !222
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !224
  %inc = add nsw i32 %16, 1, !dbg !224
  store i32 %inc, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !225, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !229

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !230
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !232
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
define dso_local void @goodG2B() #0 !dbg !233 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 -1, i32* %data, align 4, !dbg !236
  store i32 7, i32* %data, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %i, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !242
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !242
  %1 = load i32, i32* %data, align 4, !dbg !243
  %cmp = icmp sge i32 %1, 0, !dbg !245
  br i1 %cmp, label %if.then, label %if.else, !dbg !246

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !247
  %idxprom = sext i32 %2 to i64, !dbg !249
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !249
  store i32 1, i32* %arrayidx, align 4, !dbg !250
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !254
  %cmp1 = icmp slt i32 %3, 10, !dbg !256
  br i1 %cmp1, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !258
  %idxprom2 = sext i32 %4 to i64, !dbg !260
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !260
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !260
  call void @printIntLine(i32 %5), !dbg !261
  br label %for.inc, !dbg !262

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !263
  %inc = add nsw i32 %6, 1, !dbg !263
  store i32 %inc, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !264, !llvm.loop !265

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !267

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !268
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !271 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !272, metadata !DIExpression()), !dbg !273
  store i32 -1, i32* %data, align 4, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 -1, i32* %connectSocket, align 4, !dbg !281
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !282, metadata !DIExpression()), !dbg !283
  br label %do.body, !dbg !284

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !285
  store i32 %call, i32* %connectSocket, align 4, !dbg !287
  %0 = load i32, i32* %connectSocket, align 4, !dbg !288
  %cmp = icmp eq i32 %0, -1, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !292

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !294
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !295
  store i16 2, i16* %sin_family, align 4, !dbg !296
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !297
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !298
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !299
  store i32 %call1, i32* %s_addr, align 4, !dbg !300
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !301
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !302
  store i16 %call2, i16* %sin_port, align 2, !dbg !303
  %2 = load i32, i32* %connectSocket, align 4, !dbg !304
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !306
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !307
  %cmp4 = icmp eq i32 %call3, -1, !dbg !308
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !309

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !310

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !312
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !313
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !314
  %conv = trunc i64 %call7 to i32, !dbg !314
  store i32 %conv, i32* %recvResult, align 4, !dbg !315
  %5 = load i32, i32* %recvResult, align 4, !dbg !316
  %cmp8 = icmp eq i32 %5, -1, !dbg !318
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !319

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !320
  %cmp10 = icmp eq i32 %6, 0, !dbg !321
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !322

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !323

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !325
  %idxprom = sext i32 %7 to i64, !dbg !326
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !326
  store i8 0, i8* %arrayidx, align 1, !dbg !327
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !328
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !329
  store i32 %call15, i32* %data, align 4, !dbg !330
  br label %do.end, !dbg !331

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !332
  %cmp16 = icmp ne i32 %8, -1, !dbg !334
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !335

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !336
  %call19 = call i32 @close(i32 %9), !dbg !338
  br label %if.end20, !dbg !339

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !343, metadata !DIExpression()), !dbg !344
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !344
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !344
  %11 = load i32, i32* %data, align 4, !dbg !345
  %cmp21 = icmp sge i32 %11, 0, !dbg !347
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !348

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !349
  %cmp23 = icmp slt i32 %12, 10, !dbg !350
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !351

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !352
  %idxprom26 = sext i32 %13 to i64, !dbg !354
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !354
  store i32 1, i32* %arrayidx27, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !356
  br label %for.cond, !dbg !358

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !359
  %cmp28 = icmp slt i32 %14, 10, !dbg !361
  br i1 %cmp28, label %for.body, label %for.end, !dbg !362

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !363
  %idxprom30 = sext i32 %15 to i64, !dbg !365
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !365
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !365
  call void @printIntLine(i32 %16), !dbg !366
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !368
  %inc = add nsw i32 %17, 1, !dbg !368
  store i32 %inc, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !372

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !373
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_good() #0 !dbg !376 {
entry:
  call void @goodG2B(), !dbg !377
  call void @goodB2G(), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !380 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !385
  %0 = load i8*, i8** %line.addr, align 8, !dbg !386
  %cmp = icmp ne i8* %0, null, !dbg !388
  br i1 %cmp, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !390
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !392
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !394
  ret void, !dbg !395
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !396 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i8*, i8** %line.addr, align 8, !dbg !399
  %cmp = icmp ne i8* %0, null, !dbg !401
  br i1 %cmp, label %if.then, label %if.end, !dbg !402

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !405
  br label %if.end, !dbg !406

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !408 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32*, i32** %line.addr, align 8, !dbg !416
  %cmp = icmp ne i32* %0, null, !dbg !418
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !420
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !422
  br label %if.end, !dbg !423

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !424
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !425 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !433 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !439
  %conv = sext i16 %0 to i32, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !442 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !448
  %conv = fpext float %0 to double, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !451 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !460 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !471 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !481 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !486
  %conv = sext i8 %0 to i32, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !489 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !494, metadata !DIExpression()), !dbg !498
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !499
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !500
  store i32 %0, i32* %arrayidx, align 4, !dbg !501
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !502
  store i32 0, i32* %arrayidx1, align 4, !dbg !503
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !507 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !515 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !520
  %conv = zext i8 %0 to i32, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !523 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !532 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !544
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !545
  %1 = load i32, i32* %intOne, align 4, !dbg !545
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !546
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !547
  %3 = load i32, i32* %intTwo, align 4, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !550 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %i, metadata !558, metadata !DIExpression()), !dbg !559
  store i64 0, i64* %i, align 8, !dbg !560
  br label %for.cond, !dbg !562

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !563
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !565
  %cmp = icmp ult i64 %0, %1, !dbg !566
  br i1 %cmp, label %for.body, label %for.end, !dbg !567

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !568
  %3 = load i64, i64* %i, align 8, !dbg !570
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !568
  %4 = load i8, i8* %arrayidx, align 1, !dbg !568
  %conv = zext i8 %4 to i32, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !571
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !573
  %inc = add i64 %5, 1, !dbg !573
  store i64 %inc, i64* %i, align 8, !dbg !573
  br label %for.cond, !dbg !574, !llvm.loop !575

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !577
  ret void, !dbg !578
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !579 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !582, metadata !DIExpression()), !dbg !583
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !584, metadata !DIExpression()), !dbg !585
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !588, metadata !DIExpression()), !dbg !589
  store i64 0, i64* %numWritten, align 8, !dbg !589
  br label %while.cond, !dbg !590

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !591
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !592
  %cmp = icmp ult i64 %0, %1, !dbg !593
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !594

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !595
  %2 = load i16*, i16** %call, align 8, !dbg !595
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !595
  %4 = load i64, i64* %numWritten, align 8, !dbg !595
  %mul = mul i64 2, %4, !dbg !595
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !595
  %5 = load i8, i8* %arrayidx, align 1, !dbg !595
  %conv = sext i8 %5 to i32, !dbg !595
  %idxprom = sext i32 %conv to i64, !dbg !595
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !595
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !595
  %conv2 = zext i16 %6 to i32, !dbg !595
  %and = and i32 %conv2, 4096, !dbg !595
  %tobool = icmp ne i32 %and, 0, !dbg !595
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !596

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !597
  %7 = load i16*, i16** %call3, align 8, !dbg !597
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !597
  %9 = load i64, i64* %numWritten, align 8, !dbg !597
  %mul4 = mul i64 2, %9, !dbg !597
  %add = add i64 %mul4, 1, !dbg !597
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !597
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !597
  %conv6 = sext i8 %10 to i32, !dbg !597
  %idxprom7 = sext i32 %conv6 to i64, !dbg !597
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !597
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !597
  %conv9 = zext i16 %11 to i32, !dbg !597
  %and10 = and i32 %conv9, 4096, !dbg !597
  %tobool11 = icmp ne i32 %and10, 0, !dbg !596
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !598
  br i1 %12, label %while.body, label %while.end, !dbg !590

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !599, metadata !DIExpression()), !dbg !601
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !602
  %14 = load i64, i64* %numWritten, align 8, !dbg !603
  %mul12 = mul i64 2, %14, !dbg !604
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !602
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !605
  %15 = load i32, i32* %byte, align 4, !dbg !606
  %conv15 = trunc i32 %15 to i8, !dbg !607
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !608
  %17 = load i64, i64* %numWritten, align 8, !dbg !609
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !608
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !610
  %18 = load i64, i64* %numWritten, align 8, !dbg !611
  %inc = add i64 %18, 1, !dbg !611
  store i64 %inc, i64* %numWritten, align 8, !dbg !611
  br label %while.cond, !dbg !590, !llvm.loop !612

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !614
  ret i64 %19, !dbg !615
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !616 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !619, metadata !DIExpression()), !dbg !620
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !621, metadata !DIExpression()), !dbg !622
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !625, metadata !DIExpression()), !dbg !626
  store i64 0, i64* %numWritten, align 8, !dbg !626
  br label %while.cond, !dbg !627

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !628
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !629
  %cmp = icmp ult i64 %0, %1, !dbg !630
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !631

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !632
  %3 = load i64, i64* %numWritten, align 8, !dbg !633
  %mul = mul i64 2, %3, !dbg !634
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !632
  %4 = load i32, i32* %arrayidx, align 4, !dbg !632
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !635
  %tobool = icmp ne i32 %call, 0, !dbg !635
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !636

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !637
  %6 = load i64, i64* %numWritten, align 8, !dbg !638
  %mul1 = mul i64 2, %6, !dbg !639
  %add = add i64 %mul1, 1, !dbg !640
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !637
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !637
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !641
  %tobool4 = icmp ne i32 %call3, 0, !dbg !636
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !642
  br i1 %8, label %while.body, label %while.end, !dbg !627

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !643, metadata !DIExpression()), !dbg !645
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !646
  %10 = load i64, i64* %numWritten, align 8, !dbg !647
  %mul5 = mul i64 2, %10, !dbg !648
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !646
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !649
  %11 = load i32, i32* %byte, align 4, !dbg !650
  %conv = trunc i32 %11 to i8, !dbg !651
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !652
  %13 = load i64, i64* %numWritten, align 8, !dbg !653
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !652
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !654
  %14 = load i64, i64* %numWritten, align 8, !dbg !655
  %inc = add i64 %14, 1, !dbg !655
  store i64 %inc, i64* %numWritten, align 8, !dbg !655
  br label %while.cond, !dbg !627, !llvm.loop !656

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !658
  ret i64 %15, !dbg !659
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !660 {
entry:
  ret i32 1, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !664 {
entry:
  ret i32 0, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !666 {
entry:
  %call = call i32 @rand() #7, !dbg !667
  %rem = srem i32 %call, 2, !dbg !668
  ret i32 %rem, !dbg !669
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !692 {
entry:
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !694 {
entry:
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !704 {
entry:
  ret void, !dbg !705
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_516/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_516/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!196 = !DILocalVariable(name: "i", scope: !197, file: !45, line: 107, type: !23)
!197 = distinct !DILexicalBlock(scope: !104, file: !45, line: 106, column: 5)
!198 = !DILocation(line: 107, column: 13, scope: !197)
!199 = !DILocalVariable(name: "buffer", scope: !197, file: !45, line: 108, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DILocation(line: 108, column: 13, scope: !197)
!204 = !DILocation(line: 111, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !45, line: 111, column: 13)
!206 = !DILocation(line: 111, column: 18, scope: !205)
!207 = !DILocation(line: 111, column: 13, scope: !197)
!208 = !DILocation(line: 113, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !45, line: 112, column: 9)
!210 = !DILocation(line: 113, column: 13, scope: !209)
!211 = !DILocation(line: 113, column: 26, scope: !209)
!212 = !DILocation(line: 115, column: 19, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !45, line: 115, column: 13)
!214 = !DILocation(line: 115, column: 17, scope: !213)
!215 = !DILocation(line: 115, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !45, line: 115, column: 13)
!217 = !DILocation(line: 115, column: 26, scope: !216)
!218 = !DILocation(line: 115, column: 13, scope: !213)
!219 = !DILocation(line: 117, column: 37, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 116, column: 13)
!221 = !DILocation(line: 117, column: 30, scope: !220)
!222 = !DILocation(line: 117, column: 17, scope: !220)
!223 = !DILocation(line: 118, column: 13, scope: !220)
!224 = !DILocation(line: 115, column: 33, scope: !216)
!225 = !DILocation(line: 115, column: 13, scope: !216)
!226 = distinct !{!226, !218, !227, !228}
!227 = !DILocation(line: 118, column: 13, scope: !213)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !DILocation(line: 119, column: 9, scope: !209)
!230 = !DILocation(line: 122, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !205, file: !45, line: 121, column: 9)
!232 = !DILocation(line: 125, column: 1, scope: !104)
!233 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 132, type: !105, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!234 = !DILocalVariable(name: "data", scope: !233, file: !45, line: 134, type: !23)
!235 = !DILocation(line: 134, column: 9, scope: !233)
!236 = !DILocation(line: 136, column: 10, scope: !233)
!237 = !DILocation(line: 139, column: 10, scope: !233)
!238 = !DILocalVariable(name: "i", scope: !239, file: !45, line: 141, type: !23)
!239 = distinct !DILexicalBlock(scope: !233, file: !45, line: 140, column: 5)
!240 = !DILocation(line: 141, column: 13, scope: !239)
!241 = !DILocalVariable(name: "buffer", scope: !239, file: !45, line: 142, type: !200)
!242 = !DILocation(line: 142, column: 13, scope: !239)
!243 = !DILocation(line: 145, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !45, line: 145, column: 13)
!245 = !DILocation(line: 145, column: 18, scope: !244)
!246 = !DILocation(line: 145, column: 13, scope: !239)
!247 = !DILocation(line: 147, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !45, line: 146, column: 9)
!249 = !DILocation(line: 147, column: 13, scope: !248)
!250 = !DILocation(line: 147, column: 26, scope: !248)
!251 = !DILocation(line: 149, column: 19, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !45, line: 149, column: 13)
!253 = !DILocation(line: 149, column: 17, scope: !252)
!254 = !DILocation(line: 149, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 149, column: 13)
!256 = !DILocation(line: 149, column: 26, scope: !255)
!257 = !DILocation(line: 149, column: 13, scope: !252)
!258 = !DILocation(line: 151, column: 37, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !45, line: 150, column: 13)
!260 = !DILocation(line: 151, column: 30, scope: !259)
!261 = !DILocation(line: 151, column: 17, scope: !259)
!262 = !DILocation(line: 152, column: 13, scope: !259)
!263 = !DILocation(line: 149, column: 33, scope: !255)
!264 = !DILocation(line: 149, column: 13, scope: !255)
!265 = distinct !{!265, !257, !266, !228}
!266 = !DILocation(line: 152, column: 13, scope: !252)
!267 = !DILocation(line: 153, column: 9, scope: !248)
!268 = !DILocation(line: 156, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !244, file: !45, line: 155, column: 9)
!270 = !DILocation(line: 159, column: 1, scope: !233)
!271 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 162, type: !105, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!272 = !DILocalVariable(name: "data", scope: !271, file: !45, line: 164, type: !23)
!273 = !DILocation(line: 164, column: 9, scope: !271)
!274 = !DILocation(line: 166, column: 10, scope: !271)
!275 = !DILocalVariable(name: "recvResult", scope: !276, file: !45, line: 172, type: !23)
!276 = distinct !DILexicalBlock(scope: !271, file: !45, line: 167, column: 5)
!277 = !DILocation(line: 172, column: 13, scope: !276)
!278 = !DILocalVariable(name: "service", scope: !276, file: !45, line: 173, type: !115)
!279 = !DILocation(line: 173, column: 28, scope: !276)
!280 = !DILocalVariable(name: "connectSocket", scope: !276, file: !45, line: 174, type: !23)
!281 = !DILocation(line: 174, column: 16, scope: !276)
!282 = !DILocalVariable(name: "inputBuffer", scope: !276, file: !45, line: 175, type: !97)
!283 = !DILocation(line: 175, column: 14, scope: !276)
!284 = !DILocation(line: 176, column: 9, scope: !276)
!285 = !DILocation(line: 186, column: 29, scope: !286)
!286 = distinct !DILexicalBlock(scope: !276, file: !45, line: 177, column: 9)
!287 = !DILocation(line: 186, column: 27, scope: !286)
!288 = !DILocation(line: 187, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !45, line: 187, column: 17)
!290 = !DILocation(line: 187, column: 31, scope: !289)
!291 = !DILocation(line: 187, column: 17, scope: !286)
!292 = !DILocation(line: 189, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !45, line: 188, column: 13)
!294 = !DILocation(line: 191, column: 13, scope: !286)
!295 = !DILocation(line: 192, column: 21, scope: !286)
!296 = !DILocation(line: 192, column: 32, scope: !286)
!297 = !DILocation(line: 193, column: 39, scope: !286)
!298 = !DILocation(line: 193, column: 21, scope: !286)
!299 = !DILocation(line: 193, column: 30, scope: !286)
!300 = !DILocation(line: 193, column: 37, scope: !286)
!301 = !DILocation(line: 194, column: 32, scope: !286)
!302 = !DILocation(line: 194, column: 21, scope: !286)
!303 = !DILocation(line: 194, column: 30, scope: !286)
!304 = !DILocation(line: 195, column: 25, scope: !305)
!305 = distinct !DILexicalBlock(scope: !286, file: !45, line: 195, column: 17)
!306 = !DILocation(line: 195, column: 40, scope: !305)
!307 = !DILocation(line: 195, column: 17, scope: !305)
!308 = !DILocation(line: 195, column: 85, scope: !305)
!309 = !DILocation(line: 195, column: 17, scope: !286)
!310 = !DILocation(line: 197, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !45, line: 196, column: 13)
!312 = !DILocation(line: 201, column: 31, scope: !286)
!313 = !DILocation(line: 201, column: 46, scope: !286)
!314 = !DILocation(line: 201, column: 26, scope: !286)
!315 = !DILocation(line: 201, column: 24, scope: !286)
!316 = !DILocation(line: 202, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !286, file: !45, line: 202, column: 17)
!318 = !DILocation(line: 202, column: 28, scope: !317)
!319 = !DILocation(line: 202, column: 44, scope: !317)
!320 = !DILocation(line: 202, column: 47, scope: !317)
!321 = !DILocation(line: 202, column: 58, scope: !317)
!322 = !DILocation(line: 202, column: 17, scope: !286)
!323 = !DILocation(line: 204, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !317, file: !45, line: 203, column: 13)
!325 = !DILocation(line: 207, column: 25, scope: !286)
!326 = !DILocation(line: 207, column: 13, scope: !286)
!327 = !DILocation(line: 207, column: 37, scope: !286)
!328 = !DILocation(line: 209, column: 25, scope: !286)
!329 = !DILocation(line: 209, column: 20, scope: !286)
!330 = !DILocation(line: 209, column: 18, scope: !286)
!331 = !DILocation(line: 210, column: 9, scope: !286)
!332 = !DILocation(line: 212, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !276, file: !45, line: 212, column: 13)
!334 = !DILocation(line: 212, column: 27, scope: !333)
!335 = !DILocation(line: 212, column: 13, scope: !276)
!336 = !DILocation(line: 214, column: 26, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !45, line: 213, column: 9)
!338 = !DILocation(line: 214, column: 13, scope: !337)
!339 = !DILocation(line: 215, column: 9, scope: !337)
!340 = !DILocalVariable(name: "i", scope: !341, file: !45, line: 224, type: !23)
!341 = distinct !DILexicalBlock(scope: !271, file: !45, line: 223, column: 5)
!342 = !DILocation(line: 224, column: 13, scope: !341)
!343 = !DILocalVariable(name: "buffer", scope: !341, file: !45, line: 225, type: !200)
!344 = !DILocation(line: 225, column: 13, scope: !341)
!345 = !DILocation(line: 227, column: 13, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !45, line: 227, column: 13)
!347 = !DILocation(line: 227, column: 18, scope: !346)
!348 = !DILocation(line: 227, column: 23, scope: !346)
!349 = !DILocation(line: 227, column: 26, scope: !346)
!350 = !DILocation(line: 227, column: 31, scope: !346)
!351 = !DILocation(line: 227, column: 13, scope: !341)
!352 = !DILocation(line: 229, column: 20, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !45, line: 228, column: 9)
!354 = !DILocation(line: 229, column: 13, scope: !353)
!355 = !DILocation(line: 229, column: 26, scope: !353)
!356 = !DILocation(line: 231, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !45, line: 231, column: 13)
!358 = !DILocation(line: 231, column: 17, scope: !357)
!359 = !DILocation(line: 231, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !45, line: 231, column: 13)
!361 = !DILocation(line: 231, column: 26, scope: !360)
!362 = !DILocation(line: 231, column: 13, scope: !357)
!363 = !DILocation(line: 233, column: 37, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !45, line: 232, column: 13)
!365 = !DILocation(line: 233, column: 30, scope: !364)
!366 = !DILocation(line: 233, column: 17, scope: !364)
!367 = !DILocation(line: 234, column: 13, scope: !364)
!368 = !DILocation(line: 231, column: 33, scope: !360)
!369 = !DILocation(line: 231, column: 13, scope: !360)
!370 = distinct !{!370, !362, !371, !228}
!371 = !DILocation(line: 234, column: 13, scope: !357)
!372 = !DILocation(line: 235, column: 9, scope: !353)
!373 = !DILocation(line: 238, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !346, file: !45, line: 237, column: 9)
!375 = !DILocation(line: 241, column: 1, scope: !271)
!376 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_good", scope: !45, file: !45, line: 243, type: !105, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!377 = !DILocation(line: 245, column: 5, scope: !376)
!378 = !DILocation(line: 246, column: 5, scope: !376)
!379 = !DILocation(line: 247, column: 1, scope: !376)
!380 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !381, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !42}
!383 = !DILocalVariable(name: "line", arg: 1, scope: !380, file: !3, line: 11, type: !42)
!384 = !DILocation(line: 11, column: 25, scope: !380)
!385 = !DILocation(line: 13, column: 1, scope: !380)
!386 = !DILocation(line: 14, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !3, line: 14, column: 8)
!388 = !DILocation(line: 14, column: 13, scope: !387)
!389 = !DILocation(line: 14, column: 8, scope: !380)
!390 = !DILocation(line: 16, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 15, column: 5)
!392 = !DILocation(line: 16, column: 9, scope: !391)
!393 = !DILocation(line: 17, column: 5, scope: !391)
!394 = !DILocation(line: 18, column: 5, scope: !380)
!395 = !DILocation(line: 19, column: 1, scope: !380)
!396 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !381, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!397 = !DILocalVariable(name: "line", arg: 1, scope: !396, file: !3, line: 20, type: !42)
!398 = !DILocation(line: 20, column: 29, scope: !396)
!399 = !DILocation(line: 22, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 22, column: 8)
!401 = !DILocation(line: 22, column: 13, scope: !400)
!402 = !DILocation(line: 22, column: 8, scope: !396)
!403 = !DILocation(line: 24, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 23, column: 5)
!405 = !DILocation(line: 24, column: 9, scope: !404)
!406 = !DILocation(line: 25, column: 5, scope: !404)
!407 = !DILocation(line: 26, column: 1, scope: !396)
!408 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !409, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !413, line: 74, baseType: !23)
!413 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!414 = !DILocalVariable(name: "line", arg: 1, scope: !408, file: !3, line: 27, type: !411)
!415 = !DILocation(line: 27, column: 29, scope: !408)
!416 = !DILocation(line: 29, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !408, file: !3, line: 29, column: 8)
!418 = !DILocation(line: 29, column: 13, scope: !417)
!419 = !DILocation(line: 29, column: 8, scope: !408)
!420 = !DILocation(line: 31, column: 27, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 30, column: 5)
!422 = !DILocation(line: 31, column: 9, scope: !421)
!423 = !DILocation(line: 32, column: 5, scope: !421)
!424 = !DILocation(line: 33, column: 1, scope: !408)
!425 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !426, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !23}
!428 = !DILocalVariable(name: "intNumber", arg: 1, scope: !425, file: !3, line: 35, type: !23)
!429 = !DILocation(line: 35, column: 24, scope: !425)
!430 = !DILocation(line: 37, column: 20, scope: !425)
!431 = !DILocation(line: 37, column: 5, scope: !425)
!432 = !DILocation(line: 38, column: 1, scope: !425)
!433 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !434, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!437 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !433, file: !3, line: 40, type: !436)
!438 = !DILocation(line: 40, column: 28, scope: !433)
!439 = !DILocation(line: 42, column: 21, scope: !433)
!440 = !DILocation(line: 42, column: 5, scope: !433)
!441 = !DILocation(line: 43, column: 1, scope: !433)
!442 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !443, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!446 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !442, file: !3, line: 45, type: !445)
!447 = !DILocation(line: 45, column: 28, scope: !442)
!448 = !DILocation(line: 47, column: 20, scope: !442)
!449 = !DILocation(line: 47, column: 5, scope: !442)
!450 = !DILocation(line: 48, column: 1, scope: !442)
!451 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !452, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!455 = !DILocalVariable(name: "longNumber", arg: 1, scope: !451, file: !3, line: 50, type: !454)
!456 = !DILocation(line: 50, column: 26, scope: !451)
!457 = !DILocation(line: 52, column: 21, scope: !451)
!458 = !DILocation(line: 52, column: 5, scope: !451)
!459 = !DILocation(line: 53, column: 1, scope: !451)
!460 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !461, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !464, line: 27, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !123, line: 44, baseType: !454)
!466 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !460, file: !3, line: 55, type: !463)
!467 = !DILocation(line: 55, column: 33, scope: !460)
!468 = !DILocation(line: 57, column: 29, scope: !460)
!469 = !DILocation(line: 57, column: 5, scope: !460)
!470 = !DILocation(line: 58, column: 1, scope: !460)
!471 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !472, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !413, line: 46, baseType: !475)
!475 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!476 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !471, file: !3, line: 60, type: !474)
!477 = !DILocation(line: 60, column: 29, scope: !471)
!478 = !DILocation(line: 62, column: 21, scope: !471)
!479 = !DILocation(line: 62, column: 5, scope: !471)
!480 = !DILocation(line: 63, column: 1, scope: !471)
!481 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !482, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !43}
!484 = !DILocalVariable(name: "charHex", arg: 1, scope: !481, file: !3, line: 65, type: !43)
!485 = !DILocation(line: 65, column: 29, scope: !481)
!486 = !DILocation(line: 67, column: 22, scope: !481)
!487 = !DILocation(line: 67, column: 5, scope: !481)
!488 = !DILocation(line: 68, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !490, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !412}
!492 = !DILocalVariable(name: "wideChar", arg: 1, scope: !489, file: !3, line: 70, type: !412)
!493 = !DILocation(line: 70, column: 29, scope: !489)
!494 = !DILocalVariable(name: "s", scope: !489, file: !3, line: 74, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 64, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DILocation(line: 74, column: 13, scope: !489)
!499 = !DILocation(line: 75, column: 16, scope: !489)
!500 = !DILocation(line: 75, column: 9, scope: !489)
!501 = !DILocation(line: 75, column: 14, scope: !489)
!502 = !DILocation(line: 76, column: 9, scope: !489)
!503 = !DILocation(line: 76, column: 14, scope: !489)
!504 = !DILocation(line: 77, column: 21, scope: !489)
!505 = !DILocation(line: 77, column: 5, scope: !489)
!506 = !DILocation(line: 78, column: 1, scope: !489)
!507 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !508, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !7}
!510 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !507, file: !3, line: 80, type: !7)
!511 = !DILocation(line: 80, column: 33, scope: !507)
!512 = !DILocation(line: 82, column: 20, scope: !507)
!513 = !DILocation(line: 82, column: 5, scope: !507)
!514 = !DILocation(line: 83, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !516, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !25}
!518 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !515, file: !3, line: 85, type: !25)
!519 = !DILocation(line: 85, column: 45, scope: !515)
!520 = !DILocation(line: 87, column: 22, scope: !515)
!521 = !DILocation(line: 87, column: 5, scope: !515)
!522 = !DILocation(line: 88, column: 1, scope: !515)
!523 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !524, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!527 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !523, file: !3, line: 90, type: !526)
!528 = !DILocation(line: 90, column: 29, scope: !523)
!529 = !DILocation(line: 92, column: 20, scope: !523)
!530 = !DILocation(line: 92, column: 5, scope: !523)
!531 = !DILocation(line: 93, column: 1, scope: !523)
!532 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !533, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !537, line: 100, baseType: !538)
!537 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_516/source_code")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !537, line: 96, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !538, file: !537, line: 98, baseType: !23, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !538, file: !537, line: 99, baseType: !23, size: 32, offset: 32)
!542 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !532, file: !3, line: 95, type: !535)
!543 = !DILocation(line: 95, column: 40, scope: !532)
!544 = !DILocation(line: 97, column: 26, scope: !532)
!545 = !DILocation(line: 97, column: 47, scope: !532)
!546 = !DILocation(line: 97, column: 55, scope: !532)
!547 = !DILocation(line: 97, column: 76, scope: !532)
!548 = !DILocation(line: 97, column: 5, scope: !532)
!549 = !DILocation(line: 98, column: 1, scope: !532)
!550 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !551, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553, !474}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !550, file: !3, line: 100, type: !553)
!555 = !DILocation(line: 100, column: 38, scope: !550)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !550, file: !3, line: 100, type: !474)
!557 = !DILocation(line: 100, column: 52, scope: !550)
!558 = !DILocalVariable(name: "i", scope: !550, file: !3, line: 102, type: !474)
!559 = !DILocation(line: 102, column: 12, scope: !550)
!560 = !DILocation(line: 103, column: 12, scope: !561)
!561 = distinct !DILexicalBlock(scope: !550, file: !3, line: 103, column: 5)
!562 = !DILocation(line: 103, column: 10, scope: !561)
!563 = !DILocation(line: 103, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 103, column: 5)
!565 = !DILocation(line: 103, column: 21, scope: !564)
!566 = !DILocation(line: 103, column: 19, scope: !564)
!567 = !DILocation(line: 103, column: 5, scope: !561)
!568 = !DILocation(line: 105, column: 24, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !3, line: 104, column: 5)
!570 = !DILocation(line: 105, column: 30, scope: !569)
!571 = !DILocation(line: 105, column: 9, scope: !569)
!572 = !DILocation(line: 106, column: 5, scope: !569)
!573 = !DILocation(line: 103, column: 31, scope: !564)
!574 = !DILocation(line: 103, column: 5, scope: !564)
!575 = distinct !{!575, !567, !576, !228}
!576 = !DILocation(line: 106, column: 5, scope: !561)
!577 = !DILocation(line: 107, column: 5, scope: !550)
!578 = !DILocation(line: 108, column: 1, scope: !550)
!579 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !580, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{!474, !553, !474, !42}
!582 = !DILocalVariable(name: "bytes", arg: 1, scope: !579, file: !3, line: 113, type: !553)
!583 = !DILocation(line: 113, column: 39, scope: !579)
!584 = !DILocalVariable(name: "numBytes", arg: 2, scope: !579, file: !3, line: 113, type: !474)
!585 = !DILocation(line: 113, column: 53, scope: !579)
!586 = !DILocalVariable(name: "hex", arg: 3, scope: !579, file: !3, line: 113, type: !42)
!587 = !DILocation(line: 113, column: 71, scope: !579)
!588 = !DILocalVariable(name: "numWritten", scope: !579, file: !3, line: 115, type: !474)
!589 = !DILocation(line: 115, column: 12, scope: !579)
!590 = !DILocation(line: 121, column: 5, scope: !579)
!591 = !DILocation(line: 121, column: 12, scope: !579)
!592 = !DILocation(line: 121, column: 25, scope: !579)
!593 = !DILocation(line: 121, column: 23, scope: !579)
!594 = !DILocation(line: 121, column: 34, scope: !579)
!595 = !DILocation(line: 121, column: 37, scope: !579)
!596 = !DILocation(line: 121, column: 67, scope: !579)
!597 = !DILocation(line: 121, column: 70, scope: !579)
!598 = !DILocation(line: 0, scope: !579)
!599 = !DILocalVariable(name: "byte", scope: !600, file: !3, line: 123, type: !23)
!600 = distinct !DILexicalBlock(scope: !579, file: !3, line: 122, column: 5)
!601 = !DILocation(line: 123, column: 13, scope: !600)
!602 = !DILocation(line: 124, column: 17, scope: !600)
!603 = !DILocation(line: 124, column: 25, scope: !600)
!604 = !DILocation(line: 124, column: 23, scope: !600)
!605 = !DILocation(line: 124, column: 9, scope: !600)
!606 = !DILocation(line: 125, column: 45, scope: !600)
!607 = !DILocation(line: 125, column: 29, scope: !600)
!608 = !DILocation(line: 125, column: 9, scope: !600)
!609 = !DILocation(line: 125, column: 15, scope: !600)
!610 = !DILocation(line: 125, column: 27, scope: !600)
!611 = !DILocation(line: 126, column: 9, scope: !600)
!612 = distinct !{!612, !590, !613, !228}
!613 = !DILocation(line: 127, column: 5, scope: !579)
!614 = !DILocation(line: 129, column: 12, scope: !579)
!615 = !DILocation(line: 129, column: 5, scope: !579)
!616 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !617, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{!474, !553, !474, !411}
!619 = !DILocalVariable(name: "bytes", arg: 1, scope: !616, file: !3, line: 135, type: !553)
!620 = !DILocation(line: 135, column: 41, scope: !616)
!621 = !DILocalVariable(name: "numBytes", arg: 2, scope: !616, file: !3, line: 135, type: !474)
!622 = !DILocation(line: 135, column: 55, scope: !616)
!623 = !DILocalVariable(name: "hex", arg: 3, scope: !616, file: !3, line: 135, type: !411)
!624 = !DILocation(line: 135, column: 76, scope: !616)
!625 = !DILocalVariable(name: "numWritten", scope: !616, file: !3, line: 137, type: !474)
!626 = !DILocation(line: 137, column: 12, scope: !616)
!627 = !DILocation(line: 143, column: 5, scope: !616)
!628 = !DILocation(line: 143, column: 12, scope: !616)
!629 = !DILocation(line: 143, column: 25, scope: !616)
!630 = !DILocation(line: 143, column: 23, scope: !616)
!631 = !DILocation(line: 143, column: 34, scope: !616)
!632 = !DILocation(line: 143, column: 47, scope: !616)
!633 = !DILocation(line: 143, column: 55, scope: !616)
!634 = !DILocation(line: 143, column: 53, scope: !616)
!635 = !DILocation(line: 143, column: 37, scope: !616)
!636 = !DILocation(line: 143, column: 68, scope: !616)
!637 = !DILocation(line: 143, column: 81, scope: !616)
!638 = !DILocation(line: 143, column: 89, scope: !616)
!639 = !DILocation(line: 143, column: 87, scope: !616)
!640 = !DILocation(line: 143, column: 100, scope: !616)
!641 = !DILocation(line: 143, column: 71, scope: !616)
!642 = !DILocation(line: 0, scope: !616)
!643 = !DILocalVariable(name: "byte", scope: !644, file: !3, line: 145, type: !23)
!644 = distinct !DILexicalBlock(scope: !616, file: !3, line: 144, column: 5)
!645 = !DILocation(line: 145, column: 13, scope: !644)
!646 = !DILocation(line: 146, column: 18, scope: !644)
!647 = !DILocation(line: 146, column: 26, scope: !644)
!648 = !DILocation(line: 146, column: 24, scope: !644)
!649 = !DILocation(line: 146, column: 9, scope: !644)
!650 = !DILocation(line: 147, column: 45, scope: !644)
!651 = !DILocation(line: 147, column: 29, scope: !644)
!652 = !DILocation(line: 147, column: 9, scope: !644)
!653 = !DILocation(line: 147, column: 15, scope: !644)
!654 = !DILocation(line: 147, column: 27, scope: !644)
!655 = !DILocation(line: 148, column: 9, scope: !644)
!656 = distinct !{!656, !627, !657, !228}
!657 = !DILocation(line: 149, column: 5, scope: !616)
!658 = !DILocation(line: 151, column: 12, scope: !616)
!659 = !DILocation(line: 151, column: 5, scope: !616)
!660 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !661, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!661 = !DISubroutineType(types: !662)
!662 = !{!23}
!663 = !DILocation(line: 158, column: 5, scope: !660)
!664 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !661, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!665 = !DILocation(line: 163, column: 5, scope: !664)
!666 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !661, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!667 = !DILocation(line: 168, column: 13, scope: !666)
!668 = !DILocation(line: 168, column: 20, scope: !666)
!669 = !DILocation(line: 168, column: 5, scope: !666)
!670 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!671 = !DILocation(line: 187, column: 16, scope: !670)
!672 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!673 = !DILocation(line: 188, column: 16, scope: !672)
!674 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!675 = !DILocation(line: 189, column: 16, scope: !674)
!676 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!677 = !DILocation(line: 190, column: 16, scope: !676)
!678 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!679 = !DILocation(line: 191, column: 16, scope: !678)
!680 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!681 = !DILocation(line: 192, column: 16, scope: !680)
!682 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!683 = !DILocation(line: 193, column: 16, scope: !682)
!684 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!685 = !DILocation(line: 194, column: 16, scope: !684)
!686 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DILocation(line: 195, column: 16, scope: !686)
!688 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!689 = !DILocation(line: 198, column: 15, scope: !688)
!690 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DILocation(line: 199, column: 15, scope: !690)
!692 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!693 = !DILocation(line: 200, column: 15, scope: !692)
!694 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!695 = !DILocation(line: 201, column: 15, scope: !694)
!696 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!697 = !DILocation(line: 202, column: 15, scope: !696)
!698 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DILocation(line: 203, column: 15, scope: !698)
!700 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!701 = !DILocation(line: 204, column: 15, scope: !700)
!702 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!703 = !DILocation(line: 205, column: 15, scope: !702)
!704 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!705 = !DILocation(line: 206, column: 15, scope: !704)
