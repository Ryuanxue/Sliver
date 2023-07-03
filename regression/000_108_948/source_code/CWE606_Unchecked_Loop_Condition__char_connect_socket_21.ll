; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_21.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !63
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !66
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !68
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !74 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i32, i32* @badStatic, align 4, !dbg !80
  %tobool = icmp ne i32 %0, 0, !dbg !80
  br i1 %tobool, label %if.then, label %if.end4, !dbg !82

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %n, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !89, metadata !DIExpression()), !dbg !90
  %1 = load i8*, i8** %data.addr, align 8, !dbg !91
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !93
  %cmp = icmp eq i32 %call, 1, !dbg !94
  br i1 %cmp, label %if.then1, label %if.end, !dbg !95

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !96
  store i32 0, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !101
  %3 = load i32, i32* %n, align 4, !dbg !103
  %cmp2 = icmp slt i32 %2, %3, !dbg !104
  br i1 %cmp2, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !106
  %inc = add nsw i32 %4, 1, !dbg !106
  store i32 %inc, i32* %intVariable, align 4, !dbg !106
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !109
  %inc3 = add nsw i32 %5, 1, !dbg !109
  store i32 %inc3, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !114
  call void @printIntLine(i32 %6), !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !117

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_21_bad() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !134, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 -1, i32* %connectSocket, align 4, !dbg !160
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !161, metadata !DIExpression()), !dbg !165
  %1 = load i8*, i8** %data, align 8, !dbg !166
  %call = call i64 @strlen(i8* %1) #8, !dbg !167
  store i64 %call, i64* %dataLen, align 8, !dbg !165
  br label %do.body, !dbg !168

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !169
  store i32 %call1, i32* %connectSocket, align 4, !dbg !171
  %2 = load i32, i32* %connectSocket, align 4, !dbg !172
  %cmp = icmp eq i32 %2, -1, !dbg !174
  br i1 %cmp, label %if.then, label %if.end, !dbg !175

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !176

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !178
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !179
  store i16 2, i16* %sin_family, align 4, !dbg !180
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !181
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !182
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !183
  store i32 %call2, i32* %s_addr, align 4, !dbg !184
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !185
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !186
  store i16 %call3, i16* %sin_port, align 2, !dbg !187
  %4 = load i32, i32* %connectSocket, align 4, !dbg !188
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !190
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !191
  %cmp5 = icmp eq i32 %call4, -1, !dbg !192
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !193

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !194

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !196
  %7 = load i8*, i8** %data, align 8, !dbg !197
  %8 = load i64, i64* %dataLen, align 8, !dbg !198
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !199
  %9 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %9, !dbg !201
  %sub8 = sub i64 %sub, 1, !dbg !202
  %mul = mul i64 1, %sub8, !dbg !203
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !204
  %conv = trunc i64 %call9 to i32, !dbg !204
  store i32 %conv, i32* %recvResult, align 4, !dbg !205
  %10 = load i32, i32* %recvResult, align 4, !dbg !206
  %cmp10 = icmp eq i32 %10, -1, !dbg !208
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !209

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !210
  %cmp12 = icmp eq i32 %11, 0, !dbg !211
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !212

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !213

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !215
  %13 = load i64, i64* %dataLen, align 8, !dbg !216
  %14 = load i32, i32* %recvResult, align 4, !dbg !217
  %conv16 = sext i32 %14 to i64, !dbg !217
  %div = udiv i64 %conv16, 1, !dbg !218
  %add = add i64 %13, %div, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !215
  store i8 0, i8* %arrayidx, align 1, !dbg !220
  %15 = load i8*, i8** %data, align 8, !dbg !221
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !222
  store i8* %call17, i8** %replace, align 8, !dbg !223
  %16 = load i8*, i8** %replace, align 8, !dbg !224
  %tobool = icmp ne i8* %16, null, !dbg !224
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !226

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !227
  store i8 0, i8* %17, align 1, !dbg !229
  br label %if.end19, !dbg !230

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !231
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !232
  store i8* %call20, i8** %replace, align 8, !dbg !233
  %19 = load i8*, i8** %replace, align 8, !dbg !234
  %tobool21 = icmp ne i8* %19, null, !dbg !234
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !236

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !237
  store i8 0, i8* %20, align 1, !dbg !239
  br label %if.end23, !dbg !240

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !241

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !242
  %cmp24 = icmp ne i32 %21, -1, !dbg !244
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !245

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !246
  %call27 = call i32 @close(i32 %22), !dbg !248
  br label %if.end28, !dbg !249

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 1, i32* @badStatic, align 4, !dbg !250
  %23 = load i8*, i8** %data, align 8, !dbg !251
  call void @badSink(i8* %23), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #5

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !254 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !257
  %tobool = icmp ne i32 %0, 0, !dbg !257
  br i1 %tobool, label %if.then, label %if.else, !dbg !259

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !260
  br label %if.end7, !dbg !262

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !263, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %n, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !269, metadata !DIExpression()), !dbg !270
  %1 = load i8*, i8** %data.addr, align 8, !dbg !271
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !273
  %cmp = icmp eq i32 %call, 1, !dbg !274
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !275

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !276
  %cmp2 = icmp slt i32 %2, 10000, !dbg !279
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !280

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !281
  store i32 0, i32* %i, align 4, !dbg !283
  br label %for.cond, !dbg !285

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !286
  %4 = load i32, i32* %n, align 4, !dbg !288
  %cmp4 = icmp slt i32 %3, %4, !dbg !289
  br i1 %cmp4, label %for.body, label %for.end, !dbg !290

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !291
  %inc = add nsw i32 %5, 1, !dbg !291
  store i32 %inc, i32* %intVariable, align 4, !dbg !291
  br label %for.inc, !dbg !293

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !294
  %inc5 = add nsw i32 %6, 1, !dbg !294
  store i32 %inc5, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !298
  call void @printIntLine(i32 %7), !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !301

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !302
}

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !303 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !307
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !307
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !308
  store i8* %arraydecay, i8** %data, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !310, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 -1, i32* %connectSocket, align 4, !dbg !318
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !319, metadata !DIExpression()), !dbg !320
  %1 = load i8*, i8** %data, align 8, !dbg !321
  %call = call i64 @strlen(i8* %1) #8, !dbg !322
  store i64 %call, i64* %dataLen, align 8, !dbg !320
  br label %do.body, !dbg !323

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !324
  store i32 %call1, i32* %connectSocket, align 4, !dbg !326
  %2 = load i32, i32* %connectSocket, align 4, !dbg !327
  %cmp = icmp eq i32 %2, -1, !dbg !329
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !331

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !333
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !334
  store i16 2, i16* %sin_family, align 4, !dbg !335
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !336
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !337
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !338
  store i32 %call2, i32* %s_addr, align 4, !dbg !339
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !340
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !341
  store i16 %call3, i16* %sin_port, align 2, !dbg !342
  %4 = load i32, i32* %connectSocket, align 4, !dbg !343
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !345
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !346
  %cmp5 = icmp eq i32 %call4, -1, !dbg !347
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !348

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !349

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !351
  %7 = load i8*, i8** %data, align 8, !dbg !352
  %8 = load i64, i64* %dataLen, align 8, !dbg !353
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !354
  %9 = load i64, i64* %dataLen, align 8, !dbg !355
  %sub = sub i64 100, %9, !dbg !356
  %sub8 = sub i64 %sub, 1, !dbg !357
  %mul = mul i64 1, %sub8, !dbg !358
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !359
  %conv = trunc i64 %call9 to i32, !dbg !359
  store i32 %conv, i32* %recvResult, align 4, !dbg !360
  %10 = load i32, i32* %recvResult, align 4, !dbg !361
  %cmp10 = icmp eq i32 %10, -1, !dbg !363
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !364

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !365
  %cmp12 = icmp eq i32 %11, 0, !dbg !366
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !367

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !368

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !370
  %13 = load i64, i64* %dataLen, align 8, !dbg !371
  %14 = load i32, i32* %recvResult, align 4, !dbg !372
  %conv16 = sext i32 %14 to i64, !dbg !372
  %div = udiv i64 %conv16, 1, !dbg !373
  %add = add i64 %13, %div, !dbg !374
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !370
  store i8 0, i8* %arrayidx, align 1, !dbg !375
  %15 = load i8*, i8** %data, align 8, !dbg !376
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !377
  store i8* %call17, i8** %replace, align 8, !dbg !378
  %16 = load i8*, i8** %replace, align 8, !dbg !379
  %tobool = icmp ne i8* %16, null, !dbg !379
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !381

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !382
  store i8 0, i8* %17, align 1, !dbg !384
  br label %if.end19, !dbg !385

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !386
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !387
  store i8* %call20, i8** %replace, align 8, !dbg !388
  %19 = load i8*, i8** %replace, align 8, !dbg !389
  %tobool21 = icmp ne i8* %19, null, !dbg !389
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !391

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !392
  store i8 0, i8* %20, align 1, !dbg !394
  br label %if.end23, !dbg !395

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !396

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !397
  %cmp24 = icmp ne i32 %21, -1, !dbg !399
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !400

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !401
  %call27 = call i32 @close(i32 %22), !dbg !403
  br label %if.end28, !dbg !404

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !405
  %23 = load i8*, i8** %data, align 8, !dbg !406
  call void @goodB2G1Sink(i8* %23), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !409 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !412
  %tobool = icmp ne i32 %0, 0, !dbg !412
  br i1 %tobool, label %if.then, label %if.end7, !dbg !414

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !415, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %n, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !421, metadata !DIExpression()), !dbg !422
  %1 = load i8*, i8** %data.addr, align 8, !dbg !423
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !425
  %cmp = icmp eq i32 %call, 1, !dbg !426
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !427

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !428
  %cmp2 = icmp slt i32 %2, 10000, !dbg !431
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !432

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !433
  store i32 0, i32* %i, align 4, !dbg !435
  br label %for.cond, !dbg !437

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !438
  %4 = load i32, i32* %n, align 4, !dbg !440
  %cmp4 = icmp slt i32 %3, %4, !dbg !441
  br i1 %cmp4, label %for.body, label %for.end, !dbg !442

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !443
  %inc = add nsw i32 %5, 1, !dbg !443
  store i32 %inc, i32* %intVariable, align 4, !dbg !443
  br label %for.inc, !dbg !445

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !446
  %inc5 = add nsw i32 %6, 1, !dbg !446
  store i32 %inc5, i32* %i, align 4, !dbg !446
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !450
  call void @printIntLine(i32 %7), !dbg !451
  br label %if.end, !dbg !452

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !453

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !454

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !456 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !460
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !460
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !461
  store i8* %arraydecay, i8** %data, align 8, !dbg !462
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 -1, i32* %connectSocket, align 4, !dbg !471
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !472, metadata !DIExpression()), !dbg !473
  %1 = load i8*, i8** %data, align 8, !dbg !474
  %call = call i64 @strlen(i8* %1) #8, !dbg !475
  store i64 %call, i64* %dataLen, align 8, !dbg !473
  br label %do.body, !dbg !476

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !477
  store i32 %call1, i32* %connectSocket, align 4, !dbg !479
  %2 = load i32, i32* %connectSocket, align 4, !dbg !480
  %cmp = icmp eq i32 %2, -1, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !484

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !486
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !486
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !487
  store i16 2, i16* %sin_family, align 4, !dbg !488
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !489
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !490
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !491
  store i32 %call2, i32* %s_addr, align 4, !dbg !492
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !493
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !494
  store i16 %call3, i16* %sin_port, align 2, !dbg !495
  %4 = load i32, i32* %connectSocket, align 4, !dbg !496
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !498
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !499
  %cmp5 = icmp eq i32 %call4, -1, !dbg !500
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !501

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !502

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !504
  %7 = load i8*, i8** %data, align 8, !dbg !505
  %8 = load i64, i64* %dataLen, align 8, !dbg !506
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !507
  %9 = load i64, i64* %dataLen, align 8, !dbg !508
  %sub = sub i64 100, %9, !dbg !509
  %sub8 = sub i64 %sub, 1, !dbg !510
  %mul = mul i64 1, %sub8, !dbg !511
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !512
  %conv = trunc i64 %call9 to i32, !dbg !512
  store i32 %conv, i32* %recvResult, align 4, !dbg !513
  %10 = load i32, i32* %recvResult, align 4, !dbg !514
  %cmp10 = icmp eq i32 %10, -1, !dbg !516
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !517

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !518
  %cmp12 = icmp eq i32 %11, 0, !dbg !519
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !520

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !521

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !523
  %13 = load i64, i64* %dataLen, align 8, !dbg !524
  %14 = load i32, i32* %recvResult, align 4, !dbg !525
  %conv16 = sext i32 %14 to i64, !dbg !525
  %div = udiv i64 %conv16, 1, !dbg !526
  %add = add i64 %13, %div, !dbg !527
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !523
  store i8 0, i8* %arrayidx, align 1, !dbg !528
  %15 = load i8*, i8** %data, align 8, !dbg !529
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !530
  store i8* %call17, i8** %replace, align 8, !dbg !531
  %16 = load i8*, i8** %replace, align 8, !dbg !532
  %tobool = icmp ne i8* %16, null, !dbg !532
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !534

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !535
  store i8 0, i8* %17, align 1, !dbg !537
  br label %if.end19, !dbg !538

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !539
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !540
  store i8* %call20, i8** %replace, align 8, !dbg !541
  %19 = load i8*, i8** %replace, align 8, !dbg !542
  %tobool21 = icmp ne i8* %19, null, !dbg !542
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !544

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !545
  store i8 0, i8* %20, align 1, !dbg !547
  br label %if.end23, !dbg !548

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !549

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !550
  %cmp24 = icmp ne i32 %21, -1, !dbg !552
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !553

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !554
  %call27 = call i32 @close(i32 %22), !dbg !556
  br label %if.end28, !dbg !557

