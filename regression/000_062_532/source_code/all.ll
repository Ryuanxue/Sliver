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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad() #0 !dbg !104 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i26 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %j, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %data, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %data, align 4, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !118
  %cmp = icmp slt i32 %0, 1, !dbg !120
  br i1 %cmp, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !126, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %connectSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !150, metadata !DIExpression()), !dbg !151
  br label %do.body, !dbg !152

do.body:                                          ; preds = %for.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !153
  store i32 %call, i32* %connectSocket, align 4, !dbg !155
  %1 = load i32, i32* %connectSocket, align 4, !dbg !156
  %cmp1 = icmp eq i32 %1, -1, !dbg !158
  br i1 %cmp1, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !160

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !162
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !163
  store i16 2, i16* %sin_family, align 4, !dbg !164
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !165
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !166
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !167
  store i32 %call2, i32* %s_addr, align 4, !dbg !168
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !169
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !170
  store i16 %call3, i16* %sin_port, align 2, !dbg !171
  %3 = load i32, i32* %connectSocket, align 4, !dbg !172
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !174
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !175
  %cmp5 = icmp eq i32 %call4, -1, !dbg !176
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !177

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !178

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !180
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !181
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !182
  %conv = trunc i64 %call8 to i32, !dbg !182
  store i32 %conv, i32* %recvResult, align 4, !dbg !183
  %6 = load i32, i32* %recvResult, align 4, !dbg !184
  %cmp9 = icmp eq i32 %6, -1, !dbg !186
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !187

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !188
  %cmp11 = icmp eq i32 %7, 0, !dbg !189
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !190

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !191

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !193
  %idxprom = sext i32 %8 to i64, !dbg !194
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !194
  store i8 0, i8* %arrayidx, align 1, !dbg !195
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !196
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !197
  store i32 %call16, i32* %data, align 4, !dbg !198
  br label %do.end, !dbg !199

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %9 = load i32, i32* %connectSocket, align 4, !dbg !200
  %cmp17 = icmp ne i32 %9, -1, !dbg !202
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !203

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !204
  %call20 = call i32 @close(i32 %10), !dbg !206
  br label %if.end21, !dbg !207

if.end21:                                         ; preds = %if.then19, %do.end
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %if.end21
  %11 = load i32, i32* %i, align 4, !dbg !209
  %inc = add nsw i32 %11, 1, !dbg !209
  store i32 %inc, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !214
  br label %for.cond22, !dbg !216

for.cond22:                                       ; preds = %for.inc42, %for.end
  %12 = load i32, i32* %j, align 4, !dbg !217
  %cmp23 = icmp slt i32 %12, 1, !dbg !219
  br i1 %cmp23, label %for.body25, label %for.end44, !dbg !220

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.declare(metadata i32* %i26, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !225, metadata !DIExpression()), !dbg !229
  %13 = bitcast [10 x i32]* %buffer to i8*, !dbg !229
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !229
  %14 = load i32, i32* %data, align 4, !dbg !230
  %cmp27 = icmp sge i32 %14, 0, !dbg !232
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !233

if.then29:                                        ; preds = %for.body25
  %15 = load i32, i32* %data, align 4, !dbg !234
  %idxprom30 = sext i32 %15 to i64, !dbg !236
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !236
  store i32 1, i32* %arrayidx31, align 4, !dbg !237
  store i32 0, i32* %i26, align 4, !dbg !238
  br label %for.cond32, !dbg !240

for.cond32:                                       ; preds = %for.inc38, %if.then29
  %16 = load i32, i32* %i26, align 4, !dbg !241
  %cmp33 = icmp slt i32 %16, 10, !dbg !243
  br i1 %cmp33, label %for.body35, label %for.end40, !dbg !244

for.body35:                                       ; preds = %for.cond32
  %17 = load i32, i32* %i26, align 4, !dbg !245
  %idxprom36 = sext i32 %17 to i64, !dbg !247
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !247
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !247
  call void @printIntLine(i32 %18), !dbg !248
  br label %for.inc38, !dbg !249

for.inc38:                                        ; preds = %for.body35
  %19 = load i32, i32* %i26, align 4, !dbg !250
  %inc39 = add nsw i32 %19, 1, !dbg !250
  store i32 %inc39, i32* %i26, align 4, !dbg !250
  br label %for.cond32, !dbg !251, !llvm.loop !252

for.end40:                                        ; preds = %for.cond32
  br label %if.end41, !dbg !254

if.else:                                          ; preds = %for.body25
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !255
  br label %if.end41

if.end41:                                         ; preds = %if.else, %for.end40
  br label %for.inc42, !dbg !257

for.inc42:                                        ; preds = %if.end41
  %20 = load i32, i32* %j, align 4, !dbg !258
  %inc43 = add nsw i32 %20, 1, !dbg !258
  store i32 %inc43, i32* %j, align 4, !dbg !258
  br label %for.cond22, !dbg !259, !llvm.loop !260

for.end44:                                        ; preds = %for.cond22
  ret void, !dbg !262
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
define dso_local void @goodB2G() #0 !dbg !263 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i26 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %k, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i32* %data, metadata !268, metadata !DIExpression()), !dbg !269
  store i32 -1, i32* %data, align 4, !dbg !270
  store i32 0, i32* %i, align 4, !dbg !271
  br label %for.cond, !dbg !273

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !274
  %cmp = icmp slt i32 %0, 1, !dbg !276
  br i1 %cmp, label %for.body, label %for.end, !dbg !277

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 -1, i32* %connectSocket, align 4, !dbg !285
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !286, metadata !DIExpression()), !dbg !287
  br label %do.body, !dbg !288

do.body:                                          ; preds = %for.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !289
  store i32 %call, i32* %connectSocket, align 4, !dbg !291
  %1 = load i32, i32* %connectSocket, align 4, !dbg !292
  %cmp1 = icmp eq i32 %1, -1, !dbg !294
  br i1 %cmp1, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !296

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !298
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !298
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !299
  store i16 2, i16* %sin_family, align 4, !dbg !300
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !301
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !302
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !303
  store i32 %call2, i32* %s_addr, align 4, !dbg !304
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !305
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !306
  store i16 %call3, i16* %sin_port, align 2, !dbg !307
  %3 = load i32, i32* %connectSocket, align 4, !dbg !308
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !310
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !311
  %cmp5 = icmp eq i32 %call4, -1, !dbg !312
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !313

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !314

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !316
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !317
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !318
  %conv = trunc i64 %call8 to i32, !dbg !318
  store i32 %conv, i32* %recvResult, align 4, !dbg !319
  %6 = load i32, i32* %recvResult, align 4, !dbg !320
  %cmp9 = icmp eq i32 %6, -1, !dbg !322
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !323

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !324
  %cmp11 = icmp eq i32 %7, 0, !dbg !325
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !326

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !327

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !329
  %idxprom = sext i32 %8 to i64, !dbg !330
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !330
  store i8 0, i8* %arrayidx, align 1, !dbg !331
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !332
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !333
  store i32 %call16, i32* %data, align 4, !dbg !334
  br label %do.end, !dbg !335

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %9 = load i32, i32* %connectSocket, align 4, !dbg !336
  %cmp17 = icmp ne i32 %9, -1, !dbg !338
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !339

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !340
  %call20 = call i32 @close(i32 %10), !dbg !342
  br label %if.end21, !dbg !343

