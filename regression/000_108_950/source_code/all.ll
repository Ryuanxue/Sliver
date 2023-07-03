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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_31_bad() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !117, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !120, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 -1, i32* %connectSocket, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !146, metadata !DIExpression()), !dbg !150
  %1 = load i8*, i8** %data, align 8, !dbg !151
  %call = call i64 @strlen(i8* %1) #7, !dbg !152
  store i64 %call, i64* %dataLen, align 8, !dbg !150
  br label %do.body, !dbg !153

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !154
  store i32 %call1, i32* %connectSocket, align 4, !dbg !156
  %2 = load i32, i32* %connectSocket, align 4, !dbg !157
  %cmp = icmp eq i32 %2, -1, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !161

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !163
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !164
  store i16 2, i16* %sin_family, align 4, !dbg !165
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !166
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !167
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !168
  store i32 %call2, i32* %s_addr, align 4, !dbg !169
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !170
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !171
  store i16 %call3, i16* %sin_port, align 2, !dbg !172
  %4 = load i32, i32* %connectSocket, align 4, !dbg !173
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !175
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !176
  %cmp5 = icmp eq i32 %call4, -1, !dbg !177
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !178

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !179

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !181
  %7 = load i8*, i8** %data, align 8, !dbg !182
  %8 = load i64, i64* %dataLen, align 8, !dbg !183
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !184
  %9 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub = sub i64 100, %9, !dbg !186
  %sub8 = sub i64 %sub, 1, !dbg !187
  %mul = mul i64 1, %sub8, !dbg !188
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !189
  %conv = trunc i64 %call9 to i32, !dbg !189
  store i32 %conv, i32* %recvResult, align 4, !dbg !190
  %10 = load i32, i32* %recvResult, align 4, !dbg !191
  %cmp10 = icmp eq i32 %10, -1, !dbg !193
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !194

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp12 = icmp eq i32 %11, 0, !dbg !196
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !197

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !198

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !200
  %13 = load i64, i64* %dataLen, align 8, !dbg !201
  %14 = load i32, i32* %recvResult, align 4, !dbg !202
  %conv16 = sext i32 %14 to i64, !dbg !202
  %div = udiv i64 %conv16, 1, !dbg !203
  %add = add i64 %13, %div, !dbg !204
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !200
  store i8 0, i8* %arrayidx, align 1, !dbg !205
  %15 = load i8*, i8** %data, align 8, !dbg !206
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !207
  store i8* %call17, i8** %replace, align 8, !dbg !208
  %16 = load i8*, i8** %replace, align 8, !dbg !209
  %tobool = icmp ne i8* %16, null, !dbg !209
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !211

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !212
  store i8 0, i8* %17, align 1, !dbg !214
  br label %if.end19, !dbg !215

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !216
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !217
  store i8* %call20, i8** %replace, align 8, !dbg !218
  %19 = load i8*, i8** %replace, align 8, !dbg !219
  %tobool21 = icmp ne i8* %19, null, !dbg !219
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !221

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !222
  store i8 0, i8* %20, align 1, !dbg !224
  br label %if.end23, !dbg !225

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !226

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !227
  %cmp24 = icmp ne i32 %21, -1, !dbg !229
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !230

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !231
  %call27 = call i32 @close(i32 %22), !dbg !233
  br label %if.end28, !dbg !234

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !235, metadata !DIExpression()), !dbg !237
  %23 = load i8*, i8** %data, align 8, !dbg !238
  store i8* %23, i8** %dataCopy, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !239, metadata !DIExpression()), !dbg !240
  %24 = load i8*, i8** %dataCopy, align 8, !dbg !241
  store i8* %24, i8** %data29, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata i32* %i, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %n, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !247, metadata !DIExpression()), !dbg !248
  %25 = load i8*, i8** %data29, align 8, !dbg !249
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !251
  %cmp31 = icmp eq i32 %call30, 1, !dbg !252
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !253

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !254
  store i32 0, i32* %i, align 4, !dbg !256
  br label %for.cond, !dbg !258

for.cond:                                         ; preds = %for.inc, %if.then33
  %26 = load i32, i32* %i, align 4, !dbg !259
  %27 = load i32, i32* %n, align 4, !dbg !261
  %cmp34 = icmp slt i32 %26, %27, !dbg !262
  br i1 %cmp34, label %for.body, label %for.end, !dbg !263

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !264
  %inc = add nsw i32 %28, 1, !dbg !264
  store i32 %inc, i32* %intVariable, align 4, !dbg !264
  br label %for.inc, !dbg !266

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !267
  %inc36 = add nsw i32 %29, 1, !dbg !267
  store i32 %inc36, i32* %i, align 4, !dbg !267
  br label %for.cond, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !272
  call void @printIntLine(i32 %30), !dbg !273
  br label %if.end37, !dbg !274

