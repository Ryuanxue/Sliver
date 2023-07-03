; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !63
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !66
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !68
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !70
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !94
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !96
@globalTrue = dso_local global i32 1, align 4, !dbg !98
@globalFalse = dso_local global i32 0, align 4, !dbg !100
@globalFive = dso_local global i32 5, align 4, !dbg !102
@globalArgc = dso_local global i32 0, align 4, !dbg !104
@globalArgv = dso_local global i8** null, align 8, !dbg !106
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !113 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load i32, i32* @badStatic, align 4, !dbg !119
  %tobool = icmp ne i32 %0, 0, !dbg !119
  br i1 %tobool, label %if.then, label %if.end4, !dbg !121

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %n, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !128, metadata !DIExpression()), !dbg !129
  %1 = load i8*, i8** %data.addr, align 8, !dbg !130
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !132
  %cmp = icmp eq i32 %call, 1, !dbg !133
  br i1 %cmp, label %if.then1, label %if.end, !dbg !134

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !135
  store i32 0, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !140
  %3 = load i32, i32* %n, align 4, !dbg !142
  %cmp2 = icmp slt i32 %2, %3, !dbg !143
  br i1 %cmp2, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !145
  %inc = add nsw i32 %4, 1, !dbg !145
  store i32 %inc, i32* %intVariable, align 4, !dbg !145
  br label %for.inc, !dbg !147

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !148
  %inc3 = add nsw i32 %5, 1, !dbg !148
  store i32 %inc3, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !149, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !153
  call void @printIntLine(i32 %6), !dbg !154
  br label %if.end, !dbg !155

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !156

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_21_bad() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !163, metadata !DIExpression()), !dbg !167
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !167
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !168
  store i8* %arraydecay, i8** %data, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !170, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !173, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 -1, i32* %connectSocket, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !199, metadata !DIExpression()), !dbg !203
  %1 = load i8*, i8** %data, align 8, !dbg !204
  %call = call i64 @strlen(i8* %1) #8, !dbg !205
  store i64 %call, i64* %dataLen, align 8, !dbg !203
  br label %do.body, !dbg !206

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !207
  store i32 %call1, i32* %connectSocket, align 4, !dbg !209
  %2 = load i32, i32* %connectSocket, align 4, !dbg !210
  %cmp = icmp eq i32 %2, -1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !214

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !216
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !217
  store i16 2, i16* %sin_family, align 4, !dbg !218
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !219
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !220
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !221
  store i32 %call2, i32* %s_addr, align 4, !dbg !222
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !223
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !224
  store i16 %call3, i16* %sin_port, align 2, !dbg !225
  %4 = load i32, i32* %connectSocket, align 4, !dbg !226
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !228
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !229
  %cmp5 = icmp eq i32 %call4, -1, !dbg !230
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !231

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !232

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !234
  %7 = load i8*, i8** %data, align 8, !dbg !235
  %8 = load i64, i64* %dataLen, align 8, !dbg !236
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !237
  %9 = load i64, i64* %dataLen, align 8, !dbg !238
  %sub = sub i64 100, %9, !dbg !239
  %sub8 = sub i64 %sub, 1, !dbg !240
  %mul = mul i64 1, %sub8, !dbg !241
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !242
  %conv = trunc i64 %call9 to i32, !dbg !242
  store i32 %conv, i32* %recvResult, align 4, !dbg !243
  %10 = load i32, i32* %recvResult, align 4, !dbg !244
  %cmp10 = icmp eq i32 %10, -1, !dbg !246
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !247

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !248
  %cmp12 = icmp eq i32 %11, 0, !dbg !249
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !250

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !251

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !253
  %13 = load i64, i64* %dataLen, align 8, !dbg !254
  %14 = load i32, i32* %recvResult, align 4, !dbg !255
  %conv16 = sext i32 %14 to i64, !dbg !255
  %div = udiv i64 %conv16, 1, !dbg !256
  %add = add i64 %13, %div, !dbg !257
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !253
  store i8 0, i8* %arrayidx, align 1, !dbg !258
  %15 = load i8*, i8** %data, align 8, !dbg !259
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !260
  store i8* %call17, i8** %replace, align 8, !dbg !261
  %16 = load i8*, i8** %replace, align 8, !dbg !262
  %tobool = icmp ne i8* %16, null, !dbg !262
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !264

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !265
  store i8 0, i8* %17, align 1, !dbg !267
  br label %if.end19, !dbg !268

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !269
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !270
  store i8* %call20, i8** %replace, align 8, !dbg !271
  %19 = load i8*, i8** %replace, align 8, !dbg !272
  %tobool21 = icmp ne i8* %19, null, !dbg !272
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !274

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !275
  store i8 0, i8* %20, align 1, !dbg !277
  br label %if.end23, !dbg !278

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !279

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !280
  %cmp24 = icmp ne i32 %21, -1, !dbg !282
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !283

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !284
  %call27 = call i32 @close(i32 %22), !dbg !286
  br label %if.end28, !dbg !287

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 1, i32* @badStatic, align 4, !dbg !288
  %23 = load i8*, i8** %data, align 8, !dbg !289
  call void @badSink(i8* %23), !dbg !290
  ret void, !dbg !291
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
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !292 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !295
  %tobool = icmp ne i32 %0, 0, !dbg !295
  br i1 %tobool, label %if.then, label %if.else, !dbg !297

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !298
  br label %if.end7, !dbg !300

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %n, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !307, metadata !DIExpression()), !dbg !308
  %1 = load i8*, i8** %data.addr, align 8, !dbg !309
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !311
  %cmp = icmp eq i32 %call, 1, !dbg !312
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !313

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !314
  %cmp2 = icmp slt i32 %2, 10000, !dbg !317
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !318

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !319
  store i32 0, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !323

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !324
  %4 = load i32, i32* %n, align 4, !dbg !326
  %cmp4 = icmp slt i32 %3, %4, !dbg !327
  br i1 %cmp4, label %for.body, label %for.end, !dbg !328

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !329
  %inc = add nsw i32 %5, 1, !dbg !329
  store i32 %inc, i32* %intVariable, align 4, !dbg !329
  br label %for.inc, !dbg !331

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !332
  %inc5 = add nsw i32 %6, 1, !dbg !332
  store i32 %inc5, i32* %i, align 4, !dbg !332
  br label %for.cond, !dbg !333, !llvm.loop !334

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !336
  call void @printIntLine(i32 %7), !dbg !337
  br label %if.end, !dbg !338

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !339

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !341 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !345
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !345
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !346
  store i8* %arraydecay, i8** %data, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !348, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !355, metadata !DIExpression()), !dbg !356
  store i32 -1, i32* %connectSocket, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !357, metadata !DIExpression()), !dbg !358
  %1 = load i8*, i8** %data, align 8, !dbg !359
  %call = call i64 @strlen(i8* %1) #8, !dbg !360
  store i64 %call, i64* %dataLen, align 8, !dbg !358
  br label %do.body, !dbg !361

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !362
  store i32 %call1, i32* %connectSocket, align 4, !dbg !364
  %2 = load i32, i32* %connectSocket, align 4, !dbg !365
  %cmp = icmp eq i32 %2, -1, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !369

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !371
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !371
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !372
  store i16 2, i16* %sin_family, align 4, !dbg !373
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !374
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !375
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !376
  store i32 %call2, i32* %s_addr, align 4, !dbg !377
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !378
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !379
  store i16 %call3, i16* %sin_port, align 2, !dbg !380
  %4 = load i32, i32* %connectSocket, align 4, !dbg !381
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !383
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !384
  %cmp5 = icmp eq i32 %call4, -1, !dbg !385
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !386

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !387

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !389
  %7 = load i8*, i8** %data, align 8, !dbg !390
  %8 = load i64, i64* %dataLen, align 8, !dbg !391
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !392
  %9 = load i64, i64* %dataLen, align 8, !dbg !393
  %sub = sub i64 100, %9, !dbg !394
  %sub8 = sub i64 %sub, 1, !dbg !395
  %mul = mul i64 1, %sub8, !dbg !396
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !397
  %conv = trunc i64 %call9 to i32, !dbg !397
  store i32 %conv, i32* %recvResult, align 4, !dbg !398
  %10 = load i32, i32* %recvResult, align 4, !dbg !399
  %cmp10 = icmp eq i32 %10, -1, !dbg !401
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !402

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !403
  %cmp12 = icmp eq i32 %11, 0, !dbg !404
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !405

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !406

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !408
  %13 = load i64, i64* %dataLen, align 8, !dbg !409
  %14 = load i32, i32* %recvResult, align 4, !dbg !410
  %conv16 = sext i32 %14 to i64, !dbg !410
  %div = udiv i64 %conv16, 1, !dbg !411
  %add = add i64 %13, %div, !dbg !412
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !408
  store i8 0, i8* %arrayidx, align 1, !dbg !413
  %15 = load i8*, i8** %data, align 8, !dbg !414
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !415
  store i8* %call17, i8** %replace, align 8, !dbg !416
  %16 = load i8*, i8** %replace, align 8, !dbg !417
  %tobool = icmp ne i8* %16, null, !dbg !417
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !419

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !420
  store i8 0, i8* %17, align 1, !dbg !422
  br label %if.end19, !dbg !423

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !424
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !425
  store i8* %call20, i8** %replace, align 8, !dbg !426
  %19 = load i8*, i8** %replace, align 8, !dbg !427
  %tobool21 = icmp ne i8* %19, null, !dbg !427
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !429

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !430
  store i8 0, i8* %20, align 1, !dbg !432
  br label %if.end23, !dbg !433

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !434

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !435
  %cmp24 = icmp ne i32 %21, -1, !dbg !437
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !438

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !439
  %call27 = call i32 @close(i32 %22), !dbg !441
  br label %if.end28, !dbg !442

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !443
  %23 = load i8*, i8** %data, align 8, !dbg !444
  call void @goodB2G1Sink(i8* %23), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !447 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !450
  %tobool = icmp ne i32 %0, 0, !dbg !450
  br i1 %tobool, label %if.then, label %if.end7, !dbg !452

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %n, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !459, metadata !DIExpression()), !dbg !460
  %1 = load i8*, i8** %data.addr, align 8, !dbg !461
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !463
  %cmp = icmp eq i32 %call, 1, !dbg !464
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !465

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !466
  %cmp2 = icmp slt i32 %2, 10000, !dbg !469
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !470

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !471
  store i32 0, i32* %i, align 4, !dbg !473
  br label %for.cond, !dbg !475

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !476
  %4 = load i32, i32* %n, align 4, !dbg !478
  %cmp4 = icmp slt i32 %3, %4, !dbg !479
  br i1 %cmp4, label %for.body, label %for.end, !dbg !480

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !481
  %inc = add nsw i32 %5, 1, !dbg !481
  store i32 %inc, i32* %intVariable, align 4, !dbg !481
  br label %for.inc, !dbg !483

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !484
  %inc5 = add nsw i32 %6, 1, !dbg !484
  store i32 %inc5, i32* %i, align 4, !dbg !484
  br label %for.cond, !dbg !485, !llvm.loop !486

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !488
  call void @printIntLine(i32 %7), !dbg !489
  br label %if.end, !dbg !490

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !491

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !492

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !494 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !498
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !498
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !499
  store i8* %arraydecay, i8** %data, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !508, metadata !DIExpression()), !dbg !509
  store i32 -1, i32* %connectSocket, align 4, !dbg !509
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !510, metadata !DIExpression()), !dbg !511
  %1 = load i8*, i8** %data, align 8, !dbg !512
  %call = call i64 @strlen(i8* %1) #8, !dbg !513
  store i64 %call, i64* %dataLen, align 8, !dbg !511
  br label %do.body, !dbg !514

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !515
  store i32 %call1, i32* %connectSocket, align 4, !dbg !517
  %2 = load i32, i32* %connectSocket, align 4, !dbg !518
  %cmp = icmp eq i32 %2, -1, !dbg !520
  br i1 %cmp, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !522

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !524
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !524
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !525
  store i16 2, i16* %sin_family, align 4, !dbg !526
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !527
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !528
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !529
  store i32 %call2, i32* %s_addr, align 4, !dbg !530
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !531
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !532
  store i16 %call3, i16* %sin_port, align 2, !dbg !533
  %4 = load i32, i32* %connectSocket, align 4, !dbg !534
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !536
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !537
  %cmp5 = icmp eq i32 %call4, -1, !dbg !538
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !539

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !540

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !542
  %7 = load i8*, i8** %data, align 8, !dbg !543
  %8 = load i64, i64* %dataLen, align 8, !dbg !544
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !545
  %9 = load i64, i64* %dataLen, align 8, !dbg !546
  %sub = sub i64 100, %9, !dbg !547
  %sub8 = sub i64 %sub, 1, !dbg !548
  %mul = mul i64 1, %sub8, !dbg !549
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !550
  %conv = trunc i64 %call9 to i32, !dbg !550
  store i32 %conv, i32* %recvResult, align 4, !dbg !551
  %10 = load i32, i32* %recvResult, align 4, !dbg !552
  %cmp10 = icmp eq i32 %10, -1, !dbg !554
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !555

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !556
  %cmp12 = icmp eq i32 %11, 0, !dbg !557
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !558

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !559

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !561
  %13 = load i64, i64* %dataLen, align 8, !dbg !562
  %14 = load i32, i32* %recvResult, align 4, !dbg !563
  %conv16 = sext i32 %14 to i64, !dbg !563
  %div = udiv i64 %conv16, 1, !dbg !564
  %add = add i64 %13, %div, !dbg !565
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !561
  store i8 0, i8* %arrayidx, align 1, !dbg !566
  %15 = load i8*, i8** %data, align 8, !dbg !567
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !568
  store i8* %call17, i8** %replace, align 8, !dbg !569
  %16 = load i8*, i8** %replace, align 8, !dbg !570
  %tobool = icmp ne i8* %16, null, !dbg !570
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !572

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !573
  store i8 0, i8* %17, align 1, !dbg !575
  br label %if.end19, !dbg !576

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !577
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !578
  store i8* %call20, i8** %replace, align 8, !dbg !579
  %19 = load i8*, i8** %replace, align 8, !dbg !580
  %tobool21 = icmp ne i8* %19, null, !dbg !580
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !582

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !583
  store i8 0, i8* %20, align 1, !dbg !585
  br label %if.end23, !dbg !586

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !587

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !588
  %cmp24 = icmp ne i32 %21, -1, !dbg !590
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !591

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !592
  %call27 = call i32 @close(i32 %22), !dbg !594
  br label %if.end28, !dbg !595

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !596
  %23 = load i8*, i8** %data, align 8, !dbg !597
  call void @goodB2G2Sink(i8* %23), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !600 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !601, metadata !DIExpression()), !dbg !602
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !603
  %tobool = icmp ne i32 %0, 0, !dbg !603
  br i1 %tobool, label %if.then, label %if.end4, !dbg !605

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !606, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %n, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !612, metadata !DIExpression()), !dbg !613
  %1 = load i8*, i8** %data.addr, align 8, !dbg !614
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !616
  %cmp = icmp eq i32 %call, 1, !dbg !617
  br i1 %cmp, label %if.then1, label %if.end, !dbg !618

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !619
  store i32 0, i32* %i, align 4, !dbg !621
  br label %for.cond, !dbg !623

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !624
  %3 = load i32, i32* %n, align 4, !dbg !626
  %cmp2 = icmp slt i32 %2, %3, !dbg !627
  br i1 %cmp2, label %for.body, label %for.end, !dbg !628

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !629
  %inc = add nsw i32 %4, 1, !dbg !629
  store i32 %inc, i32* %intVariable, align 4, !dbg !629
  br label %for.inc, !dbg !631

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !632
  %inc3 = add nsw i32 %5, 1, !dbg !632
  store i32 %inc3, i32* %i, align 4, !dbg !632
  br label %for.cond, !dbg !633, !llvm.loop !634

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !636
  call void @printIntLine(i32 %6), !dbg !637
  br label %if.end, !dbg !638

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !639

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !641 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !644, metadata !DIExpression()), !dbg !645
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !645
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !645
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !646
  store i8* %arraydecay, i8** %data, align 8, !dbg !647
  %1 = load i8*, i8** %data, align 8, !dbg !648
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !649
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !650
  %2 = load i8*, i8** %data, align 8, !dbg !651
  call void @goodG2BSink(i8* %2), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_21_good() #0 !dbg !654 {
