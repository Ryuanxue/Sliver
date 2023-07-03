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
define dso_local i8* @badSource(i8* %data) #0 !dbg !104 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !113, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 -1, i32* %connectSocket, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !139, metadata !DIExpression()), !dbg !143
  %0 = load i8*, i8** %data.addr, align 8, !dbg !144
  %call = call i64 @strlen(i8* %0) #7, !dbg !145
  store i64 %call, i64* %dataLen, align 8, !dbg !143
  br label %do.body, !dbg !146

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !147
  store i32 %call1, i32* %connectSocket, align 4, !dbg !149
  %1 = load i32, i32* %connectSocket, align 4, !dbg !150
  %cmp = icmp eq i32 %1, -1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !154

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !156
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !157
  store i16 2, i16* %sin_family, align 4, !dbg !158
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !159
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !160
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !161
  store i32 %call2, i32* %s_addr, align 4, !dbg !162
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !163
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !164
  store i16 %call3, i16* %sin_port, align 2, !dbg !165
  %3 = load i32, i32* %connectSocket, align 4, !dbg !166
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !168
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !169
  %cmp5 = icmp eq i32 %call4, -1, !dbg !170
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !171

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !172

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !174
  %6 = load i8*, i8** %data.addr, align 8, !dbg !175
  %7 = load i64, i64* %dataLen, align 8, !dbg !176
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !177
  %8 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub = sub i64 100, %8, !dbg !179
  %sub8 = sub i64 %sub, 1, !dbg !180
  %mul = mul i64 1, %sub8, !dbg !181
  %call9 = call i64 @recv(i32 %5, i8* %add.ptr, i64 %mul, i32 0), !dbg !182
  %conv = trunc i64 %call9 to i32, !dbg !182
  store i32 %conv, i32* %recvResult, align 4, !dbg !183
  %9 = load i32, i32* %recvResult, align 4, !dbg !184
  %cmp10 = icmp eq i32 %9, -1, !dbg !186
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !187

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load i32, i32* %recvResult, align 4, !dbg !188
  %cmp12 = icmp eq i32 %10, 0, !dbg !189
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !190

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !191

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %data.addr, align 8, !dbg !193
  %12 = load i64, i64* %dataLen, align 8, !dbg !194
  %13 = load i32, i32* %recvResult, align 4, !dbg !195
  %conv16 = sext i32 %13 to i64, !dbg !195
  %div = udiv i64 %conv16, 1, !dbg !196
  %add = add i64 %12, %div, !dbg !197
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %add, !dbg !193
  store i8 0, i8* %arrayidx, align 1, !dbg !198
  %14 = load i8*, i8** %data.addr, align 8, !dbg !199
  %call17 = call i8* @strchr(i8* %14, i32 13) #7, !dbg !200
  store i8* %call17, i8** %replace, align 8, !dbg !201
  %15 = load i8*, i8** %replace, align 8, !dbg !202
  %tobool = icmp ne i8* %15, null, !dbg !202
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !204

if.then18:                                        ; preds = %if.end15
  %16 = load i8*, i8** %replace, align 8, !dbg !205
  store i8 0, i8* %16, align 1, !dbg !207
  br label %if.end19, !dbg !208

if.end19:                                         ; preds = %if.then18, %if.end15
  %17 = load i8*, i8** %data.addr, align 8, !dbg !209
  %call20 = call i8* @strchr(i8* %17, i32 10) #7, !dbg !210
  store i8* %call20, i8** %replace, align 8, !dbg !211
  %18 = load i8*, i8** %replace, align 8, !dbg !212
  %tobool21 = icmp ne i8* %18, null, !dbg !212
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !214

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %replace, align 8, !dbg !215
  store i8 0, i8* %19, align 1, !dbg !217
  br label %if.end23, !dbg !218

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !219

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %20 = load i32, i32* %connectSocket, align 4, !dbg !220
  %cmp24 = icmp ne i32 %20, -1, !dbg !222
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !223

if.then26:                                        ; preds = %do.end
  %21 = load i32, i32* %connectSocket, align 4, !dbg !224
  %call27 = call i32 @close(i32 %21), !dbg !226
  br label %if.end28, !dbg !227

if.end28:                                         ; preds = %if.then26, %do.end
  %22 = load i8*, i8** %data.addr, align 8, !dbg !228
  ret i8* %22, !dbg !229
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad() #0 !dbg !230 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !235, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  %1 = load i8*, i8** %data, align 8, !dbg !242
  %call = call i8* @badSource(i8* %1), !dbg !243
  store i8* %call, i8** %data, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %2 = load i8*, i8** %data, align 8, !dbg !252
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !254
  %cmp = icmp eq i32 %call1, 1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !257
  store i32 0, i32* %i, align 4, !dbg !259
  br label %for.cond, !dbg !261

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !262
  %4 = load i32, i32* %n, align 4, !dbg !264
  %cmp2 = icmp slt i32 %3, %4, !dbg !265
  br i1 %cmp2, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !267
  %inc = add nsw i32 %5, 1, !dbg !267
  store i32 %inc, i32* %intVariable, align 4, !dbg !267
  br label %for.inc, !dbg !269

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !270
  %inc3 = add nsw i32 %6, 1, !dbg !270
  store i32 %inc3, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !275
  call void @printIntLine(i32 %7), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !278
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !279 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** %data.addr, align 8, !dbg !282
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !283
  %1 = load i8*, i8** %data.addr, align 8, !dbg !284
  ret i8* %1, !dbg !285
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !286 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !290
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !290
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !291
  store i8* %arraydecay, i8** %data, align 8, !dbg !292
  %1 = load i8*, i8** %data, align 8, !dbg !293
  %call = call i8* @goodG2BSource(i8* %1), !dbg !294
  store i8* %call, i8** %data, align 8, !dbg !295
  call void @llvm.dbg.declare(metadata i32* %i, metadata !296, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %n, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !301, metadata !DIExpression()), !dbg !302
  %2 = load i8*, i8** %data, align 8, !dbg !303
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !305
  %cmp = icmp eq i32 %call1, 1, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !308
  store i32 0, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !313
  %4 = load i32, i32* %n, align 4, !dbg !315
  %cmp2 = icmp slt i32 %3, %4, !dbg !316
  br i1 %cmp2, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !318
  %inc = add nsw i32 %5, 1, !dbg !318
  store i32 %inc, i32* %intVariable, align 4, !dbg !318
  br label %for.inc, !dbg !320

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !321
  %inc3 = add nsw i32 %6, 1, !dbg !321
  store i32 %inc3, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !322, !llvm.loop !323

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !325
  call void @printIntLine(i32 %7), !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !329 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 -1, i32* %connectSocket, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i8*, i8** %data.addr, align 8, !dbg !343
  %call = call i64 @strlen(i8* %0) #7, !dbg !344
  store i64 %call, i64* %dataLen, align 8, !dbg !342
  br label %do.body, !dbg !345

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !346
  store i32 %call1, i32* %connectSocket, align 4, !dbg !348
  %1 = load i32, i32* %connectSocket, align 4, !dbg !349
  %cmp = icmp eq i32 %1, -1, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !353

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !355
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !355
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !356
  store i16 2, i16* %sin_family, align 4, !dbg !357
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !358
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !359
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !360
  store i32 %call2, i32* %s_addr, align 4, !dbg !361
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !362
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !363
  store i16 %call3, i16* %sin_port, align 2, !dbg !364
  %3 = load i32, i32* %connectSocket, align 4, !dbg !365
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !367
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !368
  %cmp5 = icmp eq i32 %call4, -1, !dbg !369
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !370

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !371

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !373
  %6 = load i8*, i8** %data.addr, align 8, !dbg !374
  %7 = load i64, i64* %dataLen, align 8, !dbg !375
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !376
  %8 = load i64, i64* %dataLen, align 8, !dbg !377
  %sub = sub i64 100, %8, !dbg !378
  %sub8 = sub i64 %sub, 1, !dbg !379
  %mul = mul i64 1, %sub8, !dbg !380
  %call9 = call i64 @recv(i32 %5, i8* %add.ptr, i64 %mul, i32 0), !dbg !381
  %conv = trunc i64 %call9 to i32, !dbg !381
  store i32 %conv, i32* %recvResult, align 4, !dbg !382
  %9 = load i32, i32* %recvResult, align 4, !dbg !383
  %cmp10 = icmp eq i32 %9, -1, !dbg !385
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load i32, i32* %recvResult, align 4, !dbg !387
  %cmp12 = icmp eq i32 %10, 0, !dbg !388
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !389

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !390

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %data.addr, align 8, !dbg !392
  %12 = load i64, i64* %dataLen, align 8, !dbg !393
  %13 = load i32, i32* %recvResult, align 4, !dbg !394
  %conv16 = sext i32 %13 to i64, !dbg !394
  %div = udiv i64 %conv16, 1, !dbg !395
  %add = add i64 %12, %div, !dbg !396
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %add, !dbg !392
  store i8 0, i8* %arrayidx, align 1, !dbg !397
  %14 = load i8*, i8** %data.addr, align 8, !dbg !398
  %call17 = call i8* @strchr(i8* %14, i32 13) #7, !dbg !399
  store i8* %call17, i8** %replace, align 8, !dbg !400
  %15 = load i8*, i8** %replace, align 8, !dbg !401
  %tobool = icmp ne i8* %15, null, !dbg !401
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !403