if.end37:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !275
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
define dso_local void @goodG2B() #0 !dbg !276 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !280
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !280
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !281
  store i8* %arraydecay, i8** %data, align 8, !dbg !282
  %1 = load i8*, i8** %data, align 8, !dbg !283
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !284
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !285, metadata !DIExpression()), !dbg !287
  %2 = load i8*, i8** %data, align 8, !dbg !288
  store i8* %2, i8** %dataCopy, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !289, metadata !DIExpression()), !dbg !290
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !291
  store i8* %3, i8** %data1, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata i32* %i, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %n, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !297, metadata !DIExpression()), !dbg !298
  %4 = load i8*, i8** %data1, align 8, !dbg !299
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !301
  %cmp = icmp eq i32 %call2, 1, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !304
  store i32 0, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !308

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !309
  %6 = load i32, i32* %n, align 4, !dbg !311
  %cmp3 = icmp slt i32 %5, %6, !dbg !312
  br i1 %cmp3, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !314
  %inc = add nsw i32 %7, 1, !dbg !314
  store i32 %inc, i32* %intVariable, align 4, !dbg !314
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !317
  %inc4 = add nsw i32 %8, 1, !dbg !317
  store i32 %inc4, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !321
  call void @printIntLine(i32 %9), !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !324
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !325 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !329
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !329
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !330
  store i8* %arraydecay, i8** %data, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 -1, i32* %connectSocket, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !341, metadata !DIExpression()), !dbg !342
  %1 = load i8*, i8** %data, align 8, !dbg !343
  %call = call i64 @strlen(i8* %1) #7, !dbg !344
  store i64 %call, i64* %dataLen, align 8, !dbg !342
  br label %do.body, !dbg !345

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !346
  store i32 %call1, i32* %connectSocket, align 4, !dbg !348
  %2 = load i32, i32* %connectSocket, align 4, !dbg !349
  %cmp = icmp eq i32 %2, -1, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !353

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !355
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !355
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !356
  store i16 2, i16* %sin_family, align 4, !dbg !357
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !358
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !359
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !360
  store i32 %call2, i32* %s_addr, align 4, !dbg !361
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !362
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !363
  store i16 %call3, i16* %sin_port, align 2, !dbg !364
  %4 = load i32, i32* %connectSocket, align 4, !dbg !365
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !367
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !368
  %cmp5 = icmp eq i32 %call4, -1, !dbg !369
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !370

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !371

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !373
  %7 = load i8*, i8** %data, align 8, !dbg !374
  %8 = load i64, i64* %dataLen, align 8, !dbg !375
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !376
  %9 = load i64, i64* %dataLen, align 8, !dbg !377
  %sub = sub i64 100, %9, !dbg !378
  %sub8 = sub i64 %sub, 1, !dbg !379
  %mul = mul i64 1, %sub8, !dbg !380
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !381
  %conv = trunc i64 %call9 to i32, !dbg !381
  store i32 %conv, i32* %recvResult, align 4, !dbg !382
  %10 = load i32, i32* %recvResult, align 4, !dbg !383
  %cmp10 = icmp eq i32 %10, -1, !dbg !385
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !387
  %cmp12 = icmp eq i32 %11, 0, !dbg !388
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !389

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !390

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !392
  %13 = load i64, i64* %dataLen, align 8, !dbg !393
  %14 = load i32, i32* %recvResult, align 4, !dbg !394
  %conv16 = sext i32 %14 to i64, !dbg !394
  %div = udiv i64 %conv16, 1, !dbg !395
  %add = add i64 %13, %div, !dbg !396
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !392
  store i8 0, i8* %arrayidx, align 1, !dbg !397
  %15 = load i8*, i8** %data, align 8, !dbg !398
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !399
  store i8* %call17, i8** %replace, align 8, !dbg !400
  %16 = load i8*, i8** %replace, align 8, !dbg !401
  %tobool = icmp ne i8* %16, null, !dbg !401
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !403

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !404
  store i8 0, i8* %17, align 1, !dbg !406
  br label %if.end19, !dbg !407

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !408
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !409
  store i8* %call20, i8** %replace, align 8, !dbg !410
  %19 = load i8*, i8** %replace, align 8, !dbg !411
  %tobool21 = icmp ne i8* %19, null, !dbg !411
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !413

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !414
  store i8 0, i8* %20, align 1, !dbg !416
  br label %if.end23, !dbg !417

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !418

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !419
  %cmp24 = icmp ne i32 %21, -1, !dbg !421
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !422

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !423
  %call27 = call i32 @close(i32 %22), !dbg !425
  br label %if.end28, !dbg !426

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !427, metadata !DIExpression()), !dbg !429
  %23 = load i8*, i8** %data, align 8, !dbg !430
  store i8* %23, i8** %dataCopy, align 8, !dbg !429
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !431, metadata !DIExpression()), !dbg !432
  %24 = load i8*, i8** %dataCopy, align 8, !dbg !433
  store i8* %24, i8** %data29, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i32* %i, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i32* %n, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !439, metadata !DIExpression()), !dbg !440
  %25 = load i8*, i8** %data29, align 8, !dbg !441
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !443
  %cmp31 = icmp eq i32 %call30, 1, !dbg !444
  br i1 %cmp31, label %if.then33, label %if.end41, !dbg !445

if.then33:                                        ; preds = %if.end28
  %26 = load i32, i32* %n, align 4, !dbg !446
  %cmp34 = icmp slt i32 %26, 10000, !dbg !449
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !450

if.then36:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !451
  store i32 0, i32* %i, align 4, !dbg !453
  br label %for.cond, !dbg !455

for.cond:                                         ; preds = %for.inc, %if.then36
  %27 = load i32, i32* %i, align 4, !dbg !456
  %28 = load i32, i32* %n, align 4, !dbg !458
  %cmp37 = icmp slt i32 %27, %28, !dbg !459
  br i1 %cmp37, label %for.body, label %for.end, !dbg !460

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !461
  %inc = add nsw i32 %29, 1, !dbg !461
  store i32 %inc, i32* %intVariable, align 4, !dbg !461
  br label %for.inc, !dbg !463

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !464
  %inc39 = add nsw i32 %30, 1, !dbg !464
  store i32 %inc39, i32* %i, align 4, !dbg !464
  br label %for.cond, !dbg !465, !llvm.loop !466

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !468
  call void @printIntLine(i32 %31), !dbg !469
  br label %if.end40, !dbg !470

if.end40:                                         ; preds = %for.end, %if.then33
  br label %if.end41, !dbg !471

