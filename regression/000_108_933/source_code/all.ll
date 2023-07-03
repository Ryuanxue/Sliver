; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !63
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !66
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !90
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !92
@globalTrue = dso_local global i32 1, align 4, !dbg !94
@globalFalse = dso_local global i32 0, align 4, !dbg !96
@globalFive = dso_local global i32 5, align 4, !dbg !98
@globalArgc = dso_local global i32 0, align 4, !dbg !100
@globalArgv = dso_local global i8** null, align 8, !dbg !102
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_04_bad() #0 !dbg !109 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !115, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !122
  %tobool = icmp ne i32 %1, 0, !dbg !122
  br i1 %tobool, label %if.then, label %if.end31, !dbg !124

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !129, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %connectSocket, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !155, metadata !DIExpression()), !dbg !159
  %2 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i64 @strlen(i8* %2) #7, !dbg !161
  store i64 %call, i64* %dataLen, align 8, !dbg !159
  br label %do.body, !dbg !162

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !163
  store i32 %call1, i32* %connectSocket, align 4, !dbg !165
  %3 = load i32, i32* %connectSocket, align 4, !dbg !166
  %cmp = icmp eq i32 %3, -1, !dbg !168
  br i1 %cmp, label %if.then2, label %if.end, !dbg !169

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !170

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !172
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !173
  store i16 2, i16* %sin_family, align 4, !dbg !174
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !175
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !176
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !177
  store i32 %call3, i32* %s_addr, align 4, !dbg !178
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !179
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !180
  store i16 %call4, i16* %sin_port, align 2, !dbg !181
  %5 = load i32, i32* %connectSocket, align 4, !dbg !182
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !184
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !185
  %cmp6 = icmp eq i32 %call5, -1, !dbg !186
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !187

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !188

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !190
  %8 = load i8*, i8** %data, align 8, !dbg !191
  %9 = load i64, i64* %dataLen, align 8, !dbg !192
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !193
  %10 = load i64, i64* %dataLen, align 8, !dbg !194
  %sub = sub i64 100, %10, !dbg !195
  %sub9 = sub i64 %sub, 1, !dbg !196
  %mul = mul i64 1, %sub9, !dbg !197
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !198
  %conv = trunc i64 %call10 to i32, !dbg !198
  store i32 %conv, i32* %recvResult, align 4, !dbg !199
  %11 = load i32, i32* %recvResult, align 4, !dbg !200
  %cmp11 = icmp eq i32 %11, -1, !dbg !202
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !203

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !204
  %cmp13 = icmp eq i32 %12, 0, !dbg !205
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !206

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !207

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !209
  %14 = load i64, i64* %dataLen, align 8, !dbg !210
  %15 = load i32, i32* %recvResult, align 4, !dbg !211
  %conv17 = sext i32 %15 to i64, !dbg !211
  %div = udiv i64 %conv17, 1, !dbg !212
  %add = add i64 %14, %div, !dbg !213
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !209
  store i8 0, i8* %arrayidx, align 1, !dbg !214
  %16 = load i8*, i8** %data, align 8, !dbg !215
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !216
  store i8* %call18, i8** %replace, align 8, !dbg !217
  %17 = load i8*, i8** %replace, align 8, !dbg !218
  %tobool19 = icmp ne i8* %17, null, !dbg !218
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !220

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !221
  store i8 0, i8* %18, align 1, !dbg !223
  br label %if.end21, !dbg !224

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !225
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !226
  store i8* %call22, i8** %replace, align 8, !dbg !227
  %20 = load i8*, i8** %replace, align 8, !dbg !228
  %tobool23 = icmp ne i8* %20, null, !dbg !228
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !230

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !231
  store i8 0, i8* %21, align 1, !dbg !233
  br label %if.end25, !dbg !234

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !235

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !236
  %cmp26 = icmp ne i32 %22, -1, !dbg !238
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !239

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !240
  %call29 = call i32 @close(i32 %23), !dbg !242
  br label %if.end30, !dbg !243

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !244

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !245
  %tobool32 = icmp ne i32 %24, 0, !dbg !245
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !247

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !248, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %n, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !254, metadata !DIExpression()), !dbg !255
  %25 = load i8*, i8** %data, align 8, !dbg !256
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !258
  %cmp35 = icmp eq i32 %call34, 1, !dbg !259
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !260

if.then37:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !261
  store i32 0, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !265

for.cond:                                         ; preds = %for.inc, %if.then37
  %26 = load i32, i32* %i, align 4, !dbg !266
  %27 = load i32, i32* %n, align 4, !dbg !268
  %cmp38 = icmp slt i32 %26, %27, !dbg !269
  br i1 %cmp38, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !271
  %inc = add nsw i32 %28, 1, !dbg !271
  store i32 %inc, i32* %intVariable, align 4, !dbg !271
  br label %for.inc, !dbg !273

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !274
  %inc40 = add nsw i32 %29, 1, !dbg !274
  store i32 %inc40, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !275, !llvm.loop !276

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %30), !dbg !280
  br label %if.end41, !dbg !281

if.end41:                                         ; preds = %for.end, %if.then33
  br label %if.end42, !dbg !282

if.end42:                                         ; preds = %if.end41, %if.end31
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
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !291
  %tobool = icmp ne i32 %1, 0, !dbg !291
  br i1 %tobool, label %if.then, label %if.end31, !dbg !293

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 -1, i32* %connectSocket, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !304, metadata !DIExpression()), !dbg !305
  %2 = load i8*, i8** %data, align 8, !dbg !306
  %call = call i64 @strlen(i8* %2) #7, !dbg !307
  store i64 %call, i64* %dataLen, align 8, !dbg !305
  br label %do.body, !dbg !308

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !309
  store i32 %call1, i32* %connectSocket, align 4, !dbg !311
  %3 = load i32, i32* %connectSocket, align 4, !dbg !312
  %cmp = icmp eq i32 %3, -1, !dbg !314
  br i1 %cmp, label %if.then2, label %if.end, !dbg !315

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !316

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !318
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !318
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !319
  store i16 2, i16* %sin_family, align 4, !dbg !320
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !321
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !322
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !323
  store i32 %call3, i32* %s_addr, align 4, !dbg !324
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !325
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !326
  store i16 %call4, i16* %sin_port, align 2, !dbg !327
  %5 = load i32, i32* %connectSocket, align 4, !dbg !328
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !330
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !331
  %cmp6 = icmp eq i32 %call5, -1, !dbg !332
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !333

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !334

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !336
  %8 = load i8*, i8** %data, align 8, !dbg !337
  %9 = load i64, i64* %dataLen, align 8, !dbg !338
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !339
  %10 = load i64, i64* %dataLen, align 8, !dbg !340
  %sub = sub i64 100, %10, !dbg !341
  %sub9 = sub i64 %sub, 1, !dbg !342
  %mul = mul i64 1, %sub9, !dbg !343
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !344
  %conv = trunc i64 %call10 to i32, !dbg !344
  store i32 %conv, i32* %recvResult, align 4, !dbg !345
  %11 = load i32, i32* %recvResult, align 4, !dbg !346
  %cmp11 = icmp eq i32 %11, -1, !dbg !348
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !349

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !350
  %cmp13 = icmp eq i32 %12, 0, !dbg !351
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !352

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !353

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !355
  %14 = load i64, i64* %dataLen, align 8, !dbg !356
  %15 = load i32, i32* %recvResult, align 4, !dbg !357
  %conv17 = sext i32 %15 to i64, !dbg !357
  %div = udiv i64 %conv17, 1, !dbg !358
  %add = add i64 %14, %div, !dbg !359
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !355
  store i8 0, i8* %arrayidx, align 1, !dbg !360
  %16 = load i8*, i8** %data, align 8, !dbg !361
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !362
  store i8* %call18, i8** %replace, align 8, !dbg !363
  %17 = load i8*, i8** %replace, align 8, !dbg !364
  %tobool19 = icmp ne i8* %17, null, !dbg !364
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !366

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !367
  store i8 0, i8* %18, align 1, !dbg !369
  br label %if.end21, !dbg !370

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !371
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !372
  store i8* %call22, i8** %replace, align 8, !dbg !373
  %20 = load i8*, i8** %replace, align 8, !dbg !374
  %tobool23 = icmp ne i8* %20, null, !dbg !374
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !376

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !377
  store i8 0, i8* %21, align 1, !dbg !379
  br label %if.end25, !dbg !380

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !381

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !382
  %cmp26 = icmp ne i32 %22, -1, !dbg !384
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !385

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !386
  %call29 = call i32 @close(i32 %23), !dbg !388
  br label %if.end30, !dbg !389

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !390

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !391
  %tobool32 = icmp ne i32 %24, 0, !dbg !391
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !393

if.then33:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !394
  br label %if.end46, !dbg !396

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %n, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !403, metadata !DIExpression()), !dbg !404
  %25 = load i8*, i8** %data, align 8, !dbg !405
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !407
  %cmp35 = icmp eq i32 %call34, 1, !dbg !408
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !409

