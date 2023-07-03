; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !62
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !65
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !89
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !91
@globalTrue = dso_local global i32 1, align 4, !dbg !93
@globalFalse = dso_local global i32 0, align 4, !dbg !95
@globalFive = dso_local global i32 5, align 4, !dbg !97
@globalArgc = dso_local global i32 0, align 4, !dbg !99
@globalArgv = dso_local global i8** null, align 8, !dbg !101
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_bad() #0 !dbg !109 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %data, align 4, !dbg !115
  %0 = load i32, i32* @staticTrue, align 4, !dbg !116
  %tobool = icmp ne i32 %0, 0, !dbg !116
  br i1 %tobool, label %if.then, label %if.end22, !dbg !118

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !119, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !123, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 -1, i32* %connectSocket, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !147, metadata !DIExpression()), !dbg !148
  br label %do.body, !dbg !149

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !150
  store i32 %call, i32* %connectSocket, align 4, !dbg !152
  %1 = load i32, i32* %connectSocket, align 4, !dbg !153
  %cmp = icmp eq i32 %1, -1, !dbg !155
  br i1 %cmp, label %if.then1, label %if.end, !dbg !156

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !157

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !159
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !160
  store i16 2, i16* %sin_family, align 4, !dbg !161
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !162
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !163
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !164
  store i32 %call2, i32* %s_addr, align 4, !dbg !165
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !166
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !167
  store i16 %call3, i16* %sin_port, align 2, !dbg !168
  %3 = load i32, i32* %connectSocket, align 4, !dbg !169
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !171
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !172
  %cmp5 = icmp eq i32 %call4, -1, !dbg !173
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !174

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !175

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !177
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !178
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !179
  %conv = trunc i64 %call8 to i32, !dbg !179
  store i32 %conv, i32* %recvResult, align 4, !dbg !180
  %6 = load i32, i32* %recvResult, align 4, !dbg !181
  %cmp9 = icmp eq i32 %6, -1, !dbg !183
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !184

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !185
  %cmp11 = icmp eq i32 %7, 0, !dbg !186
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !187

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !188

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !190
  %idxprom = sext i32 %8 to i64, !dbg !191
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !191
  store i8 0, i8* %arrayidx, align 1, !dbg !192
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !193
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !194
  store i32 %call16, i32* %data, align 4, !dbg !195
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !197
  %cmp17 = icmp ne i32 %9, -1, !dbg !199
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !200

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !201
  %call20 = call i32 @close(i32 %10), !dbg !203
  br label %if.end21, !dbg !204

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !205

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticTrue, align 4, !dbg !206
  %tobool23 = icmp ne i32 %11, 0, !dbg !206
  br i1 %tobool23, label %if.then24, label %if.end35, !dbg !208

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !209, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !213, metadata !DIExpression()), !dbg !217
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !217
  %13 = load i32, i32* %data, align 4, !dbg !218
  %cmp25 = icmp sge i32 %13, 0, !dbg !220
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !221

if.then27:                                        ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !222
  %idxprom28 = sext i32 %14 to i64, !dbg !224
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !224
  store i32 1, i32* %arrayidx29, align 4, !dbg !225
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then27
  %15 = load i32, i32* %i, align 4, !dbg !229
  %cmp30 = icmp slt i32 %15, 10, !dbg !231
  br i1 %cmp30, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !233
  %idxprom32 = sext i32 %16 to i64, !dbg !235
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !235
  %17 = load i32, i32* %arrayidx33, align 4, !dbg !235
  call void @printIntLine(i32 %17), !dbg !236
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !238
  %inc = add nsw i32 %18, 1, !dbg !238
  store i32 %inc, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !243

if.else:                                          ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !244
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  br label %if.end35, !dbg !246

if.end35:                                         ; preds = %if.end34, %if.end22
  ret void, !dbg !247
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
define dso_local void @goodB2G1() #0 !dbg !248 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 -1, i32* %data, align 4, !dbg !251
  %0 = load i32, i32* @staticTrue, align 4, !dbg !252
  %tobool = icmp ne i32 %0, 0, !dbg !252
  br i1 %tobool, label %if.then, label %if.end22, !dbg !254

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !255, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !261, metadata !DIExpression()), !dbg !262
  store i32 -1, i32* %connectSocket, align 4, !dbg !262
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !263, metadata !DIExpression()), !dbg !264
  br label %do.body, !dbg !265

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !266
  store i32 %call, i32* %connectSocket, align 4, !dbg !268
  %1 = load i32, i32* %connectSocket, align 4, !dbg !269
  %cmp = icmp eq i32 %1, -1, !dbg !271
  br i1 %cmp, label %if.then1, label %if.end, !dbg !272

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !273

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !275
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !276
  store i16 2, i16* %sin_family, align 4, !dbg !277
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !278
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !279
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !280
  store i32 %call2, i32* %s_addr, align 4, !dbg !281
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !282
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !283
  store i16 %call3, i16* %sin_port, align 2, !dbg !284
  %3 = load i32, i32* %connectSocket, align 4, !dbg !285
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !287
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !288
  %cmp5 = icmp eq i32 %call4, -1, !dbg !289
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !290

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !291

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !293
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !294
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !295
  %conv = trunc i64 %call8 to i32, !dbg !295
  store i32 %conv, i32* %recvResult, align 4, !dbg !296
  %6 = load i32, i32* %recvResult, align 4, !dbg !297
  %cmp9 = icmp eq i32 %6, -1, !dbg !299
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !300

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !301
  %cmp11 = icmp eq i32 %7, 0, !dbg !302
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !303

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !304

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !306
  %idxprom = sext i32 %8 to i64, !dbg !307
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !307
  store i8 0, i8* %arrayidx, align 1, !dbg !308
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !309
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !310
  store i32 %call16, i32* %data, align 4, !dbg !311
  br label %do.end, !dbg !312

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !313
  %cmp17 = icmp ne i32 %9, -1, !dbg !315
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !316

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !317
  %call20 = call i32 @close(i32 %10), !dbg !319
  br label %if.end21, !dbg !320

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !321

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticFalse, align 4, !dbg !322
  %tobool23 = icmp ne i32 %11, 0, !dbg !322
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !324

if.then24:                                        ; preds = %if.end22
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !325
  br label %if.end38, !dbg !327

if.else:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !332, metadata !DIExpression()), !dbg !333
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !333
  %13 = load i32, i32* %data, align 4, !dbg !334
  %cmp25 = icmp sge i32 %13, 0, !dbg !336
  br i1 %cmp25, label %land.lhs.true, label %if.else36, !dbg !337

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !338
  %cmp27 = icmp slt i32 %14, 10, !dbg !339
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !340

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !341
  %idxprom30 = sext i32 %15 to i64, !dbg !343
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !343
  store i32 1, i32* %arrayidx31, align 4, !dbg !344
  store i32 0, i32* %i, align 4, !dbg !345
  br label %for.cond, !dbg !347

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !348
  %cmp32 = icmp slt i32 %16, 10, !dbg !350
  br i1 %cmp32, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !352
  %idxprom34 = sext i32 %17 to i64, !dbg !354
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !354
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !354
  call void @printIntLine(i32 %18), !dbg !355
  br label %for.inc, !dbg !356

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !357
  %inc = add nsw i32 %19, 1, !dbg !357
  store i32 %inc, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !358, !llvm.loop !359

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !361

if.else36:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !362
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !365 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !366, metadata !DIExpression()), !dbg !367
  store i32 -1, i32* %data, align 4, !dbg !368
  %0 = load i32, i32* @staticTrue, align 4, !dbg !369
  %tobool = icmp ne i32 %0, 0, !dbg !369
  br i1 %tobool, label %if.then, label %if.end22, !dbg !371

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !378, metadata !DIExpression()), !dbg !379
  store i32 -1, i32* %connectSocket, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !380, metadata !DIExpression()), !dbg !381
  br label %do.body, !dbg !382

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !383
  store i32 %call, i32* %connectSocket, align 4, !dbg !385
  %1 = load i32, i32* %connectSocket, align 4, !dbg !386
  %cmp = icmp eq i32 %1, -1, !dbg !388
  br i1 %cmp, label %if.then1, label %if.end, !dbg !389

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !390

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !392
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !393
  store i16 2, i16* %sin_family, align 4, !dbg !394
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !395
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !396
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !397
  store i32 %call2, i32* %s_addr, align 4, !dbg !398
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !399
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !400
  store i16 %call3, i16* %sin_port, align 2, !dbg !401
  %3 = load i32, i32* %connectSocket, align 4, !dbg !402
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !404
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !405
  %cmp5 = icmp eq i32 %call4, -1, !dbg !406
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !407

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !408

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !410
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !411
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !412
  %conv = trunc i64 %call8 to i32, !dbg !412
  store i32 %conv, i32* %recvResult, align 4, !dbg !413
  %6 = load i32, i32* %recvResult, align 4, !dbg !414
  %cmp9 = icmp eq i32 %6, -1, !dbg !416
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !417

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !418
  %cmp11 = icmp eq i32 %7, 0, !dbg !419
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !420

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !421

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !423
  %idxprom = sext i32 %8 to i64, !dbg !424
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !424
  store i8 0, i8* %arrayidx, align 1, !dbg !425
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !426
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !427
  store i32 %call16, i32* %data, align 4, !dbg !428
  br label %do.end, !dbg !429

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !430
  %cmp17 = icmp ne i32 %9, -1, !dbg !432
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !433

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !434
  %call20 = call i32 @close(i32 %10), !dbg !436
  br label %if.end21, !dbg !437

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !438

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticTrue, align 4, !dbg !439
  %tobool23 = icmp ne i32 %11, 0, !dbg !439
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !441

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !442, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !446, metadata !DIExpression()), !dbg !447
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !447
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !447
  %13 = load i32, i32* %data, align 4, !dbg !448
  %cmp25 = icmp sge i32 %13, 0, !dbg !450
  br i1 %cmp25, label %land.lhs.true, label %if.else, !dbg !451

