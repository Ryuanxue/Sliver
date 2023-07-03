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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_02_bad() #0 !dbg !104 {
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
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !116, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 -1, i32* %connectSocket, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  br label %do.body, !dbg !142

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !143
  store i32 %call, i32* %connectSocket, align 4, !dbg !145
  %0 = load i32, i32* %connectSocket, align 4, !dbg !146
  %cmp = icmp eq i32 %0, -1, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !150

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !152
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !153
  store i16 2, i16* %sin_family, align 4, !dbg !154
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !155
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !156
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !157
  store i32 %call1, i32* %s_addr, align 4, !dbg !158
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !159
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !160
  store i16 %call2, i16* %sin_port, align 2, !dbg !161
  %2 = load i32, i32* %connectSocket, align 4, !dbg !162
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !164
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !165
  %cmp4 = icmp eq i32 %call3, -1, !dbg !166
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !167

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !168

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !170
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !171
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !172
  %conv = trunc i64 %call7 to i32, !dbg !172
  store i32 %conv, i32* %recvResult, align 4, !dbg !173
  %5 = load i32, i32* %recvResult, align 4, !dbg !174
  %cmp8 = icmp eq i32 %5, -1, !dbg !176
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !178
  %cmp10 = icmp eq i32 %6, 0, !dbg !179
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !180

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !181

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !183
  %idxprom = sext i32 %7 to i64, !dbg !184
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !184
  store i8 0, i8* %arrayidx, align 1, !dbg !185
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !186
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !187
  store i32 %call15, i32* %data, align 4, !dbg !188
  br label %do.end, !dbg !189

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !190
  %cmp16 = icmp ne i32 %8, -1, !dbg !192
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !193

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !194
  %call19 = call i32 @close(i32 %9), !dbg !196
  br label %if.end20, !dbg !197

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !203, metadata !DIExpression()), !dbg !207
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !207
  %11 = load i32, i32* %data, align 4, !dbg !208
  %cmp21 = icmp sge i32 %11, 0, !dbg !210
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !211

