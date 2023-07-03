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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad() #0 !dbg !104 {
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
  br label %while.body, !dbg !111

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !116, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 -1, i32* %connectSocket, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  br label %do.body, !dbg !142

do.body:                                          ; preds = %while.body
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
  br label %while.end, !dbg !198

while.end:                                        ; preds = %if.end20
  br label %while.body21, !dbg !199

while.body21:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !204, metadata !DIExpression()), !dbg !208
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !208
  %11 = load i32, i32* %data, align 4, !dbg !209
  %cmp22 = icmp sge i32 %11, 0, !dbg !211
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !212

if.then24:                                        ; preds = %while.body21
  %12 = load i32, i32* %data, align 4, !dbg !213
  %idxprom25 = sext i32 %12 to i64, !dbg !215
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !215
  store i32 1, i32* %arrayidx26, align 4, !dbg !216
  store i32 0, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !219

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !220
  %cmp27 = icmp slt i32 %13, 10, !dbg !222
  br i1 %cmp27, label %for.body, label %for.end, !dbg !223

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !224
  %idxprom29 = sext i32 %14 to i64, !dbg !226
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !226
  %15 = load i32, i32* %arrayidx30, align 4, !dbg !226
  call void @printIntLine(i32 %15), !dbg !227
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !229
  %inc = add nsw i32 %16, 1, !dbg !229
  store i32 %inc, i32* %i, align 4, !dbg !229
  br label %for.cond, !dbg !230, !llvm.loop !231

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !234

if.else:                                          ; preds = %while.body21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !235
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %while.end32, !dbg !237

while.end32:                                      ; preds = %if.end31
  ret void, !dbg !238
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
  br label %while.body, !dbg !243

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 -1, i32* %connectSocket, align 4, !dbg !251
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !252, metadata !DIExpression()), !dbg !253
  br label %do.body, !dbg !254

do.body:                                          ; preds = %while.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !255
  store i32 %call, i32* %connectSocket, align 4, !dbg !257
  %0 = load i32, i32* %connectSocket, align 4, !dbg !258
  %cmp = icmp eq i32 %0, -1, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !262

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !264
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !264
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !265
  store i16 2, i16* %sin_family, align 4, !dbg !266
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !267
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !268
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !269
  store i32 %call1, i32* %s_addr, align 4, !dbg !270
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !271
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !272
  store i16 %call2, i16* %sin_port, align 2, !dbg !273
  %2 = load i32, i32* %connectSocket, align 4, !dbg !274
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !276
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !277
  %cmp4 = icmp eq i32 %call3, -1, !dbg !278
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !279

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !280

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !282
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !283
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !284
  %conv = trunc i64 %call7 to i32, !dbg !284
  store i32 %conv, i32* %recvResult, align 4, !dbg !285
  %5 = load i32, i32* %recvResult, align 4, !dbg !286
  %cmp8 = icmp eq i32 %5, -1, !dbg !288
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !289

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !290
  %cmp10 = icmp eq i32 %6, 0, !dbg !291
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !292

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !293

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !295
  %idxprom = sext i32 %7 to i64, !dbg !296
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !296
  store i8 0, i8* %arrayidx, align 1, !dbg !297
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !298
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !299
  store i32 %call15, i32* %data, align 4, !dbg !300
  br label %do.end, !dbg !301

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !302
  %cmp16 = icmp ne i32 %8, -1, !dbg !304
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !305

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !306
  %call19 = call i32 @close(i32 %9), !dbg !308
  br label %if.end20, !dbg !309

if.end20:                                         ; preds = %if.then18, %do.end
  br label %while.end, !dbg !310

while.end:                                        ; preds = %if.end20
  br label %while.body21, !dbg !311

while.body21:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !312, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !316, metadata !DIExpression()), !dbg !317
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !317
  %11 = load i32, i32* %data, align 4, !dbg !318
  %cmp22 = icmp sge i32 %11, 0, !dbg !320
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !321

land.lhs.true:                                    ; preds = %while.body21
  %12 = load i32, i32* %data, align 4, !dbg !322
  %cmp24 = icmp slt i32 %12, 10, !dbg !323
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !324

