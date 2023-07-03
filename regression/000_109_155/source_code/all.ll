; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.8 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.12 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_61_bad() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !117, metadata !DIExpression()), !dbg !121
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !122
  store i8* %arraydecay, i8** %data, align 8, !dbg !123
  %1 = load i8*, i8** %data, align 8, !dbg !124
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource(i8* %1), !dbg !125
  store i8* %call, i8** %data, align 8, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %i, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %n, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !132, metadata !DIExpression()), !dbg !133
  %2 = load i8*, i8** %data, align 8, !dbg !134
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !136
  %cmp = icmp eq i32 %call1, 1, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !139
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !144
  %4 = load i32, i32* %n, align 4, !dbg !146
  %cmp2 = icmp slt i32 %3, %4, !dbg !147
  br i1 %cmp2, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !149
  %inc = add nsw i32 %5, 1, !dbg !149
  store i32 %inc, i32* %intVariable, align 4, !dbg !149
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !152
  %inc3 = add nsw i32 %6, 1, !dbg !152
  store i32 %inc3, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !157
  call void @printIntLine(i32 %7), !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !161 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !165
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !166
  store i8* %arraydecay, i8** %data, align 8, !dbg !167
  %1 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource(i8* %1), !dbg !169
  store i8* %call, i8** %data, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %n, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !176, metadata !DIExpression()), !dbg !177
  %2 = load i8*, i8** %data, align 8, !dbg !178
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !180
  %cmp = icmp eq i32 %call1, 1, !dbg !181
  br i1 %cmp, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !183
  store i32 0, i32* %i, align 4, !dbg !185
  br label %for.cond, !dbg !187

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !188
  %4 = load i32, i32* %n, align 4, !dbg !190
  %cmp2 = icmp slt i32 %3, %4, !dbg !191
  br i1 %cmp2, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !193
  %inc = add nsw i32 %5, 1, !dbg !193
  store i32 %inc, i32* %intVariable, align 4, !dbg !193
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !196
  %inc3 = add nsw i32 %6, 1, !dbg !196
  store i32 %inc3, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !200
  call void @printIntLine(i32 %7), !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !209
  store i8* %arraydecay, i8** %data, align 8, !dbg !210
  %1 = load i8*, i8** %data, align 8, !dbg !211
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource(i8* %1), !dbg !212
  store i8* %call, i8** %data, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %i, metadata !214, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %n, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !219, metadata !DIExpression()), !dbg !220
  %2 = load i8*, i8** %data, align 8, !dbg !221
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !223
  %cmp = icmp eq i32 %call1, 1, !dbg !224
  br i1 %cmp, label %if.then, label %if.end6, !dbg !225

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !226
  %cmp2 = icmp slt i32 %3, 10000, !dbg !229
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !230

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !231
  store i32 0, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !236
  %5 = load i32, i32* %n, align 4, !dbg !238
  %cmp4 = icmp slt i32 %4, %5, !dbg !239
  br i1 %cmp4, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !241
  %inc = add nsw i32 %6, 1, !dbg !241
  store i32 %inc, i32* %intVariable, align 4, !dbg !241
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !244
  %inc5 = add nsw i32 %7, 1, !dbg !244
  store i32 %inc5, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !245, !llvm.loop !246

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !248
  call void @printIntLine(i32 %8), !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !251

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_61_good() #0 !dbg !253 {
entry:
  call void @goodG2B(), !dbg !254
  call void @goodB2G(), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource(i8* %data) #0 !dbg !257 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !265, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 -1, i32* %listenSocket, align 4, !dbg !285
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 -1, i32* %acceptSocket, align 4, !dbg !287
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !288, metadata !DIExpression()), !dbg !292
  %0 = load i8*, i8** %data.addr, align 8, !dbg !293
  %call = call i64 @strlen(i8* %0) #8, !dbg !294
  store i64 %call, i64* %dataLen, align 8, !dbg !292
  br label %do.body, !dbg !295

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !296
  store i32 %call1, i32* %listenSocket, align 4, !dbg !298
  %1 = load i32, i32* %listenSocket, align 4, !dbg !299
  %cmp = icmp eq i32 %1, -1, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !303

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !305
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !306
  store i16 2, i16* %sin_family, align 4, !dbg !307
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !308
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !309
  store i32 0, i32* %s_addr, align 4, !dbg !310
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !311
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !312
  store i16 %call2, i16* %sin_port, align 2, !dbg !313
  %3 = load i32, i32* %listenSocket, align 4, !dbg !314
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !316
  %call3 = call i32 @bind(i32 %3, %struct.sockaddr* %4, i32 16) #7, !dbg !317
  %cmp4 = icmp eq i32 %call3, -1, !dbg !318
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !319

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !320

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* %listenSocket, align 4, !dbg !322
  %call7 = call i32 @listen(i32 %5, i32 5) #7, !dbg !324
  %cmp8 = icmp eq i32 %call7, -1, !dbg !325
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !326

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !327

if.end10:                                         ; preds = %if.end6
  %6 = load i32, i32* %listenSocket, align 4, !dbg !329
  %call11 = call i32 @accept(i32 %6, %struct.sockaddr* null, i32* null), !dbg !330
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !331
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !332
  %cmp12 = icmp eq i32 %7, -1, !dbg !334
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !335

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !336

if.end14:                                         ; preds = %if.end10
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !338
  %9 = load i8*, i8** %data.addr, align 8, !dbg !339
  %10 = load i64, i64* %dataLen, align 8, !dbg !340
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !341
  %11 = load i64, i64* %dataLen, align 8, !dbg !342
  %sub = sub i64 100, %11, !dbg !343
  %sub15 = sub i64 %sub, 1, !dbg !344
  %mul = mul i64 1, %sub15, !dbg !345
  %call16 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !346
  %conv = trunc i64 %call16 to i32, !dbg !346
  store i32 %conv, i32* %recvResult, align 4, !dbg !347
  %12 = load i32, i32* %recvResult, align 4, !dbg !348
  %cmp17 = icmp eq i32 %12, -1, !dbg !350
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !351

lor.lhs.false:                                    ; preds = %if.end14
  %13 = load i32, i32* %recvResult, align 4, !dbg !352
  %cmp19 = icmp eq i32 %13, 0, !dbg !353
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !354

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !355

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data.addr, align 8, !dbg !357
  %15 = load i64, i64* %dataLen, align 8, !dbg !358
  %16 = load i32, i32* %recvResult, align 4, !dbg !359
  %conv23 = sext i32 %16 to i64, !dbg !359
  %div = udiv i64 %conv23, 1, !dbg !360
  %add = add i64 %15, %div, !dbg !361
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !357
  store i8 0, i8* %arrayidx, align 1, !dbg !362
  %17 = load i8*, i8** %data.addr, align 8, !dbg !363
  %call24 = call i8* @strchr(i8* %17, i32 13) #8, !dbg !364
  store i8* %call24, i8** %replace, align 8, !dbg !365
  %18 = load i8*, i8** %replace, align 8, !dbg !366
  %tobool = icmp ne i8* %18, null, !dbg !366
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !368

if.then25:                                        ; preds = %if.end22
  %19 = load i8*, i8** %replace, align 8, !dbg !369
  store i8 0, i8* %19, align 1, !dbg !371
  br label %if.end26, !dbg !372

if.end26:                                         ; preds = %if.then25, %if.end22
  %20 = load i8*, i8** %data.addr, align 8, !dbg !373
  %call27 = call i8* @strchr(i8* %20, i32 10) #8, !dbg !374
  store i8* %call27, i8** %replace, align 8, !dbg !375
  %21 = load i8*, i8** %replace, align 8, !dbg !376
  %tobool28 = icmp ne i8* %21, null, !dbg !376
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !378

if.then29:                                        ; preds = %if.end26
  %22 = load i8*, i8** %replace, align 8, !dbg !379
  store i8 0, i8* %22, align 1, !dbg !381
  br label %if.end30, !dbg !382

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !383

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %23 = load i32, i32* %listenSocket, align 4, !dbg !384
  %cmp31 = icmp ne i32 %23, -1, !dbg !386
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !387

