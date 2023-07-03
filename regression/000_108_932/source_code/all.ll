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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_03_bad() #0 !dbg !104 {
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
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 -1, i32* %connectSocket, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !148, metadata !DIExpression()), !dbg !152
  %1 = load i8*, i8** %data, align 8, !dbg !153
  %call = call i64 @strlen(i8* %1) #7, !dbg !154
  store i64 %call, i64* %dataLen, align 8, !dbg !152
  br label %do.body, !dbg !155

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !156
  store i32 %call1, i32* %connectSocket, align 4, !dbg !158
  %2 = load i32, i32* %connectSocket, align 4, !dbg !159
  %cmp = icmp eq i32 %2, -1, !dbg !161
  br i1 %cmp, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !163

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !165
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !166
  store i16 2, i16* %sin_family, align 4, !dbg !167
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !168
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !169
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !170
  store i32 %call2, i32* %s_addr, align 4, !dbg !171
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !172
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !173
  store i16 %call3, i16* %sin_port, align 2, !dbg !174
  %4 = load i32, i32* %connectSocket, align 4, !dbg !175
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !177
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !178
  %cmp5 = icmp eq i32 %call4, -1, !dbg !179
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !180

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !181

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !183
  %7 = load i8*, i8** %data, align 8, !dbg !184
  %8 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !186
  %9 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub = sub i64 100, %9, !dbg !188
  %sub8 = sub i64 %sub, 1, !dbg !189
  %mul = mul i64 1, %sub8, !dbg !190
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !191
  %conv = trunc i64 %call9 to i32, !dbg !191
  store i32 %conv, i32* %recvResult, align 4, !dbg !192
  %10 = load i32, i32* %recvResult, align 4, !dbg !193
  %cmp10 = icmp eq i32 %10, -1, !dbg !195
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !196

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !197
  %cmp12 = icmp eq i32 %11, 0, !dbg !198
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !199

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !200

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !202
  %13 = load i64, i64* %dataLen, align 8, !dbg !203
  %14 = load i32, i32* %recvResult, align 4, !dbg !204
  %conv16 = sext i32 %14 to i64, !dbg !204
  %div = udiv i64 %conv16, 1, !dbg !205
  %add = add i64 %13, %div, !dbg !206
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !202
  store i8 0, i8* %arrayidx, align 1, !dbg !207
  %15 = load i8*, i8** %data, align 8, !dbg !208
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !209
  store i8* %call17, i8** %replace, align 8, !dbg !210
  %16 = load i8*, i8** %replace, align 8, !dbg !211
  %tobool = icmp ne i8* %16, null, !dbg !211
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !213

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !214
  store i8 0, i8* %17, align 1, !dbg !216
  br label %if.end19, !dbg !217

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !218
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !219
  store i8* %call20, i8** %replace, align 8, !dbg !220
  %19 = load i8*, i8** %replace, align 8, !dbg !221
  %tobool21 = icmp ne i8* %19, null, !dbg !221
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !223

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !224
  store i8 0, i8* %20, align 1, !dbg !226
  br label %if.end23, !dbg !227

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !228

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !229
  %cmp24 = icmp ne i32 %21, -1, !dbg !231
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !232

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !233
  %call27 = call i32 @close(i32 %22), !dbg !235
  br label %if.end28, !dbg !236

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !237, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %n, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !244, metadata !DIExpression()), !dbg !245
  %23 = load i8*, i8** %data, align 8, !dbg !246
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !248
  %cmp30 = icmp eq i32 %call29, 1, !dbg !249
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !250

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !251
  store i32 0, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load i32, i32* %i, align 4, !dbg !256
  %25 = load i32, i32* %n, align 4, !dbg !258
  %cmp33 = icmp slt i32 %24, %25, !dbg !259
  br i1 %cmp33, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !261
  %inc = add nsw i32 %26, 1, !dbg !261
  store i32 %inc, i32* %intVariable, align 4, !dbg !261
  br label %for.inc, !dbg !263

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !264
  %inc35 = add nsw i32 %27, 1, !dbg !264
  store i32 %inc35, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !265, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %28), !dbg !270
  br label %if.end36, !dbg !271

