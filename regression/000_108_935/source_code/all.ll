; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !64
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !88
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !90
@globalTrue = dso_local global i32 1, align 4, !dbg !92
@globalFalse = dso_local global i32 0, align 4, !dbg !94
@globalFive = dso_local global i32 5, align 4, !dbg !96
@globalArgc = dso_local global i32 0, align 4, !dbg !98
@globalArgv = dso_local global i8** null, align 8, !dbg !100
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad() #0 !dbg !107 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !113, metadata !DIExpression()), !dbg !117
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !118
  store i8* %arraydecay, i8** %data, align 8, !dbg !119
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !120
  %cmp = icmp eq i32 %1, 5, !dbg !122
  br i1 %cmp, label %if.then, label %if.end31, !dbg !123

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !124, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !128, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 -1, i32* %connectSocket, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !158
  %2 = load i8*, i8** %data, align 8, !dbg !159
  %call = call i64 @strlen(i8* %2) #7, !dbg !160
  store i64 %call, i64* %dataLen, align 8, !dbg !158
  br label %do.body, !dbg !161

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !162
  store i32 %call1, i32* %connectSocket, align 4, !dbg !164
  %3 = load i32, i32* %connectSocket, align 4, !dbg !165
  %cmp2 = icmp eq i32 %3, -1, !dbg !167
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !168

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !169

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !171
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !172
  store i16 2, i16* %sin_family, align 4, !dbg !173
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !174
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !175
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !176
  store i32 %call4, i32* %s_addr, align 4, !dbg !177
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !178
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !179
  store i16 %call5, i16* %sin_port, align 2, !dbg !180
  %5 = load i32, i32* %connectSocket, align 4, !dbg !181
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !183
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !184
  %cmp7 = icmp eq i32 %call6, -1, !dbg !185
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !186

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !187

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !189
  %8 = load i8*, i8** %data, align 8, !dbg !190
  %9 = load i64, i64* %dataLen, align 8, !dbg !191
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !192
  %10 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub = sub i64 100, %10, !dbg !194
  %sub10 = sub i64 %sub, 1, !dbg !195
  %mul = mul i64 1, %sub10, !dbg !196
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !197
  %conv = trunc i64 %call11 to i32, !dbg !197
  store i32 %conv, i32* %recvResult, align 4, !dbg !198
  %11 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp12 = icmp eq i32 %11, -1, !dbg !201
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !202

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !203
  %cmp14 = icmp eq i32 %12, 0, !dbg !204
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !205

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !206

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !208
  %14 = load i64, i64* %dataLen, align 8, !dbg !209
  %15 = load i32, i32* %recvResult, align 4, !dbg !210
  %conv18 = sext i32 %15 to i64, !dbg !210
  %div = udiv i64 %conv18, 1, !dbg !211
  %add = add i64 %14, %div, !dbg !212
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !208
  store i8 0, i8* %arrayidx, align 1, !dbg !213
  %16 = load i8*, i8** %data, align 8, !dbg !214
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !215
  store i8* %call19, i8** %replace, align 8, !dbg !216
  %17 = load i8*, i8** %replace, align 8, !dbg !217
  %tobool = icmp ne i8* %17, null, !dbg !217
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !219

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !220
  store i8 0, i8* %18, align 1, !dbg !222
  br label %if.end21, !dbg !223

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !224
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !225
  store i8* %call22, i8** %replace, align 8, !dbg !226
  %20 = load i8*, i8** %replace, align 8, !dbg !227
  %tobool23 = icmp ne i8* %20, null, !dbg !227
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !229

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !230
  store i8 0, i8* %21, align 1, !dbg !232
  br label %if.end25, !dbg !233

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !234

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !235
  %cmp26 = icmp ne i32 %22, -1, !dbg !237
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !238

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !239
  %call29 = call i32 @close(i32 %23), !dbg !241
  br label %if.end30, !dbg !242

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !243

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !244
  %cmp32 = icmp eq i32 %24, 5, !dbg !246
  br i1 %cmp32, label %if.then34, label %if.end43, !dbg !247

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !248, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %n, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !254, metadata !DIExpression()), !dbg !255
  %25 = load i8*, i8** %data, align 8, !dbg !256
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !258
  %cmp36 = icmp eq i32 %call35, 1, !dbg !259
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !260

if.then38:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !261
  store i32 0, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !265

for.cond:                                         ; preds = %for.inc, %if.then38
  %26 = load i32, i32* %i, align 4, !dbg !266
  %27 = load i32, i32* %n, align 4, !dbg !268
  %cmp39 = icmp slt i32 %26, %27, !dbg !269
  br i1 %cmp39, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !271
  %inc = add nsw i32 %28, 1, !dbg !271
  store i32 %inc, i32* %intVariable, align 4, !dbg !271
  br label %for.inc, !dbg !273

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !274
  %inc41 = add nsw i32 %29, 1, !dbg !274
  store i32 %inc41, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !275, !llvm.loop !276

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %30), !dbg !280
  br label %if.end42, !dbg !281

if.end42:                                         ; preds = %for.end, %if.then34
  br label %if.end43, !dbg !282

if.end43:                                         ; preds = %if.end42, %if.end31
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
define dso_local void @goodB2G1() #0 !dbg !284 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !288
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !288
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !289
  store i8* %arraydecay, i8** %data, align 8, !dbg !290
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !291
  %cmp = icmp eq i32 %1, 5, !dbg !293
  br i1 %cmp, label %if.then, label %if.end31, !dbg !294

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !303, metadata !DIExpression()), !dbg !304
  store i32 -1, i32* %connectSocket, align 4, !dbg !304
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !305, metadata !DIExpression()), !dbg !306
  %2 = load i8*, i8** %data, align 8, !dbg !307
  %call = call i64 @strlen(i8* %2) #7, !dbg !308
  store i64 %call, i64* %dataLen, align 8, !dbg !306
  br label %do.body, !dbg !309

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !310
  store i32 %call1, i32* %connectSocket, align 4, !dbg !312
  %3 = load i32, i32* %connectSocket, align 4, !dbg !313
  %cmp2 = icmp eq i32 %3, -1, !dbg !315
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !316

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !317

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !319
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !319
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !320
  store i16 2, i16* %sin_family, align 4, !dbg !321
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !322
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !323
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !324
  store i32 %call4, i32* %s_addr, align 4, !dbg !325
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !326
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !327
  store i16 %call5, i16* %sin_port, align 2, !dbg !328
  %5 = load i32, i32* %connectSocket, align 4, !dbg !329
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !331
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !332
  %cmp7 = icmp eq i32 %call6, -1, !dbg !333
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !334

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !335

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !337
  %8 = load i8*, i8** %data, align 8, !dbg !338
  %9 = load i64, i64* %dataLen, align 8, !dbg !339
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !340
  %10 = load i64, i64* %dataLen, align 8, !dbg !341
  %sub = sub i64 100, %10, !dbg !342
  %sub10 = sub i64 %sub, 1, !dbg !343
  %mul = mul i64 1, %sub10, !dbg !344
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !345
  %conv = trunc i64 %call11 to i32, !dbg !345
  store i32 %conv, i32* %recvResult, align 4, !dbg !346
  %11 = load i32, i32* %recvResult, align 4, !dbg !347
  %cmp12 = icmp eq i32 %11, -1, !dbg !349
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !350

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !351
  %cmp14 = icmp eq i32 %12, 0, !dbg !352
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !353

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !354

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !356
  %14 = load i64, i64* %dataLen, align 8, !dbg !357
  %15 = load i32, i32* %recvResult, align 4, !dbg !358
  %conv18 = sext i32 %15 to i64, !dbg !358
  %div = udiv i64 %conv18, 1, !dbg !359
  %add = add i64 %14, %div, !dbg !360
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !356
  store i8 0, i8* %arrayidx, align 1, !dbg !361
  %16 = load i8*, i8** %data, align 8, !dbg !362
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !363
  store i8* %call19, i8** %replace, align 8, !dbg !364
  %17 = load i8*, i8** %replace, align 8, !dbg !365
  %tobool = icmp ne i8* %17, null, !dbg !365
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !367

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !368
  store i8 0, i8* %18, align 1, !dbg !370
  br label %if.end21, !dbg !371

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !372
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !373
  store i8* %call22, i8** %replace, align 8, !dbg !374
  %20 = load i8*, i8** %replace, align 8, !dbg !375
  %tobool23 = icmp ne i8* %20, null, !dbg !375
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !377

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !378
  store i8 0, i8* %21, align 1, !dbg !380
  br label %if.end25, !dbg !381

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !382

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !383
  %cmp26 = icmp ne i32 %22, -1, !dbg !385
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !386

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !387
  %call29 = call i32 @close(i32 %23), !dbg !389
  br label %if.end30, !dbg !390

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !391

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !392
  %cmp32 = icmp ne i32 %24, 5, !dbg !394
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !395

if.then34:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !396
  br label %if.end47, !dbg !398

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %n, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !405, metadata !DIExpression()), !dbg !406
  %25 = load i8*, i8** %data, align 8, !dbg !407
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !409
  %cmp36 = icmp eq i32 %call35, 1, !dbg !410
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !411

if.then38:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !412
  %cmp39 = icmp slt i32 %26, 10000, !dbg !415
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !416

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !417
  store i32 0, i32* %i, align 4, !dbg !419
  br label %for.cond, !dbg !421

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !422
  %28 = load i32, i32* %n, align 4, !dbg !424
  %cmp42 = icmp slt i32 %27, %28, !dbg !425
  br i1 %cmp42, label %for.body, label %for.end, !dbg !426

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !427
  %inc = add nsw i32 %29, 1, !dbg !427
  store i32 %inc, i32* %intVariable, align 4, !dbg !427
  br label %for.inc, !dbg !429

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !430
  %inc44 = add nsw i32 %30, 1, !dbg !430
  store i32 %inc44, i32* %i, align 4, !dbg !430
  br label %for.cond, !dbg !431, !llvm.loop !432

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !434
  call void @printIntLine(i32 %31), !dbg !435
  br label %if.end45, !dbg !436

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !437