if.then23:                                        ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !212
  %idxprom24 = sext i32 %12 to i64, !dbg !214
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !214
  store i32 1, i32* %arrayidx25, align 4, !dbg !215
  store i32 0, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !219
  %cmp26 = icmp slt i32 %13, 10, !dbg !221
  br i1 %cmp26, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !223
  %idxprom28 = sext i32 %14 to i64, !dbg !225
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !225
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !225
  call void @printIntLine(i32 %15), !dbg !226
  br label %for.inc, !dbg !227

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !228
  %inc = add nsw i32 %16, 1, !dbg !228
  store i32 %inc, i32* %i, align 4, !dbg !228
  br label %for.cond, !dbg !229, !llvm.loop !230

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !233

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !234
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !236
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
define dso_local void @goodB2G1() #0 !dbg !237 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !238, metadata !DIExpression()), !dbg !239
  store i32 -1, i32* %data, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !248, metadata !DIExpression()), !dbg !249
  store i32 -1, i32* %connectSocket, align 4, !dbg !249
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !250, metadata !DIExpression()), !dbg !251
  br label %do.body, !dbg !252

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !253
  store i32 %call, i32* %connectSocket, align 4, !dbg !255
  %0 = load i32, i32* %connectSocket, align 4, !dbg !256
  %cmp = icmp eq i32 %0, -1, !dbg !258
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !260

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !262
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !262
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !263
  store i16 2, i16* %sin_family, align 4, !dbg !264
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !265
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !266
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !267
  store i32 %call1, i32* %s_addr, align 4, !dbg !268
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !269
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !270
  store i16 %call2, i16* %sin_port, align 2, !dbg !271
  %2 = load i32, i32* %connectSocket, align 4, !dbg !272
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !274
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !275
  %cmp4 = icmp eq i32 %call3, -1, !dbg !276
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !277

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !278

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !280
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !281
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !282
  %conv = trunc i64 %call7 to i32, !dbg !282
  store i32 %conv, i32* %recvResult, align 4, !dbg !283
  %5 = load i32, i32* %recvResult, align 4, !dbg !284
  %cmp8 = icmp eq i32 %5, -1, !dbg !286
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !287

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !288
  %cmp10 = icmp eq i32 %6, 0, !dbg !289
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !290

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !291

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !293
  %idxprom = sext i32 %7 to i64, !dbg !294
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !294
  store i8 0, i8* %arrayidx, align 1, !dbg !295
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !296
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !297
  store i32 %call15, i32* %data, align 4, !dbg !298
  br label %do.end, !dbg !299

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !300
  %cmp16 = icmp ne i32 %8, -1, !dbg !302
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !303

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !304
  %call19 = call i32 @close(i32 %9), !dbg !306
  br label %if.end20, !dbg !307

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !308, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !313, metadata !DIExpression()), !dbg !314
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !314
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !314
  %11 = load i32, i32* %data, align 4, !dbg !315
  %cmp21 = icmp sge i32 %11, 0, !dbg !317
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !318

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !319
  %cmp23 = icmp slt i32 %12, 10, !dbg !320
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !321

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !322
  %idxprom26 = sext i32 %13 to i64, !dbg !324
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !324
  store i32 1, i32* %arrayidx27, align 4, !dbg !325
  store i32 0, i32* %i, align 4, !dbg !326
  br label %for.cond, !dbg !328

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !329
  %cmp28 = icmp slt i32 %14, 10, !dbg !331
  br i1 %cmp28, label %for.body, label %for.end, !dbg !332

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !333
  %idxprom30 = sext i32 %15 to i64, !dbg !335
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !335
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !335
  call void @printIntLine(i32 %16), !dbg !336
  br label %for.inc, !dbg !337

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !338
  %inc = add nsw i32 %17, 1, !dbg !338
  store i32 %inc, i32* %i, align 4, !dbg !338
  br label %for.cond, !dbg !339, !llvm.loop !340

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !342

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !343
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !346 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !347, metadata !DIExpression()), !dbg !348
  store i32 -1, i32* %data, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !357, metadata !DIExpression()), !dbg !358
  store i32 -1, i32* %connectSocket, align 4, !dbg !358
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !359, metadata !DIExpression()), !dbg !360
  br label %do.body, !dbg !361

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !362
  store i32 %call, i32* %connectSocket, align 4, !dbg !364
  %0 = load i32, i32* %connectSocket, align 4, !dbg !365
  %cmp = icmp eq i32 %0, -1, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !369

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !371
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !371
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !372
  store i16 2, i16* %sin_family, align 4, !dbg !373
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !374
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !375
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !376
  store i32 %call1, i32* %s_addr, align 4, !dbg !377
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !378
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !379
  store i16 %call2, i16* %sin_port, align 2, !dbg !380
  %2 = load i32, i32* %connectSocket, align 4, !dbg !381
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !383
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !384
  %cmp4 = icmp eq i32 %call3, -1, !dbg !385
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !386

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !387

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !389
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !390
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !391
  %conv = trunc i64 %call7 to i32, !dbg !391
  store i32 %conv, i32* %recvResult, align 4, !dbg !392
  %5 = load i32, i32* %recvResult, align 4, !dbg !393
  %cmp8 = icmp eq i32 %5, -1, !dbg !395
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !396

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !397
  %cmp10 = icmp eq i32 %6, 0, !dbg !398
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !399

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !400

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !402
  %idxprom = sext i32 %7 to i64, !dbg !403
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !403
  store i8 0, i8* %arrayidx, align 1, !dbg !404
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !405
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !406
  store i32 %call15, i32* %data, align 4, !dbg !407
  br label %do.end, !dbg !408

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !409
  %cmp16 = icmp ne i32 %8, -1, !dbg !411
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !412

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !413
  %call19 = call i32 @close(i32 %9), !dbg !415
  br label %if.end20, !dbg !416

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !422, metadata !DIExpression()), !dbg !423
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !423
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !423
  %11 = load i32, i32* %data, align 4, !dbg !424
  %cmp21 = icmp sge i32 %11, 0, !dbg !426
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !427

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !428
  %cmp23 = icmp slt i32 %12, 10, !dbg !429
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !430

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !431
  %idxprom26 = sext i32 %13 to i64, !dbg !433
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !433
  store i32 1, i32* %arrayidx27, align 4, !dbg !434
  store i32 0, i32* %i, align 4, !dbg !435
  br label %for.cond, !dbg !437

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !438
  %cmp28 = icmp slt i32 %14, 10, !dbg !440
  br i1 %cmp28, label %for.body, label %for.end, !dbg !441

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !442
  %idxprom30 = sext i32 %15 to i64, !dbg !444
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !444
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !444
  call void @printIntLine(i32 %16), !dbg !445
  br label %for.inc, !dbg !446

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !447
  %inc = add nsw i32 %17, 1, !dbg !447
  store i32 %inc, i32* %i, align 4, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !451

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !452
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !455 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !456, metadata !DIExpression()), !dbg !457
  store i32 -1, i32* %data, align 4, !dbg !458
  store i32 7, i32* %data, align 4, !dbg !459
  call void @llvm.dbg.declare(metadata i32* %i, metadata !462, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !468
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !468
  %1 = load i32, i32* %data, align 4, !dbg !469
  %cmp = icmp sge i32 %1, 0, !dbg !471
  br i1 %cmp, label %if.then, label %if.else, !dbg !472

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !473
  %idxprom = sext i32 %2 to i64, !dbg !475
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !475
  store i32 1, i32* %arrayidx, align 4, !dbg !476
  store i32 0, i32* %i, align 4, !dbg !477
  br label %for.cond, !dbg !479

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !480
  %cmp1 = icmp slt i32 %3, 10, !dbg !482
  br i1 %cmp1, label %for.body, label %for.end, !dbg !483

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !484
  %idxprom2 = sext i32 %4 to i64, !dbg !486
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !486
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !486
  call void @printIntLine(i32 %5), !dbg !487
  br label %for.inc, !dbg !488

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !489
  %inc = add nsw i32 %6, 1, !dbg !489
  store i32 %inc, i32* %i, align 4, !dbg !489
  br label %for.cond, !dbg !490, !llvm.loop !491

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !493

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !494
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !497 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !498, metadata !DIExpression()), !dbg !499
  store i32 -1, i32* %data, align 4, !dbg !500
  store i32 7, i32* %data, align 4, !dbg !501
  call void @llvm.dbg.declare(metadata i32* %i, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !510
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !510
  %1 = load i32, i32* %data, align 4, !dbg !511
  %cmp = icmp sge i32 %1, 0, !dbg !513
  br i1 %cmp, label %if.then, label %if.else, !dbg !514

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !515
  %idxprom = sext i32 %2 to i64, !dbg !517
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !517
  store i32 1, i32* %arrayidx, align 4, !dbg !518
  store i32 0, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !521

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !522
  %cmp1 = icmp slt i32 %3, 10, !dbg !524
  br i1 %cmp1, label %for.body, label %for.end, !dbg !525

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !526
  %idxprom2 = sext i32 %4 to i64, !dbg !528
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !528
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !528
  call void @printIntLine(i32 %5), !dbg !529
  br label %for.inc, !dbg !530

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !531
  %inc = add nsw i32 %6, 1, !dbg !531
  store i32 %inc, i32* %i, align 4, !dbg !531
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !535

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !536
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_02_good() #0 !dbg !539 {
entry:
  call void @goodB2G1(), !dbg !540
  call void @goodB2G2(), !dbg !541
  call void @goodG2B1(), !dbg !542
  call void @goodG2B2(), !dbg !543
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !545 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !550
  %0 = load i8*, i8** %line.addr, align 8, !dbg !551
  %cmp = icmp ne i8* %0, null, !dbg !553
  br i1 %cmp, label %if.then, label %if.end, !dbg !554

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !555
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !557
  br label %if.end, !dbg !558

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !559
  ret void, !dbg !560
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !561 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i8*, i8** %line.addr, align 8, !dbg !564
  %cmp = icmp ne i8* %0, null, !dbg !566
  br i1 %cmp, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !570
  br label %if.end, !dbg !571

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !573 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i32*, i32** %line.addr, align 8, !dbg !581
  %cmp = icmp ne i32* %0, null, !dbg !583
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !585
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !587
  br label %if.end, !dbg !588

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !589
}

