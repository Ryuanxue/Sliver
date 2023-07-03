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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data30 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !110, metadata !DIExpression()), !dbg !111
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !112, metadata !DIExpression()), !dbg !113
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !114, metadata !DIExpression()), !dbg !118
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !118
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !119
  store i8* %arraydecay, i8** %data, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !121, metadata !DIExpression()), !dbg !123
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !124
  %2 = load i8*, i8** %1, align 8, !dbg !125
  store i8* %2, i8** %data1, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !126, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !129, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %connectSocket, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !155, metadata !DIExpression()), !dbg !159
  %3 = load i8*, i8** %data1, align 8, !dbg !160
  %call = call i64 @strlen(i8* %3) #7, !dbg !161
  store i64 %call, i64* %dataLen, align 8, !dbg !159
  br label %do.body, !dbg !162

do.body:                                          ; preds = %entry
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !163
  store i32 %call2, i32* %connectSocket, align 4, !dbg !165
  %4 = load i32, i32* %connectSocket, align 4, !dbg !166
  %cmp = icmp eq i32 %4, -1, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !170

if.end:                                           ; preds = %do.body
  %5 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false), !dbg !172
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !173
  store i16 2, i16* %sin_family, align 4, !dbg !174
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !175
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !176
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !177
  store i32 %call3, i32* %s_addr, align 4, !dbg !178
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !179
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !180
  store i16 %call4, i16* %sin_port, align 2, !dbg !181
  %6 = load i32, i32* %connectSocket, align 4, !dbg !182
  %7 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !184
  %call5 = call i32 @connect(i32 %6, %struct.sockaddr* %7, i32 16), !dbg !185
  %cmp6 = icmp eq i32 %call5, -1, !dbg !186
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !187

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !188

if.end8:                                          ; preds = %if.end
  %8 = load i32, i32* %connectSocket, align 4, !dbg !190
  %9 = load i8*, i8** %data1, align 8, !dbg !191
  %10 = load i64, i64* %dataLen, align 8, !dbg !192
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !193
  %11 = load i64, i64* %dataLen, align 8, !dbg !194
  %sub = sub i64 100, %11, !dbg !195
  %sub9 = sub i64 %sub, 1, !dbg !196
  %mul = mul i64 1, %sub9, !dbg !197
  %call10 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !198
  %conv = trunc i64 %call10 to i32, !dbg !198
  store i32 %conv, i32* %recvResult, align 4, !dbg !199
  %12 = load i32, i32* %recvResult, align 4, !dbg !200
  %cmp11 = icmp eq i32 %12, -1, !dbg !202
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !203

lor.lhs.false:                                    ; preds = %if.end8
  %13 = load i32, i32* %recvResult, align 4, !dbg !204
  %cmp13 = icmp eq i32 %13, 0, !dbg !205
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !206

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !207

if.end16:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data1, align 8, !dbg !209
  %15 = load i64, i64* %dataLen, align 8, !dbg !210
  %16 = load i32, i32* %recvResult, align 4, !dbg !211
  %conv17 = sext i32 %16 to i64, !dbg !211
  %div = udiv i64 %conv17, 1, !dbg !212
  %add = add i64 %15, %div, !dbg !213
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !209
  store i8 0, i8* %arrayidx, align 1, !dbg !214
  %17 = load i8*, i8** %data1, align 8, !dbg !215
  %call18 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !216
  store i8* %call18, i8** %replace, align 8, !dbg !217
  %18 = load i8*, i8** %replace, align 8, !dbg !218
  %tobool = icmp ne i8* %18, null, !dbg !218
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !220

if.then19:                                        ; preds = %if.end16
  %19 = load i8*, i8** %replace, align 8, !dbg !221
  store i8 0, i8* %19, align 1, !dbg !223
  br label %if.end20, !dbg !224

if.end20:                                         ; preds = %if.then19, %if.end16
  %20 = load i8*, i8** %data1, align 8, !dbg !225
  %call21 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !226
  store i8* %call21, i8** %replace, align 8, !dbg !227
  %21 = load i8*, i8** %replace, align 8, !dbg !228
  %tobool22 = icmp ne i8* %21, null, !dbg !228
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !230

if.then23:                                        ; preds = %if.end20
  %22 = load i8*, i8** %replace, align 8, !dbg !231
  store i8 0, i8* %22, align 1, !dbg !233
  br label %if.end24, !dbg !234

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !235

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %23 = load i32, i32* %connectSocket, align 4, !dbg !236
  %cmp25 = icmp ne i32 %23, -1, !dbg !238
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !239

if.then27:                                        ; preds = %do.end
  %24 = load i32, i32* %connectSocket, align 4, !dbg !240
  %call28 = call i32 @close(i32 %24), !dbg !242
  br label %if.end29, !dbg !243

if.end29:                                         ; preds = %if.then27, %do.end
  %25 = load i8*, i8** %data1, align 8, !dbg !244
  %26 = load i8**, i8*** %dataPtr1, align 8, !dbg !245
  store i8* %25, i8** %26, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %data30, metadata !247, metadata !DIExpression()), !dbg !249
  %27 = load i8**, i8*** %dataPtr2, align 8, !dbg !250
  %28 = load i8*, i8** %27, align 8, !dbg !251
  store i8* %28, i8** %data30, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata i32* %i, metadata !252, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %n, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !257, metadata !DIExpression()), !dbg !258
  %29 = load i8*, i8** %data30, align 8, !dbg !259
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !261
  %cmp32 = icmp eq i32 %call31, 1, !dbg !262
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !263

if.then34:                                        ; preds = %if.end29
  store i32 0, i32* %intVariable, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc, %if.then34
  %30 = load i32, i32* %i, align 4, !dbg !269
  %31 = load i32, i32* %n, align 4, !dbg !271
  %cmp35 = icmp slt i32 %30, %31, !dbg !272
  br i1 %cmp35, label %for.body, label %for.end, !dbg !273

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %intVariable, align 4, !dbg !274
  %inc = add nsw i32 %32, 1, !dbg !274
  store i32 %inc, i32* %intVariable, align 4, !dbg !274
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !dbg !277
  %inc37 = add nsw i32 %33, 1, !dbg !277
  store i32 %inc37, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %intVariable, align 4, !dbg !282
  call void @printIntLine(i32 %34), !dbg !283
  br label %if.end38, !dbg !284

if.end38:                                         ; preds = %for.end, %if.end29
  ret void, !dbg !285
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
define dso_local void @goodG2B() #0 !dbg !286 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !289, metadata !DIExpression()), !dbg !290
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !291, metadata !DIExpression()), !dbg !292
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !294
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !295
  store i8* %arraydecay, i8** %data, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !297, metadata !DIExpression()), !dbg !299
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !300
  %2 = load i8*, i8** %1, align 8, !dbg !301
  store i8* %2, i8** %data1, align 8, !dbg !299
  %3 = load i8*, i8** %data1, align 8, !dbg !302
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !303
  %4 = load i8*, i8** %data1, align 8, !dbg !304
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !305
  store i8* %4, i8** %5, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !307, metadata !DIExpression()), !dbg !309
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !310
  %7 = load i8*, i8** %6, align 8, !dbg !311
  store i8* %7, i8** %data2, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %i, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %n, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !317, metadata !DIExpression()), !dbg !318
  %8 = load i8*, i8** %data2, align 8, !dbg !319
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !321
  %cmp = icmp eq i32 %call3, 1, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !324
  store i32 0, i32* %i, align 4, !dbg !326
  br label %for.cond, !dbg !328

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !329
  %10 = load i32, i32* %n, align 4, !dbg !331
  %cmp4 = icmp slt i32 %9, %10, !dbg !332
  br i1 %cmp4, label %for.body, label %for.end, !dbg !333

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !334
  %inc = add nsw i32 %11, 1, !dbg !334
  store i32 %inc, i32* %intVariable, align 4, !dbg !334
  br label %for.inc, !dbg !336

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !337
  %inc5 = add nsw i32 %12, 1, !dbg !337
  store i32 %inc5, i32* %i, align 4, !dbg !337
  br label %for.cond, !dbg !338, !llvm.loop !339

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !341
  call void @printIntLine(i32 %13), !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !344
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !345 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data30 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !348, metadata !DIExpression()), !dbg !349
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !350, metadata !DIExpression()), !dbg !351
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !353
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !354
  store i8* %arraydecay, i8** %data, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !356, metadata !DIExpression()), !dbg !358
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !359
  %2 = load i8*, i8** %1, align 8, !dbg !360
  store i8* %2, i8** %data1, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !368, metadata !DIExpression()), !dbg !369
  store i32 -1, i32* %connectSocket, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !370, metadata !DIExpression()), !dbg !371
  %3 = load i8*, i8** %data1, align 8, !dbg !372
  %call = call i64 @strlen(i8* %3) #7, !dbg !373
  store i64 %call, i64* %dataLen, align 8, !dbg !371
  br label %do.body, !dbg !374