if.end28:                                         ; preds = %if.then26, %do.end
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !558
  %23 = load i8*, i8** %data, align 8, !dbg !559
  call void @goodB2G2Sink(i8* %23), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !562 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !565
  %tobool = icmp ne i32 %0, 0, !dbg !565
  br i1 %tobool, label %if.then, label %if.end4, !dbg !567

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !568, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %n, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !574, metadata !DIExpression()), !dbg !575
  %1 = load i8*, i8** %data.addr, align 8, !dbg !576
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !578
  %cmp = icmp eq i32 %call, 1, !dbg !579
  br i1 %cmp, label %if.then1, label %if.end, !dbg !580

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !581
  store i32 0, i32* %i, align 4, !dbg !583
  br label %for.cond, !dbg !585

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !586
  %3 = load i32, i32* %n, align 4, !dbg !588
  %cmp2 = icmp slt i32 %2, %3, !dbg !589
  br i1 %cmp2, label %for.body, label %for.end, !dbg !590

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !591
  %inc = add nsw i32 %4, 1, !dbg !591
  store i32 %inc, i32* %intVariable, align 4, !dbg !591
  br label %for.inc, !dbg !593

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !594
  %inc3 = add nsw i32 %5, 1, !dbg !594
  store i32 %inc3, i32* %i, align 4, !dbg !594
  br label %for.cond, !dbg !595, !llvm.loop !596

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !598
  call void @printIntLine(i32 %6), !dbg !599
  br label %if.end, !dbg !600

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !601

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !603 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !607
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !607
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !608
  store i8* %arraydecay, i8** %data, align 8, !dbg !609
  %1 = load i8*, i8** %data, align 8, !dbg !610
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !611
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !612
  %2 = load i8*, i8** %data, align 8, !dbg !613
  call void @goodG2BSink(i8* %2), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_21_good() #0 !dbg !616 {