if.then37:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !410
  %cmp38 = icmp slt i32 %26, 10000, !dbg !413
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !414

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !415
  store i32 0, i32* %i, align 4, !dbg !417
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !420
  %28 = load i32, i32* %n, align 4, !dbg !422
  %cmp41 = icmp slt i32 %27, %28, !dbg !423
  br i1 %cmp41, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !425
  %inc = add nsw i32 %29, 1, !dbg !425
  store i32 %inc, i32* %intVariable, align 4, !dbg !425
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !428
  %inc43 = add nsw i32 %30, 1, !dbg !428
  store i32 %inc43, i32* %i, align 4, !dbg !428
  br label %for.cond, !dbg !429, !llvm.loop !430

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !432
  call void @printIntLine(i32 %31), !dbg !433
  br label %if.end44, !dbg !434

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !435

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !437 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !441
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !441
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !442
  store i8* %arraydecay, i8** %data, align 8, !dbg !443
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !444
  %tobool = icmp ne i32 %1, 0, !dbg !444
  br i1 %tobool, label %if.then, label %if.end31, !dbg !446

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !447, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !455, metadata !DIExpression()), !dbg !456
  store i32 -1, i32* %connectSocket, align 4, !dbg !456
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !457, metadata !DIExpression()), !dbg !458
  %2 = load i8*, i8** %data, align 8, !dbg !459
  %call = call i64 @strlen(i8* %2) #7, !dbg !460
  store i64 %call, i64* %dataLen, align 8, !dbg !458
  br label %do.body, !dbg !461

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !462
  store i32 %call1, i32* %connectSocket, align 4, !dbg !464
  %3 = load i32, i32* %connectSocket, align 4, !dbg !465
  %cmp = icmp eq i32 %3, -1, !dbg !467
  br i1 %cmp, label %if.then2, label %if.end, !dbg !468

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !469

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !471
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !471
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !472
  store i16 2, i16* %sin_family, align 4, !dbg !473
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !474
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !475
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !476
  store i32 %call3, i32* %s_addr, align 4, !dbg !477
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !478
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !479
  store i16 %call4, i16* %sin_port, align 2, !dbg !480
  %5 = load i32, i32* %connectSocket, align 4, !dbg !481
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !483
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !484
  %cmp6 = icmp eq i32 %call5, -1, !dbg !485
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !486

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !487

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !489
  %8 = load i8*, i8** %data, align 8, !dbg !490
  %9 = load i64, i64* %dataLen, align 8, !dbg !491
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !492
  %10 = load i64, i64* %dataLen, align 8, !dbg !493
  %sub = sub i64 100, %10, !dbg !494
  %sub9 = sub i64 %sub, 1, !dbg !495
  %mul = mul i64 1, %sub9, !dbg !496
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !497
  %conv = trunc i64 %call10 to i32, !dbg !497
  store i32 %conv, i32* %recvResult, align 4, !dbg !498
  %11 = load i32, i32* %recvResult, align 4, !dbg !499
  %cmp11 = icmp eq i32 %11, -1, !dbg !501
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !502

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !503
  %cmp13 = icmp eq i32 %12, 0, !dbg !504
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !505

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !506

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !508
  %14 = load i64, i64* %dataLen, align 8, !dbg !509
  %15 = load i32, i32* %recvResult, align 4, !dbg !510
  %conv17 = sext i32 %15 to i64, !dbg !510
  %div = udiv i64 %conv17, 1, !dbg !511
  %add = add i64 %14, %div, !dbg !512
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !508
  store i8 0, i8* %arrayidx, align 1, !dbg !513
  %16 = load i8*, i8** %data, align 8, !dbg !514
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !515
  store i8* %call18, i8** %replace, align 8, !dbg !516
  %17 = load i8*, i8** %replace, align 8, !dbg !517
  %tobool19 = icmp ne i8* %17, null, !dbg !517
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !519

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !520
  store i8 0, i8* %18, align 1, !dbg !522
  br label %if.end21, !dbg !523

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !524
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !525
  store i8* %call22, i8** %replace, align 8, !dbg !526
  %20 = load i8*, i8** %replace, align 8, !dbg !527
  %tobool23 = icmp ne i8* %20, null, !dbg !527
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !529

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !530
  store i8 0, i8* %21, align 1, !dbg !532
  br label %if.end25, !dbg !533

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !534

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !535
  %cmp26 = icmp ne i32 %22, -1, !dbg !537
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !538

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !539
  %call29 = call i32 @close(i32 %23), !dbg !541
  br label %if.end30, !dbg !542

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !543

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !544
  %tobool32 = icmp ne i32 %24, 0, !dbg !544
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !546

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !547, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i32* %n, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !553, metadata !DIExpression()), !dbg !554
  %25 = load i8*, i8** %data, align 8, !dbg !555
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !557
  %cmp35 = icmp eq i32 %call34, 1, !dbg !558
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !559

if.then37:                                        ; preds = %if.then33
  %26 = load i32, i32* %n, align 4, !dbg !560
  %cmp38 = icmp slt i32 %26, 10000, !dbg !563
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !564

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !565
  store i32 0, i32* %i, align 4, !dbg !567
  br label %for.cond, !dbg !569

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !570
  %28 = load i32, i32* %n, align 4, !dbg !572
  %cmp41 = icmp slt i32 %27, %28, !dbg !573
  br i1 %cmp41, label %for.body, label %for.end, !dbg !574

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !575
  %inc = add nsw i32 %29, 1, !dbg !575
  store i32 %inc, i32* %intVariable, align 4, !dbg !575
  br label %for.inc, !dbg !577

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !578
  %inc43 = add nsw i32 %30, 1, !dbg !578
  store i32 %inc43, i32* %i, align 4, !dbg !578
  br label %for.cond, !dbg !579, !llvm.loop !580

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !582
  call void @printIntLine(i32 %31), !dbg !583
  br label %if.end44, !dbg !584

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !585

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end46, !dbg !586