do.body:                                          ; preds = %entry
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !375
  store i32 %call2, i32* %connectSocket, align 4, !dbg !377
  %4 = load i32, i32* %connectSocket, align 4, !dbg !378
  %cmp = icmp eq i32 %4, -1, !dbg !380
  br i1 %cmp, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !382

if.end:                                           ; preds = %do.body
  %5 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !384
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false), !dbg !384
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !385
  store i16 2, i16* %sin_family, align 4, !dbg !386
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !387
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !388
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !389
  store i32 %call3, i32* %s_addr, align 4, !dbg !390
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !391
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !392
  store i16 %call4, i16* %sin_port, align 2, !dbg !393
  %6 = load i32, i32* %connectSocket, align 4, !dbg !394
  %7 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !396
  %call5 = call i32 @connect(i32 %6, %struct.sockaddr* %7, i32 16), !dbg !397
  %cmp6 = icmp eq i32 %call5, -1, !dbg !398
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !399

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !400

if.end8:                                          ; preds = %if.end
  %8 = load i32, i32* %connectSocket, align 4, !dbg !402
  %9 = load i8*, i8** %data1, align 8, !dbg !403
  %10 = load i64, i64* %dataLen, align 8, !dbg !404
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !405
  %11 = load i64, i64* %dataLen, align 8, !dbg !406
  %sub = sub i64 100, %11, !dbg !407
  %sub9 = sub i64 %sub, 1, !dbg !408
  %mul = mul i64 1, %sub9, !dbg !409
  %call10 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !410
  %conv = trunc i64 %call10 to i32, !dbg !410
  store i32 %conv, i32* %recvResult, align 4, !dbg !411
  %12 = load i32, i32* %recvResult, align 4, !dbg !412
  %cmp11 = icmp eq i32 %12, -1, !dbg !414
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !415

lor.lhs.false:                                    ; preds = %if.end8
  %13 = load i32, i32* %recvResult, align 4, !dbg !416
  %cmp13 = icmp eq i32 %13, 0, !dbg !417
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !418

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !419

if.end16:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data1, align 8, !dbg !421
  %15 = load i64, i64* %dataLen, align 8, !dbg !422
  %16 = load i32, i32* %recvResult, align 4, !dbg !423
  %conv17 = sext i32 %16 to i64, !dbg !423
  %div = udiv i64 %conv17, 1, !dbg !424
  %add = add i64 %15, %div, !dbg !425
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !421
  store i8 0, i8* %arrayidx, align 1, !dbg !426
  %17 = load i8*, i8** %data1, align 8, !dbg !427
  %call18 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !428
  store i8* %call18, i8** %replace, align 8, !dbg !429
  %18 = load i8*, i8** %replace, align 8, !dbg !430
  %tobool = icmp ne i8* %18, null, !dbg !430
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !432

if.then19:                                        ; preds = %if.end16
  %19 = load i8*, i8** %replace, align 8, !dbg !433
  store i8 0, i8* %19, align 1, !dbg !435
  br label %if.end20, !dbg !436

if.end20:                                         ; preds = %if.then19, %if.end16
  %20 = load i8*, i8** %data1, align 8, !dbg !437
  %call21 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !438
  store i8* %call21, i8** %replace, align 8, !dbg !439
  %21 = load i8*, i8** %replace, align 8, !dbg !440
  %tobool22 = icmp ne i8* %21, null, !dbg !440
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !442

if.then23:                                        ; preds = %if.end20
  %22 = load i8*, i8** %replace, align 8, !dbg !443
  store i8 0, i8* %22, align 1, !dbg !445
  br label %if.end24, !dbg !446

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !447

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %23 = load i32, i32* %connectSocket, align 4, !dbg !448
  %cmp25 = icmp ne i32 %23, -1, !dbg !450
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !451

if.then27:                                        ; preds = %do.end
  %24 = load i32, i32* %connectSocket, align 4, !dbg !452
  %call28 = call i32 @close(i32 %24), !dbg !454
  br label %if.end29, !dbg !455

if.end29:                                         ; preds = %if.then27, %do.end
  %25 = load i8*, i8** %data1, align 8, !dbg !456
  %26 = load i8**, i8*** %dataPtr1, align 8, !dbg !457
  store i8* %25, i8** %26, align 8, !dbg !458
  call void @llvm.dbg.declare(metadata i8** %data30, metadata !459, metadata !DIExpression()), !dbg !461
  %27 = load i8**, i8*** %dataPtr2, align 8, !dbg !462
  %28 = load i8*, i8** %27, align 8, !dbg !463
  store i8* %28, i8** %data30, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i32* %i, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata i32* %n, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !469, metadata !DIExpression()), !dbg !470
  %29 = load i8*, i8** %data30, align 8, !dbg !471
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !473
  %cmp32 = icmp eq i32 %call31, 1, !dbg !474
  br i1 %cmp32, label %if.then34, label %if.end42, !dbg !475

if.then34:                                        ; preds = %if.end29
  %30 = load i32, i32* %n, align 4, !dbg !476
  %cmp35 = icmp slt i32 %30, 10000, !dbg !479
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !480

if.then37:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !481
  store i32 0, i32* %i, align 4, !dbg !483
  br label %for.cond, !dbg !485

for.cond:                                         ; preds = %for.inc, %if.then37
  %31 = load i32, i32* %i, align 4, !dbg !486
  %32 = load i32, i32* %n, align 4, !dbg !488
  %cmp38 = icmp slt i32 %31, %32, !dbg !489
  br i1 %cmp38, label %for.body, label %for.end, !dbg !490

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %intVariable, align 4, !dbg !491
  %inc = add nsw i32 %33, 1, !dbg !491
  store i32 %inc, i32* %intVariable, align 4, !dbg !491
  br label %for.inc, !dbg !493

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !dbg !494
  %inc40 = add nsw i32 %34, 1, !dbg !494
  store i32 %inc40, i32* %i, align 4, !dbg !494
  br label %for.cond, !dbg !495, !llvm.loop !496

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %intVariable, align 4, !dbg !498
  call void @printIntLine(i32 %35), !dbg !499
  br label %if.end41, !dbg !500

if.end41:                                         ; preds = %for.end, %if.then34
  br label %if.end42, !dbg !501

