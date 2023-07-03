; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, [8 x i8] }
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !110, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %data, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 -1, i32* %connectSocket, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  br label %do.body, !dbg !148

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !149
  store i32 %call, i32* %connectSocket, align 4, !dbg !151
  %0 = load i32, i32* %connectSocket, align 4, !dbg !152
  %cmp = icmp eq i32 %0, -1, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !156

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !158
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !159
  store i16 2, i16* %sin_family, align 4, !dbg !160
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !161
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !162
  %s_addr = getelementptr inbounds %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %sin_addr, i32 0, i32 0, !dbg !163
  store i32 %call1, i32* %s_addr, align 4, !dbg !164
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !165
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !166
  store i16 %call2, i16* %sin_port, align 2, !dbg !167
  %2 = load i32, i32* %connectSocket, align 4, !dbg !168
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !170
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !171
  %cmp4 = icmp eq i32 %call3, -1, !dbg !172
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !173

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !174

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !176
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !177
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !178
  %conv = trunc i64 %call7 to i32, !dbg !178
  store i32 %conv, i32* %recvResult, align 4, !dbg !179
  %5 = load i32, i32* %recvResult, align 4, !dbg !180
  %cmp8 = icmp eq i32 %5, -1, !dbg !182
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !183

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !184
  %cmp10 = icmp eq i32 %6, 0, !dbg !185
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !186

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !187

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !189
  %idxprom = sext i32 %7 to i64, !dbg !190
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !190
  store i8 0, i8* %arrayidx, align 1, !dbg !191
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !192
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !193
  store i32 %call15, i32* %data, align 4, !dbg !194
  br label %do.end, !dbg !195

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !196
  %cmp16 = icmp ne i32 %8, -1, !dbg !198
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !199

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !200
  %call19 = call i32 @close(i32 %9), !dbg !202
  br label %if.end20, !dbg !203

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !204
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !205
  store i32 %10, i32* %unionFirst, align 4, !dbg !206
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !207, metadata !DIExpression()), !dbg !209
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !210
  %11 = load i32, i32* %unionSecond, align 4, !dbg !210
  store i32 %11, i32* %data21, align 4, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %i, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !214, metadata !DIExpression()), !dbg !218
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !218
  %13 = load i32, i32* %data21, align 4, !dbg !219
  %cmp22 = icmp sge i32 %13, 0, !dbg !221
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !222

if.then24:                                        ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !223
  %idxprom25 = sext i32 %14 to i64, !dbg !225
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !225
  store i32 1, i32* %arrayidx26, align 4, !dbg !226
  store i32 0, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !230
  %cmp27 = icmp slt i32 %15, 10, !dbg !232
  br i1 %cmp27, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !234
  %idxprom29 = sext i32 %16 to i64, !dbg !236
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !236
  %17 = load i32, i32* %arrayidx30, align 4, !dbg !236
  call void @printIntLine(i32 %17), !dbg !237
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !239
  %inc = add nsw i32 %18, 1, !dbg !239
  store i32 %inc, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !244

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !245
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
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
define dso_local void @goodG2B() #0 !dbg !248 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 -1, i32* %data, align 4, !dbg !253
  store i32 7, i32* %data, align 4, !dbg !254
  %0 = load i32, i32* %data, align 4, !dbg !255
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !256
  store i32 %0, i32* %unionFirst, align 4, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !258, metadata !DIExpression()), !dbg !260
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !261
  %1 = load i32, i32* %unionSecond, align 4, !dbg !261
  store i32 %1, i32* %data1, align 4, !dbg !260
  call void @llvm.dbg.declare(metadata i32* %i, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !266
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !266
  %3 = load i32, i32* %data1, align 4, !dbg !267
  %cmp = icmp sge i32 %3, 0, !dbg !269
  br i1 %cmp, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !271
  %idxprom = sext i32 %4 to i64, !dbg !273
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !273
  store i32 1, i32* %arrayidx, align 4, !dbg !274
  store i32 0, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !277

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !278
  %cmp2 = icmp slt i32 %5, 10, !dbg !280
  br i1 %cmp2, label %for.body, label %for.end, !dbg !281

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !282
  %idxprom3 = sext i32 %6 to i64, !dbg !284
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !284
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !284
  call void @printIntLine(i32 %7), !dbg !285
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !287
  %inc = add nsw i32 %8, 1, !dbg !287
  store i32 %inc, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !288, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !291

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !292
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !295 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !298, metadata !DIExpression()), !dbg !299
  store i32 -1, i32* %data, align 4, !dbg !300
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !306, metadata !DIExpression()), !dbg !307
  store i32 -1, i32* %connectSocket, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !308, metadata !DIExpression()), !dbg !309
  br label %do.body, !dbg !310

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !311
  store i32 %call, i32* %connectSocket, align 4, !dbg !313
  %0 = load i32, i32* %connectSocket, align 4, !dbg !314
  %cmp = icmp eq i32 %0, -1, !dbg !316
  br i1 %cmp, label %if.then, label %if.end, !dbg !317

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !318

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !320
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !320
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !321
  store i16 2, i16* %sin_family, align 4, !dbg !322
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !323
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !324
  %s_addr = getelementptr inbounds %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %sin_addr, i32 0, i32 0, !dbg !325
  store i32 %call1, i32* %s_addr, align 4, !dbg !326
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !327
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !328
  store i16 %call2, i16* %sin_port, align 2, !dbg !329
  %2 = load i32, i32* %connectSocket, align 4, !dbg !330
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !332
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !333
  %cmp4 = icmp eq i32 %call3, -1, !dbg !334
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !335

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !336

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !338
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !339
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !340
  %conv = trunc i64 %call7 to i32, !dbg !340
  store i32 %conv, i32* %recvResult, align 4, !dbg !341
  %5 = load i32, i32* %recvResult, align 4, !dbg !342
  %cmp8 = icmp eq i32 %5, -1, !dbg !344
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !345

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !346
  %cmp10 = icmp eq i32 %6, 0, !dbg !347
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !348

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !349

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !351
  %idxprom = sext i32 %7 to i64, !dbg !352
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !352
  store i8 0, i8* %arrayidx, align 1, !dbg !353
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !354
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !355
  store i32 %call15, i32* %data, align 4, !dbg !356
  br label %do.end, !dbg !357

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !358
  %cmp16 = icmp ne i32 %8, -1, !dbg !360
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !361

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !362
  %call19 = call i32 @close(i32 %9), !dbg !364
  br label %if.end20, !dbg !365

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !366
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !367
  store i32 %10, i32* %unionFirst, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !369, metadata !DIExpression()), !dbg !371
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !372
  %11 = load i32, i32* %unionSecond, align 4, !dbg !372
  store i32 %11, i32* %data21, align 4, !dbg !371
  call void @llvm.dbg.declare(metadata i32* %i, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !376, metadata !DIExpression()), !dbg !377
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !377
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !377
  %13 = load i32, i32* %data21, align 4, !dbg !378
  %cmp22 = icmp sge i32 %13, 0, !dbg !380
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !381

