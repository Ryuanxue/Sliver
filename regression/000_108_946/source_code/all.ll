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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17_bad() #0 !dbg !104 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i34 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %j, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %data, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !114, metadata !DIExpression()), !dbg !118
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !118
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !119
  store i8* %arraydecay, i8** %data, align 8, !dbg !120
  store i32 0, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !124
  %cmp = icmp slt i32 %1, 1, !dbg !126
  br i1 %cmp, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !132, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 -1, i32* %connectSocket, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !158, metadata !DIExpression()), !dbg !162
  %2 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i64 @strlen(i8* %2) #7, !dbg !164
  store i64 %call, i64* %dataLen, align 8, !dbg !162
  br label %do.body, !dbg !165

do.body:                                          ; preds = %for.body
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !166
  store i32 %call1, i32* %connectSocket, align 4, !dbg !168
  %3 = load i32, i32* %connectSocket, align 4, !dbg !169
  %cmp2 = icmp eq i32 %3, -1, !dbg !171
  br i1 %cmp2, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !173

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !175
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !176
  store i16 2, i16* %sin_family, align 4, !dbg !177
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !178
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !179
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !180
  store i32 %call3, i32* %s_addr, align 4, !dbg !181
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !182
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !183
  store i16 %call4, i16* %sin_port, align 2, !dbg !184
  %5 = load i32, i32* %connectSocket, align 4, !dbg !185
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !187
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !188
  %cmp6 = icmp eq i32 %call5, -1, !dbg !189
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !190

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !191

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !193
  %8 = load i8*, i8** %data, align 8, !dbg !194
  %9 = load i64, i64* %dataLen, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !196
  %10 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub = sub i64 100, %10, !dbg !198
  %sub9 = sub i64 %sub, 1, !dbg !199
  %mul = mul i64 1, %sub9, !dbg !200
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !201
  %conv = trunc i64 %call10 to i32, !dbg !201
  store i32 %conv, i32* %recvResult, align 4, !dbg !202
  %11 = load i32, i32* %recvResult, align 4, !dbg !203
  %cmp11 = icmp eq i32 %11, -1, !dbg !205
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !206

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !207
  %cmp13 = icmp eq i32 %12, 0, !dbg !208
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !209

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !210

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !212
  %14 = load i64, i64* %dataLen, align 8, !dbg !213
  %15 = load i32, i32* %recvResult, align 4, !dbg !214
  %conv17 = sext i32 %15 to i64, !dbg !214
  %div = udiv i64 %conv17, 1, !dbg !215
  %add = add i64 %14, %div, !dbg !216
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !212
  store i8 0, i8* %arrayidx, align 1, !dbg !217
  %16 = load i8*, i8** %data, align 8, !dbg !218
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !219
  store i8* %call18, i8** %replace, align 8, !dbg !220
  %17 = load i8*, i8** %replace, align 8, !dbg !221
  %tobool = icmp ne i8* %17, null, !dbg !221
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !223

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !224
  store i8 0, i8* %18, align 1, !dbg !226
  br label %if.end20, !dbg !227

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !228
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !229
  store i8* %call21, i8** %replace, align 8, !dbg !230
  %20 = load i8*, i8** %replace, align 8, !dbg !231
  %tobool22 = icmp ne i8* %20, null, !dbg !231
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !233

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %replace, align 8, !dbg !234
  store i8 0, i8* %21, align 1, !dbg !236
  br label %if.end24, !dbg !237

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !238

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %connectSocket, align 4, !dbg !239
  %cmp25 = icmp ne i32 %22, -1, !dbg !241
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !242

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !243
  %call28 = call i32 @close(i32 %23), !dbg !245
  br label %if.end29, !dbg !246

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %i, align 4, !dbg !248
  %inc = add nsw i32 %24, 1, !dbg !248
  store i32 %inc, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !253
  br label %for.cond30, !dbg !255

for.cond30:                                       ; preds = %for.inc48, %for.end
  %25 = load i32, i32* %j, align 4, !dbg !256
  %cmp31 = icmp slt i32 %25, 1, !dbg !258
  br i1 %cmp31, label %for.body33, label %for.end50, !dbg !259

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !260, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %n, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !266, metadata !DIExpression()), !dbg !267
  %26 = load i8*, i8** %data, align 8, !dbg !268
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !270
  %cmp36 = icmp eq i32 %call35, 1, !dbg !271
  br i1 %cmp36, label %if.then38, label %if.end47, !dbg !272

if.then38:                                        ; preds = %for.body33
  store i32 0, i32* %intVariable, align 4, !dbg !273
  store i32 0, i32* %i34, align 4, !dbg !275
  br label %for.cond39, !dbg !277

for.cond39:                                       ; preds = %for.inc44, %if.then38
  %27 = load i32, i32* %i34, align 4, !dbg !278
  %28 = load i32, i32* %n, align 4, !dbg !280
  %cmp40 = icmp slt i32 %27, %28, !dbg !281
  br i1 %cmp40, label %for.body42, label %for.end46, !dbg !282

for.body42:                                       ; preds = %for.cond39
  %29 = load i32, i32* %intVariable, align 4, !dbg !283
  %inc43 = add nsw i32 %29, 1, !dbg !283
  store i32 %inc43, i32* %intVariable, align 4, !dbg !283
  br label %for.inc44, !dbg !285

for.inc44:                                        ; preds = %for.body42
  %30 = load i32, i32* %i34, align 4, !dbg !286
  %inc45 = add nsw i32 %30, 1, !dbg !286
  store i32 %inc45, i32* %i34, align 4, !dbg !286
  br label %for.cond39, !dbg !287, !llvm.loop !288

for.end46:                                        ; preds = %for.cond39
  %31 = load i32, i32* %intVariable, align 4, !dbg !290
  call void @printIntLine(i32 %31), !dbg !291
  br label %if.end47, !dbg !292

if.end47:                                         ; preds = %for.end46, %for.body33
  br label %for.inc48, !dbg !293

for.inc48:                                        ; preds = %if.end47
  %32 = load i32, i32* %j, align 4, !dbg !294
  %inc49 = add nsw i32 %32, 1, !dbg !294
  store i32 %inc49, i32* %j, align 4, !dbg !294
  br label %for.cond30, !dbg !295, !llvm.loop !296

for.end50:                                        ; preds = %for.cond30
  ret void, !dbg !298
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
define dso_local void @goodB2G() #0 !dbg !299 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i34 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %k, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i8** %data, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !307
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !307
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !308
  store i8* %arraydecay, i8** %data, align 8, !dbg !309
  store i32 0, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !313
  %cmp = icmp slt i32 %1, 1, !dbg !315
  br i1 %cmp, label %for.body, label %for.end, !dbg !316

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 -1, i32* %connectSocket, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !327, metadata !DIExpression()), !dbg !328
  %2 = load i8*, i8** %data, align 8, !dbg !329
  %call = call i64 @strlen(i8* %2) #7, !dbg !330
  store i64 %call, i64* %dataLen, align 8, !dbg !328
  br label %do.body, !dbg !331