if.end46:                                         ; preds = %if.end45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !439 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !443
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !443
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !444
  store i8* %arraydecay, i8** %data, align 8, !dbg !445
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !446
  %cmp = icmp eq i32 %1, 5, !dbg !448
  br i1 %cmp, label %if.then, label %if.end31, !dbg !449

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !458, metadata !DIExpression()), !dbg !459
  store i32 -1, i32* %connectSocket, align 4, !dbg !459
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !460, metadata !DIExpression()), !dbg !461
  %2 = load i8*, i8** %data, align 8, !dbg !462
  %call = call i64 @strlen(i8* %2) #7, !dbg !463
  store i64 %call, i64* %dataLen, align 8, !dbg !461
  br label %do.body, !dbg !464

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !465
  store i32 %call1, i32* %connectSocket, align 4, !dbg !467
  %3 = load i32, i32* %connectSocket, align 4, !dbg !468
  %cmp2 = icmp eq i32 %3, -1, !dbg !470
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !471

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !472

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !474
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !474
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !475
  store i16 2, i16* %sin_family, align 4, !dbg !476
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !477
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !478
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !479
  store i32 %call4, i32* %s_addr, align 4, !dbg !480
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !481
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !482
  store i16 %call5, i16* %sin_port, align 2, !dbg !483
  %5 = load i32, i32* %connectSocket, align 4, !dbg !484
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !486
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !487
  %cmp7 = icmp eq i32 %call6, -1, !dbg !488
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !489

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !490

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !492
  %8 = load i8*, i8** %data, align 8, !dbg !493
  %9 = load i64, i64* %dataLen, align 8, !dbg !494
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !495
  %10 = load i64, i64* %dataLen, align 8, !dbg !496
  %sub = sub i64 100, %10, !dbg !497
  %sub10 = sub i64 %sub, 1, !dbg !498
  %mul = mul i64 1, %sub10, !dbg !499
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !500
  %conv = trunc i64 %call11 to i32, !dbg !500
  store i32 %conv, i32* %recvResult, align 4, !dbg !501
  %11 = load i32, i32* %recvResult, align 4, !dbg !502
  %cmp12 = icmp eq i32 %11, -1, !dbg !504
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !505

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !506
  %cmp14 = icmp eq i32 %12, 0, !dbg !507
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !508

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !509

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !511
  %14 = load i64, i64* %dataLen, align 8, !dbg !512
  %15 = load i32, i32* %recvResult, align 4, !dbg !513
  %conv18 = sext i32 %15 to i64, !dbg !513
  %div = udiv i64 %conv18, 1, !dbg !514
  %add = add i64 %14, %div, !dbg !515
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !511
  store i8 0, i8* %arrayidx, align 1, !dbg !516
  %16 = load i8*, i8** %data, align 8, !dbg !517
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !518
  store i8* %call19, i8** %replace, align 8, !dbg !519
  %17 = load i8*, i8** %replace, align 8, !dbg !520
  %tobool = icmp ne i8* %17, null, !dbg !520
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !522

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !523
  store i8 0, i8* %18, align 1, !dbg !525
  br label %if.end21, !dbg !526

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !527
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !528
  store i8* %call22, i8** %replace, align 8, !dbg !529
  %20 = load i8*, i8** %replace, align 8, !dbg !530
  %tobool23 = icmp ne i8* %20, null, !dbg !530
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !532

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !533
  store i8 0, i8* %21, align 1, !dbg !535
  br label %if.end25, !dbg !536

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !537

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !538
  %cmp26 = icmp ne i32 %22, -1, !dbg !540
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !541

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !542
  %call29 = call i32 @close(i32 %23), !dbg !544
  br label %if.end30, !dbg !545

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !546

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !547
  %cmp32 = icmp eq i32 %24, 5, !dbg !549
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !550

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !551, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %n, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !557, metadata !DIExpression()), !dbg !558
  %25 = load i8*, i8** %data, align 8, !dbg !559
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !561
  %cmp36 = icmp eq i32 %call35, 1, !dbg !562
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !563

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %n, align 4, !dbg !564
  %cmp39 = icmp slt i32 %26, 10000, !dbg !567
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !568

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !569
  store i32 0, i32* %i, align 4, !dbg !571
  br label %for.cond, !dbg !573

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !574
  %28 = load i32, i32* %n, align 4, !dbg !576
  %cmp42 = icmp slt i32 %27, %28, !dbg !577
  br i1 %cmp42, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !579
  %inc = add nsw i32 %29, 1, !dbg !579
  store i32 %inc, i32* %intVariable, align 4, !dbg !579
  br label %for.inc, !dbg !581

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !582
  %inc44 = add nsw i32 %30, 1, !dbg !582
  store i32 %inc44, i32* %i, align 4, !dbg !582
  br label %for.cond, !dbg !583, !llvm.loop !584

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !586
  call void @printIntLine(i32 %31), !dbg !587
  br label %if.end45, !dbg !588

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !589

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47, !dbg !590