entry:
  call void @goodB2G1(), !dbg !617
  call void @goodB2G2(), !dbg !618
  call void @goodG2B(), !dbg !619
  ret void, !dbg !620
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

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
!70 = !{i32 7, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{!"clang version 12.0.0"}
!74 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 53, type: !75, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !61}
!77 = !{}
!78 = !DILocalVariable(name: "data", arg: 1, scope: !74, file: !3, line: 53, type: !61)
!79 = !DILocation(line: 53, column: 21, scope: !74)
!80 = !DILocation(line: 55, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !3, line: 55, column: 8)
!82 = !DILocation(line: 55, column: 8, scope: !74)
!83 = !DILocalVariable(name: "i", scope: !84, file: !3, line: 58, type: !65)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 57, column: 9)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 56, column: 5)
!86 = !DILocation(line: 58, column: 17, scope: !84)
!87 = !DILocalVariable(name: "n", scope: !84, file: !3, line: 58, type: !65)
!88 = !DILocation(line: 58, column: 20, scope: !84)
!89 = !DILocalVariable(name: "intVariable", scope: !84, file: !3, line: 58, type: !65)
!90 = !DILocation(line: 58, column: 23, scope: !84)
!91 = !DILocation(line: 59, column: 24, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !3, line: 59, column: 17)
!93 = !DILocation(line: 59, column: 17, scope: !92)
!94 = !DILocation(line: 59, column: 40, scope: !92)
!95 = !DILocation(line: 59, column: 17, scope: !84)
!96 = !DILocation(line: 62, column: 29, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !3, line: 60, column: 13)
!98 = !DILocation(line: 63, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !3, line: 63, column: 17)
!100 = !DILocation(line: 63, column: 22, scope: !99)
!101 = !DILocation(line: 63, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 63, column: 17)
!103 = !DILocation(line: 63, column: 33, scope: !102)
!104 = !DILocation(line: 63, column: 31, scope: !102)
!105 = !DILocation(line: 63, column: 17, scope: !99)
!106 = !DILocation(line: 66, column: 32, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !3, line: 64, column: 17)
!108 = !DILocation(line: 67, column: 17, scope: !107)
!109 = !DILocation(line: 63, column: 37, scope: !102)
!110 = !DILocation(line: 63, column: 17, scope: !102)
!111 = distinct !{!111, !105, !112, !113}
!112 = !DILocation(line: 67, column: 17, scope: !99)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 68, column: 30, scope: !97)
!115 = !DILocation(line: 68, column: 17, scope: !97)
!116 = !DILocation(line: 69, column: 13, scope: !97)
!117 = !DILocation(line: 71, column: 5, scope: !85)
!118 = !DILocation(line: 72, column: 1, scope: !74)
!119 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_21_bad", scope: !3, file: !3, line: 74, type: !120, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DILocalVariable(name: "data", scope: !119, file: !3, line: 76, type: !61)
!123 = !DILocation(line: 76, column: 12, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !3, line: 77, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 100)
!128 = !DILocation(line: 77, column: 10, scope: !119)
!129 = !DILocation(line: 78, column: 12, scope: !119)
!130 = !DILocation(line: 78, column: 10, scope: !119)
!131 = !DILocalVariable(name: "recvResult", scope: !132, file: !3, line: 84, type: !65)
!132 = distinct !DILexicalBlock(scope: !119, file: !3, line: 79, column: 5)
!133 = !DILocation(line: 84, column: 13, scope: !132)
!134 = !DILocalVariable(name: "service", scope: !132, file: !3, line: 85, type: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !136)
!136 = !{!137, !138, !144, !151}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !135, file: !19, line: 240, baseType: !53, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !135, file: !19, line: 241, baseType: !139, size: 16, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !141, line: 25, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !143, line: 40, baseType: !55)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !135, file: !19, line: 242, baseType: !145, size: 32, offset: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !145, file: !19, line: 33, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 26, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !143, line: 42, baseType: !7)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !135, file: !19, line: 245, baseType: !152, size: 64, offset: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !154)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: 8)
!156 = !DILocation(line: 85, column: 28, scope: !132)
!157 = !DILocalVariable(name: "replace", scope: !132, file: !3, line: 86, type: !61)
!158 = !DILocation(line: 86, column: 15, scope: !132)
!159 = !DILocalVariable(name: "connectSocket", scope: !132, file: !3, line: 87, type: !65)
!160 = !DILocation(line: 87, column: 16, scope: !132)
!161 = !DILocalVariable(name: "dataLen", scope: !132, file: !3, line: 88, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 46, baseType: !164)
!163 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!164 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!165 = !DILocation(line: 88, column: 16, scope: !132)
!166 = !DILocation(line: 88, column: 33, scope: !132)
!167 = !DILocation(line: 88, column: 26, scope: !132)
!168 = !DILocation(line: 89, column: 9, scope: !132)
!169 = !DILocation(line: 99, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !132, file: !3, line: 90, column: 9)
!171 = !DILocation(line: 99, column: 27, scope: !170)
!172 = !DILocation(line: 100, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 100, column: 17)
!174 = !DILocation(line: 100, column: 31, scope: !173)
!175 = !DILocation(line: 100, column: 17, scope: !170)
!176 = !DILocation(line: 102, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !3, line: 101, column: 13)
!178 = !DILocation(line: 104, column: 13, scope: !170)
!179 = !DILocation(line: 105, column: 21, scope: !170)
!180 = !DILocation(line: 105, column: 32, scope: !170)
!181 = !DILocation(line: 106, column: 39, scope: !170)
!182 = !DILocation(line: 106, column: 21, scope: !170)
!183 = !DILocation(line: 106, column: 30, scope: !170)
!184 = !DILocation(line: 106, column: 37, scope: !170)
!185 = !DILocation(line: 107, column: 32, scope: !170)
!186 = !DILocation(line: 107, column: 21, scope: !170)
!187 = !DILocation(line: 107, column: 30, scope: !170)
!188 = !DILocation(line: 108, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !170, file: !3, line: 108, column: 17)
!190 = !DILocation(line: 108, column: 40, scope: !189)
!191 = !DILocation(line: 108, column: 17, scope: !189)
!192 = !DILocation(line: 108, column: 85, scope: !189)
!193 = !DILocation(line: 108, column: 17, scope: !170)
!194 = !DILocation(line: 110, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !3, line: 109, column: 13)
!196 = !DILocation(line: 115, column: 31, scope: !170)
!197 = !DILocation(line: 115, column: 55, scope: !170)
!198 = !DILocation(line: 115, column: 62, scope: !170)
!199 = !DILocation(line: 115, column: 60, scope: !170)
!200 = !DILocation(line: 115, column: 94, scope: !170)
!201 = !DILocation(line: 115, column: 92, scope: !170)
!202 = !DILocation(line: 115, column: 102, scope: !170)
!203 = !DILocation(line: 115, column: 85, scope: !170)
!204 = !DILocation(line: 115, column: 26, scope: !170)
!205 = !DILocation(line: 115, column: 24, scope: !170)
!206 = !DILocation(line: 116, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !170, file: !3, line: 116, column: 17)
!208 = !DILocation(line: 116, column: 28, scope: !207)
!209 = !DILocation(line: 116, column: 44, scope: !207)
!210 = !DILocation(line: 116, column: 47, scope: !207)
!211 = !DILocation(line: 116, column: 58, scope: !207)
!212 = !DILocation(line: 116, column: 17, scope: !170)
!213 = !DILocation(line: 118, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !3, line: 117, column: 13)
!215 = !DILocation(line: 121, column: 13, scope: !170)
!216 = !DILocation(line: 121, column: 18, scope: !170)
!217 = !DILocation(line: 121, column: 28, scope: !170)
!218 = !DILocation(line: 121, column: 39, scope: !170)
!219 = !DILocation(line: 121, column: 26, scope: !170)
!220 = !DILocation(line: 121, column: 55, scope: !170)
!221 = !DILocation(line: 123, column: 30, scope: !170)
!222 = !DILocation(line: 123, column: 23, scope: !170)
!223 = !DILocation(line: 123, column: 21, scope: !170)
!224 = !DILocation(line: 124, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !170, file: !3, line: 124, column: 17)
!226 = !DILocation(line: 124, column: 17, scope: !170)
!227 = !DILocation(line: 126, column: 18, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 125, column: 13)
!229 = !DILocation(line: 126, column: 26, scope: !228)
!230 = !DILocation(line: 127, column: 13, scope: !228)
!231 = !DILocation(line: 128, column: 30, scope: !170)
!232 = !DILocation(line: 128, column: 23, scope: !170)
!233 = !DILocation(line: 128, column: 21, scope: !170)
!234 = !DILocation(line: 129, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !170, file: !3, line: 129, column: 17)
!236 = !DILocation(line: 129, column: 17, scope: !170)
!237 = !DILocation(line: 131, column: 18, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 130, column: 13)
!239 = !DILocation(line: 131, column: 26, scope: !238)
!240 = !DILocation(line: 132, column: 13, scope: !238)
!241 = !DILocation(line: 133, column: 9, scope: !170)
!242 = !DILocation(line: 135, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !132, file: !3, line: 135, column: 13)
!244 = !DILocation(line: 135, column: 27, scope: !243)
!245 = !DILocation(line: 135, column: 13, scope: !132)
!246 = !DILocation(line: 137, column: 26, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 136, column: 9)
!248 = !DILocation(line: 137, column: 13, scope: !247)
!249 = !DILocation(line: 138, column: 9, scope: !247)
!250 = !DILocation(line: 146, column: 15, scope: !119)
!251 = !DILocation(line: 147, column: 13, scope: !119)
!252 = !DILocation(line: 147, column: 5, scope: !119)
!253 = !DILocation(line: 148, column: 1, scope: !119)
!254 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!255 = !DILocalVariable(name: "data", arg: 1, scope: !254, file: !3, line: 160, type: !61)
!256 = !DILocation(line: 160, column: 26, scope: !254)
!257 = !DILocation(line: 162, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 162, column: 8)
!259 = !DILocation(line: 162, column: 8, scope: !254)
!260 = !DILocation(line: 165, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 163, column: 5)
!262 = !DILocation(line: 166, column: 5, scope: !261)
!263 = !DILocalVariable(name: "i", scope: !264, file: !3, line: 170, type: !65)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 169, column: 9)
!265 = distinct !DILexicalBlock(scope: !258, file: !3, line: 168, column: 5)
!266 = !DILocation(line: 170, column: 17, scope: !264)
!267 = !DILocalVariable(name: "n", scope: !264, file: !3, line: 170, type: !65)
!268 = !DILocation(line: 170, column: 20, scope: !264)
!269 = !DILocalVariable(name: "intVariable", scope: !264, file: !3, line: 170, type: !65)
!270 = !DILocation(line: 170, column: 23, scope: !264)
!271 = !DILocation(line: 171, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !264, file: !3, line: 171, column: 17)
!273 = !DILocation(line: 171, column: 17, scope: !272)
!274 = !DILocation(line: 171, column: 40, scope: !272)
!275 = !DILocation(line: 171, column: 17, scope: !264)
!276 = !DILocation(line: 174, column: 21, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 174, column: 21)
!278 = distinct !DILexicalBlock(scope: !272, file: !3, line: 172, column: 13)
!279 = !DILocation(line: 174, column: 23, scope: !277)
!280 = !DILocation(line: 174, column: 21, scope: !278)
!281 = !DILocation(line: 176, column: 33, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !3, line: 175, column: 17)
!283 = !DILocation(line: 177, column: 28, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !3, line: 177, column: 21)
!285 = !DILocation(line: 177, column: 26, scope: !284)
!286 = !DILocation(line: 177, column: 33, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 177, column: 21)
!288 = !DILocation(line: 177, column: 37, scope: !287)
!289 = !DILocation(line: 177, column: 35, scope: !287)
!290 = !DILocation(line: 177, column: 21, scope: !284)
!291 = !DILocation(line: 180, column: 36, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !3, line: 178, column: 21)
!293 = !DILocation(line: 181, column: 21, scope: !292)
!294 = !DILocation(line: 177, column: 41, scope: !287)
!295 = !DILocation(line: 177, column: 21, scope: !287)
!296 = distinct !{!296, !290, !297, !113}
!297 = !DILocation(line: 181, column: 21, scope: !284)
!298 = !DILocation(line: 182, column: 34, scope: !282)
!299 = !DILocation(line: 182, column: 21, scope: !282)
!300 = !DILocation(line: 183, column: 17, scope: !282)
!301 = !DILocation(line: 184, column: 13, scope: !278)
!302 = !DILocation(line: 187, column: 1, scope: !254)
!303 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 189, type: !120, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!304 = !DILocalVariable(name: "data", scope: !303, file: !3, line: 191, type: !61)
!305 = !DILocation(line: 191, column: 12, scope: !303)
!306 = !DILocalVariable(name: "dataBuffer", scope: !303, file: !3, line: 192, type: !125)
!307 = !DILocation(line: 192, column: 10, scope: !303)
!308 = !DILocation(line: 193, column: 12, scope: !303)
!309 = !DILocation(line: 193, column: 10, scope: !303)
!310 = !DILocalVariable(name: "recvResult", scope: !311, file: !3, line: 199, type: !65)
!311 = distinct !DILexicalBlock(scope: !303, file: !3, line: 194, column: 5)
!312 = !DILocation(line: 199, column: 13, scope: !311)
!313 = !DILocalVariable(name: "service", scope: !311, file: !3, line: 200, type: !135)
!314 = !DILocation(line: 200, column: 28, scope: !311)
!315 = !DILocalVariable(name: "replace", scope: !311, file: !3, line: 201, type: !61)
!316 = !DILocation(line: 201, column: 15, scope: !311)
!317 = !DILocalVariable(name: "connectSocket", scope: !311, file: !3, line: 202, type: !65)
!318 = !DILocation(line: 202, column: 16, scope: !311)
!319 = !DILocalVariable(name: "dataLen", scope: !311, file: !3, line: 203, type: !162)
!320 = !DILocation(line: 203, column: 16, scope: !311)
!321 = !DILocation(line: 203, column: 33, scope: !311)
!322 = !DILocation(line: 203, column: 26, scope: !311)
!323 = !DILocation(line: 204, column: 9, scope: !311)
!324 = !DILocation(line: 214, column: 29, scope: !325)
!325 = distinct !DILexicalBlock(scope: !311, file: !3, line: 205, column: 9)
!326 = !DILocation(line: 214, column: 27, scope: !325)
!327 = !DILocation(line: 215, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 215, column: 17)
!329 = !DILocation(line: 215, column: 31, scope: !328)
!330 = !DILocation(line: 215, column: 17, scope: !325)
!331 = !DILocation(line: 217, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 216, column: 13)
!333 = !DILocation(line: 219, column: 13, scope: !325)
!334 = !DILocation(line: 220, column: 21, scope: !325)
!335 = !DILocation(line: 220, column: 32, scope: !325)
!336 = !DILocation(line: 221, column: 39, scope: !325)
!337 = !DILocation(line: 221, column: 21, scope: !325)
!338 = !DILocation(line: 221, column: 30, scope: !325)
!339 = !DILocation(line: 221, column: 37, scope: !325)
!340 = !DILocation(line: 222, column: 32, scope: !325)
!341 = !DILocation(line: 222, column: 21, scope: !325)
!342 = !DILocation(line: 222, column: 30, scope: !325)
!343 = !DILocation(line: 223, column: 25, scope: !344)
!344 = distinct !DILexicalBlock(scope: !325, file: !3, line: 223, column: 17)
!345 = !DILocation(line: 223, column: 40, scope: !344)
!346 = !DILocation(line: 223, column: 17, scope: !344)
!347 = !DILocation(line: 223, column: 85, scope: !344)
!348 = !DILocation(line: 223, column: 17, scope: !325)
!349 = !DILocation(line: 225, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 224, column: 13)
!351 = !DILocation(line: 230, column: 31, scope: !325)
!352 = !DILocation(line: 230, column: 55, scope: !325)
!353 = !DILocation(line: 230, column: 62, scope: !325)
!354 = !DILocation(line: 230, column: 60, scope: !325)
!355 = !DILocation(line: 230, column: 94, scope: !325)
!356 = !DILocation(line: 230, column: 92, scope: !325)
!357 = !DILocation(line: 230, column: 102, scope: !325)
!358 = !DILocation(line: 230, column: 85, scope: !325)
!359 = !DILocation(line: 230, column: 26, scope: !325)
!360 = !DILocation(line: 230, column: 24, scope: !325)
!361 = !DILocation(line: 231, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !325, file: !3, line: 231, column: 17)
!363 = !DILocation(line: 231, column: 28, scope: !362)
!364 = !DILocation(line: 231, column: 44, scope: !362)
!365 = !DILocation(line: 231, column: 47, scope: !362)
!366 = !DILocation(line: 231, column: 58, scope: !362)
!367 = !DILocation(line: 231, column: 17, scope: !325)
!368 = !DILocation(line: 233, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 232, column: 13)
!370 = !DILocation(line: 236, column: 13, scope: !325)
!371 = !DILocation(line: 236, column: 18, scope: !325)
!372 = !DILocation(line: 236, column: 28, scope: !325)
!373 = !DILocation(line: 236, column: 39, scope: !325)
!374 = !DILocation(line: 236, column: 26, scope: !325)
!375 = !DILocation(line: 236, column: 55, scope: !325)
!376 = !DILocation(line: 238, column: 30, scope: !325)
!377 = !DILocation(line: 238, column: 23, scope: !325)
!378 = !DILocation(line: 238, column: 21, scope: !325)
!379 = !DILocation(line: 239, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !325, file: !3, line: 239, column: 17)
!381 = !DILocation(line: 239, column: 17, scope: !325)
!382 = !DILocation(line: 241, column: 18, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 240, column: 13)
!384 = !DILocation(line: 241, column: 26, scope: !383)
!385 = !DILocation(line: 242, column: 13, scope: !383)
!386 = !DILocation(line: 243, column: 30, scope: !325)
!387 = !DILocation(line: 243, column: 23, scope: !325)
!388 = !DILocation(line: 243, column: 21, scope: !325)
!389 = !DILocation(line: 244, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !325, file: !3, line: 244, column: 17)
!391 = !DILocation(line: 244, column: 17, scope: !325)
!392 = !DILocation(line: 246, column: 18, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 245, column: 13)
!394 = !DILocation(line: 246, column: 26, scope: !393)
!395 = !DILocation(line: 247, column: 13, scope: !393)
!396 = !DILocation(line: 248, column: 9, scope: !325)
!397 = !DILocation(line: 250, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !311, file: !3, line: 250, column: 13)
!399 = !DILocation(line: 250, column: 27, scope: !398)
!400 = !DILocation(line: 250, column: 13, scope: !311)
!401 = !DILocation(line: 252, column: 26, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 251, column: 9)
!403 = !DILocation(line: 252, column: 13, scope: !402)
!404 = !DILocation(line: 253, column: 9, scope: !402)
!405 = !DILocation(line: 261, column: 20, scope: !303)
!406 = !DILocation(line: 262, column: 18, scope: !303)
!407 = !DILocation(line: 262, column: 5, scope: !303)
!408 = !DILocation(line: 263, column: 1, scope: !303)
!409 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 266, type: !75, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!410 = !DILocalVariable(name: "data", arg: 1, scope: !409, file: !3, line: 266, type: !61)
!411 = !DILocation(line: 266, column: 26, scope: !409)
!412 = !DILocation(line: 268, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 268, column: 8)
!414 = !DILocation(line: 268, column: 8, scope: !409)
!415 = !DILocalVariable(name: "i", scope: !416, file: !3, line: 271, type: !65)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 270, column: 9)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 269, column: 5)
!418 = !DILocation(line: 271, column: 17, scope: !416)
!419 = !DILocalVariable(name: "n", scope: !416, file: !3, line: 271, type: !65)
!420 = !DILocation(line: 271, column: 20, scope: !416)
!421 = !DILocalVariable(name: "intVariable", scope: !416, file: !3, line: 271, type: !65)
!422 = !DILocation(line: 271, column: 23, scope: !416)
!423 = !DILocation(line: 272, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !3, line: 272, column: 17)
!425 = !DILocation(line: 272, column: 17, scope: !424)
!426 = !DILocation(line: 272, column: 40, scope: !424)
!427 = !DILocation(line: 272, column: 17, scope: !416)
!428 = !DILocation(line: 275, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 275, column: 21)
!430 = distinct !DILexicalBlock(scope: !424, file: !3, line: 273, column: 13)
!431 = !DILocation(line: 275, column: 23, scope: !429)
!432 = !DILocation(line: 275, column: 21, scope: !430)
!433 = !DILocation(line: 277, column: 33, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 276, column: 17)
!435 = !DILocation(line: 278, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !3, line: 278, column: 21)
!437 = !DILocation(line: 278, column: 26, scope: !436)
!438 = !DILocation(line: 278, column: 33, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 278, column: 21)
!440 = !DILocation(line: 278, column: 37, scope: !439)
!441 = !DILocation(line: 278, column: 35, scope: !439)
!442 = !DILocation(line: 278, column: 21, scope: !436)
!443 = !DILocation(line: 281, column: 36, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 279, column: 21)
!445 = !DILocation(line: 282, column: 21, scope: !444)
!446 = !DILocation(line: 278, column: 41, scope: !439)
!447 = !DILocation(line: 278, column: 21, scope: !439)
!448 = distinct !{!448, !442, !449, !113}
!449 = !DILocation(line: 282, column: 21, scope: !436)
!450 = !DILocation(line: 283, column: 34, scope: !434)
!451 = !DILocation(line: 283, column: 21, scope: !434)
!452 = !DILocation(line: 284, column: 17, scope: !434)
!453 = !DILocation(line: 285, column: 13, scope: !430)
!454 = !DILocation(line: 287, column: 5, scope: !417)
!455 = !DILocation(line: 288, column: 1, scope: !409)
!456 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 290, type: !120, scopeLine: 291, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!457 = !DILocalVariable(name: "data", scope: !456, file: !3, line: 292, type: !61)
!458 = !DILocation(line: 292, column: 12, scope: !456)
!459 = !DILocalVariable(name: "dataBuffer", scope: !456, file: !3, line: 293, type: !125)
!460 = !DILocation(line: 293, column: 10, scope: !456)
!461 = !DILocation(line: 294, column: 12, scope: !456)
!462 = !DILocation(line: 294, column: 10, scope: !456)
!463 = !DILocalVariable(name: "recvResult", scope: !464, file: !3, line: 300, type: !65)
!464 = distinct !DILexicalBlock(scope: !456, file: !3, line: 295, column: 5)
!465 = !DILocation(line: 300, column: 13, scope: !464)
!466 = !DILocalVariable(name: "service", scope: !464, file: !3, line: 301, type: !135)
!467 = !DILocation(line: 301, column: 28, scope: !464)
!468 = !DILocalVariable(name: "replace", scope: !464, file: !3, line: 302, type: !61)
!469 = !DILocation(line: 302, column: 15, scope: !464)
!470 = !DILocalVariable(name: "connectSocket", scope: !464, file: !3, line: 303, type: !65)
!471 = !DILocation(line: 303, column: 16, scope: !464)
!472 = !DILocalVariable(name: "dataLen", scope: !464, file: !3, line: 304, type: !162)
!473 = !DILocation(line: 304, column: 16, scope: !464)
!474 = !DILocation(line: 304, column: 33, scope: !464)
!475 = !DILocation(line: 304, column: 26, scope: !464)
!476 = !DILocation(line: 305, column: 9, scope: !464)
!477 = !DILocation(line: 315, column: 29, scope: !478)
!478 = distinct !DILexicalBlock(scope: !464, file: !3, line: 306, column: 9)
!479 = !DILocation(line: 315, column: 27, scope: !478)
!480 = !DILocation(line: 316, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !3, line: 316, column: 17)
!482 = !DILocation(line: 316, column: 31, scope: !481)
!483 = !DILocation(line: 316, column: 17, scope: !478)
!484 = !DILocation(line: 318, column: 17, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 317, column: 13)
!486 = !DILocation(line: 320, column: 13, scope: !478)
!487 = !DILocation(line: 321, column: 21, scope: !478)
!488 = !DILocation(line: 321, column: 32, scope: !478)
!489 = !DILocation(line: 322, column: 39, scope: !478)
!490 = !DILocation(line: 322, column: 21, scope: !478)
!491 = !DILocation(line: 322, column: 30, scope: !478)
!492 = !DILocation(line: 322, column: 37, scope: !478)
!493 = !DILocation(line: 323, column: 32, scope: !478)
!494 = !DILocation(line: 323, column: 21, scope: !478)
!495 = !DILocation(line: 323, column: 30, scope: !478)
!496 = !DILocation(line: 324, column: 25, scope: !497)
!497 = distinct !DILexicalBlock(scope: !478, file: !3, line: 324, column: 17)
!498 = !DILocation(line: 324, column: 40, scope: !497)
!499 = !DILocation(line: 324, column: 17, scope: !497)
!500 = !DILocation(line: 324, column: 85, scope: !497)
!501 = !DILocation(line: 324, column: 17, scope: !478)
!502 = !DILocation(line: 326, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !497, file: !3, line: 325, column: 13)
!504 = !DILocation(line: 331, column: 31, scope: !478)
!505 = !DILocation(line: 331, column: 55, scope: !478)
!506 = !DILocation(line: 331, column: 62, scope: !478)
!507 = !DILocation(line: 331, column: 60, scope: !478)
!508 = !DILocation(line: 331, column: 94, scope: !478)
!509 = !DILocation(line: 331, column: 92, scope: !478)
!510 = !DILocation(line: 331, column: 102, scope: !478)
!511 = !DILocation(line: 331, column: 85, scope: !478)
!512 = !DILocation(line: 331, column: 26, scope: !478)
!513 = !DILocation(line: 331, column: 24, scope: !478)
!514 = !DILocation(line: 332, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !478, file: !3, line: 332, column: 17)
!516 = !DILocation(line: 332, column: 28, scope: !515)
!517 = !DILocation(line: 332, column: 44, scope: !515)
!518 = !DILocation(line: 332, column: 47, scope: !515)
!519 = !DILocation(line: 332, column: 58, scope: !515)
!520 = !DILocation(line: 332, column: 17, scope: !478)
!521 = !DILocation(line: 334, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !515, file: !3, line: 333, column: 13)
!523 = !DILocation(line: 337, column: 13, scope: !478)
!524 = !DILocation(line: 337, column: 18, scope: !478)
!525 = !DILocation(line: 337, column: 28, scope: !478)
!526 = !DILocation(line: 337, column: 39, scope: !478)
!527 = !DILocation(line: 337, column: 26, scope: !478)
!528 = !DILocation(line: 337, column: 55, scope: !478)
!529 = !DILocation(line: 339, column: 30, scope: !478)
!530 = !DILocation(line: 339, column: 23, scope: !478)
!531 = !DILocation(line: 339, column: 21, scope: !478)
!532 = !DILocation(line: 340, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !478, file: !3, line: 340, column: 17)
!534 = !DILocation(line: 340, column: 17, scope: !478)
!535 = !DILocation(line: 342, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 341, column: 13)
!537 = !DILocation(line: 342, column: 26, scope: !536)
!538 = !DILocation(line: 343, column: 13, scope: !536)
!539 = !DILocation(line: 344, column: 30, scope: !478)
!540 = !DILocation(line: 344, column: 23, scope: !478)
!541 = !DILocation(line: 344, column: 21, scope: !478)
!542 = !DILocation(line: 345, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !478, file: !3, line: 345, column: 17)
!544 = !DILocation(line: 345, column: 17, scope: !478)
!545 = !DILocation(line: 347, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !3, line: 346, column: 13)
!547 = !DILocation(line: 347, column: 26, scope: !546)
!548 = !DILocation(line: 348, column: 13, scope: !546)
!549 = !DILocation(line: 349, column: 9, scope: !478)
!550 = !DILocation(line: 351, column: 13, scope: !551)
!551 = distinct !DILexicalBlock(scope: !464, file: !3, line: 351, column: 13)
!552 = !DILocation(line: 351, column: 27, scope: !551)
!553 = !DILocation(line: 351, column: 13, scope: !464)
!554 = !DILocation(line: 353, column: 26, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 352, column: 9)
!556 = !DILocation(line: 353, column: 13, scope: !555)
!557 = !DILocation(line: 354, column: 9, scope: !555)
!558 = !DILocation(line: 362, column: 20, scope: !456)
!559 = !DILocation(line: 363, column: 18, scope: !456)
!560 = !DILocation(line: 363, column: 5, scope: !456)
!561 = !DILocation(line: 364, column: 1, scope: !456)
!562 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 367, type: !75, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!563 = !DILocalVariable(name: "data", arg: 1, scope: !562, file: !3, line: 367, type: !61)
!564 = !DILocation(line: 367, column: 25, scope: !562)
!565 = !DILocation(line: 369, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 369, column: 8)
!567 = !DILocation(line: 369, column: 8, scope: !562)
!568 = !DILocalVariable(name: "i", scope: !569, file: !3, line: 372, type: !65)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 371, column: 9)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 370, column: 5)
!571 = !DILocation(line: 372, column: 17, scope: !569)
!572 = !DILocalVariable(name: "n", scope: !569, file: !3, line: 372, type: !65)
!573 = !DILocation(line: 372, column: 20, scope: !569)
!574 = !DILocalVariable(name: "intVariable", scope: !569, file: !3, line: 372, type: !65)
!575 = !DILocation(line: 372, column: 23, scope: !569)
!576 = !DILocation(line: 373, column: 24, scope: !577)
!577 = distinct !DILexicalBlock(scope: !569, file: !3, line: 373, column: 17)
!578 = !DILocation(line: 373, column: 17, scope: !577)
!579 = !DILocation(line: 373, column: 40, scope: !577)
!580 = !DILocation(line: 373, column: 17, scope: !569)
!581 = !DILocation(line: 376, column: 29, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 374, column: 13)
!583 = !DILocation(line: 377, column: 24, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 377, column: 17)
!585 = !DILocation(line: 377, column: 22, scope: !584)
!586 = !DILocation(line: 377, column: 29, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 377, column: 17)
!588 = !DILocation(line: 377, column: 33, scope: !587)
!589 = !DILocation(line: 377, column: 31, scope: !587)
!590 = !DILocation(line: 377, column: 17, scope: !584)
!591 = !DILocation(line: 380, column: 32, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !3, line: 378, column: 17)
!593 = !DILocation(line: 381, column: 17, scope: !592)
!594 = !DILocation(line: 377, column: 37, scope: !587)
!595 = !DILocation(line: 377, column: 17, scope: !587)
!596 = distinct !{!596, !590, !597, !113}
!597 = !DILocation(line: 381, column: 17, scope: !584)
!598 = !DILocation(line: 382, column: 30, scope: !582)
!599 = !DILocation(line: 382, column: 17, scope: !582)
!600 = !DILocation(line: 383, column: 13, scope: !582)
!601 = !DILocation(line: 385, column: 5, scope: !570)
!602 = !DILocation(line: 386, column: 1, scope: !562)
!603 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 388, type: !120, scopeLine: 389, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!604 = !DILocalVariable(name: "data", scope: !603, file: !3, line: 390, type: !61)
!605 = !DILocation(line: 390, column: 12, scope: !603)
!606 = !DILocalVariable(name: "dataBuffer", scope: !603, file: !3, line: 391, type: !125)
!607 = !DILocation(line: 391, column: 10, scope: !603)
!608 = !DILocation(line: 392, column: 12, scope: !603)
!609 = !DILocation(line: 392, column: 10, scope: !603)
!610 = !DILocation(line: 394, column: 12, scope: !603)
!611 = !DILocation(line: 394, column: 5, scope: !603)
!612 = !DILocation(line: 395, column: 19, scope: !603)
!613 = !DILocation(line: 396, column: 17, scope: !603)
!614 = !DILocation(line: 396, column: 5, scope: !603)
!615 = !DILocation(line: 397, column: 1, scope: !603)
!616 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_21_good", scope: !3, file: !3, line: 399, type: !120, scopeLine: 400, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !77)
!617 = !DILocation(line: 401, column: 5, scope: !616)
!618 = !DILocation(line: 402, column: 5, scope: !616)
!619 = !DILocation(line: 403, column: 5, scope: !616)
!620 = !DILocation(line: 404, column: 1, scope: !616)
