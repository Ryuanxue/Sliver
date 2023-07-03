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
define dso_local i32 @staticReturnsTrue() #0 !dbg !104 {
entry:
  ret i32 1, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !109 {
entry:
  ret i32 0, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_08_bad() #0 !dbg !111 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !116, metadata !DIExpression()), !dbg !120
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !120
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !121
  store i8* %arraydecay, i8** %data, align 8, !dbg !122
  %call = call i32 @staticReturnsTrue(), !dbg !123
  %tobool = icmp ne i32 %call, 0, !dbg !123
  br i1 %tobool, label %if.then, label %if.end32, !dbg !125

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !126, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !130, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 -1, i32* %connectSocket, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !156, metadata !DIExpression()), !dbg !160
  %1 = load i8*, i8** %data, align 8, !dbg !161
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !162
  store i64 %call1, i64* %dataLen, align 8, !dbg !160
  br label %do.body, !dbg !163

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !164
  store i32 %call2, i32* %connectSocket, align 4, !dbg !166
  %2 = load i32, i32* %connectSocket, align 4, !dbg !167
  %cmp = icmp eq i32 %2, -1, !dbg !169
  br i1 %cmp, label %if.then3, label %if.end, !dbg !170

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !171

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !173
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !174
  store i16 2, i16* %sin_family, align 4, !dbg !175
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !176
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !177
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !178
  store i32 %call4, i32* %s_addr, align 4, !dbg !179
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !180
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !181
  store i16 %call5, i16* %sin_port, align 2, !dbg !182
  %4 = load i32, i32* %connectSocket, align 4, !dbg !183
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !185
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !186
  %cmp7 = icmp eq i32 %call6, -1, !dbg !187
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !188

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !189

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !191
  %7 = load i8*, i8** %data, align 8, !dbg !192
  %8 = load i64, i64* %dataLen, align 8, !dbg !193
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !194
  %9 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub = sub i64 100, %9, !dbg !196
  %sub10 = sub i64 %sub, 1, !dbg !197
  %mul = mul i64 1, %sub10, !dbg !198
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !199
  %conv = trunc i64 %call11 to i32, !dbg !199
  store i32 %conv, i32* %recvResult, align 4, !dbg !200
  %10 = load i32, i32* %recvResult, align 4, !dbg !201
  %cmp12 = icmp eq i32 %10, -1, !dbg !203
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !204

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !205
  %cmp14 = icmp eq i32 %11, 0, !dbg !206
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !207

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !208

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !210
  %13 = load i64, i64* %dataLen, align 8, !dbg !211
  %14 = load i32, i32* %recvResult, align 4, !dbg !212
  %conv18 = sext i32 %14 to i64, !dbg !212
  %div = udiv i64 %conv18, 1, !dbg !213
  %add = add i64 %13, %div, !dbg !214
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !210
  store i8 0, i8* %arrayidx, align 1, !dbg !215
  %15 = load i8*, i8** %data, align 8, !dbg !216
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !217
  store i8* %call19, i8** %replace, align 8, !dbg !218
  %16 = load i8*, i8** %replace, align 8, !dbg !219
  %tobool20 = icmp ne i8* %16, null, !dbg !219
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !221

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !222
  store i8 0, i8* %17, align 1, !dbg !224
  br label %if.end22, !dbg !225

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !226
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !227
  store i8* %call23, i8** %replace, align 8, !dbg !228
  %19 = load i8*, i8** %replace, align 8, !dbg !229
  %tobool24 = icmp ne i8* %19, null, !dbg !229
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !231

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !232
  store i8 0, i8* %20, align 1, !dbg !234
  br label %if.end26, !dbg !235

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !236

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !237
  %cmp27 = icmp ne i32 %21, -1, !dbg !239
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !240

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !241
  %call30 = call i32 @close(i32 %22), !dbg !243
  br label %if.end31, !dbg !244

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !245

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsTrue(), !dbg !246
  %tobool34 = icmp ne i32 %call33, 0, !dbg !246
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !248

if.then35:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %n, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !255, metadata !DIExpression()), !dbg !256
  %23 = load i8*, i8** %data, align 8, !dbg !257
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !259
  %cmp37 = icmp eq i32 %call36, 1, !dbg !260
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !261

if.then39:                                        ; preds = %if.then35
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then39
  %24 = load i32, i32* %i, align 4, !dbg !267
  %25 = load i32, i32* %n, align 4, !dbg !269
  %cmp40 = icmp slt i32 %24, %25, !dbg !270
  br i1 %cmp40, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %26, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !275
  %inc42 = add nsw i32 %27, 1, !dbg !275
  store i32 %inc42, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !280
  call void @printIntLine(i32 %28), !dbg !281
  br label %if.end43, !dbg !282

if.end43:                                         ; preds = %for.end, %if.then35
  br label %if.end44, !dbg !283

if.end44:                                         ; preds = %if.end43, %if.end32
  ret void, !dbg !284
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
define dso_local void @goodB2G1() #0 !dbg !285 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !289
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !289
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !290
  store i8* %arraydecay, i8** %data, align 8, !dbg !291
  %call = call i32 @staticReturnsTrue(), !dbg !292
  %tobool = icmp ne i32 %call, 0, !dbg !292
  br i1 %tobool, label %if.then, label %if.end32, !dbg !294

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !303, metadata !DIExpression()), !dbg !304
  store i32 -1, i32* %connectSocket, align 4, !dbg !304
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !305, metadata !DIExpression()), !dbg !306
  %1 = load i8*, i8** %data, align 8, !dbg !307
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !308
  store i64 %call1, i64* %dataLen, align 8, !dbg !306
  br label %do.body, !dbg !309

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !310
  store i32 %call2, i32* %connectSocket, align 4, !dbg !312
  %2 = load i32, i32* %connectSocket, align 4, !dbg !313
  %cmp = icmp eq i32 %2, -1, !dbg !315
  br i1 %cmp, label %if.then3, label %if.end, !dbg !316

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !317

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !319
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !319
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !320
  store i16 2, i16* %sin_family, align 4, !dbg !321
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !322
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !323
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !324
  store i32 %call4, i32* %s_addr, align 4, !dbg !325
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !326
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !327
  store i16 %call5, i16* %sin_port, align 2, !dbg !328
  %4 = load i32, i32* %connectSocket, align 4, !dbg !329
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !331
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !332
  %cmp7 = icmp eq i32 %call6, -1, !dbg !333
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !334

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !335

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !337
  %7 = load i8*, i8** %data, align 8, !dbg !338
  %8 = load i64, i64* %dataLen, align 8, !dbg !339
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !340
  %9 = load i64, i64* %dataLen, align 8, !dbg !341
  %sub = sub i64 100, %9, !dbg !342
  %sub10 = sub i64 %sub, 1, !dbg !343
  %mul = mul i64 1, %sub10, !dbg !344
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !345
  %conv = trunc i64 %call11 to i32, !dbg !345
  store i32 %conv, i32* %recvResult, align 4, !dbg !346
  %10 = load i32, i32* %recvResult, align 4, !dbg !347
  %cmp12 = icmp eq i32 %10, -1, !dbg !349
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !350

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !351
  %cmp14 = icmp eq i32 %11, 0, !dbg !352
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !353

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !354

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !356
  %13 = load i64, i64* %dataLen, align 8, !dbg !357
  %14 = load i32, i32* %recvResult, align 4, !dbg !358
  %conv18 = sext i32 %14 to i64, !dbg !358
  %div = udiv i64 %conv18, 1, !dbg !359
  %add = add i64 %13, %div, !dbg !360
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !356
  store i8 0, i8* %arrayidx, align 1, !dbg !361
  %15 = load i8*, i8** %data, align 8, !dbg !362
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !363
  store i8* %call19, i8** %replace, align 8, !dbg !364
  %16 = load i8*, i8** %replace, align 8, !dbg !365
  %tobool20 = icmp ne i8* %16, null, !dbg !365
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !367

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !368
  store i8 0, i8* %17, align 1, !dbg !370
  br label %if.end22, !dbg !371

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !372
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !373
  store i8* %call23, i8** %replace, align 8, !dbg !374
  %19 = load i8*, i8** %replace, align 8, !dbg !375
  %tobool24 = icmp ne i8* %19, null, !dbg !375
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !377

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !378
  store i8 0, i8* %20, align 1, !dbg !380
  br label %if.end26, !dbg !381

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !382

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !383
  %cmp27 = icmp ne i32 %21, -1, !dbg !385
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !386

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !387
  %call30 = call i32 @close(i32 %22), !dbg !389
  br label %if.end31, !dbg !390

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !391

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsFalse(), !dbg !392
  %tobool34 = icmp ne i32 %call33, 0, !dbg !392
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !394

if.then35:                                        ; preds = %if.end32
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !395
  br label %if.end48, !dbg !397

if.else:                                          ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !398, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %n, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !404, metadata !DIExpression()), !dbg !405
  %23 = load i8*, i8** %data, align 8, !dbg !406
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !408
  %cmp37 = icmp eq i32 %call36, 1, !dbg !409
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !410

if.then39:                                        ; preds = %if.else
  %24 = load i32, i32* %n, align 4, !dbg !411
  %cmp40 = icmp slt i32 %24, 10000, !dbg !414
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !415

if.then42:                                        ; preds = %if.then39
  store i32 0, i32* %intVariable, align 4, !dbg !416
  store i32 0, i32* %i, align 4, !dbg !418
  br label %for.cond, !dbg !420

for.cond:                                         ; preds = %for.inc, %if.then42
  %25 = load i32, i32* %i, align 4, !dbg !421
  %26 = load i32, i32* %n, align 4, !dbg !423
  %cmp43 = icmp slt i32 %25, %26, !dbg !424
  br i1 %cmp43, label %for.body, label %for.end, !dbg !425

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !426
  %inc = add nsw i32 %27, 1, !dbg !426
  store i32 %inc, i32* %intVariable, align 4, !dbg !426
  br label %for.inc, !dbg !428

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !429
  %inc45 = add nsw i32 %28, 1, !dbg !429
  store i32 %inc45, i32* %i, align 4, !dbg !429
  br label %for.cond, !dbg !430, !llvm.loop !431

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !433
  call void @printIntLine(i32 %29), !dbg !434
  br label %if.end46, !dbg !435