if.then18:                                        ; preds = %if.end15
  %16 = load i8*, i8** %replace, align 8, !dbg !404
  store i8 0, i8* %16, align 1, !dbg !406
  br label %if.end19, !dbg !407

if.end19:                                         ; preds = %if.then18, %if.end15
  %17 = load i8*, i8** %data.addr, align 8, !dbg !408
  %call20 = call i8* @strchr(i8* %17, i32 10) #7, !dbg !409
  store i8* %call20, i8** %replace, align 8, !dbg !410
  %18 = load i8*, i8** %replace, align 8, !dbg !411
  %tobool21 = icmp ne i8* %18, null, !dbg !411
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !413

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %replace, align 8, !dbg !414
  store i8 0, i8* %19, align 1, !dbg !416
  br label %if.end23, !dbg !417

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !418

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %20 = load i32, i32* %connectSocket, align 4, !dbg !419
  %cmp24 = icmp ne i32 %20, -1, !dbg !421
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !422

if.then26:                                        ; preds = %do.end
  %21 = load i32, i32* %connectSocket, align 4, !dbg !423
  %call27 = call i32 @close(i32 %21), !dbg !425
  br label %if.end28, !dbg !426

if.end28:                                         ; preds = %if.then26, %do.end
  %22 = load i8*, i8** %data.addr, align 8, !dbg !427
  ret i8* %22, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !429 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !433
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !434
  store i8* %arraydecay, i8** %data, align 8, !dbg !435
  %1 = load i8*, i8** %data, align 8, !dbg !436
  %call = call i8* @goodB2GSource(i8* %1), !dbg !437
  store i8* %call, i8** %data, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata i32* %i, metadata !439, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata i32* %n, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !444, metadata !DIExpression()), !dbg !445
  %2 = load i8*, i8** %data, align 8, !dbg !446
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !448
  %cmp = icmp eq i32 %call1, 1, !dbg !449
  br i1 %cmp, label %if.then, label %if.end6, !dbg !450

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !451
  %cmp2 = icmp slt i32 %3, 10000, !dbg !454
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !455

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !456
  store i32 0, i32* %i, align 4, !dbg !458
  br label %for.cond, !dbg !460

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !461
  %5 = load i32, i32* %n, align 4, !dbg !463
  %cmp4 = icmp slt i32 %4, %5, !dbg !464
  br i1 %cmp4, label %for.body, label %for.end, !dbg !465

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !466
  %inc = add nsw i32 %6, 1, !dbg !466
  store i32 %inc, i32* %intVariable, align 4, !dbg !466
  br label %for.inc, !dbg !468

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !469
  %inc5 = add nsw i32 %7, 1, !dbg !469
  store i32 %inc5, i32* %i, align 4, !dbg !469
  br label %for.cond, !dbg !470, !llvm.loop !471

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !473
  call void @printIntLine(i32 %8), !dbg !474
  br label %if.end, !dbg !475

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !476

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good() #0 !dbg !478 {
entry:
  call void @goodB2G(), !dbg !479
  call void @goodG2B(), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !482 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !487
  %0 = load i8*, i8** %line.addr, align 8, !dbg !488
  %cmp = icmp ne i8* %0, null, !dbg !490
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !492
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !494
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !496
  ret void, !dbg !497
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !498 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8*, i8** %line.addr, align 8, !dbg !501
  %cmp = icmp ne i8* %0, null, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !507
  br label %if.end, !dbg !508

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !510 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i32*, i32** %line.addr, align 8, !dbg !517
  %cmp = icmp ne i32* %0, null, !dbg !519
  br i1 %cmp, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !521
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !523
  br label %if.end, !dbg !524

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !525
}

declare dso_local i32 @wprintf(i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !526 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !531
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !534 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !540
  %conv = sext i16 %0 to i32, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !543 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !547, metadata !DIExpression()), !dbg !548
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !549
  %conv = fpext float %0 to double, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !552 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !558
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !559
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !561 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !572 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !580 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !585
  %conv = sext i8 %0 to i32, !dbg !585
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !588 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !593, metadata !DIExpression()), !dbg !597
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !598
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !599
  store i32 %0, i32* %arrayidx, align 4, !dbg !600
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !601
  store i32 0, i32* %arrayidx1, align 4, !dbg !602
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !603
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !606 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !614 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !619
  %conv = zext i8 %0 to i32, !dbg !619
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !622 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !628
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !629
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !631 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !643
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !644
  %1 = load i32, i32* %intOne, align 4, !dbg !644
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !645
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !646
  %3 = load i32, i32* %intTwo, align 4, !dbg !646
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !647
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !649 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata i64* %i, metadata !657, metadata !DIExpression()), !dbg !658
  store i64 0, i64* %i, align 8, !dbg !659
  br label %for.cond, !dbg !661

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !662
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !664
  %cmp = icmp ult i64 %0, %1, !dbg !665
  br i1 %cmp, label %for.body, label %for.end, !dbg !666

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !667
  %3 = load i64, i64* %i, align 8, !dbg !669
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !667
  %4 = load i8, i8* %arrayidx, align 1, !dbg !667
  %conv = zext i8 %4 to i32, !dbg !667
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !670
  br label %for.inc, !dbg !671

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !672
  %inc = add i64 %5, 1, !dbg !672
  store i64 %inc, i64* %i, align 8, !dbg !672
  br label %for.cond, !dbg !673, !llvm.loop !674

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !676
  ret void, !dbg !677
}