if.end47:                                         ; preds = %if.end46, %if.end31
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !592 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !593, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !596
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !596
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !597
  store i8* %arraydecay, i8** %data, align 8, !dbg !598
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !599
  %cmp = icmp ne i32 %1, 5, !dbg !601
  br i1 %cmp, label %if.then, label %if.else, !dbg !602

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !603
  br label %if.end, !dbg !605

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !606
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !608
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !609
  %cmp1 = icmp eq i32 %3, 5, !dbg !611
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !612

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !613, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata i32* %n, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !619, metadata !DIExpression()), !dbg !620
  %4 = load i8*, i8** %data, align 8, !dbg !621
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !623
  %cmp4 = icmp eq i32 %call3, 1, !dbg !624
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !625

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !626
  store i32 0, i32* %i, align 4, !dbg !628
  br label %for.cond, !dbg !630

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !631
  %6 = load i32, i32* %n, align 4, !dbg !633
  %cmp6 = icmp slt i32 %5, %6, !dbg !634
  br i1 %cmp6, label %for.body, label %for.end, !dbg !635

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !636
  %inc = add nsw i32 %7, 1, !dbg !636
  store i32 %inc, i32* %intVariable, align 4, !dbg !636
  br label %for.inc, !dbg !638

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !639
  %inc7 = add nsw i32 %8, 1, !dbg !639
  store i32 %inc7, i32* %i, align 4, !dbg !639
  br label %for.cond, !dbg !640, !llvm.loop !641

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !643
  call void @printIntLine(i32 %9), !dbg !644
  br label %if.end8, !dbg !645

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !646

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !647
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !648 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !652
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !652
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !653
  store i8* %arraydecay, i8** %data, align 8, !dbg !654
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !655
  %cmp = icmp eq i32 %1, 5, !dbg !657
  br i1 %cmp, label %if.then, label %if.end, !dbg !658

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !659
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !661
  br label %if.end, !dbg !662

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !663
  %cmp1 = icmp eq i32 %3, 5, !dbg !665
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !666

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !667, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %n, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !673, metadata !DIExpression()), !dbg !674
  %4 = load i8*, i8** %data, align 8, !dbg !675
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !677
  %cmp4 = icmp eq i32 %call3, 1, !dbg !678
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !679

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !680
  store i32 0, i32* %i, align 4, !dbg !682
  br label %for.cond, !dbg !684

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !685
  %6 = load i32, i32* %n, align 4, !dbg !687
  %cmp6 = icmp slt i32 %5, %6, !dbg !688
  br i1 %cmp6, label %for.body, label %for.end, !dbg !689

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !690
  %inc = add nsw i32 %7, 1, !dbg !690
  store i32 %inc, i32* %intVariable, align 4, !dbg !690
  br label %for.inc, !dbg !692

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !693
  %inc7 = add nsw i32 %8, 1, !dbg !693
  store i32 %inc7, i32* %i, align 4, !dbg !693
  br label %for.cond, !dbg !694, !llvm.loop !695

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !697
  call void @printIntLine(i32 %9), !dbg !698
  br label %if.end8, !dbg !699

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !700

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_06_good() #0 !dbg !702 {
entry:
  call void @goodB2G1(), !dbg !703
  call void @goodB2G2(), !dbg !704
  call void @goodG2B1(), !dbg !705
  call void @goodG2B2(), !dbg !706
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !708 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !711, metadata !DIExpression()), !dbg !712
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !713
  %0 = load i8*, i8** %line.addr, align 8, !dbg !714
  %cmp = icmp ne i8* %0, null, !dbg !716
  br i1 %cmp, label %if.then, label %if.end, !dbg !717

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !718
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !720
  br label %if.end, !dbg !721

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !722
  ret void, !dbg !723
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !724 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !725, metadata !DIExpression()), !dbg !726
  %0 = load i8*, i8** %line.addr, align 8, !dbg !727
  %cmp = icmp ne i8* %0, null, !dbg !729
  br i1 %cmp, label %if.then, label %if.end, !dbg !730

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !731
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !733
  br label %if.end, !dbg !734

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !736 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = load i32*, i32** %line.addr, align 8, !dbg !743
  %cmp = icmp ne i32* %0, null, !dbg !745
  br i1 %cmp, label %if.then, label %if.end, !dbg !746

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !747
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !749
  br label %if.end, !dbg !750

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !751
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !752 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !757
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !758
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !760 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !764, metadata !DIExpression()), !dbg !765
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !766
  %conv = sext i16 %0 to i32, !dbg !766
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !767
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !769 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !773, metadata !DIExpression()), !dbg !774
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !775
  %conv = fpext float %0 to double, !dbg !775
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !778 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !782, metadata !DIExpression()), !dbg !783
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !784
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !785
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !787 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !793, metadata !DIExpression()), !dbg !794
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !795
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !796
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !798 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !803
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !804
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !806 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !809, metadata !DIExpression()), !dbg !810
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !811
  %conv = sext i8 %0 to i32, !dbg !811
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !812
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !814 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !819, metadata !DIExpression()), !dbg !823
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !824
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !825
  store i32 %0, i32* %arrayidx, align 4, !dbg !826
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !827
  store i32 0, i32* %arrayidx1, align 4, !dbg !828
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !829
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !830
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !832 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !835, metadata !DIExpression()), !dbg !836
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !837
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !838
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !840 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !843, metadata !DIExpression()), !dbg !844
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !845
  %conv = zext i8 %0 to i32, !dbg !845
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !846
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !848 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !852, metadata !DIExpression()), !dbg !853
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !854
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !855
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !857 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !869
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !870
  %1 = load i32, i32* %intOne, align 4, !dbg !870
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !871
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !872
  %3 = load i32, i32* %intTwo, align 4, !dbg !872
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !873
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !875 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata i64* %i, metadata !883, metadata !DIExpression()), !dbg !884
  store i64 0, i64* %i, align 8, !dbg !885
  br label %for.cond, !dbg !887

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !888
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !890
  %cmp = icmp ult i64 %0, %1, !dbg !891
  br i1 %cmp, label %for.body, label %for.end, !dbg !892

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !893
  %3 = load i64, i64* %i, align 8, !dbg !895
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !893
  %4 = load i8, i8* %arrayidx, align 1, !dbg !893
  %conv = zext i8 %4 to i32, !dbg !893
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !896
  br label %for.inc, !dbg !897

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !898
  %inc = add i64 %5, 1, !dbg !898
  store i64 %inc, i64* %i, align 8, !dbg !898
  br label %for.cond, !dbg !899, !llvm.loop !900

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !902
  ret void, !dbg !903
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !904 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !907, metadata !DIExpression()), !dbg !908
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !909, metadata !DIExpression()), !dbg !910
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !911, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !913, metadata !DIExpression()), !dbg !914
  store i64 0, i64* %numWritten, align 8, !dbg !914
  br label %while.cond, !dbg !915

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !916
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !917
  %cmp = icmp ult i64 %0, %1, !dbg !918
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !919

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !920
  %2 = load i16*, i16** %call, align 8, !dbg !920
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !920
  %4 = load i64, i64* %numWritten, align 8, !dbg !920
  %mul = mul i64 2, %4, !dbg !920
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !920
  %5 = load i8, i8* %arrayidx, align 1, !dbg !920
  %conv = sext i8 %5 to i32, !dbg !920
  %idxprom = sext i32 %conv to i64, !dbg !920
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !920
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !920
  %conv2 = zext i16 %6 to i32, !dbg !920
  %and = and i32 %conv2, 4096, !dbg !920
  %tobool = icmp ne i32 %and, 0, !dbg !920
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !921

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !922
  %7 = load i16*, i16** %call3, align 8, !dbg !922
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !922
  %9 = load i64, i64* %numWritten, align 8, !dbg !922
  %mul4 = mul i64 2, %9, !dbg !922
  %add = add i64 %mul4, 1, !dbg !922
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !922
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !922
  %conv6 = sext i8 %10 to i32, !dbg !922
  %idxprom7 = sext i32 %conv6 to i64, !dbg !922
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !922
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !922
  %conv9 = zext i16 %11 to i32, !dbg !922
  %and10 = and i32 %conv9, 4096, !dbg !922
  %tobool11 = icmp ne i32 %and10, 0, !dbg !921
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !923
  br i1 %12, label %while.body, label %while.end, !dbg !915

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !924, metadata !DIExpression()), !dbg !926
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !927
  %14 = load i64, i64* %numWritten, align 8, !dbg !928
  %mul12 = mul i64 2, %14, !dbg !929
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !927
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !930
  %15 = load i32, i32* %byte, align 4, !dbg !931
  %conv15 = trunc i32 %15 to i8, !dbg !932
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !933
  %17 = load i64, i64* %numWritten, align 8, !dbg !934
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !933
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !935
  %18 = load i64, i64* %numWritten, align 8, !dbg !936
  %inc = add i64 %18, 1, !dbg !936
  store i64 %inc, i64* %numWritten, align 8, !dbg !936
  br label %while.cond, !dbg !915, !llvm.loop !937

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !939
  ret i64 %19, !dbg !940
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !941 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !944, metadata !DIExpression()), !dbg !945
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !946, metadata !DIExpression()), !dbg !947
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !950, metadata !DIExpression()), !dbg !951
  store i64 0, i64* %numWritten, align 8, !dbg !951
  br label %while.cond, !dbg !952

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !953
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !954
  %cmp = icmp ult i64 %0, %1, !dbg !955
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !956

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !957
  %3 = load i64, i64* %numWritten, align 8, !dbg !958
  %mul = mul i64 2, %3, !dbg !959
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !957
  %4 = load i32, i32* %arrayidx, align 4, !dbg !957
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !960
  %tobool = icmp ne i32 %call, 0, !dbg !960
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !961

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !962
  %6 = load i64, i64* %numWritten, align 8, !dbg !963
  %mul1 = mul i64 2, %6, !dbg !964
  %add = add i64 %mul1, 1, !dbg !965
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !962
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !962
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !966
  %tobool4 = icmp ne i32 %call3, 0, !dbg !961
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !967
  br i1 %8, label %while.body, label %while.end, !dbg !952

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !968, metadata !DIExpression()), !dbg !970
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !971
  %10 = load i64, i64* %numWritten, align 8, !dbg !972
  %mul5 = mul i64 2, %10, !dbg !973
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !971
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !974
  %11 = load i32, i32* %byte, align 4, !dbg !975
  %conv = trunc i32 %11 to i8, !dbg !976
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !977
  %13 = load i64, i64* %numWritten, align 8, !dbg !978
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !977
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !979
  %14 = load i64, i64* %numWritten, align 8, !dbg !980
  %inc = add i64 %14, 1, !dbg !980
  store i64 %inc, i64* %numWritten, align 8, !dbg !980
  br label %while.cond, !dbg !952, !llvm.loop !981

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !983
  ret i64 %15, !dbg !984
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !985 {
entry:
  ret i32 1, !dbg !988
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !989 {
entry:
  ret i32 0, !dbg !990
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !991 {
entry:
  %call = call i32 @rand() #8, !dbg !992
  %rem = srem i32 %call, 2, !dbg !993
  ret i32 %rem, !dbg !994
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !995 {
entry:
  ret void, !dbg !996
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !997 {
entry:
  ret void, !dbg !998
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !999 {
entry:
  ret void, !dbg !1000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !1001 {
entry:
  ret void, !dbg !1002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !1003 {
entry:
  ret void, !dbg !1004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !1005 {
entry:
  ret void, !dbg !1006
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !1007 {
entry:
  ret void, !dbg !1008
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !1009 {
entry:
  ret void, !dbg !1010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !1011 {
entry:
  ret void, !dbg !1012
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1013 {
entry:
  ret void, !dbg !1014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1015 {
entry:
  ret void, !dbg !1016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1017 {
entry:
  ret void, !dbg !1018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1019 {
entry:
  ret void, !dbg !1020
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1021 {
entry:
  ret void, !dbg !1022
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1023 {
entry:
  ret void, !dbg !1024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1025 {
entry:
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1027 {
entry:
  ret void, !dbg !1028
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1029 {
entry:
  ret void, !dbg !1030
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

!llvm.dbg.cu = !{!2, !66}
!llvm.ident = !{!103, !103}
!llvm.module.flags = !{!104, !105, !106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 51, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_935/source_code")
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
!62 = !{!0}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !66, file: !67, line: 174, type: !63, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !84, globals: !87, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_935/source_code")
!68 = !{!69}
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 46, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!72 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!84 = !{!85, !63, !55, !86}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!64, !88, !90, !92, !94, !96, !98, !100}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !66, file: !67, line: 175, type: !63, isLocal: false, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !66, file: !67, line: 176, type: !63, isLocal: false, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "globalTrue", scope: !66, file: !67, line: 181, type: !63, isLocal: false, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "globalFalse", scope: !66, file: !67, line: 182, type: !63, isLocal: false, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "globalFive", scope: !66, file: !67, line: 183, type: !63, isLocal: false, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "globalArgc", scope: !66, file: !67, line: 214, type: !63, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalArgv", scope: !66, file: !67, line: 215, type: !102, isLocal: false, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!103 = !{!"clang version 12.0.0"}
!104 = !{i32 7, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad", scope: !3, file: !3, line: 55, type: !108, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !{}
!111 = !DILocalVariable(name: "data", scope: !107, file: !3, line: 57, type: !61)
!112 = !DILocation(line: 57, column: 12, scope: !107)
!113 = !DILocalVariable(name: "dataBuffer", scope: !107, file: !3, line: 58, type: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 100)
!117 = !DILocation(line: 58, column: 10, scope: !107)
!118 = !DILocation(line: 59, column: 12, scope: !107)
!119 = !DILocation(line: 59, column: 10, scope: !107)
!120 = !DILocation(line: 60, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !107, file: !3, line: 60, column: 8)
!122 = !DILocation(line: 60, column: 25, scope: !121)
!123 = !DILocation(line: 60, column: 8, scope: !107)
!124 = !DILocalVariable(name: "recvResult", scope: !125, file: !3, line: 67, type: !63)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 62, column: 9)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 61, column: 5)
!127 = !DILocation(line: 67, column: 17, scope: !125)
!128 = !DILocalVariable(name: "service", scope: !125, file: !3, line: 68, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !130)
!130 = !{!131, !132, !138, !145}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !19, line: 240, baseType: !53, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !19, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !135, line: 25, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !137, line: 40, baseType: !55)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !19, line: 242, baseType: !139, size: 32, offset: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !139, file: !19, line: 33, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 26, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !137, line: 42, baseType: !7)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !19, line: 245, baseType: !146, size: 64, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DILocation(line: 68, column: 32, scope: !125)
!150 = !DILocalVariable(name: "replace", scope: !125, file: !3, line: 69, type: !61)
!151 = !DILocation(line: 69, column: 19, scope: !125)
!152 = !DILocalVariable(name: "connectSocket", scope: !125, file: !3, line: 70, type: !63)
!153 = !DILocation(line: 70, column: 20, scope: !125)
!154 = !DILocalVariable(name: "dataLen", scope: !125, file: !3, line: 71, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DILocation(line: 71, column: 20, scope: !125)
!159 = !DILocation(line: 71, column: 37, scope: !125)
!160 = !DILocation(line: 71, column: 30, scope: !125)
!161 = !DILocation(line: 72, column: 13, scope: !125)
!162 = !DILocation(line: 82, column: 33, scope: !163)
!163 = distinct !DILexicalBlock(scope: !125, file: !3, line: 73, column: 13)
!164 = !DILocation(line: 82, column: 31, scope: !163)
!165 = !DILocation(line: 83, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 83, column: 21)
!167 = !DILocation(line: 83, column: 35, scope: !166)
!168 = !DILocation(line: 83, column: 21, scope: !163)
!169 = !DILocation(line: 85, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !3, line: 84, column: 17)
!171 = !DILocation(line: 87, column: 17, scope: !163)
!172 = !DILocation(line: 88, column: 25, scope: !163)
!173 = !DILocation(line: 88, column: 36, scope: !163)
!174 = !DILocation(line: 89, column: 43, scope: !163)
!175 = !DILocation(line: 89, column: 25, scope: !163)
!176 = !DILocation(line: 89, column: 34, scope: !163)
!177 = !DILocation(line: 89, column: 41, scope: !163)
!178 = !DILocation(line: 90, column: 36, scope: !163)
!179 = !DILocation(line: 90, column: 25, scope: !163)
!180 = !DILocation(line: 90, column: 34, scope: !163)
!181 = !DILocation(line: 91, column: 29, scope: !182)
!182 = distinct !DILexicalBlock(scope: !163, file: !3, line: 91, column: 21)
!183 = !DILocation(line: 91, column: 44, scope: !182)
!184 = !DILocation(line: 91, column: 21, scope: !182)
!185 = !DILocation(line: 91, column: 89, scope: !182)
!186 = !DILocation(line: 91, column: 21, scope: !163)
!187 = !DILocation(line: 93, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 92, column: 17)
!189 = !DILocation(line: 98, column: 35, scope: !163)
!190 = !DILocation(line: 98, column: 59, scope: !163)
!191 = !DILocation(line: 98, column: 66, scope: !163)
!192 = !DILocation(line: 98, column: 64, scope: !163)
!193 = !DILocation(line: 98, column: 98, scope: !163)
!194 = !DILocation(line: 98, column: 96, scope: !163)
!195 = !DILocation(line: 98, column: 106, scope: !163)
!196 = !DILocation(line: 98, column: 89, scope: !163)
!197 = !DILocation(line: 98, column: 30, scope: !163)
!198 = !DILocation(line: 98, column: 28, scope: !163)
!199 = !DILocation(line: 99, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !163, file: !3, line: 99, column: 21)
!201 = !DILocation(line: 99, column: 32, scope: !200)
!202 = !DILocation(line: 99, column: 48, scope: !200)
!203 = !DILocation(line: 99, column: 51, scope: !200)
!204 = !DILocation(line: 99, column: 62, scope: !200)
!205 = !DILocation(line: 99, column: 21, scope: !163)
!206 = !DILocation(line: 101, column: 21, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !3, line: 100, column: 17)
!208 = !DILocation(line: 104, column: 17, scope: !163)
!209 = !DILocation(line: 104, column: 22, scope: !163)
!210 = !DILocation(line: 104, column: 32, scope: !163)
!211 = !DILocation(line: 104, column: 43, scope: !163)
!212 = !DILocation(line: 104, column: 30, scope: !163)
!213 = !DILocation(line: 104, column: 59, scope: !163)
!214 = !DILocation(line: 106, column: 34, scope: !163)
!215 = !DILocation(line: 106, column: 27, scope: !163)
!216 = !DILocation(line: 106, column: 25, scope: !163)
!217 = !DILocation(line: 107, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !163, file: !3, line: 107, column: 21)
!219 = !DILocation(line: 107, column: 21, scope: !163)
!220 = !DILocation(line: 109, column: 22, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 108, column: 17)
!222 = !DILocation(line: 109, column: 30, scope: !221)
!223 = !DILocation(line: 110, column: 17, scope: !221)
!224 = !DILocation(line: 111, column: 34, scope: !163)
!225 = !DILocation(line: 111, column: 27, scope: !163)
!226 = !DILocation(line: 111, column: 25, scope: !163)
!227 = !DILocation(line: 112, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !163, file: !3, line: 112, column: 21)
!229 = !DILocation(line: 112, column: 21, scope: !163)
!230 = !DILocation(line: 114, column: 22, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !3, line: 113, column: 17)
!232 = !DILocation(line: 114, column: 30, scope: !231)
!233 = !DILocation(line: 115, column: 17, scope: !231)
!234 = !DILocation(line: 116, column: 13, scope: !163)
!235 = !DILocation(line: 118, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !125, file: !3, line: 118, column: 17)
!237 = !DILocation(line: 118, column: 31, scope: !236)
!238 = !DILocation(line: 118, column: 17, scope: !125)
!239 = !DILocation(line: 120, column: 30, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !3, line: 119, column: 13)
!241 = !DILocation(line: 120, column: 17, scope: !240)
!242 = !DILocation(line: 121, column: 13, scope: !240)
!243 = !DILocation(line: 129, column: 5, scope: !126)
!244 = !DILocation(line: 130, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !107, file: !3, line: 130, column: 8)
!246 = !DILocation(line: 130, column: 25, scope: !245)
!247 = !DILocation(line: 130, column: 8, scope: !107)
!248 = !DILocalVariable(name: "i", scope: !249, file: !3, line: 133, type: !63)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 132, column: 9)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 131, column: 5)
!251 = !DILocation(line: 133, column: 17, scope: !249)
!252 = !DILocalVariable(name: "n", scope: !249, file: !3, line: 133, type: !63)
!253 = !DILocation(line: 133, column: 20, scope: !249)
!254 = !DILocalVariable(name: "intVariable", scope: !249, file: !3, line: 133, type: !63)
!255 = !DILocation(line: 133, column: 23, scope: !249)
!256 = !DILocation(line: 134, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !3, line: 134, column: 17)
!258 = !DILocation(line: 134, column: 17, scope: !257)
!259 = !DILocation(line: 134, column: 40, scope: !257)
!260 = !DILocation(line: 134, column: 17, scope: !249)
!261 = !DILocation(line: 137, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 135, column: 13)
!263 = !DILocation(line: 138, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !3, line: 138, column: 17)
!265 = !DILocation(line: 138, column: 22, scope: !264)
!266 = !DILocation(line: 138, column: 29, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 138, column: 17)
!268 = !DILocation(line: 138, column: 33, scope: !267)
!269 = !DILocation(line: 138, column: 31, scope: !267)
!270 = !DILocation(line: 138, column: 17, scope: !264)
!271 = !DILocation(line: 141, column: 32, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 139, column: 17)
!273 = !DILocation(line: 142, column: 17, scope: !272)
!274 = !DILocation(line: 138, column: 37, scope: !267)
!275 = !DILocation(line: 138, column: 17, scope: !267)
!276 = distinct !{!276, !270, !277, !278}
!277 = !DILocation(line: 142, column: 17, scope: !264)
!278 = !{!"llvm.loop.mustprogress"}
!279 = !DILocation(line: 143, column: 30, scope: !262)
!280 = !DILocation(line: 143, column: 17, scope: !262)
!281 = !DILocation(line: 144, column: 13, scope: !262)
!282 = !DILocation(line: 146, column: 5, scope: !250)
!283 = !DILocation(line: 147, column: 1, scope: !107)
!284 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 154, type: !108, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!285 = !DILocalVariable(name: "data", scope: !284, file: !3, line: 156, type: !61)
!286 = !DILocation(line: 156, column: 12, scope: !284)
!287 = !DILocalVariable(name: "dataBuffer", scope: !284, file: !3, line: 157, type: !114)
!288 = !DILocation(line: 157, column: 10, scope: !284)
!289 = !DILocation(line: 158, column: 12, scope: !284)
!290 = !DILocation(line: 158, column: 10, scope: !284)
!291 = !DILocation(line: 159, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !3, line: 159, column: 8)
!293 = !DILocation(line: 159, column: 25, scope: !292)
!294 = !DILocation(line: 159, column: 8, scope: !284)
!295 = !DILocalVariable(name: "recvResult", scope: !296, file: !3, line: 166, type: !63)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 161, column: 9)
!297 = distinct !DILexicalBlock(scope: !292, file: !3, line: 160, column: 5)
!298 = !DILocation(line: 166, column: 17, scope: !296)
!299 = !DILocalVariable(name: "service", scope: !296, file: !3, line: 167, type: !129)
!300 = !DILocation(line: 167, column: 32, scope: !296)
!301 = !DILocalVariable(name: "replace", scope: !296, file: !3, line: 168, type: !61)
!302 = !DILocation(line: 168, column: 19, scope: !296)
!303 = !DILocalVariable(name: "connectSocket", scope: !296, file: !3, line: 169, type: !63)
!304 = !DILocation(line: 169, column: 20, scope: !296)
!305 = !DILocalVariable(name: "dataLen", scope: !296, file: !3, line: 170, type: !155)
!306 = !DILocation(line: 170, column: 20, scope: !296)
!307 = !DILocation(line: 170, column: 37, scope: !296)
!308 = !DILocation(line: 170, column: 30, scope: !296)
!309 = !DILocation(line: 171, column: 13, scope: !296)
!310 = !DILocation(line: 181, column: 33, scope: !311)
!311 = distinct !DILexicalBlock(scope: !296, file: !3, line: 172, column: 13)
!312 = !DILocation(line: 181, column: 31, scope: !311)
!313 = !DILocation(line: 182, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 182, column: 21)
!315 = !DILocation(line: 182, column: 35, scope: !314)
!316 = !DILocation(line: 182, column: 21, scope: !311)
!317 = !DILocation(line: 184, column: 21, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 183, column: 17)
!319 = !DILocation(line: 186, column: 17, scope: !311)
!320 = !DILocation(line: 187, column: 25, scope: !311)
!321 = !DILocation(line: 187, column: 36, scope: !311)
!322 = !DILocation(line: 188, column: 43, scope: !311)
!323 = !DILocation(line: 188, column: 25, scope: !311)
!324 = !DILocation(line: 188, column: 34, scope: !311)
!325 = !DILocation(line: 188, column: 41, scope: !311)
!326 = !DILocation(line: 189, column: 36, scope: !311)
!327 = !DILocation(line: 189, column: 25, scope: !311)
!328 = !DILocation(line: 189, column: 34, scope: !311)
!329 = !DILocation(line: 190, column: 29, scope: !330)
!330 = distinct !DILexicalBlock(scope: !311, file: !3, line: 190, column: 21)
!331 = !DILocation(line: 190, column: 44, scope: !330)
!332 = !DILocation(line: 190, column: 21, scope: !330)
!333 = !DILocation(line: 190, column: 89, scope: !330)
!334 = !DILocation(line: 190, column: 21, scope: !311)
!335 = !DILocation(line: 192, column: 21, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !3, line: 191, column: 17)
!337 = !DILocation(line: 197, column: 35, scope: !311)
!338 = !DILocation(line: 197, column: 59, scope: !311)
!339 = !DILocation(line: 197, column: 66, scope: !311)
!340 = !DILocation(line: 197, column: 64, scope: !311)
!341 = !DILocation(line: 197, column: 98, scope: !311)
!342 = !DILocation(line: 197, column: 96, scope: !311)
!343 = !DILocation(line: 197, column: 106, scope: !311)
!344 = !DILocation(line: 197, column: 89, scope: !311)
!345 = !DILocation(line: 197, column: 30, scope: !311)
!346 = !DILocation(line: 197, column: 28, scope: !311)
!347 = !DILocation(line: 198, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !311, file: !3, line: 198, column: 21)
!349 = !DILocation(line: 198, column: 32, scope: !348)
!350 = !DILocation(line: 198, column: 48, scope: !348)
!351 = !DILocation(line: 198, column: 51, scope: !348)
!352 = !DILocation(line: 198, column: 62, scope: !348)
!353 = !DILocation(line: 198, column: 21, scope: !311)
!354 = !DILocation(line: 200, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !3, line: 199, column: 17)
!356 = !DILocation(line: 203, column: 17, scope: !311)
!357 = !DILocation(line: 203, column: 22, scope: !311)
!358 = !DILocation(line: 203, column: 32, scope: !311)
!359 = !DILocation(line: 203, column: 43, scope: !311)
!360 = !DILocation(line: 203, column: 30, scope: !311)
!361 = !DILocation(line: 203, column: 59, scope: !311)
!362 = !DILocation(line: 205, column: 34, scope: !311)
!363 = !DILocation(line: 205, column: 27, scope: !311)
!364 = !DILocation(line: 205, column: 25, scope: !311)
!365 = !DILocation(line: 206, column: 21, scope: !366)
!366 = distinct !DILexicalBlock(scope: !311, file: !3, line: 206, column: 21)
!367 = !DILocation(line: 206, column: 21, scope: !311)
!368 = !DILocation(line: 208, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !3, line: 207, column: 17)
!370 = !DILocation(line: 208, column: 30, scope: !369)
!371 = !DILocation(line: 209, column: 17, scope: !369)
!372 = !DILocation(line: 210, column: 34, scope: !311)
!373 = !DILocation(line: 210, column: 27, scope: !311)
!374 = !DILocation(line: 210, column: 25, scope: !311)
!375 = !DILocation(line: 211, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !311, file: !3, line: 211, column: 21)
!377 = !DILocation(line: 211, column: 21, scope: !311)
!378 = !DILocation(line: 213, column: 22, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !3, line: 212, column: 17)
!380 = !DILocation(line: 213, column: 30, scope: !379)
!381 = !DILocation(line: 214, column: 17, scope: !379)
!382 = !DILocation(line: 215, column: 13, scope: !311)
!383 = !DILocation(line: 217, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !296, file: !3, line: 217, column: 17)
!385 = !DILocation(line: 217, column: 31, scope: !384)
!386 = !DILocation(line: 217, column: 17, scope: !296)
!387 = !DILocation(line: 219, column: 30, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 218, column: 13)
!389 = !DILocation(line: 219, column: 17, scope: !388)
!390 = !DILocation(line: 220, column: 13, scope: !388)
!391 = !DILocation(line: 228, column: 5, scope: !297)
!392 = !DILocation(line: 229, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !284, file: !3, line: 229, column: 8)
!394 = !DILocation(line: 229, column: 25, scope: !393)
!395 = !DILocation(line: 229, column: 8, scope: !284)
!396 = !DILocation(line: 232, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 230, column: 5)
!398 = !DILocation(line: 233, column: 5, scope: !397)
!399 = !DILocalVariable(name: "i", scope: !400, file: !3, line: 237, type: !63)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 236, column: 9)
!401 = distinct !DILexicalBlock(scope: !393, file: !3, line: 235, column: 5)
!402 = !DILocation(line: 237, column: 17, scope: !400)
!403 = !DILocalVariable(name: "n", scope: !400, file: !3, line: 237, type: !63)
!404 = !DILocation(line: 237, column: 20, scope: !400)
!405 = !DILocalVariable(name: "intVariable", scope: !400, file: !3, line: 237, type: !63)
!406 = !DILocation(line: 237, column: 23, scope: !400)
!407 = !DILocation(line: 238, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !3, line: 238, column: 17)
!409 = !DILocation(line: 238, column: 17, scope: !408)
!410 = !DILocation(line: 238, column: 40, scope: !408)
!411 = !DILocation(line: 238, column: 17, scope: !400)
!412 = !DILocation(line: 241, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 241, column: 21)
!414 = distinct !DILexicalBlock(scope: !408, file: !3, line: 239, column: 13)
!415 = !DILocation(line: 241, column: 23, scope: !413)
!416 = !DILocation(line: 241, column: 21, scope: !414)
!417 = !DILocation(line: 243, column: 33, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 242, column: 17)
!419 = !DILocation(line: 244, column: 28, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !3, line: 244, column: 21)
!421 = !DILocation(line: 244, column: 26, scope: !420)
!422 = !DILocation(line: 244, column: 33, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !3, line: 244, column: 21)
!424 = !DILocation(line: 244, column: 37, scope: !423)
!425 = !DILocation(line: 244, column: 35, scope: !423)
!426 = !DILocation(line: 244, column: 21, scope: !420)
!427 = !DILocation(line: 247, column: 36, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !3, line: 245, column: 21)
!429 = !DILocation(line: 248, column: 21, scope: !428)
!430 = !DILocation(line: 244, column: 41, scope: !423)
!431 = !DILocation(line: 244, column: 21, scope: !423)
!432 = distinct !{!432, !426, !433, !278}
!433 = !DILocation(line: 248, column: 21, scope: !420)
!434 = !DILocation(line: 249, column: 34, scope: !418)
!435 = !DILocation(line: 249, column: 21, scope: !418)
!436 = !DILocation(line: 250, column: 17, scope: !418)
!437 = !DILocation(line: 251, column: 13, scope: !414)
!438 = !DILocation(line: 254, column: 1, scope: !284)
!439 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 257, type: !108, scopeLine: 258, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!440 = !DILocalVariable(name: "data", scope: !439, file: !3, line: 259, type: !61)
!441 = !DILocation(line: 259, column: 12, scope: !439)
!442 = !DILocalVariable(name: "dataBuffer", scope: !439, file: !3, line: 260, type: !114)
!443 = !DILocation(line: 260, column: 10, scope: !439)
!444 = !DILocation(line: 261, column: 12, scope: !439)
!445 = !DILocation(line: 261, column: 10, scope: !439)
!446 = !DILocation(line: 262, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !439, file: !3, line: 262, column: 8)
!448 = !DILocation(line: 262, column: 25, scope: !447)
!449 = !DILocation(line: 262, column: 8, scope: !439)
!450 = !DILocalVariable(name: "recvResult", scope: !451, file: !3, line: 269, type: !63)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 264, column: 9)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 263, column: 5)
!453 = !DILocation(line: 269, column: 17, scope: !451)
!454 = !DILocalVariable(name: "service", scope: !451, file: !3, line: 270, type: !129)
!455 = !DILocation(line: 270, column: 32, scope: !451)
!456 = !DILocalVariable(name: "replace", scope: !451, file: !3, line: 271, type: !61)
!457 = !DILocation(line: 271, column: 19, scope: !451)
!458 = !DILocalVariable(name: "connectSocket", scope: !451, file: !3, line: 272, type: !63)
!459 = !DILocation(line: 272, column: 20, scope: !451)
!460 = !DILocalVariable(name: "dataLen", scope: !451, file: !3, line: 273, type: !155)
!461 = !DILocation(line: 273, column: 20, scope: !451)
!462 = !DILocation(line: 273, column: 37, scope: !451)
!463 = !DILocation(line: 273, column: 30, scope: !451)
!464 = !DILocation(line: 274, column: 13, scope: !451)
!465 = !DILocation(line: 284, column: 33, scope: !466)
!466 = distinct !DILexicalBlock(scope: !451, file: !3, line: 275, column: 13)
!467 = !DILocation(line: 284, column: 31, scope: !466)
!468 = !DILocation(line: 285, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 285, column: 21)
!470 = !DILocation(line: 285, column: 35, scope: !469)
!471 = !DILocation(line: 285, column: 21, scope: !466)
!472 = !DILocation(line: 287, column: 21, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 286, column: 17)
!474 = !DILocation(line: 289, column: 17, scope: !466)
!475 = !DILocation(line: 290, column: 25, scope: !466)
!476 = !DILocation(line: 290, column: 36, scope: !466)
!477 = !DILocation(line: 291, column: 43, scope: !466)
!478 = !DILocation(line: 291, column: 25, scope: !466)
!479 = !DILocation(line: 291, column: 34, scope: !466)
!480 = !DILocation(line: 291, column: 41, scope: !466)
!481 = !DILocation(line: 292, column: 36, scope: !466)
!482 = !DILocation(line: 292, column: 25, scope: !466)
!483 = !DILocation(line: 292, column: 34, scope: !466)
!484 = !DILocation(line: 293, column: 29, scope: !485)
!485 = distinct !DILexicalBlock(scope: !466, file: !3, line: 293, column: 21)
!486 = !DILocation(line: 293, column: 44, scope: !485)
!487 = !DILocation(line: 293, column: 21, scope: !485)
!488 = !DILocation(line: 293, column: 89, scope: !485)
!489 = !DILocation(line: 293, column: 21, scope: !466)
!490 = !DILocation(line: 295, column: 21, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !3, line: 294, column: 17)
!492 = !DILocation(line: 300, column: 35, scope: !466)
!493 = !DILocation(line: 300, column: 59, scope: !466)
!494 = !DILocation(line: 300, column: 66, scope: !466)
!495 = !DILocation(line: 300, column: 64, scope: !466)
!496 = !DILocation(line: 300, column: 98, scope: !466)
!497 = !DILocation(line: 300, column: 96, scope: !466)
!498 = !DILocation(line: 300, column: 106, scope: !466)
!499 = !DILocation(line: 300, column: 89, scope: !466)
!500 = !DILocation(line: 300, column: 30, scope: !466)
!501 = !DILocation(line: 300, column: 28, scope: !466)
!502 = !DILocation(line: 301, column: 21, scope: !503)
!503 = distinct !DILexicalBlock(scope: !466, file: !3, line: 301, column: 21)
!504 = !DILocation(line: 301, column: 32, scope: !503)
!505 = !DILocation(line: 301, column: 48, scope: !503)
!506 = !DILocation(line: 301, column: 51, scope: !503)
!507 = !DILocation(line: 301, column: 62, scope: !503)
!508 = !DILocation(line: 301, column: 21, scope: !466)
!509 = !DILocation(line: 303, column: 21, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !3, line: 302, column: 17)
!511 = !DILocation(line: 306, column: 17, scope: !466)
!512 = !DILocation(line: 306, column: 22, scope: !466)
!513 = !DILocation(line: 306, column: 32, scope: !466)
!514 = !DILocation(line: 306, column: 43, scope: !466)
!515 = !DILocation(line: 306, column: 30, scope: !466)
!516 = !DILocation(line: 306, column: 59, scope: !466)
!517 = !DILocation(line: 308, column: 34, scope: !466)
!518 = !DILocation(line: 308, column: 27, scope: !466)
!519 = !DILocation(line: 308, column: 25, scope: !466)
!520 = !DILocation(line: 309, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !466, file: !3, line: 309, column: 21)
!522 = !DILocation(line: 309, column: 21, scope: !466)
!523 = !DILocation(line: 311, column: 22, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 310, column: 17)
!525 = !DILocation(line: 311, column: 30, scope: !524)
!526 = !DILocation(line: 312, column: 17, scope: !524)
!527 = !DILocation(line: 313, column: 34, scope: !466)
!528 = !DILocation(line: 313, column: 27, scope: !466)
!529 = !DILocation(line: 313, column: 25, scope: !466)
!530 = !DILocation(line: 314, column: 21, scope: !531)
!531 = distinct !DILexicalBlock(scope: !466, file: !3, line: 314, column: 21)
!532 = !DILocation(line: 314, column: 21, scope: !466)
!533 = !DILocation(line: 316, column: 22, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !3, line: 315, column: 17)
!535 = !DILocation(line: 316, column: 30, scope: !534)
!536 = !DILocation(line: 317, column: 17, scope: !534)
!537 = !DILocation(line: 318, column: 13, scope: !466)
!538 = !DILocation(line: 320, column: 17, scope: !539)
!539 = distinct !DILexicalBlock(scope: !451, file: !3, line: 320, column: 17)
!540 = !DILocation(line: 320, column: 31, scope: !539)
!541 = !DILocation(line: 320, column: 17, scope: !451)
!542 = !DILocation(line: 322, column: 30, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !3, line: 321, column: 13)
!544 = !DILocation(line: 322, column: 17, scope: !543)
!545 = !DILocation(line: 323, column: 13, scope: !543)
!546 = !DILocation(line: 331, column: 5, scope: !452)
!547 = !DILocation(line: 332, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !439, file: !3, line: 332, column: 8)
!549 = !DILocation(line: 332, column: 25, scope: !548)
!550 = !DILocation(line: 332, column: 8, scope: !439)
!551 = !DILocalVariable(name: "i", scope: !552, file: !3, line: 335, type: !63)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 334, column: 9)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 333, column: 5)
!554 = !DILocation(line: 335, column: 17, scope: !552)
!555 = !DILocalVariable(name: "n", scope: !552, file: !3, line: 335, type: !63)
!556 = !DILocation(line: 335, column: 20, scope: !552)
!557 = !DILocalVariable(name: "intVariable", scope: !552, file: !3, line: 335, type: !63)
!558 = !DILocation(line: 335, column: 23, scope: !552)
!559 = !DILocation(line: 336, column: 24, scope: !560)
!560 = distinct !DILexicalBlock(scope: !552, file: !3, line: 336, column: 17)
!561 = !DILocation(line: 336, column: 17, scope: !560)
!562 = !DILocation(line: 336, column: 40, scope: !560)
!563 = !DILocation(line: 336, column: 17, scope: !552)
!564 = !DILocation(line: 339, column: 21, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 339, column: 21)
!566 = distinct !DILexicalBlock(scope: !560, file: !3, line: 337, column: 13)
!567 = !DILocation(line: 339, column: 23, scope: !565)
!568 = !DILocation(line: 339, column: 21, scope: !566)
!569 = !DILocation(line: 341, column: 33, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 340, column: 17)
!571 = !DILocation(line: 342, column: 28, scope: !572)
!572 = distinct !DILexicalBlock(scope: !570, file: !3, line: 342, column: 21)
!573 = !DILocation(line: 342, column: 26, scope: !572)
!574 = !DILocation(line: 342, column: 33, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 342, column: 21)
!576 = !DILocation(line: 342, column: 37, scope: !575)
!577 = !DILocation(line: 342, column: 35, scope: !575)
!578 = !DILocation(line: 342, column: 21, scope: !572)
!579 = !DILocation(line: 345, column: 36, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 343, column: 21)
!581 = !DILocation(line: 346, column: 21, scope: !580)
!582 = !DILocation(line: 342, column: 41, scope: !575)
!583 = !DILocation(line: 342, column: 21, scope: !575)
!584 = distinct !{!584, !578, !585, !278}
!585 = !DILocation(line: 346, column: 21, scope: !572)
!586 = !DILocation(line: 347, column: 34, scope: !570)
!587 = !DILocation(line: 347, column: 21, scope: !570)
!588 = !DILocation(line: 348, column: 17, scope: !570)
!589 = !DILocation(line: 349, column: 13, scope: !566)
!590 = !DILocation(line: 351, column: 5, scope: !553)
!591 = !DILocation(line: 352, column: 1, scope: !439)
!592 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 355, type: !108, scopeLine: 356, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!593 = !DILocalVariable(name: "data", scope: !592, file: !3, line: 357, type: !61)
!594 = !DILocation(line: 357, column: 12, scope: !592)
!595 = !DILocalVariable(name: "dataBuffer", scope: !592, file: !3, line: 358, type: !114)
!596 = !DILocation(line: 358, column: 10, scope: !592)
!597 = !DILocation(line: 359, column: 12, scope: !592)
!598 = !DILocation(line: 359, column: 10, scope: !592)
!599 = !DILocation(line: 360, column: 8, scope: !600)
!600 = distinct !DILexicalBlock(scope: !592, file: !3, line: 360, column: 8)
!601 = !DILocation(line: 360, column: 25, scope: !600)
!602 = !DILocation(line: 360, column: 8, scope: !592)
!603 = !DILocation(line: 363, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 361, column: 5)
!605 = !DILocation(line: 364, column: 5, scope: !604)
!606 = !DILocation(line: 368, column: 16, scope: !607)
!607 = distinct !DILexicalBlock(scope: !600, file: !3, line: 366, column: 5)
!608 = !DILocation(line: 368, column: 9, scope: !607)
!609 = !DILocation(line: 370, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !592, file: !3, line: 370, column: 8)
!611 = !DILocation(line: 370, column: 25, scope: !610)
!612 = !DILocation(line: 370, column: 8, scope: !592)
!613 = !DILocalVariable(name: "i", scope: !614, file: !3, line: 373, type: !63)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 372, column: 9)
!615 = distinct !DILexicalBlock(scope: !610, file: !3, line: 371, column: 5)
!616 = !DILocation(line: 373, column: 17, scope: !614)
!617 = !DILocalVariable(name: "n", scope: !614, file: !3, line: 373, type: !63)
!618 = !DILocation(line: 373, column: 20, scope: !614)
!619 = !DILocalVariable(name: "intVariable", scope: !614, file: !3, line: 373, type: !63)
!620 = !DILocation(line: 373, column: 23, scope: !614)
!621 = !DILocation(line: 374, column: 24, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !3, line: 374, column: 17)
!623 = !DILocation(line: 374, column: 17, scope: !622)
!624 = !DILocation(line: 374, column: 40, scope: !622)
!625 = !DILocation(line: 374, column: 17, scope: !614)
!626 = !DILocation(line: 377, column: 29, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 375, column: 13)
!628 = !DILocation(line: 378, column: 24, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 378, column: 17)
!630 = !DILocation(line: 378, column: 22, scope: !629)
!631 = !DILocation(line: 378, column: 29, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !3, line: 378, column: 17)
!633 = !DILocation(line: 378, column: 33, scope: !632)
!634 = !DILocation(line: 378, column: 31, scope: !632)
!635 = !DILocation(line: 378, column: 17, scope: !629)
!636 = !DILocation(line: 381, column: 32, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 379, column: 17)
!638 = !DILocation(line: 382, column: 17, scope: !637)
!639 = !DILocation(line: 378, column: 37, scope: !632)
!640 = !DILocation(line: 378, column: 17, scope: !632)
!641 = distinct !{!641, !635, !642, !278}
!642 = !DILocation(line: 382, column: 17, scope: !629)
!643 = !DILocation(line: 383, column: 30, scope: !627)
!644 = !DILocation(line: 383, column: 17, scope: !627)
!645 = !DILocation(line: 384, column: 13, scope: !627)
!646 = !DILocation(line: 386, column: 5, scope: !615)
!647 = !DILocation(line: 387, column: 1, scope: !592)
!648 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 390, type: !108, scopeLine: 391, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!649 = !DILocalVariable(name: "data", scope: !648, file: !3, line: 392, type: !61)
!650 = !DILocation(line: 392, column: 12, scope: !648)
!651 = !DILocalVariable(name: "dataBuffer", scope: !648, file: !3, line: 393, type: !114)
!652 = !DILocation(line: 393, column: 10, scope: !648)
!653 = !DILocation(line: 394, column: 12, scope: !648)
!654 = !DILocation(line: 394, column: 10, scope: !648)
!655 = !DILocation(line: 395, column: 8, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !3, line: 395, column: 8)
!657 = !DILocation(line: 395, column: 25, scope: !656)
!658 = !DILocation(line: 395, column: 8, scope: !648)
!659 = !DILocation(line: 398, column: 16, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 396, column: 5)
!661 = !DILocation(line: 398, column: 9, scope: !660)
!662 = !DILocation(line: 399, column: 5, scope: !660)
!663 = !DILocation(line: 400, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !648, file: !3, line: 400, column: 8)
!665 = !DILocation(line: 400, column: 25, scope: !664)
!666 = !DILocation(line: 400, column: 8, scope: !648)
!667 = !DILocalVariable(name: "i", scope: !668, file: !3, line: 403, type: !63)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 402, column: 9)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 401, column: 5)
!670 = !DILocation(line: 403, column: 17, scope: !668)
!671 = !DILocalVariable(name: "n", scope: !668, file: !3, line: 403, type: !63)
!672 = !DILocation(line: 403, column: 20, scope: !668)
!673 = !DILocalVariable(name: "intVariable", scope: !668, file: !3, line: 403, type: !63)
!674 = !DILocation(line: 403, column: 23, scope: !668)
!675 = !DILocation(line: 404, column: 24, scope: !676)
!676 = distinct !DILexicalBlock(scope: !668, file: !3, line: 404, column: 17)
!677 = !DILocation(line: 404, column: 17, scope: !676)
!678 = !DILocation(line: 404, column: 40, scope: !676)
!679 = !DILocation(line: 404, column: 17, scope: !668)
!680 = !DILocation(line: 407, column: 29, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 405, column: 13)
!682 = !DILocation(line: 408, column: 24, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !3, line: 408, column: 17)
!684 = !DILocation(line: 408, column: 22, scope: !683)
!685 = !DILocation(line: 408, column: 29, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 408, column: 17)
!687 = !DILocation(line: 408, column: 33, scope: !686)
!688 = !DILocation(line: 408, column: 31, scope: !686)
!689 = !DILocation(line: 408, column: 17, scope: !683)
!690 = !DILocation(line: 411, column: 32, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 409, column: 17)
!692 = !DILocation(line: 412, column: 17, scope: !691)
!693 = !DILocation(line: 408, column: 37, scope: !686)
!694 = !DILocation(line: 408, column: 17, scope: !686)
!695 = distinct !{!695, !689, !696, !278}
!696 = !DILocation(line: 412, column: 17, scope: !683)
!697 = !DILocation(line: 413, column: 30, scope: !681)
!698 = !DILocation(line: 413, column: 17, scope: !681)
!699 = !DILocation(line: 414, column: 13, scope: !681)
!700 = !DILocation(line: 416, column: 5, scope: !669)
!701 = !DILocation(line: 417, column: 1, scope: !648)
!702 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06_good", scope: !3, file: !3, line: 419, type: !108, scopeLine: 420, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!703 = !DILocation(line: 421, column: 5, scope: !702)
!704 = !DILocation(line: 422, column: 5, scope: !702)
!705 = !DILocation(line: 423, column: 5, scope: !702)
!706 = !DILocation(line: 424, column: 5, scope: !702)
!707 = !DILocation(line: 425, column: 1, scope: !702)
!708 = distinct !DISubprogram(name: "printLine", scope: !67, file: !67, line: 11, type: !709, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !61}
!711 = !DILocalVariable(name: "line", arg: 1, scope: !708, file: !67, line: 11, type: !61)
!712 = !DILocation(line: 11, column: 25, scope: !708)
!713 = !DILocation(line: 13, column: 1, scope: !708)
!714 = !DILocation(line: 14, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !67, line: 14, column: 8)
!716 = !DILocation(line: 14, column: 13, scope: !715)
!717 = !DILocation(line: 14, column: 8, scope: !708)
!718 = !DILocation(line: 16, column: 24, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !67, line: 15, column: 5)
!720 = !DILocation(line: 16, column: 9, scope: !719)
!721 = !DILocation(line: 17, column: 5, scope: !719)
!722 = !DILocation(line: 18, column: 5, scope: !708)
!723 = !DILocation(line: 19, column: 1, scope: !708)
!724 = distinct !DISubprogram(name: "printSinkLine", scope: !67, file: !67, line: 20, type: !709, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!725 = !DILocalVariable(name: "line", arg: 1, scope: !724, file: !67, line: 20, type: !61)
!726 = !DILocation(line: 20, column: 29, scope: !724)
!727 = !DILocation(line: 22, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !67, line: 22, column: 8)
!729 = !DILocation(line: 22, column: 13, scope: !728)
!730 = !DILocation(line: 22, column: 8, scope: !724)
!731 = !DILocation(line: 24, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !67, line: 23, column: 5)
!733 = !DILocation(line: 24, column: 9, scope: !732)
!734 = !DILocation(line: 25, column: 5, scope: !732)
!735 = !DILocation(line: 26, column: 1, scope: !724)
!736 = distinct !DISubprogram(name: "printWLine", scope: !67, file: !67, line: 27, type: !737, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !156, line: 74, baseType: !63)
!741 = !DILocalVariable(name: "line", arg: 1, scope: !736, file: !67, line: 27, type: !739)
!742 = !DILocation(line: 27, column: 29, scope: !736)
!743 = !DILocation(line: 29, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !736, file: !67, line: 29, column: 8)
!745 = !DILocation(line: 29, column: 13, scope: !744)
!746 = !DILocation(line: 29, column: 8, scope: !736)
!747 = !DILocation(line: 31, column: 27, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !67, line: 30, column: 5)
!749 = !DILocation(line: 31, column: 9, scope: !748)
!750 = !DILocation(line: 32, column: 5, scope: !748)
!751 = !DILocation(line: 33, column: 1, scope: !736)
!752 = distinct !DISubprogram(name: "printIntLine", scope: !67, file: !67, line: 35, type: !753, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !63}
!755 = !DILocalVariable(name: "intNumber", arg: 1, scope: !752, file: !67, line: 35, type: !63)
!756 = !DILocation(line: 35, column: 24, scope: !752)
!757 = !DILocation(line: 37, column: 20, scope: !752)
!758 = !DILocation(line: 37, column: 5, scope: !752)
!759 = !DILocation(line: 38, column: 1, scope: !752)
!760 = distinct !DISubprogram(name: "printShortLine", scope: !67, file: !67, line: 40, type: !761, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !763}
!763 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!764 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !760, file: !67, line: 40, type: !763)
!765 = !DILocation(line: 40, column: 28, scope: !760)
!766 = !DILocation(line: 42, column: 21, scope: !760)
!767 = !DILocation(line: 42, column: 5, scope: !760)
!768 = !DILocation(line: 43, column: 1, scope: !760)
!769 = distinct !DISubprogram(name: "printFloatLine", scope: !67, file: !67, line: 45, type: !770, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772}
!772 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!773 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !769, file: !67, line: 45, type: !772)
!774 = !DILocation(line: 45, column: 28, scope: !769)
!775 = !DILocation(line: 47, column: 20, scope: !769)
!776 = !DILocation(line: 47, column: 5, scope: !769)
!777 = !DILocation(line: 48, column: 1, scope: !769)
!778 = distinct !DISubprogram(name: "printLongLine", scope: !67, file: !67, line: 50, type: !779, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781}
!781 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!782 = !DILocalVariable(name: "longNumber", arg: 1, scope: !778, file: !67, line: 50, type: !781)
!783 = !DILocation(line: 50, column: 26, scope: !778)
!784 = !DILocation(line: 52, column: 21, scope: !778)
!785 = !DILocation(line: 52, column: 5, scope: !778)
!786 = !DILocation(line: 53, column: 1, scope: !778)
!787 = distinct !DISubprogram(name: "printLongLongLine", scope: !67, file: !67, line: 55, type: !788, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !791, line: 27, baseType: !792)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !137, line: 44, baseType: !781)
!793 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !787, file: !67, line: 55, type: !790)
!794 = !DILocation(line: 55, column: 33, scope: !787)
!795 = !DILocation(line: 57, column: 29, scope: !787)
!796 = !DILocation(line: 57, column: 5, scope: !787)
!797 = !DILocation(line: 58, column: 1, scope: !787)
!798 = distinct !DISubprogram(name: "printSizeTLine", scope: !67, file: !67, line: 60, type: !799, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !155}
!801 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !798, file: !67, line: 60, type: !155)
!802 = !DILocation(line: 60, column: 29, scope: !798)
!803 = !DILocation(line: 62, column: 21, scope: !798)
!804 = !DILocation(line: 62, column: 5, scope: !798)
!805 = !DILocation(line: 63, column: 1, scope: !798)
!806 = distinct !DISubprogram(name: "printHexCharLine", scope: !67, file: !67, line: 65, type: !807, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !58}
!809 = !DILocalVariable(name: "charHex", arg: 1, scope: !806, file: !67, line: 65, type: !58)
!810 = !DILocation(line: 65, column: 29, scope: !806)
!811 = !DILocation(line: 67, column: 22, scope: !806)
!812 = !DILocation(line: 67, column: 5, scope: !806)
!813 = !DILocation(line: 68, column: 1, scope: !806)
!814 = distinct !DISubprogram(name: "printWcharLine", scope: !67, file: !67, line: 70, type: !815, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !740}
!817 = !DILocalVariable(name: "wideChar", arg: 1, scope: !814, file: !67, line: 70, type: !740)
!818 = !DILocation(line: 70, column: 29, scope: !814)
!819 = !DILocalVariable(name: "s", scope: !814, file: !67, line: 74, type: !820)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 64, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 2)
!823 = !DILocation(line: 74, column: 13, scope: !814)
!824 = !DILocation(line: 75, column: 16, scope: !814)
!825 = !DILocation(line: 75, column: 9, scope: !814)
!826 = !DILocation(line: 75, column: 14, scope: !814)
!827 = !DILocation(line: 76, column: 9, scope: !814)
!828 = !DILocation(line: 76, column: 14, scope: !814)
!829 = !DILocation(line: 77, column: 21, scope: !814)
!830 = !DILocation(line: 77, column: 5, scope: !814)
!831 = !DILocation(line: 78, column: 1, scope: !814)
!832 = distinct !DISubprogram(name: "printUnsignedLine", scope: !67, file: !67, line: 80, type: !833, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !7}
!835 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !832, file: !67, line: 80, type: !7)
!836 = !DILocation(line: 80, column: 33, scope: !832)
!837 = !DILocation(line: 82, column: 20, scope: !832)
!838 = !DILocation(line: 82, column: 5, scope: !832)
!839 = !DILocation(line: 83, column: 1, scope: !832)
!840 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !67, file: !67, line: 85, type: !841, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !86}
!843 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !840, file: !67, line: 85, type: !86)
!844 = !DILocation(line: 85, column: 45, scope: !840)
!845 = !DILocation(line: 87, column: 22, scope: !840)
!846 = !DILocation(line: 87, column: 5, scope: !840)
!847 = !DILocation(line: 88, column: 1, scope: !840)
!848 = distinct !DISubprogram(name: "printDoubleLine", scope: !67, file: !67, line: 90, type: !849, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !851}
!851 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!852 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !848, file: !67, line: 90, type: !851)
!853 = !DILocation(line: 90, column: 29, scope: !848)
!854 = !DILocation(line: 92, column: 20, scope: !848)
!855 = !DILocation(line: 92, column: 5, scope: !848)
!856 = !DILocation(line: 93, column: 1, scope: !848)
!857 = distinct !DISubprogram(name: "printStructLine", scope: !67, file: !67, line: 95, type: !858, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !862, line: 100, baseType: !863)
!862 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_935/source_code")
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !862, line: 96, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !863, file: !862, line: 98, baseType: !63, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !863, file: !862, line: 99, baseType: !63, size: 32, offset: 32)
!867 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !857, file: !67, line: 95, type: !860)
!868 = !DILocation(line: 95, column: 40, scope: !857)
!869 = !DILocation(line: 97, column: 26, scope: !857)
!870 = !DILocation(line: 97, column: 47, scope: !857)
!871 = !DILocation(line: 97, column: 55, scope: !857)
!872 = !DILocation(line: 97, column: 76, scope: !857)
!873 = !DILocation(line: 97, column: 5, scope: !857)
!874 = !DILocation(line: 98, column: 1, scope: !857)
!875 = distinct !DISubprogram(name: "printBytesLine", scope: !67, file: !67, line: 100, type: !876, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878, !155}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!879 = !DILocalVariable(name: "bytes", arg: 1, scope: !875, file: !67, line: 100, type: !878)
!880 = !DILocation(line: 100, column: 38, scope: !875)
!881 = !DILocalVariable(name: "numBytes", arg: 2, scope: !875, file: !67, line: 100, type: !155)
!882 = !DILocation(line: 100, column: 52, scope: !875)
!883 = !DILocalVariable(name: "i", scope: !875, file: !67, line: 102, type: !155)
!884 = !DILocation(line: 102, column: 12, scope: !875)
!885 = !DILocation(line: 103, column: 12, scope: !886)
!886 = distinct !DILexicalBlock(scope: !875, file: !67, line: 103, column: 5)
!887 = !DILocation(line: 103, column: 10, scope: !886)
!888 = !DILocation(line: 103, column: 17, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !67, line: 103, column: 5)
!890 = !DILocation(line: 103, column: 21, scope: !889)
!891 = !DILocation(line: 103, column: 19, scope: !889)
!892 = !DILocation(line: 103, column: 5, scope: !886)
!893 = !DILocation(line: 105, column: 24, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !67, line: 104, column: 5)
!895 = !DILocation(line: 105, column: 30, scope: !894)
!896 = !DILocation(line: 105, column: 9, scope: !894)
!897 = !DILocation(line: 106, column: 5, scope: !894)
!898 = !DILocation(line: 103, column: 31, scope: !889)
!899 = !DILocation(line: 103, column: 5, scope: !889)
!900 = distinct !{!900, !892, !901, !278}
!901 = !DILocation(line: 106, column: 5, scope: !886)
!902 = !DILocation(line: 107, column: 5, scope: !875)
!903 = !DILocation(line: 108, column: 1, scope: !875)
!904 = distinct !DISubprogram(name: "decodeHexChars", scope: !67, file: !67, line: 113, type: !905, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!905 = !DISubroutineType(types: !906)
!906 = !{!155, !878, !155, !61}
!907 = !DILocalVariable(name: "bytes", arg: 1, scope: !904, file: !67, line: 113, type: !878)
!908 = !DILocation(line: 113, column: 39, scope: !904)
!909 = !DILocalVariable(name: "numBytes", arg: 2, scope: !904, file: !67, line: 113, type: !155)
!910 = !DILocation(line: 113, column: 53, scope: !904)
!911 = !DILocalVariable(name: "hex", arg: 3, scope: !904, file: !67, line: 113, type: !61)
!912 = !DILocation(line: 113, column: 71, scope: !904)
!913 = !DILocalVariable(name: "numWritten", scope: !904, file: !67, line: 115, type: !155)
!914 = !DILocation(line: 115, column: 12, scope: !904)
!915 = !DILocation(line: 121, column: 5, scope: !904)
!916 = !DILocation(line: 121, column: 12, scope: !904)
!917 = !DILocation(line: 121, column: 25, scope: !904)
!918 = !DILocation(line: 121, column: 23, scope: !904)
!919 = !DILocation(line: 121, column: 34, scope: !904)
!920 = !DILocation(line: 121, column: 37, scope: !904)
!921 = !DILocation(line: 121, column: 67, scope: !904)
!922 = !DILocation(line: 121, column: 70, scope: !904)
!923 = !DILocation(line: 0, scope: !904)
!924 = !DILocalVariable(name: "byte", scope: !925, file: !67, line: 123, type: !63)
!925 = distinct !DILexicalBlock(scope: !904, file: !67, line: 122, column: 5)
!926 = !DILocation(line: 123, column: 13, scope: !925)
!927 = !DILocation(line: 124, column: 17, scope: !925)
!928 = !DILocation(line: 124, column: 25, scope: !925)
!929 = !DILocation(line: 124, column: 23, scope: !925)
!930 = !DILocation(line: 124, column: 9, scope: !925)
!931 = !DILocation(line: 125, column: 45, scope: !925)
!932 = !DILocation(line: 125, column: 29, scope: !925)
!933 = !DILocation(line: 125, column: 9, scope: !925)
!934 = !DILocation(line: 125, column: 15, scope: !925)
!935 = !DILocation(line: 125, column: 27, scope: !925)
!936 = !DILocation(line: 126, column: 9, scope: !925)
!937 = distinct !{!937, !915, !938, !278}
!938 = !DILocation(line: 127, column: 5, scope: !904)
!939 = !DILocation(line: 129, column: 12, scope: !904)
!940 = !DILocation(line: 129, column: 5, scope: !904)
!941 = distinct !DISubprogram(name: "decodeHexWChars", scope: !67, file: !67, line: 135, type: !942, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!942 = !DISubroutineType(types: !943)
!943 = !{!155, !878, !155, !739}
!944 = !DILocalVariable(name: "bytes", arg: 1, scope: !941, file: !67, line: 135, type: !878)
!945 = !DILocation(line: 135, column: 41, scope: !941)
!946 = !DILocalVariable(name: "numBytes", arg: 2, scope: !941, file: !67, line: 135, type: !155)
!947 = !DILocation(line: 135, column: 55, scope: !941)
!948 = !DILocalVariable(name: "hex", arg: 3, scope: !941, file: !67, line: 135, type: !739)
!949 = !DILocation(line: 135, column: 76, scope: !941)
!950 = !DILocalVariable(name: "numWritten", scope: !941, file: !67, line: 137, type: !155)
!951 = !DILocation(line: 137, column: 12, scope: !941)
!952 = !DILocation(line: 143, column: 5, scope: !941)
!953 = !DILocation(line: 143, column: 12, scope: !941)
!954 = !DILocation(line: 143, column: 25, scope: !941)
!955 = !DILocation(line: 143, column: 23, scope: !941)
!956 = !DILocation(line: 143, column: 34, scope: !941)
!957 = !DILocation(line: 143, column: 47, scope: !941)
!958 = !DILocation(line: 143, column: 55, scope: !941)
!959 = !DILocation(line: 143, column: 53, scope: !941)
!960 = !DILocation(line: 143, column: 37, scope: !941)
!961 = !DILocation(line: 143, column: 68, scope: !941)
!962 = !DILocation(line: 143, column: 81, scope: !941)
!963 = !DILocation(line: 143, column: 89, scope: !941)
!964 = !DILocation(line: 143, column: 87, scope: !941)
!965 = !DILocation(line: 143, column: 100, scope: !941)
!966 = !DILocation(line: 143, column: 71, scope: !941)
!967 = !DILocation(line: 0, scope: !941)
!968 = !DILocalVariable(name: "byte", scope: !969, file: !67, line: 145, type: !63)
!969 = distinct !DILexicalBlock(scope: !941, file: !67, line: 144, column: 5)
!970 = !DILocation(line: 145, column: 13, scope: !969)
!971 = !DILocation(line: 146, column: 18, scope: !969)
!972 = !DILocation(line: 146, column: 26, scope: !969)
!973 = !DILocation(line: 146, column: 24, scope: !969)
!974 = !DILocation(line: 146, column: 9, scope: !969)
!975 = !DILocation(line: 147, column: 45, scope: !969)
!976 = !DILocation(line: 147, column: 29, scope: !969)
!977 = !DILocation(line: 147, column: 9, scope: !969)
!978 = !DILocation(line: 147, column: 15, scope: !969)
!979 = !DILocation(line: 147, column: 27, scope: !969)
!980 = !DILocation(line: 148, column: 9, scope: !969)
!981 = distinct !{!981, !952, !982, !278}
!982 = !DILocation(line: 149, column: 5, scope: !941)
!983 = !DILocation(line: 151, column: 12, scope: !941)
!984 = !DILocation(line: 151, column: 5, scope: !941)
!985 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !67, file: !67, line: 156, type: !986, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!986 = !DISubroutineType(types: !987)
!987 = !{!63}
!988 = !DILocation(line: 158, column: 5, scope: !985)
!989 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !67, file: !67, line: 161, type: !986, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!990 = !DILocation(line: 163, column: 5, scope: !989)
!991 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !67, file: !67, line: 166, type: !986, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!992 = !DILocation(line: 168, column: 13, scope: !991)
!993 = !DILocation(line: 168, column: 20, scope: !991)
!994 = !DILocation(line: 168, column: 5, scope: !991)
!995 = distinct !DISubprogram(name: "good1", scope: !67, file: !67, line: 187, type: !108, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!996 = !DILocation(line: 187, column: 16, scope: !995)
!997 = distinct !DISubprogram(name: "good2", scope: !67, file: !67, line: 188, type: !108, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!998 = !DILocation(line: 188, column: 16, scope: !997)
!999 = distinct !DISubprogram(name: "good3", scope: !67, file: !67, line: 189, type: !108, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1000 = !DILocation(line: 189, column: 16, scope: !999)
!1001 = distinct !DISubprogram(name: "good4", scope: !67, file: !67, line: 190, type: !108, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1002 = !DILocation(line: 190, column: 16, scope: !1001)
!1003 = distinct !DISubprogram(name: "good5", scope: !67, file: !67, line: 191, type: !108, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1004 = !DILocation(line: 191, column: 16, scope: !1003)
!1005 = distinct !DISubprogram(name: "good6", scope: !67, file: !67, line: 192, type: !108, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1006 = !DILocation(line: 192, column: 16, scope: !1005)
!1007 = distinct !DISubprogram(name: "good7", scope: !67, file: !67, line: 193, type: !108, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1008 = !DILocation(line: 193, column: 16, scope: !1007)
!1009 = distinct !DISubprogram(name: "good8", scope: !67, file: !67, line: 194, type: !108, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1010 = !DILocation(line: 194, column: 16, scope: !1009)
!1011 = distinct !DISubprogram(name: "good9", scope: !67, file: !67, line: 195, type: !108, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1012 = !DILocation(line: 195, column: 16, scope: !1011)
!1013 = distinct !DISubprogram(name: "bad1", scope: !67, file: !67, line: 198, type: !108, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1014 = !DILocation(line: 198, column: 15, scope: !1013)
!1015 = distinct !DISubprogram(name: "bad2", scope: !67, file: !67, line: 199, type: !108, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1016 = !DILocation(line: 199, column: 15, scope: !1015)
!1017 = distinct !DISubprogram(name: "bad3", scope: !67, file: !67, line: 200, type: !108, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1018 = !DILocation(line: 200, column: 15, scope: !1017)
!1019 = distinct !DISubprogram(name: "bad4", scope: !67, file: !67, line: 201, type: !108, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1020 = !DILocation(line: 201, column: 15, scope: !1019)
!1021 = distinct !DISubprogram(name: "bad5", scope: !67, file: !67, line: 202, type: !108, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1022 = !DILocation(line: 202, column: 15, scope: !1021)
!1023 = distinct !DISubprogram(name: "bad6", scope: !67, file: !67, line: 203, type: !108, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1024 = !DILocation(line: 203, column: 15, scope: !1023)
!1025 = distinct !DISubprogram(name: "bad7", scope: !67, file: !67, line: 204, type: !108, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1026 = !DILocation(line: 204, column: 15, scope: !1025)
!1027 = distinct !DISubprogram(name: "bad8", scope: !67, file: !67, line: 205, type: !108, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1028 = !DILocation(line: 205, column: 15, scope: !1027)
!1029 = distinct !DISubprogram(name: "bad9", scope: !67, file: !67, line: 206, type: !108, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !110)
!1030 = !DILocation(line: 206, column: 15, scope: !1029)
