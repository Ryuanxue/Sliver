; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_14_bad() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  %1 = load i32, i32* @globalFive, align 4, !dbg !117
  %cmp = icmp eq i32 %1, 5, !dbg !119
  br i1 %cmp, label %if.then, label %if.end31, !dbg !120

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !121, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !125, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 -1, i32* %connectSocket, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !151, metadata !DIExpression()), !dbg !155
  %2 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i64 @strlen(i8* %2) #7, !dbg !157
  store i64 %call, i64* %dataLen, align 8, !dbg !155
  br label %do.body, !dbg !158

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !159
  store i32 %call1, i32* %connectSocket, align 4, !dbg !161
  %3 = load i32, i32* %connectSocket, align 4, !dbg !162
  %cmp2 = icmp eq i32 %3, -1, !dbg !164
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !165

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !166

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !168
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !169
  store i16 2, i16* %sin_family, align 4, !dbg !170
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !171
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !172
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !173
  store i32 %call4, i32* %s_addr, align 4, !dbg !174
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !175
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !176
  store i16 %call5, i16* %sin_port, align 2, !dbg !177
  %5 = load i32, i32* %connectSocket, align 4, !dbg !178
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !180
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !181
  %cmp7 = icmp eq i32 %call6, -1, !dbg !182
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !183

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !184

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !186
  %8 = load i8*, i8** %data, align 8, !dbg !187
  %9 = load i64, i64* %dataLen, align 8, !dbg !188
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !189
  %10 = load i64, i64* %dataLen, align 8, !dbg !190
  %sub = sub i64 100, %10, !dbg !191
  %sub10 = sub i64 %sub, 1, !dbg !192
  %mul = mul i64 1, %sub10, !dbg !193
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !194
  %conv = trunc i64 %call11 to i32, !dbg !194
  store i32 %conv, i32* %recvResult, align 4, !dbg !195
  %11 = load i32, i32* %recvResult, align 4, !dbg !196
  %cmp12 = icmp eq i32 %11, -1, !dbg !198
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !199

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !200
  %cmp14 = icmp eq i32 %12, 0, !dbg !201
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !202

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !203

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !205
  %14 = load i64, i64* %dataLen, align 8, !dbg !206
  %15 = load i32, i32* %recvResult, align 4, !dbg !207
  %conv18 = sext i32 %15 to i64, !dbg !207
  %div = udiv i64 %conv18, 1, !dbg !208
  %add = add i64 %14, %div, !dbg !209
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !205
  store i8 0, i8* %arrayidx, align 1, !dbg !210
  %16 = load i8*, i8** %data, align 8, !dbg !211
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !212
  store i8* %call19, i8** %replace, align 8, !dbg !213
  %17 = load i8*, i8** %replace, align 8, !dbg !214
  %tobool = icmp ne i8* %17, null, !dbg !214
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !216

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !217
  store i8 0, i8* %18, align 1, !dbg !219
  br label %if.end21, !dbg !220

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !221
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !222
  store i8* %call22, i8** %replace, align 8, !dbg !223
  %20 = load i8*, i8** %replace, align 8, !dbg !224
  %tobool23 = icmp ne i8* %20, null, !dbg !224
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !226

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !227
  store i8 0, i8* %21, align 1, !dbg !229
  br label %if.end25, !dbg !230

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !231

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !232
  %cmp26 = icmp ne i32 %22, -1, !dbg !234
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !235

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !236
  %call29 = call i32 @close(i32 %23), !dbg !238
  br label %if.end30, !dbg !239

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !240

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalFive, align 4, !dbg !241
  %cmp32 = icmp eq i32 %24, 5, !dbg !243
  br i1 %cmp32, label %if.then34, label %if.end43, !dbg !244

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %n, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !251, metadata !DIExpression()), !dbg !252
  %25 = load i8*, i8** %data, align 8, !dbg !253
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !255
  %cmp36 = icmp eq i32 %call35, 1, !dbg !256
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !257

if.then38:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !258
  store i32 0, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.inc, %if.then38
  %26 = load i32, i32* %i, align 4, !dbg !263
  %27 = load i32, i32* %n, align 4, !dbg !265
  %cmp39 = icmp slt i32 %26, %27, !dbg !266
  br i1 %cmp39, label %for.body, label %for.end, !dbg !267

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !268
  %inc = add nsw i32 %28, 1, !dbg !268
  store i32 %inc, i32* %intVariable, align 4, !dbg !268
  br label %for.inc, !dbg !270

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !271
  %inc41 = add nsw i32 %29, 1, !dbg !271
  store i32 %inc41, i32* %i, align 4, !dbg !271
  br label %for.cond, !dbg !272, !llvm.loop !273

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !276
  call void @printIntLine(i32 %30), !dbg !277
  br label %if.end42, !dbg !278

if.end42:                                         ; preds = %for.end, %if.then34
  br label %if.end43, !dbg !279

if.end43:                                         ; preds = %if.end42, %if.end31
  ret void, !dbg !280
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !281 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !285
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !285
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !286
  store i8* %arraydecay, i8** %data, align 8, !dbg !287
  %1 = load i32, i32* @globalFive, align 4, !dbg !288
  %cmp = icmp eq i32 %1, 5, !dbg !290
  br i1 %cmp, label %if.then, label %if.end31, !dbg !291

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !292, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 -1, i32* %connectSocket, align 4, !dbg !301
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !302, metadata !DIExpression()), !dbg !303
  %2 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i64 @strlen(i8* %2) #7, !dbg !305
  store i64 %call, i64* %dataLen, align 8, !dbg !303
  br label %do.body, !dbg !306

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !307
  store i32 %call1, i32* %connectSocket, align 4, !dbg !309
  %3 = load i32, i32* %connectSocket, align 4, !dbg !310
  %cmp2 = icmp eq i32 %3, -1, !dbg !312
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !313

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !314

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !316
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !316
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !317
  store i16 2, i16* %sin_family, align 4, !dbg !318
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !319
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !320
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !321
  store i32 %call4, i32* %s_addr, align 4, !dbg !322
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !323
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !324
  store i16 %call5, i16* %sin_port, align 2, !dbg !325
  %5 = load i32, i32* %connectSocket, align 4, !dbg !326
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !328
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !329
  %cmp7 = icmp eq i32 %call6, -1, !dbg !330
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !331

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !332

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !334
  %8 = load i8*, i8** %data, align 8, !dbg !335
  %9 = load i64, i64* %dataLen, align 8, !dbg !336
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !337
  %10 = load i64, i64* %dataLen, align 8, !dbg !338
  %sub = sub i64 100, %10, !dbg !339
  %sub10 = sub i64 %sub, 1, !dbg !340
  %mul = mul i64 1, %sub10, !dbg !341
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !342
  %conv = trunc i64 %call11 to i32, !dbg !342
  store i32 %conv, i32* %recvResult, align 4, !dbg !343
  %11 = load i32, i32* %recvResult, align 4, !dbg !344
  %cmp12 = icmp eq i32 %11, -1, !dbg !346
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !347

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !348
  %cmp14 = icmp eq i32 %12, 0, !dbg !349
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !350

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !351

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !353
  %14 = load i64, i64* %dataLen, align 8, !dbg !354
  %15 = load i32, i32* %recvResult, align 4, !dbg !355
  %conv18 = sext i32 %15 to i64, !dbg !355
  %div = udiv i64 %conv18, 1, !dbg !356
  %add = add i64 %14, %div, !dbg !357
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !353
  store i8 0, i8* %arrayidx, align 1, !dbg !358
  %16 = load i8*, i8** %data, align 8, !dbg !359
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !360
  store i8* %call19, i8** %replace, align 8, !dbg !361
  %17 = load i8*, i8** %replace, align 8, !dbg !362
  %tobool = icmp ne i8* %17, null, !dbg !362
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !364

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !365
  store i8 0, i8* %18, align 1, !dbg !367
  br label %if.end21, !dbg !368

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !369
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !370
  store i8* %call22, i8** %replace, align 8, !dbg !371
  %20 = load i8*, i8** %replace, align 8, !dbg !372
  %tobool23 = icmp ne i8* %20, null, !dbg !372
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !374

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !375
  store i8 0, i8* %21, align 1, !dbg !377
  br label %if.end25, !dbg !378

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !379

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !380
  %cmp26 = icmp ne i32 %22, -1, !dbg !382
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !383

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !384
  %call29 = call i32 @close(i32 %23), !dbg !386
  br label %if.end30, !dbg !387

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !388

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalFive, align 4, !dbg !389
  %cmp32 = icmp ne i32 %24, 5, !dbg !391
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !392

if.then34:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !393
  br label %if.end47, !dbg !395

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !396, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %n, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !402, metadata !DIExpression()), !dbg !403
  %25 = load i8*, i8** %data, align 8, !dbg !404
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !406
  %cmp36 = icmp eq i32 %call35, 1, !dbg !407
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !408

if.then38:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !409
  %cmp39 = icmp slt i32 %26, 10000, !dbg !412
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !413

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !414
  store i32 0, i32* %i, align 4, !dbg !416
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !419
  %28 = load i32, i32* %n, align 4, !dbg !421
  %cmp42 = icmp slt i32 %27, %28, !dbg !422
  br i1 %cmp42, label %for.body, label %for.end, !dbg !423

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !424
  %inc = add nsw i32 %29, 1, !dbg !424
  store i32 %inc, i32* %intVariable, align 4, !dbg !424
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !427
  %inc44 = add nsw i32 %30, 1, !dbg !427
  store i32 %inc44, i32* %i, align 4, !dbg !427
  br label %for.cond, !dbg !428, !llvm.loop !429

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !431
  call void @printIntLine(i32 %31), !dbg !432
  br label %if.end45, !dbg !433

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !434