entry:
  call void @goodB2G1(), !dbg !655
  call void @goodB2G2(), !dbg !656
  call void @goodG2B(), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !659 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !662
  %0 = load i8*, i8** %line.addr, align 8, !dbg !663
  %cmp = icmp ne i8* %0, null, !dbg !665
  br i1 %cmp, label %if.then, label %if.end, !dbg !666

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !667
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !669
  br label %if.end, !dbg !670

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !671
  ret void, !dbg !672
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !673 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !674, metadata !DIExpression()), !dbg !675
  %0 = load i8*, i8** %line.addr, align 8, !dbg !676
  %cmp = icmp ne i8* %0, null, !dbg !678
  br i1 %cmp, label %if.then, label %if.end, !dbg !679

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !680
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !682
  br label %if.end, !dbg !683

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !685 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %0 = load i32*, i32** %line.addr, align 8, !dbg !692
  %cmp = icmp ne i32* %0, null, !dbg !694
  br i1 %cmp, label %if.then, label %if.end, !dbg !695

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !696
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !698
  br label %if.end, !dbg !699

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !700
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !701 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !704, metadata !DIExpression()), !dbg !705
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !706
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !707
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !709 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !713, metadata !DIExpression()), !dbg !714
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !715
  %conv = sext i16 %0 to i32, !dbg !715
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !716
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !718 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !724
  %conv = fpext float %0 to double, !dbg !724
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !725
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !727 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !733
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !734
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !736 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !742, metadata !DIExpression()), !dbg !743
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !744
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !747 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !750, metadata !DIExpression()), !dbg !751
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !752
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !753
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !755 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !760
  %conv = sext i8 %0 to i32, !dbg !760
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !761
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !763 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !768, metadata !DIExpression()), !dbg !772
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !773
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !774
  store i32 %0, i32* %arrayidx, align 4, !dbg !775
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !776
  store i32 0, i32* %arrayidx1, align 4, !dbg !777
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !778
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !779
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !781 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !786
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !787
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !789 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !792, metadata !DIExpression()), !dbg !793
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !794
  %conv = zext i8 %0 to i32, !dbg !794
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !795
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !797 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !803
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !804
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !806 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !818
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !819
  %1 = load i32, i32* %intOne, align 4, !dbg !819
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !820
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !821
  %3 = load i32, i32* %intTwo, align 4, !dbg !821
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !822
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !824 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i64* %i, metadata !832, metadata !DIExpression()), !dbg !833
  store i64 0, i64* %i, align 8, !dbg !834
  br label %for.cond, !dbg !836

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !837
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !839
  %cmp = icmp ult i64 %0, %1, !dbg !840
  br i1 %cmp, label %for.body, label %for.end, !dbg !841

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !842
  %3 = load i64, i64* %i, align 8, !dbg !844
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !842
  %4 = load i8, i8* %arrayidx, align 1, !dbg !842
  %conv = zext i8 %4 to i32, !dbg !842
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !845
  br label %for.inc, !dbg !846

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !847
  %inc = add i64 %5, 1, !dbg !847
  store i64 %inc, i64* %i, align 8, !dbg !847
  br label %for.cond, !dbg !848, !llvm.loop !849

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !851
  ret void, !dbg !852
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !853 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !862, metadata !DIExpression()), !dbg !863
  store i64 0, i64* %numWritten, align 8, !dbg !863
  br label %while.cond, !dbg !864

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !865
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !866
  %cmp = icmp ult i64 %0, %1, !dbg !867
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !868

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !869
  %2 = load i16*, i16** %call, align 8, !dbg !869
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !869
  %4 = load i64, i64* %numWritten, align 8, !dbg !869
  %mul = mul i64 2, %4, !dbg !869
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !869
  %5 = load i8, i8* %arrayidx, align 1, !dbg !869
  %conv = sext i8 %5 to i32, !dbg !869
  %idxprom = sext i32 %conv to i64, !dbg !869
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !869
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !869
  %conv2 = zext i16 %6 to i32, !dbg !869
  %and = and i32 %conv2, 4096, !dbg !869
  %tobool = icmp ne i32 %and, 0, !dbg !869
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !870

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !871
  %7 = load i16*, i16** %call3, align 8, !dbg !871
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !871
  %9 = load i64, i64* %numWritten, align 8, !dbg !871
  %mul4 = mul i64 2, %9, !dbg !871
  %add = add i64 %mul4, 1, !dbg !871
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !871
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !871
  %conv6 = sext i8 %10 to i32, !dbg !871
  %idxprom7 = sext i32 %conv6 to i64, !dbg !871
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !871
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !871
  %conv9 = zext i16 %11 to i32, !dbg !871
  %and10 = and i32 %conv9, 4096, !dbg !871
  %tobool11 = icmp ne i32 %and10, 0, !dbg !870
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !872
  br i1 %12, label %while.body, label %while.end, !dbg !864

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !873, metadata !DIExpression()), !dbg !875
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !876
  %14 = load i64, i64* %numWritten, align 8, !dbg !877
  %mul12 = mul i64 2, %14, !dbg !878
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !876
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !879
  %15 = load i32, i32* %byte, align 4, !dbg !880
  %conv15 = trunc i32 %15 to i8, !dbg !881
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !882
  %17 = load i64, i64* %numWritten, align 8, !dbg !883
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !882
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !884
  %18 = load i64, i64* %numWritten, align 8, !dbg !885
  %inc = add i64 %18, 1, !dbg !885
  store i64 %inc, i64* %numWritten, align 8, !dbg !885
  br label %while.cond, !dbg !864, !llvm.loop !886

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !888
  ret i64 %19, !dbg !889
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !890 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !893, metadata !DIExpression()), !dbg !894
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !895, metadata !DIExpression()), !dbg !896
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !899, metadata !DIExpression()), !dbg !900
  store i64 0, i64* %numWritten, align 8, !dbg !900
  br label %while.cond, !dbg !901

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !902
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !903
  %cmp = icmp ult i64 %0, %1, !dbg !904
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !905

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !906
  %3 = load i64, i64* %numWritten, align 8, !dbg !907
  %mul = mul i64 2, %3, !dbg !908
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !906
  %4 = load i32, i32* %arrayidx, align 4, !dbg !906
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !909
  %tobool = icmp ne i32 %call, 0, !dbg !909
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !910

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !911
  %6 = load i64, i64* %numWritten, align 8, !dbg !912
  %mul1 = mul i64 2, %6, !dbg !913
  %add = add i64 %mul1, 1, !dbg !914
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !911
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !911
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !915
  %tobool4 = icmp ne i32 %call3, 0, !dbg !910
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !916
  br i1 %8, label %while.body, label %while.end, !dbg !901

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !917, metadata !DIExpression()), !dbg !919
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !920
  %10 = load i64, i64* %numWritten, align 8, !dbg !921
  %mul5 = mul i64 2, %10, !dbg !922
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !920
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !923
  %11 = load i32, i32* %byte, align 4, !dbg !924
  %conv = trunc i32 %11 to i8, !dbg !925
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !926
  %13 = load i64, i64* %numWritten, align 8, !dbg !927
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !926
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !928
  %14 = load i64, i64* %numWritten, align 8, !dbg !929
  %inc = add i64 %14, 1, !dbg !929
  store i64 %inc, i64* %numWritten, align 8, !dbg !929
  br label %while.cond, !dbg !901, !llvm.loop !930

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !932
  ret i64 %15, !dbg !933
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !934 {
entry:
  ret i32 1, !dbg !937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !938 {
entry:
  ret i32 0, !dbg !939
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !940 {
entry:
  %call = call i32 @rand() #7, !dbg !941
  %rem = srem i32 %call, 2, !dbg !942
  ret i32 %rem, !dbg !943
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !944 {
entry:
  ret void, !dbg !945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !946 {
entry:
  ret void, !dbg !947
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !948 {
entry:
  ret void, !dbg !949
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !950 {
entry:
  ret void, !dbg !951
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !952 {
entry:
  ret void, !dbg !953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !954 {
entry:
  ret void, !dbg !955
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !956 {
entry:
  ret void, !dbg !957
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !958 {
entry:
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !960 {
entry:
  ret void, !dbg !961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !962 {
entry:
  ret void, !dbg !963
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !964 {
entry:
  ret void, !dbg !965
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !966 {
entry:
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !968 {
entry:
  ret void, !dbg !969
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !970 {
entry:
  ret void, !dbg !971
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !972 {
entry:
  ret void, !dbg !973
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !974 {
entry:
  ret void, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !976 {
entry:
  ret void, !dbg !977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !978 {
entry:
  ret void, !dbg !979
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

!llvm.dbg.cu = !{!2, !72}
!llvm.ident = !{!109, !109}
!llvm.module.flags = !{!110, !111, !112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 51, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_948/source_code")
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
!62 = !{!0, !63, !66, !68}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 155, type: !65, isLocal: false, isDefinition: true)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 156, type: !65, isLocal: false, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 157, type: !65, isLocal: false, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !72, file: !73, line: 174, type: !65, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !90, globals: !93, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_948/source_code")
!74 = !{!75}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 46, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!78 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!90 = !{!91, !65, !55, !92}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!70, !94, !96, !98, !100, !102, !104, !106}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !72, file: !73, line: 175, type: !65, isLocal: false, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !72, file: !73, line: 176, type: !65, isLocal: false, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "globalTrue", scope: !72, file: !73, line: 181, type: !65, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalFalse", scope: !72, file: !73, line: 182, type: !65, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "globalFive", scope: !72, file: !73, line: 183, type: !65, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "globalArgc", scope: !72, file: !73, line: 214, type: !65, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "globalArgv", scope: !72, file: !73, line: 215, type: !108, isLocal: false, isDefinition: true)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!109 = !{!"clang version 12.0.0"}
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 53, type: !114, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !61}
!116 = !{}
!117 = !DILocalVariable(name: "data", arg: 1, scope: !113, file: !3, line: 53, type: !61)
!118 = !DILocation(line: 53, column: 21, scope: !113)
!119 = !DILocation(line: 55, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !3, line: 55, column: 8)
!121 = !DILocation(line: 55, column: 8, scope: !113)
!122 = !DILocalVariable(name: "i", scope: !123, file: !3, line: 58, type: !65)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 57, column: 9)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 56, column: 5)
!125 = !DILocation(line: 58, column: 17, scope: !123)
!126 = !DILocalVariable(name: "n", scope: !123, file: !3, line: 58, type: !65)
!127 = !DILocation(line: 58, column: 20, scope: !123)
!128 = !DILocalVariable(name: "intVariable", scope: !123, file: !3, line: 58, type: !65)
!129 = !DILocation(line: 58, column: 23, scope: !123)
!130 = !DILocation(line: 59, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 59, column: 17)
!132 = !DILocation(line: 59, column: 17, scope: !131)
!133 = !DILocation(line: 59, column: 40, scope: !131)
!134 = !DILocation(line: 59, column: 17, scope: !123)
!135 = !DILocation(line: 62, column: 29, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !3, line: 60, column: 13)
!137 = !DILocation(line: 63, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !3, line: 63, column: 17)
!139 = !DILocation(line: 63, column: 22, scope: !138)
!140 = !DILocation(line: 63, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 63, column: 17)
!142 = !DILocation(line: 63, column: 33, scope: !141)
!143 = !DILocation(line: 63, column: 31, scope: !141)
!144 = !DILocation(line: 63, column: 17, scope: !138)
!145 = !DILocation(line: 66, column: 32, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 64, column: 17)
!147 = !DILocation(line: 67, column: 17, scope: !146)
!148 = !DILocation(line: 63, column: 37, scope: !141)
!149 = !DILocation(line: 63, column: 17, scope: !141)
!150 = distinct !{!150, !144, !151, !152}
!151 = !DILocation(line: 67, column: 17, scope: !138)
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 68, column: 30, scope: !136)
!154 = !DILocation(line: 68, column: 17, scope: !136)
!155 = !DILocation(line: 69, column: 13, scope: !136)
!156 = !DILocation(line: 71, column: 5, scope: !124)
!157 = !DILocation(line: 72, column: 1, scope: !113)
!158 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_21_bad", scope: !3, file: !3, line: 74, type: !159, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!159 = !DISubroutineType(types: !160)
!160 = !{null}
!161 = !DILocalVariable(name: "data", scope: !158, file: !3, line: 76, type: !61)
!162 = !DILocation(line: 76, column: 12, scope: !158)
!163 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !3, line: 77, type: !164)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 100)
!167 = !DILocation(line: 77, column: 10, scope: !158)
!168 = !DILocation(line: 78, column: 12, scope: !158)
!169 = !DILocation(line: 78, column: 10, scope: !158)
!170 = !DILocalVariable(name: "recvResult", scope: !171, file: !3, line: 84, type: !65)
!171 = distinct !DILexicalBlock(scope: !158, file: !3, line: 79, column: 5)
!172 = !DILocation(line: 84, column: 13, scope: !171)
!173 = !DILocalVariable(name: "service", scope: !171, file: !3, line: 85, type: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !175)
!175 = !{!176, !177, !183, !190}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !174, file: !19, line: 240, baseType: !53, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !174, file: !19, line: 241, baseType: !178, size: 16, offset: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !180, line: 25, baseType: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !182, line: 40, baseType: !55)
!182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !174, file: !19, line: 242, baseType: !184, size: 32, offset: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !184, file: !19, line: 33, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 26, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !182, line: 42, baseType: !7)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !174, file: !19, line: 245, baseType: !191, size: 64, offset: 64)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DILocation(line: 85, column: 28, scope: !171)
!195 = !DILocalVariable(name: "replace", scope: !171, file: !3, line: 86, type: !61)
!196 = !DILocation(line: 86, column: 15, scope: !171)
!197 = !DILocalVariable(name: "connectSocket", scope: !171, file: !3, line: 87, type: !65)
!198 = !DILocation(line: 87, column: 16, scope: !171)
!199 = !DILocalVariable(name: "dataLen", scope: !171, file: !3, line: 88, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 46, baseType: !202)
!201 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!202 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!203 = !DILocation(line: 88, column: 16, scope: !171)
!204 = !DILocation(line: 88, column: 33, scope: !171)
!205 = !DILocation(line: 88, column: 26, scope: !171)
!206 = !DILocation(line: 89, column: 9, scope: !171)
!207 = !DILocation(line: 99, column: 29, scope: !208)
!208 = distinct !DILexicalBlock(scope: !171, file: !3, line: 90, column: 9)
!209 = !DILocation(line: 99, column: 27, scope: !208)
!210 = !DILocation(line: 100, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !3, line: 100, column: 17)
!212 = !DILocation(line: 100, column: 31, scope: !211)
!213 = !DILocation(line: 100, column: 17, scope: !208)
!214 = !DILocation(line: 102, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 101, column: 13)
!216 = !DILocation(line: 104, column: 13, scope: !208)
!217 = !DILocation(line: 105, column: 21, scope: !208)
!218 = !DILocation(line: 105, column: 32, scope: !208)
!219 = !DILocation(line: 106, column: 39, scope: !208)
!220 = !DILocation(line: 106, column: 21, scope: !208)
!221 = !DILocation(line: 106, column: 30, scope: !208)
!222 = !DILocation(line: 106, column: 37, scope: !208)
!223 = !DILocation(line: 107, column: 32, scope: !208)
!224 = !DILocation(line: 107, column: 21, scope: !208)
!225 = !DILocation(line: 107, column: 30, scope: !208)
!226 = !DILocation(line: 108, column: 25, scope: !227)
!227 = distinct !DILexicalBlock(scope: !208, file: !3, line: 108, column: 17)
!228 = !DILocation(line: 108, column: 40, scope: !227)
!229 = !DILocation(line: 108, column: 17, scope: !227)
!230 = !DILocation(line: 108, column: 85, scope: !227)
!231 = !DILocation(line: 108, column: 17, scope: !208)
!232 = !DILocation(line: 110, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 109, column: 13)
!234 = !DILocation(line: 115, column: 31, scope: !208)
!235 = !DILocation(line: 115, column: 55, scope: !208)
!236 = !DILocation(line: 115, column: 62, scope: !208)
!237 = !DILocation(line: 115, column: 60, scope: !208)
!238 = !DILocation(line: 115, column: 94, scope: !208)
!239 = !DILocation(line: 115, column: 92, scope: !208)
!240 = !DILocation(line: 115, column: 102, scope: !208)
!241 = !DILocation(line: 115, column: 85, scope: !208)
!242 = !DILocation(line: 115, column: 26, scope: !208)
!243 = !DILocation(line: 115, column: 24, scope: !208)
!244 = !DILocation(line: 116, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !208, file: !3, line: 116, column: 17)
!246 = !DILocation(line: 116, column: 28, scope: !245)
!247 = !DILocation(line: 116, column: 44, scope: !245)
!248 = !DILocation(line: 116, column: 47, scope: !245)
!249 = !DILocation(line: 116, column: 58, scope: !245)
!250 = !DILocation(line: 116, column: 17, scope: !208)
!251 = !DILocation(line: 118, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !3, line: 117, column: 13)
!253 = !DILocation(line: 121, column: 13, scope: !208)
!254 = !DILocation(line: 121, column: 18, scope: !208)
!255 = !DILocation(line: 121, column: 28, scope: !208)
!256 = !DILocation(line: 121, column: 39, scope: !208)
!257 = !DILocation(line: 121, column: 26, scope: !208)
!258 = !DILocation(line: 121, column: 55, scope: !208)
!259 = !DILocation(line: 123, column: 30, scope: !208)
!260 = !DILocation(line: 123, column: 23, scope: !208)
!261 = !DILocation(line: 123, column: 21, scope: !208)
!262 = !DILocation(line: 124, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !208, file: !3, line: 124, column: 17)
!264 = !DILocation(line: 124, column: 17, scope: !208)
!265 = !DILocation(line: 126, column: 18, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 125, column: 13)
!267 = !DILocation(line: 126, column: 26, scope: !266)
!268 = !DILocation(line: 127, column: 13, scope: !266)
!269 = !DILocation(line: 128, column: 30, scope: !208)
!270 = !DILocation(line: 128, column: 23, scope: !208)
!271 = !DILocation(line: 128, column: 21, scope: !208)
!272 = !DILocation(line: 129, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !208, file: !3, line: 129, column: 17)
!274 = !DILocation(line: 129, column: 17, scope: !208)
!275 = !DILocation(line: 131, column: 18, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 130, column: 13)
!277 = !DILocation(line: 131, column: 26, scope: !276)
!278 = !DILocation(line: 132, column: 13, scope: !276)
!279 = !DILocation(line: 133, column: 9, scope: !208)
!280 = !DILocation(line: 135, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !171, file: !3, line: 135, column: 13)
!282 = !DILocation(line: 135, column: 27, scope: !281)
!283 = !DILocation(line: 135, column: 13, scope: !171)
!284 = !DILocation(line: 137, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 136, column: 9)
!286 = !DILocation(line: 137, column: 13, scope: !285)
!287 = !DILocation(line: 138, column: 9, scope: !285)
!288 = !DILocation(line: 146, column: 15, scope: !158)
!289 = !DILocation(line: 147, column: 13, scope: !158)
!290 = !DILocation(line: 147, column: 5, scope: !158)
!291 = !DILocation(line: 148, column: 1, scope: !158)
!292 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 160, type: !114, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!293 = !DILocalVariable(name: "data", arg: 1, scope: !292, file: !3, line: 160, type: !61)
!294 = !DILocation(line: 160, column: 26, scope: !292)
!295 = !DILocation(line: 162, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 162, column: 8)
!297 = !DILocation(line: 162, column: 8, scope: !292)
!298 = !DILocation(line: 165, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 163, column: 5)
!300 = !DILocation(line: 166, column: 5, scope: !299)
!301 = !DILocalVariable(name: "i", scope: !302, file: !3, line: 170, type: !65)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 169, column: 9)
!303 = distinct !DILexicalBlock(scope: !296, file: !3, line: 168, column: 5)
!304 = !DILocation(line: 170, column: 17, scope: !302)
!305 = !DILocalVariable(name: "n", scope: !302, file: !3, line: 170, type: !65)
!306 = !DILocation(line: 170, column: 20, scope: !302)
!307 = !DILocalVariable(name: "intVariable", scope: !302, file: !3, line: 170, type: !65)
!308 = !DILocation(line: 170, column: 23, scope: !302)
!309 = !DILocation(line: 171, column: 24, scope: !310)
!310 = distinct !DILexicalBlock(scope: !302, file: !3, line: 171, column: 17)
!311 = !DILocation(line: 171, column: 17, scope: !310)
!312 = !DILocation(line: 171, column: 40, scope: !310)
!313 = !DILocation(line: 171, column: 17, scope: !302)
!314 = !DILocation(line: 174, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 174, column: 21)
!316 = distinct !DILexicalBlock(scope: !310, file: !3, line: 172, column: 13)
!317 = !DILocation(line: 174, column: 23, scope: !315)
!318 = !DILocation(line: 174, column: 21, scope: !316)
!319 = !DILocation(line: 176, column: 33, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 175, column: 17)
!321 = !DILocation(line: 177, column: 28, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !3, line: 177, column: 21)
!323 = !DILocation(line: 177, column: 26, scope: !322)
!324 = !DILocation(line: 177, column: 33, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 177, column: 21)
!326 = !DILocation(line: 177, column: 37, scope: !325)
!327 = !DILocation(line: 177, column: 35, scope: !325)
!328 = !DILocation(line: 177, column: 21, scope: !322)
!329 = !DILocation(line: 180, column: 36, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 178, column: 21)
!331 = !DILocation(line: 181, column: 21, scope: !330)
!332 = !DILocation(line: 177, column: 41, scope: !325)
!333 = !DILocation(line: 177, column: 21, scope: !325)
!334 = distinct !{!334, !328, !335, !152}
!335 = !DILocation(line: 181, column: 21, scope: !322)
!336 = !DILocation(line: 182, column: 34, scope: !320)
!337 = !DILocation(line: 182, column: 21, scope: !320)
!338 = !DILocation(line: 183, column: 17, scope: !320)
!339 = !DILocation(line: 184, column: 13, scope: !316)
!340 = !DILocation(line: 187, column: 1, scope: !292)
!341 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 189, type: !159, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!342 = !DILocalVariable(name: "data", scope: !341, file: !3, line: 191, type: !61)
!343 = !DILocation(line: 191, column: 12, scope: !341)
!344 = !DILocalVariable(name: "dataBuffer", scope: !341, file: !3, line: 192, type: !164)
!345 = !DILocation(line: 192, column: 10, scope: !341)
!346 = !DILocation(line: 193, column: 12, scope: !341)
!347 = !DILocation(line: 193, column: 10, scope: !341)
!348 = !DILocalVariable(name: "recvResult", scope: !349, file: !3, line: 199, type: !65)
!349 = distinct !DILexicalBlock(scope: !341, file: !3, line: 194, column: 5)
!350 = !DILocation(line: 199, column: 13, scope: !349)
!351 = !DILocalVariable(name: "service", scope: !349, file: !3, line: 200, type: !174)
!352 = !DILocation(line: 200, column: 28, scope: !349)
!353 = !DILocalVariable(name: "replace", scope: !349, file: !3, line: 201, type: !61)
!354 = !DILocation(line: 201, column: 15, scope: !349)
!355 = !DILocalVariable(name: "connectSocket", scope: !349, file: !3, line: 202, type: !65)
!356 = !DILocation(line: 202, column: 16, scope: !349)
!357 = !DILocalVariable(name: "dataLen", scope: !349, file: !3, line: 203, type: !200)
!358 = !DILocation(line: 203, column: 16, scope: !349)
!359 = !DILocation(line: 203, column: 33, scope: !349)
!360 = !DILocation(line: 203, column: 26, scope: !349)
!361 = !DILocation(line: 204, column: 9, scope: !349)
!362 = !DILocation(line: 214, column: 29, scope: !363)
!363 = distinct !DILexicalBlock(scope: !349, file: !3, line: 205, column: 9)
!364 = !DILocation(line: 214, column: 27, scope: !363)
!365 = !DILocation(line: 215, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 215, column: 17)
!367 = !DILocation(line: 215, column: 31, scope: !366)
!368 = !DILocation(line: 215, column: 17, scope: !363)
!369 = !DILocation(line: 217, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !3, line: 216, column: 13)
!371 = !DILocation(line: 219, column: 13, scope: !363)
!372 = !DILocation(line: 220, column: 21, scope: !363)
!373 = !DILocation(line: 220, column: 32, scope: !363)
!374 = !DILocation(line: 221, column: 39, scope: !363)
!375 = !DILocation(line: 221, column: 21, scope: !363)
!376 = !DILocation(line: 221, column: 30, scope: !363)
!377 = !DILocation(line: 221, column: 37, scope: !363)
!378 = !DILocation(line: 222, column: 32, scope: !363)
!379 = !DILocation(line: 222, column: 21, scope: !363)
!380 = !DILocation(line: 222, column: 30, scope: !363)
!381 = !DILocation(line: 223, column: 25, scope: !382)
!382 = distinct !DILexicalBlock(scope: !363, file: !3, line: 223, column: 17)
!383 = !DILocation(line: 223, column: 40, scope: !382)
!384 = !DILocation(line: 223, column: 17, scope: !382)
!385 = !DILocation(line: 223, column: 85, scope: !382)
!386 = !DILocation(line: 223, column: 17, scope: !363)
!387 = !DILocation(line: 225, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 224, column: 13)
!389 = !DILocation(line: 230, column: 31, scope: !363)
!390 = !DILocation(line: 230, column: 55, scope: !363)
!391 = !DILocation(line: 230, column: 62, scope: !363)
!392 = !DILocation(line: 230, column: 60, scope: !363)
!393 = !DILocation(line: 230, column: 94, scope: !363)
!394 = !DILocation(line: 230, column: 92, scope: !363)
!395 = !DILocation(line: 230, column: 102, scope: !363)
!396 = !DILocation(line: 230, column: 85, scope: !363)
!397 = !DILocation(line: 230, column: 26, scope: !363)
!398 = !DILocation(line: 230, column: 24, scope: !363)
!399 = !DILocation(line: 231, column: 17, scope: !400)
!400 = distinct !DILexicalBlock(scope: !363, file: !3, line: 231, column: 17)
!401 = !DILocation(line: 231, column: 28, scope: !400)
!402 = !DILocation(line: 231, column: 44, scope: !400)
!403 = !DILocation(line: 231, column: 47, scope: !400)
!404 = !DILocation(line: 231, column: 58, scope: !400)
!405 = !DILocation(line: 231, column: 17, scope: !363)
!406 = !DILocation(line: 233, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !3, line: 232, column: 13)
!408 = !DILocation(line: 236, column: 13, scope: !363)
!409 = !DILocation(line: 236, column: 18, scope: !363)
!410 = !DILocation(line: 236, column: 28, scope: !363)
!411 = !DILocation(line: 236, column: 39, scope: !363)
!412 = !DILocation(line: 236, column: 26, scope: !363)
!413 = !DILocation(line: 236, column: 55, scope: !363)
!414 = !DILocation(line: 238, column: 30, scope: !363)
!415 = !DILocation(line: 238, column: 23, scope: !363)
!416 = !DILocation(line: 238, column: 21, scope: !363)
!417 = !DILocation(line: 239, column: 17, scope: !418)
!418 = distinct !DILexicalBlock(scope: !363, file: !3, line: 239, column: 17)
!419 = !DILocation(line: 239, column: 17, scope: !363)
!420 = !DILocation(line: 241, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 240, column: 13)
!422 = !DILocation(line: 241, column: 26, scope: !421)
!423 = !DILocation(line: 242, column: 13, scope: !421)
!424 = !DILocation(line: 243, column: 30, scope: !363)
!425 = !DILocation(line: 243, column: 23, scope: !363)
!426 = !DILocation(line: 243, column: 21, scope: !363)
!427 = !DILocation(line: 244, column: 17, scope: !428)
!428 = distinct !DILexicalBlock(scope: !363, file: !3, line: 244, column: 17)
!429 = !DILocation(line: 244, column: 17, scope: !363)
!430 = !DILocation(line: 246, column: 18, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 245, column: 13)
!432 = !DILocation(line: 246, column: 26, scope: !431)
!433 = !DILocation(line: 247, column: 13, scope: !431)
!434 = !DILocation(line: 248, column: 9, scope: !363)
!435 = !DILocation(line: 250, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !349, file: !3, line: 250, column: 13)
!437 = !DILocation(line: 250, column: 27, scope: !436)
!438 = !DILocation(line: 250, column: 13, scope: !349)
!439 = !DILocation(line: 252, column: 26, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 251, column: 9)
!441 = !DILocation(line: 252, column: 13, scope: !440)
!442 = !DILocation(line: 253, column: 9, scope: !440)
!443 = !DILocation(line: 261, column: 20, scope: !341)
!444 = !DILocation(line: 262, column: 18, scope: !341)
!445 = !DILocation(line: 262, column: 5, scope: !341)
!446 = !DILocation(line: 263, column: 1, scope: !341)
!447 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 266, type: !114, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!448 = !DILocalVariable(name: "data", arg: 1, scope: !447, file: !3, line: 266, type: !61)
!449 = !DILocation(line: 266, column: 26, scope: !447)
!450 = !DILocation(line: 268, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 268, column: 8)
!452 = !DILocation(line: 268, column: 8, scope: !447)
!453 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 271, type: !65)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 270, column: 9)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 269, column: 5)
!456 = !DILocation(line: 271, column: 17, scope: !454)
!457 = !DILocalVariable(name: "n", scope: !454, file: !3, line: 271, type: !65)
!458 = !DILocation(line: 271, column: 20, scope: !454)
!459 = !DILocalVariable(name: "intVariable", scope: !454, file: !3, line: 271, type: !65)
!460 = !DILocation(line: 271, column: 23, scope: !454)
!461 = !DILocation(line: 272, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !3, line: 272, column: 17)
!463 = !DILocation(line: 272, column: 17, scope: !462)
!464 = !DILocation(line: 272, column: 40, scope: !462)
!465 = !DILocation(line: 272, column: 17, scope: !454)
!466 = !DILocation(line: 275, column: 21, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 275, column: 21)
!468 = distinct !DILexicalBlock(scope: !462, file: !3, line: 273, column: 13)
!469 = !DILocation(line: 275, column: 23, scope: !467)
!470 = !DILocation(line: 275, column: 21, scope: !468)
!471 = !DILocation(line: 277, column: 33, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 276, column: 17)
!473 = !DILocation(line: 278, column: 28, scope: !474)
!474 = distinct !DILexicalBlock(scope: !472, file: !3, line: 278, column: 21)
!475 = !DILocation(line: 278, column: 26, scope: !474)
!476 = !DILocation(line: 278, column: 33, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 278, column: 21)
!478 = !DILocation(line: 278, column: 37, scope: !477)
!479 = !DILocation(line: 278, column: 35, scope: !477)
!480 = !DILocation(line: 278, column: 21, scope: !474)
!481 = !DILocation(line: 281, column: 36, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 279, column: 21)
!483 = !DILocation(line: 282, column: 21, scope: !482)
!484 = !DILocation(line: 278, column: 41, scope: !477)
!485 = !DILocation(line: 278, column: 21, scope: !477)
!486 = distinct !{!486, !480, !487, !152}
!487 = !DILocation(line: 282, column: 21, scope: !474)
!488 = !DILocation(line: 283, column: 34, scope: !472)
!489 = !DILocation(line: 283, column: 21, scope: !472)
!490 = !DILocation(line: 284, column: 17, scope: !472)
!491 = !DILocation(line: 285, column: 13, scope: !468)
!492 = !DILocation(line: 287, column: 5, scope: !455)
!493 = !DILocation(line: 288, column: 1, scope: !447)
!494 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 290, type: !159, scopeLine: 291, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!495 = !DILocalVariable(name: "data", scope: !494, file: !3, line: 292, type: !61)
!496 = !DILocation(line: 292, column: 12, scope: !494)
!497 = !DILocalVariable(name: "dataBuffer", scope: !494, file: !3, line: 293, type: !164)
!498 = !DILocation(line: 293, column: 10, scope: !494)
!499 = !DILocation(line: 294, column: 12, scope: !494)
!500 = !DILocation(line: 294, column: 10, scope: !494)
!501 = !DILocalVariable(name: "recvResult", scope: !502, file: !3, line: 300, type: !65)
!502 = distinct !DILexicalBlock(scope: !494, file: !3, line: 295, column: 5)
!503 = !DILocation(line: 300, column: 13, scope: !502)
!504 = !DILocalVariable(name: "service", scope: !502, file: !3, line: 301, type: !174)
!505 = !DILocation(line: 301, column: 28, scope: !502)
!506 = !DILocalVariable(name: "replace", scope: !502, file: !3, line: 302, type: !61)
!507 = !DILocation(line: 302, column: 15, scope: !502)
!508 = !DILocalVariable(name: "connectSocket", scope: !502, file: !3, line: 303, type: !65)
!509 = !DILocation(line: 303, column: 16, scope: !502)
!510 = !DILocalVariable(name: "dataLen", scope: !502, file: !3, line: 304, type: !200)
!511 = !DILocation(line: 304, column: 16, scope: !502)
!512 = !DILocation(line: 304, column: 33, scope: !502)
!513 = !DILocation(line: 304, column: 26, scope: !502)
!514 = !DILocation(line: 305, column: 9, scope: !502)
!515 = !DILocation(line: 315, column: 29, scope: !516)
!516 = distinct !DILexicalBlock(scope: !502, file: !3, line: 306, column: 9)
!517 = !DILocation(line: 315, column: 27, scope: !516)
!518 = !DILocation(line: 316, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 316, column: 17)
!520 = !DILocation(line: 316, column: 31, scope: !519)
!521 = !DILocation(line: 316, column: 17, scope: !516)
!522 = !DILocation(line: 318, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 317, column: 13)
!524 = !DILocation(line: 320, column: 13, scope: !516)
!525 = !DILocation(line: 321, column: 21, scope: !516)
!526 = !DILocation(line: 321, column: 32, scope: !516)
!527 = !DILocation(line: 322, column: 39, scope: !516)
!528 = !DILocation(line: 322, column: 21, scope: !516)
!529 = !DILocation(line: 322, column: 30, scope: !516)
!530 = !DILocation(line: 322, column: 37, scope: !516)
!531 = !DILocation(line: 323, column: 32, scope: !516)
!532 = !DILocation(line: 323, column: 21, scope: !516)
!533 = !DILocation(line: 323, column: 30, scope: !516)
!534 = !DILocation(line: 324, column: 25, scope: !535)
!535 = distinct !DILexicalBlock(scope: !516, file: !3, line: 324, column: 17)
!536 = !DILocation(line: 324, column: 40, scope: !535)
!537 = !DILocation(line: 324, column: 17, scope: !535)
!538 = !DILocation(line: 324, column: 85, scope: !535)
!539 = !DILocation(line: 324, column: 17, scope: !516)
!540 = !DILocation(line: 326, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !535, file: !3, line: 325, column: 13)
!542 = !DILocation(line: 331, column: 31, scope: !516)
!543 = !DILocation(line: 331, column: 55, scope: !516)
!544 = !DILocation(line: 331, column: 62, scope: !516)
!545 = !DILocation(line: 331, column: 60, scope: !516)
!546 = !DILocation(line: 331, column: 94, scope: !516)
!547 = !DILocation(line: 331, column: 92, scope: !516)
!548 = !DILocation(line: 331, column: 102, scope: !516)
!549 = !DILocation(line: 331, column: 85, scope: !516)
!550 = !DILocation(line: 331, column: 26, scope: !516)
!551 = !DILocation(line: 331, column: 24, scope: !516)
!552 = !DILocation(line: 332, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !516, file: !3, line: 332, column: 17)
!554 = !DILocation(line: 332, column: 28, scope: !553)
!555 = !DILocation(line: 332, column: 44, scope: !553)
!556 = !DILocation(line: 332, column: 47, scope: !553)
!557 = !DILocation(line: 332, column: 58, scope: !553)
!558 = !DILocation(line: 332, column: 17, scope: !516)
!559 = !DILocation(line: 334, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !553, file: !3, line: 333, column: 13)
!561 = !DILocation(line: 337, column: 13, scope: !516)
!562 = !DILocation(line: 337, column: 18, scope: !516)
!563 = !DILocation(line: 337, column: 28, scope: !516)
!564 = !DILocation(line: 337, column: 39, scope: !516)
!565 = !DILocation(line: 337, column: 26, scope: !516)
!566 = !DILocation(line: 337, column: 55, scope: !516)
!567 = !DILocation(line: 339, column: 30, scope: !516)
!568 = !DILocation(line: 339, column: 23, scope: !516)
!569 = !DILocation(line: 339, column: 21, scope: !516)
!570 = !DILocation(line: 340, column: 17, scope: !571)
!571 = distinct !DILexicalBlock(scope: !516, file: !3, line: 340, column: 17)
!572 = !DILocation(line: 340, column: 17, scope: !516)
!573 = !DILocation(line: 342, column: 18, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !3, line: 341, column: 13)
!575 = !DILocation(line: 342, column: 26, scope: !574)
!576 = !DILocation(line: 343, column: 13, scope: !574)
!577 = !DILocation(line: 344, column: 30, scope: !516)
!578 = !DILocation(line: 344, column: 23, scope: !516)
!579 = !DILocation(line: 344, column: 21, scope: !516)
!580 = !DILocation(line: 345, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !516, file: !3, line: 345, column: 17)
!582 = !DILocation(line: 345, column: 17, scope: !516)
!583 = !DILocation(line: 347, column: 18, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 346, column: 13)
!585 = !DILocation(line: 347, column: 26, scope: !584)
!586 = !DILocation(line: 348, column: 13, scope: !584)
!587 = !DILocation(line: 349, column: 9, scope: !516)
!588 = !DILocation(line: 351, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !502, file: !3, line: 351, column: 13)
!590 = !DILocation(line: 351, column: 27, scope: !589)
!591 = !DILocation(line: 351, column: 13, scope: !502)
!592 = !DILocation(line: 353, column: 26, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !3, line: 352, column: 9)
!594 = !DILocation(line: 353, column: 13, scope: !593)
!595 = !DILocation(line: 354, column: 9, scope: !593)
!596 = !DILocation(line: 362, column: 20, scope: !494)
!597 = !DILocation(line: 363, column: 18, scope: !494)
!598 = !DILocation(line: 363, column: 5, scope: !494)
!599 = !DILocation(line: 364, column: 1, scope: !494)
!600 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 367, type: !114, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!601 = !DILocalVariable(name: "data", arg: 1, scope: !600, file: !3, line: 367, type: !61)
!602 = !DILocation(line: 367, column: 25, scope: !600)
!603 = !DILocation(line: 369, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 369, column: 8)
!605 = !DILocation(line: 369, column: 8, scope: !600)
!606 = !DILocalVariable(name: "i", scope: !607, file: !3, line: 372, type: !65)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 371, column: 9)
!608 = distinct !DILexicalBlock(scope: !604, file: !3, line: 370, column: 5)
!609 = !DILocation(line: 372, column: 17, scope: !607)
!610 = !DILocalVariable(name: "n", scope: !607, file: !3, line: 372, type: !65)
!611 = !DILocation(line: 372, column: 20, scope: !607)
!612 = !DILocalVariable(name: "intVariable", scope: !607, file: !3, line: 372, type: !65)
!613 = !DILocation(line: 372, column: 23, scope: !607)
!614 = !DILocation(line: 373, column: 24, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 373, column: 17)
!616 = !DILocation(line: 373, column: 17, scope: !615)
!617 = !DILocation(line: 373, column: 40, scope: !615)
!618 = !DILocation(line: 373, column: 17, scope: !607)
!619 = !DILocation(line: 376, column: 29, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 374, column: 13)
!621 = !DILocation(line: 377, column: 24, scope: !622)
!622 = distinct !DILexicalBlock(scope: !620, file: !3, line: 377, column: 17)
!623 = !DILocation(line: 377, column: 22, scope: !622)
!624 = !DILocation(line: 377, column: 29, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 377, column: 17)
!626 = !DILocation(line: 377, column: 33, scope: !625)
!627 = !DILocation(line: 377, column: 31, scope: !625)
!628 = !DILocation(line: 377, column: 17, scope: !622)
!629 = !DILocation(line: 380, column: 32, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !3, line: 378, column: 17)
!631 = !DILocation(line: 381, column: 17, scope: !630)
!632 = !DILocation(line: 377, column: 37, scope: !625)
!633 = !DILocation(line: 377, column: 17, scope: !625)
!634 = distinct !{!634, !628, !635, !152}
!635 = !DILocation(line: 381, column: 17, scope: !622)
!636 = !DILocation(line: 382, column: 30, scope: !620)
!637 = !DILocation(line: 382, column: 17, scope: !620)
!638 = !DILocation(line: 383, column: 13, scope: !620)
!639 = !DILocation(line: 385, column: 5, scope: !608)
!640 = !DILocation(line: 386, column: 1, scope: !600)
!641 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 388, type: !159, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!642 = !DILocalVariable(name: "data", scope: !641, file: !3, line: 390, type: !61)
!643 = !DILocation(line: 390, column: 12, scope: !641)
!644 = !DILocalVariable(name: "dataBuffer", scope: !641, file: !3, line: 391, type: !164)
!645 = !DILocation(line: 391, column: 10, scope: !641)
!646 = !DILocation(line: 392, column: 12, scope: !641)
!647 = !DILocation(line: 392, column: 10, scope: !641)
!648 = !DILocation(line: 394, column: 12, scope: !641)
!649 = !DILocation(line: 394, column: 5, scope: !641)
!650 = !DILocation(line: 395, column: 19, scope: !641)
!651 = !DILocation(line: 396, column: 17, scope: !641)
!652 = !DILocation(line: 396, column: 5, scope: !641)
!653 = !DILocation(line: 397, column: 1, scope: !641)
!654 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_21_good", scope: !3, file: !3, line: 399, type: !159, scopeLine: 400, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!655 = !DILocation(line: 401, column: 5, scope: !654)
!656 = !DILocation(line: 402, column: 5, scope: !654)
!657 = !DILocation(line: 403, column: 5, scope: !654)
!658 = !DILocation(line: 404, column: 1, scope: !654)
!659 = distinct !DISubprogram(name: "printLine", scope: !73, file: !73, line: 11, type: !114, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!660 = !DILocalVariable(name: "line", arg: 1, scope: !659, file: !73, line: 11, type: !61)
!661 = !DILocation(line: 11, column: 25, scope: !659)
!662 = !DILocation(line: 13, column: 1, scope: !659)
!663 = !DILocation(line: 14, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !73, line: 14, column: 8)
!665 = !DILocation(line: 14, column: 13, scope: !664)
!666 = !DILocation(line: 14, column: 8, scope: !659)
!667 = !DILocation(line: 16, column: 24, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !73, line: 15, column: 5)
!669 = !DILocation(line: 16, column: 9, scope: !668)
!670 = !DILocation(line: 17, column: 5, scope: !668)
!671 = !DILocation(line: 18, column: 5, scope: !659)
!672 = !DILocation(line: 19, column: 1, scope: !659)
!673 = distinct !DISubprogram(name: "printSinkLine", scope: !73, file: !73, line: 20, type: !114, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!674 = !DILocalVariable(name: "line", arg: 1, scope: !673, file: !73, line: 20, type: !61)
!675 = !DILocation(line: 20, column: 29, scope: !673)
!676 = !DILocation(line: 22, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !73, line: 22, column: 8)
!678 = !DILocation(line: 22, column: 13, scope: !677)
!679 = !DILocation(line: 22, column: 8, scope: !673)
!680 = !DILocation(line: 24, column: 24, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !73, line: 23, column: 5)
!682 = !DILocation(line: 24, column: 9, scope: !681)
!683 = !DILocation(line: 25, column: 5, scope: !681)
!684 = !DILocation(line: 26, column: 1, scope: !673)
!685 = distinct !DISubprogram(name: "printWLine", scope: !73, file: !73, line: 27, type: !686, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !201, line: 74, baseType: !65)
!690 = !DILocalVariable(name: "line", arg: 1, scope: !685, file: !73, line: 27, type: !688)
!691 = !DILocation(line: 27, column: 29, scope: !685)
!692 = !DILocation(line: 29, column: 8, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !73, line: 29, column: 8)
!694 = !DILocation(line: 29, column: 13, scope: !693)
!695 = !DILocation(line: 29, column: 8, scope: !685)
!696 = !DILocation(line: 31, column: 27, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !73, line: 30, column: 5)
!698 = !DILocation(line: 31, column: 9, scope: !697)
!699 = !DILocation(line: 32, column: 5, scope: !697)
!700 = !DILocation(line: 33, column: 1, scope: !685)
!701 = distinct !DISubprogram(name: "printIntLine", scope: !73, file: !73, line: 35, type: !702, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !65}
!704 = !DILocalVariable(name: "intNumber", arg: 1, scope: !701, file: !73, line: 35, type: !65)
!705 = !DILocation(line: 35, column: 24, scope: !701)
!706 = !DILocation(line: 37, column: 20, scope: !701)
!707 = !DILocation(line: 37, column: 5, scope: !701)
!708 = !DILocation(line: 38, column: 1, scope: !701)
!709 = distinct !DISubprogram(name: "printShortLine", scope: !73, file: !73, line: 40, type: !710, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!713 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !709, file: !73, line: 40, type: !712)
!714 = !DILocation(line: 40, column: 28, scope: !709)
!715 = !DILocation(line: 42, column: 21, scope: !709)
!716 = !DILocation(line: 42, column: 5, scope: !709)
!717 = !DILocation(line: 43, column: 1, scope: !709)
!718 = distinct !DISubprogram(name: "printFloatLine", scope: !73, file: !73, line: 45, type: !719, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721}
!721 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!722 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !718, file: !73, line: 45, type: !721)
!723 = !DILocation(line: 45, column: 28, scope: !718)
!724 = !DILocation(line: 47, column: 20, scope: !718)
!725 = !DILocation(line: 47, column: 5, scope: !718)
!726 = !DILocation(line: 48, column: 1, scope: !718)
!727 = distinct !DISubprogram(name: "printLongLine", scope: !73, file: !73, line: 50, type: !728, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730}
!730 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!731 = !DILocalVariable(name: "longNumber", arg: 1, scope: !727, file: !73, line: 50, type: !730)
!732 = !DILocation(line: 50, column: 26, scope: !727)
!733 = !DILocation(line: 52, column: 21, scope: !727)
!734 = !DILocation(line: 52, column: 5, scope: !727)
!735 = !DILocation(line: 53, column: 1, scope: !727)
!736 = distinct !DISubprogram(name: "printLongLongLine", scope: !73, file: !73, line: 55, type: !737, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !739}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !740, line: 27, baseType: !741)
!740 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !182, line: 44, baseType: !730)
!742 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !736, file: !73, line: 55, type: !739)
!743 = !DILocation(line: 55, column: 33, scope: !736)
!744 = !DILocation(line: 57, column: 29, scope: !736)
!745 = !DILocation(line: 57, column: 5, scope: !736)
!746 = !DILocation(line: 58, column: 1, scope: !736)
!747 = distinct !DISubprogram(name: "printSizeTLine", scope: !73, file: !73, line: 60, type: !748, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !200}
!750 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !747, file: !73, line: 60, type: !200)
!751 = !DILocation(line: 60, column: 29, scope: !747)
!752 = !DILocation(line: 62, column: 21, scope: !747)
!753 = !DILocation(line: 62, column: 5, scope: !747)
!754 = !DILocation(line: 63, column: 1, scope: !747)
!755 = distinct !DISubprogram(name: "printHexCharLine", scope: !73, file: !73, line: 65, type: !756, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !58}
!758 = !DILocalVariable(name: "charHex", arg: 1, scope: !755, file: !73, line: 65, type: !58)
!759 = !DILocation(line: 65, column: 29, scope: !755)
!760 = !DILocation(line: 67, column: 22, scope: !755)
!761 = !DILocation(line: 67, column: 5, scope: !755)
!762 = !DILocation(line: 68, column: 1, scope: !755)
!763 = distinct !DISubprogram(name: "printWcharLine", scope: !73, file: !73, line: 70, type: !764, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !689}
!766 = !DILocalVariable(name: "wideChar", arg: 1, scope: !763, file: !73, line: 70, type: !689)
!767 = !DILocation(line: 70, column: 29, scope: !763)
!768 = !DILocalVariable(name: "s", scope: !763, file: !73, line: 74, type: !769)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 64, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 2)
!772 = !DILocation(line: 74, column: 13, scope: !763)
!773 = !DILocation(line: 75, column: 16, scope: !763)
!774 = !DILocation(line: 75, column: 9, scope: !763)
!775 = !DILocation(line: 75, column: 14, scope: !763)
!776 = !DILocation(line: 76, column: 9, scope: !763)
!777 = !DILocation(line: 76, column: 14, scope: !763)
!778 = !DILocation(line: 77, column: 21, scope: !763)
!779 = !DILocation(line: 77, column: 5, scope: !763)
!780 = !DILocation(line: 78, column: 1, scope: !763)
!781 = distinct !DISubprogram(name: "printUnsignedLine", scope: !73, file: !73, line: 80, type: !782, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !7}
!784 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !781, file: !73, line: 80, type: !7)
!785 = !DILocation(line: 80, column: 33, scope: !781)
!786 = !DILocation(line: 82, column: 20, scope: !781)
!787 = !DILocation(line: 82, column: 5, scope: !781)
!788 = !DILocation(line: 83, column: 1, scope: !781)
!789 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !73, file: !73, line: 85, type: !790, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !92}
!792 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !789, file: !73, line: 85, type: !92)
!793 = !DILocation(line: 85, column: 45, scope: !789)
!794 = !DILocation(line: 87, column: 22, scope: !789)
!795 = !DILocation(line: 87, column: 5, scope: !789)
!796 = !DILocation(line: 88, column: 1, scope: !789)
!797 = distinct !DISubprogram(name: "printDoubleLine", scope: !73, file: !73, line: 90, type: !798, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800}
!800 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!801 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !797, file: !73, line: 90, type: !800)
!802 = !DILocation(line: 90, column: 29, scope: !797)
!803 = !DILocation(line: 92, column: 20, scope: !797)
!804 = !DILocation(line: 92, column: 5, scope: !797)
!805 = !DILocation(line: 93, column: 1, scope: !797)
!806 = distinct !DISubprogram(name: "printStructLine", scope: !73, file: !73, line: 95, type: !807, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !811, line: 100, baseType: !812)
!811 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_948/source_code")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !811, line: 96, size: 64, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !812, file: !811, line: 98, baseType: !65, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !812, file: !811, line: 99, baseType: !65, size: 32, offset: 32)
!816 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !806, file: !73, line: 95, type: !809)
!817 = !DILocation(line: 95, column: 40, scope: !806)
!818 = !DILocation(line: 97, column: 26, scope: !806)
!819 = !DILocation(line: 97, column: 47, scope: !806)
!820 = !DILocation(line: 97, column: 55, scope: !806)
!821 = !DILocation(line: 97, column: 76, scope: !806)
!822 = !DILocation(line: 97, column: 5, scope: !806)
!823 = !DILocation(line: 98, column: 1, scope: !806)
!824 = distinct !DISubprogram(name: "printBytesLine", scope: !73, file: !73, line: 100, type: !825, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !827, !200}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!828 = !DILocalVariable(name: "bytes", arg: 1, scope: !824, file: !73, line: 100, type: !827)
!829 = !DILocation(line: 100, column: 38, scope: !824)
!830 = !DILocalVariable(name: "numBytes", arg: 2, scope: !824, file: !73, line: 100, type: !200)
!831 = !DILocation(line: 100, column: 52, scope: !824)
!832 = !DILocalVariable(name: "i", scope: !824, file: !73, line: 102, type: !200)
!833 = !DILocation(line: 102, column: 12, scope: !824)
!834 = !DILocation(line: 103, column: 12, scope: !835)
!835 = distinct !DILexicalBlock(scope: !824, file: !73, line: 103, column: 5)
!836 = !DILocation(line: 103, column: 10, scope: !835)
!837 = !DILocation(line: 103, column: 17, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !73, line: 103, column: 5)
!839 = !DILocation(line: 103, column: 21, scope: !838)
!840 = !DILocation(line: 103, column: 19, scope: !838)
!841 = !DILocation(line: 103, column: 5, scope: !835)
!842 = !DILocation(line: 105, column: 24, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !73, line: 104, column: 5)
!844 = !DILocation(line: 105, column: 30, scope: !843)
!845 = !DILocation(line: 105, column: 9, scope: !843)
!846 = !DILocation(line: 106, column: 5, scope: !843)
!847 = !DILocation(line: 103, column: 31, scope: !838)
!848 = !DILocation(line: 103, column: 5, scope: !838)
!849 = distinct !{!849, !841, !850, !152}
!850 = !DILocation(line: 106, column: 5, scope: !835)
!851 = !DILocation(line: 107, column: 5, scope: !824)
!852 = !DILocation(line: 108, column: 1, scope: !824)
!853 = distinct !DISubprogram(name: "decodeHexChars", scope: !73, file: !73, line: 113, type: !854, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!854 = !DISubroutineType(types: !855)
!855 = !{!200, !827, !200, !61}
!856 = !DILocalVariable(name: "bytes", arg: 1, scope: !853, file: !73, line: 113, type: !827)
!857 = !DILocation(line: 113, column: 39, scope: !853)
!858 = !DILocalVariable(name: "numBytes", arg: 2, scope: !853, file: !73, line: 113, type: !200)
!859 = !DILocation(line: 113, column: 53, scope: !853)
!860 = !DILocalVariable(name: "hex", arg: 3, scope: !853, file: !73, line: 113, type: !61)
!861 = !DILocation(line: 113, column: 71, scope: !853)
!862 = !DILocalVariable(name: "numWritten", scope: !853, file: !73, line: 115, type: !200)
!863 = !DILocation(line: 115, column: 12, scope: !853)
!864 = !DILocation(line: 121, column: 5, scope: !853)
!865 = !DILocation(line: 121, column: 12, scope: !853)
!866 = !DILocation(line: 121, column: 25, scope: !853)
!867 = !DILocation(line: 121, column: 23, scope: !853)
!868 = !DILocation(line: 121, column: 34, scope: !853)
!869 = !DILocation(line: 121, column: 37, scope: !853)
!870 = !DILocation(line: 121, column: 67, scope: !853)
!871 = !DILocation(line: 121, column: 70, scope: !853)
!872 = !DILocation(line: 0, scope: !853)
!873 = !DILocalVariable(name: "byte", scope: !874, file: !73, line: 123, type: !65)
!874 = distinct !DILexicalBlock(scope: !853, file: !73, line: 122, column: 5)
!875 = !DILocation(line: 123, column: 13, scope: !874)
!876 = !DILocation(line: 124, column: 17, scope: !874)
!877 = !DILocation(line: 124, column: 25, scope: !874)
!878 = !DILocation(line: 124, column: 23, scope: !874)
!879 = !DILocation(line: 124, column: 9, scope: !874)
!880 = !DILocation(line: 125, column: 45, scope: !874)
!881 = !DILocation(line: 125, column: 29, scope: !874)
!882 = !DILocation(line: 125, column: 9, scope: !874)
!883 = !DILocation(line: 125, column: 15, scope: !874)
!884 = !DILocation(line: 125, column: 27, scope: !874)
!885 = !DILocation(line: 126, column: 9, scope: !874)
!886 = distinct !{!886, !864, !887, !152}
!887 = !DILocation(line: 127, column: 5, scope: !853)
!888 = !DILocation(line: 129, column: 12, scope: !853)
!889 = !DILocation(line: 129, column: 5, scope: !853)
!890 = distinct !DISubprogram(name: "decodeHexWChars", scope: !73, file: !73, line: 135, type: !891, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!891 = !DISubroutineType(types: !892)
!892 = !{!200, !827, !200, !688}
!893 = !DILocalVariable(name: "bytes", arg: 1, scope: !890, file: !73, line: 135, type: !827)
!894 = !DILocation(line: 135, column: 41, scope: !890)
!895 = !DILocalVariable(name: "numBytes", arg: 2, scope: !890, file: !73, line: 135, type: !200)
!896 = !DILocation(line: 135, column: 55, scope: !890)
!897 = !DILocalVariable(name: "hex", arg: 3, scope: !890, file: !73, line: 135, type: !688)
!898 = !DILocation(line: 135, column: 76, scope: !890)
!899 = !DILocalVariable(name: "numWritten", scope: !890, file: !73, line: 137, type: !200)
!900 = !DILocation(line: 137, column: 12, scope: !890)
!901 = !DILocation(line: 143, column: 5, scope: !890)
!902 = !DILocation(line: 143, column: 12, scope: !890)
!903 = !DILocation(line: 143, column: 25, scope: !890)
!904 = !DILocation(line: 143, column: 23, scope: !890)
!905 = !DILocation(line: 143, column: 34, scope: !890)
!906 = !DILocation(line: 143, column: 47, scope: !890)
!907 = !DILocation(line: 143, column: 55, scope: !890)
!908 = !DILocation(line: 143, column: 53, scope: !890)
!909 = !DILocation(line: 143, column: 37, scope: !890)
!910 = !DILocation(line: 143, column: 68, scope: !890)
!911 = !DILocation(line: 143, column: 81, scope: !890)
!912 = !DILocation(line: 143, column: 89, scope: !890)
!913 = !DILocation(line: 143, column: 87, scope: !890)
!914 = !DILocation(line: 143, column: 100, scope: !890)
!915 = !DILocation(line: 143, column: 71, scope: !890)
!916 = !DILocation(line: 0, scope: !890)
!917 = !DILocalVariable(name: "byte", scope: !918, file: !73, line: 145, type: !65)
!918 = distinct !DILexicalBlock(scope: !890, file: !73, line: 144, column: 5)
!919 = !DILocation(line: 145, column: 13, scope: !918)
!920 = !DILocation(line: 146, column: 18, scope: !918)
!921 = !DILocation(line: 146, column: 26, scope: !918)
!922 = !DILocation(line: 146, column: 24, scope: !918)
!923 = !DILocation(line: 146, column: 9, scope: !918)
!924 = !DILocation(line: 147, column: 45, scope: !918)
!925 = !DILocation(line: 147, column: 29, scope: !918)
!926 = !DILocation(line: 147, column: 9, scope: !918)
!927 = !DILocation(line: 147, column: 15, scope: !918)
!928 = !DILocation(line: 147, column: 27, scope: !918)
!929 = !DILocation(line: 148, column: 9, scope: !918)
!930 = distinct !{!930, !901, !931, !152}
!931 = !DILocation(line: 149, column: 5, scope: !890)
!932 = !DILocation(line: 151, column: 12, scope: !890)
!933 = !DILocation(line: 151, column: 5, scope: !890)
!934 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !73, file: !73, line: 156, type: !935, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!935 = !DISubroutineType(types: !936)
!936 = !{!65}
!937 = !DILocation(line: 158, column: 5, scope: !934)
!938 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !73, file: !73, line: 161, type: !935, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!939 = !DILocation(line: 163, column: 5, scope: !938)
!940 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !73, file: !73, line: 166, type: !935, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!941 = !DILocation(line: 168, column: 13, scope: !940)
!942 = !DILocation(line: 168, column: 20, scope: !940)
!943 = !DILocation(line: 168, column: 5, scope: !940)
!944 = distinct !DISubprogram(name: "good1", scope: !73, file: !73, line: 187, type: !159, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!945 = !DILocation(line: 187, column: 16, scope: !944)
!946 = distinct !DISubprogram(name: "good2", scope: !73, file: !73, line: 188, type: !159, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!947 = !DILocation(line: 188, column: 16, scope: !946)
!948 = distinct !DISubprogram(name: "good3", scope: !73, file: !73, line: 189, type: !159, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!949 = !DILocation(line: 189, column: 16, scope: !948)
!950 = distinct !DISubprogram(name: "good4", scope: !73, file: !73, line: 190, type: !159, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!951 = !DILocation(line: 190, column: 16, scope: !950)
!952 = distinct !DISubprogram(name: "good5", scope: !73, file: !73, line: 191, type: !159, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!953 = !DILocation(line: 191, column: 16, scope: !952)
!954 = distinct !DISubprogram(name: "good6", scope: !73, file: !73, line: 192, type: !159, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!955 = !DILocation(line: 192, column: 16, scope: !954)
!956 = distinct !DISubprogram(name: "good7", scope: !73, file: !73, line: 193, type: !159, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!957 = !DILocation(line: 193, column: 16, scope: !956)
!958 = distinct !DISubprogram(name: "good8", scope: !73, file: !73, line: 194, type: !159, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!959 = !DILocation(line: 194, column: 16, scope: !958)
!960 = distinct !DISubprogram(name: "good9", scope: !73, file: !73, line: 195, type: !159, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!961 = !DILocation(line: 195, column: 16, scope: !960)
!962 = distinct !DISubprogram(name: "bad1", scope: !73, file: !73, line: 198, type: !159, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!963 = !DILocation(line: 198, column: 15, scope: !962)
!964 = distinct !DISubprogram(name: "bad2", scope: !73, file: !73, line: 199, type: !159, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!965 = !DILocation(line: 199, column: 15, scope: !964)
!966 = distinct !DISubprogram(name: "bad3", scope: !73, file: !73, line: 200, type: !159, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!967 = !DILocation(line: 200, column: 15, scope: !966)
!968 = distinct !DISubprogram(name: "bad4", scope: !73, file: !73, line: 201, type: !159, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!969 = !DILocation(line: 201, column: 15, scope: !968)
!970 = distinct !DISubprogram(name: "bad5", scope: !73, file: !73, line: 202, type: !159, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!971 = !DILocation(line: 202, column: 15, scope: !970)
!972 = distinct !DISubprogram(name: "bad6", scope: !73, file: !73, line: 203, type: !159, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!973 = !DILocation(line: 203, column: 15, scope: !972)
!974 = distinct !DISubprogram(name: "bad7", scope: !73, file: !73, line: 204, type: !159, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!975 = !DILocation(line: 204, column: 15, scope: !974)
!976 = distinct !DISubprogram(name: "bad8", scope: !73, file: !73, line: 205, type: !159, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!977 = !DILocation(line: 205, column: 15, scope: !976)
!978 = distinct !DISubprogram(name: "bad9", scope: !73, file: !73, line: 206, type: !159, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !116)
!979 = !DILocation(line: 206, column: 15, scope: !978)