do.body:                                          ; preds = %for.body
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !332
  store i32 %call1, i32* %connectSocket, align 4, !dbg !334
  %3 = load i32, i32* %connectSocket, align 4, !dbg !335
  %cmp2 = icmp eq i32 %3, -1, !dbg !337
  br i1 %cmp2, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !339

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !341
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !341
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !342
  store i16 2, i16* %sin_family, align 4, !dbg !343
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !344
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !345
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !346
  store i32 %call3, i32* %s_addr, align 4, !dbg !347
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !348
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !349
  store i16 %call4, i16* %sin_port, align 2, !dbg !350
  %5 = load i32, i32* %connectSocket, align 4, !dbg !351
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !353
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !354
  %cmp6 = icmp eq i32 %call5, -1, !dbg !355
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !356

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !357

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !359
  %8 = load i8*, i8** %data, align 8, !dbg !360
  %9 = load i64, i64* %dataLen, align 8, !dbg !361
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !362
  %10 = load i64, i64* %dataLen, align 8, !dbg !363
  %sub = sub i64 100, %10, !dbg !364
  %sub9 = sub i64 %sub, 1, !dbg !365
  %mul = mul i64 1, %sub9, !dbg !366
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !367
  %conv = trunc i64 %call10 to i32, !dbg !367
  store i32 %conv, i32* %recvResult, align 4, !dbg !368
  %11 = load i32, i32* %recvResult, align 4, !dbg !369
  %cmp11 = icmp eq i32 %11, -1, !dbg !371
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !372

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !373
  %cmp13 = icmp eq i32 %12, 0, !dbg !374
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !375

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !376

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !378
  %14 = load i64, i64* %dataLen, align 8, !dbg !379
  %15 = load i32, i32* %recvResult, align 4, !dbg !380
  %conv17 = sext i32 %15 to i64, !dbg !380
  %div = udiv i64 %conv17, 1, !dbg !381
  %add = add i64 %14, %div, !dbg !382
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !378
  store i8 0, i8* %arrayidx, align 1, !dbg !383
  %16 = load i8*, i8** %data, align 8, !dbg !384
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !385
  store i8* %call18, i8** %replace, align 8, !dbg !386
  %17 = load i8*, i8** %replace, align 8, !dbg !387
  %tobool = icmp ne i8* %17, null, !dbg !387
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !389

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !390
  store i8 0, i8* %18, align 1, !dbg !392
  br label %if.end20, !dbg !393

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !394
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !395
  store i8* %call21, i8** %replace, align 8, !dbg !396
  %20 = load i8*, i8** %replace, align 8, !dbg !397
  %tobool22 = icmp ne i8* %20, null, !dbg !397
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !399

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %replace, align 8, !dbg !400
  store i8 0, i8* %21, align 1, !dbg !402
  br label %if.end24, !dbg !403

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !404

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %connectSocket, align 4, !dbg !405
  %cmp25 = icmp ne i32 %22, -1, !dbg !407
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !408

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !409
  %call28 = call i32 @close(i32 %23), !dbg !411
  br label %if.end29, !dbg !412

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %i, align 4, !dbg !414
  %inc = add nsw i32 %24, 1, !dbg !414
  store i32 %inc, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !418
  br label %for.cond30, !dbg !420

for.cond30:                                       ; preds = %for.inc52, %for.end
  %25 = load i32, i32* %k, align 4, !dbg !421
  %cmp31 = icmp slt i32 %25, 1, !dbg !423
  br i1 %cmp31, label %for.body33, label %for.end54, !dbg !424

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !425, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata i32* %n, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !431, metadata !DIExpression()), !dbg !432
  %26 = load i8*, i8** %data, align 8, !dbg !433
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !435
  %cmp36 = icmp eq i32 %call35, 1, !dbg !436
  br i1 %cmp36, label %if.then38, label %if.end51, !dbg !437

if.then38:                                        ; preds = %for.body33
  %27 = load i32, i32* %n, align 4, !dbg !438
  %cmp39 = icmp slt i32 %27, 10000, !dbg !441
  br i1 %cmp39, label %if.then41, label %if.end50, !dbg !442

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !443
  store i32 0, i32* %i34, align 4, !dbg !445
  br label %for.cond42, !dbg !447

for.cond42:                                       ; preds = %for.inc47, %if.then41
  %28 = load i32, i32* %i34, align 4, !dbg !448
  %29 = load i32, i32* %n, align 4, !dbg !450
  %cmp43 = icmp slt i32 %28, %29, !dbg !451
  br i1 %cmp43, label %for.body45, label %for.end49, !dbg !452

for.body45:                                       ; preds = %for.cond42
  %30 = load i32, i32* %intVariable, align 4, !dbg !453
  %inc46 = add nsw i32 %30, 1, !dbg !453
  store i32 %inc46, i32* %intVariable, align 4, !dbg !453
  br label %for.inc47, !dbg !455

for.inc47:                                        ; preds = %for.body45
  %31 = load i32, i32* %i34, align 4, !dbg !456
  %inc48 = add nsw i32 %31, 1, !dbg !456
  store i32 %inc48, i32* %i34, align 4, !dbg !456
  br label %for.cond42, !dbg !457, !llvm.loop !458

for.end49:                                        ; preds = %for.cond42
  %32 = load i32, i32* %intVariable, align 4, !dbg !460
  call void @printIntLine(i32 %32), !dbg !461
  br label %if.end50, !dbg !462

if.end50:                                         ; preds = %for.end49, %if.then38
  br label %if.end51, !dbg !463

if.end51:                                         ; preds = %if.end50, %for.body33
  br label %for.inc52, !dbg !464

for.inc52:                                        ; preds = %if.end51
  %33 = load i32, i32* %k, align 4, !dbg !465
  %inc53 = add nsw i32 %33, 1, !dbg !465
  store i32 %inc53, i32* %k, align 4, !dbg !465
  br label %for.cond30, !dbg !466, !llvm.loop !467

