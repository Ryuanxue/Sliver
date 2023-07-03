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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_01_bad() #0 !dbg !104 {
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %n, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !240, metadata !DIExpression()), !dbg !241
  %23 = load i8*, i8** %data, align 8, !dbg !242
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !244
  %cmp30 = icmp eq i32 %call29, 1, !dbg !245
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !246

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !247
  store i32 0, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load i32, i32* %i, align 4, !dbg !252
  %25 = load i32, i32* %n, align 4, !dbg !254
  %cmp33 = icmp slt i32 %24, %25, !dbg !255
  br i1 %cmp33, label %for.body, label %for.end, !dbg !256

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !257
  %inc = add nsw i32 %26, 1, !dbg !257
  store i32 %inc, i32* %intVariable, align 4, !dbg !257
  br label %for.inc, !dbg !259

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !260
  %inc35 = add nsw i32 %27, 1, !dbg !260
  store i32 %inc35, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !261, !llvm.loop !262

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !265
  call void @printIntLine(i32 %28), !dbg !266
  br label %if.end36, !dbg !267

if.end36:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !268
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
define dso_local void @goodG2B() #0 !dbg !269 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !273
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !274
  store i8* %arraydecay, i8** %data, align 8, !dbg !275
  %1 = load i8*, i8** %data, align 8, !dbg !276
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !277
  call void @llvm.dbg.declare(metadata i32* %i, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %n, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !283, metadata !DIExpression()), !dbg !284
  %2 = load i8*, i8** %data, align 8, !dbg !285
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !287
  %cmp = icmp eq i32 %call1, 1, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !290
  store i32 0, i32* %i, align 4, !dbg !292
  br label %for.cond, !dbg !294

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !295
  %4 = load i32, i32* %n, align 4, !dbg !297
  %cmp2 = icmp slt i32 %3, %4, !dbg !298
  br i1 %cmp2, label %for.body, label %for.end, !dbg !299

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !300
  %inc = add nsw i32 %5, 1, !dbg !300
  store i32 %inc, i32* %intVariable, align 4, !dbg !300
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !303
  %inc3 = add nsw i32 %6, 1, !dbg !303
  store i32 %inc3, i32* %i, align 4, !dbg !303
  br label %for.cond, !dbg !304, !llvm.loop !305

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !307
  call void @printIntLine(i32 %7), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !310
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !311 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !315
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !316
  store i8* %arraydecay, i8** %data, align 8, !dbg !317
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 -1, i32* %connectSocket, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !327, metadata !DIExpression()), !dbg !328
  %1 = load i8*, i8** %data, align 8, !dbg !329
  %call = call i64 @strlen(i8* %1) #7, !dbg !330
  store i64 %call, i64* %dataLen, align 8, !dbg !328
  br label %do.body, !dbg !331

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !332
  store i32 %call1, i32* %connectSocket, align 4, !dbg !334
  %2 = load i32, i32* %connectSocket, align 4, !dbg !335
  %cmp = icmp eq i32 %2, -1, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !339

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !341
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !341
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !342
  store i16 2, i16* %sin_family, align 4, !dbg !343
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !344
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !345
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !346
  store i32 %call2, i32* %s_addr, align 4, !dbg !347
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !348
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !349
  store i16 %call3, i16* %sin_port, align 2, !dbg !350
  %4 = load i32, i32* %connectSocket, align 4, !dbg !351
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !353
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !354
  %cmp5 = icmp eq i32 %call4, -1, !dbg !355
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !356

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !357

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !359
  %7 = load i8*, i8** %data, align 8, !dbg !360
  %8 = load i64, i64* %dataLen, align 8, !dbg !361
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !362
  %9 = load i64, i64* %dataLen, align 8, !dbg !363
  %sub = sub i64 100, %9, !dbg !364
  %sub8 = sub i64 %sub, 1, !dbg !365
  %mul = mul i64 1, %sub8, !dbg !366
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !367
  %conv = trunc i64 %call9 to i32, !dbg !367
  store i32 %conv, i32* %recvResult, align 4, !dbg !368
  %10 = load i32, i32* %recvResult, align 4, !dbg !369
  %cmp10 = icmp eq i32 %10, -1, !dbg !371
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !372

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !373
  %cmp12 = icmp eq i32 %11, 0, !dbg !374
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !375

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !376

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !378
  %13 = load i64, i64* %dataLen, align 8, !dbg !379
  %14 = load i32, i32* %recvResult, align 4, !dbg !380
  %conv16 = sext i32 %14 to i64, !dbg !380
  %div = udiv i64 %conv16, 1, !dbg !381
  %add = add i64 %13, %div, !dbg !382
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !378
  store i8 0, i8* %arrayidx, align 1, !dbg !383
  %15 = load i8*, i8** %data, align 8, !dbg !384
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !385
  store i8* %call17, i8** %replace, align 8, !dbg !386
  %16 = load i8*, i8** %replace, align 8, !dbg !387
  %tobool = icmp ne i8* %16, null, !dbg !387
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !389

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !390
  store i8 0, i8* %17, align 1, !dbg !392
  br label %if.end19, !dbg !393

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !394
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !395
  store i8* %call20, i8** %replace, align 8, !dbg !396
  %19 = load i8*, i8** %replace, align 8, !dbg !397
  %tobool21 = icmp ne i8* %19, null, !dbg !397
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !399

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !400
  store i8 0, i8* %20, align 1, !dbg !402
  br label %if.end23, !dbg !403

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !404

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !405
  %cmp24 = icmp ne i32 %21, -1, !dbg !407
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !408

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !409
  %call27 = call i32 @close(i32 %22), !dbg !411
  br label %if.end28, !dbg !412

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %n, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !418, metadata !DIExpression()), !dbg !419
  %23 = load i8*, i8** %data, align 8, !dbg !420
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !422
  %cmp30 = icmp eq i32 %call29, 1, !dbg !423
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !424

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !425
  %cmp33 = icmp slt i32 %24, 10000, !dbg !428
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !429

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !430
  store i32 0, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !435
  %26 = load i32, i32* %n, align 4, !dbg !437
  %cmp36 = icmp slt i32 %25, %26, !dbg !438
  br i1 %cmp36, label %for.body, label %for.end, !dbg !439

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !440
  %inc = add nsw i32 %27, 1, !dbg !440
  store i32 %inc, i32* %intVariable, align 4, !dbg !440
  br label %for.inc, !dbg !442

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !443
  %inc38 = add nsw i32 %28, 1, !dbg !443
  store i32 %inc38, i32* %i, align 4, !dbg !443
  br label %for.cond, !dbg !444, !llvm.loop !445

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !447
  call void @printIntLine(i32 %29), !dbg !448
  br label %if.end39, !dbg !449

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !450

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_01_good() #0 !dbg !452 {
entry:
  call void @goodG2B(), !dbg !453
  call void @goodB2G(), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !456 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !461
  %0 = load i8*, i8** %line.addr, align 8, !dbg !462
  %cmp = icmp ne i8* %0, null, !dbg !464
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !466
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !468
  br label %if.end, !dbg !469

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !470
  ret void, !dbg !471
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !472 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i8*, i8** %line.addr, align 8, !dbg !475
  %cmp = icmp ne i8* %0, null, !dbg !477
  br i1 %cmp, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !481
  br label %if.end, !dbg !482

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !484 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i32*, i32** %line.addr, align 8, !dbg !491
  %cmp = icmp ne i32* %0, null, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !495
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !497
  br label %if.end, !dbg !498

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !499
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !500 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !508 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !514
  %conv = sext i16 %0 to i32, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !517 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !523
  %conv = fpext float %0 to double, !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !526 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !535 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !546 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !554 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !559
  %conv = sext i8 %0 to i32, !dbg !559
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !562 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !567, metadata !DIExpression()), !dbg !571
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !572
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !573
  store i32 %0, i32* %arrayidx, align 4, !dbg !574
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !575
  store i32 0, i32* %arrayidx1, align 4, !dbg !576
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !580 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !585
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !588 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !593
  %conv = zext i8 %0 to i32, !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !596 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !605 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !617
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !618
  %1 = load i32, i32* %intOne, align 4, !dbg !618
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !619
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !620
  %3 = load i32, i32* %intTwo, align 4, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !623 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata i64* %i, metadata !631, metadata !DIExpression()), !dbg !632
  store i64 0, i64* %i, align 8, !dbg !633
  br label %for.cond, !dbg !635

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !636
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !638
  %cmp = icmp ult i64 %0, %1, !dbg !639
  br i1 %cmp, label %for.body, label %for.end, !dbg !640

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !641
  %3 = load i64, i64* %i, align 8, !dbg !643
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !641
  %4 = load i8, i8* %arrayidx, align 1, !dbg !641
  %conv = zext i8 %4 to i32, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !644
  br label %for.inc, !dbg !645

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !646
  %inc = add i64 %5, 1, !dbg !646
  store i64 %inc, i64* %i, align 8, !dbg !646
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !650
  ret void, !dbg !651
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !652 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !655, metadata !DIExpression()), !dbg !656
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !657, metadata !DIExpression()), !dbg !658
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !661, metadata !DIExpression()), !dbg !662
  store i64 0, i64* %numWritten, align 8, !dbg !662
  br label %while.cond, !dbg !663

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !664
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !665
  %cmp = icmp ult i64 %0, %1, !dbg !666
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !667

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !668
  %2 = load i16*, i16** %call, align 8, !dbg !668
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !668
  %4 = load i64, i64* %numWritten, align 8, !dbg !668
  %mul = mul i64 2, %4, !dbg !668
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !668
  %5 = load i8, i8* %arrayidx, align 1, !dbg !668
  %conv = sext i8 %5 to i32, !dbg !668
  %idxprom = sext i32 %conv to i64, !dbg !668
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !668
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !668
  %conv2 = zext i16 %6 to i32, !dbg !668
  %and = and i32 %conv2, 4096, !dbg !668
  %tobool = icmp ne i32 %and, 0, !dbg !668
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !669

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !670
  %7 = load i16*, i16** %call3, align 8, !dbg !670
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !670
  %9 = load i64, i64* %numWritten, align 8, !dbg !670
  %mul4 = mul i64 2, %9, !dbg !670
  %add = add i64 %mul4, 1, !dbg !670
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !670
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !670
  %conv6 = sext i8 %10 to i32, !dbg !670
  %idxprom7 = sext i32 %conv6 to i64, !dbg !670
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !670
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !670
  %conv9 = zext i16 %11 to i32, !dbg !670
  %and10 = and i32 %conv9, 4096, !dbg !670
  %tobool11 = icmp ne i32 %and10, 0, !dbg !669
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !671
  br i1 %12, label %while.body, label %while.end, !dbg !663

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !672, metadata !DIExpression()), !dbg !674
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !675
  %14 = load i64, i64* %numWritten, align 8, !dbg !676
  %mul12 = mul i64 2, %14, !dbg !677
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !675
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !678
  %15 = load i32, i32* %byte, align 4, !dbg !679
  %conv15 = trunc i32 %15 to i8, !dbg !680
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !681
  %17 = load i64, i64* %numWritten, align 8, !dbg !682
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !681
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !683
  %18 = load i64, i64* %numWritten, align 8, !dbg !684
  %inc = add i64 %18, 1, !dbg !684
  store i64 %inc, i64* %numWritten, align 8, !dbg !684
  br label %while.cond, !dbg !663, !llvm.loop !685

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !687
  ret i64 %19, !dbg !688
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !689 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !692, metadata !DIExpression()), !dbg !693
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !694, metadata !DIExpression()), !dbg !695
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !698, metadata !DIExpression()), !dbg !699
  store i64 0, i64* %numWritten, align 8, !dbg !699
  br label %while.cond, !dbg !700

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !701
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !702
  %cmp = icmp ult i64 %0, %1, !dbg !703
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !704

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !705
  %3 = load i64, i64* %numWritten, align 8, !dbg !706
  %mul = mul i64 2, %3, !dbg !707
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !705
  %4 = load i32, i32* %arrayidx, align 4, !dbg !705
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !708
  %tobool = icmp ne i32 %call, 0, !dbg !708
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !709

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !710
  %6 = load i64, i64* %numWritten, align 8, !dbg !711
  %mul1 = mul i64 2, %6, !dbg !712
  %add = add i64 %mul1, 1, !dbg !713
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !710
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !710
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !714
  %tobool4 = icmp ne i32 %call3, 0, !dbg !709
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !715
  br i1 %8, label %while.body, label %while.end, !dbg !700

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !716, metadata !DIExpression()), !dbg !718
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !719
  %10 = load i64, i64* %numWritten, align 8, !dbg !720
  %mul5 = mul i64 2, %10, !dbg !721
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !719
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !722
  %11 = load i32, i32* %byte, align 4, !dbg !723
  %conv = trunc i32 %11 to i8, !dbg !724
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !725
  %13 = load i64, i64* %numWritten, align 8, !dbg !726
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !725
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !727
  %14 = load i64, i64* %numWritten, align 8, !dbg !728
  %inc = add i64 %14, 1, !dbg !728
  store i64 %inc, i64* %numWritten, align 8, !dbg !728
  br label %while.cond, !dbg !700, !llvm.loop !729

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !731
  ret i64 %15, !dbg !732
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !733 {
entry:
  ret i32 1, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !737 {
entry:
  ret i32 0, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !739 {
entry:
  %call = call i32 @rand() #8, !dbg !740
  %rem = srem i32 %call, 2, !dbg !741
  ret i32 %rem, !dbg !742
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !743 {
entry:
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !745 {
entry:
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !777 {
entry:
  ret void, !dbg !778
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_930/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_930/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!235 = !DILocalVariable(name: "i", scope: !236, file: !45, line: 123, type: !23)
!236 = distinct !DILexicalBlock(scope: !104, file: !45, line: 122, column: 5)
!237 = !DILocation(line: 123, column: 13, scope: !236)
!238 = !DILocalVariable(name: "n", scope: !236, file: !45, line: 123, type: !23)
!239 = !DILocation(line: 123, column: 16, scope: !236)
!240 = !DILocalVariable(name: "intVariable", scope: !236, file: !45, line: 123, type: !23)
!241 = !DILocation(line: 123, column: 19, scope: !236)
!242 = !DILocation(line: 124, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !236, file: !45, line: 124, column: 13)
!244 = !DILocation(line: 124, column: 13, scope: !243)
!245 = !DILocation(line: 124, column: 36, scope: !243)
!246 = !DILocation(line: 124, column: 13, scope: !236)
!247 = !DILocation(line: 127, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !45, line: 125, column: 9)
!249 = !DILocation(line: 128, column: 20, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !45, line: 128, column: 13)
!251 = !DILocation(line: 128, column: 18, scope: !250)
!252 = !DILocation(line: 128, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !45, line: 128, column: 13)
!254 = !DILocation(line: 128, column: 29, scope: !253)
!255 = !DILocation(line: 128, column: 27, scope: !253)
!256 = !DILocation(line: 128, column: 13, scope: !250)
!257 = !DILocation(line: 131, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 129, column: 13)
!259 = !DILocation(line: 132, column: 13, scope: !258)
!260 = !DILocation(line: 128, column: 33, scope: !253)
!261 = !DILocation(line: 128, column: 13, scope: !253)
!262 = distinct !{!262, !256, !263, !264}
!263 = !DILocation(line: 132, column: 13, scope: !250)
!264 = !{!"llvm.loop.mustprogress"}
!265 = !DILocation(line: 133, column: 26, scope: !248)
!266 = !DILocation(line: 133, column: 13, scope: !248)
!267 = !DILocation(line: 134, column: 9, scope: !248)
!268 = !DILocation(line: 136, column: 1, scope: !104)
!269 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 143, type: !105, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!270 = !DILocalVariable(name: "data", scope: !269, file: !45, line: 145, type: !42)
!271 = !DILocation(line: 145, column: 12, scope: !269)
!272 = !DILocalVariable(name: "dataBuffer", scope: !269, file: !45, line: 146, type: !111)
!273 = !DILocation(line: 146, column: 10, scope: !269)
!274 = !DILocation(line: 147, column: 12, scope: !269)
!275 = !DILocation(line: 147, column: 10, scope: !269)
!276 = !DILocation(line: 149, column: 12, scope: !269)
!277 = !DILocation(line: 149, column: 5, scope: !269)
!278 = !DILocalVariable(name: "i", scope: !279, file: !45, line: 151, type: !23)
!279 = distinct !DILexicalBlock(scope: !269, file: !45, line: 150, column: 5)
!280 = !DILocation(line: 151, column: 13, scope: !279)
!281 = !DILocalVariable(name: "n", scope: !279, file: !45, line: 151, type: !23)
!282 = !DILocation(line: 151, column: 16, scope: !279)
!283 = !DILocalVariable(name: "intVariable", scope: !279, file: !45, line: 151, type: !23)
!284 = !DILocation(line: 151, column: 19, scope: !279)
!285 = !DILocation(line: 152, column: 20, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !45, line: 152, column: 13)
!287 = !DILocation(line: 152, column: 13, scope: !286)
!288 = !DILocation(line: 152, column: 36, scope: !286)
!289 = !DILocation(line: 152, column: 13, scope: !279)
!290 = !DILocation(line: 155, column: 25, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !45, line: 153, column: 9)
!292 = !DILocation(line: 156, column: 20, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !45, line: 156, column: 13)
!294 = !DILocation(line: 156, column: 18, scope: !293)
!295 = !DILocation(line: 156, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !45, line: 156, column: 13)
!297 = !DILocation(line: 156, column: 29, scope: !296)
!298 = !DILocation(line: 156, column: 27, scope: !296)
!299 = !DILocation(line: 156, column: 13, scope: !293)
!300 = !DILocation(line: 159, column: 28, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !45, line: 157, column: 13)
!302 = !DILocation(line: 160, column: 13, scope: !301)
!303 = !DILocation(line: 156, column: 33, scope: !296)
!304 = !DILocation(line: 156, column: 13, scope: !296)
!305 = distinct !{!305, !299, !306, !264}
!306 = !DILocation(line: 160, column: 13, scope: !293)
!307 = !DILocation(line: 161, column: 26, scope: !291)
!308 = !DILocation(line: 161, column: 13, scope: !291)
!309 = !DILocation(line: 162, column: 9, scope: !291)
!310 = !DILocation(line: 164, column: 1, scope: !269)
!311 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 167, type: !105, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!312 = !DILocalVariable(name: "data", scope: !311, file: !45, line: 169, type: !42)
!313 = !DILocation(line: 169, column: 12, scope: !311)
!314 = !DILocalVariable(name: "dataBuffer", scope: !311, file: !45, line: 170, type: !111)
!315 = !DILocation(line: 170, column: 10, scope: !311)
!316 = !DILocation(line: 171, column: 12, scope: !311)
!317 = !DILocation(line: 171, column: 10, scope: !311)
!318 = !DILocalVariable(name: "recvResult", scope: !319, file: !45, line: 177, type: !23)
!319 = distinct !DILexicalBlock(scope: !311, file: !45, line: 172, column: 5)
!320 = !DILocation(line: 177, column: 13, scope: !319)
!321 = !DILocalVariable(name: "service", scope: !319, file: !45, line: 178, type: !121)
!322 = !DILocation(line: 178, column: 28, scope: !319)
!323 = !DILocalVariable(name: "replace", scope: !319, file: !45, line: 179, type: !42)
!324 = !DILocation(line: 179, column: 15, scope: !319)
!325 = !DILocalVariable(name: "connectSocket", scope: !319, file: !45, line: 180, type: !23)
!326 = !DILocation(line: 180, column: 16, scope: !319)
!327 = !DILocalVariable(name: "dataLen", scope: !319, file: !45, line: 181, type: !147)
!328 = !DILocation(line: 181, column: 16, scope: !319)
!329 = !DILocation(line: 181, column: 33, scope: !319)
!330 = !DILocation(line: 181, column: 26, scope: !319)
!331 = !DILocation(line: 182, column: 9, scope: !319)
!332 = !DILocation(line: 192, column: 29, scope: !333)
!333 = distinct !DILexicalBlock(scope: !319, file: !45, line: 183, column: 9)
!334 = !DILocation(line: 192, column: 27, scope: !333)
!335 = !DILocation(line: 193, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !45, line: 193, column: 17)
!337 = !DILocation(line: 193, column: 31, scope: !336)
!338 = !DILocation(line: 193, column: 17, scope: !333)
!339 = !DILocation(line: 195, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !45, line: 194, column: 13)
!341 = !DILocation(line: 197, column: 13, scope: !333)
!342 = !DILocation(line: 198, column: 21, scope: !333)
!343 = !DILocation(line: 198, column: 32, scope: !333)
!344 = !DILocation(line: 199, column: 39, scope: !333)
!345 = !DILocation(line: 199, column: 21, scope: !333)
!346 = !DILocation(line: 199, column: 30, scope: !333)
!347 = !DILocation(line: 199, column: 37, scope: !333)
!348 = !DILocation(line: 200, column: 32, scope: !333)
!349 = !DILocation(line: 200, column: 21, scope: !333)
!350 = !DILocation(line: 200, column: 30, scope: !333)
!351 = !DILocation(line: 201, column: 25, scope: !352)
!352 = distinct !DILexicalBlock(scope: !333, file: !45, line: 201, column: 17)
!353 = !DILocation(line: 201, column: 40, scope: !352)
!354 = !DILocation(line: 201, column: 17, scope: !352)
!355 = !DILocation(line: 201, column: 85, scope: !352)
!356 = !DILocation(line: 201, column: 17, scope: !333)
!357 = !DILocation(line: 203, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !352, file: !45, line: 202, column: 13)
!359 = !DILocation(line: 208, column: 31, scope: !333)
!360 = !DILocation(line: 208, column: 55, scope: !333)
!361 = !DILocation(line: 208, column: 62, scope: !333)
!362 = !DILocation(line: 208, column: 60, scope: !333)
!363 = !DILocation(line: 208, column: 94, scope: !333)
!364 = !DILocation(line: 208, column: 92, scope: !333)
!365 = !DILocation(line: 208, column: 102, scope: !333)
!366 = !DILocation(line: 208, column: 85, scope: !333)
!367 = !DILocation(line: 208, column: 26, scope: !333)
!368 = !DILocation(line: 208, column: 24, scope: !333)
!369 = !DILocation(line: 209, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !333, file: !45, line: 209, column: 17)
!371 = !DILocation(line: 209, column: 28, scope: !370)
!372 = !DILocation(line: 209, column: 44, scope: !370)
!373 = !DILocation(line: 209, column: 47, scope: !370)
!374 = !DILocation(line: 209, column: 58, scope: !370)
!375 = !DILocation(line: 209, column: 17, scope: !333)
!376 = !DILocation(line: 211, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !45, line: 210, column: 13)
!378 = !DILocation(line: 214, column: 13, scope: !333)
!379 = !DILocation(line: 214, column: 18, scope: !333)
!380 = !DILocation(line: 214, column: 28, scope: !333)
!381 = !DILocation(line: 214, column: 39, scope: !333)
!382 = !DILocation(line: 214, column: 26, scope: !333)
!383 = !DILocation(line: 214, column: 55, scope: !333)
!384 = !DILocation(line: 216, column: 30, scope: !333)
!385 = !DILocation(line: 216, column: 23, scope: !333)
!386 = !DILocation(line: 216, column: 21, scope: !333)
!387 = !DILocation(line: 217, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !333, file: !45, line: 217, column: 17)
!389 = !DILocation(line: 217, column: 17, scope: !333)
!390 = !DILocation(line: 219, column: 18, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !45, line: 218, column: 13)
!392 = !DILocation(line: 219, column: 26, scope: !391)
!393 = !DILocation(line: 220, column: 13, scope: !391)
!394 = !DILocation(line: 221, column: 30, scope: !333)
!395 = !DILocation(line: 221, column: 23, scope: !333)
!396 = !DILocation(line: 221, column: 21, scope: !333)
!397 = !DILocation(line: 222, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !333, file: !45, line: 222, column: 17)
!399 = !DILocation(line: 222, column: 17, scope: !333)
!400 = !DILocation(line: 224, column: 18, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !45, line: 223, column: 13)
!402 = !DILocation(line: 224, column: 26, scope: !401)
!403 = !DILocation(line: 225, column: 13, scope: !401)
!404 = !DILocation(line: 226, column: 9, scope: !333)
!405 = !DILocation(line: 228, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !319, file: !45, line: 228, column: 13)
!407 = !DILocation(line: 228, column: 27, scope: !406)
!408 = !DILocation(line: 228, column: 13, scope: !319)
!409 = !DILocation(line: 230, column: 26, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !45, line: 229, column: 9)
!411 = !DILocation(line: 230, column: 13, scope: !410)
!412 = !DILocation(line: 231, column: 9, scope: !410)
!413 = !DILocalVariable(name: "i", scope: !414, file: !45, line: 240, type: !23)
!414 = distinct !DILexicalBlock(scope: !311, file: !45, line: 239, column: 5)
!415 = !DILocation(line: 240, column: 13, scope: !414)
!416 = !DILocalVariable(name: "n", scope: !414, file: !45, line: 240, type: !23)
!417 = !DILocation(line: 240, column: 16, scope: !414)
!418 = !DILocalVariable(name: "intVariable", scope: !414, file: !45, line: 240, type: !23)
!419 = !DILocation(line: 240, column: 19, scope: !414)
!420 = !DILocation(line: 241, column: 20, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !45, line: 241, column: 13)
!422 = !DILocation(line: 241, column: 13, scope: !421)
!423 = !DILocation(line: 241, column: 36, scope: !421)
!424 = !DILocation(line: 241, column: 13, scope: !414)
!425 = !DILocation(line: 244, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !45, line: 244, column: 17)
!427 = distinct !DILexicalBlock(scope: !421, file: !45, line: 242, column: 9)
!428 = !DILocation(line: 244, column: 19, scope: !426)
!429 = !DILocation(line: 244, column: 17, scope: !427)
!430 = !DILocation(line: 246, column: 29, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !45, line: 245, column: 13)
!432 = !DILocation(line: 247, column: 24, scope: !433)
!433 = distinct !DILexicalBlock(scope: !431, file: !45, line: 247, column: 17)
!434 = !DILocation(line: 247, column: 22, scope: !433)
!435 = !DILocation(line: 247, column: 29, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !45, line: 247, column: 17)
!437 = !DILocation(line: 247, column: 33, scope: !436)
!438 = !DILocation(line: 247, column: 31, scope: !436)
!439 = !DILocation(line: 247, column: 17, scope: !433)
!440 = !DILocation(line: 250, column: 32, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !45, line: 248, column: 17)
!442 = !DILocation(line: 251, column: 17, scope: !441)
!443 = !DILocation(line: 247, column: 37, scope: !436)
!444 = !DILocation(line: 247, column: 17, scope: !436)
!445 = distinct !{!445, !439, !446, !264}
!446 = !DILocation(line: 251, column: 17, scope: !433)
!447 = !DILocation(line: 252, column: 30, scope: !431)
!448 = !DILocation(line: 252, column: 17, scope: !431)
!449 = !DILocation(line: 253, column: 13, scope: !431)
!450 = !DILocation(line: 254, column: 9, scope: !427)
!451 = !DILocation(line: 256, column: 1, scope: !311)
!452 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01_good", scope: !45, file: !45, line: 258, type: !105, scopeLine: 259, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!453 = !DILocation(line: 260, column: 5, scope: !452)
!454 = !DILocation(line: 261, column: 5, scope: !452)
!455 = !DILocation(line: 262, column: 1, scope: !452)
!456 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !457, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !42}
!459 = !DILocalVariable(name: "line", arg: 1, scope: !456, file: !3, line: 11, type: !42)
!460 = !DILocation(line: 11, column: 25, scope: !456)
!461 = !DILocation(line: 13, column: 1, scope: !456)
!462 = !DILocation(line: 14, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !456, file: !3, line: 14, column: 8)
!464 = !DILocation(line: 14, column: 13, scope: !463)
!465 = !DILocation(line: 14, column: 8, scope: !456)
!466 = !DILocation(line: 16, column: 24, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 15, column: 5)
!468 = !DILocation(line: 16, column: 9, scope: !467)
!469 = !DILocation(line: 17, column: 5, scope: !467)
!470 = !DILocation(line: 18, column: 5, scope: !456)
!471 = !DILocation(line: 19, column: 1, scope: !456)
!472 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !457, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!473 = !DILocalVariable(name: "line", arg: 1, scope: !472, file: !3, line: 20, type: !42)
!474 = !DILocation(line: 20, column: 29, scope: !472)
!475 = !DILocation(line: 22, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 22, column: 8)
!477 = !DILocation(line: 22, column: 13, scope: !476)
!478 = !DILocation(line: 22, column: 8, scope: !472)
!479 = !DILocation(line: 24, column: 24, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 23, column: 5)
!481 = !DILocation(line: 24, column: 9, scope: !480)
!482 = !DILocation(line: 25, column: 5, scope: !480)
!483 = !DILocation(line: 26, column: 1, scope: !472)
!484 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !485, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !148, line: 74, baseType: !23)
!489 = !DILocalVariable(name: "line", arg: 1, scope: !484, file: !3, line: 27, type: !487)
!490 = !DILocation(line: 27, column: 29, scope: !484)
!491 = !DILocation(line: 29, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !484, file: !3, line: 29, column: 8)
!493 = !DILocation(line: 29, column: 13, scope: !492)
!494 = !DILocation(line: 29, column: 8, scope: !484)
!495 = !DILocation(line: 31, column: 27, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 30, column: 5)
!497 = !DILocation(line: 31, column: 9, scope: !496)
!498 = !DILocation(line: 32, column: 5, scope: !496)
!499 = !DILocation(line: 33, column: 1, scope: !484)
!500 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !501, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !23}
!503 = !DILocalVariable(name: "intNumber", arg: 1, scope: !500, file: !3, line: 35, type: !23)
!504 = !DILocation(line: 35, column: 24, scope: !500)
!505 = !DILocation(line: 37, column: 20, scope: !500)
!506 = !DILocation(line: 37, column: 5, scope: !500)
!507 = !DILocation(line: 38, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !509, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!512 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !508, file: !3, line: 40, type: !511)
!513 = !DILocation(line: 40, column: 28, scope: !508)
!514 = !DILocation(line: 42, column: 21, scope: !508)
!515 = !DILocation(line: 42, column: 5, scope: !508)
!516 = !DILocation(line: 43, column: 1, scope: !508)
!517 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !518, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!521 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !517, file: !3, line: 45, type: !520)
!522 = !DILocation(line: 45, column: 28, scope: !517)
!523 = !DILocation(line: 47, column: 20, scope: !517)
!524 = !DILocation(line: 47, column: 5, scope: !517)
!525 = !DILocation(line: 48, column: 1, scope: !517)
!526 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !527, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!530 = !DILocalVariable(name: "longNumber", arg: 1, scope: !526, file: !3, line: 50, type: !529)
!531 = !DILocation(line: 50, column: 26, scope: !526)
!532 = !DILocation(line: 52, column: 21, scope: !526)
!533 = !DILocation(line: 52, column: 5, scope: !526)
!534 = !DILocation(line: 53, column: 1, scope: !526)
!535 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !536, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !539, line: 27, baseType: !540)
!539 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 44, baseType: !529)
!541 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !535, file: !3, line: 55, type: !538)
!542 = !DILocation(line: 55, column: 33, scope: !535)
!543 = !DILocation(line: 57, column: 29, scope: !535)
!544 = !DILocation(line: 57, column: 5, scope: !535)
!545 = !DILocation(line: 58, column: 1, scope: !535)
!546 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !547, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !147}
!549 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !546, file: !3, line: 60, type: !147)
!550 = !DILocation(line: 60, column: 29, scope: !546)
!551 = !DILocation(line: 62, column: 21, scope: !546)
!552 = !DILocation(line: 62, column: 5, scope: !546)
!553 = !DILocation(line: 63, column: 1, scope: !546)
!554 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !555, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !43}
!557 = !DILocalVariable(name: "charHex", arg: 1, scope: !554, file: !3, line: 65, type: !43)
!558 = !DILocation(line: 65, column: 29, scope: !554)
!559 = !DILocation(line: 67, column: 22, scope: !554)
!560 = !DILocation(line: 67, column: 5, scope: !554)
!561 = !DILocation(line: 68, column: 1, scope: !554)
!562 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !563, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !488}
!565 = !DILocalVariable(name: "wideChar", arg: 1, scope: !562, file: !3, line: 70, type: !488)
!566 = !DILocation(line: 70, column: 29, scope: !562)
!567 = !DILocalVariable(name: "s", scope: !562, file: !3, line: 74, type: !568)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 64, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 2)
!571 = !DILocation(line: 74, column: 13, scope: !562)
!572 = !DILocation(line: 75, column: 16, scope: !562)
!573 = !DILocation(line: 75, column: 9, scope: !562)
!574 = !DILocation(line: 75, column: 14, scope: !562)
!575 = !DILocation(line: 76, column: 9, scope: !562)
!576 = !DILocation(line: 76, column: 14, scope: !562)
!577 = !DILocation(line: 77, column: 21, scope: !562)
!578 = !DILocation(line: 77, column: 5, scope: !562)
!579 = !DILocation(line: 78, column: 1, scope: !562)
!580 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !581, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !7}
!583 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !580, file: !3, line: 80, type: !7)
!584 = !DILocation(line: 80, column: 33, scope: !580)
!585 = !DILocation(line: 82, column: 20, scope: !580)
!586 = !DILocation(line: 82, column: 5, scope: !580)
!587 = !DILocation(line: 83, column: 1, scope: !580)
!588 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !589, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !25}
!591 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !588, file: !3, line: 85, type: !25)
!592 = !DILocation(line: 85, column: 45, scope: !588)
!593 = !DILocation(line: 87, column: 22, scope: !588)
!594 = !DILocation(line: 87, column: 5, scope: !588)
!595 = !DILocation(line: 88, column: 1, scope: !588)
!596 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !597, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !599}
!599 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!600 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !596, file: !3, line: 90, type: !599)
!601 = !DILocation(line: 90, column: 29, scope: !596)
!602 = !DILocation(line: 92, column: 20, scope: !596)
!603 = !DILocation(line: 92, column: 5, scope: !596)
!604 = !DILocation(line: 93, column: 1, scope: !596)
!605 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !606, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !610, line: 100, baseType: !611)
!610 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_930/source_code")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !610, line: 96, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !611, file: !610, line: 98, baseType: !23, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !611, file: !610, line: 99, baseType: !23, size: 32, offset: 32)
!615 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !605, file: !3, line: 95, type: !608)
!616 = !DILocation(line: 95, column: 40, scope: !605)
!617 = !DILocation(line: 97, column: 26, scope: !605)
!618 = !DILocation(line: 97, column: 47, scope: !605)
!619 = !DILocation(line: 97, column: 55, scope: !605)
!620 = !DILocation(line: 97, column: 76, scope: !605)
!621 = !DILocation(line: 97, column: 5, scope: !605)
!622 = !DILocation(line: 98, column: 1, scope: !605)
!623 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !624, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626, !147}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!627 = !DILocalVariable(name: "bytes", arg: 1, scope: !623, file: !3, line: 100, type: !626)
!628 = !DILocation(line: 100, column: 38, scope: !623)
!629 = !DILocalVariable(name: "numBytes", arg: 2, scope: !623, file: !3, line: 100, type: !147)
!630 = !DILocation(line: 100, column: 52, scope: !623)
!631 = !DILocalVariable(name: "i", scope: !623, file: !3, line: 102, type: !147)
!632 = !DILocation(line: 102, column: 12, scope: !623)
!633 = !DILocation(line: 103, column: 12, scope: !634)
!634 = distinct !DILexicalBlock(scope: !623, file: !3, line: 103, column: 5)
!635 = !DILocation(line: 103, column: 10, scope: !634)
!636 = !DILocation(line: 103, column: 17, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !3, line: 103, column: 5)
!638 = !DILocation(line: 103, column: 21, scope: !637)
!639 = !DILocation(line: 103, column: 19, scope: !637)
!640 = !DILocation(line: 103, column: 5, scope: !634)
!641 = !DILocation(line: 105, column: 24, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !3, line: 104, column: 5)
!643 = !DILocation(line: 105, column: 30, scope: !642)
!644 = !DILocation(line: 105, column: 9, scope: !642)
!645 = !DILocation(line: 106, column: 5, scope: !642)
!646 = !DILocation(line: 103, column: 31, scope: !637)
!647 = !DILocation(line: 103, column: 5, scope: !637)
!648 = distinct !{!648, !640, !649, !264}
!649 = !DILocation(line: 106, column: 5, scope: !634)
!650 = !DILocation(line: 107, column: 5, scope: !623)
!651 = !DILocation(line: 108, column: 1, scope: !623)
!652 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !653, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!653 = !DISubroutineType(types: !654)
!654 = !{!147, !626, !147, !42}
!655 = !DILocalVariable(name: "bytes", arg: 1, scope: !652, file: !3, line: 113, type: !626)
!656 = !DILocation(line: 113, column: 39, scope: !652)
!657 = !DILocalVariable(name: "numBytes", arg: 2, scope: !652, file: !3, line: 113, type: !147)
!658 = !DILocation(line: 113, column: 53, scope: !652)
!659 = !DILocalVariable(name: "hex", arg: 3, scope: !652, file: !3, line: 113, type: !42)
!660 = !DILocation(line: 113, column: 71, scope: !652)
!661 = !DILocalVariable(name: "numWritten", scope: !652, file: !3, line: 115, type: !147)
!662 = !DILocation(line: 115, column: 12, scope: !652)
!663 = !DILocation(line: 121, column: 5, scope: !652)
!664 = !DILocation(line: 121, column: 12, scope: !652)
!665 = !DILocation(line: 121, column: 25, scope: !652)
!666 = !DILocation(line: 121, column: 23, scope: !652)
!667 = !DILocation(line: 121, column: 34, scope: !652)
!668 = !DILocation(line: 121, column: 37, scope: !652)
!669 = !DILocation(line: 121, column: 67, scope: !652)
!670 = !DILocation(line: 121, column: 70, scope: !652)
!671 = !DILocation(line: 0, scope: !652)
!672 = !DILocalVariable(name: "byte", scope: !673, file: !3, line: 123, type: !23)
!673 = distinct !DILexicalBlock(scope: !652, file: !3, line: 122, column: 5)
!674 = !DILocation(line: 123, column: 13, scope: !673)
!675 = !DILocation(line: 124, column: 17, scope: !673)
!676 = !DILocation(line: 124, column: 25, scope: !673)
!677 = !DILocation(line: 124, column: 23, scope: !673)
!678 = !DILocation(line: 124, column: 9, scope: !673)
!679 = !DILocation(line: 125, column: 45, scope: !673)
!680 = !DILocation(line: 125, column: 29, scope: !673)
!681 = !DILocation(line: 125, column: 9, scope: !673)
!682 = !DILocation(line: 125, column: 15, scope: !673)
!683 = !DILocation(line: 125, column: 27, scope: !673)
!684 = !DILocation(line: 126, column: 9, scope: !673)
!685 = distinct !{!685, !663, !686, !264}
!686 = !DILocation(line: 127, column: 5, scope: !652)
!687 = !DILocation(line: 129, column: 12, scope: !652)
!688 = !DILocation(line: 129, column: 5, scope: !652)
!689 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !690, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!690 = !DISubroutineType(types: !691)
!691 = !{!147, !626, !147, !487}
!692 = !DILocalVariable(name: "bytes", arg: 1, scope: !689, file: !3, line: 135, type: !626)
!693 = !DILocation(line: 135, column: 41, scope: !689)
!694 = !DILocalVariable(name: "numBytes", arg: 2, scope: !689, file: !3, line: 135, type: !147)
!695 = !DILocation(line: 135, column: 55, scope: !689)
!696 = !DILocalVariable(name: "hex", arg: 3, scope: !689, file: !3, line: 135, type: !487)
!697 = !DILocation(line: 135, column: 76, scope: !689)
!698 = !DILocalVariable(name: "numWritten", scope: !689, file: !3, line: 137, type: !147)
!699 = !DILocation(line: 137, column: 12, scope: !689)
!700 = !DILocation(line: 143, column: 5, scope: !689)
!701 = !DILocation(line: 143, column: 12, scope: !689)
!702 = !DILocation(line: 143, column: 25, scope: !689)
!703 = !DILocation(line: 143, column: 23, scope: !689)
!704 = !DILocation(line: 143, column: 34, scope: !689)
!705 = !DILocation(line: 143, column: 47, scope: !689)
!706 = !DILocation(line: 143, column: 55, scope: !689)
!707 = !DILocation(line: 143, column: 53, scope: !689)
!708 = !DILocation(line: 143, column: 37, scope: !689)
!709 = !DILocation(line: 143, column: 68, scope: !689)
!710 = !DILocation(line: 143, column: 81, scope: !689)
!711 = !DILocation(line: 143, column: 89, scope: !689)
!712 = !DILocation(line: 143, column: 87, scope: !689)
!713 = !DILocation(line: 143, column: 100, scope: !689)
!714 = !DILocation(line: 143, column: 71, scope: !689)
!715 = !DILocation(line: 0, scope: !689)
!716 = !DILocalVariable(name: "byte", scope: !717, file: !3, line: 145, type: !23)
!717 = distinct !DILexicalBlock(scope: !689, file: !3, line: 144, column: 5)
!718 = !DILocation(line: 145, column: 13, scope: !717)
!719 = !DILocation(line: 146, column: 18, scope: !717)
!720 = !DILocation(line: 146, column: 26, scope: !717)
!721 = !DILocation(line: 146, column: 24, scope: !717)
!722 = !DILocation(line: 146, column: 9, scope: !717)
!723 = !DILocation(line: 147, column: 45, scope: !717)
!724 = !DILocation(line: 147, column: 29, scope: !717)
!725 = !DILocation(line: 147, column: 9, scope: !717)
!726 = !DILocation(line: 147, column: 15, scope: !717)
!727 = !DILocation(line: 147, column: 27, scope: !717)
!728 = !DILocation(line: 148, column: 9, scope: !717)
!729 = distinct !{!729, !700, !730, !264}
!730 = !DILocation(line: 149, column: 5, scope: !689)
!731 = !DILocation(line: 151, column: 12, scope: !689)
!732 = !DILocation(line: 151, column: 5, scope: !689)
!733 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !734, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!734 = !DISubroutineType(types: !735)
!735 = !{!23}
!736 = !DILocation(line: 158, column: 5, scope: !733)
!737 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !734, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!738 = !DILocation(line: 163, column: 5, scope: !737)
!739 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !734, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!740 = !DILocation(line: 168, column: 13, scope: !739)
!741 = !DILocation(line: 168, column: 20, scope: !739)
!742 = !DILocation(line: 168, column: 5, scope: !739)
!743 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!744 = !DILocation(line: 187, column: 16, scope: !743)
!745 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!746 = !DILocation(line: 188, column: 16, scope: !745)
!747 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!748 = !DILocation(line: 189, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!750 = !DILocation(line: 190, column: 16, scope: !749)
!751 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DILocation(line: 191, column: 16, scope: !751)
!753 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!754 = !DILocation(line: 192, column: 16, scope: !753)
!755 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!756 = !DILocation(line: 193, column: 16, scope: !755)
!757 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!758 = !DILocation(line: 194, column: 16, scope: !757)
!759 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DILocation(line: 195, column: 16, scope: !759)
!761 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!762 = !DILocation(line: 198, column: 15, scope: !761)
!763 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!764 = !DILocation(line: 199, column: 15, scope: !763)
!765 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DILocation(line: 200, column: 15, scope: !765)
!767 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!768 = !DILocation(line: 201, column: 15, scope: !767)
!769 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!770 = !DILocation(line: 202, column: 15, scope: !769)
!771 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!772 = !DILocation(line: 203, column: 15, scope: !771)
!773 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!774 = !DILocation(line: 204, column: 15, scope: !773)
!775 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!776 = !DILocation(line: 205, column: 15, scope: !775)
!777 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!778 = !DILocation(line: 206, column: 15, scope: !777)