land.lhs.true:                                    ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !452
  %cmp27 = icmp slt i32 %14, 10, !dbg !453
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !454

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !455
  %idxprom30 = sext i32 %15 to i64, !dbg !457
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !457
  store i32 1, i32* %arrayidx31, align 4, !dbg !458
  store i32 0, i32* %i, align 4, !dbg !459
  br label %for.cond, !dbg !461

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !462
  %cmp32 = icmp slt i32 %16, 10, !dbg !464
  br i1 %cmp32, label %for.body, label %for.end, !dbg !465

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !466
  %idxprom34 = sext i32 %17 to i64, !dbg !468
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !468
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !468
  call void @printIntLine(i32 %18), !dbg !469
  br label %for.inc, !dbg !470

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !471
  %inc = add nsw i32 %19, 1, !dbg !471
  store i32 %inc, i32* %i, align 4, !dbg !471
  br label %for.cond, !dbg !472, !llvm.loop !473

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !475

if.else:                                          ; preds = %land.lhs.true, %if.then24
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !476
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !478

if.end37:                                         ; preds = %if.end36, %if.end22
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !480 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !481, metadata !DIExpression()), !dbg !482
  store i32 -1, i32* %data, align 4, !dbg !483
  %0 = load i32, i32* @staticFalse, align 4, !dbg !484
  %tobool = icmp ne i32 %0, 0, !dbg !484
  br i1 %tobool, label %if.then, label %if.else, !dbg !486

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !487
  br label %if.end, !dbg !489

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !490
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @staticTrue, align 4, !dbg !492
  %tobool1 = icmp ne i32 %1, 0, !dbg !492
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !494

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !495, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !499, metadata !DIExpression()), !dbg !500
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !500
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !500
  %3 = load i32, i32* %data, align 4, !dbg !501
  %cmp = icmp sge i32 %3, 0, !dbg !503
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !504

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !505
  %idxprom = sext i32 %4 to i64, !dbg !507
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !507
  store i32 1, i32* %arrayidx, align 4, !dbg !508
  store i32 0, i32* %i, align 4, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !512
  %cmp4 = icmp slt i32 %5, 10, !dbg !514
  br i1 %cmp4, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !516
  %idxprom5 = sext i32 %6 to i64, !dbg !518
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !518
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !518
  call void @printIntLine(i32 %7), !dbg !519
  br label %for.inc, !dbg !520

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !521
  %inc = add nsw i32 %8, 1, !dbg !521
  store i32 %inc, i32* %i, align 4, !dbg !521
  br label %for.cond, !dbg !522, !llvm.loop !523

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !525

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !526
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !528

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !530 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !531, metadata !DIExpression()), !dbg !532
  store i32 -1, i32* %data, align 4, !dbg !533
  %0 = load i32, i32* @staticTrue, align 4, !dbg !534
  %tobool = icmp ne i32 %0, 0, !dbg !534
  br i1 %tobool, label %if.then, label %if.end, !dbg !536

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !537
  br label %if.end, !dbg !539

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @staticTrue, align 4, !dbg !540
  %tobool1 = icmp ne i32 %1, 0, !dbg !540
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !542

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !543, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !547, metadata !DIExpression()), !dbg !548
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !548
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !548
  %3 = load i32, i32* %data, align 4, !dbg !549
  %cmp = icmp sge i32 %3, 0, !dbg !551
  br i1 %cmp, label %if.then3, label %if.else, !dbg !552

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !553
  %idxprom = sext i32 %4 to i64, !dbg !555
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !555
  store i32 1, i32* %arrayidx, align 4, !dbg !556
  store i32 0, i32* %i, align 4, !dbg !557
  br label %for.cond, !dbg !559

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !560
  %cmp4 = icmp slt i32 %5, 10, !dbg !562
  br i1 %cmp4, label %for.body, label %for.end, !dbg !563

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !564
  %idxprom5 = sext i32 %6 to i64, !dbg !566
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !566
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !566
  call void @printIntLine(i32 %7), !dbg !567
  br label %for.inc, !dbg !568

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !569
  %inc = add nsw i32 %8, 1, !dbg !569
  store i32 %inc, i32* %i, align 4, !dbg !569
  br label %for.cond, !dbg !570, !llvm.loop !571

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !573

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !574
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !576

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_good() #0 !dbg !578 {
entry:
  call void @goodB2G1(), !dbg !579
  call void @goodB2G2(), !dbg !580
  call void @goodG2B1(), !dbg !581
  call void @goodG2B2(), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !584 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !589
  %0 = load i8*, i8** %line.addr, align 8, !dbg !590
  %cmp = icmp ne i8* %0, null, !dbg !592
  br i1 %cmp, label %if.then, label %if.end, !dbg !593

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !594
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !596
  br label %if.end, !dbg !597

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !598
  ret void, !dbg !599
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !600 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !601, metadata !DIExpression()), !dbg !602
  %0 = load i8*, i8** %line.addr, align 8, !dbg !603
  %cmp = icmp ne i8* %0, null, !dbg !605
  br i1 %cmp, label %if.then, label %if.end, !dbg !606

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !609
  br label %if.end, !dbg !610

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !612 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load i32*, i32** %line.addr, align 8, !dbg !620
  %cmp = icmp ne i32* %0, null, !dbg !622
  br i1 %cmp, label %if.then, label %if.end, !dbg !623

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !624
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !626
  br label %if.end, !dbg !627

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !628
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !629 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !634
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !637 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !643
  %conv = sext i16 %0 to i32, !dbg !643
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !644
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !646 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !650, metadata !DIExpression()), !dbg !651
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !652
  %conv = fpext float %0 to double, !dbg !652
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !653
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !655 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !659, metadata !DIExpression()), !dbg !660
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !664 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !670, metadata !DIExpression()), !dbg !671
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !672
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !675 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !680, metadata !DIExpression()), !dbg !681
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !682
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !685 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !690
  %conv = sext i8 %0 to i32, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !693 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !698, metadata !DIExpression()), !dbg !702
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !703
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !704
  store i32 %0, i32* %arrayidx, align 4, !dbg !705
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !706
  store i32 0, i32* %arrayidx1, align 4, !dbg !707
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !708
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !711 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !714, metadata !DIExpression()), !dbg !715
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !716
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !717
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !719 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !724
  %conv = zext i8 %0 to i32, !dbg !724
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !725
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !727 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !733
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !734
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !736 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !746, metadata !DIExpression()), !dbg !747
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !748
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !749
  %1 = load i32, i32* %intOne, align 4, !dbg !749
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !750
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !751
  %3 = load i32, i32* %intTwo, align 4, !dbg !751
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !752
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !754 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !758, metadata !DIExpression()), !dbg !759
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.declare(metadata i64* %i, metadata !762, metadata !DIExpression()), !dbg !763
  store i64 0, i64* %i, align 8, !dbg !764
  br label %for.cond, !dbg !766

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !767
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !769
  %cmp = icmp ult i64 %0, %1, !dbg !770
  br i1 %cmp, label %for.body, label %for.end, !dbg !771

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !772
  %3 = load i64, i64* %i, align 8, !dbg !774
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !772
  %4 = load i8, i8* %arrayidx, align 1, !dbg !772
  %conv = zext i8 %4 to i32, !dbg !772
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !775
  br label %for.inc, !dbg !776

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !777
  %inc = add i64 %5, 1, !dbg !777
  store i64 %inc, i64* %i, align 8, !dbg !777
  br label %for.cond, !dbg !778, !llvm.loop !779

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !781
  ret void, !dbg !782
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !783 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !786, metadata !DIExpression()), !dbg !787
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !790, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !792, metadata !DIExpression()), !dbg !793
  store i64 0, i64* %numWritten, align 8, !dbg !793
  br label %while.cond, !dbg !794

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !795
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !796
  %cmp = icmp ult i64 %0, %1, !dbg !797
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !798

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !799
  %2 = load i16*, i16** %call, align 8, !dbg !799
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !799
  %4 = load i64, i64* %numWritten, align 8, !dbg !799
  %mul = mul i64 2, %4, !dbg !799
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !799
  %5 = load i8, i8* %arrayidx, align 1, !dbg !799
  %conv = sext i8 %5 to i32, !dbg !799
  %idxprom = sext i32 %conv to i64, !dbg !799
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !799
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !799
  %conv2 = zext i16 %6 to i32, !dbg !799
  %and = and i32 %conv2, 4096, !dbg !799
  %tobool = icmp ne i32 %and, 0, !dbg !799
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !800

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !801
  %7 = load i16*, i16** %call3, align 8, !dbg !801
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !801
  %9 = load i64, i64* %numWritten, align 8, !dbg !801
  %mul4 = mul i64 2, %9, !dbg !801
  %add = add i64 %mul4, 1, !dbg !801
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !801
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !801
  %conv6 = sext i8 %10 to i32, !dbg !801
  %idxprom7 = sext i32 %conv6 to i64, !dbg !801
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !801
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !801
  %conv9 = zext i16 %11 to i32, !dbg !801
  %and10 = and i32 %conv9, 4096, !dbg !801
  %tobool11 = icmp ne i32 %and10, 0, !dbg !800
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !802
  br i1 %12, label %while.body, label %while.end, !dbg !794

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !803, metadata !DIExpression()), !dbg !805
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !806
  %14 = load i64, i64* %numWritten, align 8, !dbg !807
  %mul12 = mul i64 2, %14, !dbg !808
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !806
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !809
  %15 = load i32, i32* %byte, align 4, !dbg !810
  %conv15 = trunc i32 %15 to i8, !dbg !811
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !812
  %17 = load i64, i64* %numWritten, align 8, !dbg !813
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !812
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !814
  %18 = load i64, i64* %numWritten, align 8, !dbg !815
  %inc = add i64 %18, 1, !dbg !815
  store i64 %inc, i64* %numWritten, align 8, !dbg !815
  br label %while.cond, !dbg !794, !llvm.loop !816

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !818
  ret i64 %19, !dbg !819
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !820 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !823, metadata !DIExpression()), !dbg !824
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !825, metadata !DIExpression()), !dbg !826
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !829, metadata !DIExpression()), !dbg !830
  store i64 0, i64* %numWritten, align 8, !dbg !830
  br label %while.cond, !dbg !831

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !832
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !833
  %cmp = icmp ult i64 %0, %1, !dbg !834
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !835

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !836
  %3 = load i64, i64* %numWritten, align 8, !dbg !837
  %mul = mul i64 2, %3, !dbg !838
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !836
  %4 = load i32, i32* %arrayidx, align 4, !dbg !836
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !839
  %tobool = icmp ne i32 %call, 0, !dbg !839
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !840

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !841
  %6 = load i64, i64* %numWritten, align 8, !dbg !842
  %mul1 = mul i64 2, %6, !dbg !843
  %add = add i64 %mul1, 1, !dbg !844
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !841
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !841
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !845
  %tobool4 = icmp ne i32 %call3, 0, !dbg !840
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !846
  br i1 %8, label %while.body, label %while.end, !dbg !831

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !847, metadata !DIExpression()), !dbg !849
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !850
  %10 = load i64, i64* %numWritten, align 8, !dbg !851
  %mul5 = mul i64 2, %10, !dbg !852
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !850
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !853
  %11 = load i32, i32* %byte, align 4, !dbg !854
  %conv = trunc i32 %11 to i8, !dbg !855
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !856
  %13 = load i64, i64* %numWritten, align 8, !dbg !857
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !856
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !858
  %14 = load i64, i64* %numWritten, align 8, !dbg !859
  %inc = add i64 %14, 1, !dbg !859
  store i64 %inc, i64* %numWritten, align 8, !dbg !859
  br label %while.cond, !dbg !831, !llvm.loop !860

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !862
  ret i64 %15, !dbg !863
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !864 {
entry:
  ret i32 1, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !868 {
entry:
  ret i32 0, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !870 {
entry:
  %call = call i32 @rand() #7, !dbg !871
  %rem = srem i32 %call, 2, !dbg !872
  ret i32 %rem, !dbg !873
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !874 {
entry:
  ret void, !dbg !875
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !876 {
entry:
  ret void, !dbg !877
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !878 {
entry:
  ret void, !dbg !879
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !880 {
entry:
  ret void, !dbg !881
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !882 {
entry:
  ret void, !dbg !883
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !884 {
entry:
  ret void, !dbg !885
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !886 {
entry:
  ret void, !dbg !887
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !888 {
entry:
  ret void, !dbg !889
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !890 {
entry:
  ret void, !dbg !891
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !892 {
entry:
  ret void, !dbg !893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !894 {
entry:
  ret void, !dbg !895
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !896 {
entry:
  ret void, !dbg !897
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !898 {
entry:
  ret void, !dbg !899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !900 {
entry:
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !902 {
entry:
  ret void, !dbg !903
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !904 {
entry:
  ret void, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !906 {
entry:
  ret void, !dbg !907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !908 {
entry:
  ret void, !dbg !909
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

!llvm.dbg.cu = !{!2, !67}
!llvm.ident = !{!105, !105}
!llvm.module.flags = !{!106, !107, !108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 46, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_520/source_code")
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
!61 = !{!0, !62}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 47, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !67, file: !68, line: 174, type: !64, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !85, globals: !88, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_520/source_code")
!69 = !{!70}
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 46, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!73 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!85 = !{!86, !64, !55, !87}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !{!65, !89, !91, !93, !95, !97, !99, !101}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !67, file: !68, line: 175, type: !64, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !67, file: !68, line: 176, type: !64, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "globalTrue", scope: !67, file: !68, line: 181, type: !64, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "globalFalse", scope: !67, file: !68, line: 182, type: !64, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "globalFive", scope: !67, file: !68, line: 183, type: !64, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "globalArgc", scope: !67, file: !68, line: 214, type: !64, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "globalArgv", scope: !67, file: !68, line: 215, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!105 = !{!"clang version 12.0.0"}
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_bad", scope: !3, file: !3, line: 51, type: !110, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null}
!112 = !{}
!113 = !DILocalVariable(name: "data", scope: !109, file: !3, line: 53, type: !64)
!114 = !DILocation(line: 53, column: 9, scope: !109)
!115 = !DILocation(line: 55, column: 10, scope: !109)
!116 = !DILocation(line: 56, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !3, line: 56, column: 8)
!118 = !DILocation(line: 56, column: 8, scope: !109)
!119 = !DILocalVariable(name: "recvResult", scope: !120, file: !3, line: 63, type: !64)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 58, column: 9)
!121 = distinct !DILexicalBlock(scope: !117, file: !3, line: 57, column: 5)
!122 = !DILocation(line: 63, column: 17, scope: !120)
!123 = !DILocalVariable(name: "service", scope: !120, file: !3, line: 64, type: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !125)
!125 = !{!126, !127, !133, !140}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !124, file: !19, line: 240, baseType: !53, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !124, file: !19, line: 241, baseType: !128, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 25, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !132, line: 40, baseType: !55)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !124, file: !19, line: 242, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !134, file: !19, line: 33, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 26, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !132, line: 42, baseType: !7)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !124, file: !19, line: 245, baseType: !141, size: 64, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DILocation(line: 64, column: 32, scope: !120)
!145 = !DILocalVariable(name: "connectSocket", scope: !120, file: !3, line: 65, type: !64)
!146 = !DILocation(line: 65, column: 20, scope: !120)
!147 = !DILocalVariable(name: "inputBuffer", scope: !120, file: !3, line: 66, type: !57)
!148 = !DILocation(line: 66, column: 18, scope: !120)
!149 = !DILocation(line: 67, column: 13, scope: !120)
!150 = !DILocation(line: 77, column: 33, scope: !151)
!151 = distinct !DILexicalBlock(scope: !120, file: !3, line: 68, column: 13)
!152 = !DILocation(line: 77, column: 31, scope: !151)
!153 = !DILocation(line: 78, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 78, column: 21)
!155 = !DILocation(line: 78, column: 35, scope: !154)
!156 = !DILocation(line: 78, column: 21, scope: !151)
!157 = !DILocation(line: 80, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 79, column: 17)
!159 = !DILocation(line: 82, column: 17, scope: !151)
!160 = !DILocation(line: 83, column: 25, scope: !151)
!161 = !DILocation(line: 83, column: 36, scope: !151)
!162 = !DILocation(line: 84, column: 43, scope: !151)
!163 = !DILocation(line: 84, column: 25, scope: !151)
!164 = !DILocation(line: 84, column: 34, scope: !151)
!165 = !DILocation(line: 84, column: 41, scope: !151)
!166 = !DILocation(line: 85, column: 36, scope: !151)
!167 = !DILocation(line: 85, column: 25, scope: !151)
!168 = !DILocation(line: 85, column: 34, scope: !151)
!169 = !DILocation(line: 86, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !151, file: !3, line: 86, column: 21)
!171 = !DILocation(line: 86, column: 44, scope: !170)
!172 = !DILocation(line: 86, column: 21, scope: !170)
!173 = !DILocation(line: 86, column: 89, scope: !170)
!174 = !DILocation(line: 86, column: 21, scope: !151)
!175 = !DILocation(line: 88, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 87, column: 17)
!177 = !DILocation(line: 92, column: 35, scope: !151)
!178 = !DILocation(line: 92, column: 50, scope: !151)
!179 = !DILocation(line: 92, column: 30, scope: !151)
!180 = !DILocation(line: 92, column: 28, scope: !151)
!181 = !DILocation(line: 93, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !151, file: !3, line: 93, column: 21)
!183 = !DILocation(line: 93, column: 32, scope: !182)
!184 = !DILocation(line: 93, column: 48, scope: !182)
!185 = !DILocation(line: 93, column: 51, scope: !182)
!186 = !DILocation(line: 93, column: 62, scope: !182)
!187 = !DILocation(line: 93, column: 21, scope: !151)
!188 = !DILocation(line: 95, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !3, line: 94, column: 17)
!190 = !DILocation(line: 98, column: 29, scope: !151)
!191 = !DILocation(line: 98, column: 17, scope: !151)
!192 = !DILocation(line: 98, column: 41, scope: !151)
!193 = !DILocation(line: 100, column: 29, scope: !151)
!194 = !DILocation(line: 100, column: 24, scope: !151)
!195 = !DILocation(line: 100, column: 22, scope: !151)
!196 = !DILocation(line: 101, column: 13, scope: !151)
!197 = !DILocation(line: 103, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !120, file: !3, line: 103, column: 17)
!199 = !DILocation(line: 103, column: 31, scope: !198)
!200 = !DILocation(line: 103, column: 17, scope: !120)
!201 = !DILocation(line: 105, column: 30, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 104, column: 13)
!203 = !DILocation(line: 105, column: 17, scope: !202)
!204 = !DILocation(line: 106, column: 13, scope: !202)
!205 = !DILocation(line: 114, column: 5, scope: !121)
!206 = !DILocation(line: 115, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !109, file: !3, line: 115, column: 8)
!208 = !DILocation(line: 115, column: 8, scope: !109)
!209 = !DILocalVariable(name: "i", scope: !210, file: !3, line: 118, type: !64)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 117, column: 9)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 116, column: 5)
!212 = !DILocation(line: 118, column: 17, scope: !210)
!213 = !DILocalVariable(name: "buffer", scope: !210, file: !3, line: 119, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 10)
!217 = !DILocation(line: 119, column: 17, scope: !210)
!218 = !DILocation(line: 122, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !210, file: !3, line: 122, column: 17)
!220 = !DILocation(line: 122, column: 22, scope: !219)
!221 = !DILocation(line: 122, column: 17, scope: !210)
!222 = !DILocation(line: 124, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 123, column: 13)
!224 = !DILocation(line: 124, column: 17, scope: !223)
!225 = !DILocation(line: 124, column: 30, scope: !223)
!226 = !DILocation(line: 126, column: 23, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 126, column: 17)
!228 = !DILocation(line: 126, column: 21, scope: !227)
!229 = !DILocation(line: 126, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 126, column: 17)
!231 = !DILocation(line: 126, column: 30, scope: !230)
!232 = !DILocation(line: 126, column: 17, scope: !227)
!233 = !DILocation(line: 128, column: 41, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 127, column: 17)
!235 = !DILocation(line: 128, column: 34, scope: !234)
!236 = !DILocation(line: 128, column: 21, scope: !234)
!237 = !DILocation(line: 129, column: 17, scope: !234)
!238 = !DILocation(line: 126, column: 37, scope: !230)
!239 = !DILocation(line: 126, column: 17, scope: !230)
!240 = distinct !{!240, !232, !241, !242}
!241 = !DILocation(line: 129, column: 17, scope: !227)
!242 = !{!"llvm.loop.mustprogress"}
!243 = !DILocation(line: 130, column: 13, scope: !223)
!244 = !DILocation(line: 133, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !219, file: !3, line: 132, column: 13)
!246 = !DILocation(line: 136, column: 5, scope: !211)
!247 = !DILocation(line: 137, column: 1, scope: !109)
!248 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 144, type: !110, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!249 = !DILocalVariable(name: "data", scope: !248, file: !3, line: 146, type: !64)
!250 = !DILocation(line: 146, column: 9, scope: !248)
!251 = !DILocation(line: 148, column: 10, scope: !248)
!252 = !DILocation(line: 149, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 149, column: 8)
!254 = !DILocation(line: 149, column: 8, scope: !248)
!255 = !DILocalVariable(name: "recvResult", scope: !256, file: !3, line: 156, type: !64)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 151, column: 9)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 150, column: 5)
!258 = !DILocation(line: 156, column: 17, scope: !256)
!259 = !DILocalVariable(name: "service", scope: !256, file: !3, line: 157, type: !124)
!260 = !DILocation(line: 157, column: 32, scope: !256)
!261 = !DILocalVariable(name: "connectSocket", scope: !256, file: !3, line: 158, type: !64)
!262 = !DILocation(line: 158, column: 20, scope: !256)
!263 = !DILocalVariable(name: "inputBuffer", scope: !256, file: !3, line: 159, type: !57)
!264 = !DILocation(line: 159, column: 18, scope: !256)
!265 = !DILocation(line: 160, column: 13, scope: !256)
!266 = !DILocation(line: 170, column: 33, scope: !267)
!267 = distinct !DILexicalBlock(scope: !256, file: !3, line: 161, column: 13)
!268 = !DILocation(line: 170, column: 31, scope: !267)
!269 = !DILocation(line: 171, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 171, column: 21)
!271 = !DILocation(line: 171, column: 35, scope: !270)
!272 = !DILocation(line: 171, column: 21, scope: !267)
!273 = !DILocation(line: 173, column: 21, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 172, column: 17)
!275 = !DILocation(line: 175, column: 17, scope: !267)
!276 = !DILocation(line: 176, column: 25, scope: !267)
!277 = !DILocation(line: 176, column: 36, scope: !267)
!278 = !DILocation(line: 177, column: 43, scope: !267)
!279 = !DILocation(line: 177, column: 25, scope: !267)
!280 = !DILocation(line: 177, column: 34, scope: !267)
!281 = !DILocation(line: 177, column: 41, scope: !267)
!282 = !DILocation(line: 178, column: 36, scope: !267)
!283 = !DILocation(line: 178, column: 25, scope: !267)
!284 = !DILocation(line: 178, column: 34, scope: !267)
!285 = !DILocation(line: 179, column: 29, scope: !286)
!286 = distinct !DILexicalBlock(scope: !267, file: !3, line: 179, column: 21)
!287 = !DILocation(line: 179, column: 44, scope: !286)
!288 = !DILocation(line: 179, column: 21, scope: !286)
!289 = !DILocation(line: 179, column: 89, scope: !286)
!290 = !DILocation(line: 179, column: 21, scope: !267)
!291 = !DILocation(line: 181, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !3, line: 180, column: 17)
!293 = !DILocation(line: 185, column: 35, scope: !267)
!294 = !DILocation(line: 185, column: 50, scope: !267)
!295 = !DILocation(line: 185, column: 30, scope: !267)
!296 = !DILocation(line: 185, column: 28, scope: !267)
!297 = !DILocation(line: 186, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !267, file: !3, line: 186, column: 21)
!299 = !DILocation(line: 186, column: 32, scope: !298)
!300 = !DILocation(line: 186, column: 48, scope: !298)
!301 = !DILocation(line: 186, column: 51, scope: !298)
!302 = !DILocation(line: 186, column: 62, scope: !298)
!303 = !DILocation(line: 186, column: 21, scope: !267)
!304 = !DILocation(line: 188, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !3, line: 187, column: 17)
!306 = !DILocation(line: 191, column: 29, scope: !267)
!307 = !DILocation(line: 191, column: 17, scope: !267)
!308 = !DILocation(line: 191, column: 41, scope: !267)
!309 = !DILocation(line: 193, column: 29, scope: !267)
!310 = !DILocation(line: 193, column: 24, scope: !267)
!311 = !DILocation(line: 193, column: 22, scope: !267)
!312 = !DILocation(line: 194, column: 13, scope: !267)
!313 = !DILocation(line: 196, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !256, file: !3, line: 196, column: 17)
!315 = !DILocation(line: 196, column: 31, scope: !314)
!316 = !DILocation(line: 196, column: 17, scope: !256)
!317 = !DILocation(line: 198, column: 30, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 197, column: 13)
!319 = !DILocation(line: 198, column: 17, scope: !318)
!320 = !DILocation(line: 199, column: 13, scope: !318)
!321 = !DILocation(line: 207, column: 5, scope: !257)
!322 = !DILocation(line: 208, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !248, file: !3, line: 208, column: 8)
!324 = !DILocation(line: 208, column: 8, scope: !248)
!325 = !DILocation(line: 211, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !3, line: 209, column: 5)
!327 = !DILocation(line: 212, column: 5, scope: !326)
!328 = !DILocalVariable(name: "i", scope: !329, file: !3, line: 216, type: !64)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 215, column: 9)
!330 = distinct !DILexicalBlock(scope: !323, file: !3, line: 214, column: 5)
!331 = !DILocation(line: 216, column: 17, scope: !329)
!332 = !DILocalVariable(name: "buffer", scope: !329, file: !3, line: 217, type: !214)
!333 = !DILocation(line: 217, column: 17, scope: !329)
!334 = !DILocation(line: 219, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !3, line: 219, column: 17)
!336 = !DILocation(line: 219, column: 22, scope: !335)
!337 = !DILocation(line: 219, column: 27, scope: !335)
!338 = !DILocation(line: 219, column: 30, scope: !335)
!339 = !DILocation(line: 219, column: 35, scope: !335)
!340 = !DILocation(line: 219, column: 17, scope: !329)
!341 = !DILocation(line: 221, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !335, file: !3, line: 220, column: 13)
!343 = !DILocation(line: 221, column: 17, scope: !342)
!344 = !DILocation(line: 221, column: 30, scope: !342)
!345 = !DILocation(line: 223, column: 23, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 223, column: 17)
!347 = !DILocation(line: 223, column: 21, scope: !346)
!348 = !DILocation(line: 223, column: 28, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !3, line: 223, column: 17)
!350 = !DILocation(line: 223, column: 30, scope: !349)
!351 = !DILocation(line: 223, column: 17, scope: !346)
!352 = !DILocation(line: 225, column: 41, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 224, column: 17)
!354 = !DILocation(line: 225, column: 34, scope: !353)
!355 = !DILocation(line: 225, column: 21, scope: !353)
!356 = !DILocation(line: 226, column: 17, scope: !353)
!357 = !DILocation(line: 223, column: 37, scope: !349)
!358 = !DILocation(line: 223, column: 17, scope: !349)
!359 = distinct !{!359, !351, !360, !242}
!360 = !DILocation(line: 226, column: 17, scope: !346)
!361 = !DILocation(line: 227, column: 13, scope: !342)
!362 = !DILocation(line: 230, column: 17, scope: !363)
!363 = distinct !DILexicalBlock(scope: !335, file: !3, line: 229, column: 13)
!364 = !DILocation(line: 234, column: 1, scope: !248)
!365 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 237, type: !110, scopeLine: 238, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!366 = !DILocalVariable(name: "data", scope: !365, file: !3, line: 239, type: !64)
!367 = !DILocation(line: 239, column: 9, scope: !365)
!368 = !DILocation(line: 241, column: 10, scope: !365)
!369 = !DILocation(line: 242, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !3, line: 242, column: 8)
!371 = !DILocation(line: 242, column: 8, scope: !365)
!372 = !DILocalVariable(name: "recvResult", scope: !373, file: !3, line: 249, type: !64)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 244, column: 9)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 243, column: 5)
!375 = !DILocation(line: 249, column: 17, scope: !373)
!376 = !DILocalVariable(name: "service", scope: !373, file: !3, line: 250, type: !124)
!377 = !DILocation(line: 250, column: 32, scope: !373)
!378 = !DILocalVariable(name: "connectSocket", scope: !373, file: !3, line: 251, type: !64)
!379 = !DILocation(line: 251, column: 20, scope: !373)
!380 = !DILocalVariable(name: "inputBuffer", scope: !373, file: !3, line: 252, type: !57)
!381 = !DILocation(line: 252, column: 18, scope: !373)
!382 = !DILocation(line: 253, column: 13, scope: !373)
!383 = !DILocation(line: 263, column: 33, scope: !384)
!384 = distinct !DILexicalBlock(scope: !373, file: !3, line: 254, column: 13)
!385 = !DILocation(line: 263, column: 31, scope: !384)
!386 = !DILocation(line: 264, column: 21, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !3, line: 264, column: 21)
!388 = !DILocation(line: 264, column: 35, scope: !387)
!389 = !DILocation(line: 264, column: 21, scope: !384)
!390 = !DILocation(line: 266, column: 21, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 265, column: 17)
!392 = !DILocation(line: 268, column: 17, scope: !384)
!393 = !DILocation(line: 269, column: 25, scope: !384)
!394 = !DILocation(line: 269, column: 36, scope: !384)
!395 = !DILocation(line: 270, column: 43, scope: !384)
!396 = !DILocation(line: 270, column: 25, scope: !384)
!397 = !DILocation(line: 270, column: 34, scope: !384)
!398 = !DILocation(line: 270, column: 41, scope: !384)
!399 = !DILocation(line: 271, column: 36, scope: !384)
!400 = !DILocation(line: 271, column: 25, scope: !384)
!401 = !DILocation(line: 271, column: 34, scope: !384)
!402 = !DILocation(line: 272, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !384, file: !3, line: 272, column: 21)
!404 = !DILocation(line: 272, column: 44, scope: !403)
!405 = !DILocation(line: 272, column: 21, scope: !403)
!406 = !DILocation(line: 272, column: 89, scope: !403)
!407 = !DILocation(line: 272, column: 21, scope: !384)
!408 = !DILocation(line: 274, column: 21, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !3, line: 273, column: 17)
!410 = !DILocation(line: 278, column: 35, scope: !384)
!411 = !DILocation(line: 278, column: 50, scope: !384)
!412 = !DILocation(line: 278, column: 30, scope: !384)
!413 = !DILocation(line: 278, column: 28, scope: !384)
!414 = !DILocation(line: 279, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !384, file: !3, line: 279, column: 21)
!416 = !DILocation(line: 279, column: 32, scope: !415)
!417 = !DILocation(line: 279, column: 48, scope: !415)
!418 = !DILocation(line: 279, column: 51, scope: !415)
!419 = !DILocation(line: 279, column: 62, scope: !415)
!420 = !DILocation(line: 279, column: 21, scope: !384)
!421 = !DILocation(line: 281, column: 21, scope: !422)
!422 = distinct !DILexicalBlock(scope: !415, file: !3, line: 280, column: 17)
!423 = !DILocation(line: 284, column: 29, scope: !384)
!424 = !DILocation(line: 284, column: 17, scope: !384)
!425 = !DILocation(line: 284, column: 41, scope: !384)
!426 = !DILocation(line: 286, column: 29, scope: !384)
!427 = !DILocation(line: 286, column: 24, scope: !384)
!428 = !DILocation(line: 286, column: 22, scope: !384)
!429 = !DILocation(line: 287, column: 13, scope: !384)
!430 = !DILocation(line: 289, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !373, file: !3, line: 289, column: 17)
!432 = !DILocation(line: 289, column: 31, scope: !431)
!433 = !DILocation(line: 289, column: 17, scope: !373)
!434 = !DILocation(line: 291, column: 30, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !3, line: 290, column: 13)
!436 = !DILocation(line: 291, column: 17, scope: !435)
!437 = !DILocation(line: 292, column: 13, scope: !435)
!438 = !DILocation(line: 300, column: 5, scope: !374)
!439 = !DILocation(line: 301, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !365, file: !3, line: 301, column: 8)
!441 = !DILocation(line: 301, column: 8, scope: !365)
!442 = !DILocalVariable(name: "i", scope: !443, file: !3, line: 304, type: !64)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 303, column: 9)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 302, column: 5)
!445 = !DILocation(line: 304, column: 17, scope: !443)
!446 = !DILocalVariable(name: "buffer", scope: !443, file: !3, line: 305, type: !214)
!447 = !DILocation(line: 305, column: 17, scope: !443)
!448 = !DILocation(line: 307, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !443, file: !3, line: 307, column: 17)
!450 = !DILocation(line: 307, column: 22, scope: !449)
!451 = !DILocation(line: 307, column: 27, scope: !449)
!452 = !DILocation(line: 307, column: 30, scope: !449)
!453 = !DILocation(line: 307, column: 35, scope: !449)
!454 = !DILocation(line: 307, column: 17, scope: !443)
!455 = !DILocation(line: 309, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !3, line: 308, column: 13)
!457 = !DILocation(line: 309, column: 17, scope: !456)
!458 = !DILocation(line: 309, column: 30, scope: !456)
!459 = !DILocation(line: 311, column: 23, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 311, column: 17)
!461 = !DILocation(line: 311, column: 21, scope: !460)
!462 = !DILocation(line: 311, column: 28, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 311, column: 17)
!464 = !DILocation(line: 311, column: 30, scope: !463)
!465 = !DILocation(line: 311, column: 17, scope: !460)
!466 = !DILocation(line: 313, column: 41, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 312, column: 17)
!468 = !DILocation(line: 313, column: 34, scope: !467)
!469 = !DILocation(line: 313, column: 21, scope: !467)
!470 = !DILocation(line: 314, column: 17, scope: !467)
!471 = !DILocation(line: 311, column: 37, scope: !463)
!472 = !DILocation(line: 311, column: 17, scope: !463)
!473 = distinct !{!473, !465, !474, !242}
!474 = !DILocation(line: 314, column: 17, scope: !460)
!475 = !DILocation(line: 315, column: 13, scope: !456)
!476 = !DILocation(line: 318, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !449, file: !3, line: 317, column: 13)
!478 = !DILocation(line: 321, column: 5, scope: !444)
!479 = !DILocation(line: 322, column: 1, scope: !365)
!480 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 325, type: !110, scopeLine: 326, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!481 = !DILocalVariable(name: "data", scope: !480, file: !3, line: 327, type: !64)
!482 = !DILocation(line: 327, column: 9, scope: !480)
!483 = !DILocation(line: 329, column: 10, scope: !480)
!484 = !DILocation(line: 330, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !3, line: 330, column: 8)
!486 = !DILocation(line: 330, column: 8, scope: !480)
!487 = !DILocation(line: 333, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !3, line: 331, column: 5)
!489 = !DILocation(line: 334, column: 5, scope: !488)
!490 = !DILocation(line: 339, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !3, line: 336, column: 5)
!492 = !DILocation(line: 341, column: 8, scope: !493)
!493 = distinct !DILexicalBlock(scope: !480, file: !3, line: 341, column: 8)
!494 = !DILocation(line: 341, column: 8, scope: !480)
!495 = !DILocalVariable(name: "i", scope: !496, file: !3, line: 344, type: !64)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 343, column: 9)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 342, column: 5)
!498 = !DILocation(line: 344, column: 17, scope: !496)
!499 = !DILocalVariable(name: "buffer", scope: !496, file: !3, line: 345, type: !214)
!500 = !DILocation(line: 345, column: 17, scope: !496)
!501 = !DILocation(line: 348, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !496, file: !3, line: 348, column: 17)
!503 = !DILocation(line: 348, column: 22, scope: !502)
!504 = !DILocation(line: 348, column: 17, scope: !496)
!505 = !DILocation(line: 350, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 349, column: 13)
!507 = !DILocation(line: 350, column: 17, scope: !506)
!508 = !DILocation(line: 350, column: 30, scope: !506)
!509 = !DILocation(line: 352, column: 23, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 352, column: 17)
!511 = !DILocation(line: 352, column: 21, scope: !510)
!512 = !DILocation(line: 352, column: 28, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 352, column: 17)
!514 = !DILocation(line: 352, column: 30, scope: !513)
!515 = !DILocation(line: 352, column: 17, scope: !510)
!516 = !DILocation(line: 354, column: 41, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 353, column: 17)
!518 = !DILocation(line: 354, column: 34, scope: !517)
!519 = !DILocation(line: 354, column: 21, scope: !517)
!520 = !DILocation(line: 355, column: 17, scope: !517)
!521 = !DILocation(line: 352, column: 37, scope: !513)
!522 = !DILocation(line: 352, column: 17, scope: !513)
!523 = distinct !{!523, !515, !524, !242}
!524 = !DILocation(line: 355, column: 17, scope: !510)
!525 = !DILocation(line: 356, column: 13, scope: !506)
!526 = !DILocation(line: 359, column: 17, scope: !527)
!527 = distinct !DILexicalBlock(scope: !502, file: !3, line: 358, column: 13)
!528 = !DILocation(line: 362, column: 5, scope: !497)
!529 = !DILocation(line: 363, column: 1, scope: !480)
!530 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 366, type: !110, scopeLine: 367, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!531 = !DILocalVariable(name: "data", scope: !530, file: !3, line: 368, type: !64)
!532 = !DILocation(line: 368, column: 9, scope: !530)
!533 = !DILocation(line: 370, column: 10, scope: !530)
!534 = !DILocation(line: 371, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 371, column: 8)
!536 = !DILocation(line: 371, column: 8, scope: !530)
!537 = !DILocation(line: 375, column: 14, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 372, column: 5)
!539 = !DILocation(line: 376, column: 5, scope: !538)
!540 = !DILocation(line: 377, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !530, file: !3, line: 377, column: 8)
!542 = !DILocation(line: 377, column: 8, scope: !530)
!543 = !DILocalVariable(name: "i", scope: !544, file: !3, line: 380, type: !64)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 379, column: 9)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 378, column: 5)
!546 = !DILocation(line: 380, column: 17, scope: !544)
!547 = !DILocalVariable(name: "buffer", scope: !544, file: !3, line: 381, type: !214)
!548 = !DILocation(line: 381, column: 17, scope: !544)
!549 = !DILocation(line: 384, column: 17, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !3, line: 384, column: 17)
!551 = !DILocation(line: 384, column: 22, scope: !550)
!552 = !DILocation(line: 384, column: 17, scope: !544)
!553 = !DILocation(line: 386, column: 24, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 385, column: 13)
!555 = !DILocation(line: 386, column: 17, scope: !554)
!556 = !DILocation(line: 386, column: 30, scope: !554)
!557 = !DILocation(line: 388, column: 23, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 388, column: 17)
!559 = !DILocation(line: 388, column: 21, scope: !558)
!560 = !DILocation(line: 388, column: 28, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 388, column: 17)
!562 = !DILocation(line: 388, column: 30, scope: !561)
!563 = !DILocation(line: 388, column: 17, scope: !558)
!564 = !DILocation(line: 390, column: 41, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 389, column: 17)
!566 = !DILocation(line: 390, column: 34, scope: !565)
!567 = !DILocation(line: 390, column: 21, scope: !565)
!568 = !DILocation(line: 391, column: 17, scope: !565)
!569 = !DILocation(line: 388, column: 37, scope: !561)
!570 = !DILocation(line: 388, column: 17, scope: !561)
!571 = distinct !{!571, !563, !572, !242}
!572 = !DILocation(line: 391, column: 17, scope: !558)
!573 = !DILocation(line: 392, column: 13, scope: !554)
!574 = !DILocation(line: 395, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !550, file: !3, line: 394, column: 13)
!576 = !DILocation(line: 398, column: 5, scope: !545)
!577 = !DILocation(line: 399, column: 1, scope: !530)
!578 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_good", scope: !3, file: !3, line: 401, type: !110, scopeLine: 402, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!579 = !DILocation(line: 403, column: 5, scope: !578)
!580 = !DILocation(line: 404, column: 5, scope: !578)
!581 = !DILocation(line: 405, column: 5, scope: !578)
!582 = !DILocation(line: 406, column: 5, scope: !578)
!583 = !DILocation(line: 407, column: 1, scope: !578)
!584 = distinct !DISubprogram(name: "printLine", scope: !68, file: !68, line: 11, type: !585, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !104}
!587 = !DILocalVariable(name: "line", arg: 1, scope: !584, file: !68, line: 11, type: !104)
!588 = !DILocation(line: 11, column: 25, scope: !584)
!589 = !DILocation(line: 13, column: 1, scope: !584)
!590 = !DILocation(line: 14, column: 8, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !68, line: 14, column: 8)
!592 = !DILocation(line: 14, column: 13, scope: !591)
!593 = !DILocation(line: 14, column: 8, scope: !584)
!594 = !DILocation(line: 16, column: 24, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !68, line: 15, column: 5)
!596 = !DILocation(line: 16, column: 9, scope: !595)
!597 = !DILocation(line: 17, column: 5, scope: !595)
!598 = !DILocation(line: 18, column: 5, scope: !584)
!599 = !DILocation(line: 19, column: 1, scope: !584)
!600 = distinct !DISubprogram(name: "printSinkLine", scope: !68, file: !68, line: 20, type: !585, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!601 = !DILocalVariable(name: "line", arg: 1, scope: !600, file: !68, line: 20, type: !104)
!602 = !DILocation(line: 20, column: 29, scope: !600)
!603 = !DILocation(line: 22, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !68, line: 22, column: 8)
!605 = !DILocation(line: 22, column: 13, scope: !604)
!606 = !DILocation(line: 22, column: 8, scope: !600)
!607 = !DILocation(line: 24, column: 24, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !68, line: 23, column: 5)
!609 = !DILocation(line: 24, column: 9, scope: !608)
!610 = !DILocation(line: 25, column: 5, scope: !608)
!611 = !DILocation(line: 26, column: 1, scope: !600)
!612 = distinct !DISubprogram(name: "printWLine", scope: !68, file: !68, line: 27, type: !613, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !617, line: 74, baseType: !64)
!617 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!618 = !DILocalVariable(name: "line", arg: 1, scope: !612, file: !68, line: 27, type: !615)
!619 = !DILocation(line: 27, column: 29, scope: !612)
!620 = !DILocation(line: 29, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !612, file: !68, line: 29, column: 8)
!622 = !DILocation(line: 29, column: 13, scope: !621)
!623 = !DILocation(line: 29, column: 8, scope: !612)
!624 = !DILocation(line: 31, column: 27, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !68, line: 30, column: 5)
!626 = !DILocation(line: 31, column: 9, scope: !625)
!627 = !DILocation(line: 32, column: 5, scope: !625)
!628 = !DILocation(line: 33, column: 1, scope: !612)
!629 = distinct !DISubprogram(name: "printIntLine", scope: !68, file: !68, line: 35, type: !630, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !64}
!632 = !DILocalVariable(name: "intNumber", arg: 1, scope: !629, file: !68, line: 35, type: !64)
!633 = !DILocation(line: 35, column: 24, scope: !629)
!634 = !DILocation(line: 37, column: 20, scope: !629)
!635 = !DILocation(line: 37, column: 5, scope: !629)
!636 = !DILocation(line: 38, column: 1, scope: !629)
!637 = distinct !DISubprogram(name: "printShortLine", scope: !68, file: !68, line: 40, type: !638, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640}
!640 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!641 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !637, file: !68, line: 40, type: !640)
!642 = !DILocation(line: 40, column: 28, scope: !637)
!643 = !DILocation(line: 42, column: 21, scope: !637)
!644 = !DILocation(line: 42, column: 5, scope: !637)
!645 = !DILocation(line: 43, column: 1, scope: !637)
!646 = distinct !DISubprogram(name: "printFloatLine", scope: !68, file: !68, line: 45, type: !647, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649}
!649 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!650 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !646, file: !68, line: 45, type: !649)
!651 = !DILocation(line: 45, column: 28, scope: !646)
!652 = !DILocation(line: 47, column: 20, scope: !646)
!653 = !DILocation(line: 47, column: 5, scope: !646)
!654 = !DILocation(line: 48, column: 1, scope: !646)
!655 = distinct !DISubprogram(name: "printLongLine", scope: !68, file: !68, line: 50, type: !656, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658}
!658 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!659 = !DILocalVariable(name: "longNumber", arg: 1, scope: !655, file: !68, line: 50, type: !658)
!660 = !DILocation(line: 50, column: 26, scope: !655)
!661 = !DILocation(line: 52, column: 21, scope: !655)
!662 = !DILocation(line: 52, column: 5, scope: !655)
!663 = !DILocation(line: 53, column: 1, scope: !655)
!664 = distinct !DISubprogram(name: "printLongLongLine", scope: !68, file: !68, line: 55, type: !665, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !667}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !668, line: 27, baseType: !669)
!668 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !132, line: 44, baseType: !658)
!670 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !664, file: !68, line: 55, type: !667)
!671 = !DILocation(line: 55, column: 33, scope: !664)
!672 = !DILocation(line: 57, column: 29, scope: !664)
!673 = !DILocation(line: 57, column: 5, scope: !664)
!674 = !DILocation(line: 58, column: 1, scope: !664)
!675 = distinct !DISubprogram(name: "printSizeTLine", scope: !68, file: !68, line: 60, type: !676, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !617, line: 46, baseType: !679)
!679 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!680 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !675, file: !68, line: 60, type: !678)
!681 = !DILocation(line: 60, column: 29, scope: !675)
!682 = !DILocation(line: 62, column: 21, scope: !675)
!683 = !DILocation(line: 62, column: 5, scope: !675)
!684 = !DILocation(line: 63, column: 1, scope: !675)
!685 = distinct !DISubprogram(name: "printHexCharLine", scope: !68, file: !68, line: 65, type: !686, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !58}
!688 = !DILocalVariable(name: "charHex", arg: 1, scope: !685, file: !68, line: 65, type: !58)
!689 = !DILocation(line: 65, column: 29, scope: !685)
!690 = !DILocation(line: 67, column: 22, scope: !685)
!691 = !DILocation(line: 67, column: 5, scope: !685)
!692 = !DILocation(line: 68, column: 1, scope: !685)
!693 = distinct !DISubprogram(name: "printWcharLine", scope: !68, file: !68, line: 70, type: !694, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !616}
!696 = !DILocalVariable(name: "wideChar", arg: 1, scope: !693, file: !68, line: 70, type: !616)
!697 = !DILocation(line: 70, column: 29, scope: !693)
!698 = !DILocalVariable(name: "s", scope: !693, file: !68, line: 74, type: !699)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 64, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 2)
!702 = !DILocation(line: 74, column: 13, scope: !693)
!703 = !DILocation(line: 75, column: 16, scope: !693)
!704 = !DILocation(line: 75, column: 9, scope: !693)
!705 = !DILocation(line: 75, column: 14, scope: !693)
!706 = !DILocation(line: 76, column: 9, scope: !693)
!707 = !DILocation(line: 76, column: 14, scope: !693)
!708 = !DILocation(line: 77, column: 21, scope: !693)
!709 = !DILocation(line: 77, column: 5, scope: !693)
!710 = !DILocation(line: 78, column: 1, scope: !693)
!711 = distinct !DISubprogram(name: "printUnsignedLine", scope: !68, file: !68, line: 80, type: !712, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !7}
!714 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !711, file: !68, line: 80, type: !7)
!715 = !DILocation(line: 80, column: 33, scope: !711)
!716 = !DILocation(line: 82, column: 20, scope: !711)
!717 = !DILocation(line: 82, column: 5, scope: !711)
!718 = !DILocation(line: 83, column: 1, scope: !711)
!719 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !68, file: !68, line: 85, type: !720, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !87}
!722 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !719, file: !68, line: 85, type: !87)
!723 = !DILocation(line: 85, column: 45, scope: !719)
!724 = !DILocation(line: 87, column: 22, scope: !719)
!725 = !DILocation(line: 87, column: 5, scope: !719)
!726 = !DILocation(line: 88, column: 1, scope: !719)
!727 = distinct !DISubprogram(name: "printDoubleLine", scope: !68, file: !68, line: 90, type: !728, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730}
!730 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!731 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !727, file: !68, line: 90, type: !730)
!732 = !DILocation(line: 90, column: 29, scope: !727)
!733 = !DILocation(line: 92, column: 20, scope: !727)
!734 = !DILocation(line: 92, column: 5, scope: !727)
!735 = !DILocation(line: 93, column: 1, scope: !727)
!736 = distinct !DISubprogram(name: "printStructLine", scope: !68, file: !68, line: 95, type: !737, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !741, line: 100, baseType: !742)
!741 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_520/source_code")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !741, line: 96, size: 64, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !742, file: !741, line: 98, baseType: !64, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !742, file: !741, line: 99, baseType: !64, size: 32, offset: 32)
!746 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !736, file: !68, line: 95, type: !739)
!747 = !DILocation(line: 95, column: 40, scope: !736)
!748 = !DILocation(line: 97, column: 26, scope: !736)
!749 = !DILocation(line: 97, column: 47, scope: !736)
!750 = !DILocation(line: 97, column: 55, scope: !736)
!751 = !DILocation(line: 97, column: 76, scope: !736)
!752 = !DILocation(line: 97, column: 5, scope: !736)
!753 = !DILocation(line: 98, column: 1, scope: !736)
!754 = distinct !DISubprogram(name: "printBytesLine", scope: !68, file: !68, line: 100, type: !755, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !757, !678}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!758 = !DILocalVariable(name: "bytes", arg: 1, scope: !754, file: !68, line: 100, type: !757)
!759 = !DILocation(line: 100, column: 38, scope: !754)
!760 = !DILocalVariable(name: "numBytes", arg: 2, scope: !754, file: !68, line: 100, type: !678)
!761 = !DILocation(line: 100, column: 52, scope: !754)
!762 = !DILocalVariable(name: "i", scope: !754, file: !68, line: 102, type: !678)
!763 = !DILocation(line: 102, column: 12, scope: !754)
!764 = !DILocation(line: 103, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !754, file: !68, line: 103, column: 5)
!766 = !DILocation(line: 103, column: 10, scope: !765)
!767 = !DILocation(line: 103, column: 17, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !68, line: 103, column: 5)
!769 = !DILocation(line: 103, column: 21, scope: !768)
!770 = !DILocation(line: 103, column: 19, scope: !768)
!771 = !DILocation(line: 103, column: 5, scope: !765)
!772 = !DILocation(line: 105, column: 24, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !68, line: 104, column: 5)
!774 = !DILocation(line: 105, column: 30, scope: !773)
!775 = !DILocation(line: 105, column: 9, scope: !773)
!776 = !DILocation(line: 106, column: 5, scope: !773)
!777 = !DILocation(line: 103, column: 31, scope: !768)
!778 = !DILocation(line: 103, column: 5, scope: !768)
!779 = distinct !{!779, !771, !780, !242}
!780 = !DILocation(line: 106, column: 5, scope: !765)
!781 = !DILocation(line: 107, column: 5, scope: !754)
!782 = !DILocation(line: 108, column: 1, scope: !754)
!783 = distinct !DISubprogram(name: "decodeHexChars", scope: !68, file: !68, line: 113, type: !784, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!784 = !DISubroutineType(types: !785)
!785 = !{!678, !757, !678, !104}
!786 = !DILocalVariable(name: "bytes", arg: 1, scope: !783, file: !68, line: 113, type: !757)
!787 = !DILocation(line: 113, column: 39, scope: !783)
!788 = !DILocalVariable(name: "numBytes", arg: 2, scope: !783, file: !68, line: 113, type: !678)
!789 = !DILocation(line: 113, column: 53, scope: !783)
!790 = !DILocalVariable(name: "hex", arg: 3, scope: !783, file: !68, line: 113, type: !104)
!791 = !DILocation(line: 113, column: 71, scope: !783)
!792 = !DILocalVariable(name: "numWritten", scope: !783, file: !68, line: 115, type: !678)
!793 = !DILocation(line: 115, column: 12, scope: !783)
!794 = !DILocation(line: 121, column: 5, scope: !783)
!795 = !DILocation(line: 121, column: 12, scope: !783)
!796 = !DILocation(line: 121, column: 25, scope: !783)
!797 = !DILocation(line: 121, column: 23, scope: !783)
!798 = !DILocation(line: 121, column: 34, scope: !783)
!799 = !DILocation(line: 121, column: 37, scope: !783)
!800 = !DILocation(line: 121, column: 67, scope: !783)
!801 = !DILocation(line: 121, column: 70, scope: !783)
!802 = !DILocation(line: 0, scope: !783)
!803 = !DILocalVariable(name: "byte", scope: !804, file: !68, line: 123, type: !64)
!804 = distinct !DILexicalBlock(scope: !783, file: !68, line: 122, column: 5)
!805 = !DILocation(line: 123, column: 13, scope: !804)
!806 = !DILocation(line: 124, column: 17, scope: !804)
!807 = !DILocation(line: 124, column: 25, scope: !804)
!808 = !DILocation(line: 124, column: 23, scope: !804)
!809 = !DILocation(line: 124, column: 9, scope: !804)
!810 = !DILocation(line: 125, column: 45, scope: !804)
!811 = !DILocation(line: 125, column: 29, scope: !804)
!812 = !DILocation(line: 125, column: 9, scope: !804)
!813 = !DILocation(line: 125, column: 15, scope: !804)
!814 = !DILocation(line: 125, column: 27, scope: !804)
!815 = !DILocation(line: 126, column: 9, scope: !804)
!816 = distinct !{!816, !794, !817, !242}
!817 = !DILocation(line: 127, column: 5, scope: !783)
!818 = !DILocation(line: 129, column: 12, scope: !783)
!819 = !DILocation(line: 129, column: 5, scope: !783)
!820 = distinct !DISubprogram(name: "decodeHexWChars", scope: !68, file: !68, line: 135, type: !821, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!821 = !DISubroutineType(types: !822)
!822 = !{!678, !757, !678, !615}
!823 = !DILocalVariable(name: "bytes", arg: 1, scope: !820, file: !68, line: 135, type: !757)
!824 = !DILocation(line: 135, column: 41, scope: !820)
!825 = !DILocalVariable(name: "numBytes", arg: 2, scope: !820, file: !68, line: 135, type: !678)
!826 = !DILocation(line: 135, column: 55, scope: !820)
!827 = !DILocalVariable(name: "hex", arg: 3, scope: !820, file: !68, line: 135, type: !615)
!828 = !DILocation(line: 135, column: 76, scope: !820)
!829 = !DILocalVariable(name: "numWritten", scope: !820, file: !68, line: 137, type: !678)
!830 = !DILocation(line: 137, column: 12, scope: !820)
!831 = !DILocation(line: 143, column: 5, scope: !820)
!832 = !DILocation(line: 143, column: 12, scope: !820)
!833 = !DILocation(line: 143, column: 25, scope: !820)
!834 = !DILocation(line: 143, column: 23, scope: !820)
!835 = !DILocation(line: 143, column: 34, scope: !820)
!836 = !DILocation(line: 143, column: 47, scope: !820)
!837 = !DILocation(line: 143, column: 55, scope: !820)
!838 = !DILocation(line: 143, column: 53, scope: !820)
!839 = !DILocation(line: 143, column: 37, scope: !820)
!840 = !DILocation(line: 143, column: 68, scope: !820)
!841 = !DILocation(line: 143, column: 81, scope: !820)
!842 = !DILocation(line: 143, column: 89, scope: !820)
!843 = !DILocation(line: 143, column: 87, scope: !820)
!844 = !DILocation(line: 143, column: 100, scope: !820)
!845 = !DILocation(line: 143, column: 71, scope: !820)
!846 = !DILocation(line: 0, scope: !820)
!847 = !DILocalVariable(name: "byte", scope: !848, file: !68, line: 145, type: !64)
!848 = distinct !DILexicalBlock(scope: !820, file: !68, line: 144, column: 5)
!849 = !DILocation(line: 145, column: 13, scope: !848)
!850 = !DILocation(line: 146, column: 18, scope: !848)
!851 = !DILocation(line: 146, column: 26, scope: !848)
!852 = !DILocation(line: 146, column: 24, scope: !848)
!853 = !DILocation(line: 146, column: 9, scope: !848)
!854 = !DILocation(line: 147, column: 45, scope: !848)
!855 = !DILocation(line: 147, column: 29, scope: !848)
!856 = !DILocation(line: 147, column: 9, scope: !848)
!857 = !DILocation(line: 147, column: 15, scope: !848)
!858 = !DILocation(line: 147, column: 27, scope: !848)
!859 = !DILocation(line: 148, column: 9, scope: !848)
!860 = distinct !{!860, !831, !861, !242}
!861 = !DILocation(line: 149, column: 5, scope: !820)
!862 = !DILocation(line: 151, column: 12, scope: !820)
!863 = !DILocation(line: 151, column: 5, scope: !820)
!864 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !68, file: !68, line: 156, type: !865, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!865 = !DISubroutineType(types: !866)
!866 = !{!64}
!867 = !DILocation(line: 158, column: 5, scope: !864)
!868 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !68, file: !68, line: 161, type: !865, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!869 = !DILocation(line: 163, column: 5, scope: !868)
!870 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !68, file: !68, line: 166, type: !865, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!871 = !DILocation(line: 168, column: 13, scope: !870)
!872 = !DILocation(line: 168, column: 20, scope: !870)
!873 = !DILocation(line: 168, column: 5, scope: !870)
!874 = distinct !DISubprogram(name: "good1", scope: !68, file: !68, line: 187, type: !110, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!875 = !DILocation(line: 187, column: 16, scope: !874)
!876 = distinct !DISubprogram(name: "good2", scope: !68, file: !68, line: 188, type: !110, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!877 = !DILocation(line: 188, column: 16, scope: !876)
!878 = distinct !DISubprogram(name: "good3", scope: !68, file: !68, line: 189, type: !110, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!879 = !DILocation(line: 189, column: 16, scope: !878)
!880 = distinct !DISubprogram(name: "good4", scope: !68, file: !68, line: 190, type: !110, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!881 = !DILocation(line: 190, column: 16, scope: !880)
!882 = distinct !DISubprogram(name: "good5", scope: !68, file: !68, line: 191, type: !110, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!883 = !DILocation(line: 191, column: 16, scope: !882)
!884 = distinct !DISubprogram(name: "good6", scope: !68, file: !68, line: 192, type: !110, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!885 = !DILocation(line: 192, column: 16, scope: !884)
!886 = distinct !DISubprogram(name: "good7", scope: !68, file: !68, line: 193, type: !110, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!887 = !DILocation(line: 193, column: 16, scope: !886)
!888 = distinct !DISubprogram(name: "good8", scope: !68, file: !68, line: 194, type: !110, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!889 = !DILocation(line: 194, column: 16, scope: !888)
!890 = distinct !DISubprogram(name: "good9", scope: !68, file: !68, line: 195, type: !110, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!891 = !DILocation(line: 195, column: 16, scope: !890)
!892 = distinct !DISubprogram(name: "bad1", scope: !68, file: !68, line: 198, type: !110, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!893 = !DILocation(line: 198, column: 15, scope: !892)
!894 = distinct !DISubprogram(name: "bad2", scope: !68, file: !68, line: 199, type: !110, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!895 = !DILocation(line: 199, column: 15, scope: !894)
!896 = distinct !DISubprogram(name: "bad3", scope: !68, file: !68, line: 200, type: !110, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!897 = !DILocation(line: 200, column: 15, scope: !896)
!898 = distinct !DISubprogram(name: "bad4", scope: !68, file: !68, line: 201, type: !110, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!899 = !DILocation(line: 201, column: 15, scope: !898)
!900 = distinct !DISubprogram(name: "bad5", scope: !68, file: !68, line: 202, type: !110, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!901 = !DILocation(line: 202, column: 15, scope: !900)
!902 = distinct !DISubprogram(name: "bad6", scope: !68, file: !68, line: 203, type: !110, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!903 = !DILocation(line: 203, column: 15, scope: !902)
!904 = distinct !DISubprogram(name: "bad7", scope: !68, file: !68, line: 204, type: !110, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!905 = !DILocation(line: 204, column: 15, scope: !904)
!906 = distinct !DISubprogram(name: "bad8", scope: !68, file: !68, line: 205, type: !110, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!907 = !DILocation(line: 205, column: 15, scope: !906)
!908 = distinct !DISubprogram(name: "bad9", scope: !68, file: !68, line: 206, type: !110, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !112)
!909 = !DILocation(line: 206, column: 15, scope: !908)