if.then33:                                        ; preds = %do.end
  %24 = load i32, i32* %listenSocket, align 4, !dbg !388
  %call34 = call i32 @close(i32 %24), !dbg !390
  br label %if.end35, !dbg !391

if.end35:                                         ; preds = %if.then33, %do.end
  %25 = load i32, i32* %acceptSocket, align 4, !dbg !392
  %cmp36 = icmp ne i32 %25, -1, !dbg !394
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !395

if.then38:                                        ; preds = %if.end35
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !396
  %call39 = call i32 @close(i32 %26), !dbg !398
  br label %if.end40, !dbg !399

if.end40:                                         ; preds = %if.then38, %if.end35
  %27 = load i8*, i8** %data.addr, align 8, !dbg !400
  ret i8* %27, !dbg !401
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource(i8* %data) #0 !dbg !402 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8*, i8** %data.addr, align 8, !dbg !405
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !406
  %1 = load i8*, i8** %data.addr, align 8, !dbg !407
  ret i8* %1, !dbg !408
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource(i8* %data) #0 !dbg !409 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !412, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !419, metadata !DIExpression()), !dbg !420
  store i32 -1, i32* %listenSocket, align 4, !dbg !420
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !421, metadata !DIExpression()), !dbg !422
  store i32 -1, i32* %acceptSocket, align 4, !dbg !422
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i8*, i8** %data.addr, align 8, !dbg !425
  %call = call i64 @strlen(i8* %0) #8, !dbg !426
  store i64 %call, i64* %dataLen, align 8, !dbg !424
  br label %do.body, !dbg !427

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !428
  store i32 %call1, i32* %listenSocket, align 4, !dbg !430
  %1 = load i32, i32* %listenSocket, align 4, !dbg !431
  %cmp = icmp eq i32 %1, -1, !dbg !433
  br i1 %cmp, label %if.then, label %if.end, !dbg !434

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !435

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !437
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !437
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !438
  store i16 2, i16* %sin_family, align 4, !dbg !439
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !440
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !441
  store i32 0, i32* %s_addr, align 4, !dbg !442
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !443
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !444
  store i16 %call2, i16* %sin_port, align 2, !dbg !445
  %3 = load i32, i32* %listenSocket, align 4, !dbg !446
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !448
  %call3 = call i32 @bind(i32 %3, %struct.sockaddr* %4, i32 16) #7, !dbg !449
  %cmp4 = icmp eq i32 %call3, -1, !dbg !450
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !451

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !452

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* %listenSocket, align 4, !dbg !454
  %call7 = call i32 @listen(i32 %5, i32 5) #7, !dbg !456
  %cmp8 = icmp eq i32 %call7, -1, !dbg !457
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !458

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !459

if.end10:                                         ; preds = %if.end6
  %6 = load i32, i32* %listenSocket, align 4, !dbg !461
  %call11 = call i32 @accept(i32 %6, %struct.sockaddr* null, i32* null), !dbg !462
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !463
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !464
  %cmp12 = icmp eq i32 %7, -1, !dbg !466
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !467

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !468

if.end14:                                         ; preds = %if.end10
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !470
  %9 = load i8*, i8** %data.addr, align 8, !dbg !471
  %10 = load i64, i64* %dataLen, align 8, !dbg !472
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !473
  %11 = load i64, i64* %dataLen, align 8, !dbg !474
  %sub = sub i64 100, %11, !dbg !475
  %sub15 = sub i64 %sub, 1, !dbg !476
  %mul = mul i64 1, %sub15, !dbg !477
  %call16 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !478
  %conv = trunc i64 %call16 to i32, !dbg !478
  store i32 %conv, i32* %recvResult, align 4, !dbg !479
  %12 = load i32, i32* %recvResult, align 4, !dbg !480
  %cmp17 = icmp eq i32 %12, -1, !dbg !482
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !483

lor.lhs.false:                                    ; preds = %if.end14
  %13 = load i32, i32* %recvResult, align 4, !dbg !484
  %cmp19 = icmp eq i32 %13, 0, !dbg !485
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !486

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !487

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data.addr, align 8, !dbg !489
  %15 = load i64, i64* %dataLen, align 8, !dbg !490
  %16 = load i32, i32* %recvResult, align 4, !dbg !491
  %conv23 = sext i32 %16 to i64, !dbg !491
  %div = udiv i64 %conv23, 1, !dbg !492
  %add = add i64 %15, %div, !dbg !493
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !489
  store i8 0, i8* %arrayidx, align 1, !dbg !494
  %17 = load i8*, i8** %data.addr, align 8, !dbg !495
  %call24 = call i8* @strchr(i8* %17, i32 13) #8, !dbg !496
  store i8* %call24, i8** %replace, align 8, !dbg !497
  %18 = load i8*, i8** %replace, align 8, !dbg !498
  %tobool = icmp ne i8* %18, null, !dbg !498
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !500

if.then25:                                        ; preds = %if.end22
  %19 = load i8*, i8** %replace, align 8, !dbg !501
  store i8 0, i8* %19, align 1, !dbg !503
  br label %if.end26, !dbg !504

if.end26:                                         ; preds = %if.then25, %if.end22
  %20 = load i8*, i8** %data.addr, align 8, !dbg !505
  %call27 = call i8* @strchr(i8* %20, i32 10) #8, !dbg !506
  store i8* %call27, i8** %replace, align 8, !dbg !507
  %21 = load i8*, i8** %replace, align 8, !dbg !508
  %tobool28 = icmp ne i8* %21, null, !dbg !508
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !510

if.then29:                                        ; preds = %if.end26
  %22 = load i8*, i8** %replace, align 8, !dbg !511
  store i8 0, i8* %22, align 1, !dbg !513
  br label %if.end30, !dbg !514

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !515

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %23 = load i32, i32* %listenSocket, align 4, !dbg !516
  %cmp31 = icmp ne i32 %23, -1, !dbg !518
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !519

if.then33:                                        ; preds = %do.end
  %24 = load i32, i32* %listenSocket, align 4, !dbg !520
  %call34 = call i32 @close(i32 %24), !dbg !522
  br label %if.end35, !dbg !523

if.end35:                                         ; preds = %if.then33, %do.end
  %25 = load i32, i32* %acceptSocket, align 4, !dbg !524
  %cmp36 = icmp ne i32 %25, -1, !dbg !526
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !527

if.then38:                                        ; preds = %if.end35
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !528
  %call39 = call i32 @close(i32 %26), !dbg !530
  br label %if.end40, !dbg !531