if.then26:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !325
  %idxprom27 = sext i32 %13 to i64, !dbg !327
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !327
  store i32 1, i32* %arrayidx28, align 4, !dbg !328
  store i32 0, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %for.inc, %if.then26
  %14 = load i32, i32* %i, align 4, !dbg !332
  %cmp29 = icmp slt i32 %14, 10, !dbg !334
  br i1 %cmp29, label %for.body, label %for.end, !dbg !335

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !336
  %idxprom31 = sext i32 %15 to i64, !dbg !338
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !338
  %16 = load i32, i32* %arrayidx32, align 4, !dbg !338
  call void @printIntLine(i32 %16), !dbg !339
  br label %for.inc, !dbg !340

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !341
  %inc = add nsw i32 %17, 1, !dbg !341
  store i32 %inc, i32* %i, align 4, !dbg !341
  br label %for.cond, !dbg !342, !llvm.loop !343

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !345

if.else:                                          ; preds = %land.lhs.true, %while.body21
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !346
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  br label %while.end34, !dbg !348

while.end34:                                      ; preds = %if.end33
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
  br label %while.body, !dbg !354

while.body:                                       ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !355
  br label %while.end, !dbg !357

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !358

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !359, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !364
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !364
  %1 = load i32, i32* %data, align 4, !dbg !365
  %cmp = icmp sge i32 %1, 0, !dbg !367
  br i1 %cmp, label %if.then, label %if.else, !dbg !368

if.then:                                          ; preds = %while.body1
  %2 = load i32, i32* %data, align 4, !dbg !369
  %idxprom = sext i32 %2 to i64, !dbg !371
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !371
  store i32 1, i32* %arrayidx, align 4, !dbg !372
  store i32 0, i32* %i, align 4, !dbg !373
  br label %for.cond, !dbg !375

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !376
  %cmp2 = icmp slt i32 %3, 10, !dbg !378
  br i1 %cmp2, label %for.body, label %for.end, !dbg !379

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !380
  %idxprom3 = sext i32 %4 to i64, !dbg !382
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !382
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !382
  call void @printIntLine(i32 %5), !dbg !383
  br label %for.inc, !dbg !384

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !385
  %inc = add nsw i32 %6, 1, !dbg !385
  store i32 %inc, i32* %i, align 4, !dbg !385
  br label %for.cond, !dbg !386, !llvm.loop !387

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !389

if.else:                                          ; preds = %while.body1
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !390
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %while.end5, !dbg !392