land.lhs.true:                                    ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !382
  %cmp24 = icmp slt i32 %14, 10, !dbg !383
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !384

if.then26:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data21, align 4, !dbg !385
  %idxprom27 = sext i32 %15 to i64, !dbg !387
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !387
  store i32 1, i32* %arrayidx28, align 4, !dbg !388
  store i32 0, i32* %i, align 4, !dbg !389
  br label %for.cond, !dbg !391

for.cond:                                         ; preds = %for.inc, %if.then26
  %16 = load i32, i32* %i, align 4, !dbg !392
  %cmp29 = icmp slt i32 %16, 10, !dbg !394
  br i1 %cmp29, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !396
  %idxprom31 = sext i32 %17 to i64, !dbg !398
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !398
  %18 = load i32, i32* %arrayidx32, align 4, !dbg !398
  call void @printIntLine(i32 %18), !dbg !399
  br label %for.inc, !dbg !400

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !401
  %inc = add nsw i32 %19, 1, !dbg !401
  store i32 %inc, i32* %i, align 4, !dbg !401
  br label %for.cond, !dbg !402, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !405

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !406
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good() #0 !dbg !409 {
entry:
  call void @goodG2B(), !dbg !410
  call void @goodB2G(), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !413 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !418
  %0 = load i8*, i8** %line.addr, align 8, !dbg !419
  %cmp = icmp ne i8* %0, null, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !423
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !425
  br label %if.end, !dbg !426

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !427
  ret void, !dbg !428
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !429 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8*, i8** %line.addr, align 8, !dbg !432
  %cmp = icmp ne i8* %0, null, !dbg !434
  br i1 %cmp, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !438
  br label %if.end, !dbg !439

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !441 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i32*, i32** %line.addr, align 8, !dbg !449
  %cmp = icmp ne i32* %0, null, !dbg !451
  br i1 %cmp, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !453
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !455
  br label %if.end, !dbg !456

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !457
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !458 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !466 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !472
  %conv = sext i16 %0 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !475 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !481
  %conv = fpext float %0 to double, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !484 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !491
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !493 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !504 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !511
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !514 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !519
  %conv = sext i8 %0 to i32, !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !522 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !527, metadata !DIExpression()), !dbg !531
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !532
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !533
  store i32 %0, i32* %arrayidx, align 4, !dbg !534
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !535
  store i32 0, i32* %arrayidx1, align 4, !dbg !536
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !540 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !548 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !553
  %conv = zext i8 %0 to i32, !dbg !553
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !554
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !556 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !560, metadata !DIExpression()), !dbg !561
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !562
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !563
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !565 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !577
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !578
  %1 = load i32, i32* %intOne, align 4, !dbg !578
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !579
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !580
  %3 = load i32, i32* %intTwo, align 4, !dbg !580
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !581
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !583 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !587, metadata !DIExpression()), !dbg !588
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata i64* %i, metadata !591, metadata !DIExpression()), !dbg !592
  store i64 0, i64* %i, align 8, !dbg !593
  br label %for.cond, !dbg !595

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !596
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !598
  %cmp = icmp ult i64 %0, %1, !dbg !599
  br i1 %cmp, label %for.body, label %for.end, !dbg !600

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !601
  %3 = load i64, i64* %i, align 8, !dbg !603
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !601
  %4 = load i8, i8* %arrayidx, align 1, !dbg !601
  %conv = zext i8 %4 to i32, !dbg !601
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !604
  br label %for.inc, !dbg !605

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !606
  %inc = add i64 %5, 1, !dbg !606
  store i64 %inc, i64* %i, align 8, !dbg !606
  br label %for.cond, !dbg !607, !llvm.loop !608

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !610
  ret void, !dbg !611
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !612 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !615, metadata !DIExpression()), !dbg !616
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !621, metadata !DIExpression()), !dbg !622
  store i64 0, i64* %numWritten, align 8, !dbg !622
  br label %while.cond, !dbg !623

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !624
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !625
  %cmp = icmp ult i64 %0, %1, !dbg !626
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !627

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !628
  %2 = load i16*, i16** %call, align 8, !dbg !628
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %4 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul = mul i64 2, %4, !dbg !628
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !628
  %5 = load i8, i8* %arrayidx, align 1, !dbg !628
  %conv = sext i8 %5 to i32, !dbg !628
  %idxprom = sext i32 %conv to i64, !dbg !628
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !628
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !628
  %conv2 = zext i16 %6 to i32, !dbg !628
  %and = and i32 %conv2, 4096, !dbg !628
  %tobool = icmp ne i32 %and, 0, !dbg !628
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !629

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !630
  %7 = load i16*, i16** %call3, align 8, !dbg !630
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !630
  %9 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul4 = mul i64 2, %9, !dbg !630
  %add = add i64 %mul4, 1, !dbg !630
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !630
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !630
  %conv6 = sext i8 %10 to i32, !dbg !630
  %idxprom7 = sext i32 %conv6 to i64, !dbg !630
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !630
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !630
  %conv9 = zext i16 %11 to i32, !dbg !630
  %and10 = and i32 %conv9, 4096, !dbg !630
  %tobool11 = icmp ne i32 %and10, 0, !dbg !629
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !631
  br i1 %12, label %while.body, label %while.end, !dbg !623

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !632, metadata !DIExpression()), !dbg !634
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !635
  %14 = load i64, i64* %numWritten, align 8, !dbg !636
  %mul12 = mul i64 2, %14, !dbg !637
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !635
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !638
  %15 = load i32, i32* %byte, align 4, !dbg !639
  %conv15 = trunc i32 %15 to i8, !dbg !640
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !641
  %17 = load i64, i64* %numWritten, align 8, !dbg !642
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !641
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !643
  %18 = load i64, i64* %numWritten, align 8, !dbg !644
  %inc = add i64 %18, 1, !dbg !644
  store i64 %inc, i64* %numWritten, align 8, !dbg !644
  br label %while.cond, !dbg !623, !llvm.loop !645

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !647
  ret i64 %19, !dbg !648
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !649 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !658, metadata !DIExpression()), !dbg !659
  store i64 0, i64* %numWritten, align 8, !dbg !659
  br label %while.cond, !dbg !660

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !661
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !662
  %cmp = icmp ult i64 %0, %1, !dbg !663
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !664

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !665
  %3 = load i64, i64* %numWritten, align 8, !dbg !666
  %mul = mul i64 2, %3, !dbg !667
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !665
  %4 = load i32, i32* %arrayidx, align 4, !dbg !665
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !668
  %tobool = icmp ne i32 %call, 0, !dbg !668
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !669

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !670
  %6 = load i64, i64* %numWritten, align 8, !dbg !671
  %mul1 = mul i64 2, %6, !dbg !672
  %add = add i64 %mul1, 1, !dbg !673
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !670
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !670
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !674
  %tobool4 = icmp ne i32 %call3, 0, !dbg !669
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !675
  br i1 %8, label %while.body, label %while.end, !dbg !660

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !676, metadata !DIExpression()), !dbg !678
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !679
  %10 = load i64, i64* %numWritten, align 8, !dbg !680
  %mul5 = mul i64 2, %10, !dbg !681
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !679
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !682
  %11 = load i32, i32* %byte, align 4, !dbg !683
  %conv = trunc i32 %11 to i8, !dbg !684
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !685
  %13 = load i64, i64* %numWritten, align 8, !dbg !686
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !685
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !687
  %14 = load i64, i64* %numWritten, align 8, !dbg !688
  %inc = add i64 %14, 1, !dbg !688
  store i64 %inc, i64* %numWritten, align 8, !dbg !688
  br label %while.cond, !dbg !660, !llvm.loop !689

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !691
  ret i64 %15, !dbg !692
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !693 {
entry:
  ret i32 1, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !697 {
entry:
  ret i32 0, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !699 {
entry:
  %call = call i32 @rand() #7, !dbg !700
  %rem = srem i32 %call, 2, !dbg !701
  ret i32 %rem, !dbg !702
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !729 {
entry:
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !731 {
entry:
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !737 {
entry:
  ret void, !dbg !738
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_bad", scope: !45, file: !45, line: 46, type: !105, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 48, type: !23)
!109 = !DILocation(line: 48, column: 9, scope: !104)
!110 = !DILocalVariable(name: "myUnion", scope: !104, file: !45, line: 49, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType", file: !112, line: 9, baseType: !113)
!112 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !112, line: 5, size: 32, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !113, file: !112, line: 7, baseType: !23, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !113, file: !112, line: 8, baseType: !23, size: 32)
!117 = !DILocation(line: 49, column: 76, scope: !104)
!118 = !DILocation(line: 51, column: 10, scope: !104)
!119 = !DILocalVariable(name: "recvResult", scope: !120, file: !45, line: 57, type: !23)
!120 = distinct !DILexicalBlock(scope: !104, file: !45, line: 52, column: 5)
!121 = !DILocation(line: 57, column: 13, scope: !120)
!122 = !DILocalVariable(name: "service", scope: !120, file: !45, line: 58, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !124)
!124 = !{!125, !126, !132, !139}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !123, file: !60, line: 240, baseType: !94, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !123, file: !60, line: 241, baseType: !127, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 25, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 40, baseType: !24)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !123, file: !60, line: 242, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !133, file: !60, line: 33, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 26, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !131, line: 42, baseType: !7)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !123, file: !60, line: 245, baseType: !140, size: 64, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DILocation(line: 58, column: 28, scope: !120)
!144 = !DILocalVariable(name: "connectSocket", scope: !120, file: !45, line: 59, type: !23)
!145 = !DILocation(line: 59, column: 16, scope: !120)
!146 = !DILocalVariable(name: "inputBuffer", scope: !120, file: !45, line: 60, type: !97)
!147 = !DILocation(line: 60, column: 14, scope: !120)
!148 = !DILocation(line: 61, column: 9, scope: !120)
!149 = !DILocation(line: 71, column: 29, scope: !150)
!150 = distinct !DILexicalBlock(scope: !120, file: !45, line: 62, column: 9)
!151 = !DILocation(line: 71, column: 27, scope: !150)
!152 = !DILocation(line: 72, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !45, line: 72, column: 17)
!154 = !DILocation(line: 72, column: 31, scope: !153)
!155 = !DILocation(line: 72, column: 17, scope: !150)
!156 = !DILocation(line: 74, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 73, column: 13)
!158 = !DILocation(line: 76, column: 13, scope: !150)
!159 = !DILocation(line: 77, column: 21, scope: !150)
!160 = !DILocation(line: 77, column: 32, scope: !150)
!161 = !DILocation(line: 78, column: 39, scope: !150)
!162 = !DILocation(line: 78, column: 21, scope: !150)
!163 = !DILocation(line: 78, column: 30, scope: !150)
!164 = !DILocation(line: 78, column: 37, scope: !150)
!165 = !DILocation(line: 79, column: 32, scope: !150)
!166 = !DILocation(line: 79, column: 21, scope: !150)
!167 = !DILocation(line: 79, column: 30, scope: !150)
!168 = !DILocation(line: 80, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !150, file: !45, line: 80, column: 17)
!170 = !DILocation(line: 80, column: 40, scope: !169)
!171 = !DILocation(line: 80, column: 17, scope: !169)
!172 = !DILocation(line: 80, column: 85, scope: !169)
!173 = !DILocation(line: 80, column: 17, scope: !150)
!174 = !DILocation(line: 82, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !45, line: 81, column: 13)
!176 = !DILocation(line: 86, column: 31, scope: !150)
!177 = !DILocation(line: 86, column: 46, scope: !150)
!178 = !DILocation(line: 86, column: 26, scope: !150)
!179 = !DILocation(line: 86, column: 24, scope: !150)
!180 = !DILocation(line: 87, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !150, file: !45, line: 87, column: 17)
!182 = !DILocation(line: 87, column: 28, scope: !181)
!183 = !DILocation(line: 87, column: 44, scope: !181)
!184 = !DILocation(line: 87, column: 47, scope: !181)
!185 = !DILocation(line: 87, column: 58, scope: !181)
!186 = !DILocation(line: 87, column: 17, scope: !150)
!187 = !DILocation(line: 89, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !45, line: 88, column: 13)
!189 = !DILocation(line: 92, column: 25, scope: !150)
!190 = !DILocation(line: 92, column: 13, scope: !150)
!191 = !DILocation(line: 92, column: 37, scope: !150)
!192 = !DILocation(line: 94, column: 25, scope: !150)
!193 = !DILocation(line: 94, column: 20, scope: !150)
!194 = !DILocation(line: 94, column: 18, scope: !150)
!195 = !DILocation(line: 95, column: 9, scope: !150)
!196 = !DILocation(line: 97, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !120, file: !45, line: 97, column: 13)
!198 = !DILocation(line: 97, column: 27, scope: !197)
!199 = !DILocation(line: 97, column: 13, scope: !120)
!200 = !DILocation(line: 99, column: 26, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !45, line: 98, column: 9)
!202 = !DILocation(line: 99, column: 13, scope: !201)
!203 = !DILocation(line: 100, column: 9, scope: !201)
!204 = !DILocation(line: 108, column: 26, scope: !104)
!205 = !DILocation(line: 108, column: 13, scope: !104)
!206 = !DILocation(line: 108, column: 24, scope: !104)
!207 = !DILocalVariable(name: "data", scope: !208, file: !45, line: 110, type: !23)
!208 = distinct !DILexicalBlock(scope: !104, file: !45, line: 109, column: 5)
!209 = !DILocation(line: 110, column: 13, scope: !208)
!210 = !DILocation(line: 110, column: 28, scope: !208)
!211 = !DILocalVariable(name: "i", scope: !212, file: !45, line: 112, type: !23)
!212 = distinct !DILexicalBlock(scope: !208, file: !45, line: 111, column: 9)
!213 = !DILocation(line: 112, column: 17, scope: !212)
!214 = !DILocalVariable(name: "buffer", scope: !212, file: !45, line: 113, type: !215)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 10)
!218 = !DILocation(line: 113, column: 17, scope: !212)
!219 = !DILocation(line: 116, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !45, line: 116, column: 17)
!221 = !DILocation(line: 116, column: 22, scope: !220)
!222 = !DILocation(line: 116, column: 17, scope: !212)
!223 = !DILocation(line: 118, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 117, column: 13)
!225 = !DILocation(line: 118, column: 17, scope: !224)
!226 = !DILocation(line: 118, column: 30, scope: !224)
!227 = !DILocation(line: 120, column: 23, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !45, line: 120, column: 17)
!229 = !DILocation(line: 120, column: 21, scope: !228)
!230 = !DILocation(line: 120, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !45, line: 120, column: 17)
!232 = !DILocation(line: 120, column: 30, scope: !231)
!233 = !DILocation(line: 120, column: 17, scope: !228)
!234 = !DILocation(line: 122, column: 41, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !45, line: 121, column: 17)
!236 = !DILocation(line: 122, column: 34, scope: !235)
!237 = !DILocation(line: 122, column: 21, scope: !235)
!238 = !DILocation(line: 123, column: 17, scope: !235)
!239 = !DILocation(line: 120, column: 37, scope: !231)
!240 = !DILocation(line: 120, column: 17, scope: !231)
!241 = distinct !{!241, !233, !242, !243}
!242 = !DILocation(line: 123, column: 17, scope: !228)
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocation(line: 124, column: 13, scope: !224)
!245 = !DILocation(line: 127, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !220, file: !45, line: 126, column: 13)
!247 = !DILocation(line: 131, column: 1, scope: !104)
!248 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 138, type: !105, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!249 = !DILocalVariable(name: "data", scope: !248, file: !45, line: 140, type: !23)
!250 = !DILocation(line: 140, column: 9, scope: !248)
!251 = !DILocalVariable(name: "myUnion", scope: !248, file: !45, line: 141, type: !111)
!252 = !DILocation(line: 141, column: 76, scope: !248)
!253 = !DILocation(line: 143, column: 10, scope: !248)
!254 = !DILocation(line: 146, column: 10, scope: !248)
!255 = !DILocation(line: 147, column: 26, scope: !248)
!256 = !DILocation(line: 147, column: 13, scope: !248)
!257 = !DILocation(line: 147, column: 24, scope: !248)
!258 = !DILocalVariable(name: "data", scope: !259, file: !45, line: 149, type: !23)
!259 = distinct !DILexicalBlock(scope: !248, file: !45, line: 148, column: 5)
!260 = !DILocation(line: 149, column: 13, scope: !259)
!261 = !DILocation(line: 149, column: 28, scope: !259)
!262 = !DILocalVariable(name: "i", scope: !263, file: !45, line: 151, type: !23)
!263 = distinct !DILexicalBlock(scope: !259, file: !45, line: 150, column: 9)
!264 = !DILocation(line: 151, column: 17, scope: !263)
!265 = !DILocalVariable(name: "buffer", scope: !263, file: !45, line: 152, type: !215)
!266 = !DILocation(line: 152, column: 17, scope: !263)
!267 = !DILocation(line: 155, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !45, line: 155, column: 17)
!269 = !DILocation(line: 155, column: 22, scope: !268)
!270 = !DILocation(line: 155, column: 17, scope: !263)
!271 = !DILocation(line: 157, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !45, line: 156, column: 13)
!273 = !DILocation(line: 157, column: 17, scope: !272)
!274 = !DILocation(line: 157, column: 30, scope: !272)
!275 = !DILocation(line: 159, column: 23, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !45, line: 159, column: 17)
!277 = !DILocation(line: 159, column: 21, scope: !276)
!278 = !DILocation(line: 159, column: 28, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !45, line: 159, column: 17)
!280 = !DILocation(line: 159, column: 30, scope: !279)
!281 = !DILocation(line: 159, column: 17, scope: !276)
!282 = !DILocation(line: 161, column: 41, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !45, line: 160, column: 17)
!284 = !DILocation(line: 161, column: 34, scope: !283)
!285 = !DILocation(line: 161, column: 21, scope: !283)
!286 = !DILocation(line: 162, column: 17, scope: !283)
!287 = !DILocation(line: 159, column: 37, scope: !279)
!288 = !DILocation(line: 159, column: 17, scope: !279)
!289 = distinct !{!289, !281, !290, !243}
!290 = !DILocation(line: 162, column: 17, scope: !276)
!291 = !DILocation(line: 163, column: 13, scope: !272)
!292 = !DILocation(line: 166, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !268, file: !45, line: 165, column: 13)
!294 = !DILocation(line: 170, column: 1, scope: !248)
!295 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 173, type: !105, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!296 = !DILocalVariable(name: "data", scope: !295, file: !45, line: 175, type: !23)
!297 = !DILocation(line: 175, column: 9, scope: !295)
!298 = !DILocalVariable(name: "myUnion", scope: !295, file: !45, line: 176, type: !111)
!299 = !DILocation(line: 176, column: 76, scope: !295)
!300 = !DILocation(line: 178, column: 10, scope: !295)
!301 = !DILocalVariable(name: "recvResult", scope: !302, file: !45, line: 184, type: !23)
!302 = distinct !DILexicalBlock(scope: !295, file: !45, line: 179, column: 5)
!303 = !DILocation(line: 184, column: 13, scope: !302)
!304 = !DILocalVariable(name: "service", scope: !302, file: !45, line: 185, type: !123)
!305 = !DILocation(line: 185, column: 28, scope: !302)
!306 = !DILocalVariable(name: "connectSocket", scope: !302, file: !45, line: 186, type: !23)
!307 = !DILocation(line: 186, column: 16, scope: !302)
!308 = !DILocalVariable(name: "inputBuffer", scope: !302, file: !45, line: 187, type: !97)
!309 = !DILocation(line: 187, column: 14, scope: !302)
!310 = !DILocation(line: 188, column: 9, scope: !302)
!311 = !DILocation(line: 198, column: 29, scope: !312)
!312 = distinct !DILexicalBlock(scope: !302, file: !45, line: 189, column: 9)
!313 = !DILocation(line: 198, column: 27, scope: !312)
!314 = !DILocation(line: 199, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !45, line: 199, column: 17)
!316 = !DILocation(line: 199, column: 31, scope: !315)
!317 = !DILocation(line: 199, column: 17, scope: !312)
!318 = !DILocation(line: 201, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !45, line: 200, column: 13)
!320 = !DILocation(line: 203, column: 13, scope: !312)
!321 = !DILocation(line: 204, column: 21, scope: !312)
!322 = !DILocation(line: 204, column: 32, scope: !312)
!323 = !DILocation(line: 205, column: 39, scope: !312)
!324 = !DILocation(line: 205, column: 21, scope: !312)
!325 = !DILocation(line: 205, column: 30, scope: !312)
!326 = !DILocation(line: 205, column: 37, scope: !312)
!327 = !DILocation(line: 206, column: 32, scope: !312)
!328 = !DILocation(line: 206, column: 21, scope: !312)
!329 = !DILocation(line: 206, column: 30, scope: !312)
!330 = !DILocation(line: 207, column: 25, scope: !331)
!331 = distinct !DILexicalBlock(scope: !312, file: !45, line: 207, column: 17)
!332 = !DILocation(line: 207, column: 40, scope: !331)
!333 = !DILocation(line: 207, column: 17, scope: !331)
!334 = !DILocation(line: 207, column: 85, scope: !331)
!335 = !DILocation(line: 207, column: 17, scope: !312)
!336 = !DILocation(line: 209, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !45, line: 208, column: 13)
!338 = !DILocation(line: 213, column: 31, scope: !312)
!339 = !DILocation(line: 213, column: 46, scope: !312)
!340 = !DILocation(line: 213, column: 26, scope: !312)
!341 = !DILocation(line: 213, column: 24, scope: !312)
!342 = !DILocation(line: 214, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !312, file: !45, line: 214, column: 17)
!344 = !DILocation(line: 214, column: 28, scope: !343)
!345 = !DILocation(line: 214, column: 44, scope: !343)
!346 = !DILocation(line: 214, column: 47, scope: !343)
!347 = !DILocation(line: 214, column: 58, scope: !343)
!348 = !DILocation(line: 214, column: 17, scope: !312)
!349 = !DILocation(line: 216, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !45, line: 215, column: 13)
!351 = !DILocation(line: 219, column: 25, scope: !312)
!352 = !DILocation(line: 219, column: 13, scope: !312)
!353 = !DILocation(line: 219, column: 37, scope: !312)
!354 = !DILocation(line: 221, column: 25, scope: !312)
!355 = !DILocation(line: 221, column: 20, scope: !312)
!356 = !DILocation(line: 221, column: 18, scope: !312)
!357 = !DILocation(line: 222, column: 9, scope: !312)
!358 = !DILocation(line: 224, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !302, file: !45, line: 224, column: 13)
!360 = !DILocation(line: 224, column: 27, scope: !359)
!361 = !DILocation(line: 224, column: 13, scope: !302)
!362 = !DILocation(line: 226, column: 26, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !45, line: 225, column: 9)
!364 = !DILocation(line: 226, column: 13, scope: !363)
!365 = !DILocation(line: 227, column: 9, scope: !363)
!366 = !DILocation(line: 235, column: 26, scope: !295)
!367 = !DILocation(line: 235, column: 13, scope: !295)
!368 = !DILocation(line: 235, column: 24, scope: !295)
!369 = !DILocalVariable(name: "data", scope: !370, file: !45, line: 237, type: !23)
!370 = distinct !DILexicalBlock(scope: !295, file: !45, line: 236, column: 5)
!371 = !DILocation(line: 237, column: 13, scope: !370)
!372 = !DILocation(line: 237, column: 28, scope: !370)
!373 = !DILocalVariable(name: "i", scope: !374, file: !45, line: 239, type: !23)
!374 = distinct !DILexicalBlock(scope: !370, file: !45, line: 238, column: 9)
!375 = !DILocation(line: 239, column: 17, scope: !374)
!376 = !DILocalVariable(name: "buffer", scope: !374, file: !45, line: 240, type: !215)
!377 = !DILocation(line: 240, column: 17, scope: !374)
!378 = !DILocation(line: 242, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !45, line: 242, column: 17)
!380 = !DILocation(line: 242, column: 22, scope: !379)
!381 = !DILocation(line: 242, column: 27, scope: !379)
!382 = !DILocation(line: 242, column: 30, scope: !379)
!383 = !DILocation(line: 242, column: 35, scope: !379)
!384 = !DILocation(line: 242, column: 17, scope: !374)
!385 = !DILocation(line: 244, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !45, line: 243, column: 13)
!387 = !DILocation(line: 244, column: 17, scope: !386)
!388 = !DILocation(line: 244, column: 30, scope: !386)
!389 = !DILocation(line: 246, column: 23, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !45, line: 246, column: 17)
!391 = !DILocation(line: 246, column: 21, scope: !390)
!392 = !DILocation(line: 246, column: 28, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !45, line: 246, column: 17)
!394 = !DILocation(line: 246, column: 30, scope: !393)
!395 = !DILocation(line: 246, column: 17, scope: !390)
!396 = !DILocation(line: 248, column: 41, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !45, line: 247, column: 17)
!398 = !DILocation(line: 248, column: 34, scope: !397)
!399 = !DILocation(line: 248, column: 21, scope: !397)
!400 = !DILocation(line: 249, column: 17, scope: !397)
!401 = !DILocation(line: 246, column: 37, scope: !393)
!402 = !DILocation(line: 246, column: 17, scope: !393)
!403 = distinct !{!403, !395, !404, !243}
!404 = !DILocation(line: 249, column: 17, scope: !390)
!405 = !DILocation(line: 250, column: 13, scope: !386)
!406 = !DILocation(line: 253, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !379, file: !45, line: 252, column: 13)
!408 = !DILocation(line: 257, column: 1, scope: !295)
!409 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good", scope: !45, file: !45, line: 259, type: !105, scopeLine: 260, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!410 = !DILocation(line: 261, column: 5, scope: !409)
!411 = !DILocation(line: 262, column: 5, scope: !409)
!412 = !DILocation(line: 263, column: 1, scope: !409)
!413 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !414, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !42}
!416 = !DILocalVariable(name: "line", arg: 1, scope: !413, file: !3, line: 11, type: !42)
!417 = !DILocation(line: 11, column: 25, scope: !413)
!418 = !DILocation(line: 13, column: 1, scope: !413)
!419 = !DILocation(line: 14, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !3, line: 14, column: 8)
!421 = !DILocation(line: 14, column: 13, scope: !420)
!422 = !DILocation(line: 14, column: 8, scope: !413)
!423 = !DILocation(line: 16, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 15, column: 5)
!425 = !DILocation(line: 16, column: 9, scope: !424)
!426 = !DILocation(line: 17, column: 5, scope: !424)
!427 = !DILocation(line: 18, column: 5, scope: !413)
!428 = !DILocation(line: 19, column: 1, scope: !413)
!429 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !414, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!430 = !DILocalVariable(name: "line", arg: 1, scope: !429, file: !3, line: 20, type: !42)
!431 = !DILocation(line: 20, column: 29, scope: !429)
!432 = !DILocation(line: 22, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 22, column: 8)
!434 = !DILocation(line: 22, column: 13, scope: !433)
!435 = !DILocation(line: 22, column: 8, scope: !429)
!436 = !DILocation(line: 24, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 23, column: 5)
!438 = !DILocation(line: 24, column: 9, scope: !437)
!439 = !DILocation(line: 25, column: 5, scope: !437)
!440 = !DILocation(line: 26, column: 1, scope: !429)
!441 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !442, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !446, line: 74, baseType: !23)
!446 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!447 = !DILocalVariable(name: "line", arg: 1, scope: !441, file: !3, line: 27, type: !444)
!448 = !DILocation(line: 27, column: 29, scope: !441)
!449 = !DILocation(line: 29, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !3, line: 29, column: 8)
!451 = !DILocation(line: 29, column: 13, scope: !450)
!452 = !DILocation(line: 29, column: 8, scope: !441)
!453 = !DILocation(line: 31, column: 27, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 30, column: 5)
!455 = !DILocation(line: 31, column: 9, scope: !454)
!456 = !DILocation(line: 32, column: 5, scope: !454)
!457 = !DILocation(line: 33, column: 1, scope: !441)
!458 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !459, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !23}
!461 = !DILocalVariable(name: "intNumber", arg: 1, scope: !458, file: !3, line: 35, type: !23)
!462 = !DILocation(line: 35, column: 24, scope: !458)
!463 = !DILocation(line: 37, column: 20, scope: !458)
!464 = !DILocation(line: 37, column: 5, scope: !458)
!465 = !DILocation(line: 38, column: 1, scope: !458)
!466 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !467, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469}
!469 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!470 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !466, file: !3, line: 40, type: !469)
!471 = !DILocation(line: 40, column: 28, scope: !466)
!472 = !DILocation(line: 42, column: 21, scope: !466)
!473 = !DILocation(line: 42, column: 5, scope: !466)
!474 = !DILocation(line: 43, column: 1, scope: !466)
!475 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !476, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!479 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !475, file: !3, line: 45, type: !478)
!480 = !DILocation(line: 45, column: 28, scope: !475)
!481 = !DILocation(line: 47, column: 20, scope: !475)
!482 = !DILocation(line: 47, column: 5, scope: !475)
!483 = !DILocation(line: 48, column: 1, scope: !475)
!484 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !485, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!488 = !DILocalVariable(name: "longNumber", arg: 1, scope: !484, file: !3, line: 50, type: !487)
!489 = !DILocation(line: 50, column: 26, scope: !484)
!490 = !DILocation(line: 52, column: 21, scope: !484)
!491 = !DILocation(line: 52, column: 5, scope: !484)
!492 = !DILocation(line: 53, column: 1, scope: !484)
!493 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !494, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !497, line: 27, baseType: !498)
!497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !131, line: 44, baseType: !487)
!499 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !493, file: !3, line: 55, type: !496)
!500 = !DILocation(line: 55, column: 33, scope: !493)
!501 = !DILocation(line: 57, column: 29, scope: !493)
!502 = !DILocation(line: 57, column: 5, scope: !493)
!503 = !DILocation(line: 58, column: 1, scope: !493)
!504 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !505, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !446, line: 46, baseType: !508)
!508 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!509 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !504, file: !3, line: 60, type: !507)
!510 = !DILocation(line: 60, column: 29, scope: !504)
!511 = !DILocation(line: 62, column: 21, scope: !504)
!512 = !DILocation(line: 62, column: 5, scope: !504)
!513 = !DILocation(line: 63, column: 1, scope: !504)
!514 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !515, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !43}
!517 = !DILocalVariable(name: "charHex", arg: 1, scope: !514, file: !3, line: 65, type: !43)
!518 = !DILocation(line: 65, column: 29, scope: !514)
!519 = !DILocation(line: 67, column: 22, scope: !514)
!520 = !DILocation(line: 67, column: 5, scope: !514)
!521 = !DILocation(line: 68, column: 1, scope: !514)
!522 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !523, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !445}
!525 = !DILocalVariable(name: "wideChar", arg: 1, scope: !522, file: !3, line: 70, type: !445)
!526 = !DILocation(line: 70, column: 29, scope: !522)
!527 = !DILocalVariable(name: "s", scope: !522, file: !3, line: 74, type: !528)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 2)
!531 = !DILocation(line: 74, column: 13, scope: !522)
!532 = !DILocation(line: 75, column: 16, scope: !522)
!533 = !DILocation(line: 75, column: 9, scope: !522)
!534 = !DILocation(line: 75, column: 14, scope: !522)
!535 = !DILocation(line: 76, column: 9, scope: !522)
!536 = !DILocation(line: 76, column: 14, scope: !522)
!537 = !DILocation(line: 77, column: 21, scope: !522)
!538 = !DILocation(line: 77, column: 5, scope: !522)
!539 = !DILocation(line: 78, column: 1, scope: !522)
!540 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !541, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !7}
!543 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !540, file: !3, line: 80, type: !7)
!544 = !DILocation(line: 80, column: 33, scope: !540)
!545 = !DILocation(line: 82, column: 20, scope: !540)
!546 = !DILocation(line: 82, column: 5, scope: !540)
!547 = !DILocation(line: 83, column: 1, scope: !540)
!548 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !549, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !25}
!551 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !548, file: !3, line: 85, type: !25)
!552 = !DILocation(line: 85, column: 45, scope: !548)
!553 = !DILocation(line: 87, column: 22, scope: !548)
!554 = !DILocation(line: 87, column: 5, scope: !548)
!555 = !DILocation(line: 88, column: 1, scope: !548)
!556 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !557, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559}
!559 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!560 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !556, file: !3, line: 90, type: !559)
!561 = !DILocation(line: 90, column: 29, scope: !556)
!562 = !DILocation(line: 92, column: 20, scope: !556)
!563 = !DILocation(line: 92, column: 5, scope: !556)
!564 = !DILocation(line: 93, column: 1, scope: !556)
!565 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !566, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !570, line: 100, baseType: !571)
!570 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !570, line: 96, size: 64, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !571, file: !570, line: 98, baseType: !23, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !571, file: !570, line: 99, baseType: !23, size: 32, offset: 32)
!575 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !565, file: !3, line: 95, type: !568)
!576 = !DILocation(line: 95, column: 40, scope: !565)
!577 = !DILocation(line: 97, column: 26, scope: !565)
!578 = !DILocation(line: 97, column: 47, scope: !565)
!579 = !DILocation(line: 97, column: 55, scope: !565)
!580 = !DILocation(line: 97, column: 76, scope: !565)
!581 = !DILocation(line: 97, column: 5, scope: !565)
!582 = !DILocation(line: 98, column: 1, scope: !565)
!583 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !584, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586, !507}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!587 = !DILocalVariable(name: "bytes", arg: 1, scope: !583, file: !3, line: 100, type: !586)
!588 = !DILocation(line: 100, column: 38, scope: !583)
!589 = !DILocalVariable(name: "numBytes", arg: 2, scope: !583, file: !3, line: 100, type: !507)
!590 = !DILocation(line: 100, column: 52, scope: !583)
!591 = !DILocalVariable(name: "i", scope: !583, file: !3, line: 102, type: !507)
!592 = !DILocation(line: 102, column: 12, scope: !583)
!593 = !DILocation(line: 103, column: 12, scope: !594)
!594 = distinct !DILexicalBlock(scope: !583, file: !3, line: 103, column: 5)
!595 = !DILocation(line: 103, column: 10, scope: !594)
!596 = !DILocation(line: 103, column: 17, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !3, line: 103, column: 5)
!598 = !DILocation(line: 103, column: 21, scope: !597)
!599 = !DILocation(line: 103, column: 19, scope: !597)
!600 = !DILocation(line: 103, column: 5, scope: !594)
!601 = !DILocation(line: 105, column: 24, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !3, line: 104, column: 5)
!603 = !DILocation(line: 105, column: 30, scope: !602)
!604 = !DILocation(line: 105, column: 9, scope: !602)
!605 = !DILocation(line: 106, column: 5, scope: !602)
!606 = !DILocation(line: 103, column: 31, scope: !597)
!607 = !DILocation(line: 103, column: 5, scope: !597)
!608 = distinct !{!608, !600, !609, !243}
!609 = !DILocation(line: 106, column: 5, scope: !594)
!610 = !DILocation(line: 107, column: 5, scope: !583)
!611 = !DILocation(line: 108, column: 1, scope: !583)
!612 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !613, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!613 = !DISubroutineType(types: !614)
!614 = !{!507, !586, !507, !42}
!615 = !DILocalVariable(name: "bytes", arg: 1, scope: !612, file: !3, line: 113, type: !586)
!616 = !DILocation(line: 113, column: 39, scope: !612)
!617 = !DILocalVariable(name: "numBytes", arg: 2, scope: !612, file: !3, line: 113, type: !507)
!618 = !DILocation(line: 113, column: 53, scope: !612)
!619 = !DILocalVariable(name: "hex", arg: 3, scope: !612, file: !3, line: 113, type: !42)
!620 = !DILocation(line: 113, column: 71, scope: !612)
!621 = !DILocalVariable(name: "numWritten", scope: !612, file: !3, line: 115, type: !507)
!622 = !DILocation(line: 115, column: 12, scope: !612)
!623 = !DILocation(line: 121, column: 5, scope: !612)
!624 = !DILocation(line: 121, column: 12, scope: !612)
!625 = !DILocation(line: 121, column: 25, scope: !612)
!626 = !DILocation(line: 121, column: 23, scope: !612)
!627 = !DILocation(line: 121, column: 34, scope: !612)
!628 = !DILocation(line: 121, column: 37, scope: !612)
!629 = !DILocation(line: 121, column: 67, scope: !612)
!630 = !DILocation(line: 121, column: 70, scope: !612)
!631 = !DILocation(line: 0, scope: !612)
!632 = !DILocalVariable(name: "byte", scope: !633, file: !3, line: 123, type: !23)
!633 = distinct !DILexicalBlock(scope: !612, file: !3, line: 122, column: 5)
!634 = !DILocation(line: 123, column: 13, scope: !633)
!635 = !DILocation(line: 124, column: 17, scope: !633)
!636 = !DILocation(line: 124, column: 25, scope: !633)
!637 = !DILocation(line: 124, column: 23, scope: !633)
!638 = !DILocation(line: 124, column: 9, scope: !633)
!639 = !DILocation(line: 125, column: 45, scope: !633)
!640 = !DILocation(line: 125, column: 29, scope: !633)
!641 = !DILocation(line: 125, column: 9, scope: !633)
!642 = !DILocation(line: 125, column: 15, scope: !633)
!643 = !DILocation(line: 125, column: 27, scope: !633)
!644 = !DILocation(line: 126, column: 9, scope: !633)
!645 = distinct !{!645, !623, !646, !243}
!646 = !DILocation(line: 127, column: 5, scope: !612)
!647 = !DILocation(line: 129, column: 12, scope: !612)
!648 = !DILocation(line: 129, column: 5, scope: !612)
!649 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !650, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!650 = !DISubroutineType(types: !651)
!651 = !{!507, !586, !507, !444}
!652 = !DILocalVariable(name: "bytes", arg: 1, scope: !649, file: !3, line: 135, type: !586)
!653 = !DILocation(line: 135, column: 41, scope: !649)
!654 = !DILocalVariable(name: "numBytes", arg: 2, scope: !649, file: !3, line: 135, type: !507)
!655 = !DILocation(line: 135, column: 55, scope: !649)
!656 = !DILocalVariable(name: "hex", arg: 3, scope: !649, file: !3, line: 135, type: !444)
!657 = !DILocation(line: 135, column: 76, scope: !649)
!658 = !DILocalVariable(name: "numWritten", scope: !649, file: !3, line: 137, type: !507)
!659 = !DILocation(line: 137, column: 12, scope: !649)
!660 = !DILocation(line: 143, column: 5, scope: !649)
!661 = !DILocation(line: 143, column: 12, scope: !649)
!662 = !DILocation(line: 143, column: 25, scope: !649)
!663 = !DILocation(line: 143, column: 23, scope: !649)
!664 = !DILocation(line: 143, column: 34, scope: !649)
!665 = !DILocation(line: 143, column: 47, scope: !649)
!666 = !DILocation(line: 143, column: 55, scope: !649)
!667 = !DILocation(line: 143, column: 53, scope: !649)
!668 = !DILocation(line: 143, column: 37, scope: !649)
!669 = !DILocation(line: 143, column: 68, scope: !649)
!670 = !DILocation(line: 143, column: 81, scope: !649)
!671 = !DILocation(line: 143, column: 89, scope: !649)
!672 = !DILocation(line: 143, column: 87, scope: !649)
!673 = !DILocation(line: 143, column: 100, scope: !649)
!674 = !DILocation(line: 143, column: 71, scope: !649)
!675 = !DILocation(line: 0, scope: !649)
!676 = !DILocalVariable(name: "byte", scope: !677, file: !3, line: 145, type: !23)
!677 = distinct !DILexicalBlock(scope: !649, file: !3, line: 144, column: 5)
!678 = !DILocation(line: 145, column: 13, scope: !677)
!679 = !DILocation(line: 146, column: 18, scope: !677)
!680 = !DILocation(line: 146, column: 26, scope: !677)
!681 = !DILocation(line: 146, column: 24, scope: !677)
!682 = !DILocation(line: 146, column: 9, scope: !677)
!683 = !DILocation(line: 147, column: 45, scope: !677)
!684 = !DILocation(line: 147, column: 29, scope: !677)
!685 = !DILocation(line: 147, column: 9, scope: !677)
!686 = !DILocation(line: 147, column: 15, scope: !677)
!687 = !DILocation(line: 147, column: 27, scope: !677)
!688 = !DILocation(line: 148, column: 9, scope: !677)
!689 = distinct !{!689, !660, !690, !243}
!690 = !DILocation(line: 149, column: 5, scope: !649)
!691 = !DILocation(line: 151, column: 12, scope: !649)
!692 = !DILocation(line: 151, column: 5, scope: !649)
!693 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !694, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DISubroutineType(types: !695)
!695 = !{!23}
!696 = !DILocation(line: 158, column: 5, scope: !693)
!697 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !694, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!698 = !DILocation(line: 163, column: 5, scope: !697)
!699 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !694, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!700 = !DILocation(line: 168, column: 13, scope: !699)
!701 = !DILocation(line: 168, column: 20, scope: !699)
!702 = !DILocation(line: 168, column: 5, scope: !699)
!703 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!704 = !DILocation(line: 187, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!706 = !DILocation(line: 188, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!708 = !DILocation(line: 189, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!710 = !DILocation(line: 190, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!712 = !DILocation(line: 191, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DILocation(line: 192, column: 16, scope: !713)
!715 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DILocation(line: 193, column: 16, scope: !715)
!717 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!718 = !DILocation(line: 194, column: 16, scope: !717)
!719 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!720 = !DILocation(line: 195, column: 16, scope: !719)
!721 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!722 = !DILocation(line: 198, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!724 = !DILocation(line: 199, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!726 = !DILocation(line: 200, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!728 = !DILocation(line: 201, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!730 = !DILocation(line: 202, column: 15, scope: !729)
!731 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!732 = !DILocation(line: 203, column: 15, scope: !731)
!733 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!734 = !DILocation(line: 204, column: 15, scope: !733)
!735 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!736 = !DILocation(line: 205, column: 15, scope: !735)
!737 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!738 = !DILocation(line: 206, column: 15, scope: !737)
