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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_41_bad() #0 !dbg !144 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !149, metadata !DIExpression()), !dbg !153
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !153
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !154
  store i8* %arraydecay, i8** %data, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !159, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 -1, i32* %connectSocket, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !185, metadata !DIExpression()), !dbg !189
  %1 = load i8*, i8** %data, align 8, !dbg !190
  %call = call i64 @strlen(i8* %1) #8, !dbg !191
  store i64 %call, i64* %dataLen, align 8, !dbg !189
  br label %do.body, !dbg !192

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !193
  store i32 %call1, i32* %connectSocket, align 4, !dbg !195
  %2 = load i32, i32* %connectSocket, align 4, !dbg !196
  %cmp = icmp eq i32 %2, -1, !dbg !198
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !200

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !202
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !203
  store i16 2, i16* %sin_family, align 4, !dbg !204
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !205
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !206
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !207
  store i32 %call2, i32* %s_addr, align 4, !dbg !208
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !209
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !210
  store i16 %call3, i16* %sin_port, align 2, !dbg !211
  %4 = load i32, i32* %connectSocket, align 4, !dbg !212
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !214
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !215
  %cmp5 = icmp eq i32 %call4, -1, !dbg !216
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !217

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !218

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !220
  %7 = load i8*, i8** %data, align 8, !dbg !221
  %8 = load i64, i64* %dataLen, align 8, !dbg !222
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !223
  %9 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub = sub i64 100, %9, !dbg !225
  %sub8 = sub i64 %sub, 1, !dbg !226
  %mul = mul i64 1, %sub8, !dbg !227
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !228
  %conv = trunc i64 %call9 to i32, !dbg !228
  store i32 %conv, i32* %recvResult, align 4, !dbg !229
  %10 = load i32, i32* %recvResult, align 4, !dbg !230
  %cmp10 = icmp eq i32 %10, -1, !dbg !232
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !233

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !234
  %cmp12 = icmp eq i32 %11, 0, !dbg !235
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !236

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !237

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !239
  %13 = load i64, i64* %dataLen, align 8, !dbg !240
  %14 = load i32, i32* %recvResult, align 4, !dbg !241
  %conv16 = sext i32 %14 to i64, !dbg !241
  %div = udiv i64 %conv16, 1, !dbg !242
  %add = add i64 %13, %div, !dbg !243
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !239
  store i8 0, i8* %arrayidx, align 1, !dbg !244
  %15 = load i8*, i8** %data, align 8, !dbg !245
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !246
  store i8* %call17, i8** %replace, align 8, !dbg !247
  %16 = load i8*, i8** %replace, align 8, !dbg !248
  %tobool = icmp ne i8* %16, null, !dbg !248
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !250

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !251
  store i8 0, i8* %17, align 1, !dbg !253
  br label %if.end19, !dbg !254

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !255
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !256
  store i8* %call20, i8** %replace, align 8, !dbg !257
  %19 = load i8*, i8** %replace, align 8, !dbg !258
  %tobool21 = icmp ne i8* %19, null, !dbg !258
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !260

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !261
  store i8 0, i8* %20, align 1, !dbg !263
  br label %if.end23, !dbg !264

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !265

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !266
  %cmp24 = icmp ne i32 %21, -1, !dbg !268
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !269

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !270
  %call27 = call i32 @close(i32 %22), !dbg !272
  br label %if.end28, !dbg !273

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !274
  call void @badSink(i8* %23), !dbg !275
  ret void, !dbg !276
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !277 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %n, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8*, i8** %data.addr, align 8, !dbg !287
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !289
  %cmp = icmp eq i32 %call, 1, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !292
  store i32 0, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !296

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !297
  %2 = load i32, i32* %n, align 4, !dbg !299
  %cmp1 = icmp slt i32 %1, %2, !dbg !300
  br i1 %cmp1, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !302
  %inc = add nsw i32 %3, 1, !dbg !302
  store i32 %inc, i32* %intVariable, align 4, !dbg !302
  br label %for.inc, !dbg !304

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !305
  %inc2 = add nsw i32 %4, 1, !dbg !305
  store i32 %inc2, i32* %i, align 4, !dbg !305
  br label %for.cond, !dbg !306, !llvm.loop !307

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !309
  call void @printIntLine(i32 %5), !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !313 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !317
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !318
  store i8* %arraydecay, i8** %data, align 8, !dbg !319
  %1 = load i8*, i8** %data, align 8, !dbg !320
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !321
  %2 = load i8*, i8** %data, align 8, !dbg !322
  call void @goodG2BSink(i8* %2), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !325 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %n, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %data.addr, align 8, !dbg !335
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !337
  %cmp = icmp eq i32 %call, 1, !dbg !338
  br i1 %cmp, label %if.then, label %if.end5, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !340
  %cmp1 = icmp slt i32 %1, 10000, !dbg !343
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !344

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !345
  store i32 0, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !349

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !350
  %3 = load i32, i32* %n, align 4, !dbg !352
  %cmp3 = icmp slt i32 %2, %3, !dbg !353
  br i1 %cmp3, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !355
  %inc = add nsw i32 %4, 1, !dbg !355
  store i32 %inc, i32* %intVariable, align 4, !dbg !355
  br label %for.inc, !dbg !357

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !358
  %inc4 = add nsw i32 %5, 1, !dbg !358
  store i32 %inc4, i32* %i, align 4, !dbg !358
  br label %for.cond, !dbg !359, !llvm.loop !360

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !362
  call void @printIntLine(i32 %6), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !365

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !367 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !371
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !371
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !372
  store i8* %arraydecay, i8** %data, align 8, !dbg !373
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 -1, i32* %connectSocket, align 4, !dbg !382
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !383, metadata !DIExpression()), !dbg !384
  %1 = load i8*, i8** %data, align 8, !dbg !385
  %call = call i64 @strlen(i8* %1) #8, !dbg !386
  store i64 %call, i64* %dataLen, align 8, !dbg !384
  br label %do.body, !dbg !387

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !388
  store i32 %call1, i32* %connectSocket, align 4, !dbg !390
  %2 = load i32, i32* %connectSocket, align 4, !dbg !391
  %cmp = icmp eq i32 %2, -1, !dbg !393
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !395

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !397
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !397
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !398
  store i16 2, i16* %sin_family, align 4, !dbg !399
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !400
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !401
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !402
  store i32 %call2, i32* %s_addr, align 4, !dbg !403
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !404
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !405
  store i16 %call3, i16* %sin_port, align 2, !dbg !406
  %4 = load i32, i32* %connectSocket, align 4, !dbg !407
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !409
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !410
  %cmp5 = icmp eq i32 %call4, -1, !dbg !411
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !412

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !413

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !415
  %7 = load i8*, i8** %data, align 8, !dbg !416
  %8 = load i64, i64* %dataLen, align 8, !dbg !417
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !418
  %9 = load i64, i64* %dataLen, align 8, !dbg !419
  %sub = sub i64 100, %9, !dbg !420
  %sub8 = sub i64 %sub, 1, !dbg !421
  %mul = mul i64 1, %sub8, !dbg !422
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !423
  %conv = trunc i64 %call9 to i32, !dbg !423
  store i32 %conv, i32* %recvResult, align 4, !dbg !424
  %10 = load i32, i32* %recvResult, align 4, !dbg !425
  %cmp10 = icmp eq i32 %10, -1, !dbg !427
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !428

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !429
  %cmp12 = icmp eq i32 %11, 0, !dbg !430
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !431

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !432

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !434
  %13 = load i64, i64* %dataLen, align 8, !dbg !435
  %14 = load i32, i32* %recvResult, align 4, !dbg !436
  %conv16 = sext i32 %14 to i64, !dbg !436
  %div = udiv i64 %conv16, 1, !dbg !437
  %add = add i64 %13, %div, !dbg !438
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !434
  store i8 0, i8* %arrayidx, align 1, !dbg !439
  %15 = load i8*, i8** %data, align 8, !dbg !440
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !441
  store i8* %call17, i8** %replace, align 8, !dbg !442
  %16 = load i8*, i8** %replace, align 8, !dbg !443
  %tobool = icmp ne i8* %16, null, !dbg !443
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !445

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !446
  store i8 0, i8* %17, align 1, !dbg !448
  br label %if.end19, !dbg !449

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !450
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !451
  store i8* %call20, i8** %replace, align 8, !dbg !452
  %19 = load i8*, i8** %replace, align 8, !dbg !453
  %tobool21 = icmp ne i8* %19, null, !dbg !453
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !455

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !456
  store i8 0, i8* %20, align 1, !dbg !458
  br label %if.end23, !dbg !459

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !460

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !461
  %cmp24 = icmp ne i32 %21, -1, !dbg !463
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !464

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !465
  %call27 = call i32 @close(i32 %22), !dbg !467
  br label %if.end28, !dbg !468

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !469
  call void @goodB2GSink(i8* %23), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_41_good() #0 !dbg !472 {
