; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_03.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_03_bad() #0 !dbg !64 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !77, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !83, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %connectSocket, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #7, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  br label %do.body, !dbg !117

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !118
  store i32 %call1, i32* %connectSocket, align 4, !dbg !120
  %2 = load i32, i32* %connectSocket, align 4, !dbg !121
  %cmp = icmp eq i32 %2, -1, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !125

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !127
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !128
  store i16 2, i16* %sin_family, align 4, !dbg !129
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !130
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !131
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !132
  store i32 %call2, i32* %s_addr, align 4, !dbg !133
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !134
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !135
  store i16 %call3, i16* %sin_port, align 2, !dbg !136
  %4 = load i32, i32* %connectSocket, align 4, !dbg !137
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !139
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !140
  %cmp5 = icmp eq i32 %call4, -1, !dbg !141
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !142

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !143

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !145
  %7 = load i8*, i8** %data, align 8, !dbg !146
  %8 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !148
  %9 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub = sub i64 100, %9, !dbg !150
  %sub8 = sub i64 %sub, 1, !dbg !151
  %mul = mul i64 1, %sub8, !dbg !152
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !153
  %conv = trunc i64 %call9 to i32, !dbg !153
  store i32 %conv, i32* %recvResult, align 4, !dbg !154
  %10 = load i32, i32* %recvResult, align 4, !dbg !155
  %cmp10 = icmp eq i32 %10, -1, !dbg !157
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !158

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !159
  %cmp12 = icmp eq i32 %11, 0, !dbg !160
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !161

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !162

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !164
  %13 = load i64, i64* %dataLen, align 8, !dbg !165
  %14 = load i32, i32* %recvResult, align 4, !dbg !166
  %conv16 = sext i32 %14 to i64, !dbg !166
  %div = udiv i64 %conv16, 1, !dbg !167
  %add = add i64 %13, %div, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !169
  %15 = load i8*, i8** %data, align 8, !dbg !170
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !171
  store i8* %call17, i8** %replace, align 8, !dbg !172
  %16 = load i8*, i8** %replace, align 8, !dbg !173
  %tobool = icmp ne i8* %16, null, !dbg !173
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !175

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !176
  store i8 0, i8* %17, align 1, !dbg !178
  br label %if.end19, !dbg !179

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !180
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !181
  store i8* %call20, i8** %replace, align 8, !dbg !182
  %19 = load i8*, i8** %replace, align 8, !dbg !183
  %tobool21 = icmp ne i8* %19, null, !dbg !183
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !185

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !186
  store i8 0, i8* %20, align 1, !dbg !188
  br label %if.end23, !dbg !189

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !190

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !191
  %cmp24 = icmp ne i32 %21, -1, !dbg !193
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !194

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !195
  %call27 = call i32 @close(i32 %22), !dbg !197
  br label %if.end28, !dbg !198

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !199, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %n, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !206, metadata !DIExpression()), !dbg !207
  %23 = load i8*, i8** %data, align 8, !dbg !208
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !210
  %cmp30 = icmp eq i32 %call29, 1, !dbg !211
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !212

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !213
  store i32 0, i32* %i, align 4, !dbg !215
  br label %for.cond, !dbg !217

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load i32, i32* %i, align 4, !dbg !218
  %25 = load i32, i32* %n, align 4, !dbg !220
  %cmp33 = icmp slt i32 %24, %25, !dbg !221
  br i1 %cmp33, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !223
  %inc = add nsw i32 %26, 1, !dbg !223
  store i32 %inc, i32* %intVariable, align 4, !dbg !223
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !226
  %inc35 = add nsw i32 %27, 1, !dbg !226
  store i32 %inc35, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !231
  call void @printIntLine(i32 %28), !dbg !232
  br label %if.end36, !dbg !233

if.end36:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !234
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

