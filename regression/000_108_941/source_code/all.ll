; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad() #0 !dbg !104 {
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
  %i46 = alloca i32, align 4
  %n47 = alloca i32, align 4
  %intVariable48 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !117
  %tobool = icmp ne i32 %call, 0, !dbg !117
  br i1 %tobool, label %if.then, label %if.else, !dbg !119

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %connectSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !150, metadata !DIExpression()), !dbg !154
  %1 = load i8*, i8** %data, align 8, !dbg !155
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !156
  store i64 %call1, i64* %dataLen, align 8, !dbg !154
  br label %do.body, !dbg !157

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !158
  store i32 %call2, i32* %connectSocket, align 4, !dbg !160
  %2 = load i32, i32* %connectSocket, align 4, !dbg !161
  %cmp = icmp eq i32 %2, -1, !dbg !163
  br i1 %cmp, label %if.then3, label %if.end, !dbg !164

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !165

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !167
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !168
  store i16 2, i16* %sin_family, align 4, !dbg !169
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !170
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !171
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !172
  store i32 %call4, i32* %s_addr, align 4, !dbg !173
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !174
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !175
  store i16 %call5, i16* %sin_port, align 2, !dbg !176
  %4 = load i32, i32* %connectSocket, align 4, !dbg !177
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !179
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !180
  %cmp7 = icmp eq i32 %call6, -1, !dbg !181
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !182

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !183

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !185
  %7 = load i8*, i8** %data, align 8, !dbg !186
  %8 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !188
  %9 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %9, !dbg !190
  %sub10 = sub i64 %sub, 1, !dbg !191
  %mul = mul i64 1, %sub10, !dbg !192
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !193
  %conv = trunc i64 %call11 to i32, !dbg !193
  store i32 %conv, i32* %recvResult, align 4, !dbg !194
  %10 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp12 = icmp eq i32 %10, -1, !dbg !197
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp14 = icmp eq i32 %11, 0, !dbg !200
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !201

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !202

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !204
  %13 = load i64, i64* %dataLen, align 8, !dbg !205
  %14 = load i32, i32* %recvResult, align 4, !dbg !206
  %conv18 = sext i32 %14 to i64, !dbg !206
  %div = udiv i64 %conv18, 1, !dbg !207
  %add = add i64 %13, %div, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !204
  store i8 0, i8* %arrayidx, align 1, !dbg !209
  %15 = load i8*, i8** %data, align 8, !dbg !210
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !211
  store i8* %call19, i8** %replace, align 8, !dbg !212
  %16 = load i8*, i8** %replace, align 8, !dbg !213
  %tobool20 = icmp ne i8* %16, null, !dbg !213
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !215

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !216
  store i8 0, i8* %17, align 1, !dbg !218
  br label %if.end22, !dbg !219

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !220
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !221
  store i8* %call23, i8** %replace, align 8, !dbg !222
  %19 = load i8*, i8** %replace, align 8, !dbg !223
  %tobool24 = icmp ne i8* %19, null, !dbg !223
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !225

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !226
  store i8 0, i8* %20, align 1, !dbg !228
  br label %if.end26, !dbg !229

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !230

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !231
  %cmp27 = icmp ne i32 %21, -1, !dbg !233
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !234

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !235
  %call30 = call i32 @close(i32 %22), !dbg !237
  br label %if.end31, !dbg !238

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end33, !dbg !239

if.else:                                          ; preds = %entry
  %23 = load i8*, i8** %data, align 8, !dbg !240
  %call32 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !242
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end31
  %call34 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !243
  %tobool35 = icmp ne i32 %call34, 0, !dbg !243
  br i1 %tobool35, label %if.then36, label %if.else45, !dbg !245

if.then36:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %n, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !252, metadata !DIExpression()), !dbg !253
  %24 = load i8*, i8** %data, align 8, !dbg !254
  %call37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !256
  %cmp38 = icmp eq i32 %call37, 1, !dbg !257
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !258

if.then40:                                        ; preds = %if.then36
  store i32 0, i32* %intVariable, align 4, !dbg !259
  store i32 0, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !263

for.cond:                                         ; preds = %for.inc, %if.then40
  %25 = load i32, i32* %i, align 4, !dbg !264
  %26 = load i32, i32* %n, align 4, !dbg !266
  %cmp41 = icmp slt i32 %25, %26, !dbg !267
  br i1 %cmp41, label %for.body, label %for.end, !dbg !268

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !269
  %inc = add nsw i32 %27, 1, !dbg !269
  store i32 %inc, i32* %intVariable, align 4, !dbg !269
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !272
  %inc43 = add nsw i32 %28, 1, !dbg !272
  store i32 %inc43, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !277
  call void @printIntLine(i32 %29), !dbg !278
  br label %if.end44, !dbg !279

if.end44:                                         ; preds = %for.end, %if.then36
  br label %if.end66, !dbg !280

if.else45:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %i46, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %n47, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %intVariable48, metadata !287, metadata !DIExpression()), !dbg !288
  %30 = load i8*, i8** %data, align 8, !dbg !289
  %call49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n47) #8, !dbg !291
  %cmp50 = icmp eq i32 %call49, 1, !dbg !292
  br i1 %cmp50, label %if.then52, label %if.end65, !dbg !293

if.then52:                                        ; preds = %if.else45
  %31 = load i32, i32* %n47, align 4, !dbg !294
  %cmp53 = icmp slt i32 %31, 10000, !dbg !297
  br i1 %cmp53, label %if.then55, label %if.end64, !dbg !298

if.then55:                                        ; preds = %if.then52
  store i32 0, i32* %intVariable48, align 4, !dbg !299
  store i32 0, i32* %i46, align 4, !dbg !301
  br label %for.cond56, !dbg !303

for.cond56:                                       ; preds = %for.inc61, %if.then55
  %32 = load i32, i32* %i46, align 4, !dbg !304
  %33 = load i32, i32* %n47, align 4, !dbg !306
  %cmp57 = icmp slt i32 %32, %33, !dbg !307
  br i1 %cmp57, label %for.body59, label %for.end63, !dbg !308

for.body59:                                       ; preds = %for.cond56
  %34 = load i32, i32* %intVariable48, align 4, !dbg !309
  %inc60 = add nsw i32 %34, 1, !dbg !309
  store i32 %inc60, i32* %intVariable48, align 4, !dbg !309
  br label %for.inc61, !dbg !311

for.inc61:                                        ; preds = %for.body59
  %35 = load i32, i32* %i46, align 4, !dbg !312
  %inc62 = add nsw i32 %35, 1, !dbg !312
  store i32 %inc62, i32* %i46, align 4, !dbg !312
  br label %for.cond56, !dbg !313, !llvm.loop !314

for.end63:                                        ; preds = %for.cond56
  %36 = load i32, i32* %intVariable48, align 4, !dbg !316
  call void @printIntLine(i32 %36), !dbg !317
  br label %if.end64, !dbg !318

if.end64:                                         ; preds = %for.end63, %if.then52
  br label %if.end65, !dbg !319

if.end65:                                         ; preds = %if.end64, %if.else45
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end44
  ret void, !dbg !320
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
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !321 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %recvResult32 = alloca i32, align 4
  %service33 = alloca %struct.sockaddr_in, align 4
  %replace34 = alloca i8*, align 8
  %connectSocket35 = alloca i32, align 4
  %dataLen36 = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i103 = alloca i32, align 4
  %n104 = alloca i32, align 4
  %intVariable105 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !325
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !325
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !326
  store i8* %arraydecay, i8** %data, align 8, !dbg !327
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !328
  %tobool = icmp ne i32 %call, 0, !dbg !328
  br i1 %tobool, label %if.then, label %if.else, !dbg !330

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 -1, i32* %connectSocket, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !341, metadata !DIExpression()), !dbg !342
  %1 = load i8*, i8** %data, align 8, !dbg !343
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !344
  store i64 %call1, i64* %dataLen, align 8, !dbg !342
  br label %do.body, !dbg !345

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !346
  store i32 %call2, i32* %connectSocket, align 4, !dbg !348
  %2 = load i32, i32* %connectSocket, align 4, !dbg !349
  %cmp = icmp eq i32 %2, -1, !dbg !351
  br i1 %cmp, label %if.then3, label %if.end, !dbg !352

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !353

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !355
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !355
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !356
  store i16 2, i16* %sin_family, align 4, !dbg !357
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !358
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !359
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !360
  store i32 %call4, i32* %s_addr, align 4, !dbg !361
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !362
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !363
  store i16 %call5, i16* %sin_port, align 2, !dbg !364
  %4 = load i32, i32* %connectSocket, align 4, !dbg !365
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !367
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !368
  %cmp7 = icmp eq i32 %call6, -1, !dbg !369
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !370

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !371

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !373
  %7 = load i8*, i8** %data, align 8, !dbg !374
  %8 = load i64, i64* %dataLen, align 8, !dbg !375
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !376
  %9 = load i64, i64* %dataLen, align 8, !dbg !377
  %sub = sub i64 100, %9, !dbg !378
  %sub10 = sub i64 %sub, 1, !dbg !379
  %mul = mul i64 1, %sub10, !dbg !380
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !381
  %conv = trunc i64 %call11 to i32, !dbg !381
  store i32 %conv, i32* %recvResult, align 4, !dbg !382
  %10 = load i32, i32* %recvResult, align 4, !dbg !383
  %cmp12 = icmp eq i32 %10, -1, !dbg !385
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !387
  %cmp14 = icmp eq i32 %11, 0, !dbg !388
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !389

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !390

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !392
  %13 = load i64, i64* %dataLen, align 8, !dbg !393
  %14 = load i32, i32* %recvResult, align 4, !dbg !394
  %conv18 = sext i32 %14 to i64, !dbg !394
  %div = udiv i64 %conv18, 1, !dbg !395
  %add = add i64 %13, %div, !dbg !396
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !392
  store i8 0, i8* %arrayidx, align 1, !dbg !397
  %15 = load i8*, i8** %data, align 8, !dbg !398
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !399
  store i8* %call19, i8** %replace, align 8, !dbg !400
  %16 = load i8*, i8** %replace, align 8, !dbg !401
  %tobool20 = icmp ne i8* %16, null, !dbg !401
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !403

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !404
  store i8 0, i8* %17, align 1, !dbg !406
  br label %if.end22, !dbg !407

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !408
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !409
  store i8* %call23, i8** %replace, align 8, !dbg !410
  %19 = load i8*, i8** %replace, align 8, !dbg !411
  %tobool24 = icmp ne i8* %19, null, !dbg !411
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !413

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !414
  store i8 0, i8* %20, align 1, !dbg !416
  br label %if.end26, !dbg !417

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !418

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !419
  %cmp27 = icmp ne i32 %21, -1, !dbg !421
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !422

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !423
  %call30 = call i32 @close(i32 %22), !dbg !425
  br label %if.end31, !dbg !426

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end86, !dbg !427

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult32, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service33, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i8** %replace34, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %connectSocket35, metadata !436, metadata !DIExpression()), !dbg !437
  store i32 -1, i32* %connectSocket35, align 4, !dbg !437
  call void @llvm.dbg.declare(metadata i64* %dataLen36, metadata !438, metadata !DIExpression()), !dbg !439
  %23 = load i8*, i8** %data, align 8, !dbg !440
  %call37 = call i64 @strlen(i8* %23) #7, !dbg !441
  store i64 %call37, i64* %dataLen36, align 8, !dbg !439
  br label %do.body38, !dbg !442