if.end40:                                         ; preds = %if.then38, %if.end35
  %27 = load i8*, i8** %data.addr, align 8, !dbg !532
  ret i8* %27, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !534 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !539
  %0 = load i8*, i8** %line.addr, align 8, !dbg !540
  %cmp = icmp ne i8* %0, null, !dbg !542
  br i1 %cmp, label %if.then, label %if.end, !dbg !543

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !544
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !546
  br label %if.end, !dbg !547

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !548
  ret void, !dbg !549
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !550 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load i8*, i8** %line.addr, align 8, !dbg !553
  %cmp = icmp ne i8* %0, null, !dbg !555
  br i1 %cmp, label %if.then, label %if.end, !dbg !556

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1), !dbg !559
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !562 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i32*, i32** %line.addr, align 8, !dbg !569
  %cmp = icmp ne i32* %0, null, !dbg !571
  br i1 %cmp, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !573
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !575
  br label %if.end, !dbg !576

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !577
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !578 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !586 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !590, metadata !DIExpression()), !dbg !591
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !592
  %conv = sext i16 %0 to i32, !dbg !592
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !595 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !601
  %conv = fpext float %0 to double, !dbg !601
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !604 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !613 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !621
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !622
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !624 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.12, i64 0, i64 0), i64 %0), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !632 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !635, metadata !DIExpression()), !dbg !636
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !637
  %conv = sext i8 %0 to i32, !dbg !637
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !638
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !640 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !645, metadata !DIExpression()), !dbg !649
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !650
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !651
  store i32 %0, i32* %arrayidx, align 4, !dbg !652
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !653
  store i32 0, i32* %arrayidx1, align 4, !dbg !654
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !655
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !656
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !658 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !663
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !664
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !666 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !669, metadata !DIExpression()), !dbg !670
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !671
  %conv = zext i8 %0 to i32, !dbg !671
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !674 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !680
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !681
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !683 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !695
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !696
  %1 = load i32, i32* %intOne, align 4, !dbg !696
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !697
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !698
  %3 = load i32, i32* %intTwo, align 4, !dbg !698
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !699
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !701 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !705, metadata !DIExpression()), !dbg !706
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.declare(metadata i64* %i, metadata !709, metadata !DIExpression()), !dbg !710
  store i64 0, i64* %i, align 8, !dbg !711
  br label %for.cond, !dbg !713

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !714
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !716
  %cmp = icmp ult i64 %0, %1, !dbg !717
  br i1 %cmp, label %for.body, label %for.end, !dbg !718

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !719
  %3 = load i64, i64* %i, align 8, !dbg !721
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !719
  %4 = load i8, i8* %arrayidx, align 1, !dbg !719
  %conv = zext i8 %4 to i32, !dbg !719
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !722
  br label %for.inc, !dbg !723

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !724
  %inc = add i64 %5, 1, !dbg !724
  store i64 %inc, i64* %i, align 8, !dbg !724
  br label %for.cond, !dbg !725, !llvm.loop !726

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !728
  ret void, !dbg !729
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !730 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !735, metadata !DIExpression()), !dbg !736
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !739, metadata !DIExpression()), !dbg !740
  store i64 0, i64* %numWritten, align 8, !dbg !740
  br label %while.cond, !dbg !741

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !742
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !743
  %cmp = icmp ult i64 %0, %1, !dbg !744
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !745

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !746
  %2 = load i16*, i16** %call, align 8, !dbg !746
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !746
  %4 = load i64, i64* %numWritten, align 8, !dbg !746
  %mul = mul i64 2, %4, !dbg !746
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !746
  %5 = load i8, i8* %arrayidx, align 1, !dbg !746
  %conv = sext i8 %5 to i32, !dbg !746
  %idxprom = sext i32 %conv to i64, !dbg !746
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !746
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !746
  %conv2 = zext i16 %6 to i32, !dbg !746
  %and = and i32 %conv2, 4096, !dbg !746
  %tobool = icmp ne i32 %and, 0, !dbg !746
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !747

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !748
  %7 = load i16*, i16** %call3, align 8, !dbg !748
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !748
  %9 = load i64, i64* %numWritten, align 8, !dbg !748
  %mul4 = mul i64 2, %9, !dbg !748
  %add = add i64 %mul4, 1, !dbg !748
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !748
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !748
  %conv6 = sext i8 %10 to i32, !dbg !748
  %idxprom7 = sext i32 %conv6 to i64, !dbg !748
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !748
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !748
  %conv9 = zext i16 %11 to i32, !dbg !748
  %and10 = and i32 %conv9, 4096, !dbg !748
  %tobool11 = icmp ne i32 %and10, 0, !dbg !747
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !749
  br i1 %12, label %while.body, label %while.end, !dbg !741

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !750, metadata !DIExpression()), !dbg !752
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !753
  %14 = load i64, i64* %numWritten, align 8, !dbg !754
  %mul12 = mul i64 2, %14, !dbg !755
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !753
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !756
  %15 = load i32, i32* %byte, align 4, !dbg !757
  %conv15 = trunc i32 %15 to i8, !dbg !758
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !759
  %17 = load i64, i64* %numWritten, align 8, !dbg !760
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !759
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !761
  %18 = load i64, i64* %numWritten, align 8, !dbg !762
  %inc = add i64 %18, 1, !dbg !762
  store i64 %inc, i64* %numWritten, align 8, !dbg !762
  br label %while.cond, !dbg !741, !llvm.loop !763

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !765
  ret i64 %19, !dbg !766
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !767 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !772, metadata !DIExpression()), !dbg !773
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !776, metadata !DIExpression()), !dbg !777
  store i64 0, i64* %numWritten, align 8, !dbg !777
  br label %while.cond, !dbg !778

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !779
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !780
  %cmp = icmp ult i64 %0, %1, !dbg !781
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !782

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !783
  %3 = load i64, i64* %numWritten, align 8, !dbg !784
  %mul = mul i64 2, %3, !dbg !785
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !783
  %4 = load i32, i32* %arrayidx, align 4, !dbg !783
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !786
  %tobool = icmp ne i32 %call, 0, !dbg !786
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !787

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !788
  %6 = load i64, i64* %numWritten, align 8, !dbg !789
  %mul1 = mul i64 2, %6, !dbg !790
  %add = add i64 %mul1, 1, !dbg !791
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !788
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !788
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !792
  %tobool4 = icmp ne i32 %call3, 0, !dbg !787
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !793
  br i1 %8, label %while.body, label %while.end, !dbg !778

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !794, metadata !DIExpression()), !dbg !796
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !797
  %10 = load i64, i64* %numWritten, align 8, !dbg !798
  %mul5 = mul i64 2, %10, !dbg !799
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !797
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !800
  %11 = load i32, i32* %byte, align 4, !dbg !801
  %conv = trunc i32 %11 to i8, !dbg !802
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !803
  %13 = load i64, i64* %numWritten, align 8, !dbg !804
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !803
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !805
  %14 = load i64, i64* %numWritten, align 8, !dbg !806
  %inc = add i64 %14, 1, !dbg !806
  store i64 %inc, i64* %numWritten, align 8, !dbg !806
  br label %while.cond, !dbg !778, !llvm.loop !807

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !809
  ret i64 %15, !dbg !810
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !811 {
entry:
  ret i32 1, !dbg !814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !815 {
entry:
  ret i32 0, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !817 {
entry:
  %call = call i32 @rand() #7, !dbg !818
  %rem = srem i32 %call, 2, !dbg !819
  ret i32 %rem, !dbg !820
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !849 {
entry:
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !851 {
entry:
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!108, !108, !108}
!llvm.module.flags = !{!109, !110, !111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
!49 = !{!50, !62}
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !51, line: 24, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!59 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!60 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!61 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 40, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!65 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!70 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!71 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!72 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!73 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!74 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!75 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!76 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!77 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!78 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!79 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!80 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!81 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!82 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!83 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!84 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!85 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!86 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!87 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!88 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!89 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!90 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!91 = !{!92, !97, !42}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !63, line: 30, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 26, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !7)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !99, line: 178, size: 128, elements: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !98, file: !99, line: 180, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !103, line: 28, baseType: !24)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !98, file: !99, line: 181, baseType: !105, size: 112, offset: 16)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 14)
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61_bad", scope: !45, file: !45, line: 52, type: !113, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 54, type: !42)
!116 = !DILocation(line: 54, column: 12, scope: !112)
!117 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 55, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 100)
!121 = !DILocation(line: 55, column: 10, scope: !112)
!122 = !DILocation(line: 56, column: 12, scope: !112)
!123 = !DILocation(line: 56, column: 10, scope: !112)
!124 = !DILocation(line: 57, column: 78, scope: !112)
!125 = !DILocation(line: 57, column: 12, scope: !112)
!126 = !DILocation(line: 57, column: 10, scope: !112)
!127 = !DILocalVariable(name: "i", scope: !128, file: !45, line: 59, type: !23)
!128 = distinct !DILexicalBlock(scope: !112, file: !45, line: 58, column: 5)
!129 = !DILocation(line: 59, column: 13, scope: !128)
!130 = !DILocalVariable(name: "n", scope: !128, file: !45, line: 59, type: !23)
!131 = !DILocation(line: 59, column: 16, scope: !128)
!132 = !DILocalVariable(name: "intVariable", scope: !128, file: !45, line: 59, type: !23)
!133 = !DILocation(line: 59, column: 19, scope: !128)
!134 = !DILocation(line: 60, column: 20, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !45, line: 60, column: 13)
!136 = !DILocation(line: 60, column: 13, scope: !135)
!137 = !DILocation(line: 60, column: 36, scope: !135)
!138 = !DILocation(line: 60, column: 13, scope: !128)
!139 = !DILocation(line: 63, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 61, column: 9)
!141 = !DILocation(line: 64, column: 20, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !45, line: 64, column: 13)
!143 = !DILocation(line: 64, column: 18, scope: !142)
!144 = !DILocation(line: 64, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 64, column: 13)
!146 = !DILocation(line: 64, column: 29, scope: !145)
!147 = !DILocation(line: 64, column: 27, scope: !145)
!148 = !DILocation(line: 64, column: 13, scope: !142)
!149 = !DILocation(line: 67, column: 28, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 65, column: 13)
!151 = !DILocation(line: 68, column: 13, scope: !150)
!152 = !DILocation(line: 64, column: 33, scope: !145)
!153 = !DILocation(line: 64, column: 13, scope: !145)
!154 = distinct !{!154, !148, !155, !156}
!155 = !DILocation(line: 68, column: 13, scope: !142)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 69, column: 26, scope: !140)
!158 = !DILocation(line: 69, column: 13, scope: !140)
!159 = !DILocation(line: 70, column: 9, scope: !140)
!160 = !DILocation(line: 72, column: 1, scope: !112)
!161 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 80, type: !113, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!162 = !DILocalVariable(name: "data", scope: !161, file: !45, line: 82, type: !42)
!163 = !DILocation(line: 82, column: 12, scope: !161)
!164 = !DILocalVariable(name: "dataBuffer", scope: !161, file: !45, line: 83, type: !118)
!165 = !DILocation(line: 83, column: 10, scope: !161)
!166 = !DILocation(line: 84, column: 12, scope: !161)
!167 = !DILocation(line: 84, column: 10, scope: !161)
!168 = !DILocation(line: 85, column: 82, scope: !161)
!169 = !DILocation(line: 85, column: 12, scope: !161)
!170 = !DILocation(line: 85, column: 10, scope: !161)
!171 = !DILocalVariable(name: "i", scope: !172, file: !45, line: 87, type: !23)
!172 = distinct !DILexicalBlock(scope: !161, file: !45, line: 86, column: 5)
!173 = !DILocation(line: 87, column: 13, scope: !172)
!174 = !DILocalVariable(name: "n", scope: !172, file: !45, line: 87, type: !23)
!175 = !DILocation(line: 87, column: 16, scope: !172)
!176 = !DILocalVariable(name: "intVariable", scope: !172, file: !45, line: 87, type: !23)
!177 = !DILocation(line: 87, column: 19, scope: !172)
!178 = !DILocation(line: 88, column: 20, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !45, line: 88, column: 13)
!180 = !DILocation(line: 88, column: 13, scope: !179)
!181 = !DILocation(line: 88, column: 36, scope: !179)
!182 = !DILocation(line: 88, column: 13, scope: !172)
!183 = !DILocation(line: 91, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !45, line: 89, column: 9)
!185 = !DILocation(line: 92, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !45, line: 92, column: 13)
!187 = !DILocation(line: 92, column: 18, scope: !186)
!188 = !DILocation(line: 92, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !45, line: 92, column: 13)
!190 = !DILocation(line: 92, column: 29, scope: !189)
!191 = !DILocation(line: 92, column: 27, scope: !189)
!192 = !DILocation(line: 92, column: 13, scope: !186)
!193 = !DILocation(line: 95, column: 28, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !45, line: 93, column: 13)
!195 = !DILocation(line: 96, column: 13, scope: !194)
!196 = !DILocation(line: 92, column: 33, scope: !189)
!197 = !DILocation(line: 92, column: 13, scope: !189)
!198 = distinct !{!198, !192, !199, !156}
!199 = !DILocation(line: 96, column: 13, scope: !186)
!200 = !DILocation(line: 97, column: 26, scope: !184)
!201 = !DILocation(line: 97, column: 13, scope: !184)
!202 = !DILocation(line: 98, column: 9, scope: !184)
!203 = !DILocation(line: 100, column: 1, scope: !161)
!204 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 104, type: !113, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", scope: !204, file: !45, line: 106, type: !42)
!206 = !DILocation(line: 106, column: 12, scope: !204)
!207 = !DILocalVariable(name: "dataBuffer", scope: !204, file: !45, line: 107, type: !118)
!208 = !DILocation(line: 107, column: 10, scope: !204)
!209 = !DILocation(line: 108, column: 12, scope: !204)
!210 = !DILocation(line: 108, column: 10, scope: !204)
!211 = !DILocation(line: 109, column: 82, scope: !204)
!212 = !DILocation(line: 109, column: 12, scope: !204)
!213 = !DILocation(line: 109, column: 10, scope: !204)
!214 = !DILocalVariable(name: "i", scope: !215, file: !45, line: 111, type: !23)
!215 = distinct !DILexicalBlock(scope: !204, file: !45, line: 110, column: 5)
!216 = !DILocation(line: 111, column: 13, scope: !215)
!217 = !DILocalVariable(name: "n", scope: !215, file: !45, line: 111, type: !23)
!218 = !DILocation(line: 111, column: 16, scope: !215)
!219 = !DILocalVariable(name: "intVariable", scope: !215, file: !45, line: 111, type: !23)
!220 = !DILocation(line: 111, column: 19, scope: !215)
!221 = !DILocation(line: 112, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !45, line: 112, column: 13)
!223 = !DILocation(line: 112, column: 13, scope: !222)
!224 = !DILocation(line: 112, column: 36, scope: !222)
!225 = !DILocation(line: 112, column: 13, scope: !215)
!226 = !DILocation(line: 115, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !45, line: 115, column: 17)
!228 = distinct !DILexicalBlock(scope: !222, file: !45, line: 113, column: 9)
!229 = !DILocation(line: 115, column: 19, scope: !227)
!230 = !DILocation(line: 115, column: 17, scope: !228)
!231 = !DILocation(line: 117, column: 29, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !45, line: 116, column: 13)
!233 = !DILocation(line: 118, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !45, line: 118, column: 17)
!235 = !DILocation(line: 118, column: 22, scope: !234)
!236 = !DILocation(line: 118, column: 29, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !45, line: 118, column: 17)
!238 = !DILocation(line: 118, column: 33, scope: !237)
!239 = !DILocation(line: 118, column: 31, scope: !237)
!240 = !DILocation(line: 118, column: 17, scope: !234)
!241 = !DILocation(line: 121, column: 32, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !45, line: 119, column: 17)
!243 = !DILocation(line: 122, column: 17, scope: !242)
!244 = !DILocation(line: 118, column: 37, scope: !237)
!245 = !DILocation(line: 118, column: 17, scope: !237)
!246 = distinct !{!246, !240, !247, !156}
!247 = !DILocation(line: 122, column: 17, scope: !234)
!248 = !DILocation(line: 123, column: 30, scope: !232)
!249 = !DILocation(line: 123, column: 17, scope: !232)
!250 = !DILocation(line: 124, column: 13, scope: !232)
!251 = !DILocation(line: 125, column: 9, scope: !228)
!252 = !DILocation(line: 127, column: 1, scope: !204)
!253 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61_good", scope: !45, file: !45, line: 129, type: !113, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!254 = !DILocation(line: 131, column: 5, scope: !253)
!255 = !DILocation(line: 132, column: 5, scope: !253)
!256 = !DILocation(line: 133, column: 1, scope: !253)
!257 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource", scope: !48, file: !48, line: 49, type: !258, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!258 = !DISubroutineType(types: !259)
!259 = !{!42, !42}
!260 = !DILocalVariable(name: "data", arg: 1, scope: !257, file: !48, line: 49, type: !42)
!261 = !DILocation(line: 49, column: 81, scope: !257)
!262 = !DILocalVariable(name: "recvResult", scope: !263, file: !48, line: 56, type: !23)
!263 = distinct !DILexicalBlock(scope: !257, file: !48, line: 51, column: 5)
!264 = !DILocation(line: 56, column: 13, scope: !263)
!265 = !DILocalVariable(name: "service", scope: !263, file: !48, line: 57, type: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !63, line: 238, size: 128, elements: !267)
!267 = !{!268, !269, !273, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !266, file: !63, line: 240, baseType: !102, size: 16)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !266, file: !63, line: 241, baseType: !270, size: 16, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !63, line: 119, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 25, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !96, line: 40, baseType: !24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !266, file: !63, line: 242, baseType: !274, size: 32, offset: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !63, line: 31, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !274, file: !63, line: 33, baseType: !92, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !266, file: !63, line: 245, baseType: !278, size: 64, offset: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DILocation(line: 57, column: 28, scope: !263)
!282 = !DILocalVariable(name: "replace", scope: !263, file: !48, line: 58, type: !42)
!283 = !DILocation(line: 58, column: 15, scope: !263)
!284 = !DILocalVariable(name: "listenSocket", scope: !263, file: !48, line: 59, type: !23)
!285 = !DILocation(line: 59, column: 16, scope: !263)
!286 = !DILocalVariable(name: "acceptSocket", scope: !263, file: !48, line: 60, type: !23)
!287 = !DILocation(line: 60, column: 16, scope: !263)
!288 = !DILocalVariable(name: "dataLen", scope: !263, file: !48, line: 61, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !290, line: 46, baseType: !291)
!290 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!291 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!292 = !DILocation(line: 61, column: 16, scope: !263)
!293 = !DILocation(line: 61, column: 33, scope: !263)
!294 = !DILocation(line: 61, column: 26, scope: !263)
!295 = !DILocation(line: 62, column: 9, scope: !263)
!296 = !DILocation(line: 72, column: 28, scope: !297)
!297 = distinct !DILexicalBlock(scope: !263, file: !48, line: 63, column: 9)
!298 = !DILocation(line: 72, column: 26, scope: !297)
!299 = !DILocation(line: 73, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !48, line: 73, column: 17)
!301 = !DILocation(line: 73, column: 30, scope: !300)
!302 = !DILocation(line: 73, column: 17, scope: !297)
!303 = !DILocation(line: 75, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !48, line: 74, column: 13)
!305 = !DILocation(line: 77, column: 13, scope: !297)
!306 = !DILocation(line: 78, column: 21, scope: !297)
!307 = !DILocation(line: 78, column: 32, scope: !297)
!308 = !DILocation(line: 79, column: 21, scope: !297)
!309 = !DILocation(line: 79, column: 30, scope: !297)
!310 = !DILocation(line: 79, column: 37, scope: !297)
!311 = !DILocation(line: 80, column: 32, scope: !297)
!312 = !DILocation(line: 80, column: 21, scope: !297)
!313 = !DILocation(line: 80, column: 30, scope: !297)
!314 = !DILocation(line: 81, column: 22, scope: !315)
!315 = distinct !DILexicalBlock(scope: !297, file: !48, line: 81, column: 17)
!316 = !DILocation(line: 81, column: 36, scope: !315)
!317 = !DILocation(line: 81, column: 17, scope: !315)
!318 = !DILocation(line: 81, column: 81, scope: !315)
!319 = !DILocation(line: 81, column: 17, scope: !297)
!320 = !DILocation(line: 83, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !48, line: 82, column: 13)
!322 = !DILocation(line: 85, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !297, file: !48, line: 85, column: 17)
!324 = !DILocation(line: 85, column: 17, scope: !323)
!325 = !DILocation(line: 85, column: 54, scope: !323)
!326 = !DILocation(line: 85, column: 17, scope: !297)
!327 = !DILocation(line: 87, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !48, line: 86, column: 13)
!329 = !DILocation(line: 89, column: 35, scope: !297)
!330 = !DILocation(line: 89, column: 28, scope: !297)
!331 = !DILocation(line: 89, column: 26, scope: !297)
!332 = !DILocation(line: 90, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !297, file: !48, line: 90, column: 17)
!334 = !DILocation(line: 90, column: 30, scope: !333)
!335 = !DILocation(line: 90, column: 17, scope: !297)
!336 = !DILocation(line: 92, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !48, line: 91, column: 13)
!338 = !DILocation(line: 95, column: 31, scope: !297)
!339 = !DILocation(line: 95, column: 54, scope: !297)
!340 = !DILocation(line: 95, column: 61, scope: !297)
!341 = !DILocation(line: 95, column: 59, scope: !297)
!342 = !DILocation(line: 95, column: 93, scope: !297)
!343 = !DILocation(line: 95, column: 91, scope: !297)
!344 = !DILocation(line: 95, column: 101, scope: !297)
!345 = !DILocation(line: 95, column: 84, scope: !297)
!346 = !DILocation(line: 95, column: 26, scope: !297)
!347 = !DILocation(line: 95, column: 24, scope: !297)
!348 = !DILocation(line: 96, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !297, file: !48, line: 96, column: 17)
!350 = !DILocation(line: 96, column: 28, scope: !349)
!351 = !DILocation(line: 96, column: 44, scope: !349)
!352 = !DILocation(line: 96, column: 47, scope: !349)
!353 = !DILocation(line: 96, column: 58, scope: !349)
!354 = !DILocation(line: 96, column: 17, scope: !297)
!355 = !DILocation(line: 98, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !349, file: !48, line: 97, column: 13)
!357 = !DILocation(line: 101, column: 13, scope: !297)
!358 = !DILocation(line: 101, column: 18, scope: !297)
!359 = !DILocation(line: 101, column: 28, scope: !297)
!360 = !DILocation(line: 101, column: 39, scope: !297)
!361 = !DILocation(line: 101, column: 26, scope: !297)
!362 = !DILocation(line: 101, column: 55, scope: !297)
!363 = !DILocation(line: 103, column: 30, scope: !297)
!364 = !DILocation(line: 103, column: 23, scope: !297)
!365 = !DILocation(line: 103, column: 21, scope: !297)
!366 = !DILocation(line: 104, column: 17, scope: !367)
!367 = distinct !DILexicalBlock(scope: !297, file: !48, line: 104, column: 17)
!368 = !DILocation(line: 104, column: 17, scope: !297)
!369 = !DILocation(line: 106, column: 18, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !48, line: 105, column: 13)
!371 = !DILocation(line: 106, column: 26, scope: !370)
!372 = !DILocation(line: 107, column: 13, scope: !370)
!373 = !DILocation(line: 108, column: 30, scope: !297)
!374 = !DILocation(line: 108, column: 23, scope: !297)
!375 = !DILocation(line: 108, column: 21, scope: !297)
!376 = !DILocation(line: 109, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !297, file: !48, line: 109, column: 17)
!378 = !DILocation(line: 109, column: 17, scope: !297)
!379 = !DILocation(line: 111, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !48, line: 110, column: 13)
!381 = !DILocation(line: 111, column: 26, scope: !380)
!382 = !DILocation(line: 112, column: 13, scope: !380)
!383 = !DILocation(line: 113, column: 9, scope: !297)
!384 = !DILocation(line: 115, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !263, file: !48, line: 115, column: 13)
!386 = !DILocation(line: 115, column: 26, scope: !385)
!387 = !DILocation(line: 115, column: 13, scope: !263)
!388 = !DILocation(line: 117, column: 26, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !48, line: 116, column: 9)
!390 = !DILocation(line: 117, column: 13, scope: !389)
!391 = !DILocation(line: 118, column: 9, scope: !389)
!392 = !DILocation(line: 119, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !263, file: !48, line: 119, column: 13)
!394 = !DILocation(line: 119, column: 26, scope: !393)
!395 = !DILocation(line: 119, column: 13, scope: !263)
!396 = !DILocation(line: 121, column: 26, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !48, line: 120, column: 9)
!398 = !DILocation(line: 121, column: 13, scope: !397)
!399 = !DILocation(line: 122, column: 9, scope: !397)
!400 = !DILocation(line: 130, column: 12, scope: !257)
!401 = !DILocation(line: 130, column: 5, scope: !257)
!402 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource", scope: !48, file: !48, line: 138, type: !258, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!403 = !DILocalVariable(name: "data", arg: 1, scope: !402, file: !48, line: 138, type: !42)
!404 = !DILocation(line: 138, column: 85, scope: !402)
!405 = !DILocation(line: 141, column: 12, scope: !402)
!406 = !DILocation(line: 141, column: 5, scope: !402)
!407 = !DILocation(line: 142, column: 12, scope: !402)
!408 = !DILocation(line: 142, column: 5, scope: !402)
!409 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource", scope: !48, file: !48, line: 146, type: !258, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!410 = !DILocalVariable(name: "data", arg: 1, scope: !409, file: !48, line: 146, type: !42)
!411 = !DILocation(line: 146, column: 85, scope: !409)
!412 = !DILocalVariable(name: "recvResult", scope: !413, file: !48, line: 153, type: !23)
!413 = distinct !DILexicalBlock(scope: !409, file: !48, line: 148, column: 5)
!414 = !DILocation(line: 153, column: 13, scope: !413)
!415 = !DILocalVariable(name: "service", scope: !413, file: !48, line: 154, type: !266)
!416 = !DILocation(line: 154, column: 28, scope: !413)
!417 = !DILocalVariable(name: "replace", scope: !413, file: !48, line: 155, type: !42)
!418 = !DILocation(line: 155, column: 15, scope: !413)
!419 = !DILocalVariable(name: "listenSocket", scope: !413, file: !48, line: 156, type: !23)
!420 = !DILocation(line: 156, column: 16, scope: !413)
!421 = !DILocalVariable(name: "acceptSocket", scope: !413, file: !48, line: 157, type: !23)
!422 = !DILocation(line: 157, column: 16, scope: !413)
!423 = !DILocalVariable(name: "dataLen", scope: !413, file: !48, line: 158, type: !289)
!424 = !DILocation(line: 158, column: 16, scope: !413)
!425 = !DILocation(line: 158, column: 33, scope: !413)
!426 = !DILocation(line: 158, column: 26, scope: !413)
!427 = !DILocation(line: 159, column: 9, scope: !413)
!428 = !DILocation(line: 169, column: 28, scope: !429)
!429 = distinct !DILexicalBlock(scope: !413, file: !48, line: 160, column: 9)
!430 = !DILocation(line: 169, column: 26, scope: !429)
!431 = !DILocation(line: 170, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !48, line: 170, column: 17)
!433 = !DILocation(line: 170, column: 30, scope: !432)
!434 = !DILocation(line: 170, column: 17, scope: !429)
!435 = !DILocation(line: 172, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !48, line: 171, column: 13)
!437 = !DILocation(line: 174, column: 13, scope: !429)
!438 = !DILocation(line: 175, column: 21, scope: !429)
!439 = !DILocation(line: 175, column: 32, scope: !429)
!440 = !DILocation(line: 176, column: 21, scope: !429)
!441 = !DILocation(line: 176, column: 30, scope: !429)
!442 = !DILocation(line: 176, column: 37, scope: !429)
!443 = !DILocation(line: 177, column: 32, scope: !429)
!444 = !DILocation(line: 177, column: 21, scope: !429)
!445 = !DILocation(line: 177, column: 30, scope: !429)
!446 = !DILocation(line: 178, column: 22, scope: !447)
!447 = distinct !DILexicalBlock(scope: !429, file: !48, line: 178, column: 17)
!448 = !DILocation(line: 178, column: 36, scope: !447)
!449 = !DILocation(line: 178, column: 17, scope: !447)
!450 = !DILocation(line: 178, column: 81, scope: !447)
!451 = !DILocation(line: 178, column: 17, scope: !429)
!452 = !DILocation(line: 180, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !48, line: 179, column: 13)
!454 = !DILocation(line: 182, column: 24, scope: !455)
!455 = distinct !DILexicalBlock(scope: !429, file: !48, line: 182, column: 17)
!456 = !DILocation(line: 182, column: 17, scope: !455)
!457 = !DILocation(line: 182, column: 54, scope: !455)
!458 = !DILocation(line: 182, column: 17, scope: !429)
!459 = !DILocation(line: 184, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !48, line: 183, column: 13)
!461 = !DILocation(line: 186, column: 35, scope: !429)
!462 = !DILocation(line: 186, column: 28, scope: !429)
!463 = !DILocation(line: 186, column: 26, scope: !429)
!464 = !DILocation(line: 187, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !429, file: !48, line: 187, column: 17)
!466 = !DILocation(line: 187, column: 30, scope: !465)
!467 = !DILocation(line: 187, column: 17, scope: !429)
!468 = !DILocation(line: 189, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !48, line: 188, column: 13)
!470 = !DILocation(line: 192, column: 31, scope: !429)
!471 = !DILocation(line: 192, column: 54, scope: !429)
!472 = !DILocation(line: 192, column: 61, scope: !429)
!473 = !DILocation(line: 192, column: 59, scope: !429)
!474 = !DILocation(line: 192, column: 93, scope: !429)
!475 = !DILocation(line: 192, column: 91, scope: !429)
!476 = !DILocation(line: 192, column: 101, scope: !429)
!477 = !DILocation(line: 192, column: 84, scope: !429)
!478 = !DILocation(line: 192, column: 26, scope: !429)
!479 = !DILocation(line: 192, column: 24, scope: !429)
!480 = !DILocation(line: 193, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !429, file: !48, line: 193, column: 17)
!482 = !DILocation(line: 193, column: 28, scope: !481)
!483 = !DILocation(line: 193, column: 44, scope: !481)
!484 = !DILocation(line: 193, column: 47, scope: !481)
!485 = !DILocation(line: 193, column: 58, scope: !481)
!486 = !DILocation(line: 193, column: 17, scope: !429)
!487 = !DILocation(line: 195, column: 17, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !48, line: 194, column: 13)
!489 = !DILocation(line: 198, column: 13, scope: !429)
!490 = !DILocation(line: 198, column: 18, scope: !429)
!491 = !DILocation(line: 198, column: 28, scope: !429)
!492 = !DILocation(line: 198, column: 39, scope: !429)
!493 = !DILocation(line: 198, column: 26, scope: !429)
!494 = !DILocation(line: 198, column: 55, scope: !429)
!495 = !DILocation(line: 200, column: 30, scope: !429)
!496 = !DILocation(line: 200, column: 23, scope: !429)
!497 = !DILocation(line: 200, column: 21, scope: !429)
!498 = !DILocation(line: 201, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !429, file: !48, line: 201, column: 17)
!500 = !DILocation(line: 201, column: 17, scope: !429)
!501 = !DILocation(line: 203, column: 18, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !48, line: 202, column: 13)
!503 = !DILocation(line: 203, column: 26, scope: !502)
!504 = !DILocation(line: 204, column: 13, scope: !502)
!505 = !DILocation(line: 205, column: 30, scope: !429)
!506 = !DILocation(line: 205, column: 23, scope: !429)
!507 = !DILocation(line: 205, column: 21, scope: !429)
!508 = !DILocation(line: 206, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !429, file: !48, line: 206, column: 17)
!510 = !DILocation(line: 206, column: 17, scope: !429)
!511 = !DILocation(line: 208, column: 18, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !48, line: 207, column: 13)
!513 = !DILocation(line: 208, column: 26, scope: !512)
!514 = !DILocation(line: 209, column: 13, scope: !512)
!515 = !DILocation(line: 210, column: 9, scope: !429)
!516 = !DILocation(line: 212, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !413, file: !48, line: 212, column: 13)
!518 = !DILocation(line: 212, column: 26, scope: !517)
!519 = !DILocation(line: 212, column: 13, scope: !413)
!520 = !DILocation(line: 214, column: 26, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !48, line: 213, column: 9)
!522 = !DILocation(line: 214, column: 13, scope: !521)
!523 = !DILocation(line: 215, column: 9, scope: !521)
!524 = !DILocation(line: 216, column: 13, scope: !525)
!525 = distinct !DILexicalBlock(scope: !413, file: !48, line: 216, column: 13)
!526 = !DILocation(line: 216, column: 26, scope: !525)
!527 = !DILocation(line: 216, column: 13, scope: !413)
!528 = !DILocation(line: 218, column: 26, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !48, line: 217, column: 9)
!530 = !DILocation(line: 218, column: 13, scope: !529)
!531 = !DILocation(line: 219, column: 9, scope: !529)
!532 = !DILocation(line: 227, column: 12, scope: !409)
!533 = !DILocation(line: 227, column: 5, scope: !409)
!534 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !535, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !42}
!537 = !DILocalVariable(name: "line", arg: 1, scope: !534, file: !3, line: 11, type: !42)
!538 = !DILocation(line: 11, column: 25, scope: !534)
!539 = !DILocation(line: 13, column: 1, scope: !534)
!540 = !DILocation(line: 14, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !3, line: 14, column: 8)
!542 = !DILocation(line: 14, column: 13, scope: !541)
!543 = !DILocation(line: 14, column: 8, scope: !534)
!544 = !DILocation(line: 16, column: 24, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 15, column: 5)
!546 = !DILocation(line: 16, column: 9, scope: !545)
!547 = !DILocation(line: 17, column: 5, scope: !545)
!548 = !DILocation(line: 18, column: 5, scope: !534)
!549 = !DILocation(line: 19, column: 1, scope: !534)
!550 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !535, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocalVariable(name: "line", arg: 1, scope: !550, file: !3, line: 20, type: !42)
!552 = !DILocation(line: 20, column: 29, scope: !550)
!553 = !DILocation(line: 22, column: 8, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 22, column: 8)
!555 = !DILocation(line: 22, column: 13, scope: !554)
!556 = !DILocation(line: 22, column: 8, scope: !550)
!557 = !DILocation(line: 24, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 23, column: 5)
!559 = !DILocation(line: 24, column: 9, scope: !558)
!560 = !DILocation(line: 25, column: 5, scope: !558)
!561 = !DILocation(line: 26, column: 1, scope: !550)
!562 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !563, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !290, line: 74, baseType: !23)
!567 = !DILocalVariable(name: "line", arg: 1, scope: !562, file: !3, line: 27, type: !565)
!568 = !DILocation(line: 27, column: 29, scope: !562)
!569 = !DILocation(line: 29, column: 8, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !3, line: 29, column: 8)
!571 = !DILocation(line: 29, column: 13, scope: !570)
!572 = !DILocation(line: 29, column: 8, scope: !562)
!573 = !DILocation(line: 31, column: 27, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !3, line: 30, column: 5)
!575 = !DILocation(line: 31, column: 9, scope: !574)
!576 = !DILocation(line: 32, column: 5, scope: !574)
!577 = !DILocation(line: 33, column: 1, scope: !562)
!578 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !579, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !23}
!581 = !DILocalVariable(name: "intNumber", arg: 1, scope: !578, file: !3, line: 35, type: !23)
!582 = !DILocation(line: 35, column: 24, scope: !578)
!583 = !DILocation(line: 37, column: 20, scope: !578)
!584 = !DILocation(line: 37, column: 5, scope: !578)
!585 = !DILocation(line: 38, column: 1, scope: !578)
!586 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !587, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!590 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !586, file: !3, line: 40, type: !589)
!591 = !DILocation(line: 40, column: 28, scope: !586)
!592 = !DILocation(line: 42, column: 21, scope: !586)
!593 = !DILocation(line: 42, column: 5, scope: !586)
!594 = !DILocation(line: 43, column: 1, scope: !586)
!595 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !596, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !598}
!598 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!599 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !595, file: !3, line: 45, type: !598)
!600 = !DILocation(line: 45, column: 28, scope: !595)
!601 = !DILocation(line: 47, column: 20, scope: !595)
!602 = !DILocation(line: 47, column: 5, scope: !595)
!603 = !DILocation(line: 48, column: 1, scope: !595)
!604 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !605, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !607}
!607 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!608 = !DILocalVariable(name: "longNumber", arg: 1, scope: !604, file: !3, line: 50, type: !607)
!609 = !DILocation(line: 50, column: 26, scope: !604)
!610 = !DILocation(line: 52, column: 21, scope: !604)
!611 = !DILocation(line: 52, column: 5, scope: !604)
!612 = !DILocation(line: 53, column: 1, scope: !604)
!613 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !614, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !617, line: 27, baseType: !618)
!617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !96, line: 44, baseType: !607)
!619 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !613, file: !3, line: 55, type: !616)
!620 = !DILocation(line: 55, column: 33, scope: !613)
!621 = !DILocation(line: 57, column: 29, scope: !613)
!622 = !DILocation(line: 57, column: 5, scope: !613)
!623 = !DILocation(line: 58, column: 1, scope: !613)
!624 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !625, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !289}
!627 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !624, file: !3, line: 60, type: !289)
!628 = !DILocation(line: 60, column: 29, scope: !624)
!629 = !DILocation(line: 62, column: 21, scope: !624)
!630 = !DILocation(line: 62, column: 5, scope: !624)
!631 = !DILocation(line: 63, column: 1, scope: !624)
!632 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !633, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !43}
!635 = !DILocalVariable(name: "charHex", arg: 1, scope: !632, file: !3, line: 65, type: !43)
!636 = !DILocation(line: 65, column: 29, scope: !632)
!637 = !DILocation(line: 67, column: 22, scope: !632)
!638 = !DILocation(line: 67, column: 5, scope: !632)
!639 = !DILocation(line: 68, column: 1, scope: !632)
!640 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !641, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !566}
!643 = !DILocalVariable(name: "wideChar", arg: 1, scope: !640, file: !3, line: 70, type: !566)
!644 = !DILocation(line: 70, column: 29, scope: !640)
!645 = !DILocalVariable(name: "s", scope: !640, file: !3, line: 74, type: !646)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 64, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 2)
!649 = !DILocation(line: 74, column: 13, scope: !640)
!650 = !DILocation(line: 75, column: 16, scope: !640)
!651 = !DILocation(line: 75, column: 9, scope: !640)
!652 = !DILocation(line: 75, column: 14, scope: !640)
!653 = !DILocation(line: 76, column: 9, scope: !640)
!654 = !DILocation(line: 76, column: 14, scope: !640)
!655 = !DILocation(line: 77, column: 21, scope: !640)
!656 = !DILocation(line: 77, column: 5, scope: !640)
!657 = !DILocation(line: 78, column: 1, scope: !640)
!658 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !659, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !7}
!661 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !658, file: !3, line: 80, type: !7)
!662 = !DILocation(line: 80, column: 33, scope: !658)
!663 = !DILocation(line: 82, column: 20, scope: !658)
!664 = !DILocation(line: 82, column: 5, scope: !658)
!665 = !DILocation(line: 83, column: 1, scope: !658)
!666 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !667, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !25}
!669 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !666, file: !3, line: 85, type: !25)
!670 = !DILocation(line: 85, column: 45, scope: !666)
!671 = !DILocation(line: 87, column: 22, scope: !666)
!672 = !DILocation(line: 87, column: 5, scope: !666)
!673 = !DILocation(line: 88, column: 1, scope: !666)
!674 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !675, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !677}
!677 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!678 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !674, file: !3, line: 90, type: !677)
!679 = !DILocation(line: 90, column: 29, scope: !674)
!680 = !DILocation(line: 92, column: 20, scope: !674)
!681 = !DILocation(line: 92, column: 5, scope: !674)
!682 = !DILocation(line: 93, column: 1, scope: !674)
!683 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !684, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !688, line: 100, baseType: !689)
!688 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !688, line: 96, size: 64, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !689, file: !688, line: 98, baseType: !23, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !689, file: !688, line: 99, baseType: !23, size: 32, offset: 32)
!693 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !683, file: !3, line: 95, type: !686)
!694 = !DILocation(line: 95, column: 40, scope: !683)
!695 = !DILocation(line: 97, column: 26, scope: !683)
!696 = !DILocation(line: 97, column: 47, scope: !683)
!697 = !DILocation(line: 97, column: 55, scope: !683)
!698 = !DILocation(line: 97, column: 76, scope: !683)
!699 = !DILocation(line: 97, column: 5, scope: !683)
!700 = !DILocation(line: 98, column: 1, scope: !683)
!701 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !702, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704, !289}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!705 = !DILocalVariable(name: "bytes", arg: 1, scope: !701, file: !3, line: 100, type: !704)
!706 = !DILocation(line: 100, column: 38, scope: !701)
!707 = !DILocalVariable(name: "numBytes", arg: 2, scope: !701, file: !3, line: 100, type: !289)
!708 = !DILocation(line: 100, column: 52, scope: !701)
!709 = !DILocalVariable(name: "i", scope: !701, file: !3, line: 102, type: !289)
!710 = !DILocation(line: 102, column: 12, scope: !701)
!711 = !DILocation(line: 103, column: 12, scope: !712)
!712 = distinct !DILexicalBlock(scope: !701, file: !3, line: 103, column: 5)
!713 = !DILocation(line: 103, column: 10, scope: !712)
!714 = !DILocation(line: 103, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 103, column: 5)
!716 = !DILocation(line: 103, column: 21, scope: !715)
!717 = !DILocation(line: 103, column: 19, scope: !715)
!718 = !DILocation(line: 103, column: 5, scope: !712)
!719 = !DILocation(line: 105, column: 24, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 104, column: 5)
!721 = !DILocation(line: 105, column: 30, scope: !720)
!722 = !DILocation(line: 105, column: 9, scope: !720)
!723 = !DILocation(line: 106, column: 5, scope: !720)
!724 = !DILocation(line: 103, column: 31, scope: !715)
!725 = !DILocation(line: 103, column: 5, scope: !715)
!726 = distinct !{!726, !718, !727, !156}
!727 = !DILocation(line: 106, column: 5, scope: !712)
!728 = !DILocation(line: 107, column: 5, scope: !701)
!729 = !DILocation(line: 108, column: 1, scope: !701)
!730 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !731, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!731 = !DISubroutineType(types: !732)
!732 = !{!289, !704, !289, !42}
!733 = !DILocalVariable(name: "bytes", arg: 1, scope: !730, file: !3, line: 113, type: !704)
!734 = !DILocation(line: 113, column: 39, scope: !730)
!735 = !DILocalVariable(name: "numBytes", arg: 2, scope: !730, file: !3, line: 113, type: !289)
!736 = !DILocation(line: 113, column: 53, scope: !730)
!737 = !DILocalVariable(name: "hex", arg: 3, scope: !730, file: !3, line: 113, type: !42)
!738 = !DILocation(line: 113, column: 71, scope: !730)
!739 = !DILocalVariable(name: "numWritten", scope: !730, file: !3, line: 115, type: !289)
!740 = !DILocation(line: 115, column: 12, scope: !730)
!741 = !DILocation(line: 121, column: 5, scope: !730)
!742 = !DILocation(line: 121, column: 12, scope: !730)
!743 = !DILocation(line: 121, column: 25, scope: !730)
!744 = !DILocation(line: 121, column: 23, scope: !730)
!745 = !DILocation(line: 121, column: 34, scope: !730)
!746 = !DILocation(line: 121, column: 37, scope: !730)
!747 = !DILocation(line: 121, column: 67, scope: !730)
!748 = !DILocation(line: 121, column: 70, scope: !730)
!749 = !DILocation(line: 0, scope: !730)
!750 = !DILocalVariable(name: "byte", scope: !751, file: !3, line: 123, type: !23)
!751 = distinct !DILexicalBlock(scope: !730, file: !3, line: 122, column: 5)
!752 = !DILocation(line: 123, column: 13, scope: !751)
!753 = !DILocation(line: 124, column: 17, scope: !751)
!754 = !DILocation(line: 124, column: 25, scope: !751)
!755 = !DILocation(line: 124, column: 23, scope: !751)
!756 = !DILocation(line: 124, column: 9, scope: !751)
!757 = !DILocation(line: 125, column: 45, scope: !751)
!758 = !DILocation(line: 125, column: 29, scope: !751)
!759 = !DILocation(line: 125, column: 9, scope: !751)
!760 = !DILocation(line: 125, column: 15, scope: !751)
!761 = !DILocation(line: 125, column: 27, scope: !751)
!762 = !DILocation(line: 126, column: 9, scope: !751)
!763 = distinct !{!763, !741, !764, !156}
!764 = !DILocation(line: 127, column: 5, scope: !730)
!765 = !DILocation(line: 129, column: 12, scope: !730)
!766 = !DILocation(line: 129, column: 5, scope: !730)
!767 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !768, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DISubroutineType(types: !769)
!769 = !{!289, !704, !289, !565}
!770 = !DILocalVariable(name: "bytes", arg: 1, scope: !767, file: !3, line: 135, type: !704)
!771 = !DILocation(line: 135, column: 41, scope: !767)
!772 = !DILocalVariable(name: "numBytes", arg: 2, scope: !767, file: !3, line: 135, type: !289)
!773 = !DILocation(line: 135, column: 55, scope: !767)
!774 = !DILocalVariable(name: "hex", arg: 3, scope: !767, file: !3, line: 135, type: !565)
!775 = !DILocation(line: 135, column: 76, scope: !767)
!776 = !DILocalVariable(name: "numWritten", scope: !767, file: !3, line: 137, type: !289)
!777 = !DILocation(line: 137, column: 12, scope: !767)
!778 = !DILocation(line: 143, column: 5, scope: !767)
!779 = !DILocation(line: 143, column: 12, scope: !767)
!780 = !DILocation(line: 143, column: 25, scope: !767)
!781 = !DILocation(line: 143, column: 23, scope: !767)
!782 = !DILocation(line: 143, column: 34, scope: !767)
!783 = !DILocation(line: 143, column: 47, scope: !767)
!784 = !DILocation(line: 143, column: 55, scope: !767)
!785 = !DILocation(line: 143, column: 53, scope: !767)
!786 = !DILocation(line: 143, column: 37, scope: !767)
!787 = !DILocation(line: 143, column: 68, scope: !767)
!788 = !DILocation(line: 143, column: 81, scope: !767)
!789 = !DILocation(line: 143, column: 89, scope: !767)
!790 = !DILocation(line: 143, column: 87, scope: !767)
!791 = !DILocation(line: 143, column: 100, scope: !767)
!792 = !DILocation(line: 143, column: 71, scope: !767)
!793 = !DILocation(line: 0, scope: !767)
!794 = !DILocalVariable(name: "byte", scope: !795, file: !3, line: 145, type: !23)
!795 = distinct !DILexicalBlock(scope: !767, file: !3, line: 144, column: 5)
!796 = !DILocation(line: 145, column: 13, scope: !795)
!797 = !DILocation(line: 146, column: 18, scope: !795)
!798 = !DILocation(line: 146, column: 26, scope: !795)
!799 = !DILocation(line: 146, column: 24, scope: !795)
!800 = !DILocation(line: 146, column: 9, scope: !795)
!801 = !DILocation(line: 147, column: 45, scope: !795)
!802 = !DILocation(line: 147, column: 29, scope: !795)
!803 = !DILocation(line: 147, column: 9, scope: !795)
!804 = !DILocation(line: 147, column: 15, scope: !795)
!805 = !DILocation(line: 147, column: 27, scope: !795)
!806 = !DILocation(line: 148, column: 9, scope: !795)
!807 = distinct !{!807, !778, !808, !156}
!808 = !DILocation(line: 149, column: 5, scope: !767)
!809 = !DILocation(line: 151, column: 12, scope: !767)
!810 = !DILocation(line: 151, column: 5, scope: !767)
!811 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !812, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DISubroutineType(types: !813)
!813 = !{!23}
!814 = !DILocation(line: 158, column: 5, scope: !811)
!815 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !812, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!816 = !DILocation(line: 163, column: 5, scope: !815)
!817 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !812, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!818 = !DILocation(line: 168, column: 13, scope: !817)
!819 = !DILocation(line: 168, column: 20, scope: !817)
!820 = !DILocation(line: 168, column: 5, scope: !817)
!821 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!822 = !DILocation(line: 187, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!824 = !DILocation(line: 188, column: 16, scope: !823)
!825 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!826 = !DILocation(line: 189, column: 16, scope: !825)
!827 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!828 = !DILocation(line: 190, column: 16, scope: !827)
!829 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!830 = !DILocation(line: 191, column: 16, scope: !829)
!831 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!832 = !DILocation(line: 192, column: 16, scope: !831)
!833 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!834 = !DILocation(line: 193, column: 16, scope: !833)
!835 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!836 = !DILocation(line: 194, column: 16, scope: !835)
!837 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!838 = !DILocation(line: 195, column: 16, scope: !837)
!839 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!840 = !DILocation(line: 198, column: 15, scope: !839)
!841 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!842 = !DILocation(line: 199, column: 15, scope: !841)
!843 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!844 = !DILocation(line: 200, column: 15, scope: !843)
!845 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!846 = !DILocation(line: 201, column: 15, scope: !845)
!847 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!848 = !DILocation(line: 202, column: 15, scope: !847)
!849 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!850 = !DILocation(line: 203, column: 15, scope: !849)
!851 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!852 = !DILocation(line: 204, column: 15, scope: !851)
!853 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!854 = !DILocation(line: 205, column: 15, scope: !853)
!855 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!856 = !DILocation(line: 206, column: 15, scope: !855)
