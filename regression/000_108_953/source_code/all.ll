; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_34_bad() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !110, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !122
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !122
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !123
  store i8* %arraydecay, i8** %data, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !125, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !128, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 -1, i32* %connectSocket, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !158
  %1 = load i8*, i8** %data, align 8, !dbg !159
  %call = call i64 @strlen(i8* %1) #7, !dbg !160
  store i64 %call, i64* %dataLen, align 8, !dbg !158
  br label %do.body, !dbg !161

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !162
  store i32 %call1, i32* %connectSocket, align 4, !dbg !164
  %2 = load i32, i32* %connectSocket, align 4, !dbg !165
  %cmp = icmp eq i32 %2, -1, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !169

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !171
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !172
  store i16 2, i16* %sin_family, align 4, !dbg !173
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !174
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !175
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !176
  store i32 %call2, i32* %s_addr, align 4, !dbg !177
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !178
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !179
  store i16 %call3, i16* %sin_port, align 2, !dbg !180
  %4 = load i32, i32* %connectSocket, align 4, !dbg !181
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !183
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !184
  %cmp5 = icmp eq i32 %call4, -1, !dbg !185
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !186

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !187

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !189
  %7 = load i8*, i8** %data, align 8, !dbg !190
  %8 = load i64, i64* %dataLen, align 8, !dbg !191
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !192
  %9 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub = sub i64 100, %9, !dbg !194
  %sub8 = sub i64 %sub, 1, !dbg !195
  %mul = mul i64 1, %sub8, !dbg !196
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !197
  %conv = trunc i64 %call9 to i32, !dbg !197
  store i32 %conv, i32* %recvResult, align 4, !dbg !198
  %10 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp10 = icmp eq i32 %10, -1, !dbg !201
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !202

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !203
  %cmp12 = icmp eq i32 %11, 0, !dbg !204
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !205

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !206

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !208
  %13 = load i64, i64* %dataLen, align 8, !dbg !209
  %14 = load i32, i32* %recvResult, align 4, !dbg !210
  %conv16 = sext i32 %14 to i64, !dbg !210
  %div = udiv i64 %conv16, 1, !dbg !211
  %add = add i64 %13, %div, !dbg !212
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !208
  store i8 0, i8* %arrayidx, align 1, !dbg !213
  %15 = load i8*, i8** %data, align 8, !dbg !214
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !215
  store i8* %call17, i8** %replace, align 8, !dbg !216
  %16 = load i8*, i8** %replace, align 8, !dbg !217
  %tobool = icmp ne i8* %16, null, !dbg !217
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !219

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !220
  store i8 0, i8* %17, align 1, !dbg !222
  br label %if.end19, !dbg !223

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !224
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !225
  store i8* %call20, i8** %replace, align 8, !dbg !226
  %19 = load i8*, i8** %replace, align 8, !dbg !227
  %tobool21 = icmp ne i8* %19, null, !dbg !227
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !229

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !230
  store i8 0, i8* %20, align 1, !dbg !232
  br label %if.end23, !dbg !233

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !234

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !235
  %cmp24 = icmp ne i32 %21, -1, !dbg !237
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !238

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !239
  %call27 = call i32 @close(i32 %22), !dbg !241
  br label %if.end28, !dbg !242

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !243
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !244
  store i8* %23, i8** %unionFirst, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !246, metadata !DIExpression()), !dbg !248
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !249
  %24 = load i8*, i8** %unionSecond, align 8, !dbg !249
  store i8* %24, i8** %data29, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %i, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %n, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !255, metadata !DIExpression()), !dbg !256
  %25 = load i8*, i8** %data29, align 8, !dbg !257
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !259
  %cmp31 = icmp eq i32 %call30, 1, !dbg !260
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !261

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then33
  %26 = load i32, i32* %i, align 4, !dbg !267
  %27 = load i32, i32* %n, align 4, !dbg !269
  %cmp34 = icmp slt i32 %26, %27, !dbg !270
  br i1 %cmp34, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %28, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !275
  %inc36 = add nsw i32 %29, 1, !dbg !275
  store i32 %inc36, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !280
  call void @printIntLine(i32 %30), !dbg !281
  br label %if.end37, !dbg !282

if.end37:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !283
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
define dso_local void @goodG2B() #0 !dbg !284 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !290
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !290
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !291
  store i8* %arraydecay, i8** %data, align 8, !dbg !292
  %1 = load i8*, i8** %data, align 8, !dbg !293
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !294
  %2 = load i8*, i8** %data, align 8, !dbg !295
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !296
  store i8* %2, i8** %unionFirst, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !298, metadata !DIExpression()), !dbg !300
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !301
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !301
  store i8* %3, i8** %data1, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata i32* %i, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %n, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !307, metadata !DIExpression()), !dbg !308
  %4 = load i8*, i8** %data1, align 8, !dbg !309
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !311
  %cmp = icmp eq i32 %call2, 1, !dbg !312
  br i1 %cmp, label %if.then, label %if.end, !dbg !313

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !314
  store i32 0, i32* %i, align 4, !dbg !316
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !319
  %6 = load i32, i32* %n, align 4, !dbg !321
  %cmp3 = icmp slt i32 %5, %6, !dbg !322
  br i1 %cmp3, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !324
  %inc = add nsw i32 %7, 1, !dbg !324
  store i32 %inc, i32* %intVariable, align 4, !dbg !324
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !327
  %inc4 = add nsw i32 %8, 1, !dbg !327
  store i32 %inc4, i32* %i, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !331
  call void @printIntLine(i32 %9), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !334
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !335 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !341
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !341
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !342
  store i8* %arraydecay, i8** %data, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !351, metadata !DIExpression()), !dbg !352
  store i32 -1, i32* %connectSocket, align 4, !dbg !352
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !353, metadata !DIExpression()), !dbg !354
  %1 = load i8*, i8** %data, align 8, !dbg !355
  %call = call i64 @strlen(i8* %1) #7, !dbg !356
  store i64 %call, i64* %dataLen, align 8, !dbg !354
  br label %do.body, !dbg !357

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !358
  store i32 %call1, i32* %connectSocket, align 4, !dbg !360
  %2 = load i32, i32* %connectSocket, align 4, !dbg !361
  %cmp = icmp eq i32 %2, -1, !dbg !363
  br i1 %cmp, label %if.then, label %if.end, !dbg !364

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !365

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !367
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !367
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !368
  store i16 2, i16* %sin_family, align 4, !dbg !369
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !370
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !371
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !372
  store i32 %call2, i32* %s_addr, align 4, !dbg !373
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !374
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !375
  store i16 %call3, i16* %sin_port, align 2, !dbg !376
  %4 = load i32, i32* %connectSocket, align 4, !dbg !377
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !379
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !380
  %cmp5 = icmp eq i32 %call4, -1, !dbg !381
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !382

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !383

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !385
  %7 = load i8*, i8** %data, align 8, !dbg !386
  %8 = load i64, i64* %dataLen, align 8, !dbg !387
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !388
  %9 = load i64, i64* %dataLen, align 8, !dbg !389
  %sub = sub i64 100, %9, !dbg !390
  %sub8 = sub i64 %sub, 1, !dbg !391
  %mul = mul i64 1, %sub8, !dbg !392
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !393
  %conv = trunc i64 %call9 to i32, !dbg !393
  store i32 %conv, i32* %recvResult, align 4, !dbg !394
  %10 = load i32, i32* %recvResult, align 4, !dbg !395
  %cmp10 = icmp eq i32 %10, -1, !dbg !397
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !398

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !399
  %cmp12 = icmp eq i32 %11, 0, !dbg !400
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !401

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !402

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !404
  %13 = load i64, i64* %dataLen, align 8, !dbg !405
  %14 = load i32, i32* %recvResult, align 4, !dbg !406
  %conv16 = sext i32 %14 to i64, !dbg !406
  %div = udiv i64 %conv16, 1, !dbg !407
  %add = add i64 %13, %div, !dbg !408
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !404
  store i8 0, i8* %arrayidx, align 1, !dbg !409
  %15 = load i8*, i8** %data, align 8, !dbg !410
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !411
  store i8* %call17, i8** %replace, align 8, !dbg !412
  %16 = load i8*, i8** %replace, align 8, !dbg !413
  %tobool = icmp ne i8* %16, null, !dbg !413
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !415

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !416
  store i8 0, i8* %17, align 1, !dbg !418
  br label %if.end19, !dbg !419

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !420
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !421
  store i8* %call20, i8** %replace, align 8, !dbg !422
  %19 = load i8*, i8** %replace, align 8, !dbg !423
  %tobool21 = icmp ne i8* %19, null, !dbg !423
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !425

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !426
  store i8 0, i8* %20, align 1, !dbg !428
  br label %if.end23, !dbg !429

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !430

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !431
  %cmp24 = icmp ne i32 %21, -1, !dbg !433
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !434

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !435
  %call27 = call i32 @close(i32 %22), !dbg !437
  br label %if.end28, !dbg !438

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !439
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !440
  store i8* %23, i8** %unionFirst, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !442, metadata !DIExpression()), !dbg !444
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !445
  %24 = load i8*, i8** %unionSecond, align 8, !dbg !445
  store i8* %24, i8** %data29, align 8, !dbg !444
  call void @llvm.dbg.declare(metadata i32* %i, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %n, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !451, metadata !DIExpression()), !dbg !452
  %25 = load i8*, i8** %data29, align 8, !dbg !453
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !455
  %cmp31 = icmp eq i32 %call30, 1, !dbg !456
  br i1 %cmp31, label %if.then33, label %if.end41, !dbg !457