if.end42:                                         ; preds = %if.end41, %if.end29
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_32_good() #0 !dbg !503 {
entry:
  call void @goodG2B(), !dbg !504
  call void @goodB2G(), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !507 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !512
  %0 = load i8*, i8** %line.addr, align 8, !dbg !513
  %cmp = icmp ne i8* %0, null, !dbg !515
  br i1 %cmp, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !517
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !519
  br label %if.end, !dbg !520

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !521
  ret void, !dbg !522
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !523 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i8*, i8** %line.addr, align 8, !dbg !526
  %cmp = icmp ne i8* %0, null, !dbg !528
  br i1 %cmp, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !532
  br label %if.end, !dbg !533

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !535 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !540, metadata !DIExpression()), !dbg !541
  %0 = load i32*, i32** %line.addr, align 8, !dbg !542
  %cmp = icmp ne i32* %0, null, !dbg !544
  br i1 %cmp, label %if.then, label %if.end, !dbg !545

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !546
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !548
  br label %if.end, !dbg !549

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !550
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !551 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !559 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !565
  %conv = sext i16 %0 to i32, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !568 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !574
  %conv = fpext float %0 to double, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !577 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !586 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !597 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !605 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !610
  %conv = sext i8 %0 to i32, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !613 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !618, metadata !DIExpression()), !dbg !622
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !623
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !624
  store i32 %0, i32* %arrayidx, align 4, !dbg !625
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !626
  store i32 0, i32* %arrayidx1, align 4, !dbg !627
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !628
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !629
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !631 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !636
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !637
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !639 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !644
  %conv = zext i8 %0 to i32, !dbg !644
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !647 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !656 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !666, metadata !DIExpression()), !dbg !667
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !668
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !669
  %1 = load i32, i32* %intOne, align 4, !dbg !669
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !670
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !671
  %3 = load i32, i32* %intTwo, align 4, !dbg !671
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !674 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !678, metadata !DIExpression()), !dbg !679
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %i, metadata !682, metadata !DIExpression()), !dbg !683
  store i64 0, i64* %i, align 8, !dbg !684
  br label %for.cond, !dbg !686

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !687
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !689
  %cmp = icmp ult i64 %0, %1, !dbg !690
  br i1 %cmp, label %for.body, label %for.end, !dbg !691

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !692
  %3 = load i64, i64* %i, align 8, !dbg !694
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !692
  %4 = load i8, i8* %arrayidx, align 1, !dbg !692
  %conv = zext i8 %4 to i32, !dbg !692
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !695
  br label %for.inc, !dbg !696

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !697
  %inc = add i64 %5, 1, !dbg !697
  store i64 %inc, i64* %i, align 8, !dbg !697
  br label %for.cond, !dbg !698, !llvm.loop !699

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !701
  ret void, !dbg !702
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !703 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !706, metadata !DIExpression()), !dbg !707
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !708, metadata !DIExpression()), !dbg !709
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !712, metadata !DIExpression()), !dbg !713
  store i64 0, i64* %numWritten, align 8, !dbg !713
  br label %while.cond, !dbg !714

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !715
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !716
  %cmp = icmp ult i64 %0, %1, !dbg !717
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !718

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !719
  %2 = load i16*, i16** %call, align 8, !dbg !719
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !719
  %4 = load i64, i64* %numWritten, align 8, !dbg !719
  %mul = mul i64 2, %4, !dbg !719
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !719
  %5 = load i8, i8* %arrayidx, align 1, !dbg !719
  %conv = sext i8 %5 to i32, !dbg !719
  %idxprom = sext i32 %conv to i64, !dbg !719
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !719
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !719
  %conv2 = zext i16 %6 to i32, !dbg !719
  %and = and i32 %conv2, 4096, !dbg !719
  %tobool = icmp ne i32 %and, 0, !dbg !719
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !720

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !721
  %7 = load i16*, i16** %call3, align 8, !dbg !721
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !721
  %9 = load i64, i64* %numWritten, align 8, !dbg !721
  %mul4 = mul i64 2, %9, !dbg !721
  %add = add i64 %mul4, 1, !dbg !721
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !721
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !721
  %conv6 = sext i8 %10 to i32, !dbg !721
  %idxprom7 = sext i32 %conv6 to i64, !dbg !721
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !721
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !721
  %conv9 = zext i16 %11 to i32, !dbg !721
  %and10 = and i32 %conv9, 4096, !dbg !721
  %tobool11 = icmp ne i32 %and10, 0, !dbg !720
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !722
  br i1 %12, label %while.body, label %while.end, !dbg !714

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !723, metadata !DIExpression()), !dbg !725
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !726
  %14 = load i64, i64* %numWritten, align 8, !dbg !727
  %mul12 = mul i64 2, %14, !dbg !728
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !726
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !729
  %15 = load i32, i32* %byte, align 4, !dbg !730
  %conv15 = trunc i32 %15 to i8, !dbg !731
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !732
  %17 = load i64, i64* %numWritten, align 8, !dbg !733
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !732
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !734
  %18 = load i64, i64* %numWritten, align 8, !dbg !735
  %inc = add i64 %18, 1, !dbg !735
  store i64 %inc, i64* %numWritten, align 8, !dbg !735
  br label %while.cond, !dbg !714, !llvm.loop !736

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !738
  ret i64 %19, !dbg !739
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !740 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !743, metadata !DIExpression()), !dbg !744
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !749, metadata !DIExpression()), !dbg !750
  store i64 0, i64* %numWritten, align 8, !dbg !750
  br label %while.cond, !dbg !751

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !752
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !753
  %cmp = icmp ult i64 %0, %1, !dbg !754
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !755

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !756
  %3 = load i64, i64* %numWritten, align 8, !dbg !757
  %mul = mul i64 2, %3, !dbg !758
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !756
  %4 = load i32, i32* %arrayidx, align 4, !dbg !756
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !759
  %tobool = icmp ne i32 %call, 0, !dbg !759
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !760

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !761
  %6 = load i64, i64* %numWritten, align 8, !dbg !762
  %mul1 = mul i64 2, %6, !dbg !763
  %add = add i64 %mul1, 1, !dbg !764
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !761
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !761
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !765
  %tobool4 = icmp ne i32 %call3, 0, !dbg !760
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !766
  br i1 %8, label %while.body, label %while.end, !dbg !751

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !767, metadata !DIExpression()), !dbg !769
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !770
  %10 = load i64, i64* %numWritten, align 8, !dbg !771
  %mul5 = mul i64 2, %10, !dbg !772
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !770
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !773
  %11 = load i32, i32* %byte, align 4, !dbg !774
  %conv = trunc i32 %11 to i8, !dbg !775
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !776
  %13 = load i64, i64* %numWritten, align 8, !dbg !777
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !776
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !778
  %14 = load i64, i64* %numWritten, align 8, !dbg !779
  %inc = add i64 %14, 1, !dbg !779
  store i64 %inc, i64* %numWritten, align 8, !dbg !779
  br label %while.cond, !dbg !751, !llvm.loop !780

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !782
  ret i64 %15, !dbg !783
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !784 {
entry:
  ret i32 1, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !788 {
entry:
  ret i32 0, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !790 {
entry:
  %call = call i32 @rand() #8, !dbg !791
  %rem = srem i32 %call, 2, !dbg !792
  ret i32 %rem, !dbg !793
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !810 {
entry:
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !812 {
entry:
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !814 {
entry:
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !816 {
entry:
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !818 {
entry:
  ret void, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !820 {
entry:
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !822 {
entry:
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !828 {
entry:
  ret void, !dbg !829
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_951/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_951/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 52, type: !42)
!109 = !DILocation(line: 52, column: 12, scope: !104)
!110 = !DILocalVariable(name: "dataPtr1", scope: !104, file: !45, line: 53, type: !41)
!111 = !DILocation(line: 53, column: 13, scope: !104)
!112 = !DILocalVariable(name: "dataPtr2", scope: !104, file: !45, line: 54, type: !41)
!113 = !DILocation(line: 54, column: 13, scope: !104)
!114 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !45, line: 55, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 100)
!118 = !DILocation(line: 55, column: 10, scope: !104)
!119 = !DILocation(line: 56, column: 12, scope: !104)
!120 = !DILocation(line: 56, column: 10, scope: !104)
!121 = !DILocalVariable(name: "data", scope: !122, file: !45, line: 58, type: !42)
!122 = distinct !DILexicalBlock(scope: !104, file: !45, line: 57, column: 5)
!123 = !DILocation(line: 58, column: 16, scope: !122)
!124 = !DILocation(line: 58, column: 24, scope: !122)
!125 = !DILocation(line: 58, column: 23, scope: !122)
!126 = !DILocalVariable(name: "recvResult", scope: !127, file: !45, line: 64, type: !23)
!127 = distinct !DILexicalBlock(scope: !122, file: !45, line: 59, column: 9)
!128 = !DILocation(line: 64, column: 17, scope: !127)
!129 = !DILocalVariable(name: "service", scope: !127, file: !45, line: 65, type: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !131)
!131 = !{!132, !133, !139, !146}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !130, file: !60, line: 240, baseType: !94, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !130, file: !60, line: 241, baseType: !134, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !136, line: 25, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !138, line: 40, baseType: !24)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !130, file: !60, line: 242, baseType: !140, size: 32, offset: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !140, file: !60, line: 33, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !136, line: 26, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !138, line: 42, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !130, file: !60, line: 245, baseType: !147, size: 64, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DILocation(line: 65, column: 32, scope: !127)
!151 = !DILocalVariable(name: "replace", scope: !127, file: !45, line: 66, type: !42)
!152 = !DILocation(line: 66, column: 19, scope: !127)
!153 = !DILocalVariable(name: "connectSocket", scope: !127, file: !45, line: 67, type: !23)
!154 = !DILocation(line: 67, column: 20, scope: !127)
!155 = !DILocalVariable(name: "dataLen", scope: !127, file: !45, line: 68, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !158)
!157 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DILocation(line: 68, column: 20, scope: !127)
!160 = !DILocation(line: 68, column: 37, scope: !127)
!161 = !DILocation(line: 68, column: 30, scope: !127)
!162 = !DILocation(line: 69, column: 13, scope: !127)
!163 = !DILocation(line: 79, column: 33, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !45, line: 70, column: 13)
!165 = !DILocation(line: 79, column: 31, scope: !164)
!166 = !DILocation(line: 80, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !45, line: 80, column: 21)
!168 = !DILocation(line: 80, column: 35, scope: !167)
!169 = !DILocation(line: 80, column: 21, scope: !164)
!170 = !DILocation(line: 82, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 81, column: 17)
!172 = !DILocation(line: 84, column: 17, scope: !164)
!173 = !DILocation(line: 85, column: 25, scope: !164)
!174 = !DILocation(line: 85, column: 36, scope: !164)
!175 = !DILocation(line: 86, column: 43, scope: !164)
!176 = !DILocation(line: 86, column: 25, scope: !164)
!177 = !DILocation(line: 86, column: 34, scope: !164)
!178 = !DILocation(line: 86, column: 41, scope: !164)
!179 = !DILocation(line: 87, column: 36, scope: !164)
!180 = !DILocation(line: 87, column: 25, scope: !164)
!181 = !DILocation(line: 87, column: 34, scope: !164)
!182 = !DILocation(line: 88, column: 29, scope: !183)
!183 = distinct !DILexicalBlock(scope: !164, file: !45, line: 88, column: 21)
!184 = !DILocation(line: 88, column: 44, scope: !183)
!185 = !DILocation(line: 88, column: 21, scope: !183)
!186 = !DILocation(line: 88, column: 89, scope: !183)
!187 = !DILocation(line: 88, column: 21, scope: !164)
!188 = !DILocation(line: 90, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !183, file: !45, line: 89, column: 17)
!190 = !DILocation(line: 95, column: 35, scope: !164)
!191 = !DILocation(line: 95, column: 59, scope: !164)
!192 = !DILocation(line: 95, column: 66, scope: !164)
!193 = !DILocation(line: 95, column: 64, scope: !164)
!194 = !DILocation(line: 95, column: 98, scope: !164)
!195 = !DILocation(line: 95, column: 96, scope: !164)
!196 = !DILocation(line: 95, column: 106, scope: !164)
!197 = !DILocation(line: 95, column: 89, scope: !164)
!198 = !DILocation(line: 95, column: 30, scope: !164)
!199 = !DILocation(line: 95, column: 28, scope: !164)
!200 = !DILocation(line: 96, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !164, file: !45, line: 96, column: 21)
!202 = !DILocation(line: 96, column: 32, scope: !201)
!203 = !DILocation(line: 96, column: 48, scope: !201)
!204 = !DILocation(line: 96, column: 51, scope: !201)
!205 = !DILocation(line: 96, column: 62, scope: !201)
!206 = !DILocation(line: 96, column: 21, scope: !164)
!207 = !DILocation(line: 98, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !45, line: 97, column: 17)
!209 = !DILocation(line: 101, column: 17, scope: !164)
!210 = !DILocation(line: 101, column: 22, scope: !164)
!211 = !DILocation(line: 101, column: 32, scope: !164)
!212 = !DILocation(line: 101, column: 43, scope: !164)
!213 = !DILocation(line: 101, column: 30, scope: !164)
!214 = !DILocation(line: 101, column: 59, scope: !164)
!215 = !DILocation(line: 103, column: 34, scope: !164)
!216 = !DILocation(line: 103, column: 27, scope: !164)
!217 = !DILocation(line: 103, column: 25, scope: !164)
!218 = !DILocation(line: 104, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !164, file: !45, line: 104, column: 21)
!220 = !DILocation(line: 104, column: 21, scope: !164)
!221 = !DILocation(line: 106, column: 22, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !45, line: 105, column: 17)
!223 = !DILocation(line: 106, column: 30, scope: !222)
!224 = !DILocation(line: 107, column: 17, scope: !222)
!225 = !DILocation(line: 108, column: 34, scope: !164)
!226 = !DILocation(line: 108, column: 27, scope: !164)
!227 = !DILocation(line: 108, column: 25, scope: !164)
!228 = !DILocation(line: 109, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !164, file: !45, line: 109, column: 21)
!230 = !DILocation(line: 109, column: 21, scope: !164)
!231 = !DILocation(line: 111, column: 22, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !45, line: 110, column: 17)
!233 = !DILocation(line: 111, column: 30, scope: !232)
!234 = !DILocation(line: 112, column: 17, scope: !232)
!235 = !DILocation(line: 113, column: 13, scope: !164)
!236 = !DILocation(line: 115, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !127, file: !45, line: 115, column: 17)
!238 = !DILocation(line: 115, column: 31, scope: !237)
!239 = !DILocation(line: 115, column: 17, scope: !127)
!240 = !DILocation(line: 117, column: 30, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !45, line: 116, column: 13)
!242 = !DILocation(line: 117, column: 17, scope: !241)
!243 = !DILocation(line: 118, column: 13, scope: !241)
!244 = !DILocation(line: 126, column: 21, scope: !122)
!245 = !DILocation(line: 126, column: 10, scope: !122)
!246 = !DILocation(line: 126, column: 19, scope: !122)
!247 = !DILocalVariable(name: "data", scope: !248, file: !45, line: 129, type: !42)
!248 = distinct !DILexicalBlock(scope: !104, file: !45, line: 128, column: 5)
!249 = !DILocation(line: 129, column: 16, scope: !248)
!250 = !DILocation(line: 129, column: 24, scope: !248)
!251 = !DILocation(line: 129, column: 23, scope: !248)
!252 = !DILocalVariable(name: "i", scope: !253, file: !45, line: 131, type: !23)
!253 = distinct !DILexicalBlock(scope: !248, file: !45, line: 130, column: 9)
!254 = !DILocation(line: 131, column: 17, scope: !253)
!255 = !DILocalVariable(name: "n", scope: !253, file: !45, line: 131, type: !23)
!256 = !DILocation(line: 131, column: 20, scope: !253)
!257 = !DILocalVariable(name: "intVariable", scope: !253, file: !45, line: 131, type: !23)
!258 = !DILocation(line: 131, column: 23, scope: !253)
!259 = !DILocation(line: 132, column: 24, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !45, line: 132, column: 17)
!261 = !DILocation(line: 132, column: 17, scope: !260)
!262 = !DILocation(line: 132, column: 40, scope: !260)
!263 = !DILocation(line: 132, column: 17, scope: !253)
!264 = !DILocation(line: 135, column: 29, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !45, line: 133, column: 13)
!266 = !DILocation(line: 136, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !265, file: !45, line: 136, column: 17)
!268 = !DILocation(line: 136, column: 22, scope: !267)
!269 = !DILocation(line: 136, column: 29, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !45, line: 136, column: 17)
!271 = !DILocation(line: 136, column: 33, scope: !270)
!272 = !DILocation(line: 136, column: 31, scope: !270)
!273 = !DILocation(line: 136, column: 17, scope: !267)
!274 = !DILocation(line: 139, column: 32, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !45, line: 137, column: 17)
!276 = !DILocation(line: 140, column: 17, scope: !275)
!277 = !DILocation(line: 136, column: 37, scope: !270)
!278 = !DILocation(line: 136, column: 17, scope: !270)
!279 = distinct !{!279, !273, !280, !281}
!280 = !DILocation(line: 140, column: 17, scope: !267)
!281 = !{!"llvm.loop.mustprogress"}
!282 = !DILocation(line: 141, column: 30, scope: !265)
!283 = !DILocation(line: 141, column: 17, scope: !265)
!284 = !DILocation(line: 142, column: 13, scope: !265)
!285 = !DILocation(line: 145, column: 1, scope: !104)
!286 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 152, type: !105, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!287 = !DILocalVariable(name: "data", scope: !286, file: !45, line: 154, type: !42)
!288 = !DILocation(line: 154, column: 12, scope: !286)
!289 = !DILocalVariable(name: "dataPtr1", scope: !286, file: !45, line: 155, type: !41)
!290 = !DILocation(line: 155, column: 13, scope: !286)
!291 = !DILocalVariable(name: "dataPtr2", scope: !286, file: !45, line: 156, type: !41)
!292 = !DILocation(line: 156, column: 13, scope: !286)
!293 = !DILocalVariable(name: "dataBuffer", scope: !286, file: !45, line: 157, type: !115)
!294 = !DILocation(line: 157, column: 10, scope: !286)
!295 = !DILocation(line: 158, column: 12, scope: !286)
!296 = !DILocation(line: 158, column: 10, scope: !286)
!297 = !DILocalVariable(name: "data", scope: !298, file: !45, line: 160, type: !42)
!298 = distinct !DILexicalBlock(scope: !286, file: !45, line: 159, column: 5)
!299 = !DILocation(line: 160, column: 16, scope: !298)
!300 = !DILocation(line: 160, column: 24, scope: !298)
!301 = !DILocation(line: 160, column: 23, scope: !298)
!302 = !DILocation(line: 162, column: 16, scope: !298)
!303 = !DILocation(line: 162, column: 9, scope: !298)
!304 = !DILocation(line: 163, column: 21, scope: !298)
!305 = !DILocation(line: 163, column: 10, scope: !298)
!306 = !DILocation(line: 163, column: 19, scope: !298)
!307 = !DILocalVariable(name: "data", scope: !308, file: !45, line: 166, type: !42)
!308 = distinct !DILexicalBlock(scope: !286, file: !45, line: 165, column: 5)
!309 = !DILocation(line: 166, column: 16, scope: !308)
!310 = !DILocation(line: 166, column: 24, scope: !308)
!311 = !DILocation(line: 166, column: 23, scope: !308)
!312 = !DILocalVariable(name: "i", scope: !313, file: !45, line: 168, type: !23)
!313 = distinct !DILexicalBlock(scope: !308, file: !45, line: 167, column: 9)
!314 = !DILocation(line: 168, column: 17, scope: !313)
!315 = !DILocalVariable(name: "n", scope: !313, file: !45, line: 168, type: !23)
!316 = !DILocation(line: 168, column: 20, scope: !313)
!317 = !DILocalVariable(name: "intVariable", scope: !313, file: !45, line: 168, type: !23)
!318 = !DILocation(line: 168, column: 23, scope: !313)
!319 = !DILocation(line: 169, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !313, file: !45, line: 169, column: 17)
!321 = !DILocation(line: 169, column: 17, scope: !320)
!322 = !DILocation(line: 169, column: 40, scope: !320)
!323 = !DILocation(line: 169, column: 17, scope: !313)
!324 = !DILocation(line: 172, column: 29, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !45, line: 170, column: 13)
!326 = !DILocation(line: 173, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !45, line: 173, column: 17)
!328 = !DILocation(line: 173, column: 22, scope: !327)
!329 = !DILocation(line: 173, column: 29, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !45, line: 173, column: 17)
!331 = !DILocation(line: 173, column: 33, scope: !330)
!332 = !DILocation(line: 173, column: 31, scope: !330)
!333 = !DILocation(line: 173, column: 17, scope: !327)
!334 = !DILocation(line: 176, column: 32, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !45, line: 174, column: 17)
!336 = !DILocation(line: 177, column: 17, scope: !335)
!337 = !DILocation(line: 173, column: 37, scope: !330)
!338 = !DILocation(line: 173, column: 17, scope: !330)
!339 = distinct !{!339, !333, !340, !281}
!340 = !DILocation(line: 177, column: 17, scope: !327)
!341 = !DILocation(line: 178, column: 30, scope: !325)
!342 = !DILocation(line: 178, column: 17, scope: !325)
!343 = !DILocation(line: 179, column: 13, scope: !325)
!344 = !DILocation(line: 182, column: 1, scope: !286)
!345 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 185, type: !105, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!346 = !DILocalVariable(name: "data", scope: !345, file: !45, line: 187, type: !42)
!347 = !DILocation(line: 187, column: 12, scope: !345)
!348 = !DILocalVariable(name: "dataPtr1", scope: !345, file: !45, line: 188, type: !41)
!349 = !DILocation(line: 188, column: 13, scope: !345)
!350 = !DILocalVariable(name: "dataPtr2", scope: !345, file: !45, line: 189, type: !41)
!351 = !DILocation(line: 189, column: 13, scope: !345)
!352 = !DILocalVariable(name: "dataBuffer", scope: !345, file: !45, line: 190, type: !115)
!353 = !DILocation(line: 190, column: 10, scope: !345)
!354 = !DILocation(line: 191, column: 12, scope: !345)
!355 = !DILocation(line: 191, column: 10, scope: !345)
!356 = !DILocalVariable(name: "data", scope: !357, file: !45, line: 193, type: !42)
!357 = distinct !DILexicalBlock(scope: !345, file: !45, line: 192, column: 5)
!358 = !DILocation(line: 193, column: 16, scope: !357)
!359 = !DILocation(line: 193, column: 24, scope: !357)
!360 = !DILocation(line: 193, column: 23, scope: !357)
!361 = !DILocalVariable(name: "recvResult", scope: !362, file: !45, line: 199, type: !23)
!362 = distinct !DILexicalBlock(scope: !357, file: !45, line: 194, column: 9)
!363 = !DILocation(line: 199, column: 17, scope: !362)
!364 = !DILocalVariable(name: "service", scope: !362, file: !45, line: 200, type: !130)
!365 = !DILocation(line: 200, column: 32, scope: !362)
!366 = !DILocalVariable(name: "replace", scope: !362, file: !45, line: 201, type: !42)
!367 = !DILocation(line: 201, column: 19, scope: !362)
!368 = !DILocalVariable(name: "connectSocket", scope: !362, file: !45, line: 202, type: !23)
!369 = !DILocation(line: 202, column: 20, scope: !362)
!370 = !DILocalVariable(name: "dataLen", scope: !362, file: !45, line: 203, type: !156)
!371 = !DILocation(line: 203, column: 20, scope: !362)
!372 = !DILocation(line: 203, column: 37, scope: !362)
!373 = !DILocation(line: 203, column: 30, scope: !362)
!374 = !DILocation(line: 204, column: 13, scope: !362)
!375 = !DILocation(line: 214, column: 33, scope: !376)
!376 = distinct !DILexicalBlock(scope: !362, file: !45, line: 205, column: 13)
!377 = !DILocation(line: 214, column: 31, scope: !376)
!378 = !DILocation(line: 215, column: 21, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !45, line: 215, column: 21)
!380 = !DILocation(line: 215, column: 35, scope: !379)
!381 = !DILocation(line: 215, column: 21, scope: !376)
!382 = !DILocation(line: 217, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !45, line: 216, column: 17)
!384 = !DILocation(line: 219, column: 17, scope: !376)
!385 = !DILocation(line: 220, column: 25, scope: !376)
!386 = !DILocation(line: 220, column: 36, scope: !376)
!387 = !DILocation(line: 221, column: 43, scope: !376)
!388 = !DILocation(line: 221, column: 25, scope: !376)
!389 = !DILocation(line: 221, column: 34, scope: !376)
!390 = !DILocation(line: 221, column: 41, scope: !376)
!391 = !DILocation(line: 222, column: 36, scope: !376)
!392 = !DILocation(line: 222, column: 25, scope: !376)
!393 = !DILocation(line: 222, column: 34, scope: !376)
!394 = !DILocation(line: 223, column: 29, scope: !395)
!395 = distinct !DILexicalBlock(scope: !376, file: !45, line: 223, column: 21)
!396 = !DILocation(line: 223, column: 44, scope: !395)
!397 = !DILocation(line: 223, column: 21, scope: !395)
!398 = !DILocation(line: 223, column: 89, scope: !395)
!399 = !DILocation(line: 223, column: 21, scope: !376)
!400 = !DILocation(line: 225, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !45, line: 224, column: 17)
!402 = !DILocation(line: 230, column: 35, scope: !376)
!403 = !DILocation(line: 230, column: 59, scope: !376)
!404 = !DILocation(line: 230, column: 66, scope: !376)
!405 = !DILocation(line: 230, column: 64, scope: !376)
!406 = !DILocation(line: 230, column: 98, scope: !376)
!407 = !DILocation(line: 230, column: 96, scope: !376)
!408 = !DILocation(line: 230, column: 106, scope: !376)
!409 = !DILocation(line: 230, column: 89, scope: !376)
!410 = !DILocation(line: 230, column: 30, scope: !376)
!411 = !DILocation(line: 230, column: 28, scope: !376)
!412 = !DILocation(line: 231, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !376, file: !45, line: 231, column: 21)
!414 = !DILocation(line: 231, column: 32, scope: !413)
!415 = !DILocation(line: 231, column: 48, scope: !413)
!416 = !DILocation(line: 231, column: 51, scope: !413)
!417 = !DILocation(line: 231, column: 62, scope: !413)
!418 = !DILocation(line: 231, column: 21, scope: !376)
!419 = !DILocation(line: 233, column: 21, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !45, line: 232, column: 17)
!421 = !DILocation(line: 236, column: 17, scope: !376)
!422 = !DILocation(line: 236, column: 22, scope: !376)
!423 = !DILocation(line: 236, column: 32, scope: !376)
!424 = !DILocation(line: 236, column: 43, scope: !376)
!425 = !DILocation(line: 236, column: 30, scope: !376)
!426 = !DILocation(line: 236, column: 59, scope: !376)
!427 = !DILocation(line: 238, column: 34, scope: !376)
!428 = !DILocation(line: 238, column: 27, scope: !376)
!429 = !DILocation(line: 238, column: 25, scope: !376)
!430 = !DILocation(line: 239, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !376, file: !45, line: 239, column: 21)
!432 = !DILocation(line: 239, column: 21, scope: !376)
!433 = !DILocation(line: 241, column: 22, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !45, line: 240, column: 17)
!435 = !DILocation(line: 241, column: 30, scope: !434)
!436 = !DILocation(line: 242, column: 17, scope: !434)
!437 = !DILocation(line: 243, column: 34, scope: !376)
!438 = !DILocation(line: 243, column: 27, scope: !376)
!439 = !DILocation(line: 243, column: 25, scope: !376)
!440 = !DILocation(line: 244, column: 21, scope: !441)
!441 = distinct !DILexicalBlock(scope: !376, file: !45, line: 244, column: 21)
!442 = !DILocation(line: 244, column: 21, scope: !376)
!443 = !DILocation(line: 246, column: 22, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !45, line: 245, column: 17)
!445 = !DILocation(line: 246, column: 30, scope: !444)
!446 = !DILocation(line: 247, column: 17, scope: !444)
!447 = !DILocation(line: 248, column: 13, scope: !376)
!448 = !DILocation(line: 250, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !362, file: !45, line: 250, column: 17)
!450 = !DILocation(line: 250, column: 31, scope: !449)
!451 = !DILocation(line: 250, column: 17, scope: !362)
!452 = !DILocation(line: 252, column: 30, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !45, line: 251, column: 13)
!454 = !DILocation(line: 252, column: 17, scope: !453)
!455 = !DILocation(line: 253, column: 13, scope: !453)
!456 = !DILocation(line: 261, column: 21, scope: !357)
!457 = !DILocation(line: 261, column: 10, scope: !357)
!458 = !DILocation(line: 261, column: 19, scope: !357)
!459 = !DILocalVariable(name: "data", scope: !460, file: !45, line: 264, type: !42)
!460 = distinct !DILexicalBlock(scope: !345, file: !45, line: 263, column: 5)
!461 = !DILocation(line: 264, column: 16, scope: !460)
!462 = !DILocation(line: 264, column: 24, scope: !460)
!463 = !DILocation(line: 264, column: 23, scope: !460)
!464 = !DILocalVariable(name: "i", scope: !465, file: !45, line: 266, type: !23)
!465 = distinct !DILexicalBlock(scope: !460, file: !45, line: 265, column: 9)
!466 = !DILocation(line: 266, column: 17, scope: !465)
!467 = !DILocalVariable(name: "n", scope: !465, file: !45, line: 266, type: !23)
!468 = !DILocation(line: 266, column: 20, scope: !465)
!469 = !DILocalVariable(name: "intVariable", scope: !465, file: !45, line: 266, type: !23)
!470 = !DILocation(line: 266, column: 23, scope: !465)
!471 = !DILocation(line: 267, column: 24, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !45, line: 267, column: 17)
!473 = !DILocation(line: 267, column: 17, scope: !472)
!474 = !DILocation(line: 267, column: 40, scope: !472)
!475 = !DILocation(line: 267, column: 17, scope: !465)
!476 = !DILocation(line: 270, column: 21, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !45, line: 270, column: 21)
!478 = distinct !DILexicalBlock(scope: !472, file: !45, line: 268, column: 13)
!479 = !DILocation(line: 270, column: 23, scope: !477)
!480 = !DILocation(line: 270, column: 21, scope: !478)
!481 = !DILocation(line: 272, column: 33, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !45, line: 271, column: 17)
!483 = !DILocation(line: 273, column: 28, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !45, line: 273, column: 21)
!485 = !DILocation(line: 273, column: 26, scope: !484)
!486 = !DILocation(line: 273, column: 33, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !45, line: 273, column: 21)
!488 = !DILocation(line: 273, column: 37, scope: !487)
!489 = !DILocation(line: 273, column: 35, scope: !487)
!490 = !DILocation(line: 273, column: 21, scope: !484)
!491 = !DILocation(line: 276, column: 36, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !45, line: 274, column: 21)
!493 = !DILocation(line: 277, column: 21, scope: !492)
!494 = !DILocation(line: 273, column: 41, scope: !487)
!495 = !DILocation(line: 273, column: 21, scope: !487)
!496 = distinct !{!496, !490, !497, !281}
!497 = !DILocation(line: 277, column: 21, scope: !484)
!498 = !DILocation(line: 278, column: 34, scope: !482)
!499 = !DILocation(line: 278, column: 21, scope: !482)
!500 = !DILocation(line: 279, column: 17, scope: !482)
!501 = !DILocation(line: 280, column: 13, scope: !478)
!502 = !DILocation(line: 283, column: 1, scope: !345)
!503 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32_good", scope: !45, file: !45, line: 285, type: !105, scopeLine: 286, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!504 = !DILocation(line: 287, column: 5, scope: !503)
!505 = !DILocation(line: 288, column: 5, scope: !503)
!506 = !DILocation(line: 289, column: 1, scope: !503)
!507 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !508, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !42}
!510 = !DILocalVariable(name: "line", arg: 1, scope: !507, file: !3, line: 11, type: !42)
!511 = !DILocation(line: 11, column: 25, scope: !507)
!512 = !DILocation(line: 13, column: 1, scope: !507)
!513 = !DILocation(line: 14, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !507, file: !3, line: 14, column: 8)
!515 = !DILocation(line: 14, column: 13, scope: !514)
!516 = !DILocation(line: 14, column: 8, scope: !507)
!517 = !DILocation(line: 16, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 15, column: 5)
!519 = !DILocation(line: 16, column: 9, scope: !518)
!520 = !DILocation(line: 17, column: 5, scope: !518)
!521 = !DILocation(line: 18, column: 5, scope: !507)
!522 = !DILocation(line: 19, column: 1, scope: !507)
!523 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !508, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DILocalVariable(name: "line", arg: 1, scope: !523, file: !3, line: 20, type: !42)
!525 = !DILocation(line: 20, column: 29, scope: !523)
!526 = !DILocation(line: 22, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 22, column: 8)
!528 = !DILocation(line: 22, column: 13, scope: !527)
!529 = !DILocation(line: 22, column: 8, scope: !523)
!530 = !DILocation(line: 24, column: 24, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 23, column: 5)
!532 = !DILocation(line: 24, column: 9, scope: !531)
!533 = !DILocation(line: 25, column: 5, scope: !531)
!534 = !DILocation(line: 26, column: 1, scope: !523)
!535 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !536, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !157, line: 74, baseType: !23)
!540 = !DILocalVariable(name: "line", arg: 1, scope: !535, file: !3, line: 27, type: !538)
!541 = !DILocation(line: 27, column: 29, scope: !535)
!542 = !DILocation(line: 29, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !3, line: 29, column: 8)
!544 = !DILocation(line: 29, column: 13, scope: !543)
!545 = !DILocation(line: 29, column: 8, scope: !535)
!546 = !DILocation(line: 31, column: 27, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !3, line: 30, column: 5)
!548 = !DILocation(line: 31, column: 9, scope: !547)
!549 = !DILocation(line: 32, column: 5, scope: !547)
!550 = !DILocation(line: 33, column: 1, scope: !535)
!551 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !552, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !23}
!554 = !DILocalVariable(name: "intNumber", arg: 1, scope: !551, file: !3, line: 35, type: !23)
!555 = !DILocation(line: 35, column: 24, scope: !551)
!556 = !DILocation(line: 37, column: 20, scope: !551)
!557 = !DILocation(line: 37, column: 5, scope: !551)
!558 = !DILocation(line: 38, column: 1, scope: !551)
!559 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !560, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!563 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !559, file: !3, line: 40, type: !562)
!564 = !DILocation(line: 40, column: 28, scope: !559)
!565 = !DILocation(line: 42, column: 21, scope: !559)
!566 = !DILocation(line: 42, column: 5, scope: !559)
!567 = !DILocation(line: 43, column: 1, scope: !559)
!568 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !569, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!572 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !568, file: !3, line: 45, type: !571)
!573 = !DILocation(line: 45, column: 28, scope: !568)
!574 = !DILocation(line: 47, column: 20, scope: !568)
!575 = !DILocation(line: 47, column: 5, scope: !568)
!576 = !DILocation(line: 48, column: 1, scope: !568)
!577 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !578, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!581 = !DILocalVariable(name: "longNumber", arg: 1, scope: !577, file: !3, line: 50, type: !580)
!582 = !DILocation(line: 50, column: 26, scope: !577)
!583 = !DILocation(line: 52, column: 21, scope: !577)
!584 = !DILocation(line: 52, column: 5, scope: !577)
!585 = !DILocation(line: 53, column: 1, scope: !577)
!586 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !587, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !590, line: 27, baseType: !591)
!590 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !138, line: 44, baseType: !580)
!592 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !586, file: !3, line: 55, type: !589)
!593 = !DILocation(line: 55, column: 33, scope: !586)
!594 = !DILocation(line: 57, column: 29, scope: !586)
!595 = !DILocation(line: 57, column: 5, scope: !586)
!596 = !DILocation(line: 58, column: 1, scope: !586)
!597 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !598, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !156}
!600 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !597, file: !3, line: 60, type: !156)
!601 = !DILocation(line: 60, column: 29, scope: !597)
!602 = !DILocation(line: 62, column: 21, scope: !597)
!603 = !DILocation(line: 62, column: 5, scope: !597)
!604 = !DILocation(line: 63, column: 1, scope: !597)
!605 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !606, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !43}
!608 = !DILocalVariable(name: "charHex", arg: 1, scope: !605, file: !3, line: 65, type: !43)
!609 = !DILocation(line: 65, column: 29, scope: !605)
!610 = !DILocation(line: 67, column: 22, scope: !605)
!611 = !DILocation(line: 67, column: 5, scope: !605)
!612 = !DILocation(line: 68, column: 1, scope: !605)
!613 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !614, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !539}
!616 = !DILocalVariable(name: "wideChar", arg: 1, scope: !613, file: !3, line: 70, type: !539)
!617 = !DILocation(line: 70, column: 29, scope: !613)
!618 = !DILocalVariable(name: "s", scope: !613, file: !3, line: 74, type: !619)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 64, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 2)
!622 = !DILocation(line: 74, column: 13, scope: !613)
!623 = !DILocation(line: 75, column: 16, scope: !613)
!624 = !DILocation(line: 75, column: 9, scope: !613)
!625 = !DILocation(line: 75, column: 14, scope: !613)
!626 = !DILocation(line: 76, column: 9, scope: !613)
!627 = !DILocation(line: 76, column: 14, scope: !613)
!628 = !DILocation(line: 77, column: 21, scope: !613)
!629 = !DILocation(line: 77, column: 5, scope: !613)
!630 = !DILocation(line: 78, column: 1, scope: !613)
!631 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !632, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !7}
!634 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !631, file: !3, line: 80, type: !7)
!635 = !DILocation(line: 80, column: 33, scope: !631)
!636 = !DILocation(line: 82, column: 20, scope: !631)
!637 = !DILocation(line: 82, column: 5, scope: !631)
!638 = !DILocation(line: 83, column: 1, scope: !631)
!639 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !640, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !25}
!642 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !639, file: !3, line: 85, type: !25)
!643 = !DILocation(line: 85, column: 45, scope: !639)
!644 = !DILocation(line: 87, column: 22, scope: !639)
!645 = !DILocation(line: 87, column: 5, scope: !639)
!646 = !DILocation(line: 88, column: 1, scope: !639)
!647 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !648, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650}
!650 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!651 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !647, file: !3, line: 90, type: !650)
!652 = !DILocation(line: 90, column: 29, scope: !647)
!653 = !DILocation(line: 92, column: 20, scope: !647)
!654 = !DILocation(line: 92, column: 5, scope: !647)
!655 = !DILocation(line: 93, column: 1, scope: !647)
!656 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !657, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !661, line: 100, baseType: !662)
!661 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_951/source_code")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !661, line: 96, size: 64, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !662, file: !661, line: 98, baseType: !23, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !662, file: !661, line: 99, baseType: !23, size: 32, offset: 32)
!666 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !656, file: !3, line: 95, type: !659)
!667 = !DILocation(line: 95, column: 40, scope: !656)
!668 = !DILocation(line: 97, column: 26, scope: !656)
!669 = !DILocation(line: 97, column: 47, scope: !656)
!670 = !DILocation(line: 97, column: 55, scope: !656)
!671 = !DILocation(line: 97, column: 76, scope: !656)
!672 = !DILocation(line: 97, column: 5, scope: !656)
!673 = !DILocation(line: 98, column: 1, scope: !656)
!674 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !675, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !677, !156}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!678 = !DILocalVariable(name: "bytes", arg: 1, scope: !674, file: !3, line: 100, type: !677)
!679 = !DILocation(line: 100, column: 38, scope: !674)
!680 = !DILocalVariable(name: "numBytes", arg: 2, scope: !674, file: !3, line: 100, type: !156)
!681 = !DILocation(line: 100, column: 52, scope: !674)
!682 = !DILocalVariable(name: "i", scope: !674, file: !3, line: 102, type: !156)
!683 = !DILocation(line: 102, column: 12, scope: !674)
!684 = !DILocation(line: 103, column: 12, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !3, line: 103, column: 5)
!686 = !DILocation(line: 103, column: 10, scope: !685)
!687 = !DILocation(line: 103, column: 17, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 103, column: 5)
!689 = !DILocation(line: 103, column: 21, scope: !688)
!690 = !DILocation(line: 103, column: 19, scope: !688)
!691 = !DILocation(line: 103, column: 5, scope: !685)
!692 = !DILocation(line: 105, column: 24, scope: !693)
!693 = distinct !DILexicalBlock(scope: !688, file: !3, line: 104, column: 5)
!694 = !DILocation(line: 105, column: 30, scope: !693)
!695 = !DILocation(line: 105, column: 9, scope: !693)
!696 = !DILocation(line: 106, column: 5, scope: !693)
!697 = !DILocation(line: 103, column: 31, scope: !688)
!698 = !DILocation(line: 103, column: 5, scope: !688)
!699 = distinct !{!699, !691, !700, !281}
!700 = !DILocation(line: 106, column: 5, scope: !685)
!701 = !DILocation(line: 107, column: 5, scope: !674)
!702 = !DILocation(line: 108, column: 1, scope: !674)
!703 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !704, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!704 = !DISubroutineType(types: !705)
!705 = !{!156, !677, !156, !42}
!706 = !DILocalVariable(name: "bytes", arg: 1, scope: !703, file: !3, line: 113, type: !677)
!707 = !DILocation(line: 113, column: 39, scope: !703)
!708 = !DILocalVariable(name: "numBytes", arg: 2, scope: !703, file: !3, line: 113, type: !156)
!709 = !DILocation(line: 113, column: 53, scope: !703)
!710 = !DILocalVariable(name: "hex", arg: 3, scope: !703, file: !3, line: 113, type: !42)
!711 = !DILocation(line: 113, column: 71, scope: !703)
!712 = !DILocalVariable(name: "numWritten", scope: !703, file: !3, line: 115, type: !156)
!713 = !DILocation(line: 115, column: 12, scope: !703)
!714 = !DILocation(line: 121, column: 5, scope: !703)
!715 = !DILocation(line: 121, column: 12, scope: !703)
!716 = !DILocation(line: 121, column: 25, scope: !703)
!717 = !DILocation(line: 121, column: 23, scope: !703)
!718 = !DILocation(line: 121, column: 34, scope: !703)
!719 = !DILocation(line: 121, column: 37, scope: !703)
!720 = !DILocation(line: 121, column: 67, scope: !703)
!721 = !DILocation(line: 121, column: 70, scope: !703)
!722 = !DILocation(line: 0, scope: !703)
!723 = !DILocalVariable(name: "byte", scope: !724, file: !3, line: 123, type: !23)
!724 = distinct !DILexicalBlock(scope: !703, file: !3, line: 122, column: 5)
!725 = !DILocation(line: 123, column: 13, scope: !724)
!726 = !DILocation(line: 124, column: 17, scope: !724)
!727 = !DILocation(line: 124, column: 25, scope: !724)
!728 = !DILocation(line: 124, column: 23, scope: !724)
!729 = !DILocation(line: 124, column: 9, scope: !724)
!730 = !DILocation(line: 125, column: 45, scope: !724)
!731 = !DILocation(line: 125, column: 29, scope: !724)
!732 = !DILocation(line: 125, column: 9, scope: !724)
!733 = !DILocation(line: 125, column: 15, scope: !724)
!734 = !DILocation(line: 125, column: 27, scope: !724)
!735 = !DILocation(line: 126, column: 9, scope: !724)
!736 = distinct !{!736, !714, !737, !281}
!737 = !DILocation(line: 127, column: 5, scope: !703)
!738 = !DILocation(line: 129, column: 12, scope: !703)
!739 = !DILocation(line: 129, column: 5, scope: !703)
!740 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !741, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!741 = !DISubroutineType(types: !742)
!742 = !{!156, !677, !156, !538}
!743 = !DILocalVariable(name: "bytes", arg: 1, scope: !740, file: !3, line: 135, type: !677)
!744 = !DILocation(line: 135, column: 41, scope: !740)
!745 = !DILocalVariable(name: "numBytes", arg: 2, scope: !740, file: !3, line: 135, type: !156)
!746 = !DILocation(line: 135, column: 55, scope: !740)
!747 = !DILocalVariable(name: "hex", arg: 3, scope: !740, file: !3, line: 135, type: !538)
!748 = !DILocation(line: 135, column: 76, scope: !740)
!749 = !DILocalVariable(name: "numWritten", scope: !740, file: !3, line: 137, type: !156)
!750 = !DILocation(line: 137, column: 12, scope: !740)
!751 = !DILocation(line: 143, column: 5, scope: !740)
!752 = !DILocation(line: 143, column: 12, scope: !740)
!753 = !DILocation(line: 143, column: 25, scope: !740)
!754 = !DILocation(line: 143, column: 23, scope: !740)
!755 = !DILocation(line: 143, column: 34, scope: !740)
!756 = !DILocation(line: 143, column: 47, scope: !740)
!757 = !DILocation(line: 143, column: 55, scope: !740)
!758 = !DILocation(line: 143, column: 53, scope: !740)
!759 = !DILocation(line: 143, column: 37, scope: !740)
!760 = !DILocation(line: 143, column: 68, scope: !740)
!761 = !DILocation(line: 143, column: 81, scope: !740)
!762 = !DILocation(line: 143, column: 89, scope: !740)
!763 = !DILocation(line: 143, column: 87, scope: !740)
!764 = !DILocation(line: 143, column: 100, scope: !740)
!765 = !DILocation(line: 143, column: 71, scope: !740)
!766 = !DILocation(line: 0, scope: !740)
!767 = !DILocalVariable(name: "byte", scope: !768, file: !3, line: 145, type: !23)
!768 = distinct !DILexicalBlock(scope: !740, file: !3, line: 144, column: 5)
!769 = !DILocation(line: 145, column: 13, scope: !768)
!770 = !DILocation(line: 146, column: 18, scope: !768)
!771 = !DILocation(line: 146, column: 26, scope: !768)
!772 = !DILocation(line: 146, column: 24, scope: !768)
!773 = !DILocation(line: 146, column: 9, scope: !768)
!774 = !DILocation(line: 147, column: 45, scope: !768)
!775 = !DILocation(line: 147, column: 29, scope: !768)
!776 = !DILocation(line: 147, column: 9, scope: !768)
!777 = !DILocation(line: 147, column: 15, scope: !768)
!778 = !DILocation(line: 147, column: 27, scope: !768)
!779 = !DILocation(line: 148, column: 9, scope: !768)
!780 = distinct !{!780, !751, !781, !281}
!781 = !DILocation(line: 149, column: 5, scope: !740)
!782 = !DILocation(line: 151, column: 12, scope: !740)
!783 = !DILocation(line: 151, column: 5, scope: !740)
!784 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !785, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DISubroutineType(types: !786)
!786 = !{!23}
!787 = !DILocation(line: 158, column: 5, scope: !784)
!788 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !785, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 163, column: 5, scope: !788)
!790 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !785, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 168, column: 13, scope: !790)
!792 = !DILocation(line: 168, column: 20, scope: !790)
!793 = !DILocation(line: 168, column: 5, scope: !790)
!794 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 187, column: 16, scope: !794)
!796 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 188, column: 16, scope: !796)
!798 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 189, column: 16, scope: !798)
!800 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 190, column: 16, scope: !800)
!802 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 191, column: 16, scope: !802)
!804 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 192, column: 16, scope: !804)
!806 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!807 = !DILocation(line: 193, column: 16, scope: !806)
!808 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!809 = !DILocation(line: 194, column: 16, scope: !808)
!810 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DILocation(line: 195, column: 16, scope: !810)
!812 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!813 = !DILocation(line: 198, column: 15, scope: !812)
!814 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!815 = !DILocation(line: 199, column: 15, scope: !814)
!816 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!817 = !DILocation(line: 200, column: 15, scope: !816)
!818 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!819 = !DILocation(line: 201, column: 15, scope: !818)
!820 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!821 = !DILocation(line: 202, column: 15, scope: !820)
!822 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!823 = !DILocation(line: 203, column: 15, scope: !822)
!824 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!825 = !DILocation(line: 204, column: 15, scope: !824)
!826 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!827 = !DILocation(line: 205, column: 15, scope: !826)
!828 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!829 = !DILocation(line: 206, column: 15, scope: !828)