do.body38:                                        ; preds = %if.else
  %call39 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !443
  store i32 %call39, i32* %connectSocket35, align 4, !dbg !445
  %24 = load i32, i32* %connectSocket35, align 4, !dbg !446
  %cmp40 = icmp eq i32 %24, -1, !dbg !448
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !449

if.then42:                                        ; preds = %do.body38
  br label %do.end80, !dbg !450

if.end43:                                         ; preds = %do.body38
  %25 = bitcast %struct.sockaddr_in* %service33 to i8*, !dbg !452
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false), !dbg !452
  %sin_family44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 0, !dbg !453
  store i16 2, i16* %sin_family44, align 4, !dbg !454
  %call45 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !455
  %sin_addr46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 2, !dbg !456
  %s_addr47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr46, i32 0, i32 0, !dbg !457
  store i32 %call45, i32* %s_addr47, align 4, !dbg !458
  %call48 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !459
  %sin_port49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 1, !dbg !460
  store i16 %call48, i16* %sin_port49, align 2, !dbg !461
  %26 = load i32, i32* %connectSocket35, align 4, !dbg !462
  %27 = bitcast %struct.sockaddr_in* %service33 to %struct.sockaddr*, !dbg !464
  %call50 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16), !dbg !465
  %cmp51 = icmp eq i32 %call50, -1, !dbg !466
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !467

if.then53:                                        ; preds = %if.end43
  br label %do.end80, !dbg !468

if.end54:                                         ; preds = %if.end43
  %28 = load i32, i32* %connectSocket35, align 4, !dbg !470
  %29 = load i8*, i8** %data, align 8, !dbg !471
  %30 = load i64, i64* %dataLen36, align 8, !dbg !472
  %add.ptr55 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !473
  %31 = load i64, i64* %dataLen36, align 8, !dbg !474
  %sub56 = sub i64 100, %31, !dbg !475
  %sub57 = sub i64 %sub56, 1, !dbg !476
  %mul58 = mul i64 1, %sub57, !dbg !477
  %call59 = call i64 @recv(i32 %28, i8* %add.ptr55, i64 %mul58, i32 0), !dbg !478
  %conv60 = trunc i64 %call59 to i32, !dbg !478
  store i32 %conv60, i32* %recvResult32, align 4, !dbg !479
  %32 = load i32, i32* %recvResult32, align 4, !dbg !480
  %cmp61 = icmp eq i32 %32, -1, !dbg !482
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63, !dbg !483

lor.lhs.false63:                                  ; preds = %if.end54
  %33 = load i32, i32* %recvResult32, align 4, !dbg !484
  %cmp64 = icmp eq i32 %33, 0, !dbg !485
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !486

if.then66:                                        ; preds = %lor.lhs.false63, %if.end54
  br label %do.end80, !dbg !487

if.end67:                                         ; preds = %lor.lhs.false63
  %34 = load i8*, i8** %data, align 8, !dbg !489
  %35 = load i64, i64* %dataLen36, align 8, !dbg !490
  %36 = load i32, i32* %recvResult32, align 4, !dbg !491
  %conv68 = sext i32 %36 to i64, !dbg !491
  %div69 = udiv i64 %conv68, 1, !dbg !492
  %add70 = add i64 %35, %div69, !dbg !493
  %arrayidx71 = getelementptr inbounds i8, i8* %34, i64 %add70, !dbg !489
  store i8 0, i8* %arrayidx71, align 1, !dbg !494
  %37 = load i8*, i8** %data, align 8, !dbg !495
  %call72 = call i8* @strchr(i8* %37, i32 13) #7, !dbg !496
  store i8* %call72, i8** %replace34, align 8, !dbg !497
  %38 = load i8*, i8** %replace34, align 8, !dbg !498
  %tobool73 = icmp ne i8* %38, null, !dbg !498
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !500

if.then74:                                        ; preds = %if.end67
  %39 = load i8*, i8** %replace34, align 8, !dbg !501
  store i8 0, i8* %39, align 1, !dbg !503
  br label %if.end75, !dbg !504

if.end75:                                         ; preds = %if.then74, %if.end67
  %40 = load i8*, i8** %data, align 8, !dbg !505
  %call76 = call i8* @strchr(i8* %40, i32 10) #7, !dbg !506
  store i8* %call76, i8** %replace34, align 8, !dbg !507
  %41 = load i8*, i8** %replace34, align 8, !dbg !508
  %tobool77 = icmp ne i8* %41, null, !dbg !508
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !510

if.then78:                                        ; preds = %if.end75
  %42 = load i8*, i8** %replace34, align 8, !dbg !511
  store i8 0, i8* %42, align 1, !dbg !513
  br label %if.end79, !dbg !514

if.end79:                                         ; preds = %if.then78, %if.end75
  br label %do.end80, !dbg !515

do.end80:                                         ; preds = %if.end79, %if.then66, %if.then53, %if.then42
  %43 = load i32, i32* %connectSocket35, align 4, !dbg !516
  %cmp81 = icmp ne i32 %43, -1, !dbg !518
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !519

if.then83:                                        ; preds = %do.end80
  %44 = load i32, i32* %connectSocket35, align 4, !dbg !520
  %call84 = call i32 @close(i32 %44), !dbg !522
  br label %if.end85, !dbg !523

if.end85:                                         ; preds = %if.then83, %do.end80
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end31
  %call87 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !524
  %tobool88 = icmp ne i32 %call87, 0, !dbg !524
  br i1 %tobool88, label %if.then89, label %if.else102, !dbg !526

if.then89:                                        ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !527, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i32* %n, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !533, metadata !DIExpression()), !dbg !534
  %45 = load i8*, i8** %data, align 8, !dbg !535
  %call90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !537
  %cmp91 = icmp eq i32 %call90, 1, !dbg !538
  br i1 %cmp91, label %if.then93, label %if.end101, !dbg !539

if.then93:                                        ; preds = %if.then89
  %46 = load i32, i32* %n, align 4, !dbg !540
  %cmp94 = icmp slt i32 %46, 10000, !dbg !543
  br i1 %cmp94, label %if.then96, label %if.end100, !dbg !544

if.then96:                                        ; preds = %if.then93
  store i32 0, i32* %intVariable, align 4, !dbg !545
  store i32 0, i32* %i, align 4, !dbg !547
  br label %for.cond, !dbg !549

for.cond:                                         ; preds = %for.inc, %if.then96
  %47 = load i32, i32* %i, align 4, !dbg !550
  %48 = load i32, i32* %n, align 4, !dbg !552
  %cmp97 = icmp slt i32 %47, %48, !dbg !553
  br i1 %cmp97, label %for.body, label %for.end, !dbg !554

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %intVariable, align 4, !dbg !555
  %inc = add nsw i32 %49, 1, !dbg !555
  store i32 %inc, i32* %intVariable, align 4, !dbg !555
  br label %for.inc, !dbg !557

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4, !dbg !558
  %inc99 = add nsw i32 %50, 1, !dbg !558
  store i32 %inc99, i32* %i, align 4, !dbg !558
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %intVariable, align 4, !dbg !562
  call void @printIntLine(i32 %51), !dbg !563
  br label %if.end100, !dbg !564

if.end100:                                        ; preds = %for.end, %if.then93
  br label %if.end101, !dbg !565

if.end101:                                        ; preds = %if.end100, %if.then89
  br label %if.end123, !dbg !566

if.else102:                                       ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %i103, metadata !567, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %n104, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %intVariable105, metadata !573, metadata !DIExpression()), !dbg !574
  %52 = load i8*, i8** %data, align 8, !dbg !575
  %call106 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n104) #8, !dbg !577
  %cmp107 = icmp eq i32 %call106, 1, !dbg !578
  br i1 %cmp107, label %if.then109, label %if.end122, !dbg !579

if.then109:                                       ; preds = %if.else102
  %53 = load i32, i32* %n104, align 4, !dbg !580
  %cmp110 = icmp slt i32 %53, 10000, !dbg !583
  br i1 %cmp110, label %if.then112, label %if.end121, !dbg !584

if.then112:                                       ; preds = %if.then109
  store i32 0, i32* %intVariable105, align 4, !dbg !585
  store i32 0, i32* %i103, align 4, !dbg !587
  br label %for.cond113, !dbg !589

for.cond113:                                      ; preds = %for.inc118, %if.then112
  %54 = load i32, i32* %i103, align 4, !dbg !590
  %55 = load i32, i32* %n104, align 4, !dbg !592
  %cmp114 = icmp slt i32 %54, %55, !dbg !593
  br i1 %cmp114, label %for.body116, label %for.end120, !dbg !594

