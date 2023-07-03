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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_bad() #0 !dbg !104 {
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
  br label %source, !dbg !111

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !112), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !117, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 -1, i32* %connectSocket, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  br label %do.body, !dbg !143

do.body:                                          ; preds = %source
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !144
  store i32 %call, i32* %connectSocket, align 4, !dbg !146
  %0 = load i32, i32* %connectSocket, align 4, !dbg !147
  %cmp = icmp eq i32 %0, -1, !dbg !149
  br i1 %cmp, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !151

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !153
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !154
  store i16 2, i16* %sin_family, align 4, !dbg !155
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !156
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !157
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !158
  store i32 %call1, i32* %s_addr, align 4, !dbg !159
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !160
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !161
  store i16 %call2, i16* %sin_port, align 2, !dbg !162
  %2 = load i32, i32* %connectSocket, align 4, !dbg !163
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !165
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !166
  %cmp4 = icmp eq i32 %call3, -1, !dbg !167
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !168

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !169

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !171
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !172
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !173
  %conv = trunc i64 %call7 to i32, !dbg !173
  store i32 %conv, i32* %recvResult, align 4, !dbg !174
  %5 = load i32, i32* %recvResult, align 4, !dbg !175
  %cmp8 = icmp eq i32 %5, -1, !dbg !177
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !178

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !179
  %cmp10 = icmp eq i32 %6, 0, !dbg !180
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !181

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !182

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !184
  %idxprom = sext i32 %7 to i64, !dbg !185
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !185
  store i8 0, i8* %arrayidx, align 1, !dbg !186
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !187
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !188
  store i32 %call15, i32* %data, align 4, !dbg !189
  br label %do.end, !dbg !190

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !191
  %cmp16 = icmp ne i32 %8, -1, !dbg !193
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !194

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !195
  %call19 = call i32 @close(i32 %9), !dbg !197
  br label %if.end20, !dbg !198

if.end20:                                         ; preds = %if.then18, %do.end
  br label %sink, !dbg !199

sink:                                             ; preds = %if.end20
  call void @llvm.dbg.label(metadata !200), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %i, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !205, metadata !DIExpression()), !dbg !209
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !209
  %11 = load i32, i32* %data, align 4, !dbg !210
  %cmp21 = icmp sge i32 %11, 0, !dbg !212
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !213

if.then23:                                        ; preds = %sink
  %12 = load i32, i32* %data, align 4, !dbg !214
  %idxprom24 = sext i32 %12 to i64, !dbg !216
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !216
  store i32 1, i32* %arrayidx25, align 4, !dbg !217
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !221
  %cmp26 = icmp slt i32 %13, 10, !dbg !223
  br i1 %cmp26, label %for.body, label %for.end, !dbg !224

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !225
  %idxprom28 = sext i32 %14 to i64, !dbg !227
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !227
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !227
  call void @printIntLine(i32 %15), !dbg !228
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !230
  %inc = add nsw i32 %16, 1, !dbg !230
  store i32 %inc, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !235

if.else:                                          ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !238
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
define dso_local void @goodB2G() #0 !dbg !239 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !240, metadata !DIExpression()), !dbg !241
  store i32 -1, i32* %data, align 4, !dbg !242
  br label %source, !dbg !243

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !244), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 -1, i32* %connectSocket, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !253, metadata !DIExpression()), !dbg !254
  br label %do.body, !dbg !255

do.body:                                          ; preds = %source
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !256
  store i32 %call, i32* %connectSocket, align 4, !dbg !258
  %0 = load i32, i32* %connectSocket, align 4, !dbg !259
  %cmp = icmp eq i32 %0, -1, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !263

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !265
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !266
  store i16 2, i16* %sin_family, align 4, !dbg !267
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !268
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !269
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !270
  store i32 %call1, i32* %s_addr, align 4, !dbg !271
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !272
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !273
  store i16 %call2, i16* %sin_port, align 2, !dbg !274
  %2 = load i32, i32* %connectSocket, align 4, !dbg !275
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !277
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !278
  %cmp4 = icmp eq i32 %call3, -1, !dbg !279
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !280

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !281

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !283
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !284
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !285
  %conv = trunc i64 %call7 to i32, !dbg !285
  store i32 %conv, i32* %recvResult, align 4, !dbg !286
  %5 = load i32, i32* %recvResult, align 4, !dbg !287
  %cmp8 = icmp eq i32 %5, -1, !dbg !289
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !290

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !291
  %cmp10 = icmp eq i32 %6, 0, !dbg !292
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !293

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !294

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !296
  %idxprom = sext i32 %7 to i64, !dbg !297
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !297
  store i8 0, i8* %arrayidx, align 1, !dbg !298
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !299
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !300
  store i32 %call15, i32* %data, align 4, !dbg !301
  br label %do.end, !dbg !302

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !303
  %cmp16 = icmp ne i32 %8, -1, !dbg !305
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !306

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !307
  %call19 = call i32 @close(i32 %9), !dbg !309
  br label %if.end20, !dbg !310

if.end20:                                         ; preds = %if.then18, %do.end
  br label %sink, !dbg !311

sink:                                             ; preds = %if.end20
  call void @llvm.dbg.label(metadata !312), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %i, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !317, metadata !DIExpression()), !dbg !318
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !318
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !318
  %11 = load i32, i32* %data, align 4, !dbg !319
  %cmp21 = icmp sge i32 %11, 0, !dbg !321
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !322

land.lhs.true:                                    ; preds = %sink
  %12 = load i32, i32* %data, align 4, !dbg !323
  %cmp23 = icmp slt i32 %12, 10, !dbg !324
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !325

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !326
  %idxprom26 = sext i32 %13 to i64, !dbg !328
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !328
  store i32 1, i32* %arrayidx27, align 4, !dbg !329
  store i32 0, i32* %i, align 4, !dbg !330
  br label %for.cond, !dbg !332

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !333
  %cmp28 = icmp slt i32 %14, 10, !dbg !335
  br i1 %cmp28, label %for.body, label %for.end, !dbg !336

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !337
  %idxprom30 = sext i32 %15 to i64, !dbg !339
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !339
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !339
  call void @printIntLine(i32 %16), !dbg !340
  br label %for.inc, !dbg !341

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !342
  %inc = add nsw i32 %17, 1, !dbg !342
  store i32 %inc, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !343, !llvm.loop !344

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !346