if.end46:                                         ; preds = %if.end45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !436 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !440
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !441
  store i8* %arraydecay, i8** %data, align 8, !dbg !442
  %1 = load i32, i32* @globalFive, align 4, !dbg !443
  %cmp = icmp eq i32 %1, 5, !dbg !445
  br i1 %cmp, label %if.then, label %if.end31, !dbg !446

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !447, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !455, metadata !DIExpression()), !dbg !456
  store i32 -1, i32* %connectSocket, align 4, !dbg !456
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !457, metadata !DIExpression()), !dbg !458
  %2 = load i8*, i8** %data, align 8, !dbg !459
  %call = call i64 @strlen(i8* %2) #7, !dbg !460
  store i64 %call, i64* %dataLen, align 8, !dbg !458
  br label %do.body, !dbg !461

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !462
  store i32 %call1, i32* %connectSocket, align 4, !dbg !464
  %3 = load i32, i32* %connectSocket, align 4, !dbg !465
  %cmp2 = icmp eq i32 %3, -1, !dbg !467
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !468

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !469

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !471
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !471
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !472
  store i16 2, i16* %sin_family, align 4, !dbg !473
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !474
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !475
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !476
  store i32 %call4, i32* %s_addr, align 4, !dbg !477
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !478
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !479
  store i16 %call5, i16* %sin_port, align 2, !dbg !480
  %5 = load i32, i32* %connectSocket, align 4, !dbg !481
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !483
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !484
  %cmp7 = icmp eq i32 %call6, -1, !dbg !485
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !486

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !487

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !489
  %8 = load i8*, i8** %data, align 8, !dbg !490
  %9 = load i64, i64* %dataLen, align 8, !dbg !491
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !492
  %10 = load i64, i64* %dataLen, align 8, !dbg !493
  %sub = sub i64 100, %10, !dbg !494
  %sub10 = sub i64 %sub, 1, !dbg !495
  %mul = mul i64 1, %sub10, !dbg !496
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !497
  %conv = trunc i64 %call11 to i32, !dbg !497
  store i32 %conv, i32* %recvResult, align 4, !dbg !498
  %11 = load i32, i32* %recvResult, align 4, !dbg !499
  %cmp12 = icmp eq i32 %11, -1, !dbg !501
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !502

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !503
  %cmp14 = icmp eq i32 %12, 0, !dbg !504
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !505

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !506

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !508
  %14 = load i64, i64* %dataLen, align 8, !dbg !509
  %15 = load i32, i32* %recvResult, align 4, !dbg !510
  %conv18 = sext i32 %15 to i64, !dbg !510
  %div = udiv i64 %conv18, 1, !dbg !511
  %add = add i64 %14, %div, !dbg !512
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !508
  store i8 0, i8* %arrayidx, align 1, !dbg !513
  %16 = load i8*, i8** %data, align 8, !dbg !514
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !515
  store i8* %call19, i8** %replace, align 8, !dbg !516
  %17 = load i8*, i8** %replace, align 8, !dbg !517
  %tobool = icmp ne i8* %17, null, !dbg !517
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !519

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !520
  store i8 0, i8* %18, align 1, !dbg !522
  br label %if.end21, !dbg !523

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !524
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !525
  store i8* %call22, i8** %replace, align 8, !dbg !526
  %20 = load i8*, i8** %replace, align 8, !dbg !527
  %tobool23 = icmp ne i8* %20, null, !dbg !527
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !529

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !530
  store i8 0, i8* %21, align 1, !dbg !532
  br label %if.end25, !dbg !533

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !534

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !535
  %cmp26 = icmp ne i32 %22, -1, !dbg !537
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !538

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !539
  %call29 = call i32 @close(i32 %23), !dbg !541
  br label %if.end30, !dbg !542

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !543

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalFive, align 4, !dbg !544
  %cmp32 = icmp eq i32 %24, 5, !dbg !546
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !547

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %n, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !554, metadata !DIExpression()), !dbg !555
  %25 = load i8*, i8** %data, align 8, !dbg !556
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !558
  %cmp36 = icmp eq i32 %call35, 1, !dbg !559
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !560

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %n, align 4, !dbg !561
  %cmp39 = icmp slt i32 %26, 10000, !dbg !564
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !565

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !566
  store i32 0, i32* %i, align 4, !dbg !568
  br label %for.cond, !dbg !570

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !571
  %28 = load i32, i32* %n, align 4, !dbg !573
  %cmp42 = icmp slt i32 %27, %28, !dbg !574
  br i1 %cmp42, label %for.body, label %for.end, !dbg !575

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !576
  %inc = add nsw i32 %29, 1, !dbg !576
  store i32 %inc, i32* %intVariable, align 4, !dbg !576
  br label %for.inc, !dbg !578

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !579
  %inc44 = add nsw i32 %30, 1, !dbg !579
  store i32 %inc44, i32* %i, align 4, !dbg !579
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !583
  call void @printIntLine(i32 %31), !dbg !584
  br label %if.end45, !dbg !585

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !586

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47, !dbg !587