if.end41:                                         ; preds = %if.end40, %if.end28
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_31_good() #0 !dbg !473 {
entry:
  call void @goodG2B(), !dbg !474
  call void @goodB2G(), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !477 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !482
  %0 = load i8*, i8** %line.addr, align 8, !dbg !483
  %cmp = icmp ne i8* %0, null, !dbg !485
  br i1 %cmp, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !487
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !489
  br label %if.end, !dbg !490

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !491
  ret void, !dbg !492
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !493 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i8*, i8** %line.addr, align 8, !dbg !496
  %cmp = icmp ne i8* %0, null, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !502
  br label %if.end, !dbg !503

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !505 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i32*, i32** %line.addr, align 8, !dbg !512
  %cmp = icmp ne i32* %0, null, !dbg !514
  br i1 %cmp, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !516
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !518
  br label %if.end, !dbg !519

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !520
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !521 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !529 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !535
  %conv = sext i16 %0 to i32, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !538 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !544
  %conv = fpext float %0 to double, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !547 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !553
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !554
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !556 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !564
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !565
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !567 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !572
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !573
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !575 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !580
  %conv = sext i8 %0 to i32, !dbg !580
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !581
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !583 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !588, metadata !DIExpression()), !dbg !592
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !593
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !594
  store i32 %0, i32* %arrayidx, align 4, !dbg !595
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !596
  store i32 0, i32* %arrayidx1, align 4, !dbg !597
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !598
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !601 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !609 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !614
  %conv = zext i8 %0 to i32, !dbg !614
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !617 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !621, metadata !DIExpression()), !dbg !622
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !623
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !626 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !636, metadata !DIExpression()), !dbg !637
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !638
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !639
  %1 = load i32, i32* %intOne, align 4, !dbg !639
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !640
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !641
  %3 = load i32, i32* %intTwo, align 4, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !644 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %i, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 0, i64* %i, align 8, !dbg !654
  br label %for.cond, !dbg !656

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !657
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !659
  %cmp = icmp ult i64 %0, %1, !dbg !660
  br i1 %cmp, label %for.body, label %for.end, !dbg !661

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !662
  %3 = load i64, i64* %i, align 8, !dbg !664
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !662
  %4 = load i8, i8* %arrayidx, align 1, !dbg !662
  %conv = zext i8 %4 to i32, !dbg !662
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !665
  br label %for.inc, !dbg !666

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !667
  %inc = add i64 %5, 1, !dbg !667
  store i64 %inc, i64* %i, align 8, !dbg !667
  br label %for.cond, !dbg !668, !llvm.loop !669

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !671
  ret void, !dbg !672
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !673 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !676, metadata !DIExpression()), !dbg !677
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !678, metadata !DIExpression()), !dbg !679
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !682, metadata !DIExpression()), !dbg !683
  store i64 0, i64* %numWritten, align 8, !dbg !683
  br label %while.cond, !dbg !684

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !685
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !686
  %cmp = icmp ult i64 %0, %1, !dbg !687
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !688

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !689
  %2 = load i16*, i16** %call, align 8, !dbg !689
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !689
  %4 = load i64, i64* %numWritten, align 8, !dbg !689
  %mul = mul i64 2, %4, !dbg !689
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !689
  %5 = load i8, i8* %arrayidx, align 1, !dbg !689
  %conv = sext i8 %5 to i32, !dbg !689
  %idxprom = sext i32 %conv to i64, !dbg !689
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !689
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !689
  %conv2 = zext i16 %6 to i32, !dbg !689
  %and = and i32 %conv2, 4096, !dbg !689
  %tobool = icmp ne i32 %and, 0, !dbg !689
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !690

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !691
  %7 = load i16*, i16** %call3, align 8, !dbg !691
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !691
  %9 = load i64, i64* %numWritten, align 8, !dbg !691
  %mul4 = mul i64 2, %9, !dbg !691
  %add = add i64 %mul4, 1, !dbg !691
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !691
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !691
  %conv6 = sext i8 %10 to i32, !dbg !691
  %idxprom7 = sext i32 %conv6 to i64, !dbg !691
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !691
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !691
  %conv9 = zext i16 %11 to i32, !dbg !691
  %and10 = and i32 %conv9, 4096, !dbg !691
  %tobool11 = icmp ne i32 %and10, 0, !dbg !690
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !692
  br i1 %12, label %while.body, label %while.end, !dbg !684

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !693, metadata !DIExpression()), !dbg !695
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !696
  %14 = load i64, i64* %numWritten, align 8, !dbg !697
  %mul12 = mul i64 2, %14, !dbg !698
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !696
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !699
  %15 = load i32, i32* %byte, align 4, !dbg !700
  %conv15 = trunc i32 %15 to i8, !dbg !701
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !702
  %17 = load i64, i64* %numWritten, align 8, !dbg !703
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !702
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !704
  %18 = load i64, i64* %numWritten, align 8, !dbg !705
  %inc = add i64 %18, 1, !dbg !705
  store i64 %inc, i64* %numWritten, align 8, !dbg !705
  br label %while.cond, !dbg !684, !llvm.loop !706

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !708
  ret i64 %19, !dbg !709
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !710 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !713, metadata !DIExpression()), !dbg !714
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !715, metadata !DIExpression()), !dbg !716
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !719, metadata !DIExpression()), !dbg !720
  store i64 0, i64* %numWritten, align 8, !dbg !720
  br label %while.cond, !dbg !721

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !722
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !723
  %cmp = icmp ult i64 %0, %1, !dbg !724
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !725

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !726
  %3 = load i64, i64* %numWritten, align 8, !dbg !727
  %mul = mul i64 2, %3, !dbg !728
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !726
  %4 = load i32, i32* %arrayidx, align 4, !dbg !726
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !729
  %tobool = icmp ne i32 %call, 0, !dbg !729
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !730

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !731
  %6 = load i64, i64* %numWritten, align 8, !dbg !732
  %mul1 = mul i64 2, %6, !dbg !733
  %add = add i64 %mul1, 1, !dbg !734
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !731
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !731
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !735
  %tobool4 = icmp ne i32 %call3, 0, !dbg !730
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !736
  br i1 %8, label %while.body, label %while.end, !dbg !721

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !737, metadata !DIExpression()), !dbg !739
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !740
  %10 = load i64, i64* %numWritten, align 8, !dbg !741
  %mul5 = mul i64 2, %10, !dbg !742
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !740
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !743
  %11 = load i32, i32* %byte, align 4, !dbg !744
  %conv = trunc i32 %11 to i8, !dbg !745
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !746
  %13 = load i64, i64* %numWritten, align 8, !dbg !747
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !746
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !748
  %14 = load i64, i64* %numWritten, align 8, !dbg !749
  %inc = add i64 %14, 1, !dbg !749
  store i64 %inc, i64* %numWritten, align 8, !dbg !749
  br label %while.cond, !dbg !721, !llvm.loop !750

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !752
  ret i64 %15, !dbg !753
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !754 {
entry:
  ret i32 1, !dbg !757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !758 {
entry:
  ret i32 0, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !760 {
entry:
  %call = call i32 @rand() #8, !dbg !761
  %rem = srem i32 %call, 2, !dbg !762
  ret i32 %rem, !dbg !763
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !798 {
entry:
  ret void, !dbg !799
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_950/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_950/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!117 = !DILocalVariable(name: "recvResult", scope: !118, file: !45, line: 60, type: !23)
!118 = distinct !DILexicalBlock(scope: !104, file: !45, line: 55, column: 5)
!119 = !DILocation(line: 60, column: 13, scope: !118)
!120 = !DILocalVariable(name: "service", scope: !118, file: !45, line: 61, type: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !122)
!122 = !{!123, !124, !130, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !121, file: !60, line: 240, baseType: !94, size: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !121, file: !60, line: 241, baseType: !125, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !127, line: 25, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !129, line: 40, baseType: !24)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !121, file: !60, line: 242, baseType: !131, size: 32, offset: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !131, file: !60, line: 33, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 26, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !129, line: 42, baseType: !7)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !121, file: !60, line: 245, baseType: !138, size: 64, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DILocation(line: 61, column: 28, scope: !118)
!142 = !DILocalVariable(name: "replace", scope: !118, file: !45, line: 62, type: !42)
!143 = !DILocation(line: 62, column: 15, scope: !118)
!144 = !DILocalVariable(name: "connectSocket", scope: !118, file: !45, line: 63, type: !23)
!145 = !DILocation(line: 63, column: 16, scope: !118)
!146 = !DILocalVariable(name: "dataLen", scope: !118, file: !45, line: 64, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!149 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !DILocation(line: 64, column: 16, scope: !118)
!151 = !DILocation(line: 64, column: 33, scope: !118)
!152 = !DILocation(line: 64, column: 26, scope: !118)
!153 = !DILocation(line: 65, column: 9, scope: !118)
!154 = !DILocation(line: 75, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !118, file: !45, line: 66, column: 9)
!156 = !DILocation(line: 75, column: 27, scope: !155)
!157 = !DILocation(line: 76, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !45, line: 76, column: 17)
!159 = !DILocation(line: 76, column: 31, scope: !158)
!160 = !DILocation(line: 76, column: 17, scope: !155)
!161 = !DILocation(line: 78, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !45, line: 77, column: 13)
!163 = !DILocation(line: 80, column: 13, scope: !155)
!164 = !DILocation(line: 81, column: 21, scope: !155)
!165 = !DILocation(line: 81, column: 32, scope: !155)
!166 = !DILocation(line: 82, column: 39, scope: !155)
!167 = !DILocation(line: 82, column: 21, scope: !155)
!168 = !DILocation(line: 82, column: 30, scope: !155)
!169 = !DILocation(line: 82, column: 37, scope: !155)
!170 = !DILocation(line: 83, column: 32, scope: !155)
!171 = !DILocation(line: 83, column: 21, scope: !155)
!172 = !DILocation(line: 83, column: 30, scope: !155)
!173 = !DILocation(line: 84, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !155, file: !45, line: 84, column: 17)
!175 = !DILocation(line: 84, column: 40, scope: !174)
!176 = !DILocation(line: 84, column: 17, scope: !174)
!177 = !DILocation(line: 84, column: 85, scope: !174)
!178 = !DILocation(line: 84, column: 17, scope: !155)
!179 = !DILocation(line: 86, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !45, line: 85, column: 13)
!181 = !DILocation(line: 91, column: 31, scope: !155)
!182 = !DILocation(line: 91, column: 55, scope: !155)
!183 = !DILocation(line: 91, column: 62, scope: !155)
!184 = !DILocation(line: 91, column: 60, scope: !155)
!185 = !DILocation(line: 91, column: 94, scope: !155)
!186 = !DILocation(line: 91, column: 92, scope: !155)
!187 = !DILocation(line: 91, column: 102, scope: !155)
!188 = !DILocation(line: 91, column: 85, scope: !155)
!189 = !DILocation(line: 91, column: 26, scope: !155)
!190 = !DILocation(line: 91, column: 24, scope: !155)
!191 = !DILocation(line: 92, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !155, file: !45, line: 92, column: 17)
!193 = !DILocation(line: 92, column: 28, scope: !192)
!194 = !DILocation(line: 92, column: 44, scope: !192)
!195 = !DILocation(line: 92, column: 47, scope: !192)
!196 = !DILocation(line: 92, column: 58, scope: !192)
!197 = !DILocation(line: 92, column: 17, scope: !155)
!198 = !DILocation(line: 94, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 93, column: 13)
!200 = !DILocation(line: 97, column: 13, scope: !155)
!201 = !DILocation(line: 97, column: 18, scope: !155)
!202 = !DILocation(line: 97, column: 28, scope: !155)
!203 = !DILocation(line: 97, column: 39, scope: !155)
!204 = !DILocation(line: 97, column: 26, scope: !155)
!205 = !DILocation(line: 97, column: 55, scope: !155)
!206 = !DILocation(line: 99, column: 30, scope: !155)
!207 = !DILocation(line: 99, column: 23, scope: !155)
!208 = !DILocation(line: 99, column: 21, scope: !155)
!209 = !DILocation(line: 100, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !155, file: !45, line: 100, column: 17)
!211 = !DILocation(line: 100, column: 17, scope: !155)
!212 = !DILocation(line: 102, column: 18, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !45, line: 101, column: 13)
!214 = !DILocation(line: 102, column: 26, scope: !213)
!215 = !DILocation(line: 103, column: 13, scope: !213)
!216 = !DILocation(line: 104, column: 30, scope: !155)
!217 = !DILocation(line: 104, column: 23, scope: !155)
!218 = !DILocation(line: 104, column: 21, scope: !155)
!219 = !DILocation(line: 105, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !155, file: !45, line: 105, column: 17)
!221 = !DILocation(line: 105, column: 17, scope: !155)
!222 = !DILocation(line: 107, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 106, column: 13)
!224 = !DILocation(line: 107, column: 26, scope: !223)
!225 = !DILocation(line: 108, column: 13, scope: !223)
!226 = !DILocation(line: 109, column: 9, scope: !155)
!227 = !DILocation(line: 111, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !118, file: !45, line: 111, column: 13)
!229 = !DILocation(line: 111, column: 27, scope: !228)
!230 = !DILocation(line: 111, column: 13, scope: !118)
!231 = !DILocation(line: 113, column: 26, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !45, line: 112, column: 9)
!233 = !DILocation(line: 113, column: 13, scope: !232)
!234 = !DILocation(line: 114, column: 9, scope: !232)
!235 = !DILocalVariable(name: "dataCopy", scope: !236, file: !45, line: 123, type: !42)
!236 = distinct !DILexicalBlock(scope: !104, file: !45, line: 122, column: 5)
!237 = !DILocation(line: 123, column: 16, scope: !236)
!238 = !DILocation(line: 123, column: 27, scope: !236)
!239 = !DILocalVariable(name: "data", scope: !236, file: !45, line: 124, type: !42)
!240 = !DILocation(line: 124, column: 16, scope: !236)
!241 = !DILocation(line: 124, column: 23, scope: !236)
!242 = !DILocalVariable(name: "i", scope: !243, file: !45, line: 126, type: !23)
!243 = distinct !DILexicalBlock(scope: !236, file: !45, line: 125, column: 9)
!244 = !DILocation(line: 126, column: 17, scope: !243)
!245 = !DILocalVariable(name: "n", scope: !243, file: !45, line: 126, type: !23)
!246 = !DILocation(line: 126, column: 20, scope: !243)
!247 = !DILocalVariable(name: "intVariable", scope: !243, file: !45, line: 126, type: !23)
!248 = !DILocation(line: 126, column: 23, scope: !243)
!249 = !DILocation(line: 127, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !45, line: 127, column: 17)
!251 = !DILocation(line: 127, column: 17, scope: !250)
!252 = !DILocation(line: 127, column: 40, scope: !250)
!253 = !DILocation(line: 127, column: 17, scope: !243)
!254 = !DILocation(line: 130, column: 29, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !45, line: 128, column: 13)
!256 = !DILocation(line: 131, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !255, file: !45, line: 131, column: 17)
!258 = !DILocation(line: 131, column: 22, scope: !257)
!259 = !DILocation(line: 131, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !45, line: 131, column: 17)
!261 = !DILocation(line: 131, column: 33, scope: !260)
!262 = !DILocation(line: 131, column: 31, scope: !260)
!263 = !DILocation(line: 131, column: 17, scope: !257)
!264 = !DILocation(line: 134, column: 32, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !45, line: 132, column: 17)
!266 = !DILocation(line: 135, column: 17, scope: !265)
!267 = !DILocation(line: 131, column: 37, scope: !260)
!268 = !DILocation(line: 131, column: 17, scope: !260)
!269 = distinct !{!269, !263, !270, !271}
!270 = !DILocation(line: 135, column: 17, scope: !257)
!271 = !{!"llvm.loop.mustprogress"}
!272 = !DILocation(line: 136, column: 30, scope: !255)
!273 = !DILocation(line: 136, column: 17, scope: !255)
!274 = !DILocation(line: 137, column: 13, scope: !255)
!275 = !DILocation(line: 140, column: 1, scope: !104)
!276 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 147, type: !105, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!277 = !DILocalVariable(name: "data", scope: !276, file: !45, line: 149, type: !42)
!278 = !DILocation(line: 149, column: 12, scope: !276)
!279 = !DILocalVariable(name: "dataBuffer", scope: !276, file: !45, line: 150, type: !111)
!280 = !DILocation(line: 150, column: 10, scope: !276)
!281 = !DILocation(line: 151, column: 12, scope: !276)
!282 = !DILocation(line: 151, column: 10, scope: !276)
!283 = !DILocation(line: 153, column: 12, scope: !276)
!284 = !DILocation(line: 153, column: 5, scope: !276)
!285 = !DILocalVariable(name: "dataCopy", scope: !286, file: !45, line: 155, type: !42)
!286 = distinct !DILexicalBlock(scope: !276, file: !45, line: 154, column: 5)
!287 = !DILocation(line: 155, column: 16, scope: !286)
!288 = !DILocation(line: 155, column: 27, scope: !286)
!289 = !DILocalVariable(name: "data", scope: !286, file: !45, line: 156, type: !42)
!290 = !DILocation(line: 156, column: 16, scope: !286)
!291 = !DILocation(line: 156, column: 23, scope: !286)
!292 = !DILocalVariable(name: "i", scope: !293, file: !45, line: 158, type: !23)
!293 = distinct !DILexicalBlock(scope: !286, file: !45, line: 157, column: 9)
!294 = !DILocation(line: 158, column: 17, scope: !293)
!295 = !DILocalVariable(name: "n", scope: !293, file: !45, line: 158, type: !23)
!296 = !DILocation(line: 158, column: 20, scope: !293)
!297 = !DILocalVariable(name: "intVariable", scope: !293, file: !45, line: 158, type: !23)
!298 = !DILocation(line: 158, column: 23, scope: !293)
!299 = !DILocation(line: 159, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !45, line: 159, column: 17)
!301 = !DILocation(line: 159, column: 17, scope: !300)
!302 = !DILocation(line: 159, column: 40, scope: !300)
!303 = !DILocation(line: 159, column: 17, scope: !293)
!304 = !DILocation(line: 162, column: 29, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !45, line: 160, column: 13)
!306 = !DILocation(line: 163, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !45, line: 163, column: 17)
!308 = !DILocation(line: 163, column: 22, scope: !307)
!309 = !DILocation(line: 163, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !45, line: 163, column: 17)
!311 = !DILocation(line: 163, column: 33, scope: !310)
!312 = !DILocation(line: 163, column: 31, scope: !310)
!313 = !DILocation(line: 163, column: 17, scope: !307)
!314 = !DILocation(line: 166, column: 32, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !45, line: 164, column: 17)
!316 = !DILocation(line: 167, column: 17, scope: !315)
!317 = !DILocation(line: 163, column: 37, scope: !310)
!318 = !DILocation(line: 163, column: 17, scope: !310)
!319 = distinct !{!319, !313, !320, !271}
!320 = !DILocation(line: 167, column: 17, scope: !307)
!321 = !DILocation(line: 168, column: 30, scope: !305)
!322 = !DILocation(line: 168, column: 17, scope: !305)
!323 = !DILocation(line: 169, column: 13, scope: !305)
!324 = !DILocation(line: 172, column: 1, scope: !276)
!325 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 175, type: !105, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!326 = !DILocalVariable(name: "data", scope: !325, file: !45, line: 177, type: !42)
!327 = !DILocation(line: 177, column: 12, scope: !325)
!328 = !DILocalVariable(name: "dataBuffer", scope: !325, file: !45, line: 178, type: !111)
!329 = !DILocation(line: 178, column: 10, scope: !325)
!330 = !DILocation(line: 179, column: 12, scope: !325)
!331 = !DILocation(line: 179, column: 10, scope: !325)
!332 = !DILocalVariable(name: "recvResult", scope: !333, file: !45, line: 185, type: !23)
!333 = distinct !DILexicalBlock(scope: !325, file: !45, line: 180, column: 5)
!334 = !DILocation(line: 185, column: 13, scope: !333)
!335 = !DILocalVariable(name: "service", scope: !333, file: !45, line: 186, type: !121)
!336 = !DILocation(line: 186, column: 28, scope: !333)
!337 = !DILocalVariable(name: "replace", scope: !333, file: !45, line: 187, type: !42)
!338 = !DILocation(line: 187, column: 15, scope: !333)
!339 = !DILocalVariable(name: "connectSocket", scope: !333, file: !45, line: 188, type: !23)
!340 = !DILocation(line: 188, column: 16, scope: !333)
!341 = !DILocalVariable(name: "dataLen", scope: !333, file: !45, line: 189, type: !147)
!342 = !DILocation(line: 189, column: 16, scope: !333)
!343 = !DILocation(line: 189, column: 33, scope: !333)
!344 = !DILocation(line: 189, column: 26, scope: !333)
!345 = !DILocation(line: 190, column: 9, scope: !333)
!346 = !DILocation(line: 200, column: 29, scope: !347)
!347 = distinct !DILexicalBlock(scope: !333, file: !45, line: 191, column: 9)
!348 = !DILocation(line: 200, column: 27, scope: !347)
!349 = !DILocation(line: 201, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !45, line: 201, column: 17)
!351 = !DILocation(line: 201, column: 31, scope: !350)
!352 = !DILocation(line: 201, column: 17, scope: !347)
!353 = !DILocation(line: 203, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !45, line: 202, column: 13)
!355 = !DILocation(line: 205, column: 13, scope: !347)
!356 = !DILocation(line: 206, column: 21, scope: !347)
!357 = !DILocation(line: 206, column: 32, scope: !347)
!358 = !DILocation(line: 207, column: 39, scope: !347)
!359 = !DILocation(line: 207, column: 21, scope: !347)
!360 = !DILocation(line: 207, column: 30, scope: !347)
!361 = !DILocation(line: 207, column: 37, scope: !347)
!362 = !DILocation(line: 208, column: 32, scope: !347)
!363 = !DILocation(line: 208, column: 21, scope: !347)
!364 = !DILocation(line: 208, column: 30, scope: !347)
!365 = !DILocation(line: 209, column: 25, scope: !366)
!366 = distinct !DILexicalBlock(scope: !347, file: !45, line: 209, column: 17)
!367 = !DILocation(line: 209, column: 40, scope: !366)
!368 = !DILocation(line: 209, column: 17, scope: !366)
!369 = !DILocation(line: 209, column: 85, scope: !366)
!370 = !DILocation(line: 209, column: 17, scope: !347)
!371 = !DILocation(line: 211, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !45, line: 210, column: 13)
!373 = !DILocation(line: 216, column: 31, scope: !347)
!374 = !DILocation(line: 216, column: 55, scope: !347)
!375 = !DILocation(line: 216, column: 62, scope: !347)
!376 = !DILocation(line: 216, column: 60, scope: !347)
!377 = !DILocation(line: 216, column: 94, scope: !347)
!378 = !DILocation(line: 216, column: 92, scope: !347)
!379 = !DILocation(line: 216, column: 102, scope: !347)
!380 = !DILocation(line: 216, column: 85, scope: !347)
!381 = !DILocation(line: 216, column: 26, scope: !347)
!382 = !DILocation(line: 216, column: 24, scope: !347)
!383 = !DILocation(line: 217, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !347, file: !45, line: 217, column: 17)
!385 = !DILocation(line: 217, column: 28, scope: !384)
!386 = !DILocation(line: 217, column: 44, scope: !384)
!387 = !DILocation(line: 217, column: 47, scope: !384)
!388 = !DILocation(line: 217, column: 58, scope: !384)
!389 = !DILocation(line: 217, column: 17, scope: !347)
!390 = !DILocation(line: 219, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !45, line: 218, column: 13)
!392 = !DILocation(line: 222, column: 13, scope: !347)
!393 = !DILocation(line: 222, column: 18, scope: !347)
!394 = !DILocation(line: 222, column: 28, scope: !347)
!395 = !DILocation(line: 222, column: 39, scope: !347)
!396 = !DILocation(line: 222, column: 26, scope: !347)
!397 = !DILocation(line: 222, column: 55, scope: !347)
!398 = !DILocation(line: 224, column: 30, scope: !347)
!399 = !DILocation(line: 224, column: 23, scope: !347)
!400 = !DILocation(line: 224, column: 21, scope: !347)
!401 = !DILocation(line: 225, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !347, file: !45, line: 225, column: 17)
!403 = !DILocation(line: 225, column: 17, scope: !347)
!404 = !DILocation(line: 227, column: 18, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !45, line: 226, column: 13)
!406 = !DILocation(line: 227, column: 26, scope: !405)
!407 = !DILocation(line: 228, column: 13, scope: !405)
!408 = !DILocation(line: 229, column: 30, scope: !347)
!409 = !DILocation(line: 229, column: 23, scope: !347)
!410 = !DILocation(line: 229, column: 21, scope: !347)
!411 = !DILocation(line: 230, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !347, file: !45, line: 230, column: 17)
!413 = !DILocation(line: 230, column: 17, scope: !347)
!414 = !DILocation(line: 232, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !45, line: 231, column: 13)
!416 = !DILocation(line: 232, column: 26, scope: !415)
!417 = !DILocation(line: 233, column: 13, scope: !415)
!418 = !DILocation(line: 234, column: 9, scope: !347)
!419 = !DILocation(line: 236, column: 13, scope: !420)
!420 = distinct !DILexicalBlock(scope: !333, file: !45, line: 236, column: 13)
!421 = !DILocation(line: 236, column: 27, scope: !420)
!422 = !DILocation(line: 236, column: 13, scope: !333)
!423 = !DILocation(line: 238, column: 26, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !45, line: 237, column: 9)
!425 = !DILocation(line: 238, column: 13, scope: !424)
!426 = !DILocation(line: 239, column: 9, scope: !424)
!427 = !DILocalVariable(name: "dataCopy", scope: !428, file: !45, line: 248, type: !42)
!428 = distinct !DILexicalBlock(scope: !325, file: !45, line: 247, column: 5)
!429 = !DILocation(line: 248, column: 16, scope: !428)
!430 = !DILocation(line: 248, column: 27, scope: !428)
!431 = !DILocalVariable(name: "data", scope: !428, file: !45, line: 249, type: !42)
!432 = !DILocation(line: 249, column: 16, scope: !428)
!433 = !DILocation(line: 249, column: 23, scope: !428)
!434 = !DILocalVariable(name: "i", scope: !435, file: !45, line: 251, type: !23)
!435 = distinct !DILexicalBlock(scope: !428, file: !45, line: 250, column: 9)
!436 = !DILocation(line: 251, column: 17, scope: !435)
!437 = !DILocalVariable(name: "n", scope: !435, file: !45, line: 251, type: !23)
!438 = !DILocation(line: 251, column: 20, scope: !435)
!439 = !DILocalVariable(name: "intVariable", scope: !435, file: !45, line: 251, type: !23)
!440 = !DILocation(line: 251, column: 23, scope: !435)
!441 = !DILocation(line: 252, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !435, file: !45, line: 252, column: 17)
!443 = !DILocation(line: 252, column: 17, scope: !442)
!444 = !DILocation(line: 252, column: 40, scope: !442)
!445 = !DILocation(line: 252, column: 17, scope: !435)
!446 = !DILocation(line: 255, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !45, line: 255, column: 21)
!448 = distinct !DILexicalBlock(scope: !442, file: !45, line: 253, column: 13)
!449 = !DILocation(line: 255, column: 23, scope: !447)
!450 = !DILocation(line: 255, column: 21, scope: !448)
!451 = !DILocation(line: 257, column: 33, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !45, line: 256, column: 17)
!453 = !DILocation(line: 258, column: 28, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !45, line: 258, column: 21)
!455 = !DILocation(line: 258, column: 26, scope: !454)
!456 = !DILocation(line: 258, column: 33, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !45, line: 258, column: 21)
!458 = !DILocation(line: 258, column: 37, scope: !457)
!459 = !DILocation(line: 258, column: 35, scope: !457)
!460 = !DILocation(line: 258, column: 21, scope: !454)
!461 = !DILocation(line: 261, column: 36, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !45, line: 259, column: 21)
!463 = !DILocation(line: 262, column: 21, scope: !462)
!464 = !DILocation(line: 258, column: 41, scope: !457)
!465 = !DILocation(line: 258, column: 21, scope: !457)
!466 = distinct !{!466, !460, !467, !271}
!467 = !DILocation(line: 262, column: 21, scope: !454)
!468 = !DILocation(line: 263, column: 34, scope: !452)
!469 = !DILocation(line: 263, column: 21, scope: !452)
!470 = !DILocation(line: 264, column: 17, scope: !452)
!471 = !DILocation(line: 265, column: 13, scope: !448)
!472 = !DILocation(line: 268, column: 1, scope: !325)
!473 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31_good", scope: !45, file: !45, line: 270, type: !105, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!474 = !DILocation(line: 272, column: 5, scope: !473)
!475 = !DILocation(line: 273, column: 5, scope: !473)
!476 = !DILocation(line: 274, column: 1, scope: !473)
!477 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !478, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !42}
!480 = !DILocalVariable(name: "line", arg: 1, scope: !477, file: !3, line: 11, type: !42)
!481 = !DILocation(line: 11, column: 25, scope: !477)
!482 = !DILocation(line: 13, column: 1, scope: !477)
!483 = !DILocation(line: 14, column: 8, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !3, line: 14, column: 8)
!485 = !DILocation(line: 14, column: 13, scope: !484)
!486 = !DILocation(line: 14, column: 8, scope: !477)
!487 = !DILocation(line: 16, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 15, column: 5)
!489 = !DILocation(line: 16, column: 9, scope: !488)
!490 = !DILocation(line: 17, column: 5, scope: !488)
!491 = !DILocation(line: 18, column: 5, scope: !477)
!492 = !DILocation(line: 19, column: 1, scope: !477)
!493 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !478, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!494 = !DILocalVariable(name: "line", arg: 1, scope: !493, file: !3, line: 20, type: !42)
!495 = !DILocation(line: 20, column: 29, scope: !493)
!496 = !DILocation(line: 22, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 22, column: 8)
!498 = !DILocation(line: 22, column: 13, scope: !497)
!499 = !DILocation(line: 22, column: 8, scope: !493)
!500 = !DILocation(line: 24, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 23, column: 5)
!502 = !DILocation(line: 24, column: 9, scope: !501)
!503 = !DILocation(line: 25, column: 5, scope: !501)
!504 = !DILocation(line: 26, column: 1, scope: !493)
!505 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !506, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !148, line: 74, baseType: !23)
!510 = !DILocalVariable(name: "line", arg: 1, scope: !505, file: !3, line: 27, type: !508)
!511 = !DILocation(line: 27, column: 29, scope: !505)
!512 = !DILocation(line: 29, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !3, line: 29, column: 8)
!514 = !DILocation(line: 29, column: 13, scope: !513)
!515 = !DILocation(line: 29, column: 8, scope: !505)
!516 = !DILocation(line: 31, column: 27, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 30, column: 5)
!518 = !DILocation(line: 31, column: 9, scope: !517)
!519 = !DILocation(line: 32, column: 5, scope: !517)
!520 = !DILocation(line: 33, column: 1, scope: !505)
!521 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !522, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !23}
!524 = !DILocalVariable(name: "intNumber", arg: 1, scope: !521, file: !3, line: 35, type: !23)
!525 = !DILocation(line: 35, column: 24, scope: !521)
!526 = !DILocation(line: 37, column: 20, scope: !521)
!527 = !DILocation(line: 37, column: 5, scope: !521)
!528 = !DILocation(line: 38, column: 1, scope: !521)
!529 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !530, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!533 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !529, file: !3, line: 40, type: !532)
!534 = !DILocation(line: 40, column: 28, scope: !529)
!535 = !DILocation(line: 42, column: 21, scope: !529)
!536 = !DILocation(line: 42, column: 5, scope: !529)
!537 = !DILocation(line: 43, column: 1, scope: !529)
!538 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !539, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!542 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !538, file: !3, line: 45, type: !541)
!543 = !DILocation(line: 45, column: 28, scope: !538)
!544 = !DILocation(line: 47, column: 20, scope: !538)
!545 = !DILocation(line: 47, column: 5, scope: !538)
!546 = !DILocation(line: 48, column: 1, scope: !538)
!547 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !548, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!551 = !DILocalVariable(name: "longNumber", arg: 1, scope: !547, file: !3, line: 50, type: !550)
!552 = !DILocation(line: 50, column: 26, scope: !547)
!553 = !DILocation(line: 52, column: 21, scope: !547)
!554 = !DILocation(line: 52, column: 5, scope: !547)
!555 = !DILocation(line: 53, column: 1, scope: !547)
!556 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !557, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559}
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !560, line: 27, baseType: !561)
!560 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 44, baseType: !550)
!562 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !556, file: !3, line: 55, type: !559)
!563 = !DILocation(line: 55, column: 33, scope: !556)
!564 = !DILocation(line: 57, column: 29, scope: !556)
!565 = !DILocation(line: 57, column: 5, scope: !556)
!566 = !DILocation(line: 58, column: 1, scope: !556)
!567 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !568, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !147}
!570 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !567, file: !3, line: 60, type: !147)
!571 = !DILocation(line: 60, column: 29, scope: !567)
!572 = !DILocation(line: 62, column: 21, scope: !567)
!573 = !DILocation(line: 62, column: 5, scope: !567)
!574 = !DILocation(line: 63, column: 1, scope: !567)
!575 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !576, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !43}
!578 = !DILocalVariable(name: "charHex", arg: 1, scope: !575, file: !3, line: 65, type: !43)
!579 = !DILocation(line: 65, column: 29, scope: !575)
!580 = !DILocation(line: 67, column: 22, scope: !575)
!581 = !DILocation(line: 67, column: 5, scope: !575)
!582 = !DILocation(line: 68, column: 1, scope: !575)
!583 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !584, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !509}
!586 = !DILocalVariable(name: "wideChar", arg: 1, scope: !583, file: !3, line: 70, type: !509)
!587 = !DILocation(line: 70, column: 29, scope: !583)
!588 = !DILocalVariable(name: "s", scope: !583, file: !3, line: 74, type: !589)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 64, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 2)
!592 = !DILocation(line: 74, column: 13, scope: !583)
!593 = !DILocation(line: 75, column: 16, scope: !583)
!594 = !DILocation(line: 75, column: 9, scope: !583)
!595 = !DILocation(line: 75, column: 14, scope: !583)
!596 = !DILocation(line: 76, column: 9, scope: !583)
!597 = !DILocation(line: 76, column: 14, scope: !583)
!598 = !DILocation(line: 77, column: 21, scope: !583)
!599 = !DILocation(line: 77, column: 5, scope: !583)
!600 = !DILocation(line: 78, column: 1, scope: !583)
!601 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !602, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !7}
!604 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !601, file: !3, line: 80, type: !7)
!605 = !DILocation(line: 80, column: 33, scope: !601)
!606 = !DILocation(line: 82, column: 20, scope: !601)
!607 = !DILocation(line: 82, column: 5, scope: !601)
!608 = !DILocation(line: 83, column: 1, scope: !601)
!609 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !610, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !25}
!612 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !609, file: !3, line: 85, type: !25)
!613 = !DILocation(line: 85, column: 45, scope: !609)
!614 = !DILocation(line: 87, column: 22, scope: !609)
!615 = !DILocation(line: 87, column: 5, scope: !609)
!616 = !DILocation(line: 88, column: 1, scope: !609)
!617 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !618, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !620}
!620 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!621 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !617, file: !3, line: 90, type: !620)
!622 = !DILocation(line: 90, column: 29, scope: !617)
!623 = !DILocation(line: 92, column: 20, scope: !617)
!624 = !DILocation(line: 92, column: 5, scope: !617)
!625 = !DILocation(line: 93, column: 1, scope: !617)
!626 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !627, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !631, line: 100, baseType: !632)
!631 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_950/source_code")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !631, line: 96, size: 64, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !632, file: !631, line: 98, baseType: !23, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !632, file: !631, line: 99, baseType: !23, size: 32, offset: 32)
!636 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !626, file: !3, line: 95, type: !629)
!637 = !DILocation(line: 95, column: 40, scope: !626)
!638 = !DILocation(line: 97, column: 26, scope: !626)
!639 = !DILocation(line: 97, column: 47, scope: !626)
!640 = !DILocation(line: 97, column: 55, scope: !626)
!641 = !DILocation(line: 97, column: 76, scope: !626)
!642 = !DILocation(line: 97, column: 5, scope: !626)
!643 = !DILocation(line: 98, column: 1, scope: !626)
!644 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !645, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !647, !147}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!648 = !DILocalVariable(name: "bytes", arg: 1, scope: !644, file: !3, line: 100, type: !647)
!649 = !DILocation(line: 100, column: 38, scope: !644)
!650 = !DILocalVariable(name: "numBytes", arg: 2, scope: !644, file: !3, line: 100, type: !147)
!651 = !DILocation(line: 100, column: 52, scope: !644)
!652 = !DILocalVariable(name: "i", scope: !644, file: !3, line: 102, type: !147)
!653 = !DILocation(line: 102, column: 12, scope: !644)
!654 = !DILocation(line: 103, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !644, file: !3, line: 103, column: 5)
!656 = !DILocation(line: 103, column: 10, scope: !655)
!657 = !DILocation(line: 103, column: 17, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !3, line: 103, column: 5)
!659 = !DILocation(line: 103, column: 21, scope: !658)
!660 = !DILocation(line: 103, column: 19, scope: !658)
!661 = !DILocation(line: 103, column: 5, scope: !655)
!662 = !DILocation(line: 105, column: 24, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !3, line: 104, column: 5)
!664 = !DILocation(line: 105, column: 30, scope: !663)
!665 = !DILocation(line: 105, column: 9, scope: !663)
!666 = !DILocation(line: 106, column: 5, scope: !663)
!667 = !DILocation(line: 103, column: 31, scope: !658)
!668 = !DILocation(line: 103, column: 5, scope: !658)
!669 = distinct !{!669, !661, !670, !271}
!670 = !DILocation(line: 106, column: 5, scope: !655)
!671 = !DILocation(line: 107, column: 5, scope: !644)
!672 = !DILocation(line: 108, column: 1, scope: !644)
!673 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !674, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!674 = !DISubroutineType(types: !675)
!675 = !{!147, !647, !147, !42}
!676 = !DILocalVariable(name: "bytes", arg: 1, scope: !673, file: !3, line: 113, type: !647)
!677 = !DILocation(line: 113, column: 39, scope: !673)
!678 = !DILocalVariable(name: "numBytes", arg: 2, scope: !673, file: !3, line: 113, type: !147)
!679 = !DILocation(line: 113, column: 53, scope: !673)
!680 = !DILocalVariable(name: "hex", arg: 3, scope: !673, file: !3, line: 113, type: !42)
!681 = !DILocation(line: 113, column: 71, scope: !673)
!682 = !DILocalVariable(name: "numWritten", scope: !673, file: !3, line: 115, type: !147)
!683 = !DILocation(line: 115, column: 12, scope: !673)
!684 = !DILocation(line: 121, column: 5, scope: !673)
!685 = !DILocation(line: 121, column: 12, scope: !673)
!686 = !DILocation(line: 121, column: 25, scope: !673)
!687 = !DILocation(line: 121, column: 23, scope: !673)
!688 = !DILocation(line: 121, column: 34, scope: !673)
!689 = !DILocation(line: 121, column: 37, scope: !673)
!690 = !DILocation(line: 121, column: 67, scope: !673)
!691 = !DILocation(line: 121, column: 70, scope: !673)
!692 = !DILocation(line: 0, scope: !673)
!693 = !DILocalVariable(name: "byte", scope: !694, file: !3, line: 123, type: !23)
!694 = distinct !DILexicalBlock(scope: !673, file: !3, line: 122, column: 5)
!695 = !DILocation(line: 123, column: 13, scope: !694)
!696 = !DILocation(line: 124, column: 17, scope: !694)
!697 = !DILocation(line: 124, column: 25, scope: !694)
!698 = !DILocation(line: 124, column: 23, scope: !694)
!699 = !DILocation(line: 124, column: 9, scope: !694)
!700 = !DILocation(line: 125, column: 45, scope: !694)
!701 = !DILocation(line: 125, column: 29, scope: !694)
!702 = !DILocation(line: 125, column: 9, scope: !694)
!703 = !DILocation(line: 125, column: 15, scope: !694)
!704 = !DILocation(line: 125, column: 27, scope: !694)
!705 = !DILocation(line: 126, column: 9, scope: !694)
!706 = distinct !{!706, !684, !707, !271}
!707 = !DILocation(line: 127, column: 5, scope: !673)
!708 = !DILocation(line: 129, column: 12, scope: !673)
!709 = !DILocation(line: 129, column: 5, scope: !673)
!710 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !711, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!711 = !DISubroutineType(types: !712)
!712 = !{!147, !647, !147, !508}
!713 = !DILocalVariable(name: "bytes", arg: 1, scope: !710, file: !3, line: 135, type: !647)
!714 = !DILocation(line: 135, column: 41, scope: !710)
!715 = !DILocalVariable(name: "numBytes", arg: 2, scope: !710, file: !3, line: 135, type: !147)
!716 = !DILocation(line: 135, column: 55, scope: !710)
!717 = !DILocalVariable(name: "hex", arg: 3, scope: !710, file: !3, line: 135, type: !508)
!718 = !DILocation(line: 135, column: 76, scope: !710)
!719 = !DILocalVariable(name: "numWritten", scope: !710, file: !3, line: 137, type: !147)
!720 = !DILocation(line: 137, column: 12, scope: !710)
!721 = !DILocation(line: 143, column: 5, scope: !710)
!722 = !DILocation(line: 143, column: 12, scope: !710)
!723 = !DILocation(line: 143, column: 25, scope: !710)
!724 = !DILocation(line: 143, column: 23, scope: !710)
!725 = !DILocation(line: 143, column: 34, scope: !710)
!726 = !DILocation(line: 143, column: 47, scope: !710)
!727 = !DILocation(line: 143, column: 55, scope: !710)
!728 = !DILocation(line: 143, column: 53, scope: !710)
!729 = !DILocation(line: 143, column: 37, scope: !710)
!730 = !DILocation(line: 143, column: 68, scope: !710)
!731 = !DILocation(line: 143, column: 81, scope: !710)
!732 = !DILocation(line: 143, column: 89, scope: !710)
!733 = !DILocation(line: 143, column: 87, scope: !710)
!734 = !DILocation(line: 143, column: 100, scope: !710)
!735 = !DILocation(line: 143, column: 71, scope: !710)
!736 = !DILocation(line: 0, scope: !710)
!737 = !DILocalVariable(name: "byte", scope: !738, file: !3, line: 145, type: !23)
!738 = distinct !DILexicalBlock(scope: !710, file: !3, line: 144, column: 5)
!739 = !DILocation(line: 145, column: 13, scope: !738)
!740 = !DILocation(line: 146, column: 18, scope: !738)
!741 = !DILocation(line: 146, column: 26, scope: !738)
!742 = !DILocation(line: 146, column: 24, scope: !738)
!743 = !DILocation(line: 146, column: 9, scope: !738)
!744 = !DILocation(line: 147, column: 45, scope: !738)
!745 = !DILocation(line: 147, column: 29, scope: !738)
!746 = !DILocation(line: 147, column: 9, scope: !738)
!747 = !DILocation(line: 147, column: 15, scope: !738)
!748 = !DILocation(line: 147, column: 27, scope: !738)
!749 = !DILocation(line: 148, column: 9, scope: !738)
!750 = distinct !{!750, !721, !751, !271}
!751 = !DILocation(line: 149, column: 5, scope: !710)
!752 = !DILocation(line: 151, column: 12, scope: !710)
!753 = !DILocation(line: 151, column: 5, scope: !710)
!754 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !755, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DISubroutineType(types: !756)
!756 = !{!23}
!757 = !DILocation(line: 158, column: 5, scope: !754)
!758 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !755, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!759 = !DILocation(line: 163, column: 5, scope: !758)
!760 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !755, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DILocation(line: 168, column: 13, scope: !760)
!762 = !DILocation(line: 168, column: 20, scope: !760)
!763 = !DILocation(line: 168, column: 5, scope: !760)
!764 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 187, column: 16, scope: !764)
!766 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 188, column: 16, scope: !766)
!768 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 189, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 190, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 191, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 192, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 193, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 194, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 195, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 198, column: 15, scope: !782)
!784 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 199, column: 15, scope: !784)
!786 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 200, column: 15, scope: !786)
!788 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 201, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 202, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 203, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 204, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 205, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 206, column: 15, scope: !798)