entry:
  call void @goodB2G(), !dbg !473
  call void @goodG2B(), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !476 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !479
  %0 = load i8*, i8** %line.addr, align 8, !dbg !480
  %cmp = icmp ne i8* %0, null, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !484
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !486
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !488
  ret void, !dbg !489
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !490 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i8*, i8** %line.addr, align 8, !dbg !493
  %cmp = icmp ne i8* %0, null, !dbg !495
  br i1 %cmp, label %if.then, label %if.end, !dbg !496

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !499
  br label %if.end, !dbg !500

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !502 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i32*, i32** %line.addr, align 8, !dbg !509
  %cmp = icmp ne i32* %0, null, !dbg !511
  br i1 %cmp, label %if.then, label %if.end, !dbg !512

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !513
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !515
  br label %if.end, !dbg !516

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !517
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !518 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !526 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !532
  %conv = sext i16 %0 to i32, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !535 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !541
  %conv = fpext float %0 to double, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !544 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !553 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !564 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !572 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !577
  %conv = sext i8 %0 to i32, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !580 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !585, metadata !DIExpression()), !dbg !589
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !590
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !591
  store i32 %0, i32* %arrayidx, align 4, !dbg !592
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !593
  store i32 0, i32* %arrayidx1, align 4, !dbg !594
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !598 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !601, metadata !DIExpression()), !dbg !602
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !603
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !606 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !611
  %conv = zext i8 %0 to i32, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !614 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !623 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !633, metadata !DIExpression()), !dbg !634
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !635
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !636
  %1 = load i32, i32* %intOne, align 4, !dbg !636
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !637
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !638
  %3 = load i32, i32* %intTwo, align 4, !dbg !638
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !639
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !641 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata i64* %i, metadata !649, metadata !DIExpression()), !dbg !650
  store i64 0, i64* %i, align 8, !dbg !651
  br label %for.cond, !dbg !653

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !654
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !656
  %cmp = icmp ult i64 %0, %1, !dbg !657
  br i1 %cmp, label %for.body, label %for.end, !dbg !658

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !659
  %3 = load i64, i64* %i, align 8, !dbg !661
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !659
  %4 = load i8, i8* %arrayidx, align 1, !dbg !659
  %conv = zext i8 %4 to i32, !dbg !659
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !662
  br label %for.inc, !dbg !663

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !664
  %inc = add i64 %5, 1, !dbg !664
  store i64 %inc, i64* %i, align 8, !dbg !664
  br label %for.cond, !dbg !665, !llvm.loop !666

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !668
  ret void, !dbg !669
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !670 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !673, metadata !DIExpression()), !dbg !674
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !675, metadata !DIExpression()), !dbg !676
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !679, metadata !DIExpression()), !dbg !680
  store i64 0, i64* %numWritten, align 8, !dbg !680
  br label %while.cond, !dbg !681

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !682
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !683
  %cmp = icmp ult i64 %0, %1, !dbg !684
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !685

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !686
  %2 = load i16*, i16** %call, align 8, !dbg !686
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !686
  %4 = load i64, i64* %numWritten, align 8, !dbg !686
  %mul = mul i64 2, %4, !dbg !686
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !686
  %5 = load i8, i8* %arrayidx, align 1, !dbg !686
  %conv = sext i8 %5 to i32, !dbg !686
  %idxprom = sext i32 %conv to i64, !dbg !686
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !686
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !686
  %conv2 = zext i16 %6 to i32, !dbg !686
  %and = and i32 %conv2, 4096, !dbg !686
  %tobool = icmp ne i32 %and, 0, !dbg !686
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !687

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !688
  %7 = load i16*, i16** %call3, align 8, !dbg !688
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !688
  %9 = load i64, i64* %numWritten, align 8, !dbg !688
  %mul4 = mul i64 2, %9, !dbg !688
  %add = add i64 %mul4, 1, !dbg !688
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !688
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !688
  %conv6 = sext i8 %10 to i32, !dbg !688
  %idxprom7 = sext i32 %conv6 to i64, !dbg !688
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !688
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !688
  %conv9 = zext i16 %11 to i32, !dbg !688
  %and10 = and i32 %conv9, 4096, !dbg !688
  %tobool11 = icmp ne i32 %and10, 0, !dbg !687
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !689
  br i1 %12, label %while.body, label %while.end, !dbg !681

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !690, metadata !DIExpression()), !dbg !692
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !693
  %14 = load i64, i64* %numWritten, align 8, !dbg !694
  %mul12 = mul i64 2, %14, !dbg !695
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !693
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !696
  %15 = load i32, i32* %byte, align 4, !dbg !697
  %conv15 = trunc i32 %15 to i8, !dbg !698
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !699
  %17 = load i64, i64* %numWritten, align 8, !dbg !700
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !699
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !701
  %18 = load i64, i64* %numWritten, align 8, !dbg !702
  %inc = add i64 %18, 1, !dbg !702
  store i64 %inc, i64* %numWritten, align 8, !dbg !702
  br label %while.cond, !dbg !681, !llvm.loop !703

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !705
  ret i64 %19, !dbg !706
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !707 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !710, metadata !DIExpression()), !dbg !711
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !712, metadata !DIExpression()), !dbg !713
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 0, i64* %numWritten, align 8, !dbg !717
  br label %while.cond, !dbg !718

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !719
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !720
  %cmp = icmp ult i64 %0, %1, !dbg !721
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !722

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !723
  %3 = load i64, i64* %numWritten, align 8, !dbg !724
  %mul = mul i64 2, %3, !dbg !725
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !723
  %4 = load i32, i32* %arrayidx, align 4, !dbg !723
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !726
  %tobool = icmp ne i32 %call, 0, !dbg !726
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !727

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !728
  %6 = load i64, i64* %numWritten, align 8, !dbg !729
  %mul1 = mul i64 2, %6, !dbg !730
  %add = add i64 %mul1, 1, !dbg !731
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !728
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !728
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !732
  %tobool4 = icmp ne i32 %call3, 0, !dbg !727
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !733
  br i1 %8, label %while.body, label %while.end, !dbg !718

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !734, metadata !DIExpression()), !dbg !736
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !737
  %10 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul5 = mul i64 2, %10, !dbg !739
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !737
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !740
  %11 = load i32, i32* %byte, align 4, !dbg !741
  %conv = trunc i32 %11 to i8, !dbg !742
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !743
  %13 = load i64, i64* %numWritten, align 8, !dbg !744
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !743
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !745
  %14 = load i64, i64* %numWritten, align 8, !dbg !746
  %inc = add i64 %14, 1, !dbg !746
  store i64 %inc, i64* %numWritten, align 8, !dbg !746
  br label %while.cond, !dbg !718, !llvm.loop !747

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !749
  ret i64 %15, !dbg !750
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !751 {
entry:
  ret i32 1, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !755 {
entry:
  ret i32 0, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !757 {
entry:
  %call = call i32 @rand() #7, !dbg !758
  %rem = srem i32 %call, 2, !dbg !759
  ret i32 %rem, !dbg !760
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !795 {
entry:
  ret void, !dbg !796
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_954/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_954/source_code")
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
!144 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41_bad", scope: !45, file: !45, line: 68, type: !145, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!145 = !DISubroutineType(types: !146)
!146 = !{null}
!147 = !DILocalVariable(name: "data", scope: !144, file: !45, line: 70, type: !42)
!148 = !DILocation(line: 70, column: 12, scope: !144)
!149 = !DILocalVariable(name: "dataBuffer", scope: !144, file: !45, line: 71, type: !150)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 100)
!153 = !DILocation(line: 71, column: 10, scope: !144)
!154 = !DILocation(line: 72, column: 12, scope: !144)
!155 = !DILocation(line: 72, column: 10, scope: !144)
!156 = !DILocalVariable(name: "recvResult", scope: !157, file: !45, line: 78, type: !23)
!157 = distinct !DILexicalBlock(scope: !144, file: !45, line: 73, column: 5)
!158 = !DILocation(line: 78, column: 13, scope: !157)
!159 = !DILocalVariable(name: "service", scope: !157, file: !45, line: 79, type: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !161)
!161 = !{!162, !163, !169, !176}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !160, file: !60, line: 240, baseType: !94, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !160, file: !60, line: 241, baseType: !164, size: 16, offset: 16)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !166, line: 25, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !168, line: 40, baseType: !24)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !160, file: !60, line: 242, baseType: !170, size: 32, offset: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !170, file: !60, line: 33, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !166, line: 26, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !168, line: 42, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !160, file: !60, line: 245, baseType: !177, size: 64, offset: 64)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 8)
!180 = !DILocation(line: 79, column: 28, scope: !157)
!181 = !DILocalVariable(name: "replace", scope: !157, file: !45, line: 80, type: !42)
!182 = !DILocation(line: 80, column: 15, scope: !157)
!183 = !DILocalVariable(name: "connectSocket", scope: !157, file: !45, line: 81, type: !23)
!184 = !DILocation(line: 81, column: 16, scope: !157)
!185 = !DILocalVariable(name: "dataLen", scope: !157, file: !45, line: 82, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!188 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!189 = !DILocation(line: 82, column: 16, scope: !157)
!190 = !DILocation(line: 82, column: 33, scope: !157)
!191 = !DILocation(line: 82, column: 26, scope: !157)
!192 = !DILocation(line: 83, column: 9, scope: !157)
!193 = !DILocation(line: 93, column: 29, scope: !194)
!194 = distinct !DILexicalBlock(scope: !157, file: !45, line: 84, column: 9)
!195 = !DILocation(line: 93, column: 27, scope: !194)
!196 = !DILocation(line: 94, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !45, line: 94, column: 17)
!198 = !DILocation(line: 94, column: 31, scope: !197)
!199 = !DILocation(line: 94, column: 17, scope: !194)
!200 = !DILocation(line: 96, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !45, line: 95, column: 13)
!202 = !DILocation(line: 98, column: 13, scope: !194)
!203 = !DILocation(line: 99, column: 21, scope: !194)
!204 = !DILocation(line: 99, column: 32, scope: !194)
!205 = !DILocation(line: 100, column: 39, scope: !194)
!206 = !DILocation(line: 100, column: 21, scope: !194)
!207 = !DILocation(line: 100, column: 30, scope: !194)
!208 = !DILocation(line: 100, column: 37, scope: !194)
!209 = !DILocation(line: 101, column: 32, scope: !194)
!210 = !DILocation(line: 101, column: 21, scope: !194)
!211 = !DILocation(line: 101, column: 30, scope: !194)
!212 = !DILocation(line: 102, column: 25, scope: !213)
!213 = distinct !DILexicalBlock(scope: !194, file: !45, line: 102, column: 17)
!214 = !DILocation(line: 102, column: 40, scope: !213)
!215 = !DILocation(line: 102, column: 17, scope: !213)
!216 = !DILocation(line: 102, column: 85, scope: !213)
!217 = !DILocation(line: 102, column: 17, scope: !194)
!218 = !DILocation(line: 104, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !213, file: !45, line: 103, column: 13)
!220 = !DILocation(line: 109, column: 31, scope: !194)
!221 = !DILocation(line: 109, column: 55, scope: !194)
!222 = !DILocation(line: 109, column: 62, scope: !194)
!223 = !DILocation(line: 109, column: 60, scope: !194)
!224 = !DILocation(line: 109, column: 94, scope: !194)
!225 = !DILocation(line: 109, column: 92, scope: !194)
!226 = !DILocation(line: 109, column: 102, scope: !194)
!227 = !DILocation(line: 109, column: 85, scope: !194)
!228 = !DILocation(line: 109, column: 26, scope: !194)
!229 = !DILocation(line: 109, column: 24, scope: !194)
!230 = !DILocation(line: 110, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !194, file: !45, line: 110, column: 17)
!232 = !DILocation(line: 110, column: 28, scope: !231)
!233 = !DILocation(line: 110, column: 44, scope: !231)
!234 = !DILocation(line: 110, column: 47, scope: !231)
!235 = !DILocation(line: 110, column: 58, scope: !231)
!236 = !DILocation(line: 110, column: 17, scope: !194)
!237 = !DILocation(line: 112, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !45, line: 111, column: 13)
!239 = !DILocation(line: 115, column: 13, scope: !194)
!240 = !DILocation(line: 115, column: 18, scope: !194)
!241 = !DILocation(line: 115, column: 28, scope: !194)
!242 = !DILocation(line: 115, column: 39, scope: !194)
!243 = !DILocation(line: 115, column: 26, scope: !194)
!244 = !DILocation(line: 115, column: 55, scope: !194)
!245 = !DILocation(line: 117, column: 30, scope: !194)
!246 = !DILocation(line: 117, column: 23, scope: !194)
!247 = !DILocation(line: 117, column: 21, scope: !194)
!248 = !DILocation(line: 118, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !194, file: !45, line: 118, column: 17)
!250 = !DILocation(line: 118, column: 17, scope: !194)
!251 = !DILocation(line: 120, column: 18, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !45, line: 119, column: 13)
!253 = !DILocation(line: 120, column: 26, scope: !252)
!254 = !DILocation(line: 121, column: 13, scope: !252)
!255 = !DILocation(line: 122, column: 30, scope: !194)
!256 = !DILocation(line: 122, column: 23, scope: !194)
!257 = !DILocation(line: 122, column: 21, scope: !194)
!258 = !DILocation(line: 123, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !194, file: !45, line: 123, column: 17)
!260 = !DILocation(line: 123, column: 17, scope: !194)
!261 = !DILocation(line: 125, column: 18, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !45, line: 124, column: 13)
!263 = !DILocation(line: 125, column: 26, scope: !262)
!264 = !DILocation(line: 126, column: 13, scope: !262)
!265 = !DILocation(line: 127, column: 9, scope: !194)
!266 = !DILocation(line: 129, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !157, file: !45, line: 129, column: 13)
!268 = !DILocation(line: 129, column: 27, scope: !267)
!269 = !DILocation(line: 129, column: 13, scope: !157)
!270 = !DILocation(line: 131, column: 26, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !45, line: 130, column: 9)
!272 = !DILocation(line: 131, column: 13, scope: !271)
!273 = !DILocation(line: 132, column: 9, scope: !271)
!274 = !DILocation(line: 140, column: 13, scope: !144)
!275 = !DILocation(line: 140, column: 5, scope: !144)
!276 = !DILocation(line: 141, column: 1, scope: !144)
!277 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 148, type: !105, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!278 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !45, line: 148, type: !42)
!279 = !DILocation(line: 148, column: 25, scope: !277)
!280 = !DILocalVariable(name: "i", scope: !281, file: !45, line: 151, type: !23)
!281 = distinct !DILexicalBlock(scope: !277, file: !45, line: 150, column: 5)
!282 = !DILocation(line: 151, column: 13, scope: !281)
!283 = !DILocalVariable(name: "n", scope: !281, file: !45, line: 151, type: !23)
!284 = !DILocation(line: 151, column: 16, scope: !281)
!285 = !DILocalVariable(name: "intVariable", scope: !281, file: !45, line: 151, type: !23)
!286 = !DILocation(line: 151, column: 19, scope: !281)
!287 = !DILocation(line: 152, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !45, line: 152, column: 13)
!289 = !DILocation(line: 152, column: 13, scope: !288)
!290 = !DILocation(line: 152, column: 36, scope: !288)
!291 = !DILocation(line: 152, column: 13, scope: !281)
!292 = !DILocation(line: 155, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !45, line: 153, column: 9)
!294 = !DILocation(line: 156, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !45, line: 156, column: 13)
!296 = !DILocation(line: 156, column: 18, scope: !295)
!297 = !DILocation(line: 156, column: 25, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !45, line: 156, column: 13)
!299 = !DILocation(line: 156, column: 29, scope: !298)
!300 = !DILocation(line: 156, column: 27, scope: !298)
!301 = !DILocation(line: 156, column: 13, scope: !295)
!302 = !DILocation(line: 159, column: 28, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !45, line: 157, column: 13)
!304 = !DILocation(line: 160, column: 13, scope: !303)
!305 = !DILocation(line: 156, column: 33, scope: !298)
!306 = !DILocation(line: 156, column: 13, scope: !298)
!307 = distinct !{!307, !301, !308, !139}
!308 = !DILocation(line: 160, column: 13, scope: !295)
!309 = !DILocation(line: 161, column: 26, scope: !293)
!310 = !DILocation(line: 161, column: 13, scope: !293)
!311 = !DILocation(line: 162, column: 9, scope: !293)
!312 = !DILocation(line: 164, column: 1, scope: !277)
!313 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 166, type: !145, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!314 = !DILocalVariable(name: "data", scope: !313, file: !45, line: 168, type: !42)
!315 = !DILocation(line: 168, column: 12, scope: !313)
!316 = !DILocalVariable(name: "dataBuffer", scope: !313, file: !45, line: 169, type: !150)
!317 = !DILocation(line: 169, column: 10, scope: !313)
!318 = !DILocation(line: 170, column: 12, scope: !313)
!319 = !DILocation(line: 170, column: 10, scope: !313)
!320 = !DILocation(line: 172, column: 12, scope: !313)
!321 = !DILocation(line: 172, column: 5, scope: !313)
!322 = !DILocation(line: 173, column: 17, scope: !313)
!323 = !DILocation(line: 173, column: 5, scope: !313)
!324 = !DILocation(line: 174, column: 1, scope: !313)
!325 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 177, type: !105, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!326 = !DILocalVariable(name: "data", arg: 1, scope: !325, file: !45, line: 177, type: !42)
!327 = !DILocation(line: 177, column: 25, scope: !325)
!328 = !DILocalVariable(name: "i", scope: !329, file: !45, line: 180, type: !23)
!329 = distinct !DILexicalBlock(scope: !325, file: !45, line: 179, column: 5)
!330 = !DILocation(line: 180, column: 13, scope: !329)
!331 = !DILocalVariable(name: "n", scope: !329, file: !45, line: 180, type: !23)
!332 = !DILocation(line: 180, column: 16, scope: !329)
!333 = !DILocalVariable(name: "intVariable", scope: !329, file: !45, line: 180, type: !23)
!334 = !DILocation(line: 180, column: 19, scope: !329)
!335 = !DILocation(line: 181, column: 20, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !45, line: 181, column: 13)
!337 = !DILocation(line: 181, column: 13, scope: !336)
!338 = !DILocation(line: 181, column: 36, scope: !336)
!339 = !DILocation(line: 181, column: 13, scope: !329)
!340 = !DILocation(line: 184, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !45, line: 184, column: 17)
!342 = distinct !DILexicalBlock(scope: !336, file: !45, line: 182, column: 9)
!343 = !DILocation(line: 184, column: 19, scope: !341)
!344 = !DILocation(line: 184, column: 17, scope: !342)
!345 = !DILocation(line: 186, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !45, line: 185, column: 13)
!347 = !DILocation(line: 187, column: 24, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !45, line: 187, column: 17)
!349 = !DILocation(line: 187, column: 22, scope: !348)
!350 = !DILocation(line: 187, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !45, line: 187, column: 17)
!352 = !DILocation(line: 187, column: 33, scope: !351)
!353 = !DILocation(line: 187, column: 31, scope: !351)
!354 = !DILocation(line: 187, column: 17, scope: !348)
!355 = !DILocation(line: 190, column: 32, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !45, line: 188, column: 17)
!357 = !DILocation(line: 191, column: 17, scope: !356)
!358 = !DILocation(line: 187, column: 37, scope: !351)
!359 = !DILocation(line: 187, column: 17, scope: !351)
!360 = distinct !{!360, !354, !361, !139}
!361 = !DILocation(line: 191, column: 17, scope: !348)
!362 = !DILocation(line: 192, column: 30, scope: !346)
!363 = !DILocation(line: 192, column: 17, scope: !346)
!364 = !DILocation(line: 193, column: 13, scope: !346)
!365 = !DILocation(line: 194, column: 9, scope: !342)
!366 = !DILocation(line: 196, column: 1, scope: !325)
!367 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 198, type: !145, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!368 = !DILocalVariable(name: "data", scope: !367, file: !45, line: 200, type: !42)
!369 = !DILocation(line: 200, column: 12, scope: !367)
!370 = !DILocalVariable(name: "dataBuffer", scope: !367, file: !45, line: 201, type: !150)
!371 = !DILocation(line: 201, column: 10, scope: !367)
!372 = !DILocation(line: 202, column: 12, scope: !367)
!373 = !DILocation(line: 202, column: 10, scope: !367)
!374 = !DILocalVariable(name: "recvResult", scope: !375, file: !45, line: 208, type: !23)
!375 = distinct !DILexicalBlock(scope: !367, file: !45, line: 203, column: 5)
!376 = !DILocation(line: 208, column: 13, scope: !375)
!377 = !DILocalVariable(name: "service", scope: !375, file: !45, line: 209, type: !160)
!378 = !DILocation(line: 209, column: 28, scope: !375)
!379 = !DILocalVariable(name: "replace", scope: !375, file: !45, line: 210, type: !42)
!380 = !DILocation(line: 210, column: 15, scope: !375)
!381 = !DILocalVariable(name: "connectSocket", scope: !375, file: !45, line: 211, type: !23)
!382 = !DILocation(line: 211, column: 16, scope: !375)
!383 = !DILocalVariable(name: "dataLen", scope: !375, file: !45, line: 212, type: !186)
!384 = !DILocation(line: 212, column: 16, scope: !375)
!385 = !DILocation(line: 212, column: 33, scope: !375)
!386 = !DILocation(line: 212, column: 26, scope: !375)
!387 = !DILocation(line: 213, column: 9, scope: !375)
!388 = !DILocation(line: 223, column: 29, scope: !389)
!389 = distinct !DILexicalBlock(scope: !375, file: !45, line: 214, column: 9)
!390 = !DILocation(line: 223, column: 27, scope: !389)
!391 = !DILocation(line: 224, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !45, line: 224, column: 17)
!393 = !DILocation(line: 224, column: 31, scope: !392)
!394 = !DILocation(line: 224, column: 17, scope: !389)
!395 = !DILocation(line: 226, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !45, line: 225, column: 13)
!397 = !DILocation(line: 228, column: 13, scope: !389)
!398 = !DILocation(line: 229, column: 21, scope: !389)
!399 = !DILocation(line: 229, column: 32, scope: !389)
!400 = !DILocation(line: 230, column: 39, scope: !389)
!401 = !DILocation(line: 230, column: 21, scope: !389)
!402 = !DILocation(line: 230, column: 30, scope: !389)
!403 = !DILocation(line: 230, column: 37, scope: !389)
!404 = !DILocation(line: 231, column: 32, scope: !389)
!405 = !DILocation(line: 231, column: 21, scope: !389)
!406 = !DILocation(line: 231, column: 30, scope: !389)
!407 = !DILocation(line: 232, column: 25, scope: !408)
!408 = distinct !DILexicalBlock(scope: !389, file: !45, line: 232, column: 17)
!409 = !DILocation(line: 232, column: 40, scope: !408)
!410 = !DILocation(line: 232, column: 17, scope: !408)
!411 = !DILocation(line: 232, column: 85, scope: !408)
!412 = !DILocation(line: 232, column: 17, scope: !389)
!413 = !DILocation(line: 234, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !45, line: 233, column: 13)
!415 = !DILocation(line: 239, column: 31, scope: !389)
!416 = !DILocation(line: 239, column: 55, scope: !389)
!417 = !DILocation(line: 239, column: 62, scope: !389)
!418 = !DILocation(line: 239, column: 60, scope: !389)
!419 = !DILocation(line: 239, column: 94, scope: !389)
!420 = !DILocation(line: 239, column: 92, scope: !389)
!421 = !DILocation(line: 239, column: 102, scope: !389)
!422 = !DILocation(line: 239, column: 85, scope: !389)
!423 = !DILocation(line: 239, column: 26, scope: !389)
!424 = !DILocation(line: 239, column: 24, scope: !389)
!425 = !DILocation(line: 240, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !389, file: !45, line: 240, column: 17)
!427 = !DILocation(line: 240, column: 28, scope: !426)
!428 = !DILocation(line: 240, column: 44, scope: !426)
!429 = !DILocation(line: 240, column: 47, scope: !426)
!430 = !DILocation(line: 240, column: 58, scope: !426)
!431 = !DILocation(line: 240, column: 17, scope: !389)
!432 = !DILocation(line: 242, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !45, line: 241, column: 13)
!434 = !DILocation(line: 245, column: 13, scope: !389)
!435 = !DILocation(line: 245, column: 18, scope: !389)
!436 = !DILocation(line: 245, column: 28, scope: !389)
!437 = !DILocation(line: 245, column: 39, scope: !389)
!438 = !DILocation(line: 245, column: 26, scope: !389)
!439 = !DILocation(line: 245, column: 55, scope: !389)
!440 = !DILocation(line: 247, column: 30, scope: !389)
!441 = !DILocation(line: 247, column: 23, scope: !389)
!442 = !DILocation(line: 247, column: 21, scope: !389)
!443 = !DILocation(line: 248, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !389, file: !45, line: 248, column: 17)
!445 = !DILocation(line: 248, column: 17, scope: !389)
!446 = !DILocation(line: 250, column: 18, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !45, line: 249, column: 13)
!448 = !DILocation(line: 250, column: 26, scope: !447)
!449 = !DILocation(line: 251, column: 13, scope: !447)
!450 = !DILocation(line: 252, column: 30, scope: !389)
!451 = !DILocation(line: 252, column: 23, scope: !389)
!452 = !DILocation(line: 252, column: 21, scope: !389)
!453 = !DILocation(line: 253, column: 17, scope: !454)
!454 = distinct !DILexicalBlock(scope: !389, file: !45, line: 253, column: 17)
!455 = !DILocation(line: 253, column: 17, scope: !389)
!456 = !DILocation(line: 255, column: 18, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !45, line: 254, column: 13)
!458 = !DILocation(line: 255, column: 26, scope: !457)
!459 = !DILocation(line: 256, column: 13, scope: !457)
!460 = !DILocation(line: 257, column: 9, scope: !389)
!461 = !DILocation(line: 259, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !375, file: !45, line: 259, column: 13)
!463 = !DILocation(line: 259, column: 27, scope: !462)
!464 = !DILocation(line: 259, column: 13, scope: !375)
!465 = !DILocation(line: 261, column: 26, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !45, line: 260, column: 9)
!467 = !DILocation(line: 261, column: 13, scope: !466)
!468 = !DILocation(line: 262, column: 9, scope: !466)
!469 = !DILocation(line: 270, column: 17, scope: !367)
!470 = !DILocation(line: 270, column: 5, scope: !367)
!471 = !DILocation(line: 271, column: 1, scope: !367)
!472 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41_good", scope: !45, file: !45, line: 273, type: !145, scopeLine: 274, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!473 = !DILocation(line: 275, column: 5, scope: !472)
!474 = !DILocation(line: 276, column: 5, scope: !472)
!475 = !DILocation(line: 277, column: 1, scope: !472)
!476 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !105, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!477 = !DILocalVariable(name: "line", arg: 1, scope: !476, file: !3, line: 11, type: !42)
!478 = !DILocation(line: 11, column: 25, scope: !476)
!479 = !DILocation(line: 13, column: 1, scope: !476)
!480 = !DILocation(line: 14, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !3, line: 14, column: 8)
!482 = !DILocation(line: 14, column: 13, scope: !481)
!483 = !DILocation(line: 14, column: 8, scope: !476)
!484 = !DILocation(line: 16, column: 24, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 15, column: 5)
!486 = !DILocation(line: 16, column: 9, scope: !485)
!487 = !DILocation(line: 17, column: 5, scope: !485)
!488 = !DILocation(line: 18, column: 5, scope: !476)
!489 = !DILocation(line: 19, column: 1, scope: !476)
!490 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !105, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!491 = !DILocalVariable(name: "line", arg: 1, scope: !490, file: !3, line: 20, type: !42)
!492 = !DILocation(line: 20, column: 29, scope: !490)
!493 = !DILocation(line: 22, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 22, column: 8)
!495 = !DILocation(line: 22, column: 13, scope: !494)
!496 = !DILocation(line: 22, column: 8, scope: !490)
!497 = !DILocation(line: 24, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !3, line: 23, column: 5)
!499 = !DILocation(line: 24, column: 9, scope: !498)
!500 = !DILocation(line: 25, column: 5, scope: !498)
!501 = !DILocation(line: 26, column: 1, scope: !490)
!502 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !503, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !187, line: 74, baseType: !23)
!507 = !DILocalVariable(name: "line", arg: 1, scope: !502, file: !3, line: 27, type: !505)
!508 = !DILocation(line: 27, column: 29, scope: !502)
!509 = !DILocation(line: 29, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !502, file: !3, line: 29, column: 8)
!511 = !DILocation(line: 29, column: 13, scope: !510)
!512 = !DILocation(line: 29, column: 8, scope: !502)
!513 = !DILocation(line: 31, column: 27, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !3, line: 30, column: 5)
!515 = !DILocation(line: 31, column: 9, scope: !514)
!516 = !DILocation(line: 32, column: 5, scope: !514)
!517 = !DILocation(line: 33, column: 1, scope: !502)
!518 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !519, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !23}
!521 = !DILocalVariable(name: "intNumber", arg: 1, scope: !518, file: !3, line: 35, type: !23)
!522 = !DILocation(line: 35, column: 24, scope: !518)
!523 = !DILocation(line: 37, column: 20, scope: !518)
!524 = !DILocation(line: 37, column: 5, scope: !518)
!525 = !DILocation(line: 38, column: 1, scope: !518)
!526 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !527, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!530 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !526, file: !3, line: 40, type: !529)
!531 = !DILocation(line: 40, column: 28, scope: !526)
!532 = !DILocation(line: 42, column: 21, scope: !526)
!533 = !DILocation(line: 42, column: 5, scope: !526)
!534 = !DILocation(line: 43, column: 1, scope: !526)
!535 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !536, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538}
!538 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!539 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !535, file: !3, line: 45, type: !538)
!540 = !DILocation(line: 45, column: 28, scope: !535)
!541 = !DILocation(line: 47, column: 20, scope: !535)
!542 = !DILocation(line: 47, column: 5, scope: !535)
!543 = !DILocation(line: 48, column: 1, scope: !535)
!544 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !545, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547}
!547 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!548 = !DILocalVariable(name: "longNumber", arg: 1, scope: !544, file: !3, line: 50, type: !547)
!549 = !DILocation(line: 50, column: 26, scope: !544)
!550 = !DILocation(line: 52, column: 21, scope: !544)
!551 = !DILocation(line: 52, column: 5, scope: !544)
!552 = !DILocation(line: 53, column: 1, scope: !544)
!553 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !554, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !557, line: 27, baseType: !558)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !168, line: 44, baseType: !547)
!559 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !553, file: !3, line: 55, type: !556)
!560 = !DILocation(line: 55, column: 33, scope: !553)
!561 = !DILocation(line: 57, column: 29, scope: !553)
!562 = !DILocation(line: 57, column: 5, scope: !553)
!563 = !DILocation(line: 58, column: 1, scope: !553)
!564 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !565, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !186}
!567 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !564, file: !3, line: 60, type: !186)
!568 = !DILocation(line: 60, column: 29, scope: !564)
!569 = !DILocation(line: 62, column: 21, scope: !564)
!570 = !DILocation(line: 62, column: 5, scope: !564)
!571 = !DILocation(line: 63, column: 1, scope: !564)
!572 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !573, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !43}
!575 = !DILocalVariable(name: "charHex", arg: 1, scope: !572, file: !3, line: 65, type: !43)
!576 = !DILocation(line: 65, column: 29, scope: !572)
!577 = !DILocation(line: 67, column: 22, scope: !572)
!578 = !DILocation(line: 67, column: 5, scope: !572)
!579 = !DILocation(line: 68, column: 1, scope: !572)
!580 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !581, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !506}
!583 = !DILocalVariable(name: "wideChar", arg: 1, scope: !580, file: !3, line: 70, type: !506)
!584 = !DILocation(line: 70, column: 29, scope: !580)
!585 = !DILocalVariable(name: "s", scope: !580, file: !3, line: 74, type: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 2)
!589 = !DILocation(line: 74, column: 13, scope: !580)
!590 = !DILocation(line: 75, column: 16, scope: !580)
!591 = !DILocation(line: 75, column: 9, scope: !580)
!592 = !DILocation(line: 75, column: 14, scope: !580)
!593 = !DILocation(line: 76, column: 9, scope: !580)
!594 = !DILocation(line: 76, column: 14, scope: !580)
!595 = !DILocation(line: 77, column: 21, scope: !580)
!596 = !DILocation(line: 77, column: 5, scope: !580)
!597 = !DILocation(line: 78, column: 1, scope: !580)
!598 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !599, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !7}
!601 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !598, file: !3, line: 80, type: !7)
!602 = !DILocation(line: 80, column: 33, scope: !598)
!603 = !DILocation(line: 82, column: 20, scope: !598)
!604 = !DILocation(line: 82, column: 5, scope: !598)
!605 = !DILocation(line: 83, column: 1, scope: !598)
!606 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !607, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !25}
!609 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !606, file: !3, line: 85, type: !25)
!610 = !DILocation(line: 85, column: 45, scope: !606)
!611 = !DILocation(line: 87, column: 22, scope: !606)
!612 = !DILocation(line: 87, column: 5, scope: !606)
!613 = !DILocation(line: 88, column: 1, scope: !606)
!614 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !615, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617}
!617 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!618 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !614, file: !3, line: 90, type: !617)
!619 = !DILocation(line: 90, column: 29, scope: !614)
!620 = !DILocation(line: 92, column: 20, scope: !614)
!621 = !DILocation(line: 92, column: 5, scope: !614)
!622 = !DILocation(line: 93, column: 1, scope: !614)
!623 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !624, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !628, line: 100, baseType: !629)
!628 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_954/source_code")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !628, line: 96, size: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !629, file: !628, line: 98, baseType: !23, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !629, file: !628, line: 99, baseType: !23, size: 32, offset: 32)
!633 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !623, file: !3, line: 95, type: !626)
!634 = !DILocation(line: 95, column: 40, scope: !623)
!635 = !DILocation(line: 97, column: 26, scope: !623)
!636 = !DILocation(line: 97, column: 47, scope: !623)
!637 = !DILocation(line: 97, column: 55, scope: !623)
!638 = !DILocation(line: 97, column: 76, scope: !623)
!639 = !DILocation(line: 97, column: 5, scope: !623)
!640 = !DILocation(line: 98, column: 1, scope: !623)
!641 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !642, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644, !186}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!645 = !DILocalVariable(name: "bytes", arg: 1, scope: !641, file: !3, line: 100, type: !644)
!646 = !DILocation(line: 100, column: 38, scope: !641)
!647 = !DILocalVariable(name: "numBytes", arg: 2, scope: !641, file: !3, line: 100, type: !186)
!648 = !DILocation(line: 100, column: 52, scope: !641)
!649 = !DILocalVariable(name: "i", scope: !641, file: !3, line: 102, type: !186)
!650 = !DILocation(line: 102, column: 12, scope: !641)
!651 = !DILocation(line: 103, column: 12, scope: !652)
!652 = distinct !DILexicalBlock(scope: !641, file: !3, line: 103, column: 5)
!653 = !DILocation(line: 103, column: 10, scope: !652)
!654 = !DILocation(line: 103, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !3, line: 103, column: 5)
!656 = !DILocation(line: 103, column: 21, scope: !655)
!657 = !DILocation(line: 103, column: 19, scope: !655)
!658 = !DILocation(line: 103, column: 5, scope: !652)
!659 = !DILocation(line: 105, column: 24, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 104, column: 5)
!661 = !DILocation(line: 105, column: 30, scope: !660)
!662 = !DILocation(line: 105, column: 9, scope: !660)
!663 = !DILocation(line: 106, column: 5, scope: !660)
!664 = !DILocation(line: 103, column: 31, scope: !655)
!665 = !DILocation(line: 103, column: 5, scope: !655)
!666 = distinct !{!666, !658, !667, !139}
!667 = !DILocation(line: 106, column: 5, scope: !652)
!668 = !DILocation(line: 107, column: 5, scope: !641)
!669 = !DILocation(line: 108, column: 1, scope: !641)
!670 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !671, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!671 = !DISubroutineType(types: !672)
!672 = !{!186, !644, !186, !42}
!673 = !DILocalVariable(name: "bytes", arg: 1, scope: !670, file: !3, line: 113, type: !644)
!674 = !DILocation(line: 113, column: 39, scope: !670)
!675 = !DILocalVariable(name: "numBytes", arg: 2, scope: !670, file: !3, line: 113, type: !186)
!676 = !DILocation(line: 113, column: 53, scope: !670)
!677 = !DILocalVariable(name: "hex", arg: 3, scope: !670, file: !3, line: 113, type: !42)
!678 = !DILocation(line: 113, column: 71, scope: !670)
!679 = !DILocalVariable(name: "numWritten", scope: !670, file: !3, line: 115, type: !186)
!680 = !DILocation(line: 115, column: 12, scope: !670)
!681 = !DILocation(line: 121, column: 5, scope: !670)
!682 = !DILocation(line: 121, column: 12, scope: !670)
!683 = !DILocation(line: 121, column: 25, scope: !670)
!684 = !DILocation(line: 121, column: 23, scope: !670)
!685 = !DILocation(line: 121, column: 34, scope: !670)
!686 = !DILocation(line: 121, column: 37, scope: !670)
!687 = !DILocation(line: 121, column: 67, scope: !670)
!688 = !DILocation(line: 121, column: 70, scope: !670)
!689 = !DILocation(line: 0, scope: !670)
!690 = !DILocalVariable(name: "byte", scope: !691, file: !3, line: 123, type: !23)
!691 = distinct !DILexicalBlock(scope: !670, file: !3, line: 122, column: 5)
!692 = !DILocation(line: 123, column: 13, scope: !691)
!693 = !DILocation(line: 124, column: 17, scope: !691)
!694 = !DILocation(line: 124, column: 25, scope: !691)
!695 = !DILocation(line: 124, column: 23, scope: !691)
!696 = !DILocation(line: 124, column: 9, scope: !691)
!697 = !DILocation(line: 125, column: 45, scope: !691)
!698 = !DILocation(line: 125, column: 29, scope: !691)
!699 = !DILocation(line: 125, column: 9, scope: !691)
!700 = !DILocation(line: 125, column: 15, scope: !691)
!701 = !DILocation(line: 125, column: 27, scope: !691)
!702 = !DILocation(line: 126, column: 9, scope: !691)
!703 = distinct !{!703, !681, !704, !139}
!704 = !DILocation(line: 127, column: 5, scope: !670)
!705 = !DILocation(line: 129, column: 12, scope: !670)
!706 = !DILocation(line: 129, column: 5, scope: !670)
!707 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !708, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!708 = !DISubroutineType(types: !709)
!709 = !{!186, !644, !186, !505}
!710 = !DILocalVariable(name: "bytes", arg: 1, scope: !707, file: !3, line: 135, type: !644)
!711 = !DILocation(line: 135, column: 41, scope: !707)
!712 = !DILocalVariable(name: "numBytes", arg: 2, scope: !707, file: !3, line: 135, type: !186)
!713 = !DILocation(line: 135, column: 55, scope: !707)
!714 = !DILocalVariable(name: "hex", arg: 3, scope: !707, file: !3, line: 135, type: !505)
!715 = !DILocation(line: 135, column: 76, scope: !707)
!716 = !DILocalVariable(name: "numWritten", scope: !707, file: !3, line: 137, type: !186)
!717 = !DILocation(line: 137, column: 12, scope: !707)
!718 = !DILocation(line: 143, column: 5, scope: !707)
!719 = !DILocation(line: 143, column: 12, scope: !707)
!720 = !DILocation(line: 143, column: 25, scope: !707)
!721 = !DILocation(line: 143, column: 23, scope: !707)
!722 = !DILocation(line: 143, column: 34, scope: !707)
!723 = !DILocation(line: 143, column: 47, scope: !707)
!724 = !DILocation(line: 143, column: 55, scope: !707)
!725 = !DILocation(line: 143, column: 53, scope: !707)
!726 = !DILocation(line: 143, column: 37, scope: !707)
!727 = !DILocation(line: 143, column: 68, scope: !707)
!728 = !DILocation(line: 143, column: 81, scope: !707)
!729 = !DILocation(line: 143, column: 89, scope: !707)
!730 = !DILocation(line: 143, column: 87, scope: !707)
!731 = !DILocation(line: 143, column: 100, scope: !707)
!732 = !DILocation(line: 143, column: 71, scope: !707)
!733 = !DILocation(line: 0, scope: !707)
!734 = !DILocalVariable(name: "byte", scope: !735, file: !3, line: 145, type: !23)
!735 = distinct !DILexicalBlock(scope: !707, file: !3, line: 144, column: 5)
!736 = !DILocation(line: 145, column: 13, scope: !735)
!737 = !DILocation(line: 146, column: 18, scope: !735)
!738 = !DILocation(line: 146, column: 26, scope: !735)
!739 = !DILocation(line: 146, column: 24, scope: !735)
!740 = !DILocation(line: 146, column: 9, scope: !735)
!741 = !DILocation(line: 147, column: 45, scope: !735)
!742 = !DILocation(line: 147, column: 29, scope: !735)
!743 = !DILocation(line: 147, column: 9, scope: !735)
!744 = !DILocation(line: 147, column: 15, scope: !735)
!745 = !DILocation(line: 147, column: 27, scope: !735)
!746 = !DILocation(line: 148, column: 9, scope: !735)
!747 = distinct !{!747, !718, !748, !139}
!748 = !DILocation(line: 149, column: 5, scope: !707)
!749 = !DILocation(line: 151, column: 12, scope: !707)
!750 = !DILocation(line: 151, column: 5, scope: !707)
!751 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !752, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DISubroutineType(types: !753)
!753 = !{!23}
!754 = !DILocation(line: 158, column: 5, scope: !751)
!755 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !752, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!756 = !DILocation(line: 163, column: 5, scope: !755)
!757 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !752, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!758 = !DILocation(line: 168, column: 13, scope: !757)
!759 = !DILocation(line: 168, column: 20, scope: !757)
!760 = !DILocation(line: 168, column: 5, scope: !757)
!761 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !145, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!762 = !DILocation(line: 187, column: 16, scope: !761)
!763 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !145, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!764 = !DILocation(line: 188, column: 16, scope: !763)
!765 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !145, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DILocation(line: 189, column: 16, scope: !765)
!767 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !145, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!768 = !DILocation(line: 190, column: 16, scope: !767)
!769 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !145, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!770 = !DILocation(line: 191, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !145, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!772 = !DILocation(line: 192, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !145, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!774 = !DILocation(line: 193, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !145, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!776 = !DILocation(line: 194, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !145, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!778 = !DILocation(line: 195, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !145, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!780 = !DILocation(line: 198, column: 15, scope: !779)
!781 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !145, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!782 = !DILocation(line: 199, column: 15, scope: !781)
!783 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !145, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!784 = !DILocation(line: 200, column: 15, scope: !783)
!785 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !145, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!786 = !DILocation(line: 201, column: 15, scope: !785)
!787 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !145, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!788 = !DILocation(line: 202, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !145, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!790 = !DILocation(line: 203, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !145, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!792 = !DILocation(line: 204, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !145, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!794 = !DILocation(line: 205, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !145, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!796 = !DILocation(line: 206, column: 15, scope: !795)