if.then33:                                        ; preds = %if.end28
  %26 = load i32, i32* %n, align 4, !dbg !458
  %cmp34 = icmp slt i32 %26, 10000, !dbg !461
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !462

if.then36:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !463
  store i32 0, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %if.then36
  %27 = load i32, i32* %i, align 4, !dbg !468
  %28 = load i32, i32* %n, align 4, !dbg !470
  %cmp37 = icmp slt i32 %27, %28, !dbg !471
  br i1 %cmp37, label %for.body, label %for.end, !dbg !472

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !473
  %inc = add nsw i32 %29, 1, !dbg !473
  store i32 %inc, i32* %intVariable, align 4, !dbg !473
  br label %for.inc, !dbg !475

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !476
  %inc39 = add nsw i32 %30, 1, !dbg !476
  store i32 %inc39, i32* %i, align 4, !dbg !476
  br label %for.cond, !dbg !477, !llvm.loop !478

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !480
  call void @printIntLine(i32 %31), !dbg !481
  br label %if.end40, !dbg !482

if.end40:                                         ; preds = %for.end, %if.then33
  br label %if.end41, !dbg !483

if.end41:                                         ; preds = %if.end40, %if.end28
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_34_good() #0 !dbg !485 {
entry:
  call void @goodG2B(), !dbg !486
  call void @goodB2G(), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !489 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !494
  %0 = load i8*, i8** %line.addr, align 8, !dbg !495
  %cmp = icmp ne i8* %0, null, !dbg !497
  br i1 %cmp, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !499
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !501
  br label %if.end, !dbg !502

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !503
  ret void, !dbg !504
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !505 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i8*, i8** %line.addr, align 8, !dbg !508
  %cmp = icmp ne i8* %0, null, !dbg !510
  br i1 %cmp, label %if.then, label %if.end, !dbg !511

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !514
  br label %if.end, !dbg !515

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !517 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load i32*, i32** %line.addr, align 8, !dbg !524
  %cmp = icmp ne i32* %0, null, !dbg !526
  br i1 %cmp, label %if.then, label %if.end, !dbg !527

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !528
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !530
  br label %if.end, !dbg !531

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !532
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !533 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !541 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !547
  %conv = sext i16 %0 to i32, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !550 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !556
  %conv = fpext float %0 to double, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !559 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !568 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !579 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !584
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !587 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !590, metadata !DIExpression()), !dbg !591
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !592
  %conv = sext i8 %0 to i32, !dbg !592
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !595 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !600, metadata !DIExpression()), !dbg !604
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !605
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !606
  store i32 %0, i32* %arrayidx, align 4, !dbg !607
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !608
  store i32 0, i32* %arrayidx1, align 4, !dbg !609
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !613 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !618
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !621 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !624, metadata !DIExpression()), !dbg !625
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !626
  %conv = zext i8 %0 to i32, !dbg !626
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !627
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !629 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !633, metadata !DIExpression()), !dbg !634
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !635
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !636
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !638 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !648, metadata !DIExpression()), !dbg !649
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !650
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !651
  %1 = load i32, i32* %intOne, align 4, !dbg !651
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !652
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !653
  %3 = load i32, i32* %intTwo, align 4, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !656 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !660, metadata !DIExpression()), !dbg !661
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.declare(metadata i64* %i, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 0, i64* %i, align 8, !dbg !666
  br label %for.cond, !dbg !668

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !669
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !671
  %cmp = icmp ult i64 %0, %1, !dbg !672
  br i1 %cmp, label %for.body, label %for.end, !dbg !673

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !674
  %3 = load i64, i64* %i, align 8, !dbg !676
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !674
  %4 = load i8, i8* %arrayidx, align 1, !dbg !674
  %conv = zext i8 %4 to i32, !dbg !674
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !677
  br label %for.inc, !dbg !678

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !679
  %inc = add i64 %5, 1, !dbg !679
  store i64 %inc, i64* %i, align 8, !dbg !679
  br label %for.cond, !dbg !680, !llvm.loop !681

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !683
  ret void, !dbg !684
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !685 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !688, metadata !DIExpression()), !dbg !689
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !690, metadata !DIExpression()), !dbg !691
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !692, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !694, metadata !DIExpression()), !dbg !695
  store i64 0, i64* %numWritten, align 8, !dbg !695
  br label %while.cond, !dbg !696

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !697
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !698
  %cmp = icmp ult i64 %0, %1, !dbg !699
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !700

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !701
  %2 = load i16*, i16** %call, align 8, !dbg !701
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !701
  %4 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul = mul i64 2, %4, !dbg !701
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !701
  %5 = load i8, i8* %arrayidx, align 1, !dbg !701
  %conv = sext i8 %5 to i32, !dbg !701
  %idxprom = sext i32 %conv to i64, !dbg !701
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !701
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !701
  %conv2 = zext i16 %6 to i32, !dbg !701
  %and = and i32 %conv2, 4096, !dbg !701
  %tobool = icmp ne i32 %and, 0, !dbg !701
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !702

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !703
  %7 = load i16*, i16** %call3, align 8, !dbg !703
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !703
  %9 = load i64, i64* %numWritten, align 8, !dbg !703
  %mul4 = mul i64 2, %9, !dbg !703
  %add = add i64 %mul4, 1, !dbg !703
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !703
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !703
  %conv6 = sext i8 %10 to i32, !dbg !703
  %idxprom7 = sext i32 %conv6 to i64, !dbg !703
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !703
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !703
  %conv9 = zext i16 %11 to i32, !dbg !703
  %and10 = and i32 %conv9, 4096, !dbg !703
  %tobool11 = icmp ne i32 %and10, 0, !dbg !702
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !704
  br i1 %12, label %while.body, label %while.end, !dbg !696

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !705, metadata !DIExpression()), !dbg !707
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !708
  %14 = load i64, i64* %numWritten, align 8, !dbg !709
  %mul12 = mul i64 2, %14, !dbg !710
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !708
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !711
  %15 = load i32, i32* %byte, align 4, !dbg !712
  %conv15 = trunc i32 %15 to i8, !dbg !713
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !714
  %17 = load i64, i64* %numWritten, align 8, !dbg !715
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !714
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !716
  %18 = load i64, i64* %numWritten, align 8, !dbg !717
  %inc = add i64 %18, 1, !dbg !717
  store i64 %inc, i64* %numWritten, align 8, !dbg !717
  br label %while.cond, !dbg !696, !llvm.loop !718

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !720
  ret i64 %19, !dbg !721
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !722 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !727, metadata !DIExpression()), !dbg !728
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !731, metadata !DIExpression()), !dbg !732
  store i64 0, i64* %numWritten, align 8, !dbg !732
  br label %while.cond, !dbg !733

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !734
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !735
  %cmp = icmp ult i64 %0, %1, !dbg !736
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !737

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !738
  %3 = load i64, i64* %numWritten, align 8, !dbg !739
  %mul = mul i64 2, %3, !dbg !740
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !738
  %4 = load i32, i32* %arrayidx, align 4, !dbg !738
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !741
  %tobool = icmp ne i32 %call, 0, !dbg !741
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !742

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !743
  %6 = load i64, i64* %numWritten, align 8, !dbg !744
  %mul1 = mul i64 2, %6, !dbg !745
  %add = add i64 %mul1, 1, !dbg !746
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !743
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !743
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !747
  %tobool4 = icmp ne i32 %call3, 0, !dbg !742
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !748
  br i1 %8, label %while.body, label %while.end, !dbg !733

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !749, metadata !DIExpression()), !dbg !751
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !752
  %10 = load i64, i64* %numWritten, align 8, !dbg !753
  %mul5 = mul i64 2, %10, !dbg !754
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !752
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !755
  %11 = load i32, i32* %byte, align 4, !dbg !756
  %conv = trunc i32 %11 to i8, !dbg !757
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !758
  %13 = load i64, i64* %numWritten, align 8, !dbg !759
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !758
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !760
  %14 = load i64, i64* %numWritten, align 8, !dbg !761
  %inc = add i64 %14, 1, !dbg !761
  store i64 %inc, i64* %numWritten, align 8, !dbg !761
  br label %while.cond, !dbg !733, !llvm.loop !762

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !764
  ret i64 %15, !dbg !765
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !766 {
entry:
  ret i32 1, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !770 {
entry:
  ret i32 0, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !772 {
entry:
  %call = call i32 @rand() #8, !dbg !773
  %rem = srem i32 %call, 2, !dbg !774
  ret i32 %rem, !dbg !775
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !810 {
entry:
  ret void, !dbg !811
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_bad", scope: !45, file: !45, line: 51, type: !105, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 53, type: !42)
!109 = !DILocation(line: 53, column: 12, scope: !104)
!110 = !DILocalVariable(name: "myUnion", scope: !104, file: !45, line: 54, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType", file: !112, line: 9, baseType: !113)
!112 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !112, line: 5, size: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !113, file: !112, line: 7, baseType: !42, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !113, file: !112, line: 8, baseType: !42, size: 64)
!117 = !DILocation(line: 54, column: 71, scope: !104)
!118 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 55, type: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 100)
!122 = !DILocation(line: 55, column: 10, scope: !104)
!123 = !DILocation(line: 56, column: 12, scope: !104)
!124 = !DILocation(line: 56, column: 10, scope: !104)
!125 = !DILocalVariable(name: "recvResult", scope: !126, file: !45, line: 62, type: !23)
!126 = distinct !DILexicalBlock(scope: !104, file: !45, line: 57, column: 5)
!127 = !DILocation(line: 62, column: 13, scope: !126)
!128 = !DILocalVariable(name: "service", scope: !126, file: !45, line: 63, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !130)
!130 = !{!131, !132, !138, !145}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !60, line: 240, baseType: !94, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !60, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !135, line: 25, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !137, line: 40, baseType: !24)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !60, line: 242, baseType: !139, size: 32, offset: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !139, file: !60, line: 33, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 26, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !137, line: 42, baseType: !7)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !60, line: 245, baseType: !146, size: 64, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DILocation(line: 63, column: 28, scope: !126)
!150 = !DILocalVariable(name: "replace", scope: !126, file: !45, line: 64, type: !42)
!151 = !DILocation(line: 64, column: 15, scope: !126)
!152 = !DILocalVariable(name: "connectSocket", scope: !126, file: !45, line: 65, type: !23)
!153 = !DILocation(line: 65, column: 16, scope: !126)
!154 = !DILocalVariable(name: "dataLen", scope: !126, file: !45, line: 66, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DILocation(line: 66, column: 16, scope: !126)
!159 = !DILocation(line: 66, column: 33, scope: !126)
!160 = !DILocation(line: 66, column: 26, scope: !126)
!161 = !DILocation(line: 67, column: 9, scope: !126)
!162 = !DILocation(line: 77, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !126, file: !45, line: 68, column: 9)
!164 = !DILocation(line: 77, column: 27, scope: !163)
!165 = !DILocation(line: 78, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !45, line: 78, column: 17)
!167 = !DILocation(line: 78, column: 31, scope: !166)
!168 = !DILocation(line: 78, column: 17, scope: !163)
!169 = !DILocation(line: 80, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !45, line: 79, column: 13)
!171 = !DILocation(line: 82, column: 13, scope: !163)
!172 = !DILocation(line: 83, column: 21, scope: !163)
!173 = !DILocation(line: 83, column: 32, scope: !163)
!174 = !DILocation(line: 84, column: 39, scope: !163)
!175 = !DILocation(line: 84, column: 21, scope: !163)
!176 = !DILocation(line: 84, column: 30, scope: !163)
!177 = !DILocation(line: 84, column: 37, scope: !163)
!178 = !DILocation(line: 85, column: 32, scope: !163)
!179 = !DILocation(line: 85, column: 21, scope: !163)
!180 = !DILocation(line: 85, column: 30, scope: !163)
!181 = !DILocation(line: 86, column: 25, scope: !182)
!182 = distinct !DILexicalBlock(scope: !163, file: !45, line: 86, column: 17)
!183 = !DILocation(line: 86, column: 40, scope: !182)
!184 = !DILocation(line: 86, column: 17, scope: !182)
!185 = !DILocation(line: 86, column: 85, scope: !182)
!186 = !DILocation(line: 86, column: 17, scope: !163)
!187 = !DILocation(line: 88, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !45, line: 87, column: 13)
!189 = !DILocation(line: 93, column: 31, scope: !163)
!190 = !DILocation(line: 93, column: 55, scope: !163)
!191 = !DILocation(line: 93, column: 62, scope: !163)
!192 = !DILocation(line: 93, column: 60, scope: !163)
!193 = !DILocation(line: 93, column: 94, scope: !163)
!194 = !DILocation(line: 93, column: 92, scope: !163)
!195 = !DILocation(line: 93, column: 102, scope: !163)
!196 = !DILocation(line: 93, column: 85, scope: !163)
!197 = !DILocation(line: 93, column: 26, scope: !163)
!198 = !DILocation(line: 93, column: 24, scope: !163)
!199 = !DILocation(line: 94, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !163, file: !45, line: 94, column: 17)
!201 = !DILocation(line: 94, column: 28, scope: !200)
!202 = !DILocation(line: 94, column: 44, scope: !200)
!203 = !DILocation(line: 94, column: 47, scope: !200)
!204 = !DILocation(line: 94, column: 58, scope: !200)
!205 = !DILocation(line: 94, column: 17, scope: !163)
!206 = !DILocation(line: 96, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !45, line: 95, column: 13)
!208 = !DILocation(line: 99, column: 13, scope: !163)
!209 = !DILocation(line: 99, column: 18, scope: !163)
!210 = !DILocation(line: 99, column: 28, scope: !163)
!211 = !DILocation(line: 99, column: 39, scope: !163)
!212 = !DILocation(line: 99, column: 26, scope: !163)
!213 = !DILocation(line: 99, column: 55, scope: !163)
!214 = !DILocation(line: 101, column: 30, scope: !163)
!215 = !DILocation(line: 101, column: 23, scope: !163)
!216 = !DILocation(line: 101, column: 21, scope: !163)
!217 = !DILocation(line: 102, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !163, file: !45, line: 102, column: 17)
!219 = !DILocation(line: 102, column: 17, scope: !163)
!220 = !DILocation(line: 104, column: 18, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !45, line: 103, column: 13)
!222 = !DILocation(line: 104, column: 26, scope: !221)
!223 = !DILocation(line: 105, column: 13, scope: !221)
!224 = !DILocation(line: 106, column: 30, scope: !163)
!225 = !DILocation(line: 106, column: 23, scope: !163)
!226 = !DILocation(line: 106, column: 21, scope: !163)
!227 = !DILocation(line: 107, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !163, file: !45, line: 107, column: 17)
!229 = !DILocation(line: 107, column: 17, scope: !163)
!230 = !DILocation(line: 109, column: 18, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !45, line: 108, column: 13)
!232 = !DILocation(line: 109, column: 26, scope: !231)
!233 = !DILocation(line: 110, column: 13, scope: !231)
!234 = !DILocation(line: 111, column: 9, scope: !163)
!235 = !DILocation(line: 113, column: 13, scope: !236)
!236 = distinct !DILexicalBlock(scope: !126, file: !45, line: 113, column: 13)
!237 = !DILocation(line: 113, column: 27, scope: !236)
!238 = !DILocation(line: 113, column: 13, scope: !126)
!239 = !DILocation(line: 115, column: 26, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !45, line: 114, column: 9)
!241 = !DILocation(line: 115, column: 13, scope: !240)
!242 = !DILocation(line: 116, column: 9, scope: !240)
!243 = !DILocation(line: 124, column: 26, scope: !104)
!244 = !DILocation(line: 124, column: 13, scope: !104)
!245 = !DILocation(line: 124, column: 24, scope: !104)
!246 = !DILocalVariable(name: "data", scope: !247, file: !45, line: 126, type: !42)
!247 = distinct !DILexicalBlock(scope: !104, file: !45, line: 125, column: 5)
!248 = !DILocation(line: 126, column: 16, scope: !247)
!249 = !DILocation(line: 126, column: 31, scope: !247)
!250 = !DILocalVariable(name: "i", scope: !251, file: !45, line: 128, type: !23)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 127, column: 9)
!252 = !DILocation(line: 128, column: 17, scope: !251)
!253 = !DILocalVariable(name: "n", scope: !251, file: !45, line: 128, type: !23)
!254 = !DILocation(line: 128, column: 20, scope: !251)
!255 = !DILocalVariable(name: "intVariable", scope: !251, file: !45, line: 128, type: !23)
!256 = !DILocation(line: 128, column: 23, scope: !251)
!257 = !DILocation(line: 129, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !45, line: 129, column: 17)
!259 = !DILocation(line: 129, column: 17, scope: !258)
!260 = !DILocation(line: 129, column: 40, scope: !258)
!261 = !DILocation(line: 129, column: 17, scope: !251)
!262 = !DILocation(line: 132, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 130, column: 13)
!264 = !DILocation(line: 133, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !45, line: 133, column: 17)
!266 = !DILocation(line: 133, column: 22, scope: !265)
!267 = !DILocation(line: 133, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 133, column: 17)
!269 = !DILocation(line: 133, column: 33, scope: !268)
!270 = !DILocation(line: 133, column: 31, scope: !268)
!271 = !DILocation(line: 133, column: 17, scope: !265)
!272 = !DILocation(line: 136, column: 32, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 134, column: 17)
!274 = !DILocation(line: 137, column: 17, scope: !273)
!275 = !DILocation(line: 133, column: 37, scope: !268)
!276 = !DILocation(line: 133, column: 17, scope: !268)
!277 = distinct !{!277, !271, !278, !279}
!278 = !DILocation(line: 137, column: 17, scope: !265)
!279 = !{!"llvm.loop.mustprogress"}
!280 = !DILocation(line: 138, column: 30, scope: !263)
!281 = !DILocation(line: 138, column: 17, scope: !263)
!282 = !DILocation(line: 139, column: 13, scope: !263)
!283 = !DILocation(line: 142, column: 1, scope: !104)
!284 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 149, type: !105, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!285 = !DILocalVariable(name: "data", scope: !284, file: !45, line: 151, type: !42)
!286 = !DILocation(line: 151, column: 12, scope: !284)
!287 = !DILocalVariable(name: "myUnion", scope: !284, file: !45, line: 152, type: !111)
!288 = !DILocation(line: 152, column: 71, scope: !284)
!289 = !DILocalVariable(name: "dataBuffer", scope: !284, file: !45, line: 153, type: !119)
!290 = !DILocation(line: 153, column: 10, scope: !284)
!291 = !DILocation(line: 154, column: 12, scope: !284)
!292 = !DILocation(line: 154, column: 10, scope: !284)
!293 = !DILocation(line: 156, column: 12, scope: !284)
!294 = !DILocation(line: 156, column: 5, scope: !284)
!295 = !DILocation(line: 157, column: 26, scope: !284)
!296 = !DILocation(line: 157, column: 13, scope: !284)
!297 = !DILocation(line: 157, column: 24, scope: !284)
!298 = !DILocalVariable(name: "data", scope: !299, file: !45, line: 159, type: !42)
!299 = distinct !DILexicalBlock(scope: !284, file: !45, line: 158, column: 5)
!300 = !DILocation(line: 159, column: 16, scope: !299)
!301 = !DILocation(line: 159, column: 31, scope: !299)
!302 = !DILocalVariable(name: "i", scope: !303, file: !45, line: 161, type: !23)
!303 = distinct !DILexicalBlock(scope: !299, file: !45, line: 160, column: 9)
!304 = !DILocation(line: 161, column: 17, scope: !303)
!305 = !DILocalVariable(name: "n", scope: !303, file: !45, line: 161, type: !23)
!306 = !DILocation(line: 161, column: 20, scope: !303)
!307 = !DILocalVariable(name: "intVariable", scope: !303, file: !45, line: 161, type: !23)
!308 = !DILocation(line: 161, column: 23, scope: !303)
!309 = !DILocation(line: 162, column: 24, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !45, line: 162, column: 17)
!311 = !DILocation(line: 162, column: 17, scope: !310)
!312 = !DILocation(line: 162, column: 40, scope: !310)
!313 = !DILocation(line: 162, column: 17, scope: !303)
!314 = !DILocation(line: 165, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !45, line: 163, column: 13)
!316 = !DILocation(line: 166, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !45, line: 166, column: 17)
!318 = !DILocation(line: 166, column: 22, scope: !317)
!319 = !DILocation(line: 166, column: 29, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !45, line: 166, column: 17)
!321 = !DILocation(line: 166, column: 33, scope: !320)
!322 = !DILocation(line: 166, column: 31, scope: !320)
!323 = !DILocation(line: 166, column: 17, scope: !317)
!324 = !DILocation(line: 169, column: 32, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !45, line: 167, column: 17)
!326 = !DILocation(line: 170, column: 17, scope: !325)
!327 = !DILocation(line: 166, column: 37, scope: !320)
!328 = !DILocation(line: 166, column: 17, scope: !320)
!329 = distinct !{!329, !323, !330, !279}
!330 = !DILocation(line: 170, column: 17, scope: !317)
!331 = !DILocation(line: 171, column: 30, scope: !315)
!332 = !DILocation(line: 171, column: 17, scope: !315)
!333 = !DILocation(line: 172, column: 13, scope: !315)
!334 = !DILocation(line: 175, column: 1, scope: !284)
!335 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 178, type: !105, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!336 = !DILocalVariable(name: "data", scope: !335, file: !45, line: 180, type: !42)
!337 = !DILocation(line: 180, column: 12, scope: !335)
!338 = !DILocalVariable(name: "myUnion", scope: !335, file: !45, line: 181, type: !111)
!339 = !DILocation(line: 181, column: 71, scope: !335)
!340 = !DILocalVariable(name: "dataBuffer", scope: !335, file: !45, line: 182, type: !119)
!341 = !DILocation(line: 182, column: 10, scope: !335)
!342 = !DILocation(line: 183, column: 12, scope: !335)
!343 = !DILocation(line: 183, column: 10, scope: !335)
!344 = !DILocalVariable(name: "recvResult", scope: !345, file: !45, line: 189, type: !23)
!345 = distinct !DILexicalBlock(scope: !335, file: !45, line: 184, column: 5)
!346 = !DILocation(line: 189, column: 13, scope: !345)
!347 = !DILocalVariable(name: "service", scope: !345, file: !45, line: 190, type: !129)
!348 = !DILocation(line: 190, column: 28, scope: !345)
!349 = !DILocalVariable(name: "replace", scope: !345, file: !45, line: 191, type: !42)
!350 = !DILocation(line: 191, column: 15, scope: !345)
!351 = !DILocalVariable(name: "connectSocket", scope: !345, file: !45, line: 192, type: !23)
!352 = !DILocation(line: 192, column: 16, scope: !345)
!353 = !DILocalVariable(name: "dataLen", scope: !345, file: !45, line: 193, type: !155)
!354 = !DILocation(line: 193, column: 16, scope: !345)
!355 = !DILocation(line: 193, column: 33, scope: !345)
!356 = !DILocation(line: 193, column: 26, scope: !345)
!357 = !DILocation(line: 194, column: 9, scope: !345)
!358 = !DILocation(line: 204, column: 29, scope: !359)
!359 = distinct !DILexicalBlock(scope: !345, file: !45, line: 195, column: 9)
!360 = !DILocation(line: 204, column: 27, scope: !359)
!361 = !DILocation(line: 205, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !45, line: 205, column: 17)
!363 = !DILocation(line: 205, column: 31, scope: !362)
!364 = !DILocation(line: 205, column: 17, scope: !359)
!365 = !DILocation(line: 207, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !45, line: 206, column: 13)
!367 = !DILocation(line: 209, column: 13, scope: !359)
!368 = !DILocation(line: 210, column: 21, scope: !359)
!369 = !DILocation(line: 210, column: 32, scope: !359)
!370 = !DILocation(line: 211, column: 39, scope: !359)
!371 = !DILocation(line: 211, column: 21, scope: !359)
!372 = !DILocation(line: 211, column: 30, scope: !359)
!373 = !DILocation(line: 211, column: 37, scope: !359)
!374 = !DILocation(line: 212, column: 32, scope: !359)
!375 = !DILocation(line: 212, column: 21, scope: !359)
!376 = !DILocation(line: 212, column: 30, scope: !359)
!377 = !DILocation(line: 213, column: 25, scope: !378)
!378 = distinct !DILexicalBlock(scope: !359, file: !45, line: 213, column: 17)
!379 = !DILocation(line: 213, column: 40, scope: !378)
!380 = !DILocation(line: 213, column: 17, scope: !378)
!381 = !DILocation(line: 213, column: 85, scope: !378)
!382 = !DILocation(line: 213, column: 17, scope: !359)
!383 = !DILocation(line: 215, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !45, line: 214, column: 13)
!385 = !DILocation(line: 220, column: 31, scope: !359)
!386 = !DILocation(line: 220, column: 55, scope: !359)
!387 = !DILocation(line: 220, column: 62, scope: !359)
!388 = !DILocation(line: 220, column: 60, scope: !359)
!389 = !DILocation(line: 220, column: 94, scope: !359)
!390 = !DILocation(line: 220, column: 92, scope: !359)
!391 = !DILocation(line: 220, column: 102, scope: !359)
!392 = !DILocation(line: 220, column: 85, scope: !359)
!393 = !DILocation(line: 220, column: 26, scope: !359)
!394 = !DILocation(line: 220, column: 24, scope: !359)
!395 = !DILocation(line: 221, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !359, file: !45, line: 221, column: 17)
!397 = !DILocation(line: 221, column: 28, scope: !396)
!398 = !DILocation(line: 221, column: 44, scope: !396)
!399 = !DILocation(line: 221, column: 47, scope: !396)
!400 = !DILocation(line: 221, column: 58, scope: !396)
!401 = !DILocation(line: 221, column: 17, scope: !359)
!402 = !DILocation(line: 223, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !396, file: !45, line: 222, column: 13)
!404 = !DILocation(line: 226, column: 13, scope: !359)
!405 = !DILocation(line: 226, column: 18, scope: !359)
!406 = !DILocation(line: 226, column: 28, scope: !359)
!407 = !DILocation(line: 226, column: 39, scope: !359)
!408 = !DILocation(line: 226, column: 26, scope: !359)
!409 = !DILocation(line: 226, column: 55, scope: !359)
!410 = !DILocation(line: 228, column: 30, scope: !359)
!411 = !DILocation(line: 228, column: 23, scope: !359)
!412 = !DILocation(line: 228, column: 21, scope: !359)
!413 = !DILocation(line: 229, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !359, file: !45, line: 229, column: 17)
!415 = !DILocation(line: 229, column: 17, scope: !359)
!416 = !DILocation(line: 231, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !45, line: 230, column: 13)
!418 = !DILocation(line: 231, column: 26, scope: !417)
!419 = !DILocation(line: 232, column: 13, scope: !417)
!420 = !DILocation(line: 233, column: 30, scope: !359)
!421 = !DILocation(line: 233, column: 23, scope: !359)
!422 = !DILocation(line: 233, column: 21, scope: !359)
!423 = !DILocation(line: 234, column: 17, scope: !424)
!424 = distinct !DILexicalBlock(scope: !359, file: !45, line: 234, column: 17)
!425 = !DILocation(line: 234, column: 17, scope: !359)
!426 = !DILocation(line: 236, column: 18, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !45, line: 235, column: 13)
!428 = !DILocation(line: 236, column: 26, scope: !427)
!429 = !DILocation(line: 237, column: 13, scope: !427)
!430 = !DILocation(line: 238, column: 9, scope: !359)
!431 = !DILocation(line: 240, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !345, file: !45, line: 240, column: 13)
!433 = !DILocation(line: 240, column: 27, scope: !432)
!434 = !DILocation(line: 240, column: 13, scope: !345)
!435 = !DILocation(line: 242, column: 26, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !45, line: 241, column: 9)
!437 = !DILocation(line: 242, column: 13, scope: !436)
!438 = !DILocation(line: 243, column: 9, scope: !436)
!439 = !DILocation(line: 251, column: 26, scope: !335)
!440 = !DILocation(line: 251, column: 13, scope: !335)
!441 = !DILocation(line: 251, column: 24, scope: !335)
!442 = !DILocalVariable(name: "data", scope: !443, file: !45, line: 253, type: !42)
!443 = distinct !DILexicalBlock(scope: !335, file: !45, line: 252, column: 5)
!444 = !DILocation(line: 253, column: 16, scope: !443)
!445 = !DILocation(line: 253, column: 31, scope: !443)
!446 = !DILocalVariable(name: "i", scope: !447, file: !45, line: 255, type: !23)
!447 = distinct !DILexicalBlock(scope: !443, file: !45, line: 254, column: 9)
!448 = !DILocation(line: 255, column: 17, scope: !447)
!449 = !DILocalVariable(name: "n", scope: !447, file: !45, line: 255, type: !23)
!450 = !DILocation(line: 255, column: 20, scope: !447)
!451 = !DILocalVariable(name: "intVariable", scope: !447, file: !45, line: 255, type: !23)
!452 = !DILocation(line: 255, column: 23, scope: !447)
!453 = !DILocation(line: 256, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !45, line: 256, column: 17)
!455 = !DILocation(line: 256, column: 17, scope: !454)
!456 = !DILocation(line: 256, column: 40, scope: !454)
!457 = !DILocation(line: 256, column: 17, scope: !447)
!458 = !DILocation(line: 259, column: 21, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !45, line: 259, column: 21)
!460 = distinct !DILexicalBlock(scope: !454, file: !45, line: 257, column: 13)
!461 = !DILocation(line: 259, column: 23, scope: !459)
!462 = !DILocation(line: 259, column: 21, scope: !460)
!463 = !DILocation(line: 261, column: 33, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !45, line: 260, column: 17)
!465 = !DILocation(line: 262, column: 28, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !45, line: 262, column: 21)
!467 = !DILocation(line: 262, column: 26, scope: !466)
!468 = !DILocation(line: 262, column: 33, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !45, line: 262, column: 21)
!470 = !DILocation(line: 262, column: 37, scope: !469)
!471 = !DILocation(line: 262, column: 35, scope: !469)
!472 = !DILocation(line: 262, column: 21, scope: !466)
!473 = !DILocation(line: 265, column: 36, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !45, line: 263, column: 21)
!475 = !DILocation(line: 266, column: 21, scope: !474)
!476 = !DILocation(line: 262, column: 41, scope: !469)
!477 = !DILocation(line: 262, column: 21, scope: !469)
!478 = distinct !{!478, !472, !479, !279}
!479 = !DILocation(line: 266, column: 21, scope: !466)
!480 = !DILocation(line: 267, column: 34, scope: !464)
!481 = !DILocation(line: 267, column: 21, scope: !464)
!482 = !DILocation(line: 268, column: 17, scope: !464)
!483 = !DILocation(line: 269, column: 13, scope: !460)
!484 = !DILocation(line: 272, column: 1, scope: !335)
!485 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_good", scope: !45, file: !45, line: 274, type: !105, scopeLine: 275, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!486 = !DILocation(line: 276, column: 5, scope: !485)
!487 = !DILocation(line: 277, column: 5, scope: !485)
!488 = !DILocation(line: 278, column: 1, scope: !485)
!489 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !490, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !42}
!492 = !DILocalVariable(name: "line", arg: 1, scope: !489, file: !3, line: 11, type: !42)
!493 = !DILocation(line: 11, column: 25, scope: !489)
!494 = !DILocation(line: 13, column: 1, scope: !489)
!495 = !DILocation(line: 14, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !3, line: 14, column: 8)
!497 = !DILocation(line: 14, column: 13, scope: !496)
!498 = !DILocation(line: 14, column: 8, scope: !489)
!499 = !DILocation(line: 16, column: 24, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 15, column: 5)
!501 = !DILocation(line: 16, column: 9, scope: !500)
!502 = !DILocation(line: 17, column: 5, scope: !500)
!503 = !DILocation(line: 18, column: 5, scope: !489)
!504 = !DILocation(line: 19, column: 1, scope: !489)
!505 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !490, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!506 = !DILocalVariable(name: "line", arg: 1, scope: !505, file: !3, line: 20, type: !42)
!507 = !DILocation(line: 20, column: 29, scope: !505)
!508 = !DILocation(line: 22, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 22, column: 8)
!510 = !DILocation(line: 22, column: 13, scope: !509)
!511 = !DILocation(line: 22, column: 8, scope: !505)
!512 = !DILocation(line: 24, column: 24, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 23, column: 5)
!514 = !DILocation(line: 24, column: 9, scope: !513)
!515 = !DILocation(line: 25, column: 5, scope: !513)
!516 = !DILocation(line: 26, column: 1, scope: !505)
!517 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !518, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !156, line: 74, baseType: !23)
!522 = !DILocalVariable(name: "line", arg: 1, scope: !517, file: !3, line: 27, type: !520)
!523 = !DILocation(line: 27, column: 29, scope: !517)
!524 = !DILocation(line: 29, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !517, file: !3, line: 29, column: 8)
!526 = !DILocation(line: 29, column: 13, scope: !525)
!527 = !DILocation(line: 29, column: 8, scope: !517)
!528 = !DILocation(line: 31, column: 27, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 30, column: 5)
!530 = !DILocation(line: 31, column: 9, scope: !529)
!531 = !DILocation(line: 32, column: 5, scope: !529)
!532 = !DILocation(line: 33, column: 1, scope: !517)
!533 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !534, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !23}
!536 = !DILocalVariable(name: "intNumber", arg: 1, scope: !533, file: !3, line: 35, type: !23)
!537 = !DILocation(line: 35, column: 24, scope: !533)
!538 = !DILocation(line: 37, column: 20, scope: !533)
!539 = !DILocation(line: 37, column: 5, scope: !533)
!540 = !DILocation(line: 38, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !542, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!545 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !541, file: !3, line: 40, type: !544)
!546 = !DILocation(line: 40, column: 28, scope: !541)
!547 = !DILocation(line: 42, column: 21, scope: !541)
!548 = !DILocation(line: 42, column: 5, scope: !541)
!549 = !DILocation(line: 43, column: 1, scope: !541)
!550 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !551, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553}
!553 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!554 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !550, file: !3, line: 45, type: !553)
!555 = !DILocation(line: 45, column: 28, scope: !550)
!556 = !DILocation(line: 47, column: 20, scope: !550)
!557 = !DILocation(line: 47, column: 5, scope: !550)
!558 = !DILocation(line: 48, column: 1, scope: !550)
!559 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !560, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!563 = !DILocalVariable(name: "longNumber", arg: 1, scope: !559, file: !3, line: 50, type: !562)
!564 = !DILocation(line: 50, column: 26, scope: !559)
!565 = !DILocation(line: 52, column: 21, scope: !559)
!566 = !DILocation(line: 52, column: 5, scope: !559)
!567 = !DILocation(line: 53, column: 1, scope: !559)
!568 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !569, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !572, line: 27, baseType: !573)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !137, line: 44, baseType: !562)
!574 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !568, file: !3, line: 55, type: !571)
!575 = !DILocation(line: 55, column: 33, scope: !568)
!576 = !DILocation(line: 57, column: 29, scope: !568)
!577 = !DILocation(line: 57, column: 5, scope: !568)
!578 = !DILocation(line: 58, column: 1, scope: !568)
!579 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !580, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !155}
!582 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !579, file: !3, line: 60, type: !155)
!583 = !DILocation(line: 60, column: 29, scope: !579)
!584 = !DILocation(line: 62, column: 21, scope: !579)
!585 = !DILocation(line: 62, column: 5, scope: !579)
!586 = !DILocation(line: 63, column: 1, scope: !579)
!587 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !588, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !43}
!590 = !DILocalVariable(name: "charHex", arg: 1, scope: !587, file: !3, line: 65, type: !43)
!591 = !DILocation(line: 65, column: 29, scope: !587)
!592 = !DILocation(line: 67, column: 22, scope: !587)
!593 = !DILocation(line: 67, column: 5, scope: !587)
!594 = !DILocation(line: 68, column: 1, scope: !587)
!595 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !596, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !521}
!598 = !DILocalVariable(name: "wideChar", arg: 1, scope: !595, file: !3, line: 70, type: !521)
!599 = !DILocation(line: 70, column: 29, scope: !595)
!600 = !DILocalVariable(name: "s", scope: !595, file: !3, line: 74, type: !601)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 64, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 2)
!604 = !DILocation(line: 74, column: 13, scope: !595)
!605 = !DILocation(line: 75, column: 16, scope: !595)
!606 = !DILocation(line: 75, column: 9, scope: !595)
!607 = !DILocation(line: 75, column: 14, scope: !595)
!608 = !DILocation(line: 76, column: 9, scope: !595)
!609 = !DILocation(line: 76, column: 14, scope: !595)
!610 = !DILocation(line: 77, column: 21, scope: !595)
!611 = !DILocation(line: 77, column: 5, scope: !595)
!612 = !DILocation(line: 78, column: 1, scope: !595)
!613 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !614, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !7}
!616 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !613, file: !3, line: 80, type: !7)
!617 = !DILocation(line: 80, column: 33, scope: !613)
!618 = !DILocation(line: 82, column: 20, scope: !613)
!619 = !DILocation(line: 82, column: 5, scope: !613)
!620 = !DILocation(line: 83, column: 1, scope: !613)
!621 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !622, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !25}
!624 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !621, file: !3, line: 85, type: !25)
!625 = !DILocation(line: 85, column: 45, scope: !621)
!626 = !DILocation(line: 87, column: 22, scope: !621)
!627 = !DILocation(line: 87, column: 5, scope: !621)
!628 = !DILocation(line: 88, column: 1, scope: !621)
!629 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !630, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632}
!632 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!633 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !629, file: !3, line: 90, type: !632)
!634 = !DILocation(line: 90, column: 29, scope: !629)
!635 = !DILocation(line: 92, column: 20, scope: !629)
!636 = !DILocation(line: 92, column: 5, scope: !629)
!637 = !DILocation(line: 93, column: 1, scope: !629)
!638 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !639, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !643, line: 100, baseType: !644)
!643 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !643, line: 96, size: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !644, file: !643, line: 98, baseType: !23, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !644, file: !643, line: 99, baseType: !23, size: 32, offset: 32)
!648 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !638, file: !3, line: 95, type: !641)
!649 = !DILocation(line: 95, column: 40, scope: !638)
!650 = !DILocation(line: 97, column: 26, scope: !638)
!651 = !DILocation(line: 97, column: 47, scope: !638)
!652 = !DILocation(line: 97, column: 55, scope: !638)
!653 = !DILocation(line: 97, column: 76, scope: !638)
!654 = !DILocation(line: 97, column: 5, scope: !638)
!655 = !DILocation(line: 98, column: 1, scope: !638)
!656 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !657, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659, !155}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!660 = !DILocalVariable(name: "bytes", arg: 1, scope: !656, file: !3, line: 100, type: !659)
!661 = !DILocation(line: 100, column: 38, scope: !656)
!662 = !DILocalVariable(name: "numBytes", arg: 2, scope: !656, file: !3, line: 100, type: !155)
!663 = !DILocation(line: 100, column: 52, scope: !656)
!664 = !DILocalVariable(name: "i", scope: !656, file: !3, line: 102, type: !155)
!665 = !DILocation(line: 102, column: 12, scope: !656)
!666 = !DILocation(line: 103, column: 12, scope: !667)
!667 = distinct !DILexicalBlock(scope: !656, file: !3, line: 103, column: 5)
!668 = !DILocation(line: 103, column: 10, scope: !667)
!669 = !DILocation(line: 103, column: 17, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !3, line: 103, column: 5)
!671 = !DILocation(line: 103, column: 21, scope: !670)
!672 = !DILocation(line: 103, column: 19, scope: !670)
!673 = !DILocation(line: 103, column: 5, scope: !667)
!674 = !DILocation(line: 105, column: 24, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !3, line: 104, column: 5)
!676 = !DILocation(line: 105, column: 30, scope: !675)
!677 = !DILocation(line: 105, column: 9, scope: !675)
!678 = !DILocation(line: 106, column: 5, scope: !675)
!679 = !DILocation(line: 103, column: 31, scope: !670)
!680 = !DILocation(line: 103, column: 5, scope: !670)
!681 = distinct !{!681, !673, !682, !279}
!682 = !DILocation(line: 106, column: 5, scope: !667)
!683 = !DILocation(line: 107, column: 5, scope: !656)
!684 = !DILocation(line: 108, column: 1, scope: !656)
!685 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !686, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!686 = !DISubroutineType(types: !687)
!687 = !{!155, !659, !155, !42}
!688 = !DILocalVariable(name: "bytes", arg: 1, scope: !685, file: !3, line: 113, type: !659)
!689 = !DILocation(line: 113, column: 39, scope: !685)
!690 = !DILocalVariable(name: "numBytes", arg: 2, scope: !685, file: !3, line: 113, type: !155)
!691 = !DILocation(line: 113, column: 53, scope: !685)
!692 = !DILocalVariable(name: "hex", arg: 3, scope: !685, file: !3, line: 113, type: !42)
!693 = !DILocation(line: 113, column: 71, scope: !685)
!694 = !DILocalVariable(name: "numWritten", scope: !685, file: !3, line: 115, type: !155)
!695 = !DILocation(line: 115, column: 12, scope: !685)
!696 = !DILocation(line: 121, column: 5, scope: !685)
!697 = !DILocation(line: 121, column: 12, scope: !685)
!698 = !DILocation(line: 121, column: 25, scope: !685)
!699 = !DILocation(line: 121, column: 23, scope: !685)
!700 = !DILocation(line: 121, column: 34, scope: !685)
!701 = !DILocation(line: 121, column: 37, scope: !685)
!702 = !DILocation(line: 121, column: 67, scope: !685)
!703 = !DILocation(line: 121, column: 70, scope: !685)
!704 = !DILocation(line: 0, scope: !685)
!705 = !DILocalVariable(name: "byte", scope: !706, file: !3, line: 123, type: !23)
!706 = distinct !DILexicalBlock(scope: !685, file: !3, line: 122, column: 5)
!707 = !DILocation(line: 123, column: 13, scope: !706)
!708 = !DILocation(line: 124, column: 17, scope: !706)
!709 = !DILocation(line: 124, column: 25, scope: !706)
!710 = !DILocation(line: 124, column: 23, scope: !706)
!711 = !DILocation(line: 124, column: 9, scope: !706)
!712 = !DILocation(line: 125, column: 45, scope: !706)
!713 = !DILocation(line: 125, column: 29, scope: !706)
!714 = !DILocation(line: 125, column: 9, scope: !706)
!715 = !DILocation(line: 125, column: 15, scope: !706)
!716 = !DILocation(line: 125, column: 27, scope: !706)
!717 = !DILocation(line: 126, column: 9, scope: !706)
!718 = distinct !{!718, !696, !719, !279}
!719 = !DILocation(line: 127, column: 5, scope: !685)
!720 = !DILocation(line: 129, column: 12, scope: !685)
!721 = !DILocation(line: 129, column: 5, scope: !685)
!722 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !723, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{!155, !659, !155, !520}
!725 = !DILocalVariable(name: "bytes", arg: 1, scope: !722, file: !3, line: 135, type: !659)
!726 = !DILocation(line: 135, column: 41, scope: !722)
!727 = !DILocalVariable(name: "numBytes", arg: 2, scope: !722, file: !3, line: 135, type: !155)
!728 = !DILocation(line: 135, column: 55, scope: !722)
!729 = !DILocalVariable(name: "hex", arg: 3, scope: !722, file: !3, line: 135, type: !520)
!730 = !DILocation(line: 135, column: 76, scope: !722)
!731 = !DILocalVariable(name: "numWritten", scope: !722, file: !3, line: 137, type: !155)
!732 = !DILocation(line: 137, column: 12, scope: !722)
!733 = !DILocation(line: 143, column: 5, scope: !722)
!734 = !DILocation(line: 143, column: 12, scope: !722)
!735 = !DILocation(line: 143, column: 25, scope: !722)
!736 = !DILocation(line: 143, column: 23, scope: !722)
!737 = !DILocation(line: 143, column: 34, scope: !722)
!738 = !DILocation(line: 143, column: 47, scope: !722)
!739 = !DILocation(line: 143, column: 55, scope: !722)
!740 = !DILocation(line: 143, column: 53, scope: !722)
!741 = !DILocation(line: 143, column: 37, scope: !722)
!742 = !DILocation(line: 143, column: 68, scope: !722)
!743 = !DILocation(line: 143, column: 81, scope: !722)
!744 = !DILocation(line: 143, column: 89, scope: !722)
!745 = !DILocation(line: 143, column: 87, scope: !722)
!746 = !DILocation(line: 143, column: 100, scope: !722)
!747 = !DILocation(line: 143, column: 71, scope: !722)
!748 = !DILocation(line: 0, scope: !722)
!749 = !DILocalVariable(name: "byte", scope: !750, file: !3, line: 145, type: !23)
!750 = distinct !DILexicalBlock(scope: !722, file: !3, line: 144, column: 5)
!751 = !DILocation(line: 145, column: 13, scope: !750)
!752 = !DILocation(line: 146, column: 18, scope: !750)
!753 = !DILocation(line: 146, column: 26, scope: !750)
!754 = !DILocation(line: 146, column: 24, scope: !750)
!755 = !DILocation(line: 146, column: 9, scope: !750)
!756 = !DILocation(line: 147, column: 45, scope: !750)
!757 = !DILocation(line: 147, column: 29, scope: !750)
!758 = !DILocation(line: 147, column: 9, scope: !750)
!759 = !DILocation(line: 147, column: 15, scope: !750)
!760 = !DILocation(line: 147, column: 27, scope: !750)
!761 = !DILocation(line: 148, column: 9, scope: !750)
!762 = distinct !{!762, !733, !763, !279}
!763 = !DILocation(line: 149, column: 5, scope: !722)
!764 = !DILocation(line: 151, column: 12, scope: !722)
!765 = !DILocation(line: 151, column: 5, scope: !722)
!766 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !767, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DISubroutineType(types: !768)
!768 = !{!23}
!769 = !DILocation(line: 158, column: 5, scope: !766)
!770 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !767, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 163, column: 5, scope: !770)
!772 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !767, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 168, column: 13, scope: !772)
!774 = !DILocation(line: 168, column: 20, scope: !772)
!775 = !DILocation(line: 168, column: 5, scope: !772)
!776 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 187, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 188, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 189, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 190, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 191, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 192, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 193, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 194, column: 16, scope: !790)
!792 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 195, column: 16, scope: !792)
!794 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 198, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 199, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 200, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 201, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 202, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 203, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!807 = !DILocation(line: 204, column: 15, scope: !806)
!808 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!809 = !DILocation(line: 205, column: 15, scope: !808)
!810 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DILocation(line: 206, column: 15, scope: !810)