if.end36:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !272
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
define dso_local void @goodB2G1() #0 !dbg !273 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !277
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !277
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !278
  store i8* %arraydecay, i8** %data, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !280, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 -1, i32* %connectSocket, align 4, !dbg !290
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !291, metadata !DIExpression()), !dbg !292
  %1 = load i8*, i8** %data, align 8, !dbg !293
  %call = call i64 @strlen(i8* %1) #7, !dbg !294
  store i64 %call, i64* %dataLen, align 8, !dbg !292
  br label %do.body, !dbg !295

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !296
  store i32 %call1, i32* %connectSocket, align 4, !dbg !298
  %2 = load i32, i32* %connectSocket, align 4, !dbg !299
  %cmp = icmp eq i32 %2, -1, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !303

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !305
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !306
  store i16 2, i16* %sin_family, align 4, !dbg !307
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !308
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !309
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !310
  store i32 %call2, i32* %s_addr, align 4, !dbg !311
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !312
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !313
  store i16 %call3, i16* %sin_port, align 2, !dbg !314
  %4 = load i32, i32* %connectSocket, align 4, !dbg !315
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !317
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !318
  %cmp5 = icmp eq i32 %call4, -1, !dbg !319
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !320

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !321

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !323
  %7 = load i8*, i8** %data, align 8, !dbg !324
  %8 = load i64, i64* %dataLen, align 8, !dbg !325
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !326
  %9 = load i64, i64* %dataLen, align 8, !dbg !327
  %sub = sub i64 100, %9, !dbg !328
  %sub8 = sub i64 %sub, 1, !dbg !329
  %mul = mul i64 1, %sub8, !dbg !330
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !331
  %conv = trunc i64 %call9 to i32, !dbg !331
  store i32 %conv, i32* %recvResult, align 4, !dbg !332
  %10 = load i32, i32* %recvResult, align 4, !dbg !333
  %cmp10 = icmp eq i32 %10, -1, !dbg !335
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !336

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !337
  %cmp12 = icmp eq i32 %11, 0, !dbg !338
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !339

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !340

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !342
  %13 = load i64, i64* %dataLen, align 8, !dbg !343
  %14 = load i32, i32* %recvResult, align 4, !dbg !344
  %conv16 = sext i32 %14 to i64, !dbg !344
  %div = udiv i64 %conv16, 1, !dbg !345
  %add = add i64 %13, %div, !dbg !346
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !342
  store i8 0, i8* %arrayidx, align 1, !dbg !347
  %15 = load i8*, i8** %data, align 8, !dbg !348
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !349
  store i8* %call17, i8** %replace, align 8, !dbg !350
  %16 = load i8*, i8** %replace, align 8, !dbg !351
  %tobool = icmp ne i8* %16, null, !dbg !351
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !353

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !354
  store i8 0, i8* %17, align 1, !dbg !356
  br label %if.end19, !dbg !357

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !358
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !359
  store i8* %call20, i8** %replace, align 8, !dbg !360
  %19 = load i8*, i8** %replace, align 8, !dbg !361
  %tobool21 = icmp ne i8* %19, null, !dbg !361
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !363

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !364
  store i8 0, i8* %20, align 1, !dbg !366
  br label %if.end23, !dbg !367

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !368

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !369
  %cmp24 = icmp ne i32 %21, -1, !dbg !371
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !372

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !373
  %call27 = call i32 @close(i32 %22), !dbg !375
  br label %if.end28, !dbg !376

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !377, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata i32* %n, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !384, metadata !DIExpression()), !dbg !385
  %23 = load i8*, i8** %data, align 8, !dbg !386
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !388
  %cmp30 = icmp eq i32 %call29, 1, !dbg !389
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !390

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !391
  %cmp33 = icmp slt i32 %24, 10000, !dbg !394
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !395

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !396
  store i32 0, i32* %i, align 4, !dbg !398
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !401
  %26 = load i32, i32* %n, align 4, !dbg !403
  %cmp36 = icmp slt i32 %25, %26, !dbg !404
  br i1 %cmp36, label %for.body, label %for.end, !dbg !405

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !406
  %inc = add nsw i32 %27, 1, !dbg !406
  store i32 %inc, i32* %intVariable, align 4, !dbg !406
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !409
  %inc38 = add nsw i32 %28, 1, !dbg !409
  store i32 %inc38, i32* %i, align 4, !dbg !409
  br label %for.cond, !dbg !410, !llvm.loop !411

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !413
  call void @printIntLine(i32 %29), !dbg !414
  br label %if.end39, !dbg !415

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !416

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !418 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !422
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !422
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !423
  store i8* %arraydecay, i8** %data, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !425, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !434, metadata !DIExpression()), !dbg !435
  store i32 -1, i32* %connectSocket, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !436, metadata !DIExpression()), !dbg !437
  %1 = load i8*, i8** %data, align 8, !dbg !438
  %call = call i64 @strlen(i8* %1) #7, !dbg !439
  store i64 %call, i64* %dataLen, align 8, !dbg !437
  br label %do.body, !dbg !440

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !441
  store i32 %call1, i32* %connectSocket, align 4, !dbg !443
  %2 = load i32, i32* %connectSocket, align 4, !dbg !444
  %cmp = icmp eq i32 %2, -1, !dbg !446
  br i1 %cmp, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !448

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !450
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !450
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !451
  store i16 2, i16* %sin_family, align 4, !dbg !452
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !453
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !454
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !455
  store i32 %call2, i32* %s_addr, align 4, !dbg !456
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !457
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !458
  store i16 %call3, i16* %sin_port, align 2, !dbg !459
  %4 = load i32, i32* %connectSocket, align 4, !dbg !460
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !462
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !463
  %cmp5 = icmp eq i32 %call4, -1, !dbg !464
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !465

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !466

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !468
  %7 = load i8*, i8** %data, align 8, !dbg !469
  %8 = load i64, i64* %dataLen, align 8, !dbg !470
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !471
  %9 = load i64, i64* %dataLen, align 8, !dbg !472
  %sub = sub i64 100, %9, !dbg !473
  %sub8 = sub i64 %sub, 1, !dbg !474
  %mul = mul i64 1, %sub8, !dbg !475
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !476
  %conv = trunc i64 %call9 to i32, !dbg !476
  store i32 %conv, i32* %recvResult, align 4, !dbg !477
  %10 = load i32, i32* %recvResult, align 4, !dbg !478
  %cmp10 = icmp eq i32 %10, -1, !dbg !480
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !481

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !482
  %cmp12 = icmp eq i32 %11, 0, !dbg !483
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !484

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !485

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !487
  %13 = load i64, i64* %dataLen, align 8, !dbg !488
  %14 = load i32, i32* %recvResult, align 4, !dbg !489
  %conv16 = sext i32 %14 to i64, !dbg !489
  %div = udiv i64 %conv16, 1, !dbg !490
  %add = add i64 %13, %div, !dbg !491
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !487
  store i8 0, i8* %arrayidx, align 1, !dbg !492
  %15 = load i8*, i8** %data, align 8, !dbg !493
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !494
  store i8* %call17, i8** %replace, align 8, !dbg !495
  %16 = load i8*, i8** %replace, align 8, !dbg !496
  %tobool = icmp ne i8* %16, null, !dbg !496
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !498

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !499
  store i8 0, i8* %17, align 1, !dbg !501
  br label %if.end19, !dbg !502

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !503
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !504
  store i8* %call20, i8** %replace, align 8, !dbg !505
  %19 = load i8*, i8** %replace, align 8, !dbg !506
  %tobool21 = icmp ne i8* %19, null, !dbg !506
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !508

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !509
  store i8 0, i8* %20, align 1, !dbg !511
  br label %if.end23, !dbg !512

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !513

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !514
  %cmp24 = icmp ne i32 %21, -1, !dbg !516
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !517

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !518
  %call27 = call i32 @close(i32 %22), !dbg !520
  br label %if.end28, !dbg !521

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !522, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata i32* %n, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !529, metadata !DIExpression()), !dbg !530
  %23 = load i8*, i8** %data, align 8, !dbg !531
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !533
  %cmp30 = icmp eq i32 %call29, 1, !dbg !534
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !535

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !536
  %cmp33 = icmp slt i32 %24, 10000, !dbg !539
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !540

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !541
  store i32 0, i32* %i, align 4, !dbg !543
  br label %for.cond, !dbg !545

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !546
  %26 = load i32, i32* %n, align 4, !dbg !548
  %cmp36 = icmp slt i32 %25, %26, !dbg !549
  br i1 %cmp36, label %for.body, label %for.end, !dbg !550

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !551
  %inc = add nsw i32 %27, 1, !dbg !551
  store i32 %inc, i32* %intVariable, align 4, !dbg !551
  br label %for.inc, !dbg !553

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !554
  %inc38 = add nsw i32 %28, 1, !dbg !554
  store i32 %inc38, i32* %i, align 4, !dbg !554
  br label %for.cond, !dbg !555, !llvm.loop !556

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !558
  call void @printIntLine(i32 %29), !dbg !559
  br label %if.end39, !dbg !560

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !561

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !563 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !567
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !567
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !568
  store i8* %arraydecay, i8** %data, align 8, !dbg !569
  %1 = load i8*, i8** %data, align 8, !dbg !570
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !573
  call void @llvm.dbg.declare(metadata i32* %i, metadata !574, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i32* %n, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !581, metadata !DIExpression()), !dbg !582
  %2 = load i8*, i8** %data, align 8, !dbg !583
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !585
  %cmp = icmp eq i32 %call1, 1, !dbg !586
  br i1 %cmp, label %if.then, label %if.end, !dbg !587

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !588
  store i32 0, i32* %i, align 4, !dbg !590
  br label %for.cond, !dbg !592

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !593
  %4 = load i32, i32* %n, align 4, !dbg !595
  %cmp2 = icmp slt i32 %3, %4, !dbg !596
  br i1 %cmp2, label %for.body, label %for.end, !dbg !597

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !598
  %inc = add nsw i32 %5, 1, !dbg !598
  store i32 %inc, i32* %intVariable, align 4, !dbg !598
  br label %for.inc, !dbg !600

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !601
  %inc3 = add nsw i32 %6, 1, !dbg !601
  store i32 %inc3, i32* %i, align 4, !dbg !601
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !605
  call void @printIntLine(i32 %7), !dbg !606
  br label %if.end, !dbg !607

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !608
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !609 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !613
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !613
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !614
  store i8* %arraydecay, i8** %data, align 8, !dbg !615
  %1 = load i8*, i8** %data, align 8, !dbg !616
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !619
  call void @llvm.dbg.declare(metadata i32* %i, metadata !620, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata i32* %n, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !627, metadata !DIExpression()), !dbg !628
  %2 = load i8*, i8** %data, align 8, !dbg !629
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !631
  %cmp = icmp eq i32 %call1, 1, !dbg !632
  br i1 %cmp, label %if.then, label %if.end, !dbg !633

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !634
  store i32 0, i32* %i, align 4, !dbg !636
  br label %for.cond, !dbg !638

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !639
  %4 = load i32, i32* %n, align 4, !dbg !641
  %cmp2 = icmp slt i32 %3, %4, !dbg !642
  br i1 %cmp2, label %for.body, label %for.end, !dbg !643

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !644
  %inc = add nsw i32 %5, 1, !dbg !644
  store i32 %inc, i32* %intVariable, align 4, !dbg !644
  br label %for.inc, !dbg !646

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !647
  %inc3 = add nsw i32 %6, 1, !dbg !647
  store i32 %inc3, i32* %i, align 4, !dbg !647
  br label %for.cond, !dbg !648, !llvm.loop !649

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !651
  call void @printIntLine(i32 %7), !dbg !652
  br label %if.end, !dbg !653

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_03_good() #0 !dbg !655 {
entry:
  call void @goodB2G1(), !dbg !656
  call void @goodB2G2(), !dbg !657
  call void @goodG2B1(), !dbg !658
  call void @goodG2B2(), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !661 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !666
  %0 = load i8*, i8** %line.addr, align 8, !dbg !667
  %cmp = icmp ne i8* %0, null, !dbg !669
  br i1 %cmp, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !671
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !673
  br label %if.end, !dbg !674

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !675
  ret void, !dbg !676
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !677 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load i8*, i8** %line.addr, align 8, !dbg !680
  %cmp = icmp ne i8* %0, null, !dbg !682
  br i1 %cmp, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !684
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !686
  br label %if.end, !dbg !687

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !689 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !694, metadata !DIExpression()), !dbg !695
  %0 = load i32*, i32** %line.addr, align 8, !dbg !696
  %cmp = icmp ne i32* %0, null, !dbg !698
  br i1 %cmp, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !700
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !702
  br label %if.end, !dbg !703

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !704
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !705 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !708, metadata !DIExpression()), !dbg !709
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !710
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !713 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !717, metadata !DIExpression()), !dbg !718
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !719
  %conv = sext i16 %0 to i32, !dbg !719
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !722 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !728
  %conv = fpext float %0 to double, !dbg !728
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !731 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !735, metadata !DIExpression()), !dbg !736
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !737
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !738
  ret void, !dbg !739
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !740 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !746, metadata !DIExpression()), !dbg !747
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !748
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !749
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !751 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !754, metadata !DIExpression()), !dbg !755
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !756
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !757
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !759 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !762, metadata !DIExpression()), !dbg !763
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !764
  %conv = sext i8 %0 to i32, !dbg !764
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !765
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !767 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !772, metadata !DIExpression()), !dbg !776
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !777
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !778
  store i32 %0, i32* %arrayidx, align 4, !dbg !779
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !780
  store i32 0, i32* %arrayidx1, align 4, !dbg !781
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !782
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !783
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !785 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !788, metadata !DIExpression()), !dbg !789
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !790
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !791
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !793 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !798
  %conv = zext i8 %0 to i32, !dbg !798
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !799
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !801 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !807
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !808
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !810 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !820, metadata !DIExpression()), !dbg !821
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !822
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !823
  %1 = load i32, i32* %intOne, align 4, !dbg !823
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !824
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !825
  %3 = load i32, i32* %intTwo, align 4, !dbg !825
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !826
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !828 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !832, metadata !DIExpression()), !dbg !833
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata i64* %i, metadata !836, metadata !DIExpression()), !dbg !837
  store i64 0, i64* %i, align 8, !dbg !838
  br label %for.cond, !dbg !840

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !841
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !843
  %cmp = icmp ult i64 %0, %1, !dbg !844
  br i1 %cmp, label %for.body, label %for.end, !dbg !845

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !846
  %3 = load i64, i64* %i, align 8, !dbg !848
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !846
  %4 = load i8, i8* %arrayidx, align 1, !dbg !846
  %conv = zext i8 %4 to i32, !dbg !846
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !849
  br label %for.inc, !dbg !850

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !851
  %inc = add i64 %5, 1, !dbg !851
  store i64 %inc, i64* %i, align 8, !dbg !851
  br label %for.cond, !dbg !852, !llvm.loop !853

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !855
  ret void, !dbg !856
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !857 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !862, metadata !DIExpression()), !dbg !863
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !866, metadata !DIExpression()), !dbg !867
  store i64 0, i64* %numWritten, align 8, !dbg !867
  br label %while.cond, !dbg !868

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !869
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !870
  %cmp = icmp ult i64 %0, %1, !dbg !871
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !872

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !873
  %2 = load i16*, i16** %call, align 8, !dbg !873
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !873
  %4 = load i64, i64* %numWritten, align 8, !dbg !873
  %mul = mul i64 2, %4, !dbg !873
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !873
  %5 = load i8, i8* %arrayidx, align 1, !dbg !873
  %conv = sext i8 %5 to i32, !dbg !873
  %idxprom = sext i32 %conv to i64, !dbg !873
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !873
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !873
  %conv2 = zext i16 %6 to i32, !dbg !873
  %and = and i32 %conv2, 4096, !dbg !873
  %tobool = icmp ne i32 %and, 0, !dbg !873
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !874

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !875
  %7 = load i16*, i16** %call3, align 8, !dbg !875
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !875
  %9 = load i64, i64* %numWritten, align 8, !dbg !875
  %mul4 = mul i64 2, %9, !dbg !875
  %add = add i64 %mul4, 1, !dbg !875
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !875
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !875
  %conv6 = sext i8 %10 to i32, !dbg !875
  %idxprom7 = sext i32 %conv6 to i64, !dbg !875
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !875
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !875
  %conv9 = zext i16 %11 to i32, !dbg !875
  %and10 = and i32 %conv9, 4096, !dbg !875
  %tobool11 = icmp ne i32 %and10, 0, !dbg !874
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !876
  br i1 %12, label %while.body, label %while.end, !dbg !868

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !877, metadata !DIExpression()), !dbg !879
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !880
  %14 = load i64, i64* %numWritten, align 8, !dbg !881
  %mul12 = mul i64 2, %14, !dbg !882
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !880
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !883
  %15 = load i32, i32* %byte, align 4, !dbg !884
  %conv15 = trunc i32 %15 to i8, !dbg !885
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !886
  %17 = load i64, i64* %numWritten, align 8, !dbg !887
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !886
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !888
  %18 = load i64, i64* %numWritten, align 8, !dbg !889
  %inc = add i64 %18, 1, !dbg !889
  store i64 %inc, i64* %numWritten, align 8, !dbg !889
  br label %while.cond, !dbg !868, !llvm.loop !890

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !892
  ret i64 %19, !dbg !893
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !894 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !897, metadata !DIExpression()), !dbg !898
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !899, metadata !DIExpression()), !dbg !900
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !901, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !903, metadata !DIExpression()), !dbg !904
  store i64 0, i64* %numWritten, align 8, !dbg !904
  br label %while.cond, !dbg !905

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !906
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !907
  %cmp = icmp ult i64 %0, %1, !dbg !908
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !909

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !910
  %3 = load i64, i64* %numWritten, align 8, !dbg !911
  %mul = mul i64 2, %3, !dbg !912
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !910
  %4 = load i32, i32* %arrayidx, align 4, !dbg !910
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !913
  %tobool = icmp ne i32 %call, 0, !dbg !913
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !914

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !915
  %6 = load i64, i64* %numWritten, align 8, !dbg !916
  %mul1 = mul i64 2, %6, !dbg !917
  %add = add i64 %mul1, 1, !dbg !918
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !915
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !915
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !919
  %tobool4 = icmp ne i32 %call3, 0, !dbg !914
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !920
  br i1 %8, label %while.body, label %while.end, !dbg !905

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !921, metadata !DIExpression()), !dbg !923
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !924
  %10 = load i64, i64* %numWritten, align 8, !dbg !925
  %mul5 = mul i64 2, %10, !dbg !926
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !924
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !927
  %11 = load i32, i32* %byte, align 4, !dbg !928
  %conv = trunc i32 %11 to i8, !dbg !929
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !930
  %13 = load i64, i64* %numWritten, align 8, !dbg !931
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !930
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !932
  %14 = load i64, i64* %numWritten, align 8, !dbg !933
  %inc = add i64 %14, 1, !dbg !933
  store i64 %inc, i64* %numWritten, align 8, !dbg !933
  br label %while.cond, !dbg !905, !llvm.loop !934

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !936
  ret i64 %15, !dbg !937
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !938 {
entry:
  ret i32 1, !dbg !941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !942 {
entry:
  ret i32 0, !dbg !943
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !944 {
entry:
  %call = call i32 @rand() #8, !dbg !945
  %rem = srem i32 %call, 2, !dbg !946
  ret i32 %rem, !dbg !947
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !948 {
entry:
  ret void, !dbg !949
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !950 {
entry:
  ret void, !dbg !951
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !952 {
entry:
  ret void, !dbg !953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !954 {
entry:
  ret void, !dbg !955
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !956 {
entry:
  ret void, !dbg !957
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !958 {
entry:
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !960 {
entry:
  ret void, !dbg !961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !962 {
entry:
  ret void, !dbg !963
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !964 {
entry:
  ret void, !dbg !965
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !966 {
entry:
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !968 {
entry:
  ret void, !dbg !969
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !970 {
entry:
  ret void, !dbg !971
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !972 {
entry:
  ret void, !dbg !973
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !974 {
entry:
  ret void, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !976 {
entry:
  ret void, !dbg !977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !978 {
entry:
  ret void, !dbg !979
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !980 {
entry:
  ret void, !dbg !981
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !982 {
entry:
  ret void, !dbg !983
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_932/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_932/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!117 = !DILocalVariable(name: "recvResult", scope: !118, file: !45, line: 62, type: !23)
!118 = distinct !DILexicalBlock(scope: !119, file: !45, line: 57, column: 9)
!119 = distinct !DILexicalBlock(scope: !120, file: !45, line: 56, column: 5)
!120 = distinct !DILexicalBlock(scope: !104, file: !45, line: 55, column: 8)
!121 = !DILocation(line: 62, column: 17, scope: !118)
!122 = !DILocalVariable(name: "service", scope: !118, file: !45, line: 63, type: !123)
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
!143 = !DILocation(line: 63, column: 32, scope: !118)
!144 = !DILocalVariable(name: "replace", scope: !118, file: !45, line: 64, type: !42)
!145 = !DILocation(line: 64, column: 19, scope: !118)
!146 = !DILocalVariable(name: "connectSocket", scope: !118, file: !45, line: 65, type: !23)
!147 = !DILocation(line: 65, column: 20, scope: !118)
!148 = !DILocalVariable(name: "dataLen", scope: !118, file: !45, line: 66, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !151)
!150 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!151 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DILocation(line: 66, column: 20, scope: !118)
!153 = !DILocation(line: 66, column: 37, scope: !118)
!154 = !DILocation(line: 66, column: 30, scope: !118)
!155 = !DILocation(line: 67, column: 13, scope: !118)
!156 = !DILocation(line: 77, column: 33, scope: !157)
!157 = distinct !DILexicalBlock(scope: !118, file: !45, line: 68, column: 13)
!158 = !DILocation(line: 77, column: 31, scope: !157)
!159 = !DILocation(line: 78, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !45, line: 78, column: 21)
!161 = !DILocation(line: 78, column: 35, scope: !160)
!162 = !DILocation(line: 78, column: 21, scope: !157)
!163 = !DILocation(line: 80, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 79, column: 17)
!165 = !DILocation(line: 82, column: 17, scope: !157)
!166 = !DILocation(line: 83, column: 25, scope: !157)
!167 = !DILocation(line: 83, column: 36, scope: !157)
!168 = !DILocation(line: 84, column: 43, scope: !157)
!169 = !DILocation(line: 84, column: 25, scope: !157)
!170 = !DILocation(line: 84, column: 34, scope: !157)
!171 = !DILocation(line: 84, column: 41, scope: !157)
!172 = !DILocation(line: 85, column: 36, scope: !157)
!173 = !DILocation(line: 85, column: 25, scope: !157)
!174 = !DILocation(line: 85, column: 34, scope: !157)
!175 = !DILocation(line: 86, column: 29, scope: !176)
!176 = distinct !DILexicalBlock(scope: !157, file: !45, line: 86, column: 21)
!177 = !DILocation(line: 86, column: 44, scope: !176)
!178 = !DILocation(line: 86, column: 21, scope: !176)
!179 = !DILocation(line: 86, column: 89, scope: !176)
!180 = !DILocation(line: 86, column: 21, scope: !157)
!181 = !DILocation(line: 88, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !45, line: 87, column: 17)
!183 = !DILocation(line: 93, column: 35, scope: !157)
!184 = !DILocation(line: 93, column: 59, scope: !157)
!185 = !DILocation(line: 93, column: 66, scope: !157)
!186 = !DILocation(line: 93, column: 64, scope: !157)
!187 = !DILocation(line: 93, column: 98, scope: !157)
!188 = !DILocation(line: 93, column: 96, scope: !157)
!189 = !DILocation(line: 93, column: 106, scope: !157)
!190 = !DILocation(line: 93, column: 89, scope: !157)
!191 = !DILocation(line: 93, column: 30, scope: !157)
!192 = !DILocation(line: 93, column: 28, scope: !157)
!193 = !DILocation(line: 94, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !157, file: !45, line: 94, column: 21)
!195 = !DILocation(line: 94, column: 32, scope: !194)
!196 = !DILocation(line: 94, column: 48, scope: !194)
!197 = !DILocation(line: 94, column: 51, scope: !194)
!198 = !DILocation(line: 94, column: 62, scope: !194)
!199 = !DILocation(line: 94, column: 21, scope: !157)
!200 = !DILocation(line: 96, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !45, line: 95, column: 17)
!202 = !DILocation(line: 99, column: 17, scope: !157)
!203 = !DILocation(line: 99, column: 22, scope: !157)
!204 = !DILocation(line: 99, column: 32, scope: !157)
!205 = !DILocation(line: 99, column: 43, scope: !157)
!206 = !DILocation(line: 99, column: 30, scope: !157)
!207 = !DILocation(line: 99, column: 59, scope: !157)
!208 = !DILocation(line: 101, column: 34, scope: !157)
!209 = !DILocation(line: 101, column: 27, scope: !157)
!210 = !DILocation(line: 101, column: 25, scope: !157)
!211 = !DILocation(line: 102, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !157, file: !45, line: 102, column: 21)
!213 = !DILocation(line: 102, column: 21, scope: !157)
!214 = !DILocation(line: 104, column: 22, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !45, line: 103, column: 17)
!216 = !DILocation(line: 104, column: 30, scope: !215)
!217 = !DILocation(line: 105, column: 17, scope: !215)
!218 = !DILocation(line: 106, column: 34, scope: !157)
!219 = !DILocation(line: 106, column: 27, scope: !157)
!220 = !DILocation(line: 106, column: 25, scope: !157)
!221 = !DILocation(line: 107, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !157, file: !45, line: 107, column: 21)
!223 = !DILocation(line: 107, column: 21, scope: !157)
!224 = !DILocation(line: 109, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 108, column: 17)
!226 = !DILocation(line: 109, column: 30, scope: !225)
!227 = !DILocation(line: 110, column: 17, scope: !225)
!228 = !DILocation(line: 111, column: 13, scope: !157)
!229 = !DILocation(line: 113, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !118, file: !45, line: 113, column: 17)
!231 = !DILocation(line: 113, column: 31, scope: !230)
!232 = !DILocation(line: 113, column: 17, scope: !118)
!233 = !DILocation(line: 115, column: 30, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !45, line: 114, column: 13)
!235 = !DILocation(line: 115, column: 17, scope: !234)
!236 = !DILocation(line: 116, column: 13, scope: !234)
!237 = !DILocalVariable(name: "i", scope: !238, file: !45, line: 128, type: !23)
!238 = distinct !DILexicalBlock(scope: !239, file: !45, line: 127, column: 9)
!239 = distinct !DILexicalBlock(scope: !240, file: !45, line: 126, column: 5)
!240 = distinct !DILexicalBlock(scope: !104, file: !45, line: 125, column: 8)
!241 = !DILocation(line: 128, column: 17, scope: !238)
!242 = !DILocalVariable(name: "n", scope: !238, file: !45, line: 128, type: !23)
!243 = !DILocation(line: 128, column: 20, scope: !238)
!244 = !DILocalVariable(name: "intVariable", scope: !238, file: !45, line: 128, type: !23)
!245 = !DILocation(line: 128, column: 23, scope: !238)
!246 = !DILocation(line: 129, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !238, file: !45, line: 129, column: 17)
!248 = !DILocation(line: 129, column: 17, scope: !247)
!249 = !DILocation(line: 129, column: 40, scope: !247)
!250 = !DILocation(line: 129, column: 17, scope: !238)
!251 = !DILocation(line: 132, column: 29, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !45, line: 130, column: 13)
!253 = !DILocation(line: 133, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !45, line: 133, column: 17)
!255 = !DILocation(line: 133, column: 22, scope: !254)
!256 = !DILocation(line: 133, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !45, line: 133, column: 17)
!258 = !DILocation(line: 133, column: 33, scope: !257)
!259 = !DILocation(line: 133, column: 31, scope: !257)
!260 = !DILocation(line: 133, column: 17, scope: !254)
!261 = !DILocation(line: 136, column: 32, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !45, line: 134, column: 17)
!263 = !DILocation(line: 137, column: 17, scope: !262)
!264 = !DILocation(line: 133, column: 37, scope: !257)
!265 = !DILocation(line: 133, column: 17, scope: !257)
!266 = distinct !{!266, !260, !267, !268}
!267 = !DILocation(line: 137, column: 17, scope: !254)
!268 = !{!"llvm.loop.mustprogress"}
!269 = !DILocation(line: 138, column: 30, scope: !252)
!270 = !DILocation(line: 138, column: 17, scope: !252)
!271 = !DILocation(line: 139, column: 13, scope: !252)
!272 = !DILocation(line: 142, column: 1, scope: !104)
!273 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 149, type: !105, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!274 = !DILocalVariable(name: "data", scope: !273, file: !45, line: 151, type: !42)
!275 = !DILocation(line: 151, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !45, line: 152, type: !111)
!277 = !DILocation(line: 152, column: 10, scope: !273)
!278 = !DILocation(line: 153, column: 12, scope: !273)
!279 = !DILocation(line: 153, column: 10, scope: !273)
!280 = !DILocalVariable(name: "recvResult", scope: !281, file: !45, line: 161, type: !23)
!281 = distinct !DILexicalBlock(scope: !282, file: !45, line: 156, column: 9)
!282 = distinct !DILexicalBlock(scope: !283, file: !45, line: 155, column: 5)
!283 = distinct !DILexicalBlock(scope: !273, file: !45, line: 154, column: 8)
!284 = !DILocation(line: 161, column: 17, scope: !281)
!285 = !DILocalVariable(name: "service", scope: !281, file: !45, line: 162, type: !123)
!286 = !DILocation(line: 162, column: 32, scope: !281)
!287 = !DILocalVariable(name: "replace", scope: !281, file: !45, line: 163, type: !42)
!288 = !DILocation(line: 163, column: 19, scope: !281)
!289 = !DILocalVariable(name: "connectSocket", scope: !281, file: !45, line: 164, type: !23)
!290 = !DILocation(line: 164, column: 20, scope: !281)
!291 = !DILocalVariable(name: "dataLen", scope: !281, file: !45, line: 165, type: !149)
!292 = !DILocation(line: 165, column: 20, scope: !281)
!293 = !DILocation(line: 165, column: 37, scope: !281)
!294 = !DILocation(line: 165, column: 30, scope: !281)
!295 = !DILocation(line: 166, column: 13, scope: !281)
!296 = !DILocation(line: 176, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !281, file: !45, line: 167, column: 13)
!298 = !DILocation(line: 176, column: 31, scope: !297)
!299 = !DILocation(line: 177, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !45, line: 177, column: 21)
!301 = !DILocation(line: 177, column: 35, scope: !300)
!302 = !DILocation(line: 177, column: 21, scope: !297)
!303 = !DILocation(line: 179, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !45, line: 178, column: 17)
!305 = !DILocation(line: 181, column: 17, scope: !297)
!306 = !DILocation(line: 182, column: 25, scope: !297)
!307 = !DILocation(line: 182, column: 36, scope: !297)
!308 = !DILocation(line: 183, column: 43, scope: !297)
!309 = !DILocation(line: 183, column: 25, scope: !297)
!310 = !DILocation(line: 183, column: 34, scope: !297)
!311 = !DILocation(line: 183, column: 41, scope: !297)
!312 = !DILocation(line: 184, column: 36, scope: !297)
!313 = !DILocation(line: 184, column: 25, scope: !297)
!314 = !DILocation(line: 184, column: 34, scope: !297)
!315 = !DILocation(line: 185, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !297, file: !45, line: 185, column: 21)
!317 = !DILocation(line: 185, column: 44, scope: !316)
!318 = !DILocation(line: 185, column: 21, scope: !316)
!319 = !DILocation(line: 185, column: 89, scope: !316)
!320 = !DILocation(line: 185, column: 21, scope: !297)
!321 = !DILocation(line: 187, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !45, line: 186, column: 17)
!323 = !DILocation(line: 192, column: 35, scope: !297)
!324 = !DILocation(line: 192, column: 59, scope: !297)
!325 = !DILocation(line: 192, column: 66, scope: !297)
!326 = !DILocation(line: 192, column: 64, scope: !297)
!327 = !DILocation(line: 192, column: 98, scope: !297)
!328 = !DILocation(line: 192, column: 96, scope: !297)
!329 = !DILocation(line: 192, column: 106, scope: !297)
!330 = !DILocation(line: 192, column: 89, scope: !297)
!331 = !DILocation(line: 192, column: 30, scope: !297)
!332 = !DILocation(line: 192, column: 28, scope: !297)
!333 = !DILocation(line: 193, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !297, file: !45, line: 193, column: 21)
!335 = !DILocation(line: 193, column: 32, scope: !334)
!336 = !DILocation(line: 193, column: 48, scope: !334)
!337 = !DILocation(line: 193, column: 51, scope: !334)
!338 = !DILocation(line: 193, column: 62, scope: !334)
!339 = !DILocation(line: 193, column: 21, scope: !297)
!340 = !DILocation(line: 195, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !45, line: 194, column: 17)
!342 = !DILocation(line: 198, column: 17, scope: !297)
!343 = !DILocation(line: 198, column: 22, scope: !297)
!344 = !DILocation(line: 198, column: 32, scope: !297)
!345 = !DILocation(line: 198, column: 43, scope: !297)
!346 = !DILocation(line: 198, column: 30, scope: !297)
!347 = !DILocation(line: 198, column: 59, scope: !297)
!348 = !DILocation(line: 200, column: 34, scope: !297)
!349 = !DILocation(line: 200, column: 27, scope: !297)
!350 = !DILocation(line: 200, column: 25, scope: !297)
!351 = !DILocation(line: 201, column: 21, scope: !352)
!352 = distinct !DILexicalBlock(scope: !297, file: !45, line: 201, column: 21)
!353 = !DILocation(line: 201, column: 21, scope: !297)
!354 = !DILocation(line: 203, column: 22, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !45, line: 202, column: 17)
!356 = !DILocation(line: 203, column: 30, scope: !355)
!357 = !DILocation(line: 204, column: 17, scope: !355)
!358 = !DILocation(line: 205, column: 34, scope: !297)
!359 = !DILocation(line: 205, column: 27, scope: !297)
!360 = !DILocation(line: 205, column: 25, scope: !297)
!361 = !DILocation(line: 206, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !297, file: !45, line: 206, column: 21)
!363 = !DILocation(line: 206, column: 21, scope: !297)
!364 = !DILocation(line: 208, column: 22, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !45, line: 207, column: 17)
!366 = !DILocation(line: 208, column: 30, scope: !365)
!367 = !DILocation(line: 209, column: 17, scope: !365)
!368 = !DILocation(line: 210, column: 13, scope: !297)
!369 = !DILocation(line: 212, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !281, file: !45, line: 212, column: 17)
!371 = !DILocation(line: 212, column: 31, scope: !370)
!372 = !DILocation(line: 212, column: 17, scope: !281)
!373 = !DILocation(line: 214, column: 30, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !45, line: 213, column: 13)
!375 = !DILocation(line: 214, column: 17, scope: !374)
!376 = !DILocation(line: 215, column: 13, scope: !374)
!377 = !DILocalVariable(name: "i", scope: !378, file: !45, line: 232, type: !23)
!378 = distinct !DILexicalBlock(scope: !379, file: !45, line: 231, column: 9)
!379 = distinct !DILexicalBlock(scope: !380, file: !45, line: 230, column: 5)
!380 = distinct !DILexicalBlock(scope: !273, file: !45, line: 224, column: 8)
!381 = !DILocation(line: 232, column: 17, scope: !378)
!382 = !DILocalVariable(name: "n", scope: !378, file: !45, line: 232, type: !23)
!383 = !DILocation(line: 232, column: 20, scope: !378)
!384 = !DILocalVariable(name: "intVariable", scope: !378, file: !45, line: 232, type: !23)
!385 = !DILocation(line: 232, column: 23, scope: !378)
!386 = !DILocation(line: 233, column: 24, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !45, line: 233, column: 17)
!388 = !DILocation(line: 233, column: 17, scope: !387)
!389 = !DILocation(line: 233, column: 40, scope: !387)
!390 = !DILocation(line: 233, column: 17, scope: !378)
!391 = !DILocation(line: 236, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !45, line: 236, column: 21)
!393 = distinct !DILexicalBlock(scope: !387, file: !45, line: 234, column: 13)
!394 = !DILocation(line: 236, column: 23, scope: !392)
!395 = !DILocation(line: 236, column: 21, scope: !393)
!396 = !DILocation(line: 238, column: 33, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !45, line: 237, column: 17)
!398 = !DILocation(line: 239, column: 28, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !45, line: 239, column: 21)
!400 = !DILocation(line: 239, column: 26, scope: !399)
!401 = !DILocation(line: 239, column: 33, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !45, line: 239, column: 21)
!403 = !DILocation(line: 239, column: 37, scope: !402)
!404 = !DILocation(line: 239, column: 35, scope: !402)
!405 = !DILocation(line: 239, column: 21, scope: !399)
!406 = !DILocation(line: 242, column: 36, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !45, line: 240, column: 21)
!408 = !DILocation(line: 243, column: 21, scope: !407)
!409 = !DILocation(line: 239, column: 41, scope: !402)
!410 = !DILocation(line: 239, column: 21, scope: !402)
!411 = distinct !{!411, !405, !412, !268}
!412 = !DILocation(line: 243, column: 21, scope: !399)
!413 = !DILocation(line: 244, column: 34, scope: !397)
!414 = !DILocation(line: 244, column: 21, scope: !397)
!415 = !DILocation(line: 245, column: 17, scope: !397)
!416 = !DILocation(line: 246, column: 13, scope: !393)
!417 = !DILocation(line: 249, column: 1, scope: !273)
!418 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 252, type: !105, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!419 = !DILocalVariable(name: "data", scope: !418, file: !45, line: 254, type: !42)
!420 = !DILocation(line: 254, column: 12, scope: !418)
!421 = !DILocalVariable(name: "dataBuffer", scope: !418, file: !45, line: 255, type: !111)
!422 = !DILocation(line: 255, column: 10, scope: !418)
!423 = !DILocation(line: 256, column: 12, scope: !418)
!424 = !DILocation(line: 256, column: 10, scope: !418)
!425 = !DILocalVariable(name: "recvResult", scope: !426, file: !45, line: 264, type: !23)
!426 = distinct !DILexicalBlock(scope: !427, file: !45, line: 259, column: 9)
!427 = distinct !DILexicalBlock(scope: !428, file: !45, line: 258, column: 5)
!428 = distinct !DILexicalBlock(scope: !418, file: !45, line: 257, column: 8)
!429 = !DILocation(line: 264, column: 17, scope: !426)
!430 = !DILocalVariable(name: "service", scope: !426, file: !45, line: 265, type: !123)
!431 = !DILocation(line: 265, column: 32, scope: !426)
!432 = !DILocalVariable(name: "replace", scope: !426, file: !45, line: 266, type: !42)
!433 = !DILocation(line: 266, column: 19, scope: !426)
!434 = !DILocalVariable(name: "connectSocket", scope: !426, file: !45, line: 267, type: !23)
!435 = !DILocation(line: 267, column: 20, scope: !426)
!436 = !DILocalVariable(name: "dataLen", scope: !426, file: !45, line: 268, type: !149)
!437 = !DILocation(line: 268, column: 20, scope: !426)
!438 = !DILocation(line: 268, column: 37, scope: !426)
!439 = !DILocation(line: 268, column: 30, scope: !426)
!440 = !DILocation(line: 269, column: 13, scope: !426)
!441 = !DILocation(line: 279, column: 33, scope: !442)
!442 = distinct !DILexicalBlock(scope: !426, file: !45, line: 270, column: 13)
!443 = !DILocation(line: 279, column: 31, scope: !442)
!444 = !DILocation(line: 280, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !45, line: 280, column: 21)
!446 = !DILocation(line: 280, column: 35, scope: !445)
!447 = !DILocation(line: 280, column: 21, scope: !442)
!448 = !DILocation(line: 282, column: 21, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !45, line: 281, column: 17)
!450 = !DILocation(line: 284, column: 17, scope: !442)
!451 = !DILocation(line: 285, column: 25, scope: !442)
!452 = !DILocation(line: 285, column: 36, scope: !442)
!453 = !DILocation(line: 286, column: 43, scope: !442)
!454 = !DILocation(line: 286, column: 25, scope: !442)
!455 = !DILocation(line: 286, column: 34, scope: !442)
!456 = !DILocation(line: 286, column: 41, scope: !442)
!457 = !DILocation(line: 287, column: 36, scope: !442)
!458 = !DILocation(line: 287, column: 25, scope: !442)
!459 = !DILocation(line: 287, column: 34, scope: !442)
!460 = !DILocation(line: 288, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !442, file: !45, line: 288, column: 21)
!462 = !DILocation(line: 288, column: 44, scope: !461)
!463 = !DILocation(line: 288, column: 21, scope: !461)
!464 = !DILocation(line: 288, column: 89, scope: !461)
!465 = !DILocation(line: 288, column: 21, scope: !442)
!466 = !DILocation(line: 290, column: 21, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !45, line: 289, column: 17)
!468 = !DILocation(line: 295, column: 35, scope: !442)
!469 = !DILocation(line: 295, column: 59, scope: !442)
!470 = !DILocation(line: 295, column: 66, scope: !442)
!471 = !DILocation(line: 295, column: 64, scope: !442)
!472 = !DILocation(line: 295, column: 98, scope: !442)
!473 = !DILocation(line: 295, column: 96, scope: !442)
!474 = !DILocation(line: 295, column: 106, scope: !442)
!475 = !DILocation(line: 295, column: 89, scope: !442)
!476 = !DILocation(line: 295, column: 30, scope: !442)
!477 = !DILocation(line: 295, column: 28, scope: !442)
!478 = !DILocation(line: 296, column: 21, scope: !479)
!479 = distinct !DILexicalBlock(scope: !442, file: !45, line: 296, column: 21)
!480 = !DILocation(line: 296, column: 32, scope: !479)
!481 = !DILocation(line: 296, column: 48, scope: !479)
!482 = !DILocation(line: 296, column: 51, scope: !479)
!483 = !DILocation(line: 296, column: 62, scope: !479)
!484 = !DILocation(line: 296, column: 21, scope: !442)
!485 = !DILocation(line: 298, column: 21, scope: !486)
!486 = distinct !DILexicalBlock(scope: !479, file: !45, line: 297, column: 17)
!487 = !DILocation(line: 301, column: 17, scope: !442)
!488 = !DILocation(line: 301, column: 22, scope: !442)
!489 = !DILocation(line: 301, column: 32, scope: !442)
!490 = !DILocation(line: 301, column: 43, scope: !442)
!491 = !DILocation(line: 301, column: 30, scope: !442)
!492 = !DILocation(line: 301, column: 59, scope: !442)
!493 = !DILocation(line: 303, column: 34, scope: !442)
!494 = !DILocation(line: 303, column: 27, scope: !442)
!495 = !DILocation(line: 303, column: 25, scope: !442)
!496 = !DILocation(line: 304, column: 21, scope: !497)
!497 = distinct !DILexicalBlock(scope: !442, file: !45, line: 304, column: 21)
!498 = !DILocation(line: 304, column: 21, scope: !442)
!499 = !DILocation(line: 306, column: 22, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !45, line: 305, column: 17)
!501 = !DILocation(line: 306, column: 30, scope: !500)
!502 = !DILocation(line: 307, column: 17, scope: !500)
!503 = !DILocation(line: 308, column: 34, scope: !442)
!504 = !DILocation(line: 308, column: 27, scope: !442)
!505 = !DILocation(line: 308, column: 25, scope: !442)
!506 = !DILocation(line: 309, column: 21, scope: !507)
!507 = distinct !DILexicalBlock(scope: !442, file: !45, line: 309, column: 21)
!508 = !DILocation(line: 309, column: 21, scope: !442)
!509 = !DILocation(line: 311, column: 22, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !45, line: 310, column: 17)
!511 = !DILocation(line: 311, column: 30, scope: !510)
!512 = !DILocation(line: 312, column: 17, scope: !510)
!513 = !DILocation(line: 313, column: 13, scope: !442)
!514 = !DILocation(line: 315, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !426, file: !45, line: 315, column: 17)
!516 = !DILocation(line: 315, column: 31, scope: !515)
!517 = !DILocation(line: 315, column: 17, scope: !426)
!518 = !DILocation(line: 317, column: 30, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !45, line: 316, column: 13)
!520 = !DILocation(line: 317, column: 17, scope: !519)
!521 = !DILocation(line: 318, column: 13, scope: !519)
!522 = !DILocalVariable(name: "i", scope: !523, file: !45, line: 330, type: !23)
!523 = distinct !DILexicalBlock(scope: !524, file: !45, line: 329, column: 9)
!524 = distinct !DILexicalBlock(scope: !525, file: !45, line: 328, column: 5)
!525 = distinct !DILexicalBlock(scope: !418, file: !45, line: 327, column: 8)
!526 = !DILocation(line: 330, column: 17, scope: !523)
!527 = !DILocalVariable(name: "n", scope: !523, file: !45, line: 330, type: !23)
!528 = !DILocation(line: 330, column: 20, scope: !523)
!529 = !DILocalVariable(name: "intVariable", scope: !523, file: !45, line: 330, type: !23)
!530 = !DILocation(line: 330, column: 23, scope: !523)
!531 = !DILocation(line: 331, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !523, file: !45, line: 331, column: 17)
!533 = !DILocation(line: 331, column: 17, scope: !532)
!534 = !DILocation(line: 331, column: 40, scope: !532)
!535 = !DILocation(line: 331, column: 17, scope: !523)
!536 = !DILocation(line: 334, column: 21, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !45, line: 334, column: 21)
!538 = distinct !DILexicalBlock(scope: !532, file: !45, line: 332, column: 13)
!539 = !DILocation(line: 334, column: 23, scope: !537)
!540 = !DILocation(line: 334, column: 21, scope: !538)
!541 = !DILocation(line: 336, column: 33, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !45, line: 335, column: 17)
!543 = !DILocation(line: 337, column: 28, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !45, line: 337, column: 21)
!545 = !DILocation(line: 337, column: 26, scope: !544)
!546 = !DILocation(line: 337, column: 33, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !45, line: 337, column: 21)
!548 = !DILocation(line: 337, column: 37, scope: !547)
!549 = !DILocation(line: 337, column: 35, scope: !547)
!550 = !DILocation(line: 337, column: 21, scope: !544)
!551 = !DILocation(line: 340, column: 36, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !45, line: 338, column: 21)
!553 = !DILocation(line: 341, column: 21, scope: !552)
!554 = !DILocation(line: 337, column: 41, scope: !547)
!555 = !DILocation(line: 337, column: 21, scope: !547)
!556 = distinct !{!556, !550, !557, !268}
!557 = !DILocation(line: 341, column: 21, scope: !544)
!558 = !DILocation(line: 342, column: 34, scope: !542)
!559 = !DILocation(line: 342, column: 21, scope: !542)
!560 = !DILocation(line: 343, column: 17, scope: !542)
!561 = !DILocation(line: 344, column: 13, scope: !538)
!562 = !DILocation(line: 347, column: 1, scope: !418)
!563 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 350, type: !105, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!564 = !DILocalVariable(name: "data", scope: !563, file: !45, line: 352, type: !42)
!565 = !DILocation(line: 352, column: 12, scope: !563)
!566 = !DILocalVariable(name: "dataBuffer", scope: !563, file: !45, line: 353, type: !111)
!567 = !DILocation(line: 353, column: 10, scope: !563)
!568 = !DILocation(line: 354, column: 12, scope: !563)
!569 = !DILocation(line: 354, column: 10, scope: !563)
!570 = !DILocation(line: 363, column: 16, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !45, line: 361, column: 5)
!572 = distinct !DILexicalBlock(scope: !563, file: !45, line: 355, column: 8)
!573 = !DILocation(line: 363, column: 9, scope: !571)
!574 = !DILocalVariable(name: "i", scope: !575, file: !45, line: 368, type: !23)
!575 = distinct !DILexicalBlock(scope: !576, file: !45, line: 367, column: 9)
!576 = distinct !DILexicalBlock(scope: !577, file: !45, line: 366, column: 5)
!577 = distinct !DILexicalBlock(scope: !563, file: !45, line: 365, column: 8)
!578 = !DILocation(line: 368, column: 17, scope: !575)
!579 = !DILocalVariable(name: "n", scope: !575, file: !45, line: 368, type: !23)
!580 = !DILocation(line: 368, column: 20, scope: !575)
!581 = !DILocalVariable(name: "intVariable", scope: !575, file: !45, line: 368, type: !23)
!582 = !DILocation(line: 368, column: 23, scope: !575)
!583 = !DILocation(line: 369, column: 24, scope: !584)
!584 = distinct !DILexicalBlock(scope: !575, file: !45, line: 369, column: 17)
!585 = !DILocation(line: 369, column: 17, scope: !584)
!586 = !DILocation(line: 369, column: 40, scope: !584)
!587 = !DILocation(line: 369, column: 17, scope: !575)
!588 = !DILocation(line: 372, column: 29, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !45, line: 370, column: 13)
!590 = !DILocation(line: 373, column: 24, scope: !591)
!591 = distinct !DILexicalBlock(scope: !589, file: !45, line: 373, column: 17)
!592 = !DILocation(line: 373, column: 22, scope: !591)
!593 = !DILocation(line: 373, column: 29, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !45, line: 373, column: 17)
!595 = !DILocation(line: 373, column: 33, scope: !594)
!596 = !DILocation(line: 373, column: 31, scope: !594)
!597 = !DILocation(line: 373, column: 17, scope: !591)
!598 = !DILocation(line: 376, column: 32, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !45, line: 374, column: 17)
!600 = !DILocation(line: 377, column: 17, scope: !599)
!601 = !DILocation(line: 373, column: 37, scope: !594)
!602 = !DILocation(line: 373, column: 17, scope: !594)
!603 = distinct !{!603, !597, !604, !268}
!604 = !DILocation(line: 377, column: 17, scope: !591)
!605 = !DILocation(line: 378, column: 30, scope: !589)
!606 = !DILocation(line: 378, column: 17, scope: !589)
!607 = !DILocation(line: 379, column: 13, scope: !589)
!608 = !DILocation(line: 382, column: 1, scope: !563)
!609 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 385, type: !105, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!610 = !DILocalVariable(name: "data", scope: !609, file: !45, line: 387, type: !42)
!611 = !DILocation(line: 387, column: 12, scope: !609)
!612 = !DILocalVariable(name: "dataBuffer", scope: !609, file: !45, line: 388, type: !111)
!613 = !DILocation(line: 388, column: 10, scope: !609)
!614 = !DILocation(line: 389, column: 12, scope: !609)
!615 = !DILocation(line: 389, column: 10, scope: !609)
!616 = !DILocation(line: 393, column: 16, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !45, line: 391, column: 5)
!618 = distinct !DILexicalBlock(scope: !609, file: !45, line: 390, column: 8)
!619 = !DILocation(line: 393, column: 9, scope: !617)
!620 = !DILocalVariable(name: "i", scope: !621, file: !45, line: 398, type: !23)
!621 = distinct !DILexicalBlock(scope: !622, file: !45, line: 397, column: 9)
!622 = distinct !DILexicalBlock(scope: !623, file: !45, line: 396, column: 5)
!623 = distinct !DILexicalBlock(scope: !609, file: !45, line: 395, column: 8)
!624 = !DILocation(line: 398, column: 17, scope: !621)
!625 = !DILocalVariable(name: "n", scope: !621, file: !45, line: 398, type: !23)
!626 = !DILocation(line: 398, column: 20, scope: !621)
!627 = !DILocalVariable(name: "intVariable", scope: !621, file: !45, line: 398, type: !23)
!628 = !DILocation(line: 398, column: 23, scope: !621)
!629 = !DILocation(line: 399, column: 24, scope: !630)
!630 = distinct !DILexicalBlock(scope: !621, file: !45, line: 399, column: 17)
!631 = !DILocation(line: 399, column: 17, scope: !630)
!632 = !DILocation(line: 399, column: 40, scope: !630)
!633 = !DILocation(line: 399, column: 17, scope: !621)
!634 = !DILocation(line: 402, column: 29, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !45, line: 400, column: 13)
!636 = !DILocation(line: 403, column: 24, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !45, line: 403, column: 17)
!638 = !DILocation(line: 403, column: 22, scope: !637)
!639 = !DILocation(line: 403, column: 29, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !45, line: 403, column: 17)
!641 = !DILocation(line: 403, column: 33, scope: !640)
!642 = !DILocation(line: 403, column: 31, scope: !640)
!643 = !DILocation(line: 403, column: 17, scope: !637)
!644 = !DILocation(line: 406, column: 32, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !45, line: 404, column: 17)
!646 = !DILocation(line: 407, column: 17, scope: !645)
!647 = !DILocation(line: 403, column: 37, scope: !640)
!648 = !DILocation(line: 403, column: 17, scope: !640)
!649 = distinct !{!649, !643, !650, !268}
!650 = !DILocation(line: 407, column: 17, scope: !637)
!651 = !DILocation(line: 408, column: 30, scope: !635)
!652 = !DILocation(line: 408, column: 17, scope: !635)
!653 = !DILocation(line: 409, column: 13, scope: !635)
!654 = !DILocation(line: 412, column: 1, scope: !609)
!655 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03_good", scope: !45, file: !45, line: 414, type: !105, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!656 = !DILocation(line: 416, column: 5, scope: !655)
!657 = !DILocation(line: 417, column: 5, scope: !655)
!658 = !DILocation(line: 418, column: 5, scope: !655)
!659 = !DILocation(line: 419, column: 5, scope: !655)
!660 = !DILocation(line: 420, column: 1, scope: !655)
!661 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !662, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !42}
!664 = !DILocalVariable(name: "line", arg: 1, scope: !661, file: !3, line: 11, type: !42)
!665 = !DILocation(line: 11, column: 25, scope: !661)
!666 = !DILocation(line: 13, column: 1, scope: !661)
!667 = !DILocation(line: 14, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !661, file: !3, line: 14, column: 8)
!669 = !DILocation(line: 14, column: 13, scope: !668)
!670 = !DILocation(line: 14, column: 8, scope: !661)
!671 = !DILocation(line: 16, column: 24, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !3, line: 15, column: 5)
!673 = !DILocation(line: 16, column: 9, scope: !672)
!674 = !DILocation(line: 17, column: 5, scope: !672)
!675 = !DILocation(line: 18, column: 5, scope: !661)
!676 = !DILocation(line: 19, column: 1, scope: !661)
!677 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !662, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DILocalVariable(name: "line", arg: 1, scope: !677, file: !3, line: 20, type: !42)
!679 = !DILocation(line: 20, column: 29, scope: !677)
!680 = !DILocation(line: 22, column: 8, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 22, column: 8)
!682 = !DILocation(line: 22, column: 13, scope: !681)
!683 = !DILocation(line: 22, column: 8, scope: !677)
!684 = !DILocation(line: 24, column: 24, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 23, column: 5)
!686 = !DILocation(line: 24, column: 9, scope: !685)
!687 = !DILocation(line: 25, column: 5, scope: !685)
!688 = !DILocation(line: 26, column: 1, scope: !677)
!689 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !690, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !150, line: 74, baseType: !23)
!694 = !DILocalVariable(name: "line", arg: 1, scope: !689, file: !3, line: 27, type: !692)
!695 = !DILocation(line: 27, column: 29, scope: !689)
!696 = !DILocation(line: 29, column: 8, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !3, line: 29, column: 8)
!698 = !DILocation(line: 29, column: 13, scope: !697)
!699 = !DILocation(line: 29, column: 8, scope: !689)
!700 = !DILocation(line: 31, column: 27, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 30, column: 5)
!702 = !DILocation(line: 31, column: 9, scope: !701)
!703 = !DILocation(line: 32, column: 5, scope: !701)
!704 = !DILocation(line: 33, column: 1, scope: !689)
!705 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !706, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !23}
!708 = !DILocalVariable(name: "intNumber", arg: 1, scope: !705, file: !3, line: 35, type: !23)
!709 = !DILocation(line: 35, column: 24, scope: !705)
!710 = !DILocation(line: 37, column: 20, scope: !705)
!711 = !DILocation(line: 37, column: 5, scope: !705)
!712 = !DILocation(line: 38, column: 1, scope: !705)
!713 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !714, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!717 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !713, file: !3, line: 40, type: !716)
!718 = !DILocation(line: 40, column: 28, scope: !713)
!719 = !DILocation(line: 42, column: 21, scope: !713)
!720 = !DILocation(line: 42, column: 5, scope: !713)
!721 = !DILocation(line: 43, column: 1, scope: !713)
!722 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !723, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725}
!725 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!726 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !722, file: !3, line: 45, type: !725)
!727 = !DILocation(line: 45, column: 28, scope: !722)
!728 = !DILocation(line: 47, column: 20, scope: !722)
!729 = !DILocation(line: 47, column: 5, scope: !722)
!730 = !DILocation(line: 48, column: 1, scope: !722)
!731 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !732, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734}
!734 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!735 = !DILocalVariable(name: "longNumber", arg: 1, scope: !731, file: !3, line: 50, type: !734)
!736 = !DILocation(line: 50, column: 26, scope: !731)
!737 = !DILocation(line: 52, column: 21, scope: !731)
!738 = !DILocation(line: 52, column: 5, scope: !731)
!739 = !DILocation(line: 53, column: 1, scope: !731)
!740 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !741, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !743}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !744, line: 27, baseType: !745)
!744 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !131, line: 44, baseType: !734)
!746 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !740, file: !3, line: 55, type: !743)
!747 = !DILocation(line: 55, column: 33, scope: !740)
!748 = !DILocation(line: 57, column: 29, scope: !740)
!749 = !DILocation(line: 57, column: 5, scope: !740)
!750 = !DILocation(line: 58, column: 1, scope: !740)
!751 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !752, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !149}
!754 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !751, file: !3, line: 60, type: !149)
!755 = !DILocation(line: 60, column: 29, scope: !751)
!756 = !DILocation(line: 62, column: 21, scope: !751)
!757 = !DILocation(line: 62, column: 5, scope: !751)
!758 = !DILocation(line: 63, column: 1, scope: !751)
!759 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !760, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !43}
!762 = !DILocalVariable(name: "charHex", arg: 1, scope: !759, file: !3, line: 65, type: !43)
!763 = !DILocation(line: 65, column: 29, scope: !759)
!764 = !DILocation(line: 67, column: 22, scope: !759)
!765 = !DILocation(line: 67, column: 5, scope: !759)
!766 = !DILocation(line: 68, column: 1, scope: !759)
!767 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !768, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !693}
!770 = !DILocalVariable(name: "wideChar", arg: 1, scope: !767, file: !3, line: 70, type: !693)
!771 = !DILocation(line: 70, column: 29, scope: !767)
!772 = !DILocalVariable(name: "s", scope: !767, file: !3, line: 74, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 64, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 2)
!776 = !DILocation(line: 74, column: 13, scope: !767)
!777 = !DILocation(line: 75, column: 16, scope: !767)
!778 = !DILocation(line: 75, column: 9, scope: !767)
!779 = !DILocation(line: 75, column: 14, scope: !767)
!780 = !DILocation(line: 76, column: 9, scope: !767)
!781 = !DILocation(line: 76, column: 14, scope: !767)
!782 = !DILocation(line: 77, column: 21, scope: !767)
!783 = !DILocation(line: 77, column: 5, scope: !767)
!784 = !DILocation(line: 78, column: 1, scope: !767)
!785 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !786, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !7}
!788 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !785, file: !3, line: 80, type: !7)
!789 = !DILocation(line: 80, column: 33, scope: !785)
!790 = !DILocation(line: 82, column: 20, scope: !785)
!791 = !DILocation(line: 82, column: 5, scope: !785)
!792 = !DILocation(line: 83, column: 1, scope: !785)
!793 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !794, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !25}
!796 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !793, file: !3, line: 85, type: !25)
!797 = !DILocation(line: 85, column: 45, scope: !793)
!798 = !DILocation(line: 87, column: 22, scope: !793)
!799 = !DILocation(line: 87, column: 5, scope: !793)
!800 = !DILocation(line: 88, column: 1, scope: !793)
!801 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !802, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !804}
!804 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!805 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !801, file: !3, line: 90, type: !804)
!806 = !DILocation(line: 90, column: 29, scope: !801)
!807 = !DILocation(line: 92, column: 20, scope: !801)
!808 = !DILocation(line: 92, column: 5, scope: !801)
!809 = !DILocation(line: 93, column: 1, scope: !801)
!810 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !811, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !815, line: 100, baseType: !816)
!815 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_932/source_code")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !815, line: 96, size: 64, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !816, file: !815, line: 98, baseType: !23, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !816, file: !815, line: 99, baseType: !23, size: 32, offset: 32)
!820 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !810, file: !3, line: 95, type: !813)
!821 = !DILocation(line: 95, column: 40, scope: !810)
!822 = !DILocation(line: 97, column: 26, scope: !810)
!823 = !DILocation(line: 97, column: 47, scope: !810)
!824 = !DILocation(line: 97, column: 55, scope: !810)
!825 = !DILocation(line: 97, column: 76, scope: !810)
!826 = !DILocation(line: 97, column: 5, scope: !810)
!827 = !DILocation(line: 98, column: 1, scope: !810)
!828 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !829, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !831, !149}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!832 = !DILocalVariable(name: "bytes", arg: 1, scope: !828, file: !3, line: 100, type: !831)
!833 = !DILocation(line: 100, column: 38, scope: !828)
!834 = !DILocalVariable(name: "numBytes", arg: 2, scope: !828, file: !3, line: 100, type: !149)
!835 = !DILocation(line: 100, column: 52, scope: !828)
!836 = !DILocalVariable(name: "i", scope: !828, file: !3, line: 102, type: !149)
!837 = !DILocation(line: 102, column: 12, scope: !828)
!838 = !DILocation(line: 103, column: 12, scope: !839)
!839 = distinct !DILexicalBlock(scope: !828, file: !3, line: 103, column: 5)
!840 = !DILocation(line: 103, column: 10, scope: !839)
!841 = !DILocation(line: 103, column: 17, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !3, line: 103, column: 5)
!843 = !DILocation(line: 103, column: 21, scope: !842)
!844 = !DILocation(line: 103, column: 19, scope: !842)
!845 = !DILocation(line: 103, column: 5, scope: !839)
!846 = !DILocation(line: 105, column: 24, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 104, column: 5)
!848 = !DILocation(line: 105, column: 30, scope: !847)
!849 = !DILocation(line: 105, column: 9, scope: !847)
!850 = !DILocation(line: 106, column: 5, scope: !847)
!851 = !DILocation(line: 103, column: 31, scope: !842)
!852 = !DILocation(line: 103, column: 5, scope: !842)
!853 = distinct !{!853, !845, !854, !268}
!854 = !DILocation(line: 106, column: 5, scope: !839)
!855 = !DILocation(line: 107, column: 5, scope: !828)
!856 = !DILocation(line: 108, column: 1, scope: !828)
!857 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !858, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DISubroutineType(types: !859)
!859 = !{!149, !831, !149, !42}
!860 = !DILocalVariable(name: "bytes", arg: 1, scope: !857, file: !3, line: 113, type: !831)
!861 = !DILocation(line: 113, column: 39, scope: !857)
!862 = !DILocalVariable(name: "numBytes", arg: 2, scope: !857, file: !3, line: 113, type: !149)
!863 = !DILocation(line: 113, column: 53, scope: !857)
!864 = !DILocalVariable(name: "hex", arg: 3, scope: !857, file: !3, line: 113, type: !42)
!865 = !DILocation(line: 113, column: 71, scope: !857)
!866 = !DILocalVariable(name: "numWritten", scope: !857, file: !3, line: 115, type: !149)
!867 = !DILocation(line: 115, column: 12, scope: !857)
!868 = !DILocation(line: 121, column: 5, scope: !857)
!869 = !DILocation(line: 121, column: 12, scope: !857)
!870 = !DILocation(line: 121, column: 25, scope: !857)
!871 = !DILocation(line: 121, column: 23, scope: !857)
!872 = !DILocation(line: 121, column: 34, scope: !857)
!873 = !DILocation(line: 121, column: 37, scope: !857)
!874 = !DILocation(line: 121, column: 67, scope: !857)
!875 = !DILocation(line: 121, column: 70, scope: !857)
!876 = !DILocation(line: 0, scope: !857)
!877 = !DILocalVariable(name: "byte", scope: !878, file: !3, line: 123, type: !23)
!878 = distinct !DILexicalBlock(scope: !857, file: !3, line: 122, column: 5)
!879 = !DILocation(line: 123, column: 13, scope: !878)
!880 = !DILocation(line: 124, column: 17, scope: !878)
!881 = !DILocation(line: 124, column: 25, scope: !878)
!882 = !DILocation(line: 124, column: 23, scope: !878)
!883 = !DILocation(line: 124, column: 9, scope: !878)
!884 = !DILocation(line: 125, column: 45, scope: !878)
!885 = !DILocation(line: 125, column: 29, scope: !878)
!886 = !DILocation(line: 125, column: 9, scope: !878)
!887 = !DILocation(line: 125, column: 15, scope: !878)
!888 = !DILocation(line: 125, column: 27, scope: !878)
!889 = !DILocation(line: 126, column: 9, scope: !878)
!890 = distinct !{!890, !868, !891, !268}
!891 = !DILocation(line: 127, column: 5, scope: !857)
!892 = !DILocation(line: 129, column: 12, scope: !857)
!893 = !DILocation(line: 129, column: 5, scope: !857)
!894 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !895, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!895 = !DISubroutineType(types: !896)
!896 = !{!149, !831, !149, !692}
!897 = !DILocalVariable(name: "bytes", arg: 1, scope: !894, file: !3, line: 135, type: !831)
!898 = !DILocation(line: 135, column: 41, scope: !894)
!899 = !DILocalVariable(name: "numBytes", arg: 2, scope: !894, file: !3, line: 135, type: !149)
!900 = !DILocation(line: 135, column: 55, scope: !894)
!901 = !DILocalVariable(name: "hex", arg: 3, scope: !894, file: !3, line: 135, type: !692)
!902 = !DILocation(line: 135, column: 76, scope: !894)
!903 = !DILocalVariable(name: "numWritten", scope: !894, file: !3, line: 137, type: !149)
!904 = !DILocation(line: 137, column: 12, scope: !894)
!905 = !DILocation(line: 143, column: 5, scope: !894)
!906 = !DILocation(line: 143, column: 12, scope: !894)
!907 = !DILocation(line: 143, column: 25, scope: !894)
!908 = !DILocation(line: 143, column: 23, scope: !894)
!909 = !DILocation(line: 143, column: 34, scope: !894)
!910 = !DILocation(line: 143, column: 47, scope: !894)
!911 = !DILocation(line: 143, column: 55, scope: !894)
!912 = !DILocation(line: 143, column: 53, scope: !894)
!913 = !DILocation(line: 143, column: 37, scope: !894)
!914 = !DILocation(line: 143, column: 68, scope: !894)
!915 = !DILocation(line: 143, column: 81, scope: !894)
!916 = !DILocation(line: 143, column: 89, scope: !894)
!917 = !DILocation(line: 143, column: 87, scope: !894)
!918 = !DILocation(line: 143, column: 100, scope: !894)
!919 = !DILocation(line: 143, column: 71, scope: !894)
!920 = !DILocation(line: 0, scope: !894)
!921 = !DILocalVariable(name: "byte", scope: !922, file: !3, line: 145, type: !23)
!922 = distinct !DILexicalBlock(scope: !894, file: !3, line: 144, column: 5)
!923 = !DILocation(line: 145, column: 13, scope: !922)
!924 = !DILocation(line: 146, column: 18, scope: !922)
!925 = !DILocation(line: 146, column: 26, scope: !922)
!926 = !DILocation(line: 146, column: 24, scope: !922)
!927 = !DILocation(line: 146, column: 9, scope: !922)
!928 = !DILocation(line: 147, column: 45, scope: !922)
!929 = !DILocation(line: 147, column: 29, scope: !922)
!930 = !DILocation(line: 147, column: 9, scope: !922)
!931 = !DILocation(line: 147, column: 15, scope: !922)
!932 = !DILocation(line: 147, column: 27, scope: !922)
!933 = !DILocation(line: 148, column: 9, scope: !922)
!934 = distinct !{!934, !905, !935, !268}
!935 = !DILocation(line: 149, column: 5, scope: !894)
!936 = !DILocation(line: 151, column: 12, scope: !894)
!937 = !DILocation(line: 151, column: 5, scope: !894)
!938 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !939, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!939 = !DISubroutineType(types: !940)
!940 = !{!23}
!941 = !DILocation(line: 158, column: 5, scope: !938)
!942 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !939, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!943 = !DILocation(line: 163, column: 5, scope: !942)
!944 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !939, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!945 = !DILocation(line: 168, column: 13, scope: !944)
!946 = !DILocation(line: 168, column: 20, scope: !944)
!947 = !DILocation(line: 168, column: 5, scope: !944)
!948 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!949 = !DILocation(line: 187, column: 16, scope: !948)
!950 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!951 = !DILocation(line: 188, column: 16, scope: !950)
!952 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!953 = !DILocation(line: 189, column: 16, scope: !952)
!954 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!955 = !DILocation(line: 190, column: 16, scope: !954)
!956 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!957 = !DILocation(line: 191, column: 16, scope: !956)
!958 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!959 = !DILocation(line: 192, column: 16, scope: !958)
!960 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!961 = !DILocation(line: 193, column: 16, scope: !960)
!962 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!963 = !DILocation(line: 194, column: 16, scope: !962)
!964 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!965 = !DILocation(line: 195, column: 16, scope: !964)
!966 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!967 = !DILocation(line: 198, column: 15, scope: !966)
!968 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!969 = !DILocation(line: 199, column: 15, scope: !968)
!970 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!971 = !DILocation(line: 200, column: 15, scope: !970)
!972 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!973 = !DILocation(line: 201, column: 15, scope: !972)
!974 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!975 = !DILocation(line: 202, column: 15, scope: !974)
!976 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!977 = !DILocation(line: 203, column: 15, scope: !976)
!978 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!979 = !DILocation(line: 204, column: 15, scope: !978)
!980 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!981 = !DILocation(line: 205, column: 15, scope: !980)
!982 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!983 = !DILocation(line: 206, column: 15, scope: !982)
