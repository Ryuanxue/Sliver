; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData = dso_local global i8* null, align 8, !dbg !63
@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData = dso_local global i8* null, align 8, !dbg !65
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !67
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !92
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !94
@globalTrue = dso_local global i32 1, align 4, !dbg !96
@globalFalse = dso_local global i32 0, align 4, !dbg !98
@globalFive = dso_local global i32 5, align 4, !dbg !100
@globalArgc = dso_local global i32 0, align 4, !dbg !102
@globalArgv = dso_local global i8** null, align 8, !dbg !104
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
define dso_local void @badSink() #0 !dbg !111 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData, align 8, !dbg !117
  store i8* %0, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %n, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !123, metadata !DIExpression()), !dbg !124
  %1 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !127
  %cmp = icmp eq i32 %call, 1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !130
  store i32 0, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !134

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !135
  %3 = load i32, i32* %n, align 4, !dbg !137
  %cmp1 = icmp slt i32 %2, %3, !dbg !138
  br i1 %cmp1, label %for.body, label %for.end, !dbg !139

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !140
  %inc = add nsw i32 %4, 1, !dbg !140
  store i32 %inc, i32* %intVariable, align 4, !dbg !140
  br label %for.inc, !dbg !142

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !143
  %inc2 = add nsw i32 %5, 1, !dbg !143
  store i32 %inc2, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !144, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !148
  call void @printIntLine(i32 %6), !dbg !149
  br label %if.end, !dbg !150

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !151
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !155, metadata !DIExpression()), !dbg !159
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !159
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !160
  store i8* %arraydecay, i8** %data, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !165, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !189, metadata !DIExpression()), !dbg !190
  store i32 -1, i32* %connectSocket, align 4, !dbg !190
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i64 @strlen(i8* %1) #8, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  br label %do.body, !dbg !198

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !199
  store i32 %call1, i32* %connectSocket, align 4, !dbg !201
  %2 = load i32, i32* %connectSocket, align 4, !dbg !202
  %cmp = icmp eq i32 %2, -1, !dbg !204
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !206

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !208
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !209
  store i16 2, i16* %sin_family, align 4, !dbg !210
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !211
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !212
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !213
  store i32 %call2, i32* %s_addr, align 4, !dbg !214
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !215
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !216
  store i16 %call3, i16* %sin_port, align 2, !dbg !217
  %4 = load i32, i32* %connectSocket, align 4, !dbg !218
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !220
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !221
  %cmp5 = icmp eq i32 %call4, -1, !dbg !222
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !223

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !224

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !226
  %7 = load i8*, i8** %data, align 8, !dbg !227
  %8 = load i64, i64* %dataLen, align 8, !dbg !228
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !229
  %9 = load i64, i64* %dataLen, align 8, !dbg !230
  %sub = sub i64 100, %9, !dbg !231
  %sub8 = sub i64 %sub, 1, !dbg !232
  %mul = mul i64 1, %sub8, !dbg !233
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !234
  %conv = trunc i64 %call9 to i32, !dbg !234
  store i32 %conv, i32* %recvResult, align 4, !dbg !235
  %10 = load i32, i32* %recvResult, align 4, !dbg !236
  %cmp10 = icmp eq i32 %10, -1, !dbg !238
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !239

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !240
  %cmp12 = icmp eq i32 %11, 0, !dbg !241
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !242

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !243

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !245
  %13 = load i64, i64* %dataLen, align 8, !dbg !246
  %14 = load i32, i32* %recvResult, align 4, !dbg !247
  %conv16 = sext i32 %14 to i64, !dbg !247
  %div = udiv i64 %conv16, 1, !dbg !248
  %add = add i64 %13, %div, !dbg !249
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !245
  store i8 0, i8* %arrayidx, align 1, !dbg !250
  %15 = load i8*, i8** %data, align 8, !dbg !251
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !252
  store i8* %call17, i8** %replace, align 8, !dbg !253
  %16 = load i8*, i8** %replace, align 8, !dbg !254
  %tobool = icmp ne i8* %16, null, !dbg !254
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !256

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !257
  store i8 0, i8* %17, align 1, !dbg !259
  br label %if.end19, !dbg !260

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !261
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !262
  store i8* %call20, i8** %replace, align 8, !dbg !263
  %19 = load i8*, i8** %replace, align 8, !dbg !264
  %tobool21 = icmp ne i8* %19, null, !dbg !264
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !266

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !267
  store i8 0, i8* %20, align 1, !dbg !269
  br label %if.end23, !dbg !270

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !271

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !272
  %cmp24 = icmp ne i32 %21, -1, !dbg !274
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !275

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !276
  %call27 = call i32 @close(i32 %22), !dbg !278
  br label %if.end28, !dbg !279

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !280
  store i8* %23, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData, align 8, !dbg !281
  call void @badSink(), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !284 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData, align 8, !dbg !287
  store i8* %0, i8** %data, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %i, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %n, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !293, metadata !DIExpression()), !dbg !294
  %1 = load i8*, i8** %data, align 8, !dbg !295
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !297
  %cmp = icmp eq i32 %call, 1, !dbg !298
  br i1 %cmp, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !300
  store i32 0, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !304

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !305
  %3 = load i32, i32* %n, align 4, !dbg !307
  %cmp1 = icmp slt i32 %2, %3, !dbg !308
  br i1 %cmp1, label %for.body, label %for.end, !dbg !309

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !310
  %inc = add nsw i32 %4, 1, !dbg !310
  store i32 %inc, i32* %intVariable, align 4, !dbg !310
  br label %for.inc, !dbg !312

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !313
  %inc2 = add nsw i32 %5, 1, !dbg !313
  store i32 %inc2, i32* %i, align 4, !dbg !313
  br label %for.cond, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !317
  call void @printIntLine(i32 %6), !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !321 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !325
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !325
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !326
  store i8* %arraydecay, i8** %data, align 8, !dbg !327
  %1 = load i8*, i8** %data, align 8, !dbg !328
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !329
  %2 = load i8*, i8** %data, align 8, !dbg !330
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData, align 8, !dbg !331
  call void @goodG2BSink(), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !334 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData, align 8, !dbg !337
  store i8* %0, i8** %data, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %i, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %n, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !343, metadata !DIExpression()), !dbg !344
  %1 = load i8*, i8** %data, align 8, !dbg !345
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !347
  %cmp = icmp eq i32 %call, 1, !dbg !348
  br i1 %cmp, label %if.then, label %if.end5, !dbg !349

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !350
  %cmp1 = icmp slt i32 %2, 10000, !dbg !353
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !354

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !359

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !360
  %4 = load i32, i32* %n, align 4, !dbg !362
  %cmp3 = icmp slt i32 %3, %4, !dbg !363
  br i1 %cmp3, label %for.body, label %for.end, !dbg !364

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !365
  %inc = add nsw i32 %5, 1, !dbg !365
  store i32 %inc, i32* %intVariable, align 4, !dbg !365
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !368
  %inc4 = add nsw i32 %6, 1, !dbg !368
  store i32 %inc4, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !372
  call void @printIntLine(i32 %7), !dbg !373
  br label %if.end, !dbg !374

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !375

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !377 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !381
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !381
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !382
  store i8* %arraydecay, i8** %data, align 8, !dbg !383
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !384, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !391, metadata !DIExpression()), !dbg !392
  store i32 -1, i32* %connectSocket, align 4, !dbg !392
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !393, metadata !DIExpression()), !dbg !394
  %1 = load i8*, i8** %data, align 8, !dbg !395
  %call = call i64 @strlen(i8* %1) #8, !dbg !396
  store i64 %call, i64* %dataLen, align 8, !dbg !394
  br label %do.body, !dbg !397

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !398
  store i32 %call1, i32* %connectSocket, align 4, !dbg !400
  %2 = load i32, i32* %connectSocket, align 4, !dbg !401
  %cmp = icmp eq i32 %2, -1, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !405

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !407
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !407
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !408
  store i16 2, i16* %sin_family, align 4, !dbg !409
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !410
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !411
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !412
  store i32 %call2, i32* %s_addr, align 4, !dbg !413
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !414
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !415
  store i16 %call3, i16* %sin_port, align 2, !dbg !416
  %4 = load i32, i32* %connectSocket, align 4, !dbg !417
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !419
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !420
  %cmp5 = icmp eq i32 %call4, -1, !dbg !421
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !422

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !423

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !425
  %7 = load i8*, i8** %data, align 8, !dbg !426
  %8 = load i64, i64* %dataLen, align 8, !dbg !427
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !428
  %9 = load i64, i64* %dataLen, align 8, !dbg !429
  %sub = sub i64 100, %9, !dbg !430
  %sub8 = sub i64 %sub, 1, !dbg !431
  %mul = mul i64 1, %sub8, !dbg !432
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !433
  %conv = trunc i64 %call9 to i32, !dbg !433
  store i32 %conv, i32* %recvResult, align 4, !dbg !434
  %10 = load i32, i32* %recvResult, align 4, !dbg !435
  %cmp10 = icmp eq i32 %10, -1, !dbg !437
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !438

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !439
  %cmp12 = icmp eq i32 %11, 0, !dbg !440
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !441

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !442

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !444
  %13 = load i64, i64* %dataLen, align 8, !dbg !445
  %14 = load i32, i32* %recvResult, align 4, !dbg !446
  %conv16 = sext i32 %14 to i64, !dbg !446
  %div = udiv i64 %conv16, 1, !dbg !447
  %add = add i64 %13, %div, !dbg !448
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !444
  store i8 0, i8* %arrayidx, align 1, !dbg !449
  %15 = load i8*, i8** %data, align 8, !dbg !450
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !451
  store i8* %call17, i8** %replace, align 8, !dbg !452
  %16 = load i8*, i8** %replace, align 8, !dbg !453
  %tobool = icmp ne i8* %16, null, !dbg !453
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !455

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !456
  store i8 0, i8* %17, align 1, !dbg !458
  br label %if.end19, !dbg !459

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !460
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !461
  store i8* %call20, i8** %replace, align 8, !dbg !462
  %19 = load i8*, i8** %replace, align 8, !dbg !463
  %tobool21 = icmp ne i8* %19, null, !dbg !463
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !465

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !466
  store i8 0, i8* %20, align 1, !dbg !468
  br label %if.end23, !dbg !469

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !470

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !471
  %cmp24 = icmp ne i32 %21, -1, !dbg !473
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !474

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !475
  %call27 = call i32 @close(i32 %22), !dbg !477
  br label %if.end28, !dbg !478

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !479
  store i8* %23, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData, align 8, !dbg !480
  call void @goodB2GSink(), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_good() #0 !dbg !483 {