if.end46:                                         ; preds = %if.end45, %if.end31
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !588 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !592
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !592
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !593
  store i8* %arraydecay, i8** %data, align 8, !dbg !594
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !595
  %tobool = icmp ne i32 %1, 0, !dbg !595
  br i1 %tobool, label %if.then, label %if.else, !dbg !597

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !598
  br label %if.end, !dbg !600

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !601
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !603
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !604
  %tobool1 = icmp ne i32 %3, 0, !dbg !604
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !606

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !607, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata i32* %n, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !613, metadata !DIExpression()), !dbg !614
  %4 = load i8*, i8** %data, align 8, !dbg !615
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !617
  %cmp = icmp eq i32 %call3, 1, !dbg !618
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !619

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !620
  store i32 0, i32* %i, align 4, !dbg !622
  br label %for.cond, !dbg !624

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !625
  %6 = load i32, i32* %n, align 4, !dbg !627
  %cmp5 = icmp slt i32 %5, %6, !dbg !628
  br i1 %cmp5, label %for.body, label %for.end, !dbg !629

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !630
  %inc = add nsw i32 %7, 1, !dbg !630
  store i32 %inc, i32* %intVariable, align 4, !dbg !630
  br label %for.inc, !dbg !632

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !633
  %inc6 = add nsw i32 %8, 1, !dbg !633
  store i32 %inc6, i32* %i, align 4, !dbg !633
  br label %for.cond, !dbg !634, !llvm.loop !635

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !637
  call void @printIntLine(i32 %9), !dbg !638
  br label %if.end7, !dbg !639

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !640

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !641
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !642 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !646
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !646
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !647
  store i8* %arraydecay, i8** %data, align 8, !dbg !648
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !649
  %tobool = icmp ne i32 %1, 0, !dbg !649
  br i1 %tobool, label %if.then, label %if.end, !dbg !651

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !652
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !654
  br label %if.end, !dbg !655

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !656
  %tobool1 = icmp ne i32 %3, 0, !dbg !656
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !658

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !659, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata i32* %n, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !665, metadata !DIExpression()), !dbg !666
  %4 = load i8*, i8** %data, align 8, !dbg !667
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !669
  %cmp = icmp eq i32 %call3, 1, !dbg !670
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !671

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !672
  store i32 0, i32* %i, align 4, !dbg !674
  br label %for.cond, !dbg !676

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !677
  %6 = load i32, i32* %n, align 4, !dbg !679
  %cmp5 = icmp slt i32 %5, %6, !dbg !680
  br i1 %cmp5, label %for.body, label %for.end, !dbg !681

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !682
  %inc = add nsw i32 %7, 1, !dbg !682
  store i32 %inc, i32* %intVariable, align 4, !dbg !682
  br label %for.inc, !dbg !684

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !685
  %inc6 = add nsw i32 %8, 1, !dbg !685
  store i32 %inc6, i32* %i, align 4, !dbg !685
  br label %for.cond, !dbg !686, !llvm.loop !687

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !689
  call void @printIntLine(i32 %9), !dbg !690
  br label %if.end7, !dbg !691

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !692

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good() #0 !dbg !694 {
entry:
  call void @goodB2G1(), !dbg !695
  call void @goodB2G2(), !dbg !696
  call void @goodG2B1(), !dbg !697
  call void @goodG2B2(), !dbg !698
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !700 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !703, metadata !DIExpression()), !dbg !704
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !705
  %0 = load i8*, i8** %line.addr, align 8, !dbg !706
  %cmp = icmp ne i8* %0, null, !dbg !708
  br i1 %cmp, label %if.then, label %if.end, !dbg !709

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !710
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !712
  br label %if.end, !dbg !713

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !714
  ret void, !dbg !715
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !716 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !717, metadata !DIExpression()), !dbg !718
  %0 = load i8*, i8** %line.addr, align 8, !dbg !719
  %cmp = icmp ne i8* %0, null, !dbg !721
  br i1 %cmp, label %if.then, label %if.end, !dbg !722

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !723
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !725
  br label %if.end, !dbg !726

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !728 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !733, metadata !DIExpression()), !dbg !734
  %0 = load i32*, i32** %line.addr, align 8, !dbg !735
  %cmp = icmp ne i32* %0, null, !dbg !737
  br i1 %cmp, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !739
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !741
  br label %if.end, !dbg !742

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !743
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !744 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !749
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !752 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !756, metadata !DIExpression()), !dbg !757
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !758
  %conv = sext i16 %0 to i32, !dbg !758
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !759
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !761 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !765, metadata !DIExpression()), !dbg !766
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !767
  %conv = fpext float %0 to double, !dbg !767
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !768
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !770 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !776
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !777
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !779 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !785, metadata !DIExpression()), !dbg !786
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !787
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !788
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !790 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !793, metadata !DIExpression()), !dbg !794
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !795
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !796
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !798 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !803
  %conv = sext i8 %0 to i32, !dbg !803
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !804
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !806 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !809, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !811, metadata !DIExpression()), !dbg !815
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !816
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !817
  store i32 %0, i32* %arrayidx, align 4, !dbg !818
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !819
  store i32 0, i32* %arrayidx1, align 4, !dbg !820
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !821
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !822
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !824 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !827, metadata !DIExpression()), !dbg !828
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !829
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !830
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !832 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !835, metadata !DIExpression()), !dbg !836
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !837
  %conv = zext i8 %0 to i32, !dbg !837
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !838
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !840 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !844, metadata !DIExpression()), !dbg !845
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !846
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !847
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !849 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !859, metadata !DIExpression()), !dbg !860
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !861
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !862
  %1 = load i32, i32* %intOne, align 4, !dbg !862
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !863
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !864
  %3 = load i32, i32* %intTwo, align 4, !dbg !864
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !865
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !867 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !871, metadata !DIExpression()), !dbg !872
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i64* %i, metadata !875, metadata !DIExpression()), !dbg !876
  store i64 0, i64* %i, align 8, !dbg !877
  br label %for.cond, !dbg !879

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !880
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !882
  %cmp = icmp ult i64 %0, %1, !dbg !883
  br i1 %cmp, label %for.body, label %for.end, !dbg !884

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !885
  %3 = load i64, i64* %i, align 8, !dbg !887
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !885
  %4 = load i8, i8* %arrayidx, align 1, !dbg !885
  %conv = zext i8 %4 to i32, !dbg !885
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !888
  br label %for.inc, !dbg !889

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !890
  %inc = add i64 %5, 1, !dbg !890
  store i64 %inc, i64* %i, align 8, !dbg !890
  br label %for.cond, !dbg !891, !llvm.loop !892

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !894
  ret void, !dbg !895
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !896 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !899, metadata !DIExpression()), !dbg !900
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !901, metadata !DIExpression()), !dbg !902
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !905, metadata !DIExpression()), !dbg !906
  store i64 0, i64* %numWritten, align 8, !dbg !906
  br label %while.cond, !dbg !907

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !908
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !909
  %cmp = icmp ult i64 %0, %1, !dbg !910
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !911

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !912
  %2 = load i16*, i16** %call, align 8, !dbg !912
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !912
  %4 = load i64, i64* %numWritten, align 8, !dbg !912
  %mul = mul i64 2, %4, !dbg !912
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !912
  %5 = load i8, i8* %arrayidx, align 1, !dbg !912
  %conv = sext i8 %5 to i32, !dbg !912
  %idxprom = sext i32 %conv to i64, !dbg !912
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !912
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !912
  %conv2 = zext i16 %6 to i32, !dbg !912
  %and = and i32 %conv2, 4096, !dbg !912
  %tobool = icmp ne i32 %and, 0, !dbg !912
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !913

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !914
  %7 = load i16*, i16** %call3, align 8, !dbg !914
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !914
  %9 = load i64, i64* %numWritten, align 8, !dbg !914
  %mul4 = mul i64 2, %9, !dbg !914
  %add = add i64 %mul4, 1, !dbg !914
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !914
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !914
  %conv6 = sext i8 %10 to i32, !dbg !914
  %idxprom7 = sext i32 %conv6 to i64, !dbg !914
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !914
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !914
  %conv9 = zext i16 %11 to i32, !dbg !914
  %and10 = and i32 %conv9, 4096, !dbg !914
  %tobool11 = icmp ne i32 %and10, 0, !dbg !913
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !915
  br i1 %12, label %while.body, label %while.end, !dbg !907

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !916, metadata !DIExpression()), !dbg !918
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !919
  %14 = load i64, i64* %numWritten, align 8, !dbg !920
  %mul12 = mul i64 2, %14, !dbg !921
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !919
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !922
  %15 = load i32, i32* %byte, align 4, !dbg !923
  %conv15 = trunc i32 %15 to i8, !dbg !924
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !925
  %17 = load i64, i64* %numWritten, align 8, !dbg !926
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !925
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !927
  %18 = load i64, i64* %numWritten, align 8, !dbg !928
  %inc = add i64 %18, 1, !dbg !928
  store i64 %inc, i64* %numWritten, align 8, !dbg !928
  br label %while.cond, !dbg !907, !llvm.loop !929

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !931
  ret i64 %19, !dbg !932
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !933 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !938, metadata !DIExpression()), !dbg !939
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !942, metadata !DIExpression()), !dbg !943
  store i64 0, i64* %numWritten, align 8, !dbg !943
  br label %while.cond, !dbg !944

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !945
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !946
  %cmp = icmp ult i64 %0, %1, !dbg !947
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !948

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !949
  %3 = load i64, i64* %numWritten, align 8, !dbg !950
  %mul = mul i64 2, %3, !dbg !951
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !949
  %4 = load i32, i32* %arrayidx, align 4, !dbg !949
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !952
  %tobool = icmp ne i32 %call, 0, !dbg !952
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !953

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !954
  %6 = load i64, i64* %numWritten, align 8, !dbg !955
  %mul1 = mul i64 2, %6, !dbg !956
  %add = add i64 %mul1, 1, !dbg !957
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !954
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !954
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !958
  %tobool4 = icmp ne i32 %call3, 0, !dbg !953
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !959
  br i1 %8, label %while.body, label %while.end, !dbg !944

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !960, metadata !DIExpression()), !dbg !962
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !963
  %10 = load i64, i64* %numWritten, align 8, !dbg !964
  %mul5 = mul i64 2, %10, !dbg !965
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !963
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !966
  %11 = load i32, i32* %byte, align 4, !dbg !967
  %conv = trunc i32 %11 to i8, !dbg !968
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !969
  %13 = load i64, i64* %numWritten, align 8, !dbg !970
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !969
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !971
  %14 = load i64, i64* %numWritten, align 8, !dbg !972
  %inc = add i64 %14, 1, !dbg !972
  store i64 %inc, i64* %numWritten, align 8, !dbg !972
  br label %while.cond, !dbg !944, !llvm.loop !973

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !975
  ret i64 %15, !dbg !976
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !977 {
entry:
  ret i32 1, !dbg !980
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !981 {
entry:
  ret i32 0, !dbg !982
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !983 {
entry:
  %call = call i32 @rand() #8, !dbg !984
  %rem = srem i32 %call, 2, !dbg !985
  ret i32 %rem, !dbg !986
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !987 {
entry:
  ret void, !dbg !988
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !989 {
entry:
  ret void, !dbg !990
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !991 {
entry:
  ret void, !dbg !992
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !993 {
entry:
  ret void, !dbg !994
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !995 {
entry:
  ret void, !dbg !996
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !997 {
entry:
  ret void, !dbg !998
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !999 {
entry:
  ret void, !dbg !1000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !1001 {
entry:
  ret void, !dbg !1002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !1003 {
entry:
  ret void, !dbg !1004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1005 {
entry:
  ret void, !dbg !1006
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1007 {
entry:
  ret void, !dbg !1008
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1009 {
entry:
  ret void, !dbg !1010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1011 {
entry:
  ret void, !dbg !1012
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1013 {
entry:
  ret void, !dbg !1014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1015 {
entry:
  ret void, !dbg !1016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1017 {
entry:
  ret void, !dbg !1018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1019 {
entry:
  ret void, !dbg !1020
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1021 {
entry:
  ret void, !dbg !1022
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

!llvm.dbg.cu = !{!2, !68}
!llvm.ident = !{!105, !105}
!llvm.module.flags = !{!106, !107, !108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 51, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_933/source_code")
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
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 52, type: !65, isLocal: false, isDefinition: true)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !68, file: !69, line: 174, type: !65, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !86, globals: !89, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_933/source_code")
!70 = !{!71}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 46, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!74 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!86 = !{!87, !65, !55, !88}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !{!66, !90, !92, !94, !96, !98, !100, !102}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !68, file: !69, line: 175, type: !65, isLocal: false, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !68, file: !69, line: 176, type: !65, isLocal: false, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "globalTrue", scope: !68, file: !69, line: 181, type: !65, isLocal: false, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "globalFalse", scope: !68, file: !69, line: 182, type: !65, isLocal: false, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "globalFive", scope: !68, file: !69, line: 183, type: !65, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalArgc", scope: !68, file: !69, line: 214, type: !65, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "globalArgv", scope: !68, file: !69, line: 215, type: !104, isLocal: false, isDefinition: true)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!105 = !{!"clang version 12.0.0"}
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04_bad", scope: !3, file: !3, line: 56, type: !110, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null}
!112 = !{}
!113 = !DILocalVariable(name: "data", scope: !109, file: !3, line: 58, type: !61)
!114 = !DILocation(line: 58, column: 12, scope: !109)
!115 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !3, line: 59, type: !116)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 100)
!119 = !DILocation(line: 59, column: 10, scope: !109)
!120 = !DILocation(line: 60, column: 12, scope: !109)
!121 = !DILocation(line: 60, column: 10, scope: !109)
!122 = !DILocation(line: 61, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !109, file: !3, line: 61, column: 8)
!124 = !DILocation(line: 61, column: 8, scope: !109)
!125 = !DILocalVariable(name: "recvResult", scope: !126, file: !3, line: 68, type: !65)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 63, column: 9)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 62, column: 5)
!128 = !DILocation(line: 68, column: 17, scope: !126)
!129 = !DILocalVariable(name: "service", scope: !126, file: !3, line: 69, type: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !131)
!131 = !{!132, !133, !139, !146}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !130, file: !19, line: 240, baseType: !53, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !130, file: !19, line: 241, baseType: !134, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !136, line: 25, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !138, line: 40, baseType: !55)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !130, file: !19, line: 242, baseType: !140, size: 32, offset: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !140, file: !19, line: 33, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !136, line: 26, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !138, line: 42, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !130, file: !19, line: 245, baseType: !147, size: 64, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DILocation(line: 69, column: 32, scope: !126)
!151 = !DILocalVariable(name: "replace", scope: !126, file: !3, line: 70, type: !61)
!152 = !DILocation(line: 70, column: 19, scope: !126)
!153 = !DILocalVariable(name: "connectSocket", scope: !126, file: !3, line: 71, type: !65)
!154 = !DILocation(line: 71, column: 20, scope: !126)
!155 = !DILocalVariable(name: "dataLen", scope: !126, file: !3, line: 72, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !158)
!157 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!158 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DILocation(line: 72, column: 20, scope: !126)
!160 = !DILocation(line: 72, column: 37, scope: !126)
!161 = !DILocation(line: 72, column: 30, scope: !126)
!162 = !DILocation(line: 73, column: 13, scope: !126)
!163 = !DILocation(line: 83, column: 33, scope: !164)
!164 = distinct !DILexicalBlock(scope: !126, file: !3, line: 74, column: 13)
!165 = !DILocation(line: 83, column: 31, scope: !164)
!166 = !DILocation(line: 84, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 84, column: 21)
!168 = !DILocation(line: 84, column: 35, scope: !167)
!169 = !DILocation(line: 84, column: 21, scope: !164)
!170 = !DILocation(line: 86, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 85, column: 17)
!172 = !DILocation(line: 88, column: 17, scope: !164)
!173 = !DILocation(line: 89, column: 25, scope: !164)
!174 = !DILocation(line: 89, column: 36, scope: !164)
!175 = !DILocation(line: 90, column: 43, scope: !164)
!176 = !DILocation(line: 90, column: 25, scope: !164)
!177 = !DILocation(line: 90, column: 34, scope: !164)
!178 = !DILocation(line: 90, column: 41, scope: !164)
!179 = !DILocation(line: 91, column: 36, scope: !164)
!180 = !DILocation(line: 91, column: 25, scope: !164)
!181 = !DILocation(line: 91, column: 34, scope: !164)
!182 = !DILocation(line: 92, column: 29, scope: !183)
!183 = distinct !DILexicalBlock(scope: !164, file: !3, line: 92, column: 21)
!184 = !DILocation(line: 92, column: 44, scope: !183)
!185 = !DILocation(line: 92, column: 21, scope: !183)
!186 = !DILocation(line: 92, column: 89, scope: !183)
!187 = !DILocation(line: 92, column: 21, scope: !164)
!188 = !DILocation(line: 94, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !183, file: !3, line: 93, column: 17)
!190 = !DILocation(line: 99, column: 35, scope: !164)
!191 = !DILocation(line: 99, column: 59, scope: !164)
!192 = !DILocation(line: 99, column: 66, scope: !164)
!193 = !DILocation(line: 99, column: 64, scope: !164)
!194 = !DILocation(line: 99, column: 98, scope: !164)
!195 = !DILocation(line: 99, column: 96, scope: !164)
!196 = !DILocation(line: 99, column: 106, scope: !164)
!197 = !DILocation(line: 99, column: 89, scope: !164)
!198 = !DILocation(line: 99, column: 30, scope: !164)
!199 = !DILocation(line: 99, column: 28, scope: !164)
!200 = !DILocation(line: 100, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !164, file: !3, line: 100, column: 21)
!202 = !DILocation(line: 100, column: 32, scope: !201)
!203 = !DILocation(line: 100, column: 48, scope: !201)
!204 = !DILocation(line: 100, column: 51, scope: !201)
!205 = !DILocation(line: 100, column: 62, scope: !201)
!206 = !DILocation(line: 100, column: 21, scope: !164)
!207 = !DILocation(line: 102, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 101, column: 17)
!209 = !DILocation(line: 105, column: 17, scope: !164)
!210 = !DILocation(line: 105, column: 22, scope: !164)
!211 = !DILocation(line: 105, column: 32, scope: !164)
!212 = !DILocation(line: 105, column: 43, scope: !164)
!213 = !DILocation(line: 105, column: 30, scope: !164)
!214 = !DILocation(line: 105, column: 59, scope: !164)
!215 = !DILocation(line: 107, column: 34, scope: !164)
!216 = !DILocation(line: 107, column: 27, scope: !164)
!217 = !DILocation(line: 107, column: 25, scope: !164)
!218 = !DILocation(line: 108, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !164, file: !3, line: 108, column: 21)
!220 = !DILocation(line: 108, column: 21, scope: !164)
!221 = !DILocation(line: 110, column: 22, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 109, column: 17)
!223 = !DILocation(line: 110, column: 30, scope: !222)
!224 = !DILocation(line: 111, column: 17, scope: !222)
!225 = !DILocation(line: 112, column: 34, scope: !164)
!226 = !DILocation(line: 112, column: 27, scope: !164)
!227 = !DILocation(line: 112, column: 25, scope: !164)
!228 = !DILocation(line: 113, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !164, file: !3, line: 113, column: 21)
!230 = !DILocation(line: 113, column: 21, scope: !164)
!231 = !DILocation(line: 115, column: 22, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 114, column: 17)
!233 = !DILocation(line: 115, column: 30, scope: !232)
!234 = !DILocation(line: 116, column: 17, scope: !232)
!235 = !DILocation(line: 117, column: 13, scope: !164)
!236 = !DILocation(line: 119, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !126, file: !3, line: 119, column: 17)
!238 = !DILocation(line: 119, column: 31, scope: !237)
!239 = !DILocation(line: 119, column: 17, scope: !126)
!240 = !DILocation(line: 121, column: 30, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 120, column: 13)
!242 = !DILocation(line: 121, column: 17, scope: !241)
!243 = !DILocation(line: 122, column: 13, scope: !241)
!244 = !DILocation(line: 130, column: 5, scope: !127)
!245 = !DILocation(line: 131, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !109, file: !3, line: 131, column: 8)
!247 = !DILocation(line: 131, column: 8, scope: !109)
!248 = !DILocalVariable(name: "i", scope: !249, file: !3, line: 134, type: !65)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 133, column: 9)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 132, column: 5)
!251 = !DILocation(line: 134, column: 17, scope: !249)
!252 = !DILocalVariable(name: "n", scope: !249, file: !3, line: 134, type: !65)
!253 = !DILocation(line: 134, column: 20, scope: !249)
!254 = !DILocalVariable(name: "intVariable", scope: !249, file: !3, line: 134, type: !65)
!255 = !DILocation(line: 134, column: 23, scope: !249)
!256 = !DILocation(line: 135, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !3, line: 135, column: 17)
!258 = !DILocation(line: 135, column: 17, scope: !257)
!259 = !DILocation(line: 135, column: 40, scope: !257)
!260 = !DILocation(line: 135, column: 17, scope: !249)
!261 = !DILocation(line: 138, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 136, column: 13)
!263 = !DILocation(line: 139, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !3, line: 139, column: 17)
!265 = !DILocation(line: 139, column: 22, scope: !264)
!266 = !DILocation(line: 139, column: 29, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 139, column: 17)
!268 = !DILocation(line: 139, column: 33, scope: !267)
!269 = !DILocation(line: 139, column: 31, scope: !267)
!270 = !DILocation(line: 139, column: 17, scope: !264)
!271 = !DILocation(line: 142, column: 32, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 140, column: 17)
!273 = !DILocation(line: 143, column: 17, scope: !272)
!274 = !DILocation(line: 139, column: 37, scope: !267)
!275 = !DILocation(line: 139, column: 17, scope: !267)
!276 = distinct !{!276, !270, !277, !278}
!277 = !DILocation(line: 143, column: 17, scope: !264)
!278 = !{!"llvm.loop.mustprogress"}
!279 = !DILocation(line: 144, column: 30, scope: !262)
!280 = !DILocation(line: 144, column: 17, scope: !262)
!281 = !DILocation(line: 145, column: 13, scope: !262)
!282 = !DILocation(line: 147, column: 5, scope: !250)
!283 = !DILocation(line: 148, column: 1, scope: !109)
!284 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 155, type: !110, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!285 = !DILocalVariable(name: "data", scope: !284, file: !3, line: 157, type: !61)
!286 = !DILocation(line: 157, column: 12, scope: !284)
!287 = !DILocalVariable(name: "dataBuffer", scope: !284, file: !3, line: 158, type: !116)
!288 = !DILocation(line: 158, column: 10, scope: !284)
!289 = !DILocation(line: 159, column: 12, scope: !284)
!290 = !DILocation(line: 159, column: 10, scope: !284)
!291 = !DILocation(line: 160, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !3, line: 160, column: 8)
!293 = !DILocation(line: 160, column: 8, scope: !284)
!294 = !DILocalVariable(name: "recvResult", scope: !295, file: !3, line: 167, type: !65)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 162, column: 9)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 161, column: 5)
!297 = !DILocation(line: 167, column: 17, scope: !295)
!298 = !DILocalVariable(name: "service", scope: !295, file: !3, line: 168, type: !130)
!299 = !DILocation(line: 168, column: 32, scope: !295)
!300 = !DILocalVariable(name: "replace", scope: !295, file: !3, line: 169, type: !61)
!301 = !DILocation(line: 169, column: 19, scope: !295)
!302 = !DILocalVariable(name: "connectSocket", scope: !295, file: !3, line: 170, type: !65)
!303 = !DILocation(line: 170, column: 20, scope: !295)
!304 = !DILocalVariable(name: "dataLen", scope: !295, file: !3, line: 171, type: !156)
!305 = !DILocation(line: 171, column: 20, scope: !295)
!306 = !DILocation(line: 171, column: 37, scope: !295)
!307 = !DILocation(line: 171, column: 30, scope: !295)
!308 = !DILocation(line: 172, column: 13, scope: !295)
!309 = !DILocation(line: 182, column: 33, scope: !310)
!310 = distinct !DILexicalBlock(scope: !295, file: !3, line: 173, column: 13)
!311 = !DILocation(line: 182, column: 31, scope: !310)
!312 = !DILocation(line: 183, column: 21, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 183, column: 21)
!314 = !DILocation(line: 183, column: 35, scope: !313)
!315 = !DILocation(line: 183, column: 21, scope: !310)
!316 = !DILocation(line: 185, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 184, column: 17)
!318 = !DILocation(line: 187, column: 17, scope: !310)
!319 = !DILocation(line: 188, column: 25, scope: !310)
!320 = !DILocation(line: 188, column: 36, scope: !310)
!321 = !DILocation(line: 189, column: 43, scope: !310)
!322 = !DILocation(line: 189, column: 25, scope: !310)
!323 = !DILocation(line: 189, column: 34, scope: !310)
!324 = !DILocation(line: 189, column: 41, scope: !310)
!325 = !DILocation(line: 190, column: 36, scope: !310)
!326 = !DILocation(line: 190, column: 25, scope: !310)
!327 = !DILocation(line: 190, column: 34, scope: !310)
!328 = !DILocation(line: 191, column: 29, scope: !329)
!329 = distinct !DILexicalBlock(scope: !310, file: !3, line: 191, column: 21)
!330 = !DILocation(line: 191, column: 44, scope: !329)
!331 = !DILocation(line: 191, column: 21, scope: !329)
!332 = !DILocation(line: 191, column: 89, scope: !329)
!333 = !DILocation(line: 191, column: 21, scope: !310)
!334 = !DILocation(line: 193, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !3, line: 192, column: 17)
!336 = !DILocation(line: 198, column: 35, scope: !310)
!337 = !DILocation(line: 198, column: 59, scope: !310)
!338 = !DILocation(line: 198, column: 66, scope: !310)
!339 = !DILocation(line: 198, column: 64, scope: !310)
!340 = !DILocation(line: 198, column: 98, scope: !310)
!341 = !DILocation(line: 198, column: 96, scope: !310)
!342 = !DILocation(line: 198, column: 106, scope: !310)
!343 = !DILocation(line: 198, column: 89, scope: !310)
!344 = !DILocation(line: 198, column: 30, scope: !310)
!345 = !DILocation(line: 198, column: 28, scope: !310)
!346 = !DILocation(line: 199, column: 21, scope: !347)
!347 = distinct !DILexicalBlock(scope: !310, file: !3, line: 199, column: 21)
!348 = !DILocation(line: 199, column: 32, scope: !347)
!349 = !DILocation(line: 199, column: 48, scope: !347)
!350 = !DILocation(line: 199, column: 51, scope: !347)
!351 = !DILocation(line: 199, column: 62, scope: !347)
!352 = !DILocation(line: 199, column: 21, scope: !310)
!353 = !DILocation(line: 201, column: 21, scope: !354)
!354 = distinct !DILexicalBlock(scope: !347, file: !3, line: 200, column: 17)
!355 = !DILocation(line: 204, column: 17, scope: !310)
!356 = !DILocation(line: 204, column: 22, scope: !310)
!357 = !DILocation(line: 204, column: 32, scope: !310)
!358 = !DILocation(line: 204, column: 43, scope: !310)
!359 = !DILocation(line: 204, column: 30, scope: !310)
!360 = !DILocation(line: 204, column: 59, scope: !310)
!361 = !DILocation(line: 206, column: 34, scope: !310)
!362 = !DILocation(line: 206, column: 27, scope: !310)
!363 = !DILocation(line: 206, column: 25, scope: !310)
!364 = !DILocation(line: 207, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !310, file: !3, line: 207, column: 21)
!366 = !DILocation(line: 207, column: 21, scope: !310)
!367 = !DILocation(line: 209, column: 22, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 208, column: 17)
!369 = !DILocation(line: 209, column: 30, scope: !368)
!370 = !DILocation(line: 210, column: 17, scope: !368)
!371 = !DILocation(line: 211, column: 34, scope: !310)
!372 = !DILocation(line: 211, column: 27, scope: !310)
!373 = !DILocation(line: 211, column: 25, scope: !310)
!374 = !DILocation(line: 212, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !310, file: !3, line: 212, column: 21)
!376 = !DILocation(line: 212, column: 21, scope: !310)
!377 = !DILocation(line: 214, column: 22, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 213, column: 17)
!379 = !DILocation(line: 214, column: 30, scope: !378)
!380 = !DILocation(line: 215, column: 17, scope: !378)
!381 = !DILocation(line: 216, column: 13, scope: !310)
!382 = !DILocation(line: 218, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !295, file: !3, line: 218, column: 17)
!384 = !DILocation(line: 218, column: 31, scope: !383)
!385 = !DILocation(line: 218, column: 17, scope: !295)
!386 = !DILocation(line: 220, column: 30, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 219, column: 13)
!388 = !DILocation(line: 220, column: 17, scope: !387)
!389 = !DILocation(line: 221, column: 13, scope: !387)
!390 = !DILocation(line: 229, column: 5, scope: !296)
!391 = !DILocation(line: 230, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !284, file: !3, line: 230, column: 8)
!393 = !DILocation(line: 230, column: 8, scope: !284)
!394 = !DILocation(line: 233, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 231, column: 5)
!396 = !DILocation(line: 234, column: 5, scope: !395)
!397 = !DILocalVariable(name: "i", scope: !398, file: !3, line: 238, type: !65)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 237, column: 9)
!399 = distinct !DILexicalBlock(scope: !392, file: !3, line: 236, column: 5)
!400 = !DILocation(line: 238, column: 17, scope: !398)
!401 = !DILocalVariable(name: "n", scope: !398, file: !3, line: 238, type: !65)
!402 = !DILocation(line: 238, column: 20, scope: !398)
!403 = !DILocalVariable(name: "intVariable", scope: !398, file: !3, line: 238, type: !65)
!404 = !DILocation(line: 238, column: 23, scope: !398)
!405 = !DILocation(line: 239, column: 24, scope: !406)
!406 = distinct !DILexicalBlock(scope: !398, file: !3, line: 239, column: 17)
!407 = !DILocation(line: 239, column: 17, scope: !406)
!408 = !DILocation(line: 239, column: 40, scope: !406)
!409 = !DILocation(line: 239, column: 17, scope: !398)
!410 = !DILocation(line: 242, column: 21, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 242, column: 21)
!412 = distinct !DILexicalBlock(scope: !406, file: !3, line: 240, column: 13)
!413 = !DILocation(line: 242, column: 23, scope: !411)
!414 = !DILocation(line: 242, column: 21, scope: !412)
!415 = !DILocation(line: 244, column: 33, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !3, line: 243, column: 17)
!417 = !DILocation(line: 245, column: 28, scope: !418)
!418 = distinct !DILexicalBlock(scope: !416, file: !3, line: 245, column: 21)
!419 = !DILocation(line: 245, column: 26, scope: !418)
!420 = !DILocation(line: 245, column: 33, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 245, column: 21)
!422 = !DILocation(line: 245, column: 37, scope: !421)
!423 = !DILocation(line: 245, column: 35, scope: !421)
!424 = !DILocation(line: 245, column: 21, scope: !418)
!425 = !DILocation(line: 248, column: 36, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !3, line: 246, column: 21)
!427 = !DILocation(line: 249, column: 21, scope: !426)
!428 = !DILocation(line: 245, column: 41, scope: !421)
!429 = !DILocation(line: 245, column: 21, scope: !421)
!430 = distinct !{!430, !424, !431, !278}
!431 = !DILocation(line: 249, column: 21, scope: !418)
!432 = !DILocation(line: 250, column: 34, scope: !416)
!433 = !DILocation(line: 250, column: 21, scope: !416)
!434 = !DILocation(line: 251, column: 17, scope: !416)
!435 = !DILocation(line: 252, column: 13, scope: !412)
!436 = !DILocation(line: 255, column: 1, scope: !284)
!437 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 258, type: !110, scopeLine: 259, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!438 = !DILocalVariable(name: "data", scope: !437, file: !3, line: 260, type: !61)
!439 = !DILocation(line: 260, column: 12, scope: !437)
!440 = !DILocalVariable(name: "dataBuffer", scope: !437, file: !3, line: 261, type: !116)
!441 = !DILocation(line: 261, column: 10, scope: !437)
!442 = !DILocation(line: 262, column: 12, scope: !437)
!443 = !DILocation(line: 262, column: 10, scope: !437)
!444 = !DILocation(line: 263, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 263, column: 8)
!446 = !DILocation(line: 263, column: 8, scope: !437)
!447 = !DILocalVariable(name: "recvResult", scope: !448, file: !3, line: 270, type: !65)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 265, column: 9)
!449 = distinct !DILexicalBlock(scope: !445, file: !3, line: 264, column: 5)
!450 = !DILocation(line: 270, column: 17, scope: !448)
!451 = !DILocalVariable(name: "service", scope: !448, file: !3, line: 271, type: !130)
!452 = !DILocation(line: 271, column: 32, scope: !448)
!453 = !DILocalVariable(name: "replace", scope: !448, file: !3, line: 272, type: !61)
!454 = !DILocation(line: 272, column: 19, scope: !448)
!455 = !DILocalVariable(name: "connectSocket", scope: !448, file: !3, line: 273, type: !65)
!456 = !DILocation(line: 273, column: 20, scope: !448)
!457 = !DILocalVariable(name: "dataLen", scope: !448, file: !3, line: 274, type: !156)
!458 = !DILocation(line: 274, column: 20, scope: !448)
!459 = !DILocation(line: 274, column: 37, scope: !448)
!460 = !DILocation(line: 274, column: 30, scope: !448)
!461 = !DILocation(line: 275, column: 13, scope: !448)
!462 = !DILocation(line: 285, column: 33, scope: !463)
!463 = distinct !DILexicalBlock(scope: !448, file: !3, line: 276, column: 13)
!464 = !DILocation(line: 285, column: 31, scope: !463)
!465 = !DILocation(line: 286, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 286, column: 21)
!467 = !DILocation(line: 286, column: 35, scope: !466)
!468 = !DILocation(line: 286, column: 21, scope: !463)
!469 = !DILocation(line: 288, column: 21, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 287, column: 17)
!471 = !DILocation(line: 290, column: 17, scope: !463)
!472 = !DILocation(line: 291, column: 25, scope: !463)
!473 = !DILocation(line: 291, column: 36, scope: !463)
!474 = !DILocation(line: 292, column: 43, scope: !463)
!475 = !DILocation(line: 292, column: 25, scope: !463)
!476 = !DILocation(line: 292, column: 34, scope: !463)
!477 = !DILocation(line: 292, column: 41, scope: !463)
!478 = !DILocation(line: 293, column: 36, scope: !463)
!479 = !DILocation(line: 293, column: 25, scope: !463)
!480 = !DILocation(line: 293, column: 34, scope: !463)
!481 = !DILocation(line: 294, column: 29, scope: !482)
!482 = distinct !DILexicalBlock(scope: !463, file: !3, line: 294, column: 21)
!483 = !DILocation(line: 294, column: 44, scope: !482)
!484 = !DILocation(line: 294, column: 21, scope: !482)
!485 = !DILocation(line: 294, column: 89, scope: !482)
!486 = !DILocation(line: 294, column: 21, scope: !463)
!487 = !DILocation(line: 296, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !3, line: 295, column: 17)
!489 = !DILocation(line: 301, column: 35, scope: !463)
!490 = !DILocation(line: 301, column: 59, scope: !463)
!491 = !DILocation(line: 301, column: 66, scope: !463)
!492 = !DILocation(line: 301, column: 64, scope: !463)
!493 = !DILocation(line: 301, column: 98, scope: !463)
!494 = !DILocation(line: 301, column: 96, scope: !463)
!495 = !DILocation(line: 301, column: 106, scope: !463)
!496 = !DILocation(line: 301, column: 89, scope: !463)
!497 = !DILocation(line: 301, column: 30, scope: !463)
!498 = !DILocation(line: 301, column: 28, scope: !463)
!499 = !DILocation(line: 302, column: 21, scope: !500)
!500 = distinct !DILexicalBlock(scope: !463, file: !3, line: 302, column: 21)
!501 = !DILocation(line: 302, column: 32, scope: !500)
!502 = !DILocation(line: 302, column: 48, scope: !500)
!503 = !DILocation(line: 302, column: 51, scope: !500)
!504 = !DILocation(line: 302, column: 62, scope: !500)
!505 = !DILocation(line: 302, column: 21, scope: !463)
!506 = !DILocation(line: 304, column: 21, scope: !507)
!507 = distinct !DILexicalBlock(scope: !500, file: !3, line: 303, column: 17)
!508 = !DILocation(line: 307, column: 17, scope: !463)
!509 = !DILocation(line: 307, column: 22, scope: !463)
!510 = !DILocation(line: 307, column: 32, scope: !463)
!511 = !DILocation(line: 307, column: 43, scope: !463)
!512 = !DILocation(line: 307, column: 30, scope: !463)
!513 = !DILocation(line: 307, column: 59, scope: !463)
!514 = !DILocation(line: 309, column: 34, scope: !463)
!515 = !DILocation(line: 309, column: 27, scope: !463)
!516 = !DILocation(line: 309, column: 25, scope: !463)
!517 = !DILocation(line: 310, column: 21, scope: !518)
!518 = distinct !DILexicalBlock(scope: !463, file: !3, line: 310, column: 21)
!519 = !DILocation(line: 310, column: 21, scope: !463)
!520 = !DILocation(line: 312, column: 22, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !3, line: 311, column: 17)
!522 = !DILocation(line: 312, column: 30, scope: !521)
!523 = !DILocation(line: 313, column: 17, scope: !521)
!524 = !DILocation(line: 314, column: 34, scope: !463)
!525 = !DILocation(line: 314, column: 27, scope: !463)
!526 = !DILocation(line: 314, column: 25, scope: !463)
!527 = !DILocation(line: 315, column: 21, scope: !528)
!528 = distinct !DILexicalBlock(scope: !463, file: !3, line: 315, column: 21)
!529 = !DILocation(line: 315, column: 21, scope: !463)
!530 = !DILocation(line: 317, column: 22, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 316, column: 17)
!532 = !DILocation(line: 317, column: 30, scope: !531)
!533 = !DILocation(line: 318, column: 17, scope: !531)
!534 = !DILocation(line: 319, column: 13, scope: !463)
!535 = !DILocation(line: 321, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !448, file: !3, line: 321, column: 17)
!537 = !DILocation(line: 321, column: 31, scope: !536)
!538 = !DILocation(line: 321, column: 17, scope: !448)
!539 = !DILocation(line: 323, column: 30, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !3, line: 322, column: 13)
!541 = !DILocation(line: 323, column: 17, scope: !540)
!542 = !DILocation(line: 324, column: 13, scope: !540)
!543 = !DILocation(line: 332, column: 5, scope: !449)
!544 = !DILocation(line: 333, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !437, file: !3, line: 333, column: 8)
!546 = !DILocation(line: 333, column: 8, scope: !437)
!547 = !DILocalVariable(name: "i", scope: !548, file: !3, line: 336, type: !65)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 335, column: 9)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 334, column: 5)
!550 = !DILocation(line: 336, column: 17, scope: !548)
!551 = !DILocalVariable(name: "n", scope: !548, file: !3, line: 336, type: !65)
!552 = !DILocation(line: 336, column: 20, scope: !548)
!553 = !DILocalVariable(name: "intVariable", scope: !548, file: !3, line: 336, type: !65)
!554 = !DILocation(line: 336, column: 23, scope: !548)
!555 = !DILocation(line: 337, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !548, file: !3, line: 337, column: 17)
!557 = !DILocation(line: 337, column: 17, scope: !556)
!558 = !DILocation(line: 337, column: 40, scope: !556)
!559 = !DILocation(line: 337, column: 17, scope: !548)
!560 = !DILocation(line: 340, column: 21, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 340, column: 21)
!562 = distinct !DILexicalBlock(scope: !556, file: !3, line: 338, column: 13)
!563 = !DILocation(line: 340, column: 23, scope: !561)
!564 = !DILocation(line: 340, column: 21, scope: !562)
!565 = !DILocation(line: 342, column: 33, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 341, column: 17)
!567 = !DILocation(line: 343, column: 28, scope: !568)
!568 = distinct !DILexicalBlock(scope: !566, file: !3, line: 343, column: 21)
!569 = !DILocation(line: 343, column: 26, scope: !568)
!570 = !DILocation(line: 343, column: 33, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !3, line: 343, column: 21)
!572 = !DILocation(line: 343, column: 37, scope: !571)
!573 = !DILocation(line: 343, column: 35, scope: !571)
!574 = !DILocation(line: 343, column: 21, scope: !568)
!575 = !DILocation(line: 346, column: 36, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !3, line: 344, column: 21)
!577 = !DILocation(line: 347, column: 21, scope: !576)
!578 = !DILocation(line: 343, column: 41, scope: !571)
!579 = !DILocation(line: 343, column: 21, scope: !571)
!580 = distinct !{!580, !574, !581, !278}
!581 = !DILocation(line: 347, column: 21, scope: !568)
!582 = !DILocation(line: 348, column: 34, scope: !566)
!583 = !DILocation(line: 348, column: 21, scope: !566)
!584 = !DILocation(line: 349, column: 17, scope: !566)
!585 = !DILocation(line: 350, column: 13, scope: !562)
!586 = !DILocation(line: 352, column: 5, scope: !549)
!587 = !DILocation(line: 353, column: 1, scope: !437)
!588 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 356, type: !110, scopeLine: 357, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!589 = !DILocalVariable(name: "data", scope: !588, file: !3, line: 358, type: !61)
!590 = !DILocation(line: 358, column: 12, scope: !588)
!591 = !DILocalVariable(name: "dataBuffer", scope: !588, file: !3, line: 359, type: !116)
!592 = !DILocation(line: 359, column: 10, scope: !588)
!593 = !DILocation(line: 360, column: 12, scope: !588)
!594 = !DILocation(line: 360, column: 10, scope: !588)
!595 = !DILocation(line: 361, column: 8, scope: !596)
!596 = distinct !DILexicalBlock(scope: !588, file: !3, line: 361, column: 8)
!597 = !DILocation(line: 361, column: 8, scope: !588)
!598 = !DILocation(line: 364, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 362, column: 5)
!600 = !DILocation(line: 365, column: 5, scope: !599)
!601 = !DILocation(line: 369, column: 16, scope: !602)
!602 = distinct !DILexicalBlock(scope: !596, file: !3, line: 367, column: 5)
!603 = !DILocation(line: 369, column: 9, scope: !602)
!604 = !DILocation(line: 371, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !588, file: !3, line: 371, column: 8)
!606 = !DILocation(line: 371, column: 8, scope: !588)
!607 = !DILocalVariable(name: "i", scope: !608, file: !3, line: 374, type: !65)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 373, column: 9)
!609 = distinct !DILexicalBlock(scope: !605, file: !3, line: 372, column: 5)
!610 = !DILocation(line: 374, column: 17, scope: !608)
!611 = !DILocalVariable(name: "n", scope: !608, file: !3, line: 374, type: !65)
!612 = !DILocation(line: 374, column: 20, scope: !608)
!613 = !DILocalVariable(name: "intVariable", scope: !608, file: !3, line: 374, type: !65)
!614 = !DILocation(line: 374, column: 23, scope: !608)
!615 = !DILocation(line: 375, column: 24, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !3, line: 375, column: 17)
!617 = !DILocation(line: 375, column: 17, scope: !616)
!618 = !DILocation(line: 375, column: 40, scope: !616)
!619 = !DILocation(line: 375, column: 17, scope: !608)
!620 = !DILocation(line: 378, column: 29, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 376, column: 13)
!622 = !DILocation(line: 379, column: 24, scope: !623)
!623 = distinct !DILexicalBlock(scope: !621, file: !3, line: 379, column: 17)
!624 = !DILocation(line: 379, column: 22, scope: !623)
!625 = !DILocation(line: 379, column: 29, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 379, column: 17)
!627 = !DILocation(line: 379, column: 33, scope: !626)
!628 = !DILocation(line: 379, column: 31, scope: !626)
!629 = !DILocation(line: 379, column: 17, scope: !623)
!630 = !DILocation(line: 382, column: 32, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 380, column: 17)
!632 = !DILocation(line: 383, column: 17, scope: !631)
!633 = !DILocation(line: 379, column: 37, scope: !626)
!634 = !DILocation(line: 379, column: 17, scope: !626)
!635 = distinct !{!635, !629, !636, !278}
!636 = !DILocation(line: 383, column: 17, scope: !623)
!637 = !DILocation(line: 384, column: 30, scope: !621)
!638 = !DILocation(line: 384, column: 17, scope: !621)
!639 = !DILocation(line: 385, column: 13, scope: !621)
!640 = !DILocation(line: 387, column: 5, scope: !609)
!641 = !DILocation(line: 388, column: 1, scope: !588)
!642 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 391, type: !110, scopeLine: 392, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!643 = !DILocalVariable(name: "data", scope: !642, file: !3, line: 393, type: !61)
!644 = !DILocation(line: 393, column: 12, scope: !642)
!645 = !DILocalVariable(name: "dataBuffer", scope: !642, file: !3, line: 394, type: !116)
!646 = !DILocation(line: 394, column: 10, scope: !642)
!647 = !DILocation(line: 395, column: 12, scope: !642)
!648 = !DILocation(line: 395, column: 10, scope: !642)
!649 = !DILocation(line: 396, column: 8, scope: !650)
!650 = distinct !DILexicalBlock(scope: !642, file: !3, line: 396, column: 8)
!651 = !DILocation(line: 396, column: 8, scope: !642)
!652 = !DILocation(line: 399, column: 16, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 397, column: 5)
!654 = !DILocation(line: 399, column: 9, scope: !653)
!655 = !DILocation(line: 400, column: 5, scope: !653)
!656 = !DILocation(line: 401, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !642, file: !3, line: 401, column: 8)
!658 = !DILocation(line: 401, column: 8, scope: !642)
!659 = !DILocalVariable(name: "i", scope: !660, file: !3, line: 404, type: !65)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 403, column: 9)
!661 = distinct !DILexicalBlock(scope: !657, file: !3, line: 402, column: 5)
!662 = !DILocation(line: 404, column: 17, scope: !660)
!663 = !DILocalVariable(name: "n", scope: !660, file: !3, line: 404, type: !65)
!664 = !DILocation(line: 404, column: 20, scope: !660)
!665 = !DILocalVariable(name: "intVariable", scope: !660, file: !3, line: 404, type: !65)
!666 = !DILocation(line: 404, column: 23, scope: !660)
!667 = !DILocation(line: 405, column: 24, scope: !668)
!668 = distinct !DILexicalBlock(scope: !660, file: !3, line: 405, column: 17)
!669 = !DILocation(line: 405, column: 17, scope: !668)
!670 = !DILocation(line: 405, column: 40, scope: !668)
!671 = !DILocation(line: 405, column: 17, scope: !660)
!672 = !DILocation(line: 408, column: 29, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !3, line: 406, column: 13)
!674 = !DILocation(line: 409, column: 24, scope: !675)
!675 = distinct !DILexicalBlock(scope: !673, file: !3, line: 409, column: 17)
!676 = !DILocation(line: 409, column: 22, scope: !675)
!677 = !DILocation(line: 409, column: 29, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 409, column: 17)
!679 = !DILocation(line: 409, column: 33, scope: !678)
!680 = !DILocation(line: 409, column: 31, scope: !678)
!681 = !DILocation(line: 409, column: 17, scope: !675)
!682 = !DILocation(line: 412, column: 32, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 410, column: 17)
!684 = !DILocation(line: 413, column: 17, scope: !683)
!685 = !DILocation(line: 409, column: 37, scope: !678)
!686 = !DILocation(line: 409, column: 17, scope: !678)
!687 = distinct !{!687, !681, !688, !278}
!688 = !DILocation(line: 413, column: 17, scope: !675)
!689 = !DILocation(line: 414, column: 30, scope: !673)
!690 = !DILocation(line: 414, column: 17, scope: !673)
!691 = !DILocation(line: 415, column: 13, scope: !673)
!692 = !DILocation(line: 417, column: 5, scope: !661)
!693 = !DILocation(line: 418, column: 1, scope: !642)
!694 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good", scope: !3, file: !3, line: 420, type: !110, scopeLine: 421, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!695 = !DILocation(line: 422, column: 5, scope: !694)
!696 = !DILocation(line: 423, column: 5, scope: !694)
!697 = !DILocation(line: 424, column: 5, scope: !694)
!698 = !DILocation(line: 425, column: 5, scope: !694)
!699 = !DILocation(line: 426, column: 1, scope: !694)
!700 = distinct !DISubprogram(name: "printLine", scope: !69, file: !69, line: 11, type: !701, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !61}
!703 = !DILocalVariable(name: "line", arg: 1, scope: !700, file: !69, line: 11, type: !61)
!704 = !DILocation(line: 11, column: 25, scope: !700)
!705 = !DILocation(line: 13, column: 1, scope: !700)
!706 = !DILocation(line: 14, column: 8, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !69, line: 14, column: 8)
!708 = !DILocation(line: 14, column: 13, scope: !707)
!709 = !DILocation(line: 14, column: 8, scope: !700)
!710 = !DILocation(line: 16, column: 24, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !69, line: 15, column: 5)
!712 = !DILocation(line: 16, column: 9, scope: !711)
!713 = !DILocation(line: 17, column: 5, scope: !711)
!714 = !DILocation(line: 18, column: 5, scope: !700)
!715 = !DILocation(line: 19, column: 1, scope: !700)
!716 = distinct !DISubprogram(name: "printSinkLine", scope: !69, file: !69, line: 20, type: !701, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!717 = !DILocalVariable(name: "line", arg: 1, scope: !716, file: !69, line: 20, type: !61)
!718 = !DILocation(line: 20, column: 29, scope: !716)
!719 = !DILocation(line: 22, column: 8, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !69, line: 22, column: 8)
!721 = !DILocation(line: 22, column: 13, scope: !720)
!722 = !DILocation(line: 22, column: 8, scope: !716)
!723 = !DILocation(line: 24, column: 24, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !69, line: 23, column: 5)
!725 = !DILocation(line: 24, column: 9, scope: !724)
!726 = !DILocation(line: 25, column: 5, scope: !724)
!727 = !DILocation(line: 26, column: 1, scope: !716)
!728 = distinct !DISubprogram(name: "printWLine", scope: !69, file: !69, line: 27, type: !729, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !157, line: 74, baseType: !65)
!733 = !DILocalVariable(name: "line", arg: 1, scope: !728, file: !69, line: 27, type: !731)
!734 = !DILocation(line: 27, column: 29, scope: !728)
!735 = !DILocation(line: 29, column: 8, scope: !736)
!736 = distinct !DILexicalBlock(scope: !728, file: !69, line: 29, column: 8)
!737 = !DILocation(line: 29, column: 13, scope: !736)
!738 = !DILocation(line: 29, column: 8, scope: !728)
!739 = !DILocation(line: 31, column: 27, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !69, line: 30, column: 5)
!741 = !DILocation(line: 31, column: 9, scope: !740)
!742 = !DILocation(line: 32, column: 5, scope: !740)
!743 = !DILocation(line: 33, column: 1, scope: !728)
!744 = distinct !DISubprogram(name: "printIntLine", scope: !69, file: !69, line: 35, type: !745, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !65}
!747 = !DILocalVariable(name: "intNumber", arg: 1, scope: !744, file: !69, line: 35, type: !65)
!748 = !DILocation(line: 35, column: 24, scope: !744)
!749 = !DILocation(line: 37, column: 20, scope: !744)
!750 = !DILocation(line: 37, column: 5, scope: !744)
!751 = !DILocation(line: 38, column: 1, scope: !744)
!752 = distinct !DISubprogram(name: "printShortLine", scope: !69, file: !69, line: 40, type: !753, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !755}
!755 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!756 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !752, file: !69, line: 40, type: !755)
!757 = !DILocation(line: 40, column: 28, scope: !752)
!758 = !DILocation(line: 42, column: 21, scope: !752)
!759 = !DILocation(line: 42, column: 5, scope: !752)
!760 = !DILocation(line: 43, column: 1, scope: !752)
!761 = distinct !DISubprogram(name: "printFloatLine", scope: !69, file: !69, line: 45, type: !762, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764}
!764 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!765 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !761, file: !69, line: 45, type: !764)
!766 = !DILocation(line: 45, column: 28, scope: !761)
!767 = !DILocation(line: 47, column: 20, scope: !761)
!768 = !DILocation(line: 47, column: 5, scope: !761)
!769 = !DILocation(line: 48, column: 1, scope: !761)
!770 = distinct !DISubprogram(name: "printLongLine", scope: !69, file: !69, line: 50, type: !771, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !773}
!773 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!774 = !DILocalVariable(name: "longNumber", arg: 1, scope: !770, file: !69, line: 50, type: !773)
!775 = !DILocation(line: 50, column: 26, scope: !770)
!776 = !DILocation(line: 52, column: 21, scope: !770)
!777 = !DILocation(line: 52, column: 5, scope: !770)
!778 = !DILocation(line: 53, column: 1, scope: !770)
!779 = distinct !DISubprogram(name: "printLongLongLine", scope: !69, file: !69, line: 55, type: !780, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !782}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !783, line: 27, baseType: !784)
!783 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !138, line: 44, baseType: !773)
!785 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !779, file: !69, line: 55, type: !782)
!786 = !DILocation(line: 55, column: 33, scope: !779)
!787 = !DILocation(line: 57, column: 29, scope: !779)
!788 = !DILocation(line: 57, column: 5, scope: !779)
!789 = !DILocation(line: 58, column: 1, scope: !779)
!790 = distinct !DISubprogram(name: "printSizeTLine", scope: !69, file: !69, line: 60, type: !791, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !156}
!793 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !790, file: !69, line: 60, type: !156)
!794 = !DILocation(line: 60, column: 29, scope: !790)
!795 = !DILocation(line: 62, column: 21, scope: !790)
!796 = !DILocation(line: 62, column: 5, scope: !790)
!797 = !DILocation(line: 63, column: 1, scope: !790)
!798 = distinct !DISubprogram(name: "printHexCharLine", scope: !69, file: !69, line: 65, type: !799, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !58}
!801 = !DILocalVariable(name: "charHex", arg: 1, scope: !798, file: !69, line: 65, type: !58)
!802 = !DILocation(line: 65, column: 29, scope: !798)
!803 = !DILocation(line: 67, column: 22, scope: !798)
!804 = !DILocation(line: 67, column: 5, scope: !798)
!805 = !DILocation(line: 68, column: 1, scope: !798)
!806 = distinct !DISubprogram(name: "printWcharLine", scope: !69, file: !69, line: 70, type: !807, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !732}
!809 = !DILocalVariable(name: "wideChar", arg: 1, scope: !806, file: !69, line: 70, type: !732)
!810 = !DILocation(line: 70, column: 29, scope: !806)
!811 = !DILocalVariable(name: "s", scope: !806, file: !69, line: 74, type: !812)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 64, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 2)
!815 = !DILocation(line: 74, column: 13, scope: !806)
!816 = !DILocation(line: 75, column: 16, scope: !806)
!817 = !DILocation(line: 75, column: 9, scope: !806)
!818 = !DILocation(line: 75, column: 14, scope: !806)
!819 = !DILocation(line: 76, column: 9, scope: !806)
!820 = !DILocation(line: 76, column: 14, scope: !806)
!821 = !DILocation(line: 77, column: 21, scope: !806)
!822 = !DILocation(line: 77, column: 5, scope: !806)
!823 = !DILocation(line: 78, column: 1, scope: !806)
!824 = distinct !DISubprogram(name: "printUnsignedLine", scope: !69, file: !69, line: 80, type: !825, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !7}
!827 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !824, file: !69, line: 80, type: !7)
!828 = !DILocation(line: 80, column: 33, scope: !824)
!829 = !DILocation(line: 82, column: 20, scope: !824)
!830 = !DILocation(line: 82, column: 5, scope: !824)
!831 = !DILocation(line: 83, column: 1, scope: !824)
!832 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !69, file: !69, line: 85, type: !833, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !88}
!835 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !832, file: !69, line: 85, type: !88)
!836 = !DILocation(line: 85, column: 45, scope: !832)
!837 = !DILocation(line: 87, column: 22, scope: !832)
!838 = !DILocation(line: 87, column: 5, scope: !832)
!839 = !DILocation(line: 88, column: 1, scope: !832)
!840 = distinct !DISubprogram(name: "printDoubleLine", scope: !69, file: !69, line: 90, type: !841, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !843}
!843 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!844 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !840, file: !69, line: 90, type: !843)
!845 = !DILocation(line: 90, column: 29, scope: !840)
!846 = !DILocation(line: 92, column: 20, scope: !840)
!847 = !DILocation(line: 92, column: 5, scope: !840)
!848 = !DILocation(line: 93, column: 1, scope: !840)
!849 = distinct !DISubprogram(name: "printStructLine", scope: !69, file: !69, line: 95, type: !850, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !854, line: 100, baseType: !855)
!854 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_933/source_code")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !854, line: 96, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !855, file: !854, line: 98, baseType: !65, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !855, file: !854, line: 99, baseType: !65, size: 32, offset: 32)
!859 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !849, file: !69, line: 95, type: !852)
!860 = !DILocation(line: 95, column: 40, scope: !849)
!861 = !DILocation(line: 97, column: 26, scope: !849)
!862 = !DILocation(line: 97, column: 47, scope: !849)
!863 = !DILocation(line: 97, column: 55, scope: !849)
!864 = !DILocation(line: 97, column: 76, scope: !849)
!865 = !DILocation(line: 97, column: 5, scope: !849)
!866 = !DILocation(line: 98, column: 1, scope: !849)
!867 = distinct !DISubprogram(name: "printBytesLine", scope: !69, file: !69, line: 100, type: !868, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !870, !156}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!871 = !DILocalVariable(name: "bytes", arg: 1, scope: !867, file: !69, line: 100, type: !870)
!872 = !DILocation(line: 100, column: 38, scope: !867)
!873 = !DILocalVariable(name: "numBytes", arg: 2, scope: !867, file: !69, line: 100, type: !156)
!874 = !DILocation(line: 100, column: 52, scope: !867)
!875 = !DILocalVariable(name: "i", scope: !867, file: !69, line: 102, type: !156)
!876 = !DILocation(line: 102, column: 12, scope: !867)
!877 = !DILocation(line: 103, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !867, file: !69, line: 103, column: 5)
!879 = !DILocation(line: 103, column: 10, scope: !878)
!880 = !DILocation(line: 103, column: 17, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !69, line: 103, column: 5)
!882 = !DILocation(line: 103, column: 21, scope: !881)
!883 = !DILocation(line: 103, column: 19, scope: !881)
!884 = !DILocation(line: 103, column: 5, scope: !878)
!885 = !DILocation(line: 105, column: 24, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !69, line: 104, column: 5)
!887 = !DILocation(line: 105, column: 30, scope: !886)
!888 = !DILocation(line: 105, column: 9, scope: !886)
!889 = !DILocation(line: 106, column: 5, scope: !886)
!890 = !DILocation(line: 103, column: 31, scope: !881)
!891 = !DILocation(line: 103, column: 5, scope: !881)
!892 = distinct !{!892, !884, !893, !278}
!893 = !DILocation(line: 106, column: 5, scope: !878)
!894 = !DILocation(line: 107, column: 5, scope: !867)
!895 = !DILocation(line: 108, column: 1, scope: !867)
!896 = distinct !DISubprogram(name: "decodeHexChars", scope: !69, file: !69, line: 113, type: !897, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!897 = !DISubroutineType(types: !898)
!898 = !{!156, !870, !156, !61}
!899 = !DILocalVariable(name: "bytes", arg: 1, scope: !896, file: !69, line: 113, type: !870)
!900 = !DILocation(line: 113, column: 39, scope: !896)
!901 = !DILocalVariable(name: "numBytes", arg: 2, scope: !896, file: !69, line: 113, type: !156)
!902 = !DILocation(line: 113, column: 53, scope: !896)
!903 = !DILocalVariable(name: "hex", arg: 3, scope: !896, file: !69, line: 113, type: !61)
!904 = !DILocation(line: 113, column: 71, scope: !896)
!905 = !DILocalVariable(name: "numWritten", scope: !896, file: !69, line: 115, type: !156)
!906 = !DILocation(line: 115, column: 12, scope: !896)
!907 = !DILocation(line: 121, column: 5, scope: !896)
!908 = !DILocation(line: 121, column: 12, scope: !896)
!909 = !DILocation(line: 121, column: 25, scope: !896)
!910 = !DILocation(line: 121, column: 23, scope: !896)
!911 = !DILocation(line: 121, column: 34, scope: !896)
!912 = !DILocation(line: 121, column: 37, scope: !896)
!913 = !DILocation(line: 121, column: 67, scope: !896)
!914 = !DILocation(line: 121, column: 70, scope: !896)
!915 = !DILocation(line: 0, scope: !896)
!916 = !DILocalVariable(name: "byte", scope: !917, file: !69, line: 123, type: !65)
!917 = distinct !DILexicalBlock(scope: !896, file: !69, line: 122, column: 5)
!918 = !DILocation(line: 123, column: 13, scope: !917)
!919 = !DILocation(line: 124, column: 17, scope: !917)
!920 = !DILocation(line: 124, column: 25, scope: !917)
!921 = !DILocation(line: 124, column: 23, scope: !917)
!922 = !DILocation(line: 124, column: 9, scope: !917)
!923 = !DILocation(line: 125, column: 45, scope: !917)
!924 = !DILocation(line: 125, column: 29, scope: !917)
!925 = !DILocation(line: 125, column: 9, scope: !917)
!926 = !DILocation(line: 125, column: 15, scope: !917)
!927 = !DILocation(line: 125, column: 27, scope: !917)
!928 = !DILocation(line: 126, column: 9, scope: !917)
!929 = distinct !{!929, !907, !930, !278}
!930 = !DILocation(line: 127, column: 5, scope: !896)
!931 = !DILocation(line: 129, column: 12, scope: !896)
!932 = !DILocation(line: 129, column: 5, scope: !896)
!933 = distinct !DISubprogram(name: "decodeHexWChars", scope: !69, file: !69, line: 135, type: !934, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!934 = !DISubroutineType(types: !935)
!935 = !{!156, !870, !156, !731}
!936 = !DILocalVariable(name: "bytes", arg: 1, scope: !933, file: !69, line: 135, type: !870)
!937 = !DILocation(line: 135, column: 41, scope: !933)
!938 = !DILocalVariable(name: "numBytes", arg: 2, scope: !933, file: !69, line: 135, type: !156)
!939 = !DILocation(line: 135, column: 55, scope: !933)
!940 = !DILocalVariable(name: "hex", arg: 3, scope: !933, file: !69, line: 135, type: !731)
!941 = !DILocation(line: 135, column: 76, scope: !933)
!942 = !DILocalVariable(name: "numWritten", scope: !933, file: !69, line: 137, type: !156)
!943 = !DILocation(line: 137, column: 12, scope: !933)
!944 = !DILocation(line: 143, column: 5, scope: !933)
!945 = !DILocation(line: 143, column: 12, scope: !933)
!946 = !DILocation(line: 143, column: 25, scope: !933)
!947 = !DILocation(line: 143, column: 23, scope: !933)
!948 = !DILocation(line: 143, column: 34, scope: !933)
!949 = !DILocation(line: 143, column: 47, scope: !933)
!950 = !DILocation(line: 143, column: 55, scope: !933)
!951 = !DILocation(line: 143, column: 53, scope: !933)
!952 = !DILocation(line: 143, column: 37, scope: !933)
!953 = !DILocation(line: 143, column: 68, scope: !933)
!954 = !DILocation(line: 143, column: 81, scope: !933)
!955 = !DILocation(line: 143, column: 89, scope: !933)
!956 = !DILocation(line: 143, column: 87, scope: !933)
!957 = !DILocation(line: 143, column: 100, scope: !933)
!958 = !DILocation(line: 143, column: 71, scope: !933)
!959 = !DILocation(line: 0, scope: !933)
!960 = !DILocalVariable(name: "byte", scope: !961, file: !69, line: 145, type: !65)
!961 = distinct !DILexicalBlock(scope: !933, file: !69, line: 144, column: 5)
!962 = !DILocation(line: 145, column: 13, scope: !961)
!963 = !DILocation(line: 146, column: 18, scope: !961)
!964 = !DILocation(line: 146, column: 26, scope: !961)
!965 = !DILocation(line: 146, column: 24, scope: !961)
!966 = !DILocation(line: 146, column: 9, scope: !961)
!967 = !DILocation(line: 147, column: 45, scope: !961)
!968 = !DILocation(line: 147, column: 29, scope: !961)
!969 = !DILocation(line: 147, column: 9, scope: !961)
!970 = !DILocation(line: 147, column: 15, scope: !961)
!971 = !DILocation(line: 147, column: 27, scope: !961)
!972 = !DILocation(line: 148, column: 9, scope: !961)
!973 = distinct !{!973, !944, !974, !278}
!974 = !DILocation(line: 149, column: 5, scope: !933)
!975 = !DILocation(line: 151, column: 12, scope: !933)
!976 = !DILocation(line: 151, column: 5, scope: !933)
!977 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !69, file: !69, line: 156, type: !978, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!978 = !DISubroutineType(types: !979)
!979 = !{!65}
!980 = !DILocation(line: 158, column: 5, scope: !977)
!981 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !69, file: !69, line: 161, type: !978, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!982 = !DILocation(line: 163, column: 5, scope: !981)
!983 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !69, file: !69, line: 166, type: !978, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!984 = !DILocation(line: 168, column: 13, scope: !983)
!985 = !DILocation(line: 168, column: 20, scope: !983)
!986 = !DILocation(line: 168, column: 5, scope: !983)
!987 = distinct !DISubprogram(name: "good1", scope: !69, file: !69, line: 187, type: !110, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!988 = !DILocation(line: 187, column: 16, scope: !987)
!989 = distinct !DISubprogram(name: "good2", scope: !69, file: !69, line: 188, type: !110, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!990 = !DILocation(line: 188, column: 16, scope: !989)
!991 = distinct !DISubprogram(name: "good3", scope: !69, file: !69, line: 189, type: !110, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!992 = !DILocation(line: 189, column: 16, scope: !991)
!993 = distinct !DISubprogram(name: "good4", scope: !69, file: !69, line: 190, type: !110, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!994 = !DILocation(line: 190, column: 16, scope: !993)
!995 = distinct !DISubprogram(name: "good5", scope: !69, file: !69, line: 191, type: !110, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!996 = !DILocation(line: 191, column: 16, scope: !995)
!997 = distinct !DISubprogram(name: "good6", scope: !69, file: !69, line: 192, type: !110, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!998 = !DILocation(line: 192, column: 16, scope: !997)
!999 = distinct !DISubprogram(name: "good7", scope: !69, file: !69, line: 193, type: !110, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1000 = !DILocation(line: 193, column: 16, scope: !999)
!1001 = distinct !DISubprogram(name: "good8", scope: !69, file: !69, line: 194, type: !110, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1002 = !DILocation(line: 194, column: 16, scope: !1001)
!1003 = distinct !DISubprogram(name: "good9", scope: !69, file: !69, line: 195, type: !110, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1004 = !DILocation(line: 195, column: 16, scope: !1003)
!1005 = distinct !DISubprogram(name: "bad1", scope: !69, file: !69, line: 198, type: !110, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1006 = !DILocation(line: 198, column: 15, scope: !1005)
!1007 = distinct !DISubprogram(name: "bad2", scope: !69, file: !69, line: 199, type: !110, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1008 = !DILocation(line: 199, column: 15, scope: !1007)
!1009 = distinct !DISubprogram(name: "bad3", scope: !69, file: !69, line: 200, type: !110, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1010 = !DILocation(line: 200, column: 15, scope: !1009)
!1011 = distinct !DISubprogram(name: "bad4", scope: !69, file: !69, line: 201, type: !110, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1012 = !DILocation(line: 201, column: 15, scope: !1011)
!1013 = distinct !DISubprogram(name: "bad5", scope: !69, file: !69, line: 202, type: !110, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1014 = !DILocation(line: 202, column: 15, scope: !1013)
!1015 = distinct !DISubprogram(name: "bad6", scope: !69, file: !69, line: 203, type: !110, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1016 = !DILocation(line: 203, column: 15, scope: !1015)
!1017 = distinct !DISubprogram(name: "bad7", scope: !69, file: !69, line: 204, type: !110, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1018 = !DILocation(line: 204, column: 15, scope: !1017)
!1019 = distinct !DISubprogram(name: "bad8", scope: !69, file: !69, line: 205, type: !110, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1020 = !DILocation(line: 205, column: 15, scope: !1019)
!1021 = distinct !DISubprogram(name: "bad9", scope: !69, file: !69, line: 206, type: !110, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !112)
!1022 = !DILocation(line: 206, column: 15, scope: !1021)
