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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad() #0 !dbg !104 {
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
define dso_local void @goodB2G1() #0 !dbg !233 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 -1, i32* %data, align 4, !dbg !236
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !237, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !242, metadata !DIExpression()), !dbg !243
  store i32 -1, i32* %connectSocket, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !244, metadata !DIExpression()), !dbg !245
  br label %do.body, !dbg !246

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !247
  store i32 %call, i32* %connectSocket, align 4, !dbg !249
  %0 = load i32, i32* %connectSocket, align 4, !dbg !250
  %cmp = icmp eq i32 %0, -1, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !254

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !256
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !256
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !257
  store i16 2, i16* %sin_family, align 4, !dbg !258
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !259
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !260
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !261
  store i32 %call1, i32* %s_addr, align 4, !dbg !262
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !263
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !264
  store i16 %call2, i16* %sin_port, align 2, !dbg !265
  %2 = load i32, i32* %connectSocket, align 4, !dbg !266
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !268
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !269
  %cmp4 = icmp eq i32 %call3, -1, !dbg !270
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !271

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !272

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !274
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !275
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !276
  %conv = trunc i64 %call7 to i32, !dbg !276
  store i32 %conv, i32* %recvResult, align 4, !dbg !277
  %5 = load i32, i32* %recvResult, align 4, !dbg !278
  %cmp8 = icmp eq i32 %5, -1, !dbg !280
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !281

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !282
  %cmp10 = icmp eq i32 %6, 0, !dbg !283
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !284

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !285

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !287
  %idxprom = sext i32 %7 to i64, !dbg !288
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !288
  store i8 0, i8* %arrayidx, align 1, !dbg !289
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !290
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !291
  store i32 %call15, i32* %data, align 4, !dbg !292
  br label %do.end, !dbg !293

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !294
  %cmp16 = icmp ne i32 %8, -1, !dbg !296
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !297

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !298
  %call19 = call i32 @close(i32 %9), !dbg !300
  br label %if.end20, !dbg !301

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !305, metadata !DIExpression()), !dbg !306
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !306
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !306
  %11 = load i32, i32* %data, align 4, !dbg !307
  %cmp21 = icmp sge i32 %11, 0, !dbg !309
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !310

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !311
  %cmp23 = icmp slt i32 %12, 10, !dbg !312
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !313

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !314
  %idxprom26 = sext i32 %13 to i64, !dbg !316
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !316
  store i32 1, i32* %arrayidx27, align 4, !dbg !317
  store i32 0, i32* %i, align 4, !dbg !318
  br label %for.cond, !dbg !320

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !321
  %cmp28 = icmp slt i32 %14, 10, !dbg !323
  br i1 %cmp28, label %for.body, label %for.end, !dbg !324

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !325
  %idxprom30 = sext i32 %15 to i64, !dbg !327
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !327
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !327
  call void @printIntLine(i32 %16), !dbg !328
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !330
  %inc = add nsw i32 %17, 1, !dbg !330
  store i32 %inc, i32* %i, align 4, !dbg !330
  br label %for.cond, !dbg !331, !llvm.loop !332

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !334

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !335
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !338 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 -1, i32* %data, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !342, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !347, metadata !DIExpression()), !dbg !348
  store i32 -1, i32* %connectSocket, align 4, !dbg !348
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !349, metadata !DIExpression()), !dbg !350
  br label %do.body, !dbg !351

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !352
  store i32 %call, i32* %connectSocket, align 4, !dbg !354
  %0 = load i32, i32* %connectSocket, align 4, !dbg !355
  %cmp = icmp eq i32 %0, -1, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !359

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !361
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !361
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !362
  store i16 2, i16* %sin_family, align 4, !dbg !363
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !364
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !365
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !366
  store i32 %call1, i32* %s_addr, align 4, !dbg !367
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !368
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !369
  store i16 %call2, i16* %sin_port, align 2, !dbg !370
  %2 = load i32, i32* %connectSocket, align 4, !dbg !371
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !373
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !374
  %cmp4 = icmp eq i32 %call3, -1, !dbg !375
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !376

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !377

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !379
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !380
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !381
  %conv = trunc i64 %call7 to i32, !dbg !381
  store i32 %conv, i32* %recvResult, align 4, !dbg !382
  %5 = load i32, i32* %recvResult, align 4, !dbg !383
  %cmp8 = icmp eq i32 %5, -1, !dbg !385
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !387
  %cmp10 = icmp eq i32 %6, 0, !dbg !388
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !389

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !390

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !392
  %idxprom = sext i32 %7 to i64, !dbg !393
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !393
  store i8 0, i8* %arrayidx, align 1, !dbg !394
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !395
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !396
  store i32 %call15, i32* %data, align 4, !dbg !397
  br label %do.end, !dbg !398

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !399
  %cmp16 = icmp ne i32 %8, -1, !dbg !401
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !402

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !403
  %call19 = call i32 @close(i32 %9), !dbg !405
  br label %if.end20, !dbg !406

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !410, metadata !DIExpression()), !dbg !411
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !411
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !411
  %11 = load i32, i32* %data, align 4, !dbg !412
  %cmp21 = icmp sge i32 %11, 0, !dbg !414
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !415

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !416
  %cmp23 = icmp slt i32 %12, 10, !dbg !417
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !418

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !419
  %idxprom26 = sext i32 %13 to i64, !dbg !421
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !421
  store i32 1, i32* %arrayidx27, align 4, !dbg !422
  store i32 0, i32* %i, align 4, !dbg !423
  br label %for.cond, !dbg !425

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !426
  %cmp28 = icmp slt i32 %14, 10, !dbg !428
  br i1 %cmp28, label %for.body, label %for.end, !dbg !429

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !430
  %idxprom30 = sext i32 %15 to i64, !dbg !432
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !432
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !432
  call void @printIntLine(i32 %16), !dbg !433
  br label %for.inc, !dbg !434

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !435
  %inc = add nsw i32 %17, 1, !dbg !435
  store i32 %inc, i32* %i, align 4, !dbg !435
  br label %for.cond, !dbg !436, !llvm.loop !437

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !439

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !440
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !443 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !444, metadata !DIExpression()), !dbg !445
  store i32 -1, i32* %data, align 4, !dbg !446
  store i32 7, i32* %data, align 4, !dbg !447
  call void @llvm.dbg.declare(metadata i32* %i, metadata !448, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !452
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !452
  %1 = load i32, i32* %data, align 4, !dbg !453
  %cmp = icmp sge i32 %1, 0, !dbg !455
  br i1 %cmp, label %if.then, label %if.else, !dbg !456

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !457
  %idxprom = sext i32 %2 to i64, !dbg !459
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !459
  store i32 1, i32* %arrayidx, align 4, !dbg !460
  store i32 0, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !463

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !464
  %cmp1 = icmp slt i32 %3, 10, !dbg !466
  br i1 %cmp1, label %for.body, label %for.end, !dbg !467

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !468
  %idxprom2 = sext i32 %4 to i64, !dbg !470
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !470
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !470
  call void @printIntLine(i32 %5), !dbg !471
  br label %for.inc, !dbg !472

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !473
  %inc = add nsw i32 %6, 1, !dbg !473
  store i32 %inc, i32* %i, align 4, !dbg !473
  br label %for.cond, !dbg !474, !llvm.loop !475

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !477

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !478
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !481 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 -1, i32* %data, align 4, !dbg !484
  store i32 7, i32* %data, align 4, !dbg !485
  call void @llvm.dbg.declare(metadata i32* %i, metadata !486, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !490
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !490
  %1 = load i32, i32* %data, align 4, !dbg !491
  %cmp = icmp sge i32 %1, 0, !dbg !493
  br i1 %cmp, label %if.then, label %if.else, !dbg !494

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !495
  %idxprom = sext i32 %2 to i64, !dbg !497
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !497
  store i32 1, i32* %arrayidx, align 4, !dbg !498
  store i32 0, i32* %i, align 4, !dbg !499
  br label %for.cond, !dbg !501

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !502
  %cmp1 = icmp slt i32 %3, 10, !dbg !504
  br i1 %cmp1, label %for.body, label %for.end, !dbg !505

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !506
  %idxprom2 = sext i32 %4 to i64, !dbg !508
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !508
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !508
  call void @printIntLine(i32 %5), !dbg !509
  br label %for.inc, !dbg !510

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !511
  %inc = add nsw i32 %6, 1, !dbg !511
  store i32 %inc, i32* %i, align 4, !dbg !511
  br label %for.cond, !dbg !512, !llvm.loop !513

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !515

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !516
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good() #0 !dbg !519 {
entry:
  call void @goodB2G1(), !dbg !520
  call void @goodB2G2(), !dbg !521
  call void @goodG2B1(), !dbg !522
  call void @goodG2B2(), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !525 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !530
  %0 = load i8*, i8** %line.addr, align 8, !dbg !531
  %cmp = icmp ne i8* %0, null, !dbg !533
  br i1 %cmp, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !535
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !537
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !539
  ret void, !dbg !540
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !541 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load i8*, i8** %line.addr, align 8, !dbg !544
  %cmp = icmp ne i8* %0, null, !dbg !546
  br i1 %cmp, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !550
  br label %if.end, !dbg !551

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !553 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i32*, i32** %line.addr, align 8, !dbg !561
  %cmp = icmp ne i32* %0, null, !dbg !563
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !565
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !567
  br label %if.end, !dbg !568

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !569
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !570 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !575
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !578 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !584
  %conv = sext i16 %0 to i32, !dbg !584
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !587 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !593
  %conv = fpext float %0 to double, !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !596 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !605 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !616 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !621, metadata !DIExpression()), !dbg !622
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !623
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !626 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !629, metadata !DIExpression()), !dbg !630
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !631
  %conv = sext i8 %0 to i32, !dbg !631
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !634 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !637, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !639, metadata !DIExpression()), !dbg !643
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !644
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !645
  store i32 %0, i32* %arrayidx, align 4, !dbg !646
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !647
  store i32 0, i32* %arrayidx1, align 4, !dbg !648
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !649
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !652 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !655, metadata !DIExpression()), !dbg !656
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !657
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !660 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !663, metadata !DIExpression()), !dbg !664
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !665
  %conv = zext i8 %0 to i32, !dbg !665
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !666
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !668 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !674
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !677 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !687, metadata !DIExpression()), !dbg !688
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !689
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !690
  %1 = load i32, i32* %intOne, align 4, !dbg !690
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !691
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !692
  %3 = load i32, i32* %intTwo, align 4, !dbg !692
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !695 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !699, metadata !DIExpression()), !dbg !700
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i64* %i, metadata !703, metadata !DIExpression()), !dbg !704
  store i64 0, i64* %i, align 8, !dbg !705
  br label %for.cond, !dbg !707

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !708
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !710
  %cmp = icmp ult i64 %0, %1, !dbg !711
  br i1 %cmp, label %for.body, label %for.end, !dbg !712

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !713
  %3 = load i64, i64* %i, align 8, !dbg !715
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !713
  %4 = load i8, i8* %arrayidx, align 1, !dbg !713
  %conv = zext i8 %4 to i32, !dbg !713
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !716
  br label %for.inc, !dbg !717

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !718
  %inc = add i64 %5, 1, !dbg !718
  store i64 %inc, i64* %i, align 8, !dbg !718
  br label %for.cond, !dbg !719, !llvm.loop !720

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !722
  ret void, !dbg !723
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !724 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !727, metadata !DIExpression()), !dbg !728
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !729, metadata !DIExpression()), !dbg !730
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !731, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !733, metadata !DIExpression()), !dbg !734
  store i64 0, i64* %numWritten, align 8, !dbg !734
  br label %while.cond, !dbg !735

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !736
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !737
  %cmp = icmp ult i64 %0, %1, !dbg !738
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !739

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !740
  %2 = load i16*, i16** %call, align 8, !dbg !740
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !740
  %4 = load i64, i64* %numWritten, align 8, !dbg !740
  %mul = mul i64 2, %4, !dbg !740
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !740
  %5 = load i8, i8* %arrayidx, align 1, !dbg !740
  %conv = sext i8 %5 to i32, !dbg !740
  %idxprom = sext i32 %conv to i64, !dbg !740
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !740
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !740
  %conv2 = zext i16 %6 to i32, !dbg !740
  %and = and i32 %conv2, 4096, !dbg !740
  %tobool = icmp ne i32 %and, 0, !dbg !740
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !741

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !742
  %7 = load i16*, i16** %call3, align 8, !dbg !742
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !742
  %9 = load i64, i64* %numWritten, align 8, !dbg !742
  %mul4 = mul i64 2, %9, !dbg !742
  %add = add i64 %mul4, 1, !dbg !742
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !742
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !742
  %conv6 = sext i8 %10 to i32, !dbg !742
  %idxprom7 = sext i32 %conv6 to i64, !dbg !742
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !742
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !742
  %conv9 = zext i16 %11 to i32, !dbg !742
  %and10 = and i32 %conv9, 4096, !dbg !742
  %tobool11 = icmp ne i32 %and10, 0, !dbg !741
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !743
  br i1 %12, label %while.body, label %while.end, !dbg !735

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !744, metadata !DIExpression()), !dbg !746
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !747
  %14 = load i64, i64* %numWritten, align 8, !dbg !748
  %mul12 = mul i64 2, %14, !dbg !749
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !747
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !750
  %15 = load i32, i32* %byte, align 4, !dbg !751
  %conv15 = trunc i32 %15 to i8, !dbg !752
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !753
  %17 = load i64, i64* %numWritten, align 8, !dbg !754
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !753
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !755
  %18 = load i64, i64* %numWritten, align 8, !dbg !756
  %inc = add i64 %18, 1, !dbg !756
  store i64 %inc, i64* %numWritten, align 8, !dbg !756
  br label %while.cond, !dbg !735, !llvm.loop !757

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !759
  ret i64 %19, !dbg !760
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !761 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !764, metadata !DIExpression()), !dbg !765
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !766, metadata !DIExpression()), !dbg !767
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !768, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 0, i64* %numWritten, align 8, !dbg !771
  br label %while.cond, !dbg !772

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !773
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !774
  %cmp = icmp ult i64 %0, %1, !dbg !775
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !776

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !777
  %3 = load i64, i64* %numWritten, align 8, !dbg !778
  %mul = mul i64 2, %3, !dbg !779
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !777
  %4 = load i32, i32* %arrayidx, align 4, !dbg !777
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !780
  %tobool = icmp ne i32 %call, 0, !dbg !780
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !781

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !782
  %6 = load i64, i64* %numWritten, align 8, !dbg !783
  %mul1 = mul i64 2, %6, !dbg !784
  %add = add i64 %mul1, 1, !dbg !785
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !782
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !782
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !786
  %tobool4 = icmp ne i32 %call3, 0, !dbg !781
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !787
  br i1 %8, label %while.body, label %while.end, !dbg !772

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !788, metadata !DIExpression()), !dbg !790
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !791
  %10 = load i64, i64* %numWritten, align 8, !dbg !792
  %mul5 = mul i64 2, %10, !dbg !793
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !791
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !794
  %11 = load i32, i32* %byte, align 4, !dbg !795
  %conv = trunc i32 %11 to i8, !dbg !796
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !797
  %13 = load i64, i64* %numWritten, align 8, !dbg !798
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !797
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !799
  %14 = load i64, i64* %numWritten, align 8, !dbg !800
  %inc = add i64 %14, 1, !dbg !800
  store i64 %inc, i64* %numWritten, align 8, !dbg !800
  br label %while.cond, !dbg !772, !llvm.loop !801

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !803
  ret i64 %15, !dbg !804
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !805 {
entry:
  ret i32 1, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !809 {
entry:
  ret i32 0, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !811 {
entry:
  %call = call i32 @rand() #7, !dbg !812
  %rem = srem i32 %call, 2, !dbg !813
  ret i32 %rem, !dbg !814
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !815 {
entry:
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !817 {
entry:
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !819 {
entry:
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !849 {
entry:
  ret void, !dbg !850
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_530/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_530/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocalVariable(name: "recvResult", scope: !112, file: !45, line: 58, type: !23)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 53, column: 5)
!113 = !DILocation(line: 58, column: 13, scope: !112)
!114 = !DILocalVariable(name: "service", scope: !112, file: !45, line: 59, type: !115)
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
!135 = !DILocation(line: 59, column: 28, scope: !112)
!136 = !DILocalVariable(name: "connectSocket", scope: !112, file: !45, line: 60, type: !23)
!137 = !DILocation(line: 60, column: 16, scope: !112)
!138 = !DILocalVariable(name: "inputBuffer", scope: !112, file: !45, line: 61, type: !97)
!139 = !DILocation(line: 61, column: 14, scope: !112)
!140 = !DILocation(line: 62, column: 9, scope: !112)
!141 = !DILocation(line: 72, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !112, file: !45, line: 63, column: 9)
!143 = !DILocation(line: 72, column: 27, scope: !142)
!144 = !DILocation(line: 73, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 73, column: 17)
!146 = !DILocation(line: 73, column: 31, scope: !145)
!147 = !DILocation(line: 73, column: 17, scope: !142)
!148 = !DILocation(line: 75, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !45, line: 74, column: 13)
!150 = !DILocation(line: 77, column: 13, scope: !142)
!151 = !DILocation(line: 78, column: 21, scope: !142)
!152 = !DILocation(line: 78, column: 32, scope: !142)
!153 = !DILocation(line: 79, column: 39, scope: !142)
!154 = !DILocation(line: 79, column: 21, scope: !142)
!155 = !DILocation(line: 79, column: 30, scope: !142)
!156 = !DILocation(line: 79, column: 37, scope: !142)
!157 = !DILocation(line: 80, column: 32, scope: !142)
!158 = !DILocation(line: 80, column: 21, scope: !142)
!159 = !DILocation(line: 80, column: 30, scope: !142)
!160 = !DILocation(line: 81, column: 25, scope: !161)
!161 = distinct !DILexicalBlock(scope: !142, file: !45, line: 81, column: 17)
!162 = !DILocation(line: 81, column: 40, scope: !161)
!163 = !DILocation(line: 81, column: 17, scope: !161)
!164 = !DILocation(line: 81, column: 85, scope: !161)
!165 = !DILocation(line: 81, column: 17, scope: !142)
!166 = !DILocation(line: 83, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !45, line: 82, column: 13)
!168 = !DILocation(line: 87, column: 31, scope: !142)
!169 = !DILocation(line: 87, column: 46, scope: !142)
!170 = !DILocation(line: 87, column: 26, scope: !142)
!171 = !DILocation(line: 87, column: 24, scope: !142)
!172 = !DILocation(line: 88, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !142, file: !45, line: 88, column: 17)
!174 = !DILocation(line: 88, column: 28, scope: !173)
!175 = !DILocation(line: 88, column: 44, scope: !173)
!176 = !DILocation(line: 88, column: 47, scope: !173)
!177 = !DILocation(line: 88, column: 58, scope: !173)
!178 = !DILocation(line: 88, column: 17, scope: !142)
!179 = !DILocation(line: 90, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !45, line: 89, column: 13)
!181 = !DILocation(line: 93, column: 25, scope: !142)
!182 = !DILocation(line: 93, column: 13, scope: !142)
!183 = !DILocation(line: 93, column: 37, scope: !142)
!184 = !DILocation(line: 95, column: 25, scope: !142)
!185 = !DILocation(line: 95, column: 20, scope: !142)
!186 = !DILocation(line: 95, column: 18, scope: !142)
!187 = !DILocation(line: 96, column: 9, scope: !142)
!188 = !DILocation(line: 98, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !112, file: !45, line: 98, column: 13)
!190 = !DILocation(line: 98, column: 27, scope: !189)
!191 = !DILocation(line: 98, column: 13, scope: !112)
!192 = !DILocation(line: 100, column: 26, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !45, line: 99, column: 9)
!194 = !DILocation(line: 100, column: 13, scope: !193)
!195 = !DILocation(line: 101, column: 9, scope: !193)
!196 = !DILocalVariable(name: "i", scope: !197, file: !45, line: 119, type: !23)
!197 = distinct !DILexicalBlock(scope: !104, file: !45, line: 118, column: 5)
!198 = !DILocation(line: 119, column: 13, scope: !197)
!199 = !DILocalVariable(name: "buffer", scope: !197, file: !45, line: 120, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DILocation(line: 120, column: 13, scope: !197)
!204 = !DILocation(line: 123, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !45, line: 123, column: 13)
!206 = !DILocation(line: 123, column: 18, scope: !205)
!207 = !DILocation(line: 123, column: 13, scope: !197)
!208 = !DILocation(line: 125, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !45, line: 124, column: 9)
!210 = !DILocation(line: 125, column: 13, scope: !209)
!211 = !DILocation(line: 125, column: 26, scope: !209)
!212 = !DILocation(line: 127, column: 19, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !45, line: 127, column: 13)
!214 = !DILocation(line: 127, column: 17, scope: !213)
!215 = !DILocation(line: 127, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !45, line: 127, column: 13)
!217 = !DILocation(line: 127, column: 26, scope: !216)
!218 = !DILocation(line: 127, column: 13, scope: !213)
!219 = !DILocation(line: 129, column: 37, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 128, column: 13)
!221 = !DILocation(line: 129, column: 30, scope: !220)
!222 = !DILocation(line: 129, column: 17, scope: !220)
!223 = !DILocation(line: 130, column: 13, scope: !220)
!224 = !DILocation(line: 127, column: 33, scope: !216)
!225 = !DILocation(line: 127, column: 13, scope: !216)
!226 = distinct !{!226, !218, !227, !228}
!227 = !DILocation(line: 130, column: 13, scope: !213)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !DILocation(line: 131, column: 9, scope: !209)
!230 = !DILocation(line: 134, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !205, file: !45, line: 133, column: 9)
!232 = !DILocation(line: 143, column: 1, scope: !104)
!233 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 150, type: !105, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!234 = !DILocalVariable(name: "data", scope: !233, file: !45, line: 152, type: !23)
!235 = !DILocation(line: 152, column: 9, scope: !233)
!236 = !DILocation(line: 154, column: 10, scope: !233)
!237 = !DILocalVariable(name: "recvResult", scope: !238, file: !45, line: 163, type: !23)
!238 = distinct !DILexicalBlock(scope: !233, file: !45, line: 158, column: 5)
!239 = !DILocation(line: 163, column: 13, scope: !238)
!240 = !DILocalVariable(name: "service", scope: !238, file: !45, line: 164, type: !115)
!241 = !DILocation(line: 164, column: 28, scope: !238)
!242 = !DILocalVariable(name: "connectSocket", scope: !238, file: !45, line: 165, type: !23)
!243 = !DILocation(line: 165, column: 16, scope: !238)
!244 = !DILocalVariable(name: "inputBuffer", scope: !238, file: !45, line: 166, type: !97)
!245 = !DILocation(line: 166, column: 14, scope: !238)
!246 = !DILocation(line: 167, column: 9, scope: !238)
!247 = !DILocation(line: 177, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !238, file: !45, line: 168, column: 9)
!249 = !DILocation(line: 177, column: 27, scope: !248)
!250 = !DILocation(line: 178, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !45, line: 178, column: 17)
!252 = !DILocation(line: 178, column: 31, scope: !251)
!253 = !DILocation(line: 178, column: 17, scope: !248)
!254 = !DILocation(line: 180, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !45, line: 179, column: 13)
!256 = !DILocation(line: 182, column: 13, scope: !248)
!257 = !DILocation(line: 183, column: 21, scope: !248)
!258 = !DILocation(line: 183, column: 32, scope: !248)
!259 = !DILocation(line: 184, column: 39, scope: !248)
!260 = !DILocation(line: 184, column: 21, scope: !248)
!261 = !DILocation(line: 184, column: 30, scope: !248)
!262 = !DILocation(line: 184, column: 37, scope: !248)
!263 = !DILocation(line: 185, column: 32, scope: !248)
!264 = !DILocation(line: 185, column: 21, scope: !248)
!265 = !DILocation(line: 185, column: 30, scope: !248)
!266 = !DILocation(line: 186, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !248, file: !45, line: 186, column: 17)
!268 = !DILocation(line: 186, column: 40, scope: !267)
!269 = !DILocation(line: 186, column: 17, scope: !267)
!270 = !DILocation(line: 186, column: 85, scope: !267)
!271 = !DILocation(line: 186, column: 17, scope: !248)
!272 = !DILocation(line: 188, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !45, line: 187, column: 13)
!274 = !DILocation(line: 192, column: 31, scope: !248)
!275 = !DILocation(line: 192, column: 46, scope: !248)
!276 = !DILocation(line: 192, column: 26, scope: !248)
!277 = !DILocation(line: 192, column: 24, scope: !248)
!278 = !DILocation(line: 193, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !248, file: !45, line: 193, column: 17)
!280 = !DILocation(line: 193, column: 28, scope: !279)
!281 = !DILocation(line: 193, column: 44, scope: !279)
!282 = !DILocation(line: 193, column: 47, scope: !279)
!283 = !DILocation(line: 193, column: 58, scope: !279)
!284 = !DILocation(line: 193, column: 17, scope: !248)
!285 = !DILocation(line: 195, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !45, line: 194, column: 13)
!287 = !DILocation(line: 198, column: 25, scope: !248)
!288 = !DILocation(line: 198, column: 13, scope: !248)
!289 = !DILocation(line: 198, column: 37, scope: !248)
!290 = !DILocation(line: 200, column: 25, scope: !248)
!291 = !DILocation(line: 200, column: 20, scope: !248)
!292 = !DILocation(line: 200, column: 18, scope: !248)
!293 = !DILocation(line: 201, column: 9, scope: !248)
!294 = !DILocation(line: 203, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !238, file: !45, line: 203, column: 13)
!296 = !DILocation(line: 203, column: 27, scope: !295)
!297 = !DILocation(line: 203, column: 13, scope: !238)
!298 = !DILocation(line: 205, column: 26, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !45, line: 204, column: 9)
!300 = !DILocation(line: 205, column: 13, scope: !299)
!301 = !DILocation(line: 206, column: 9, scope: !299)
!302 = !DILocalVariable(name: "i", scope: !303, file: !45, line: 228, type: !23)
!303 = distinct !DILexicalBlock(scope: !233, file: !45, line: 227, column: 5)
!304 = !DILocation(line: 228, column: 13, scope: !303)
!305 = !DILocalVariable(name: "buffer", scope: !303, file: !45, line: 229, type: !200)
!306 = !DILocation(line: 229, column: 13, scope: !303)
!307 = !DILocation(line: 231, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !45, line: 231, column: 13)
!309 = !DILocation(line: 231, column: 18, scope: !308)
!310 = !DILocation(line: 231, column: 23, scope: !308)
!311 = !DILocation(line: 231, column: 26, scope: !308)
!312 = !DILocation(line: 231, column: 31, scope: !308)
!313 = !DILocation(line: 231, column: 13, scope: !303)
!314 = !DILocation(line: 233, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !45, line: 232, column: 9)
!316 = !DILocation(line: 233, column: 13, scope: !315)
!317 = !DILocation(line: 233, column: 26, scope: !315)
!318 = !DILocation(line: 235, column: 19, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !45, line: 235, column: 13)
!320 = !DILocation(line: 235, column: 17, scope: !319)
!321 = !DILocation(line: 235, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !45, line: 235, column: 13)
!323 = !DILocation(line: 235, column: 26, scope: !322)
!324 = !DILocation(line: 235, column: 13, scope: !319)
!325 = !DILocation(line: 237, column: 37, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !45, line: 236, column: 13)
!327 = !DILocation(line: 237, column: 30, scope: !326)
!328 = !DILocation(line: 237, column: 17, scope: !326)
!329 = !DILocation(line: 238, column: 13, scope: !326)
!330 = !DILocation(line: 235, column: 33, scope: !322)
!331 = !DILocation(line: 235, column: 13, scope: !322)
!332 = distinct !{!332, !324, !333, !228}
!333 = !DILocation(line: 238, column: 13, scope: !319)
!334 = !DILocation(line: 239, column: 9, scope: !315)
!335 = !DILocation(line: 242, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !308, file: !45, line: 241, column: 9)
!337 = !DILocation(line: 247, column: 1, scope: !233)
!338 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 250, type: !105, scopeLine: 251, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!339 = !DILocalVariable(name: "data", scope: !338, file: !45, line: 252, type: !23)
!340 = !DILocation(line: 252, column: 9, scope: !338)
!341 = !DILocation(line: 254, column: 10, scope: !338)
!342 = !DILocalVariable(name: "recvResult", scope: !343, file: !45, line: 263, type: !23)
!343 = distinct !DILexicalBlock(scope: !338, file: !45, line: 258, column: 5)
!344 = !DILocation(line: 263, column: 13, scope: !343)
!345 = !DILocalVariable(name: "service", scope: !343, file: !45, line: 264, type: !115)
!346 = !DILocation(line: 264, column: 28, scope: !343)
!347 = !DILocalVariable(name: "connectSocket", scope: !343, file: !45, line: 265, type: !23)
!348 = !DILocation(line: 265, column: 16, scope: !343)
!349 = !DILocalVariable(name: "inputBuffer", scope: !343, file: !45, line: 266, type: !97)
!350 = !DILocation(line: 266, column: 14, scope: !343)
!351 = !DILocation(line: 267, column: 9, scope: !343)
!352 = !DILocation(line: 277, column: 29, scope: !353)
!353 = distinct !DILexicalBlock(scope: !343, file: !45, line: 268, column: 9)
!354 = !DILocation(line: 277, column: 27, scope: !353)
!355 = !DILocation(line: 278, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !45, line: 278, column: 17)
!357 = !DILocation(line: 278, column: 31, scope: !356)
!358 = !DILocation(line: 278, column: 17, scope: !353)
!359 = !DILocation(line: 280, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !45, line: 279, column: 13)
!361 = !DILocation(line: 282, column: 13, scope: !353)
!362 = !DILocation(line: 283, column: 21, scope: !353)
!363 = !DILocation(line: 283, column: 32, scope: !353)
!364 = !DILocation(line: 284, column: 39, scope: !353)
!365 = !DILocation(line: 284, column: 21, scope: !353)
!366 = !DILocation(line: 284, column: 30, scope: !353)
!367 = !DILocation(line: 284, column: 37, scope: !353)
!368 = !DILocation(line: 285, column: 32, scope: !353)
!369 = !DILocation(line: 285, column: 21, scope: !353)
!370 = !DILocation(line: 285, column: 30, scope: !353)
!371 = !DILocation(line: 286, column: 25, scope: !372)
!372 = distinct !DILexicalBlock(scope: !353, file: !45, line: 286, column: 17)
!373 = !DILocation(line: 286, column: 40, scope: !372)
!374 = !DILocation(line: 286, column: 17, scope: !372)
!375 = !DILocation(line: 286, column: 85, scope: !372)
!376 = !DILocation(line: 286, column: 17, scope: !353)
!377 = !DILocation(line: 288, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !45, line: 287, column: 13)
!379 = !DILocation(line: 292, column: 31, scope: !353)
!380 = !DILocation(line: 292, column: 46, scope: !353)
!381 = !DILocation(line: 292, column: 26, scope: !353)
!382 = !DILocation(line: 292, column: 24, scope: !353)
!383 = !DILocation(line: 293, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !353, file: !45, line: 293, column: 17)
!385 = !DILocation(line: 293, column: 28, scope: !384)
!386 = !DILocation(line: 293, column: 44, scope: !384)
!387 = !DILocation(line: 293, column: 47, scope: !384)
!388 = !DILocation(line: 293, column: 58, scope: !384)
!389 = !DILocation(line: 293, column: 17, scope: !353)
!390 = !DILocation(line: 295, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !45, line: 294, column: 13)
!392 = !DILocation(line: 298, column: 25, scope: !353)
!393 = !DILocation(line: 298, column: 13, scope: !353)
!394 = !DILocation(line: 298, column: 37, scope: !353)
!395 = !DILocation(line: 300, column: 25, scope: !353)
!396 = !DILocation(line: 300, column: 20, scope: !353)
!397 = !DILocation(line: 300, column: 18, scope: !353)
!398 = !DILocation(line: 301, column: 9, scope: !353)
!399 = !DILocation(line: 303, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !343, file: !45, line: 303, column: 13)
!401 = !DILocation(line: 303, column: 27, scope: !400)
!402 = !DILocation(line: 303, column: 13, scope: !343)
!403 = !DILocation(line: 305, column: 26, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !45, line: 304, column: 9)
!405 = !DILocation(line: 305, column: 13, scope: !404)
!406 = !DILocation(line: 306, column: 9, scope: !404)
!407 = !DILocalVariable(name: "i", scope: !408, file: !45, line: 324, type: !23)
!408 = distinct !DILexicalBlock(scope: !338, file: !45, line: 323, column: 5)
!409 = !DILocation(line: 324, column: 13, scope: !408)
!410 = !DILocalVariable(name: "buffer", scope: !408, file: !45, line: 325, type: !200)
!411 = !DILocation(line: 325, column: 13, scope: !408)
!412 = !DILocation(line: 327, column: 13, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !45, line: 327, column: 13)
!414 = !DILocation(line: 327, column: 18, scope: !413)
!415 = !DILocation(line: 327, column: 23, scope: !413)
!416 = !DILocation(line: 327, column: 26, scope: !413)
!417 = !DILocation(line: 327, column: 31, scope: !413)
!418 = !DILocation(line: 327, column: 13, scope: !408)
!419 = !DILocation(line: 329, column: 20, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !45, line: 328, column: 9)
!421 = !DILocation(line: 329, column: 13, scope: !420)
!422 = !DILocation(line: 329, column: 26, scope: !420)
!423 = !DILocation(line: 331, column: 19, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !45, line: 331, column: 13)
!425 = !DILocation(line: 331, column: 17, scope: !424)
!426 = !DILocation(line: 331, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !45, line: 331, column: 13)
!428 = !DILocation(line: 331, column: 26, scope: !427)
!429 = !DILocation(line: 331, column: 13, scope: !424)
!430 = !DILocation(line: 333, column: 37, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !45, line: 332, column: 13)
!432 = !DILocation(line: 333, column: 30, scope: !431)
!433 = !DILocation(line: 333, column: 17, scope: !431)
!434 = !DILocation(line: 334, column: 13, scope: !431)
!435 = !DILocation(line: 331, column: 33, scope: !427)
!436 = !DILocation(line: 331, column: 13, scope: !427)
!437 = distinct !{!437, !429, !438, !228}
!438 = !DILocation(line: 334, column: 13, scope: !424)
!439 = !DILocation(line: 335, column: 9, scope: !420)
!440 = !DILocation(line: 338, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !413, file: !45, line: 337, column: 9)
!442 = !DILocation(line: 347, column: 1, scope: !338)
!443 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 350, type: !105, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!444 = !DILocalVariable(name: "data", scope: !443, file: !45, line: 352, type: !23)
!445 = !DILocation(line: 352, column: 9, scope: !443)
!446 = !DILocation(line: 354, column: 10, scope: !443)
!447 = !DILocation(line: 364, column: 14, scope: !443)
!448 = !DILocalVariable(name: "i", scope: !449, file: !45, line: 371, type: !23)
!449 = distinct !DILexicalBlock(scope: !443, file: !45, line: 370, column: 5)
!450 = !DILocation(line: 371, column: 13, scope: !449)
!451 = !DILocalVariable(name: "buffer", scope: !449, file: !45, line: 372, type: !200)
!452 = !DILocation(line: 372, column: 13, scope: !449)
!453 = !DILocation(line: 375, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !45, line: 375, column: 13)
!455 = !DILocation(line: 375, column: 18, scope: !454)
!456 = !DILocation(line: 375, column: 13, scope: !449)
!457 = !DILocation(line: 377, column: 20, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !45, line: 376, column: 9)
!459 = !DILocation(line: 377, column: 13, scope: !458)
!460 = !DILocation(line: 377, column: 26, scope: !458)
!461 = !DILocation(line: 379, column: 19, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !45, line: 379, column: 13)
!463 = !DILocation(line: 379, column: 17, scope: !462)
!464 = !DILocation(line: 379, column: 24, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !45, line: 379, column: 13)
!466 = !DILocation(line: 379, column: 26, scope: !465)
!467 = !DILocation(line: 379, column: 13, scope: !462)
!468 = !DILocation(line: 381, column: 37, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !45, line: 380, column: 13)
!470 = !DILocation(line: 381, column: 30, scope: !469)
!471 = !DILocation(line: 381, column: 17, scope: !469)
!472 = !DILocation(line: 382, column: 13, scope: !469)
!473 = !DILocation(line: 379, column: 33, scope: !465)
!474 = !DILocation(line: 379, column: 13, scope: !465)
!475 = distinct !{!475, !467, !476, !228}
!476 = !DILocation(line: 382, column: 13, scope: !462)
!477 = !DILocation(line: 383, column: 9, scope: !458)
!478 = !DILocation(line: 386, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !454, file: !45, line: 385, column: 9)
!480 = !DILocation(line: 395, column: 1, scope: !443)
!481 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 398, type: !105, scopeLine: 399, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!482 = !DILocalVariable(name: "data", scope: !481, file: !45, line: 400, type: !23)
!483 = !DILocation(line: 400, column: 9, scope: !481)
!484 = !DILocation(line: 402, column: 10, scope: !481)
!485 = !DILocation(line: 408, column: 14, scope: !481)
!486 = !DILocalVariable(name: "i", scope: !487, file: !45, line: 419, type: !23)
!487 = distinct !DILexicalBlock(scope: !481, file: !45, line: 418, column: 5)
!488 = !DILocation(line: 419, column: 13, scope: !487)
!489 = !DILocalVariable(name: "buffer", scope: !487, file: !45, line: 420, type: !200)
!490 = !DILocation(line: 420, column: 13, scope: !487)
!491 = !DILocation(line: 423, column: 13, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !45, line: 423, column: 13)
!493 = !DILocation(line: 423, column: 18, scope: !492)
!494 = !DILocation(line: 423, column: 13, scope: !487)
!495 = !DILocation(line: 425, column: 20, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !45, line: 424, column: 9)
!497 = !DILocation(line: 425, column: 13, scope: !496)
!498 = !DILocation(line: 425, column: 26, scope: !496)
!499 = !DILocation(line: 427, column: 19, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !45, line: 427, column: 13)
!501 = !DILocation(line: 427, column: 17, scope: !500)
!502 = !DILocation(line: 427, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !45, line: 427, column: 13)
!504 = !DILocation(line: 427, column: 26, scope: !503)
!505 = !DILocation(line: 427, column: 13, scope: !500)
!506 = !DILocation(line: 429, column: 37, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !45, line: 428, column: 13)
!508 = !DILocation(line: 429, column: 30, scope: !507)
!509 = !DILocation(line: 429, column: 17, scope: !507)
!510 = !DILocation(line: 430, column: 13, scope: !507)
!511 = !DILocation(line: 427, column: 33, scope: !503)
!512 = !DILocation(line: 427, column: 13, scope: !503)
!513 = distinct !{!513, !505, !514, !228}
!514 = !DILocation(line: 430, column: 13, scope: !500)
!515 = !DILocation(line: 431, column: 9, scope: !496)
!516 = !DILocation(line: 434, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !492, file: !45, line: 433, column: 9)
!518 = !DILocation(line: 443, column: 1, scope: !481)
!519 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good", scope: !45, file: !45, line: 445, type: !105, scopeLine: 446, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!520 = !DILocation(line: 447, column: 5, scope: !519)
!521 = !DILocation(line: 448, column: 5, scope: !519)
!522 = !DILocation(line: 449, column: 5, scope: !519)
!523 = !DILocation(line: 450, column: 5, scope: !519)
!524 = !DILocation(line: 451, column: 1, scope: !519)
!525 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !526, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !42}
!528 = !DILocalVariable(name: "line", arg: 1, scope: !525, file: !3, line: 11, type: !42)
!529 = !DILocation(line: 11, column: 25, scope: !525)
!530 = !DILocation(line: 13, column: 1, scope: !525)
!531 = !DILocation(line: 14, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !525, file: !3, line: 14, column: 8)
!533 = !DILocation(line: 14, column: 13, scope: !532)
!534 = !DILocation(line: 14, column: 8, scope: !525)
!535 = !DILocation(line: 16, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 15, column: 5)
!537 = !DILocation(line: 16, column: 9, scope: !536)
!538 = !DILocation(line: 17, column: 5, scope: !536)
!539 = !DILocation(line: 18, column: 5, scope: !525)
!540 = !DILocation(line: 19, column: 1, scope: !525)
!541 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !526, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DILocalVariable(name: "line", arg: 1, scope: !541, file: !3, line: 20, type: !42)
!543 = !DILocation(line: 20, column: 29, scope: !541)
!544 = !DILocation(line: 22, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 22, column: 8)
!546 = !DILocation(line: 22, column: 13, scope: !545)
!547 = !DILocation(line: 22, column: 8, scope: !541)
!548 = !DILocation(line: 24, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 23, column: 5)
!550 = !DILocation(line: 24, column: 9, scope: !549)
!551 = !DILocation(line: 25, column: 5, scope: !549)
!552 = !DILocation(line: 26, column: 1, scope: !541)
!553 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !554, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !558, line: 74, baseType: !23)
!558 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!559 = !DILocalVariable(name: "line", arg: 1, scope: !553, file: !3, line: 27, type: !556)
!560 = !DILocation(line: 27, column: 29, scope: !553)
!561 = !DILocation(line: 29, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !553, file: !3, line: 29, column: 8)
!563 = !DILocation(line: 29, column: 13, scope: !562)
!564 = !DILocation(line: 29, column: 8, scope: !553)
!565 = !DILocation(line: 31, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 30, column: 5)
!567 = !DILocation(line: 31, column: 9, scope: !566)
!568 = !DILocation(line: 32, column: 5, scope: !566)
!569 = !DILocation(line: 33, column: 1, scope: !553)
!570 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !571, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !23}
!573 = !DILocalVariable(name: "intNumber", arg: 1, scope: !570, file: !3, line: 35, type: !23)
!574 = !DILocation(line: 35, column: 24, scope: !570)
!575 = !DILocation(line: 37, column: 20, scope: !570)
!576 = !DILocation(line: 37, column: 5, scope: !570)
!577 = !DILocation(line: 38, column: 1, scope: !570)
!578 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !579, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !581}
!581 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!582 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !578, file: !3, line: 40, type: !581)
!583 = !DILocation(line: 40, column: 28, scope: !578)
!584 = !DILocation(line: 42, column: 21, scope: !578)
!585 = !DILocation(line: 42, column: 5, scope: !578)
!586 = !DILocation(line: 43, column: 1, scope: !578)
!587 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !588, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !590}
!590 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!591 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !587, file: !3, line: 45, type: !590)
!592 = !DILocation(line: 45, column: 28, scope: !587)
!593 = !DILocation(line: 47, column: 20, scope: !587)
!594 = !DILocation(line: 47, column: 5, scope: !587)
!595 = !DILocation(line: 48, column: 1, scope: !587)
!596 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !597, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !599}
!599 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!600 = !DILocalVariable(name: "longNumber", arg: 1, scope: !596, file: !3, line: 50, type: !599)
!601 = !DILocation(line: 50, column: 26, scope: !596)
!602 = !DILocation(line: 52, column: 21, scope: !596)
!603 = !DILocation(line: 52, column: 5, scope: !596)
!604 = !DILocation(line: 53, column: 1, scope: !596)
!605 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !606, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !609, line: 27, baseType: !610)
!609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !123, line: 44, baseType: !599)
!611 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !605, file: !3, line: 55, type: !608)
!612 = !DILocation(line: 55, column: 33, scope: !605)
!613 = !DILocation(line: 57, column: 29, scope: !605)
!614 = !DILocation(line: 57, column: 5, scope: !605)
!615 = !DILocation(line: 58, column: 1, scope: !605)
!616 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !617, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !558, line: 46, baseType: !620)
!620 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!621 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !616, file: !3, line: 60, type: !619)
!622 = !DILocation(line: 60, column: 29, scope: !616)
!623 = !DILocation(line: 62, column: 21, scope: !616)
!624 = !DILocation(line: 62, column: 5, scope: !616)
!625 = !DILocation(line: 63, column: 1, scope: !616)
!626 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !627, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !43}
!629 = !DILocalVariable(name: "charHex", arg: 1, scope: !626, file: !3, line: 65, type: !43)
!630 = !DILocation(line: 65, column: 29, scope: !626)
!631 = !DILocation(line: 67, column: 22, scope: !626)
!632 = !DILocation(line: 67, column: 5, scope: !626)
!633 = !DILocation(line: 68, column: 1, scope: !626)
!634 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !635, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !557}
!637 = !DILocalVariable(name: "wideChar", arg: 1, scope: !634, file: !3, line: 70, type: !557)
!638 = !DILocation(line: 70, column: 29, scope: !634)
!639 = !DILocalVariable(name: "s", scope: !634, file: !3, line: 74, type: !640)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 64, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 2)
!643 = !DILocation(line: 74, column: 13, scope: !634)
!644 = !DILocation(line: 75, column: 16, scope: !634)
!645 = !DILocation(line: 75, column: 9, scope: !634)
!646 = !DILocation(line: 75, column: 14, scope: !634)
!647 = !DILocation(line: 76, column: 9, scope: !634)
!648 = !DILocation(line: 76, column: 14, scope: !634)
!649 = !DILocation(line: 77, column: 21, scope: !634)
!650 = !DILocation(line: 77, column: 5, scope: !634)
!651 = !DILocation(line: 78, column: 1, scope: !634)
!652 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !653, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !7}
!655 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !652, file: !3, line: 80, type: !7)
!656 = !DILocation(line: 80, column: 33, scope: !652)
!657 = !DILocation(line: 82, column: 20, scope: !652)
!658 = !DILocation(line: 82, column: 5, scope: !652)
!659 = !DILocation(line: 83, column: 1, scope: !652)
!660 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !661, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !25}
!663 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !660, file: !3, line: 85, type: !25)
!664 = !DILocation(line: 85, column: 45, scope: !660)
!665 = !DILocation(line: 87, column: 22, scope: !660)
!666 = !DILocation(line: 87, column: 5, scope: !660)
!667 = !DILocation(line: 88, column: 1, scope: !660)
!668 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !669, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671}
!671 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!672 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !668, file: !3, line: 90, type: !671)
!673 = !DILocation(line: 90, column: 29, scope: !668)
!674 = !DILocation(line: 92, column: 20, scope: !668)
!675 = !DILocation(line: 92, column: 5, scope: !668)
!676 = !DILocation(line: 93, column: 1, scope: !668)
!677 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !678, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !682, line: 100, baseType: !683)
!682 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_530/source_code")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !682, line: 96, size: 64, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !683, file: !682, line: 98, baseType: !23, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !683, file: !682, line: 99, baseType: !23, size: 32, offset: 32)
!687 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !677, file: !3, line: 95, type: !680)
!688 = !DILocation(line: 95, column: 40, scope: !677)
!689 = !DILocation(line: 97, column: 26, scope: !677)
!690 = !DILocation(line: 97, column: 47, scope: !677)
!691 = !DILocation(line: 97, column: 55, scope: !677)
!692 = !DILocation(line: 97, column: 76, scope: !677)
!693 = !DILocation(line: 97, column: 5, scope: !677)
!694 = !DILocation(line: 98, column: 1, scope: !677)
!695 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !696, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698, !619}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!699 = !DILocalVariable(name: "bytes", arg: 1, scope: !695, file: !3, line: 100, type: !698)
!700 = !DILocation(line: 100, column: 38, scope: !695)
!701 = !DILocalVariable(name: "numBytes", arg: 2, scope: !695, file: !3, line: 100, type: !619)
!702 = !DILocation(line: 100, column: 52, scope: !695)
!703 = !DILocalVariable(name: "i", scope: !695, file: !3, line: 102, type: !619)
!704 = !DILocation(line: 102, column: 12, scope: !695)
!705 = !DILocation(line: 103, column: 12, scope: !706)
!706 = distinct !DILexicalBlock(scope: !695, file: !3, line: 103, column: 5)
!707 = !DILocation(line: 103, column: 10, scope: !706)
!708 = !DILocation(line: 103, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 103, column: 5)
!710 = !DILocation(line: 103, column: 21, scope: !709)
!711 = !DILocation(line: 103, column: 19, scope: !709)
!712 = !DILocation(line: 103, column: 5, scope: !706)
!713 = !DILocation(line: 105, column: 24, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 104, column: 5)
!715 = !DILocation(line: 105, column: 30, scope: !714)
!716 = !DILocation(line: 105, column: 9, scope: !714)
!717 = !DILocation(line: 106, column: 5, scope: !714)
!718 = !DILocation(line: 103, column: 31, scope: !709)
!719 = !DILocation(line: 103, column: 5, scope: !709)
!720 = distinct !{!720, !712, !721, !228}
!721 = !DILocation(line: 106, column: 5, scope: !706)
!722 = !DILocation(line: 107, column: 5, scope: !695)
!723 = !DILocation(line: 108, column: 1, scope: !695)
!724 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !725, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!725 = !DISubroutineType(types: !726)
!726 = !{!619, !698, !619, !42}
!727 = !DILocalVariable(name: "bytes", arg: 1, scope: !724, file: !3, line: 113, type: !698)
!728 = !DILocation(line: 113, column: 39, scope: !724)
!729 = !DILocalVariable(name: "numBytes", arg: 2, scope: !724, file: !3, line: 113, type: !619)
!730 = !DILocation(line: 113, column: 53, scope: !724)
!731 = !DILocalVariable(name: "hex", arg: 3, scope: !724, file: !3, line: 113, type: !42)
!732 = !DILocation(line: 113, column: 71, scope: !724)
!733 = !DILocalVariable(name: "numWritten", scope: !724, file: !3, line: 115, type: !619)
!734 = !DILocation(line: 115, column: 12, scope: !724)
!735 = !DILocation(line: 121, column: 5, scope: !724)
!736 = !DILocation(line: 121, column: 12, scope: !724)
!737 = !DILocation(line: 121, column: 25, scope: !724)
!738 = !DILocation(line: 121, column: 23, scope: !724)
!739 = !DILocation(line: 121, column: 34, scope: !724)
!740 = !DILocation(line: 121, column: 37, scope: !724)
!741 = !DILocation(line: 121, column: 67, scope: !724)
!742 = !DILocation(line: 121, column: 70, scope: !724)
!743 = !DILocation(line: 0, scope: !724)
!744 = !DILocalVariable(name: "byte", scope: !745, file: !3, line: 123, type: !23)
!745 = distinct !DILexicalBlock(scope: !724, file: !3, line: 122, column: 5)
!746 = !DILocation(line: 123, column: 13, scope: !745)
!747 = !DILocation(line: 124, column: 17, scope: !745)
!748 = !DILocation(line: 124, column: 25, scope: !745)
!749 = !DILocation(line: 124, column: 23, scope: !745)
!750 = !DILocation(line: 124, column: 9, scope: !745)
!751 = !DILocation(line: 125, column: 45, scope: !745)
!752 = !DILocation(line: 125, column: 29, scope: !745)
!753 = !DILocation(line: 125, column: 9, scope: !745)
!754 = !DILocation(line: 125, column: 15, scope: !745)
!755 = !DILocation(line: 125, column: 27, scope: !745)
!756 = !DILocation(line: 126, column: 9, scope: !745)
!757 = distinct !{!757, !735, !758, !228}
!758 = !DILocation(line: 127, column: 5, scope: !724)
!759 = !DILocation(line: 129, column: 12, scope: !724)
!760 = !DILocation(line: 129, column: 5, scope: !724)
!761 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !762, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!762 = !DISubroutineType(types: !763)
!763 = !{!619, !698, !619, !556}
!764 = !DILocalVariable(name: "bytes", arg: 1, scope: !761, file: !3, line: 135, type: !698)
!765 = !DILocation(line: 135, column: 41, scope: !761)
!766 = !DILocalVariable(name: "numBytes", arg: 2, scope: !761, file: !3, line: 135, type: !619)
!767 = !DILocation(line: 135, column: 55, scope: !761)
!768 = !DILocalVariable(name: "hex", arg: 3, scope: !761, file: !3, line: 135, type: !556)
!769 = !DILocation(line: 135, column: 76, scope: !761)
!770 = !DILocalVariable(name: "numWritten", scope: !761, file: !3, line: 137, type: !619)
!771 = !DILocation(line: 137, column: 12, scope: !761)
!772 = !DILocation(line: 143, column: 5, scope: !761)
!773 = !DILocation(line: 143, column: 12, scope: !761)
!774 = !DILocation(line: 143, column: 25, scope: !761)
!775 = !DILocation(line: 143, column: 23, scope: !761)
!776 = !DILocation(line: 143, column: 34, scope: !761)
!777 = !DILocation(line: 143, column: 47, scope: !761)
!778 = !DILocation(line: 143, column: 55, scope: !761)
!779 = !DILocation(line: 143, column: 53, scope: !761)
!780 = !DILocation(line: 143, column: 37, scope: !761)
!781 = !DILocation(line: 143, column: 68, scope: !761)
!782 = !DILocation(line: 143, column: 81, scope: !761)
!783 = !DILocation(line: 143, column: 89, scope: !761)
!784 = !DILocation(line: 143, column: 87, scope: !761)
!785 = !DILocation(line: 143, column: 100, scope: !761)
!786 = !DILocation(line: 143, column: 71, scope: !761)
!787 = !DILocation(line: 0, scope: !761)
!788 = !DILocalVariable(name: "byte", scope: !789, file: !3, line: 145, type: !23)
!789 = distinct !DILexicalBlock(scope: !761, file: !3, line: 144, column: 5)
!790 = !DILocation(line: 145, column: 13, scope: !789)
!791 = !DILocation(line: 146, column: 18, scope: !789)
!792 = !DILocation(line: 146, column: 26, scope: !789)
!793 = !DILocation(line: 146, column: 24, scope: !789)
!794 = !DILocation(line: 146, column: 9, scope: !789)
!795 = !DILocation(line: 147, column: 45, scope: !789)
!796 = !DILocation(line: 147, column: 29, scope: !789)
!797 = !DILocation(line: 147, column: 9, scope: !789)
!798 = !DILocation(line: 147, column: 15, scope: !789)
!799 = !DILocation(line: 147, column: 27, scope: !789)
!800 = !DILocation(line: 148, column: 9, scope: !789)
!801 = distinct !{!801, !772, !802, !228}
!802 = !DILocation(line: 149, column: 5, scope: !761)
!803 = !DILocation(line: 151, column: 12, scope: !761)
!804 = !DILocation(line: 151, column: 5, scope: !761)
!805 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !806, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!806 = !DISubroutineType(types: !807)
!807 = !{!23}
!808 = !DILocation(line: 158, column: 5, scope: !805)
!809 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !806, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!810 = !DILocation(line: 163, column: 5, scope: !809)
!811 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !806, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!812 = !DILocation(line: 168, column: 13, scope: !811)
!813 = !DILocation(line: 168, column: 20, scope: !811)
!814 = !DILocation(line: 168, column: 5, scope: !811)
!815 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!816 = !DILocation(line: 187, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!818 = !DILocation(line: 188, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!820 = !DILocation(line: 189, column: 16, scope: !819)
!821 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!822 = !DILocation(line: 190, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!824 = !DILocation(line: 191, column: 16, scope: !823)
!825 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!826 = !DILocation(line: 192, column: 16, scope: !825)
!827 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!828 = !DILocation(line: 193, column: 16, scope: !827)
!829 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DILocation(line: 194, column: 16, scope: !829)
!831 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!832 = !DILocation(line: 195, column: 16, scope: !831)
!833 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!834 = !DILocation(line: 198, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DILocation(line: 199, column: 15, scope: !835)
!837 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DILocation(line: 200, column: 15, scope: !837)
!839 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 201, column: 15, scope: !839)
!841 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 202, column: 15, scope: !841)
!843 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DILocation(line: 203, column: 15, scope: !843)
!845 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 204, column: 15, scope: !845)
!847 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 205, column: 15, scope: !847)
!849 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 206, column: 15, scope: !849)