if.else:                                          ; preds = %land.lhs.true, %sink
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !347
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !350 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !351, metadata !DIExpression()), !dbg !352
  store i32 -1, i32* %data, align 4, !dbg !353
  br label %source, !dbg !354

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !355), !dbg !356
  store i32 7, i32* %data, align 4, !dbg !357
  br label %sink, !dbg !358

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !359), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %i, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !365
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !365
  %1 = load i32, i32* %data, align 4, !dbg !366
  %cmp = icmp sge i32 %1, 0, !dbg !368
  br i1 %cmp, label %if.then, label %if.else, !dbg !369

if.then:                                          ; preds = %sink
  %2 = load i32, i32* %data, align 4, !dbg !370
  %idxprom = sext i32 %2 to i64, !dbg !372
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !372
  store i32 1, i32* %arrayidx, align 4, !dbg !373
  store i32 0, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !376

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !377
  %cmp1 = icmp slt i32 %3, 10, !dbg !379
  br i1 %cmp1, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !381
  %idxprom2 = sext i32 %4 to i64, !dbg !383
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !383
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !383
  call void @printIntLine(i32 %5), !dbg !384
  br label %for.inc, !dbg !385

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !386
  %inc = add nsw i32 %6, 1, !dbg !386
  store i32 %inc, i32* %i, align 4, !dbg !386
  br label %for.cond, !dbg !387, !llvm.loop !388

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !390