while.end5:                                       ; preds = %if.end
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_good() #0 !dbg !394 {
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_531/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_531/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocation(line: 50, column: 5, scope: !104)
!112 = !DILocalVariable(name: "recvResult", scope: !113, file: !45, line: 57, type: !23)
!113 = distinct !DILexicalBlock(scope: !114, file: !45, line: 52, column: 9)
!114 = distinct !DILexicalBlock(scope: !104, file: !45, line: 51, column: 5)
!115 = !DILocation(line: 57, column: 17, scope: !113)
!116 = !DILocalVariable(name: "service", scope: !113, file: !45, line: 58, type: !117)
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
!137 = !DILocation(line: 58, column: 32, scope: !113)
!138 = !DILocalVariable(name: "connectSocket", scope: !113, file: !45, line: 59, type: !23)
!139 = !DILocation(line: 59, column: 20, scope: !113)
!140 = !DILocalVariable(name: "inputBuffer", scope: !113, file: !45, line: 60, type: !97)
!141 = !DILocation(line: 60, column: 18, scope: !113)
!142 = !DILocation(line: 61, column: 13, scope: !113)
!143 = !DILocation(line: 71, column: 33, scope: !144)
!144 = distinct !DILexicalBlock(scope: !113, file: !45, line: 62, column: 13)
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
!191 = distinct !DILexicalBlock(scope: !113, file: !45, line: 97, column: 17)
!192 = !DILocation(line: 97, column: 31, scope: !191)
!193 = !DILocation(line: 97, column: 17, scope: !113)
!194 = !DILocation(line: 99, column: 30, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !45, line: 98, column: 13)
!196 = !DILocation(line: 99, column: 17, scope: !195)
!197 = !DILocation(line: 100, column: 13, scope: !195)
!198 = !DILocation(line: 108, column: 9, scope: !114)
!199 = !DILocation(line: 110, column: 5, scope: !104)
!200 = !DILocalVariable(name: "i", scope: !201, file: !45, line: 113, type: !23)
!201 = distinct !DILexicalBlock(scope: !202, file: !45, line: 112, column: 9)
!202 = distinct !DILexicalBlock(scope: !104, file: !45, line: 111, column: 5)
!203 = !DILocation(line: 113, column: 17, scope: !201)
!204 = !DILocalVariable(name: "buffer", scope: !201, file: !45, line: 114, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 10)
!208 = !DILocation(line: 114, column: 17, scope: !201)
!209 = !DILocation(line: 117, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !201, file: !45, line: 117, column: 17)
!211 = !DILocation(line: 117, column: 22, scope: !210)
!212 = !DILocation(line: 117, column: 17, scope: !201)
!213 = !DILocation(line: 119, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 118, column: 13)
!215 = !DILocation(line: 119, column: 17, scope: !214)
!216 = !DILocation(line: 119, column: 30, scope: !214)
!217 = !DILocation(line: 121, column: 23, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !45, line: 121, column: 17)
!219 = !DILocation(line: 121, column: 21, scope: !218)
!220 = !DILocation(line: 121, column: 28, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !45, line: 121, column: 17)
!222 = !DILocation(line: 121, column: 30, scope: !221)
!223 = !DILocation(line: 121, column: 17, scope: !218)
!224 = !DILocation(line: 123, column: 41, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 122, column: 17)
!226 = !DILocation(line: 123, column: 34, scope: !225)
!227 = !DILocation(line: 123, column: 21, scope: !225)
!228 = !DILocation(line: 124, column: 17, scope: !225)
!229 = !DILocation(line: 121, column: 37, scope: !221)
!230 = !DILocation(line: 121, column: 17, scope: !221)
!231 = distinct !{!231, !223, !232, !233}
!232 = !DILocation(line: 124, column: 17, scope: !218)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 125, column: 13, scope: !214)
!235 = !DILocation(line: 128, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !210, file: !45, line: 127, column: 13)
!237 = !DILocation(line: 131, column: 9, scope: !202)
!238 = !DILocation(line: 133, column: 1, scope: !104)
!239 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 140, type: !105, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!240 = !DILocalVariable(name: "data", scope: !239, file: !45, line: 142, type: !23)
!241 = !DILocation(line: 142, column: 9, scope: !239)
!242 = !DILocation(line: 144, column: 10, scope: !239)
!243 = !DILocation(line: 145, column: 5, scope: !239)
!244 = !DILocalVariable(name: "recvResult", scope: !245, file: !45, line: 152, type: !23)
!245 = distinct !DILexicalBlock(scope: !246, file: !45, line: 147, column: 9)
!246 = distinct !DILexicalBlock(scope: !239, file: !45, line: 146, column: 5)
!247 = !DILocation(line: 152, column: 17, scope: !245)
!248 = !DILocalVariable(name: "service", scope: !245, file: !45, line: 153, type: !117)
!249 = !DILocation(line: 153, column: 32, scope: !245)
!250 = !DILocalVariable(name: "connectSocket", scope: !245, file: !45, line: 154, type: !23)
!251 = !DILocation(line: 154, column: 20, scope: !245)
!252 = !DILocalVariable(name: "inputBuffer", scope: !245, file: !45, line: 155, type: !97)
!253 = !DILocation(line: 155, column: 18, scope: !245)
!254 = !DILocation(line: 156, column: 13, scope: !245)
!255 = !DILocation(line: 166, column: 33, scope: !256)
!256 = distinct !DILexicalBlock(scope: !245, file: !45, line: 157, column: 13)
!257 = !DILocation(line: 166, column: 31, scope: !256)
!258 = !DILocation(line: 167, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !45, line: 167, column: 21)
!260 = !DILocation(line: 167, column: 35, scope: !259)
!261 = !DILocation(line: 167, column: 21, scope: !256)
!262 = !DILocation(line: 169, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !45, line: 168, column: 17)
!264 = !DILocation(line: 171, column: 17, scope: !256)
!265 = !DILocation(line: 172, column: 25, scope: !256)
!266 = !DILocation(line: 172, column: 36, scope: !256)
!267 = !DILocation(line: 173, column: 43, scope: !256)
!268 = !DILocation(line: 173, column: 25, scope: !256)
!269 = !DILocation(line: 173, column: 34, scope: !256)
!270 = !DILocation(line: 173, column: 41, scope: !256)
!271 = !DILocation(line: 174, column: 36, scope: !256)
!272 = !DILocation(line: 174, column: 25, scope: !256)
!273 = !DILocation(line: 174, column: 34, scope: !256)
!274 = !DILocation(line: 175, column: 29, scope: !275)
!275 = distinct !DILexicalBlock(scope: !256, file: !45, line: 175, column: 21)
!276 = !DILocation(line: 175, column: 44, scope: !275)
!277 = !DILocation(line: 175, column: 21, scope: !275)
!278 = !DILocation(line: 175, column: 89, scope: !275)
!279 = !DILocation(line: 175, column: 21, scope: !256)
!280 = !DILocation(line: 177, column: 21, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !45, line: 176, column: 17)
!282 = !DILocation(line: 181, column: 35, scope: !256)
!283 = !DILocation(line: 181, column: 50, scope: !256)
!284 = !DILocation(line: 181, column: 30, scope: !256)
!285 = !DILocation(line: 181, column: 28, scope: !256)
!286 = !DILocation(line: 182, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !256, file: !45, line: 182, column: 21)
!288 = !DILocation(line: 182, column: 32, scope: !287)
!289 = !DILocation(line: 182, column: 48, scope: !287)
!290 = !DILocation(line: 182, column: 51, scope: !287)
!291 = !DILocation(line: 182, column: 62, scope: !287)
!292 = !DILocation(line: 182, column: 21, scope: !256)
!293 = !DILocation(line: 184, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !287, file: !45, line: 183, column: 17)
!295 = !DILocation(line: 187, column: 29, scope: !256)
!296 = !DILocation(line: 187, column: 17, scope: !256)
!297 = !DILocation(line: 187, column: 41, scope: !256)
!298 = !DILocation(line: 189, column: 29, scope: !256)
!299 = !DILocation(line: 189, column: 24, scope: !256)
!300 = !DILocation(line: 189, column: 22, scope: !256)
!301 = !DILocation(line: 190, column: 13, scope: !256)
!302 = !DILocation(line: 192, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !245, file: !45, line: 192, column: 17)
!304 = !DILocation(line: 192, column: 31, scope: !303)
!305 = !DILocation(line: 192, column: 17, scope: !245)
!306 = !DILocation(line: 194, column: 30, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !45, line: 193, column: 13)
!308 = !DILocation(line: 194, column: 17, scope: !307)
!309 = !DILocation(line: 195, column: 13, scope: !307)
!310 = !DILocation(line: 203, column: 9, scope: !246)
!311 = !DILocation(line: 205, column: 5, scope: !239)
!312 = !DILocalVariable(name: "i", scope: !313, file: !45, line: 208, type: !23)
!313 = distinct !DILexicalBlock(scope: !314, file: !45, line: 207, column: 9)
!314 = distinct !DILexicalBlock(scope: !239, file: !45, line: 206, column: 5)
!315 = !DILocation(line: 208, column: 17, scope: !313)
!316 = !DILocalVariable(name: "buffer", scope: !313, file: !45, line: 209, type: !205)
!317 = !DILocation(line: 209, column: 17, scope: !313)
!318 = !DILocation(line: 211, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !313, file: !45, line: 211, column: 17)
!320 = !DILocation(line: 211, column: 22, scope: !319)
!321 = !DILocation(line: 211, column: 27, scope: !319)
!322 = !DILocation(line: 211, column: 30, scope: !319)
!323 = !DILocation(line: 211, column: 35, scope: !319)
!324 = !DILocation(line: 211, column: 17, scope: !313)
!325 = !DILocation(line: 213, column: 24, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !45, line: 212, column: 13)
!327 = !DILocation(line: 213, column: 17, scope: !326)
!328 = !DILocation(line: 213, column: 30, scope: !326)
!329 = !DILocation(line: 215, column: 23, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !45, line: 215, column: 17)
!331 = !DILocation(line: 215, column: 21, scope: !330)
!332 = !DILocation(line: 215, column: 28, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !45, line: 215, column: 17)
!334 = !DILocation(line: 215, column: 30, scope: !333)
!335 = !DILocation(line: 215, column: 17, scope: !330)
!336 = !DILocation(line: 217, column: 41, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !45, line: 216, column: 17)
!338 = !DILocation(line: 217, column: 34, scope: !337)
!339 = !DILocation(line: 217, column: 21, scope: !337)
!340 = !DILocation(line: 218, column: 17, scope: !337)
!341 = !DILocation(line: 215, column: 37, scope: !333)
!342 = !DILocation(line: 215, column: 17, scope: !333)
!343 = distinct !{!343, !335, !344, !233}
!344 = !DILocation(line: 218, column: 17, scope: !330)
!345 = !DILocation(line: 219, column: 13, scope: !326)
!346 = !DILocation(line: 222, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !319, file: !45, line: 221, column: 13)
!348 = !DILocation(line: 225, column: 9, scope: !314)
!349 = !DILocation(line: 227, column: 1, scope: !239)
!350 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 230, type: !105, scopeLine: 231, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!351 = !DILocalVariable(name: "data", scope: !350, file: !45, line: 232, type: !23)
!352 = !DILocation(line: 232, column: 9, scope: !350)
!353 = !DILocation(line: 234, column: 10, scope: !350)
!354 = !DILocation(line: 235, column: 5, scope: !350)
!355 = !DILocation(line: 239, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !45, line: 236, column: 5)
!357 = !DILocation(line: 240, column: 9, scope: !356)
!358 = !DILocation(line: 242, column: 5, scope: !350)
!359 = !DILocalVariable(name: "i", scope: !360, file: !45, line: 245, type: !23)
!360 = distinct !DILexicalBlock(scope: !361, file: !45, line: 244, column: 9)
!361 = distinct !DILexicalBlock(scope: !350, file: !45, line: 243, column: 5)
!362 = !DILocation(line: 245, column: 17, scope: !360)
!363 = !DILocalVariable(name: "buffer", scope: !360, file: !45, line: 246, type: !205)
!364 = !DILocation(line: 246, column: 17, scope: !360)
!365 = !DILocation(line: 249, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !45, line: 249, column: 17)
!367 = !DILocation(line: 249, column: 22, scope: !366)
!368 = !DILocation(line: 249, column: 17, scope: !360)
!369 = !DILocation(line: 251, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !45, line: 250, column: 13)
!371 = !DILocation(line: 251, column: 17, scope: !370)
!372 = !DILocation(line: 251, column: 30, scope: !370)
!373 = !DILocation(line: 253, column: 23, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !45, line: 253, column: 17)
!375 = !DILocation(line: 253, column: 21, scope: !374)
!376 = !DILocation(line: 253, column: 28, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !45, line: 253, column: 17)
!378 = !DILocation(line: 253, column: 30, scope: !377)
!379 = !DILocation(line: 253, column: 17, scope: !374)
!380 = !DILocation(line: 255, column: 41, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !45, line: 254, column: 17)
!382 = !DILocation(line: 255, column: 34, scope: !381)
!383 = !DILocation(line: 255, column: 21, scope: !381)
!384 = !DILocation(line: 256, column: 17, scope: !381)
!385 = !DILocation(line: 253, column: 37, scope: !377)
!386 = !DILocation(line: 253, column: 17, scope: !377)
!387 = distinct !{!387, !379, !388, !233}
!388 = !DILocation(line: 256, column: 17, scope: !374)
!389 = !DILocation(line: 257, column: 13, scope: !370)
!390 = !DILocation(line: 260, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !366, file: !45, line: 259, column: 13)
!392 = !DILocation(line: 263, column: 9, scope: !361)
!393 = !DILocation(line: 265, column: 1, scope: !350)
!394 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_good", scope: !45, file: !45, line: 267, type: !105, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!395 = !DILocation(line: 269, column: 5, scope: !394)
!396 = !DILocation(line: 270, column: 5, scope: !394)
!397 = !DILocation(line: 271, column: 1, scope: !394)
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
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !125, line: 44, baseType: !472)
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
!555 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_531/source_code")
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
!593 = distinct !{!593, !585, !594, !233}
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
!630 = distinct !{!630, !608, !631, !233}
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
!674 = distinct !{!674, !645, !675, !233}
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
