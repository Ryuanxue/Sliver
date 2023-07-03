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
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.13 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_09_bad() #0 !dbg !104 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !117
  %tobool = icmp ne i32 %1, 0, !dbg !117
  br i1 %tobool, label %if.then, label %if.end31, !dbg !119

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %connectSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !150, metadata !DIExpression()), !dbg !154
  %2 = load i8*, i8** %data, align 8, !dbg !155
  %call = call i64 @strlen(i8* %2) #7, !dbg !156
  store i64 %call, i64* %dataLen, align 8, !dbg !154
  br label %do.body, !dbg !157

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !158
  store i32 %call1, i32* %connectSocket, align 4, !dbg !160
  %3 = load i32, i32* %connectSocket, align 4, !dbg !161
  %cmp = icmp eq i32 %3, -1, !dbg !163
  br i1 %cmp, label %if.then2, label %if.end, !dbg !164

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !165

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !167
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !168
  store i16 2, i16* %sin_family, align 4, !dbg !169
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !170
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !171
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !172
  store i32 %call3, i32* %s_addr, align 4, !dbg !173
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !174
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !175
  store i16 %call4, i16* %sin_port, align 2, !dbg !176
  %5 = load i32, i32* %connectSocket, align 4, !dbg !177
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !179
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !180
  %cmp6 = icmp eq i32 %call5, -1, !dbg !181
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !182

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !183

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !185
  %8 = load i8*, i8** %data, align 8, !dbg !186
  %9 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !188
  %10 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %10, !dbg !190
  %sub9 = sub i64 %sub, 1, !dbg !191
  %mul = mul i64 1, %sub9, !dbg !192
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !193
  %conv = trunc i64 %call10 to i32, !dbg !193
  store i32 %conv, i32* %recvResult, align 4, !dbg !194
  %11 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp11 = icmp eq i32 %11, -1, !dbg !197
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp13 = icmp eq i32 %12, 0, !dbg !200
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !201

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !202

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !204
  %14 = load i64, i64* %dataLen, align 8, !dbg !205
  %15 = load i32, i32* %recvResult, align 4, !dbg !206
  %conv17 = sext i32 %15 to i64, !dbg !206
  %div = udiv i64 %conv17, 1, !dbg !207
  %add = add i64 %14, %div, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !204
  store i8 0, i8* %arrayidx, align 1, !dbg !209
  %16 = load i8*, i8** %data, align 8, !dbg !210
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !211
  store i8* %call18, i8** %replace, align 8, !dbg !212
  %17 = load i8*, i8** %replace, align 8, !dbg !213
  %tobool19 = icmp ne i8* %17, null, !dbg !213
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !215

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !216
  store i8 0, i8* %18, align 1, !dbg !218
  br label %if.end21, !dbg !219

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !220
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !221
  store i8* %call22, i8** %replace, align 8, !dbg !222
  %20 = load i8*, i8** %replace, align 8, !dbg !223
  %tobool23 = icmp ne i8* %20, null, !dbg !223
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !225

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !226
  store i8 0, i8* %21, align 1, !dbg !228
  br label %if.end25, !dbg !229

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !230

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !231
  %cmp26 = icmp ne i32 %22, -1, !dbg !233
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !234

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !235
  %call29 = call i32 @close(i32 %23), !dbg !237
  br label %if.end30, !dbg !238

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !239

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !240
  %tobool32 = icmp ne i32 %24, 0, !dbg !240
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !242

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %n, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !249, metadata !DIExpression()), !dbg !250
  %25 = load i8*, i8** %data, align 8, !dbg !251
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !253
  %cmp35 = icmp eq i32 %call34, 1, !dbg !254
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !255

if.then37:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %if.then37
  %26 = load i32, i32* %i, align 4, !dbg !261
  %27 = load i32, i32* %n, align 4, !dbg !263
  %cmp38 = icmp slt i32 %26, %27, !dbg !264
  br i1 %cmp38, label %for.body, label %for.end, !dbg !265

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !266
  %inc = add nsw i32 %28, 1, !dbg !266
  store i32 %inc, i32* %intVariable, align 4, !dbg !266
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !269
  %inc40 = add nsw i32 %29, 1, !dbg !269
  store i32 %inc40, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !274
  call void @printIntLine(i32 %30), !dbg !275
  br label %if.end41, !dbg !276

if.end41:                                         ; preds = %for.end, %if.then33
  br label %if.end42, !dbg !277

if.end42:                                         ; preds = %if.end41, %if.end31
  ret void, !dbg !278
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
define dso_local void @goodB2G1() #0 !dbg !279 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !283
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !283
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !284
  store i8* %arraydecay, i8** %data, align 8, !dbg !285
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !286
  %tobool = icmp ne i32 %1, 0, !dbg !286
  br i1 %tobool, label %if.then, label %if.end31, !dbg !288

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !297, metadata !DIExpression()), !dbg !298
  store i32 -1, i32* %connectSocket, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !299, metadata !DIExpression()), !dbg !300
  %2 = load i8*, i8** %data, align 8, !dbg !301
  %call = call i64 @strlen(i8* %2) #7, !dbg !302
  store i64 %call, i64* %dataLen, align 8, !dbg !300
  br label %do.body, !dbg !303

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !304
  store i32 %call1, i32* %connectSocket, align 4, !dbg !306
  %3 = load i32, i32* %connectSocket, align 4, !dbg !307
  %cmp = icmp eq i32 %3, -1, !dbg !309
  br i1 %cmp, label %if.then2, label %if.end, !dbg !310

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !311

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !313
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !314
  store i16 2, i16* %sin_family, align 4, !dbg !315
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !316
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !317
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !318
  store i32 %call3, i32* %s_addr, align 4, !dbg !319
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !320
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !321
  store i16 %call4, i16* %sin_port, align 2, !dbg !322
  %5 = load i32, i32* %connectSocket, align 4, !dbg !323
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !325
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !326
  %cmp6 = icmp eq i32 %call5, -1, !dbg !327
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !328

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !329

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !331
  %8 = load i8*, i8** %data, align 8, !dbg !332
  %9 = load i64, i64* %dataLen, align 8, !dbg !333
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !334
  %10 = load i64, i64* %dataLen, align 8, !dbg !335
  %sub = sub i64 100, %10, !dbg !336
  %sub9 = sub i64 %sub, 1, !dbg !337
  %mul = mul i64 1, %sub9, !dbg !338
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !339
  %conv = trunc i64 %call10 to i32, !dbg !339
  store i32 %conv, i32* %recvResult, align 4, !dbg !340
  %11 = load i32, i32* %recvResult, align 4, !dbg !341
  %cmp11 = icmp eq i32 %11, -1, !dbg !343
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !344

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !345
  %cmp13 = icmp eq i32 %12, 0, !dbg !346
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !347

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !348

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !350
  %14 = load i64, i64* %dataLen, align 8, !dbg !351
  %15 = load i32, i32* %recvResult, align 4, !dbg !352
  %conv17 = sext i32 %15 to i64, !dbg !352
  %div = udiv i64 %conv17, 1, !dbg !353
  %add = add i64 %14, %div, !dbg !354
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !350
  store i8 0, i8* %arrayidx, align 1, !dbg !355
  %16 = load i8*, i8** %data, align 8, !dbg !356
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !357
  store i8* %call18, i8** %replace, align 8, !dbg !358
  %17 = load i8*, i8** %replace, align 8, !dbg !359
  %tobool19 = icmp ne i8* %17, null, !dbg !359
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !361

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !362
  store i8 0, i8* %18, align 1, !dbg !364
  br label %if.end21, !dbg !365

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !366
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !367
  store i8* %call22, i8** %replace, align 8, !dbg !368
  %20 = load i8*, i8** %replace, align 8, !dbg !369
  %tobool23 = icmp ne i8* %20, null, !dbg !369
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !371

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !372
  store i8 0, i8* %21, align 1, !dbg !374
  br label %if.end25, !dbg !375

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !376

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !377
  %cmp26 = icmp ne i32 %22, -1, !dbg !379
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !380

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !381
  %call29 = call i32 @close(i32 %23), !dbg !383
  br label %if.end30, !dbg !384

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !385

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !386
  %tobool32 = icmp ne i32 %24, 0, !dbg !386
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !388

if.then33:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !389
  br label %if.end46, !dbg !391

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !392, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %n, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !398, metadata !DIExpression()), !dbg !399
  %25 = load i8*, i8** %data, align 8, !dbg !400
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !402
  %cmp35 = icmp eq i32 %call34, 1, !dbg !403
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !404