if.end21:                                         ; preds = %if.then19, %do.end
  br label %for.inc, !dbg !344

for.inc:                                          ; preds = %if.end21
  %11 = load i32, i32* %i, align 4, !dbg !345
  %inc = add nsw i32 %11, 1, !dbg !345
  store i32 %inc, i32* %i, align 4, !dbg !345
  br label %for.cond, !dbg !346, !llvm.loop !347

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !349
  br label %for.cond22, !dbg !351

for.cond22:                                       ; preds = %for.inc44, %for.end
  %12 = load i32, i32* %k, align 4, !dbg !352
  %cmp23 = icmp slt i32 %12, 1, !dbg !354
  br i1 %cmp23, label %for.body25, label %for.end46, !dbg !355

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.declare(metadata i32* %i26, metadata !356, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !360, metadata !DIExpression()), !dbg !361
  %13 = bitcast [10 x i32]* %buffer to i8*, !dbg !361
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !361
  %14 = load i32, i32* %data, align 4, !dbg !362
  %cmp27 = icmp sge i32 %14, 0, !dbg !364
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !365

land.lhs.true:                                    ; preds = %for.body25
  %15 = load i32, i32* %data, align 4, !dbg !366
  %cmp29 = icmp slt i32 %15, 10, !dbg !367
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !368

if.then31:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %data, align 4, !dbg !369
  %idxprom32 = sext i32 %16 to i64, !dbg !371
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !371
  store i32 1, i32* %arrayidx33, align 4, !dbg !372
  store i32 0, i32* %i26, align 4, !dbg !373
  br label %for.cond34, !dbg !375

for.cond34:                                       ; preds = %for.inc40, %if.then31
  %17 = load i32, i32* %i26, align 4, !dbg !376
  %cmp35 = icmp slt i32 %17, 10, !dbg !378
  br i1 %cmp35, label %for.body37, label %for.end42, !dbg !379

for.body37:                                       ; preds = %for.cond34
  %18 = load i32, i32* %i26, align 4, !dbg !380
  %idxprom38 = sext i32 %18 to i64, !dbg !382
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom38, !dbg !382
  %19 = load i32, i32* %arrayidx39, align 4, !dbg !382
  call void @printIntLine(i32 %19), !dbg !383
  br label %for.inc40, !dbg !384

for.inc40:                                        ; preds = %for.body37
  %20 = load i32, i32* %i26, align 4, !dbg !385
  %inc41 = add nsw i32 %20, 1, !dbg !385
  store i32 %inc41, i32* %i26, align 4, !dbg !385
  br label %for.cond34, !dbg !386, !llvm.loop !387

for.end42:                                        ; preds = %for.cond34
  br label %if.end43, !dbg !389

if.else:                                          ; preds = %land.lhs.true, %for.body25
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !390
  br label %if.end43

if.end43:                                         ; preds = %if.else, %for.end42
  br label %for.inc44, !dbg !392

for.inc44:                                        ; preds = %if.end43
  %21 = load i32, i32* %k, align 4, !dbg !393
  %inc45 = add nsw i32 %21, 1, !dbg !393
  store i32 %inc45, i32* %k, align 4, !dbg !393
  br label %for.cond22, !dbg !394, !llvm.loop !395

for.end46:                                        ; preds = %for.cond22
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !398 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %j, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %data, metadata !403, metadata !DIExpression()), !dbg !404
  store i32 -1, i32* %data, align 4, !dbg !405
  store i32 0, i32* %h, align 4, !dbg !406
  br label %for.cond, !dbg !408

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4, !dbg !409
  %cmp = icmp slt i32 %0, 1, !dbg !411
  br i1 %cmp, label %for.body, label %for.end, !dbg !412

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %data, align 4, !dbg !413
  br label %for.inc, !dbg !415

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %h, align 4, !dbg !416
  %inc = add nsw i32 %1, 1, !dbg !416
  store i32 %inc, i32* %h, align 4, !dbg !416
  br label %for.cond, !dbg !417, !llvm.loop !418

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !420
  br label %for.cond1, !dbg !422

for.cond1:                                        ; preds = %for.inc13, %for.end
  %2 = load i32, i32* %j, align 4, !dbg !423
  %cmp2 = icmp slt i32 %2, 1, !dbg !425
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !426

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !427, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !431, metadata !DIExpression()), !dbg !432
  %3 = bitcast [10 x i32]* %buffer to i8*, !dbg !432
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !432
  %4 = load i32, i32* %data, align 4, !dbg !433
  %cmp4 = icmp sge i32 %4, 0, !dbg !435
  br i1 %cmp4, label %if.then, label %if.else, !dbg !436

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %data, align 4, !dbg !437
  %idxprom = sext i32 %5 to i64, !dbg !439
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !439
  store i32 1, i32* %arrayidx, align 4, !dbg !440
  store i32 0, i32* %i, align 4, !dbg !441
  br label %for.cond5, !dbg !443

for.cond5:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !444
  %cmp6 = icmp slt i32 %6, 10, !dbg !446
  br i1 %cmp6, label %for.body7, label %for.end12, !dbg !447

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, i32* %i, align 4, !dbg !448
  %idxprom8 = sext i32 %7 to i64, !dbg !450
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !450
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !450
  call void @printIntLine(i32 %8), !dbg !451
  br label %for.inc10, !dbg !452

for.inc10:                                        ; preds = %for.body7
  %9 = load i32, i32* %i, align 4, !dbg !453
  %inc11 = add nsw i32 %9, 1, !dbg !453
  store i32 %inc11, i32* %i, align 4, !dbg !453
  br label %for.cond5, !dbg !454, !llvm.loop !455

for.end12:                                        ; preds = %for.cond5
  br label %if.end, !dbg !457

if.else:                                          ; preds = %for.body3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !458
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end12
  br label %for.inc13, !dbg !460