if.else:                                          ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !391
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_good() #0 !dbg !394 {
entry:
  call void @goodB2G(), !dbg !395
  call void @goodG2B(), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !398 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !403
  %0 = load i8*, i8** %line.addr, align 8, !dbg !404
  %cmp = icmp ne i8* %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !408
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !412
  ret void, !dbg !413
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !414 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i8*, i8** %line.addr, align 8, !dbg !417
  %cmp = icmp ne i8* %0, null, !dbg !419
  br i1 %cmp, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !423
  br label %if.end, !dbg !424

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !426 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i32*, i32** %line.addr, align 8, !dbg !434
  %cmp = icmp ne i32* %0, null, !dbg !436
  br i1 %cmp, label %if.then, label %if.end, !dbg !437

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !438
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !440
  br label %if.end, !dbg !441

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !442
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !443 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !451 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !457
  %conv = sext i16 %0 to i32, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !460 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !466
  %conv = fpext float %0 to double, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !469 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !478 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !489 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !499 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !504
  %conv = sext i8 %0 to i32, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !507 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !512, metadata !DIExpression()), !dbg !516
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !517
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !518
  store i32 %0, i32* %arrayidx, align 4, !dbg !519
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !520
  store i32 0, i32* %arrayidx1, align 4, !dbg !521
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !525 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !533 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !538
  %conv = zext i8 %0 to i32, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !541 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !550 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !560, metadata !DIExpression()), !dbg !561
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !562
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !563
  %1 = load i32, i32* %intOne, align 4, !dbg !563
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !564
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !565
  %3 = load i32, i32* %intTwo, align 4, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !568 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !572, metadata !DIExpression()), !dbg !573
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i64* %i, metadata !576, metadata !DIExpression()), !dbg !577
  store i64 0, i64* %i, align 8, !dbg !578
  br label %for.cond, !dbg !580

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !581
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !583
  %cmp = icmp ult i64 %0, %1, !dbg !584
  br i1 %cmp, label %for.body, label %for.end, !dbg !585

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !586
  %3 = load i64, i64* %i, align 8, !dbg !588
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !586
  %4 = load i8, i8* %arrayidx, align 1, !dbg !586
  %conv = zext i8 %4 to i32, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !589
  br label %for.inc, !dbg !590

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !591
  %inc = add i64 %5, 1, !dbg !591
  store i64 %inc, i64* %i, align 8, !dbg !591
  br label %for.cond, !dbg !592, !llvm.loop !593

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !595
  ret void, !dbg !596
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !597 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !600, metadata !DIExpression()), !dbg !601
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !606, metadata !DIExpression()), !dbg !607
  store i64 0, i64* %numWritten, align 8, !dbg !607
  br label %while.cond, !dbg !608

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !609
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !610
  %cmp = icmp ult i64 %0, %1, !dbg !611
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !612

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !613
  %2 = load i16*, i16** %call, align 8, !dbg !613
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !613
  %4 = load i64, i64* %numWritten, align 8, !dbg !613
  %mul = mul i64 2, %4, !dbg !613
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !613
  %5 = load i8, i8* %arrayidx, align 1, !dbg !613
  %conv = sext i8 %5 to i32, !dbg !613
  %idxprom = sext i32 %conv to i64, !dbg !613
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !613
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !613
  %conv2 = zext i16 %6 to i32, !dbg !613
  %and = and i32 %conv2, 4096, !dbg !613
  %tobool = icmp ne i32 %and, 0, !dbg !613
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !614

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !615
  %7 = load i16*, i16** %call3, align 8, !dbg !615
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !615
  %9 = load i64, i64* %numWritten, align 8, !dbg !615
  %mul4 = mul i64 2, %9, !dbg !615
  %add = add i64 %mul4, 1, !dbg !615
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !615
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !615
  %conv6 = sext i8 %10 to i32, !dbg !615
  %idxprom7 = sext i32 %conv6 to i64, !dbg !615
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !615
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !615
  %conv9 = zext i16 %11 to i32, !dbg !615
  %and10 = and i32 %conv9, 4096, !dbg !615
  %tobool11 = icmp ne i32 %and10, 0, !dbg !614
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !616
  br i1 %12, label %while.body, label %while.end, !dbg !608

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !617, metadata !DIExpression()), !dbg !619
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !620
  %14 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul12 = mul i64 2, %14, !dbg !622
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !620
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !623
  %15 = load i32, i32* %byte, align 4, !dbg !624
  %conv15 = trunc i32 %15 to i8, !dbg !625
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !626
  %17 = load i64, i64* %numWritten, align 8, !dbg !627
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !626
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !628
  %18 = load i64, i64* %numWritten, align 8, !dbg !629
  %inc = add i64 %18, 1, !dbg !629
  store i64 %inc, i64* %numWritten, align 8, !dbg !629
  br label %while.cond, !dbg !608, !llvm.loop !630

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !632
  ret i64 %19, !dbg !633
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !634 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !639, metadata !DIExpression()), !dbg !640
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !641, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !643, metadata !DIExpression()), !dbg !644
  store i64 0, i64* %numWritten, align 8, !dbg !644
  br label %while.cond, !dbg !645

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !646
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !647
  %cmp = icmp ult i64 %0, %1, !dbg !648
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !649

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !650
  %3 = load i64, i64* %numWritten, align 8, !dbg !651
  %mul = mul i64 2, %3, !dbg !652
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !650
  %4 = load i32, i32* %arrayidx, align 4, !dbg !650
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !653
  %tobool = icmp ne i32 %call, 0, !dbg !653
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !654

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !655
  %6 = load i64, i64* %numWritten, align 8, !dbg !656
  %mul1 = mul i64 2, %6, !dbg !657
  %add = add i64 %mul1, 1, !dbg !658
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !655
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !655
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !659
  %tobool4 = icmp ne i32 %call3, 0, !dbg !654
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !660
  br i1 %8, label %while.body, label %while.end, !dbg !645

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !661, metadata !DIExpression()), !dbg !663
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !664
  %10 = load i64, i64* %numWritten, align 8, !dbg !665
  %mul5 = mul i64 2, %10, !dbg !666
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !664
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !667
  %11 = load i32, i32* %byte, align 4, !dbg !668
  %conv = trunc i32 %11 to i8, !dbg !669
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !670
  %13 = load i64, i64* %numWritten, align 8, !dbg !671
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !670
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !672
  %14 = load i64, i64* %numWritten, align 8, !dbg !673
  %inc = add i64 %14, 1, !dbg !673
  store i64 %inc, i64* %numWritten, align 8, !dbg !673
  br label %while.cond, !dbg !645, !llvm.loop !674

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !676
  ret i64 %15, !dbg !677
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !678 {
entry:
  ret i32 1, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !682 {
entry:
  ret i32 0, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !684 {
entry:
  %call = call i32 @rand() #7, !dbg !685
  %rem = srem i32 %call, 2, !dbg !686
  ret i32 %rem, !dbg !687
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !692 {
entry:
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !694 {
entry:
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !722 {
entry:
  ret void, !dbg !723
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_533/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_533/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocation(line: 50, column: 5, scope: !104)
!112 = !DILabel(scope: !104, name: "source", file: !45, line: 51)
!113 = !DILocation(line: 51, column: 1, scope: !104)
!114 = !DILocalVariable(name: "recvResult", scope: !115, file: !45, line: 57, type: !23)
!115 = distinct !DILexicalBlock(scope: !104, file: !45, line: 52, column: 5)
!116 = !DILocation(line: 57, column: 13, scope: !115)
!117 = !DILocalVariable(name: "service", scope: !115, file: !45, line: 58, type: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !119)
!119 = !{!120, !121, !127, !134}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !118, file: !60, line: 240, baseType: !94, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !118, file: !60, line: 241, baseType: !122, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !124, line: 25, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !126, line: 40, baseType: !24)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !118, file: !60, line: 242, baseType: !128, size: 32, offset: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !128, file: !60, line: 33, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 26, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !126, line: 42, baseType: !7)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !118, file: !60, line: 245, baseType: !135, size: 64, offset: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DILocation(line: 58, column: 28, scope: !115)
!139 = !DILocalVariable(name: "connectSocket", scope: !115, file: !45, line: 59, type: !23)
!140 = !DILocation(line: 59, column: 16, scope: !115)
!141 = !DILocalVariable(name: "inputBuffer", scope: !115, file: !45, line: 60, type: !97)
!142 = !DILocation(line: 60, column: 14, scope: !115)
!143 = !DILocation(line: 61, column: 9, scope: !115)
!144 = !DILocation(line: 71, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !115, file: !45, line: 62, column: 9)
!146 = !DILocation(line: 71, column: 27, scope: !145)
!147 = !DILocation(line: 72, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !45, line: 72, column: 17)
!149 = !DILocation(line: 72, column: 31, scope: !148)
!150 = !DILocation(line: 72, column: 17, scope: !145)
!151 = !DILocation(line: 74, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !45, line: 73, column: 13)
!153 = !DILocation(line: 76, column: 13, scope: !145)
!154 = !DILocation(line: 77, column: 21, scope: !145)
!155 = !DILocation(line: 77, column: 32, scope: !145)
!156 = !DILocation(line: 78, column: 39, scope: !145)
!157 = !DILocation(line: 78, column: 21, scope: !145)
!158 = !DILocation(line: 78, column: 30, scope: !145)
!159 = !DILocation(line: 78, column: 37, scope: !145)
!160 = !DILocation(line: 79, column: 32, scope: !145)
!161 = !DILocation(line: 79, column: 21, scope: !145)
!162 = !DILocation(line: 79, column: 30, scope: !145)
!163 = !DILocation(line: 80, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !145, file: !45, line: 80, column: 17)
!165 = !DILocation(line: 80, column: 40, scope: !164)
!166 = !DILocation(line: 80, column: 17, scope: !164)
!167 = !DILocation(line: 80, column: 85, scope: !164)
!168 = !DILocation(line: 80, column: 17, scope: !145)
!169 = !DILocation(line: 82, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !45, line: 81, column: 13)
!171 = !DILocation(line: 86, column: 31, scope: !145)
!172 = !DILocation(line: 86, column: 46, scope: !145)
!173 = !DILocation(line: 86, column: 26, scope: !145)
!174 = !DILocation(line: 86, column: 24, scope: !145)
!175 = !DILocation(line: 87, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !145, file: !45, line: 87, column: 17)
!177 = !DILocation(line: 87, column: 28, scope: !176)
!178 = !DILocation(line: 87, column: 44, scope: !176)
!179 = !DILocation(line: 87, column: 47, scope: !176)
!180 = !DILocation(line: 87, column: 58, scope: !176)
!181 = !DILocation(line: 87, column: 17, scope: !145)
!182 = !DILocation(line: 89, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !45, line: 88, column: 13)
!184 = !DILocation(line: 92, column: 25, scope: !145)
!185 = !DILocation(line: 92, column: 13, scope: !145)
!186 = !DILocation(line: 92, column: 37, scope: !145)
!187 = !DILocation(line: 94, column: 25, scope: !145)
!188 = !DILocation(line: 94, column: 20, scope: !145)
!189 = !DILocation(line: 94, column: 18, scope: !145)
!190 = !DILocation(line: 95, column: 9, scope: !145)
!191 = !DILocation(line: 97, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !115, file: !45, line: 97, column: 13)
!193 = !DILocation(line: 97, column: 27, scope: !192)
!194 = !DILocation(line: 97, column: 13, scope: !115)
!195 = !DILocation(line: 99, column: 26, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !45, line: 98, column: 9)
!197 = !DILocation(line: 99, column: 13, scope: !196)
!198 = !DILocation(line: 100, column: 9, scope: !196)
!199 = !DILocation(line: 108, column: 5, scope: !104)
!200 = !DILabel(scope: !104, name: "sink", file: !45, line: 109)
!201 = !DILocation(line: 109, column: 1, scope: !104)
!202 = !DILocalVariable(name: "i", scope: !203, file: !45, line: 111, type: !23)
!203 = distinct !DILexicalBlock(scope: !104, file: !45, line: 110, column: 5)
!204 = !DILocation(line: 111, column: 13, scope: !203)
!205 = !DILocalVariable(name: "buffer", scope: !203, file: !45, line: 112, type: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 10)
!209 = !DILocation(line: 112, column: 13, scope: !203)
!210 = !DILocation(line: 115, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !45, line: 115, column: 13)
!212 = !DILocation(line: 115, column: 18, scope: !211)
!213 = !DILocation(line: 115, column: 13, scope: !203)
!214 = !DILocation(line: 117, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !45, line: 116, column: 9)
!216 = !DILocation(line: 117, column: 13, scope: !215)
!217 = !DILocation(line: 117, column: 26, scope: !215)
!218 = !DILocation(line: 119, column: 19, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 119, column: 13)
!220 = !DILocation(line: 119, column: 17, scope: !219)
!221 = !DILocation(line: 119, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !45, line: 119, column: 13)
!223 = !DILocation(line: 119, column: 26, scope: !222)
!224 = !DILocation(line: 119, column: 13, scope: !219)
!225 = !DILocation(line: 121, column: 37, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !45, line: 120, column: 13)
!227 = !DILocation(line: 121, column: 30, scope: !226)
!228 = !DILocation(line: 121, column: 17, scope: !226)
!229 = !DILocation(line: 122, column: 13, scope: !226)
!230 = !DILocation(line: 119, column: 33, scope: !222)
!231 = !DILocation(line: 119, column: 13, scope: !222)
!232 = distinct !{!232, !224, !233, !234}
!233 = !DILocation(line: 122, column: 13, scope: !219)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !DILocation(line: 123, column: 9, scope: !215)
!236 = !DILocation(line: 126, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !211, file: !45, line: 125, column: 9)
!238 = !DILocation(line: 129, column: 1, scope: !104)
!239 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 136, type: !105, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!240 = !DILocalVariable(name: "data", scope: !239, file: !45, line: 138, type: !23)
!241 = !DILocation(line: 138, column: 9, scope: !239)
!242 = !DILocation(line: 140, column: 10, scope: !239)
!243 = !DILocation(line: 141, column: 5, scope: !239)
!244 = !DILabel(scope: !239, name: "source", file: !45, line: 142)
!245 = !DILocation(line: 142, column: 1, scope: !239)
!246 = !DILocalVariable(name: "recvResult", scope: !247, file: !45, line: 148, type: !23)
!247 = distinct !DILexicalBlock(scope: !239, file: !45, line: 143, column: 5)
!248 = !DILocation(line: 148, column: 13, scope: !247)
!249 = !DILocalVariable(name: "service", scope: !247, file: !45, line: 149, type: !118)
!250 = !DILocation(line: 149, column: 28, scope: !247)
!251 = !DILocalVariable(name: "connectSocket", scope: !247, file: !45, line: 150, type: !23)
!252 = !DILocation(line: 150, column: 16, scope: !247)
!253 = !DILocalVariable(name: "inputBuffer", scope: !247, file: !45, line: 151, type: !97)
!254 = !DILocation(line: 151, column: 14, scope: !247)
!255 = !DILocation(line: 152, column: 9, scope: !247)
!256 = !DILocation(line: 162, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !247, file: !45, line: 153, column: 9)
!258 = !DILocation(line: 162, column: 27, scope: !257)
!259 = !DILocation(line: 163, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !45, line: 163, column: 17)
!261 = !DILocation(line: 163, column: 31, scope: !260)
!262 = !DILocation(line: 163, column: 17, scope: !257)
!263 = !DILocation(line: 165, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !45, line: 164, column: 13)
!265 = !DILocation(line: 167, column: 13, scope: !257)
!266 = !DILocation(line: 168, column: 21, scope: !257)
!267 = !DILocation(line: 168, column: 32, scope: !257)
!268 = !DILocation(line: 169, column: 39, scope: !257)
!269 = !DILocation(line: 169, column: 21, scope: !257)
!270 = !DILocation(line: 169, column: 30, scope: !257)
!271 = !DILocation(line: 169, column: 37, scope: !257)
!272 = !DILocation(line: 170, column: 32, scope: !257)
!273 = !DILocation(line: 170, column: 21, scope: !257)
!274 = !DILocation(line: 170, column: 30, scope: !257)
!275 = !DILocation(line: 171, column: 25, scope: !276)
!276 = distinct !DILexicalBlock(scope: !257, file: !45, line: 171, column: 17)
!277 = !DILocation(line: 171, column: 40, scope: !276)
!278 = !DILocation(line: 171, column: 17, scope: !276)
!279 = !DILocation(line: 171, column: 85, scope: !276)
!280 = !DILocation(line: 171, column: 17, scope: !257)
!281 = !DILocation(line: 173, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !276, file: !45, line: 172, column: 13)
!283 = !DILocation(line: 177, column: 31, scope: !257)
!284 = !DILocation(line: 177, column: 46, scope: !257)
!285 = !DILocation(line: 177, column: 26, scope: !257)
!286 = !DILocation(line: 177, column: 24, scope: !257)
!287 = !DILocation(line: 178, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !257, file: !45, line: 178, column: 17)
!289 = !DILocation(line: 178, column: 28, scope: !288)
!290 = !DILocation(line: 178, column: 44, scope: !288)
!291 = !DILocation(line: 178, column: 47, scope: !288)
!292 = !DILocation(line: 178, column: 58, scope: !288)
!293 = !DILocation(line: 178, column: 17, scope: !257)
!294 = !DILocation(line: 180, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !45, line: 179, column: 13)
!296 = !DILocation(line: 183, column: 25, scope: !257)
!297 = !DILocation(line: 183, column: 13, scope: !257)
!298 = !DILocation(line: 183, column: 37, scope: !257)
!299 = !DILocation(line: 185, column: 25, scope: !257)
!300 = !DILocation(line: 185, column: 20, scope: !257)
!301 = !DILocation(line: 185, column: 18, scope: !257)
!302 = !DILocation(line: 186, column: 9, scope: !257)
!303 = !DILocation(line: 188, column: 13, scope: !304)
!304 = distinct !DILexicalBlock(scope: !247, file: !45, line: 188, column: 13)
!305 = !DILocation(line: 188, column: 27, scope: !304)
!306 = !DILocation(line: 188, column: 13, scope: !247)
!307 = !DILocation(line: 190, column: 26, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !45, line: 189, column: 9)
!309 = !DILocation(line: 190, column: 13, scope: !308)
!310 = !DILocation(line: 191, column: 9, scope: !308)
!311 = !DILocation(line: 199, column: 5, scope: !239)
!312 = !DILabel(scope: !239, name: "sink", file: !45, line: 200)
!313 = !DILocation(line: 200, column: 1, scope: !239)
!314 = !DILocalVariable(name: "i", scope: !315, file: !45, line: 202, type: !23)
!315 = distinct !DILexicalBlock(scope: !239, file: !45, line: 201, column: 5)
!316 = !DILocation(line: 202, column: 13, scope: !315)
!317 = !DILocalVariable(name: "buffer", scope: !315, file: !45, line: 203, type: !206)
!318 = !DILocation(line: 203, column: 13, scope: !315)
!319 = !DILocation(line: 205, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !45, line: 205, column: 13)
!321 = !DILocation(line: 205, column: 18, scope: !320)
!322 = !DILocation(line: 205, column: 23, scope: !320)
!323 = !DILocation(line: 205, column: 26, scope: !320)
!324 = !DILocation(line: 205, column: 31, scope: !320)
!325 = !DILocation(line: 205, column: 13, scope: !315)
!326 = !DILocation(line: 207, column: 20, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !45, line: 206, column: 9)
!328 = !DILocation(line: 207, column: 13, scope: !327)
!329 = !DILocation(line: 207, column: 26, scope: !327)
!330 = !DILocation(line: 209, column: 19, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !45, line: 209, column: 13)
!332 = !DILocation(line: 209, column: 17, scope: !331)
!333 = !DILocation(line: 209, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !45, line: 209, column: 13)
!335 = !DILocation(line: 209, column: 26, scope: !334)
!336 = !DILocation(line: 209, column: 13, scope: !331)
!337 = !DILocation(line: 211, column: 37, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !45, line: 210, column: 13)
!339 = !DILocation(line: 211, column: 30, scope: !338)
!340 = !DILocation(line: 211, column: 17, scope: !338)
!341 = !DILocation(line: 212, column: 13, scope: !338)
!342 = !DILocation(line: 209, column: 33, scope: !334)
!343 = !DILocation(line: 209, column: 13, scope: !334)
!344 = distinct !{!344, !336, !345, !234}
!345 = !DILocation(line: 212, column: 13, scope: !331)
!346 = !DILocation(line: 213, column: 9, scope: !327)
!347 = !DILocation(line: 216, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !320, file: !45, line: 215, column: 9)
!349 = !DILocation(line: 219, column: 1, scope: !239)
!350 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 222, type: !105, scopeLine: 223, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!351 = !DILocalVariable(name: "data", scope: !350, file: !45, line: 224, type: !23)
!352 = !DILocation(line: 224, column: 9, scope: !350)
!353 = !DILocation(line: 226, column: 10, scope: !350)
!354 = !DILocation(line: 227, column: 5, scope: !350)
!355 = !DILabel(scope: !350, name: "source", file: !45, line: 228)
!356 = !DILocation(line: 228, column: 1, scope: !350)
!357 = !DILocation(line: 231, column: 10, scope: !350)
!358 = !DILocation(line: 232, column: 5, scope: !350)
!359 = !DILabel(scope: !350, name: "sink", file: !45, line: 233)
!360 = !DILocation(line: 233, column: 1, scope: !350)
!361 = !DILocalVariable(name: "i", scope: !362, file: !45, line: 235, type: !23)
!362 = distinct !DILexicalBlock(scope: !350, file: !45, line: 234, column: 5)
!363 = !DILocation(line: 235, column: 13, scope: !362)
!364 = !DILocalVariable(name: "buffer", scope: !362, file: !45, line: 236, type: !206)
!365 = !DILocation(line: 236, column: 13, scope: !362)
!366 = !DILocation(line: 239, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !45, line: 239, column: 13)
!368 = !DILocation(line: 239, column: 18, scope: !367)
!369 = !DILocation(line: 239, column: 13, scope: !362)
!370 = !DILocation(line: 241, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !45, line: 240, column: 9)
!372 = !DILocation(line: 241, column: 13, scope: !371)
!373 = !DILocation(line: 241, column: 26, scope: !371)
!374 = !DILocation(line: 243, column: 19, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !45, line: 243, column: 13)
!376 = !DILocation(line: 243, column: 17, scope: !375)
!377 = !DILocation(line: 243, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !45, line: 243, column: 13)
!379 = !DILocation(line: 243, column: 26, scope: !378)
!380 = !DILocation(line: 243, column: 13, scope: !375)
!381 = !DILocation(line: 245, column: 37, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !45, line: 244, column: 13)
!383 = !DILocation(line: 245, column: 30, scope: !382)
!384 = !DILocation(line: 245, column: 17, scope: !382)
!385 = !DILocation(line: 246, column: 13, scope: !382)
!386 = !DILocation(line: 243, column: 33, scope: !378)
!387 = !DILocation(line: 243, column: 13, scope: !378)
!388 = distinct !{!388, !380, !389, !234}
!389 = !DILocation(line: 246, column: 13, scope: !375)
!390 = !DILocation(line: 247, column: 9, scope: !371)
!391 = !DILocation(line: 250, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !367, file: !45, line: 249, column: 9)
!393 = !DILocation(line: 253, column: 1, scope: !350)
!394 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_good", scope: !45, file: !45, line: 255, type: !105, scopeLine: 256, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!395 = !DILocation(line: 257, column: 5, scope: !394)
!396 = !DILocation(line: 258, column: 5, scope: !394)
!397 = !DILocation(line: 259, column: 1, scope: !394)
!398 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !399, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !42}
!401 = !DILocalVariable(name: "line", arg: 1, scope: !398, file: !3, line: 11, type: !42)
!402 = !DILocation(line: 11, column: 25, scope: !398)
!403 = !DILocation(line: 13, column: 1, scope: !398)
!404 = !DILocation(line: 14, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !3, line: 14, column: 8)
!406 = !DILocation(line: 14, column: 13, scope: !405)
!407 = !DILocation(line: 14, column: 8, scope: !398)
!408 = !DILocation(line: 16, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 15, column: 5)
!410 = !DILocation(line: 16, column: 9, scope: !409)
!411 = !DILocation(line: 17, column: 5, scope: !409)
!412 = !DILocation(line: 18, column: 5, scope: !398)
!413 = !DILocation(line: 19, column: 1, scope: !398)
!414 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !399, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!415 = !DILocalVariable(name: "line", arg: 1, scope: !414, file: !3, line: 20, type: !42)
!416 = !DILocation(line: 20, column: 29, scope: !414)
!417 = !DILocation(line: 22, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !3, line: 22, column: 8)
!419 = !DILocation(line: 22, column: 13, scope: !418)
!420 = !DILocation(line: 22, column: 8, scope: !414)
!421 = !DILocation(line: 24, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 23, column: 5)
!423 = !DILocation(line: 24, column: 9, scope: !422)
!424 = !DILocation(line: 25, column: 5, scope: !422)
!425 = !DILocation(line: 26, column: 1, scope: !414)
!426 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !427, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !431, line: 74, baseType: !23)
!431 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!432 = !DILocalVariable(name: "line", arg: 1, scope: !426, file: !3, line: 27, type: !429)
!433 = !DILocation(line: 27, column: 29, scope: !426)
!434 = !DILocation(line: 29, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !426, file: !3, line: 29, column: 8)
!436 = !DILocation(line: 29, column: 13, scope: !435)
!437 = !DILocation(line: 29, column: 8, scope: !426)
!438 = !DILocation(line: 31, column: 27, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 30, column: 5)
!440 = !DILocation(line: 31, column: 9, scope: !439)
!441 = !DILocation(line: 32, column: 5, scope: !439)
!442 = !DILocation(line: 33, column: 1, scope: !426)
!443 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !444, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !23}
!446 = !DILocalVariable(name: "intNumber", arg: 1, scope: !443, file: !3, line: 35, type: !23)
!447 = !DILocation(line: 35, column: 24, scope: !443)
!448 = !DILocation(line: 37, column: 20, scope: !443)
!449 = !DILocation(line: 37, column: 5, scope: !443)
!450 = !DILocation(line: 38, column: 1, scope: !443)
!451 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !452, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!455 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !451, file: !3, line: 40, type: !454)
!456 = !DILocation(line: 40, column: 28, scope: !451)
!457 = !DILocation(line: 42, column: 21, scope: !451)
!458 = !DILocation(line: 42, column: 5, scope: !451)
!459 = !DILocation(line: 43, column: 1, scope: !451)
!460 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !461, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!464 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !460, file: !3, line: 45, type: !463)
!465 = !DILocation(line: 45, column: 28, scope: !460)
!466 = !DILocation(line: 47, column: 20, scope: !460)
!467 = !DILocation(line: 47, column: 5, scope: !460)
!468 = !DILocation(line: 48, column: 1, scope: !460)
!469 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !470, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472}
!472 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!473 = !DILocalVariable(name: "longNumber", arg: 1, scope: !469, file: !3, line: 50, type: !472)
!474 = !DILocation(line: 50, column: 26, scope: !469)
!475 = !DILocation(line: 52, column: 21, scope: !469)
!476 = !DILocation(line: 52, column: 5, scope: !469)
!477 = !DILocation(line: 53, column: 1, scope: !469)
!478 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !479, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !482, line: 27, baseType: !483)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !126, line: 44, baseType: !472)
!484 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !478, file: !3, line: 55, type: !481)
!485 = !DILocation(line: 55, column: 33, scope: !478)
!486 = !DILocation(line: 57, column: 29, scope: !478)
!487 = !DILocation(line: 57, column: 5, scope: !478)
!488 = !DILocation(line: 58, column: 1, scope: !478)
!489 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !490, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !431, line: 46, baseType: !493)
!493 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!494 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !489, file: !3, line: 60, type: !492)
!495 = !DILocation(line: 60, column: 29, scope: !489)
!496 = !DILocation(line: 62, column: 21, scope: !489)
!497 = !DILocation(line: 62, column: 5, scope: !489)
!498 = !DILocation(line: 63, column: 1, scope: !489)
!499 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !500, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !43}
!502 = !DILocalVariable(name: "charHex", arg: 1, scope: !499, file: !3, line: 65, type: !43)
!503 = !DILocation(line: 65, column: 29, scope: !499)
!504 = !DILocation(line: 67, column: 22, scope: !499)
!505 = !DILocation(line: 67, column: 5, scope: !499)
!506 = !DILocation(line: 68, column: 1, scope: !499)
!507 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !508, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !430}
!510 = !DILocalVariable(name: "wideChar", arg: 1, scope: !507, file: !3, line: 70, type: !430)
!511 = !DILocation(line: 70, column: 29, scope: !507)
!512 = !DILocalVariable(name: "s", scope: !507, file: !3, line: 74, type: !513)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 64, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 2)
!516 = !DILocation(line: 74, column: 13, scope: !507)
!517 = !DILocation(line: 75, column: 16, scope: !507)
!518 = !DILocation(line: 75, column: 9, scope: !507)
!519 = !DILocation(line: 75, column: 14, scope: !507)
!520 = !DILocation(line: 76, column: 9, scope: !507)
!521 = !DILocation(line: 76, column: 14, scope: !507)
!522 = !DILocation(line: 77, column: 21, scope: !507)
!523 = !DILocation(line: 77, column: 5, scope: !507)
!524 = !DILocation(line: 78, column: 1, scope: !507)
!525 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !526, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !7}
!528 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !525, file: !3, line: 80, type: !7)
!529 = !DILocation(line: 80, column: 33, scope: !525)
!530 = !DILocation(line: 82, column: 20, scope: !525)
!531 = !DILocation(line: 82, column: 5, scope: !525)
!532 = !DILocation(line: 83, column: 1, scope: !525)
!533 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !534, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !25}
!536 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !533, file: !3, line: 85, type: !25)
!537 = !DILocation(line: 85, column: 45, scope: !533)
!538 = !DILocation(line: 87, column: 22, scope: !533)
!539 = !DILocation(line: 87, column: 5, scope: !533)
!540 = !DILocation(line: 88, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !542, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!545 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !541, file: !3, line: 90, type: !544)
!546 = !DILocation(line: 90, column: 29, scope: !541)
!547 = !DILocation(line: 92, column: 20, scope: !541)
!548 = !DILocation(line: 92, column: 5, scope: !541)
!549 = !DILocation(line: 93, column: 1, scope: !541)
!550 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !551, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !555, line: 100, baseType: !556)
!555 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_533/source_code")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !555, line: 96, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !556, file: !555, line: 98, baseType: !23, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !556, file: !555, line: 99, baseType: !23, size: 32, offset: 32)
!560 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !550, file: !3, line: 95, type: !553)
!561 = !DILocation(line: 95, column: 40, scope: !550)
!562 = !DILocation(line: 97, column: 26, scope: !550)
!563 = !DILocation(line: 97, column: 47, scope: !550)
!564 = !DILocation(line: 97, column: 55, scope: !550)
!565 = !DILocation(line: 97, column: 76, scope: !550)
!566 = !DILocation(line: 97, column: 5, scope: !550)
!567 = !DILocation(line: 98, column: 1, scope: !550)
!568 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !569, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571, !492}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!572 = !DILocalVariable(name: "bytes", arg: 1, scope: !568, file: !3, line: 100, type: !571)
!573 = !DILocation(line: 100, column: 38, scope: !568)
!574 = !DILocalVariable(name: "numBytes", arg: 2, scope: !568, file: !3, line: 100, type: !492)
!575 = !DILocation(line: 100, column: 52, scope: !568)
!576 = !DILocalVariable(name: "i", scope: !568, file: !3, line: 102, type: !492)
!577 = !DILocation(line: 102, column: 12, scope: !568)
!578 = !DILocation(line: 103, column: 12, scope: !579)
!579 = distinct !DILexicalBlock(scope: !568, file: !3, line: 103, column: 5)
!580 = !DILocation(line: 103, column: 10, scope: !579)
!581 = !DILocation(line: 103, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !3, line: 103, column: 5)
!583 = !DILocation(line: 103, column: 21, scope: !582)
!584 = !DILocation(line: 103, column: 19, scope: !582)
!585 = !DILocation(line: 103, column: 5, scope: !579)
!586 = !DILocation(line: 105, column: 24, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !3, line: 104, column: 5)
!588 = !DILocation(line: 105, column: 30, scope: !587)
!589 = !DILocation(line: 105, column: 9, scope: !587)
!590 = !DILocation(line: 106, column: 5, scope: !587)
!591 = !DILocation(line: 103, column: 31, scope: !582)
!592 = !DILocation(line: 103, column: 5, scope: !582)
!593 = distinct !{!593, !585, !594, !234}
!594 = !DILocation(line: 106, column: 5, scope: !579)
!595 = !DILocation(line: 107, column: 5, scope: !568)
!596 = !DILocation(line: 108, column: 1, scope: !568)
!597 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !598, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{!492, !571, !492, !42}
!600 = !DILocalVariable(name: "bytes", arg: 1, scope: !597, file: !3, line: 113, type: !571)
!601 = !DILocation(line: 113, column: 39, scope: !597)
!602 = !DILocalVariable(name: "numBytes", arg: 2, scope: !597, file: !3, line: 113, type: !492)
!603 = !DILocation(line: 113, column: 53, scope: !597)
!604 = !DILocalVariable(name: "hex", arg: 3, scope: !597, file: !3, line: 113, type: !42)
!605 = !DILocation(line: 113, column: 71, scope: !597)
!606 = !DILocalVariable(name: "numWritten", scope: !597, file: !3, line: 115, type: !492)
!607 = !DILocation(line: 115, column: 12, scope: !597)
!608 = !DILocation(line: 121, column: 5, scope: !597)
!609 = !DILocation(line: 121, column: 12, scope: !597)
!610 = !DILocation(line: 121, column: 25, scope: !597)
!611 = !DILocation(line: 121, column: 23, scope: !597)
!612 = !DILocation(line: 121, column: 34, scope: !597)
!613 = !DILocation(line: 121, column: 37, scope: !597)
!614 = !DILocation(line: 121, column: 67, scope: !597)
!615 = !DILocation(line: 121, column: 70, scope: !597)
!616 = !DILocation(line: 0, scope: !597)
!617 = !DILocalVariable(name: "byte", scope: !618, file: !3, line: 123, type: !23)
!618 = distinct !DILexicalBlock(scope: !597, file: !3, line: 122, column: 5)
!619 = !DILocation(line: 123, column: 13, scope: !618)
!620 = !DILocation(line: 124, column: 17, scope: !618)
!621 = !DILocation(line: 124, column: 25, scope: !618)
!622 = !DILocation(line: 124, column: 23, scope: !618)
!623 = !DILocation(line: 124, column: 9, scope: !618)
!624 = !DILocation(line: 125, column: 45, scope: !618)
!625 = !DILocation(line: 125, column: 29, scope: !618)
!626 = !DILocation(line: 125, column: 9, scope: !618)
!627 = !DILocation(line: 125, column: 15, scope: !618)
!628 = !DILocation(line: 125, column: 27, scope: !618)
!629 = !DILocation(line: 126, column: 9, scope: !618)
!630 = distinct !{!630, !608, !631, !234}
!631 = !DILocation(line: 127, column: 5, scope: !597)
!632 = !DILocation(line: 129, column: 12, scope: !597)
!633 = !DILocation(line: 129, column: 5, scope: !597)
!634 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !635, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!635 = !DISubroutineType(types: !636)
!636 = !{!492, !571, !492, !429}
!637 = !DILocalVariable(name: "bytes", arg: 1, scope: !634, file: !3, line: 135, type: !571)
!638 = !DILocation(line: 135, column: 41, scope: !634)
!639 = !DILocalVariable(name: "numBytes", arg: 2, scope: !634, file: !3, line: 135, type: !492)
!640 = !DILocation(line: 135, column: 55, scope: !634)
!641 = !DILocalVariable(name: "hex", arg: 3, scope: !634, file: !3, line: 135, type: !429)
!642 = !DILocation(line: 135, column: 76, scope: !634)
!643 = !DILocalVariable(name: "numWritten", scope: !634, file: !3, line: 137, type: !492)
!644 = !DILocation(line: 137, column: 12, scope: !634)
!645 = !DILocation(line: 143, column: 5, scope: !634)
!646 = !DILocation(line: 143, column: 12, scope: !634)
!647 = !DILocation(line: 143, column: 25, scope: !634)
!648 = !DILocation(line: 143, column: 23, scope: !634)
!649 = !DILocation(line: 143, column: 34, scope: !634)
!650 = !DILocation(line: 143, column: 47, scope: !634)
!651 = !DILocation(line: 143, column: 55, scope: !634)
!652 = !DILocation(line: 143, column: 53, scope: !634)
!653 = !DILocation(line: 143, column: 37, scope: !634)
!654 = !DILocation(line: 143, column: 68, scope: !634)
!655 = !DILocation(line: 143, column: 81, scope: !634)
!656 = !DILocation(line: 143, column: 89, scope: !634)
!657 = !DILocation(line: 143, column: 87, scope: !634)
!658 = !DILocation(line: 143, column: 100, scope: !634)
!659 = !DILocation(line: 143, column: 71, scope: !634)
!660 = !DILocation(line: 0, scope: !634)
!661 = !DILocalVariable(name: "byte", scope: !662, file: !3, line: 145, type: !23)
!662 = distinct !DILexicalBlock(scope: !634, file: !3, line: 144, column: 5)
!663 = !DILocation(line: 145, column: 13, scope: !662)
!664 = !DILocation(line: 146, column: 18, scope: !662)
!665 = !DILocation(line: 146, column: 26, scope: !662)
!666 = !DILocation(line: 146, column: 24, scope: !662)
!667 = !DILocation(line: 146, column: 9, scope: !662)
!668 = !DILocation(line: 147, column: 45, scope: !662)
!669 = !DILocation(line: 147, column: 29, scope: !662)
!670 = !DILocation(line: 147, column: 9, scope: !662)
!671 = !DILocation(line: 147, column: 15, scope: !662)
!672 = !DILocation(line: 147, column: 27, scope: !662)
!673 = !DILocation(line: 148, column: 9, scope: !662)
!674 = distinct !{!674, !645, !675, !234}
!675 = !DILocation(line: 149, column: 5, scope: !634)
!676 = !DILocation(line: 151, column: 12, scope: !634)
!677 = !DILocation(line: 151, column: 5, scope: !634)
!678 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !679, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!679 = !DISubroutineType(types: !680)
!680 = !{!23}
!681 = !DILocation(line: 158, column: 5, scope: !678)
!682 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !679, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!683 = !DILocation(line: 163, column: 5, scope: !682)
!684 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !679, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!685 = !DILocation(line: 168, column: 13, scope: !684)
!686 = !DILocation(line: 168, column: 20, scope: !684)
!687 = !DILocation(line: 168, column: 5, scope: !684)
!688 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!689 = !DILocation(line: 187, column: 16, scope: !688)
!690 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DILocation(line: 188, column: 16, scope: !690)
!692 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!693 = !DILocation(line: 189, column: 16, scope: !692)
!694 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!695 = !DILocation(line: 190, column: 16, scope: !694)
!696 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!697 = !DILocation(line: 191, column: 16, scope: !696)
!698 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DILocation(line: 192, column: 16, scope: !698)
!700 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!701 = !DILocation(line: 193, column: 16, scope: !700)
!702 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!703 = !DILocation(line: 194, column: 16, scope: !702)
!704 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!705 = !DILocation(line: 195, column: 16, scope: !704)
!706 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DILocation(line: 198, column: 15, scope: !706)
!708 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!709 = !DILocation(line: 199, column: 15, scope: !708)
!710 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!711 = !DILocation(line: 200, column: 15, scope: !710)
!712 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!713 = !DILocation(line: 201, column: 15, scope: !712)
!714 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!715 = !DILocation(line: 202, column: 15, scope: !714)
!716 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!717 = !DILocation(line: 203, column: 15, scope: !716)
!718 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!719 = !DILocation(line: 204, column: 15, scope: !718)
!720 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DILocation(line: 205, column: 15, scope: !720)
!722 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DILocation(line: 206, column: 15, scope: !722)