if.then37:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !405
  %cmp38 = icmp slt i32 %26, 10000, !dbg !408
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !409

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !410
  store i32 0, i32* %i, align 4, !dbg !412
  br label %for.cond, !dbg !414

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !415
  %28 = load i32, i32* %n, align 4, !dbg !417
  %cmp41 = icmp slt i32 %27, %28, !dbg !418
  br i1 %cmp41, label %for.body, label %for.end, !dbg !419

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !420
  %inc = add nsw i32 %29, 1, !dbg !420
  store i32 %inc, i32* %intVariable, align 4, !dbg !420
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !423
  %inc43 = add nsw i32 %30, 1, !dbg !423
  store i32 %inc43, i32* %i, align 4, !dbg !423
  br label %for.cond, !dbg !424, !llvm.loop !425

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !427
  call void @printIntLine(i32 %31), !dbg !428
  br label %if.end44, !dbg !429

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !430

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !432 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !436
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !436
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !437
  store i8* %arraydecay, i8** %data, align 8, !dbg !438
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !439
  %tobool = icmp ne i32 %1, 0, !dbg !439
  br i1 %tobool, label %if.then, label %if.end31, !dbg !441

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !442, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !450, metadata !DIExpression()), !dbg !451
  store i32 -1, i32* %connectSocket, align 4, !dbg !451
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !452, metadata !DIExpression()), !dbg !453
  %2 = load i8*, i8** %data, align 8, !dbg !454
  %call = call i64 @strlen(i8* %2) #7, !dbg !455
  store i64 %call, i64* %dataLen, align 8, !dbg !453
  br label %do.body, !dbg !456

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !457
  store i32 %call1, i32* %connectSocket, align 4, !dbg !459
  %3 = load i32, i32* %connectSocket, align 4, !dbg !460
  %cmp = icmp eq i32 %3, -1, !dbg !462
  br i1 %cmp, label %if.then2, label %if.end, !dbg !463

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !464

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !466
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !466
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !467
  store i16 2, i16* %sin_family, align 4, !dbg !468
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !469
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !470
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !471
  store i32 %call3, i32* %s_addr, align 4, !dbg !472
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !473
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !474
  store i16 %call4, i16* %sin_port, align 2, !dbg !475
  %5 = load i32, i32* %connectSocket, align 4, !dbg !476
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !478
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !479
  %cmp6 = icmp eq i32 %call5, -1, !dbg !480
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !481

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !482

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !484
  %8 = load i8*, i8** %data, align 8, !dbg !485
  %9 = load i64, i64* %dataLen, align 8, !dbg !486
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !487
  %10 = load i64, i64* %dataLen, align 8, !dbg !488
  %sub = sub i64 100, %10, !dbg !489
  %sub9 = sub i64 %sub, 1, !dbg !490
  %mul = mul i64 1, %sub9, !dbg !491
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !492
  %conv = trunc i64 %call10 to i32, !dbg !492
  store i32 %conv, i32* %recvResult, align 4, !dbg !493
  %11 = load i32, i32* %recvResult, align 4, !dbg !494
  %cmp11 = icmp eq i32 %11, -1, !dbg !496
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !497

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !498
  %cmp13 = icmp eq i32 %12, 0, !dbg !499
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !500

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !501

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !503
  %14 = load i64, i64* %dataLen, align 8, !dbg !504
  %15 = load i32, i32* %recvResult, align 4, !dbg !505
  %conv17 = sext i32 %15 to i64, !dbg !505
  %div = udiv i64 %conv17, 1, !dbg !506
  %add = add i64 %14, %div, !dbg !507
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !503
  store i8 0, i8* %arrayidx, align 1, !dbg !508
  %16 = load i8*, i8** %data, align 8, !dbg !509
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !510
  store i8* %call18, i8** %replace, align 8, !dbg !511
  %17 = load i8*, i8** %replace, align 8, !dbg !512
  %tobool19 = icmp ne i8* %17, null, !dbg !512
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !514

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !515
  store i8 0, i8* %18, align 1, !dbg !517
  br label %if.end21, !dbg !518

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !519
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !520
  store i8* %call22, i8** %replace, align 8, !dbg !521
  %20 = load i8*, i8** %replace, align 8, !dbg !522
  %tobool23 = icmp ne i8* %20, null, !dbg !522
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !524

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !525
  store i8 0, i8* %21, align 1, !dbg !527
  br label %if.end25, !dbg !528

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !529

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !530
  %cmp26 = icmp ne i32 %22, -1, !dbg !532
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !533

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !534
  %call29 = call i32 @close(i32 %23), !dbg !536
  br label %if.end30, !dbg !537

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !538

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !539
  %tobool32 = icmp ne i32 %24, 0, !dbg !539
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !541

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !542, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %n, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !548, metadata !DIExpression()), !dbg !549
  %25 = load i8*, i8** %data, align 8, !dbg !550
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !552
  %cmp35 = icmp eq i32 %call34, 1, !dbg !553
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !554

if.then37:                                        ; preds = %if.then33
  %26 = load i32, i32* %n, align 4, !dbg !555
  %cmp38 = icmp slt i32 %26, 10000, !dbg !558
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !559

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !560
  store i32 0, i32* %i, align 4, !dbg !562
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !565
  %28 = load i32, i32* %n, align 4, !dbg !567
  %cmp41 = icmp slt i32 %27, %28, !dbg !568
  br i1 %cmp41, label %for.body, label %for.end, !dbg !569

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !570
  %inc = add nsw i32 %29, 1, !dbg !570
  store i32 %inc, i32* %intVariable, align 4, !dbg !570
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !573
  %inc43 = add nsw i32 %30, 1, !dbg !573
  store i32 %inc43, i32* %i, align 4, !dbg !573
  br label %for.cond, !dbg !574, !llvm.loop !575

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !577
  call void @printIntLine(i32 %31), !dbg !578
  br label %if.end44, !dbg !579

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !580

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end46, !dbg !581

