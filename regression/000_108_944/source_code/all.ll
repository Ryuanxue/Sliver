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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad() #0 !dbg !104 {
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
define dso_local void @goodB2G1() #0 !dbg !269 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !273
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !274
  store i8* %arraydecay, i8** %data, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !276, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !283, metadata !DIExpression()), !dbg !284
  store i32 -1, i32* %connectSocket, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !285, metadata !DIExpression()), !dbg !286
  %1 = load i8*, i8** %data, align 8, !dbg !287
  %call = call i64 @strlen(i8* %1) #7, !dbg !288
  store i64 %call, i64* %dataLen, align 8, !dbg !286
  br label %do.body, !dbg !289

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !290
  store i32 %call1, i32* %connectSocket, align 4, !dbg !292
  %2 = load i32, i32* %connectSocket, align 4, !dbg !293
  %cmp = icmp eq i32 %2, -1, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !297

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !299
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !299
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !300
  store i16 2, i16* %sin_family, align 4, !dbg !301
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !302
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !303
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !304
  store i32 %call2, i32* %s_addr, align 4, !dbg !305
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !306
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !307
  store i16 %call3, i16* %sin_port, align 2, !dbg !308
  %4 = load i32, i32* %connectSocket, align 4, !dbg !309
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !311
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !312
  %cmp5 = icmp eq i32 %call4, -1, !dbg !313
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !314

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !315

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !317
  %7 = load i8*, i8** %data, align 8, !dbg !318
  %8 = load i64, i64* %dataLen, align 8, !dbg !319
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !320
  %9 = load i64, i64* %dataLen, align 8, !dbg !321
  %sub = sub i64 100, %9, !dbg !322
  %sub8 = sub i64 %sub, 1, !dbg !323
  %mul = mul i64 1, %sub8, !dbg !324
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !325
  %conv = trunc i64 %call9 to i32, !dbg !325
  store i32 %conv, i32* %recvResult, align 4, !dbg !326
  %10 = load i32, i32* %recvResult, align 4, !dbg !327
  %cmp10 = icmp eq i32 %10, -1, !dbg !329
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !330

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !331
  %cmp12 = icmp eq i32 %11, 0, !dbg !332
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !333

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !334

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !336
  %13 = load i64, i64* %dataLen, align 8, !dbg !337
  %14 = load i32, i32* %recvResult, align 4, !dbg !338
  %conv16 = sext i32 %14 to i64, !dbg !338
  %div = udiv i64 %conv16, 1, !dbg !339
  %add = add i64 %13, %div, !dbg !340
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !336
  store i8 0, i8* %arrayidx, align 1, !dbg !341
  %15 = load i8*, i8** %data, align 8, !dbg !342
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !343
  store i8* %call17, i8** %replace, align 8, !dbg !344
  %16 = load i8*, i8** %replace, align 8, !dbg !345
  %tobool = icmp ne i8* %16, null, !dbg !345
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !347

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !348
  store i8 0, i8* %17, align 1, !dbg !350
  br label %if.end19, !dbg !351

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !352
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !353
  store i8* %call20, i8** %replace, align 8, !dbg !354
  %19 = load i8*, i8** %replace, align 8, !dbg !355
  %tobool21 = icmp ne i8* %19, null, !dbg !355
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !357

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !358
  store i8 0, i8* %20, align 1, !dbg !360
  br label %if.end23, !dbg !361

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !362

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !363
  %cmp24 = icmp ne i32 %21, -1, !dbg !365
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !366

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !367
  %call27 = call i32 @close(i32 %22), !dbg !369
  br label %if.end28, !dbg !370

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %n, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !376, metadata !DIExpression()), !dbg !377
  %23 = load i8*, i8** %data, align 8, !dbg !378
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !380
  %cmp30 = icmp eq i32 %call29, 1, !dbg !381
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !382

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !383
  %cmp33 = icmp slt i32 %24, 10000, !dbg !386
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !387

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !388
  store i32 0, i32* %i, align 4, !dbg !390
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !393
  %26 = load i32, i32* %n, align 4, !dbg !395
  %cmp36 = icmp slt i32 %25, %26, !dbg !396
  br i1 %cmp36, label %for.body, label %for.end, !dbg !397

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !398
  %inc = add nsw i32 %27, 1, !dbg !398
  store i32 %inc, i32* %intVariable, align 4, !dbg !398
  br label %for.inc, !dbg !400

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !401
  %inc38 = add nsw i32 %28, 1, !dbg !401
  store i32 %inc38, i32* %i, align 4, !dbg !401
  br label %for.cond, !dbg !402, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !405
  call void @printIntLine(i32 %29), !dbg !406
  br label %if.end39, !dbg !407

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !408

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !410 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !414
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !414
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !415
  store i8* %arraydecay, i8** %data, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !417, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !424, metadata !DIExpression()), !dbg !425
  store i32 -1, i32* %connectSocket, align 4, !dbg !425
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !426, metadata !DIExpression()), !dbg !427
  %1 = load i8*, i8** %data, align 8, !dbg !428
  %call = call i64 @strlen(i8* %1) #7, !dbg !429
  store i64 %call, i64* %dataLen, align 8, !dbg !427
  br label %do.body, !dbg !430

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !431
  store i32 %call1, i32* %connectSocket, align 4, !dbg !433
  %2 = load i32, i32* %connectSocket, align 4, !dbg !434
  %cmp = icmp eq i32 %2, -1, !dbg !436
  br i1 %cmp, label %if.then, label %if.end, !dbg !437

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !438

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !440
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !441
  store i16 2, i16* %sin_family, align 4, !dbg !442
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !443
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !444
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !445
  store i32 %call2, i32* %s_addr, align 4, !dbg !446
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !447
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !448
  store i16 %call3, i16* %sin_port, align 2, !dbg !449
  %4 = load i32, i32* %connectSocket, align 4, !dbg !450
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !452
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !453
  %cmp5 = icmp eq i32 %call4, -1, !dbg !454
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !455

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !456

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !458
  %7 = load i8*, i8** %data, align 8, !dbg !459
  %8 = load i64, i64* %dataLen, align 8, !dbg !460
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !461
  %9 = load i64, i64* %dataLen, align 8, !dbg !462
  %sub = sub i64 100, %9, !dbg !463
  %sub8 = sub i64 %sub, 1, !dbg !464
  %mul = mul i64 1, %sub8, !dbg !465
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !466
  %conv = trunc i64 %call9 to i32, !dbg !466
  store i32 %conv, i32* %recvResult, align 4, !dbg !467
  %10 = load i32, i32* %recvResult, align 4, !dbg !468
  %cmp10 = icmp eq i32 %10, -1, !dbg !470
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !471

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !472
  %cmp12 = icmp eq i32 %11, 0, !dbg !473
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !474

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !475

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !477
  %13 = load i64, i64* %dataLen, align 8, !dbg !478
  %14 = load i32, i32* %recvResult, align 4, !dbg !479
  %conv16 = sext i32 %14 to i64, !dbg !479
  %div = udiv i64 %conv16, 1, !dbg !480
  %add = add i64 %13, %div, !dbg !481
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !477
  store i8 0, i8* %arrayidx, align 1, !dbg !482
  %15 = load i8*, i8** %data, align 8, !dbg !483
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !484
  store i8* %call17, i8** %replace, align 8, !dbg !485
  %16 = load i8*, i8** %replace, align 8, !dbg !486
  %tobool = icmp ne i8* %16, null, !dbg !486
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !488

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !489
  store i8 0, i8* %17, align 1, !dbg !491
  br label %if.end19, !dbg !492

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !493
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !494
  store i8* %call20, i8** %replace, align 8, !dbg !495
  %19 = load i8*, i8** %replace, align 8, !dbg !496
  %tobool21 = icmp ne i8* %19, null, !dbg !496
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !498

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !499
  store i8 0, i8* %20, align 1, !dbg !501
  br label %if.end23, !dbg !502

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !503

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !504
  %cmp24 = icmp ne i32 %21, -1, !dbg !506
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !507

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !508
  %call27 = call i32 @close(i32 %22), !dbg !510
  br label %if.end28, !dbg !511

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !512, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata i32* %n, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !517, metadata !DIExpression()), !dbg !518
  %23 = load i8*, i8** %data, align 8, !dbg !519
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !521
  %cmp30 = icmp eq i32 %call29, 1, !dbg !522
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !523

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !524
  %cmp33 = icmp slt i32 %24, 10000, !dbg !527
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !528

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !529
  store i32 0, i32* %i, align 4, !dbg !531
  br label %for.cond, !dbg !533

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !534
  %26 = load i32, i32* %n, align 4, !dbg !536
  %cmp36 = icmp slt i32 %25, %26, !dbg !537
  br i1 %cmp36, label %for.body, label %for.end, !dbg !538

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !539
  %inc = add nsw i32 %27, 1, !dbg !539
  store i32 %inc, i32* %intVariable, align 4, !dbg !539
  br label %for.inc, !dbg !541

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !542
  %inc38 = add nsw i32 %28, 1, !dbg !542
  store i32 %inc38, i32* %i, align 4, !dbg !542
  br label %for.cond, !dbg !543, !llvm.loop !544

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !546
  call void @printIntLine(i32 %29), !dbg !547
  br label %if.end39, !dbg !548

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !549

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !551 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !555
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !555
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !556
  store i8* %arraydecay, i8** %data, align 8, !dbg !557
  %1 = load i8*, i8** %data, align 8, !dbg !558
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata i32* %n, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !565, metadata !DIExpression()), !dbg !566
  %2 = load i8*, i8** %data, align 8, !dbg !567
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !569
  %cmp = icmp eq i32 %call1, 1, !dbg !570
  br i1 %cmp, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !572
  store i32 0, i32* %i, align 4, !dbg !574
  br label %for.cond, !dbg !576

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !577
  %4 = load i32, i32* %n, align 4, !dbg !579
  %cmp2 = icmp slt i32 %3, %4, !dbg !580
  br i1 %cmp2, label %for.body, label %for.end, !dbg !581

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !582
  %inc = add nsw i32 %5, 1, !dbg !582
  store i32 %inc, i32* %intVariable, align 4, !dbg !582
  br label %for.inc, !dbg !584

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !585
  %inc3 = add nsw i32 %6, 1, !dbg !585
  store i32 %inc3, i32* %i, align 4, !dbg !585
  br label %for.cond, !dbg !586, !llvm.loop !587

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !589
  call void @printIntLine(i32 %7), !dbg !590
  br label %if.end, !dbg !591

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !592
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !593 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !597
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !597
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !598
  store i8* %arraydecay, i8** %data, align 8, !dbg !599
  %1 = load i8*, i8** %data, align 8, !dbg !600
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !601
  call void @llvm.dbg.declare(metadata i32* %i, metadata !602, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.declare(metadata i32* %n, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !607, metadata !DIExpression()), !dbg !608
  %2 = load i8*, i8** %data, align 8, !dbg !609
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !611
  %cmp = icmp eq i32 %call1, 1, !dbg !612
  br i1 %cmp, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !614
  store i32 0, i32* %i, align 4, !dbg !616
  br label %for.cond, !dbg !618

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !619
  %4 = load i32, i32* %n, align 4, !dbg !621
  %cmp2 = icmp slt i32 %3, %4, !dbg !622
  br i1 %cmp2, label %for.body, label %for.end, !dbg !623

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !624
  %inc = add nsw i32 %5, 1, !dbg !624
  store i32 %inc, i32* %intVariable, align 4, !dbg !624
  br label %for.inc, !dbg !626

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !627
  %inc3 = add nsw i32 %6, 1, !dbg !627
  store i32 %inc3, i32* %i, align 4, !dbg !627
  br label %for.cond, !dbg !628, !llvm.loop !629

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !631
  call void @printIntLine(i32 %7), !dbg !632
  br label %if.end, !dbg !633

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good() #0 !dbg !635 {
entry:
  call void @goodB2G1(), !dbg !636
  call void @goodB2G2(), !dbg !637
  call void @goodG2B1(), !dbg !638
  call void @goodG2B2(), !dbg !639
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !641 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !644, metadata !DIExpression()), !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !646
  %0 = load i8*, i8** %line.addr, align 8, !dbg !647
  %cmp = icmp ne i8* %0, null, !dbg !649
  br i1 %cmp, label %if.then, label %if.end, !dbg !650

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !651
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !653
  br label %if.end, !dbg !654

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !655
  ret void, !dbg !656
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !657 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load i8*, i8** %line.addr, align 8, !dbg !660
  %cmp = icmp ne i8* %0, null, !dbg !662
  br i1 %cmp, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !664
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !666
  br label %if.end, !dbg !667

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !669 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !674, metadata !DIExpression()), !dbg !675
  %0 = load i32*, i32** %line.addr, align 8, !dbg !676
  %cmp = icmp ne i32* %0, null, !dbg !678
  br i1 %cmp, label %if.then, label %if.end, !dbg !679

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !680
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !682
  br label %if.end, !dbg !683

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !684
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !685 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !693 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !697, metadata !DIExpression()), !dbg !698
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !699
  %conv = sext i16 %0 to i32, !dbg !699
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !700
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !702 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !706, metadata !DIExpression()), !dbg !707
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !708
  %conv = fpext float %0 to double, !dbg !708
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !711 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !717
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !718
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !720 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !728
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !731 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !734, metadata !DIExpression()), !dbg !735
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !736
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !737
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !739 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !742, metadata !DIExpression()), !dbg !743
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !744
  %conv = sext i8 %0 to i32, !dbg !744
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !747 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !752, metadata !DIExpression()), !dbg !756
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !757
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !758
  store i32 %0, i32* %arrayidx, align 4, !dbg !759
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !760
  store i32 0, i32* %arrayidx1, align 4, !dbg !761
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !762
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !763
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !765 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !768, metadata !DIExpression()), !dbg !769
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !770
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !771
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !773 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !776, metadata !DIExpression()), !dbg !777
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !778
  %conv = zext i8 %0 to i32, !dbg !778
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !779
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !781 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !785, metadata !DIExpression()), !dbg !786
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !787
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !788
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !790 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !800, metadata !DIExpression()), !dbg !801
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !802
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !803
  %1 = load i32, i32* %intOne, align 4, !dbg !803
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !804
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !805
  %3 = load i32, i32* %intTwo, align 4, !dbg !805
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !806
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !808 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i64* %i, metadata !816, metadata !DIExpression()), !dbg !817
  store i64 0, i64* %i, align 8, !dbg !818
  br label %for.cond, !dbg !820

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !821
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !823
  %cmp = icmp ult i64 %0, %1, !dbg !824
  br i1 %cmp, label %for.body, label %for.end, !dbg !825

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !826
  %3 = load i64, i64* %i, align 8, !dbg !828
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !826
  %4 = load i8, i8* %arrayidx, align 1, !dbg !826
  %conv = zext i8 %4 to i32, !dbg !826
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !829
  br label %for.inc, !dbg !830

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !831
  %inc = add i64 %5, 1, !dbg !831
  store i64 %inc, i64* %i, align 8, !dbg !831
  br label %for.cond, !dbg !832, !llvm.loop !833

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !835
  ret void, !dbg !836
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !837 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !840, metadata !DIExpression()), !dbg !841
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !842, metadata !DIExpression()), !dbg !843
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !846, metadata !DIExpression()), !dbg !847
  store i64 0, i64* %numWritten, align 8, !dbg !847
  br label %while.cond, !dbg !848

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !849
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !850
  %cmp = icmp ult i64 %0, %1, !dbg !851
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !852

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !853
  %2 = load i16*, i16** %call, align 8, !dbg !853
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !853
  %4 = load i64, i64* %numWritten, align 8, !dbg !853
  %mul = mul i64 2, %4, !dbg !853
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !853
  %5 = load i8, i8* %arrayidx, align 1, !dbg !853
  %conv = sext i8 %5 to i32, !dbg !853
  %idxprom = sext i32 %conv to i64, !dbg !853
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !853
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !853
  %conv2 = zext i16 %6 to i32, !dbg !853
  %and = and i32 %conv2, 4096, !dbg !853
  %tobool = icmp ne i32 %and, 0, !dbg !853
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !854

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !855
  %7 = load i16*, i16** %call3, align 8, !dbg !855
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !855
  %9 = load i64, i64* %numWritten, align 8, !dbg !855
  %mul4 = mul i64 2, %9, !dbg !855
  %add = add i64 %mul4, 1, !dbg !855
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !855
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !855
  %conv6 = sext i8 %10 to i32, !dbg !855
  %idxprom7 = sext i32 %conv6 to i64, !dbg !855
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !855
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !855
  %conv9 = zext i16 %11 to i32, !dbg !855
  %and10 = and i32 %conv9, 4096, !dbg !855
  %tobool11 = icmp ne i32 %and10, 0, !dbg !854
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !856
  br i1 %12, label %while.body, label %while.end, !dbg !848

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !857, metadata !DIExpression()), !dbg !859
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !860
  %14 = load i64, i64* %numWritten, align 8, !dbg !861
  %mul12 = mul i64 2, %14, !dbg !862
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !860
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !863
  %15 = load i32, i32* %byte, align 4, !dbg !864
  %conv15 = trunc i32 %15 to i8, !dbg !865
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !866
  %17 = load i64, i64* %numWritten, align 8, !dbg !867
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !866
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !868
  %18 = load i64, i64* %numWritten, align 8, !dbg !869
  %inc = add i64 %18, 1, !dbg !869
  store i64 %inc, i64* %numWritten, align 8, !dbg !869
  br label %while.cond, !dbg !848, !llvm.loop !870

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !872
  ret i64 %19, !dbg !873
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !874 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !877, metadata !DIExpression()), !dbg !878
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !883, metadata !DIExpression()), !dbg !884
  store i64 0, i64* %numWritten, align 8, !dbg !884
  br label %while.cond, !dbg !885

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !886
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !887
  %cmp = icmp ult i64 %0, %1, !dbg !888
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !889

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !890
  %3 = load i64, i64* %numWritten, align 8, !dbg !891
  %mul = mul i64 2, %3, !dbg !892
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !890
  %4 = load i32, i32* %arrayidx, align 4, !dbg !890
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !893
  %tobool = icmp ne i32 %call, 0, !dbg !893
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !894

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !895
  %6 = load i64, i64* %numWritten, align 8, !dbg !896
  %mul1 = mul i64 2, %6, !dbg !897
  %add = add i64 %mul1, 1, !dbg !898
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !895
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !895
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !899
  %tobool4 = icmp ne i32 %call3, 0, !dbg !894
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !900
  br i1 %8, label %while.body, label %while.end, !dbg !885

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !901, metadata !DIExpression()), !dbg !903
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !904
  %10 = load i64, i64* %numWritten, align 8, !dbg !905
  %mul5 = mul i64 2, %10, !dbg !906
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !904
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !907
  %11 = load i32, i32* %byte, align 4, !dbg !908
  %conv = trunc i32 %11 to i8, !dbg !909
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !910
  %13 = load i64, i64* %numWritten, align 8, !dbg !911
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !910
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !912
  %14 = load i64, i64* %numWritten, align 8, !dbg !913
  %inc = add i64 %14, 1, !dbg !913
  store i64 %inc, i64* %numWritten, align 8, !dbg !913
  br label %while.cond, !dbg !885, !llvm.loop !914

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !916
  ret i64 %15, !dbg !917
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !918 {
entry:
  ret i32 1, !dbg !921
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !922 {
entry:
  ret i32 0, !dbg !923
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !924 {
entry:
  %call = call i32 @rand() #8, !dbg !925
  %rem = srem i32 %call, 2, !dbg !926
  ret i32 %rem, !dbg !927
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !928 {
entry:
  ret void, !dbg !929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !930 {
entry:
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !932 {
entry:
  ret void, !dbg !933
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !934 {
entry:
  ret void, !dbg !935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !936 {
entry:
  ret void, !dbg !937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !938 {
entry:
  ret void, !dbg !939
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !940 {
entry:
  ret void, !dbg !941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !942 {
entry:
  ret void, !dbg !943
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !944 {
entry:
  ret void, !dbg !945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !946 {
entry:
  ret void, !dbg !947
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !948 {
entry:
  ret void, !dbg !949
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !950 {
entry:
  ret void, !dbg !951
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !952 {
entry:
  ret void, !dbg !953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !954 {
entry:
  ret void, !dbg !955
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !956 {
entry:
  ret void, !dbg !957
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !958 {
entry:
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !960 {
entry:
  ret void, !dbg !961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !962 {
entry:
  ret void, !dbg !963
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!117 = !DILocalVariable(name: "recvResult", scope: !118, file: !45, line: 63, type: !23)
!118 = distinct !DILexicalBlock(scope: !104, file: !45, line: 58, column: 5)
!119 = !DILocation(line: 63, column: 13, scope: !118)
!120 = !DILocalVariable(name: "service", scope: !118, file: !45, line: 64, type: !121)
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
!141 = !DILocation(line: 64, column: 28, scope: !118)
!142 = !DILocalVariable(name: "replace", scope: !118, file: !45, line: 65, type: !42)
!143 = !DILocation(line: 65, column: 15, scope: !118)
!144 = !DILocalVariable(name: "connectSocket", scope: !118, file: !45, line: 66, type: !23)
!145 = !DILocation(line: 66, column: 16, scope: !118)
!146 = !DILocalVariable(name: "dataLen", scope: !118, file: !45, line: 67, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!149 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !DILocation(line: 67, column: 16, scope: !118)
!151 = !DILocation(line: 67, column: 33, scope: !118)
!152 = !DILocation(line: 67, column: 26, scope: !118)
!153 = !DILocation(line: 68, column: 9, scope: !118)
!154 = !DILocation(line: 78, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !118, file: !45, line: 69, column: 9)
!156 = !DILocation(line: 78, column: 27, scope: !155)
!157 = !DILocation(line: 79, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !45, line: 79, column: 17)
!159 = !DILocation(line: 79, column: 31, scope: !158)
!160 = !DILocation(line: 79, column: 17, scope: !155)
!161 = !DILocation(line: 81, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !45, line: 80, column: 13)
!163 = !DILocation(line: 83, column: 13, scope: !155)
!164 = !DILocation(line: 84, column: 21, scope: !155)
!165 = !DILocation(line: 84, column: 32, scope: !155)
!166 = !DILocation(line: 85, column: 39, scope: !155)
!167 = !DILocation(line: 85, column: 21, scope: !155)
!168 = !DILocation(line: 85, column: 30, scope: !155)
!169 = !DILocation(line: 85, column: 37, scope: !155)
!170 = !DILocation(line: 86, column: 32, scope: !155)
!171 = !DILocation(line: 86, column: 21, scope: !155)
!172 = !DILocation(line: 86, column: 30, scope: !155)
!173 = !DILocation(line: 87, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !155, file: !45, line: 87, column: 17)
!175 = !DILocation(line: 87, column: 40, scope: !174)
!176 = !DILocation(line: 87, column: 17, scope: !174)
!177 = !DILocation(line: 87, column: 85, scope: !174)
!178 = !DILocation(line: 87, column: 17, scope: !155)
!179 = !DILocation(line: 89, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !45, line: 88, column: 13)
!181 = !DILocation(line: 94, column: 31, scope: !155)
!182 = !DILocation(line: 94, column: 55, scope: !155)
!183 = !DILocation(line: 94, column: 62, scope: !155)
!184 = !DILocation(line: 94, column: 60, scope: !155)
!185 = !DILocation(line: 94, column: 94, scope: !155)
!186 = !DILocation(line: 94, column: 92, scope: !155)
!187 = !DILocation(line: 94, column: 102, scope: !155)
!188 = !DILocation(line: 94, column: 85, scope: !155)
!189 = !DILocation(line: 94, column: 26, scope: !155)
!190 = !DILocation(line: 94, column: 24, scope: !155)
!191 = !DILocation(line: 95, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !155, file: !45, line: 95, column: 17)
!193 = !DILocation(line: 95, column: 28, scope: !192)
!194 = !DILocation(line: 95, column: 44, scope: !192)
!195 = !DILocation(line: 95, column: 47, scope: !192)
!196 = !DILocation(line: 95, column: 58, scope: !192)
!197 = !DILocation(line: 95, column: 17, scope: !155)
!198 = !DILocation(line: 97, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 96, column: 13)
!200 = !DILocation(line: 100, column: 13, scope: !155)
!201 = !DILocation(line: 100, column: 18, scope: !155)
!202 = !DILocation(line: 100, column: 28, scope: !155)
!203 = !DILocation(line: 100, column: 39, scope: !155)
!204 = !DILocation(line: 100, column: 26, scope: !155)
!205 = !DILocation(line: 100, column: 55, scope: !155)
!206 = !DILocation(line: 102, column: 30, scope: !155)
!207 = !DILocation(line: 102, column: 23, scope: !155)
!208 = !DILocation(line: 102, column: 21, scope: !155)
!209 = !DILocation(line: 103, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !155, file: !45, line: 103, column: 17)
!211 = !DILocation(line: 103, column: 17, scope: !155)
!212 = !DILocation(line: 105, column: 18, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !45, line: 104, column: 13)
!214 = !DILocation(line: 105, column: 26, scope: !213)
!215 = !DILocation(line: 106, column: 13, scope: !213)
!216 = !DILocation(line: 107, column: 30, scope: !155)
!217 = !DILocation(line: 107, column: 23, scope: !155)
!218 = !DILocation(line: 107, column: 21, scope: !155)
!219 = !DILocation(line: 108, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !155, file: !45, line: 108, column: 17)
!221 = !DILocation(line: 108, column: 17, scope: !155)
!222 = !DILocation(line: 110, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 109, column: 13)
!224 = !DILocation(line: 110, column: 26, scope: !223)
!225 = !DILocation(line: 111, column: 13, scope: !223)
!226 = !DILocation(line: 112, column: 9, scope: !155)
!227 = !DILocation(line: 114, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !118, file: !45, line: 114, column: 13)
!229 = !DILocation(line: 114, column: 27, scope: !228)
!230 = !DILocation(line: 114, column: 13, scope: !118)
!231 = !DILocation(line: 116, column: 26, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !45, line: 115, column: 9)
!233 = !DILocation(line: 116, column: 13, scope: !232)
!234 = !DILocation(line: 117, column: 9, scope: !232)
!235 = !DILocalVariable(name: "i", scope: !236, file: !45, line: 135, type: !23)
!236 = distinct !DILexicalBlock(scope: !104, file: !45, line: 134, column: 5)
!237 = !DILocation(line: 135, column: 13, scope: !236)
!238 = !DILocalVariable(name: "n", scope: !236, file: !45, line: 135, type: !23)
!239 = !DILocation(line: 135, column: 16, scope: !236)
!240 = !DILocalVariable(name: "intVariable", scope: !236, file: !45, line: 135, type: !23)
!241 = !DILocation(line: 135, column: 19, scope: !236)
!242 = !DILocation(line: 136, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !236, file: !45, line: 136, column: 13)
!244 = !DILocation(line: 136, column: 13, scope: !243)
!245 = !DILocation(line: 136, column: 36, scope: !243)
!246 = !DILocation(line: 136, column: 13, scope: !236)
!247 = !DILocation(line: 139, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !45, line: 137, column: 9)
!249 = !DILocation(line: 140, column: 20, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !45, line: 140, column: 13)
!251 = !DILocation(line: 140, column: 18, scope: !250)
!252 = !DILocation(line: 140, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !45, line: 140, column: 13)
!254 = !DILocation(line: 140, column: 29, scope: !253)
!255 = !DILocation(line: 140, column: 27, scope: !253)
!256 = !DILocation(line: 140, column: 13, scope: !250)
!257 = !DILocation(line: 143, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 141, column: 13)
!259 = !DILocation(line: 144, column: 13, scope: !258)
!260 = !DILocation(line: 140, column: 33, scope: !253)
!261 = !DILocation(line: 140, column: 13, scope: !253)
!262 = distinct !{!262, !256, !263, !264}
!263 = !DILocation(line: 144, column: 13, scope: !250)
!264 = !{!"llvm.loop.mustprogress"}
!265 = !DILocation(line: 145, column: 26, scope: !248)
!266 = !DILocation(line: 145, column: 13, scope: !248)
!267 = !DILocation(line: 146, column: 9, scope: !248)
!268 = !DILocation(line: 154, column: 1, scope: !104)
!269 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 161, type: !105, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!270 = !DILocalVariable(name: "data", scope: !269, file: !45, line: 163, type: !42)
!271 = !DILocation(line: 163, column: 12, scope: !269)
!272 = !DILocalVariable(name: "dataBuffer", scope: !269, file: !45, line: 164, type: !111)
!273 = !DILocation(line: 164, column: 10, scope: !269)
!274 = !DILocation(line: 165, column: 12, scope: !269)
!275 = !DILocation(line: 165, column: 10, scope: !269)
!276 = !DILocalVariable(name: "recvResult", scope: !277, file: !45, line: 174, type: !23)
!277 = distinct !DILexicalBlock(scope: !269, file: !45, line: 169, column: 5)
!278 = !DILocation(line: 174, column: 13, scope: !277)
!279 = !DILocalVariable(name: "service", scope: !277, file: !45, line: 175, type: !121)
!280 = !DILocation(line: 175, column: 28, scope: !277)
!281 = !DILocalVariable(name: "replace", scope: !277, file: !45, line: 176, type: !42)
!282 = !DILocation(line: 176, column: 15, scope: !277)
!283 = !DILocalVariable(name: "connectSocket", scope: !277, file: !45, line: 177, type: !23)
!284 = !DILocation(line: 177, column: 16, scope: !277)
!285 = !DILocalVariable(name: "dataLen", scope: !277, file: !45, line: 178, type: !147)
!286 = !DILocation(line: 178, column: 16, scope: !277)
!287 = !DILocation(line: 178, column: 33, scope: !277)
!288 = !DILocation(line: 178, column: 26, scope: !277)
!289 = !DILocation(line: 179, column: 9, scope: !277)
!290 = !DILocation(line: 189, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !277, file: !45, line: 180, column: 9)
!292 = !DILocation(line: 189, column: 27, scope: !291)
!293 = !DILocation(line: 190, column: 17, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !45, line: 190, column: 17)
!295 = !DILocation(line: 190, column: 31, scope: !294)
!296 = !DILocation(line: 190, column: 17, scope: !291)
!297 = !DILocation(line: 192, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !45, line: 191, column: 13)
!299 = !DILocation(line: 194, column: 13, scope: !291)
!300 = !DILocation(line: 195, column: 21, scope: !291)
!301 = !DILocation(line: 195, column: 32, scope: !291)
!302 = !DILocation(line: 196, column: 39, scope: !291)
!303 = !DILocation(line: 196, column: 21, scope: !291)
!304 = !DILocation(line: 196, column: 30, scope: !291)
!305 = !DILocation(line: 196, column: 37, scope: !291)
!306 = !DILocation(line: 197, column: 32, scope: !291)
!307 = !DILocation(line: 197, column: 21, scope: !291)
!308 = !DILocation(line: 197, column: 30, scope: !291)
!309 = !DILocation(line: 198, column: 25, scope: !310)
!310 = distinct !DILexicalBlock(scope: !291, file: !45, line: 198, column: 17)
!311 = !DILocation(line: 198, column: 40, scope: !310)
!312 = !DILocation(line: 198, column: 17, scope: !310)
!313 = !DILocation(line: 198, column: 85, scope: !310)
!314 = !DILocation(line: 198, column: 17, scope: !291)
!315 = !DILocation(line: 200, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !310, file: !45, line: 199, column: 13)
!317 = !DILocation(line: 205, column: 31, scope: !291)
!318 = !DILocation(line: 205, column: 55, scope: !291)
!319 = !DILocation(line: 205, column: 62, scope: !291)
!320 = !DILocation(line: 205, column: 60, scope: !291)
!321 = !DILocation(line: 205, column: 94, scope: !291)
!322 = !DILocation(line: 205, column: 92, scope: !291)
!323 = !DILocation(line: 205, column: 102, scope: !291)
!324 = !DILocation(line: 205, column: 85, scope: !291)
!325 = !DILocation(line: 205, column: 26, scope: !291)
!326 = !DILocation(line: 205, column: 24, scope: !291)
!327 = !DILocation(line: 206, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !291, file: !45, line: 206, column: 17)
!329 = !DILocation(line: 206, column: 28, scope: !328)
!330 = !DILocation(line: 206, column: 44, scope: !328)
!331 = !DILocation(line: 206, column: 47, scope: !328)
!332 = !DILocation(line: 206, column: 58, scope: !328)
!333 = !DILocation(line: 206, column: 17, scope: !291)
!334 = !DILocation(line: 208, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !45, line: 207, column: 13)
!336 = !DILocation(line: 211, column: 13, scope: !291)
!337 = !DILocation(line: 211, column: 18, scope: !291)
!338 = !DILocation(line: 211, column: 28, scope: !291)
!339 = !DILocation(line: 211, column: 39, scope: !291)
!340 = !DILocation(line: 211, column: 26, scope: !291)
!341 = !DILocation(line: 211, column: 55, scope: !291)
!342 = !DILocation(line: 213, column: 30, scope: !291)
!343 = !DILocation(line: 213, column: 23, scope: !291)
!344 = !DILocation(line: 213, column: 21, scope: !291)
!345 = !DILocation(line: 214, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !291, file: !45, line: 214, column: 17)
!347 = !DILocation(line: 214, column: 17, scope: !291)
!348 = !DILocation(line: 216, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !45, line: 215, column: 13)
!350 = !DILocation(line: 216, column: 26, scope: !349)
!351 = !DILocation(line: 217, column: 13, scope: !349)
!352 = !DILocation(line: 218, column: 30, scope: !291)
!353 = !DILocation(line: 218, column: 23, scope: !291)
!354 = !DILocation(line: 218, column: 21, scope: !291)
!355 = !DILocation(line: 219, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !291, file: !45, line: 219, column: 17)
!357 = !DILocation(line: 219, column: 17, scope: !291)
!358 = !DILocation(line: 221, column: 18, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !45, line: 220, column: 13)
!360 = !DILocation(line: 221, column: 26, scope: !359)
!361 = !DILocation(line: 222, column: 13, scope: !359)
!362 = !DILocation(line: 223, column: 9, scope: !291)
!363 = !DILocation(line: 225, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !277, file: !45, line: 225, column: 13)
!365 = !DILocation(line: 225, column: 27, scope: !364)
!366 = !DILocation(line: 225, column: 13, scope: !277)
!367 = !DILocation(line: 227, column: 26, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !45, line: 226, column: 9)
!369 = !DILocation(line: 227, column: 13, scope: !368)
!370 = !DILocation(line: 228, column: 9, scope: !368)
!371 = !DILocalVariable(name: "i", scope: !372, file: !45, line: 250, type: !23)
!372 = distinct !DILexicalBlock(scope: !269, file: !45, line: 249, column: 5)
!373 = !DILocation(line: 250, column: 13, scope: !372)
!374 = !DILocalVariable(name: "n", scope: !372, file: !45, line: 250, type: !23)
!375 = !DILocation(line: 250, column: 16, scope: !372)
!376 = !DILocalVariable(name: "intVariable", scope: !372, file: !45, line: 250, type: !23)
!377 = !DILocation(line: 250, column: 19, scope: !372)
!378 = !DILocation(line: 251, column: 20, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !45, line: 251, column: 13)
!380 = !DILocation(line: 251, column: 13, scope: !379)
!381 = !DILocation(line: 251, column: 36, scope: !379)
!382 = !DILocation(line: 251, column: 13, scope: !372)
!383 = !DILocation(line: 254, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !45, line: 254, column: 17)
!385 = distinct !DILexicalBlock(scope: !379, file: !45, line: 252, column: 9)
!386 = !DILocation(line: 254, column: 19, scope: !384)
!387 = !DILocation(line: 254, column: 17, scope: !385)
!388 = !DILocation(line: 256, column: 29, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !45, line: 255, column: 13)
!390 = !DILocation(line: 257, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !45, line: 257, column: 17)
!392 = !DILocation(line: 257, column: 22, scope: !391)
!393 = !DILocation(line: 257, column: 29, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !45, line: 257, column: 17)
!395 = !DILocation(line: 257, column: 33, scope: !394)
!396 = !DILocation(line: 257, column: 31, scope: !394)
!397 = !DILocation(line: 257, column: 17, scope: !391)
!398 = !DILocation(line: 260, column: 32, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !45, line: 258, column: 17)
!400 = !DILocation(line: 261, column: 17, scope: !399)
!401 = !DILocation(line: 257, column: 37, scope: !394)
!402 = !DILocation(line: 257, column: 17, scope: !394)
!403 = distinct !{!403, !397, !404, !264}
!404 = !DILocation(line: 261, column: 17, scope: !391)
!405 = !DILocation(line: 262, column: 30, scope: !389)
!406 = !DILocation(line: 262, column: 17, scope: !389)
!407 = !DILocation(line: 263, column: 13, scope: !389)
!408 = !DILocation(line: 264, column: 9, scope: !385)
!409 = !DILocation(line: 268, column: 1, scope: !269)
!410 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 271, type: !105, scopeLine: 272, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!411 = !DILocalVariable(name: "data", scope: !410, file: !45, line: 273, type: !42)
!412 = !DILocation(line: 273, column: 12, scope: !410)
!413 = !DILocalVariable(name: "dataBuffer", scope: !410, file: !45, line: 274, type: !111)
!414 = !DILocation(line: 274, column: 10, scope: !410)
!415 = !DILocation(line: 275, column: 12, scope: !410)
!416 = !DILocation(line: 275, column: 10, scope: !410)
!417 = !DILocalVariable(name: "recvResult", scope: !418, file: !45, line: 284, type: !23)
!418 = distinct !DILexicalBlock(scope: !410, file: !45, line: 279, column: 5)
!419 = !DILocation(line: 284, column: 13, scope: !418)
!420 = !DILocalVariable(name: "service", scope: !418, file: !45, line: 285, type: !121)
!421 = !DILocation(line: 285, column: 28, scope: !418)
!422 = !DILocalVariable(name: "replace", scope: !418, file: !45, line: 286, type: !42)
!423 = !DILocation(line: 286, column: 15, scope: !418)
!424 = !DILocalVariable(name: "connectSocket", scope: !418, file: !45, line: 287, type: !23)
!425 = !DILocation(line: 287, column: 16, scope: !418)
!426 = !DILocalVariable(name: "dataLen", scope: !418, file: !45, line: 288, type: !147)
!427 = !DILocation(line: 288, column: 16, scope: !418)
!428 = !DILocation(line: 288, column: 33, scope: !418)
!429 = !DILocation(line: 288, column: 26, scope: !418)
!430 = !DILocation(line: 289, column: 9, scope: !418)
!431 = !DILocation(line: 299, column: 29, scope: !432)
!432 = distinct !DILexicalBlock(scope: !418, file: !45, line: 290, column: 9)
!433 = !DILocation(line: 299, column: 27, scope: !432)
!434 = !DILocation(line: 300, column: 17, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !45, line: 300, column: 17)
!436 = !DILocation(line: 300, column: 31, scope: !435)
!437 = !DILocation(line: 300, column: 17, scope: !432)
!438 = !DILocation(line: 302, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !45, line: 301, column: 13)
!440 = !DILocation(line: 304, column: 13, scope: !432)
!441 = !DILocation(line: 305, column: 21, scope: !432)
!442 = !DILocation(line: 305, column: 32, scope: !432)
!443 = !DILocation(line: 306, column: 39, scope: !432)
!444 = !DILocation(line: 306, column: 21, scope: !432)
!445 = !DILocation(line: 306, column: 30, scope: !432)
!446 = !DILocation(line: 306, column: 37, scope: !432)
!447 = !DILocation(line: 307, column: 32, scope: !432)
!448 = !DILocation(line: 307, column: 21, scope: !432)
!449 = !DILocation(line: 307, column: 30, scope: !432)
!450 = !DILocation(line: 308, column: 25, scope: !451)
!451 = distinct !DILexicalBlock(scope: !432, file: !45, line: 308, column: 17)
!452 = !DILocation(line: 308, column: 40, scope: !451)
!453 = !DILocation(line: 308, column: 17, scope: !451)
!454 = !DILocation(line: 308, column: 85, scope: !451)
!455 = !DILocation(line: 308, column: 17, scope: !432)
!456 = !DILocation(line: 310, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !451, file: !45, line: 309, column: 13)
!458 = !DILocation(line: 315, column: 31, scope: !432)
!459 = !DILocation(line: 315, column: 55, scope: !432)
!460 = !DILocation(line: 315, column: 62, scope: !432)
!461 = !DILocation(line: 315, column: 60, scope: !432)
!462 = !DILocation(line: 315, column: 94, scope: !432)
!463 = !DILocation(line: 315, column: 92, scope: !432)
!464 = !DILocation(line: 315, column: 102, scope: !432)
!465 = !DILocation(line: 315, column: 85, scope: !432)
!466 = !DILocation(line: 315, column: 26, scope: !432)
!467 = !DILocation(line: 315, column: 24, scope: !432)
!468 = !DILocation(line: 316, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !432, file: !45, line: 316, column: 17)
!470 = !DILocation(line: 316, column: 28, scope: !469)
!471 = !DILocation(line: 316, column: 44, scope: !469)
!472 = !DILocation(line: 316, column: 47, scope: !469)
!473 = !DILocation(line: 316, column: 58, scope: !469)
!474 = !DILocation(line: 316, column: 17, scope: !432)
!475 = !DILocation(line: 318, column: 17, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !45, line: 317, column: 13)
!477 = !DILocation(line: 321, column: 13, scope: !432)
!478 = !DILocation(line: 321, column: 18, scope: !432)
!479 = !DILocation(line: 321, column: 28, scope: !432)
!480 = !DILocation(line: 321, column: 39, scope: !432)
!481 = !DILocation(line: 321, column: 26, scope: !432)
!482 = !DILocation(line: 321, column: 55, scope: !432)
!483 = !DILocation(line: 323, column: 30, scope: !432)
!484 = !DILocation(line: 323, column: 23, scope: !432)
!485 = !DILocation(line: 323, column: 21, scope: !432)
!486 = !DILocation(line: 324, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !432, file: !45, line: 324, column: 17)
!488 = !DILocation(line: 324, column: 17, scope: !432)
!489 = !DILocation(line: 326, column: 18, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !45, line: 325, column: 13)
!491 = !DILocation(line: 326, column: 26, scope: !490)
!492 = !DILocation(line: 327, column: 13, scope: !490)
!493 = !DILocation(line: 328, column: 30, scope: !432)
!494 = !DILocation(line: 328, column: 23, scope: !432)
!495 = !DILocation(line: 328, column: 21, scope: !432)
!496 = !DILocation(line: 329, column: 17, scope: !497)
!497 = distinct !DILexicalBlock(scope: !432, file: !45, line: 329, column: 17)
!498 = !DILocation(line: 329, column: 17, scope: !432)
!499 = !DILocation(line: 331, column: 18, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !45, line: 330, column: 13)
!501 = !DILocation(line: 331, column: 26, scope: !500)
!502 = !DILocation(line: 332, column: 13, scope: !500)
!503 = !DILocation(line: 333, column: 9, scope: !432)
!504 = !DILocation(line: 335, column: 13, scope: !505)
!505 = distinct !DILexicalBlock(scope: !418, file: !45, line: 335, column: 13)
!506 = !DILocation(line: 335, column: 27, scope: !505)
!507 = !DILocation(line: 335, column: 13, scope: !418)
!508 = !DILocation(line: 337, column: 26, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !45, line: 336, column: 9)
!510 = !DILocation(line: 337, column: 13, scope: !509)
!511 = !DILocation(line: 338, column: 9, scope: !509)
!512 = !DILocalVariable(name: "i", scope: !513, file: !45, line: 356, type: !23)
!513 = distinct !DILexicalBlock(scope: !410, file: !45, line: 355, column: 5)
!514 = !DILocation(line: 356, column: 13, scope: !513)
!515 = !DILocalVariable(name: "n", scope: !513, file: !45, line: 356, type: !23)
!516 = !DILocation(line: 356, column: 16, scope: !513)
!517 = !DILocalVariable(name: "intVariable", scope: !513, file: !45, line: 356, type: !23)
!518 = !DILocation(line: 356, column: 19, scope: !513)
!519 = !DILocation(line: 357, column: 20, scope: !520)
!520 = distinct !DILexicalBlock(scope: !513, file: !45, line: 357, column: 13)
!521 = !DILocation(line: 357, column: 13, scope: !520)
!522 = !DILocation(line: 357, column: 36, scope: !520)
!523 = !DILocation(line: 357, column: 13, scope: !513)
!524 = !DILocation(line: 360, column: 17, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !45, line: 360, column: 17)
!526 = distinct !DILexicalBlock(scope: !520, file: !45, line: 358, column: 9)
!527 = !DILocation(line: 360, column: 19, scope: !525)
!528 = !DILocation(line: 360, column: 17, scope: !526)
!529 = !DILocation(line: 362, column: 29, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !45, line: 361, column: 13)
!531 = !DILocation(line: 363, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !530, file: !45, line: 363, column: 17)
!533 = !DILocation(line: 363, column: 22, scope: !532)
!534 = !DILocation(line: 363, column: 29, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !45, line: 363, column: 17)
!536 = !DILocation(line: 363, column: 33, scope: !535)
!537 = !DILocation(line: 363, column: 31, scope: !535)
!538 = !DILocation(line: 363, column: 17, scope: !532)
!539 = !DILocation(line: 366, column: 32, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !45, line: 364, column: 17)
!541 = !DILocation(line: 367, column: 17, scope: !540)
!542 = !DILocation(line: 363, column: 37, scope: !535)
!543 = !DILocation(line: 363, column: 17, scope: !535)
!544 = distinct !{!544, !538, !545, !264}
!545 = !DILocation(line: 367, column: 17, scope: !532)
!546 = !DILocation(line: 368, column: 30, scope: !530)
!547 = !DILocation(line: 368, column: 17, scope: !530)
!548 = !DILocation(line: 369, column: 13, scope: !530)
!549 = !DILocation(line: 370, column: 9, scope: !526)
!550 = !DILocation(line: 378, column: 1, scope: !410)
!551 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 381, type: !105, scopeLine: 382, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!552 = !DILocalVariable(name: "data", scope: !551, file: !45, line: 383, type: !42)
!553 = !DILocation(line: 383, column: 12, scope: !551)
!554 = !DILocalVariable(name: "dataBuffer", scope: !551, file: !45, line: 384, type: !111)
!555 = !DILocation(line: 384, column: 10, scope: !551)
!556 = !DILocation(line: 385, column: 12, scope: !551)
!557 = !DILocation(line: 385, column: 10, scope: !551)
!558 = !DILocation(line: 394, column: 16, scope: !551)
!559 = !DILocation(line: 394, column: 9, scope: !551)
!560 = !DILocalVariable(name: "i", scope: !561, file: !45, line: 401, type: !23)
!561 = distinct !DILexicalBlock(scope: !551, file: !45, line: 400, column: 5)
!562 = !DILocation(line: 401, column: 13, scope: !561)
!563 = !DILocalVariable(name: "n", scope: !561, file: !45, line: 401, type: !23)
!564 = !DILocation(line: 401, column: 16, scope: !561)
!565 = !DILocalVariable(name: "intVariable", scope: !561, file: !45, line: 401, type: !23)
!566 = !DILocation(line: 401, column: 19, scope: !561)
!567 = !DILocation(line: 402, column: 20, scope: !568)
!568 = distinct !DILexicalBlock(scope: !561, file: !45, line: 402, column: 13)
!569 = !DILocation(line: 402, column: 13, scope: !568)
!570 = !DILocation(line: 402, column: 36, scope: !568)
!571 = !DILocation(line: 402, column: 13, scope: !561)
!572 = !DILocation(line: 405, column: 25, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !45, line: 403, column: 9)
!574 = !DILocation(line: 406, column: 20, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !45, line: 406, column: 13)
!576 = !DILocation(line: 406, column: 18, scope: !575)
!577 = !DILocation(line: 406, column: 25, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !45, line: 406, column: 13)
!579 = !DILocation(line: 406, column: 29, scope: !578)
!580 = !DILocation(line: 406, column: 27, scope: !578)
!581 = !DILocation(line: 406, column: 13, scope: !575)
!582 = !DILocation(line: 409, column: 28, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !45, line: 407, column: 13)
!584 = !DILocation(line: 410, column: 13, scope: !583)
!585 = !DILocation(line: 406, column: 33, scope: !578)
!586 = !DILocation(line: 406, column: 13, scope: !578)
!587 = distinct !{!587, !581, !588, !264}
!588 = !DILocation(line: 410, column: 13, scope: !575)
!589 = !DILocation(line: 411, column: 26, scope: !573)
!590 = !DILocation(line: 411, column: 13, scope: !573)
!591 = !DILocation(line: 412, column: 9, scope: !573)
!592 = !DILocation(line: 420, column: 1, scope: !551)
!593 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 423, type: !105, scopeLine: 424, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!594 = !DILocalVariable(name: "data", scope: !593, file: !45, line: 425, type: !42)
!595 = !DILocation(line: 425, column: 12, scope: !593)
!596 = !DILocalVariable(name: "dataBuffer", scope: !593, file: !45, line: 426, type: !111)
!597 = !DILocation(line: 426, column: 10, scope: !593)
!598 = !DILocation(line: 427, column: 12, scope: !593)
!599 = !DILocation(line: 427, column: 10, scope: !593)
!600 = !DILocation(line: 432, column: 16, scope: !593)
!601 = !DILocation(line: 432, column: 9, scope: !593)
!602 = !DILocalVariable(name: "i", scope: !603, file: !45, line: 443, type: !23)
!603 = distinct !DILexicalBlock(scope: !593, file: !45, line: 442, column: 5)
!604 = !DILocation(line: 443, column: 13, scope: !603)
!605 = !DILocalVariable(name: "n", scope: !603, file: !45, line: 443, type: !23)
!606 = !DILocation(line: 443, column: 16, scope: !603)
!607 = !DILocalVariable(name: "intVariable", scope: !603, file: !45, line: 443, type: !23)
!608 = !DILocation(line: 443, column: 19, scope: !603)
!609 = !DILocation(line: 444, column: 20, scope: !610)
!610 = distinct !DILexicalBlock(scope: !603, file: !45, line: 444, column: 13)
!611 = !DILocation(line: 444, column: 13, scope: !610)
!612 = !DILocation(line: 444, column: 36, scope: !610)
!613 = !DILocation(line: 444, column: 13, scope: !603)
!614 = !DILocation(line: 447, column: 25, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !45, line: 445, column: 9)
!616 = !DILocation(line: 448, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !615, file: !45, line: 448, column: 13)
!618 = !DILocation(line: 448, column: 18, scope: !617)
!619 = !DILocation(line: 448, column: 25, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !45, line: 448, column: 13)
!621 = !DILocation(line: 448, column: 29, scope: !620)
!622 = !DILocation(line: 448, column: 27, scope: !620)
!623 = !DILocation(line: 448, column: 13, scope: !617)
!624 = !DILocation(line: 451, column: 28, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !45, line: 449, column: 13)
!626 = !DILocation(line: 452, column: 13, scope: !625)
!627 = !DILocation(line: 448, column: 33, scope: !620)
!628 = !DILocation(line: 448, column: 13, scope: !620)
!629 = distinct !{!629, !623, !630, !264}
!630 = !DILocation(line: 452, column: 13, scope: !617)
!631 = !DILocation(line: 453, column: 26, scope: !615)
!632 = !DILocation(line: 453, column: 13, scope: !615)
!633 = !DILocation(line: 454, column: 9, scope: !615)
!634 = !DILocation(line: 462, column: 1, scope: !593)
!635 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good", scope: !45, file: !45, line: 464, type: !105, scopeLine: 465, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!636 = !DILocation(line: 466, column: 5, scope: !635)
!637 = !DILocation(line: 467, column: 5, scope: !635)
!638 = !DILocation(line: 468, column: 5, scope: !635)
!639 = !DILocation(line: 469, column: 5, scope: !635)
!640 = !DILocation(line: 470, column: 1, scope: !635)
!641 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !642, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !42}
!644 = !DILocalVariable(name: "line", arg: 1, scope: !641, file: !3, line: 11, type: !42)
!645 = !DILocation(line: 11, column: 25, scope: !641)
!646 = !DILocation(line: 13, column: 1, scope: !641)
!647 = !DILocation(line: 14, column: 8, scope: !648)
!648 = distinct !DILexicalBlock(scope: !641, file: !3, line: 14, column: 8)
!649 = !DILocation(line: 14, column: 13, scope: !648)
!650 = !DILocation(line: 14, column: 8, scope: !641)
!651 = !DILocation(line: 16, column: 24, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 15, column: 5)
!653 = !DILocation(line: 16, column: 9, scope: !652)
!654 = !DILocation(line: 17, column: 5, scope: !652)
!655 = !DILocation(line: 18, column: 5, scope: !641)
!656 = !DILocation(line: 19, column: 1, scope: !641)
!657 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !642, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!658 = !DILocalVariable(name: "line", arg: 1, scope: !657, file: !3, line: 20, type: !42)
!659 = !DILocation(line: 20, column: 29, scope: !657)
!660 = !DILocation(line: 22, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !3, line: 22, column: 8)
!662 = !DILocation(line: 22, column: 13, scope: !661)
!663 = !DILocation(line: 22, column: 8, scope: !657)
!664 = !DILocation(line: 24, column: 24, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 23, column: 5)
!666 = !DILocation(line: 24, column: 9, scope: !665)
!667 = !DILocation(line: 25, column: 5, scope: !665)
!668 = !DILocation(line: 26, column: 1, scope: !657)
!669 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !670, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !148, line: 74, baseType: !23)
!674 = !DILocalVariable(name: "line", arg: 1, scope: !669, file: !3, line: 27, type: !672)
!675 = !DILocation(line: 27, column: 29, scope: !669)
!676 = !DILocation(line: 29, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !669, file: !3, line: 29, column: 8)
!678 = !DILocation(line: 29, column: 13, scope: !677)
!679 = !DILocation(line: 29, column: 8, scope: !669)
!680 = !DILocation(line: 31, column: 27, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 30, column: 5)
!682 = !DILocation(line: 31, column: 9, scope: !681)
!683 = !DILocation(line: 32, column: 5, scope: !681)
!684 = !DILocation(line: 33, column: 1, scope: !669)
!685 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !686, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !23}
!688 = !DILocalVariable(name: "intNumber", arg: 1, scope: !685, file: !3, line: 35, type: !23)
!689 = !DILocation(line: 35, column: 24, scope: !685)
!690 = !DILocation(line: 37, column: 20, scope: !685)
!691 = !DILocation(line: 37, column: 5, scope: !685)
!692 = !DILocation(line: 38, column: 1, scope: !685)
!693 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !694, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696}
!696 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!697 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !693, file: !3, line: 40, type: !696)
!698 = !DILocation(line: 40, column: 28, scope: !693)
!699 = !DILocation(line: 42, column: 21, scope: !693)
!700 = !DILocation(line: 42, column: 5, scope: !693)
!701 = !DILocation(line: 43, column: 1, scope: !693)
!702 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !703, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !705}
!705 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!706 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !702, file: !3, line: 45, type: !705)
!707 = !DILocation(line: 45, column: 28, scope: !702)
!708 = !DILocation(line: 47, column: 20, scope: !702)
!709 = !DILocation(line: 47, column: 5, scope: !702)
!710 = !DILocation(line: 48, column: 1, scope: !702)
!711 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !712, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714}
!714 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!715 = !DILocalVariable(name: "longNumber", arg: 1, scope: !711, file: !3, line: 50, type: !714)
!716 = !DILocation(line: 50, column: 26, scope: !711)
!717 = !DILocation(line: 52, column: 21, scope: !711)
!718 = !DILocation(line: 52, column: 5, scope: !711)
!719 = !DILocation(line: 53, column: 1, scope: !711)
!720 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !721, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !723}
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !724, line: 27, baseType: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 44, baseType: !714)
!726 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !720, file: !3, line: 55, type: !723)
!727 = !DILocation(line: 55, column: 33, scope: !720)
!728 = !DILocation(line: 57, column: 29, scope: !720)
!729 = !DILocation(line: 57, column: 5, scope: !720)
!730 = !DILocation(line: 58, column: 1, scope: !720)
!731 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !732, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !147}
!734 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !731, file: !3, line: 60, type: !147)
!735 = !DILocation(line: 60, column: 29, scope: !731)
!736 = !DILocation(line: 62, column: 21, scope: !731)
!737 = !DILocation(line: 62, column: 5, scope: !731)
!738 = !DILocation(line: 63, column: 1, scope: !731)
!739 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !740, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !43}
!742 = !DILocalVariable(name: "charHex", arg: 1, scope: !739, file: !3, line: 65, type: !43)
!743 = !DILocation(line: 65, column: 29, scope: !739)
!744 = !DILocation(line: 67, column: 22, scope: !739)
!745 = !DILocation(line: 67, column: 5, scope: !739)
!746 = !DILocation(line: 68, column: 1, scope: !739)
!747 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !748, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !673}
!750 = !DILocalVariable(name: "wideChar", arg: 1, scope: !747, file: !3, line: 70, type: !673)
!751 = !DILocation(line: 70, column: 29, scope: !747)
!752 = !DILocalVariable(name: "s", scope: !747, file: !3, line: 74, type: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 64, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 2)
!756 = !DILocation(line: 74, column: 13, scope: !747)
!757 = !DILocation(line: 75, column: 16, scope: !747)
!758 = !DILocation(line: 75, column: 9, scope: !747)
!759 = !DILocation(line: 75, column: 14, scope: !747)
!760 = !DILocation(line: 76, column: 9, scope: !747)
!761 = !DILocation(line: 76, column: 14, scope: !747)
!762 = !DILocation(line: 77, column: 21, scope: !747)
!763 = !DILocation(line: 77, column: 5, scope: !747)
!764 = !DILocation(line: 78, column: 1, scope: !747)
!765 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !766, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !7}
!768 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !765, file: !3, line: 80, type: !7)
!769 = !DILocation(line: 80, column: 33, scope: !765)
!770 = !DILocation(line: 82, column: 20, scope: !765)
!771 = !DILocation(line: 82, column: 5, scope: !765)
!772 = !DILocation(line: 83, column: 1, scope: !765)
!773 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !774, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !25}
!776 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !773, file: !3, line: 85, type: !25)
!777 = !DILocation(line: 85, column: 45, scope: !773)
!778 = !DILocation(line: 87, column: 22, scope: !773)
!779 = !DILocation(line: 87, column: 5, scope: !773)
!780 = !DILocation(line: 88, column: 1, scope: !773)
!781 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !782, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !784}
!784 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!785 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !781, file: !3, line: 90, type: !784)
!786 = !DILocation(line: 90, column: 29, scope: !781)
!787 = !DILocation(line: 92, column: 20, scope: !781)
!788 = !DILocation(line: 92, column: 5, scope: !781)
!789 = !DILocation(line: 93, column: 1, scope: !781)
!790 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !791, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !795, line: 100, baseType: !796)
!795 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/source_code")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !795, line: 96, size: 64, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !796, file: !795, line: 98, baseType: !23, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !796, file: !795, line: 99, baseType: !23, size: 32, offset: 32)
!800 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !790, file: !3, line: 95, type: !793)
!801 = !DILocation(line: 95, column: 40, scope: !790)
!802 = !DILocation(line: 97, column: 26, scope: !790)
!803 = !DILocation(line: 97, column: 47, scope: !790)
!804 = !DILocation(line: 97, column: 55, scope: !790)
!805 = !DILocation(line: 97, column: 76, scope: !790)
!806 = !DILocation(line: 97, column: 5, scope: !790)
!807 = !DILocation(line: 98, column: 1, scope: !790)
!808 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !809, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811, !147}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!812 = !DILocalVariable(name: "bytes", arg: 1, scope: !808, file: !3, line: 100, type: !811)
!813 = !DILocation(line: 100, column: 38, scope: !808)
!814 = !DILocalVariable(name: "numBytes", arg: 2, scope: !808, file: !3, line: 100, type: !147)
!815 = !DILocation(line: 100, column: 52, scope: !808)
!816 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 102, type: !147)
!817 = !DILocation(line: 102, column: 12, scope: !808)
!818 = !DILocation(line: 103, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !808, file: !3, line: 103, column: 5)
!820 = !DILocation(line: 103, column: 10, scope: !819)
!821 = !DILocation(line: 103, column: 17, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 103, column: 5)
!823 = !DILocation(line: 103, column: 21, scope: !822)
!824 = !DILocation(line: 103, column: 19, scope: !822)
!825 = !DILocation(line: 103, column: 5, scope: !819)
!826 = !DILocation(line: 105, column: 24, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 104, column: 5)
!828 = !DILocation(line: 105, column: 30, scope: !827)
!829 = !DILocation(line: 105, column: 9, scope: !827)
!830 = !DILocation(line: 106, column: 5, scope: !827)
!831 = !DILocation(line: 103, column: 31, scope: !822)
!832 = !DILocation(line: 103, column: 5, scope: !822)
!833 = distinct !{!833, !825, !834, !264}
!834 = !DILocation(line: 106, column: 5, scope: !819)
!835 = !DILocation(line: 107, column: 5, scope: !808)
!836 = !DILocation(line: 108, column: 1, scope: !808)
!837 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !838, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DISubroutineType(types: !839)
!839 = !{!147, !811, !147, !42}
!840 = !DILocalVariable(name: "bytes", arg: 1, scope: !837, file: !3, line: 113, type: !811)
!841 = !DILocation(line: 113, column: 39, scope: !837)
!842 = !DILocalVariable(name: "numBytes", arg: 2, scope: !837, file: !3, line: 113, type: !147)
!843 = !DILocation(line: 113, column: 53, scope: !837)
!844 = !DILocalVariable(name: "hex", arg: 3, scope: !837, file: !3, line: 113, type: !42)
!845 = !DILocation(line: 113, column: 71, scope: !837)
!846 = !DILocalVariable(name: "numWritten", scope: !837, file: !3, line: 115, type: !147)
!847 = !DILocation(line: 115, column: 12, scope: !837)
!848 = !DILocation(line: 121, column: 5, scope: !837)
!849 = !DILocation(line: 121, column: 12, scope: !837)
!850 = !DILocation(line: 121, column: 25, scope: !837)
!851 = !DILocation(line: 121, column: 23, scope: !837)
!852 = !DILocation(line: 121, column: 34, scope: !837)
!853 = !DILocation(line: 121, column: 37, scope: !837)
!854 = !DILocation(line: 121, column: 67, scope: !837)
!855 = !DILocation(line: 121, column: 70, scope: !837)
!856 = !DILocation(line: 0, scope: !837)
!857 = !DILocalVariable(name: "byte", scope: !858, file: !3, line: 123, type: !23)
!858 = distinct !DILexicalBlock(scope: !837, file: !3, line: 122, column: 5)
!859 = !DILocation(line: 123, column: 13, scope: !858)
!860 = !DILocation(line: 124, column: 17, scope: !858)
!861 = !DILocation(line: 124, column: 25, scope: !858)
!862 = !DILocation(line: 124, column: 23, scope: !858)
!863 = !DILocation(line: 124, column: 9, scope: !858)
!864 = !DILocation(line: 125, column: 45, scope: !858)
!865 = !DILocation(line: 125, column: 29, scope: !858)
!866 = !DILocation(line: 125, column: 9, scope: !858)
!867 = !DILocation(line: 125, column: 15, scope: !858)
!868 = !DILocation(line: 125, column: 27, scope: !858)
!869 = !DILocation(line: 126, column: 9, scope: !858)
!870 = distinct !{!870, !848, !871, !264}
!871 = !DILocation(line: 127, column: 5, scope: !837)
!872 = !DILocation(line: 129, column: 12, scope: !837)
!873 = !DILocation(line: 129, column: 5, scope: !837)
!874 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !875, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!875 = !DISubroutineType(types: !876)
!876 = !{!147, !811, !147, !672}
!877 = !DILocalVariable(name: "bytes", arg: 1, scope: !874, file: !3, line: 135, type: !811)
!878 = !DILocation(line: 135, column: 41, scope: !874)
!879 = !DILocalVariable(name: "numBytes", arg: 2, scope: !874, file: !3, line: 135, type: !147)
!880 = !DILocation(line: 135, column: 55, scope: !874)
!881 = !DILocalVariable(name: "hex", arg: 3, scope: !874, file: !3, line: 135, type: !672)
!882 = !DILocation(line: 135, column: 76, scope: !874)
!883 = !DILocalVariable(name: "numWritten", scope: !874, file: !3, line: 137, type: !147)
!884 = !DILocation(line: 137, column: 12, scope: !874)
!885 = !DILocation(line: 143, column: 5, scope: !874)
!886 = !DILocation(line: 143, column: 12, scope: !874)
!887 = !DILocation(line: 143, column: 25, scope: !874)
!888 = !DILocation(line: 143, column: 23, scope: !874)
!889 = !DILocation(line: 143, column: 34, scope: !874)
!890 = !DILocation(line: 143, column: 47, scope: !874)
!891 = !DILocation(line: 143, column: 55, scope: !874)
!892 = !DILocation(line: 143, column: 53, scope: !874)
!893 = !DILocation(line: 143, column: 37, scope: !874)
!894 = !DILocation(line: 143, column: 68, scope: !874)
!895 = !DILocation(line: 143, column: 81, scope: !874)
!896 = !DILocation(line: 143, column: 89, scope: !874)
!897 = !DILocation(line: 143, column: 87, scope: !874)
!898 = !DILocation(line: 143, column: 100, scope: !874)
!899 = !DILocation(line: 143, column: 71, scope: !874)
!900 = !DILocation(line: 0, scope: !874)
!901 = !DILocalVariable(name: "byte", scope: !902, file: !3, line: 145, type: !23)
!902 = distinct !DILexicalBlock(scope: !874, file: !3, line: 144, column: 5)
!903 = !DILocation(line: 145, column: 13, scope: !902)
!904 = !DILocation(line: 146, column: 18, scope: !902)
!905 = !DILocation(line: 146, column: 26, scope: !902)
!906 = !DILocation(line: 146, column: 24, scope: !902)
!907 = !DILocation(line: 146, column: 9, scope: !902)
!908 = !DILocation(line: 147, column: 45, scope: !902)
!909 = !DILocation(line: 147, column: 29, scope: !902)
!910 = !DILocation(line: 147, column: 9, scope: !902)
!911 = !DILocation(line: 147, column: 15, scope: !902)
!912 = !DILocation(line: 147, column: 27, scope: !902)
!913 = !DILocation(line: 148, column: 9, scope: !902)
!914 = distinct !{!914, !885, !915, !264}
!915 = !DILocation(line: 149, column: 5, scope: !874)
!916 = !DILocation(line: 151, column: 12, scope: !874)
!917 = !DILocation(line: 151, column: 5, scope: !874)
!918 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !919, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!919 = !DISubroutineType(types: !920)
!920 = !{!23}
!921 = !DILocation(line: 158, column: 5, scope: !918)
!922 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !919, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!923 = !DILocation(line: 163, column: 5, scope: !922)
!924 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !919, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!925 = !DILocation(line: 168, column: 13, scope: !924)
!926 = !DILocation(line: 168, column: 20, scope: !924)
!927 = !DILocation(line: 168, column: 5, scope: !924)
!928 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!929 = !DILocation(line: 187, column: 16, scope: !928)
!930 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!931 = !DILocation(line: 188, column: 16, scope: !930)
!932 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!933 = !DILocation(line: 189, column: 16, scope: !932)
!934 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!935 = !DILocation(line: 190, column: 16, scope: !934)
!936 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!937 = !DILocation(line: 191, column: 16, scope: !936)
!938 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!939 = !DILocation(line: 192, column: 16, scope: !938)
!940 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!941 = !DILocation(line: 193, column: 16, scope: !940)
!942 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!943 = !DILocation(line: 194, column: 16, scope: !942)
!944 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!945 = !DILocation(line: 195, column: 16, scope: !944)
!946 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!947 = !DILocation(line: 198, column: 15, scope: !946)
!948 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!949 = !DILocation(line: 199, column: 15, scope: !948)
!950 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!951 = !DILocation(line: 200, column: 15, scope: !950)
!952 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!953 = !DILocation(line: 201, column: 15, scope: !952)
!954 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!955 = !DILocation(line: 202, column: 15, scope: !954)
!956 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!957 = !DILocation(line: 203, column: 15, scope: !956)
!958 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!959 = !DILocation(line: 204, column: 15, scope: !958)
!960 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!961 = !DILocation(line: 205, column: 15, scope: !960)
!962 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!963 = !DILocation(line: 206, column: 15, scope: !962)