for.inc13:                                        ; preds = %if.end
  %10 = load i32, i32* %j, align 4, !dbg !461
  %inc14 = add nsw i32 %10, 1, !dbg !461
  store i32 %inc14, i32* %j, align 4, !dbg !461
  br label %for.cond1, !dbg !462, !llvm.loop !463

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good() #0 !dbg !466 {
entry:
  call void @goodB2G(), !dbg !467
  call void @goodG2B(), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !470 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !475
  %0 = load i8*, i8** %line.addr, align 8, !dbg !476
  %cmp = icmp ne i8* %0, null, !dbg !478
  br i1 %cmp, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !480
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !482
  br label %if.end, !dbg !483

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !484
  ret void, !dbg !485
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !486 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i8*, i8** %line.addr, align 8, !dbg !489
  %cmp = icmp ne i8* %0, null, !dbg !491
  br i1 %cmp, label %if.then, label %if.end, !dbg !492

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !495
  br label %if.end, !dbg !496

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !498 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i32*, i32** %line.addr, align 8, !dbg !506
  %cmp = icmp ne i32* %0, null, !dbg !508
  br i1 %cmp, label %if.then, label %if.end, !dbg !509

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !510
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !512
  br label %if.end, !dbg !513

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !514
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !515 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !523 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !529
  %conv = sext i16 %0 to i32, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !532 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !538
  %conv = fpext float %0 to double, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !541 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !550 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !558
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !559
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !561 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !571 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !576
  %conv = sext i8 %0 to i32, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !579 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !584, metadata !DIExpression()), !dbg !588
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !589
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !590
  store i32 %0, i32* %arrayidx, align 4, !dbg !591
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !592
  store i32 0, i32* %arrayidx1, align 4, !dbg !593
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !597 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !605 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !610
  %conv = zext i8 %0 to i32, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !613 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !619
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !622 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !634
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !635
  %1 = load i32, i32* %intOne, align 4, !dbg !635
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !636
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !637
  %3 = load i32, i32* %intTwo, align 4, !dbg !637
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !638
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !640 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata i64* %i, metadata !648, metadata !DIExpression()), !dbg !649
  store i64 0, i64* %i, align 8, !dbg !650
  br label %for.cond, !dbg !652

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !653
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %for.body, label %for.end, !dbg !657

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !658
  %3 = load i64, i64* %i, align 8, !dbg !660
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !658
  %4 = load i8, i8* %arrayidx, align 1, !dbg !658
  %conv = zext i8 %4 to i32, !dbg !658
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !661
  br label %for.inc, !dbg !662

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !663
  %inc = add i64 %5, 1, !dbg !663
  store i64 %inc, i64* %i, align 8, !dbg !663
  br label %for.cond, !dbg !664, !llvm.loop !665

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !667
  ret void, !dbg !668
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !669 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !672, metadata !DIExpression()), !dbg !673
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !674, metadata !DIExpression()), !dbg !675
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !678, metadata !DIExpression()), !dbg !679
  store i64 0, i64* %numWritten, align 8, !dbg !679
  br label %while.cond, !dbg !680

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !681
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !682
  %cmp = icmp ult i64 %0, %1, !dbg !683
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !684

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !685
  %2 = load i16*, i16** %call, align 8, !dbg !685
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !685
  %4 = load i64, i64* %numWritten, align 8, !dbg !685
  %mul = mul i64 2, %4, !dbg !685
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !685
  %5 = load i8, i8* %arrayidx, align 1, !dbg !685
  %conv = sext i8 %5 to i32, !dbg !685
  %idxprom = sext i32 %conv to i64, !dbg !685
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !685
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !685
  %conv2 = zext i16 %6 to i32, !dbg !685
  %and = and i32 %conv2, 4096, !dbg !685
  %tobool = icmp ne i32 %and, 0, !dbg !685
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !686

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !687
  %7 = load i16*, i16** %call3, align 8, !dbg !687
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !687
  %9 = load i64, i64* %numWritten, align 8, !dbg !687
  %mul4 = mul i64 2, %9, !dbg !687
  %add = add i64 %mul4, 1, !dbg !687
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !687
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !687
  %conv6 = sext i8 %10 to i32, !dbg !687
  %idxprom7 = sext i32 %conv6 to i64, !dbg !687
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !687
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !687
  %conv9 = zext i16 %11 to i32, !dbg !687
  %and10 = and i32 %conv9, 4096, !dbg !687
  %tobool11 = icmp ne i32 %and10, 0, !dbg !686
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !688
  br i1 %12, label %while.body, label %while.end, !dbg !680

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !689, metadata !DIExpression()), !dbg !691
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !692
  %14 = load i64, i64* %numWritten, align 8, !dbg !693
  %mul12 = mul i64 2, %14, !dbg !694
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !692
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !695
  %15 = load i32, i32* %byte, align 4, !dbg !696
  %conv15 = trunc i32 %15 to i8, !dbg !697
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !698
  %17 = load i64, i64* %numWritten, align 8, !dbg !699
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !698
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !700
  %18 = load i64, i64* %numWritten, align 8, !dbg !701
  %inc = add i64 %18, 1, !dbg !701
  store i64 %inc, i64* %numWritten, align 8, !dbg !701
  br label %while.cond, !dbg !680, !llvm.loop !702

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !704
  ret i64 %19, !dbg !705
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !706 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !711, metadata !DIExpression()), !dbg !712
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !715, metadata !DIExpression()), !dbg !716
  store i64 0, i64* %numWritten, align 8, !dbg !716
  br label %while.cond, !dbg !717

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !718
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !719
  %cmp = icmp ult i64 %0, %1, !dbg !720
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !721

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !722
  %3 = load i64, i64* %numWritten, align 8, !dbg !723
  %mul = mul i64 2, %3, !dbg !724
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !722
  %4 = load i32, i32* %arrayidx, align 4, !dbg !722
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !725
  %tobool = icmp ne i32 %call, 0, !dbg !725
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !726

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !727
  %6 = load i64, i64* %numWritten, align 8, !dbg !728
  %mul1 = mul i64 2, %6, !dbg !729
  %add = add i64 %mul1, 1, !dbg !730
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !727
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !727
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !731
  %tobool4 = icmp ne i32 %call3, 0, !dbg !726
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !732
  br i1 %8, label %while.body, label %while.end, !dbg !717

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !733, metadata !DIExpression()), !dbg !735
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %10 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul5 = mul i64 2, %10, !dbg !738
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !736
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !739
  %11 = load i32, i32* %byte, align 4, !dbg !740
  %conv = trunc i32 %11 to i8, !dbg !741
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !742
  %13 = load i64, i64* %numWritten, align 8, !dbg !743
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !742
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !744
  %14 = load i64, i64* %numWritten, align 8, !dbg !745
  %inc = add i64 %14, 1, !dbg !745
  store i64 %inc, i64* %numWritten, align 8, !dbg !745
  br label %while.cond, !dbg !717, !llvm.loop !746

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !748
  ret i64 %15, !dbg !749
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !750 {
entry:
  ret i32 1, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !754 {
entry:
  ret i32 0, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !756 {
entry:
  %call = call i32 @rand() #7, !dbg !757
  %rem = srem i32 %call, 2, !dbg !758
  ret i32 %rem, !dbg !759
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !760 {
entry:
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !762 {
entry:
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !794 {
entry:
  ret void, !dbg !795
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "i", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocalVariable(name: "j", scope: !104, file: !45, line: 47, type: !23)
!111 = !DILocation(line: 47, column: 11, scope: !104)
!112 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 48, type: !23)
!113 = !DILocation(line: 48, column: 9, scope: !104)
!114 = !DILocation(line: 50, column: 10, scope: !104)
!115 = !DILocation(line: 51, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !104, file: !45, line: 51, column: 5)
!117 = !DILocation(line: 51, column: 9, scope: !116)
!118 = !DILocation(line: 51, column: 16, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !45, line: 51, column: 5)
!120 = !DILocation(line: 51, column: 18, scope: !119)
!121 = !DILocation(line: 51, column: 5, scope: !116)
!122 = !DILocalVariable(name: "recvResult", scope: !123, file: !45, line: 58, type: !23)
!123 = distinct !DILexicalBlock(scope: !124, file: !45, line: 53, column: 9)
!124 = distinct !DILexicalBlock(scope: !119, file: !45, line: 52, column: 5)
!125 = !DILocation(line: 58, column: 17, scope: !123)
!126 = !DILocalVariable(name: "service", scope: !123, file: !45, line: 59, type: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !128)
!128 = !{!129, !130, !136, !143}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !127, file: !60, line: 240, baseType: !94, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !127, file: !60, line: 241, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !133, line: 25, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !135, line: 40, baseType: !24)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !127, file: !60, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !60, line: 33, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 26, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !135, line: 42, baseType: !7)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !127, file: !60, line: 245, baseType: !144, size: 64, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DILocation(line: 59, column: 32, scope: !123)
!148 = !DILocalVariable(name: "connectSocket", scope: !123, file: !45, line: 60, type: !23)
!149 = !DILocation(line: 60, column: 20, scope: !123)
!150 = !DILocalVariable(name: "inputBuffer", scope: !123, file: !45, line: 61, type: !97)
!151 = !DILocation(line: 61, column: 18, scope: !123)
!152 = !DILocation(line: 62, column: 13, scope: !123)
!153 = !DILocation(line: 72, column: 33, scope: !154)
!154 = distinct !DILexicalBlock(scope: !123, file: !45, line: 63, column: 13)
!155 = !DILocation(line: 72, column: 31, scope: !154)
!156 = !DILocation(line: 73, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !45, line: 73, column: 21)
!158 = !DILocation(line: 73, column: 35, scope: !157)
!159 = !DILocation(line: 73, column: 21, scope: !154)
!160 = !DILocation(line: 75, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !45, line: 74, column: 17)
!162 = !DILocation(line: 77, column: 17, scope: !154)
!163 = !DILocation(line: 78, column: 25, scope: !154)
!164 = !DILocation(line: 78, column: 36, scope: !154)
!165 = !DILocation(line: 79, column: 43, scope: !154)
!166 = !DILocation(line: 79, column: 25, scope: !154)
!167 = !DILocation(line: 79, column: 34, scope: !154)
!168 = !DILocation(line: 79, column: 41, scope: !154)
!169 = !DILocation(line: 80, column: 36, scope: !154)
!170 = !DILocation(line: 80, column: 25, scope: !154)
!171 = !DILocation(line: 80, column: 34, scope: !154)
!172 = !DILocation(line: 81, column: 29, scope: !173)
!173 = distinct !DILexicalBlock(scope: !154, file: !45, line: 81, column: 21)
!174 = !DILocation(line: 81, column: 44, scope: !173)
!175 = !DILocation(line: 81, column: 21, scope: !173)
!176 = !DILocation(line: 81, column: 89, scope: !173)
!177 = !DILocation(line: 81, column: 21, scope: !154)
!178 = !DILocation(line: 83, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !45, line: 82, column: 17)
!180 = !DILocation(line: 87, column: 35, scope: !154)
!181 = !DILocation(line: 87, column: 50, scope: !154)
!182 = !DILocation(line: 87, column: 30, scope: !154)
!183 = !DILocation(line: 87, column: 28, scope: !154)
!184 = !DILocation(line: 88, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !154, file: !45, line: 88, column: 21)
!186 = !DILocation(line: 88, column: 32, scope: !185)
!187 = !DILocation(line: 88, column: 48, scope: !185)
!188 = !DILocation(line: 88, column: 51, scope: !185)
!189 = !DILocation(line: 88, column: 62, scope: !185)
!190 = !DILocation(line: 88, column: 21, scope: !154)
!191 = !DILocation(line: 90, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !45, line: 89, column: 17)
!193 = !DILocation(line: 93, column: 29, scope: !154)
!194 = !DILocation(line: 93, column: 17, scope: !154)
!195 = !DILocation(line: 93, column: 41, scope: !154)
!196 = !DILocation(line: 95, column: 29, scope: !154)
!197 = !DILocation(line: 95, column: 24, scope: !154)
!198 = !DILocation(line: 95, column: 22, scope: !154)
!199 = !DILocation(line: 96, column: 13, scope: !154)
!200 = !DILocation(line: 98, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !123, file: !45, line: 98, column: 17)
!202 = !DILocation(line: 98, column: 31, scope: !201)
!203 = !DILocation(line: 98, column: 17, scope: !123)
!204 = !DILocation(line: 100, column: 30, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !45, line: 99, column: 13)
!206 = !DILocation(line: 100, column: 17, scope: !205)
!207 = !DILocation(line: 101, column: 13, scope: !205)
!208 = !DILocation(line: 109, column: 5, scope: !124)
!209 = !DILocation(line: 51, column: 24, scope: !119)
!210 = !DILocation(line: 51, column: 5, scope: !119)
!211 = distinct !{!211, !121, !212, !213}
!212 = !DILocation(line: 109, column: 5, scope: !116)
!213 = !{!"llvm.loop.mustprogress"}
!214 = !DILocation(line: 110, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !104, file: !45, line: 110, column: 5)
!216 = !DILocation(line: 110, column: 9, scope: !215)
!217 = !DILocation(line: 110, column: 16, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 110, column: 5)
!219 = !DILocation(line: 110, column: 18, scope: !218)
!220 = !DILocation(line: 110, column: 5, scope: !215)
!221 = !DILocalVariable(name: "i", scope: !222, file: !45, line: 113, type: !23)
!222 = distinct !DILexicalBlock(scope: !223, file: !45, line: 112, column: 9)
!223 = distinct !DILexicalBlock(scope: !218, file: !45, line: 111, column: 5)
!224 = !DILocation(line: 113, column: 17, scope: !222)
!225 = !DILocalVariable(name: "buffer", scope: !222, file: !45, line: 114, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 10)
!229 = !DILocation(line: 114, column: 17, scope: !222)
!230 = !DILocation(line: 117, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !222, file: !45, line: 117, column: 17)
!232 = !DILocation(line: 117, column: 22, scope: !231)
!233 = !DILocation(line: 117, column: 17, scope: !222)
!234 = !DILocation(line: 119, column: 24, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !45, line: 118, column: 13)
!236 = !DILocation(line: 119, column: 17, scope: !235)
!237 = !DILocation(line: 119, column: 30, scope: !235)
!238 = !DILocation(line: 121, column: 23, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !45, line: 121, column: 17)
!240 = !DILocation(line: 121, column: 21, scope: !239)
!241 = !DILocation(line: 121, column: 28, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !45, line: 121, column: 17)
!243 = !DILocation(line: 121, column: 30, scope: !242)
!244 = !DILocation(line: 121, column: 17, scope: !239)
!245 = !DILocation(line: 123, column: 41, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !45, line: 122, column: 17)
!247 = !DILocation(line: 123, column: 34, scope: !246)
!248 = !DILocation(line: 123, column: 21, scope: !246)
!249 = !DILocation(line: 124, column: 17, scope: !246)
!250 = !DILocation(line: 121, column: 37, scope: !242)
!251 = !DILocation(line: 121, column: 17, scope: !242)
!252 = distinct !{!252, !244, !253, !213}
!253 = !DILocation(line: 124, column: 17, scope: !239)
!254 = !DILocation(line: 125, column: 13, scope: !235)
!255 = !DILocation(line: 128, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !231, file: !45, line: 127, column: 13)
!257 = !DILocation(line: 131, column: 5, scope: !223)
!258 = !DILocation(line: 110, column: 24, scope: !218)
!259 = !DILocation(line: 110, column: 5, scope: !218)
!260 = distinct !{!260, !220, !261, !213}
!261 = !DILocation(line: 131, column: 5, scope: !215)
!262 = !DILocation(line: 132, column: 1, scope: !104)
!263 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 139, type: !105, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!264 = !DILocalVariable(name: "i", scope: !263, file: !45, line: 141, type: !23)
!265 = !DILocation(line: 141, column: 9, scope: !263)
!266 = !DILocalVariable(name: "k", scope: !263, file: !45, line: 141, type: !23)
!267 = !DILocation(line: 141, column: 11, scope: !263)
!268 = !DILocalVariable(name: "data", scope: !263, file: !45, line: 142, type: !23)
!269 = !DILocation(line: 142, column: 9, scope: !263)
!270 = !DILocation(line: 144, column: 10, scope: !263)
!271 = !DILocation(line: 145, column: 11, scope: !272)
!272 = distinct !DILexicalBlock(scope: !263, file: !45, line: 145, column: 5)
!273 = !DILocation(line: 145, column: 9, scope: !272)
!274 = !DILocation(line: 145, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !45, line: 145, column: 5)
!276 = !DILocation(line: 145, column: 18, scope: !275)
!277 = !DILocation(line: 145, column: 5, scope: !272)
!278 = !DILocalVariable(name: "recvResult", scope: !279, file: !45, line: 152, type: !23)
!279 = distinct !DILexicalBlock(scope: !280, file: !45, line: 147, column: 9)
!280 = distinct !DILexicalBlock(scope: !275, file: !45, line: 146, column: 5)
!281 = !DILocation(line: 152, column: 17, scope: !279)
!282 = !DILocalVariable(name: "service", scope: !279, file: !45, line: 153, type: !127)
!283 = !DILocation(line: 153, column: 32, scope: !279)
!284 = !DILocalVariable(name: "connectSocket", scope: !279, file: !45, line: 154, type: !23)
!285 = !DILocation(line: 154, column: 20, scope: !279)
!286 = !DILocalVariable(name: "inputBuffer", scope: !279, file: !45, line: 155, type: !97)
!287 = !DILocation(line: 155, column: 18, scope: !279)
!288 = !DILocation(line: 156, column: 13, scope: !279)
!289 = !DILocation(line: 166, column: 33, scope: !290)
!290 = distinct !DILexicalBlock(scope: !279, file: !45, line: 157, column: 13)
!291 = !DILocation(line: 166, column: 31, scope: !290)
!292 = !DILocation(line: 167, column: 21, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !45, line: 167, column: 21)
!294 = !DILocation(line: 167, column: 35, scope: !293)
!295 = !DILocation(line: 167, column: 21, scope: !290)
!296 = !DILocation(line: 169, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !45, line: 168, column: 17)
!298 = !DILocation(line: 171, column: 17, scope: !290)
!299 = !DILocation(line: 172, column: 25, scope: !290)
!300 = !DILocation(line: 172, column: 36, scope: !290)
!301 = !DILocation(line: 173, column: 43, scope: !290)
!302 = !DILocation(line: 173, column: 25, scope: !290)
!303 = !DILocation(line: 173, column: 34, scope: !290)
!304 = !DILocation(line: 173, column: 41, scope: !290)
!305 = !DILocation(line: 174, column: 36, scope: !290)
!306 = !DILocation(line: 174, column: 25, scope: !290)
!307 = !DILocation(line: 174, column: 34, scope: !290)
!308 = !DILocation(line: 175, column: 29, scope: !309)
!309 = distinct !DILexicalBlock(scope: !290, file: !45, line: 175, column: 21)
!310 = !DILocation(line: 175, column: 44, scope: !309)
!311 = !DILocation(line: 175, column: 21, scope: !309)
!312 = !DILocation(line: 175, column: 89, scope: !309)
!313 = !DILocation(line: 175, column: 21, scope: !290)
!314 = !DILocation(line: 177, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !45, line: 176, column: 17)
!316 = !DILocation(line: 181, column: 35, scope: !290)
!317 = !DILocation(line: 181, column: 50, scope: !290)
!318 = !DILocation(line: 181, column: 30, scope: !290)
!319 = !DILocation(line: 181, column: 28, scope: !290)
!320 = !DILocation(line: 182, column: 21, scope: !321)
!321 = distinct !DILexicalBlock(scope: !290, file: !45, line: 182, column: 21)
!322 = !DILocation(line: 182, column: 32, scope: !321)
!323 = !DILocation(line: 182, column: 48, scope: !321)
!324 = !DILocation(line: 182, column: 51, scope: !321)
!325 = !DILocation(line: 182, column: 62, scope: !321)
!326 = !DILocation(line: 182, column: 21, scope: !290)
!327 = !DILocation(line: 184, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !45, line: 183, column: 17)
!329 = !DILocation(line: 187, column: 29, scope: !290)
!330 = !DILocation(line: 187, column: 17, scope: !290)
!331 = !DILocation(line: 187, column: 41, scope: !290)
!332 = !DILocation(line: 189, column: 29, scope: !290)
!333 = !DILocation(line: 189, column: 24, scope: !290)
!334 = !DILocation(line: 189, column: 22, scope: !290)
!335 = !DILocation(line: 190, column: 13, scope: !290)
!336 = !DILocation(line: 192, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !279, file: !45, line: 192, column: 17)
!338 = !DILocation(line: 192, column: 31, scope: !337)
!339 = !DILocation(line: 192, column: 17, scope: !279)
!340 = !DILocation(line: 194, column: 30, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !45, line: 193, column: 13)
!342 = !DILocation(line: 194, column: 17, scope: !341)
!343 = !DILocation(line: 195, column: 13, scope: !341)
!344 = !DILocation(line: 203, column: 5, scope: !280)
!345 = !DILocation(line: 145, column: 24, scope: !275)
!346 = !DILocation(line: 145, column: 5, scope: !275)
!347 = distinct !{!347, !277, !348, !213}
!348 = !DILocation(line: 203, column: 5, scope: !272)
!349 = !DILocation(line: 204, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !263, file: !45, line: 204, column: 5)
!351 = !DILocation(line: 204, column: 9, scope: !350)
!352 = !DILocation(line: 204, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !45, line: 204, column: 5)
!354 = !DILocation(line: 204, column: 18, scope: !353)
!355 = !DILocation(line: 204, column: 5, scope: !350)
!356 = !DILocalVariable(name: "i", scope: !357, file: !45, line: 207, type: !23)
!357 = distinct !DILexicalBlock(scope: !358, file: !45, line: 206, column: 9)
!358 = distinct !DILexicalBlock(scope: !353, file: !45, line: 205, column: 5)
!359 = !DILocation(line: 207, column: 17, scope: !357)
!360 = !DILocalVariable(name: "buffer", scope: !357, file: !45, line: 208, type: !226)
!361 = !DILocation(line: 208, column: 17, scope: !357)
!362 = !DILocation(line: 210, column: 17, scope: !363)
!363 = distinct !DILexicalBlock(scope: !357, file: !45, line: 210, column: 17)
!364 = !DILocation(line: 210, column: 22, scope: !363)
!365 = !DILocation(line: 210, column: 27, scope: !363)
!366 = !DILocation(line: 210, column: 30, scope: !363)
!367 = !DILocation(line: 210, column: 35, scope: !363)
!368 = !DILocation(line: 210, column: 17, scope: !357)
!369 = !DILocation(line: 212, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !45, line: 211, column: 13)
!371 = !DILocation(line: 212, column: 17, scope: !370)
!372 = !DILocation(line: 212, column: 30, scope: !370)
!373 = !DILocation(line: 214, column: 23, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !45, line: 214, column: 17)
!375 = !DILocation(line: 214, column: 21, scope: !374)
!376 = !DILocation(line: 214, column: 28, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !45, line: 214, column: 17)
!378 = !DILocation(line: 214, column: 30, scope: !377)
!379 = !DILocation(line: 214, column: 17, scope: !374)
!380 = !DILocation(line: 216, column: 41, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !45, line: 215, column: 17)
!382 = !DILocation(line: 216, column: 34, scope: !381)
!383 = !DILocation(line: 216, column: 21, scope: !381)
!384 = !DILocation(line: 217, column: 17, scope: !381)
!385 = !DILocation(line: 214, column: 37, scope: !377)
!386 = !DILocation(line: 214, column: 17, scope: !377)
!387 = distinct !{!387, !379, !388, !213}
!388 = !DILocation(line: 217, column: 17, scope: !374)
!389 = !DILocation(line: 218, column: 13, scope: !370)
!390 = !DILocation(line: 221, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !363, file: !45, line: 220, column: 13)
!392 = !DILocation(line: 224, column: 5, scope: !358)
!393 = !DILocation(line: 204, column: 24, scope: !353)
!394 = !DILocation(line: 204, column: 5, scope: !353)
!395 = distinct !{!395, !355, !396, !213}
!396 = !DILocation(line: 224, column: 5, scope: !350)
!397 = !DILocation(line: 225, column: 1, scope: !263)
!398 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 228, type: !105, scopeLine: 229, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!399 = !DILocalVariable(name: "h", scope: !398, file: !45, line: 230, type: !23)
!400 = !DILocation(line: 230, column: 9, scope: !398)
!401 = !DILocalVariable(name: "j", scope: !398, file: !45, line: 230, type: !23)
!402 = !DILocation(line: 230, column: 11, scope: !398)
!403 = !DILocalVariable(name: "data", scope: !398, file: !45, line: 231, type: !23)
!404 = !DILocation(line: 231, column: 9, scope: !398)
!405 = !DILocation(line: 233, column: 10, scope: !398)
!406 = !DILocation(line: 234, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !398, file: !45, line: 234, column: 5)
!408 = !DILocation(line: 234, column: 9, scope: !407)
!409 = !DILocation(line: 234, column: 16, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !45, line: 234, column: 5)
!411 = !DILocation(line: 234, column: 18, scope: !410)
!412 = !DILocation(line: 234, column: 5, scope: !407)
!413 = !DILocation(line: 238, column: 14, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !45, line: 235, column: 5)
!415 = !DILocation(line: 239, column: 5, scope: !414)
!416 = !DILocation(line: 234, column: 24, scope: !410)
!417 = !DILocation(line: 234, column: 5, scope: !410)
!418 = distinct !{!418, !412, !419, !213}
!419 = !DILocation(line: 239, column: 5, scope: !407)
!420 = !DILocation(line: 240, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !398, file: !45, line: 240, column: 5)
!422 = !DILocation(line: 240, column: 9, scope: !421)
!423 = !DILocation(line: 240, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !45, line: 240, column: 5)
!425 = !DILocation(line: 240, column: 18, scope: !424)
!426 = !DILocation(line: 240, column: 5, scope: !421)
!427 = !DILocalVariable(name: "i", scope: !428, file: !45, line: 243, type: !23)
!428 = distinct !DILexicalBlock(scope: !429, file: !45, line: 242, column: 9)
!429 = distinct !DILexicalBlock(scope: !424, file: !45, line: 241, column: 5)
!430 = !DILocation(line: 243, column: 17, scope: !428)
!431 = !DILocalVariable(name: "buffer", scope: !428, file: !45, line: 244, type: !226)
!432 = !DILocation(line: 244, column: 17, scope: !428)
!433 = !DILocation(line: 247, column: 17, scope: !434)
!434 = distinct !DILexicalBlock(scope: !428, file: !45, line: 247, column: 17)
!435 = !DILocation(line: 247, column: 22, scope: !434)
!436 = !DILocation(line: 247, column: 17, scope: !428)
!437 = !DILocation(line: 249, column: 24, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !45, line: 248, column: 13)
!439 = !DILocation(line: 249, column: 17, scope: !438)
!440 = !DILocation(line: 249, column: 30, scope: !438)
!441 = !DILocation(line: 251, column: 23, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !45, line: 251, column: 17)
!443 = !DILocation(line: 251, column: 21, scope: !442)
!444 = !DILocation(line: 251, column: 28, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !45, line: 251, column: 17)
!446 = !DILocation(line: 251, column: 30, scope: !445)
!447 = !DILocation(line: 251, column: 17, scope: !442)
!448 = !DILocation(line: 253, column: 41, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !45, line: 252, column: 17)
!450 = !DILocation(line: 253, column: 34, scope: !449)
!451 = !DILocation(line: 253, column: 21, scope: !449)
!452 = !DILocation(line: 254, column: 17, scope: !449)
!453 = !DILocation(line: 251, column: 37, scope: !445)
!454 = !DILocation(line: 251, column: 17, scope: !445)
!455 = distinct !{!455, !447, !456, !213}
!456 = !DILocation(line: 254, column: 17, scope: !442)
!457 = !DILocation(line: 255, column: 13, scope: !438)
!458 = !DILocation(line: 258, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !434, file: !45, line: 257, column: 13)
!460 = !DILocation(line: 261, column: 5, scope: !429)
!461 = !DILocation(line: 240, column: 24, scope: !424)
!462 = !DILocation(line: 240, column: 5, scope: !424)
!463 = distinct !{!463, !426, !464, !213}
!464 = !DILocation(line: 261, column: 5, scope: !421)
!465 = !DILocation(line: 262, column: 1, scope: !398)
!466 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good", scope: !45, file: !45, line: 264, type: !105, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!467 = !DILocation(line: 266, column: 5, scope: !466)
!468 = !DILocation(line: 267, column: 5, scope: !466)
!469 = !DILocation(line: 268, column: 1, scope: !466)
!470 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !471, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !42}
!473 = !DILocalVariable(name: "line", arg: 1, scope: !470, file: !3, line: 11, type: !42)
!474 = !DILocation(line: 11, column: 25, scope: !470)
!475 = !DILocation(line: 13, column: 1, scope: !470)
!476 = !DILocation(line: 14, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !470, file: !3, line: 14, column: 8)
!478 = !DILocation(line: 14, column: 13, scope: !477)
!479 = !DILocation(line: 14, column: 8, scope: !470)
!480 = !DILocation(line: 16, column: 24, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 15, column: 5)
!482 = !DILocation(line: 16, column: 9, scope: !481)
!483 = !DILocation(line: 17, column: 5, scope: !481)
!484 = !DILocation(line: 18, column: 5, scope: !470)
!485 = !DILocation(line: 19, column: 1, scope: !470)
!486 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !471, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!487 = !DILocalVariable(name: "line", arg: 1, scope: !486, file: !3, line: 20, type: !42)
!488 = !DILocation(line: 20, column: 29, scope: !486)
!489 = !DILocation(line: 22, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 22, column: 8)
!491 = !DILocation(line: 22, column: 13, scope: !490)
!492 = !DILocation(line: 22, column: 8, scope: !486)
!493 = !DILocation(line: 24, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 23, column: 5)
!495 = !DILocation(line: 24, column: 9, scope: !494)
!496 = !DILocation(line: 25, column: 5, scope: !494)
!497 = !DILocation(line: 26, column: 1, scope: !486)
!498 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !499, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !503, line: 74, baseType: !23)
!503 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!504 = !DILocalVariable(name: "line", arg: 1, scope: !498, file: !3, line: 27, type: !501)
!505 = !DILocation(line: 27, column: 29, scope: !498)
!506 = !DILocation(line: 29, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !3, line: 29, column: 8)
!508 = !DILocation(line: 29, column: 13, scope: !507)
!509 = !DILocation(line: 29, column: 8, scope: !498)
!510 = !DILocation(line: 31, column: 27, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 30, column: 5)
!512 = !DILocation(line: 31, column: 9, scope: !511)
!513 = !DILocation(line: 32, column: 5, scope: !511)
!514 = !DILocation(line: 33, column: 1, scope: !498)
!515 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !516, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !23}
!518 = !DILocalVariable(name: "intNumber", arg: 1, scope: !515, file: !3, line: 35, type: !23)
!519 = !DILocation(line: 35, column: 24, scope: !515)
!520 = !DILocation(line: 37, column: 20, scope: !515)
!521 = !DILocation(line: 37, column: 5, scope: !515)
!522 = !DILocation(line: 38, column: 1, scope: !515)
!523 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !524, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!527 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !523, file: !3, line: 40, type: !526)
!528 = !DILocation(line: 40, column: 28, scope: !523)
!529 = !DILocation(line: 42, column: 21, scope: !523)
!530 = !DILocation(line: 42, column: 5, scope: !523)
!531 = !DILocation(line: 43, column: 1, scope: !523)
!532 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !533, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!536 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !532, file: !3, line: 45, type: !535)
!537 = !DILocation(line: 45, column: 28, scope: !532)
!538 = !DILocation(line: 47, column: 20, scope: !532)
!539 = !DILocation(line: 47, column: 5, scope: !532)
!540 = !DILocation(line: 48, column: 1, scope: !532)
!541 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !542, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!545 = !DILocalVariable(name: "longNumber", arg: 1, scope: !541, file: !3, line: 50, type: !544)
!546 = !DILocation(line: 50, column: 26, scope: !541)
!547 = !DILocation(line: 52, column: 21, scope: !541)
!548 = !DILocation(line: 52, column: 5, scope: !541)
!549 = !DILocation(line: 53, column: 1, scope: !541)
!550 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !551, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !554, line: 27, baseType: !555)
!554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !135, line: 44, baseType: !544)
!556 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !550, file: !3, line: 55, type: !553)
!557 = !DILocation(line: 55, column: 33, scope: !550)
!558 = !DILocation(line: 57, column: 29, scope: !550)
!559 = !DILocation(line: 57, column: 5, scope: !550)
!560 = !DILocation(line: 58, column: 1, scope: !550)
!561 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !562, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !503, line: 46, baseType: !565)
!565 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!566 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !561, file: !3, line: 60, type: !564)
!567 = !DILocation(line: 60, column: 29, scope: !561)
!568 = !DILocation(line: 62, column: 21, scope: !561)
!569 = !DILocation(line: 62, column: 5, scope: !561)
!570 = !DILocation(line: 63, column: 1, scope: !561)
!571 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !572, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !43}
!574 = !DILocalVariable(name: "charHex", arg: 1, scope: !571, file: !3, line: 65, type: !43)
!575 = !DILocation(line: 65, column: 29, scope: !571)
!576 = !DILocation(line: 67, column: 22, scope: !571)
!577 = !DILocation(line: 67, column: 5, scope: !571)
!578 = !DILocation(line: 68, column: 1, scope: !571)
!579 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !580, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !502}
!582 = !DILocalVariable(name: "wideChar", arg: 1, scope: !579, file: !3, line: 70, type: !502)
!583 = !DILocation(line: 70, column: 29, scope: !579)
!584 = !DILocalVariable(name: "s", scope: !579, file: !3, line: 74, type: !585)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 64, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 2)
!588 = !DILocation(line: 74, column: 13, scope: !579)
!589 = !DILocation(line: 75, column: 16, scope: !579)
!590 = !DILocation(line: 75, column: 9, scope: !579)
!591 = !DILocation(line: 75, column: 14, scope: !579)
!592 = !DILocation(line: 76, column: 9, scope: !579)
!593 = !DILocation(line: 76, column: 14, scope: !579)
!594 = !DILocation(line: 77, column: 21, scope: !579)
!595 = !DILocation(line: 77, column: 5, scope: !579)
!596 = !DILocation(line: 78, column: 1, scope: !579)
!597 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !598, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !7}
!600 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !597, file: !3, line: 80, type: !7)
!601 = !DILocation(line: 80, column: 33, scope: !597)
!602 = !DILocation(line: 82, column: 20, scope: !597)
!603 = !DILocation(line: 82, column: 5, scope: !597)
!604 = !DILocation(line: 83, column: 1, scope: !597)
!605 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !606, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !25}
!608 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !605, file: !3, line: 85, type: !25)
!609 = !DILocation(line: 85, column: 45, scope: !605)
!610 = !DILocation(line: 87, column: 22, scope: !605)
!611 = !DILocation(line: 87, column: 5, scope: !605)
!612 = !DILocation(line: 88, column: 1, scope: !605)
!613 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !614, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!617 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !613, file: !3, line: 90, type: !616)
!618 = !DILocation(line: 90, column: 29, scope: !613)
!619 = !DILocation(line: 92, column: 20, scope: !613)
!620 = !DILocation(line: 92, column: 5, scope: !613)
!621 = !DILocation(line: 93, column: 1, scope: !613)
!622 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !623, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !627, line: 100, baseType: !628)
!627 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/source_code")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !627, line: 96, size: 64, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !628, file: !627, line: 98, baseType: !23, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !628, file: !627, line: 99, baseType: !23, size: 32, offset: 32)
!632 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !622, file: !3, line: 95, type: !625)
!633 = !DILocation(line: 95, column: 40, scope: !622)
!634 = !DILocation(line: 97, column: 26, scope: !622)
!635 = !DILocation(line: 97, column: 47, scope: !622)
!636 = !DILocation(line: 97, column: 55, scope: !622)
!637 = !DILocation(line: 97, column: 76, scope: !622)
!638 = !DILocation(line: 97, column: 5, scope: !622)
!639 = !DILocation(line: 98, column: 1, scope: !622)
!640 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !641, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643, !564}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!644 = !DILocalVariable(name: "bytes", arg: 1, scope: !640, file: !3, line: 100, type: !643)
!645 = !DILocation(line: 100, column: 38, scope: !640)
!646 = !DILocalVariable(name: "numBytes", arg: 2, scope: !640, file: !3, line: 100, type: !564)
!647 = !DILocation(line: 100, column: 52, scope: !640)
!648 = !DILocalVariable(name: "i", scope: !640, file: !3, line: 102, type: !564)
!649 = !DILocation(line: 102, column: 12, scope: !640)
!650 = !DILocation(line: 103, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !640, file: !3, line: 103, column: 5)
!652 = !DILocation(line: 103, column: 10, scope: !651)
!653 = !DILocation(line: 103, column: 17, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 103, column: 5)
!655 = !DILocation(line: 103, column: 21, scope: !654)
!656 = !DILocation(line: 103, column: 19, scope: !654)
!657 = !DILocation(line: 103, column: 5, scope: !651)
!658 = !DILocation(line: 105, column: 24, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 104, column: 5)
!660 = !DILocation(line: 105, column: 30, scope: !659)
!661 = !DILocation(line: 105, column: 9, scope: !659)
!662 = !DILocation(line: 106, column: 5, scope: !659)
!663 = !DILocation(line: 103, column: 31, scope: !654)
!664 = !DILocation(line: 103, column: 5, scope: !654)
!665 = distinct !{!665, !657, !666, !213}
!666 = !DILocation(line: 106, column: 5, scope: !651)
!667 = !DILocation(line: 107, column: 5, scope: !640)
!668 = !DILocation(line: 108, column: 1, scope: !640)
!669 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !670, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!670 = !DISubroutineType(types: !671)
!671 = !{!564, !643, !564, !42}
!672 = !DILocalVariable(name: "bytes", arg: 1, scope: !669, file: !3, line: 113, type: !643)
!673 = !DILocation(line: 113, column: 39, scope: !669)
!674 = !DILocalVariable(name: "numBytes", arg: 2, scope: !669, file: !3, line: 113, type: !564)
!675 = !DILocation(line: 113, column: 53, scope: !669)
!676 = !DILocalVariable(name: "hex", arg: 3, scope: !669, file: !3, line: 113, type: !42)
!677 = !DILocation(line: 113, column: 71, scope: !669)
!678 = !DILocalVariable(name: "numWritten", scope: !669, file: !3, line: 115, type: !564)
!679 = !DILocation(line: 115, column: 12, scope: !669)
!680 = !DILocation(line: 121, column: 5, scope: !669)
!681 = !DILocation(line: 121, column: 12, scope: !669)
!682 = !DILocation(line: 121, column: 25, scope: !669)
!683 = !DILocation(line: 121, column: 23, scope: !669)
!684 = !DILocation(line: 121, column: 34, scope: !669)
!685 = !DILocation(line: 121, column: 37, scope: !669)
!686 = !DILocation(line: 121, column: 67, scope: !669)
!687 = !DILocation(line: 121, column: 70, scope: !669)
!688 = !DILocation(line: 0, scope: !669)
!689 = !DILocalVariable(name: "byte", scope: !690, file: !3, line: 123, type: !23)
!690 = distinct !DILexicalBlock(scope: !669, file: !3, line: 122, column: 5)
!691 = !DILocation(line: 123, column: 13, scope: !690)
!692 = !DILocation(line: 124, column: 17, scope: !690)
!693 = !DILocation(line: 124, column: 25, scope: !690)
!694 = !DILocation(line: 124, column: 23, scope: !690)
!695 = !DILocation(line: 124, column: 9, scope: !690)
!696 = !DILocation(line: 125, column: 45, scope: !690)
!697 = !DILocation(line: 125, column: 29, scope: !690)
!698 = !DILocation(line: 125, column: 9, scope: !690)
!699 = !DILocation(line: 125, column: 15, scope: !690)
!700 = !DILocation(line: 125, column: 27, scope: !690)
!701 = !DILocation(line: 126, column: 9, scope: !690)
!702 = distinct !{!702, !680, !703, !213}
!703 = !DILocation(line: 127, column: 5, scope: !669)
!704 = !DILocation(line: 129, column: 12, scope: !669)
!705 = !DILocation(line: 129, column: 5, scope: !669)
!706 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !707, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DISubroutineType(types: !708)
!708 = !{!564, !643, !564, !501}
!709 = !DILocalVariable(name: "bytes", arg: 1, scope: !706, file: !3, line: 135, type: !643)
!710 = !DILocation(line: 135, column: 41, scope: !706)
!711 = !DILocalVariable(name: "numBytes", arg: 2, scope: !706, file: !3, line: 135, type: !564)
!712 = !DILocation(line: 135, column: 55, scope: !706)
!713 = !DILocalVariable(name: "hex", arg: 3, scope: !706, file: !3, line: 135, type: !501)
!714 = !DILocation(line: 135, column: 76, scope: !706)
!715 = !DILocalVariable(name: "numWritten", scope: !706, file: !3, line: 137, type: !564)
!716 = !DILocation(line: 137, column: 12, scope: !706)
!717 = !DILocation(line: 143, column: 5, scope: !706)
!718 = !DILocation(line: 143, column: 12, scope: !706)
!719 = !DILocation(line: 143, column: 25, scope: !706)
!720 = !DILocation(line: 143, column: 23, scope: !706)
!721 = !DILocation(line: 143, column: 34, scope: !706)
!722 = !DILocation(line: 143, column: 47, scope: !706)
!723 = !DILocation(line: 143, column: 55, scope: !706)
!724 = !DILocation(line: 143, column: 53, scope: !706)
!725 = !DILocation(line: 143, column: 37, scope: !706)
!726 = !DILocation(line: 143, column: 68, scope: !706)
!727 = !DILocation(line: 143, column: 81, scope: !706)
!728 = !DILocation(line: 143, column: 89, scope: !706)
!729 = !DILocation(line: 143, column: 87, scope: !706)
!730 = !DILocation(line: 143, column: 100, scope: !706)
!731 = !DILocation(line: 143, column: 71, scope: !706)
!732 = !DILocation(line: 0, scope: !706)
!733 = !DILocalVariable(name: "byte", scope: !734, file: !3, line: 145, type: !23)
!734 = distinct !DILexicalBlock(scope: !706, file: !3, line: 144, column: 5)
!735 = !DILocation(line: 145, column: 13, scope: !734)
!736 = !DILocation(line: 146, column: 18, scope: !734)
!737 = !DILocation(line: 146, column: 26, scope: !734)
!738 = !DILocation(line: 146, column: 24, scope: !734)
!739 = !DILocation(line: 146, column: 9, scope: !734)
!740 = !DILocation(line: 147, column: 45, scope: !734)
!741 = !DILocation(line: 147, column: 29, scope: !734)
!742 = !DILocation(line: 147, column: 9, scope: !734)
!743 = !DILocation(line: 147, column: 15, scope: !734)
!744 = !DILocation(line: 147, column: 27, scope: !734)
!745 = !DILocation(line: 148, column: 9, scope: !734)
!746 = distinct !{!746, !717, !747, !213}
!747 = !DILocation(line: 149, column: 5, scope: !706)
!748 = !DILocation(line: 151, column: 12, scope: !706)
!749 = !DILocation(line: 151, column: 5, scope: !706)
!750 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !751, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!751 = !DISubroutineType(types: !752)
!752 = !{!23}
!753 = !DILocation(line: 158, column: 5, scope: !750)
!754 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !751, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DILocation(line: 163, column: 5, scope: !754)
!756 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !751, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DILocation(line: 168, column: 13, scope: !756)
!758 = !DILocation(line: 168, column: 20, scope: !756)
!759 = !DILocation(line: 168, column: 5, scope: !756)
!760 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DILocation(line: 187, column: 16, scope: !760)
!762 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 188, column: 16, scope: !762)
!764 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 189, column: 16, scope: !764)
!766 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 190, column: 16, scope: !766)
!768 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 191, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 192, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 193, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 194, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 195, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 198, column: 15, scope: !778)
!780 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 199, column: 15, scope: !780)
!782 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 200, column: 15, scope: !782)
!784 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 201, column: 15, scope: !784)
!786 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 202, column: 15, scope: !786)
!788 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 203, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 204, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 205, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 206, column: 15, scope: !794)