if.end46:                                         ; preds = %for.end, %if.then39
  br label %if.end47, !dbg !436

if.end47:                                         ; preds = %if.end46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then35
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !438 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !442
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !442
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !443
  store i8* %arraydecay, i8** %data, align 8, !dbg !444
  %call = call i32 @staticReturnsTrue(), !dbg !445
  %tobool = icmp ne i32 %call, 0, !dbg !445
  br i1 %tobool, label %if.then, label %if.end32, !dbg !447

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !448, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !456, metadata !DIExpression()), !dbg !457
  store i32 -1, i32* %connectSocket, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !458, metadata !DIExpression()), !dbg !459
  %1 = load i8*, i8** %data, align 8, !dbg !460
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !461
  store i64 %call1, i64* %dataLen, align 8, !dbg !459
  br label %do.body, !dbg !462

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !463
  store i32 %call2, i32* %connectSocket, align 4, !dbg !465
  %2 = load i32, i32* %connectSocket, align 4, !dbg !466
  %cmp = icmp eq i32 %2, -1, !dbg !468
  br i1 %cmp, label %if.then3, label %if.end, !dbg !469

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !470

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !472
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !472
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !473
  store i16 2, i16* %sin_family, align 4, !dbg !474
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !475
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !476
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !477
  store i32 %call4, i32* %s_addr, align 4, !dbg !478
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !479
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !480
  store i16 %call5, i16* %sin_port, align 2, !dbg !481
  %4 = load i32, i32* %connectSocket, align 4, !dbg !482
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !484
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !485
  %cmp7 = icmp eq i32 %call6, -1, !dbg !486
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !487

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !488

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !490
  %7 = load i8*, i8** %data, align 8, !dbg !491
  %8 = load i64, i64* %dataLen, align 8, !dbg !492
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !493
  %9 = load i64, i64* %dataLen, align 8, !dbg !494
  %sub = sub i64 100, %9, !dbg !495
  %sub10 = sub i64 %sub, 1, !dbg !496
  %mul = mul i64 1, %sub10, !dbg !497
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !498
  %conv = trunc i64 %call11 to i32, !dbg !498
  store i32 %conv, i32* %recvResult, align 4, !dbg !499
  %10 = load i32, i32* %recvResult, align 4, !dbg !500
  %cmp12 = icmp eq i32 %10, -1, !dbg !502
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !503

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !504
  %cmp14 = icmp eq i32 %11, 0, !dbg !505
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !506

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !507

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !509
  %13 = load i64, i64* %dataLen, align 8, !dbg !510
  %14 = load i32, i32* %recvResult, align 4, !dbg !511
  %conv18 = sext i32 %14 to i64, !dbg !511
  %div = udiv i64 %conv18, 1, !dbg !512
  %add = add i64 %13, %div, !dbg !513
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !509
  store i8 0, i8* %arrayidx, align 1, !dbg !514
  %15 = load i8*, i8** %data, align 8, !dbg !515
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !516
  store i8* %call19, i8** %replace, align 8, !dbg !517
  %16 = load i8*, i8** %replace, align 8, !dbg !518
  %tobool20 = icmp ne i8* %16, null, !dbg !518
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !520

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !521
  store i8 0, i8* %17, align 1, !dbg !523
  br label %if.end22, !dbg !524

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !525
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !526
  store i8* %call23, i8** %replace, align 8, !dbg !527
  %19 = load i8*, i8** %replace, align 8, !dbg !528
  %tobool24 = icmp ne i8* %19, null, !dbg !528
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !530

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !531
  store i8 0, i8* %20, align 1, !dbg !533
  br label %if.end26, !dbg !534

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !535

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !536
  %cmp27 = icmp ne i32 %21, -1, !dbg !538
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !539

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !540
  %call30 = call i32 @close(i32 %22), !dbg !542
  br label %if.end31, !dbg !543

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !544

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsTrue(), !dbg !545
  %tobool34 = icmp ne i32 %call33, 0, !dbg !545
  br i1 %tobool34, label %if.then35, label %if.end48, !dbg !547

if.then35:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %n, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !554, metadata !DIExpression()), !dbg !555
  %23 = load i8*, i8** %data, align 8, !dbg !556
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !558
  %cmp37 = icmp eq i32 %call36, 1, !dbg !559
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !560

if.then39:                                        ; preds = %if.then35
  %24 = load i32, i32* %n, align 4, !dbg !561
  %cmp40 = icmp slt i32 %24, 10000, !dbg !564
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !565

if.then42:                                        ; preds = %if.then39
  store i32 0, i32* %intVariable, align 4, !dbg !566
  store i32 0, i32* %i, align 4, !dbg !568
  br label %for.cond, !dbg !570

for.cond:                                         ; preds = %for.inc, %if.then42
  %25 = load i32, i32* %i, align 4, !dbg !571
  %26 = load i32, i32* %n, align 4, !dbg !573
  %cmp43 = icmp slt i32 %25, %26, !dbg !574
  br i1 %cmp43, label %for.body, label %for.end, !dbg !575

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !576
  %inc = add nsw i32 %27, 1, !dbg !576
  store i32 %inc, i32* %intVariable, align 4, !dbg !576
  br label %for.inc, !dbg !578

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !579
  %inc45 = add nsw i32 %28, 1, !dbg !579
  store i32 %inc45, i32* %i, align 4, !dbg !579
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !583
  call void @printIntLine(i32 %29), !dbg !584
  br label %if.end46, !dbg !585

if.end46:                                         ; preds = %for.end, %if.then39
  br label %if.end47, !dbg !586

if.end47:                                         ; preds = %if.end46, %if.then35
  br label %if.end48, !dbg !587