declare dso_local void @printIntLine(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !235 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 -1, i32* %connectSocket, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !253, metadata !DIExpression()), !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i64 @strlen(i8* %1) #7, !dbg !256
  store i64 %call, i64* %dataLen, align 8, !dbg !254
  br label %do.body, !dbg !257

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !258
  store i32 %call1, i32* %connectSocket, align 4, !dbg !260
  %2 = load i32, i32* %connectSocket, align 4, !dbg !261
  %cmp = icmp eq i32 %2, -1, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !265

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !267
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !268
  store i16 2, i16* %sin_family, align 4, !dbg !269
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !270
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !271
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !272
  store i32 %call2, i32* %s_addr, align 4, !dbg !273
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !274
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !275
  store i16 %call3, i16* %sin_port, align 2, !dbg !276
  %4 = load i32, i32* %connectSocket, align 4, !dbg !277
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !279
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !280
  %cmp5 = icmp eq i32 %call4, -1, !dbg !281
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !282

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !283

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !285
  %7 = load i8*, i8** %data, align 8, !dbg !286
  %8 = load i64, i64* %dataLen, align 8, !dbg !287
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !288
  %9 = load i64, i64* %dataLen, align 8, !dbg !289
  %sub = sub i64 100, %9, !dbg !290
  %sub8 = sub i64 %sub, 1, !dbg !291
  %mul = mul i64 1, %sub8, !dbg !292
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !293
  %conv = trunc i64 %call9 to i32, !dbg !293
  store i32 %conv, i32* %recvResult, align 4, !dbg !294
  %10 = load i32, i32* %recvResult, align 4, !dbg !295
  %cmp10 = icmp eq i32 %10, -1, !dbg !297
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !298

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !299
  %cmp12 = icmp eq i32 %11, 0, !dbg !300
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !301

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !302

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !304
  %13 = load i64, i64* %dataLen, align 8, !dbg !305
  %14 = load i32, i32* %recvResult, align 4, !dbg !306
  %conv16 = sext i32 %14 to i64, !dbg !306
  %div = udiv i64 %conv16, 1, !dbg !307
  %add = add i64 %13, %div, !dbg !308
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !304
  store i8 0, i8* %arrayidx, align 1, !dbg !309
  %15 = load i8*, i8** %data, align 8, !dbg !310
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !311
  store i8* %call17, i8** %replace, align 8, !dbg !312
  %16 = load i8*, i8** %replace, align 8, !dbg !313
  %tobool = icmp ne i8* %16, null, !dbg !313
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !315

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !316
  store i8 0, i8* %17, align 1, !dbg !318
  br label %if.end19, !dbg !319

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !320
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !321
  store i8* %call20, i8** %replace, align 8, !dbg !322
  %19 = load i8*, i8** %replace, align 8, !dbg !323
  %tobool21 = icmp ne i8* %19, null, !dbg !323
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !325

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !326
  store i8 0, i8* %20, align 1, !dbg !328
  br label %if.end23, !dbg !329

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !330

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !331
  %cmp24 = icmp ne i32 %21, -1, !dbg !333
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !334

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !335
  %call27 = call i32 @close(i32 %22), !dbg !337
  br label %if.end28, !dbg !338

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %n, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !346, metadata !DIExpression()), !dbg !347
  %23 = load i8*, i8** %data, align 8, !dbg !348
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !350
  %cmp30 = icmp eq i32 %call29, 1, !dbg !351
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !352

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !353
  %cmp33 = icmp slt i32 %24, 10000, !dbg !356
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !357

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !358
  store i32 0, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !362

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !363
  %26 = load i32, i32* %n, align 4, !dbg !365
  %cmp36 = icmp slt i32 %25, %26, !dbg !366
  br i1 %cmp36, label %for.body, label %for.end, !dbg !367

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !368
  %inc = add nsw i32 %27, 1, !dbg !368
  store i32 %inc, i32* %intVariable, align 4, !dbg !368
  br label %for.inc, !dbg !370

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !371
  %inc38 = add nsw i32 %28, 1, !dbg !371
  store i32 %inc38, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !372, !llvm.loop !373

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !375
  call void @printIntLine(i32 %29), !dbg !376
  br label %if.end39, !dbg !377

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !378

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !380 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !384
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !384
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !385
  store i8* %arraydecay, i8** %data, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !387, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !396, metadata !DIExpression()), !dbg !397
  store i32 -1, i32* %connectSocket, align 4, !dbg !397
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !398, metadata !DIExpression()), !dbg !399
  %1 = load i8*, i8** %data, align 8, !dbg !400
  %call = call i64 @strlen(i8* %1) #7, !dbg !401
  store i64 %call, i64* %dataLen, align 8, !dbg !399
  br label %do.body, !dbg !402

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !403
  store i32 %call1, i32* %connectSocket, align 4, !dbg !405
  %2 = load i32, i32* %connectSocket, align 4, !dbg !406
  %cmp = icmp eq i32 %2, -1, !dbg !408
  br i1 %cmp, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !410

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !412
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !412
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !413
  store i16 2, i16* %sin_family, align 4, !dbg !414
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !415
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !416
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !417
  store i32 %call2, i32* %s_addr, align 4, !dbg !418
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !419
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !420
  store i16 %call3, i16* %sin_port, align 2, !dbg !421
  %4 = load i32, i32* %connectSocket, align 4, !dbg !422
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !424
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !425
  %cmp5 = icmp eq i32 %call4, -1, !dbg !426
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !427

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !428

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !430
  %7 = load i8*, i8** %data, align 8, !dbg !431
  %8 = load i64, i64* %dataLen, align 8, !dbg !432
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !433
  %9 = load i64, i64* %dataLen, align 8, !dbg !434
  %sub = sub i64 100, %9, !dbg !435
  %sub8 = sub i64 %sub, 1, !dbg !436
  %mul = mul i64 1, %sub8, !dbg !437
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !438
  %conv = trunc i64 %call9 to i32, !dbg !438
  store i32 %conv, i32* %recvResult, align 4, !dbg !439
  %10 = load i32, i32* %recvResult, align 4, !dbg !440
  %cmp10 = icmp eq i32 %10, -1, !dbg !442
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !443

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !444
  %cmp12 = icmp eq i32 %11, 0, !dbg !445
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !446

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !447

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !449
  %13 = load i64, i64* %dataLen, align 8, !dbg !450
  %14 = load i32, i32* %recvResult, align 4, !dbg !451
  %conv16 = sext i32 %14 to i64, !dbg !451
  %div = udiv i64 %conv16, 1, !dbg !452
  %add = add i64 %13, %div, !dbg !453
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !449
  store i8 0, i8* %arrayidx, align 1, !dbg !454
  %15 = load i8*, i8** %data, align 8, !dbg !455
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !456
  store i8* %call17, i8** %replace, align 8, !dbg !457
  %16 = load i8*, i8** %replace, align 8, !dbg !458
  %tobool = icmp ne i8* %16, null, !dbg !458
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !460

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !461
  store i8 0, i8* %17, align 1, !dbg !463
  br label %if.end19, !dbg !464

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !465
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !466
  store i8* %call20, i8** %replace, align 8, !dbg !467
  %19 = load i8*, i8** %replace, align 8, !dbg !468
  %tobool21 = icmp ne i8* %19, null, !dbg !468
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !470

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !471
  store i8 0, i8* %20, align 1, !dbg !473
  br label %if.end23, !dbg !474

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !475

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !476
  %cmp24 = icmp ne i32 %21, -1, !dbg !478
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !479

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !480
  %call27 = call i32 @close(i32 %22), !dbg !482
  br label %if.end28, !dbg !483

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !484, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i32* %n, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !491, metadata !DIExpression()), !dbg !492
  %23 = load i8*, i8** %data, align 8, !dbg !493
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !495
  %cmp30 = icmp eq i32 %call29, 1, !dbg !496
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !497

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !498
  %cmp33 = icmp slt i32 %24, 10000, !dbg !501
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !502

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !503
  store i32 0, i32* %i, align 4, !dbg !505
  br label %for.cond, !dbg !507

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !508
  %26 = load i32, i32* %n, align 4, !dbg !510
  %cmp36 = icmp slt i32 %25, %26, !dbg !511
  br i1 %cmp36, label %for.body, label %for.end, !dbg !512

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !513
  %inc = add nsw i32 %27, 1, !dbg !513
  store i32 %inc, i32* %intVariable, align 4, !dbg !513
  br label %for.inc, !dbg !515

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !516
  %inc38 = add nsw i32 %28, 1, !dbg !516
  store i32 %inc38, i32* %i, align 4, !dbg !516
  br label %for.cond, !dbg !517, !llvm.loop !518

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !520
  call void @printIntLine(i32 %29), !dbg !521
  br label %if.end39, !dbg !522

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !523

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !525 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !529
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !529
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !530
  store i8* %arraydecay, i8** %data, align 8, !dbg !531
  %1 = load i8*, i8** %data, align 8, !dbg !532
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !535
  call void @llvm.dbg.declare(metadata i32* %i, metadata !536, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %n, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !543, metadata !DIExpression()), !dbg !544
  %2 = load i8*, i8** %data, align 8, !dbg !545
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !547
  %cmp = icmp eq i32 %call1, 1, !dbg !548
  br i1 %cmp, label %if.then, label %if.end, !dbg !549

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !550
  store i32 0, i32* %i, align 4, !dbg !552
  br label %for.cond, !dbg !554

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !555
  %4 = load i32, i32* %n, align 4, !dbg !557
  %cmp2 = icmp slt i32 %3, %4, !dbg !558
  br i1 %cmp2, label %for.body, label %for.end, !dbg !559

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !560
  %inc = add nsw i32 %5, 1, !dbg !560
  store i32 %inc, i32* %intVariable, align 4, !dbg !560
  br label %for.inc, !dbg !562

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !563
  %inc3 = add nsw i32 %6, 1, !dbg !563
  store i32 %inc3, i32* %i, align 4, !dbg !563
  br label %for.cond, !dbg !564, !llvm.loop !565

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !567
  call void @printIntLine(i32 %7), !dbg !568
  br label %if.end, !dbg !569

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !570
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !571 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !575
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !575
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !576
  store i8* %arraydecay, i8** %data, align 8, !dbg !577
  %1 = load i8*, i8** %data, align 8, !dbg !578
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !581
  call void @llvm.dbg.declare(metadata i32* %i, metadata !582, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %n, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !589, metadata !DIExpression()), !dbg !590
  %2 = load i8*, i8** %data, align 8, !dbg !591
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !593
  %cmp = icmp eq i32 %call1, 1, !dbg !594
  br i1 %cmp, label %if.then, label %if.end, !dbg !595

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !596
  store i32 0, i32* %i, align 4, !dbg !598
  br label %for.cond, !dbg !600

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !601
  %4 = load i32, i32* %n, align 4, !dbg !603
  %cmp2 = icmp slt i32 %3, %4, !dbg !604
  br i1 %cmp2, label %for.body, label %for.end, !dbg !605

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !606
  %inc = add nsw i32 %5, 1, !dbg !606
  store i32 %inc, i32* %intVariable, align 4, !dbg !606
  br label %for.inc, !dbg !608

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !609
  %inc3 = add nsw i32 %6, 1, !dbg !609
  store i32 %inc3, i32* %i, align 4, !dbg !609
  br label %for.cond, !dbg !610, !llvm.loop !611

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !613
  call void @printIntLine(i32 %7), !dbg !614
  br label %if.end, !dbg !615

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_03_good() #0 !dbg !617 {
entry:
  call void @goodB2G1(), !dbg !618
  call void @goodB2G2(), !dbg !619
  call void @goodG2B1(), !dbg !620
  call void @goodG2B2(), !dbg !621
  ret void, !dbg !622
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_932/source_code")
!2 = !{!3, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 40, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!19 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!45 = !{!46, !59}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !48, line: 178, size: 128, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !47, file: !48, line: 180, baseType: !51, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !52, line: 28, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !47, file: !48, line: 181, baseType: !55, size: 112, offset: 16)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, elements: !57)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0"}
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{}
!68 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 52, type: !59)
!69 = !DILocation(line: 52, column: 12, scope: !64)
!70 = !DILocalVariable(name: "dataBuffer", scope: !64, file: !1, line: 53, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 100)
!74 = !DILocation(line: 53, column: 10, scope: !64)
!75 = !DILocation(line: 54, column: 12, scope: !64)
!76 = !DILocation(line: 54, column: 10, scope: !64)
!77 = !DILocalVariable(name: "recvResult", scope: !78, file: !1, line: 62, type: !81)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 57, column: 9)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 56, column: 5)
!80 = distinct !DILexicalBlock(scope: !64, file: !1, line: 55, column: 8)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DILocation(line: 62, column: 17, scope: !78)
!83 = !DILocalVariable(name: "service", scope: !78, file: !1, line: 63, type: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !85)
!85 = !{!86, !87, !93, !100}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !84, file: !17, line: 240, baseType: !51, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !84, file: !17, line: 241, baseType: !88, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 25, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !92, line: 40, baseType: !53)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !84, file: !17, line: 242, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !94, file: !17, line: 33, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !90, line: 26, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !92, line: 42, baseType: !5)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !84, file: !17, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 63, column: 32, scope: !78)
!106 = !DILocalVariable(name: "replace", scope: !78, file: !1, line: 64, type: !59)
!107 = !DILocation(line: 64, column: 19, scope: !78)
!108 = !DILocalVariable(name: "connectSocket", scope: !78, file: !1, line: 65, type: !81)
!109 = !DILocation(line: 65, column: 20, scope: !78)
!110 = !DILocalVariable(name: "dataLen", scope: !78, file: !1, line: 66, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 66, column: 20, scope: !78)
!115 = !DILocation(line: 66, column: 37, scope: !78)
!116 = !DILocation(line: 66, column: 30, scope: !78)
!117 = !DILocation(line: 67, column: 13, scope: !78)
!118 = !DILocation(line: 77, column: 33, scope: !119)
!119 = distinct !DILexicalBlock(scope: !78, file: !1, line: 68, column: 13)
!120 = !DILocation(line: 77, column: 31, scope: !119)
!121 = !DILocation(line: 78, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 78, column: 21)
!123 = !DILocation(line: 78, column: 35, scope: !122)
!124 = !DILocation(line: 78, column: 21, scope: !119)
!125 = !DILocation(line: 80, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 79, column: 17)
!127 = !DILocation(line: 82, column: 17, scope: !119)
!128 = !DILocation(line: 83, column: 25, scope: !119)
!129 = !DILocation(line: 83, column: 36, scope: !119)
!130 = !DILocation(line: 84, column: 43, scope: !119)
!131 = !DILocation(line: 84, column: 25, scope: !119)
!132 = !DILocation(line: 84, column: 34, scope: !119)
!133 = !DILocation(line: 84, column: 41, scope: !119)
!134 = !DILocation(line: 85, column: 36, scope: !119)
!135 = !DILocation(line: 85, column: 25, scope: !119)
!136 = !DILocation(line: 85, column: 34, scope: !119)
!137 = !DILocation(line: 86, column: 29, scope: !138)
!138 = distinct !DILexicalBlock(scope: !119, file: !1, line: 86, column: 21)
!139 = !DILocation(line: 86, column: 44, scope: !138)
!140 = !DILocation(line: 86, column: 21, scope: !138)
!141 = !DILocation(line: 86, column: 89, scope: !138)
!142 = !DILocation(line: 86, column: 21, scope: !119)
!143 = !DILocation(line: 88, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 87, column: 17)
!145 = !DILocation(line: 93, column: 35, scope: !119)
!146 = !DILocation(line: 93, column: 59, scope: !119)
!147 = !DILocation(line: 93, column: 66, scope: !119)
!148 = !DILocation(line: 93, column: 64, scope: !119)
!149 = !DILocation(line: 93, column: 98, scope: !119)
!150 = !DILocation(line: 93, column: 96, scope: !119)
!151 = !DILocation(line: 93, column: 106, scope: !119)
!152 = !DILocation(line: 93, column: 89, scope: !119)
!153 = !DILocation(line: 93, column: 30, scope: !119)
!154 = !DILocation(line: 93, column: 28, scope: !119)
!155 = !DILocation(line: 94, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !119, file: !1, line: 94, column: 21)
!157 = !DILocation(line: 94, column: 32, scope: !156)
!158 = !DILocation(line: 94, column: 48, scope: !156)
!159 = !DILocation(line: 94, column: 51, scope: !156)
!160 = !DILocation(line: 94, column: 62, scope: !156)
!161 = !DILocation(line: 94, column: 21, scope: !119)
!162 = !DILocation(line: 96, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !1, line: 95, column: 17)
!164 = !DILocation(line: 99, column: 17, scope: !119)
!165 = !DILocation(line: 99, column: 22, scope: !119)
!166 = !DILocation(line: 99, column: 32, scope: !119)
!167 = !DILocation(line: 99, column: 43, scope: !119)
!168 = !DILocation(line: 99, column: 30, scope: !119)
!169 = !DILocation(line: 99, column: 59, scope: !119)
!170 = !DILocation(line: 101, column: 34, scope: !119)
!171 = !DILocation(line: 101, column: 27, scope: !119)
!172 = !DILocation(line: 101, column: 25, scope: !119)
!173 = !DILocation(line: 102, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !119, file: !1, line: 102, column: 21)
!175 = !DILocation(line: 102, column: 21, scope: !119)
!176 = !DILocation(line: 104, column: 22, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 103, column: 17)
!178 = !DILocation(line: 104, column: 30, scope: !177)
!179 = !DILocation(line: 105, column: 17, scope: !177)
!180 = !DILocation(line: 106, column: 34, scope: !119)
!181 = !DILocation(line: 106, column: 27, scope: !119)
!182 = !DILocation(line: 106, column: 25, scope: !119)
!183 = !DILocation(line: 107, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !119, file: !1, line: 107, column: 21)
!185 = !DILocation(line: 107, column: 21, scope: !119)
!186 = !DILocation(line: 109, column: 22, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 108, column: 17)
!188 = !DILocation(line: 109, column: 30, scope: !187)
!189 = !DILocation(line: 110, column: 17, scope: !187)
!190 = !DILocation(line: 111, column: 13, scope: !119)
!191 = !DILocation(line: 113, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !78, file: !1, line: 113, column: 17)
!193 = !DILocation(line: 113, column: 31, scope: !192)
!194 = !DILocation(line: 113, column: 17, scope: !78)
!195 = !DILocation(line: 115, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 114, column: 13)
!197 = !DILocation(line: 115, column: 17, scope: !196)
!198 = !DILocation(line: 116, column: 13, scope: !196)
!199 = !DILocalVariable(name: "i", scope: !200, file: !1, line: 128, type: !81)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 127, column: 9)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 126, column: 5)
!202 = distinct !DILexicalBlock(scope: !64, file: !1, line: 125, column: 8)
!203 = !DILocation(line: 128, column: 17, scope: !200)
!204 = !DILocalVariable(name: "n", scope: !200, file: !1, line: 128, type: !81)
!205 = !DILocation(line: 128, column: 20, scope: !200)
!206 = !DILocalVariable(name: "intVariable", scope: !200, file: !1, line: 128, type: !81)
!207 = !DILocation(line: 128, column: 23, scope: !200)
!208 = !DILocation(line: 129, column: 24, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !1, line: 129, column: 17)
!210 = !DILocation(line: 129, column: 17, scope: !209)
!211 = !DILocation(line: 129, column: 40, scope: !209)
!212 = !DILocation(line: 129, column: 17, scope: !200)
!213 = !DILocation(line: 132, column: 29, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 130, column: 13)
!215 = !DILocation(line: 133, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !1, line: 133, column: 17)
!217 = !DILocation(line: 133, column: 22, scope: !216)
!218 = !DILocation(line: 133, column: 29, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 133, column: 17)
!220 = !DILocation(line: 133, column: 33, scope: !219)
!221 = !DILocation(line: 133, column: 31, scope: !219)
!222 = !DILocation(line: 133, column: 17, scope: !216)
!223 = !DILocation(line: 136, column: 32, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 134, column: 17)
!225 = !DILocation(line: 137, column: 17, scope: !224)
!226 = !DILocation(line: 133, column: 37, scope: !219)
!227 = !DILocation(line: 133, column: 17, scope: !219)
!228 = distinct !{!228, !222, !229, !230}
!229 = !DILocation(line: 137, column: 17, scope: !216)
!230 = !{!"llvm.loop.mustprogress"}
!231 = !DILocation(line: 138, column: 30, scope: !214)
!232 = !DILocation(line: 138, column: 17, scope: !214)
!233 = !DILocation(line: 139, column: 13, scope: !214)
!234 = !DILocation(line: 142, column: 1, scope: !64)
!235 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 149, type: !65, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!236 = !DILocalVariable(name: "data", scope: !235, file: !1, line: 151, type: !59)
!237 = !DILocation(line: 151, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !1, line: 152, type: !71)
!239 = !DILocation(line: 152, column: 10, scope: !235)
!240 = !DILocation(line: 153, column: 12, scope: !235)
!241 = !DILocation(line: 153, column: 10, scope: !235)
!242 = !DILocalVariable(name: "recvResult", scope: !243, file: !1, line: 161, type: !81)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 156, column: 9)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 155, column: 5)
!245 = distinct !DILexicalBlock(scope: !235, file: !1, line: 154, column: 8)
!246 = !DILocation(line: 161, column: 17, scope: !243)
!247 = !DILocalVariable(name: "service", scope: !243, file: !1, line: 162, type: !84)
!248 = !DILocation(line: 162, column: 32, scope: !243)
!249 = !DILocalVariable(name: "replace", scope: !243, file: !1, line: 163, type: !59)
!250 = !DILocation(line: 163, column: 19, scope: !243)
!251 = !DILocalVariable(name: "connectSocket", scope: !243, file: !1, line: 164, type: !81)
!252 = !DILocation(line: 164, column: 20, scope: !243)
!253 = !DILocalVariable(name: "dataLen", scope: !243, file: !1, line: 165, type: !111)
!254 = !DILocation(line: 165, column: 20, scope: !243)
!255 = !DILocation(line: 165, column: 37, scope: !243)
!256 = !DILocation(line: 165, column: 30, scope: !243)
!257 = !DILocation(line: 166, column: 13, scope: !243)
!258 = !DILocation(line: 176, column: 33, scope: !259)
!259 = distinct !DILexicalBlock(scope: !243, file: !1, line: 167, column: 13)
!260 = !DILocation(line: 176, column: 31, scope: !259)
!261 = !DILocation(line: 177, column: 21, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 177, column: 21)
!263 = !DILocation(line: 177, column: 35, scope: !262)
!264 = !DILocation(line: 177, column: 21, scope: !259)
!265 = !DILocation(line: 179, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 178, column: 17)
!267 = !DILocation(line: 181, column: 17, scope: !259)
!268 = !DILocation(line: 182, column: 25, scope: !259)
!269 = !DILocation(line: 182, column: 36, scope: !259)
!270 = !DILocation(line: 183, column: 43, scope: !259)
!271 = !DILocation(line: 183, column: 25, scope: !259)
!272 = !DILocation(line: 183, column: 34, scope: !259)
!273 = !DILocation(line: 183, column: 41, scope: !259)
!274 = !DILocation(line: 184, column: 36, scope: !259)
!275 = !DILocation(line: 184, column: 25, scope: !259)
!276 = !DILocation(line: 184, column: 34, scope: !259)
!277 = !DILocation(line: 185, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !259, file: !1, line: 185, column: 21)
!279 = !DILocation(line: 185, column: 44, scope: !278)
!280 = !DILocation(line: 185, column: 21, scope: !278)
!281 = !DILocation(line: 185, column: 89, scope: !278)
!282 = !DILocation(line: 185, column: 21, scope: !259)
!283 = !DILocation(line: 187, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !1, line: 186, column: 17)
!285 = !DILocation(line: 192, column: 35, scope: !259)
!286 = !DILocation(line: 192, column: 59, scope: !259)
!287 = !DILocation(line: 192, column: 66, scope: !259)
!288 = !DILocation(line: 192, column: 64, scope: !259)
!289 = !DILocation(line: 192, column: 98, scope: !259)
!290 = !DILocation(line: 192, column: 96, scope: !259)
!291 = !DILocation(line: 192, column: 106, scope: !259)
!292 = !DILocation(line: 192, column: 89, scope: !259)
!293 = !DILocation(line: 192, column: 30, scope: !259)
!294 = !DILocation(line: 192, column: 28, scope: !259)
!295 = !DILocation(line: 193, column: 21, scope: !296)
!296 = distinct !DILexicalBlock(scope: !259, file: !1, line: 193, column: 21)
!297 = !DILocation(line: 193, column: 32, scope: !296)
!298 = !DILocation(line: 193, column: 48, scope: !296)
!299 = !DILocation(line: 193, column: 51, scope: !296)
!300 = !DILocation(line: 193, column: 62, scope: !296)
!301 = !DILocation(line: 193, column: 21, scope: !259)
!302 = !DILocation(line: 195, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 194, column: 17)
!304 = !DILocation(line: 198, column: 17, scope: !259)
!305 = !DILocation(line: 198, column: 22, scope: !259)
!306 = !DILocation(line: 198, column: 32, scope: !259)
!307 = !DILocation(line: 198, column: 43, scope: !259)
!308 = !DILocation(line: 198, column: 30, scope: !259)
!309 = !DILocation(line: 198, column: 59, scope: !259)
!310 = !DILocation(line: 200, column: 34, scope: !259)
!311 = !DILocation(line: 200, column: 27, scope: !259)
!312 = !DILocation(line: 200, column: 25, scope: !259)
!313 = !DILocation(line: 201, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !259, file: !1, line: 201, column: 21)
!315 = !DILocation(line: 201, column: 21, scope: !259)
!316 = !DILocation(line: 203, column: 22, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !1, line: 202, column: 17)
!318 = !DILocation(line: 203, column: 30, scope: !317)
!319 = !DILocation(line: 204, column: 17, scope: !317)
!320 = !DILocation(line: 205, column: 34, scope: !259)
!321 = !DILocation(line: 205, column: 27, scope: !259)
!322 = !DILocation(line: 205, column: 25, scope: !259)
!323 = !DILocation(line: 206, column: 21, scope: !324)
!324 = distinct !DILexicalBlock(scope: !259, file: !1, line: 206, column: 21)
!325 = !DILocation(line: 206, column: 21, scope: !259)
!326 = !DILocation(line: 208, column: 22, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 207, column: 17)
!328 = !DILocation(line: 208, column: 30, scope: !327)
!329 = !DILocation(line: 209, column: 17, scope: !327)
!330 = !DILocation(line: 210, column: 13, scope: !259)
!331 = !DILocation(line: 212, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !243, file: !1, line: 212, column: 17)
!333 = !DILocation(line: 212, column: 31, scope: !332)
!334 = !DILocation(line: 212, column: 17, scope: !243)
!335 = !DILocation(line: 214, column: 30, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 213, column: 13)
!337 = !DILocation(line: 214, column: 17, scope: !336)
!338 = !DILocation(line: 215, column: 13, scope: !336)
!339 = !DILocalVariable(name: "i", scope: !340, file: !1, line: 232, type: !81)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 231, column: 9)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 230, column: 5)
!342 = distinct !DILexicalBlock(scope: !235, file: !1, line: 224, column: 8)
!343 = !DILocation(line: 232, column: 17, scope: !340)
!344 = !DILocalVariable(name: "n", scope: !340, file: !1, line: 232, type: !81)
!345 = !DILocation(line: 232, column: 20, scope: !340)
!346 = !DILocalVariable(name: "intVariable", scope: !340, file: !1, line: 232, type: !81)
!347 = !DILocation(line: 232, column: 23, scope: !340)
!348 = !DILocation(line: 233, column: 24, scope: !349)
!349 = distinct !DILexicalBlock(scope: !340, file: !1, line: 233, column: 17)
!350 = !DILocation(line: 233, column: 17, scope: !349)
!351 = !DILocation(line: 233, column: 40, scope: !349)
!352 = !DILocation(line: 233, column: 17, scope: !340)
!353 = !DILocation(line: 236, column: 21, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 236, column: 21)
!355 = distinct !DILexicalBlock(scope: !349, file: !1, line: 234, column: 13)
!356 = !DILocation(line: 236, column: 23, scope: !354)
!357 = !DILocation(line: 236, column: 21, scope: !355)
!358 = !DILocation(line: 238, column: 33, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !1, line: 237, column: 17)
!360 = !DILocation(line: 239, column: 28, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !1, line: 239, column: 21)
!362 = !DILocation(line: 239, column: 26, scope: !361)
!363 = !DILocation(line: 239, column: 33, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !1, line: 239, column: 21)
!365 = !DILocation(line: 239, column: 37, scope: !364)
!366 = !DILocation(line: 239, column: 35, scope: !364)
!367 = !DILocation(line: 239, column: 21, scope: !361)
!368 = !DILocation(line: 242, column: 36, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !1, line: 240, column: 21)
!370 = !DILocation(line: 243, column: 21, scope: !369)
!371 = !DILocation(line: 239, column: 41, scope: !364)
!372 = !DILocation(line: 239, column: 21, scope: !364)
!373 = distinct !{!373, !367, !374, !230}
!374 = !DILocation(line: 243, column: 21, scope: !361)
!375 = !DILocation(line: 244, column: 34, scope: !359)
!376 = !DILocation(line: 244, column: 21, scope: !359)
!377 = !DILocation(line: 245, column: 17, scope: !359)
!378 = !DILocation(line: 246, column: 13, scope: !355)
!379 = !DILocation(line: 249, column: 1, scope: !235)
!380 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 252, type: !65, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!381 = !DILocalVariable(name: "data", scope: !380, file: !1, line: 254, type: !59)
!382 = !DILocation(line: 254, column: 12, scope: !380)
!383 = !DILocalVariable(name: "dataBuffer", scope: !380, file: !1, line: 255, type: !71)
!384 = !DILocation(line: 255, column: 10, scope: !380)
!385 = !DILocation(line: 256, column: 12, scope: !380)
!386 = !DILocation(line: 256, column: 10, scope: !380)
!387 = !DILocalVariable(name: "recvResult", scope: !388, file: !1, line: 264, type: !81)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 259, column: 9)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 258, column: 5)
!390 = distinct !DILexicalBlock(scope: !380, file: !1, line: 257, column: 8)
!391 = !DILocation(line: 264, column: 17, scope: !388)
!392 = !DILocalVariable(name: "service", scope: !388, file: !1, line: 265, type: !84)
!393 = !DILocation(line: 265, column: 32, scope: !388)
!394 = !DILocalVariable(name: "replace", scope: !388, file: !1, line: 266, type: !59)
!395 = !DILocation(line: 266, column: 19, scope: !388)
!396 = !DILocalVariable(name: "connectSocket", scope: !388, file: !1, line: 267, type: !81)
!397 = !DILocation(line: 267, column: 20, scope: !388)
!398 = !DILocalVariable(name: "dataLen", scope: !388, file: !1, line: 268, type: !111)
!399 = !DILocation(line: 268, column: 20, scope: !388)
!400 = !DILocation(line: 268, column: 37, scope: !388)
!401 = !DILocation(line: 268, column: 30, scope: !388)
!402 = !DILocation(line: 269, column: 13, scope: !388)
!403 = !DILocation(line: 279, column: 33, scope: !404)
!404 = distinct !DILexicalBlock(scope: !388, file: !1, line: 270, column: 13)
!405 = !DILocation(line: 279, column: 31, scope: !404)
!406 = !DILocation(line: 280, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 280, column: 21)
!408 = !DILocation(line: 280, column: 35, scope: !407)
!409 = !DILocation(line: 280, column: 21, scope: !404)
!410 = !DILocation(line: 282, column: 21, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !1, line: 281, column: 17)
!412 = !DILocation(line: 284, column: 17, scope: !404)
!413 = !DILocation(line: 285, column: 25, scope: !404)
!414 = !DILocation(line: 285, column: 36, scope: !404)
!415 = !DILocation(line: 286, column: 43, scope: !404)
!416 = !DILocation(line: 286, column: 25, scope: !404)
!417 = !DILocation(line: 286, column: 34, scope: !404)
!418 = !DILocation(line: 286, column: 41, scope: !404)
!419 = !DILocation(line: 287, column: 36, scope: !404)
!420 = !DILocation(line: 287, column: 25, scope: !404)
!421 = !DILocation(line: 287, column: 34, scope: !404)
!422 = !DILocation(line: 288, column: 29, scope: !423)
!423 = distinct !DILexicalBlock(scope: !404, file: !1, line: 288, column: 21)
!424 = !DILocation(line: 288, column: 44, scope: !423)
!425 = !DILocation(line: 288, column: 21, scope: !423)
!426 = !DILocation(line: 288, column: 89, scope: !423)
!427 = !DILocation(line: 288, column: 21, scope: !404)
!428 = !DILocation(line: 290, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !1, line: 289, column: 17)
!430 = !DILocation(line: 295, column: 35, scope: !404)
!431 = !DILocation(line: 295, column: 59, scope: !404)
!432 = !DILocation(line: 295, column: 66, scope: !404)
!433 = !DILocation(line: 295, column: 64, scope: !404)
!434 = !DILocation(line: 295, column: 98, scope: !404)
!435 = !DILocation(line: 295, column: 96, scope: !404)
!436 = !DILocation(line: 295, column: 106, scope: !404)
!437 = !DILocation(line: 295, column: 89, scope: !404)
!438 = !DILocation(line: 295, column: 30, scope: !404)
!439 = !DILocation(line: 295, column: 28, scope: !404)
!440 = !DILocation(line: 296, column: 21, scope: !441)
!441 = distinct !DILexicalBlock(scope: !404, file: !1, line: 296, column: 21)
!442 = !DILocation(line: 296, column: 32, scope: !441)
!443 = !DILocation(line: 296, column: 48, scope: !441)
!444 = !DILocation(line: 296, column: 51, scope: !441)
!445 = !DILocation(line: 296, column: 62, scope: !441)
!446 = !DILocation(line: 296, column: 21, scope: !404)
!447 = !DILocation(line: 298, column: 21, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !1, line: 297, column: 17)
!449 = !DILocation(line: 301, column: 17, scope: !404)
!450 = !DILocation(line: 301, column: 22, scope: !404)
!451 = !DILocation(line: 301, column: 32, scope: !404)
!452 = !DILocation(line: 301, column: 43, scope: !404)
!453 = !DILocation(line: 301, column: 30, scope: !404)
!454 = !DILocation(line: 301, column: 59, scope: !404)
!455 = !DILocation(line: 303, column: 34, scope: !404)
!456 = !DILocation(line: 303, column: 27, scope: !404)
!457 = !DILocation(line: 303, column: 25, scope: !404)
!458 = !DILocation(line: 304, column: 21, scope: !459)
!459 = distinct !DILexicalBlock(scope: !404, file: !1, line: 304, column: 21)
!460 = !DILocation(line: 304, column: 21, scope: !404)
!461 = !DILocation(line: 306, column: 22, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 305, column: 17)
!463 = !DILocation(line: 306, column: 30, scope: !462)
!464 = !DILocation(line: 307, column: 17, scope: !462)
!465 = !DILocation(line: 308, column: 34, scope: !404)
!466 = !DILocation(line: 308, column: 27, scope: !404)
!467 = !DILocation(line: 308, column: 25, scope: !404)
!468 = !DILocation(line: 309, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !404, file: !1, line: 309, column: 21)
!470 = !DILocation(line: 309, column: 21, scope: !404)
!471 = !DILocation(line: 311, column: 22, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 310, column: 17)
!473 = !DILocation(line: 311, column: 30, scope: !472)
!474 = !DILocation(line: 312, column: 17, scope: !472)
!475 = !DILocation(line: 313, column: 13, scope: !404)
!476 = !DILocation(line: 315, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !388, file: !1, line: 315, column: 17)
!478 = !DILocation(line: 315, column: 31, scope: !477)
!479 = !DILocation(line: 315, column: 17, scope: !388)
!480 = !DILocation(line: 317, column: 30, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !1, line: 316, column: 13)
!482 = !DILocation(line: 317, column: 17, scope: !481)
!483 = !DILocation(line: 318, column: 13, scope: !481)
!484 = !DILocalVariable(name: "i", scope: !485, file: !1, line: 330, type: !81)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 329, column: 9)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 328, column: 5)
!487 = distinct !DILexicalBlock(scope: !380, file: !1, line: 327, column: 8)
!488 = !DILocation(line: 330, column: 17, scope: !485)
!489 = !DILocalVariable(name: "n", scope: !485, file: !1, line: 330, type: !81)
!490 = !DILocation(line: 330, column: 20, scope: !485)
!491 = !DILocalVariable(name: "intVariable", scope: !485, file: !1, line: 330, type: !81)
!492 = !DILocation(line: 330, column: 23, scope: !485)
!493 = !DILocation(line: 331, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !485, file: !1, line: 331, column: 17)
!495 = !DILocation(line: 331, column: 17, scope: !494)
!496 = !DILocation(line: 331, column: 40, scope: !494)
!497 = !DILocation(line: 331, column: 17, scope: !485)
!498 = !DILocation(line: 334, column: 21, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 334, column: 21)
!500 = distinct !DILexicalBlock(scope: !494, file: !1, line: 332, column: 13)
!501 = !DILocation(line: 334, column: 23, scope: !499)
!502 = !DILocation(line: 334, column: 21, scope: !500)
!503 = !DILocation(line: 336, column: 33, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !1, line: 335, column: 17)
!505 = !DILocation(line: 337, column: 28, scope: !506)
!506 = distinct !DILexicalBlock(scope: !504, file: !1, line: 337, column: 21)
!507 = !DILocation(line: 337, column: 26, scope: !506)
!508 = !DILocation(line: 337, column: 33, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !1, line: 337, column: 21)
!510 = !DILocation(line: 337, column: 37, scope: !509)
!511 = !DILocation(line: 337, column: 35, scope: !509)
!512 = !DILocation(line: 337, column: 21, scope: !506)
!513 = !DILocation(line: 340, column: 36, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !1, line: 338, column: 21)
!515 = !DILocation(line: 341, column: 21, scope: !514)
!516 = !DILocation(line: 337, column: 41, scope: !509)
!517 = !DILocation(line: 337, column: 21, scope: !509)
!518 = distinct !{!518, !512, !519, !230}
!519 = !DILocation(line: 341, column: 21, scope: !506)
!520 = !DILocation(line: 342, column: 34, scope: !504)
!521 = !DILocation(line: 342, column: 21, scope: !504)
!522 = !DILocation(line: 343, column: 17, scope: !504)
!523 = !DILocation(line: 344, column: 13, scope: !500)
!524 = !DILocation(line: 347, column: 1, scope: !380)
!525 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 350, type: !65, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!526 = !DILocalVariable(name: "data", scope: !525, file: !1, line: 352, type: !59)
!527 = !DILocation(line: 352, column: 12, scope: !525)
!528 = !DILocalVariable(name: "dataBuffer", scope: !525, file: !1, line: 353, type: !71)
!529 = !DILocation(line: 353, column: 10, scope: !525)
!530 = !DILocation(line: 354, column: 12, scope: !525)
!531 = !DILocation(line: 354, column: 10, scope: !525)
!532 = !DILocation(line: 363, column: 16, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 361, column: 5)
!534 = distinct !DILexicalBlock(scope: !525, file: !1, line: 355, column: 8)
!535 = !DILocation(line: 363, column: 9, scope: !533)
!536 = !DILocalVariable(name: "i", scope: !537, file: !1, line: 368, type: !81)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 367, column: 9)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 366, column: 5)
!539 = distinct !DILexicalBlock(scope: !525, file: !1, line: 365, column: 8)
!540 = !DILocation(line: 368, column: 17, scope: !537)
!541 = !DILocalVariable(name: "n", scope: !537, file: !1, line: 368, type: !81)
!542 = !DILocation(line: 368, column: 20, scope: !537)
!543 = !DILocalVariable(name: "intVariable", scope: !537, file: !1, line: 368, type: !81)
!544 = !DILocation(line: 368, column: 23, scope: !537)
!545 = !DILocation(line: 369, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !537, file: !1, line: 369, column: 17)
!547 = !DILocation(line: 369, column: 17, scope: !546)
!548 = !DILocation(line: 369, column: 40, scope: !546)
!549 = !DILocation(line: 369, column: 17, scope: !537)
!550 = !DILocation(line: 372, column: 29, scope: !551)
!551 = distinct !DILexicalBlock(scope: !546, file: !1, line: 370, column: 13)
!552 = !DILocation(line: 373, column: 24, scope: !553)
!553 = distinct !DILexicalBlock(scope: !551, file: !1, line: 373, column: 17)
!554 = !DILocation(line: 373, column: 22, scope: !553)
!555 = !DILocation(line: 373, column: 29, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 373, column: 17)
!557 = !DILocation(line: 373, column: 33, scope: !556)
!558 = !DILocation(line: 373, column: 31, scope: !556)
!559 = !DILocation(line: 373, column: 17, scope: !553)
!560 = !DILocation(line: 376, column: 32, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !1, line: 374, column: 17)
!562 = !DILocation(line: 377, column: 17, scope: !561)
!563 = !DILocation(line: 373, column: 37, scope: !556)
!564 = !DILocation(line: 373, column: 17, scope: !556)
!565 = distinct !{!565, !559, !566, !230}
!566 = !DILocation(line: 377, column: 17, scope: !553)
!567 = !DILocation(line: 378, column: 30, scope: !551)
!568 = !DILocation(line: 378, column: 17, scope: !551)
!569 = !DILocation(line: 379, column: 13, scope: !551)
!570 = !DILocation(line: 382, column: 1, scope: !525)
!571 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 385, type: !65, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!572 = !DILocalVariable(name: "data", scope: !571, file: !1, line: 387, type: !59)
!573 = !DILocation(line: 387, column: 12, scope: !571)
!574 = !DILocalVariable(name: "dataBuffer", scope: !571, file: !1, line: 388, type: !71)
!575 = !DILocation(line: 388, column: 10, scope: !571)
!576 = !DILocation(line: 389, column: 12, scope: !571)
!577 = !DILocation(line: 389, column: 10, scope: !571)
!578 = !DILocation(line: 393, column: 16, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 391, column: 5)
!580 = distinct !DILexicalBlock(scope: !571, file: !1, line: 390, column: 8)
!581 = !DILocation(line: 393, column: 9, scope: !579)
!582 = !DILocalVariable(name: "i", scope: !583, file: !1, line: 398, type: !81)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 397, column: 9)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 396, column: 5)
!585 = distinct !DILexicalBlock(scope: !571, file: !1, line: 395, column: 8)
!586 = !DILocation(line: 398, column: 17, scope: !583)
!587 = !DILocalVariable(name: "n", scope: !583, file: !1, line: 398, type: !81)
!588 = !DILocation(line: 398, column: 20, scope: !583)
!589 = !DILocalVariable(name: "intVariable", scope: !583, file: !1, line: 398, type: !81)
!590 = !DILocation(line: 398, column: 23, scope: !583)
!591 = !DILocation(line: 399, column: 24, scope: !592)
!592 = distinct !DILexicalBlock(scope: !583, file: !1, line: 399, column: 17)
!593 = !DILocation(line: 399, column: 17, scope: !592)
!594 = !DILocation(line: 399, column: 40, scope: !592)
!595 = !DILocation(line: 399, column: 17, scope: !583)
!596 = !DILocation(line: 402, column: 29, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 400, column: 13)
!598 = !DILocation(line: 403, column: 24, scope: !599)
!599 = distinct !DILexicalBlock(scope: !597, file: !1, line: 403, column: 17)
!600 = !DILocation(line: 403, column: 22, scope: !599)
!601 = !DILocation(line: 403, column: 29, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !1, line: 403, column: 17)
!603 = !DILocation(line: 403, column: 33, scope: !602)
!604 = !DILocation(line: 403, column: 31, scope: !602)
!605 = !DILocation(line: 403, column: 17, scope: !599)
!606 = !DILocation(line: 406, column: 32, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !1, line: 404, column: 17)
!608 = !DILocation(line: 407, column: 17, scope: !607)
!609 = !DILocation(line: 403, column: 37, scope: !602)
!610 = !DILocation(line: 403, column: 17, scope: !602)
!611 = distinct !{!611, !605, !612, !230}
!612 = !DILocation(line: 407, column: 17, scope: !599)
!613 = !DILocation(line: 408, column: 30, scope: !597)
!614 = !DILocation(line: 408, column: 17, scope: !597)
!615 = !DILocation(line: 409, column: 13, scope: !597)
!616 = !DILocation(line: 412, column: 1, scope: !571)
!617 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_03_good", scope: !1, file: !1, line: 414, type: !65, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!618 = !DILocation(line: 416, column: 5, scope: !617)
!619 = !DILocation(line: 417, column: 5, scope: !617)
!620 = !DILocation(line: 418, column: 5, scope: !617)
!621 = !DILocation(line: 419, column: 5, scope: !617)
!622 = !DILocation(line: 420, column: 1, scope: !617)