for.end54:                                        ; preds = %for.cond30
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !470 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %j, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i8** %data, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !478
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !478
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !479
  store i8* %arraydecay, i8** %data, align 8, !dbg !480
  store i32 0, i32* %h, align 4, !dbg !481
  br label %for.cond, !dbg !483

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !484
  %cmp = icmp slt i32 %1, 1, !dbg !486
  br i1 %cmp, label %for.body, label %for.end, !dbg !487

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !488
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !490
  br label %for.inc, !dbg !491

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !492
  %inc = add nsw i32 %3, 1, !dbg !492
  store i32 %inc, i32* %h, align 4, !dbg !492
  br label %for.cond, !dbg !493, !llvm.loop !494

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !496
  br label %for.cond1, !dbg !498

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !499
  %cmp2 = icmp slt i32 %4, 1, !dbg !501
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !502

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !503, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata i32* %n, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !509, metadata !DIExpression()), !dbg !510
  %5 = load i8*, i8** %data, align 8, !dbg !511
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !513
  %cmp5 = icmp eq i32 %call4, 1, !dbg !514
  br i1 %cmp5, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !516
  store i32 0, i32* %i, align 4, !dbg !518
  br label %for.cond6, !dbg !520

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !521
  %7 = load i32, i32* %n, align 4, !dbg !523
  %cmp7 = icmp slt i32 %6, %7, !dbg !524
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !525

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !526
  %inc9 = add nsw i32 %8, 1, !dbg !526
  store i32 %inc9, i32* %intVariable, align 4, !dbg !526
  br label %for.inc10, !dbg !528

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !529
  %inc11 = add nsw i32 %9, 1, !dbg !529
  store i32 %inc11, i32* %i, align 4, !dbg !529
  br label %for.cond6, !dbg !530, !llvm.loop !531

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !533
  call void @printIntLine(i32 %10), !dbg !534
  br label %if.end, !dbg !535

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !536

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !537
  %inc14 = add nsw i32 %11, 1, !dbg !537
  store i32 %inc14, i32* %j, align 4, !dbg !537
  br label %for.cond1, !dbg !538, !llvm.loop !539

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !541
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good() #0 !dbg !542 {
entry:
  call void @goodB2G(), !dbg !543
  call void @goodG2B(), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !546 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !551
  %0 = load i8*, i8** %line.addr, align 8, !dbg !552
  %cmp = icmp ne i8* %0, null, !dbg !554
  br i1 %cmp, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !556
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !558
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !560
  ret void, !dbg !561
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !562 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i8*, i8** %line.addr, align 8, !dbg !565
  %cmp = icmp ne i8* %0, null, !dbg !567
  br i1 %cmp, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !571
  br label %if.end, !dbg !572

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !574 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i32*, i32** %line.addr, align 8, !dbg !581
  %cmp = icmp ne i32* %0, null, !dbg !583
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !585
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !587
  br label %if.end, !dbg !588

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !589
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !590 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !598 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !604
  %conv = sext i16 %0 to i32, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !607 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !613
  %conv = fpext float %0 to double, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !616 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !625 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !636 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !639, metadata !DIExpression()), !dbg !640
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !644 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !649
  %conv = sext i8 %0 to i32, !dbg !649
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !652 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !657, metadata !DIExpression()), !dbg !661
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !662
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !663
  store i32 %0, i32* %arrayidx, align 4, !dbg !664
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !665
  store i32 0, i32* %arrayidx1, align 4, !dbg !666
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !667
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !670 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !673, metadata !DIExpression()), !dbg !674
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !675
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !676
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !678 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !683
  %conv = zext i8 %0 to i32, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !686 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !692
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !695 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !705, metadata !DIExpression()), !dbg !706
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !707
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !708
  %1 = load i32, i32* %intOne, align 4, !dbg !708
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !709
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !710
  %3 = load i32, i32* %intTwo, align 4, !dbg !710
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !713 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata i64* %i, metadata !721, metadata !DIExpression()), !dbg !722
  store i64 0, i64* %i, align 8, !dbg !723
  br label %for.cond, !dbg !725

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !726
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !728
  %cmp = icmp ult i64 %0, %1, !dbg !729
  br i1 %cmp, label %for.body, label %for.end, !dbg !730

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !731
  %3 = load i64, i64* %i, align 8, !dbg !733
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !731
  %4 = load i8, i8* %arrayidx, align 1, !dbg !731
  %conv = zext i8 %4 to i32, !dbg !731
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !734
  br label %for.inc, !dbg !735

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !736
  %inc = add i64 %5, 1, !dbg !736
  store i64 %inc, i64* %i, align 8, !dbg !736
  br label %for.cond, !dbg !737, !llvm.loop !738

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !740
  ret void, !dbg !741
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !742 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !747, metadata !DIExpression()), !dbg !748
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !751, metadata !DIExpression()), !dbg !752
  store i64 0, i64* %numWritten, align 8, !dbg !752
  br label %while.cond, !dbg !753

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !754
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !755
  %cmp = icmp ult i64 %0, %1, !dbg !756
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !757

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !758
  %2 = load i16*, i16** %call, align 8, !dbg !758
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !758
  %4 = load i64, i64* %numWritten, align 8, !dbg !758
  %mul = mul i64 2, %4, !dbg !758
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !758
  %5 = load i8, i8* %arrayidx, align 1, !dbg !758
  %conv = sext i8 %5 to i32, !dbg !758
  %idxprom = sext i32 %conv to i64, !dbg !758
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !758
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !758
  %conv2 = zext i16 %6 to i32, !dbg !758
  %and = and i32 %conv2, 4096, !dbg !758
  %tobool = icmp ne i32 %and, 0, !dbg !758
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !759

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !760
  %7 = load i16*, i16** %call3, align 8, !dbg !760
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !760
  %9 = load i64, i64* %numWritten, align 8, !dbg !760
  %mul4 = mul i64 2, %9, !dbg !760
  %add = add i64 %mul4, 1, !dbg !760
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !760
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !760
  %conv6 = sext i8 %10 to i32, !dbg !760
  %idxprom7 = sext i32 %conv6 to i64, !dbg !760
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !760
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !760
  %conv9 = zext i16 %11 to i32, !dbg !760
  %and10 = and i32 %conv9, 4096, !dbg !760
  %tobool11 = icmp ne i32 %and10, 0, !dbg !759
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !761
  br i1 %12, label %while.body, label %while.end, !dbg !753

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !762, metadata !DIExpression()), !dbg !764
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !765
  %14 = load i64, i64* %numWritten, align 8, !dbg !766
  %mul12 = mul i64 2, %14, !dbg !767
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !765
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !768
  %15 = load i32, i32* %byte, align 4, !dbg !769
  %conv15 = trunc i32 %15 to i8, !dbg !770
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !771
  %17 = load i64, i64* %numWritten, align 8, !dbg !772
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !771
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !773
  %18 = load i64, i64* %numWritten, align 8, !dbg !774
  %inc = add i64 %18, 1, !dbg !774
  store i64 %inc, i64* %numWritten, align 8, !dbg !774
  br label %while.cond, !dbg !753, !llvm.loop !775

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !777
  ret i64 %19, !dbg !778
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !779 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !782, metadata !DIExpression()), !dbg !783
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !784, metadata !DIExpression()), !dbg !785
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !786, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !788, metadata !DIExpression()), !dbg !789
  store i64 0, i64* %numWritten, align 8, !dbg !789
  br label %while.cond, !dbg !790

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !791
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !792
  %cmp = icmp ult i64 %0, %1, !dbg !793
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !794

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !795
  %3 = load i64, i64* %numWritten, align 8, !dbg !796
  %mul = mul i64 2, %3, !dbg !797
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !795
  %4 = load i32, i32* %arrayidx, align 4, !dbg !795
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !798
  %tobool = icmp ne i32 %call, 0, !dbg !798
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !799

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !800
  %6 = load i64, i64* %numWritten, align 8, !dbg !801
  %mul1 = mul i64 2, %6, !dbg !802
  %add = add i64 %mul1, 1, !dbg !803
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !800
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !800
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !804
  %tobool4 = icmp ne i32 %call3, 0, !dbg !799
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !805
  br i1 %8, label %while.body, label %while.end, !dbg !790

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !806, metadata !DIExpression()), !dbg !808
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !809
  %10 = load i64, i64* %numWritten, align 8, !dbg !810
  %mul5 = mul i64 2, %10, !dbg !811
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !809
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !812
  %11 = load i32, i32* %byte, align 4, !dbg !813
  %conv = trunc i32 %11 to i8, !dbg !814
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !815
  %13 = load i64, i64* %numWritten, align 8, !dbg !816
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !815
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !817
  %14 = load i64, i64* %numWritten, align 8, !dbg !818
  %inc = add i64 %14, 1, !dbg !818
  store i64 %inc, i64* %numWritten, align 8, !dbg !818
  br label %while.cond, !dbg !790, !llvm.loop !819

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !821
  ret i64 %15, !dbg !822
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !823 {
entry:
  ret i32 1, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !827 {
entry:
  ret i32 0, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !829 {
entry:
  %call = call i32 @rand() #8, !dbg !830
  %rem = srem i32 %call, 2, !dbg !831
  ret i32 %rem, !dbg !832
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !849 {
entry:
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !851 {
entry:
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !853 {
entry:
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !857 {
entry:
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !859 {
entry:
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !861 {
entry:
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !863 {
entry:
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !865 {
entry:
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !867 {
entry:
  ret void, !dbg !868
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "i", scope: !104, file: !45, line: 52, type: !23)
!109 = !DILocation(line: 52, column: 9, scope: !104)
!110 = !DILocalVariable(name: "j", scope: !104, file: !45, line: 52, type: !23)
!111 = !DILocation(line: 52, column: 11, scope: !104)
!112 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 53, type: !42)
!113 = !DILocation(line: 53, column: 12, scope: !104)
!114 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 54, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 100)
!118 = !DILocation(line: 54, column: 10, scope: !104)
!119 = !DILocation(line: 55, column: 12, scope: !104)
!120 = !DILocation(line: 55, column: 10, scope: !104)
!121 = !DILocation(line: 56, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !104, file: !45, line: 56, column: 5)
!123 = !DILocation(line: 56, column: 9, scope: !122)
!124 = !DILocation(line: 56, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !45, line: 56, column: 5)
!126 = !DILocation(line: 56, column: 18, scope: !125)
!127 = !DILocation(line: 56, column: 5, scope: !122)
!128 = !DILocalVariable(name: "recvResult", scope: !129, file: !45, line: 63, type: !23)
!129 = distinct !DILexicalBlock(scope: !130, file: !45, line: 58, column: 9)
!130 = distinct !DILexicalBlock(scope: !125, file: !45, line: 57, column: 5)
!131 = !DILocation(line: 63, column: 17, scope: !129)
!132 = !DILocalVariable(name: "service", scope: !129, file: !45, line: 64, type: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !134)
!134 = !{!135, !136, !142, !149}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !133, file: !60, line: 240, baseType: !94, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !133, file: !60, line: 241, baseType: !137, size: 16, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !139, line: 25, baseType: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !141, line: 40, baseType: !24)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !133, file: !60, line: 242, baseType: !143, size: 32, offset: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !143, file: !60, line: 33, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !139, line: 26, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !141, line: 42, baseType: !7)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !133, file: !60, line: 245, baseType: !150, size: 64, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DILocation(line: 64, column: 32, scope: !129)
!154 = !DILocalVariable(name: "replace", scope: !129, file: !45, line: 65, type: !42)
!155 = !DILocation(line: 65, column: 19, scope: !129)
!156 = !DILocalVariable(name: "connectSocket", scope: !129, file: !45, line: 66, type: !23)
!157 = !DILocation(line: 66, column: 20, scope: !129)
!158 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 67, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 46, baseType: !161)
!160 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!161 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!162 = !DILocation(line: 67, column: 20, scope: !129)
!163 = !DILocation(line: 67, column: 37, scope: !129)
!164 = !DILocation(line: 67, column: 30, scope: !129)
!165 = !DILocation(line: 68, column: 13, scope: !129)
!166 = !DILocation(line: 78, column: 33, scope: !167)
!167 = distinct !DILexicalBlock(scope: !129, file: !45, line: 69, column: 13)
!168 = !DILocation(line: 78, column: 31, scope: !167)
!169 = !DILocation(line: 79, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !45, line: 79, column: 21)
!171 = !DILocation(line: 79, column: 35, scope: !170)
!172 = !DILocation(line: 79, column: 21, scope: !167)
!173 = !DILocation(line: 81, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !45, line: 80, column: 17)
!175 = !DILocation(line: 83, column: 17, scope: !167)
!176 = !DILocation(line: 84, column: 25, scope: !167)
!177 = !DILocation(line: 84, column: 36, scope: !167)
!178 = !DILocation(line: 85, column: 43, scope: !167)
!179 = !DILocation(line: 85, column: 25, scope: !167)
!180 = !DILocation(line: 85, column: 34, scope: !167)
!181 = !DILocation(line: 85, column: 41, scope: !167)
!182 = !DILocation(line: 86, column: 36, scope: !167)
!183 = !DILocation(line: 86, column: 25, scope: !167)
!184 = !DILocation(line: 86, column: 34, scope: !167)
!185 = !DILocation(line: 87, column: 29, scope: !186)
!186 = distinct !DILexicalBlock(scope: !167, file: !45, line: 87, column: 21)
!187 = !DILocation(line: 87, column: 44, scope: !186)
!188 = !DILocation(line: 87, column: 21, scope: !186)
!189 = !DILocation(line: 87, column: 89, scope: !186)
!190 = !DILocation(line: 87, column: 21, scope: !167)
!191 = !DILocation(line: 89, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !45, line: 88, column: 17)
!193 = !DILocation(line: 94, column: 35, scope: !167)
!194 = !DILocation(line: 94, column: 59, scope: !167)
!195 = !DILocation(line: 94, column: 66, scope: !167)
!196 = !DILocation(line: 94, column: 64, scope: !167)
!197 = !DILocation(line: 94, column: 98, scope: !167)
!198 = !DILocation(line: 94, column: 96, scope: !167)
!199 = !DILocation(line: 94, column: 106, scope: !167)
!200 = !DILocation(line: 94, column: 89, scope: !167)
!201 = !DILocation(line: 94, column: 30, scope: !167)
!202 = !DILocation(line: 94, column: 28, scope: !167)
!203 = !DILocation(line: 95, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !167, file: !45, line: 95, column: 21)
!205 = !DILocation(line: 95, column: 32, scope: !204)
!206 = !DILocation(line: 95, column: 48, scope: !204)
!207 = !DILocation(line: 95, column: 51, scope: !204)
!208 = !DILocation(line: 95, column: 62, scope: !204)
!209 = !DILocation(line: 95, column: 21, scope: !167)
!210 = !DILocation(line: 97, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !45, line: 96, column: 17)
!212 = !DILocation(line: 100, column: 17, scope: !167)
!213 = !DILocation(line: 100, column: 22, scope: !167)
!214 = !DILocation(line: 100, column: 32, scope: !167)
!215 = !DILocation(line: 100, column: 43, scope: !167)
!216 = !DILocation(line: 100, column: 30, scope: !167)
!217 = !DILocation(line: 100, column: 59, scope: !167)
!218 = !DILocation(line: 102, column: 34, scope: !167)
!219 = !DILocation(line: 102, column: 27, scope: !167)
!220 = !DILocation(line: 102, column: 25, scope: !167)
!221 = !DILocation(line: 103, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !167, file: !45, line: 103, column: 21)
!223 = !DILocation(line: 103, column: 21, scope: !167)
!224 = !DILocation(line: 105, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 104, column: 17)
!226 = !DILocation(line: 105, column: 30, scope: !225)
!227 = !DILocation(line: 106, column: 17, scope: !225)
!228 = !DILocation(line: 107, column: 34, scope: !167)
!229 = !DILocation(line: 107, column: 27, scope: !167)
!230 = !DILocation(line: 107, column: 25, scope: !167)
!231 = !DILocation(line: 108, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !167, file: !45, line: 108, column: 21)
!233 = !DILocation(line: 108, column: 21, scope: !167)
!234 = !DILocation(line: 110, column: 22, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !45, line: 109, column: 17)
!236 = !DILocation(line: 110, column: 30, scope: !235)
!237 = !DILocation(line: 111, column: 17, scope: !235)
!238 = !DILocation(line: 112, column: 13, scope: !167)
!239 = !DILocation(line: 114, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !129, file: !45, line: 114, column: 17)
!241 = !DILocation(line: 114, column: 31, scope: !240)
!242 = !DILocation(line: 114, column: 17, scope: !129)
!243 = !DILocation(line: 116, column: 30, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !45, line: 115, column: 13)
!245 = !DILocation(line: 116, column: 17, scope: !244)
!246 = !DILocation(line: 117, column: 13, scope: !244)
!247 = !DILocation(line: 125, column: 5, scope: !130)
!248 = !DILocation(line: 56, column: 24, scope: !125)
!249 = !DILocation(line: 56, column: 5, scope: !125)
!250 = distinct !{!250, !127, !251, !252}
!251 = !DILocation(line: 125, column: 5, scope: !122)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !DILocation(line: 126, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !104, file: !45, line: 126, column: 5)
!255 = !DILocation(line: 126, column: 9, scope: !254)
!256 = !DILocation(line: 126, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !45, line: 126, column: 5)
!258 = !DILocation(line: 126, column: 18, scope: !257)
!259 = !DILocation(line: 126, column: 5, scope: !254)
!260 = !DILocalVariable(name: "i", scope: !261, file: !45, line: 129, type: !23)
!261 = distinct !DILexicalBlock(scope: !262, file: !45, line: 128, column: 9)
!262 = distinct !DILexicalBlock(scope: !257, file: !45, line: 127, column: 5)
!263 = !DILocation(line: 129, column: 17, scope: !261)
!264 = !DILocalVariable(name: "n", scope: !261, file: !45, line: 129, type: !23)
!265 = !DILocation(line: 129, column: 20, scope: !261)
!266 = !DILocalVariable(name: "intVariable", scope: !261, file: !45, line: 129, type: !23)
!267 = !DILocation(line: 129, column: 23, scope: !261)
!268 = !DILocation(line: 130, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !45, line: 130, column: 17)
!270 = !DILocation(line: 130, column: 17, scope: !269)
!271 = !DILocation(line: 130, column: 40, scope: !269)
!272 = !DILocation(line: 130, column: 17, scope: !261)
!273 = !DILocation(line: 133, column: 29, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !45, line: 131, column: 13)
!275 = !DILocation(line: 134, column: 24, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !45, line: 134, column: 17)
!277 = !DILocation(line: 134, column: 22, scope: !276)
!278 = !DILocation(line: 134, column: 29, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !45, line: 134, column: 17)
!280 = !DILocation(line: 134, column: 33, scope: !279)
!281 = !DILocation(line: 134, column: 31, scope: !279)
!282 = !DILocation(line: 134, column: 17, scope: !276)
!283 = !DILocation(line: 137, column: 32, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !45, line: 135, column: 17)
!285 = !DILocation(line: 138, column: 17, scope: !284)
!286 = !DILocation(line: 134, column: 37, scope: !279)
!287 = !DILocation(line: 134, column: 17, scope: !279)
!288 = distinct !{!288, !282, !289, !252}
!289 = !DILocation(line: 138, column: 17, scope: !276)
!290 = !DILocation(line: 139, column: 30, scope: !274)
!291 = !DILocation(line: 139, column: 17, scope: !274)
!292 = !DILocation(line: 140, column: 13, scope: !274)
!293 = !DILocation(line: 142, column: 5, scope: !262)
!294 = !DILocation(line: 126, column: 24, scope: !257)
!295 = !DILocation(line: 126, column: 5, scope: !257)
!296 = distinct !{!296, !259, !297, !252}
!297 = !DILocation(line: 142, column: 5, scope: !254)
!298 = !DILocation(line: 143, column: 1, scope: !104)
!299 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 150, type: !105, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!300 = !DILocalVariable(name: "i", scope: !299, file: !45, line: 152, type: !23)
!301 = !DILocation(line: 152, column: 9, scope: !299)
!302 = !DILocalVariable(name: "k", scope: !299, file: !45, line: 152, type: !23)
!303 = !DILocation(line: 152, column: 11, scope: !299)
!304 = !DILocalVariable(name: "data", scope: !299, file: !45, line: 153, type: !42)
!305 = !DILocation(line: 153, column: 12, scope: !299)
!306 = !DILocalVariable(name: "dataBuffer", scope: !299, file: !45, line: 154, type: !115)
!307 = !DILocation(line: 154, column: 10, scope: !299)
!308 = !DILocation(line: 155, column: 12, scope: !299)
!309 = !DILocation(line: 155, column: 10, scope: !299)
!310 = !DILocation(line: 156, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !299, file: !45, line: 156, column: 5)
!312 = !DILocation(line: 156, column: 9, scope: !311)
!313 = !DILocation(line: 156, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !45, line: 156, column: 5)
!315 = !DILocation(line: 156, column: 18, scope: !314)
!316 = !DILocation(line: 156, column: 5, scope: !311)
!317 = !DILocalVariable(name: "recvResult", scope: !318, file: !45, line: 163, type: !23)
!318 = distinct !DILexicalBlock(scope: !319, file: !45, line: 158, column: 9)
!319 = distinct !DILexicalBlock(scope: !314, file: !45, line: 157, column: 5)
!320 = !DILocation(line: 163, column: 17, scope: !318)
!321 = !DILocalVariable(name: "service", scope: !318, file: !45, line: 164, type: !133)
!322 = !DILocation(line: 164, column: 32, scope: !318)
!323 = !DILocalVariable(name: "replace", scope: !318, file: !45, line: 165, type: !42)
!324 = !DILocation(line: 165, column: 19, scope: !318)
!325 = !DILocalVariable(name: "connectSocket", scope: !318, file: !45, line: 166, type: !23)
!326 = !DILocation(line: 166, column: 20, scope: !318)
!327 = !DILocalVariable(name: "dataLen", scope: !318, file: !45, line: 167, type: !159)
!328 = !DILocation(line: 167, column: 20, scope: !318)
!329 = !DILocation(line: 167, column: 37, scope: !318)
!330 = !DILocation(line: 167, column: 30, scope: !318)
!331 = !DILocation(line: 168, column: 13, scope: !318)
!332 = !DILocation(line: 178, column: 33, scope: !333)
!333 = distinct !DILexicalBlock(scope: !318, file: !45, line: 169, column: 13)
!334 = !DILocation(line: 178, column: 31, scope: !333)
!335 = !DILocation(line: 179, column: 21, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !45, line: 179, column: 21)
!337 = !DILocation(line: 179, column: 35, scope: !336)
!338 = !DILocation(line: 179, column: 21, scope: !333)
!339 = !DILocation(line: 181, column: 21, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !45, line: 180, column: 17)
!341 = !DILocation(line: 183, column: 17, scope: !333)
!342 = !DILocation(line: 184, column: 25, scope: !333)
!343 = !DILocation(line: 184, column: 36, scope: !333)
!344 = !DILocation(line: 185, column: 43, scope: !333)
!345 = !DILocation(line: 185, column: 25, scope: !333)
!346 = !DILocation(line: 185, column: 34, scope: !333)
!347 = !DILocation(line: 185, column: 41, scope: !333)
!348 = !DILocation(line: 186, column: 36, scope: !333)
!349 = !DILocation(line: 186, column: 25, scope: !333)
!350 = !DILocation(line: 186, column: 34, scope: !333)
!351 = !DILocation(line: 187, column: 29, scope: !352)
!352 = distinct !DILexicalBlock(scope: !333, file: !45, line: 187, column: 21)
!353 = !DILocation(line: 187, column: 44, scope: !352)
!354 = !DILocation(line: 187, column: 21, scope: !352)
!355 = !DILocation(line: 187, column: 89, scope: !352)
!356 = !DILocation(line: 187, column: 21, scope: !333)
!357 = !DILocation(line: 189, column: 21, scope: !358)
!358 = distinct !DILexicalBlock(scope: !352, file: !45, line: 188, column: 17)
!359 = !DILocation(line: 194, column: 35, scope: !333)
!360 = !DILocation(line: 194, column: 59, scope: !333)
!361 = !DILocation(line: 194, column: 66, scope: !333)
!362 = !DILocation(line: 194, column: 64, scope: !333)
!363 = !DILocation(line: 194, column: 98, scope: !333)
!364 = !DILocation(line: 194, column: 96, scope: !333)
!365 = !DILocation(line: 194, column: 106, scope: !333)
!366 = !DILocation(line: 194, column: 89, scope: !333)
!367 = !DILocation(line: 194, column: 30, scope: !333)
!368 = !DILocation(line: 194, column: 28, scope: !333)
!369 = !DILocation(line: 195, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !333, file: !45, line: 195, column: 21)
!371 = !DILocation(line: 195, column: 32, scope: !370)
!372 = !DILocation(line: 195, column: 48, scope: !370)
!373 = !DILocation(line: 195, column: 51, scope: !370)
!374 = !DILocation(line: 195, column: 62, scope: !370)
!375 = !DILocation(line: 195, column: 21, scope: !333)
!376 = !DILocation(line: 197, column: 21, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !45, line: 196, column: 17)
!378 = !DILocation(line: 200, column: 17, scope: !333)
!379 = !DILocation(line: 200, column: 22, scope: !333)
!380 = !DILocation(line: 200, column: 32, scope: !333)
!381 = !DILocation(line: 200, column: 43, scope: !333)
!382 = !DILocation(line: 200, column: 30, scope: !333)
!383 = !DILocation(line: 200, column: 59, scope: !333)
!384 = !DILocation(line: 202, column: 34, scope: !333)
!385 = !DILocation(line: 202, column: 27, scope: !333)
!386 = !DILocation(line: 202, column: 25, scope: !333)
!387 = !DILocation(line: 203, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !333, file: !45, line: 203, column: 21)
!389 = !DILocation(line: 203, column: 21, scope: !333)
!390 = !DILocation(line: 205, column: 22, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !45, line: 204, column: 17)
!392 = !DILocation(line: 205, column: 30, scope: !391)
!393 = !DILocation(line: 206, column: 17, scope: !391)
!394 = !DILocation(line: 207, column: 34, scope: !333)
!395 = !DILocation(line: 207, column: 27, scope: !333)
!396 = !DILocation(line: 207, column: 25, scope: !333)
!397 = !DILocation(line: 208, column: 21, scope: !398)
!398 = distinct !DILexicalBlock(scope: !333, file: !45, line: 208, column: 21)
!399 = !DILocation(line: 208, column: 21, scope: !333)
!400 = !DILocation(line: 210, column: 22, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !45, line: 209, column: 17)
!402 = !DILocation(line: 210, column: 30, scope: !401)
!403 = !DILocation(line: 211, column: 17, scope: !401)
!404 = !DILocation(line: 212, column: 13, scope: !333)
!405 = !DILocation(line: 214, column: 17, scope: !406)
!406 = distinct !DILexicalBlock(scope: !318, file: !45, line: 214, column: 17)
!407 = !DILocation(line: 214, column: 31, scope: !406)
!408 = !DILocation(line: 214, column: 17, scope: !318)
!409 = !DILocation(line: 216, column: 30, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !45, line: 215, column: 13)
!411 = !DILocation(line: 216, column: 17, scope: !410)
!412 = !DILocation(line: 217, column: 13, scope: !410)
!413 = !DILocation(line: 225, column: 5, scope: !319)
!414 = !DILocation(line: 156, column: 24, scope: !314)
!415 = !DILocation(line: 156, column: 5, scope: !314)
!416 = distinct !{!416, !316, !417, !252}
!417 = !DILocation(line: 225, column: 5, scope: !311)
!418 = !DILocation(line: 226, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !299, file: !45, line: 226, column: 5)
!420 = !DILocation(line: 226, column: 9, scope: !419)
!421 = !DILocation(line: 226, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !45, line: 226, column: 5)
!423 = !DILocation(line: 226, column: 18, scope: !422)
!424 = !DILocation(line: 226, column: 5, scope: !419)
!425 = !DILocalVariable(name: "i", scope: !426, file: !45, line: 229, type: !23)
!426 = distinct !DILexicalBlock(scope: !427, file: !45, line: 228, column: 9)
!427 = distinct !DILexicalBlock(scope: !422, file: !45, line: 227, column: 5)
!428 = !DILocation(line: 229, column: 17, scope: !426)
!429 = !DILocalVariable(name: "n", scope: !426, file: !45, line: 229, type: !23)
!430 = !DILocation(line: 229, column: 20, scope: !426)
!431 = !DILocalVariable(name: "intVariable", scope: !426, file: !45, line: 229, type: !23)
!432 = !DILocation(line: 229, column: 23, scope: !426)
!433 = !DILocation(line: 230, column: 24, scope: !434)
!434 = distinct !DILexicalBlock(scope: !426, file: !45, line: 230, column: 17)
!435 = !DILocation(line: 230, column: 17, scope: !434)
!436 = !DILocation(line: 230, column: 40, scope: !434)
!437 = !DILocation(line: 230, column: 17, scope: !426)
!438 = !DILocation(line: 233, column: 21, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !45, line: 233, column: 21)
!440 = distinct !DILexicalBlock(scope: !434, file: !45, line: 231, column: 13)
!441 = !DILocation(line: 233, column: 23, scope: !439)
!442 = !DILocation(line: 233, column: 21, scope: !440)
!443 = !DILocation(line: 235, column: 33, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !45, line: 234, column: 17)
!445 = !DILocation(line: 236, column: 28, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !45, line: 236, column: 21)
!447 = !DILocation(line: 236, column: 26, scope: !446)
!448 = !DILocation(line: 236, column: 33, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !45, line: 236, column: 21)
!450 = !DILocation(line: 236, column: 37, scope: !449)
!451 = !DILocation(line: 236, column: 35, scope: !449)
!452 = !DILocation(line: 236, column: 21, scope: !446)
!453 = !DILocation(line: 239, column: 36, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !45, line: 237, column: 21)
!455 = !DILocation(line: 240, column: 21, scope: !454)
!456 = !DILocation(line: 236, column: 41, scope: !449)
!457 = !DILocation(line: 236, column: 21, scope: !449)
!458 = distinct !{!458, !452, !459, !252}
!459 = !DILocation(line: 240, column: 21, scope: !446)
!460 = !DILocation(line: 241, column: 34, scope: !444)
!461 = !DILocation(line: 241, column: 21, scope: !444)
!462 = !DILocation(line: 242, column: 17, scope: !444)
!463 = !DILocation(line: 243, column: 13, scope: !440)
!464 = !DILocation(line: 245, column: 5, scope: !427)
!465 = !DILocation(line: 226, column: 24, scope: !422)
!466 = !DILocation(line: 226, column: 5, scope: !422)
!467 = distinct !{!467, !424, !468, !252}
!468 = !DILocation(line: 245, column: 5, scope: !419)
!469 = !DILocation(line: 246, column: 1, scope: !299)
!470 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 249, type: !105, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!471 = !DILocalVariable(name: "h", scope: !470, file: !45, line: 251, type: !23)
!472 = !DILocation(line: 251, column: 9, scope: !470)
!473 = !DILocalVariable(name: "j", scope: !470, file: !45, line: 251, type: !23)
!474 = !DILocation(line: 251, column: 11, scope: !470)
!475 = !DILocalVariable(name: "data", scope: !470, file: !45, line: 252, type: !42)
!476 = !DILocation(line: 252, column: 12, scope: !470)
!477 = !DILocalVariable(name: "dataBuffer", scope: !470, file: !45, line: 253, type: !115)
!478 = !DILocation(line: 253, column: 10, scope: !470)
!479 = !DILocation(line: 254, column: 12, scope: !470)
!480 = !DILocation(line: 254, column: 10, scope: !470)
!481 = !DILocation(line: 255, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !45, line: 255, column: 5)
!483 = !DILocation(line: 255, column: 9, scope: !482)
!484 = !DILocation(line: 255, column: 16, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !45, line: 255, column: 5)
!486 = !DILocation(line: 255, column: 18, scope: !485)
!487 = !DILocation(line: 255, column: 5, scope: !482)
!488 = !DILocation(line: 258, column: 16, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !45, line: 256, column: 5)
!490 = !DILocation(line: 258, column: 9, scope: !489)
!491 = !DILocation(line: 259, column: 5, scope: !489)
!492 = !DILocation(line: 255, column: 24, scope: !485)
!493 = !DILocation(line: 255, column: 5, scope: !485)
!494 = distinct !{!494, !487, !495, !252}
!495 = !DILocation(line: 259, column: 5, scope: !482)
!496 = !DILocation(line: 260, column: 11, scope: !497)
!497 = distinct !DILexicalBlock(scope: !470, file: !45, line: 260, column: 5)
!498 = !DILocation(line: 260, column: 9, scope: !497)
!499 = !DILocation(line: 260, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !45, line: 260, column: 5)
!501 = !DILocation(line: 260, column: 18, scope: !500)
!502 = !DILocation(line: 260, column: 5, scope: !497)
!503 = !DILocalVariable(name: "i", scope: !504, file: !45, line: 263, type: !23)
!504 = distinct !DILexicalBlock(scope: !505, file: !45, line: 262, column: 9)
!505 = distinct !DILexicalBlock(scope: !500, file: !45, line: 261, column: 5)
!506 = !DILocation(line: 263, column: 17, scope: !504)
!507 = !DILocalVariable(name: "n", scope: !504, file: !45, line: 263, type: !23)
!508 = !DILocation(line: 263, column: 20, scope: !504)
!509 = !DILocalVariable(name: "intVariable", scope: !504, file: !45, line: 263, type: !23)
!510 = !DILocation(line: 263, column: 23, scope: !504)
!511 = !DILocation(line: 264, column: 24, scope: !512)
!512 = distinct !DILexicalBlock(scope: !504, file: !45, line: 264, column: 17)
!513 = !DILocation(line: 264, column: 17, scope: !512)
!514 = !DILocation(line: 264, column: 40, scope: !512)
!515 = !DILocation(line: 264, column: 17, scope: !504)
!516 = !DILocation(line: 267, column: 29, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !45, line: 265, column: 13)
!518 = !DILocation(line: 268, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !45, line: 268, column: 17)
!520 = !DILocation(line: 268, column: 22, scope: !519)
!521 = !DILocation(line: 268, column: 29, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !45, line: 268, column: 17)
!523 = !DILocation(line: 268, column: 33, scope: !522)
!524 = !DILocation(line: 268, column: 31, scope: !522)
!525 = !DILocation(line: 268, column: 17, scope: !519)
!526 = !DILocation(line: 271, column: 32, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !45, line: 269, column: 17)
!528 = !DILocation(line: 272, column: 17, scope: !527)
!529 = !DILocation(line: 268, column: 37, scope: !522)
!530 = !DILocation(line: 268, column: 17, scope: !522)
!531 = distinct !{!531, !525, !532, !252}
!532 = !DILocation(line: 272, column: 17, scope: !519)
!533 = !DILocation(line: 273, column: 30, scope: !517)
!534 = !DILocation(line: 273, column: 17, scope: !517)
!535 = !DILocation(line: 274, column: 13, scope: !517)
!536 = !DILocation(line: 276, column: 5, scope: !505)
!537 = !DILocation(line: 260, column: 24, scope: !500)
!538 = !DILocation(line: 260, column: 5, scope: !500)
!539 = distinct !{!539, !502, !540, !252}
!540 = !DILocation(line: 276, column: 5, scope: !497)
!541 = !DILocation(line: 277, column: 1, scope: !470)
!542 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good", scope: !45, file: !45, line: 279, type: !105, scopeLine: 280, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!543 = !DILocation(line: 281, column: 5, scope: !542)
!544 = !DILocation(line: 282, column: 5, scope: !542)
!545 = !DILocation(line: 283, column: 1, scope: !542)
!546 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !547, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !42}
!549 = !DILocalVariable(name: "line", arg: 1, scope: !546, file: !3, line: 11, type: !42)
!550 = !DILocation(line: 11, column: 25, scope: !546)
!551 = !DILocation(line: 13, column: 1, scope: !546)
!552 = !DILocation(line: 14, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 14, column: 8)
!554 = !DILocation(line: 14, column: 13, scope: !553)
!555 = !DILocation(line: 14, column: 8, scope: !546)
!556 = !DILocation(line: 16, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 15, column: 5)
!558 = !DILocation(line: 16, column: 9, scope: !557)
!559 = !DILocation(line: 17, column: 5, scope: !557)
!560 = !DILocation(line: 18, column: 5, scope: !546)
!561 = !DILocation(line: 19, column: 1, scope: !546)
!562 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !547, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!563 = !DILocalVariable(name: "line", arg: 1, scope: !562, file: !3, line: 20, type: !42)
!564 = !DILocation(line: 20, column: 29, scope: !562)
!565 = !DILocation(line: 22, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 22, column: 8)
!567 = !DILocation(line: 22, column: 13, scope: !566)
!568 = !DILocation(line: 22, column: 8, scope: !562)
!569 = !DILocation(line: 24, column: 24, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 23, column: 5)
!571 = !DILocation(line: 24, column: 9, scope: !570)
!572 = !DILocation(line: 25, column: 5, scope: !570)
!573 = !DILocation(line: 26, column: 1, scope: !562)
!574 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !575, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !160, line: 74, baseType: !23)
!579 = !DILocalVariable(name: "line", arg: 1, scope: !574, file: !3, line: 27, type: !577)
!580 = !DILocation(line: 27, column: 29, scope: !574)
!581 = !DILocation(line: 29, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 29, column: 8)
!583 = !DILocation(line: 29, column: 13, scope: !582)
!584 = !DILocation(line: 29, column: 8, scope: !574)
!585 = !DILocation(line: 31, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 30, column: 5)
!587 = !DILocation(line: 31, column: 9, scope: !586)
!588 = !DILocation(line: 32, column: 5, scope: !586)
!589 = !DILocation(line: 33, column: 1, scope: !574)
!590 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !591, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !23}
!593 = !DILocalVariable(name: "intNumber", arg: 1, scope: !590, file: !3, line: 35, type: !23)
!594 = !DILocation(line: 35, column: 24, scope: !590)
!595 = !DILocation(line: 37, column: 20, scope: !590)
!596 = !DILocation(line: 37, column: 5, scope: !590)
!597 = !DILocation(line: 38, column: 1, scope: !590)
!598 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !599, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!602 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !598, file: !3, line: 40, type: !601)
!603 = !DILocation(line: 40, column: 28, scope: !598)
!604 = !DILocation(line: 42, column: 21, scope: !598)
!605 = !DILocation(line: 42, column: 5, scope: !598)
!606 = !DILocation(line: 43, column: 1, scope: !598)
!607 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !608, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!611 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !607, file: !3, line: 45, type: !610)
!612 = !DILocation(line: 45, column: 28, scope: !607)
!613 = !DILocation(line: 47, column: 20, scope: !607)
!614 = !DILocation(line: 47, column: 5, scope: !607)
!615 = !DILocation(line: 48, column: 1, scope: !607)
!616 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !617, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!620 = !DILocalVariable(name: "longNumber", arg: 1, scope: !616, file: !3, line: 50, type: !619)
!621 = !DILocation(line: 50, column: 26, scope: !616)
!622 = !DILocation(line: 52, column: 21, scope: !616)
!623 = !DILocation(line: 52, column: 5, scope: !616)
!624 = !DILocation(line: 53, column: 1, scope: !616)
!625 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !626, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !629, line: 27, baseType: !630)
!629 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !141, line: 44, baseType: !619)
!631 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !625, file: !3, line: 55, type: !628)
!632 = !DILocation(line: 55, column: 33, scope: !625)
!633 = !DILocation(line: 57, column: 29, scope: !625)
!634 = !DILocation(line: 57, column: 5, scope: !625)
!635 = !DILocation(line: 58, column: 1, scope: !625)
!636 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !637, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !159}
!639 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !636, file: !3, line: 60, type: !159)
!640 = !DILocation(line: 60, column: 29, scope: !636)
!641 = !DILocation(line: 62, column: 21, scope: !636)
!642 = !DILocation(line: 62, column: 5, scope: !636)
!643 = !DILocation(line: 63, column: 1, scope: !636)
!644 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !645, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !43}
!647 = !DILocalVariable(name: "charHex", arg: 1, scope: !644, file: !3, line: 65, type: !43)
!648 = !DILocation(line: 65, column: 29, scope: !644)
!649 = !DILocation(line: 67, column: 22, scope: !644)
!650 = !DILocation(line: 67, column: 5, scope: !644)
!651 = !DILocation(line: 68, column: 1, scope: !644)
!652 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !653, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !578}
!655 = !DILocalVariable(name: "wideChar", arg: 1, scope: !652, file: !3, line: 70, type: !578)
!656 = !DILocation(line: 70, column: 29, scope: !652)
!657 = !DILocalVariable(name: "s", scope: !652, file: !3, line: 74, type: !658)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 2)
!661 = !DILocation(line: 74, column: 13, scope: !652)
!662 = !DILocation(line: 75, column: 16, scope: !652)
!663 = !DILocation(line: 75, column: 9, scope: !652)
!664 = !DILocation(line: 75, column: 14, scope: !652)
!665 = !DILocation(line: 76, column: 9, scope: !652)
!666 = !DILocation(line: 76, column: 14, scope: !652)
!667 = !DILocation(line: 77, column: 21, scope: !652)
!668 = !DILocation(line: 77, column: 5, scope: !652)
!669 = !DILocation(line: 78, column: 1, scope: !652)
!670 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !671, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !7}
!673 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !670, file: !3, line: 80, type: !7)
!674 = !DILocation(line: 80, column: 33, scope: !670)
!675 = !DILocation(line: 82, column: 20, scope: !670)
!676 = !DILocation(line: 82, column: 5, scope: !670)
!677 = !DILocation(line: 83, column: 1, scope: !670)
!678 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !679, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !25}
!681 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !678, file: !3, line: 85, type: !25)
!682 = !DILocation(line: 85, column: 45, scope: !678)
!683 = !DILocation(line: 87, column: 22, scope: !678)
!684 = !DILocation(line: 87, column: 5, scope: !678)
!685 = !DILocation(line: 88, column: 1, scope: !678)
!686 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !687, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689}
!689 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!690 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !686, file: !3, line: 90, type: !689)
!691 = !DILocation(line: 90, column: 29, scope: !686)
!692 = !DILocation(line: 92, column: 20, scope: !686)
!693 = !DILocation(line: 92, column: 5, scope: !686)
!694 = !DILocation(line: 93, column: 1, scope: !686)
!695 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !696, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !700, line: 100, baseType: !701)
!700 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/source_code")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !700, line: 96, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !701, file: !700, line: 98, baseType: !23, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !701, file: !700, line: 99, baseType: !23, size: 32, offset: 32)
!705 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !695, file: !3, line: 95, type: !698)
!706 = !DILocation(line: 95, column: 40, scope: !695)
!707 = !DILocation(line: 97, column: 26, scope: !695)
!708 = !DILocation(line: 97, column: 47, scope: !695)
!709 = !DILocation(line: 97, column: 55, scope: !695)
!710 = !DILocation(line: 97, column: 76, scope: !695)
!711 = !DILocation(line: 97, column: 5, scope: !695)
!712 = !DILocation(line: 98, column: 1, scope: !695)
!713 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !714, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716, !159}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!717 = !DILocalVariable(name: "bytes", arg: 1, scope: !713, file: !3, line: 100, type: !716)
!718 = !DILocation(line: 100, column: 38, scope: !713)
!719 = !DILocalVariable(name: "numBytes", arg: 2, scope: !713, file: !3, line: 100, type: !159)
!720 = !DILocation(line: 100, column: 52, scope: !713)
!721 = !DILocalVariable(name: "i", scope: !713, file: !3, line: 102, type: !159)
!722 = !DILocation(line: 102, column: 12, scope: !713)
!723 = !DILocation(line: 103, column: 12, scope: !724)
!724 = distinct !DILexicalBlock(scope: !713, file: !3, line: 103, column: 5)
!725 = !DILocation(line: 103, column: 10, scope: !724)
!726 = !DILocation(line: 103, column: 17, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 103, column: 5)
!728 = !DILocation(line: 103, column: 21, scope: !727)
!729 = !DILocation(line: 103, column: 19, scope: !727)
!730 = !DILocation(line: 103, column: 5, scope: !724)
!731 = !DILocation(line: 105, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !3, line: 104, column: 5)
!733 = !DILocation(line: 105, column: 30, scope: !732)
!734 = !DILocation(line: 105, column: 9, scope: !732)
!735 = !DILocation(line: 106, column: 5, scope: !732)
!736 = !DILocation(line: 103, column: 31, scope: !727)
!737 = !DILocation(line: 103, column: 5, scope: !727)
!738 = distinct !{!738, !730, !739, !252}
!739 = !DILocation(line: 106, column: 5, scope: !724)
!740 = !DILocation(line: 107, column: 5, scope: !713)
!741 = !DILocation(line: 108, column: 1, scope: !713)
!742 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !743, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!743 = !DISubroutineType(types: !744)
!744 = !{!159, !716, !159, !42}
!745 = !DILocalVariable(name: "bytes", arg: 1, scope: !742, file: !3, line: 113, type: !716)
!746 = !DILocation(line: 113, column: 39, scope: !742)
!747 = !DILocalVariable(name: "numBytes", arg: 2, scope: !742, file: !3, line: 113, type: !159)
!748 = !DILocation(line: 113, column: 53, scope: !742)
!749 = !DILocalVariable(name: "hex", arg: 3, scope: !742, file: !3, line: 113, type: !42)
!750 = !DILocation(line: 113, column: 71, scope: !742)
!751 = !DILocalVariable(name: "numWritten", scope: !742, file: !3, line: 115, type: !159)
!752 = !DILocation(line: 115, column: 12, scope: !742)
!753 = !DILocation(line: 121, column: 5, scope: !742)
!754 = !DILocation(line: 121, column: 12, scope: !742)
!755 = !DILocation(line: 121, column: 25, scope: !742)
!756 = !DILocation(line: 121, column: 23, scope: !742)
!757 = !DILocation(line: 121, column: 34, scope: !742)
!758 = !DILocation(line: 121, column: 37, scope: !742)
!759 = !DILocation(line: 121, column: 67, scope: !742)
!760 = !DILocation(line: 121, column: 70, scope: !742)
!761 = !DILocation(line: 0, scope: !742)
!762 = !DILocalVariable(name: "byte", scope: !763, file: !3, line: 123, type: !23)
!763 = distinct !DILexicalBlock(scope: !742, file: !3, line: 122, column: 5)
!764 = !DILocation(line: 123, column: 13, scope: !763)
!765 = !DILocation(line: 124, column: 17, scope: !763)
!766 = !DILocation(line: 124, column: 25, scope: !763)
!767 = !DILocation(line: 124, column: 23, scope: !763)
!768 = !DILocation(line: 124, column: 9, scope: !763)
!769 = !DILocation(line: 125, column: 45, scope: !763)
!770 = !DILocation(line: 125, column: 29, scope: !763)
!771 = !DILocation(line: 125, column: 9, scope: !763)
!772 = !DILocation(line: 125, column: 15, scope: !763)
!773 = !DILocation(line: 125, column: 27, scope: !763)
!774 = !DILocation(line: 126, column: 9, scope: !763)
!775 = distinct !{!775, !753, !776, !252}
!776 = !DILocation(line: 127, column: 5, scope: !742)
!777 = !DILocation(line: 129, column: 12, scope: !742)
!778 = !DILocation(line: 129, column: 5, scope: !742)
!779 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !780, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!780 = !DISubroutineType(types: !781)
!781 = !{!159, !716, !159, !577}
!782 = !DILocalVariable(name: "bytes", arg: 1, scope: !779, file: !3, line: 135, type: !716)
!783 = !DILocation(line: 135, column: 41, scope: !779)
!784 = !DILocalVariable(name: "numBytes", arg: 2, scope: !779, file: !3, line: 135, type: !159)
!785 = !DILocation(line: 135, column: 55, scope: !779)
!786 = !DILocalVariable(name: "hex", arg: 3, scope: !779, file: !3, line: 135, type: !577)
!787 = !DILocation(line: 135, column: 76, scope: !779)
!788 = !DILocalVariable(name: "numWritten", scope: !779, file: !3, line: 137, type: !159)
!789 = !DILocation(line: 137, column: 12, scope: !779)
!790 = !DILocation(line: 143, column: 5, scope: !779)
!791 = !DILocation(line: 143, column: 12, scope: !779)
!792 = !DILocation(line: 143, column: 25, scope: !779)
!793 = !DILocation(line: 143, column: 23, scope: !779)
!794 = !DILocation(line: 143, column: 34, scope: !779)
!795 = !DILocation(line: 143, column: 47, scope: !779)
!796 = !DILocation(line: 143, column: 55, scope: !779)
!797 = !DILocation(line: 143, column: 53, scope: !779)
!798 = !DILocation(line: 143, column: 37, scope: !779)
!799 = !DILocation(line: 143, column: 68, scope: !779)
!800 = !DILocation(line: 143, column: 81, scope: !779)
!801 = !DILocation(line: 143, column: 89, scope: !779)
!802 = !DILocation(line: 143, column: 87, scope: !779)
!803 = !DILocation(line: 143, column: 100, scope: !779)
!804 = !DILocation(line: 143, column: 71, scope: !779)
!805 = !DILocation(line: 0, scope: !779)
!806 = !DILocalVariable(name: "byte", scope: !807, file: !3, line: 145, type: !23)
!807 = distinct !DILexicalBlock(scope: !779, file: !3, line: 144, column: 5)
!808 = !DILocation(line: 145, column: 13, scope: !807)
!809 = !DILocation(line: 146, column: 18, scope: !807)
!810 = !DILocation(line: 146, column: 26, scope: !807)
!811 = !DILocation(line: 146, column: 24, scope: !807)
!812 = !DILocation(line: 146, column: 9, scope: !807)
!813 = !DILocation(line: 147, column: 45, scope: !807)
!814 = !DILocation(line: 147, column: 29, scope: !807)
!815 = !DILocation(line: 147, column: 9, scope: !807)
!816 = !DILocation(line: 147, column: 15, scope: !807)
!817 = !DILocation(line: 147, column: 27, scope: !807)
!818 = !DILocation(line: 148, column: 9, scope: !807)
!819 = distinct !{!819, !790, !820, !252}
!820 = !DILocation(line: 149, column: 5, scope: !779)
!821 = !DILocation(line: 151, column: 12, scope: !779)
!822 = !DILocation(line: 151, column: 5, scope: !779)
!823 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !824, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!824 = !DISubroutineType(types: !825)
!825 = !{!23}
!826 = !DILocation(line: 158, column: 5, scope: !823)
!827 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !824, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!828 = !DILocation(line: 163, column: 5, scope: !827)
!829 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !824, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!830 = !DILocation(line: 168, column: 13, scope: !829)
!831 = !DILocation(line: 168, column: 20, scope: !829)
!832 = !DILocation(line: 168, column: 5, scope: !829)
!833 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!834 = !DILocation(line: 187, column: 16, scope: !833)
!835 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DILocation(line: 188, column: 16, scope: !835)
!837 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!838 = !DILocation(line: 189, column: 16, scope: !837)
!839 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DILocation(line: 190, column: 16, scope: !839)
!841 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DILocation(line: 191, column: 16, scope: !841)
!843 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!844 = !DILocation(line: 192, column: 16, scope: !843)
!845 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!846 = !DILocation(line: 193, column: 16, scope: !845)
!847 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!848 = !DILocation(line: 194, column: 16, scope: !847)
!849 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!850 = !DILocation(line: 195, column: 16, scope: !849)
!851 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!852 = !DILocation(line: 198, column: 15, scope: !851)
!853 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!854 = !DILocation(line: 199, column: 15, scope: !853)
!855 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!856 = !DILocation(line: 200, column: 15, scope: !855)
!857 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!858 = !DILocation(line: 201, column: 15, scope: !857)
!859 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DILocation(line: 202, column: 15, scope: !859)
!861 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!862 = !DILocation(line: 203, column: 15, scope: !861)
!863 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 204, column: 15, scope: !863)
!865 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 205, column: 15, scope: !865)
!867 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 206, column: 15, scope: !867)