if.end48:                                         ; preds = %if.end47, %if.end32
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !589 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !593
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !593
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !594
  store i8* %arraydecay, i8** %data, align 8, !dbg !595
  %call = call i32 @staticReturnsFalse(), !dbg !596
  %tobool = icmp ne i32 %call, 0, !dbg !596
  br i1 %tobool, label %if.then, label %if.else, !dbg !598

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !599
  br label %if.end, !dbg !601

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !602
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !604
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !605
  %tobool3 = icmp ne i32 %call2, 0, !dbg !605
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !607

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %n, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !614, metadata !DIExpression()), !dbg !615
  %2 = load i8*, i8** %data, align 8, !dbg !616
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !618
  %cmp = icmp eq i32 %call5, 1, !dbg !619
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !620

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !621
  store i32 0, i32* %i, align 4, !dbg !623
  br label %for.cond, !dbg !625

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !626
  %4 = load i32, i32* %n, align 4, !dbg !628
  %cmp7 = icmp slt i32 %3, %4, !dbg !629
  br i1 %cmp7, label %for.body, label %for.end, !dbg !630

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !631
  %inc = add nsw i32 %5, 1, !dbg !631
  store i32 %inc, i32* %intVariable, align 4, !dbg !631
  br label %for.inc, !dbg !633

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !634
  %inc8 = add nsw i32 %6, 1, !dbg !634
  store i32 %inc8, i32* %i, align 4, !dbg !634
  br label %for.cond, !dbg !635, !llvm.loop !636

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !638
  call void @printIntLine(i32 %7), !dbg !639
  br label %if.end9, !dbg !640

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !641

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !642
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !643 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !647
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !647
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !648
  store i8* %arraydecay, i8** %data, align 8, !dbg !649
  %call = call i32 @staticReturnsTrue(), !dbg !650
  %tobool = icmp ne i32 %call, 0, !dbg !650
  br i1 %tobool, label %if.then, label %if.end, !dbg !652

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !653
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !655
  br label %if.end, !dbg !656

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !657
  %tobool3 = icmp ne i32 %call2, 0, !dbg !657
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !659

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.declare(metadata i32* %n, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !666, metadata !DIExpression()), !dbg !667
  %2 = load i8*, i8** %data, align 8, !dbg !668
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !670
  %cmp = icmp eq i32 %call5, 1, !dbg !671
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !672

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !673
  store i32 0, i32* %i, align 4, !dbg !675
  br label %for.cond, !dbg !677

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !678
  %4 = load i32, i32* %n, align 4, !dbg !680
  %cmp7 = icmp slt i32 %3, %4, !dbg !681
  br i1 %cmp7, label %for.body, label %for.end, !dbg !682

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !683
  %inc = add nsw i32 %5, 1, !dbg !683
  store i32 %inc, i32* %intVariable, align 4, !dbg !683
  br label %for.inc, !dbg !685

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !686
  %inc8 = add nsw i32 %6, 1, !dbg !686
  store i32 %inc8, i32* %i, align 4, !dbg !686
  br label %for.cond, !dbg !687, !llvm.loop !688

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !690
  call void @printIntLine(i32 %7), !dbg !691
  br label %if.end9, !dbg !692

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !693

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_08_good() #0 !dbg !695 {
entry:
  call void @goodB2G1(), !dbg !696
  call void @goodB2G2(), !dbg !697
  call void @goodG2B1(), !dbg !698
  call void @goodG2B2(), !dbg !699
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !701 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !704, metadata !DIExpression()), !dbg !705
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !706
  %0 = load i8*, i8** %line.addr, align 8, !dbg !707
  %cmp = icmp ne i8* %0, null, !dbg !709
  br i1 %cmp, label %if.then, label %if.end, !dbg !710

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !711
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !713
  br label %if.end, !dbg !714

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !715
  ret void, !dbg !716
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !717 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !718, metadata !DIExpression()), !dbg !719
  %0 = load i8*, i8** %line.addr, align 8, !dbg !720
  %cmp = icmp ne i8* %0, null, !dbg !722
  br i1 %cmp, label %if.then, label %if.end, !dbg !723

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !724
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !726
  br label %if.end, !dbg !727

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !729 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !734, metadata !DIExpression()), !dbg !735
  %0 = load i32*, i32** %line.addr, align 8, !dbg !736
  %cmp = icmp ne i32* %0, null, !dbg !738
  br i1 %cmp, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !740
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !742
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !744
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !745 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !750
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !751
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !753 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !759
  %conv = sext i16 %0 to i32, !dbg !759
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !760
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !762 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !766, metadata !DIExpression()), !dbg !767
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !768
  %conv = fpext float %0 to double, !dbg !768
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !769
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !771 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !777
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !778
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !780 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !786, metadata !DIExpression()), !dbg !787
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !788
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !789
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !791 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !794, metadata !DIExpression()), !dbg !795
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !796
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !797
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !799 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !802, metadata !DIExpression()), !dbg !803
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !804
  %conv = sext i8 %0 to i32, !dbg !804
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !805
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !807 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !812, metadata !DIExpression()), !dbg !816
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !817
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !818
  store i32 %0, i32* %arrayidx, align 4, !dbg !819
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !820
  store i32 0, i32* %arrayidx1, align 4, !dbg !821
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !822
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !823
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !825 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !828, metadata !DIExpression()), !dbg !829
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !830
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !831
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !833 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !836, metadata !DIExpression()), !dbg !837
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !838
  %conv = zext i8 %0 to i32, !dbg !838
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !839
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !841 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !847
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !848
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !850 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !860, metadata !DIExpression()), !dbg !861
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !862
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !863
  %1 = load i32, i32* %intOne, align 4, !dbg !863
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !864
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !865
  %3 = load i32, i32* %intTwo, align 4, !dbg !865
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !866
  ret void, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !868 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.declare(metadata i64* %i, metadata !876, metadata !DIExpression()), !dbg !877
  store i64 0, i64* %i, align 8, !dbg !878
  br label %for.cond, !dbg !880

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !881
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !883
  %cmp = icmp ult i64 %0, %1, !dbg !884
  br i1 %cmp, label %for.body, label %for.end, !dbg !885

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !886
  %3 = load i64, i64* %i, align 8, !dbg !888
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !886
  %4 = load i8, i8* %arrayidx, align 1, !dbg !886
  %conv = zext i8 %4 to i32, !dbg !886
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !889
  br label %for.inc, !dbg !890

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !891
  %inc = add i64 %5, 1, !dbg !891
  store i64 %inc, i64* %i, align 8, !dbg !891
  br label %for.cond, !dbg !892, !llvm.loop !893

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !895
  ret void, !dbg !896
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !897 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !900, metadata !DIExpression()), !dbg !901
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !906, metadata !DIExpression()), !dbg !907
  store i64 0, i64* %numWritten, align 8, !dbg !907
  br label %while.cond, !dbg !908

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !909
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !910
  %cmp = icmp ult i64 %0, %1, !dbg !911
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !912

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !913
  %2 = load i16*, i16** %call, align 8, !dbg !913
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !913
  %4 = load i64, i64* %numWritten, align 8, !dbg !913
  %mul = mul i64 2, %4, !dbg !913
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !913
  %5 = load i8, i8* %arrayidx, align 1, !dbg !913
  %conv = sext i8 %5 to i32, !dbg !913
  %idxprom = sext i32 %conv to i64, !dbg !913
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !913
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !913
  %conv2 = zext i16 %6 to i32, !dbg !913
  %and = and i32 %conv2, 4096, !dbg !913
  %tobool = icmp ne i32 %and, 0, !dbg !913
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !914

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !915
  %7 = load i16*, i16** %call3, align 8, !dbg !915
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !915
  %9 = load i64, i64* %numWritten, align 8, !dbg !915
  %mul4 = mul i64 2, %9, !dbg !915
  %add = add i64 %mul4, 1, !dbg !915
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !915
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !915
  %conv6 = sext i8 %10 to i32, !dbg !915
  %idxprom7 = sext i32 %conv6 to i64, !dbg !915
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !915
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !915
  %conv9 = zext i16 %11 to i32, !dbg !915
  %and10 = and i32 %conv9, 4096, !dbg !915
  %tobool11 = icmp ne i32 %and10, 0, !dbg !914
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !916
  br i1 %12, label %while.body, label %while.end, !dbg !908

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !917, metadata !DIExpression()), !dbg !919
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !920
  %14 = load i64, i64* %numWritten, align 8, !dbg !921
  %mul12 = mul i64 2, %14, !dbg !922
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !920
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !923
  %15 = load i32, i32* %byte, align 4, !dbg !924
  %conv15 = trunc i32 %15 to i8, !dbg !925
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !926
  %17 = load i64, i64* %numWritten, align 8, !dbg !927
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !926
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !928
  %18 = load i64, i64* %numWritten, align 8, !dbg !929
  %inc = add i64 %18, 1, !dbg !929
  store i64 %inc, i64* %numWritten, align 8, !dbg !929
  br label %while.cond, !dbg !908, !llvm.loop !930

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !932
  ret i64 %19, !dbg !933
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !934 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !937, metadata !DIExpression()), !dbg !938
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !939, metadata !DIExpression()), !dbg !940
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !943, metadata !DIExpression()), !dbg !944
  store i64 0, i64* %numWritten, align 8, !dbg !944
  br label %while.cond, !dbg !945

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !946
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !947
  %cmp = icmp ult i64 %0, %1, !dbg !948
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !949

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !950
  %3 = load i64, i64* %numWritten, align 8, !dbg !951
  %mul = mul i64 2, %3, !dbg !952
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !950
  %4 = load i32, i32* %arrayidx, align 4, !dbg !950
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !953
  %tobool = icmp ne i32 %call, 0, !dbg !953
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !954

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !955
  %6 = load i64, i64* %numWritten, align 8, !dbg !956
  %mul1 = mul i64 2, %6, !dbg !957
  %add = add i64 %mul1, 1, !dbg !958
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !955
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !955
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !959
  %tobool4 = icmp ne i32 %call3, 0, !dbg !954
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !960
  br i1 %8, label %while.body, label %while.end, !dbg !945

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !961, metadata !DIExpression()), !dbg !963
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !964
  %10 = load i64, i64* %numWritten, align 8, !dbg !965
  %mul5 = mul i64 2, %10, !dbg !966
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !964
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !967
  %11 = load i32, i32* %byte, align 4, !dbg !968
  %conv = trunc i32 %11 to i8, !dbg !969
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !970
  %13 = load i64, i64* %numWritten, align 8, !dbg !971
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !970
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !972
  %14 = load i64, i64* %numWritten, align 8, !dbg !973
  %inc = add i64 %14, 1, !dbg !973
  store i64 %inc, i64* %numWritten, align 8, !dbg !973
  br label %while.cond, !dbg !945, !llvm.loop !974

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !976
  ret i64 %15, !dbg !977
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !978 {
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_937/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_937/source_code")
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
!104 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 51, type: !105, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!23}
!107 = !{}
!108 = !DILocation(line: 53, column: 5, scope: !104)
!109 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 56, type: !105, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!110 = !DILocation(line: 58, column: 5, scope: !109)
!111 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08_bad", scope: !45, file: !45, line: 63, type: !112, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !DILocalVariable(name: "data", scope: !111, file: !45, line: 65, type: !42)
!115 = !DILocation(line: 65, column: 12, scope: !111)
!116 = !DILocalVariable(name: "dataBuffer", scope: !111, file: !45, line: 66, type: !117)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 100)
!120 = !DILocation(line: 66, column: 10, scope: !111)
!121 = !DILocation(line: 67, column: 12, scope: !111)
!122 = !DILocation(line: 67, column: 10, scope: !111)
!123 = !DILocation(line: 68, column: 8, scope: !124)
!124 = distinct !DILexicalBlock(scope: !111, file: !45, line: 68, column: 8)
!125 = !DILocation(line: 68, column: 8, scope: !111)
!126 = !DILocalVariable(name: "recvResult", scope: !127, file: !45, line: 75, type: !23)
!127 = distinct !DILexicalBlock(scope: !128, file: !45, line: 70, column: 9)
!128 = distinct !DILexicalBlock(scope: !124, file: !45, line: 69, column: 5)
!129 = !DILocation(line: 75, column: 17, scope: !127)
!130 = !DILocalVariable(name: "service", scope: !127, file: !45, line: 76, type: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !132)
!132 = !{!133, !134, !140, !147}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !131, file: !60, line: 240, baseType: !94, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !131, file: !60, line: 241, baseType: !135, size: 16, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !137, line: 25, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !139, line: 40, baseType: !24)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !131, file: !60, line: 242, baseType: !141, size: 32, offset: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !141, file: !60, line: 33, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 26, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !139, line: 42, baseType: !7)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !131, file: !60, line: 245, baseType: !148, size: 64, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DILocation(line: 76, column: 32, scope: !127)
!152 = !DILocalVariable(name: "replace", scope: !127, file: !45, line: 77, type: !42)
!153 = !DILocation(line: 77, column: 19, scope: !127)
!154 = !DILocalVariable(name: "connectSocket", scope: !127, file: !45, line: 78, type: !23)
!155 = !DILocation(line: 78, column: 20, scope: !127)
!156 = !DILocalVariable(name: "dataLen", scope: !127, file: !45, line: 79, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!159 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocation(line: 79, column: 20, scope: !127)
!161 = !DILocation(line: 79, column: 37, scope: !127)
!162 = !DILocation(line: 79, column: 30, scope: !127)
!163 = !DILocation(line: 80, column: 13, scope: !127)
!164 = !DILocation(line: 90, column: 33, scope: !165)
!165 = distinct !DILexicalBlock(scope: !127, file: !45, line: 81, column: 13)
!166 = !DILocation(line: 90, column: 31, scope: !165)
!167 = !DILocation(line: 91, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !45, line: 91, column: 21)
!169 = !DILocation(line: 91, column: 35, scope: !168)
!170 = !DILocation(line: 91, column: 21, scope: !165)
!171 = !DILocation(line: 93, column: 21, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 92, column: 17)
!173 = !DILocation(line: 95, column: 17, scope: !165)
!174 = !DILocation(line: 96, column: 25, scope: !165)
!175 = !DILocation(line: 96, column: 36, scope: !165)
!176 = !DILocation(line: 97, column: 43, scope: !165)
!177 = !DILocation(line: 97, column: 25, scope: !165)
!178 = !DILocation(line: 97, column: 34, scope: !165)
!179 = !DILocation(line: 97, column: 41, scope: !165)
!180 = !DILocation(line: 98, column: 36, scope: !165)
!181 = !DILocation(line: 98, column: 25, scope: !165)
!182 = !DILocation(line: 98, column: 34, scope: !165)
!183 = !DILocation(line: 99, column: 29, scope: !184)
!184 = distinct !DILexicalBlock(scope: !165, file: !45, line: 99, column: 21)
!185 = !DILocation(line: 99, column: 44, scope: !184)
!186 = !DILocation(line: 99, column: 21, scope: !184)
!187 = !DILocation(line: 99, column: 89, scope: !184)
!188 = !DILocation(line: 99, column: 21, scope: !165)
!189 = !DILocation(line: 101, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !45, line: 100, column: 17)
!191 = !DILocation(line: 106, column: 35, scope: !165)
!192 = !DILocation(line: 106, column: 59, scope: !165)
!193 = !DILocation(line: 106, column: 66, scope: !165)
!194 = !DILocation(line: 106, column: 64, scope: !165)
!195 = !DILocation(line: 106, column: 98, scope: !165)
!196 = !DILocation(line: 106, column: 96, scope: !165)
!197 = !DILocation(line: 106, column: 106, scope: !165)
!198 = !DILocation(line: 106, column: 89, scope: !165)
!199 = !DILocation(line: 106, column: 30, scope: !165)
!200 = !DILocation(line: 106, column: 28, scope: !165)
!201 = !DILocation(line: 107, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !165, file: !45, line: 107, column: 21)
!203 = !DILocation(line: 107, column: 32, scope: !202)
!204 = !DILocation(line: 107, column: 48, scope: !202)
!205 = !DILocation(line: 107, column: 51, scope: !202)
!206 = !DILocation(line: 107, column: 62, scope: !202)
!207 = !DILocation(line: 107, column: 21, scope: !165)
!208 = !DILocation(line: 109, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !45, line: 108, column: 17)
!210 = !DILocation(line: 112, column: 17, scope: !165)
!211 = !DILocation(line: 112, column: 22, scope: !165)
!212 = !DILocation(line: 112, column: 32, scope: !165)
!213 = !DILocation(line: 112, column: 43, scope: !165)
!214 = !DILocation(line: 112, column: 30, scope: !165)
!215 = !DILocation(line: 112, column: 59, scope: !165)
!216 = !DILocation(line: 114, column: 34, scope: !165)
!217 = !DILocation(line: 114, column: 27, scope: !165)
!218 = !DILocation(line: 114, column: 25, scope: !165)
!219 = !DILocation(line: 115, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !165, file: !45, line: 115, column: 21)
!221 = !DILocation(line: 115, column: 21, scope: !165)
!222 = !DILocation(line: 117, column: 22, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 116, column: 17)
!224 = !DILocation(line: 117, column: 30, scope: !223)
!225 = !DILocation(line: 118, column: 17, scope: !223)
!226 = !DILocation(line: 119, column: 34, scope: !165)
!227 = !DILocation(line: 119, column: 27, scope: !165)
!228 = !DILocation(line: 119, column: 25, scope: !165)
!229 = !DILocation(line: 120, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !165, file: !45, line: 120, column: 21)
!231 = !DILocation(line: 120, column: 21, scope: !165)
!232 = !DILocation(line: 122, column: 22, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !45, line: 121, column: 17)
!234 = !DILocation(line: 122, column: 30, scope: !233)
!235 = !DILocation(line: 123, column: 17, scope: !233)
!236 = !DILocation(line: 124, column: 13, scope: !165)
!237 = !DILocation(line: 126, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !127, file: !45, line: 126, column: 17)
!239 = !DILocation(line: 126, column: 31, scope: !238)
!240 = !DILocation(line: 126, column: 17, scope: !127)
!241 = !DILocation(line: 128, column: 30, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !45, line: 127, column: 13)
!243 = !DILocation(line: 128, column: 17, scope: !242)
!244 = !DILocation(line: 129, column: 13, scope: !242)
!245 = !DILocation(line: 137, column: 5, scope: !128)
!246 = !DILocation(line: 138, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !111, file: !45, line: 138, column: 8)
!248 = !DILocation(line: 138, column: 8, scope: !111)
!249 = !DILocalVariable(name: "i", scope: !250, file: !45, line: 141, type: !23)
!250 = distinct !DILexicalBlock(scope: !251, file: !45, line: 140, column: 9)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 139, column: 5)
!252 = !DILocation(line: 141, column: 17, scope: !250)
!253 = !DILocalVariable(name: "n", scope: !250, file: !45, line: 141, type: !23)
!254 = !DILocation(line: 141, column: 20, scope: !250)
!255 = !DILocalVariable(name: "intVariable", scope: !250, file: !45, line: 141, type: !23)
!256 = !DILocation(line: 141, column: 23, scope: !250)
!257 = !DILocation(line: 142, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !45, line: 142, column: 17)
!259 = !DILocation(line: 142, column: 17, scope: !258)
!260 = !DILocation(line: 142, column: 40, scope: !258)
!261 = !DILocation(line: 142, column: 17, scope: !250)
!262 = !DILocation(line: 145, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 143, column: 13)
!264 = !DILocation(line: 146, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !45, line: 146, column: 17)
!266 = !DILocation(line: 146, column: 22, scope: !265)
!267 = !DILocation(line: 146, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 146, column: 17)
!269 = !DILocation(line: 146, column: 33, scope: !268)
!270 = !DILocation(line: 146, column: 31, scope: !268)
!271 = !DILocation(line: 146, column: 17, scope: !265)
!272 = !DILocation(line: 149, column: 32, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 147, column: 17)
!274 = !DILocation(line: 150, column: 17, scope: !273)
!275 = !DILocation(line: 146, column: 37, scope: !268)
!276 = !DILocation(line: 146, column: 17, scope: !268)
!277 = distinct !{!277, !271, !278, !279}
!278 = !DILocation(line: 150, column: 17, scope: !265)
!279 = !{!"llvm.loop.mustprogress"}
!280 = !DILocation(line: 151, column: 30, scope: !263)
!281 = !DILocation(line: 151, column: 17, scope: !263)
!282 = !DILocation(line: 152, column: 13, scope: !263)
!283 = !DILocation(line: 154, column: 5, scope: !251)
!284 = !DILocation(line: 155, column: 1, scope: !111)
!285 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 162, type: !112, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!286 = !DILocalVariable(name: "data", scope: !285, file: !45, line: 164, type: !42)
!287 = !DILocation(line: 164, column: 12, scope: !285)
!288 = !DILocalVariable(name: "dataBuffer", scope: !285, file: !45, line: 165, type: !117)
!289 = !DILocation(line: 165, column: 10, scope: !285)
!290 = !DILocation(line: 166, column: 12, scope: !285)
!291 = !DILocation(line: 166, column: 10, scope: !285)
!292 = !DILocation(line: 167, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !45, line: 167, column: 8)
!294 = !DILocation(line: 167, column: 8, scope: !285)
!295 = !DILocalVariable(name: "recvResult", scope: !296, file: !45, line: 174, type: !23)
!296 = distinct !DILexicalBlock(scope: !297, file: !45, line: 169, column: 9)
!297 = distinct !DILexicalBlock(scope: !293, file: !45, line: 168, column: 5)
!298 = !DILocation(line: 174, column: 17, scope: !296)
!299 = !DILocalVariable(name: "service", scope: !296, file: !45, line: 175, type: !131)
!300 = !DILocation(line: 175, column: 32, scope: !296)
!301 = !DILocalVariable(name: "replace", scope: !296, file: !45, line: 176, type: !42)
!302 = !DILocation(line: 176, column: 19, scope: !296)
!303 = !DILocalVariable(name: "connectSocket", scope: !296, file: !45, line: 177, type: !23)
!304 = !DILocation(line: 177, column: 20, scope: !296)
!305 = !DILocalVariable(name: "dataLen", scope: !296, file: !45, line: 178, type: !157)
!306 = !DILocation(line: 178, column: 20, scope: !296)
!307 = !DILocation(line: 178, column: 37, scope: !296)
!308 = !DILocation(line: 178, column: 30, scope: !296)
!309 = !DILocation(line: 179, column: 13, scope: !296)
!310 = !DILocation(line: 189, column: 33, scope: !311)
!311 = distinct !DILexicalBlock(scope: !296, file: !45, line: 180, column: 13)
!312 = !DILocation(line: 189, column: 31, scope: !311)
!313 = !DILocation(line: 190, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !45, line: 190, column: 21)
!315 = !DILocation(line: 190, column: 35, scope: !314)
!316 = !DILocation(line: 190, column: 21, scope: !311)
!317 = !DILocation(line: 192, column: 21, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 191, column: 17)
!319 = !DILocation(line: 194, column: 17, scope: !311)
!320 = !DILocation(line: 195, column: 25, scope: !311)
!321 = !DILocation(line: 195, column: 36, scope: !311)
!322 = !DILocation(line: 196, column: 43, scope: !311)
!323 = !DILocation(line: 196, column: 25, scope: !311)
!324 = !DILocation(line: 196, column: 34, scope: !311)
!325 = !DILocation(line: 196, column: 41, scope: !311)
!326 = !DILocation(line: 197, column: 36, scope: !311)
!327 = !DILocation(line: 197, column: 25, scope: !311)
!328 = !DILocation(line: 197, column: 34, scope: !311)
!329 = !DILocation(line: 198, column: 29, scope: !330)
!330 = distinct !DILexicalBlock(scope: !311, file: !45, line: 198, column: 21)
!331 = !DILocation(line: 198, column: 44, scope: !330)
!332 = !DILocation(line: 198, column: 21, scope: !330)
!333 = !DILocation(line: 198, column: 89, scope: !330)
!334 = !DILocation(line: 198, column: 21, scope: !311)
!335 = !DILocation(line: 200, column: 21, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !45, line: 199, column: 17)
!337 = !DILocation(line: 205, column: 35, scope: !311)
!338 = !DILocation(line: 205, column: 59, scope: !311)
!339 = !DILocation(line: 205, column: 66, scope: !311)
!340 = !DILocation(line: 205, column: 64, scope: !311)
!341 = !DILocation(line: 205, column: 98, scope: !311)
!342 = !DILocation(line: 205, column: 96, scope: !311)
!343 = !DILocation(line: 205, column: 106, scope: !311)
!344 = !DILocation(line: 205, column: 89, scope: !311)
!345 = !DILocation(line: 205, column: 30, scope: !311)
!346 = !DILocation(line: 205, column: 28, scope: !311)
!347 = !DILocation(line: 206, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !311, file: !45, line: 206, column: 21)
!349 = !DILocation(line: 206, column: 32, scope: !348)
!350 = !DILocation(line: 206, column: 48, scope: !348)
!351 = !DILocation(line: 206, column: 51, scope: !348)
!352 = !DILocation(line: 206, column: 62, scope: !348)
!353 = !DILocation(line: 206, column: 21, scope: !311)
!354 = !DILocation(line: 208, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !45, line: 207, column: 17)
!356 = !DILocation(line: 211, column: 17, scope: !311)
!357 = !DILocation(line: 211, column: 22, scope: !311)
!358 = !DILocation(line: 211, column: 32, scope: !311)
!359 = !DILocation(line: 211, column: 43, scope: !311)
!360 = !DILocation(line: 211, column: 30, scope: !311)
!361 = !DILocation(line: 211, column: 59, scope: !311)
!362 = !DILocation(line: 213, column: 34, scope: !311)
!363 = !DILocation(line: 213, column: 27, scope: !311)
!364 = !DILocation(line: 213, column: 25, scope: !311)
!365 = !DILocation(line: 214, column: 21, scope: !366)
!366 = distinct !DILexicalBlock(scope: !311, file: !45, line: 214, column: 21)
!367 = !DILocation(line: 214, column: 21, scope: !311)
!368 = !DILocation(line: 216, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !45, line: 215, column: 17)
!370 = !DILocation(line: 216, column: 30, scope: !369)
!371 = !DILocation(line: 217, column: 17, scope: !369)
!372 = !DILocation(line: 218, column: 34, scope: !311)
!373 = !DILocation(line: 218, column: 27, scope: !311)
!374 = !DILocation(line: 218, column: 25, scope: !311)
!375 = !DILocation(line: 219, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !311, file: !45, line: 219, column: 21)
!377 = !DILocation(line: 219, column: 21, scope: !311)
!378 = !DILocation(line: 221, column: 22, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !45, line: 220, column: 17)
!380 = !DILocation(line: 221, column: 30, scope: !379)
!381 = !DILocation(line: 222, column: 17, scope: !379)
!382 = !DILocation(line: 223, column: 13, scope: !311)
!383 = !DILocation(line: 225, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !296, file: !45, line: 225, column: 17)
!385 = !DILocation(line: 225, column: 31, scope: !384)
!386 = !DILocation(line: 225, column: 17, scope: !296)
!387 = !DILocation(line: 227, column: 30, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !45, line: 226, column: 13)
!389 = !DILocation(line: 227, column: 17, scope: !388)
!390 = !DILocation(line: 228, column: 13, scope: !388)
!391 = !DILocation(line: 236, column: 5, scope: !297)
!392 = !DILocation(line: 237, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !285, file: !45, line: 237, column: 8)
!394 = !DILocation(line: 237, column: 8, scope: !285)
!395 = !DILocation(line: 240, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !45, line: 238, column: 5)
!397 = !DILocation(line: 241, column: 5, scope: !396)
!398 = !DILocalVariable(name: "i", scope: !399, file: !45, line: 245, type: !23)
!399 = distinct !DILexicalBlock(scope: !400, file: !45, line: 244, column: 9)
!400 = distinct !DILexicalBlock(scope: !393, file: !45, line: 243, column: 5)
!401 = !DILocation(line: 245, column: 17, scope: !399)
!402 = !DILocalVariable(name: "n", scope: !399, file: !45, line: 245, type: !23)
!403 = !DILocation(line: 245, column: 20, scope: !399)
!404 = !DILocalVariable(name: "intVariable", scope: !399, file: !45, line: 245, type: !23)
!405 = !DILocation(line: 245, column: 23, scope: !399)
!406 = !DILocation(line: 246, column: 24, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !45, line: 246, column: 17)
!408 = !DILocation(line: 246, column: 17, scope: !407)
!409 = !DILocation(line: 246, column: 40, scope: !407)
!410 = !DILocation(line: 246, column: 17, scope: !399)
!411 = !DILocation(line: 249, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !45, line: 249, column: 21)
!413 = distinct !DILexicalBlock(scope: !407, file: !45, line: 247, column: 13)
!414 = !DILocation(line: 249, column: 23, scope: !412)
!415 = !DILocation(line: 249, column: 21, scope: !413)
!416 = !DILocation(line: 251, column: 33, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !45, line: 250, column: 17)
!418 = !DILocation(line: 252, column: 28, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !45, line: 252, column: 21)
!420 = !DILocation(line: 252, column: 26, scope: !419)
!421 = !DILocation(line: 252, column: 33, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !45, line: 252, column: 21)
!423 = !DILocation(line: 252, column: 37, scope: !422)
!424 = !DILocation(line: 252, column: 35, scope: !422)
!425 = !DILocation(line: 252, column: 21, scope: !419)
!426 = !DILocation(line: 255, column: 36, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !45, line: 253, column: 21)
!428 = !DILocation(line: 256, column: 21, scope: !427)
!429 = !DILocation(line: 252, column: 41, scope: !422)
!430 = !DILocation(line: 252, column: 21, scope: !422)
!431 = distinct !{!431, !425, !432, !279}
!432 = !DILocation(line: 256, column: 21, scope: !419)
!433 = !DILocation(line: 257, column: 34, scope: !417)
!434 = !DILocation(line: 257, column: 21, scope: !417)
!435 = !DILocation(line: 258, column: 17, scope: !417)
!436 = !DILocation(line: 259, column: 13, scope: !413)
!437 = !DILocation(line: 262, column: 1, scope: !285)
!438 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 265, type: !112, scopeLine: 266, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!439 = !DILocalVariable(name: "data", scope: !438, file: !45, line: 267, type: !42)
!440 = !DILocation(line: 267, column: 12, scope: !438)
!441 = !DILocalVariable(name: "dataBuffer", scope: !438, file: !45, line: 268, type: !117)
!442 = !DILocation(line: 268, column: 10, scope: !438)
!443 = !DILocation(line: 269, column: 12, scope: !438)
!444 = !DILocation(line: 269, column: 10, scope: !438)
!445 = !DILocation(line: 270, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !45, line: 270, column: 8)
!447 = !DILocation(line: 270, column: 8, scope: !438)
!448 = !DILocalVariable(name: "recvResult", scope: !449, file: !45, line: 277, type: !23)
!449 = distinct !DILexicalBlock(scope: !450, file: !45, line: 272, column: 9)
!450 = distinct !DILexicalBlock(scope: !446, file: !45, line: 271, column: 5)
!451 = !DILocation(line: 277, column: 17, scope: !449)
!452 = !DILocalVariable(name: "service", scope: !449, file: !45, line: 278, type: !131)
!453 = !DILocation(line: 278, column: 32, scope: !449)
!454 = !DILocalVariable(name: "replace", scope: !449, file: !45, line: 279, type: !42)
!455 = !DILocation(line: 279, column: 19, scope: !449)
!456 = !DILocalVariable(name: "connectSocket", scope: !449, file: !45, line: 280, type: !23)
!457 = !DILocation(line: 280, column: 20, scope: !449)
!458 = !DILocalVariable(name: "dataLen", scope: !449, file: !45, line: 281, type: !157)
!459 = !DILocation(line: 281, column: 20, scope: !449)
!460 = !DILocation(line: 281, column: 37, scope: !449)
!461 = !DILocation(line: 281, column: 30, scope: !449)
!462 = !DILocation(line: 282, column: 13, scope: !449)
!463 = !DILocation(line: 292, column: 33, scope: !464)
!464 = distinct !DILexicalBlock(scope: !449, file: !45, line: 283, column: 13)
!465 = !DILocation(line: 292, column: 31, scope: !464)
!466 = !DILocation(line: 293, column: 21, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !45, line: 293, column: 21)
!468 = !DILocation(line: 293, column: 35, scope: !467)
!469 = !DILocation(line: 293, column: 21, scope: !464)
!470 = !DILocation(line: 295, column: 21, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !45, line: 294, column: 17)
!472 = !DILocation(line: 297, column: 17, scope: !464)
!473 = !DILocation(line: 298, column: 25, scope: !464)
!474 = !DILocation(line: 298, column: 36, scope: !464)
!475 = !DILocation(line: 299, column: 43, scope: !464)
!476 = !DILocation(line: 299, column: 25, scope: !464)
!477 = !DILocation(line: 299, column: 34, scope: !464)
!478 = !DILocation(line: 299, column: 41, scope: !464)
!479 = !DILocation(line: 300, column: 36, scope: !464)
!480 = !DILocation(line: 300, column: 25, scope: !464)
!481 = !DILocation(line: 300, column: 34, scope: !464)
!482 = !DILocation(line: 301, column: 29, scope: !483)
!483 = distinct !DILexicalBlock(scope: !464, file: !45, line: 301, column: 21)
!484 = !DILocation(line: 301, column: 44, scope: !483)
!485 = !DILocation(line: 301, column: 21, scope: !483)
!486 = !DILocation(line: 301, column: 89, scope: !483)
!487 = !DILocation(line: 301, column: 21, scope: !464)
!488 = !DILocation(line: 303, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !45, line: 302, column: 17)
!490 = !DILocation(line: 308, column: 35, scope: !464)
!491 = !DILocation(line: 308, column: 59, scope: !464)
!492 = !DILocation(line: 308, column: 66, scope: !464)
!493 = !DILocation(line: 308, column: 64, scope: !464)
!494 = !DILocation(line: 308, column: 98, scope: !464)
!495 = !DILocation(line: 308, column: 96, scope: !464)
!496 = !DILocation(line: 308, column: 106, scope: !464)
!497 = !DILocation(line: 308, column: 89, scope: !464)
!498 = !DILocation(line: 308, column: 30, scope: !464)
!499 = !DILocation(line: 308, column: 28, scope: !464)
!500 = !DILocation(line: 309, column: 21, scope: !501)
!501 = distinct !DILexicalBlock(scope: !464, file: !45, line: 309, column: 21)
!502 = !DILocation(line: 309, column: 32, scope: !501)
!503 = !DILocation(line: 309, column: 48, scope: !501)
!504 = !DILocation(line: 309, column: 51, scope: !501)
!505 = !DILocation(line: 309, column: 62, scope: !501)
!506 = !DILocation(line: 309, column: 21, scope: !464)
!507 = !DILocation(line: 311, column: 21, scope: !508)
!508 = distinct !DILexicalBlock(scope: !501, file: !45, line: 310, column: 17)
!509 = !DILocation(line: 314, column: 17, scope: !464)
!510 = !DILocation(line: 314, column: 22, scope: !464)
!511 = !DILocation(line: 314, column: 32, scope: !464)
!512 = !DILocation(line: 314, column: 43, scope: !464)
!513 = !DILocation(line: 314, column: 30, scope: !464)
!514 = !DILocation(line: 314, column: 59, scope: !464)
!515 = !DILocation(line: 316, column: 34, scope: !464)
!516 = !DILocation(line: 316, column: 27, scope: !464)
!517 = !DILocation(line: 316, column: 25, scope: !464)
!518 = !DILocation(line: 317, column: 21, scope: !519)
!519 = distinct !DILexicalBlock(scope: !464, file: !45, line: 317, column: 21)
!520 = !DILocation(line: 317, column: 21, scope: !464)
!521 = !DILocation(line: 319, column: 22, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !45, line: 318, column: 17)
!523 = !DILocation(line: 319, column: 30, scope: !522)
!524 = !DILocation(line: 320, column: 17, scope: !522)
!525 = !DILocation(line: 321, column: 34, scope: !464)
!526 = !DILocation(line: 321, column: 27, scope: !464)
!527 = !DILocation(line: 321, column: 25, scope: !464)
!528 = !DILocation(line: 322, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !464, file: !45, line: 322, column: 21)
!530 = !DILocation(line: 322, column: 21, scope: !464)
!531 = !DILocation(line: 324, column: 22, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !45, line: 323, column: 17)
!533 = !DILocation(line: 324, column: 30, scope: !532)
!534 = !DILocation(line: 325, column: 17, scope: !532)
!535 = !DILocation(line: 326, column: 13, scope: !464)
!536 = !DILocation(line: 328, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !449, file: !45, line: 328, column: 17)
!538 = !DILocation(line: 328, column: 31, scope: !537)
!539 = !DILocation(line: 328, column: 17, scope: !449)
!540 = !DILocation(line: 330, column: 30, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !45, line: 329, column: 13)
!542 = !DILocation(line: 330, column: 17, scope: !541)
!543 = !DILocation(line: 331, column: 13, scope: !541)
!544 = !DILocation(line: 339, column: 5, scope: !450)
!545 = !DILocation(line: 340, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !438, file: !45, line: 340, column: 8)
!547 = !DILocation(line: 340, column: 8, scope: !438)
!548 = !DILocalVariable(name: "i", scope: !549, file: !45, line: 343, type: !23)
!549 = distinct !DILexicalBlock(scope: !550, file: !45, line: 342, column: 9)
!550 = distinct !DILexicalBlock(scope: !546, file: !45, line: 341, column: 5)
!551 = !DILocation(line: 343, column: 17, scope: !549)
!552 = !DILocalVariable(name: "n", scope: !549, file: !45, line: 343, type: !23)
!553 = !DILocation(line: 343, column: 20, scope: !549)
!554 = !DILocalVariable(name: "intVariable", scope: !549, file: !45, line: 343, type: !23)
!555 = !DILocation(line: 343, column: 23, scope: !549)
!556 = !DILocation(line: 344, column: 24, scope: !557)
!557 = distinct !DILexicalBlock(scope: !549, file: !45, line: 344, column: 17)
!558 = !DILocation(line: 344, column: 17, scope: !557)
!559 = !DILocation(line: 344, column: 40, scope: !557)
!560 = !DILocation(line: 344, column: 17, scope: !549)
!561 = !DILocation(line: 347, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !45, line: 347, column: 21)
!563 = distinct !DILexicalBlock(scope: !557, file: !45, line: 345, column: 13)
!564 = !DILocation(line: 347, column: 23, scope: !562)
!565 = !DILocation(line: 347, column: 21, scope: !563)
!566 = !DILocation(line: 349, column: 33, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !45, line: 348, column: 17)
!568 = !DILocation(line: 350, column: 28, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !45, line: 350, column: 21)
!570 = !DILocation(line: 350, column: 26, scope: !569)
!571 = !DILocation(line: 350, column: 33, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !45, line: 350, column: 21)
!573 = !DILocation(line: 350, column: 37, scope: !572)
!574 = !DILocation(line: 350, column: 35, scope: !572)
!575 = !DILocation(line: 350, column: 21, scope: !569)
!576 = !DILocation(line: 353, column: 36, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !45, line: 351, column: 21)
!578 = !DILocation(line: 354, column: 21, scope: !577)
!579 = !DILocation(line: 350, column: 41, scope: !572)
!580 = !DILocation(line: 350, column: 21, scope: !572)
!581 = distinct !{!581, !575, !582, !279}
!582 = !DILocation(line: 354, column: 21, scope: !569)
!583 = !DILocation(line: 355, column: 34, scope: !567)
!584 = !DILocation(line: 355, column: 21, scope: !567)
!585 = !DILocation(line: 356, column: 17, scope: !567)
!586 = !DILocation(line: 357, column: 13, scope: !563)
!587 = !DILocation(line: 359, column: 5, scope: !550)
!588 = !DILocation(line: 360, column: 1, scope: !438)
!589 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 363, type: !112, scopeLine: 364, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!590 = !DILocalVariable(name: "data", scope: !589, file: !45, line: 365, type: !42)
!591 = !DILocation(line: 365, column: 12, scope: !589)
!592 = !DILocalVariable(name: "dataBuffer", scope: !589, file: !45, line: 366, type: !117)
!593 = !DILocation(line: 366, column: 10, scope: !589)
!594 = !DILocation(line: 367, column: 12, scope: !589)
!595 = !DILocation(line: 367, column: 10, scope: !589)
!596 = !DILocation(line: 368, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !45, line: 368, column: 8)
!598 = !DILocation(line: 368, column: 8, scope: !589)
!599 = !DILocation(line: 371, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !45, line: 369, column: 5)
!601 = !DILocation(line: 372, column: 5, scope: !600)
!602 = !DILocation(line: 376, column: 16, scope: !603)
!603 = distinct !DILexicalBlock(scope: !597, file: !45, line: 374, column: 5)
!604 = !DILocation(line: 376, column: 9, scope: !603)
!605 = !DILocation(line: 378, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !589, file: !45, line: 378, column: 8)
!607 = !DILocation(line: 378, column: 8, scope: !589)
!608 = !DILocalVariable(name: "i", scope: !609, file: !45, line: 381, type: !23)
!609 = distinct !DILexicalBlock(scope: !610, file: !45, line: 380, column: 9)
!610 = distinct !DILexicalBlock(scope: !606, file: !45, line: 379, column: 5)
!611 = !DILocation(line: 381, column: 17, scope: !609)
!612 = !DILocalVariable(name: "n", scope: !609, file: !45, line: 381, type: !23)
!613 = !DILocation(line: 381, column: 20, scope: !609)
!614 = !DILocalVariable(name: "intVariable", scope: !609, file: !45, line: 381, type: !23)
!615 = !DILocation(line: 381, column: 23, scope: !609)
!616 = !DILocation(line: 382, column: 24, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !45, line: 382, column: 17)
!618 = !DILocation(line: 382, column: 17, scope: !617)
!619 = !DILocation(line: 382, column: 40, scope: !617)
!620 = !DILocation(line: 382, column: 17, scope: !609)
!621 = !DILocation(line: 385, column: 29, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !45, line: 383, column: 13)
!623 = !DILocation(line: 386, column: 24, scope: !624)
!624 = distinct !DILexicalBlock(scope: !622, file: !45, line: 386, column: 17)
!625 = !DILocation(line: 386, column: 22, scope: !624)
!626 = !DILocation(line: 386, column: 29, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !45, line: 386, column: 17)
!628 = !DILocation(line: 386, column: 33, scope: !627)
!629 = !DILocation(line: 386, column: 31, scope: !627)
!630 = !DILocation(line: 386, column: 17, scope: !624)
!631 = !DILocation(line: 389, column: 32, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !45, line: 387, column: 17)
!633 = !DILocation(line: 390, column: 17, scope: !632)
!634 = !DILocation(line: 386, column: 37, scope: !627)
!635 = !DILocation(line: 386, column: 17, scope: !627)
!636 = distinct !{!636, !630, !637, !279}
!637 = !DILocation(line: 390, column: 17, scope: !624)
!638 = !DILocation(line: 391, column: 30, scope: !622)
!639 = !DILocation(line: 391, column: 17, scope: !622)
!640 = !DILocation(line: 392, column: 13, scope: !622)
!641 = !DILocation(line: 394, column: 5, scope: !610)
!642 = !DILocation(line: 395, column: 1, scope: !589)
!643 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 398, type: !112, scopeLine: 399, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!644 = !DILocalVariable(name: "data", scope: !643, file: !45, line: 400, type: !42)
!645 = !DILocation(line: 400, column: 12, scope: !643)
!646 = !DILocalVariable(name: "dataBuffer", scope: !643, file: !45, line: 401, type: !117)
!647 = !DILocation(line: 401, column: 10, scope: !643)
!648 = !DILocation(line: 402, column: 12, scope: !643)
!649 = !DILocation(line: 402, column: 10, scope: !643)
!650 = !DILocation(line: 403, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !643, file: !45, line: 403, column: 8)
!652 = !DILocation(line: 403, column: 8, scope: !643)
!653 = !DILocation(line: 406, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !45, line: 404, column: 5)
!655 = !DILocation(line: 406, column: 9, scope: !654)
!656 = !DILocation(line: 407, column: 5, scope: !654)
!657 = !DILocation(line: 408, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !643, file: !45, line: 408, column: 8)
!659 = !DILocation(line: 408, column: 8, scope: !643)
!660 = !DILocalVariable(name: "i", scope: !661, file: !45, line: 411, type: !23)
!661 = distinct !DILexicalBlock(scope: !662, file: !45, line: 410, column: 9)
!662 = distinct !DILexicalBlock(scope: !658, file: !45, line: 409, column: 5)
!663 = !DILocation(line: 411, column: 17, scope: !661)
!664 = !DILocalVariable(name: "n", scope: !661, file: !45, line: 411, type: !23)
!665 = !DILocation(line: 411, column: 20, scope: !661)
!666 = !DILocalVariable(name: "intVariable", scope: !661, file: !45, line: 411, type: !23)
!667 = !DILocation(line: 411, column: 23, scope: !661)
!668 = !DILocation(line: 412, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !661, file: !45, line: 412, column: 17)
!670 = !DILocation(line: 412, column: 17, scope: !669)
!671 = !DILocation(line: 412, column: 40, scope: !669)
!672 = !DILocation(line: 412, column: 17, scope: !661)
!673 = !DILocation(line: 415, column: 29, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !45, line: 413, column: 13)
!675 = !DILocation(line: 416, column: 24, scope: !676)
!676 = distinct !DILexicalBlock(scope: !674, file: !45, line: 416, column: 17)
!677 = !DILocation(line: 416, column: 22, scope: !676)
!678 = !DILocation(line: 416, column: 29, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !45, line: 416, column: 17)
!680 = !DILocation(line: 416, column: 33, scope: !679)
!681 = !DILocation(line: 416, column: 31, scope: !679)
!682 = !DILocation(line: 416, column: 17, scope: !676)
!683 = !DILocation(line: 419, column: 32, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !45, line: 417, column: 17)
!685 = !DILocation(line: 420, column: 17, scope: !684)
!686 = !DILocation(line: 416, column: 37, scope: !679)
!687 = !DILocation(line: 416, column: 17, scope: !679)
!688 = distinct !{!688, !682, !689, !279}
!689 = !DILocation(line: 420, column: 17, scope: !676)
!690 = !DILocation(line: 421, column: 30, scope: !674)
!691 = !DILocation(line: 421, column: 17, scope: !674)
!692 = !DILocation(line: 422, column: 13, scope: !674)
!693 = !DILocation(line: 424, column: 5, scope: !662)
!694 = !DILocation(line: 425, column: 1, scope: !643)
!695 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08_good", scope: !45, file: !45, line: 427, type: !112, scopeLine: 428, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!696 = !DILocation(line: 429, column: 5, scope: !695)
!697 = !DILocation(line: 430, column: 5, scope: !695)
!698 = !DILocation(line: 431, column: 5, scope: !695)
!699 = !DILocation(line: 432, column: 5, scope: !695)
!700 = !DILocation(line: 433, column: 1, scope: !695)
!701 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !702, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !42}
!704 = !DILocalVariable(name: "line", arg: 1, scope: !701, file: !3, line: 11, type: !42)
!705 = !DILocation(line: 11, column: 25, scope: !701)
!706 = !DILocation(line: 13, column: 1, scope: !701)
!707 = !DILocation(line: 14, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !701, file: !3, line: 14, column: 8)
!709 = !DILocation(line: 14, column: 13, scope: !708)
!710 = !DILocation(line: 14, column: 8, scope: !701)
!711 = !DILocation(line: 16, column: 24, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !3, line: 15, column: 5)
!713 = !DILocation(line: 16, column: 9, scope: !712)
!714 = !DILocation(line: 17, column: 5, scope: !712)
!715 = !DILocation(line: 18, column: 5, scope: !701)
!716 = !DILocation(line: 19, column: 1, scope: !701)
!717 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !702, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!718 = !DILocalVariable(name: "line", arg: 1, scope: !717, file: !3, line: 20, type: !42)
!719 = !DILocation(line: 20, column: 29, scope: !717)
!720 = !DILocation(line: 22, column: 8, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !3, line: 22, column: 8)
!722 = !DILocation(line: 22, column: 13, scope: !721)
!723 = !DILocation(line: 22, column: 8, scope: !717)
!724 = !DILocation(line: 24, column: 24, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 23, column: 5)
!726 = !DILocation(line: 24, column: 9, scope: !725)
!727 = !DILocation(line: 25, column: 5, scope: !725)
!728 = !DILocation(line: 26, column: 1, scope: !717)
!729 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !730, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !158, line: 74, baseType: !23)
!734 = !DILocalVariable(name: "line", arg: 1, scope: !729, file: !3, line: 27, type: !732)
!735 = !DILocation(line: 27, column: 29, scope: !729)
!736 = !DILocation(line: 29, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !3, line: 29, column: 8)
!738 = !DILocation(line: 29, column: 13, scope: !737)
!739 = !DILocation(line: 29, column: 8, scope: !729)
!740 = !DILocation(line: 31, column: 27, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 30, column: 5)
!742 = !DILocation(line: 31, column: 9, scope: !741)
!743 = !DILocation(line: 32, column: 5, scope: !741)
!744 = !DILocation(line: 33, column: 1, scope: !729)
!745 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !746, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !23}
!748 = !DILocalVariable(name: "intNumber", arg: 1, scope: !745, file: !3, line: 35, type: !23)
!749 = !DILocation(line: 35, column: 24, scope: !745)
!750 = !DILocation(line: 37, column: 20, scope: !745)
!751 = !DILocation(line: 37, column: 5, scope: !745)
!752 = !DILocation(line: 38, column: 1, scope: !745)
!753 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !754, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756}
!756 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!757 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !753, file: !3, line: 40, type: !756)
!758 = !DILocation(line: 40, column: 28, scope: !753)
!759 = !DILocation(line: 42, column: 21, scope: !753)
!760 = !DILocation(line: 42, column: 5, scope: !753)
!761 = !DILocation(line: 43, column: 1, scope: !753)
!762 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !763, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765}
!765 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!766 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !762, file: !3, line: 45, type: !765)
!767 = !DILocation(line: 45, column: 28, scope: !762)
!768 = !DILocation(line: 47, column: 20, scope: !762)
!769 = !DILocation(line: 47, column: 5, scope: !762)
!770 = !DILocation(line: 48, column: 1, scope: !762)
!771 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !772, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774}
!774 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!775 = !DILocalVariable(name: "longNumber", arg: 1, scope: !771, file: !3, line: 50, type: !774)
!776 = !DILocation(line: 50, column: 26, scope: !771)
!777 = !DILocation(line: 52, column: 21, scope: !771)
!778 = !DILocation(line: 52, column: 5, scope: !771)
!779 = !DILocation(line: 53, column: 1, scope: !771)
!780 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !781, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !783}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !784, line: 27, baseType: !785)
!784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !139, line: 44, baseType: !774)
!786 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !780, file: !3, line: 55, type: !783)
!787 = !DILocation(line: 55, column: 33, scope: !780)
!788 = !DILocation(line: 57, column: 29, scope: !780)
!789 = !DILocation(line: 57, column: 5, scope: !780)
!790 = !DILocation(line: 58, column: 1, scope: !780)
!791 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !792, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !157}
!794 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !791, file: !3, line: 60, type: !157)
!795 = !DILocation(line: 60, column: 29, scope: !791)
!796 = !DILocation(line: 62, column: 21, scope: !791)
!797 = !DILocation(line: 62, column: 5, scope: !791)
!798 = !DILocation(line: 63, column: 1, scope: !791)
!799 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !800, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !43}
!802 = !DILocalVariable(name: "charHex", arg: 1, scope: !799, file: !3, line: 65, type: !43)
!803 = !DILocation(line: 65, column: 29, scope: !799)
!804 = !DILocation(line: 67, column: 22, scope: !799)
!805 = !DILocation(line: 67, column: 5, scope: !799)
!806 = !DILocation(line: 68, column: 1, scope: !799)
!807 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !808, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !733}
!810 = !DILocalVariable(name: "wideChar", arg: 1, scope: !807, file: !3, line: 70, type: !733)
!811 = !DILocation(line: 70, column: 29, scope: !807)
!812 = !DILocalVariable(name: "s", scope: !807, file: !3, line: 74, type: !813)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 64, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 2)
!816 = !DILocation(line: 74, column: 13, scope: !807)
!817 = !DILocation(line: 75, column: 16, scope: !807)
!818 = !DILocation(line: 75, column: 9, scope: !807)
!819 = !DILocation(line: 75, column: 14, scope: !807)
!820 = !DILocation(line: 76, column: 9, scope: !807)
!821 = !DILocation(line: 76, column: 14, scope: !807)
!822 = !DILocation(line: 77, column: 21, scope: !807)
!823 = !DILocation(line: 77, column: 5, scope: !807)
!824 = !DILocation(line: 78, column: 1, scope: !807)
!825 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !826, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !7}
!828 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !825, file: !3, line: 80, type: !7)
!829 = !DILocation(line: 80, column: 33, scope: !825)
!830 = !DILocation(line: 82, column: 20, scope: !825)
!831 = !DILocation(line: 82, column: 5, scope: !825)
!832 = !DILocation(line: 83, column: 1, scope: !825)
!833 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !834, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !25}
!836 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !833, file: !3, line: 85, type: !25)
!837 = !DILocation(line: 85, column: 45, scope: !833)
!838 = !DILocation(line: 87, column: 22, scope: !833)
!839 = !DILocation(line: 87, column: 5, scope: !833)
!840 = !DILocation(line: 88, column: 1, scope: !833)
!841 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !842, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !844}
!844 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!845 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !841, file: !3, line: 90, type: !844)
!846 = !DILocation(line: 90, column: 29, scope: !841)
!847 = !DILocation(line: 92, column: 20, scope: !841)
!848 = !DILocation(line: 92, column: 5, scope: !841)
!849 = !DILocation(line: 93, column: 1, scope: !841)
!850 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !851, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !855, line: 100, baseType: !856)
!855 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_937/source_code")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !855, line: 96, size: 64, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !856, file: !855, line: 98, baseType: !23, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !856, file: !855, line: 99, baseType: !23, size: 32, offset: 32)
!860 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !850, file: !3, line: 95, type: !853)
!861 = !DILocation(line: 95, column: 40, scope: !850)
!862 = !DILocation(line: 97, column: 26, scope: !850)
!863 = !DILocation(line: 97, column: 47, scope: !850)
!864 = !DILocation(line: 97, column: 55, scope: !850)
!865 = !DILocation(line: 97, column: 76, scope: !850)
!866 = !DILocation(line: 97, column: 5, scope: !850)
!867 = !DILocation(line: 98, column: 1, scope: !850)
!868 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !869, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !871, !157}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!872 = !DILocalVariable(name: "bytes", arg: 1, scope: !868, file: !3, line: 100, type: !871)
!873 = !DILocation(line: 100, column: 38, scope: !868)
!874 = !DILocalVariable(name: "numBytes", arg: 2, scope: !868, file: !3, line: 100, type: !157)
!875 = !DILocation(line: 100, column: 52, scope: !868)
!876 = !DILocalVariable(name: "i", scope: !868, file: !3, line: 102, type: !157)
!877 = !DILocation(line: 102, column: 12, scope: !868)
!878 = !DILocation(line: 103, column: 12, scope: !879)
!879 = distinct !DILexicalBlock(scope: !868, file: !3, line: 103, column: 5)
!880 = !DILocation(line: 103, column: 10, scope: !879)
!881 = !DILocation(line: 103, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 103, column: 5)
!883 = !DILocation(line: 103, column: 21, scope: !882)
!884 = !DILocation(line: 103, column: 19, scope: !882)
!885 = !DILocation(line: 103, column: 5, scope: !879)
!886 = !DILocation(line: 105, column: 24, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 104, column: 5)
!888 = !DILocation(line: 105, column: 30, scope: !887)
!889 = !DILocation(line: 105, column: 9, scope: !887)
!890 = !DILocation(line: 106, column: 5, scope: !887)
!891 = !DILocation(line: 103, column: 31, scope: !882)
!892 = !DILocation(line: 103, column: 5, scope: !882)
!893 = distinct !{!893, !885, !894, !279}
!894 = !DILocation(line: 106, column: 5, scope: !879)
!895 = !DILocation(line: 107, column: 5, scope: !868)
!896 = !DILocation(line: 108, column: 1, scope: !868)
!897 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !898, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DISubroutineType(types: !899)
!899 = !{!157, !871, !157, !42}
!900 = !DILocalVariable(name: "bytes", arg: 1, scope: !897, file: !3, line: 113, type: !871)
!901 = !DILocation(line: 113, column: 39, scope: !897)
!902 = !DILocalVariable(name: "numBytes", arg: 2, scope: !897, file: !3, line: 113, type: !157)
!903 = !DILocation(line: 113, column: 53, scope: !897)
!904 = !DILocalVariable(name: "hex", arg: 3, scope: !897, file: !3, line: 113, type: !42)
!905 = !DILocation(line: 113, column: 71, scope: !897)
!906 = !DILocalVariable(name: "numWritten", scope: !897, file: !3, line: 115, type: !157)
!907 = !DILocation(line: 115, column: 12, scope: !897)
!908 = !DILocation(line: 121, column: 5, scope: !897)
!909 = !DILocation(line: 121, column: 12, scope: !897)
!910 = !DILocation(line: 121, column: 25, scope: !897)
!911 = !DILocation(line: 121, column: 23, scope: !897)
!912 = !DILocation(line: 121, column: 34, scope: !897)
!913 = !DILocation(line: 121, column: 37, scope: !897)
!914 = !DILocation(line: 121, column: 67, scope: !897)
!915 = !DILocation(line: 121, column: 70, scope: !897)
!916 = !DILocation(line: 0, scope: !897)
!917 = !DILocalVariable(name: "byte", scope: !918, file: !3, line: 123, type: !23)
!918 = distinct !DILexicalBlock(scope: !897, file: !3, line: 122, column: 5)
!919 = !DILocation(line: 123, column: 13, scope: !918)
!920 = !DILocation(line: 124, column: 17, scope: !918)
!921 = !DILocation(line: 124, column: 25, scope: !918)
!922 = !DILocation(line: 124, column: 23, scope: !918)
!923 = !DILocation(line: 124, column: 9, scope: !918)
!924 = !DILocation(line: 125, column: 45, scope: !918)
!925 = !DILocation(line: 125, column: 29, scope: !918)
!926 = !DILocation(line: 125, column: 9, scope: !918)
!927 = !DILocation(line: 125, column: 15, scope: !918)
!928 = !DILocation(line: 125, column: 27, scope: !918)
!929 = !DILocation(line: 126, column: 9, scope: !918)
!930 = distinct !{!930, !908, !931, !279}
!931 = !DILocation(line: 127, column: 5, scope: !897)
!932 = !DILocation(line: 129, column: 12, scope: !897)
!933 = !DILocation(line: 129, column: 5, scope: !897)
!934 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !935, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!935 = !DISubroutineType(types: !936)
!936 = !{!157, !871, !157, !732}
!937 = !DILocalVariable(name: "bytes", arg: 1, scope: !934, file: !3, line: 135, type: !871)
!938 = !DILocation(line: 135, column: 41, scope: !934)
!939 = !DILocalVariable(name: "numBytes", arg: 2, scope: !934, file: !3, line: 135, type: !157)
!940 = !DILocation(line: 135, column: 55, scope: !934)
!941 = !DILocalVariable(name: "hex", arg: 3, scope: !934, file: !3, line: 135, type: !732)
!942 = !DILocation(line: 135, column: 76, scope: !934)
!943 = !DILocalVariable(name: "numWritten", scope: !934, file: !3, line: 137, type: !157)
!944 = !DILocation(line: 137, column: 12, scope: !934)
!945 = !DILocation(line: 143, column: 5, scope: !934)
!946 = !DILocation(line: 143, column: 12, scope: !934)
!947 = !DILocation(line: 143, column: 25, scope: !934)
!948 = !DILocation(line: 143, column: 23, scope: !934)
!949 = !DILocation(line: 143, column: 34, scope: !934)
!950 = !DILocation(line: 143, column: 47, scope: !934)
!951 = !DILocation(line: 143, column: 55, scope: !934)
!952 = !DILocation(line: 143, column: 53, scope: !934)
!953 = !DILocation(line: 143, column: 37, scope: !934)
!954 = !DILocation(line: 143, column: 68, scope: !934)
!955 = !DILocation(line: 143, column: 81, scope: !934)
!956 = !DILocation(line: 143, column: 89, scope: !934)
!957 = !DILocation(line: 143, column: 87, scope: !934)
!958 = !DILocation(line: 143, column: 100, scope: !934)
!959 = !DILocation(line: 143, column: 71, scope: !934)
!960 = !DILocation(line: 0, scope: !934)
!961 = !DILocalVariable(name: "byte", scope: !962, file: !3, line: 145, type: !23)
!962 = distinct !DILexicalBlock(scope: !934, file: !3, line: 144, column: 5)
!963 = !DILocation(line: 145, column: 13, scope: !962)
!964 = !DILocation(line: 146, column: 18, scope: !962)
!965 = !DILocation(line: 146, column: 26, scope: !962)
!966 = !DILocation(line: 146, column: 24, scope: !962)
!967 = !DILocation(line: 146, column: 9, scope: !962)
!968 = !DILocation(line: 147, column: 45, scope: !962)
!969 = !DILocation(line: 147, column: 29, scope: !962)
!970 = !DILocation(line: 147, column: 9, scope: !962)
!971 = !DILocation(line: 147, column: 15, scope: !962)
!972 = !DILocation(line: 147, column: 27, scope: !962)
!973 = !DILocation(line: 148, column: 9, scope: !962)
!974 = distinct !{!974, !945, !975, !279}
!975 = !DILocation(line: 149, column: 5, scope: !934)
!976 = !DILocation(line: 151, column: 12, scope: !934)
!977 = !DILocation(line: 151, column: 5, scope: !934)
!978 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !105, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!979 = !DILocation(line: 158, column: 5, scope: !978)
!980 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !105, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!981 = !DILocation(line: 163, column: 5, scope: !980)
!982 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !105, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!983 = !DILocation(line: 168, column: 13, scope: !982)
!984 = !DILocation(line: 168, column: 20, scope: !982)
!985 = !DILocation(line: 168, column: 5, scope: !982)
!986 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !112, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!987 = !DILocation(line: 187, column: 16, scope: !986)
!988 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !112, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!989 = !DILocation(line: 188, column: 16, scope: !988)
!990 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !112, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!991 = !DILocation(line: 189, column: 16, scope: !990)
!992 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !112, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!993 = !DILocation(line: 190, column: 16, scope: !992)
!994 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !112, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!995 = !DILocation(line: 191, column: 16, scope: !994)
!996 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !112, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!997 = !DILocation(line: 192, column: 16, scope: !996)
!998 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !112, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!999 = !DILocation(line: 193, column: 16, scope: !998)
!1000 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !112, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1001 = !DILocation(line: 194, column: 16, scope: !1000)
!1002 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !112, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1003 = !DILocation(line: 195, column: 16, scope: !1002)
!1004 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !112, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1005 = !DILocation(line: 198, column: 15, scope: !1004)
!1006 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !112, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1007 = !DILocation(line: 199, column: 15, scope: !1006)
!1008 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !112, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1009 = !DILocation(line: 200, column: 15, scope: !1008)
!1010 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !112, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1011 = !DILocation(line: 201, column: 15, scope: !1010)
!1012 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !112, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1013 = !DILocation(line: 202, column: 15, scope: !1012)
!1014 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !112, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1015 = !DILocation(line: 203, column: 15, scope: !1014)
!1016 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !112, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1017 = !DILocation(line: 204, column: 15, scope: !1016)
!1018 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !112, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1019 = !DILocation(line: 205, column: 15, scope: !1018)
!1020 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !112, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!1021 = !DILocation(line: 206, column: 15, scope: !1020)
