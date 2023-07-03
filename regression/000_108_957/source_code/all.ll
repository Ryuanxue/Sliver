; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !104 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %n, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load i8*, i8** %data.addr, align 8, !dbg !117
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !119
  %cmp = icmp eq i32 %call, 1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !122
  store i32 0, i32* %i, align 4, !dbg !124
  br label %for.cond, !dbg !126

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !127
  %2 = load i32, i32* %n, align 4, !dbg !129
  %cmp1 = icmp slt i32 %1, %2, !dbg !130
  br i1 %cmp1, label %for.body, label %for.end, !dbg !131

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !132
  %inc = add nsw i32 %3, 1, !dbg !132
  store i32 %inc, i32* %intVariable, align 4, !dbg !132
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !135
  %inc2 = add nsw i32 %4, 1, !dbg !135
  store i32 %inc2, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !140
  call void @printIntLine(i32 %5), !dbg !141
  br label %if.end, !dbg !142

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_44_bad() #0 !dbg !144 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !149, metadata !DIExpression()), !dbg !151
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !152, metadata !DIExpression()), !dbg !156
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !156
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !157
  store i8* %arraydecay, i8** %data, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !159, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !162, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 -1, i32* %connectSocket, align 4, !dbg !187
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !192
  %1 = load i8*, i8** %data, align 8, !dbg !193
  %call = call i64 @strlen(i8* %1) #8, !dbg !194
  store i64 %call, i64* %dataLen, align 8, !dbg !192
  br label %do.body, !dbg !195

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !196
  store i32 %call1, i32* %connectSocket, align 4, !dbg !198
  %2 = load i32, i32* %connectSocket, align 4, !dbg !199
  %cmp = icmp eq i32 %2, -1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !203

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !205
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !206
  store i16 2, i16* %sin_family, align 4, !dbg !207
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !208
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !209
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !210
  store i32 %call2, i32* %s_addr, align 4, !dbg !211
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !212
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !213
  store i16 %call3, i16* %sin_port, align 2, !dbg !214
  %4 = load i32, i32* %connectSocket, align 4, !dbg !215
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !217
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !218
  %cmp5 = icmp eq i32 %call4, -1, !dbg !219
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !220

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !221

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !223
  %7 = load i8*, i8** %data, align 8, !dbg !224
  %8 = load i64, i64* %dataLen, align 8, !dbg !225
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !226
  %9 = load i64, i64* %dataLen, align 8, !dbg !227
  %sub = sub i64 100, %9, !dbg !228
  %sub8 = sub i64 %sub, 1, !dbg !229
  %mul = mul i64 1, %sub8, !dbg !230
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !231
  %conv = trunc i64 %call9 to i32, !dbg !231
  store i32 %conv, i32* %recvResult, align 4, !dbg !232
  %10 = load i32, i32* %recvResult, align 4, !dbg !233
  %cmp10 = icmp eq i32 %10, -1, !dbg !235
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !236

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !237
  %cmp12 = icmp eq i32 %11, 0, !dbg !238
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !239

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !240

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !242
  %13 = load i64, i64* %dataLen, align 8, !dbg !243
  %14 = load i32, i32* %recvResult, align 4, !dbg !244
  %conv16 = sext i32 %14 to i64, !dbg !244
  %div = udiv i64 %conv16, 1, !dbg !245
  %add = add i64 %13, %div, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !242
  store i8 0, i8* %arrayidx, align 1, !dbg !247
  %15 = load i8*, i8** %data, align 8, !dbg !248
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !249
  store i8* %call17, i8** %replace, align 8, !dbg !250
  %16 = load i8*, i8** %replace, align 8, !dbg !251
  %tobool = icmp ne i8* %16, null, !dbg !251
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !253

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !254
  store i8 0, i8* %17, align 1, !dbg !256
  br label %if.end19, !dbg !257

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !258
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !259
  store i8* %call20, i8** %replace, align 8, !dbg !260
  %19 = load i8*, i8** %replace, align 8, !dbg !261
  %tobool21 = icmp ne i8* %19, null, !dbg !261
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !263

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !264
  store i8 0, i8* %20, align 1, !dbg !266
  br label %if.end23, !dbg !267

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !268

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !269
  %cmp24 = icmp ne i32 %21, -1, !dbg !271
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !272

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !273
  %call27 = call i32 @close(i32 %22), !dbg !275
  br label %if.end28, !dbg !276

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !277
  %24 = load i8*, i8** %data, align 8, !dbg !278
  call void %23(i8* %24), !dbg !277
  ret void, !dbg !279
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !280 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %i, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i32* %n, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i8*, i8** %data.addr, align 8, !dbg !290
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !292
  %cmp = icmp eq i32 %call, 1, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !295
  store i32 0, i32* %i, align 4, !dbg !297
  br label %for.cond, !dbg !299

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !300
  %2 = load i32, i32* %n, align 4, !dbg !302
  %cmp1 = icmp slt i32 %1, %2, !dbg !303
  br i1 %cmp1, label %for.body, label %for.end, !dbg !304

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !305
  %inc = add nsw i32 %3, 1, !dbg !305
  store i32 %inc, i32* %intVariable, align 4, !dbg !305
  br label %for.inc, !dbg !307

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !308
  %inc2 = add nsw i32 %4, 1, !dbg !308
  store i32 %inc2, i32* %i, align 4, !dbg !308
  br label %for.cond, !dbg !309, !llvm.loop !310

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !312
  call void @printIntLine(i32 %5), !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !316 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !319, metadata !DIExpression()), !dbg !320
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !322
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !322
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !323
  store i8* %arraydecay, i8** %data, align 8, !dbg !324
  %1 = load i8*, i8** %data, align 8, !dbg !325
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !326
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !327
  %3 = load i8*, i8** %data, align 8, !dbg !328
  call void %2(i8* %3), !dbg !327
  ret void, !dbg !329
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !330 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %i, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %n, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i8*, i8** %data.addr, align 8, !dbg !340
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !342
  %cmp = icmp eq i32 %call, 1, !dbg !343
  br i1 %cmp, label %if.then, label %if.end5, !dbg !344

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !345
  %cmp1 = icmp slt i32 %1, 10000, !dbg !348
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !349

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !350
  store i32 0, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !355
  %3 = load i32, i32* %n, align 4, !dbg !357
  %cmp3 = icmp slt i32 %2, %3, !dbg !358
  br i1 %cmp3, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !360
  %inc = add nsw i32 %4, 1, !dbg !360
  store i32 %inc, i32* %intVariable, align 4, !dbg !360
  br label %for.inc, !dbg !362

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !363
  %inc4 = add nsw i32 %5, 1, !dbg !363
  store i32 %inc4, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !367
  call void @printIntLine(i32 %6), !dbg !368
  br label %if.end, !dbg !369

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !370

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !372 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !375, metadata !DIExpression()), !dbg !376
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !376
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !378
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !378
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !379
  store i8* %arraydecay, i8** %data, align 8, !dbg !380
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !388, metadata !DIExpression()), !dbg !389
  store i32 -1, i32* %connectSocket, align 4, !dbg !389
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !390, metadata !DIExpression()), !dbg !391
  %1 = load i8*, i8** %data, align 8, !dbg !392
  %call = call i64 @strlen(i8* %1) #8, !dbg !393
  store i64 %call, i64* %dataLen, align 8, !dbg !391
  br label %do.body, !dbg !394

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !395
  store i32 %call1, i32* %connectSocket, align 4, !dbg !397
  %2 = load i32, i32* %connectSocket, align 4, !dbg !398
  %cmp = icmp eq i32 %2, -1, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !402

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !404
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !404
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !405
  store i16 2, i16* %sin_family, align 4, !dbg !406
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !407
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !408
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !409
  store i32 %call2, i32* %s_addr, align 4, !dbg !410
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !411
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !412
  store i16 %call3, i16* %sin_port, align 2, !dbg !413
  %4 = load i32, i32* %connectSocket, align 4, !dbg !414
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !416
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !417
  %cmp5 = icmp eq i32 %call4, -1, !dbg !418
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !419

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !420

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !422
  %7 = load i8*, i8** %data, align 8, !dbg !423
  %8 = load i64, i64* %dataLen, align 8, !dbg !424
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !425
  %9 = load i64, i64* %dataLen, align 8, !dbg !426
  %sub = sub i64 100, %9, !dbg !427
  %sub8 = sub i64 %sub, 1, !dbg !428
  %mul = mul i64 1, %sub8, !dbg !429
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !430
  %conv = trunc i64 %call9 to i32, !dbg !430
  store i32 %conv, i32* %recvResult, align 4, !dbg !431
  %10 = load i32, i32* %recvResult, align 4, !dbg !432
  %cmp10 = icmp eq i32 %10, -1, !dbg !434
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !435

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !436
  %cmp12 = icmp eq i32 %11, 0, !dbg !437
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !438

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !439

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !441
  %13 = load i64, i64* %dataLen, align 8, !dbg !442
  %14 = load i32, i32* %recvResult, align 4, !dbg !443
  %conv16 = sext i32 %14 to i64, !dbg !443
  %div = udiv i64 %conv16, 1, !dbg !444
  %add = add i64 %13, %div, !dbg !445
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !441
  store i8 0, i8* %arrayidx, align 1, !dbg !446
  %15 = load i8*, i8** %data, align 8, !dbg !447
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !448
  store i8* %call17, i8** %replace, align 8, !dbg !449
  %16 = load i8*, i8** %replace, align 8, !dbg !450
  %tobool = icmp ne i8* %16, null, !dbg !450
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !452

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !453
  store i8 0, i8* %17, align 1, !dbg !455
  br label %if.end19, !dbg !456

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !457
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !458
  store i8* %call20, i8** %replace, align 8, !dbg !459
  %19 = load i8*, i8** %replace, align 8, !dbg !460
  %tobool21 = icmp ne i8* %19, null, !dbg !460
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !462

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !463
  store i8 0, i8* %20, align 1, !dbg !465
  br label %if.end23, !dbg !466

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !467

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !468
  %cmp24 = icmp ne i32 %21, -1, !dbg !470
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !471

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !472
  %call27 = call i32 @close(i32 %22), !dbg !474
  br label %if.end28, !dbg !475

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !476
  %24 = load i8*, i8** %data, align 8, !dbg !477
  call void %23(i8* %24), !dbg !476
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_44_good() #0 !dbg !479 {
entry:
  call void @goodG2B(), !dbg !480
  call void @goodB2G(), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !483 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !486
  %0 = load i8*, i8** %line.addr, align 8, !dbg !487
  %cmp = icmp ne i8* %0, null, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !491
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !495
  ret void, !dbg !496
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !497 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i8*, i8** %line.addr, align 8, !dbg !500
  %cmp = icmp ne i8* %0, null, !dbg !502
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !506
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !509 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i32*, i32** %line.addr, align 8, !dbg !516
  %cmp = icmp ne i32* %0, null, !dbg !518
  br i1 %cmp, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !520
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !522
  br label %if.end, !dbg !523

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !524
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !525 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !533 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !539
  %conv = sext i16 %0 to i32, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !542 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !548
  %conv = fpext float %0 to double, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !551 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !560 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !571 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !579 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !584
  %conv = sext i8 %0 to i32, !dbg !584
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !587 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !592, metadata !DIExpression()), !dbg !596
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !597
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !598
  store i32 %0, i32* %arrayidx, align 4, !dbg !599
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !600
  store i32 0, i32* %arrayidx1, align 4, !dbg !601
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !605 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !613 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !618
  %conv = zext i8 %0 to i32, !dbg !618
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !621 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !627
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !630 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !642
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !643
  %1 = load i32, i32* %intOne, align 4, !dbg !643
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !644
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !645
  %3 = load i32, i32* %intTwo, align 4, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !648 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %i, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 0, i64* %i, align 8, !dbg !658
  br label %for.cond, !dbg !660

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !661
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !663
  %cmp = icmp ult i64 %0, %1, !dbg !664
  br i1 %cmp, label %for.body, label %for.end, !dbg !665

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !666
  %3 = load i64, i64* %i, align 8, !dbg !668
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !666
  %4 = load i8, i8* %arrayidx, align 1, !dbg !666
  %conv = zext i8 %4 to i32, !dbg !666
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !669
  br label %for.inc, !dbg !670

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !671
  %inc = add i64 %5, 1, !dbg !671
  store i64 %inc, i64* %i, align 8, !dbg !671
  br label %for.cond, !dbg !672, !llvm.loop !673

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !675
  ret void, !dbg !676
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !677 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !680, metadata !DIExpression()), !dbg !681
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 0, i64* %numWritten, align 8, !dbg !687
  br label %while.cond, !dbg !688

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !689
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !690
  %cmp = icmp ult i64 %0, %1, !dbg !691
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !692

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !693
  %2 = load i16*, i16** %call, align 8, !dbg !693
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !693
  %4 = load i64, i64* %numWritten, align 8, !dbg !693
  %mul = mul i64 2, %4, !dbg !693
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !693
  %5 = load i8, i8* %arrayidx, align 1, !dbg !693
  %conv = sext i8 %5 to i32, !dbg !693
  %idxprom = sext i32 %conv to i64, !dbg !693
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !693
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !693
  %conv2 = zext i16 %6 to i32, !dbg !693
  %and = and i32 %conv2, 4096, !dbg !693
  %tobool = icmp ne i32 %and, 0, !dbg !693
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !694

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !695
  %7 = load i16*, i16** %call3, align 8, !dbg !695
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !695
  %9 = load i64, i64* %numWritten, align 8, !dbg !695
  %mul4 = mul i64 2, %9, !dbg !695
  %add = add i64 %mul4, 1, !dbg !695
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !695
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !695
  %conv6 = sext i8 %10 to i32, !dbg !695
  %idxprom7 = sext i32 %conv6 to i64, !dbg !695
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !695
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !695
  %conv9 = zext i16 %11 to i32, !dbg !695
  %and10 = and i32 %conv9, 4096, !dbg !695
  %tobool11 = icmp ne i32 %and10, 0, !dbg !694
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !696
  br i1 %12, label %while.body, label %while.end, !dbg !688

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !697, metadata !DIExpression()), !dbg !699
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !700
  %14 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul12 = mul i64 2, %14, !dbg !702
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !700
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !703
  %15 = load i32, i32* %byte, align 4, !dbg !704
  %conv15 = trunc i32 %15 to i8, !dbg !705
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !706
  %17 = load i64, i64* %numWritten, align 8, !dbg !707
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !706
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !708
  %18 = load i64, i64* %numWritten, align 8, !dbg !709
  %inc = add i64 %18, 1, !dbg !709
  store i64 %inc, i64* %numWritten, align 8, !dbg !709
  br label %while.cond, !dbg !688, !llvm.loop !710

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !712
  ret i64 %19, !dbg !713
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !714 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %numWritten, align 8, !dbg !724
  br label %while.cond, !dbg !725

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !726
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !727
  %cmp = icmp ult i64 %0, %1, !dbg !728
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !729

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !730
  %3 = load i64, i64* %numWritten, align 8, !dbg !731
  %mul = mul i64 2, %3, !dbg !732
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !730
  %4 = load i32, i32* %arrayidx, align 4, !dbg !730
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !733
  %tobool = icmp ne i32 %call, 0, !dbg !733
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !734

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !735
  %6 = load i64, i64* %numWritten, align 8, !dbg !736
  %mul1 = mul i64 2, %6, !dbg !737
  %add = add i64 %mul1, 1, !dbg !738
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !735
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !735
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !739
  %tobool4 = icmp ne i32 %call3, 0, !dbg !734
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !740
  br i1 %8, label %while.body, label %while.end, !dbg !725

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !741, metadata !DIExpression()), !dbg !743
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !744
  %10 = load i64, i64* %numWritten, align 8, !dbg !745
  %mul5 = mul i64 2, %10, !dbg !746
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !744
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !747
  %11 = load i32, i32* %byte, align 4, !dbg !748
  %conv = trunc i32 %11 to i8, !dbg !749
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !750
  %13 = load i64, i64* %numWritten, align 8, !dbg !751
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !750
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !752
  %14 = load i64, i64* %numWritten, align 8, !dbg !753
  %inc = add i64 %14, 1, !dbg !753
  store i64 %inc, i64* %numWritten, align 8, !dbg !753
  br label %while.cond, !dbg !725, !llvm.loop !754

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !756
  ret i64 %15, !dbg !757
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !758 {
entry:
  ret i32 1, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !762 {
entry:
  ret i32 0, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !764 {
entry:
  %call = call i32 @rand() #7, !dbg !765
  %rem = srem i32 %call, 2, !dbg !766
  ret i32 %rem, !dbg !767
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !802 {
entry:
  ret void, !dbg !803
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!100, !100}
!llvm.module.flags = !{!101, !102, !103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_957/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_957/source_code")
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
!104 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !42}
!107 = !{}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !104, file: !45, line: 50, type: !42)
!109 = !DILocation(line: 50, column: 21, scope: !104)
!110 = !DILocalVariable(name: "i", scope: !111, file: !45, line: 53, type: !23)
!111 = distinct !DILexicalBlock(scope: !104, file: !45, line: 52, column: 5)
!112 = !DILocation(line: 53, column: 13, scope: !111)
!113 = !DILocalVariable(name: "n", scope: !111, file: !45, line: 53, type: !23)
!114 = !DILocation(line: 53, column: 16, scope: !111)
!115 = !DILocalVariable(name: "intVariable", scope: !111, file: !45, line: 53, type: !23)
!116 = !DILocation(line: 53, column: 19, scope: !111)
!117 = !DILocation(line: 54, column: 20, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !45, line: 54, column: 13)
!119 = !DILocation(line: 54, column: 13, scope: !118)
!120 = !DILocation(line: 54, column: 36, scope: !118)
!121 = !DILocation(line: 54, column: 13, scope: !111)
!122 = !DILocation(line: 57, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !45, line: 55, column: 9)
!124 = !DILocation(line: 58, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !123, file: !45, line: 58, column: 13)
!126 = !DILocation(line: 58, column: 18, scope: !125)
!127 = !DILocation(line: 58, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !45, line: 58, column: 13)
!129 = !DILocation(line: 58, column: 29, scope: !128)
!130 = !DILocation(line: 58, column: 27, scope: !128)
!131 = !DILocation(line: 58, column: 13, scope: !125)
!132 = !DILocation(line: 61, column: 28, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !45, line: 59, column: 13)
!134 = !DILocation(line: 62, column: 13, scope: !133)
!135 = !DILocation(line: 58, column: 33, scope: !128)
!136 = !DILocation(line: 58, column: 13, scope: !128)
!137 = distinct !{!137, !131, !138, !139}
!138 = !DILocation(line: 62, column: 13, scope: !125)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 63, column: 26, scope: !123)
!141 = !DILocation(line: 63, column: 13, scope: !123)
!142 = !DILocation(line: 64, column: 9, scope: !123)
!143 = !DILocation(line: 66, column: 1, scope: !104)
!144 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44_bad", scope: !45, file: !45, line: 68, type: !145, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!145 = !DISubroutineType(types: !146)
!146 = !{null}
!147 = !DILocalVariable(name: "data", scope: !144, file: !45, line: 70, type: !42)
!148 = !DILocation(line: 70, column: 12, scope: !144)
!149 = !DILocalVariable(name: "funcPtr", scope: !144, file: !45, line: 72, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!151 = !DILocation(line: 72, column: 12, scope: !144)
!152 = !DILocalVariable(name: "dataBuffer", scope: !144, file: !45, line: 73, type: !153)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 100)
!156 = !DILocation(line: 73, column: 10, scope: !144)
!157 = !DILocation(line: 74, column: 12, scope: !144)
!158 = !DILocation(line: 74, column: 10, scope: !144)
!159 = !DILocalVariable(name: "recvResult", scope: !160, file: !45, line: 80, type: !23)
!160 = distinct !DILexicalBlock(scope: !144, file: !45, line: 75, column: 5)
!161 = !DILocation(line: 80, column: 13, scope: !160)
!162 = !DILocalVariable(name: "service", scope: !160, file: !45, line: 81, type: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !164)
!164 = !{!165, !166, !172, !179}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !163, file: !60, line: 240, baseType: !94, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !163, file: !60, line: 241, baseType: !167, size: 16, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !169, line: 25, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !171, line: 40, baseType: !24)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !163, file: !60, line: 242, baseType: !173, size: 32, offset: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !173, file: !60, line: 33, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 26, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !171, line: 42, baseType: !7)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !163, file: !60, line: 245, baseType: !180, size: 64, offset: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DILocation(line: 81, column: 28, scope: !160)
!184 = !DILocalVariable(name: "replace", scope: !160, file: !45, line: 82, type: !42)
!185 = !DILocation(line: 82, column: 15, scope: !160)
!186 = !DILocalVariable(name: "connectSocket", scope: !160, file: !45, line: 83, type: !23)
!187 = !DILocation(line: 83, column: 16, scope: !160)
!188 = !DILocalVariable(name: "dataLen", scope: !160, file: !45, line: 84, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 46, baseType: !191)
!190 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!191 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!192 = !DILocation(line: 84, column: 16, scope: !160)
!193 = !DILocation(line: 84, column: 33, scope: !160)
!194 = !DILocation(line: 84, column: 26, scope: !160)
!195 = !DILocation(line: 85, column: 9, scope: !160)
!196 = !DILocation(line: 95, column: 29, scope: !197)
!197 = distinct !DILexicalBlock(scope: !160, file: !45, line: 86, column: 9)
!198 = !DILocation(line: 95, column: 27, scope: !197)
!199 = !DILocation(line: 96, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !45, line: 96, column: 17)
!201 = !DILocation(line: 96, column: 31, scope: !200)
!202 = !DILocation(line: 96, column: 17, scope: !197)
!203 = !DILocation(line: 98, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 97, column: 13)
!205 = !DILocation(line: 100, column: 13, scope: !197)
!206 = !DILocation(line: 101, column: 21, scope: !197)
!207 = !DILocation(line: 101, column: 32, scope: !197)
!208 = !DILocation(line: 102, column: 39, scope: !197)
!209 = !DILocation(line: 102, column: 21, scope: !197)
!210 = !DILocation(line: 102, column: 30, scope: !197)
!211 = !DILocation(line: 102, column: 37, scope: !197)
!212 = !DILocation(line: 103, column: 32, scope: !197)
!213 = !DILocation(line: 103, column: 21, scope: !197)
!214 = !DILocation(line: 103, column: 30, scope: !197)
!215 = !DILocation(line: 104, column: 25, scope: !216)
!216 = distinct !DILexicalBlock(scope: !197, file: !45, line: 104, column: 17)
!217 = !DILocation(line: 104, column: 40, scope: !216)
!218 = !DILocation(line: 104, column: 17, scope: !216)
!219 = !DILocation(line: 104, column: 85, scope: !216)
!220 = !DILocation(line: 104, column: 17, scope: !197)
!221 = !DILocation(line: 106, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !45, line: 105, column: 13)
!223 = !DILocation(line: 111, column: 31, scope: !197)
!224 = !DILocation(line: 111, column: 55, scope: !197)
!225 = !DILocation(line: 111, column: 62, scope: !197)
!226 = !DILocation(line: 111, column: 60, scope: !197)
!227 = !DILocation(line: 111, column: 94, scope: !197)
!228 = !DILocation(line: 111, column: 92, scope: !197)
!229 = !DILocation(line: 111, column: 102, scope: !197)
!230 = !DILocation(line: 111, column: 85, scope: !197)
!231 = !DILocation(line: 111, column: 26, scope: !197)
!232 = !DILocation(line: 111, column: 24, scope: !197)
!233 = !DILocation(line: 112, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !197, file: !45, line: 112, column: 17)
!235 = !DILocation(line: 112, column: 28, scope: !234)
!236 = !DILocation(line: 112, column: 44, scope: !234)
!237 = !DILocation(line: 112, column: 47, scope: !234)
!238 = !DILocation(line: 112, column: 58, scope: !234)
!239 = !DILocation(line: 112, column: 17, scope: !197)
!240 = !DILocation(line: 114, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !234, file: !45, line: 113, column: 13)
!242 = !DILocation(line: 117, column: 13, scope: !197)
!243 = !DILocation(line: 117, column: 18, scope: !197)
!244 = !DILocation(line: 117, column: 28, scope: !197)
!245 = !DILocation(line: 117, column: 39, scope: !197)
!246 = !DILocation(line: 117, column: 26, scope: !197)
!247 = !DILocation(line: 117, column: 55, scope: !197)
!248 = !DILocation(line: 119, column: 30, scope: !197)
!249 = !DILocation(line: 119, column: 23, scope: !197)
!250 = !DILocation(line: 119, column: 21, scope: !197)
!251 = !DILocation(line: 120, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !197, file: !45, line: 120, column: 17)
!253 = !DILocation(line: 120, column: 17, scope: !197)
!254 = !DILocation(line: 122, column: 18, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 121, column: 13)
!256 = !DILocation(line: 122, column: 26, scope: !255)
!257 = !DILocation(line: 123, column: 13, scope: !255)
!258 = !DILocation(line: 124, column: 30, scope: !197)
!259 = !DILocation(line: 124, column: 23, scope: !197)
!260 = !DILocation(line: 124, column: 21, scope: !197)
!261 = !DILocation(line: 125, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !197, file: !45, line: 125, column: 17)
!263 = !DILocation(line: 125, column: 17, scope: !197)
!264 = !DILocation(line: 127, column: 18, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 126, column: 13)
!266 = !DILocation(line: 127, column: 26, scope: !265)
!267 = !DILocation(line: 128, column: 13, scope: !265)
!268 = !DILocation(line: 129, column: 9, scope: !197)
!269 = !DILocation(line: 131, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !160, file: !45, line: 131, column: 13)
!271 = !DILocation(line: 131, column: 27, scope: !270)
!272 = !DILocation(line: 131, column: 13, scope: !160)
!273 = !DILocation(line: 133, column: 26, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !45, line: 132, column: 9)
!275 = !DILocation(line: 133, column: 13, scope: !274)
!276 = !DILocation(line: 134, column: 9, scope: !274)
!277 = !DILocation(line: 143, column: 5, scope: !144)
!278 = !DILocation(line: 143, column: 13, scope: !144)
!279 = !DILocation(line: 144, column: 1, scope: !144)
!280 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 151, type: !105, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!281 = !DILocalVariable(name: "data", arg: 1, scope: !280, file: !45, line: 151, type: !42)
!282 = !DILocation(line: 151, column: 25, scope: !280)
!283 = !DILocalVariable(name: "i", scope: !284, file: !45, line: 154, type: !23)
!284 = distinct !DILexicalBlock(scope: !280, file: !45, line: 153, column: 5)
!285 = !DILocation(line: 154, column: 13, scope: !284)
!286 = !DILocalVariable(name: "n", scope: !284, file: !45, line: 154, type: !23)
!287 = !DILocation(line: 154, column: 16, scope: !284)
!288 = !DILocalVariable(name: "intVariable", scope: !284, file: !45, line: 154, type: !23)
!289 = !DILocation(line: 154, column: 19, scope: !284)
!290 = !DILocation(line: 155, column: 20, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !45, line: 155, column: 13)
!292 = !DILocation(line: 155, column: 13, scope: !291)
!293 = !DILocation(line: 155, column: 36, scope: !291)
!294 = !DILocation(line: 155, column: 13, scope: !284)
!295 = !DILocation(line: 158, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !45, line: 156, column: 9)
!297 = !DILocation(line: 159, column: 20, scope: !298)
!298 = distinct !DILexicalBlock(scope: !296, file: !45, line: 159, column: 13)
!299 = !DILocation(line: 159, column: 18, scope: !298)
!300 = !DILocation(line: 159, column: 25, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !45, line: 159, column: 13)
!302 = !DILocation(line: 159, column: 29, scope: !301)
!303 = !DILocation(line: 159, column: 27, scope: !301)
!304 = !DILocation(line: 159, column: 13, scope: !298)
!305 = !DILocation(line: 162, column: 28, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !45, line: 160, column: 13)
!307 = !DILocation(line: 163, column: 13, scope: !306)
!308 = !DILocation(line: 159, column: 33, scope: !301)
!309 = !DILocation(line: 159, column: 13, scope: !301)
!310 = distinct !{!310, !304, !311, !139}
!311 = !DILocation(line: 163, column: 13, scope: !298)
!312 = !DILocation(line: 164, column: 26, scope: !296)
!313 = !DILocation(line: 164, column: 13, scope: !296)
!314 = !DILocation(line: 165, column: 9, scope: !296)
!315 = !DILocation(line: 167, column: 1, scope: !280)
!316 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 169, type: !145, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!317 = !DILocalVariable(name: "data", scope: !316, file: !45, line: 171, type: !42)
!318 = !DILocation(line: 171, column: 12, scope: !316)
!319 = !DILocalVariable(name: "funcPtr", scope: !316, file: !45, line: 172, type: !150)
!320 = !DILocation(line: 172, column: 12, scope: !316)
!321 = !DILocalVariable(name: "dataBuffer", scope: !316, file: !45, line: 173, type: !153)
!322 = !DILocation(line: 173, column: 10, scope: !316)
!323 = !DILocation(line: 174, column: 12, scope: !316)
!324 = !DILocation(line: 174, column: 10, scope: !316)
!325 = !DILocation(line: 176, column: 12, scope: !316)
!326 = !DILocation(line: 176, column: 5, scope: !316)
!327 = !DILocation(line: 177, column: 5, scope: !316)
!328 = !DILocation(line: 177, column: 13, scope: !316)
!329 = !DILocation(line: 178, column: 1, scope: !316)
!330 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 181, type: !105, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!331 = !DILocalVariable(name: "data", arg: 1, scope: !330, file: !45, line: 181, type: !42)
!332 = !DILocation(line: 181, column: 25, scope: !330)
!333 = !DILocalVariable(name: "i", scope: !334, file: !45, line: 184, type: !23)
!334 = distinct !DILexicalBlock(scope: !330, file: !45, line: 183, column: 5)
!335 = !DILocation(line: 184, column: 13, scope: !334)
!336 = !DILocalVariable(name: "n", scope: !334, file: !45, line: 184, type: !23)
!337 = !DILocation(line: 184, column: 16, scope: !334)
!338 = !DILocalVariable(name: "intVariable", scope: !334, file: !45, line: 184, type: !23)
!339 = !DILocation(line: 184, column: 19, scope: !334)
!340 = !DILocation(line: 185, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !45, line: 185, column: 13)
!342 = !DILocation(line: 185, column: 13, scope: !341)
!343 = !DILocation(line: 185, column: 36, scope: !341)
!344 = !DILocation(line: 185, column: 13, scope: !334)
!345 = !DILocation(line: 188, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !45, line: 188, column: 17)
!347 = distinct !DILexicalBlock(scope: !341, file: !45, line: 186, column: 9)
!348 = !DILocation(line: 188, column: 19, scope: !346)
!349 = !DILocation(line: 188, column: 17, scope: !347)
!350 = !DILocation(line: 190, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !45, line: 189, column: 13)
!352 = !DILocation(line: 191, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !45, line: 191, column: 17)
!354 = !DILocation(line: 191, column: 22, scope: !353)
!355 = !DILocation(line: 191, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !45, line: 191, column: 17)
!357 = !DILocation(line: 191, column: 33, scope: !356)
!358 = !DILocation(line: 191, column: 31, scope: !356)
!359 = !DILocation(line: 191, column: 17, scope: !353)
!360 = !DILocation(line: 194, column: 32, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !45, line: 192, column: 17)
!362 = !DILocation(line: 195, column: 17, scope: !361)
!363 = !DILocation(line: 191, column: 37, scope: !356)
!364 = !DILocation(line: 191, column: 17, scope: !356)
!365 = distinct !{!365, !359, !366, !139}
!366 = !DILocation(line: 195, column: 17, scope: !353)
!367 = !DILocation(line: 196, column: 30, scope: !351)
!368 = !DILocation(line: 196, column: 17, scope: !351)
!369 = !DILocation(line: 197, column: 13, scope: !351)
!370 = !DILocation(line: 198, column: 9, scope: !347)
!371 = !DILocation(line: 200, column: 1, scope: !330)
!372 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 202, type: !145, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!373 = !DILocalVariable(name: "data", scope: !372, file: !45, line: 204, type: !42)
!374 = !DILocation(line: 204, column: 12, scope: !372)
!375 = !DILocalVariable(name: "funcPtr", scope: !372, file: !45, line: 205, type: !150)
!376 = !DILocation(line: 205, column: 12, scope: !372)
!377 = !DILocalVariable(name: "dataBuffer", scope: !372, file: !45, line: 206, type: !153)
!378 = !DILocation(line: 206, column: 10, scope: !372)
!379 = !DILocation(line: 207, column: 12, scope: !372)
!380 = !DILocation(line: 207, column: 10, scope: !372)
!381 = !DILocalVariable(name: "recvResult", scope: !382, file: !45, line: 213, type: !23)
!382 = distinct !DILexicalBlock(scope: !372, file: !45, line: 208, column: 5)
!383 = !DILocation(line: 213, column: 13, scope: !382)
!384 = !DILocalVariable(name: "service", scope: !382, file: !45, line: 214, type: !163)
!385 = !DILocation(line: 214, column: 28, scope: !382)
!386 = !DILocalVariable(name: "replace", scope: !382, file: !45, line: 215, type: !42)
!387 = !DILocation(line: 215, column: 15, scope: !382)
!388 = !DILocalVariable(name: "connectSocket", scope: !382, file: !45, line: 216, type: !23)
!389 = !DILocation(line: 216, column: 16, scope: !382)
!390 = !DILocalVariable(name: "dataLen", scope: !382, file: !45, line: 217, type: !189)
!391 = !DILocation(line: 217, column: 16, scope: !382)
!392 = !DILocation(line: 217, column: 33, scope: !382)
!393 = !DILocation(line: 217, column: 26, scope: !382)
!394 = !DILocation(line: 218, column: 9, scope: !382)
!395 = !DILocation(line: 228, column: 29, scope: !396)
!396 = distinct !DILexicalBlock(scope: !382, file: !45, line: 219, column: 9)
!397 = !DILocation(line: 228, column: 27, scope: !396)
!398 = !DILocation(line: 229, column: 17, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !45, line: 229, column: 17)
!400 = !DILocation(line: 229, column: 31, scope: !399)
!401 = !DILocation(line: 229, column: 17, scope: !396)
!402 = !DILocation(line: 231, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !45, line: 230, column: 13)
!404 = !DILocation(line: 233, column: 13, scope: !396)
!405 = !DILocation(line: 234, column: 21, scope: !396)
!406 = !DILocation(line: 234, column: 32, scope: !396)
!407 = !DILocation(line: 235, column: 39, scope: !396)
!408 = !DILocation(line: 235, column: 21, scope: !396)
!409 = !DILocation(line: 235, column: 30, scope: !396)
!410 = !DILocation(line: 235, column: 37, scope: !396)
!411 = !DILocation(line: 236, column: 32, scope: !396)
!412 = !DILocation(line: 236, column: 21, scope: !396)
!413 = !DILocation(line: 236, column: 30, scope: !396)
!414 = !DILocation(line: 237, column: 25, scope: !415)
!415 = distinct !DILexicalBlock(scope: !396, file: !45, line: 237, column: 17)
!416 = !DILocation(line: 237, column: 40, scope: !415)
!417 = !DILocation(line: 237, column: 17, scope: !415)
!418 = !DILocation(line: 237, column: 85, scope: !415)
!419 = !DILocation(line: 237, column: 17, scope: !396)
!420 = !DILocation(line: 239, column: 17, scope: !421)
!421 = distinct !DILexicalBlock(scope: !415, file: !45, line: 238, column: 13)
!422 = !DILocation(line: 244, column: 31, scope: !396)
!423 = !DILocation(line: 244, column: 55, scope: !396)
!424 = !DILocation(line: 244, column: 62, scope: !396)
!425 = !DILocation(line: 244, column: 60, scope: !396)
!426 = !DILocation(line: 244, column: 94, scope: !396)
!427 = !DILocation(line: 244, column: 92, scope: !396)
!428 = !DILocation(line: 244, column: 102, scope: !396)
!429 = !DILocation(line: 244, column: 85, scope: !396)
!430 = !DILocation(line: 244, column: 26, scope: !396)
!431 = !DILocation(line: 244, column: 24, scope: !396)
!432 = !DILocation(line: 245, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !396, file: !45, line: 245, column: 17)
!434 = !DILocation(line: 245, column: 28, scope: !433)
!435 = !DILocation(line: 245, column: 44, scope: !433)
!436 = !DILocation(line: 245, column: 47, scope: !433)
!437 = !DILocation(line: 245, column: 58, scope: !433)
!438 = !DILocation(line: 245, column: 17, scope: !396)
!439 = !DILocation(line: 247, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !433, file: !45, line: 246, column: 13)
!441 = !DILocation(line: 250, column: 13, scope: !396)
!442 = !DILocation(line: 250, column: 18, scope: !396)
!443 = !DILocation(line: 250, column: 28, scope: !396)
!444 = !DILocation(line: 250, column: 39, scope: !396)
!445 = !DILocation(line: 250, column: 26, scope: !396)
!446 = !DILocation(line: 250, column: 55, scope: !396)
!447 = !DILocation(line: 252, column: 30, scope: !396)
!448 = !DILocation(line: 252, column: 23, scope: !396)
!449 = !DILocation(line: 252, column: 21, scope: !396)
!450 = !DILocation(line: 253, column: 17, scope: !451)
!451 = distinct !DILexicalBlock(scope: !396, file: !45, line: 253, column: 17)
!452 = !DILocation(line: 253, column: 17, scope: !396)
!453 = !DILocation(line: 255, column: 18, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !45, line: 254, column: 13)
!455 = !DILocation(line: 255, column: 26, scope: !454)
!456 = !DILocation(line: 256, column: 13, scope: !454)
!457 = !DILocation(line: 257, column: 30, scope: !396)
!458 = !DILocation(line: 257, column: 23, scope: !396)
!459 = !DILocation(line: 257, column: 21, scope: !396)
!460 = !DILocation(line: 258, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !396, file: !45, line: 258, column: 17)
!462 = !DILocation(line: 258, column: 17, scope: !396)
!463 = !DILocation(line: 260, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !45, line: 259, column: 13)
!465 = !DILocation(line: 260, column: 26, scope: !464)
!466 = !DILocation(line: 261, column: 13, scope: !464)
!467 = !DILocation(line: 262, column: 9, scope: !396)
!468 = !DILocation(line: 264, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !382, file: !45, line: 264, column: 13)
!470 = !DILocation(line: 264, column: 27, scope: !469)
!471 = !DILocation(line: 264, column: 13, scope: !382)
!472 = !DILocation(line: 266, column: 26, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !45, line: 265, column: 9)
!474 = !DILocation(line: 266, column: 13, scope: !473)
!475 = !DILocation(line: 267, column: 9, scope: !473)
!476 = !DILocation(line: 275, column: 5, scope: !372)
!477 = !DILocation(line: 275, column: 13, scope: !372)
!478 = !DILocation(line: 276, column: 1, scope: !372)
!479 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44_good", scope: !45, file: !45, line: 278, type: !145, scopeLine: 279, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!480 = !DILocation(line: 280, column: 5, scope: !479)
!481 = !DILocation(line: 281, column: 5, scope: !479)
!482 = !DILocation(line: 282, column: 1, scope: !479)
!483 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !105, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!484 = !DILocalVariable(name: "line", arg: 1, scope: !483, file: !3, line: 11, type: !42)
!485 = !DILocation(line: 11, column: 25, scope: !483)
!486 = !DILocation(line: 13, column: 1, scope: !483)
!487 = !DILocation(line: 14, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 14, column: 8)
!489 = !DILocation(line: 14, column: 13, scope: !488)
!490 = !DILocation(line: 14, column: 8, scope: !483)
!491 = !DILocation(line: 16, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 15, column: 5)
!493 = !DILocation(line: 16, column: 9, scope: !492)
!494 = !DILocation(line: 17, column: 5, scope: !492)
!495 = !DILocation(line: 18, column: 5, scope: !483)
!496 = !DILocation(line: 19, column: 1, scope: !483)
!497 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !105, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!498 = !DILocalVariable(name: "line", arg: 1, scope: !497, file: !3, line: 20, type: !42)
!499 = !DILocation(line: 20, column: 29, scope: !497)
!500 = !DILocation(line: 22, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 22, column: 8)
!502 = !DILocation(line: 22, column: 13, scope: !501)
!503 = !DILocation(line: 22, column: 8, scope: !497)
!504 = !DILocation(line: 24, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 23, column: 5)
!506 = !DILocation(line: 24, column: 9, scope: !505)
!507 = !DILocation(line: 25, column: 5, scope: !505)
!508 = !DILocation(line: 26, column: 1, scope: !497)
!509 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !510, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !190, line: 74, baseType: !23)
!514 = !DILocalVariable(name: "line", arg: 1, scope: !509, file: !3, line: 27, type: !512)
!515 = !DILocation(line: 27, column: 29, scope: !509)
!516 = !DILocation(line: 29, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 29, column: 8)
!518 = !DILocation(line: 29, column: 13, scope: !517)
!519 = !DILocation(line: 29, column: 8, scope: !509)
!520 = !DILocation(line: 31, column: 27, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 30, column: 5)
!522 = !DILocation(line: 31, column: 9, scope: !521)
!523 = !DILocation(line: 32, column: 5, scope: !521)
!524 = !DILocation(line: 33, column: 1, scope: !509)
!525 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !526, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !23}
!528 = !DILocalVariable(name: "intNumber", arg: 1, scope: !525, file: !3, line: 35, type: !23)
!529 = !DILocation(line: 35, column: 24, scope: !525)
!530 = !DILocation(line: 37, column: 20, scope: !525)
!531 = !DILocation(line: 37, column: 5, scope: !525)
!532 = !DILocation(line: 38, column: 1, scope: !525)
!533 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !534, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!537 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !533, file: !3, line: 40, type: !536)
!538 = !DILocation(line: 40, column: 28, scope: !533)
!539 = !DILocation(line: 42, column: 21, scope: !533)
!540 = !DILocation(line: 42, column: 5, scope: !533)
!541 = !DILocation(line: 43, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !543, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!546 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !542, file: !3, line: 45, type: !545)
!547 = !DILocation(line: 45, column: 28, scope: !542)
!548 = !DILocation(line: 47, column: 20, scope: !542)
!549 = !DILocation(line: 47, column: 5, scope: !542)
!550 = !DILocation(line: 48, column: 1, scope: !542)
!551 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !552, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!555 = !DILocalVariable(name: "longNumber", arg: 1, scope: !551, file: !3, line: 50, type: !554)
!556 = !DILocation(line: 50, column: 26, scope: !551)
!557 = !DILocation(line: 52, column: 21, scope: !551)
!558 = !DILocation(line: 52, column: 5, scope: !551)
!559 = !DILocation(line: 53, column: 1, scope: !551)
!560 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !561, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !564, line: 27, baseType: !565)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !171, line: 44, baseType: !554)
!566 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !560, file: !3, line: 55, type: !563)
!567 = !DILocation(line: 55, column: 33, scope: !560)
!568 = !DILocation(line: 57, column: 29, scope: !560)
!569 = !DILocation(line: 57, column: 5, scope: !560)
!570 = !DILocation(line: 58, column: 1, scope: !560)
!571 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !572, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !189}
!574 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !571, file: !3, line: 60, type: !189)
!575 = !DILocation(line: 60, column: 29, scope: !571)
!576 = !DILocation(line: 62, column: 21, scope: !571)
!577 = !DILocation(line: 62, column: 5, scope: !571)
!578 = !DILocation(line: 63, column: 1, scope: !571)
!579 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !580, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !43}
!582 = !DILocalVariable(name: "charHex", arg: 1, scope: !579, file: !3, line: 65, type: !43)
!583 = !DILocation(line: 65, column: 29, scope: !579)
!584 = !DILocation(line: 67, column: 22, scope: !579)
!585 = !DILocation(line: 67, column: 5, scope: !579)
!586 = !DILocation(line: 68, column: 1, scope: !579)
!587 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !588, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !513}
!590 = !DILocalVariable(name: "wideChar", arg: 1, scope: !587, file: !3, line: 70, type: !513)
!591 = !DILocation(line: 70, column: 29, scope: !587)
!592 = !DILocalVariable(name: "s", scope: !587, file: !3, line: 74, type: !593)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 2)
!596 = !DILocation(line: 74, column: 13, scope: !587)
!597 = !DILocation(line: 75, column: 16, scope: !587)
!598 = !DILocation(line: 75, column: 9, scope: !587)
!599 = !DILocation(line: 75, column: 14, scope: !587)
!600 = !DILocation(line: 76, column: 9, scope: !587)
!601 = !DILocation(line: 76, column: 14, scope: !587)
!602 = !DILocation(line: 77, column: 21, scope: !587)
!603 = !DILocation(line: 77, column: 5, scope: !587)
!604 = !DILocation(line: 78, column: 1, scope: !587)
!605 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !606, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !7}
!608 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !605, file: !3, line: 80, type: !7)
!609 = !DILocation(line: 80, column: 33, scope: !605)
!610 = !DILocation(line: 82, column: 20, scope: !605)
!611 = !DILocation(line: 82, column: 5, scope: !605)
!612 = !DILocation(line: 83, column: 1, scope: !605)
!613 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !614, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !25}
!616 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !613, file: !3, line: 85, type: !25)
!617 = !DILocation(line: 85, column: 45, scope: !613)
!618 = !DILocation(line: 87, column: 22, scope: !613)
!619 = !DILocation(line: 87, column: 5, scope: !613)
!620 = !DILocation(line: 88, column: 1, scope: !613)
!621 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !622, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !624}
!624 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!625 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !621, file: !3, line: 90, type: !624)
!626 = !DILocation(line: 90, column: 29, scope: !621)
!627 = !DILocation(line: 92, column: 20, scope: !621)
!628 = !DILocation(line: 92, column: 5, scope: !621)
!629 = !DILocation(line: 93, column: 1, scope: !621)
!630 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !631, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !635, line: 100, baseType: !636)
!635 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_957/source_code")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !635, line: 96, size: 64, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !636, file: !635, line: 98, baseType: !23, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !636, file: !635, line: 99, baseType: !23, size: 32, offset: 32)
!640 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !630, file: !3, line: 95, type: !633)
!641 = !DILocation(line: 95, column: 40, scope: !630)
!642 = !DILocation(line: 97, column: 26, scope: !630)
!643 = !DILocation(line: 97, column: 47, scope: !630)
!644 = !DILocation(line: 97, column: 55, scope: !630)
!645 = !DILocation(line: 97, column: 76, scope: !630)
!646 = !DILocation(line: 97, column: 5, scope: !630)
!647 = !DILocation(line: 98, column: 1, scope: !630)
!648 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !649, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651, !189}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!652 = !DILocalVariable(name: "bytes", arg: 1, scope: !648, file: !3, line: 100, type: !651)
!653 = !DILocation(line: 100, column: 38, scope: !648)
!654 = !DILocalVariable(name: "numBytes", arg: 2, scope: !648, file: !3, line: 100, type: !189)
!655 = !DILocation(line: 100, column: 52, scope: !648)
!656 = !DILocalVariable(name: "i", scope: !648, file: !3, line: 102, type: !189)
!657 = !DILocation(line: 102, column: 12, scope: !648)
!658 = !DILocation(line: 103, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !648, file: !3, line: 103, column: 5)
!660 = !DILocation(line: 103, column: 10, scope: !659)
!661 = !DILocation(line: 103, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 103, column: 5)
!663 = !DILocation(line: 103, column: 21, scope: !662)
!664 = !DILocation(line: 103, column: 19, scope: !662)
!665 = !DILocation(line: 103, column: 5, scope: !659)
!666 = !DILocation(line: 105, column: 24, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 104, column: 5)
!668 = !DILocation(line: 105, column: 30, scope: !667)
!669 = !DILocation(line: 105, column: 9, scope: !667)
!670 = !DILocation(line: 106, column: 5, scope: !667)
!671 = !DILocation(line: 103, column: 31, scope: !662)
!672 = !DILocation(line: 103, column: 5, scope: !662)
!673 = distinct !{!673, !665, !674, !139}
!674 = !DILocation(line: 106, column: 5, scope: !659)
!675 = !DILocation(line: 107, column: 5, scope: !648)
!676 = !DILocation(line: 108, column: 1, scope: !648)
!677 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !678, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DISubroutineType(types: !679)
!679 = !{!189, !651, !189, !42}
!680 = !DILocalVariable(name: "bytes", arg: 1, scope: !677, file: !3, line: 113, type: !651)
!681 = !DILocation(line: 113, column: 39, scope: !677)
!682 = !DILocalVariable(name: "numBytes", arg: 2, scope: !677, file: !3, line: 113, type: !189)
!683 = !DILocation(line: 113, column: 53, scope: !677)
!684 = !DILocalVariable(name: "hex", arg: 3, scope: !677, file: !3, line: 113, type: !42)
!685 = !DILocation(line: 113, column: 71, scope: !677)
!686 = !DILocalVariable(name: "numWritten", scope: !677, file: !3, line: 115, type: !189)
!687 = !DILocation(line: 115, column: 12, scope: !677)
!688 = !DILocation(line: 121, column: 5, scope: !677)
!689 = !DILocation(line: 121, column: 12, scope: !677)
!690 = !DILocation(line: 121, column: 25, scope: !677)
!691 = !DILocation(line: 121, column: 23, scope: !677)
!692 = !DILocation(line: 121, column: 34, scope: !677)
!693 = !DILocation(line: 121, column: 37, scope: !677)
!694 = !DILocation(line: 121, column: 67, scope: !677)
!695 = !DILocation(line: 121, column: 70, scope: !677)
!696 = !DILocation(line: 0, scope: !677)
!697 = !DILocalVariable(name: "byte", scope: !698, file: !3, line: 123, type: !23)
!698 = distinct !DILexicalBlock(scope: !677, file: !3, line: 122, column: 5)
!699 = !DILocation(line: 123, column: 13, scope: !698)
!700 = !DILocation(line: 124, column: 17, scope: !698)
!701 = !DILocation(line: 124, column: 25, scope: !698)
!702 = !DILocation(line: 124, column: 23, scope: !698)
!703 = !DILocation(line: 124, column: 9, scope: !698)
!704 = !DILocation(line: 125, column: 45, scope: !698)
!705 = !DILocation(line: 125, column: 29, scope: !698)
!706 = !DILocation(line: 125, column: 9, scope: !698)
!707 = !DILocation(line: 125, column: 15, scope: !698)
!708 = !DILocation(line: 125, column: 27, scope: !698)
!709 = !DILocation(line: 126, column: 9, scope: !698)
!710 = distinct !{!710, !688, !711, !139}
!711 = !DILocation(line: 127, column: 5, scope: !677)
!712 = !DILocation(line: 129, column: 12, scope: !677)
!713 = !DILocation(line: 129, column: 5, scope: !677)
!714 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !715, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!715 = !DISubroutineType(types: !716)
!716 = !{!189, !651, !189, !512}
!717 = !DILocalVariable(name: "bytes", arg: 1, scope: !714, file: !3, line: 135, type: !651)
!718 = !DILocation(line: 135, column: 41, scope: !714)
!719 = !DILocalVariable(name: "numBytes", arg: 2, scope: !714, file: !3, line: 135, type: !189)
!720 = !DILocation(line: 135, column: 55, scope: !714)
!721 = !DILocalVariable(name: "hex", arg: 3, scope: !714, file: !3, line: 135, type: !512)
!722 = !DILocation(line: 135, column: 76, scope: !714)
!723 = !DILocalVariable(name: "numWritten", scope: !714, file: !3, line: 137, type: !189)
!724 = !DILocation(line: 137, column: 12, scope: !714)
!725 = !DILocation(line: 143, column: 5, scope: !714)
!726 = !DILocation(line: 143, column: 12, scope: !714)
!727 = !DILocation(line: 143, column: 25, scope: !714)
!728 = !DILocation(line: 143, column: 23, scope: !714)
!729 = !DILocation(line: 143, column: 34, scope: !714)
!730 = !DILocation(line: 143, column: 47, scope: !714)
!731 = !DILocation(line: 143, column: 55, scope: !714)
!732 = !DILocation(line: 143, column: 53, scope: !714)
!733 = !DILocation(line: 143, column: 37, scope: !714)
!734 = !DILocation(line: 143, column: 68, scope: !714)
!735 = !DILocation(line: 143, column: 81, scope: !714)
!736 = !DILocation(line: 143, column: 89, scope: !714)
!737 = !DILocation(line: 143, column: 87, scope: !714)
!738 = !DILocation(line: 143, column: 100, scope: !714)
!739 = !DILocation(line: 143, column: 71, scope: !714)
!740 = !DILocation(line: 0, scope: !714)
!741 = !DILocalVariable(name: "byte", scope: !742, file: !3, line: 145, type: !23)
!742 = distinct !DILexicalBlock(scope: !714, file: !3, line: 144, column: 5)
!743 = !DILocation(line: 145, column: 13, scope: !742)
!744 = !DILocation(line: 146, column: 18, scope: !742)
!745 = !DILocation(line: 146, column: 26, scope: !742)
!746 = !DILocation(line: 146, column: 24, scope: !742)
!747 = !DILocation(line: 146, column: 9, scope: !742)
!748 = !DILocation(line: 147, column: 45, scope: !742)
!749 = !DILocation(line: 147, column: 29, scope: !742)
!750 = !DILocation(line: 147, column: 9, scope: !742)
!751 = !DILocation(line: 147, column: 15, scope: !742)
!752 = !DILocation(line: 147, column: 27, scope: !742)
!753 = !DILocation(line: 148, column: 9, scope: !742)
!754 = distinct !{!754, !725, !755, !139}
!755 = !DILocation(line: 149, column: 5, scope: !714)
!756 = !DILocation(line: 151, column: 12, scope: !714)
!757 = !DILocation(line: 151, column: 5, scope: !714)
!758 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !759, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!759 = !DISubroutineType(types: !760)
!760 = !{!23}
!761 = !DILocation(line: 158, column: 5, scope: !758)
!762 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !759, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 163, column: 5, scope: !762)
!764 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !759, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 168, column: 13, scope: !764)
!766 = !DILocation(line: 168, column: 20, scope: !764)
!767 = !DILocation(line: 168, column: 5, scope: !764)
!768 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !145, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 187, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !145, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 188, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !145, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 189, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !145, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 190, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !145, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 191, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !145, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 192, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !145, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 193, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !145, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 194, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !145, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 195, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !145, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 198, column: 15, scope: !786)
!788 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !145, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 199, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !145, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 200, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !145, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 201, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !145, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 202, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !145, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 203, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !145, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 204, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !145, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 205, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !145, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 206, column: 15, scope: !802)