if.end46:                                         ; preds = %if.end45, %if.end31
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !583 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !587
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !587
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !588
  store i8* %arraydecay, i8** %data, align 8, !dbg !589
  %1 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !590
  %tobool = icmp ne i32 %1, 0, !dbg !590
  br i1 %tobool, label %if.then, label %if.else, !dbg !592

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !593
  br label %if.end, !dbg !595

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !596
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !598
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !599
  %tobool1 = icmp ne i32 %3, 0, !dbg !599
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !601

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !602, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %n, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !608, metadata !DIExpression()), !dbg !609
  %4 = load i8*, i8** %data, align 8, !dbg !610
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !612
  %cmp = icmp eq i32 %call3, 1, !dbg !613
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !614

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !615
  store i32 0, i32* %i, align 4, !dbg !617
  br label %for.cond, !dbg !619

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !620
  %6 = load i32, i32* %n, align 4, !dbg !622
  %cmp5 = icmp slt i32 %5, %6, !dbg !623
  br i1 %cmp5, label %for.body, label %for.end, !dbg !624

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !625
  %inc = add nsw i32 %7, 1, !dbg !625
  store i32 %inc, i32* %intVariable, align 4, !dbg !625
  br label %for.inc, !dbg !627

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !628
  %inc6 = add nsw i32 %8, 1, !dbg !628
  store i32 %inc6, i32* %i, align 4, !dbg !628
  br label %for.cond, !dbg !629, !llvm.loop !630

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !632
  call void @printIntLine(i32 %9), !dbg !633
  br label %if.end7, !dbg !634

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !635

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !636
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !637 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !641
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !641
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !642
  store i8* %arraydecay, i8** %data, align 8, !dbg !643
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !644
  %tobool = icmp ne i32 %1, 0, !dbg !644
  br i1 %tobool, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !647
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !649
  br label %if.end, !dbg !650

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !651
  %tobool1 = icmp ne i32 %3, 0, !dbg !651
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !653

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i32* %n, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !660, metadata !DIExpression()), !dbg !661
  %4 = load i8*, i8** %data, align 8, !dbg !662
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !664
  %cmp = icmp eq i32 %call3, 1, !dbg !665
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !666

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !667
  store i32 0, i32* %i, align 4, !dbg !669
  br label %for.cond, !dbg !671

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !672
  %6 = load i32, i32* %n, align 4, !dbg !674
  %cmp5 = icmp slt i32 %5, %6, !dbg !675
  br i1 %cmp5, label %for.body, label %for.end, !dbg !676

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !677
  %inc = add nsw i32 %7, 1, !dbg !677
  store i32 %inc, i32* %intVariable, align 4, !dbg !677
  br label %for.inc, !dbg !679

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !680
  %inc6 = add nsw i32 %8, 1, !dbg !680
  store i32 %inc6, i32* %i, align 4, !dbg !680
  br label %for.cond, !dbg !681, !llvm.loop !682

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !684
  call void @printIntLine(i32 %9), !dbg !685
  br label %if.end7, !dbg !686

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !687

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_09_good() #0 !dbg !689 {
entry:
  call void @goodB2G1(), !dbg !690
  call void @goodB2G2(), !dbg !691
  call void @goodG2B1(), !dbg !692
  call void @goodG2B2(), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !695 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !700
  %0 = load i8*, i8** %line.addr, align 8, !dbg !701
  %cmp = icmp ne i8* %0, null, !dbg !703
  br i1 %cmp, label %if.then, label %if.end, !dbg !704

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !705
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !707
  br label %if.end, !dbg !708

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !709
  ret void, !dbg !710
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !711 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !712, metadata !DIExpression()), !dbg !713
  %0 = load i8*, i8** %line.addr, align 8, !dbg !714
  %cmp = icmp ne i8* %0, null, !dbg !716
  br i1 %cmp, label %if.then, label %if.end, !dbg !717

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !718
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !720
  br label %if.end, !dbg !721

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !723 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !728, metadata !DIExpression()), !dbg !729
  %0 = load i32*, i32** %line.addr, align 8, !dbg !730
  %cmp = icmp ne i32* %0, null, !dbg !732
  br i1 %cmp, label %if.then, label %if.end, !dbg !733

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !734
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !736
  br label %if.end, !dbg !737

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !738
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !739 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !742, metadata !DIExpression()), !dbg !743
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !744
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !747 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !753
  %conv = sext i16 %0 to i32, !dbg !753
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !754
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !756 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !760, metadata !DIExpression()), !dbg !761
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !762
  %conv = fpext float %0 to double, !dbg !762
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !763
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !765 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !771
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !772
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !774 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !780, metadata !DIExpression()), !dbg !781
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !782
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !783
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !785 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !788, metadata !DIExpression()), !dbg !789
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !790
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !791
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !793 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !798
  %conv = sext i8 %0 to i32, !dbg !798
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !799
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !801 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !806, metadata !DIExpression()), !dbg !810
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !811
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !812
  store i32 %0, i32* %arrayidx, align 4, !dbg !813
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !814
  store i32 0, i32* %arrayidx1, align 4, !dbg !815
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !816
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !817
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !819 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !824
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !825
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !827 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !832
  %conv = zext i8 %0 to i32, !dbg !832
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !833
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !835 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !841
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !842
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !844 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !854, metadata !DIExpression()), !dbg !855
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !856
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !857
  %1 = load i32, i32* %intOne, align 4, !dbg !857
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !858
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !859
  %3 = load i32, i32* %intTwo, align 4, !dbg !859
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !862 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !866, metadata !DIExpression()), !dbg !867
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata i64* %i, metadata !870, metadata !DIExpression()), !dbg !871
  store i64 0, i64* %i, align 8, !dbg !872
  br label %for.cond, !dbg !874

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !875
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !877
  %cmp = icmp ult i64 %0, %1, !dbg !878
  br i1 %cmp, label %for.body, label %for.end, !dbg !879

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !880
  %3 = load i64, i64* %i, align 8, !dbg !882
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !880
  %4 = load i8, i8* %arrayidx, align 1, !dbg !880
  %conv = zext i8 %4 to i32, !dbg !880
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !883
  br label %for.inc, !dbg !884

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !885
  %inc = add i64 %5, 1, !dbg !885
  store i64 %inc, i64* %i, align 8, !dbg !885
  br label %for.cond, !dbg !886, !llvm.loop !887

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !889
  ret void, !dbg !890
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !891 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !894, metadata !DIExpression()), !dbg !895
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !896, metadata !DIExpression()), !dbg !897
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !898, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !900, metadata !DIExpression()), !dbg !901
  store i64 0, i64* %numWritten, align 8, !dbg !901
  br label %while.cond, !dbg !902

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !903
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !904
  %cmp = icmp ult i64 %0, %1, !dbg !905
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !906

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !907
  %2 = load i16*, i16** %call, align 8, !dbg !907
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !907
  %4 = load i64, i64* %numWritten, align 8, !dbg !907
  %mul = mul i64 2, %4, !dbg !907
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !907
  %5 = load i8, i8* %arrayidx, align 1, !dbg !907
  %conv = sext i8 %5 to i32, !dbg !907
  %idxprom = sext i32 %conv to i64, !dbg !907
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !907
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !907
  %conv2 = zext i16 %6 to i32, !dbg !907
  %and = and i32 %conv2, 4096, !dbg !907
  %tobool = icmp ne i32 %and, 0, !dbg !907
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !908

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !909
  %7 = load i16*, i16** %call3, align 8, !dbg !909
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !909
  %9 = load i64, i64* %numWritten, align 8, !dbg !909
  %mul4 = mul i64 2, %9, !dbg !909
  %add = add i64 %mul4, 1, !dbg !909
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !909
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !909
  %conv6 = sext i8 %10 to i32, !dbg !909
  %idxprom7 = sext i32 %conv6 to i64, !dbg !909
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !909
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !909
  %conv9 = zext i16 %11 to i32, !dbg !909
  %and10 = and i32 %conv9, 4096, !dbg !909
  %tobool11 = icmp ne i32 %and10, 0, !dbg !908
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !910
  br i1 %12, label %while.body, label %while.end, !dbg !902

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !911, metadata !DIExpression()), !dbg !913
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !914
  %14 = load i64, i64* %numWritten, align 8, !dbg !915
  %mul12 = mul i64 2, %14, !dbg !916
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !914
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !917
  %15 = load i32, i32* %byte, align 4, !dbg !918
  %conv15 = trunc i32 %15 to i8, !dbg !919
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !920
  %17 = load i64, i64* %numWritten, align 8, !dbg !921
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !920
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !922
  %18 = load i64, i64* %numWritten, align 8, !dbg !923
  %inc = add i64 %18, 1, !dbg !923
  store i64 %inc, i64* %numWritten, align 8, !dbg !923
  br label %while.cond, !dbg !902, !llvm.loop !924

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !926
  ret i64 %19, !dbg !927
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !928 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !933, metadata !DIExpression()), !dbg !934
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !937, metadata !DIExpression()), !dbg !938
  store i64 0, i64* %numWritten, align 8, !dbg !938
  br label %while.cond, !dbg !939

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !940
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !941
  %cmp = icmp ult i64 %0, %1, !dbg !942
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !943

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !944
  %3 = load i64, i64* %numWritten, align 8, !dbg !945
  %mul = mul i64 2, %3, !dbg !946
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !944
  %4 = load i32, i32* %arrayidx, align 4, !dbg !944
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !947
  %tobool = icmp ne i32 %call, 0, !dbg !947
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !948

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !949
  %6 = load i64, i64* %numWritten, align 8, !dbg !950
  %mul1 = mul i64 2, %6, !dbg !951
  %add = add i64 %mul1, 1, !dbg !952
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !949
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !949
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !953
  %tobool4 = icmp ne i32 %call3, 0, !dbg !948
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !954
  br i1 %8, label %while.body, label %while.end, !dbg !939

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !955, metadata !DIExpression()), !dbg !957
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !958
  %10 = load i64, i64* %numWritten, align 8, !dbg !959
  %mul5 = mul i64 2, %10, !dbg !960
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !958
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !961
  %11 = load i32, i32* %byte, align 4, !dbg !962
  %conv = trunc i32 %11 to i8, !dbg !963
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !964
  %13 = load i64, i64* %numWritten, align 8, !dbg !965
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !964
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !966
  %14 = load i64, i64* %numWritten, align 8, !dbg !967
  %inc = add i64 %14, 1, !dbg !967
  store i64 %inc, i64* %numWritten, align 8, !dbg !967
  br label %while.cond, !dbg !939, !llvm.loop !968

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !970
  ret i64 %15, !dbg !971
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !972 {
entry:
  ret i32 1, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !976 {
entry:
  ret i32 0, !dbg !977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !978 {
entry:
  %call = call i32 @rand() #8, !dbg !979
  %rem = srem i32 %call, 2, !dbg !980
  ret i32 %rem, !dbg !981
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !982 {
entry:
  ret void, !dbg !983
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !984 {
entry:
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !986 {
entry:
  ret void, !dbg !987
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !988 {
entry:
  ret void, !dbg !989
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !990 {
entry:
  ret void, !dbg !991
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !992 {
entry:
  ret void, !dbg !993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !994 {
entry:
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !996 {
entry:
  ret void, !dbg !997
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !998 {
entry:
  ret void, !dbg !999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1000 {
entry:
  ret void, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1002 {
entry:
  ret void, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1004 {
entry:
  ret void, !dbg !1005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1006 {
entry:
  ret void, !dbg !1007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1008 {
entry:
  ret void, !dbg !1009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1010 {
entry:
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1012 {
entry:
  ret void, !dbg !1013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1014 {
entry:
  ret void, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1016 {
entry:
  ret void, !dbg !1017
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_938/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_938/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_09_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!117 = !DILocation(line: 55, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !104, file: !45, line: 55, column: 8)
!119 = !DILocation(line: 55, column: 8, scope: !104)
!120 = !DILocalVariable(name: "recvResult", scope: !121, file: !45, line: 62, type: !23)
!121 = distinct !DILexicalBlock(scope: !122, file: !45, line: 57, column: 9)
!122 = distinct !DILexicalBlock(scope: !118, file: !45, line: 56, column: 5)
!123 = !DILocation(line: 62, column: 17, scope: !121)
!124 = !DILocalVariable(name: "service", scope: !121, file: !45, line: 63, type: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !126)
!126 = !{!127, !128, !134, !141}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !125, file: !60, line: 240, baseType: !94, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !125, file: !60, line: 241, baseType: !129, size: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !133, line: 40, baseType: !24)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !125, file: !60, line: 242, baseType: !135, size: 32, offset: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !135, file: !60, line: 33, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 26, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !7)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !125, file: !60, line: 245, baseType: !142, size: 64, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DILocation(line: 63, column: 32, scope: !121)
!146 = !DILocalVariable(name: "replace", scope: !121, file: !45, line: 64, type: !42)
!147 = !DILocation(line: 64, column: 19, scope: !121)
!148 = !DILocalVariable(name: "connectSocket", scope: !121, file: !45, line: 65, type: !23)
!149 = !DILocation(line: 65, column: 20, scope: !121)
!150 = !DILocalVariable(name: "dataLen", scope: !121, file: !45, line: 66, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!153 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!154 = !DILocation(line: 66, column: 20, scope: !121)
!155 = !DILocation(line: 66, column: 37, scope: !121)
!156 = !DILocation(line: 66, column: 30, scope: !121)
!157 = !DILocation(line: 67, column: 13, scope: !121)
!158 = !DILocation(line: 77, column: 33, scope: !159)
!159 = distinct !DILexicalBlock(scope: !121, file: !45, line: 68, column: 13)
!160 = !DILocation(line: 77, column: 31, scope: !159)
!161 = !DILocation(line: 78, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !45, line: 78, column: 21)
!163 = !DILocation(line: 78, column: 35, scope: !162)
!164 = !DILocation(line: 78, column: 21, scope: !159)
!165 = !DILocation(line: 80, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !45, line: 79, column: 17)
!167 = !DILocation(line: 82, column: 17, scope: !159)
!168 = !DILocation(line: 83, column: 25, scope: !159)
!169 = !DILocation(line: 83, column: 36, scope: !159)
!170 = !DILocation(line: 84, column: 43, scope: !159)
!171 = !DILocation(line: 84, column: 25, scope: !159)
!172 = !DILocation(line: 84, column: 34, scope: !159)
!173 = !DILocation(line: 84, column: 41, scope: !159)
!174 = !DILocation(line: 85, column: 36, scope: !159)
!175 = !DILocation(line: 85, column: 25, scope: !159)
!176 = !DILocation(line: 85, column: 34, scope: !159)
!177 = !DILocation(line: 86, column: 29, scope: !178)
!178 = distinct !DILexicalBlock(scope: !159, file: !45, line: 86, column: 21)
!179 = !DILocation(line: 86, column: 44, scope: !178)
!180 = !DILocation(line: 86, column: 21, scope: !178)
!181 = !DILocation(line: 86, column: 89, scope: !178)
!182 = !DILocation(line: 86, column: 21, scope: !159)
!183 = !DILocation(line: 88, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !45, line: 87, column: 17)
!185 = !DILocation(line: 93, column: 35, scope: !159)
!186 = !DILocation(line: 93, column: 59, scope: !159)
!187 = !DILocation(line: 93, column: 66, scope: !159)
!188 = !DILocation(line: 93, column: 64, scope: !159)
!189 = !DILocation(line: 93, column: 98, scope: !159)
!190 = !DILocation(line: 93, column: 96, scope: !159)
!191 = !DILocation(line: 93, column: 106, scope: !159)
!192 = !DILocation(line: 93, column: 89, scope: !159)
!193 = !DILocation(line: 93, column: 30, scope: !159)
!194 = !DILocation(line: 93, column: 28, scope: !159)
!195 = !DILocation(line: 94, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !159, file: !45, line: 94, column: 21)
!197 = !DILocation(line: 94, column: 32, scope: !196)
!198 = !DILocation(line: 94, column: 48, scope: !196)
!199 = !DILocation(line: 94, column: 51, scope: !196)
!200 = !DILocation(line: 94, column: 62, scope: !196)
!201 = !DILocation(line: 94, column: 21, scope: !159)
!202 = !DILocation(line: 96, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !45, line: 95, column: 17)
!204 = !DILocation(line: 99, column: 17, scope: !159)
!205 = !DILocation(line: 99, column: 22, scope: !159)
!206 = !DILocation(line: 99, column: 32, scope: !159)
!207 = !DILocation(line: 99, column: 43, scope: !159)
!208 = !DILocation(line: 99, column: 30, scope: !159)
!209 = !DILocation(line: 99, column: 59, scope: !159)
!210 = !DILocation(line: 101, column: 34, scope: !159)
!211 = !DILocation(line: 101, column: 27, scope: !159)
!212 = !DILocation(line: 101, column: 25, scope: !159)
!213 = !DILocation(line: 102, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !159, file: !45, line: 102, column: 21)
!215 = !DILocation(line: 102, column: 21, scope: !159)
!216 = !DILocation(line: 104, column: 22, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !45, line: 103, column: 17)
!218 = !DILocation(line: 104, column: 30, scope: !217)
!219 = !DILocation(line: 105, column: 17, scope: !217)
!220 = !DILocation(line: 106, column: 34, scope: !159)
!221 = !DILocation(line: 106, column: 27, scope: !159)
!222 = !DILocation(line: 106, column: 25, scope: !159)
!223 = !DILocation(line: 107, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !159, file: !45, line: 107, column: 21)
!225 = !DILocation(line: 107, column: 21, scope: !159)
!226 = !DILocation(line: 109, column: 22, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !45, line: 108, column: 17)
!228 = !DILocation(line: 109, column: 30, scope: !227)
!229 = !DILocation(line: 110, column: 17, scope: !227)
!230 = !DILocation(line: 111, column: 13, scope: !159)
!231 = !DILocation(line: 113, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !121, file: !45, line: 113, column: 17)
!233 = !DILocation(line: 113, column: 31, scope: !232)
!234 = !DILocation(line: 113, column: 17, scope: !121)
!235 = !DILocation(line: 115, column: 30, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !45, line: 114, column: 13)
!237 = !DILocation(line: 115, column: 17, scope: !236)
!238 = !DILocation(line: 116, column: 13, scope: !236)
!239 = !DILocation(line: 124, column: 5, scope: !122)
!240 = !DILocation(line: 125, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !104, file: !45, line: 125, column: 8)
!242 = !DILocation(line: 125, column: 8, scope: !104)
!243 = !DILocalVariable(name: "i", scope: !244, file: !45, line: 128, type: !23)
!244 = distinct !DILexicalBlock(scope: !245, file: !45, line: 127, column: 9)
!245 = distinct !DILexicalBlock(scope: !241, file: !45, line: 126, column: 5)
!246 = !DILocation(line: 128, column: 17, scope: !244)
!247 = !DILocalVariable(name: "n", scope: !244, file: !45, line: 128, type: !23)
!248 = !DILocation(line: 128, column: 20, scope: !244)
!249 = !DILocalVariable(name: "intVariable", scope: !244, file: !45, line: 128, type: !23)
!250 = !DILocation(line: 128, column: 23, scope: !244)
!251 = !DILocation(line: 129, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !45, line: 129, column: 17)
!253 = !DILocation(line: 129, column: 17, scope: !252)
!254 = !DILocation(line: 129, column: 40, scope: !252)
!255 = !DILocation(line: 129, column: 17, scope: !244)
!256 = !DILocation(line: 132, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !45, line: 130, column: 13)
!258 = !DILocation(line: 133, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !45, line: 133, column: 17)
!260 = !DILocation(line: 133, column: 22, scope: !259)
!261 = !DILocation(line: 133, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !45, line: 133, column: 17)
!263 = !DILocation(line: 133, column: 33, scope: !262)
!264 = !DILocation(line: 133, column: 31, scope: !262)
!265 = !DILocation(line: 133, column: 17, scope: !259)
!266 = !DILocation(line: 136, column: 32, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !45, line: 134, column: 17)
!268 = !DILocation(line: 137, column: 17, scope: !267)
!269 = !DILocation(line: 133, column: 37, scope: !262)
!270 = !DILocation(line: 133, column: 17, scope: !262)
!271 = distinct !{!271, !265, !272, !273}
!272 = !DILocation(line: 137, column: 17, scope: !259)
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocation(line: 138, column: 30, scope: !257)
!275 = !DILocation(line: 138, column: 17, scope: !257)
!276 = !DILocation(line: 139, column: 13, scope: !257)
!277 = !DILocation(line: 141, column: 5, scope: !245)
!278 = !DILocation(line: 142, column: 1, scope: !104)
!279 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 149, type: !105, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!280 = !DILocalVariable(name: "data", scope: !279, file: !45, line: 151, type: !42)
!281 = !DILocation(line: 151, column: 12, scope: !279)
!282 = !DILocalVariable(name: "dataBuffer", scope: !279, file: !45, line: 152, type: !111)
!283 = !DILocation(line: 152, column: 10, scope: !279)
!284 = !DILocation(line: 153, column: 12, scope: !279)
!285 = !DILocation(line: 153, column: 10, scope: !279)
!286 = !DILocation(line: 154, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !45, line: 154, column: 8)
!288 = !DILocation(line: 154, column: 8, scope: !279)
!289 = !DILocalVariable(name: "recvResult", scope: !290, file: !45, line: 161, type: !23)
!290 = distinct !DILexicalBlock(scope: !291, file: !45, line: 156, column: 9)
!291 = distinct !DILexicalBlock(scope: !287, file: !45, line: 155, column: 5)
!292 = !DILocation(line: 161, column: 17, scope: !290)
!293 = !DILocalVariable(name: "service", scope: !290, file: !45, line: 162, type: !125)
!294 = !DILocation(line: 162, column: 32, scope: !290)
!295 = !DILocalVariable(name: "replace", scope: !290, file: !45, line: 163, type: !42)
!296 = !DILocation(line: 163, column: 19, scope: !290)
!297 = !DILocalVariable(name: "connectSocket", scope: !290, file: !45, line: 164, type: !23)
!298 = !DILocation(line: 164, column: 20, scope: !290)
!299 = !DILocalVariable(name: "dataLen", scope: !290, file: !45, line: 165, type: !151)
!300 = !DILocation(line: 165, column: 20, scope: !290)
!301 = !DILocation(line: 165, column: 37, scope: !290)
!302 = !DILocation(line: 165, column: 30, scope: !290)
!303 = !DILocation(line: 166, column: 13, scope: !290)
!304 = !DILocation(line: 176, column: 33, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !45, line: 167, column: 13)
!306 = !DILocation(line: 176, column: 31, scope: !305)
!307 = !DILocation(line: 177, column: 21, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !45, line: 177, column: 21)
!309 = !DILocation(line: 177, column: 35, scope: !308)
!310 = !DILocation(line: 177, column: 21, scope: !305)
!311 = !DILocation(line: 179, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !45, line: 178, column: 17)
!313 = !DILocation(line: 181, column: 17, scope: !305)
!314 = !DILocation(line: 182, column: 25, scope: !305)
!315 = !DILocation(line: 182, column: 36, scope: !305)
!316 = !DILocation(line: 183, column: 43, scope: !305)
!317 = !DILocation(line: 183, column: 25, scope: !305)
!318 = !DILocation(line: 183, column: 34, scope: !305)
!319 = !DILocation(line: 183, column: 41, scope: !305)
!320 = !DILocation(line: 184, column: 36, scope: !305)
!321 = !DILocation(line: 184, column: 25, scope: !305)
!322 = !DILocation(line: 184, column: 34, scope: !305)
!323 = !DILocation(line: 185, column: 29, scope: !324)
!324 = distinct !DILexicalBlock(scope: !305, file: !45, line: 185, column: 21)
!325 = !DILocation(line: 185, column: 44, scope: !324)
!326 = !DILocation(line: 185, column: 21, scope: !324)
!327 = !DILocation(line: 185, column: 89, scope: !324)
!328 = !DILocation(line: 185, column: 21, scope: !305)
!329 = !DILocation(line: 187, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !45, line: 186, column: 17)
!331 = !DILocation(line: 192, column: 35, scope: !305)
!332 = !DILocation(line: 192, column: 59, scope: !305)
!333 = !DILocation(line: 192, column: 66, scope: !305)
!334 = !DILocation(line: 192, column: 64, scope: !305)
!335 = !DILocation(line: 192, column: 98, scope: !305)
!336 = !DILocation(line: 192, column: 96, scope: !305)
!337 = !DILocation(line: 192, column: 106, scope: !305)
!338 = !DILocation(line: 192, column: 89, scope: !305)
!339 = !DILocation(line: 192, column: 30, scope: !305)
!340 = !DILocation(line: 192, column: 28, scope: !305)
!341 = !DILocation(line: 193, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !305, file: !45, line: 193, column: 21)
!343 = !DILocation(line: 193, column: 32, scope: !342)
!344 = !DILocation(line: 193, column: 48, scope: !342)
!345 = !DILocation(line: 193, column: 51, scope: !342)
!346 = !DILocation(line: 193, column: 62, scope: !342)
!347 = !DILocation(line: 193, column: 21, scope: !305)
!348 = !DILocation(line: 195, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !342, file: !45, line: 194, column: 17)
!350 = !DILocation(line: 198, column: 17, scope: !305)
!351 = !DILocation(line: 198, column: 22, scope: !305)
!352 = !DILocation(line: 198, column: 32, scope: !305)
!353 = !DILocation(line: 198, column: 43, scope: !305)
!354 = !DILocation(line: 198, column: 30, scope: !305)
!355 = !DILocation(line: 198, column: 59, scope: !305)
!356 = !DILocation(line: 200, column: 34, scope: !305)
!357 = !DILocation(line: 200, column: 27, scope: !305)
!358 = !DILocation(line: 200, column: 25, scope: !305)
!359 = !DILocation(line: 201, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !305, file: !45, line: 201, column: 21)
!361 = !DILocation(line: 201, column: 21, scope: !305)
!362 = !DILocation(line: 203, column: 22, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !45, line: 202, column: 17)
!364 = !DILocation(line: 203, column: 30, scope: !363)
!365 = !DILocation(line: 204, column: 17, scope: !363)
!366 = !DILocation(line: 205, column: 34, scope: !305)
!367 = !DILocation(line: 205, column: 27, scope: !305)
!368 = !DILocation(line: 205, column: 25, scope: !305)
!369 = !DILocation(line: 206, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !305, file: !45, line: 206, column: 21)
!371 = !DILocation(line: 206, column: 21, scope: !305)
!372 = !DILocation(line: 208, column: 22, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !45, line: 207, column: 17)
!374 = !DILocation(line: 208, column: 30, scope: !373)
!375 = !DILocation(line: 209, column: 17, scope: !373)
!376 = !DILocation(line: 210, column: 13, scope: !305)
!377 = !DILocation(line: 212, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !290, file: !45, line: 212, column: 17)
!379 = !DILocation(line: 212, column: 31, scope: !378)
!380 = !DILocation(line: 212, column: 17, scope: !290)
!381 = !DILocation(line: 214, column: 30, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !45, line: 213, column: 13)
!383 = !DILocation(line: 214, column: 17, scope: !382)
!384 = !DILocation(line: 215, column: 13, scope: !382)
!385 = !DILocation(line: 223, column: 5, scope: !291)
!386 = !DILocation(line: 224, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !279, file: !45, line: 224, column: 8)
!388 = !DILocation(line: 224, column: 8, scope: !279)
!389 = !DILocation(line: 227, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !45, line: 225, column: 5)
!391 = !DILocation(line: 228, column: 5, scope: !390)
!392 = !DILocalVariable(name: "i", scope: !393, file: !45, line: 232, type: !23)
!393 = distinct !DILexicalBlock(scope: !394, file: !45, line: 231, column: 9)
!394 = distinct !DILexicalBlock(scope: !387, file: !45, line: 230, column: 5)
!395 = !DILocation(line: 232, column: 17, scope: !393)
!396 = !DILocalVariable(name: "n", scope: !393, file: !45, line: 232, type: !23)
!397 = !DILocation(line: 232, column: 20, scope: !393)
!398 = !DILocalVariable(name: "intVariable", scope: !393, file: !45, line: 232, type: !23)
!399 = !DILocation(line: 232, column: 23, scope: !393)
!400 = !DILocation(line: 233, column: 24, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !45, line: 233, column: 17)
!402 = !DILocation(line: 233, column: 17, scope: !401)
!403 = !DILocation(line: 233, column: 40, scope: !401)
!404 = !DILocation(line: 233, column: 17, scope: !393)
!405 = !DILocation(line: 236, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !45, line: 236, column: 21)
!407 = distinct !DILexicalBlock(scope: !401, file: !45, line: 234, column: 13)
!408 = !DILocation(line: 236, column: 23, scope: !406)
!409 = !DILocation(line: 236, column: 21, scope: !407)
!410 = !DILocation(line: 238, column: 33, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !45, line: 237, column: 17)
!412 = !DILocation(line: 239, column: 28, scope: !413)
!413 = distinct !DILexicalBlock(scope: !411, file: !45, line: 239, column: 21)
!414 = !DILocation(line: 239, column: 26, scope: !413)
!415 = !DILocation(line: 239, column: 33, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !45, line: 239, column: 21)
!417 = !DILocation(line: 239, column: 37, scope: !416)
!418 = !DILocation(line: 239, column: 35, scope: !416)
!419 = !DILocation(line: 239, column: 21, scope: !413)
!420 = !DILocation(line: 242, column: 36, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !45, line: 240, column: 21)
!422 = !DILocation(line: 243, column: 21, scope: !421)
!423 = !DILocation(line: 239, column: 41, scope: !416)
!424 = !DILocation(line: 239, column: 21, scope: !416)
!425 = distinct !{!425, !419, !426, !273}
!426 = !DILocation(line: 243, column: 21, scope: !413)
!427 = !DILocation(line: 244, column: 34, scope: !411)
!428 = !DILocation(line: 244, column: 21, scope: !411)
!429 = !DILocation(line: 245, column: 17, scope: !411)
!430 = !DILocation(line: 246, column: 13, scope: !407)
!431 = !DILocation(line: 249, column: 1, scope: !279)
!432 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 252, type: !105, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!433 = !DILocalVariable(name: "data", scope: !432, file: !45, line: 254, type: !42)
!434 = !DILocation(line: 254, column: 12, scope: !432)
!435 = !DILocalVariable(name: "dataBuffer", scope: !432, file: !45, line: 255, type: !111)
!436 = !DILocation(line: 255, column: 10, scope: !432)
!437 = !DILocation(line: 256, column: 12, scope: !432)
!438 = !DILocation(line: 256, column: 10, scope: !432)
!439 = !DILocation(line: 257, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !432, file: !45, line: 257, column: 8)
!441 = !DILocation(line: 257, column: 8, scope: !432)
!442 = !DILocalVariable(name: "recvResult", scope: !443, file: !45, line: 264, type: !23)
!443 = distinct !DILexicalBlock(scope: !444, file: !45, line: 259, column: 9)
!444 = distinct !DILexicalBlock(scope: !440, file: !45, line: 258, column: 5)
!445 = !DILocation(line: 264, column: 17, scope: !443)
!446 = !DILocalVariable(name: "service", scope: !443, file: !45, line: 265, type: !125)
!447 = !DILocation(line: 265, column: 32, scope: !443)
!448 = !DILocalVariable(name: "replace", scope: !443, file: !45, line: 266, type: !42)
!449 = !DILocation(line: 266, column: 19, scope: !443)
!450 = !DILocalVariable(name: "connectSocket", scope: !443, file: !45, line: 267, type: !23)
!451 = !DILocation(line: 267, column: 20, scope: !443)
!452 = !DILocalVariable(name: "dataLen", scope: !443, file: !45, line: 268, type: !151)
!453 = !DILocation(line: 268, column: 20, scope: !443)
!454 = !DILocation(line: 268, column: 37, scope: !443)
!455 = !DILocation(line: 268, column: 30, scope: !443)
!456 = !DILocation(line: 269, column: 13, scope: !443)
!457 = !DILocation(line: 279, column: 33, scope: !458)
!458 = distinct !DILexicalBlock(scope: !443, file: !45, line: 270, column: 13)
!459 = !DILocation(line: 279, column: 31, scope: !458)
!460 = !DILocation(line: 280, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !45, line: 280, column: 21)
!462 = !DILocation(line: 280, column: 35, scope: !461)
!463 = !DILocation(line: 280, column: 21, scope: !458)
!464 = !DILocation(line: 282, column: 21, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !45, line: 281, column: 17)
!466 = !DILocation(line: 284, column: 17, scope: !458)
!467 = !DILocation(line: 285, column: 25, scope: !458)
!468 = !DILocation(line: 285, column: 36, scope: !458)
!469 = !DILocation(line: 286, column: 43, scope: !458)
!470 = !DILocation(line: 286, column: 25, scope: !458)
!471 = !DILocation(line: 286, column: 34, scope: !458)
!472 = !DILocation(line: 286, column: 41, scope: !458)
!473 = !DILocation(line: 287, column: 36, scope: !458)
!474 = !DILocation(line: 287, column: 25, scope: !458)
!475 = !DILocation(line: 287, column: 34, scope: !458)
!476 = !DILocation(line: 288, column: 29, scope: !477)
!477 = distinct !DILexicalBlock(scope: !458, file: !45, line: 288, column: 21)
!478 = !DILocation(line: 288, column: 44, scope: !477)
!479 = !DILocation(line: 288, column: 21, scope: !477)
!480 = !DILocation(line: 288, column: 89, scope: !477)
!481 = !DILocation(line: 288, column: 21, scope: !458)
!482 = !DILocation(line: 290, column: 21, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !45, line: 289, column: 17)
!484 = !DILocation(line: 295, column: 35, scope: !458)
!485 = !DILocation(line: 295, column: 59, scope: !458)
!486 = !DILocation(line: 295, column: 66, scope: !458)
!487 = !DILocation(line: 295, column: 64, scope: !458)
!488 = !DILocation(line: 295, column: 98, scope: !458)
!489 = !DILocation(line: 295, column: 96, scope: !458)
!490 = !DILocation(line: 295, column: 106, scope: !458)
!491 = !DILocation(line: 295, column: 89, scope: !458)
!492 = !DILocation(line: 295, column: 30, scope: !458)
!493 = !DILocation(line: 295, column: 28, scope: !458)
!494 = !DILocation(line: 296, column: 21, scope: !495)
!495 = distinct !DILexicalBlock(scope: !458, file: !45, line: 296, column: 21)
!496 = !DILocation(line: 296, column: 32, scope: !495)
!497 = !DILocation(line: 296, column: 48, scope: !495)
!498 = !DILocation(line: 296, column: 51, scope: !495)
!499 = !DILocation(line: 296, column: 62, scope: !495)
!500 = !DILocation(line: 296, column: 21, scope: !458)
!501 = !DILocation(line: 298, column: 21, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !45, line: 297, column: 17)
!503 = !DILocation(line: 301, column: 17, scope: !458)
!504 = !DILocation(line: 301, column: 22, scope: !458)
!505 = !DILocation(line: 301, column: 32, scope: !458)
!506 = !DILocation(line: 301, column: 43, scope: !458)
!507 = !DILocation(line: 301, column: 30, scope: !458)
!508 = !DILocation(line: 301, column: 59, scope: !458)
!509 = !DILocation(line: 303, column: 34, scope: !458)
!510 = !DILocation(line: 303, column: 27, scope: !458)
!511 = !DILocation(line: 303, column: 25, scope: !458)
!512 = !DILocation(line: 304, column: 21, scope: !513)
!513 = distinct !DILexicalBlock(scope: !458, file: !45, line: 304, column: 21)
!514 = !DILocation(line: 304, column: 21, scope: !458)
!515 = !DILocation(line: 306, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !45, line: 305, column: 17)
!517 = !DILocation(line: 306, column: 30, scope: !516)
!518 = !DILocation(line: 307, column: 17, scope: !516)
!519 = !DILocation(line: 308, column: 34, scope: !458)
!520 = !DILocation(line: 308, column: 27, scope: !458)
!521 = !DILocation(line: 308, column: 25, scope: !458)
!522 = !DILocation(line: 309, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !458, file: !45, line: 309, column: 21)
!524 = !DILocation(line: 309, column: 21, scope: !458)
!525 = !DILocation(line: 311, column: 22, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !45, line: 310, column: 17)
!527 = !DILocation(line: 311, column: 30, scope: !526)
!528 = !DILocation(line: 312, column: 17, scope: !526)
!529 = !DILocation(line: 313, column: 13, scope: !458)
!530 = !DILocation(line: 315, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !443, file: !45, line: 315, column: 17)
!532 = !DILocation(line: 315, column: 31, scope: !531)
!533 = !DILocation(line: 315, column: 17, scope: !443)
!534 = !DILocation(line: 317, column: 30, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !45, line: 316, column: 13)
!536 = !DILocation(line: 317, column: 17, scope: !535)
!537 = !DILocation(line: 318, column: 13, scope: !535)
!538 = !DILocation(line: 326, column: 5, scope: !444)
!539 = !DILocation(line: 327, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !432, file: !45, line: 327, column: 8)
!541 = !DILocation(line: 327, column: 8, scope: !432)
!542 = !DILocalVariable(name: "i", scope: !543, file: !45, line: 330, type: !23)
!543 = distinct !DILexicalBlock(scope: !544, file: !45, line: 329, column: 9)
!544 = distinct !DILexicalBlock(scope: !540, file: !45, line: 328, column: 5)
!545 = !DILocation(line: 330, column: 17, scope: !543)
!546 = !DILocalVariable(name: "n", scope: !543, file: !45, line: 330, type: !23)
!547 = !DILocation(line: 330, column: 20, scope: !543)
!548 = !DILocalVariable(name: "intVariable", scope: !543, file: !45, line: 330, type: !23)
!549 = !DILocation(line: 330, column: 23, scope: !543)
!550 = !DILocation(line: 331, column: 24, scope: !551)
!551 = distinct !DILexicalBlock(scope: !543, file: !45, line: 331, column: 17)
!552 = !DILocation(line: 331, column: 17, scope: !551)
!553 = !DILocation(line: 331, column: 40, scope: !551)
!554 = !DILocation(line: 331, column: 17, scope: !543)
!555 = !DILocation(line: 334, column: 21, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !45, line: 334, column: 21)
!557 = distinct !DILexicalBlock(scope: !551, file: !45, line: 332, column: 13)
!558 = !DILocation(line: 334, column: 23, scope: !556)
!559 = !DILocation(line: 334, column: 21, scope: !557)
!560 = !DILocation(line: 336, column: 33, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !45, line: 335, column: 17)
!562 = !DILocation(line: 337, column: 28, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !45, line: 337, column: 21)
!564 = !DILocation(line: 337, column: 26, scope: !563)
!565 = !DILocation(line: 337, column: 33, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !45, line: 337, column: 21)
!567 = !DILocation(line: 337, column: 37, scope: !566)
!568 = !DILocation(line: 337, column: 35, scope: !566)
!569 = !DILocation(line: 337, column: 21, scope: !563)
!570 = !DILocation(line: 340, column: 36, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !45, line: 338, column: 21)
!572 = !DILocation(line: 341, column: 21, scope: !571)
!573 = !DILocation(line: 337, column: 41, scope: !566)
!574 = !DILocation(line: 337, column: 21, scope: !566)
!575 = distinct !{!575, !569, !576, !273}
!576 = !DILocation(line: 341, column: 21, scope: !563)
!577 = !DILocation(line: 342, column: 34, scope: !561)
!578 = !DILocation(line: 342, column: 21, scope: !561)
!579 = !DILocation(line: 343, column: 17, scope: !561)
!580 = !DILocation(line: 344, column: 13, scope: !557)
!581 = !DILocation(line: 346, column: 5, scope: !544)
!582 = !DILocation(line: 347, column: 1, scope: !432)
!583 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 350, type: !105, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!584 = !DILocalVariable(name: "data", scope: !583, file: !45, line: 352, type: !42)
!585 = !DILocation(line: 352, column: 12, scope: !583)
!586 = !DILocalVariable(name: "dataBuffer", scope: !583, file: !45, line: 353, type: !111)
!587 = !DILocation(line: 353, column: 10, scope: !583)
!588 = !DILocation(line: 354, column: 12, scope: !583)
!589 = !DILocation(line: 354, column: 10, scope: !583)
!590 = !DILocation(line: 355, column: 8, scope: !591)
!591 = distinct !DILexicalBlock(scope: !583, file: !45, line: 355, column: 8)
!592 = !DILocation(line: 355, column: 8, scope: !583)
!593 = !DILocation(line: 358, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !45, line: 356, column: 5)
!595 = !DILocation(line: 359, column: 5, scope: !594)
!596 = !DILocation(line: 363, column: 16, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !45, line: 361, column: 5)
!598 = !DILocation(line: 363, column: 9, scope: !597)
!599 = !DILocation(line: 365, column: 8, scope: !600)
!600 = distinct !DILexicalBlock(scope: !583, file: !45, line: 365, column: 8)
!601 = !DILocation(line: 365, column: 8, scope: !583)
!602 = !DILocalVariable(name: "i", scope: !603, file: !45, line: 368, type: !23)
!603 = distinct !DILexicalBlock(scope: !604, file: !45, line: 367, column: 9)
!604 = distinct !DILexicalBlock(scope: !600, file: !45, line: 366, column: 5)
!605 = !DILocation(line: 368, column: 17, scope: !603)
!606 = !DILocalVariable(name: "n", scope: !603, file: !45, line: 368, type: !23)
!607 = !DILocation(line: 368, column: 20, scope: !603)
!608 = !DILocalVariable(name: "intVariable", scope: !603, file: !45, line: 368, type: !23)
!609 = !DILocation(line: 368, column: 23, scope: !603)
!610 = !DILocation(line: 369, column: 24, scope: !611)
!611 = distinct !DILexicalBlock(scope: !603, file: !45, line: 369, column: 17)
!612 = !DILocation(line: 369, column: 17, scope: !611)
!613 = !DILocation(line: 369, column: 40, scope: !611)
!614 = !DILocation(line: 369, column: 17, scope: !603)
!615 = !DILocation(line: 372, column: 29, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !45, line: 370, column: 13)
!617 = !DILocation(line: 373, column: 24, scope: !618)
!618 = distinct !DILexicalBlock(scope: !616, file: !45, line: 373, column: 17)
!619 = !DILocation(line: 373, column: 22, scope: !618)
!620 = !DILocation(line: 373, column: 29, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !45, line: 373, column: 17)
!622 = !DILocation(line: 373, column: 33, scope: !621)
!623 = !DILocation(line: 373, column: 31, scope: !621)
!624 = !DILocation(line: 373, column: 17, scope: !618)
!625 = !DILocation(line: 376, column: 32, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !45, line: 374, column: 17)
!627 = !DILocation(line: 377, column: 17, scope: !626)
!628 = !DILocation(line: 373, column: 37, scope: !621)
!629 = !DILocation(line: 373, column: 17, scope: !621)
!630 = distinct !{!630, !624, !631, !273}
!631 = !DILocation(line: 377, column: 17, scope: !618)
!632 = !DILocation(line: 378, column: 30, scope: !616)
!633 = !DILocation(line: 378, column: 17, scope: !616)
!634 = !DILocation(line: 379, column: 13, scope: !616)
!635 = !DILocation(line: 381, column: 5, scope: !604)
!636 = !DILocation(line: 382, column: 1, scope: !583)
!637 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 385, type: !105, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!638 = !DILocalVariable(name: "data", scope: !637, file: !45, line: 387, type: !42)
!639 = !DILocation(line: 387, column: 12, scope: !637)
!640 = !DILocalVariable(name: "dataBuffer", scope: !637, file: !45, line: 388, type: !111)
!641 = !DILocation(line: 388, column: 10, scope: !637)
!642 = !DILocation(line: 389, column: 12, scope: !637)
!643 = !DILocation(line: 389, column: 10, scope: !637)
!644 = !DILocation(line: 390, column: 8, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !45, line: 390, column: 8)
!646 = !DILocation(line: 390, column: 8, scope: !637)
!647 = !DILocation(line: 393, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !45, line: 391, column: 5)
!649 = !DILocation(line: 393, column: 9, scope: !648)
!650 = !DILocation(line: 394, column: 5, scope: !648)
!651 = !DILocation(line: 395, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !637, file: !45, line: 395, column: 8)
!653 = !DILocation(line: 395, column: 8, scope: !637)
!654 = !DILocalVariable(name: "i", scope: !655, file: !45, line: 398, type: !23)
!655 = distinct !DILexicalBlock(scope: !656, file: !45, line: 397, column: 9)
!656 = distinct !DILexicalBlock(scope: !652, file: !45, line: 396, column: 5)
!657 = !DILocation(line: 398, column: 17, scope: !655)
!658 = !DILocalVariable(name: "n", scope: !655, file: !45, line: 398, type: !23)
!659 = !DILocation(line: 398, column: 20, scope: !655)
!660 = !DILocalVariable(name: "intVariable", scope: !655, file: !45, line: 398, type: !23)
!661 = !DILocation(line: 398, column: 23, scope: !655)
!662 = !DILocation(line: 399, column: 24, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !45, line: 399, column: 17)
!664 = !DILocation(line: 399, column: 17, scope: !663)
!665 = !DILocation(line: 399, column: 40, scope: !663)
!666 = !DILocation(line: 399, column: 17, scope: !655)
!667 = !DILocation(line: 402, column: 29, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !45, line: 400, column: 13)
!669 = !DILocation(line: 403, column: 24, scope: !670)
!670 = distinct !DILexicalBlock(scope: !668, file: !45, line: 403, column: 17)
!671 = !DILocation(line: 403, column: 22, scope: !670)
!672 = !DILocation(line: 403, column: 29, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !45, line: 403, column: 17)
!674 = !DILocation(line: 403, column: 33, scope: !673)
!675 = !DILocation(line: 403, column: 31, scope: !673)
!676 = !DILocation(line: 403, column: 17, scope: !670)
!677 = !DILocation(line: 406, column: 32, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !45, line: 404, column: 17)
!679 = !DILocation(line: 407, column: 17, scope: !678)
!680 = !DILocation(line: 403, column: 37, scope: !673)
!681 = !DILocation(line: 403, column: 17, scope: !673)
!682 = distinct !{!682, !676, !683, !273}
!683 = !DILocation(line: 407, column: 17, scope: !670)
!684 = !DILocation(line: 408, column: 30, scope: !668)
!685 = !DILocation(line: 408, column: 17, scope: !668)
!686 = !DILocation(line: 409, column: 13, scope: !668)
!687 = !DILocation(line: 411, column: 5, scope: !656)
!688 = !DILocation(line: 412, column: 1, scope: !637)
!689 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_09_good", scope: !45, file: !45, line: 414, type: !105, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!690 = !DILocation(line: 416, column: 5, scope: !689)
!691 = !DILocation(line: 417, column: 5, scope: !689)
!692 = !DILocation(line: 418, column: 5, scope: !689)
!693 = !DILocation(line: 419, column: 5, scope: !689)
!694 = !DILocation(line: 420, column: 1, scope: !689)
!695 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !696, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !42}
!698 = !DILocalVariable(name: "line", arg: 1, scope: !695, file: !3, line: 11, type: !42)
!699 = !DILocation(line: 11, column: 25, scope: !695)
!700 = !DILocation(line: 13, column: 1, scope: !695)
!701 = !DILocation(line: 14, column: 8, scope: !702)
!702 = distinct !DILexicalBlock(scope: !695, file: !3, line: 14, column: 8)
!703 = !DILocation(line: 14, column: 13, scope: !702)
!704 = !DILocation(line: 14, column: 8, scope: !695)
!705 = !DILocation(line: 16, column: 24, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !3, line: 15, column: 5)
!707 = !DILocation(line: 16, column: 9, scope: !706)
!708 = !DILocation(line: 17, column: 5, scope: !706)
!709 = !DILocation(line: 18, column: 5, scope: !695)
!710 = !DILocation(line: 19, column: 1, scope: !695)
!711 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !696, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!712 = !DILocalVariable(name: "line", arg: 1, scope: !711, file: !3, line: 20, type: !42)
!713 = !DILocation(line: 20, column: 29, scope: !711)
!714 = !DILocation(line: 22, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 22, column: 8)
!716 = !DILocation(line: 22, column: 13, scope: !715)
!717 = !DILocation(line: 22, column: 8, scope: !711)
!718 = !DILocation(line: 24, column: 24, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !3, line: 23, column: 5)
!720 = !DILocation(line: 24, column: 9, scope: !719)
!721 = !DILocation(line: 25, column: 5, scope: !719)
!722 = !DILocation(line: 26, column: 1, scope: !711)
!723 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !724, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !152, line: 74, baseType: !23)
!728 = !DILocalVariable(name: "line", arg: 1, scope: !723, file: !3, line: 27, type: !726)
!729 = !DILocation(line: 27, column: 29, scope: !723)
!730 = !DILocation(line: 29, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !723, file: !3, line: 29, column: 8)
!732 = !DILocation(line: 29, column: 13, scope: !731)
!733 = !DILocation(line: 29, column: 8, scope: !723)
!734 = !DILocation(line: 31, column: 27, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !3, line: 30, column: 5)
!736 = !DILocation(line: 31, column: 9, scope: !735)
!737 = !DILocation(line: 32, column: 5, scope: !735)
!738 = !DILocation(line: 33, column: 1, scope: !723)
!739 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !740, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !23}
!742 = !DILocalVariable(name: "intNumber", arg: 1, scope: !739, file: !3, line: 35, type: !23)
!743 = !DILocation(line: 35, column: 24, scope: !739)
!744 = !DILocation(line: 37, column: 20, scope: !739)
!745 = !DILocation(line: 37, column: 5, scope: !739)
!746 = !DILocation(line: 38, column: 1, scope: !739)
!747 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !748, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !750}
!750 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!751 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !747, file: !3, line: 40, type: !750)
!752 = !DILocation(line: 40, column: 28, scope: !747)
!753 = !DILocation(line: 42, column: 21, scope: !747)
!754 = !DILocation(line: 42, column: 5, scope: !747)
!755 = !DILocation(line: 43, column: 1, scope: !747)
!756 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !757, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !759}
!759 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!760 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !756, file: !3, line: 45, type: !759)
!761 = !DILocation(line: 45, column: 28, scope: !756)
!762 = !DILocation(line: 47, column: 20, scope: !756)
!763 = !DILocation(line: 47, column: 5, scope: !756)
!764 = !DILocation(line: 48, column: 1, scope: !756)
!765 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !766, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !768}
!768 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!769 = !DILocalVariable(name: "longNumber", arg: 1, scope: !765, file: !3, line: 50, type: !768)
!770 = !DILocation(line: 50, column: 26, scope: !765)
!771 = !DILocation(line: 52, column: 21, scope: !765)
!772 = !DILocation(line: 52, column: 5, scope: !765)
!773 = !DILocation(line: 53, column: 1, scope: !765)
!774 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !775, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !778, line: 27, baseType: !779)
!778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !133, line: 44, baseType: !768)
!780 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !774, file: !3, line: 55, type: !777)
!781 = !DILocation(line: 55, column: 33, scope: !774)
!782 = !DILocation(line: 57, column: 29, scope: !774)
!783 = !DILocation(line: 57, column: 5, scope: !774)
!784 = !DILocation(line: 58, column: 1, scope: !774)
!785 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !786, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !151}
!788 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !785, file: !3, line: 60, type: !151)
!789 = !DILocation(line: 60, column: 29, scope: !785)
!790 = !DILocation(line: 62, column: 21, scope: !785)
!791 = !DILocation(line: 62, column: 5, scope: !785)
!792 = !DILocation(line: 63, column: 1, scope: !785)
!793 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !794, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !43}
!796 = !DILocalVariable(name: "charHex", arg: 1, scope: !793, file: !3, line: 65, type: !43)
!797 = !DILocation(line: 65, column: 29, scope: !793)
!798 = !DILocation(line: 67, column: 22, scope: !793)
!799 = !DILocation(line: 67, column: 5, scope: !793)
!800 = !DILocation(line: 68, column: 1, scope: !793)
!801 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !802, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !727}
!804 = !DILocalVariable(name: "wideChar", arg: 1, scope: !801, file: !3, line: 70, type: !727)
!805 = !DILocation(line: 70, column: 29, scope: !801)
!806 = !DILocalVariable(name: "s", scope: !801, file: !3, line: 74, type: !807)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 64, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 2)
!810 = !DILocation(line: 74, column: 13, scope: !801)
!811 = !DILocation(line: 75, column: 16, scope: !801)
!812 = !DILocation(line: 75, column: 9, scope: !801)
!813 = !DILocation(line: 75, column: 14, scope: !801)
!814 = !DILocation(line: 76, column: 9, scope: !801)
!815 = !DILocation(line: 76, column: 14, scope: !801)
!816 = !DILocation(line: 77, column: 21, scope: !801)
!817 = !DILocation(line: 77, column: 5, scope: !801)
!818 = !DILocation(line: 78, column: 1, scope: !801)
!819 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !820, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !7}
!822 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !819, file: !3, line: 80, type: !7)
!823 = !DILocation(line: 80, column: 33, scope: !819)
!824 = !DILocation(line: 82, column: 20, scope: !819)
!825 = !DILocation(line: 82, column: 5, scope: !819)
!826 = !DILocation(line: 83, column: 1, scope: !819)
!827 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !828, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !25}
!830 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !827, file: !3, line: 85, type: !25)
!831 = !DILocation(line: 85, column: 45, scope: !827)
!832 = !DILocation(line: 87, column: 22, scope: !827)
!833 = !DILocation(line: 87, column: 5, scope: !827)
!834 = !DILocation(line: 88, column: 1, scope: !827)
!835 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !836, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !838}
!838 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!839 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !835, file: !3, line: 90, type: !838)
!840 = !DILocation(line: 90, column: 29, scope: !835)
!841 = !DILocation(line: 92, column: 20, scope: !835)
!842 = !DILocation(line: 92, column: 5, scope: !835)
!843 = !DILocation(line: 93, column: 1, scope: !835)
!844 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !845, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !849, line: 100, baseType: !850)
!849 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_938/source_code")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !849, line: 96, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !850, file: !849, line: 98, baseType: !23, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !850, file: !849, line: 99, baseType: !23, size: 32, offset: 32)
!854 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !844, file: !3, line: 95, type: !847)
!855 = !DILocation(line: 95, column: 40, scope: !844)
!856 = !DILocation(line: 97, column: 26, scope: !844)
!857 = !DILocation(line: 97, column: 47, scope: !844)
!858 = !DILocation(line: 97, column: 55, scope: !844)
!859 = !DILocation(line: 97, column: 76, scope: !844)
!860 = !DILocation(line: 97, column: 5, scope: !844)
!861 = !DILocation(line: 98, column: 1, scope: !844)
!862 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !863, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !865, !151}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!866 = !DILocalVariable(name: "bytes", arg: 1, scope: !862, file: !3, line: 100, type: !865)
!867 = !DILocation(line: 100, column: 38, scope: !862)
!868 = !DILocalVariable(name: "numBytes", arg: 2, scope: !862, file: !3, line: 100, type: !151)
!869 = !DILocation(line: 100, column: 52, scope: !862)
!870 = !DILocalVariable(name: "i", scope: !862, file: !3, line: 102, type: !151)
!871 = !DILocation(line: 102, column: 12, scope: !862)
!872 = !DILocation(line: 103, column: 12, scope: !873)
!873 = distinct !DILexicalBlock(scope: !862, file: !3, line: 103, column: 5)
!874 = !DILocation(line: 103, column: 10, scope: !873)
!875 = !DILocation(line: 103, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 103, column: 5)
!877 = !DILocation(line: 103, column: 21, scope: !876)
!878 = !DILocation(line: 103, column: 19, scope: !876)
!879 = !DILocation(line: 103, column: 5, scope: !873)
!880 = !DILocation(line: 105, column: 24, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 104, column: 5)
!882 = !DILocation(line: 105, column: 30, scope: !881)
!883 = !DILocation(line: 105, column: 9, scope: !881)
!884 = !DILocation(line: 106, column: 5, scope: !881)
!885 = !DILocation(line: 103, column: 31, scope: !876)
!886 = !DILocation(line: 103, column: 5, scope: !876)
!887 = distinct !{!887, !879, !888, !273}
!888 = !DILocation(line: 106, column: 5, scope: !873)
!889 = !DILocation(line: 107, column: 5, scope: !862)
!890 = !DILocation(line: 108, column: 1, scope: !862)
!891 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !892, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DISubroutineType(types: !893)
!893 = !{!151, !865, !151, !42}
!894 = !DILocalVariable(name: "bytes", arg: 1, scope: !891, file: !3, line: 113, type: !865)
!895 = !DILocation(line: 113, column: 39, scope: !891)
!896 = !DILocalVariable(name: "numBytes", arg: 2, scope: !891, file: !3, line: 113, type: !151)
!897 = !DILocation(line: 113, column: 53, scope: !891)
!898 = !DILocalVariable(name: "hex", arg: 3, scope: !891, file: !3, line: 113, type: !42)
!899 = !DILocation(line: 113, column: 71, scope: !891)
!900 = !DILocalVariable(name: "numWritten", scope: !891, file: !3, line: 115, type: !151)
!901 = !DILocation(line: 115, column: 12, scope: !891)
!902 = !DILocation(line: 121, column: 5, scope: !891)
!903 = !DILocation(line: 121, column: 12, scope: !891)
!904 = !DILocation(line: 121, column: 25, scope: !891)
!905 = !DILocation(line: 121, column: 23, scope: !891)
!906 = !DILocation(line: 121, column: 34, scope: !891)
!907 = !DILocation(line: 121, column: 37, scope: !891)
!908 = !DILocation(line: 121, column: 67, scope: !891)
!909 = !DILocation(line: 121, column: 70, scope: !891)
!910 = !DILocation(line: 0, scope: !891)
!911 = !DILocalVariable(name: "byte", scope: !912, file: !3, line: 123, type: !23)
!912 = distinct !DILexicalBlock(scope: !891, file: !3, line: 122, column: 5)
!913 = !DILocation(line: 123, column: 13, scope: !912)
!914 = !DILocation(line: 124, column: 17, scope: !912)
!915 = !DILocation(line: 124, column: 25, scope: !912)
!916 = !DILocation(line: 124, column: 23, scope: !912)
!917 = !DILocation(line: 124, column: 9, scope: !912)
!918 = !DILocation(line: 125, column: 45, scope: !912)
!919 = !DILocation(line: 125, column: 29, scope: !912)
!920 = !DILocation(line: 125, column: 9, scope: !912)
!921 = !DILocation(line: 125, column: 15, scope: !912)
!922 = !DILocation(line: 125, column: 27, scope: !912)
!923 = !DILocation(line: 126, column: 9, scope: !912)
!924 = distinct !{!924, !902, !925, !273}
!925 = !DILocation(line: 127, column: 5, scope: !891)
!926 = !DILocation(line: 129, column: 12, scope: !891)
!927 = !DILocation(line: 129, column: 5, scope: !891)
!928 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !929, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!929 = !DISubroutineType(types: !930)
!930 = !{!151, !865, !151, !726}
!931 = !DILocalVariable(name: "bytes", arg: 1, scope: !928, file: !3, line: 135, type: !865)
!932 = !DILocation(line: 135, column: 41, scope: !928)
!933 = !DILocalVariable(name: "numBytes", arg: 2, scope: !928, file: !3, line: 135, type: !151)
!934 = !DILocation(line: 135, column: 55, scope: !928)
!935 = !DILocalVariable(name: "hex", arg: 3, scope: !928, file: !3, line: 135, type: !726)
!936 = !DILocation(line: 135, column: 76, scope: !928)
!937 = !DILocalVariable(name: "numWritten", scope: !928, file: !3, line: 137, type: !151)
!938 = !DILocation(line: 137, column: 12, scope: !928)
!939 = !DILocation(line: 143, column: 5, scope: !928)
!940 = !DILocation(line: 143, column: 12, scope: !928)
!941 = !DILocation(line: 143, column: 25, scope: !928)
!942 = !DILocation(line: 143, column: 23, scope: !928)
!943 = !DILocation(line: 143, column: 34, scope: !928)
!944 = !DILocation(line: 143, column: 47, scope: !928)
!945 = !DILocation(line: 143, column: 55, scope: !928)
!946 = !DILocation(line: 143, column: 53, scope: !928)
!947 = !DILocation(line: 143, column: 37, scope: !928)
!948 = !DILocation(line: 143, column: 68, scope: !928)
!949 = !DILocation(line: 143, column: 81, scope: !928)
!950 = !DILocation(line: 143, column: 89, scope: !928)
!951 = !DILocation(line: 143, column: 87, scope: !928)
!952 = !DILocation(line: 143, column: 100, scope: !928)
!953 = !DILocation(line: 143, column: 71, scope: !928)
!954 = !DILocation(line: 0, scope: !928)
!955 = !DILocalVariable(name: "byte", scope: !956, file: !3, line: 145, type: !23)
!956 = distinct !DILexicalBlock(scope: !928, file: !3, line: 144, column: 5)
!957 = !DILocation(line: 145, column: 13, scope: !956)
!958 = !DILocation(line: 146, column: 18, scope: !956)
!959 = !DILocation(line: 146, column: 26, scope: !956)
!960 = !DILocation(line: 146, column: 24, scope: !956)
!961 = !DILocation(line: 146, column: 9, scope: !956)
!962 = !DILocation(line: 147, column: 45, scope: !956)
!963 = !DILocation(line: 147, column: 29, scope: !956)
!964 = !DILocation(line: 147, column: 9, scope: !956)
!965 = !DILocation(line: 147, column: 15, scope: !956)
!966 = !DILocation(line: 147, column: 27, scope: !956)
!967 = !DILocation(line: 148, column: 9, scope: !956)
!968 = distinct !{!968, !939, !969, !273}
!969 = !DILocation(line: 149, column: 5, scope: !928)
!970 = !DILocation(line: 151, column: 12, scope: !928)
!971 = !DILocation(line: 151, column: 5, scope: !928)
!972 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !973, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!973 = !DISubroutineType(types: !974)
!974 = !{!23}
!975 = !DILocation(line: 158, column: 5, scope: !972)
!976 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !973, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!977 = !DILocation(line: 163, column: 5, scope: !976)
!978 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !973, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!979 = !DILocation(line: 168, column: 13, scope: !978)
!980 = !DILocation(line: 168, column: 20, scope: !978)
!981 = !DILocation(line: 168, column: 5, scope: !978)
!982 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!983 = !DILocation(line: 187, column: 16, scope: !982)
!984 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!985 = !DILocation(line: 188, column: 16, scope: !984)
!986 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!987 = !DILocation(line: 189, column: 16, scope: !986)
!988 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!989 = !DILocation(line: 190, column: 16, scope: !988)
!990 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!991 = !DILocation(line: 191, column: 16, scope: !990)
!992 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!993 = !DILocation(line: 192, column: 16, scope: !992)
!994 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!995 = !DILocation(line: 193, column: 16, scope: !994)
!996 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!997 = !DILocation(line: 194, column: 16, scope: !996)
!998 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!999 = !DILocation(line: 195, column: 16, scope: !998)
!1000 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1001 = !DILocation(line: 198, column: 15, scope: !1000)
!1002 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1003 = !DILocation(line: 199, column: 15, scope: !1002)
!1004 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1005 = !DILocation(line: 200, column: 15, scope: !1004)
!1006 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1007 = !DILocation(line: 201, column: 15, scope: !1006)
!1008 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1009 = !DILocation(line: 202, column: 15, scope: !1008)
!1010 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1011 = !DILocation(line: 203, column: 15, scope: !1010)
!1012 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1013 = !DILocation(line: 204, column: 15, scope: !1012)
!1014 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1015 = !DILocation(line: 205, column: 15, scope: !1014)
!1016 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1017 = !DILocation(line: 206, column: 15, scope: !1016)