declare dso_local i32 @wprintf(i32*, ...) #5

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
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

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
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

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
declare dso_local i32 @rand() #2

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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_517/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_517/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_02_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocalVariable(name: "recvResult", scope: !112, file: !45, line: 57, type: !23)
!112 = distinct !DILexicalBlock(scope: !113, file: !45, line: 52, column: 9)
!113 = distinct !DILexicalBlock(scope: !114, file: !45, line: 51, column: 5)
!114 = distinct !DILexicalBlock(scope: !104, file: !45, line: 50, column: 8)
!115 = !DILocation(line: 57, column: 17, scope: !112)
!116 = !DILocalVariable(name: "service", scope: !112, file: !45, line: 58, type: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !118)
!118 = !{!119, !120, !126, !133}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !117, file: !60, line: 240, baseType: !94, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !117, file: !60, line: 241, baseType: !121, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !123, line: 25, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !125, line: 40, baseType: !24)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !117, file: !60, line: 242, baseType: !127, size: 32, offset: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !127, file: !60, line: 33, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !123, line: 26, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !125, line: 42, baseType: !7)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !117, file: !60, line: 245, baseType: !134, size: 64, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DILocation(line: 58, column: 32, scope: !112)
!138 = !DILocalVariable(name: "connectSocket", scope: !112, file: !45, line: 59, type: !23)
!139 = !DILocation(line: 59, column: 20, scope: !112)
!140 = !DILocalVariable(name: "inputBuffer", scope: !112, file: !45, line: 60, type: !97)
!141 = !DILocation(line: 60, column: 18, scope: !112)
!142 = !DILocation(line: 61, column: 13, scope: !112)
!143 = !DILocation(line: 71, column: 33, scope: !144)
!144 = distinct !DILexicalBlock(scope: !112, file: !45, line: 62, column: 13)
!145 = !DILocation(line: 71, column: 31, scope: !144)
!146 = !DILocation(line: 72, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !45, line: 72, column: 21)
!148 = !DILocation(line: 72, column: 35, scope: !147)
!149 = !DILocation(line: 72, column: 21, scope: !144)
!150 = !DILocation(line: 74, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !45, line: 73, column: 17)
!152 = !DILocation(line: 76, column: 17, scope: !144)
!153 = !DILocation(line: 77, column: 25, scope: !144)
!154 = !DILocation(line: 77, column: 36, scope: !144)
!155 = !DILocation(line: 78, column: 43, scope: !144)
!156 = !DILocation(line: 78, column: 25, scope: !144)
!157 = !DILocation(line: 78, column: 34, scope: !144)
!158 = !DILocation(line: 78, column: 41, scope: !144)
!159 = !DILocation(line: 79, column: 36, scope: !144)
!160 = !DILocation(line: 79, column: 25, scope: !144)
!161 = !DILocation(line: 79, column: 34, scope: !144)
!162 = !DILocation(line: 80, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !144, file: !45, line: 80, column: 21)
!164 = !DILocation(line: 80, column: 44, scope: !163)
!165 = !DILocation(line: 80, column: 21, scope: !163)
!166 = !DILocation(line: 80, column: 89, scope: !163)
!167 = !DILocation(line: 80, column: 21, scope: !144)
!168 = !DILocation(line: 82, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !45, line: 81, column: 17)
!170 = !DILocation(line: 86, column: 35, scope: !144)
!171 = !DILocation(line: 86, column: 50, scope: !144)
!172 = !DILocation(line: 86, column: 30, scope: !144)
!173 = !DILocation(line: 86, column: 28, scope: !144)
!174 = !DILocation(line: 87, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !144, file: !45, line: 87, column: 21)
!176 = !DILocation(line: 87, column: 32, scope: !175)
!177 = !DILocation(line: 87, column: 48, scope: !175)
!178 = !DILocation(line: 87, column: 51, scope: !175)
!179 = !DILocation(line: 87, column: 62, scope: !175)
!180 = !DILocation(line: 87, column: 21, scope: !144)
!181 = !DILocation(line: 89, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !45, line: 88, column: 17)
!183 = !DILocation(line: 92, column: 29, scope: !144)
!184 = !DILocation(line: 92, column: 17, scope: !144)
!185 = !DILocation(line: 92, column: 41, scope: !144)
!186 = !DILocation(line: 94, column: 29, scope: !144)
!187 = !DILocation(line: 94, column: 24, scope: !144)
!188 = !DILocation(line: 94, column: 22, scope: !144)
!189 = !DILocation(line: 95, column: 13, scope: !144)
!190 = !DILocation(line: 97, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !112, file: !45, line: 97, column: 17)
!192 = !DILocation(line: 97, column: 31, scope: !191)
!193 = !DILocation(line: 97, column: 17, scope: !112)
!194 = !DILocation(line: 99, column: 30, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !45, line: 98, column: 13)
!196 = !DILocation(line: 99, column: 17, scope: !195)
!197 = !DILocation(line: 100, column: 13, scope: !195)
!198 = !DILocalVariable(name: "i", scope: !199, file: !45, line: 112, type: !23)
!199 = distinct !DILexicalBlock(scope: !200, file: !45, line: 111, column: 9)
!200 = distinct !DILexicalBlock(scope: !201, file: !45, line: 110, column: 5)
!201 = distinct !DILexicalBlock(scope: !104, file: !45, line: 109, column: 8)
!202 = !DILocation(line: 112, column: 17, scope: !199)
!203 = !DILocalVariable(name: "buffer", scope: !199, file: !45, line: 113, type: !204)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 10)
!207 = !DILocation(line: 113, column: 17, scope: !199)
!208 = !DILocation(line: 116, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !199, file: !45, line: 116, column: 17)
!210 = !DILocation(line: 116, column: 22, scope: !209)
!211 = !DILocation(line: 116, column: 17, scope: !199)
!212 = !DILocation(line: 118, column: 24, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !45, line: 117, column: 13)
!214 = !DILocation(line: 118, column: 17, scope: !213)
!215 = !DILocation(line: 118, column: 30, scope: !213)
!216 = !DILocation(line: 120, column: 23, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !45, line: 120, column: 17)
!218 = !DILocation(line: 120, column: 21, scope: !217)
!219 = !DILocation(line: 120, column: 28, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !45, line: 120, column: 17)
!221 = !DILocation(line: 120, column: 30, scope: !220)
!222 = !DILocation(line: 120, column: 17, scope: !217)
!223 = !DILocation(line: 122, column: 41, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 121, column: 17)
!225 = !DILocation(line: 122, column: 34, scope: !224)
!226 = !DILocation(line: 122, column: 21, scope: !224)
!227 = !DILocation(line: 123, column: 17, scope: !224)
!228 = !DILocation(line: 120, column: 37, scope: !220)
!229 = !DILocation(line: 120, column: 17, scope: !220)
!230 = distinct !{!230, !222, !231, !232}
!231 = !DILocation(line: 123, column: 17, scope: !217)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 124, column: 13, scope: !213)
!234 = !DILocation(line: 127, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !209, file: !45, line: 126, column: 13)
!236 = !DILocation(line: 131, column: 1, scope: !104)
!237 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 138, type: !105, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!238 = !DILocalVariable(name: "data", scope: !237, file: !45, line: 140, type: !23)
!239 = !DILocation(line: 140, column: 9, scope: !237)
!240 = !DILocation(line: 142, column: 10, scope: !237)
!241 = !DILocalVariable(name: "recvResult", scope: !242, file: !45, line: 150, type: !23)
!242 = distinct !DILexicalBlock(scope: !243, file: !45, line: 145, column: 9)
!243 = distinct !DILexicalBlock(scope: !244, file: !45, line: 144, column: 5)
!244 = distinct !DILexicalBlock(scope: !237, file: !45, line: 143, column: 8)
!245 = !DILocation(line: 150, column: 17, scope: !242)
!246 = !DILocalVariable(name: "service", scope: !242, file: !45, line: 151, type: !117)
!247 = !DILocation(line: 151, column: 32, scope: !242)
!248 = !DILocalVariable(name: "connectSocket", scope: !242, file: !45, line: 152, type: !23)
!249 = !DILocation(line: 152, column: 20, scope: !242)
!250 = !DILocalVariable(name: "inputBuffer", scope: !242, file: !45, line: 153, type: !97)
!251 = !DILocation(line: 153, column: 18, scope: !242)
!252 = !DILocation(line: 154, column: 13, scope: !242)
!253 = !DILocation(line: 164, column: 33, scope: !254)
!254 = distinct !DILexicalBlock(scope: !242, file: !45, line: 155, column: 13)
!255 = !DILocation(line: 164, column: 31, scope: !254)
!256 = !DILocation(line: 165, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !45, line: 165, column: 21)
!258 = !DILocation(line: 165, column: 35, scope: !257)
!259 = !DILocation(line: 165, column: 21, scope: !254)
!260 = !DILocation(line: 167, column: 21, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 166, column: 17)
!262 = !DILocation(line: 169, column: 17, scope: !254)
!263 = !DILocation(line: 170, column: 25, scope: !254)
!264 = !DILocation(line: 170, column: 36, scope: !254)
!265 = !DILocation(line: 171, column: 43, scope: !254)
!266 = !DILocation(line: 171, column: 25, scope: !254)
!267 = !DILocation(line: 171, column: 34, scope: !254)
!268 = !DILocation(line: 171, column: 41, scope: !254)
!269 = !DILocation(line: 172, column: 36, scope: !254)
!270 = !DILocation(line: 172, column: 25, scope: !254)
!271 = !DILocation(line: 172, column: 34, scope: !254)
!272 = !DILocation(line: 173, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !254, file: !45, line: 173, column: 21)
!274 = !DILocation(line: 173, column: 44, scope: !273)
!275 = !DILocation(line: 173, column: 21, scope: !273)
!276 = !DILocation(line: 173, column: 89, scope: !273)
!277 = !DILocation(line: 173, column: 21, scope: !254)
!278 = !DILocation(line: 175, column: 21, scope: !279)
!279 = distinct !DILexicalBlock(scope: !273, file: !45, line: 174, column: 17)
!280 = !DILocation(line: 179, column: 35, scope: !254)
!281 = !DILocation(line: 179, column: 50, scope: !254)
!282 = !DILocation(line: 179, column: 30, scope: !254)
!283 = !DILocation(line: 179, column: 28, scope: !254)
!284 = !DILocation(line: 180, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !254, file: !45, line: 180, column: 21)
!286 = !DILocation(line: 180, column: 32, scope: !285)
!287 = !DILocation(line: 180, column: 48, scope: !285)
!288 = !DILocation(line: 180, column: 51, scope: !285)
!289 = !DILocation(line: 180, column: 62, scope: !285)
!290 = !DILocation(line: 180, column: 21, scope: !254)
!291 = !DILocation(line: 182, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !45, line: 181, column: 17)
!293 = !DILocation(line: 185, column: 29, scope: !254)
!294 = !DILocation(line: 185, column: 17, scope: !254)
!295 = !DILocation(line: 185, column: 41, scope: !254)
!296 = !DILocation(line: 187, column: 29, scope: !254)
!297 = !DILocation(line: 187, column: 24, scope: !254)
!298 = !DILocation(line: 187, column: 22, scope: !254)
!299 = !DILocation(line: 188, column: 13, scope: !254)
!300 = !DILocation(line: 190, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !242, file: !45, line: 190, column: 17)
!302 = !DILocation(line: 190, column: 31, scope: !301)
!303 = !DILocation(line: 190, column: 17, scope: !242)
!304 = !DILocation(line: 192, column: 30, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !45, line: 191, column: 13)
!306 = !DILocation(line: 192, column: 17, scope: !305)
!307 = !DILocation(line: 193, column: 13, scope: !305)
!308 = !DILocalVariable(name: "i", scope: !309, file: !45, line: 210, type: !23)
!309 = distinct !DILexicalBlock(scope: !310, file: !45, line: 209, column: 9)
!310 = distinct !DILexicalBlock(scope: !311, file: !45, line: 208, column: 5)
!311 = distinct !DILexicalBlock(scope: !237, file: !45, line: 202, column: 8)
!312 = !DILocation(line: 210, column: 17, scope: !309)
!313 = !DILocalVariable(name: "buffer", scope: !309, file: !45, line: 211, type: !204)
!314 = !DILocation(line: 211, column: 17, scope: !309)
!315 = !DILocation(line: 213, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !45, line: 213, column: 17)
!317 = !DILocation(line: 213, column: 22, scope: !316)
!318 = !DILocation(line: 213, column: 27, scope: !316)
!319 = !DILocation(line: 213, column: 30, scope: !316)
!320 = !DILocation(line: 213, column: 35, scope: !316)
!321 = !DILocation(line: 213, column: 17, scope: !309)
!322 = !DILocation(line: 215, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !45, line: 214, column: 13)
!324 = !DILocation(line: 215, column: 17, scope: !323)
!325 = !DILocation(line: 215, column: 30, scope: !323)
!326 = !DILocation(line: 217, column: 23, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !45, line: 217, column: 17)
!328 = !DILocation(line: 217, column: 21, scope: !327)
!329 = !DILocation(line: 217, column: 28, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !45, line: 217, column: 17)
!331 = !DILocation(line: 217, column: 30, scope: !330)
!332 = !DILocation(line: 217, column: 17, scope: !327)
!333 = !DILocation(line: 219, column: 41, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !45, line: 218, column: 17)
!335 = !DILocation(line: 219, column: 34, scope: !334)
!336 = !DILocation(line: 219, column: 21, scope: !334)
!337 = !DILocation(line: 220, column: 17, scope: !334)
!338 = !DILocation(line: 217, column: 37, scope: !330)
!339 = !DILocation(line: 217, column: 17, scope: !330)
!340 = distinct !{!340, !332, !341, !232}
!341 = !DILocation(line: 220, column: 17, scope: !327)
!342 = !DILocation(line: 221, column: 13, scope: !323)
!343 = !DILocation(line: 224, column: 17, scope: !344)
!344 = distinct !DILexicalBlock(scope: !316, file: !45, line: 223, column: 13)
!345 = !DILocation(line: 228, column: 1, scope: !237)
!346 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 231, type: !105, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!347 = !DILocalVariable(name: "data", scope: !346, file: !45, line: 233, type: !23)
!348 = !DILocation(line: 233, column: 9, scope: !346)
!349 = !DILocation(line: 235, column: 10, scope: !346)
!350 = !DILocalVariable(name: "recvResult", scope: !351, file: !45, line: 243, type: !23)
!351 = distinct !DILexicalBlock(scope: !352, file: !45, line: 238, column: 9)
!352 = distinct !DILexicalBlock(scope: !353, file: !45, line: 237, column: 5)
!353 = distinct !DILexicalBlock(scope: !346, file: !45, line: 236, column: 8)
!354 = !DILocation(line: 243, column: 17, scope: !351)
!355 = !DILocalVariable(name: "service", scope: !351, file: !45, line: 244, type: !117)
!356 = !DILocation(line: 244, column: 32, scope: !351)
!357 = !DILocalVariable(name: "connectSocket", scope: !351, file: !45, line: 245, type: !23)
!358 = !DILocation(line: 245, column: 20, scope: !351)
!359 = !DILocalVariable(name: "inputBuffer", scope: !351, file: !45, line: 246, type: !97)
!360 = !DILocation(line: 246, column: 18, scope: !351)
!361 = !DILocation(line: 247, column: 13, scope: !351)
!362 = !DILocation(line: 257, column: 33, scope: !363)
!363 = distinct !DILexicalBlock(scope: !351, file: !45, line: 248, column: 13)
!364 = !DILocation(line: 257, column: 31, scope: !363)
!365 = !DILocation(line: 258, column: 21, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !45, line: 258, column: 21)
!367 = !DILocation(line: 258, column: 35, scope: !366)
!368 = !DILocation(line: 258, column: 21, scope: !363)
!369 = !DILocation(line: 260, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !45, line: 259, column: 17)
!371 = !DILocation(line: 262, column: 17, scope: !363)
!372 = !DILocation(line: 263, column: 25, scope: !363)
!373 = !DILocation(line: 263, column: 36, scope: !363)
!374 = !DILocation(line: 264, column: 43, scope: !363)
!375 = !DILocation(line: 264, column: 25, scope: !363)
!376 = !DILocation(line: 264, column: 34, scope: !363)
!377 = !DILocation(line: 264, column: 41, scope: !363)
!378 = !DILocation(line: 265, column: 36, scope: !363)
!379 = !DILocation(line: 265, column: 25, scope: !363)
!380 = !DILocation(line: 265, column: 34, scope: !363)
!381 = !DILocation(line: 266, column: 29, scope: !382)
!382 = distinct !DILexicalBlock(scope: !363, file: !45, line: 266, column: 21)
!383 = !DILocation(line: 266, column: 44, scope: !382)
!384 = !DILocation(line: 266, column: 21, scope: !382)
!385 = !DILocation(line: 266, column: 89, scope: !382)
!386 = !DILocation(line: 266, column: 21, scope: !363)
!387 = !DILocation(line: 268, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !45, line: 267, column: 17)
!389 = !DILocation(line: 272, column: 35, scope: !363)
!390 = !DILocation(line: 272, column: 50, scope: !363)
!391 = !DILocation(line: 272, column: 30, scope: !363)
!392 = !DILocation(line: 272, column: 28, scope: !363)
!393 = !DILocation(line: 273, column: 21, scope: !394)
!394 = distinct !DILexicalBlock(scope: !363, file: !45, line: 273, column: 21)
!395 = !DILocation(line: 273, column: 32, scope: !394)
!396 = !DILocation(line: 273, column: 48, scope: !394)
!397 = !DILocation(line: 273, column: 51, scope: !394)
!398 = !DILocation(line: 273, column: 62, scope: !394)
!399 = !DILocation(line: 273, column: 21, scope: !363)
!400 = !DILocation(line: 275, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !394, file: !45, line: 274, column: 17)
!402 = !DILocation(line: 278, column: 29, scope: !363)
!403 = !DILocation(line: 278, column: 17, scope: !363)
!404 = !DILocation(line: 278, column: 41, scope: !363)
!405 = !DILocation(line: 280, column: 29, scope: !363)
!406 = !DILocation(line: 280, column: 24, scope: !363)
!407 = !DILocation(line: 280, column: 22, scope: !363)
!408 = !DILocation(line: 281, column: 13, scope: !363)
!409 = !DILocation(line: 283, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !351, file: !45, line: 283, column: 17)
!411 = !DILocation(line: 283, column: 31, scope: !410)
!412 = !DILocation(line: 283, column: 17, scope: !351)
!413 = !DILocation(line: 285, column: 30, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !45, line: 284, column: 13)
!415 = !DILocation(line: 285, column: 17, scope: !414)
!416 = !DILocation(line: 286, column: 13, scope: !414)
!417 = !DILocalVariable(name: "i", scope: !418, file: !45, line: 298, type: !23)
!418 = distinct !DILexicalBlock(scope: !419, file: !45, line: 297, column: 9)
!419 = distinct !DILexicalBlock(scope: !420, file: !45, line: 296, column: 5)
!420 = distinct !DILexicalBlock(scope: !346, file: !45, line: 295, column: 8)
!421 = !DILocation(line: 298, column: 17, scope: !418)
!422 = !DILocalVariable(name: "buffer", scope: !418, file: !45, line: 299, type: !204)
!423 = !DILocation(line: 299, column: 17, scope: !418)
!424 = !DILocation(line: 301, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !45, line: 301, column: 17)
!426 = !DILocation(line: 301, column: 22, scope: !425)
!427 = !DILocation(line: 301, column: 27, scope: !425)
!428 = !DILocation(line: 301, column: 30, scope: !425)
!429 = !DILocation(line: 301, column: 35, scope: !425)
!430 = !DILocation(line: 301, column: 17, scope: !418)
!431 = !DILocation(line: 303, column: 24, scope: !432)
!432 = distinct !DILexicalBlock(scope: !425, file: !45, line: 302, column: 13)
!433 = !DILocation(line: 303, column: 17, scope: !432)
!434 = !DILocation(line: 303, column: 30, scope: !432)
!435 = !DILocation(line: 305, column: 23, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !45, line: 305, column: 17)
!437 = !DILocation(line: 305, column: 21, scope: !436)
!438 = !DILocation(line: 305, column: 28, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !45, line: 305, column: 17)
!440 = !DILocation(line: 305, column: 30, scope: !439)
!441 = !DILocation(line: 305, column: 17, scope: !436)
!442 = !DILocation(line: 307, column: 41, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !45, line: 306, column: 17)
!444 = !DILocation(line: 307, column: 34, scope: !443)
!445 = !DILocation(line: 307, column: 21, scope: !443)
!446 = !DILocation(line: 308, column: 17, scope: !443)
!447 = !DILocation(line: 305, column: 37, scope: !439)
!448 = !DILocation(line: 305, column: 17, scope: !439)
!449 = distinct !{!449, !441, !450, !232}
!450 = !DILocation(line: 308, column: 17, scope: !436)
!451 = !DILocation(line: 309, column: 13, scope: !432)
!452 = !DILocation(line: 312, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !425, file: !45, line: 311, column: 13)
!454 = !DILocation(line: 316, column: 1, scope: !346)
!455 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 319, type: !105, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!456 = !DILocalVariable(name: "data", scope: !455, file: !45, line: 321, type: !23)
!457 = !DILocation(line: 321, column: 9, scope: !455)
!458 = !DILocation(line: 323, column: 10, scope: !455)
!459 = !DILocation(line: 333, column: 14, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !45, line: 330, column: 5)
!461 = distinct !DILexicalBlock(scope: !455, file: !45, line: 324, column: 8)
!462 = !DILocalVariable(name: "i", scope: !463, file: !45, line: 338, type: !23)
!463 = distinct !DILexicalBlock(scope: !464, file: !45, line: 337, column: 9)
!464 = distinct !DILexicalBlock(scope: !465, file: !45, line: 336, column: 5)
!465 = distinct !DILexicalBlock(scope: !455, file: !45, line: 335, column: 8)
!466 = !DILocation(line: 338, column: 17, scope: !463)
!467 = !DILocalVariable(name: "buffer", scope: !463, file: !45, line: 339, type: !204)
!468 = !DILocation(line: 339, column: 17, scope: !463)
!469 = !DILocation(line: 342, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !45, line: 342, column: 17)
!471 = !DILocation(line: 342, column: 22, scope: !470)
!472 = !DILocation(line: 342, column: 17, scope: !463)
!473 = !DILocation(line: 344, column: 24, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !45, line: 343, column: 13)
!475 = !DILocation(line: 344, column: 17, scope: !474)
!476 = !DILocation(line: 344, column: 30, scope: !474)
!477 = !DILocation(line: 346, column: 23, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !45, line: 346, column: 17)
!479 = !DILocation(line: 346, column: 21, scope: !478)
!480 = !DILocation(line: 346, column: 28, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !45, line: 346, column: 17)
!482 = !DILocation(line: 346, column: 30, scope: !481)
!483 = !DILocation(line: 346, column: 17, scope: !478)
!484 = !DILocation(line: 348, column: 41, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !45, line: 347, column: 17)
!486 = !DILocation(line: 348, column: 34, scope: !485)
!487 = !DILocation(line: 348, column: 21, scope: !485)
!488 = !DILocation(line: 349, column: 17, scope: !485)
!489 = !DILocation(line: 346, column: 37, scope: !481)
!490 = !DILocation(line: 346, column: 17, scope: !481)
!491 = distinct !{!491, !483, !492, !232}
!492 = !DILocation(line: 349, column: 17, scope: !478)
!493 = !DILocation(line: 350, column: 13, scope: !474)
!494 = !DILocation(line: 353, column: 17, scope: !495)
!495 = distinct !DILexicalBlock(scope: !470, file: !45, line: 352, column: 13)
!496 = !DILocation(line: 357, column: 1, scope: !455)
!497 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 360, type: !105, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!498 = !DILocalVariable(name: "data", scope: !497, file: !45, line: 362, type: !23)
!499 = !DILocation(line: 362, column: 9, scope: !497)
!500 = !DILocation(line: 364, column: 10, scope: !497)
!501 = !DILocation(line: 369, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !45, line: 366, column: 5)
!503 = distinct !DILexicalBlock(scope: !497, file: !45, line: 365, column: 8)
!504 = !DILocalVariable(name: "i", scope: !505, file: !45, line: 374, type: !23)
!505 = distinct !DILexicalBlock(scope: !506, file: !45, line: 373, column: 9)
!506 = distinct !DILexicalBlock(scope: !507, file: !45, line: 372, column: 5)
!507 = distinct !DILexicalBlock(scope: !497, file: !45, line: 371, column: 8)
!508 = !DILocation(line: 374, column: 17, scope: !505)
!509 = !DILocalVariable(name: "buffer", scope: !505, file: !45, line: 375, type: !204)
!510 = !DILocation(line: 375, column: 17, scope: !505)
!511 = !DILocation(line: 378, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !505, file: !45, line: 378, column: 17)
!513 = !DILocation(line: 378, column: 22, scope: !512)
!514 = !DILocation(line: 378, column: 17, scope: !505)
!515 = !DILocation(line: 380, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !45, line: 379, column: 13)
!517 = !DILocation(line: 380, column: 17, scope: !516)
!518 = !DILocation(line: 380, column: 30, scope: !516)
!519 = !DILocation(line: 382, column: 23, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !45, line: 382, column: 17)
!521 = !DILocation(line: 382, column: 21, scope: !520)
!522 = !DILocation(line: 382, column: 28, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !45, line: 382, column: 17)
!524 = !DILocation(line: 382, column: 30, scope: !523)
!525 = !DILocation(line: 382, column: 17, scope: !520)
!526 = !DILocation(line: 384, column: 41, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !45, line: 383, column: 17)
!528 = !DILocation(line: 384, column: 34, scope: !527)
!529 = !DILocation(line: 384, column: 21, scope: !527)
!530 = !DILocation(line: 385, column: 17, scope: !527)
!531 = !DILocation(line: 382, column: 37, scope: !523)
!532 = !DILocation(line: 382, column: 17, scope: !523)
!533 = distinct !{!533, !525, !534, !232}
!534 = !DILocation(line: 385, column: 17, scope: !520)
!535 = !DILocation(line: 386, column: 13, scope: !516)
!536 = !DILocation(line: 389, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !512, file: !45, line: 388, column: 13)
!538 = !DILocation(line: 393, column: 1, scope: !497)
!539 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_02_good", scope: !45, file: !45, line: 395, type: !105, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!540 = !DILocation(line: 397, column: 5, scope: !539)
!541 = !DILocation(line: 398, column: 5, scope: !539)
!542 = !DILocation(line: 399, column: 5, scope: !539)
!543 = !DILocation(line: 400, column: 5, scope: !539)
!544 = !DILocation(line: 401, column: 1, scope: !539)
!545 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !546, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !42}
!548 = !DILocalVariable(name: "line", arg: 1, scope: !545, file: !3, line: 11, type: !42)
!549 = !DILocation(line: 11, column: 25, scope: !545)
!550 = !DILocation(line: 13, column: 1, scope: !545)
!551 = !DILocation(line: 14, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !545, file: !3, line: 14, column: 8)
!553 = !DILocation(line: 14, column: 13, scope: !552)
!554 = !DILocation(line: 14, column: 8, scope: !545)
!555 = !DILocation(line: 16, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 15, column: 5)
!557 = !DILocation(line: 16, column: 9, scope: !556)
!558 = !DILocation(line: 17, column: 5, scope: !556)
!559 = !DILocation(line: 18, column: 5, scope: !545)
!560 = !DILocation(line: 19, column: 1, scope: !545)
!561 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !546, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DILocalVariable(name: "line", arg: 1, scope: !561, file: !3, line: 20, type: !42)
!563 = !DILocation(line: 20, column: 29, scope: !561)
!564 = !DILocation(line: 22, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 22, column: 8)
!566 = !DILocation(line: 22, column: 13, scope: !565)
!567 = !DILocation(line: 22, column: 8, scope: !561)
!568 = !DILocation(line: 24, column: 24, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 23, column: 5)
!570 = !DILocation(line: 24, column: 9, scope: !569)
!571 = !DILocation(line: 25, column: 5, scope: !569)
!572 = !DILocation(line: 26, column: 1, scope: !561)
!573 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !574, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !578, line: 74, baseType: !23)
!578 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!579 = !DILocalVariable(name: "line", arg: 1, scope: !573, file: !3, line: 27, type: !576)
!580 = !DILocation(line: 27, column: 29, scope: !573)
!581 = !DILocation(line: 29, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !573, file: !3, line: 29, column: 8)
!583 = !DILocation(line: 29, column: 13, scope: !582)
!584 = !DILocation(line: 29, column: 8, scope: !573)
!585 = !DILocation(line: 31, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 30, column: 5)
!587 = !DILocation(line: 31, column: 9, scope: !586)
!588 = !DILocation(line: 32, column: 5, scope: !586)
!589 = !DILocation(line: 33, column: 1, scope: !573)
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
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !125, line: 44, baseType: !619)
!631 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !625, file: !3, line: 55, type: !628)
!632 = !DILocation(line: 55, column: 33, scope: !625)
!633 = !DILocation(line: 57, column: 29, scope: !625)
!634 = !DILocation(line: 57, column: 5, scope: !625)
!635 = !DILocation(line: 58, column: 1, scope: !625)
!636 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !637, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !578, line: 46, baseType: !640)
!640 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!641 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !636, file: !3, line: 60, type: !639)
!642 = !DILocation(line: 60, column: 29, scope: !636)
!643 = !DILocation(line: 62, column: 21, scope: !636)
!644 = !DILocation(line: 62, column: 5, scope: !636)
!645 = !DILocation(line: 63, column: 1, scope: !636)
!646 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !647, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !43}
!649 = !DILocalVariable(name: "charHex", arg: 1, scope: !646, file: !3, line: 65, type: !43)
!650 = !DILocation(line: 65, column: 29, scope: !646)
!651 = !DILocation(line: 67, column: 22, scope: !646)
!652 = !DILocation(line: 67, column: 5, scope: !646)
!653 = !DILocation(line: 68, column: 1, scope: !646)
!654 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !655, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !577}
!657 = !DILocalVariable(name: "wideChar", arg: 1, scope: !654, file: !3, line: 70, type: !577)
!658 = !DILocation(line: 70, column: 29, scope: !654)
!659 = !DILocalVariable(name: "s", scope: !654, file: !3, line: 74, type: !660)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 64, elements: !661)
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
!672 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !673, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !7}
!675 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !672, file: !3, line: 80, type: !7)
!676 = !DILocation(line: 80, column: 33, scope: !672)
!677 = !DILocation(line: 82, column: 20, scope: !672)
!678 = !DILocation(line: 82, column: 5, scope: !672)
!679 = !DILocation(line: 83, column: 1, scope: !672)
!680 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !681, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !25}
!683 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !680, file: !3, line: 85, type: !25)
!684 = !DILocation(line: 85, column: 45, scope: !680)
!685 = !DILocation(line: 87, column: 22, scope: !680)
!686 = !DILocation(line: 87, column: 5, scope: !680)
!687 = !DILocation(line: 88, column: 1, scope: !680)
!688 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !689, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !691}
!691 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!692 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !688, file: !3, line: 90, type: !691)
!693 = !DILocation(line: 90, column: 29, scope: !688)
!694 = !DILocation(line: 92, column: 20, scope: !688)
!695 = !DILocation(line: 92, column: 5, scope: !688)
!696 = !DILocation(line: 93, column: 1, scope: !688)
!697 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !698, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !702, line: 100, baseType: !703)
!702 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_517/source_code")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !702, line: 96, size: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !703, file: !702, line: 98, baseType: !23, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !703, file: !702, line: 99, baseType: !23, size: 32, offset: 32)
!707 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !697, file: !3, line: 95, type: !700)
!708 = !DILocation(line: 95, column: 40, scope: !697)
!709 = !DILocation(line: 97, column: 26, scope: !697)
!710 = !DILocation(line: 97, column: 47, scope: !697)
!711 = !DILocation(line: 97, column: 55, scope: !697)
!712 = !DILocation(line: 97, column: 76, scope: !697)
!713 = !DILocation(line: 97, column: 5, scope: !697)
!714 = !DILocation(line: 98, column: 1, scope: !697)
!715 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !716, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !718, !639}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!719 = !DILocalVariable(name: "bytes", arg: 1, scope: !715, file: !3, line: 100, type: !718)
!720 = !DILocation(line: 100, column: 38, scope: !715)
!721 = !DILocalVariable(name: "numBytes", arg: 2, scope: !715, file: !3, line: 100, type: !639)
!722 = !DILocation(line: 100, column: 52, scope: !715)
!723 = !DILocalVariable(name: "i", scope: !715, file: !3, line: 102, type: !639)
!724 = !DILocation(line: 102, column: 12, scope: !715)
!725 = !DILocation(line: 103, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !715, file: !3, line: 103, column: 5)
!727 = !DILocation(line: 103, column: 10, scope: !726)
!728 = !DILocation(line: 103, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 103, column: 5)
!730 = !DILocation(line: 103, column: 21, scope: !729)
!731 = !DILocation(line: 103, column: 19, scope: !729)
!732 = !DILocation(line: 103, column: 5, scope: !726)
!733 = !DILocation(line: 105, column: 24, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !3, line: 104, column: 5)
!735 = !DILocation(line: 105, column: 30, scope: !734)
!736 = !DILocation(line: 105, column: 9, scope: !734)
!737 = !DILocation(line: 106, column: 5, scope: !734)
!738 = !DILocation(line: 103, column: 31, scope: !729)
!739 = !DILocation(line: 103, column: 5, scope: !729)
!740 = distinct !{!740, !732, !741, !232}
!741 = !DILocation(line: 106, column: 5, scope: !726)
!742 = !DILocation(line: 107, column: 5, scope: !715)
!743 = !DILocation(line: 108, column: 1, scope: !715)
!744 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !745, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!745 = !DISubroutineType(types: !746)
!746 = !{!639, !718, !639, !42}
!747 = !DILocalVariable(name: "bytes", arg: 1, scope: !744, file: !3, line: 113, type: !718)
!748 = !DILocation(line: 113, column: 39, scope: !744)
!749 = !DILocalVariable(name: "numBytes", arg: 2, scope: !744, file: !3, line: 113, type: !639)
!750 = !DILocation(line: 113, column: 53, scope: !744)
!751 = !DILocalVariable(name: "hex", arg: 3, scope: !744, file: !3, line: 113, type: !42)
!752 = !DILocation(line: 113, column: 71, scope: !744)
!753 = !DILocalVariable(name: "numWritten", scope: !744, file: !3, line: 115, type: !639)
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
!764 = !DILocalVariable(name: "byte", scope: !765, file: !3, line: 123, type: !23)
!765 = distinct !DILexicalBlock(scope: !744, file: !3, line: 122, column: 5)
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
!777 = distinct !{!777, !755, !778, !232}
!778 = !DILocation(line: 127, column: 5, scope: !744)
!779 = !DILocation(line: 129, column: 12, scope: !744)
!780 = !DILocation(line: 129, column: 5, scope: !744)
!781 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !782, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!782 = !DISubroutineType(types: !783)
!783 = !{!639, !718, !639, !576}
!784 = !DILocalVariable(name: "bytes", arg: 1, scope: !781, file: !3, line: 135, type: !718)
!785 = !DILocation(line: 135, column: 41, scope: !781)
!786 = !DILocalVariable(name: "numBytes", arg: 2, scope: !781, file: !3, line: 135, type: !639)
!787 = !DILocation(line: 135, column: 55, scope: !781)
!788 = !DILocalVariable(name: "hex", arg: 3, scope: !781, file: !3, line: 135, type: !576)
!789 = !DILocation(line: 135, column: 76, scope: !781)
!790 = !DILocalVariable(name: "numWritten", scope: !781, file: !3, line: 137, type: !639)
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
!808 = !DILocalVariable(name: "byte", scope: !809, file: !3, line: 145, type: !23)
!809 = distinct !DILexicalBlock(scope: !781, file: !3, line: 144, column: 5)
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
!821 = distinct !{!821, !792, !822, !232}
!822 = !DILocation(line: 149, column: 5, scope: !781)
!823 = !DILocation(line: 151, column: 12, scope: !781)
!824 = !DILocation(line: 151, column: 5, scope: !781)
!825 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !826, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!826 = !DISubroutineType(types: !827)
!827 = !{!23}
!828 = !DILocation(line: 158, column: 5, scope: !825)
!829 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !826, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DILocation(line: 163, column: 5, scope: !829)
!831 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !826, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!832 = !DILocation(line: 168, column: 13, scope: !831)
!833 = !DILocation(line: 168, column: 20, scope: !831)
!834 = !DILocation(line: 168, column: 5, scope: !831)
!835 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DILocation(line: 187, column: 16, scope: !835)
!837 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DILocation(line: 188, column: 16, scope: !837)
!839 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 189, column: 16, scope: !839)
!841 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 190, column: 16, scope: !841)
!843 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DILocation(line: 191, column: 16, scope: !843)
!845 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 192, column: 16, scope: !845)
!847 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 193, column: 16, scope: !847)
!849 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 194, column: 16, scope: !849)
!851 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!852 = !DILocation(line: 195, column: 16, scope: !851)
!853 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!854 = !DILocation(line: 198, column: 15, scope: !853)
!855 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!856 = !DILocation(line: 199, column: 15, scope: !855)
!857 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DILocation(line: 200, column: 15, scope: !857)
!859 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DILocation(line: 201, column: 15, scope: !859)
!861 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!862 = !DILocation(line: 202, column: 15, scope: !861)
!863 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 203, column: 15, scope: !863)
!865 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 204, column: 15, scope: !865)
!867 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 205, column: 15, scope: !867)
!869 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 206, column: 15, scope: !869)