entry:
  call void @goodG2B(), !dbg !484
  call void @goodB2G(), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !487 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !492
  %0 = load i8*, i8** %line.addr, align 8, !dbg !493
  %cmp = icmp ne i8* %0, null, !dbg !495
  br i1 %cmp, label %if.then, label %if.end, !dbg !496

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !497
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !499
  br label %if.end, !dbg !500

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !501
  ret void, !dbg !502
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !503 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i8*, i8** %line.addr, align 8, !dbg !506
  %cmp = icmp ne i8* %0, null, !dbg !508
  br i1 %cmp, label %if.then, label %if.end, !dbg !509

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !512
  br label %if.end, !dbg !513

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !515 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load i32*, i32** %line.addr, align 8, !dbg !522
  %cmp = icmp ne i32* %0, null, !dbg !524
  br i1 %cmp, label %if.then, label %if.end, !dbg !525

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !526
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !528
  br label %if.end, !dbg !529

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !530
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !531 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !539 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !545
  %conv = sext i16 %0 to i32, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !548 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !554
  %conv = fpext float %0 to double, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !557 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !566 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !577 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !585 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !590
  %conv = sext i8 %0 to i32, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !593 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !598, metadata !DIExpression()), !dbg !602
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !603
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !604
  store i32 %0, i32* %arrayidx, align 4, !dbg !605
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !606
  store i32 0, i32* %arrayidx1, align 4, !dbg !607
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !611 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !616
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !619 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !624
  %conv = zext i8 %0 to i32, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !627 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !636 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !648
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !649
  %1 = load i32, i32* %intOne, align 4, !dbg !649
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !650
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !651
  %3 = load i32, i32* %intTwo, align 4, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !654 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !658, metadata !DIExpression()), !dbg !659
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !660, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.declare(metadata i64* %i, metadata !662, metadata !DIExpression()), !dbg !663
  store i64 0, i64* %i, align 8, !dbg !664
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !667
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !669
  %cmp = icmp ult i64 %0, %1, !dbg !670
  br i1 %cmp, label %for.body, label %for.end, !dbg !671

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !672
  %3 = load i64, i64* %i, align 8, !dbg !674
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !672
  %4 = load i8, i8* %arrayidx, align 1, !dbg !672
  %conv = zext i8 %4 to i32, !dbg !672
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !675
  br label %for.inc, !dbg !676

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !677
  %inc = add i64 %5, 1, !dbg !677
  store i64 %inc, i64* %i, align 8, !dbg !677
  br label %for.cond, !dbg !678, !llvm.loop !679

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !681
  ret void, !dbg !682
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !683 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !688, metadata !DIExpression()), !dbg !689
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !690, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !692, metadata !DIExpression()), !dbg !693
  store i64 0, i64* %numWritten, align 8, !dbg !693
  br label %while.cond, !dbg !694

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !695
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !696
  %cmp = icmp ult i64 %0, %1, !dbg !697
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !698

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !699
  %2 = load i16*, i16** %call, align 8, !dbg !699
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !699
  %4 = load i64, i64* %numWritten, align 8, !dbg !699
  %mul = mul i64 2, %4, !dbg !699
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !699
  %5 = load i8, i8* %arrayidx, align 1, !dbg !699
  %conv = sext i8 %5 to i32, !dbg !699
  %idxprom = sext i32 %conv to i64, !dbg !699
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !699
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !699
  %conv2 = zext i16 %6 to i32, !dbg !699
  %and = and i32 %conv2, 4096, !dbg !699
  %tobool = icmp ne i32 %and, 0, !dbg !699
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !700

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !701
  %7 = load i16*, i16** %call3, align 8, !dbg !701
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !701
  %9 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul4 = mul i64 2, %9, !dbg !701
  %add = add i64 %mul4, 1, !dbg !701
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !701
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !701
  %conv6 = sext i8 %10 to i32, !dbg !701
  %idxprom7 = sext i32 %conv6 to i64, !dbg !701
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !701
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !701
  %conv9 = zext i16 %11 to i32, !dbg !701
  %and10 = and i32 %conv9, 4096, !dbg !701
  %tobool11 = icmp ne i32 %and10, 0, !dbg !700
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !702
  br i1 %12, label %while.body, label %while.end, !dbg !694

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !703, metadata !DIExpression()), !dbg !705
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !706
  %14 = load i64, i64* %numWritten, align 8, !dbg !707
  %mul12 = mul i64 2, %14, !dbg !708
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !706
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !709
  %15 = load i32, i32* %byte, align 4, !dbg !710
  %conv15 = trunc i32 %15 to i8, !dbg !711
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !712
  %17 = load i64, i64* %numWritten, align 8, !dbg !713
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !712
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !714
  %18 = load i64, i64* %numWritten, align 8, !dbg !715
  %inc = add i64 %18, 1, !dbg !715
  store i64 %inc, i64* %numWritten, align 8, !dbg !715
  br label %while.cond, !dbg !694, !llvm.loop !716

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !718
  ret i64 %19, !dbg !719
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !720 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 0, i64* %numWritten, align 8, !dbg !730
  br label %while.cond, !dbg !731

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !732
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !733
  %cmp = icmp ult i64 %0, %1, !dbg !734
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !735

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %3 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul = mul i64 2, %3, !dbg !738
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !736
  %4 = load i32, i32* %arrayidx, align 4, !dbg !736
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !739
  %tobool = icmp ne i32 %call, 0, !dbg !739
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !740

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !741
  %6 = load i64, i64* %numWritten, align 8, !dbg !742
  %mul1 = mul i64 2, %6, !dbg !743
  %add = add i64 %mul1, 1, !dbg !744
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !741
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !741
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !745
  %tobool4 = icmp ne i32 %call3, 0, !dbg !740
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !746
  br i1 %8, label %while.body, label %while.end, !dbg !731

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !747, metadata !DIExpression()), !dbg !749
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !750
  %10 = load i64, i64* %numWritten, align 8, !dbg !751
  %mul5 = mul i64 2, %10, !dbg !752
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !750
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !753
  %11 = load i32, i32* %byte, align 4, !dbg !754
  %conv = trunc i32 %11 to i8, !dbg !755
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !756
  %13 = load i64, i64* %numWritten, align 8, !dbg !757
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !756
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !758
  %14 = load i64, i64* %numWritten, align 8, !dbg !759
  %inc = add i64 %14, 1, !dbg !759
  store i64 %inc, i64* %numWritten, align 8, !dbg !759
  br label %while.cond, !dbg !731, !llvm.loop !760

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !762
  ret i64 %15, !dbg !763
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !764 {
entry:
  ret i32 1, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !768 {
entry:
  ret i32 0, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !770 {
entry:
  %call = call i32 @rand() #7, !dbg !771
  %rem = srem i32 %call, 2, !dbg !772
  ret i32 %rem, !dbg !773
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !69}
!llvm.ident = !{!107, !107}
!llvm.module.flags = !{!108, !109, !110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData", scope: !2, file: !3, line: 48, type: !61, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_958/source_code")
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
!47 = !{!48, !61}
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
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!62 = !{!0, !63, !65}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData", scope: !2, file: !3, line: 49, type: !61, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData", scope: !2, file: !3, line: 50, type: !61, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !69, file: !70, line: 174, type: !89, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !87, globals: !91, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_958/source_code")
!71 = !{!72}
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!75 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!87 = !{!88, !89, !55, !90}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !{!67, !92, !94, !96, !98, !100, !102, !104}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !69, file: !70, line: 175, type: !89, isLocal: false, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !69, file: !70, line: 176, type: !89, isLocal: false, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "globalTrue", scope: !69, file: !70, line: 181, type: !89, isLocal: false, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "globalFalse", scope: !69, file: !70, line: 182, type: !89, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalFive", scope: !69, file: !70, line: 183, type: !89, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "globalArgc", scope: !69, file: !70, line: 214, type: !89, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "globalArgv", scope: !69, file: !70, line: 215, type: !106, isLocal: false, isDefinition: true)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!107 = !{!"clang version 12.0.0"}
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 54, type: !112, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !{}
!115 = !DILocalVariable(name: "data", scope: !111, file: !3, line: 56, type: !61)
!116 = !DILocation(line: 56, column: 12, scope: !111)
!117 = !DILocation(line: 56, column: 19, scope: !111)
!118 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 58, type: !89)
!119 = distinct !DILexicalBlock(scope: !111, file: !3, line: 57, column: 5)
!120 = !DILocation(line: 58, column: 13, scope: !119)
!121 = !DILocalVariable(name: "n", scope: !119, file: !3, line: 58, type: !89)
!122 = !DILocation(line: 58, column: 16, scope: !119)
!123 = !DILocalVariable(name: "intVariable", scope: !119, file: !3, line: 58, type: !89)
!124 = !DILocation(line: 58, column: 19, scope: !119)
!125 = !DILocation(line: 59, column: 20, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 59, column: 13)
!127 = !DILocation(line: 59, column: 13, scope: !126)
!128 = !DILocation(line: 59, column: 36, scope: !126)
!129 = !DILocation(line: 59, column: 13, scope: !119)
!130 = !DILocation(line: 62, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !3, line: 60, column: 9)
!132 = !DILocation(line: 63, column: 20, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !3, line: 63, column: 13)
!134 = !DILocation(line: 63, column: 18, scope: !133)
!135 = !DILocation(line: 63, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 63, column: 13)
!137 = !DILocation(line: 63, column: 29, scope: !136)
!138 = !DILocation(line: 63, column: 27, scope: !136)
!139 = !DILocation(line: 63, column: 13, scope: !133)
!140 = !DILocation(line: 66, column: 28, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 64, column: 13)
!142 = !DILocation(line: 67, column: 13, scope: !141)
!143 = !DILocation(line: 63, column: 33, scope: !136)
!144 = !DILocation(line: 63, column: 13, scope: !136)
!145 = distinct !{!145, !139, !146, !147}
!146 = !DILocation(line: 67, column: 13, scope: !133)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 68, column: 26, scope: !131)
!149 = !DILocation(line: 68, column: 13, scope: !131)
!150 = !DILocation(line: 69, column: 9, scope: !131)
!151 = !DILocation(line: 71, column: 1, scope: !111)
!152 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad", scope: !3, file: !3, line: 73, type: !112, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!153 = !DILocalVariable(name: "data", scope: !152, file: !3, line: 75, type: !61)
!154 = !DILocation(line: 75, column: 12, scope: !152)
!155 = !DILocalVariable(name: "dataBuffer", scope: !152, file: !3, line: 76, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 100)
!159 = !DILocation(line: 76, column: 10, scope: !152)
!160 = !DILocation(line: 77, column: 12, scope: !152)
!161 = !DILocation(line: 77, column: 10, scope: !152)
!162 = !DILocalVariable(name: "recvResult", scope: !163, file: !3, line: 83, type: !89)
!163 = distinct !DILexicalBlock(scope: !152, file: !3, line: 78, column: 5)
!164 = !DILocation(line: 83, column: 13, scope: !163)
!165 = !DILocalVariable(name: "service", scope: !163, file: !3, line: 84, type: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !167)
!167 = !{!168, !169, !175, !182}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !166, file: !19, line: 240, baseType: !53, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !166, file: !19, line: 241, baseType: !170, size: 16, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !172, line: 25, baseType: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !174, line: 40, baseType: !55)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !166, file: !19, line: 242, baseType: !176, size: 32, offset: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !176, file: !19, line: 33, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !172, line: 26, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !174, line: 42, baseType: !7)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !166, file: !19, line: 245, baseType: !183, size: 64, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DILocation(line: 84, column: 28, scope: !163)
!187 = !DILocalVariable(name: "replace", scope: !163, file: !3, line: 85, type: !61)
!188 = !DILocation(line: 85, column: 15, scope: !163)
!189 = !DILocalVariable(name: "connectSocket", scope: !163, file: !3, line: 86, type: !89)
!190 = !DILocation(line: 86, column: 16, scope: !163)
!191 = !DILocalVariable(name: "dataLen", scope: !163, file: !3, line: 87, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 46, baseType: !194)
!193 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!194 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!195 = !DILocation(line: 87, column: 16, scope: !163)
!196 = !DILocation(line: 87, column: 33, scope: !163)
!197 = !DILocation(line: 87, column: 26, scope: !163)
!198 = !DILocation(line: 88, column: 9, scope: !163)
!199 = !DILocation(line: 98, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !163, file: !3, line: 89, column: 9)
!201 = !DILocation(line: 98, column: 27, scope: !200)
!202 = !DILocation(line: 99, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 99, column: 17)
!204 = !DILocation(line: 99, column: 31, scope: !203)
!205 = !DILocation(line: 99, column: 17, scope: !200)
!206 = !DILocation(line: 101, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 100, column: 13)
!208 = !DILocation(line: 103, column: 13, scope: !200)
!209 = !DILocation(line: 104, column: 21, scope: !200)
!210 = !DILocation(line: 104, column: 32, scope: !200)
!211 = !DILocation(line: 105, column: 39, scope: !200)
!212 = !DILocation(line: 105, column: 21, scope: !200)
!213 = !DILocation(line: 105, column: 30, scope: !200)
!214 = !DILocation(line: 105, column: 37, scope: !200)
!215 = !DILocation(line: 106, column: 32, scope: !200)
!216 = !DILocation(line: 106, column: 21, scope: !200)
!217 = !DILocation(line: 106, column: 30, scope: !200)
!218 = !DILocation(line: 107, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !200, file: !3, line: 107, column: 17)
!220 = !DILocation(line: 107, column: 40, scope: !219)
!221 = !DILocation(line: 107, column: 17, scope: !219)
!222 = !DILocation(line: 107, column: 85, scope: !219)
!223 = !DILocation(line: 107, column: 17, scope: !200)
!224 = !DILocation(line: 109, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 108, column: 13)
!226 = !DILocation(line: 114, column: 31, scope: !200)
!227 = !DILocation(line: 114, column: 55, scope: !200)
!228 = !DILocation(line: 114, column: 62, scope: !200)
!229 = !DILocation(line: 114, column: 60, scope: !200)
!230 = !DILocation(line: 114, column: 94, scope: !200)
!231 = !DILocation(line: 114, column: 92, scope: !200)
!232 = !DILocation(line: 114, column: 102, scope: !200)
!233 = !DILocation(line: 114, column: 85, scope: !200)
!234 = !DILocation(line: 114, column: 26, scope: !200)
!235 = !DILocation(line: 114, column: 24, scope: !200)
!236 = !DILocation(line: 115, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !200, file: !3, line: 115, column: 17)
!238 = !DILocation(line: 115, column: 28, scope: !237)
!239 = !DILocation(line: 115, column: 44, scope: !237)
!240 = !DILocation(line: 115, column: 47, scope: !237)
!241 = !DILocation(line: 115, column: 58, scope: !237)
!242 = !DILocation(line: 115, column: 17, scope: !200)
!243 = !DILocation(line: 117, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !3, line: 116, column: 13)
!245 = !DILocation(line: 120, column: 13, scope: !200)
!246 = !DILocation(line: 120, column: 18, scope: !200)
!247 = !DILocation(line: 120, column: 28, scope: !200)
!248 = !DILocation(line: 120, column: 39, scope: !200)
!249 = !DILocation(line: 120, column: 26, scope: !200)
!250 = !DILocation(line: 120, column: 55, scope: !200)
!251 = !DILocation(line: 122, column: 30, scope: !200)
!252 = !DILocation(line: 122, column: 23, scope: !200)
!253 = !DILocation(line: 122, column: 21, scope: !200)
!254 = !DILocation(line: 123, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !200, file: !3, line: 123, column: 17)
!256 = !DILocation(line: 123, column: 17, scope: !200)
!257 = !DILocation(line: 125, column: 18, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 124, column: 13)
!259 = !DILocation(line: 125, column: 26, scope: !258)
!260 = !DILocation(line: 126, column: 13, scope: !258)
!261 = !DILocation(line: 127, column: 30, scope: !200)
!262 = !DILocation(line: 127, column: 23, scope: !200)
!263 = !DILocation(line: 127, column: 21, scope: !200)
!264 = !DILocation(line: 128, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !200, file: !3, line: 128, column: 17)
!266 = !DILocation(line: 128, column: 17, scope: !200)
!267 = !DILocation(line: 130, column: 18, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 129, column: 13)
!269 = !DILocation(line: 130, column: 26, scope: !268)
!270 = !DILocation(line: 131, column: 13, scope: !268)
!271 = !DILocation(line: 132, column: 9, scope: !200)
!272 = !DILocation(line: 134, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !163, file: !3, line: 134, column: 13)
!274 = !DILocation(line: 134, column: 27, scope: !273)
!275 = !DILocation(line: 134, column: 13, scope: !163)
!276 = !DILocation(line: 136, column: 26, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 135, column: 9)
!278 = !DILocation(line: 136, column: 13, scope: !277)
!279 = !DILocation(line: 137, column: 9, scope: !277)
!280 = !DILocation(line: 145, column: 71, scope: !152)
!281 = !DILocation(line: 145, column: 69, scope: !152)
!282 = !DILocation(line: 146, column: 5, scope: !152)
!283 = !DILocation(line: 147, column: 1, scope: !152)
!284 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 154, type: !112, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!285 = !DILocalVariable(name: "data", scope: !284, file: !3, line: 156, type: !61)
!286 = !DILocation(line: 156, column: 12, scope: !284)
!287 = !DILocation(line: 156, column: 19, scope: !284)
!288 = !DILocalVariable(name: "i", scope: !289, file: !3, line: 158, type: !89)
!289 = distinct !DILexicalBlock(scope: !284, file: !3, line: 157, column: 5)
!290 = !DILocation(line: 158, column: 13, scope: !289)
!291 = !DILocalVariable(name: "n", scope: !289, file: !3, line: 158, type: !89)
!292 = !DILocation(line: 158, column: 16, scope: !289)
!293 = !DILocalVariable(name: "intVariable", scope: !289, file: !3, line: 158, type: !89)
!294 = !DILocation(line: 158, column: 19, scope: !289)
!295 = !DILocation(line: 159, column: 20, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !3, line: 159, column: 13)
!297 = !DILocation(line: 159, column: 13, scope: !296)
!298 = !DILocation(line: 159, column: 36, scope: !296)
!299 = !DILocation(line: 159, column: 13, scope: !289)
!300 = !DILocation(line: 162, column: 25, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !3, line: 160, column: 9)
!302 = !DILocation(line: 163, column: 20, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !3, line: 163, column: 13)
!304 = !DILocation(line: 163, column: 18, scope: !303)
!305 = !DILocation(line: 163, column: 25, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 163, column: 13)
!307 = !DILocation(line: 163, column: 29, scope: !306)
!308 = !DILocation(line: 163, column: 27, scope: !306)
!309 = !DILocation(line: 163, column: 13, scope: !303)
!310 = !DILocation(line: 166, column: 28, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !3, line: 164, column: 13)
!312 = !DILocation(line: 167, column: 13, scope: !311)
!313 = !DILocation(line: 163, column: 33, scope: !306)
!314 = !DILocation(line: 163, column: 13, scope: !306)
!315 = distinct !{!315, !309, !316, !147}
!316 = !DILocation(line: 167, column: 13, scope: !303)
!317 = !DILocation(line: 168, column: 26, scope: !301)
!318 = !DILocation(line: 168, column: 13, scope: !301)
!319 = !DILocation(line: 169, column: 9, scope: !301)
!320 = !DILocation(line: 171, column: 1, scope: !284)
!321 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 173, type: !112, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!322 = !DILocalVariable(name: "data", scope: !321, file: !3, line: 175, type: !61)
!323 = !DILocation(line: 175, column: 12, scope: !321)
!324 = !DILocalVariable(name: "dataBuffer", scope: !321, file: !3, line: 176, type: !156)
!325 = !DILocation(line: 176, column: 10, scope: !321)
!326 = !DILocation(line: 177, column: 12, scope: !321)
!327 = !DILocation(line: 177, column: 10, scope: !321)
!328 = !DILocation(line: 179, column: 12, scope: !321)
!329 = !DILocation(line: 179, column: 5, scope: !321)
!330 = !DILocation(line: 180, column: 75, scope: !321)
!331 = !DILocation(line: 180, column: 73, scope: !321)
!332 = !DILocation(line: 181, column: 5, scope: !321)
!333 = !DILocation(line: 182, column: 1, scope: !321)
!334 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 185, type: !112, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!335 = !DILocalVariable(name: "data", scope: !334, file: !3, line: 187, type: !61)
!336 = !DILocation(line: 187, column: 12, scope: !334)
!337 = !DILocation(line: 187, column: 19, scope: !334)
!338 = !DILocalVariable(name: "i", scope: !339, file: !3, line: 189, type: !89)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 188, column: 5)
!340 = !DILocation(line: 189, column: 13, scope: !339)
!341 = !DILocalVariable(name: "n", scope: !339, file: !3, line: 189, type: !89)
!342 = !DILocation(line: 189, column: 16, scope: !339)
!343 = !DILocalVariable(name: "intVariable", scope: !339, file: !3, line: 189, type: !89)
!344 = !DILocation(line: 189, column: 19, scope: !339)
!345 = !DILocation(line: 190, column: 20, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !3, line: 190, column: 13)
!347 = !DILocation(line: 190, column: 13, scope: !346)
!348 = !DILocation(line: 190, column: 36, scope: !346)
!349 = !DILocation(line: 190, column: 13, scope: !339)
!350 = !DILocation(line: 193, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 193, column: 17)
!352 = distinct !DILexicalBlock(scope: !346, file: !3, line: 191, column: 9)
!353 = !DILocation(line: 193, column: 19, scope: !351)
!354 = !DILocation(line: 193, column: 17, scope: !352)
!355 = !DILocation(line: 195, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 194, column: 13)
!357 = !DILocation(line: 196, column: 24, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !3, line: 196, column: 17)
!359 = !DILocation(line: 196, column: 22, scope: !358)
!360 = !DILocation(line: 196, column: 29, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 196, column: 17)
!362 = !DILocation(line: 196, column: 33, scope: !361)
!363 = !DILocation(line: 196, column: 31, scope: !361)
!364 = !DILocation(line: 196, column: 17, scope: !358)
!365 = !DILocation(line: 199, column: 32, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 197, column: 17)
!367 = !DILocation(line: 200, column: 17, scope: !366)
!368 = !DILocation(line: 196, column: 37, scope: !361)
!369 = !DILocation(line: 196, column: 17, scope: !361)
!370 = distinct !{!370, !364, !371, !147}
!371 = !DILocation(line: 200, column: 17, scope: !358)
!372 = !DILocation(line: 201, column: 30, scope: !356)
!373 = !DILocation(line: 201, column: 17, scope: !356)
!374 = !DILocation(line: 202, column: 13, scope: !356)
!375 = !DILocation(line: 203, column: 9, scope: !352)
!376 = !DILocation(line: 205, column: 1, scope: !334)
!377 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 207, type: !112, scopeLine: 208, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!378 = !DILocalVariable(name: "data", scope: !377, file: !3, line: 209, type: !61)
!379 = !DILocation(line: 209, column: 12, scope: !377)
!380 = !DILocalVariable(name: "dataBuffer", scope: !377, file: !3, line: 210, type: !156)
!381 = !DILocation(line: 210, column: 10, scope: !377)
!382 = !DILocation(line: 211, column: 12, scope: !377)
!383 = !DILocation(line: 211, column: 10, scope: !377)
!384 = !DILocalVariable(name: "recvResult", scope: !385, file: !3, line: 217, type: !89)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 212, column: 5)
!386 = !DILocation(line: 217, column: 13, scope: !385)
!387 = !DILocalVariable(name: "service", scope: !385, file: !3, line: 218, type: !166)
!388 = !DILocation(line: 218, column: 28, scope: !385)
!389 = !DILocalVariable(name: "replace", scope: !385, file: !3, line: 219, type: !61)
!390 = !DILocation(line: 219, column: 15, scope: !385)
!391 = !DILocalVariable(name: "connectSocket", scope: !385, file: !3, line: 220, type: !89)
!392 = !DILocation(line: 220, column: 16, scope: !385)
!393 = !DILocalVariable(name: "dataLen", scope: !385, file: !3, line: 221, type: !192)
!394 = !DILocation(line: 221, column: 16, scope: !385)
!395 = !DILocation(line: 221, column: 33, scope: !385)
!396 = !DILocation(line: 221, column: 26, scope: !385)
!397 = !DILocation(line: 222, column: 9, scope: !385)
!398 = !DILocation(line: 232, column: 29, scope: !399)
!399 = distinct !DILexicalBlock(scope: !385, file: !3, line: 223, column: 9)
!400 = !DILocation(line: 232, column: 27, scope: !399)
!401 = !DILocation(line: 233, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 233, column: 17)
!403 = !DILocation(line: 233, column: 31, scope: !402)
!404 = !DILocation(line: 233, column: 17, scope: !399)
!405 = !DILocation(line: 235, column: 17, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !3, line: 234, column: 13)
!407 = !DILocation(line: 237, column: 13, scope: !399)
!408 = !DILocation(line: 238, column: 21, scope: !399)
!409 = !DILocation(line: 238, column: 32, scope: !399)
!410 = !DILocation(line: 239, column: 39, scope: !399)
!411 = !DILocation(line: 239, column: 21, scope: !399)
!412 = !DILocation(line: 239, column: 30, scope: !399)
!413 = !DILocation(line: 239, column: 37, scope: !399)
!414 = !DILocation(line: 240, column: 32, scope: !399)
!415 = !DILocation(line: 240, column: 21, scope: !399)
!416 = !DILocation(line: 240, column: 30, scope: !399)
!417 = !DILocation(line: 241, column: 25, scope: !418)
!418 = distinct !DILexicalBlock(scope: !399, file: !3, line: 241, column: 17)
!419 = !DILocation(line: 241, column: 40, scope: !418)
!420 = !DILocation(line: 241, column: 17, scope: !418)
!421 = !DILocation(line: 241, column: 85, scope: !418)
!422 = !DILocation(line: 241, column: 17, scope: !399)
!423 = !DILocation(line: 243, column: 17, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !3, line: 242, column: 13)
!425 = !DILocation(line: 248, column: 31, scope: !399)
!426 = !DILocation(line: 248, column: 55, scope: !399)
!427 = !DILocation(line: 248, column: 62, scope: !399)
!428 = !DILocation(line: 248, column: 60, scope: !399)
!429 = !DILocation(line: 248, column: 94, scope: !399)
!430 = !DILocation(line: 248, column: 92, scope: !399)
!431 = !DILocation(line: 248, column: 102, scope: !399)
!432 = !DILocation(line: 248, column: 85, scope: !399)
!433 = !DILocation(line: 248, column: 26, scope: !399)
!434 = !DILocation(line: 248, column: 24, scope: !399)
!435 = !DILocation(line: 249, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !399, file: !3, line: 249, column: 17)
!437 = !DILocation(line: 249, column: 28, scope: !436)
!438 = !DILocation(line: 249, column: 44, scope: !436)
!439 = !DILocation(line: 249, column: 47, scope: !436)
!440 = !DILocation(line: 249, column: 58, scope: !436)
!441 = !DILocation(line: 249, column: 17, scope: !399)
!442 = !DILocation(line: 251, column: 17, scope: !443)
!443 = distinct !DILexicalBlock(scope: !436, file: !3, line: 250, column: 13)
!444 = !DILocation(line: 254, column: 13, scope: !399)
!445 = !DILocation(line: 254, column: 18, scope: !399)
!446 = !DILocation(line: 254, column: 28, scope: !399)
!447 = !DILocation(line: 254, column: 39, scope: !399)
!448 = !DILocation(line: 254, column: 26, scope: !399)
!449 = !DILocation(line: 254, column: 55, scope: !399)
!450 = !DILocation(line: 256, column: 30, scope: !399)
!451 = !DILocation(line: 256, column: 23, scope: !399)
!452 = !DILocation(line: 256, column: 21, scope: !399)
!453 = !DILocation(line: 257, column: 17, scope: !454)
!454 = distinct !DILexicalBlock(scope: !399, file: !3, line: 257, column: 17)
!455 = !DILocation(line: 257, column: 17, scope: !399)
!456 = !DILocation(line: 259, column: 18, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 258, column: 13)
!458 = !DILocation(line: 259, column: 26, scope: !457)
!459 = !DILocation(line: 260, column: 13, scope: !457)
!460 = !DILocation(line: 261, column: 30, scope: !399)
!461 = !DILocation(line: 261, column: 23, scope: !399)
!462 = !DILocation(line: 261, column: 21, scope: !399)
!463 = !DILocation(line: 262, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !399, file: !3, line: 262, column: 17)
!465 = !DILocation(line: 262, column: 17, scope: !399)
!466 = !DILocation(line: 264, column: 18, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 263, column: 13)
!468 = !DILocation(line: 264, column: 26, scope: !467)
!469 = !DILocation(line: 265, column: 13, scope: !467)
!470 = !DILocation(line: 266, column: 9, scope: !399)
!471 = !DILocation(line: 268, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !385, file: !3, line: 268, column: 13)
!473 = !DILocation(line: 268, column: 27, scope: !472)
!474 = !DILocation(line: 268, column: 13, scope: !385)
!475 = !DILocation(line: 270, column: 26, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 269, column: 9)
!477 = !DILocation(line: 270, column: 13, scope: !476)
!478 = !DILocation(line: 271, column: 9, scope: !476)
!479 = !DILocation(line: 279, column: 75, scope: !377)
!480 = !DILocation(line: 279, column: 73, scope: !377)
!481 = !DILocation(line: 280, column: 5, scope: !377)
!482 = !DILocation(line: 281, column: 1, scope: !377)
!483 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_good", scope: !3, file: !3, line: 283, type: !112, scopeLine: 284, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!484 = !DILocation(line: 285, column: 5, scope: !483)
!485 = !DILocation(line: 286, column: 5, scope: !483)
!486 = !DILocation(line: 287, column: 1, scope: !483)
!487 = distinct !DISubprogram(name: "printLine", scope: !70, file: !70, line: 11, type: !488, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !61}
!490 = !DILocalVariable(name: "line", arg: 1, scope: !487, file: !70, line: 11, type: !61)
!491 = !DILocation(line: 11, column: 25, scope: !487)
!492 = !DILocation(line: 13, column: 1, scope: !487)
!493 = !DILocation(line: 14, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !70, line: 14, column: 8)
!495 = !DILocation(line: 14, column: 13, scope: !494)
!496 = !DILocation(line: 14, column: 8, scope: !487)
!497 = !DILocation(line: 16, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !70, line: 15, column: 5)
!499 = !DILocation(line: 16, column: 9, scope: !498)
!500 = !DILocation(line: 17, column: 5, scope: !498)
!501 = !DILocation(line: 18, column: 5, scope: !487)
!502 = !DILocation(line: 19, column: 1, scope: !487)
!503 = distinct !DISubprogram(name: "printSinkLine", scope: !70, file: !70, line: 20, type: !488, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!504 = !DILocalVariable(name: "line", arg: 1, scope: !503, file: !70, line: 20, type: !61)
!505 = !DILocation(line: 20, column: 29, scope: !503)
!506 = !DILocation(line: 22, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !70, line: 22, column: 8)
!508 = !DILocation(line: 22, column: 13, scope: !507)
!509 = !DILocation(line: 22, column: 8, scope: !503)
!510 = !DILocation(line: 24, column: 24, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !70, line: 23, column: 5)
!512 = !DILocation(line: 24, column: 9, scope: !511)
!513 = !DILocation(line: 25, column: 5, scope: !511)
!514 = !DILocation(line: 26, column: 1, scope: !503)
!515 = distinct !DISubprogram(name: "printWLine", scope: !70, file: !70, line: 27, type: !516, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !193, line: 74, baseType: !89)
!520 = !DILocalVariable(name: "line", arg: 1, scope: !515, file: !70, line: 27, type: !518)
!521 = !DILocation(line: 27, column: 29, scope: !515)
!522 = !DILocation(line: 29, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !515, file: !70, line: 29, column: 8)
!524 = !DILocation(line: 29, column: 13, scope: !523)
!525 = !DILocation(line: 29, column: 8, scope: !515)
!526 = !DILocation(line: 31, column: 27, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !70, line: 30, column: 5)
!528 = !DILocation(line: 31, column: 9, scope: !527)
!529 = !DILocation(line: 32, column: 5, scope: !527)
!530 = !DILocation(line: 33, column: 1, scope: !515)
!531 = distinct !DISubprogram(name: "printIntLine", scope: !70, file: !70, line: 35, type: !532, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !89}
!534 = !DILocalVariable(name: "intNumber", arg: 1, scope: !531, file: !70, line: 35, type: !89)
!535 = !DILocation(line: 35, column: 24, scope: !531)
!536 = !DILocation(line: 37, column: 20, scope: !531)
!537 = !DILocation(line: 37, column: 5, scope: !531)
!538 = !DILocation(line: 38, column: 1, scope: !531)
!539 = distinct !DISubprogram(name: "printShortLine", scope: !70, file: !70, line: 40, type: !540, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542}
!542 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!543 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !539, file: !70, line: 40, type: !542)
!544 = !DILocation(line: 40, column: 28, scope: !539)
!545 = !DILocation(line: 42, column: 21, scope: !539)
!546 = !DILocation(line: 42, column: 5, scope: !539)
!547 = !DILocation(line: 43, column: 1, scope: !539)
!548 = distinct !DISubprogram(name: "printFloatLine", scope: !70, file: !70, line: 45, type: !549, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!552 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !548, file: !70, line: 45, type: !551)
!553 = !DILocation(line: 45, column: 28, scope: !548)
!554 = !DILocation(line: 47, column: 20, scope: !548)
!555 = !DILocation(line: 47, column: 5, scope: !548)
!556 = !DILocation(line: 48, column: 1, scope: !548)
!557 = distinct !DISubprogram(name: "printLongLine", scope: !70, file: !70, line: 50, type: !558, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!561 = !DILocalVariable(name: "longNumber", arg: 1, scope: !557, file: !70, line: 50, type: !560)
!562 = !DILocation(line: 50, column: 26, scope: !557)
!563 = !DILocation(line: 52, column: 21, scope: !557)
!564 = !DILocation(line: 52, column: 5, scope: !557)
!565 = !DILocation(line: 53, column: 1, scope: !557)
!566 = distinct !DISubprogram(name: "printLongLongLine", scope: !70, file: !70, line: 55, type: !567, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !570, line: 27, baseType: !571)
!570 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !174, line: 44, baseType: !560)
!572 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !566, file: !70, line: 55, type: !569)
!573 = !DILocation(line: 55, column: 33, scope: !566)
!574 = !DILocation(line: 57, column: 29, scope: !566)
!575 = !DILocation(line: 57, column: 5, scope: !566)
!576 = !DILocation(line: 58, column: 1, scope: !566)
!577 = distinct !DISubprogram(name: "printSizeTLine", scope: !70, file: !70, line: 60, type: !578, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !192}
!580 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !577, file: !70, line: 60, type: !192)
!581 = !DILocation(line: 60, column: 29, scope: !577)
!582 = !DILocation(line: 62, column: 21, scope: !577)
!583 = !DILocation(line: 62, column: 5, scope: !577)
!584 = !DILocation(line: 63, column: 1, scope: !577)
!585 = distinct !DISubprogram(name: "printHexCharLine", scope: !70, file: !70, line: 65, type: !586, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !58}
!588 = !DILocalVariable(name: "charHex", arg: 1, scope: !585, file: !70, line: 65, type: !58)
!589 = !DILocation(line: 65, column: 29, scope: !585)
!590 = !DILocation(line: 67, column: 22, scope: !585)
!591 = !DILocation(line: 67, column: 5, scope: !585)
!592 = !DILocation(line: 68, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printWcharLine", scope: !70, file: !70, line: 70, type: !594, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !519}
!596 = !DILocalVariable(name: "wideChar", arg: 1, scope: !593, file: !70, line: 70, type: !519)
!597 = !DILocation(line: 70, column: 29, scope: !593)
!598 = !DILocalVariable(name: "s", scope: !593, file: !70, line: 74, type: !599)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 64, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 2)
!602 = !DILocation(line: 74, column: 13, scope: !593)
!603 = !DILocation(line: 75, column: 16, scope: !593)
!604 = !DILocation(line: 75, column: 9, scope: !593)
!605 = !DILocation(line: 75, column: 14, scope: !593)
!606 = !DILocation(line: 76, column: 9, scope: !593)
!607 = !DILocation(line: 76, column: 14, scope: !593)
!608 = !DILocation(line: 77, column: 21, scope: !593)
!609 = !DILocation(line: 77, column: 5, scope: !593)
!610 = !DILocation(line: 78, column: 1, scope: !593)
!611 = distinct !DISubprogram(name: "printUnsignedLine", scope: !70, file: !70, line: 80, type: !612, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !7}
!614 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !611, file: !70, line: 80, type: !7)
!615 = !DILocation(line: 80, column: 33, scope: !611)
!616 = !DILocation(line: 82, column: 20, scope: !611)
!617 = !DILocation(line: 82, column: 5, scope: !611)
!618 = !DILocation(line: 83, column: 1, scope: !611)
!619 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !70, file: !70, line: 85, type: !620, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !90}
!622 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !619, file: !70, line: 85, type: !90)
!623 = !DILocation(line: 85, column: 45, scope: !619)
!624 = !DILocation(line: 87, column: 22, scope: !619)
!625 = !DILocation(line: 87, column: 5, scope: !619)
!626 = !DILocation(line: 88, column: 1, scope: !619)
!627 = distinct !DISubprogram(name: "printDoubleLine", scope: !70, file: !70, line: 90, type: !628, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630}
!630 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!631 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !627, file: !70, line: 90, type: !630)
!632 = !DILocation(line: 90, column: 29, scope: !627)
!633 = !DILocation(line: 92, column: 20, scope: !627)
!634 = !DILocation(line: 92, column: 5, scope: !627)
!635 = !DILocation(line: 93, column: 1, scope: !627)
!636 = distinct !DISubprogram(name: "printStructLine", scope: !70, file: !70, line: 95, type: !637, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !641, line: 100, baseType: !642)
!641 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_958/source_code")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !641, line: 96, size: 64, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !642, file: !641, line: 98, baseType: !89, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !642, file: !641, line: 99, baseType: !89, size: 32, offset: 32)
!646 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !636, file: !70, line: 95, type: !639)
!647 = !DILocation(line: 95, column: 40, scope: !636)
!648 = !DILocation(line: 97, column: 26, scope: !636)
!649 = !DILocation(line: 97, column: 47, scope: !636)
!650 = !DILocation(line: 97, column: 55, scope: !636)
!651 = !DILocation(line: 97, column: 76, scope: !636)
!652 = !DILocation(line: 97, column: 5, scope: !636)
!653 = !DILocation(line: 98, column: 1, scope: !636)
!654 = distinct !DISubprogram(name: "printBytesLine", scope: !70, file: !70, line: 100, type: !655, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657, !192}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!658 = !DILocalVariable(name: "bytes", arg: 1, scope: !654, file: !70, line: 100, type: !657)
!659 = !DILocation(line: 100, column: 38, scope: !654)
!660 = !DILocalVariable(name: "numBytes", arg: 2, scope: !654, file: !70, line: 100, type: !192)
!661 = !DILocation(line: 100, column: 52, scope: !654)
!662 = !DILocalVariable(name: "i", scope: !654, file: !70, line: 102, type: !192)
!663 = !DILocation(line: 102, column: 12, scope: !654)
!664 = !DILocation(line: 103, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !70, line: 103, column: 5)
!666 = !DILocation(line: 103, column: 10, scope: !665)
!667 = !DILocation(line: 103, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !70, line: 103, column: 5)
!669 = !DILocation(line: 103, column: 21, scope: !668)
!670 = !DILocation(line: 103, column: 19, scope: !668)
!671 = !DILocation(line: 103, column: 5, scope: !665)
!672 = !DILocation(line: 105, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !70, line: 104, column: 5)
!674 = !DILocation(line: 105, column: 30, scope: !673)
!675 = !DILocation(line: 105, column: 9, scope: !673)
!676 = !DILocation(line: 106, column: 5, scope: !673)
!677 = !DILocation(line: 103, column: 31, scope: !668)
!678 = !DILocation(line: 103, column: 5, scope: !668)
!679 = distinct !{!679, !671, !680, !147}
!680 = !DILocation(line: 106, column: 5, scope: !665)
!681 = !DILocation(line: 107, column: 5, scope: !654)
!682 = !DILocation(line: 108, column: 1, scope: !654)
!683 = distinct !DISubprogram(name: "decodeHexChars", scope: !70, file: !70, line: 113, type: !684, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!684 = !DISubroutineType(types: !685)
!685 = !{!192, !657, !192, !61}
!686 = !DILocalVariable(name: "bytes", arg: 1, scope: !683, file: !70, line: 113, type: !657)
!687 = !DILocation(line: 113, column: 39, scope: !683)
!688 = !DILocalVariable(name: "numBytes", arg: 2, scope: !683, file: !70, line: 113, type: !192)
!689 = !DILocation(line: 113, column: 53, scope: !683)
!690 = !DILocalVariable(name: "hex", arg: 3, scope: !683, file: !70, line: 113, type: !61)
!691 = !DILocation(line: 113, column: 71, scope: !683)
!692 = !DILocalVariable(name: "numWritten", scope: !683, file: !70, line: 115, type: !192)
!693 = !DILocation(line: 115, column: 12, scope: !683)
!694 = !DILocation(line: 121, column: 5, scope: !683)
!695 = !DILocation(line: 121, column: 12, scope: !683)
!696 = !DILocation(line: 121, column: 25, scope: !683)
!697 = !DILocation(line: 121, column: 23, scope: !683)
!698 = !DILocation(line: 121, column: 34, scope: !683)
!699 = !DILocation(line: 121, column: 37, scope: !683)
!700 = !DILocation(line: 121, column: 67, scope: !683)
!701 = !DILocation(line: 121, column: 70, scope: !683)
!702 = !DILocation(line: 0, scope: !683)
!703 = !DILocalVariable(name: "byte", scope: !704, file: !70, line: 123, type: !89)
!704 = distinct !DILexicalBlock(scope: !683, file: !70, line: 122, column: 5)
!705 = !DILocation(line: 123, column: 13, scope: !704)
!706 = !DILocation(line: 124, column: 17, scope: !704)
!707 = !DILocation(line: 124, column: 25, scope: !704)
!708 = !DILocation(line: 124, column: 23, scope: !704)
!709 = !DILocation(line: 124, column: 9, scope: !704)
!710 = !DILocation(line: 125, column: 45, scope: !704)
!711 = !DILocation(line: 125, column: 29, scope: !704)
!712 = !DILocation(line: 125, column: 9, scope: !704)
!713 = !DILocation(line: 125, column: 15, scope: !704)
!714 = !DILocation(line: 125, column: 27, scope: !704)
!715 = !DILocation(line: 126, column: 9, scope: !704)
!716 = distinct !{!716, !694, !717, !147}
!717 = !DILocation(line: 127, column: 5, scope: !683)
!718 = !DILocation(line: 129, column: 12, scope: !683)
!719 = !DILocation(line: 129, column: 5, scope: !683)
!720 = distinct !DISubprogram(name: "decodeHexWChars", scope: !70, file: !70, line: 135, type: !721, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!721 = !DISubroutineType(types: !722)
!722 = !{!192, !657, !192, !518}
!723 = !DILocalVariable(name: "bytes", arg: 1, scope: !720, file: !70, line: 135, type: !657)
!724 = !DILocation(line: 135, column: 41, scope: !720)
!725 = !DILocalVariable(name: "numBytes", arg: 2, scope: !720, file: !70, line: 135, type: !192)
!726 = !DILocation(line: 135, column: 55, scope: !720)
!727 = !DILocalVariable(name: "hex", arg: 3, scope: !720, file: !70, line: 135, type: !518)
!728 = !DILocation(line: 135, column: 76, scope: !720)
!729 = !DILocalVariable(name: "numWritten", scope: !720, file: !70, line: 137, type: !192)
!730 = !DILocation(line: 137, column: 12, scope: !720)
!731 = !DILocation(line: 143, column: 5, scope: !720)
!732 = !DILocation(line: 143, column: 12, scope: !720)
!733 = !DILocation(line: 143, column: 25, scope: !720)
!734 = !DILocation(line: 143, column: 23, scope: !720)
!735 = !DILocation(line: 143, column: 34, scope: !720)
!736 = !DILocation(line: 143, column: 47, scope: !720)
!737 = !DILocation(line: 143, column: 55, scope: !720)
!738 = !DILocation(line: 143, column: 53, scope: !720)
!739 = !DILocation(line: 143, column: 37, scope: !720)
!740 = !DILocation(line: 143, column: 68, scope: !720)
!741 = !DILocation(line: 143, column: 81, scope: !720)
!742 = !DILocation(line: 143, column: 89, scope: !720)
!743 = !DILocation(line: 143, column: 87, scope: !720)
!744 = !DILocation(line: 143, column: 100, scope: !720)
!745 = !DILocation(line: 143, column: 71, scope: !720)
!746 = !DILocation(line: 0, scope: !720)
!747 = !DILocalVariable(name: "byte", scope: !748, file: !70, line: 145, type: !89)
!748 = distinct !DILexicalBlock(scope: !720, file: !70, line: 144, column: 5)
!749 = !DILocation(line: 145, column: 13, scope: !748)
!750 = !DILocation(line: 146, column: 18, scope: !748)
!751 = !DILocation(line: 146, column: 26, scope: !748)
!752 = !DILocation(line: 146, column: 24, scope: !748)
!753 = !DILocation(line: 146, column: 9, scope: !748)
!754 = !DILocation(line: 147, column: 45, scope: !748)
!755 = !DILocation(line: 147, column: 29, scope: !748)
!756 = !DILocation(line: 147, column: 9, scope: !748)
!757 = !DILocation(line: 147, column: 15, scope: !748)
!758 = !DILocation(line: 147, column: 27, scope: !748)
!759 = !DILocation(line: 148, column: 9, scope: !748)
!760 = distinct !{!760, !731, !761, !147}
!761 = !DILocation(line: 149, column: 5, scope: !720)
!762 = !DILocation(line: 151, column: 12, scope: !720)
!763 = !DILocation(line: 151, column: 5, scope: !720)
!764 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !70, file: !70, line: 156, type: !765, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!765 = !DISubroutineType(types: !766)
!766 = !{!89}
!767 = !DILocation(line: 158, column: 5, scope: !764)
!768 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !70, file: !70, line: 161, type: !765, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!769 = !DILocation(line: 163, column: 5, scope: !768)
!770 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !70, file: !70, line: 166, type: !765, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!771 = !DILocation(line: 168, column: 13, scope: !770)
!772 = !DILocation(line: 168, column: 20, scope: !770)
!773 = !DILocation(line: 168, column: 5, scope: !770)
!774 = distinct !DISubprogram(name: "good1", scope: !70, file: !70, line: 187, type: !112, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!775 = !DILocation(line: 187, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good2", scope: !70, file: !70, line: 188, type: !112, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!777 = !DILocation(line: 188, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good3", scope: !70, file: !70, line: 189, type: !112, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!779 = !DILocation(line: 189, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good4", scope: !70, file: !70, line: 190, type: !112, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!781 = !DILocation(line: 190, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good5", scope: !70, file: !70, line: 191, type: !112, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!783 = !DILocation(line: 191, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good6", scope: !70, file: !70, line: 192, type: !112, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!785 = !DILocation(line: 192, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good7", scope: !70, file: !70, line: 193, type: !112, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!787 = !DILocation(line: 193, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good8", scope: !70, file: !70, line: 194, type: !112, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!789 = !DILocation(line: 194, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "good9", scope: !70, file: !70, line: 195, type: !112, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!791 = !DILocation(line: 195, column: 16, scope: !790)
!792 = distinct !DISubprogram(name: "bad1", scope: !70, file: !70, line: 198, type: !112, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!793 = !DILocation(line: 198, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad2", scope: !70, file: !70, line: 199, type: !112, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!795 = !DILocation(line: 199, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad3", scope: !70, file: !70, line: 200, type: !112, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!797 = !DILocation(line: 200, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad4", scope: !70, file: !70, line: 201, type: !112, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!799 = !DILocation(line: 201, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad5", scope: !70, file: !70, line: 202, type: !112, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!801 = !DILocation(line: 202, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad6", scope: !70, file: !70, line: 203, type: !112, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!803 = !DILocation(line: 203, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad7", scope: !70, file: !70, line: 204, type: !112, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!805 = !DILocation(line: 204, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad8", scope: !70, file: !70, line: 205, type: !112, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!807 = !DILocation(line: 205, column: 15, scope: !806)
!808 = distinct !DISubprogram(name: "bad9", scope: !70, file: !70, line: 206, type: !112, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !114)
!809 = !DILocation(line: 206, column: 15, scope: !808)