if.end47:                                         ; preds = %if.end46, %if.end31
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !589 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !593
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !593
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !594
  store i8* %arraydecay, i8** %data, align 8, !dbg !595
  %1 = load i32, i32* @globalFive, align 4, !dbg !596
  %cmp = icmp ne i32 %1, 5, !dbg !598
  br i1 %cmp, label %if.then, label %if.else, !dbg !599

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !600
  br label %if.end, !dbg !602

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !603
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !605
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !606
  %cmp1 = icmp eq i32 %3, 5, !dbg !608
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !609

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !610, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %n, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !616, metadata !DIExpression()), !dbg !617
  %4 = load i8*, i8** %data, align 8, !dbg !618
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !620
  %cmp4 = icmp eq i32 %call3, 1, !dbg !621
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !622

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !623
  store i32 0, i32* %i, align 4, !dbg !625
  br label %for.cond, !dbg !627

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !628
  %6 = load i32, i32* %n, align 4, !dbg !630
  %cmp6 = icmp slt i32 %5, %6, !dbg !631
  br i1 %cmp6, label %for.body, label %for.end, !dbg !632

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !633
  %inc = add nsw i32 %7, 1, !dbg !633
  store i32 %inc, i32* %intVariable, align 4, !dbg !633
  br label %for.inc, !dbg !635

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !636
  %inc7 = add nsw i32 %8, 1, !dbg !636
  store i32 %inc7, i32* %i, align 4, !dbg !636
  br label %for.cond, !dbg !637, !llvm.loop !638

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !640
  call void @printIntLine(i32 %9), !dbg !641
  br label %if.end8, !dbg !642

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !643

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !644
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !645 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !648, metadata !DIExpression()), !dbg !649
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !649
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !649
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !650
  store i8* %arraydecay, i8** %data, align 8, !dbg !651
  %1 = load i32, i32* @globalFive, align 4, !dbg !652
  %cmp = icmp eq i32 %1, 5, !dbg !654
  br i1 %cmp, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !656
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !658
  br label %if.end, !dbg !659

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !660
  %cmp1 = icmp eq i32 %3, 5, !dbg !662
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !663

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !664, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata i32* %n, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !670, metadata !DIExpression()), !dbg !671
  %4 = load i8*, i8** %data, align 8, !dbg !672
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !674
  %cmp4 = icmp eq i32 %call3, 1, !dbg !675
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !676

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !677
  store i32 0, i32* %i, align 4, !dbg !679
  br label %for.cond, !dbg !681

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !682
  %6 = load i32, i32* %n, align 4, !dbg !684
  %cmp6 = icmp slt i32 %5, %6, !dbg !685
  br i1 %cmp6, label %for.body, label %for.end, !dbg !686

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !687
  %inc = add nsw i32 %7, 1, !dbg !687
  store i32 %inc, i32* %intVariable, align 4, !dbg !687
  br label %for.inc, !dbg !689

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !690
  %inc7 = add nsw i32 %8, 1, !dbg !690
  store i32 %inc7, i32* %i, align 4, !dbg !690
  br label %for.cond, !dbg !691, !llvm.loop !692

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !694
  call void @printIntLine(i32 %9), !dbg !695
  br label %if.end8, !dbg !696

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !697

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_14_good() #0 !dbg !699 {
entry:
  call void @goodB2G1(), !dbg !700
  call void @goodB2G2(), !dbg !701
  call void @goodG2B1(), !dbg !702
  call void @goodG2B2(), !dbg !703
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !705 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !708, metadata !DIExpression()), !dbg !709
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !710
  %0 = load i8*, i8** %line.addr, align 8, !dbg !711
  %cmp = icmp ne i8* %0, null, !dbg !713
  br i1 %cmp, label %if.then, label %if.end, !dbg !714

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !715
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !717
  br label %if.end, !dbg !718

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !719
  ret void, !dbg !720
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !721 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load i8*, i8** %line.addr, align 8, !dbg !724
  %cmp = icmp ne i8* %0, null, !dbg !726
  br i1 %cmp, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !728
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !730
  br label %if.end, !dbg !731

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !733 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !738, metadata !DIExpression()), !dbg !739
  %0 = load i32*, i32** %line.addr, align 8, !dbg !740
  %cmp = icmp ne i32* %0, null, !dbg !742
  br i1 %cmp, label %if.then, label %if.end, !dbg !743

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !744
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !746
  br label %if.end, !dbg !747

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !748
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !749 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !752, metadata !DIExpression()), !dbg !753
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !754
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !755
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !757 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !761, metadata !DIExpression()), !dbg !762
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !763
  %conv = sext i16 %0 to i32, !dbg !763
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !766 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !770, metadata !DIExpression()), !dbg !771
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !772
  %conv = fpext float %0 to double, !dbg !772
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !775 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !779, metadata !DIExpression()), !dbg !780
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !781
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !782
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !784 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !792
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !793
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !795 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !800
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !801
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !803 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !806, metadata !DIExpression()), !dbg !807
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !808
  %conv = sext i8 %0 to i32, !dbg !808
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !809
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !811 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !816, metadata !DIExpression()), !dbg !820
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !821
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !822
  store i32 %0, i32* %arrayidx, align 4, !dbg !823
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !824
  store i32 0, i32* %arrayidx1, align 4, !dbg !825
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !826
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !827
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !829 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !834
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !835
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !837 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !842
  %conv = zext i8 %0 to i32, !dbg !842
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !843
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !845 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !851
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !852
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !854 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !866
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !867
  %1 = load i32, i32* %intOne, align 4, !dbg !867
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !868
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !869
  %3 = load i32, i32* %intTwo, align 4, !dbg !869
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !870
  ret void, !dbg !871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !872 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !876, metadata !DIExpression()), !dbg !877
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata i64* %i, metadata !880, metadata !DIExpression()), !dbg !881
  store i64 0, i64* %i, align 8, !dbg !882
  br label %for.cond, !dbg !884

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !885
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !887
  %cmp = icmp ult i64 %0, %1, !dbg !888
  br i1 %cmp, label %for.body, label %for.end, !dbg !889

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !890
  %3 = load i64, i64* %i, align 8, !dbg !892
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !890
  %4 = load i8, i8* %arrayidx, align 1, !dbg !890
  %conv = zext i8 %4 to i32, !dbg !890
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !893
  br label %for.inc, !dbg !894

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !895
  %inc = add i64 %5, 1, !dbg !895
  store i64 %inc, i64* %i, align 8, !dbg !895
  br label %for.cond, !dbg !896, !llvm.loop !897

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !899
  ret void, !dbg !900
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !901 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !906, metadata !DIExpression()), !dbg !907
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !910, metadata !DIExpression()), !dbg !911
  store i64 0, i64* %numWritten, align 8, !dbg !911
  br label %while.cond, !dbg !912

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !913
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !914
  %cmp = icmp ult i64 %0, %1, !dbg !915
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !916

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !917
  %2 = load i16*, i16** %call, align 8, !dbg !917
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !917
  %4 = load i64, i64* %numWritten, align 8, !dbg !917
  %mul = mul i64 2, %4, !dbg !917
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !917
  %5 = load i8, i8* %arrayidx, align 1, !dbg !917
  %conv = sext i8 %5 to i32, !dbg !917
  %idxprom = sext i32 %conv to i64, !dbg !917
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !917
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !917
  %conv2 = zext i16 %6 to i32, !dbg !917
  %and = and i32 %conv2, 4096, !dbg !917
  %tobool = icmp ne i32 %and, 0, !dbg !917
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !918

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !919
  %7 = load i16*, i16** %call3, align 8, !dbg !919
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !919
  %9 = load i64, i64* %numWritten, align 8, !dbg !919
  %mul4 = mul i64 2, %9, !dbg !919
  %add = add i64 %mul4, 1, !dbg !919
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !919
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !919
  %conv6 = sext i8 %10 to i32, !dbg !919
  %idxprom7 = sext i32 %conv6 to i64, !dbg !919
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !919
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !919
  %conv9 = zext i16 %11 to i32, !dbg !919
  %and10 = and i32 %conv9, 4096, !dbg !919
  %tobool11 = icmp ne i32 %and10, 0, !dbg !918
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !920
  br i1 %12, label %while.body, label %while.end, !dbg !912

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !921, metadata !DIExpression()), !dbg !923
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !924
  %14 = load i64, i64* %numWritten, align 8, !dbg !925
  %mul12 = mul i64 2, %14, !dbg !926
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !924
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !927
  %15 = load i32, i32* %byte, align 4, !dbg !928
  %conv15 = trunc i32 %15 to i8, !dbg !929
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !930
  %17 = load i64, i64* %numWritten, align 8, !dbg !931
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !930
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !932
  %18 = load i64, i64* %numWritten, align 8, !dbg !933
  %inc = add i64 %18, 1, !dbg !933
  store i64 %inc, i64* %numWritten, align 8, !dbg !933
  br label %while.cond, !dbg !912, !llvm.loop !934

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !936
  ret i64 %19, !dbg !937
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !938 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !941, metadata !DIExpression()), !dbg !942
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !943, metadata !DIExpression()), !dbg !944
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !947, metadata !DIExpression()), !dbg !948
  store i64 0, i64* %numWritten, align 8, !dbg !948
  br label %while.cond, !dbg !949

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !950
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !951
  %cmp = icmp ult i64 %0, %1, !dbg !952
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !953

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !954
  %3 = load i64, i64* %numWritten, align 8, !dbg !955
  %mul = mul i64 2, %3, !dbg !956
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !954
  %4 = load i32, i32* %arrayidx, align 4, !dbg !954
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !957
  %tobool = icmp ne i32 %call, 0, !dbg !957
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !958

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !959
  %6 = load i64, i64* %numWritten, align 8, !dbg !960
  %mul1 = mul i64 2, %6, !dbg !961
  %add = add i64 %mul1, 1, !dbg !962
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !959
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !959
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !963
  %tobool4 = icmp ne i32 %call3, 0, !dbg !958
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !964
  br i1 %8, label %while.body, label %while.end, !dbg !949

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !965, metadata !DIExpression()), !dbg !967
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !968
  %10 = load i64, i64* %numWritten, align 8, !dbg !969
  %mul5 = mul i64 2, %10, !dbg !970
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !968
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !971
  %11 = load i32, i32* %byte, align 4, !dbg !972
  %conv = trunc i32 %11 to i8, !dbg !973
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !974
  %13 = load i64, i64* %numWritten, align 8, !dbg !975
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !974
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !976
  %14 = load i64, i64* %numWritten, align 8, !dbg !977
  %inc = add i64 %14, 1, !dbg !977
  store i64 %inc, i64* %numWritten, align 8, !dbg !977
  br label %while.cond, !dbg !949, !llvm.loop !978

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !980
  ret i64 %15, !dbg !981
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !982 {
entry:
  ret i32 1, !dbg !985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !986 {
entry:
  ret i32 0, !dbg !987
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !988 {
entry:
  %call = call i32 @rand() #8, !dbg !989
  %rem = srem i32 %call, 2, !dbg !990
  ret i32 %rem, !dbg !991
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !992 {
entry:
  ret void, !dbg !993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !994 {
entry:
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !996 {
entry:
  ret void, !dbg !997
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !998 {
entry:
  ret void, !dbg !999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !1000 {
entry:
  ret void, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !1002 {
entry:
  ret void, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !1004 {
entry:
  ret void, !dbg !1005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !1006 {
entry:
  ret void, !dbg !1007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !1008 {
entry:
  ret void, !dbg !1009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1010 {
entry:
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1012 {
entry:
  ret void, !dbg !1013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1014 {
entry:
  ret void, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1016 {
entry:
  ret void, !dbg !1017
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1018 {
entry:
  ret void, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1020 {
entry:
  ret void, !dbg !1021
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1022 {
entry:
  ret void, !dbg !1023
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1024 {
entry:
  ret void, !dbg !1025
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1026 {
entry:
  ret void, !dbg !1027
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!100, !100}
!llvm.module.flags = !{!101, !102, !103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_943/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_943/source_code")
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
!88 = !{!89, !42}
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_14_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 52, type: !42)
!109 = !DILocation(line: 52, column: 12, scope: !104)
!110 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 53, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 100)
!114 = !DILocation(line: 53, column: 10, scope: !104)
!115 = !DILocation(line: 54, column: 12, scope: !104)
!116 = !DILocation(line: 54, column: 10, scope: !104)
!117 = !DILocation(line: 55, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !104, file: !45, line: 55, column: 8)
!119 = !DILocation(line: 55, column: 18, scope: !118)
!120 = !DILocation(line: 55, column: 8, scope: !104)
!121 = !DILocalVariable(name: "recvResult", scope: !122, file: !45, line: 62, type: !23)
!122 = distinct !DILexicalBlock(scope: !123, file: !45, line: 57, column: 9)
!123 = distinct !DILexicalBlock(scope: !118, file: !45, line: 56, column: 5)
!124 = !DILocation(line: 62, column: 17, scope: !122)
!125 = !DILocalVariable(name: "service", scope: !122, file: !45, line: 63, type: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !127)
!127 = !{!128, !129, !135, !142}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !126, file: !60, line: 240, baseType: !94, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !126, file: !60, line: 241, baseType: !130, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !132, line: 25, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !134, line: 40, baseType: !24)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !126, file: !60, line: 242, baseType: !136, size: 32, offset: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !136, file: !60, line: 33, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !132, line: 26, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !134, line: 42, baseType: !7)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !126, file: !60, line: 245, baseType: !143, size: 64, offset: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DILocation(line: 63, column: 32, scope: !122)
!147 = !DILocalVariable(name: "replace", scope: !122, file: !45, line: 64, type: !42)
!148 = !DILocation(line: 64, column: 19, scope: !122)
!149 = !DILocalVariable(name: "connectSocket", scope: !122, file: !45, line: 65, type: !23)
!150 = !DILocation(line: 65, column: 20, scope: !122)
!151 = !DILocalVariable(name: "dataLen", scope: !122, file: !45, line: 66, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!154 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DILocation(line: 66, column: 20, scope: !122)
!156 = !DILocation(line: 66, column: 37, scope: !122)
!157 = !DILocation(line: 66, column: 30, scope: !122)
!158 = !DILocation(line: 67, column: 13, scope: !122)
!159 = !DILocation(line: 77, column: 33, scope: !160)
!160 = distinct !DILexicalBlock(scope: !122, file: !45, line: 68, column: 13)
!161 = !DILocation(line: 77, column: 31, scope: !160)
!162 = !DILocation(line: 78, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !45, line: 78, column: 21)
!164 = !DILocation(line: 78, column: 35, scope: !163)
!165 = !DILocation(line: 78, column: 21, scope: !160)
!166 = !DILocation(line: 80, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !45, line: 79, column: 17)
!168 = !DILocation(line: 82, column: 17, scope: !160)
!169 = !DILocation(line: 83, column: 25, scope: !160)
!170 = !DILocation(line: 83, column: 36, scope: !160)
!171 = !DILocation(line: 84, column: 43, scope: !160)
!172 = !DILocation(line: 84, column: 25, scope: !160)
!173 = !DILocation(line: 84, column: 34, scope: !160)
!174 = !DILocation(line: 84, column: 41, scope: !160)
!175 = !DILocation(line: 85, column: 36, scope: !160)
!176 = !DILocation(line: 85, column: 25, scope: !160)
!177 = !DILocation(line: 85, column: 34, scope: !160)
!178 = !DILocation(line: 86, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !160, file: !45, line: 86, column: 21)
!180 = !DILocation(line: 86, column: 44, scope: !179)
!181 = !DILocation(line: 86, column: 21, scope: !179)
!182 = !DILocation(line: 86, column: 89, scope: !179)
!183 = !DILocation(line: 86, column: 21, scope: !160)
!184 = !DILocation(line: 88, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !45, line: 87, column: 17)
!186 = !DILocation(line: 93, column: 35, scope: !160)
!187 = !DILocation(line: 93, column: 59, scope: !160)
!188 = !DILocation(line: 93, column: 66, scope: !160)
!189 = !DILocation(line: 93, column: 64, scope: !160)
!190 = !DILocation(line: 93, column: 98, scope: !160)
!191 = !DILocation(line: 93, column: 96, scope: !160)
!192 = !DILocation(line: 93, column: 106, scope: !160)
!193 = !DILocation(line: 93, column: 89, scope: !160)
!194 = !DILocation(line: 93, column: 30, scope: !160)
!195 = !DILocation(line: 93, column: 28, scope: !160)
!196 = !DILocation(line: 94, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !160, file: !45, line: 94, column: 21)
!198 = !DILocation(line: 94, column: 32, scope: !197)
!199 = !DILocation(line: 94, column: 48, scope: !197)
!200 = !DILocation(line: 94, column: 51, scope: !197)
!201 = !DILocation(line: 94, column: 62, scope: !197)
!202 = !DILocation(line: 94, column: 21, scope: !160)
!203 = !DILocation(line: 96, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 95, column: 17)
!205 = !DILocation(line: 99, column: 17, scope: !160)
!206 = !DILocation(line: 99, column: 22, scope: !160)
!207 = !DILocation(line: 99, column: 32, scope: !160)
!208 = !DILocation(line: 99, column: 43, scope: !160)
!209 = !DILocation(line: 99, column: 30, scope: !160)
!210 = !DILocation(line: 99, column: 59, scope: !160)
!211 = !DILocation(line: 101, column: 34, scope: !160)
!212 = !DILocation(line: 101, column: 27, scope: !160)
!213 = !DILocation(line: 101, column: 25, scope: !160)
!214 = !DILocation(line: 102, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !160, file: !45, line: 102, column: 21)
!216 = !DILocation(line: 102, column: 21, scope: !160)
!217 = !DILocation(line: 104, column: 22, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 103, column: 17)
!219 = !DILocation(line: 104, column: 30, scope: !218)
!220 = !DILocation(line: 105, column: 17, scope: !218)
!221 = !DILocation(line: 106, column: 34, scope: !160)
!222 = !DILocation(line: 106, column: 27, scope: !160)
!223 = !DILocation(line: 106, column: 25, scope: !160)
!224 = !DILocation(line: 107, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !160, file: !45, line: 107, column: 21)
!226 = !DILocation(line: 107, column: 21, scope: !160)
!227 = !DILocation(line: 109, column: 22, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !45, line: 108, column: 17)
!229 = !DILocation(line: 109, column: 30, scope: !228)
!230 = !DILocation(line: 110, column: 17, scope: !228)
!231 = !DILocation(line: 111, column: 13, scope: !160)
!232 = !DILocation(line: 113, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !122, file: !45, line: 113, column: 17)
!234 = !DILocation(line: 113, column: 31, scope: !233)
!235 = !DILocation(line: 113, column: 17, scope: !122)
!236 = !DILocation(line: 115, column: 30, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !45, line: 114, column: 13)
!238 = !DILocation(line: 115, column: 17, scope: !237)
!239 = !DILocation(line: 116, column: 13, scope: !237)
!240 = !DILocation(line: 124, column: 5, scope: !123)
!241 = !DILocation(line: 125, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !104, file: !45, line: 125, column: 8)
!243 = !DILocation(line: 125, column: 18, scope: !242)
!244 = !DILocation(line: 125, column: 8, scope: !104)
!245 = !DILocalVariable(name: "i", scope: !246, file: !45, line: 128, type: !23)
!246 = distinct !DILexicalBlock(scope: !247, file: !45, line: 127, column: 9)
!247 = distinct !DILexicalBlock(scope: !242, file: !45, line: 126, column: 5)
!248 = !DILocation(line: 128, column: 17, scope: !246)
!249 = !DILocalVariable(name: "n", scope: !246, file: !45, line: 128, type: !23)
!250 = !DILocation(line: 128, column: 20, scope: !246)
!251 = !DILocalVariable(name: "intVariable", scope: !246, file: !45, line: 128, type: !23)
!252 = !DILocation(line: 128, column: 23, scope: !246)
!253 = !DILocation(line: 129, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !45, line: 129, column: 17)
!255 = !DILocation(line: 129, column: 17, scope: !254)
!256 = !DILocation(line: 129, column: 40, scope: !254)
!257 = !DILocation(line: 129, column: 17, scope: !246)
!258 = !DILocation(line: 132, column: 29, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !45, line: 130, column: 13)
!260 = !DILocation(line: 133, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !45, line: 133, column: 17)
!262 = !DILocation(line: 133, column: 22, scope: !261)
!263 = !DILocation(line: 133, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !45, line: 133, column: 17)
!265 = !DILocation(line: 133, column: 33, scope: !264)
!266 = !DILocation(line: 133, column: 31, scope: !264)
!267 = !DILocation(line: 133, column: 17, scope: !261)
!268 = !DILocation(line: 136, column: 32, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !45, line: 134, column: 17)
!270 = !DILocation(line: 137, column: 17, scope: !269)
!271 = !DILocation(line: 133, column: 37, scope: !264)
!272 = !DILocation(line: 133, column: 17, scope: !264)
!273 = distinct !{!273, !267, !274, !275}
!274 = !DILocation(line: 137, column: 17, scope: !261)
!275 = !{!"llvm.loop.mustprogress"}
!276 = !DILocation(line: 138, column: 30, scope: !259)
!277 = !DILocation(line: 138, column: 17, scope: !259)
!278 = !DILocation(line: 139, column: 13, scope: !259)
!279 = !DILocation(line: 141, column: 5, scope: !247)
!280 = !DILocation(line: 142, column: 1, scope: !104)
!281 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 149, type: !105, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!282 = !DILocalVariable(name: "data", scope: !281, file: !45, line: 151, type: !42)
!283 = !DILocation(line: 151, column: 12, scope: !281)
!284 = !DILocalVariable(name: "dataBuffer", scope: !281, file: !45, line: 152, type: !111)
!285 = !DILocation(line: 152, column: 10, scope: !281)
!286 = !DILocation(line: 153, column: 12, scope: !281)
!287 = !DILocation(line: 153, column: 10, scope: !281)
!288 = !DILocation(line: 154, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !281, file: !45, line: 154, column: 8)
!290 = !DILocation(line: 154, column: 18, scope: !289)
!291 = !DILocation(line: 154, column: 8, scope: !281)
!292 = !DILocalVariable(name: "recvResult", scope: !293, file: !45, line: 161, type: !23)
!293 = distinct !DILexicalBlock(scope: !294, file: !45, line: 156, column: 9)
!294 = distinct !DILexicalBlock(scope: !289, file: !45, line: 155, column: 5)
!295 = !DILocation(line: 161, column: 17, scope: !293)
!296 = !DILocalVariable(name: "service", scope: !293, file: !45, line: 162, type: !126)
!297 = !DILocation(line: 162, column: 32, scope: !293)
!298 = !DILocalVariable(name: "replace", scope: !293, file: !45, line: 163, type: !42)
!299 = !DILocation(line: 163, column: 19, scope: !293)
!300 = !DILocalVariable(name: "connectSocket", scope: !293, file: !45, line: 164, type: !23)
!301 = !DILocation(line: 164, column: 20, scope: !293)
!302 = !DILocalVariable(name: "dataLen", scope: !293, file: !45, line: 165, type: !152)
!303 = !DILocation(line: 165, column: 20, scope: !293)
!304 = !DILocation(line: 165, column: 37, scope: !293)
!305 = !DILocation(line: 165, column: 30, scope: !293)
!306 = !DILocation(line: 166, column: 13, scope: !293)
!307 = !DILocation(line: 176, column: 33, scope: !308)
!308 = distinct !DILexicalBlock(scope: !293, file: !45, line: 167, column: 13)
!309 = !DILocation(line: 176, column: 31, scope: !308)
!310 = !DILocation(line: 177, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !45, line: 177, column: 21)
!312 = !DILocation(line: 177, column: 35, scope: !311)
!313 = !DILocation(line: 177, column: 21, scope: !308)
!314 = !DILocation(line: 179, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !45, line: 178, column: 17)
!316 = !DILocation(line: 181, column: 17, scope: !308)
!317 = !DILocation(line: 182, column: 25, scope: !308)
!318 = !DILocation(line: 182, column: 36, scope: !308)
!319 = !DILocation(line: 183, column: 43, scope: !308)
!320 = !DILocation(line: 183, column: 25, scope: !308)
!321 = !DILocation(line: 183, column: 34, scope: !308)
!322 = !DILocation(line: 183, column: 41, scope: !308)
!323 = !DILocation(line: 184, column: 36, scope: !308)
!324 = !DILocation(line: 184, column: 25, scope: !308)
!325 = !DILocation(line: 184, column: 34, scope: !308)
!326 = !DILocation(line: 185, column: 29, scope: !327)
!327 = distinct !DILexicalBlock(scope: !308, file: !45, line: 185, column: 21)
!328 = !DILocation(line: 185, column: 44, scope: !327)
!329 = !DILocation(line: 185, column: 21, scope: !327)
!330 = !DILocation(line: 185, column: 89, scope: !327)
!331 = !DILocation(line: 185, column: 21, scope: !308)
!332 = !DILocation(line: 187, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !45, line: 186, column: 17)
!334 = !DILocation(line: 192, column: 35, scope: !308)
!335 = !DILocation(line: 192, column: 59, scope: !308)
!336 = !DILocation(line: 192, column: 66, scope: !308)
!337 = !DILocation(line: 192, column: 64, scope: !308)
!338 = !DILocation(line: 192, column: 98, scope: !308)
!339 = !DILocation(line: 192, column: 96, scope: !308)
!340 = !DILocation(line: 192, column: 106, scope: !308)
!341 = !DILocation(line: 192, column: 89, scope: !308)
!342 = !DILocation(line: 192, column: 30, scope: !308)
!343 = !DILocation(line: 192, column: 28, scope: !308)
!344 = !DILocation(line: 193, column: 21, scope: !345)
!345 = distinct !DILexicalBlock(scope: !308, file: !45, line: 193, column: 21)
!346 = !DILocation(line: 193, column: 32, scope: !345)
!347 = !DILocation(line: 193, column: 48, scope: !345)
!348 = !DILocation(line: 193, column: 51, scope: !345)
!349 = !DILocation(line: 193, column: 62, scope: !345)
!350 = !DILocation(line: 193, column: 21, scope: !308)
!351 = !DILocation(line: 195, column: 21, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !45, line: 194, column: 17)
!353 = !DILocation(line: 198, column: 17, scope: !308)
!354 = !DILocation(line: 198, column: 22, scope: !308)
!355 = !DILocation(line: 198, column: 32, scope: !308)
!356 = !DILocation(line: 198, column: 43, scope: !308)
!357 = !DILocation(line: 198, column: 30, scope: !308)
!358 = !DILocation(line: 198, column: 59, scope: !308)
!359 = !DILocation(line: 200, column: 34, scope: !308)
!360 = !DILocation(line: 200, column: 27, scope: !308)
!361 = !DILocation(line: 200, column: 25, scope: !308)
!362 = !DILocation(line: 201, column: 21, scope: !363)
!363 = distinct !DILexicalBlock(scope: !308, file: !45, line: 201, column: 21)
!364 = !DILocation(line: 201, column: 21, scope: !308)
!365 = !DILocation(line: 203, column: 22, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !45, line: 202, column: 17)
!367 = !DILocation(line: 203, column: 30, scope: !366)
!368 = !DILocation(line: 204, column: 17, scope: !366)
!369 = !DILocation(line: 205, column: 34, scope: !308)
!370 = !DILocation(line: 205, column: 27, scope: !308)
!371 = !DILocation(line: 205, column: 25, scope: !308)
!372 = !DILocation(line: 206, column: 21, scope: !373)
!373 = distinct !DILexicalBlock(scope: !308, file: !45, line: 206, column: 21)
!374 = !DILocation(line: 206, column: 21, scope: !308)
!375 = !DILocation(line: 208, column: 22, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !45, line: 207, column: 17)
!377 = !DILocation(line: 208, column: 30, scope: !376)
!378 = !DILocation(line: 209, column: 17, scope: !376)
!379 = !DILocation(line: 210, column: 13, scope: !308)
!380 = !DILocation(line: 212, column: 17, scope: !381)
!381 = distinct !DILexicalBlock(scope: !293, file: !45, line: 212, column: 17)
!382 = !DILocation(line: 212, column: 31, scope: !381)
!383 = !DILocation(line: 212, column: 17, scope: !293)
!384 = !DILocation(line: 214, column: 30, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !45, line: 213, column: 13)
!386 = !DILocation(line: 214, column: 17, scope: !385)
!387 = !DILocation(line: 215, column: 13, scope: !385)
!388 = !DILocation(line: 223, column: 5, scope: !294)
!389 = !DILocation(line: 224, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !281, file: !45, line: 224, column: 8)
!391 = !DILocation(line: 224, column: 18, scope: !390)
!392 = !DILocation(line: 224, column: 8, scope: !281)
!393 = !DILocation(line: 227, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !45, line: 225, column: 5)
!395 = !DILocation(line: 228, column: 5, scope: !394)
!396 = !DILocalVariable(name: "i", scope: !397, file: !45, line: 232, type: !23)
!397 = distinct !DILexicalBlock(scope: !398, file: !45, line: 231, column: 9)
!398 = distinct !DILexicalBlock(scope: !390, file: !45, line: 230, column: 5)
!399 = !DILocation(line: 232, column: 17, scope: !397)
!400 = !DILocalVariable(name: "n", scope: !397, file: !45, line: 232, type: !23)
!401 = !DILocation(line: 232, column: 20, scope: !397)
!402 = !DILocalVariable(name: "intVariable", scope: !397, file: !45, line: 232, type: !23)
!403 = !DILocation(line: 232, column: 23, scope: !397)
!404 = !DILocation(line: 233, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !45, line: 233, column: 17)
!406 = !DILocation(line: 233, column: 17, scope: !405)
!407 = !DILocation(line: 233, column: 40, scope: !405)
!408 = !DILocation(line: 233, column: 17, scope: !397)
!409 = !DILocation(line: 236, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !45, line: 236, column: 21)
!411 = distinct !DILexicalBlock(scope: !405, file: !45, line: 234, column: 13)
!412 = !DILocation(line: 236, column: 23, scope: !410)
!413 = !DILocation(line: 236, column: 21, scope: !411)
!414 = !DILocation(line: 238, column: 33, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !45, line: 237, column: 17)
!416 = !DILocation(line: 239, column: 28, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !45, line: 239, column: 21)
!418 = !DILocation(line: 239, column: 26, scope: !417)
!419 = !DILocation(line: 239, column: 33, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !45, line: 239, column: 21)
!421 = !DILocation(line: 239, column: 37, scope: !420)
!422 = !DILocation(line: 239, column: 35, scope: !420)
!423 = !DILocation(line: 239, column: 21, scope: !417)
!424 = !DILocation(line: 242, column: 36, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !45, line: 240, column: 21)
!426 = !DILocation(line: 243, column: 21, scope: !425)
!427 = !DILocation(line: 239, column: 41, scope: !420)
!428 = !DILocation(line: 239, column: 21, scope: !420)
!429 = distinct !{!429, !423, !430, !275}
!430 = !DILocation(line: 243, column: 21, scope: !417)
!431 = !DILocation(line: 244, column: 34, scope: !415)
!432 = !DILocation(line: 244, column: 21, scope: !415)
!433 = !DILocation(line: 245, column: 17, scope: !415)
!434 = !DILocation(line: 246, column: 13, scope: !411)
!435 = !DILocation(line: 249, column: 1, scope: !281)
!436 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 252, type: !105, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!437 = !DILocalVariable(name: "data", scope: !436, file: !45, line: 254, type: !42)
!438 = !DILocation(line: 254, column: 12, scope: !436)
!439 = !DILocalVariable(name: "dataBuffer", scope: !436, file: !45, line: 255, type: !111)
!440 = !DILocation(line: 255, column: 10, scope: !436)
!441 = !DILocation(line: 256, column: 12, scope: !436)
!442 = !DILocation(line: 256, column: 10, scope: !436)
!443 = !DILocation(line: 257, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !45, line: 257, column: 8)
!445 = !DILocation(line: 257, column: 18, scope: !444)
!446 = !DILocation(line: 257, column: 8, scope: !436)
!447 = !DILocalVariable(name: "recvResult", scope: !448, file: !45, line: 264, type: !23)
!448 = distinct !DILexicalBlock(scope: !449, file: !45, line: 259, column: 9)
!449 = distinct !DILexicalBlock(scope: !444, file: !45, line: 258, column: 5)
!450 = !DILocation(line: 264, column: 17, scope: !448)
!451 = !DILocalVariable(name: "service", scope: !448, file: !45, line: 265, type: !126)
!452 = !DILocation(line: 265, column: 32, scope: !448)
!453 = !DILocalVariable(name: "replace", scope: !448, file: !45, line: 266, type: !42)
!454 = !DILocation(line: 266, column: 19, scope: !448)
!455 = !DILocalVariable(name: "connectSocket", scope: !448, file: !45, line: 267, type: !23)
!456 = !DILocation(line: 267, column: 20, scope: !448)
!457 = !DILocalVariable(name: "dataLen", scope: !448, file: !45, line: 268, type: !152)
!458 = !DILocation(line: 268, column: 20, scope: !448)
!459 = !DILocation(line: 268, column: 37, scope: !448)
!460 = !DILocation(line: 268, column: 30, scope: !448)
!461 = !DILocation(line: 269, column: 13, scope: !448)
!462 = !DILocation(line: 279, column: 33, scope: !463)
!463 = distinct !DILexicalBlock(scope: !448, file: !45, line: 270, column: 13)
!464 = !DILocation(line: 279, column: 31, scope: !463)
!465 = !DILocation(line: 280, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !45, line: 280, column: 21)
!467 = !DILocation(line: 280, column: 35, scope: !466)
!468 = !DILocation(line: 280, column: 21, scope: !463)
!469 = !DILocation(line: 282, column: 21, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !45, line: 281, column: 17)
!471 = !DILocation(line: 284, column: 17, scope: !463)
!472 = !DILocation(line: 285, column: 25, scope: !463)
!473 = !DILocation(line: 285, column: 36, scope: !463)
!474 = !DILocation(line: 286, column: 43, scope: !463)
!475 = !DILocation(line: 286, column: 25, scope: !463)
!476 = !DILocation(line: 286, column: 34, scope: !463)
!477 = !DILocation(line: 286, column: 41, scope: !463)
!478 = !DILocation(line: 287, column: 36, scope: !463)
!479 = !DILocation(line: 287, column: 25, scope: !463)
!480 = !DILocation(line: 287, column: 34, scope: !463)
!481 = !DILocation(line: 288, column: 29, scope: !482)
!482 = distinct !DILexicalBlock(scope: !463, file: !45, line: 288, column: 21)
!483 = !DILocation(line: 288, column: 44, scope: !482)
!484 = !DILocation(line: 288, column: 21, scope: !482)
!485 = !DILocation(line: 288, column: 89, scope: !482)
!486 = !DILocation(line: 288, column: 21, scope: !463)
!487 = !DILocation(line: 290, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !45, line: 289, column: 17)
!489 = !DILocation(line: 295, column: 35, scope: !463)
!490 = !DILocation(line: 295, column: 59, scope: !463)
!491 = !DILocation(line: 295, column: 66, scope: !463)
!492 = !DILocation(line: 295, column: 64, scope: !463)
!493 = !DILocation(line: 295, column: 98, scope: !463)
!494 = !DILocation(line: 295, column: 96, scope: !463)
!495 = !DILocation(line: 295, column: 106, scope: !463)
!496 = !DILocation(line: 295, column: 89, scope: !463)
!497 = !DILocation(line: 295, column: 30, scope: !463)
!498 = !DILocation(line: 295, column: 28, scope: !463)
!499 = !DILocation(line: 296, column: 21, scope: !500)
!500 = distinct !DILexicalBlock(scope: !463, file: !45, line: 296, column: 21)
!501 = !DILocation(line: 296, column: 32, scope: !500)
!502 = !DILocation(line: 296, column: 48, scope: !500)
!503 = !DILocation(line: 296, column: 51, scope: !500)
!504 = !DILocation(line: 296, column: 62, scope: !500)
!505 = !DILocation(line: 296, column: 21, scope: !463)
!506 = !DILocation(line: 298, column: 21, scope: !507)
!507 = distinct !DILexicalBlock(scope: !500, file: !45, line: 297, column: 17)
!508 = !DILocation(line: 301, column: 17, scope: !463)
!509 = !DILocation(line: 301, column: 22, scope: !463)
!510 = !DILocation(line: 301, column: 32, scope: !463)
!511 = !DILocation(line: 301, column: 43, scope: !463)
!512 = !DILocation(line: 301, column: 30, scope: !463)
!513 = !DILocation(line: 301, column: 59, scope: !463)
!514 = !DILocation(line: 303, column: 34, scope: !463)
!515 = !DILocation(line: 303, column: 27, scope: !463)
!516 = !DILocation(line: 303, column: 25, scope: !463)
!517 = !DILocation(line: 304, column: 21, scope: !518)
!518 = distinct !DILexicalBlock(scope: !463, file: !45, line: 304, column: 21)
!519 = !DILocation(line: 304, column: 21, scope: !463)
!520 = !DILocation(line: 306, column: 22, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !45, line: 305, column: 17)
!522 = !DILocation(line: 306, column: 30, scope: !521)
!523 = !DILocation(line: 307, column: 17, scope: !521)
!524 = !DILocation(line: 308, column: 34, scope: !463)
!525 = !DILocation(line: 308, column: 27, scope: !463)
!526 = !DILocation(line: 308, column: 25, scope: !463)
!527 = !DILocation(line: 309, column: 21, scope: !528)
!528 = distinct !DILexicalBlock(scope: !463, file: !45, line: 309, column: 21)
!529 = !DILocation(line: 309, column: 21, scope: !463)
!530 = !DILocation(line: 311, column: 22, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !45, line: 310, column: 17)
!532 = !DILocation(line: 311, column: 30, scope: !531)
!533 = !DILocation(line: 312, column: 17, scope: !531)
!534 = !DILocation(line: 313, column: 13, scope: !463)
!535 = !DILocation(line: 315, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !448, file: !45, line: 315, column: 17)
!537 = !DILocation(line: 315, column: 31, scope: !536)
!538 = !DILocation(line: 315, column: 17, scope: !448)
!539 = !DILocation(line: 317, column: 30, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !45, line: 316, column: 13)
!541 = !DILocation(line: 317, column: 17, scope: !540)
!542 = !DILocation(line: 318, column: 13, scope: !540)
!543 = !DILocation(line: 326, column: 5, scope: !449)
!544 = !DILocation(line: 327, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !436, file: !45, line: 327, column: 8)
!546 = !DILocation(line: 327, column: 18, scope: !545)
!547 = !DILocation(line: 327, column: 8, scope: !436)
!548 = !DILocalVariable(name: "i", scope: !549, file: !45, line: 330, type: !23)
!549 = distinct !DILexicalBlock(scope: !550, file: !45, line: 329, column: 9)
!550 = distinct !DILexicalBlock(scope: !545, file: !45, line: 328, column: 5)
!551 = !DILocation(line: 330, column: 17, scope: !549)
!552 = !DILocalVariable(name: "n", scope: !549, file: !45, line: 330, type: !23)
!553 = !DILocation(line: 330, column: 20, scope: !549)
!554 = !DILocalVariable(name: "intVariable", scope: !549, file: !45, line: 330, type: !23)
!555 = !DILocation(line: 330, column: 23, scope: !549)
!556 = !DILocation(line: 331, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !549, file: !45, line: 331, column: 17)
!558 = !DILocation(line: 331, column: 17, scope: !557)
!559 = !DILocation(line: 331, column: 40, scope: !557)
!560 = !DILocation(line: 331, column: 17, scope: !549)
!561 = !DILocation(line: 334, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !45, line: 334, column: 21)
!563 = distinct !DILexicalBlock(scope: !557, file: !45, line: 332, column: 13)
!564 = !DILocation(line: 334, column: 23, scope: !562)
!565 = !DILocation(line: 334, column: 21, scope: !563)
!566 = !DILocation(line: 336, column: 33, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !45, line: 335, column: 17)
!568 = !DILocation(line: 337, column: 28, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !45, line: 337, column: 21)
!570 = !DILocation(line: 337, column: 26, scope: !569)
!571 = !DILocation(line: 337, column: 33, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !45, line: 337, column: 21)
!573 = !DILocation(line: 337, column: 37, scope: !572)
!574 = !DILocation(line: 337, column: 35, scope: !572)
!575 = !DILocation(line: 337, column: 21, scope: !569)
!576 = !DILocation(line: 340, column: 36, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !45, line: 338, column: 21)
!578 = !DILocation(line: 341, column: 21, scope: !577)
!579 = !DILocation(line: 337, column: 41, scope: !572)
!580 = !DILocation(line: 337, column: 21, scope: !572)
!581 = distinct !{!581, !575, !582, !275}
!582 = !DILocation(line: 341, column: 21, scope: !569)
!583 = !DILocation(line: 342, column: 34, scope: !567)
!584 = !DILocation(line: 342, column: 21, scope: !567)
!585 = !DILocation(line: 343, column: 17, scope: !567)
!586 = !DILocation(line: 344, column: 13, scope: !563)
!587 = !DILocation(line: 346, column: 5, scope: !550)
!588 = !DILocation(line: 347, column: 1, scope: !436)
!589 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 350, type: !105, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!590 = !DILocalVariable(name: "data", scope: !589, file: !45, line: 352, type: !42)
!591 = !DILocation(line: 352, column: 12, scope: !589)
!592 = !DILocalVariable(name: "dataBuffer", scope: !589, file: !45, line: 353, type: !111)
!593 = !DILocation(line: 353, column: 10, scope: !589)
!594 = !DILocation(line: 354, column: 12, scope: !589)
!595 = !DILocation(line: 354, column: 10, scope: !589)
!596 = !DILocation(line: 355, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !45, line: 355, column: 8)
!598 = !DILocation(line: 355, column: 18, scope: !597)
!599 = !DILocation(line: 355, column: 8, scope: !589)
!600 = !DILocation(line: 358, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !45, line: 356, column: 5)
!602 = !DILocation(line: 359, column: 5, scope: !601)
!603 = !DILocation(line: 363, column: 16, scope: !604)
!604 = distinct !DILexicalBlock(scope: !597, file: !45, line: 361, column: 5)
!605 = !DILocation(line: 363, column: 9, scope: !604)
!606 = !DILocation(line: 365, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !45, line: 365, column: 8)
!608 = !DILocation(line: 365, column: 18, scope: !607)
!609 = !DILocation(line: 365, column: 8, scope: !589)
!610 = !DILocalVariable(name: "i", scope: !611, file: !45, line: 368, type: !23)
!611 = distinct !DILexicalBlock(scope: !612, file: !45, line: 367, column: 9)
!612 = distinct !DILexicalBlock(scope: !607, file: !45, line: 366, column: 5)
!613 = !DILocation(line: 368, column: 17, scope: !611)
!614 = !DILocalVariable(name: "n", scope: !611, file: !45, line: 368, type: !23)
!615 = !DILocation(line: 368, column: 20, scope: !611)
!616 = !DILocalVariable(name: "intVariable", scope: !611, file: !45, line: 368, type: !23)
!617 = !DILocation(line: 368, column: 23, scope: !611)
!618 = !DILocation(line: 369, column: 24, scope: !619)
!619 = distinct !DILexicalBlock(scope: !611, file: !45, line: 369, column: 17)
!620 = !DILocation(line: 369, column: 17, scope: !619)
!621 = !DILocation(line: 369, column: 40, scope: !619)
!622 = !DILocation(line: 369, column: 17, scope: !611)
!623 = !DILocation(line: 372, column: 29, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !45, line: 370, column: 13)
!625 = !DILocation(line: 373, column: 24, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !45, line: 373, column: 17)
!627 = !DILocation(line: 373, column: 22, scope: !626)
!628 = !DILocation(line: 373, column: 29, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !45, line: 373, column: 17)
!630 = !DILocation(line: 373, column: 33, scope: !629)
!631 = !DILocation(line: 373, column: 31, scope: !629)
!632 = !DILocation(line: 373, column: 17, scope: !626)
!633 = !DILocation(line: 376, column: 32, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !45, line: 374, column: 17)
!635 = !DILocation(line: 377, column: 17, scope: !634)
!636 = !DILocation(line: 373, column: 37, scope: !629)
!637 = !DILocation(line: 373, column: 17, scope: !629)
!638 = distinct !{!638, !632, !639, !275}
!639 = !DILocation(line: 377, column: 17, scope: !626)
!640 = !DILocation(line: 378, column: 30, scope: !624)
!641 = !DILocation(line: 378, column: 17, scope: !624)
!642 = !DILocation(line: 379, column: 13, scope: !624)
!643 = !DILocation(line: 381, column: 5, scope: !612)
!644 = !DILocation(line: 382, column: 1, scope: !589)
!645 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 385, type: !105, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!646 = !DILocalVariable(name: "data", scope: !645, file: !45, line: 387, type: !42)
!647 = !DILocation(line: 387, column: 12, scope: !645)
!648 = !DILocalVariable(name: "dataBuffer", scope: !645, file: !45, line: 388, type: !111)
!649 = !DILocation(line: 388, column: 10, scope: !645)
!650 = !DILocation(line: 389, column: 12, scope: !645)
!651 = !DILocation(line: 389, column: 10, scope: !645)
!652 = !DILocation(line: 390, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !45, line: 390, column: 8)
!654 = !DILocation(line: 390, column: 18, scope: !653)
!655 = !DILocation(line: 390, column: 8, scope: !645)
!656 = !DILocation(line: 393, column: 16, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !45, line: 391, column: 5)
!658 = !DILocation(line: 393, column: 9, scope: !657)
!659 = !DILocation(line: 394, column: 5, scope: !657)
!660 = !DILocation(line: 395, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !645, file: !45, line: 395, column: 8)
!662 = !DILocation(line: 395, column: 18, scope: !661)
!663 = !DILocation(line: 395, column: 8, scope: !645)
!664 = !DILocalVariable(name: "i", scope: !665, file: !45, line: 398, type: !23)
!665 = distinct !DILexicalBlock(scope: !666, file: !45, line: 397, column: 9)
!666 = distinct !DILexicalBlock(scope: !661, file: !45, line: 396, column: 5)
!667 = !DILocation(line: 398, column: 17, scope: !665)
!668 = !DILocalVariable(name: "n", scope: !665, file: !45, line: 398, type: !23)
!669 = !DILocation(line: 398, column: 20, scope: !665)
!670 = !DILocalVariable(name: "intVariable", scope: !665, file: !45, line: 398, type: !23)
!671 = !DILocation(line: 398, column: 23, scope: !665)
!672 = !DILocation(line: 399, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !665, file: !45, line: 399, column: 17)
!674 = !DILocation(line: 399, column: 17, scope: !673)
!675 = !DILocation(line: 399, column: 40, scope: !673)
!676 = !DILocation(line: 399, column: 17, scope: !665)
!677 = !DILocation(line: 402, column: 29, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !45, line: 400, column: 13)
!679 = !DILocation(line: 403, column: 24, scope: !680)
!680 = distinct !DILexicalBlock(scope: !678, file: !45, line: 403, column: 17)
!681 = !DILocation(line: 403, column: 22, scope: !680)
!682 = !DILocation(line: 403, column: 29, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !45, line: 403, column: 17)
!684 = !DILocation(line: 403, column: 33, scope: !683)
!685 = !DILocation(line: 403, column: 31, scope: !683)
!686 = !DILocation(line: 403, column: 17, scope: !680)
!687 = !DILocation(line: 406, column: 32, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !45, line: 404, column: 17)
!689 = !DILocation(line: 407, column: 17, scope: !688)
!690 = !DILocation(line: 403, column: 37, scope: !683)
!691 = !DILocation(line: 403, column: 17, scope: !683)
!692 = distinct !{!692, !686, !693, !275}
!693 = !DILocation(line: 407, column: 17, scope: !680)
!694 = !DILocation(line: 408, column: 30, scope: !678)
!695 = !DILocation(line: 408, column: 17, scope: !678)
!696 = !DILocation(line: 409, column: 13, scope: !678)
!697 = !DILocation(line: 411, column: 5, scope: !666)
!698 = !DILocation(line: 412, column: 1, scope: !645)
!699 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_14_good", scope: !45, file: !45, line: 414, type: !105, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!700 = !DILocation(line: 416, column: 5, scope: !699)
!701 = !DILocation(line: 417, column: 5, scope: !699)
!702 = !DILocation(line: 418, column: 5, scope: !699)
!703 = !DILocation(line: 419, column: 5, scope: !699)
!704 = !DILocation(line: 420, column: 1, scope: !699)
!705 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !706, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !42}
!708 = !DILocalVariable(name: "line", arg: 1, scope: !705, file: !3, line: 11, type: !42)
!709 = !DILocation(line: 11, column: 25, scope: !705)
!710 = !DILocation(line: 13, column: 1, scope: !705)
!711 = !DILocation(line: 14, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !705, file: !3, line: 14, column: 8)
!713 = !DILocation(line: 14, column: 13, scope: !712)
!714 = !DILocation(line: 14, column: 8, scope: !705)
!715 = !DILocation(line: 16, column: 24, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !3, line: 15, column: 5)
!717 = !DILocation(line: 16, column: 9, scope: !716)
!718 = !DILocation(line: 17, column: 5, scope: !716)
!719 = !DILocation(line: 18, column: 5, scope: !705)
!720 = !DILocation(line: 19, column: 1, scope: !705)
!721 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !706, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!722 = !DILocalVariable(name: "line", arg: 1, scope: !721, file: !3, line: 20, type: !42)
!723 = !DILocation(line: 20, column: 29, scope: !721)
!724 = !DILocation(line: 22, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 22, column: 8)
!726 = !DILocation(line: 22, column: 13, scope: !725)
!727 = !DILocation(line: 22, column: 8, scope: !721)
!728 = !DILocation(line: 24, column: 24, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 23, column: 5)
!730 = !DILocation(line: 24, column: 9, scope: !729)
!731 = !DILocation(line: 25, column: 5, scope: !729)
!732 = !DILocation(line: 26, column: 1, scope: !721)
!733 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !734, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !153, line: 74, baseType: !23)
!738 = !DILocalVariable(name: "line", arg: 1, scope: !733, file: !3, line: 27, type: !736)
!739 = !DILocation(line: 27, column: 29, scope: !733)
!740 = !DILocation(line: 29, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !3, line: 29, column: 8)
!742 = !DILocation(line: 29, column: 13, scope: !741)
!743 = !DILocation(line: 29, column: 8, scope: !733)
!744 = !DILocation(line: 31, column: 27, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !3, line: 30, column: 5)
!746 = !DILocation(line: 31, column: 9, scope: !745)
!747 = !DILocation(line: 32, column: 5, scope: !745)
!748 = !DILocation(line: 33, column: 1, scope: !733)
!749 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !750, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !23}
!752 = !DILocalVariable(name: "intNumber", arg: 1, scope: !749, file: !3, line: 35, type: !23)
!753 = !DILocation(line: 35, column: 24, scope: !749)
!754 = !DILocation(line: 37, column: 20, scope: !749)
!755 = !DILocation(line: 37, column: 5, scope: !749)
!756 = !DILocation(line: 38, column: 1, scope: !749)
!757 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !758, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!761 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !757, file: !3, line: 40, type: !760)
!762 = !DILocation(line: 40, column: 28, scope: !757)
!763 = !DILocation(line: 42, column: 21, scope: !757)
!764 = !DILocation(line: 42, column: 5, scope: !757)
!765 = !DILocation(line: 43, column: 1, scope: !757)
!766 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !767, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769}
!769 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!770 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !766, file: !3, line: 45, type: !769)
!771 = !DILocation(line: 45, column: 28, scope: !766)
!772 = !DILocation(line: 47, column: 20, scope: !766)
!773 = !DILocation(line: 47, column: 5, scope: !766)
!774 = !DILocation(line: 48, column: 1, scope: !766)
!775 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !776, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !778}
!778 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!779 = !DILocalVariable(name: "longNumber", arg: 1, scope: !775, file: !3, line: 50, type: !778)
!780 = !DILocation(line: 50, column: 26, scope: !775)
!781 = !DILocation(line: 52, column: 21, scope: !775)
!782 = !DILocation(line: 52, column: 5, scope: !775)
!783 = !DILocation(line: 53, column: 1, scope: !775)
!784 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !785, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !787}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !788, line: 27, baseType: !789)
!788 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !134, line: 44, baseType: !778)
!790 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !784, file: !3, line: 55, type: !787)
!791 = !DILocation(line: 55, column: 33, scope: !784)
!792 = !DILocation(line: 57, column: 29, scope: !784)
!793 = !DILocation(line: 57, column: 5, scope: !784)
!794 = !DILocation(line: 58, column: 1, scope: !784)
!795 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !796, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !152}
!798 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !795, file: !3, line: 60, type: !152)
!799 = !DILocation(line: 60, column: 29, scope: !795)
!800 = !DILocation(line: 62, column: 21, scope: !795)
!801 = !DILocation(line: 62, column: 5, scope: !795)
!802 = !DILocation(line: 63, column: 1, scope: !795)
!803 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !804, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !43}
!806 = !DILocalVariable(name: "charHex", arg: 1, scope: !803, file: !3, line: 65, type: !43)
!807 = !DILocation(line: 65, column: 29, scope: !803)
!808 = !DILocation(line: 67, column: 22, scope: !803)
!809 = !DILocation(line: 67, column: 5, scope: !803)
!810 = !DILocation(line: 68, column: 1, scope: !803)
!811 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !812, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !737}
!814 = !DILocalVariable(name: "wideChar", arg: 1, scope: !811, file: !3, line: 70, type: !737)
!815 = !DILocation(line: 70, column: 29, scope: !811)
!816 = !DILocalVariable(name: "s", scope: !811, file: !3, line: 74, type: !817)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 64, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 2)
!820 = !DILocation(line: 74, column: 13, scope: !811)
!821 = !DILocation(line: 75, column: 16, scope: !811)
!822 = !DILocation(line: 75, column: 9, scope: !811)
!823 = !DILocation(line: 75, column: 14, scope: !811)
!824 = !DILocation(line: 76, column: 9, scope: !811)
!825 = !DILocation(line: 76, column: 14, scope: !811)
!826 = !DILocation(line: 77, column: 21, scope: !811)
!827 = !DILocation(line: 77, column: 5, scope: !811)
!828 = !DILocation(line: 78, column: 1, scope: !811)
!829 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !830, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !7}
!832 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !829, file: !3, line: 80, type: !7)
!833 = !DILocation(line: 80, column: 33, scope: !829)
!834 = !DILocation(line: 82, column: 20, scope: !829)
!835 = !DILocation(line: 82, column: 5, scope: !829)
!836 = !DILocation(line: 83, column: 1, scope: !829)
!837 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !838, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !25}
!840 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !837, file: !3, line: 85, type: !25)
!841 = !DILocation(line: 85, column: 45, scope: !837)
!842 = !DILocation(line: 87, column: 22, scope: !837)
!843 = !DILocation(line: 87, column: 5, scope: !837)
!844 = !DILocation(line: 88, column: 1, scope: !837)
!845 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !846, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!849 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !845, file: !3, line: 90, type: !848)
!850 = !DILocation(line: 90, column: 29, scope: !845)
!851 = !DILocation(line: 92, column: 20, scope: !845)
!852 = !DILocation(line: 92, column: 5, scope: !845)
!853 = !DILocation(line: 93, column: 1, scope: !845)
!854 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !855, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !859, line: 100, baseType: !860)
!859 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_943/source_code")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !859, line: 96, size: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !860, file: !859, line: 98, baseType: !23, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !860, file: !859, line: 99, baseType: !23, size: 32, offset: 32)
!864 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !854, file: !3, line: 95, type: !857)
!865 = !DILocation(line: 95, column: 40, scope: !854)
!866 = !DILocation(line: 97, column: 26, scope: !854)
!867 = !DILocation(line: 97, column: 47, scope: !854)
!868 = !DILocation(line: 97, column: 55, scope: !854)
!869 = !DILocation(line: 97, column: 76, scope: !854)
!870 = !DILocation(line: 97, column: 5, scope: !854)
!871 = !DILocation(line: 98, column: 1, scope: !854)
!872 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !873, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !875, !152}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!876 = !DILocalVariable(name: "bytes", arg: 1, scope: !872, file: !3, line: 100, type: !875)
!877 = !DILocation(line: 100, column: 38, scope: !872)
!878 = !DILocalVariable(name: "numBytes", arg: 2, scope: !872, file: !3, line: 100, type: !152)
!879 = !DILocation(line: 100, column: 52, scope: !872)
!880 = !DILocalVariable(name: "i", scope: !872, file: !3, line: 102, type: !152)
!881 = !DILocation(line: 102, column: 12, scope: !872)
!882 = !DILocation(line: 103, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !872, file: !3, line: 103, column: 5)
!884 = !DILocation(line: 103, column: 10, scope: !883)
!885 = !DILocation(line: 103, column: 17, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 103, column: 5)
!887 = !DILocation(line: 103, column: 21, scope: !886)
!888 = !DILocation(line: 103, column: 19, scope: !886)
!889 = !DILocation(line: 103, column: 5, scope: !883)
!890 = !DILocation(line: 105, column: 24, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 104, column: 5)
!892 = !DILocation(line: 105, column: 30, scope: !891)
!893 = !DILocation(line: 105, column: 9, scope: !891)
!894 = !DILocation(line: 106, column: 5, scope: !891)
!895 = !DILocation(line: 103, column: 31, scope: !886)
!896 = !DILocation(line: 103, column: 5, scope: !886)
!897 = distinct !{!897, !889, !898, !275}
!898 = !DILocation(line: 106, column: 5, scope: !883)
!899 = !DILocation(line: 107, column: 5, scope: !872)
!900 = !DILocation(line: 108, column: 1, scope: !872)
!901 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !902, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DISubroutineType(types: !903)
!903 = !{!152, !875, !152, !42}
!904 = !DILocalVariable(name: "bytes", arg: 1, scope: !901, file: !3, line: 113, type: !875)
!905 = !DILocation(line: 113, column: 39, scope: !901)
!906 = !DILocalVariable(name: "numBytes", arg: 2, scope: !901, file: !3, line: 113, type: !152)
!907 = !DILocation(line: 113, column: 53, scope: !901)
!908 = !DILocalVariable(name: "hex", arg: 3, scope: !901, file: !3, line: 113, type: !42)
!909 = !DILocation(line: 113, column: 71, scope: !901)
!910 = !DILocalVariable(name: "numWritten", scope: !901, file: !3, line: 115, type: !152)
!911 = !DILocation(line: 115, column: 12, scope: !901)
!912 = !DILocation(line: 121, column: 5, scope: !901)
!913 = !DILocation(line: 121, column: 12, scope: !901)
!914 = !DILocation(line: 121, column: 25, scope: !901)
!915 = !DILocation(line: 121, column: 23, scope: !901)
!916 = !DILocation(line: 121, column: 34, scope: !901)
!917 = !DILocation(line: 121, column: 37, scope: !901)
!918 = !DILocation(line: 121, column: 67, scope: !901)
!919 = !DILocation(line: 121, column: 70, scope: !901)
!920 = !DILocation(line: 0, scope: !901)
!921 = !DILocalVariable(name: "byte", scope: !922, file: !3, line: 123, type: !23)
!922 = distinct !DILexicalBlock(scope: !901, file: !3, line: 122, column: 5)
!923 = !DILocation(line: 123, column: 13, scope: !922)
!924 = !DILocation(line: 124, column: 17, scope: !922)
!925 = !DILocation(line: 124, column: 25, scope: !922)
!926 = !DILocation(line: 124, column: 23, scope: !922)
!927 = !DILocation(line: 124, column: 9, scope: !922)
!928 = !DILocation(line: 125, column: 45, scope: !922)
!929 = !DILocation(line: 125, column: 29, scope: !922)
!930 = !DILocation(line: 125, column: 9, scope: !922)
!931 = !DILocation(line: 125, column: 15, scope: !922)
!932 = !DILocation(line: 125, column: 27, scope: !922)
!933 = !DILocation(line: 126, column: 9, scope: !922)
!934 = distinct !{!934, !912, !935, !275}
!935 = !DILocation(line: 127, column: 5, scope: !901)
!936 = !DILocation(line: 129, column: 12, scope: !901)
!937 = !DILocation(line: 129, column: 5, scope: !901)
!938 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !939, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!939 = !DISubroutineType(types: !940)
!940 = !{!152, !875, !152, !736}
!941 = !DILocalVariable(name: "bytes", arg: 1, scope: !938, file: !3, line: 135, type: !875)
!942 = !DILocation(line: 135, column: 41, scope: !938)
!943 = !DILocalVariable(name: "numBytes", arg: 2, scope: !938, file: !3, line: 135, type: !152)
!944 = !DILocation(line: 135, column: 55, scope: !938)
!945 = !DILocalVariable(name: "hex", arg: 3, scope: !938, file: !3, line: 135, type: !736)
!946 = !DILocation(line: 135, column: 76, scope: !938)
!947 = !DILocalVariable(name: "numWritten", scope: !938, file: !3, line: 137, type: !152)
!948 = !DILocation(line: 137, column: 12, scope: !938)
!949 = !DILocation(line: 143, column: 5, scope: !938)
!950 = !DILocation(line: 143, column: 12, scope: !938)
!951 = !DILocation(line: 143, column: 25, scope: !938)
!952 = !DILocation(line: 143, column: 23, scope: !938)
!953 = !DILocation(line: 143, column: 34, scope: !938)
!954 = !DILocation(line: 143, column: 47, scope: !938)
!955 = !DILocation(line: 143, column: 55, scope: !938)
!956 = !DILocation(line: 143, column: 53, scope: !938)
!957 = !DILocation(line: 143, column: 37, scope: !938)
!958 = !DILocation(line: 143, column: 68, scope: !938)
!959 = !DILocation(line: 143, column: 81, scope: !938)
!960 = !DILocation(line: 143, column: 89, scope: !938)
!961 = !DILocation(line: 143, column: 87, scope: !938)
!962 = !DILocation(line: 143, column: 100, scope: !938)
!963 = !DILocation(line: 143, column: 71, scope: !938)
!964 = !DILocation(line: 0, scope: !938)
!965 = !DILocalVariable(name: "byte", scope: !966, file: !3, line: 145, type: !23)
!966 = distinct !DILexicalBlock(scope: !938, file: !3, line: 144, column: 5)
!967 = !DILocation(line: 145, column: 13, scope: !966)
!968 = !DILocation(line: 146, column: 18, scope: !966)
!969 = !DILocation(line: 146, column: 26, scope: !966)
!970 = !DILocation(line: 146, column: 24, scope: !966)
!971 = !DILocation(line: 146, column: 9, scope: !966)
!972 = !DILocation(line: 147, column: 45, scope: !966)
!973 = !DILocation(line: 147, column: 29, scope: !966)
!974 = !DILocation(line: 147, column: 9, scope: !966)
!975 = !DILocation(line: 147, column: 15, scope: !966)
!976 = !DILocation(line: 147, column: 27, scope: !966)
!977 = !DILocation(line: 148, column: 9, scope: !966)
!978 = distinct !{!978, !949, !979, !275}
!979 = !DILocation(line: 149, column: 5, scope: !938)
!980 = !DILocation(line: 151, column: 12, scope: !938)
!981 = !DILocation(line: 151, column: 5, scope: !938)
!982 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !983, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!983 = !DISubroutineType(types: !984)
!984 = !{!23}
!985 = !DILocation(line: 158, column: 5, scope: !982)
!986 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !983, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!987 = !DILocation(line: 163, column: 5, scope: !986)
!988 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !983, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!989 = !DILocation(line: 168, column: 13, scope: !988)
!990 = !DILocation(line: 168, column: 20, scope: !988)
!991 = !DILocation(line: 168, column: 5, scope: !988)
!992 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!993 = !DILocation(line: 187, column: 16, scope: !992)
!994 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!995 = !DILocation(line: 188, column: 16, scope: !994)
!996 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!997 = !DILocation(line: 189, column: 16, scope: !996)
!998 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!999 = !DILocation(line: 190, column: 16, scope: !998)
!1000 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1001 = !DILocation(line: 191, column: 16, scope: !1000)
!1002 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1003 = !DILocation(line: 192, column: 16, scope: !1002)
!1004 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1005 = !DILocation(line: 193, column: 16, scope: !1004)
!1006 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1007 = !DILocation(line: 194, column: 16, scope: !1006)
!1008 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1009 = !DILocation(line: 195, column: 16, scope: !1008)
!1010 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1011 = !DILocation(line: 198, column: 15, scope: !1010)
!1012 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1013 = !DILocation(line: 199, column: 15, scope: !1012)
!1014 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1015 = !DILocation(line: 200, column: 15, scope: !1014)
!1016 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1017 = !DILocation(line: 201, column: 15, scope: !1016)
!1018 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1019 = !DILocation(line: 202, column: 15, scope: !1018)
!1020 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1021 = !DILocation(line: 203, column: 15, scope: !1020)
!1022 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1023 = !DILocation(line: 204, column: 15, scope: !1022)
!1024 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1025 = !DILocation(line: 205, column: 15, scope: !1024)
!1026 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1027 = !DILocation(line: 206, column: 15, scope: !1026)