declare dso_local i32 @puts(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !678 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !681, metadata !DIExpression()), !dbg !682
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !683, metadata !DIExpression()), !dbg !684
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 0, i64* %numWritten, align 8, !dbg !688
  br label %while.cond, !dbg !689

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !690
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !691
  %cmp = icmp ult i64 %0, %1, !dbg !692
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !693

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !694
  %2 = load i16*, i16** %call, align 8, !dbg !694
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !694
  %4 = load i64, i64* %numWritten, align 8, !dbg !694
  %mul = mul i64 2, %4, !dbg !694
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !694
  %5 = load i8, i8* %arrayidx, align 1, !dbg !694
  %conv = sext i8 %5 to i32, !dbg !694
  %idxprom = sext i32 %conv to i64, !dbg !694
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !694
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !694
  %conv2 = zext i16 %6 to i32, !dbg !694
  %and = and i32 %conv2, 4096, !dbg !694
  %tobool = icmp ne i32 %and, 0, !dbg !694
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !695

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !696
  %7 = load i16*, i16** %call3, align 8, !dbg !696
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !696
  %9 = load i64, i64* %numWritten, align 8, !dbg !696
  %mul4 = mul i64 2, %9, !dbg !696
  %add = add i64 %mul4, 1, !dbg !696
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !696
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !696
  %conv6 = sext i8 %10 to i32, !dbg !696
  %idxprom7 = sext i32 %conv6 to i64, !dbg !696
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !696
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !696
  %conv9 = zext i16 %11 to i32, !dbg !696
  %and10 = and i32 %conv9, 4096, !dbg !696
  %tobool11 = icmp ne i32 %and10, 0, !dbg !695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !697
  br i1 %12, label %while.body, label %while.end, !dbg !689

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !698, metadata !DIExpression()), !dbg !700
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !701
  %14 = load i64, i64* %numWritten, align 8, !dbg !702
  %mul12 = mul i64 2, %14, !dbg !703
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !701
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !704
  %15 = load i32, i32* %byte, align 4, !dbg !705
  %conv15 = trunc i32 %15 to i8, !dbg !706
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !707
  %17 = load i64, i64* %numWritten, align 8, !dbg !708
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !707
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !709
  %18 = load i64, i64* %numWritten, align 8, !dbg !710
  %inc = add i64 %18, 1, !dbg !710
  store i64 %inc, i64* %numWritten, align 8, !dbg !710
  br label %while.cond, !dbg !689, !llvm.loop !711

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !713
  ret i64 %19, !dbg !714
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !715 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !724, metadata !DIExpression()), !dbg !725
  store i64 0, i64* %numWritten, align 8, !dbg !725
  br label %while.cond, !dbg !726

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !727
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !728
  %cmp = icmp ult i64 %0, %1, !dbg !729
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !730

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !731
  %3 = load i64, i64* %numWritten, align 8, !dbg !732
  %mul = mul i64 2, %3, !dbg !733
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !731
  %4 = load i32, i32* %arrayidx, align 4, !dbg !731
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !734
  %tobool = icmp ne i32 %call, 0, !dbg !734
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !735

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %6 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul1 = mul i64 2, %6, !dbg !738
  %add = add i64 %mul1, 1, !dbg !739
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !736
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !736
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !740
  %tobool4 = icmp ne i32 %call3, 0, !dbg !735
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !741
  br i1 %8, label %while.body, label %while.end, !dbg !726

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !742, metadata !DIExpression()), !dbg !744
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !745
  %10 = load i64, i64* %numWritten, align 8, !dbg !746
  %mul5 = mul i64 2, %10, !dbg !747
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !745
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !748
  %11 = load i32, i32* %byte, align 4, !dbg !749
  %conv = trunc i32 %11 to i8, !dbg !750
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !751
  %13 = load i64, i64* %numWritten, align 8, !dbg !752
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !751
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !753
  %14 = load i64, i64* %numWritten, align 8, !dbg !754
  %inc = add i64 %14, 1, !dbg !754
  store i64 %inc, i64* %numWritten, align 8, !dbg !754
  br label %while.cond, !dbg !726, !llvm.loop !755

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !757
  ret i64 %15, !dbg !758
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !759 {
entry:
  ret i32 1, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !763 {
entry:
  ret i32 0, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !765 {
entry:
  %call = call i32 @rand() #8, !dbg !766
  %rem = srem i32 %call, 2, !dbg !767
  ret i32 %rem, !dbg !768
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !803 {
entry:
  ret void, !dbg !804
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_955/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_955/source_code")
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
!104 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 50, type: !105, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!42, !42}
!107 = !{}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !104, file: !45, line: 50, type: !42)
!109 = !DILocation(line: 50, column: 25, scope: !104)
!110 = !DILocalVariable(name: "recvResult", scope: !111, file: !45, line: 57, type: !23)
!111 = distinct !DILexicalBlock(scope: !104, file: !45, line: 52, column: 5)
!112 = !DILocation(line: 57, column: 13, scope: !111)
!113 = !DILocalVariable(name: "service", scope: !111, file: !45, line: 58, type: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !115)
!115 = !{!116, !117, !123, !130}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !114, file: !60, line: 240, baseType: !94, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !114, file: !60, line: 241, baseType: !118, size: 16, offset: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !120, line: 25, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !122, line: 40, baseType: !24)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !114, file: !60, line: 242, baseType: !124, size: 32, offset: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !124, file: !60, line: 33, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !122, line: 42, baseType: !7)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !114, file: !60, line: 245, baseType: !131, size: 64, offset: 64)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 8)
!134 = !DILocation(line: 58, column: 28, scope: !111)
!135 = !DILocalVariable(name: "replace", scope: !111, file: !45, line: 59, type: !42)
!136 = !DILocation(line: 59, column: 15, scope: !111)
!137 = !DILocalVariable(name: "connectSocket", scope: !111, file: !45, line: 60, type: !23)
!138 = !DILocation(line: 60, column: 16, scope: !111)
!139 = !DILocalVariable(name: "dataLen", scope: !111, file: !45, line: 61, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 46, baseType: !142)
!141 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DILocation(line: 61, column: 16, scope: !111)
!144 = !DILocation(line: 61, column: 33, scope: !111)
!145 = !DILocation(line: 61, column: 26, scope: !111)
!146 = !DILocation(line: 62, column: 9, scope: !111)
!147 = !DILocation(line: 72, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !111, file: !45, line: 63, column: 9)
!149 = !DILocation(line: 72, column: 27, scope: !148)
!150 = !DILocation(line: 73, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !45, line: 73, column: 17)
!152 = !DILocation(line: 73, column: 31, scope: !151)
!153 = !DILocation(line: 73, column: 17, scope: !148)
!154 = !DILocation(line: 75, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !45, line: 74, column: 13)
!156 = !DILocation(line: 77, column: 13, scope: !148)
!157 = !DILocation(line: 78, column: 21, scope: !148)
!158 = !DILocation(line: 78, column: 32, scope: !148)
!159 = !DILocation(line: 79, column: 39, scope: !148)
!160 = !DILocation(line: 79, column: 21, scope: !148)
!161 = !DILocation(line: 79, column: 30, scope: !148)
!162 = !DILocation(line: 79, column: 37, scope: !148)
!163 = !DILocation(line: 80, column: 32, scope: !148)
!164 = !DILocation(line: 80, column: 21, scope: !148)
!165 = !DILocation(line: 80, column: 30, scope: !148)
!166 = !DILocation(line: 81, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !148, file: !45, line: 81, column: 17)
!168 = !DILocation(line: 81, column: 40, scope: !167)
!169 = !DILocation(line: 81, column: 17, scope: !167)
!170 = !DILocation(line: 81, column: 85, scope: !167)
!171 = !DILocation(line: 81, column: 17, scope: !148)
!172 = !DILocation(line: 83, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !45, line: 82, column: 13)
!174 = !DILocation(line: 88, column: 31, scope: !148)
!175 = !DILocation(line: 88, column: 55, scope: !148)
!176 = !DILocation(line: 88, column: 62, scope: !148)
!177 = !DILocation(line: 88, column: 60, scope: !148)
!178 = !DILocation(line: 88, column: 94, scope: !148)
!179 = !DILocation(line: 88, column: 92, scope: !148)
!180 = !DILocation(line: 88, column: 102, scope: !148)
!181 = !DILocation(line: 88, column: 85, scope: !148)
!182 = !DILocation(line: 88, column: 26, scope: !148)
!183 = !DILocation(line: 88, column: 24, scope: !148)
!184 = !DILocation(line: 89, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !148, file: !45, line: 89, column: 17)
!186 = !DILocation(line: 89, column: 28, scope: !185)
!187 = !DILocation(line: 89, column: 44, scope: !185)
!188 = !DILocation(line: 89, column: 47, scope: !185)
!189 = !DILocation(line: 89, column: 58, scope: !185)
!190 = !DILocation(line: 89, column: 17, scope: !148)
!191 = !DILocation(line: 91, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !45, line: 90, column: 13)
!193 = !DILocation(line: 94, column: 13, scope: !148)
!194 = !DILocation(line: 94, column: 18, scope: !148)
!195 = !DILocation(line: 94, column: 28, scope: !148)
!196 = !DILocation(line: 94, column: 39, scope: !148)
!197 = !DILocation(line: 94, column: 26, scope: !148)
!198 = !DILocation(line: 94, column: 55, scope: !148)
!199 = !DILocation(line: 96, column: 30, scope: !148)
!200 = !DILocation(line: 96, column: 23, scope: !148)
!201 = !DILocation(line: 96, column: 21, scope: !148)
!202 = !DILocation(line: 97, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !148, file: !45, line: 97, column: 17)
!204 = !DILocation(line: 97, column: 17, scope: !148)
!205 = !DILocation(line: 99, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !45, line: 98, column: 13)
!207 = !DILocation(line: 99, column: 26, scope: !206)
!208 = !DILocation(line: 100, column: 13, scope: !206)
!209 = !DILocation(line: 101, column: 30, scope: !148)
!210 = !DILocation(line: 101, column: 23, scope: !148)
!211 = !DILocation(line: 101, column: 21, scope: !148)
!212 = !DILocation(line: 102, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !148, file: !45, line: 102, column: 17)
!214 = !DILocation(line: 102, column: 17, scope: !148)
!215 = !DILocation(line: 104, column: 18, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !45, line: 103, column: 13)
!217 = !DILocation(line: 104, column: 26, scope: !216)
!218 = !DILocation(line: 105, column: 13, scope: !216)
!219 = !DILocation(line: 106, column: 9, scope: !148)
!220 = !DILocation(line: 108, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !111, file: !45, line: 108, column: 13)
!222 = !DILocation(line: 108, column: 27, scope: !221)
!223 = !DILocation(line: 108, column: 13, scope: !111)
!224 = !DILocation(line: 110, column: 26, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 109, column: 9)
!226 = !DILocation(line: 110, column: 13, scope: !225)
!227 = !DILocation(line: 111, column: 9, scope: !225)
!228 = !DILocation(line: 119, column: 12, scope: !104)
!229 = !DILocation(line: 119, column: 5, scope: !104)
!230 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad", scope: !45, file: !45, line: 122, type: !231, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!231 = !DISubroutineType(types: !232)
!232 = !{null}
!233 = !DILocalVariable(name: "data", scope: !230, file: !45, line: 124, type: !42)
!234 = !DILocation(line: 124, column: 12, scope: !230)
!235 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !45, line: 125, type: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 100)
!239 = !DILocation(line: 125, column: 10, scope: !230)
!240 = !DILocation(line: 126, column: 12, scope: !230)
!241 = !DILocation(line: 126, column: 10, scope: !230)
!242 = !DILocation(line: 127, column: 22, scope: !230)
!243 = !DILocation(line: 127, column: 12, scope: !230)
!244 = !DILocation(line: 127, column: 10, scope: !230)
!245 = !DILocalVariable(name: "i", scope: !246, file: !45, line: 129, type: !23)
!246 = distinct !DILexicalBlock(scope: !230, file: !45, line: 128, column: 5)
!247 = !DILocation(line: 129, column: 13, scope: !246)
!248 = !DILocalVariable(name: "n", scope: !246, file: !45, line: 129, type: !23)
!249 = !DILocation(line: 129, column: 16, scope: !246)
!250 = !DILocalVariable(name: "intVariable", scope: !246, file: !45, line: 129, type: !23)
!251 = !DILocation(line: 129, column: 19, scope: !246)
!252 = !DILocation(line: 130, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !45, line: 130, column: 13)
!254 = !DILocation(line: 130, column: 13, scope: !253)
!255 = !DILocation(line: 130, column: 36, scope: !253)
!256 = !DILocation(line: 130, column: 13, scope: !246)
!257 = !DILocation(line: 133, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 131, column: 9)
!259 = !DILocation(line: 134, column: 20, scope: !260)
!260 = distinct !DILexicalBlock(scope: !258, file: !45, line: 134, column: 13)
!261 = !DILocation(line: 134, column: 18, scope: !260)
!262 = !DILocation(line: 134, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !45, line: 134, column: 13)
!264 = !DILocation(line: 134, column: 29, scope: !263)
!265 = !DILocation(line: 134, column: 27, scope: !263)
!266 = !DILocation(line: 134, column: 13, scope: !260)
!267 = !DILocation(line: 137, column: 28, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !45, line: 135, column: 13)
!269 = !DILocation(line: 138, column: 13, scope: !268)
!270 = !DILocation(line: 134, column: 33, scope: !263)
!271 = !DILocation(line: 134, column: 13, scope: !263)
!272 = distinct !{!272, !266, !273, !274}
!273 = !DILocation(line: 138, column: 13, scope: !260)
!274 = !{!"llvm.loop.mustprogress"}
!275 = !DILocation(line: 139, column: 26, scope: !258)
!276 = !DILocation(line: 139, column: 13, scope: !258)
!277 = !DILocation(line: 140, column: 9, scope: !258)
!278 = !DILocation(line: 142, column: 1, scope: !230)
!279 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 149, type: !105, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!280 = !DILocalVariable(name: "data", arg: 1, scope: !279, file: !45, line: 149, type: !42)
!281 = !DILocation(line: 149, column: 29, scope: !279)
!282 = !DILocation(line: 152, column: 12, scope: !279)
!283 = !DILocation(line: 152, column: 5, scope: !279)
!284 = !DILocation(line: 153, column: 12, scope: !279)
!285 = !DILocation(line: 153, column: 5, scope: !279)
!286 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 156, type: !231, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!287 = !DILocalVariable(name: "data", scope: !286, file: !45, line: 158, type: !42)
!288 = !DILocation(line: 158, column: 12, scope: !286)
!289 = !DILocalVariable(name: "dataBuffer", scope: !286, file: !45, line: 159, type: !236)
!290 = !DILocation(line: 159, column: 10, scope: !286)
!291 = !DILocation(line: 160, column: 12, scope: !286)
!292 = !DILocation(line: 160, column: 10, scope: !286)
!293 = !DILocation(line: 161, column: 26, scope: !286)
!294 = !DILocation(line: 161, column: 12, scope: !286)
!295 = !DILocation(line: 161, column: 10, scope: !286)
!296 = !DILocalVariable(name: "i", scope: !297, file: !45, line: 163, type: !23)
!297 = distinct !DILexicalBlock(scope: !286, file: !45, line: 162, column: 5)
!298 = !DILocation(line: 163, column: 13, scope: !297)
!299 = !DILocalVariable(name: "n", scope: !297, file: !45, line: 163, type: !23)
!300 = !DILocation(line: 163, column: 16, scope: !297)
!301 = !DILocalVariable(name: "intVariable", scope: !297, file: !45, line: 163, type: !23)
!302 = !DILocation(line: 163, column: 19, scope: !297)
!303 = !DILocation(line: 164, column: 20, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !45, line: 164, column: 13)
!305 = !DILocation(line: 164, column: 13, scope: !304)
!306 = !DILocation(line: 164, column: 36, scope: !304)
!307 = !DILocation(line: 164, column: 13, scope: !297)
!308 = !DILocation(line: 167, column: 25, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !45, line: 165, column: 9)
!310 = !DILocation(line: 168, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !45, line: 168, column: 13)
!312 = !DILocation(line: 168, column: 18, scope: !311)
!313 = !DILocation(line: 168, column: 25, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !45, line: 168, column: 13)
!315 = !DILocation(line: 168, column: 29, scope: !314)
!316 = !DILocation(line: 168, column: 27, scope: !314)
!317 = !DILocation(line: 168, column: 13, scope: !311)
!318 = !DILocation(line: 171, column: 28, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !45, line: 169, column: 13)
!320 = !DILocation(line: 172, column: 13, scope: !319)
!321 = !DILocation(line: 168, column: 33, scope: !314)
!322 = !DILocation(line: 168, column: 13, scope: !314)
!323 = distinct !{!323, !317, !324, !274}
!324 = !DILocation(line: 172, column: 13, scope: !311)
!325 = !DILocation(line: 173, column: 26, scope: !309)
!326 = !DILocation(line: 173, column: 13, scope: !309)
!327 = !DILocation(line: 174, column: 9, scope: !309)
!328 = !DILocation(line: 176, column: 1, scope: !286)
!329 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 179, type: !105, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!330 = !DILocalVariable(name: "data", arg: 1, scope: !329, file: !45, line: 179, type: !42)
!331 = !DILocation(line: 179, column: 29, scope: !329)
!332 = !DILocalVariable(name: "recvResult", scope: !333, file: !45, line: 186, type: !23)
!333 = distinct !DILexicalBlock(scope: !329, file: !45, line: 181, column: 5)
!334 = !DILocation(line: 186, column: 13, scope: !333)
!335 = !DILocalVariable(name: "service", scope: !333, file: !45, line: 187, type: !114)
!336 = !DILocation(line: 187, column: 28, scope: !333)
!337 = !DILocalVariable(name: "replace", scope: !333, file: !45, line: 188, type: !42)
!338 = !DILocation(line: 188, column: 15, scope: !333)
!339 = !DILocalVariable(name: "connectSocket", scope: !333, file: !45, line: 189, type: !23)
!340 = !DILocation(line: 189, column: 16, scope: !333)
!341 = !DILocalVariable(name: "dataLen", scope: !333, file: !45, line: 190, type: !140)
!342 = !DILocation(line: 190, column: 16, scope: !333)
!343 = !DILocation(line: 190, column: 33, scope: !333)
!344 = !DILocation(line: 190, column: 26, scope: !333)
!345 = !DILocation(line: 191, column: 9, scope: !333)
!346 = !DILocation(line: 201, column: 29, scope: !347)
!347 = distinct !DILexicalBlock(scope: !333, file: !45, line: 192, column: 9)
!348 = !DILocation(line: 201, column: 27, scope: !347)
!349 = !DILocation(line: 202, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !45, line: 202, column: 17)
!351 = !DILocation(line: 202, column: 31, scope: !350)
!352 = !DILocation(line: 202, column: 17, scope: !347)
!353 = !DILocation(line: 204, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !45, line: 203, column: 13)
!355 = !DILocation(line: 206, column: 13, scope: !347)
!356 = !DILocation(line: 207, column: 21, scope: !347)
!357 = !DILocation(line: 207, column: 32, scope: !347)
!358 = !DILocation(line: 208, column: 39, scope: !347)
!359 = !DILocation(line: 208, column: 21, scope: !347)
!360 = !DILocation(line: 208, column: 30, scope: !347)
!361 = !DILocation(line: 208, column: 37, scope: !347)
!362 = !DILocation(line: 209, column: 32, scope: !347)
!363 = !DILocation(line: 209, column: 21, scope: !347)
!364 = !DILocation(line: 209, column: 30, scope: !347)
!365 = !DILocation(line: 210, column: 25, scope: !366)
!366 = distinct !DILexicalBlock(scope: !347, file: !45, line: 210, column: 17)
!367 = !DILocation(line: 210, column: 40, scope: !366)
!368 = !DILocation(line: 210, column: 17, scope: !366)
!369 = !DILocation(line: 210, column: 85, scope: !366)
!370 = !DILocation(line: 210, column: 17, scope: !347)
!371 = !DILocation(line: 212, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !45, line: 211, column: 13)
!373 = !DILocation(line: 217, column: 31, scope: !347)
!374 = !DILocation(line: 217, column: 55, scope: !347)
!375 = !DILocation(line: 217, column: 62, scope: !347)
!376 = !DILocation(line: 217, column: 60, scope: !347)
!377 = !DILocation(line: 217, column: 94, scope: !347)
!378 = !DILocation(line: 217, column: 92, scope: !347)
!379 = !DILocation(line: 217, column: 102, scope: !347)
!380 = !DILocation(line: 217, column: 85, scope: !347)
!381 = !DILocation(line: 217, column: 26, scope: !347)
!382 = !DILocation(line: 217, column: 24, scope: !347)
!383 = !DILocation(line: 218, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !347, file: !45, line: 218, column: 17)
!385 = !DILocation(line: 218, column: 28, scope: !384)
!386 = !DILocation(line: 218, column: 44, scope: !384)
!387 = !DILocation(line: 218, column: 47, scope: !384)
!388 = !DILocation(line: 218, column: 58, scope: !384)
!389 = !DILocation(line: 218, column: 17, scope: !347)
!390 = !DILocation(line: 220, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !45, line: 219, column: 13)
!392 = !DILocation(line: 223, column: 13, scope: !347)
!393 = !DILocation(line: 223, column: 18, scope: !347)
!394 = !DILocation(line: 223, column: 28, scope: !347)
!395 = !DILocation(line: 223, column: 39, scope: !347)
!396 = !DILocation(line: 223, column: 26, scope: !347)
!397 = !DILocation(line: 223, column: 55, scope: !347)
!398 = !DILocation(line: 225, column: 30, scope: !347)
!399 = !DILocation(line: 225, column: 23, scope: !347)
!400 = !DILocation(line: 225, column: 21, scope: !347)
!401 = !DILocation(line: 226, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !347, file: !45, line: 226, column: 17)
!403 = !DILocation(line: 226, column: 17, scope: !347)
!404 = !DILocation(line: 228, column: 18, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !45, line: 227, column: 13)
!406 = !DILocation(line: 228, column: 26, scope: !405)
!407 = !DILocation(line: 229, column: 13, scope: !405)
!408 = !DILocation(line: 230, column: 30, scope: !347)
!409 = !DILocation(line: 230, column: 23, scope: !347)
!410 = !DILocation(line: 230, column: 21, scope: !347)
!411 = !DILocation(line: 231, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !347, file: !45, line: 231, column: 17)
!413 = !DILocation(line: 231, column: 17, scope: !347)
!414 = !DILocation(line: 233, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !45, line: 232, column: 13)
!416 = !DILocation(line: 233, column: 26, scope: !415)
!417 = !DILocation(line: 234, column: 13, scope: !415)
!418 = !DILocation(line: 235, column: 9, scope: !347)
!419 = !DILocation(line: 237, column: 13, scope: !420)
!420 = distinct !DILexicalBlock(scope: !333, file: !45, line: 237, column: 13)
!421 = !DILocation(line: 237, column: 27, scope: !420)
!422 = !DILocation(line: 237, column: 13, scope: !333)
!423 = !DILocation(line: 239, column: 26, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !45, line: 238, column: 9)
!425 = !DILocation(line: 239, column: 13, scope: !424)
!426 = !DILocation(line: 240, column: 9, scope: !424)
!427 = !DILocation(line: 248, column: 12, scope: !329)
!428 = !DILocation(line: 248, column: 5, scope: !329)
!429 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 251, type: !231, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!430 = !DILocalVariable(name: "data", scope: !429, file: !45, line: 253, type: !42)
!431 = !DILocation(line: 253, column: 12, scope: !429)
!432 = !DILocalVariable(name: "dataBuffer", scope: !429, file: !45, line: 254, type: !236)
!433 = !DILocation(line: 254, column: 10, scope: !429)
!434 = !DILocation(line: 255, column: 12, scope: !429)
!435 = !DILocation(line: 255, column: 10, scope: !429)
!436 = !DILocation(line: 256, column: 26, scope: !429)
!437 = !DILocation(line: 256, column: 12, scope: !429)
!438 = !DILocation(line: 256, column: 10, scope: !429)
!439 = !DILocalVariable(name: "i", scope: !440, file: !45, line: 258, type: !23)
!440 = distinct !DILexicalBlock(scope: !429, file: !45, line: 257, column: 5)
!441 = !DILocation(line: 258, column: 13, scope: !440)
!442 = !DILocalVariable(name: "n", scope: !440, file: !45, line: 258, type: !23)
!443 = !DILocation(line: 258, column: 16, scope: !440)
!444 = !DILocalVariable(name: "intVariable", scope: !440, file: !45, line: 258, type: !23)
!445 = !DILocation(line: 258, column: 19, scope: !440)
!446 = !DILocation(line: 259, column: 20, scope: !447)
!447 = distinct !DILexicalBlock(scope: !440, file: !45, line: 259, column: 13)
!448 = !DILocation(line: 259, column: 13, scope: !447)
!449 = !DILocation(line: 259, column: 36, scope: !447)
!450 = !DILocation(line: 259, column: 13, scope: !440)
!451 = !DILocation(line: 262, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !45, line: 262, column: 17)
!453 = distinct !DILexicalBlock(scope: !447, file: !45, line: 260, column: 9)
!454 = !DILocation(line: 262, column: 19, scope: !452)
!455 = !DILocation(line: 262, column: 17, scope: !453)
!456 = !DILocation(line: 264, column: 29, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !45, line: 263, column: 13)
!458 = !DILocation(line: 265, column: 24, scope: !459)
!459 = distinct !DILexicalBlock(scope: !457, file: !45, line: 265, column: 17)
!460 = !DILocation(line: 265, column: 22, scope: !459)
!461 = !DILocation(line: 265, column: 29, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !45, line: 265, column: 17)
!463 = !DILocation(line: 265, column: 33, scope: !462)
!464 = !DILocation(line: 265, column: 31, scope: !462)
!465 = !DILocation(line: 265, column: 17, scope: !459)
!466 = !DILocation(line: 268, column: 32, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !45, line: 266, column: 17)
!468 = !DILocation(line: 269, column: 17, scope: !467)
!469 = !DILocation(line: 265, column: 37, scope: !462)
!470 = !DILocation(line: 265, column: 17, scope: !462)
!471 = distinct !{!471, !465, !472, !274}
!472 = !DILocation(line: 269, column: 17, scope: !459)
!473 = !DILocation(line: 270, column: 30, scope: !457)
!474 = !DILocation(line: 270, column: 17, scope: !457)
!475 = !DILocation(line: 271, column: 13, scope: !457)
!476 = !DILocation(line: 272, column: 9, scope: !453)
!477 = !DILocation(line: 274, column: 1, scope: !429)
!478 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good", scope: !45, file: !45, line: 276, type: !231, scopeLine: 277, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!479 = !DILocation(line: 278, column: 5, scope: !478)
!480 = !DILocation(line: 279, column: 5, scope: !478)
!481 = !DILocation(line: 280, column: 1, scope: !478)
!482 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !483, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !42}
!485 = !DILocalVariable(name: "line", arg: 1, scope: !482, file: !3, line: 11, type: !42)
!486 = !DILocation(line: 11, column: 25, scope: !482)
!487 = !DILocation(line: 13, column: 1, scope: !482)
!488 = !DILocation(line: 14, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !3, line: 14, column: 8)
!490 = !DILocation(line: 14, column: 13, scope: !489)
!491 = !DILocation(line: 14, column: 8, scope: !482)
!492 = !DILocation(line: 16, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 15, column: 5)
!494 = !DILocation(line: 16, column: 9, scope: !493)
!495 = !DILocation(line: 17, column: 5, scope: !493)
!496 = !DILocation(line: 18, column: 5, scope: !482)
!497 = !DILocation(line: 19, column: 1, scope: !482)
!498 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !483, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!499 = !DILocalVariable(name: "line", arg: 1, scope: !498, file: !3, line: 20, type: !42)
!500 = !DILocation(line: 20, column: 29, scope: !498)
!501 = !DILocation(line: 22, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 22, column: 8)
!503 = !DILocation(line: 22, column: 13, scope: !502)
!504 = !DILocation(line: 22, column: 8, scope: !498)
!505 = !DILocation(line: 24, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 23, column: 5)
!507 = !DILocation(line: 24, column: 9, scope: !506)
!508 = !DILocation(line: 25, column: 5, scope: !506)
!509 = !DILocation(line: 26, column: 1, scope: !498)
!510 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !511, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !141, line: 74, baseType: !23)
!515 = !DILocalVariable(name: "line", arg: 1, scope: !510, file: !3, line: 27, type: !513)
!516 = !DILocation(line: 27, column: 29, scope: !510)
!517 = !DILocation(line: 29, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !510, file: !3, line: 29, column: 8)
!519 = !DILocation(line: 29, column: 13, scope: !518)
!520 = !DILocation(line: 29, column: 8, scope: !510)
!521 = !DILocation(line: 31, column: 27, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 30, column: 5)
!523 = !DILocation(line: 31, column: 9, scope: !522)
!524 = !DILocation(line: 32, column: 5, scope: !522)
!525 = !DILocation(line: 33, column: 1, scope: !510)
!526 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !527, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !23}
!529 = !DILocalVariable(name: "intNumber", arg: 1, scope: !526, file: !3, line: 35, type: !23)
!530 = !DILocation(line: 35, column: 24, scope: !526)
!531 = !DILocation(line: 37, column: 20, scope: !526)
!532 = !DILocation(line: 37, column: 5, scope: !526)
!533 = !DILocation(line: 38, column: 1, scope: !526)
!534 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !535, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537}
!537 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!538 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !534, file: !3, line: 40, type: !537)
!539 = !DILocation(line: 40, column: 28, scope: !534)
!540 = !DILocation(line: 42, column: 21, scope: !534)
!541 = !DILocation(line: 42, column: 5, scope: !534)
!542 = !DILocation(line: 43, column: 1, scope: !534)
!543 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !544, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!547 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !543, file: !3, line: 45, type: !546)
!548 = !DILocation(line: 45, column: 28, scope: !543)
!549 = !DILocation(line: 47, column: 20, scope: !543)
!550 = !DILocation(line: 47, column: 5, scope: !543)
!551 = !DILocation(line: 48, column: 1, scope: !543)
!552 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !553, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555}
!555 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!556 = !DILocalVariable(name: "longNumber", arg: 1, scope: !552, file: !3, line: 50, type: !555)
!557 = !DILocation(line: 50, column: 26, scope: !552)
!558 = !DILocation(line: 52, column: 21, scope: !552)
!559 = !DILocation(line: 52, column: 5, scope: !552)
!560 = !DILocation(line: 53, column: 1, scope: !552)
!561 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !562, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !565, line: 27, baseType: !566)
!565 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !122, line: 44, baseType: !555)
!567 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !561, file: !3, line: 55, type: !564)
!568 = !DILocation(line: 55, column: 33, scope: !561)
!569 = !DILocation(line: 57, column: 29, scope: !561)
!570 = !DILocation(line: 57, column: 5, scope: !561)
!571 = !DILocation(line: 58, column: 1, scope: !561)
!572 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !573, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !140}
!575 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !572, file: !3, line: 60, type: !140)
!576 = !DILocation(line: 60, column: 29, scope: !572)
!577 = !DILocation(line: 62, column: 21, scope: !572)
!578 = !DILocation(line: 62, column: 5, scope: !572)
!579 = !DILocation(line: 63, column: 1, scope: !572)
!580 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !581, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !43}
!583 = !DILocalVariable(name: "charHex", arg: 1, scope: !580, file: !3, line: 65, type: !43)
!584 = !DILocation(line: 65, column: 29, scope: !580)
!585 = !DILocation(line: 67, column: 22, scope: !580)
!586 = !DILocation(line: 67, column: 5, scope: !580)
!587 = !DILocation(line: 68, column: 1, scope: !580)
!588 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !589, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !514}
!591 = !DILocalVariable(name: "wideChar", arg: 1, scope: !588, file: !3, line: 70, type: !514)
!592 = !DILocation(line: 70, column: 29, scope: !588)
!593 = !DILocalVariable(name: "s", scope: !588, file: !3, line: 74, type: !594)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 64, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 2)
!597 = !DILocation(line: 74, column: 13, scope: !588)
!598 = !DILocation(line: 75, column: 16, scope: !588)
!599 = !DILocation(line: 75, column: 9, scope: !588)
!600 = !DILocation(line: 75, column: 14, scope: !588)
!601 = !DILocation(line: 76, column: 9, scope: !588)
!602 = !DILocation(line: 76, column: 14, scope: !588)
!603 = !DILocation(line: 77, column: 21, scope: !588)
!604 = !DILocation(line: 77, column: 5, scope: !588)
!605 = !DILocation(line: 78, column: 1, scope: !588)
!606 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !607, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !7}
!609 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !606, file: !3, line: 80, type: !7)
!610 = !DILocation(line: 80, column: 33, scope: !606)
!611 = !DILocation(line: 82, column: 20, scope: !606)
!612 = !DILocation(line: 82, column: 5, scope: !606)
!613 = !DILocation(line: 83, column: 1, scope: !606)
!614 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !615, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !25}
!617 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !614, file: !3, line: 85, type: !25)
!618 = !DILocation(line: 85, column: 45, scope: !614)
!619 = !DILocation(line: 87, column: 22, scope: !614)
!620 = !DILocation(line: 87, column: 5, scope: !614)
!621 = !DILocation(line: 88, column: 1, scope: !614)
!622 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !623, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625}
!625 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!626 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !622, file: !3, line: 90, type: !625)
!627 = !DILocation(line: 90, column: 29, scope: !622)
!628 = !DILocation(line: 92, column: 20, scope: !622)
!629 = !DILocation(line: 92, column: 5, scope: !622)
!630 = !DILocation(line: 93, column: 1, scope: !622)
!631 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !632, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !636, line: 100, baseType: !637)
!636 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_955/source_code")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !636, line: 96, size: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !637, file: !636, line: 98, baseType: !23, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !637, file: !636, line: 99, baseType: !23, size: 32, offset: 32)
!641 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !631, file: !3, line: 95, type: !634)
!642 = !DILocation(line: 95, column: 40, scope: !631)
!643 = !DILocation(line: 97, column: 26, scope: !631)
!644 = !DILocation(line: 97, column: 47, scope: !631)
!645 = !DILocation(line: 97, column: 55, scope: !631)
!646 = !DILocation(line: 97, column: 76, scope: !631)
!647 = !DILocation(line: 97, column: 5, scope: !631)
!648 = !DILocation(line: 98, column: 1, scope: !631)
!649 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !650, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !652, !140}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!653 = !DILocalVariable(name: "bytes", arg: 1, scope: !649, file: !3, line: 100, type: !652)
!654 = !DILocation(line: 100, column: 38, scope: !649)
!655 = !DILocalVariable(name: "numBytes", arg: 2, scope: !649, file: !3, line: 100, type: !140)
!656 = !DILocation(line: 100, column: 52, scope: !649)
!657 = !DILocalVariable(name: "i", scope: !649, file: !3, line: 102, type: !140)
!658 = !DILocation(line: 102, column: 12, scope: !649)
!659 = !DILocation(line: 103, column: 12, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !3, line: 103, column: 5)
!661 = !DILocation(line: 103, column: 10, scope: !660)
!662 = !DILocation(line: 103, column: 17, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 103, column: 5)
!664 = !DILocation(line: 103, column: 21, scope: !663)
!665 = !DILocation(line: 103, column: 19, scope: !663)
!666 = !DILocation(line: 103, column: 5, scope: !660)
!667 = !DILocation(line: 105, column: 24, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 104, column: 5)
!669 = !DILocation(line: 105, column: 30, scope: !668)
!670 = !DILocation(line: 105, column: 9, scope: !668)
!671 = !DILocation(line: 106, column: 5, scope: !668)
!672 = !DILocation(line: 103, column: 31, scope: !663)
!673 = !DILocation(line: 103, column: 5, scope: !663)
!674 = distinct !{!674, !666, !675, !274}
!675 = !DILocation(line: 106, column: 5, scope: !660)
!676 = !DILocation(line: 107, column: 5, scope: !649)
!677 = !DILocation(line: 108, column: 1, scope: !649)
!678 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !679, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!679 = !DISubroutineType(types: !680)
!680 = !{!140, !652, !140, !42}
!681 = !DILocalVariable(name: "bytes", arg: 1, scope: !678, file: !3, line: 113, type: !652)
!682 = !DILocation(line: 113, column: 39, scope: !678)
!683 = !DILocalVariable(name: "numBytes", arg: 2, scope: !678, file: !3, line: 113, type: !140)
!684 = !DILocation(line: 113, column: 53, scope: !678)
!685 = !DILocalVariable(name: "hex", arg: 3, scope: !678, file: !3, line: 113, type: !42)
!686 = !DILocation(line: 113, column: 71, scope: !678)
!687 = !DILocalVariable(name: "numWritten", scope: !678, file: !3, line: 115, type: !140)
!688 = !DILocation(line: 115, column: 12, scope: !678)
!689 = !DILocation(line: 121, column: 5, scope: !678)
!690 = !DILocation(line: 121, column: 12, scope: !678)
!691 = !DILocation(line: 121, column: 25, scope: !678)
!692 = !DILocation(line: 121, column: 23, scope: !678)
!693 = !DILocation(line: 121, column: 34, scope: !678)
!694 = !DILocation(line: 121, column: 37, scope: !678)
!695 = !DILocation(line: 121, column: 67, scope: !678)
!696 = !DILocation(line: 121, column: 70, scope: !678)
!697 = !DILocation(line: 0, scope: !678)
!698 = !DILocalVariable(name: "byte", scope: !699, file: !3, line: 123, type: !23)
!699 = distinct !DILexicalBlock(scope: !678, file: !3, line: 122, column: 5)
!700 = !DILocation(line: 123, column: 13, scope: !699)
!701 = !DILocation(line: 124, column: 17, scope: !699)
!702 = !DILocation(line: 124, column: 25, scope: !699)
!703 = !DILocation(line: 124, column: 23, scope: !699)
!704 = !DILocation(line: 124, column: 9, scope: !699)
!705 = !DILocation(line: 125, column: 45, scope: !699)
!706 = !DILocation(line: 125, column: 29, scope: !699)
!707 = !DILocation(line: 125, column: 9, scope: !699)
!708 = !DILocation(line: 125, column: 15, scope: !699)
!709 = !DILocation(line: 125, column: 27, scope: !699)
!710 = !DILocation(line: 126, column: 9, scope: !699)
!711 = distinct !{!711, !689, !712, !274}
!712 = !DILocation(line: 127, column: 5, scope: !678)
!713 = !DILocation(line: 129, column: 12, scope: !678)
!714 = !DILocation(line: 129, column: 5, scope: !678)
!715 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !716, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!716 = !DISubroutineType(types: !717)
!717 = !{!140, !652, !140, !513}
!718 = !DILocalVariable(name: "bytes", arg: 1, scope: !715, file: !3, line: 135, type: !652)
!719 = !DILocation(line: 135, column: 41, scope: !715)
!720 = !DILocalVariable(name: "numBytes", arg: 2, scope: !715, file: !3, line: 135, type: !140)
!721 = !DILocation(line: 135, column: 55, scope: !715)
!722 = !DILocalVariable(name: "hex", arg: 3, scope: !715, file: !3, line: 135, type: !513)
!723 = !DILocation(line: 135, column: 76, scope: !715)
!724 = !DILocalVariable(name: "numWritten", scope: !715, file: !3, line: 137, type: !140)
!725 = !DILocation(line: 137, column: 12, scope: !715)
!726 = !DILocation(line: 143, column: 5, scope: !715)
!727 = !DILocation(line: 143, column: 12, scope: !715)
!728 = !DILocation(line: 143, column: 25, scope: !715)
!729 = !DILocation(line: 143, column: 23, scope: !715)
!730 = !DILocation(line: 143, column: 34, scope: !715)
!731 = !DILocation(line: 143, column: 47, scope: !715)
!732 = !DILocation(line: 143, column: 55, scope: !715)
!733 = !DILocation(line: 143, column: 53, scope: !715)
!734 = !DILocation(line: 143, column: 37, scope: !715)
!735 = !DILocation(line: 143, column: 68, scope: !715)
!736 = !DILocation(line: 143, column: 81, scope: !715)
!737 = !DILocation(line: 143, column: 89, scope: !715)
!738 = !DILocation(line: 143, column: 87, scope: !715)
!739 = !DILocation(line: 143, column: 100, scope: !715)
!740 = !DILocation(line: 143, column: 71, scope: !715)
!741 = !DILocation(line: 0, scope: !715)
!742 = !DILocalVariable(name: "byte", scope: !743, file: !3, line: 145, type: !23)
!743 = distinct !DILexicalBlock(scope: !715, file: !3, line: 144, column: 5)
!744 = !DILocation(line: 145, column: 13, scope: !743)
!745 = !DILocation(line: 146, column: 18, scope: !743)
!746 = !DILocation(line: 146, column: 26, scope: !743)
!747 = !DILocation(line: 146, column: 24, scope: !743)
!748 = !DILocation(line: 146, column: 9, scope: !743)
!749 = !DILocation(line: 147, column: 45, scope: !743)
!750 = !DILocation(line: 147, column: 29, scope: !743)
!751 = !DILocation(line: 147, column: 9, scope: !743)
!752 = !DILocation(line: 147, column: 15, scope: !743)
!753 = !DILocation(line: 147, column: 27, scope: !743)
!754 = !DILocation(line: 148, column: 9, scope: !743)
!755 = distinct !{!755, !726, !756, !274}
!756 = !DILocation(line: 149, column: 5, scope: !715)
!757 = !DILocation(line: 151, column: 12, scope: !715)
!758 = !DILocation(line: 151, column: 5, scope: !715)
!759 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !760, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DISubroutineType(types: !761)
!761 = !{!23}
!762 = !DILocation(line: 158, column: 5, scope: !759)
!763 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !760, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!764 = !DILocation(line: 163, column: 5, scope: !763)
!765 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !760, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DILocation(line: 168, column: 13, scope: !765)
!767 = !DILocation(line: 168, column: 20, scope: !765)
!768 = !DILocation(line: 168, column: 5, scope: !765)
!769 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !231, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!770 = !DILocation(line: 187, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !231, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!772 = !DILocation(line: 188, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !231, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!774 = !DILocation(line: 189, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !231, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!776 = !DILocation(line: 190, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !231, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!778 = !DILocation(line: 191, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !231, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!780 = !DILocation(line: 192, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !231, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!782 = !DILocation(line: 193, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !231, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!784 = !DILocation(line: 194, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !231, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!786 = !DILocation(line: 195, column: 16, scope: !785)
!787 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !231, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!788 = !DILocation(line: 198, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !231, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!790 = !DILocation(line: 199, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !231, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!792 = !DILocation(line: 200, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !231, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!794 = !DILocation(line: 201, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !231, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!796 = !DILocation(line: 202, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !231, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!798 = !DILocation(line: 203, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !231, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!800 = !DILocation(line: 204, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !231, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!802 = !DILocation(line: 205, column: 15, scope: !801)
!803 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !231, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!804 = !DILocation(line: 206, column: 15, scope: !803)