for.body116:                                      ; preds = %for.cond113
  %56 = load i32, i32* %intVariable105, align 4, !dbg !595
  %inc117 = add nsw i32 %56, 1, !dbg !595
  store i32 %inc117, i32* %intVariable105, align 4, !dbg !595
  br label %for.inc118, !dbg !597

for.inc118:                                       ; preds = %for.body116
  %57 = load i32, i32* %i103, align 4, !dbg !598
  %inc119 = add nsw i32 %57, 1, !dbg !598
  store i32 %inc119, i32* %i103, align 4, !dbg !598
  br label %for.cond113, !dbg !599, !llvm.loop !600

for.end120:                                       ; preds = %for.cond113
  %58 = load i32, i32* %intVariable105, align 4, !dbg !602
  call void @printIntLine(i32 %58), !dbg !603
  br label %if.end121, !dbg !604

if.end121:                                        ; preds = %for.end120, %if.then109
  br label %if.end122, !dbg !605

if.end122:                                        ; preds = %if.end121, %if.else102
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end101
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !607 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !610, metadata !DIExpression()), !dbg !611
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !611
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !611
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !612
  store i8* %arraydecay, i8** %data, align 8, !dbg !613
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !614
  %tobool = icmp ne i32 %call, 0, !dbg !614
  br i1 %tobool, label %if.then, label %if.else, !dbg !616

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !617
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !619
  br label %if.end, !dbg !620

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !621
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !623
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !624
  %tobool4 = icmp ne i32 %call3, 0, !dbg !624
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !626

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !627, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata i32* %n, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !633, metadata !DIExpression()), !dbg !634
  %3 = load i8*, i8** %data, align 8, !dbg !635
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !637
  %cmp = icmp eq i32 %call6, 1, !dbg !638
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !639

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !640
  store i32 0, i32* %i, align 4, !dbg !642
  br label %for.cond, !dbg !644

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !645
  %5 = load i32, i32* %n, align 4, !dbg !647
  %cmp8 = icmp slt i32 %4, %5, !dbg !648
  br i1 %cmp8, label %for.body, label %for.end, !dbg !649

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !650
  %inc = add nsw i32 %6, 1, !dbg !650
  store i32 %inc, i32* %intVariable, align 4, !dbg !650
  br label %for.inc, !dbg !652

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !653
  %inc9 = add nsw i32 %7, 1, !dbg !653
  store i32 %inc9, i32* %i, align 4, !dbg !653
  br label %for.cond, !dbg !654, !llvm.loop !655

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !657
  call void @printIntLine(i32 %8), !dbg !658
  br label %if.end10, !dbg !659

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !660

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !661, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !667, metadata !DIExpression()), !dbg !668
  %9 = load i8*, i8** %data, align 8, !dbg !669
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #8, !dbg !671
  %cmp16 = icmp eq i32 %call15, 1, !dbg !672
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !673

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !674
  store i32 0, i32* %i12, align 4, !dbg !676
  br label %for.cond18, !dbg !678

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !679
  %11 = load i32, i32* %n13, align 4, !dbg !681
  %cmp19 = icmp slt i32 %10, %11, !dbg !682
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !683

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !684
  %inc21 = add nsw i32 %12, 1, !dbg !684
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !684
  br label %for.inc22, !dbg !686

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !687
  %inc23 = add nsw i32 %13, 1, !dbg !687
  store i32 %inc23, i32* %i12, align 4, !dbg !687
  br label %for.cond18, !dbg !688, !llvm.loop !689

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !691
  call void @printIntLine(i32 %14), !dbg !692
  br label %if.end25, !dbg !693

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good() #0 !dbg !695 {
entry:
  call void @goodB2G(), !dbg !696
  call void @goodG2B(), !dbg !697
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !699 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !702, metadata !DIExpression()), !dbg !703
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !704
  %0 = load i8*, i8** %line.addr, align 8, !dbg !705
  %cmp = icmp ne i8* %0, null, !dbg !707
  br i1 %cmp, label %if.then, label %if.end, !dbg !708

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !709
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !711
  br label %if.end, !dbg !712

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !713
  ret void, !dbg !714
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !715 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !716, metadata !DIExpression()), !dbg !717
  %0 = load i8*, i8** %line.addr, align 8, !dbg !718
  %cmp = icmp ne i8* %0, null, !dbg !720
  br i1 %cmp, label %if.then, label %if.end, !dbg !721

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !722
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !724
  br label %if.end, !dbg !725

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !727 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load i32*, i32** %line.addr, align 8, !dbg !734
  %cmp = icmp ne i32* %0, null, !dbg !736
  br i1 %cmp, label %if.then, label %if.end, !dbg !737

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !738
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !740
  br label %if.end, !dbg !741

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !742
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !743 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !746, metadata !DIExpression()), !dbg !747
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !748
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !749
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !751 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !757
  %conv = sext i16 %0 to i32, !dbg !757
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !758
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !760 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !764, metadata !DIExpression()), !dbg !765
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !766
  %conv = fpext float %0 to double, !dbg !766
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !767
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !769 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !773, metadata !DIExpression()), !dbg !774
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !775
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !778 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !786
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !787
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !789 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !792, metadata !DIExpression()), !dbg !793
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !794
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !795
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !797 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !800, metadata !DIExpression()), !dbg !801
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !802
  %conv = sext i8 %0 to i32, !dbg !802
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !803
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !805 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !810, metadata !DIExpression()), !dbg !814
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !815
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !816
  store i32 %0, i32* %arrayidx, align 4, !dbg !817
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !818
  store i32 0, i32* %arrayidx1, align 4, !dbg !819
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !820
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !821
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !823 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !826, metadata !DIExpression()), !dbg !827
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !828
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !829
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !831 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !834, metadata !DIExpression()), !dbg !835
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !836
  %conv = zext i8 %0 to i32, !dbg !836
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !837
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !839 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !843, metadata !DIExpression()), !dbg !844
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !845
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !846
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !848 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !858, metadata !DIExpression()), !dbg !859
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !860
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !861
  %1 = load i32, i32* %intOne, align 4, !dbg !861
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !862
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !863
  %3 = load i32, i32* %intTwo, align 4, !dbg !863
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !864
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !866 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata i64* %i, metadata !874, metadata !DIExpression()), !dbg !875
  store i64 0, i64* %i, align 8, !dbg !876
  br label %for.cond, !dbg !878

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !879
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !881
  %cmp = icmp ult i64 %0, %1, !dbg !882
  br i1 %cmp, label %for.body, label %for.end, !dbg !883

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !884
  %3 = load i64, i64* %i, align 8, !dbg !886
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !884
  %4 = load i8, i8* %arrayidx, align 1, !dbg !884
  %conv = zext i8 %4 to i32, !dbg !884
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !887
  br label %for.inc, !dbg !888

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !889
  %inc = add i64 %5, 1, !dbg !889
  store i64 %inc, i64* %i, align 8, !dbg !889
  br label %for.cond, !dbg !890, !llvm.loop !891

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !893
  ret void, !dbg !894
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !895 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !898, metadata !DIExpression()), !dbg !899
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !900, metadata !DIExpression()), !dbg !901
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !902, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !904, metadata !DIExpression()), !dbg !905
  store i64 0, i64* %numWritten, align 8, !dbg !905
  br label %while.cond, !dbg !906

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !907
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !908
  %cmp = icmp ult i64 %0, %1, !dbg !909
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !910

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !911
  %2 = load i16*, i16** %call, align 8, !dbg !911
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !911
  %4 = load i64, i64* %numWritten, align 8, !dbg !911
  %mul = mul i64 2, %4, !dbg !911
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !911
  %5 = load i8, i8* %arrayidx, align 1, !dbg !911
  %conv = sext i8 %5 to i32, !dbg !911
  %idxprom = sext i32 %conv to i64, !dbg !911
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !911
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !911
  %conv2 = zext i16 %6 to i32, !dbg !911
  %and = and i32 %conv2, 4096, !dbg !911
  %tobool = icmp ne i32 %and, 0, !dbg !911
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !912

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !913
  %7 = load i16*, i16** %call3, align 8, !dbg !913
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !913
  %9 = load i64, i64* %numWritten, align 8, !dbg !913
  %mul4 = mul i64 2, %9, !dbg !913
  %add = add i64 %mul4, 1, !dbg !913
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !913
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !913
  %conv6 = sext i8 %10 to i32, !dbg !913
  %idxprom7 = sext i32 %conv6 to i64, !dbg !913
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !913
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !913
  %conv9 = zext i16 %11 to i32, !dbg !913
  %and10 = and i32 %conv9, 4096, !dbg !913
  %tobool11 = icmp ne i32 %and10, 0, !dbg !912
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !914
  br i1 %12, label %while.body, label %while.end, !dbg !906

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !915, metadata !DIExpression()), !dbg !917
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !918
  %14 = load i64, i64* %numWritten, align 8, !dbg !919
  %mul12 = mul i64 2, %14, !dbg !920
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !918
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !921
  %15 = load i32, i32* %byte, align 4, !dbg !922
  %conv15 = trunc i32 %15 to i8, !dbg !923
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !924
  %17 = load i64, i64* %numWritten, align 8, !dbg !925
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !924
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !926
  %18 = load i64, i64* %numWritten, align 8, !dbg !927
  %inc = add i64 %18, 1, !dbg !927
  store i64 %inc, i64* %numWritten, align 8, !dbg !927
  br label %while.cond, !dbg !906, !llvm.loop !928

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !930
  ret i64 %19, !dbg !931
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !932 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !935, metadata !DIExpression()), !dbg !936
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !937, metadata !DIExpression()), !dbg !938
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !941, metadata !DIExpression()), !dbg !942
  store i64 0, i64* %numWritten, align 8, !dbg !942
  br label %while.cond, !dbg !943

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !944
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !945
  %cmp = icmp ult i64 %0, %1, !dbg !946
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !947

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !948
  %3 = load i64, i64* %numWritten, align 8, !dbg !949
  %mul = mul i64 2, %3, !dbg !950
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !948
  %4 = load i32, i32* %arrayidx, align 4, !dbg !948
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !951
  %tobool = icmp ne i32 %call, 0, !dbg !951
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !952

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !953
  %6 = load i64, i64* %numWritten, align 8, !dbg !954
  %mul1 = mul i64 2, %6, !dbg !955
  %add = add i64 %mul1, 1, !dbg !956
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !953
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !953
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !957
  %tobool4 = icmp ne i32 %call3, 0, !dbg !952
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !958
  br i1 %8, label %while.body, label %while.end, !dbg !943

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !959, metadata !DIExpression()), !dbg !961
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !962
  %10 = load i64, i64* %numWritten, align 8, !dbg !963
  %mul5 = mul i64 2, %10, !dbg !964
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !962
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !965
  %11 = load i32, i32* %byte, align 4, !dbg !966
  %conv = trunc i32 %11 to i8, !dbg !967
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !968
  %13 = load i64, i64* %numWritten, align 8, !dbg !969
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !968
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !970
  %14 = load i64, i64* %numWritten, align 8, !dbg !971
  %inc = add i64 %14, 1, !dbg !971
  store i64 %inc, i64* %numWritten, align 8, !dbg !971
  br label %while.cond, !dbg !943, !llvm.loop !972

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !974
  ret i64 %15, !dbg !975
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !976 {
entry:
  ret i32 1, !dbg !979
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !980 {
entry:
  ret i32 0, !dbg !981
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !982 {
entry:
  %call = call i32 @rand() #8, !dbg !983
  %rem = srem i32 %call, 2, !dbg !984
  ret i32 %rem, !dbg !985
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !986 {
entry:
  ret void, !dbg !987
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !988 {
entry:
  ret void, !dbg !989
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !990 {
entry:
  ret void, !dbg !991
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !992 {
entry:
  ret void, !dbg !993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !994 {
entry:
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !996 {
entry:
  ret void, !dbg !997
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !998 {
entry:
  ret void, !dbg !999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !1000 {
entry:
  ret void, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !1002 {
entry:
  ret void, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !1004 {
entry:
  ret void, !dbg !1005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !1006 {
entry:
  ret void, !dbg !1007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !1008 {
entry:
  ret void, !dbg !1009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !1010 {
entry:
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !1012 {
entry:
  ret void, !dbg !1013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !1014 {
entry:
  ret void, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !1016 {
entry:
  ret void, !dbg !1017
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !1018 {
entry:
  ret void, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !1020 {
entry:
  ret void, !dbg !1021
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/source_code")
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
!104 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!240 = !DILocation(line: 128, column: 16, scope: !241)
!241 = distinct !DILexicalBlock(scope: !118, file: !45, line: 126, column: 5)
!242 = !DILocation(line: 128, column: 9, scope: !241)
!243 = !DILocation(line: 130, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !104, file: !45, line: 130, column: 8)
!245 = !DILocation(line: 130, column: 8, scope: !104)
!246 = !DILocalVariable(name: "i", scope: !247, file: !45, line: 133, type: !23)
!247 = distinct !DILexicalBlock(scope: !248, file: !45, line: 132, column: 9)
!248 = distinct !DILexicalBlock(scope: !244, file: !45, line: 131, column: 5)
!249 = !DILocation(line: 133, column: 17, scope: !247)
!250 = !DILocalVariable(name: "n", scope: !247, file: !45, line: 133, type: !23)
!251 = !DILocation(line: 133, column: 20, scope: !247)
!252 = !DILocalVariable(name: "intVariable", scope: !247, file: !45, line: 133, type: !23)
!253 = !DILocation(line: 133, column: 23, scope: !247)
!254 = !DILocation(line: 134, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !45, line: 134, column: 17)
!256 = !DILocation(line: 134, column: 17, scope: !255)
!257 = !DILocation(line: 134, column: 40, scope: !255)
!258 = !DILocation(line: 134, column: 17, scope: !247)
!259 = !DILocation(line: 137, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !45, line: 135, column: 13)
!261 = !DILocation(line: 138, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !260, file: !45, line: 138, column: 17)
!263 = !DILocation(line: 138, column: 22, scope: !262)
!264 = !DILocation(line: 138, column: 29, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 138, column: 17)
!266 = !DILocation(line: 138, column: 33, scope: !265)
!267 = !DILocation(line: 138, column: 31, scope: !265)
!268 = !DILocation(line: 138, column: 17, scope: !262)
!269 = !DILocation(line: 141, column: 32, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !45, line: 139, column: 17)
!271 = !DILocation(line: 142, column: 17, scope: !270)
!272 = !DILocation(line: 138, column: 37, scope: !265)
!273 = !DILocation(line: 138, column: 17, scope: !265)
!274 = distinct !{!274, !268, !275, !276}
!275 = !DILocation(line: 142, column: 17, scope: !262)
!276 = !{!"llvm.loop.mustprogress"}
!277 = !DILocation(line: 143, column: 30, scope: !260)
!278 = !DILocation(line: 143, column: 17, scope: !260)
!279 = !DILocation(line: 144, column: 13, scope: !260)
!280 = !DILocation(line: 146, column: 5, scope: !248)
!281 = !DILocalVariable(name: "i", scope: !282, file: !45, line: 150, type: !23)
!282 = distinct !DILexicalBlock(scope: !283, file: !45, line: 149, column: 9)
!283 = distinct !DILexicalBlock(scope: !244, file: !45, line: 148, column: 5)
!284 = !DILocation(line: 150, column: 17, scope: !282)
!285 = !DILocalVariable(name: "n", scope: !282, file: !45, line: 150, type: !23)
!286 = !DILocation(line: 150, column: 20, scope: !282)
!287 = !DILocalVariable(name: "intVariable", scope: !282, file: !45, line: 150, type: !23)
!288 = !DILocation(line: 150, column: 23, scope: !282)
!289 = !DILocation(line: 151, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !282, file: !45, line: 151, column: 17)
!291 = !DILocation(line: 151, column: 17, scope: !290)
!292 = !DILocation(line: 151, column: 40, scope: !290)
!293 = !DILocation(line: 151, column: 17, scope: !282)
!294 = !DILocation(line: 154, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !45, line: 154, column: 21)
!296 = distinct !DILexicalBlock(scope: !290, file: !45, line: 152, column: 13)
!297 = !DILocation(line: 154, column: 23, scope: !295)
!298 = !DILocation(line: 154, column: 21, scope: !296)
!299 = !DILocation(line: 156, column: 33, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !45, line: 155, column: 17)
!301 = !DILocation(line: 157, column: 28, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !45, line: 157, column: 21)
!303 = !DILocation(line: 157, column: 26, scope: !302)
!304 = !DILocation(line: 157, column: 33, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !45, line: 157, column: 21)
!306 = !DILocation(line: 157, column: 37, scope: !305)
!307 = !DILocation(line: 157, column: 35, scope: !305)
!308 = !DILocation(line: 157, column: 21, scope: !302)
!309 = !DILocation(line: 160, column: 36, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !45, line: 158, column: 21)
!311 = !DILocation(line: 161, column: 21, scope: !310)
!312 = !DILocation(line: 157, column: 41, scope: !305)
!313 = !DILocation(line: 157, column: 21, scope: !305)
!314 = distinct !{!314, !308, !315, !276}
!315 = !DILocation(line: 161, column: 21, scope: !302)
!316 = !DILocation(line: 162, column: 34, scope: !300)
!317 = !DILocation(line: 162, column: 21, scope: !300)
!318 = !DILocation(line: 163, column: 17, scope: !300)
!319 = !DILocation(line: 164, column: 13, scope: !296)
!320 = !DILocation(line: 167, column: 1, scope: !104)
!321 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 176, type: !105, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!322 = !DILocalVariable(name: "data", scope: !321, file: !45, line: 178, type: !42)
!323 = !DILocation(line: 178, column: 12, scope: !321)
!324 = !DILocalVariable(name: "dataBuffer", scope: !321, file: !45, line: 179, type: !111)
!325 = !DILocation(line: 179, column: 10, scope: !321)
!326 = !DILocation(line: 180, column: 12, scope: !321)
!327 = !DILocation(line: 180, column: 10, scope: !321)
!328 = !DILocation(line: 181, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !321, file: !45, line: 181, column: 8)
!330 = !DILocation(line: 181, column: 8, scope: !321)
!331 = !DILocalVariable(name: "recvResult", scope: !332, file: !45, line: 188, type: !23)
!332 = distinct !DILexicalBlock(scope: !333, file: !45, line: 183, column: 9)
!333 = distinct !DILexicalBlock(scope: !329, file: !45, line: 182, column: 5)
!334 = !DILocation(line: 188, column: 17, scope: !332)
!335 = !DILocalVariable(name: "service", scope: !332, file: !45, line: 189, type: !125)
!336 = !DILocation(line: 189, column: 32, scope: !332)
!337 = !DILocalVariable(name: "replace", scope: !332, file: !45, line: 190, type: !42)
!338 = !DILocation(line: 190, column: 19, scope: !332)
!339 = !DILocalVariable(name: "connectSocket", scope: !332, file: !45, line: 191, type: !23)
!340 = !DILocation(line: 191, column: 20, scope: !332)
!341 = !DILocalVariable(name: "dataLen", scope: !332, file: !45, line: 192, type: !151)
!342 = !DILocation(line: 192, column: 20, scope: !332)
!343 = !DILocation(line: 192, column: 37, scope: !332)
!344 = !DILocation(line: 192, column: 30, scope: !332)
!345 = !DILocation(line: 193, column: 13, scope: !332)
!346 = !DILocation(line: 203, column: 33, scope: !347)
!347 = distinct !DILexicalBlock(scope: !332, file: !45, line: 194, column: 13)
!348 = !DILocation(line: 203, column: 31, scope: !347)
!349 = !DILocation(line: 204, column: 21, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !45, line: 204, column: 21)
!351 = !DILocation(line: 204, column: 35, scope: !350)
!352 = !DILocation(line: 204, column: 21, scope: !347)
!353 = !DILocation(line: 206, column: 21, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !45, line: 205, column: 17)
!355 = !DILocation(line: 208, column: 17, scope: !347)
!356 = !DILocation(line: 209, column: 25, scope: !347)
!357 = !DILocation(line: 209, column: 36, scope: !347)
!358 = !DILocation(line: 210, column: 43, scope: !347)
!359 = !DILocation(line: 210, column: 25, scope: !347)
!360 = !DILocation(line: 210, column: 34, scope: !347)
!361 = !DILocation(line: 210, column: 41, scope: !347)
!362 = !DILocation(line: 211, column: 36, scope: !347)
!363 = !DILocation(line: 211, column: 25, scope: !347)
!364 = !DILocation(line: 211, column: 34, scope: !347)
!365 = !DILocation(line: 212, column: 29, scope: !366)
!366 = distinct !DILexicalBlock(scope: !347, file: !45, line: 212, column: 21)
!367 = !DILocation(line: 212, column: 44, scope: !366)
!368 = !DILocation(line: 212, column: 21, scope: !366)
!369 = !DILocation(line: 212, column: 89, scope: !366)
!370 = !DILocation(line: 212, column: 21, scope: !347)
!371 = !DILocation(line: 214, column: 21, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !45, line: 213, column: 17)
!373 = !DILocation(line: 219, column: 35, scope: !347)
!374 = !DILocation(line: 219, column: 59, scope: !347)
!375 = !DILocation(line: 219, column: 66, scope: !347)
!376 = !DILocation(line: 219, column: 64, scope: !347)
!377 = !DILocation(line: 219, column: 98, scope: !347)
!378 = !DILocation(line: 219, column: 96, scope: !347)
!379 = !DILocation(line: 219, column: 106, scope: !347)
!380 = !DILocation(line: 219, column: 89, scope: !347)
!381 = !DILocation(line: 219, column: 30, scope: !347)
!382 = !DILocation(line: 219, column: 28, scope: !347)
!383 = !DILocation(line: 220, column: 21, scope: !384)
!384 = distinct !DILexicalBlock(scope: !347, file: !45, line: 220, column: 21)
!385 = !DILocation(line: 220, column: 32, scope: !384)
!386 = !DILocation(line: 220, column: 48, scope: !384)
!387 = !DILocation(line: 220, column: 51, scope: !384)
!388 = !DILocation(line: 220, column: 62, scope: !384)
!389 = !DILocation(line: 220, column: 21, scope: !347)
!390 = !DILocation(line: 222, column: 21, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !45, line: 221, column: 17)
!392 = !DILocation(line: 225, column: 17, scope: !347)
!393 = !DILocation(line: 225, column: 22, scope: !347)
!394 = !DILocation(line: 225, column: 32, scope: !347)
!395 = !DILocation(line: 225, column: 43, scope: !347)
!396 = !DILocation(line: 225, column: 30, scope: !347)
!397 = !DILocation(line: 225, column: 59, scope: !347)
!398 = !DILocation(line: 227, column: 34, scope: !347)
!399 = !DILocation(line: 227, column: 27, scope: !347)
!400 = !DILocation(line: 227, column: 25, scope: !347)
!401 = !DILocation(line: 228, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !347, file: !45, line: 228, column: 21)
!403 = !DILocation(line: 228, column: 21, scope: !347)
!404 = !DILocation(line: 230, column: 22, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !45, line: 229, column: 17)
!406 = !DILocation(line: 230, column: 30, scope: !405)
!407 = !DILocation(line: 231, column: 17, scope: !405)
!408 = !DILocation(line: 232, column: 34, scope: !347)
!409 = !DILocation(line: 232, column: 27, scope: !347)
!410 = !DILocation(line: 232, column: 25, scope: !347)
!411 = !DILocation(line: 233, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !347, file: !45, line: 233, column: 21)
!413 = !DILocation(line: 233, column: 21, scope: !347)
!414 = !DILocation(line: 235, column: 22, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !45, line: 234, column: 17)
!416 = !DILocation(line: 235, column: 30, scope: !415)
!417 = !DILocation(line: 236, column: 17, scope: !415)
!418 = !DILocation(line: 237, column: 13, scope: !347)
!419 = !DILocation(line: 239, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !332, file: !45, line: 239, column: 17)
!421 = !DILocation(line: 239, column: 31, scope: !420)
!422 = !DILocation(line: 239, column: 17, scope: !332)
!423 = !DILocation(line: 241, column: 30, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !45, line: 240, column: 13)
!425 = !DILocation(line: 241, column: 17, scope: !424)
!426 = !DILocation(line: 242, column: 13, scope: !424)
!427 = !DILocation(line: 250, column: 5, scope: !333)
!428 = !DILocalVariable(name: "recvResult", scope: !429, file: !45, line: 258, type: !23)
!429 = distinct !DILexicalBlock(scope: !430, file: !45, line: 253, column: 9)
!430 = distinct !DILexicalBlock(scope: !329, file: !45, line: 252, column: 5)
!431 = !DILocation(line: 258, column: 17, scope: !429)
!432 = !DILocalVariable(name: "service", scope: !429, file: !45, line: 259, type: !125)
!433 = !DILocation(line: 259, column: 32, scope: !429)
!434 = !DILocalVariable(name: "replace", scope: !429, file: !45, line: 260, type: !42)
!435 = !DILocation(line: 260, column: 19, scope: !429)
!436 = !DILocalVariable(name: "connectSocket", scope: !429, file: !45, line: 261, type: !23)
!437 = !DILocation(line: 261, column: 20, scope: !429)
!438 = !DILocalVariable(name: "dataLen", scope: !429, file: !45, line: 262, type: !151)
!439 = !DILocation(line: 262, column: 20, scope: !429)
!440 = !DILocation(line: 262, column: 37, scope: !429)
!441 = !DILocation(line: 262, column: 30, scope: !429)
!442 = !DILocation(line: 263, column: 13, scope: !429)
!443 = !DILocation(line: 273, column: 33, scope: !444)
!444 = distinct !DILexicalBlock(scope: !429, file: !45, line: 264, column: 13)
!445 = !DILocation(line: 273, column: 31, scope: !444)
!446 = !DILocation(line: 274, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !45, line: 274, column: 21)
!448 = !DILocation(line: 274, column: 35, scope: !447)
!449 = !DILocation(line: 274, column: 21, scope: !444)
!450 = !DILocation(line: 276, column: 21, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !45, line: 275, column: 17)
!452 = !DILocation(line: 278, column: 17, scope: !444)
!453 = !DILocation(line: 279, column: 25, scope: !444)
!454 = !DILocation(line: 279, column: 36, scope: !444)
!455 = !DILocation(line: 280, column: 43, scope: !444)
!456 = !DILocation(line: 280, column: 25, scope: !444)
!457 = !DILocation(line: 280, column: 34, scope: !444)
!458 = !DILocation(line: 280, column: 41, scope: !444)
!459 = !DILocation(line: 281, column: 36, scope: !444)
!460 = !DILocation(line: 281, column: 25, scope: !444)
!461 = !DILocation(line: 281, column: 34, scope: !444)
!462 = !DILocation(line: 282, column: 29, scope: !463)
!463 = distinct !DILexicalBlock(scope: !444, file: !45, line: 282, column: 21)
!464 = !DILocation(line: 282, column: 44, scope: !463)
!465 = !DILocation(line: 282, column: 21, scope: !463)
!466 = !DILocation(line: 282, column: 89, scope: !463)
!467 = !DILocation(line: 282, column: 21, scope: !444)
!468 = !DILocation(line: 284, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !45, line: 283, column: 17)
!470 = !DILocation(line: 289, column: 35, scope: !444)
!471 = !DILocation(line: 289, column: 59, scope: !444)
!472 = !DILocation(line: 289, column: 66, scope: !444)
!473 = !DILocation(line: 289, column: 64, scope: !444)
!474 = !DILocation(line: 289, column: 98, scope: !444)
!475 = !DILocation(line: 289, column: 96, scope: !444)
!476 = !DILocation(line: 289, column: 106, scope: !444)
!477 = !DILocation(line: 289, column: 89, scope: !444)
!478 = !DILocation(line: 289, column: 30, scope: !444)
!479 = !DILocation(line: 289, column: 28, scope: !444)
!480 = !DILocation(line: 290, column: 21, scope: !481)
!481 = distinct !DILexicalBlock(scope: !444, file: !45, line: 290, column: 21)
!482 = !DILocation(line: 290, column: 32, scope: !481)
!483 = !DILocation(line: 290, column: 48, scope: !481)
!484 = !DILocation(line: 290, column: 51, scope: !481)
!485 = !DILocation(line: 290, column: 62, scope: !481)
!486 = !DILocation(line: 290, column: 21, scope: !444)
!487 = !DILocation(line: 292, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !45, line: 291, column: 17)
!489 = !DILocation(line: 295, column: 17, scope: !444)
!490 = !DILocation(line: 295, column: 22, scope: !444)
!491 = !DILocation(line: 295, column: 32, scope: !444)
!492 = !DILocation(line: 295, column: 43, scope: !444)
!493 = !DILocation(line: 295, column: 30, scope: !444)
!494 = !DILocation(line: 295, column: 59, scope: !444)
!495 = !DILocation(line: 297, column: 34, scope: !444)
!496 = !DILocation(line: 297, column: 27, scope: !444)
!497 = !DILocation(line: 297, column: 25, scope: !444)
!498 = !DILocation(line: 298, column: 21, scope: !499)
!499 = distinct !DILexicalBlock(scope: !444, file: !45, line: 298, column: 21)
!500 = !DILocation(line: 298, column: 21, scope: !444)
!501 = !DILocation(line: 300, column: 22, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !45, line: 299, column: 17)
!503 = !DILocation(line: 300, column: 30, scope: !502)
!504 = !DILocation(line: 301, column: 17, scope: !502)
!505 = !DILocation(line: 302, column: 34, scope: !444)
!506 = !DILocation(line: 302, column: 27, scope: !444)
!507 = !DILocation(line: 302, column: 25, scope: !444)
!508 = !DILocation(line: 303, column: 21, scope: !509)
!509 = distinct !DILexicalBlock(scope: !444, file: !45, line: 303, column: 21)
!510 = !DILocation(line: 303, column: 21, scope: !444)
!511 = !DILocation(line: 305, column: 22, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !45, line: 304, column: 17)
!513 = !DILocation(line: 305, column: 30, scope: !512)
!514 = !DILocation(line: 306, column: 17, scope: !512)
!515 = !DILocation(line: 307, column: 13, scope: !444)
!516 = !DILocation(line: 309, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !429, file: !45, line: 309, column: 17)
!518 = !DILocation(line: 309, column: 31, scope: !517)
!519 = !DILocation(line: 309, column: 17, scope: !429)
!520 = !DILocation(line: 311, column: 30, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !45, line: 310, column: 13)
!522 = !DILocation(line: 311, column: 17, scope: !521)
!523 = !DILocation(line: 312, column: 13, scope: !521)
!524 = !DILocation(line: 321, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !321, file: !45, line: 321, column: 8)
!526 = !DILocation(line: 321, column: 8, scope: !321)
!527 = !DILocalVariable(name: "i", scope: !528, file: !45, line: 324, type: !23)
!528 = distinct !DILexicalBlock(scope: !529, file: !45, line: 323, column: 9)
!529 = distinct !DILexicalBlock(scope: !525, file: !45, line: 322, column: 5)
!530 = !DILocation(line: 324, column: 17, scope: !528)
!531 = !DILocalVariable(name: "n", scope: !528, file: !45, line: 324, type: !23)
!532 = !DILocation(line: 324, column: 20, scope: !528)
!533 = !DILocalVariable(name: "intVariable", scope: !528, file: !45, line: 324, type: !23)
!534 = !DILocation(line: 324, column: 23, scope: !528)
!535 = !DILocation(line: 325, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !45, line: 325, column: 17)
!537 = !DILocation(line: 325, column: 17, scope: !536)
!538 = !DILocation(line: 325, column: 40, scope: !536)
!539 = !DILocation(line: 325, column: 17, scope: !528)
!540 = !DILocation(line: 328, column: 21, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !45, line: 328, column: 21)
!542 = distinct !DILexicalBlock(scope: !536, file: !45, line: 326, column: 13)
!543 = !DILocation(line: 328, column: 23, scope: !541)
!544 = !DILocation(line: 328, column: 21, scope: !542)
!545 = !DILocation(line: 330, column: 33, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !45, line: 329, column: 17)
!547 = !DILocation(line: 331, column: 28, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !45, line: 331, column: 21)
!549 = !DILocation(line: 331, column: 26, scope: !548)
!550 = !DILocation(line: 331, column: 33, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !45, line: 331, column: 21)
!552 = !DILocation(line: 331, column: 37, scope: !551)
!553 = !DILocation(line: 331, column: 35, scope: !551)
!554 = !DILocation(line: 331, column: 21, scope: !548)
!555 = !DILocation(line: 334, column: 36, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !45, line: 332, column: 21)
!557 = !DILocation(line: 335, column: 21, scope: !556)
!558 = !DILocation(line: 331, column: 41, scope: !551)
!559 = !DILocation(line: 331, column: 21, scope: !551)
!560 = distinct !{!560, !554, !561, !276}
!561 = !DILocation(line: 335, column: 21, scope: !548)
!562 = !DILocation(line: 336, column: 34, scope: !546)
!563 = !DILocation(line: 336, column: 21, scope: !546)
!564 = !DILocation(line: 337, column: 17, scope: !546)
!565 = !DILocation(line: 338, column: 13, scope: !542)
!566 = !DILocation(line: 340, column: 5, scope: !529)
!567 = !DILocalVariable(name: "i", scope: !568, file: !45, line: 344, type: !23)
!568 = distinct !DILexicalBlock(scope: !569, file: !45, line: 343, column: 9)
!569 = distinct !DILexicalBlock(scope: !525, file: !45, line: 342, column: 5)
!570 = !DILocation(line: 344, column: 17, scope: !568)
!571 = !DILocalVariable(name: "n", scope: !568, file: !45, line: 344, type: !23)
!572 = !DILocation(line: 344, column: 20, scope: !568)
!573 = !DILocalVariable(name: "intVariable", scope: !568, file: !45, line: 344, type: !23)
!574 = !DILocation(line: 344, column: 23, scope: !568)
!575 = !DILocation(line: 345, column: 24, scope: !576)
!576 = distinct !DILexicalBlock(scope: !568, file: !45, line: 345, column: 17)
!577 = !DILocation(line: 345, column: 17, scope: !576)
!578 = !DILocation(line: 345, column: 40, scope: !576)
!579 = !DILocation(line: 345, column: 17, scope: !568)
!580 = !DILocation(line: 348, column: 21, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !45, line: 348, column: 21)
!582 = distinct !DILexicalBlock(scope: !576, file: !45, line: 346, column: 13)
!583 = !DILocation(line: 348, column: 23, scope: !581)
!584 = !DILocation(line: 348, column: 21, scope: !582)
!585 = !DILocation(line: 350, column: 33, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !45, line: 349, column: 17)
!587 = !DILocation(line: 351, column: 28, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !45, line: 351, column: 21)
!589 = !DILocation(line: 351, column: 26, scope: !588)
!590 = !DILocation(line: 351, column: 33, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !45, line: 351, column: 21)
!592 = !DILocation(line: 351, column: 37, scope: !591)
!593 = !DILocation(line: 351, column: 35, scope: !591)
!594 = !DILocation(line: 351, column: 21, scope: !588)
!595 = !DILocation(line: 354, column: 36, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !45, line: 352, column: 21)
!597 = !DILocation(line: 355, column: 21, scope: !596)
!598 = !DILocation(line: 351, column: 41, scope: !591)
!599 = !DILocation(line: 351, column: 21, scope: !591)
!600 = distinct !{!600, !594, !601, !276}
!601 = !DILocation(line: 355, column: 21, scope: !588)
!602 = !DILocation(line: 356, column: 34, scope: !586)
!603 = !DILocation(line: 356, column: 21, scope: !586)
!604 = !DILocation(line: 357, column: 17, scope: !586)
!605 = !DILocation(line: 358, column: 13, scope: !582)
!606 = !DILocation(line: 361, column: 1, scope: !321)
!607 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 366, type: !105, scopeLine: 367, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!608 = !DILocalVariable(name: "data", scope: !607, file: !45, line: 368, type: !42)
!609 = !DILocation(line: 368, column: 12, scope: !607)
!610 = !DILocalVariable(name: "dataBuffer", scope: !607, file: !45, line: 369, type: !111)
!611 = !DILocation(line: 369, column: 10, scope: !607)
!612 = !DILocation(line: 370, column: 12, scope: !607)
!613 = !DILocation(line: 370, column: 10, scope: !607)
!614 = !DILocation(line: 371, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !45, line: 371, column: 8)
!616 = !DILocation(line: 371, column: 8, scope: !607)
!617 = !DILocation(line: 374, column: 16, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !45, line: 372, column: 5)
!619 = !DILocation(line: 374, column: 9, scope: !618)
!620 = !DILocation(line: 375, column: 5, scope: !618)
!621 = !DILocation(line: 379, column: 16, scope: !622)
!622 = distinct !DILexicalBlock(scope: !615, file: !45, line: 377, column: 5)
!623 = !DILocation(line: 379, column: 9, scope: !622)
!624 = !DILocation(line: 381, column: 8, scope: !625)
!625 = distinct !DILexicalBlock(scope: !607, file: !45, line: 381, column: 8)
!626 = !DILocation(line: 381, column: 8, scope: !607)
!627 = !DILocalVariable(name: "i", scope: !628, file: !45, line: 384, type: !23)
!628 = distinct !DILexicalBlock(scope: !629, file: !45, line: 383, column: 9)
!629 = distinct !DILexicalBlock(scope: !625, file: !45, line: 382, column: 5)
!630 = !DILocation(line: 384, column: 17, scope: !628)
!631 = !DILocalVariable(name: "n", scope: !628, file: !45, line: 384, type: !23)
!632 = !DILocation(line: 384, column: 20, scope: !628)
!633 = !DILocalVariable(name: "intVariable", scope: !628, file: !45, line: 384, type: !23)
!634 = !DILocation(line: 384, column: 23, scope: !628)
!635 = !DILocation(line: 385, column: 24, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !45, line: 385, column: 17)
!637 = !DILocation(line: 385, column: 17, scope: !636)
!638 = !DILocation(line: 385, column: 40, scope: !636)
!639 = !DILocation(line: 385, column: 17, scope: !628)
!640 = !DILocation(line: 388, column: 29, scope: !641)
!641 = distinct !DILexicalBlock(scope: !636, file: !45, line: 386, column: 13)
!642 = !DILocation(line: 389, column: 24, scope: !643)
!643 = distinct !DILexicalBlock(scope: !641, file: !45, line: 389, column: 17)
!644 = !DILocation(line: 389, column: 22, scope: !643)
!645 = !DILocation(line: 389, column: 29, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !45, line: 389, column: 17)
!647 = !DILocation(line: 389, column: 33, scope: !646)
!648 = !DILocation(line: 389, column: 31, scope: !646)
!649 = !DILocation(line: 389, column: 17, scope: !643)
!650 = !DILocation(line: 392, column: 32, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !45, line: 390, column: 17)
!652 = !DILocation(line: 393, column: 17, scope: !651)
!653 = !DILocation(line: 389, column: 37, scope: !646)
!654 = !DILocation(line: 389, column: 17, scope: !646)
!655 = distinct !{!655, !649, !656, !276}
!656 = !DILocation(line: 393, column: 17, scope: !643)
!657 = !DILocation(line: 394, column: 30, scope: !641)
!658 = !DILocation(line: 394, column: 17, scope: !641)
!659 = !DILocation(line: 395, column: 13, scope: !641)
!660 = !DILocation(line: 397, column: 5, scope: !629)
!661 = !DILocalVariable(name: "i", scope: !662, file: !45, line: 401, type: !23)
!662 = distinct !DILexicalBlock(scope: !663, file: !45, line: 400, column: 9)
!663 = distinct !DILexicalBlock(scope: !625, file: !45, line: 399, column: 5)
!664 = !DILocation(line: 401, column: 17, scope: !662)
!665 = !DILocalVariable(name: "n", scope: !662, file: !45, line: 401, type: !23)
!666 = !DILocation(line: 401, column: 20, scope: !662)
!667 = !DILocalVariable(name: "intVariable", scope: !662, file: !45, line: 401, type: !23)
!668 = !DILocation(line: 401, column: 23, scope: !662)
!669 = !DILocation(line: 402, column: 24, scope: !670)
!670 = distinct !DILexicalBlock(scope: !662, file: !45, line: 402, column: 17)
!671 = !DILocation(line: 402, column: 17, scope: !670)
!672 = !DILocation(line: 402, column: 40, scope: !670)
!673 = !DILocation(line: 402, column: 17, scope: !662)
!674 = !DILocation(line: 405, column: 29, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !45, line: 403, column: 13)
!676 = !DILocation(line: 406, column: 24, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !45, line: 406, column: 17)
!678 = !DILocation(line: 406, column: 22, scope: !677)
!679 = !DILocation(line: 406, column: 29, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !45, line: 406, column: 17)
!681 = !DILocation(line: 406, column: 33, scope: !680)
!682 = !DILocation(line: 406, column: 31, scope: !680)
!683 = !DILocation(line: 406, column: 17, scope: !677)
!684 = !DILocation(line: 409, column: 32, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !45, line: 407, column: 17)
!686 = !DILocation(line: 410, column: 17, scope: !685)
!687 = !DILocation(line: 406, column: 37, scope: !680)
!688 = !DILocation(line: 406, column: 17, scope: !680)
!689 = distinct !{!689, !683, !690, !276}
!690 = !DILocation(line: 410, column: 17, scope: !677)
!691 = !DILocation(line: 411, column: 30, scope: !675)
!692 = !DILocation(line: 411, column: 17, scope: !675)
!693 = !DILocation(line: 412, column: 13, scope: !675)
!694 = !DILocation(line: 415, column: 1, scope: !607)
!695 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good", scope: !45, file: !45, line: 417, type: !105, scopeLine: 418, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!696 = !DILocation(line: 419, column: 5, scope: !695)
!697 = !DILocation(line: 420, column: 5, scope: !695)
!698 = !DILocation(line: 421, column: 1, scope: !695)
!699 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !700, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !42}
!702 = !DILocalVariable(name: "line", arg: 1, scope: !699, file: !3, line: 11, type: !42)
!703 = !DILocation(line: 11, column: 25, scope: !699)
!704 = !DILocation(line: 13, column: 1, scope: !699)
!705 = !DILocation(line: 14, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !699, file: !3, line: 14, column: 8)
!707 = !DILocation(line: 14, column: 13, scope: !706)
!708 = !DILocation(line: 14, column: 8, scope: !699)
!709 = !DILocation(line: 16, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !3, line: 15, column: 5)
!711 = !DILocation(line: 16, column: 9, scope: !710)
!712 = !DILocation(line: 17, column: 5, scope: !710)
!713 = !DILocation(line: 18, column: 5, scope: !699)
!714 = !DILocation(line: 19, column: 1, scope: !699)
!715 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !700, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DILocalVariable(name: "line", arg: 1, scope: !715, file: !3, line: 20, type: !42)
!717 = !DILocation(line: 20, column: 29, scope: !715)
!718 = !DILocation(line: 22, column: 8, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !3, line: 22, column: 8)
!720 = !DILocation(line: 22, column: 13, scope: !719)
!721 = !DILocation(line: 22, column: 8, scope: !715)
!722 = !DILocation(line: 24, column: 24, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 23, column: 5)
!724 = !DILocation(line: 24, column: 9, scope: !723)
!725 = !DILocation(line: 25, column: 5, scope: !723)
!726 = !DILocation(line: 26, column: 1, scope: !715)
!727 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !728, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !152, line: 74, baseType: !23)
!732 = !DILocalVariable(name: "line", arg: 1, scope: !727, file: !3, line: 27, type: !730)
!733 = !DILocation(line: 27, column: 29, scope: !727)
!734 = !DILocation(line: 29, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !3, line: 29, column: 8)
!736 = !DILocation(line: 29, column: 13, scope: !735)
!737 = !DILocation(line: 29, column: 8, scope: !727)
!738 = !DILocation(line: 31, column: 27, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 30, column: 5)
!740 = !DILocation(line: 31, column: 9, scope: !739)
!741 = !DILocation(line: 32, column: 5, scope: !739)
!742 = !DILocation(line: 33, column: 1, scope: !727)
!743 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !744, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !23}
!746 = !DILocalVariable(name: "intNumber", arg: 1, scope: !743, file: !3, line: 35, type: !23)
!747 = !DILocation(line: 35, column: 24, scope: !743)
!748 = !DILocation(line: 37, column: 20, scope: !743)
!749 = !DILocation(line: 37, column: 5, scope: !743)
!750 = !DILocation(line: 38, column: 1, scope: !743)
!751 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !752, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !754}
!754 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!755 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !751, file: !3, line: 40, type: !754)
!756 = !DILocation(line: 40, column: 28, scope: !751)
!757 = !DILocation(line: 42, column: 21, scope: !751)
!758 = !DILocation(line: 42, column: 5, scope: !751)
!759 = !DILocation(line: 43, column: 1, scope: !751)
!760 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !761, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !763}
!763 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!764 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !760, file: !3, line: 45, type: !763)
!765 = !DILocation(line: 45, column: 28, scope: !760)
!766 = !DILocation(line: 47, column: 20, scope: !760)
!767 = !DILocation(line: 47, column: 5, scope: !760)
!768 = !DILocation(line: 48, column: 1, scope: !760)
!769 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !770, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772}
!772 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!773 = !DILocalVariable(name: "longNumber", arg: 1, scope: !769, file: !3, line: 50, type: !772)
!774 = !DILocation(line: 50, column: 26, scope: !769)
!775 = !DILocation(line: 52, column: 21, scope: !769)
!776 = !DILocation(line: 52, column: 5, scope: !769)
!777 = !DILocation(line: 53, column: 1, scope: !769)
!778 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !779, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !782, line: 27, baseType: !783)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !133, line: 44, baseType: !772)
!784 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !778, file: !3, line: 55, type: !781)
!785 = !DILocation(line: 55, column: 33, scope: !778)
!786 = !DILocation(line: 57, column: 29, scope: !778)
!787 = !DILocation(line: 57, column: 5, scope: !778)
!788 = !DILocation(line: 58, column: 1, scope: !778)
!789 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !790, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !151}
!792 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !789, file: !3, line: 60, type: !151)
!793 = !DILocation(line: 60, column: 29, scope: !789)
!794 = !DILocation(line: 62, column: 21, scope: !789)
!795 = !DILocation(line: 62, column: 5, scope: !789)
!796 = !DILocation(line: 63, column: 1, scope: !789)
!797 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !798, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !43}
!800 = !DILocalVariable(name: "charHex", arg: 1, scope: !797, file: !3, line: 65, type: !43)
!801 = !DILocation(line: 65, column: 29, scope: !797)
!802 = !DILocation(line: 67, column: 22, scope: !797)
!803 = !DILocation(line: 67, column: 5, scope: !797)
!804 = !DILocation(line: 68, column: 1, scope: !797)
!805 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !806, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !731}
!808 = !DILocalVariable(name: "wideChar", arg: 1, scope: !805, file: !3, line: 70, type: !731)
!809 = !DILocation(line: 70, column: 29, scope: !805)
!810 = !DILocalVariable(name: "s", scope: !805, file: !3, line: 74, type: !811)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 64, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 2)
!814 = !DILocation(line: 74, column: 13, scope: !805)
!815 = !DILocation(line: 75, column: 16, scope: !805)
!816 = !DILocation(line: 75, column: 9, scope: !805)
!817 = !DILocation(line: 75, column: 14, scope: !805)
!818 = !DILocation(line: 76, column: 9, scope: !805)
!819 = !DILocation(line: 76, column: 14, scope: !805)
!820 = !DILocation(line: 77, column: 21, scope: !805)
!821 = !DILocation(line: 77, column: 5, scope: !805)
!822 = !DILocation(line: 78, column: 1, scope: !805)
!823 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !824, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !7}
!826 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !823, file: !3, line: 80, type: !7)
!827 = !DILocation(line: 80, column: 33, scope: !823)
!828 = !DILocation(line: 82, column: 20, scope: !823)
!829 = !DILocation(line: 82, column: 5, scope: !823)
!830 = !DILocation(line: 83, column: 1, scope: !823)
!831 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !832, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !25}
!834 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !831, file: !3, line: 85, type: !25)
!835 = !DILocation(line: 85, column: 45, scope: !831)
!836 = !DILocation(line: 87, column: 22, scope: !831)
!837 = !DILocation(line: 87, column: 5, scope: !831)
!838 = !DILocation(line: 88, column: 1, scope: !831)
!839 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !840, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !842}
!842 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!843 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !839, file: !3, line: 90, type: !842)
!844 = !DILocation(line: 90, column: 29, scope: !839)
!845 = !DILocation(line: 92, column: 20, scope: !839)
!846 = !DILocation(line: 92, column: 5, scope: !839)
!847 = !DILocation(line: 93, column: 1, scope: !839)
!848 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !849, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !853, line: 100, baseType: !854)
!853 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/source_code")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !853, line: 96, size: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !854, file: !853, line: 98, baseType: !23, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !854, file: !853, line: 99, baseType: !23, size: 32, offset: 32)
!858 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !848, file: !3, line: 95, type: !851)
!859 = !DILocation(line: 95, column: 40, scope: !848)
!860 = !DILocation(line: 97, column: 26, scope: !848)
!861 = !DILocation(line: 97, column: 47, scope: !848)
!862 = !DILocation(line: 97, column: 55, scope: !848)
!863 = !DILocation(line: 97, column: 76, scope: !848)
!864 = !DILocation(line: 97, column: 5, scope: !848)
!865 = !DILocation(line: 98, column: 1, scope: !848)
!866 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !867, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !869, !151}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!870 = !DILocalVariable(name: "bytes", arg: 1, scope: !866, file: !3, line: 100, type: !869)
!871 = !DILocation(line: 100, column: 38, scope: !866)
!872 = !DILocalVariable(name: "numBytes", arg: 2, scope: !866, file: !3, line: 100, type: !151)
!873 = !DILocation(line: 100, column: 52, scope: !866)
!874 = !DILocalVariable(name: "i", scope: !866, file: !3, line: 102, type: !151)
!875 = !DILocation(line: 102, column: 12, scope: !866)
!876 = !DILocation(line: 103, column: 12, scope: !877)
!877 = distinct !DILexicalBlock(scope: !866, file: !3, line: 103, column: 5)
!878 = !DILocation(line: 103, column: 10, scope: !877)
!879 = !DILocation(line: 103, column: 17, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 103, column: 5)
!881 = !DILocation(line: 103, column: 21, scope: !880)
!882 = !DILocation(line: 103, column: 19, scope: !880)
!883 = !DILocation(line: 103, column: 5, scope: !877)
!884 = !DILocation(line: 105, column: 24, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 104, column: 5)
!886 = !DILocation(line: 105, column: 30, scope: !885)
!887 = !DILocation(line: 105, column: 9, scope: !885)
!888 = !DILocation(line: 106, column: 5, scope: !885)
!889 = !DILocation(line: 103, column: 31, scope: !880)
!890 = !DILocation(line: 103, column: 5, scope: !880)
!891 = distinct !{!891, !883, !892, !276}
!892 = !DILocation(line: 106, column: 5, scope: !877)
!893 = !DILocation(line: 107, column: 5, scope: !866)
!894 = !DILocation(line: 108, column: 1, scope: !866)
!895 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !896, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DISubroutineType(types: !897)
!897 = !{!151, !869, !151, !42}
!898 = !DILocalVariable(name: "bytes", arg: 1, scope: !895, file: !3, line: 113, type: !869)
!899 = !DILocation(line: 113, column: 39, scope: !895)
!900 = !DILocalVariable(name: "numBytes", arg: 2, scope: !895, file: !3, line: 113, type: !151)
!901 = !DILocation(line: 113, column: 53, scope: !895)
!902 = !DILocalVariable(name: "hex", arg: 3, scope: !895, file: !3, line: 113, type: !42)
!903 = !DILocation(line: 113, column: 71, scope: !895)
!904 = !DILocalVariable(name: "numWritten", scope: !895, file: !3, line: 115, type: !151)
!905 = !DILocation(line: 115, column: 12, scope: !895)
!906 = !DILocation(line: 121, column: 5, scope: !895)
!907 = !DILocation(line: 121, column: 12, scope: !895)
!908 = !DILocation(line: 121, column: 25, scope: !895)
!909 = !DILocation(line: 121, column: 23, scope: !895)
!910 = !DILocation(line: 121, column: 34, scope: !895)
!911 = !DILocation(line: 121, column: 37, scope: !895)
!912 = !DILocation(line: 121, column: 67, scope: !895)
!913 = !DILocation(line: 121, column: 70, scope: !895)
!914 = !DILocation(line: 0, scope: !895)
!915 = !DILocalVariable(name: "byte", scope: !916, file: !3, line: 123, type: !23)
!916 = distinct !DILexicalBlock(scope: !895, file: !3, line: 122, column: 5)
!917 = !DILocation(line: 123, column: 13, scope: !916)
!918 = !DILocation(line: 124, column: 17, scope: !916)
!919 = !DILocation(line: 124, column: 25, scope: !916)
!920 = !DILocation(line: 124, column: 23, scope: !916)
!921 = !DILocation(line: 124, column: 9, scope: !916)
!922 = !DILocation(line: 125, column: 45, scope: !916)
!923 = !DILocation(line: 125, column: 29, scope: !916)
!924 = !DILocation(line: 125, column: 9, scope: !916)
!925 = !DILocation(line: 125, column: 15, scope: !916)
!926 = !DILocation(line: 125, column: 27, scope: !916)
!927 = !DILocation(line: 126, column: 9, scope: !916)
!928 = distinct !{!928, !906, !929, !276}
!929 = !DILocation(line: 127, column: 5, scope: !895)
!930 = !DILocation(line: 129, column: 12, scope: !895)
!931 = !DILocation(line: 129, column: 5, scope: !895)
!932 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !933, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!933 = !DISubroutineType(types: !934)
!934 = !{!151, !869, !151, !730}
!935 = !DILocalVariable(name: "bytes", arg: 1, scope: !932, file: !3, line: 135, type: !869)
!936 = !DILocation(line: 135, column: 41, scope: !932)
!937 = !DILocalVariable(name: "numBytes", arg: 2, scope: !932, file: !3, line: 135, type: !151)
!938 = !DILocation(line: 135, column: 55, scope: !932)
!939 = !DILocalVariable(name: "hex", arg: 3, scope: !932, file: !3, line: 135, type: !730)
!940 = !DILocation(line: 135, column: 76, scope: !932)
!941 = !DILocalVariable(name: "numWritten", scope: !932, file: !3, line: 137, type: !151)
!942 = !DILocation(line: 137, column: 12, scope: !932)
!943 = !DILocation(line: 143, column: 5, scope: !932)
!944 = !DILocation(line: 143, column: 12, scope: !932)
!945 = !DILocation(line: 143, column: 25, scope: !932)
!946 = !DILocation(line: 143, column: 23, scope: !932)
!947 = !DILocation(line: 143, column: 34, scope: !932)
!948 = !DILocation(line: 143, column: 47, scope: !932)
!949 = !DILocation(line: 143, column: 55, scope: !932)
!950 = !DILocation(line: 143, column: 53, scope: !932)
!951 = !DILocation(line: 143, column: 37, scope: !932)
!952 = !DILocation(line: 143, column: 68, scope: !932)
!953 = !DILocation(line: 143, column: 81, scope: !932)
!954 = !DILocation(line: 143, column: 89, scope: !932)
!955 = !DILocation(line: 143, column: 87, scope: !932)
!956 = !DILocation(line: 143, column: 100, scope: !932)
!957 = !DILocation(line: 143, column: 71, scope: !932)
!958 = !DILocation(line: 0, scope: !932)
!959 = !DILocalVariable(name: "byte", scope: !960, file: !3, line: 145, type: !23)
!960 = distinct !DILexicalBlock(scope: !932, file: !3, line: 144, column: 5)
!961 = !DILocation(line: 145, column: 13, scope: !960)
!962 = !DILocation(line: 146, column: 18, scope: !960)
!963 = !DILocation(line: 146, column: 26, scope: !960)
!964 = !DILocation(line: 146, column: 24, scope: !960)
!965 = !DILocation(line: 146, column: 9, scope: !960)
!966 = !DILocation(line: 147, column: 45, scope: !960)
!967 = !DILocation(line: 147, column: 29, scope: !960)
!968 = !DILocation(line: 147, column: 9, scope: !960)
!969 = !DILocation(line: 147, column: 15, scope: !960)
!970 = !DILocation(line: 147, column: 27, scope: !960)
!971 = !DILocation(line: 148, column: 9, scope: !960)
!972 = distinct !{!972, !943, !973, !276}
!973 = !DILocation(line: 149, column: 5, scope: !932)
!974 = !DILocation(line: 151, column: 12, scope: !932)
!975 = !DILocation(line: 151, column: 5, scope: !932)
!976 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !977, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!977 = !DISubroutineType(types: !978)
!978 = !{!23}
!979 = !DILocation(line: 158, column: 5, scope: !976)
!980 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !977, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!981 = !DILocation(line: 163, column: 5, scope: !980)
!982 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !977, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!983 = !DILocation(line: 168, column: 13, scope: !982)
!984 = !DILocation(line: 168, column: 20, scope: !982)
!985 = !DILocation(line: 168, column: 5, scope: !982)
!986 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!987 = !DILocation(line: 187, column: 16, scope: !986)
!988 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!989 = !DILocation(line: 188, column: 16, scope: !988)
!990 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!991 = !DILocation(line: 189, column: 16, scope: !990)
!992 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!993 = !DILocation(line: 190, column: 16, scope: !992)
!994 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!995 = !DILocation(line: 191, column: 16, scope: !994)
!996 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!997 = !DILocation(line: 192, column: 16, scope: !996)
!998 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!999 = !DILocation(line: 193, column: 16, scope: !998)
!1000 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1001 = !DILocation(line: 194, column: 16, scope: !1000)
!1002 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1003 = !DILocation(line: 195, column: 16, scope: !1002)
!1004 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1005 = !DILocation(line: 198, column: 15, scope: !1004)
!1006 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1007 = !DILocation(line: 199, column: 15, scope: !1006)
!1008 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1009 = !DILocation(line: 200, column: 15, scope: !1008)
!1010 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1011 = !DILocation(line: 201, column: 15, scope: !1010)
!1012 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1013 = !DILocation(line: 202, column: 15, scope: !1012)
!1014 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1015 = !DILocation(line: 203, column: 15, scope: !1014)
!1016 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1017 = !DILocation(line: 204, column: 15, scope: !1016)
!1018 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1019 = !DILocation(line: 205, column: 15, scope: !1018)
!1020 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1021 = !DILocation(line: 206, column: 15, scope: !1020)
