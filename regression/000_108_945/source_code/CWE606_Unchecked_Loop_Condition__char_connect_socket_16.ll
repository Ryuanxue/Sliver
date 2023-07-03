; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_16.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_16_bad() #0 !dbg !64 {
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
  br label %while.body, !dbg !77

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !78, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !83, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %connectSocket, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #7, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  br label %do.body, !dbg !117

do.body:                                          ; preds = %while.body
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
  br label %while.end, !dbg !199

while.end:                                        ; preds = %if.end28
  br label %while.body29, !dbg !200

while.body29:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %n, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !207, metadata !DIExpression()), !dbg !208
  %23 = load i8*, i8** %data, align 8, !dbg !209
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !211
  %cmp31 = icmp eq i32 %call30, 1, !dbg !212
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !213

if.then33:                                        ; preds = %while.body29
  store i32 0, i32* %intVariable, align 4, !dbg !214
  store i32 0, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %if.then33
  %24 = load i32, i32* %i, align 4, !dbg !219
  %25 = load i32, i32* %n, align 4, !dbg !221
  %cmp34 = icmp slt i32 %24, %25, !dbg !222
  br i1 %cmp34, label %for.body, label %for.end, !dbg !223

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !224
  %inc = add nsw i32 %26, 1, !dbg !224
  store i32 %inc, i32* %intVariable, align 4, !dbg !224
  br label %for.inc, !dbg !226

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !227
  %inc36 = add nsw i32 %27, 1, !dbg !227
  store i32 %inc36, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !228, !llvm.loop !229

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !232
  call void @printIntLine(i32 %28), !dbg !233
  br label %if.end37, !dbg !234

if.end37:                                         ; preds = %for.end, %while.body29
  br label %while.end38, !dbg !235

while.end38:                                      ; preds = %if.end37
  ret void, !dbg !236
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
define dso_local void @goodB2G() #0 !dbg !237 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !241
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !241
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !242
  store i8* %arraydecay, i8** %data, align 8, !dbg !243
  br label %while.body, !dbg !244

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !245, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 -1, i32* %connectSocket, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !255, metadata !DIExpression()), !dbg !256
  %1 = load i8*, i8** %data, align 8, !dbg !257
  %call = call i64 @strlen(i8* %1) #7, !dbg !258
  store i64 %call, i64* %dataLen, align 8, !dbg !256
  br label %do.body, !dbg !259

do.body:                                          ; preds = %while.body
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !260
  store i32 %call1, i32* %connectSocket, align 4, !dbg !262
  %2 = load i32, i32* %connectSocket, align 4, !dbg !263
  %cmp = icmp eq i32 %2, -1, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !266

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !267

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !269
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !270
  store i16 2, i16* %sin_family, align 4, !dbg !271
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !272
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !273
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !274
  store i32 %call2, i32* %s_addr, align 4, !dbg !275
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !276
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !277
  store i16 %call3, i16* %sin_port, align 2, !dbg !278
  %4 = load i32, i32* %connectSocket, align 4, !dbg !279
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !281
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !282
  %cmp5 = icmp eq i32 %call4, -1, !dbg !283
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !284

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !285

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !287
  %7 = load i8*, i8** %data, align 8, !dbg !288
  %8 = load i64, i64* %dataLen, align 8, !dbg !289
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !290
  %9 = load i64, i64* %dataLen, align 8, !dbg !291
  %sub = sub i64 100, %9, !dbg !292
  %sub8 = sub i64 %sub, 1, !dbg !293
  %mul = mul i64 1, %sub8, !dbg !294
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !295
  %conv = trunc i64 %call9 to i32, !dbg !295
  store i32 %conv, i32* %recvResult, align 4, !dbg !296
  %10 = load i32, i32* %recvResult, align 4, !dbg !297
  %cmp10 = icmp eq i32 %10, -1, !dbg !299
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !300

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !301
  %cmp12 = icmp eq i32 %11, 0, !dbg !302
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !303

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !304

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !306
  %13 = load i64, i64* %dataLen, align 8, !dbg !307
  %14 = load i32, i32* %recvResult, align 4, !dbg !308
  %conv16 = sext i32 %14 to i64, !dbg !308
  %div = udiv i64 %conv16, 1, !dbg !309
  %add = add i64 %13, %div, !dbg !310
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !306
  store i8 0, i8* %arrayidx, align 1, !dbg !311
  %15 = load i8*, i8** %data, align 8, !dbg !312
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !313
  store i8* %call17, i8** %replace, align 8, !dbg !314
  %16 = load i8*, i8** %replace, align 8, !dbg !315
  %tobool = icmp ne i8* %16, null, !dbg !315
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !317

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !318
  store i8 0, i8* %17, align 1, !dbg !320
  br label %if.end19, !dbg !321

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !322
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !323
  store i8* %call20, i8** %replace, align 8, !dbg !324
  %19 = load i8*, i8** %replace, align 8, !dbg !325
  %tobool21 = icmp ne i8* %19, null, !dbg !325
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !327

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !328
  store i8 0, i8* %20, align 1, !dbg !330
  br label %if.end23, !dbg !331

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !332

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !333
  %cmp24 = icmp ne i32 %21, -1, !dbg !335
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !336

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !337
  %call27 = call i32 @close(i32 %22), !dbg !339
  br label %if.end28, !dbg !340

if.end28:                                         ; preds = %if.then26, %do.end
  br label %while.end, !dbg !341

while.end:                                        ; preds = %if.end28
  br label %while.body29, !dbg !342

while.body29:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %n, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !349, metadata !DIExpression()), !dbg !350
  %23 = load i8*, i8** %data, align 8, !dbg !351
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !353
  %cmp31 = icmp eq i32 %call30, 1, !dbg !354
  br i1 %cmp31, label %if.then33, label %if.end41, !dbg !355

if.then33:                                        ; preds = %while.body29
  %24 = load i32, i32* %n, align 4, !dbg !356
  %cmp34 = icmp slt i32 %24, 10000, !dbg !359
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !360

if.then36:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !361
  store i32 0, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !365

for.cond:                                         ; preds = %for.inc, %if.then36
  %25 = load i32, i32* %i, align 4, !dbg !366
  %26 = load i32, i32* %n, align 4, !dbg !368
  %cmp37 = icmp slt i32 %25, %26, !dbg !369
  br i1 %cmp37, label %for.body, label %for.end, !dbg !370

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !371
  %inc = add nsw i32 %27, 1, !dbg !371
  store i32 %inc, i32* %intVariable, align 4, !dbg !371
  br label %for.inc, !dbg !373

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !374
  %inc39 = add nsw i32 %28, 1, !dbg !374
  store i32 %inc39, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !375, !llvm.loop !376

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !378
  call void @printIntLine(i32 %29), !dbg !379
  br label %if.end40, !dbg !380

if.end40:                                         ; preds = %for.end, %if.then33
  br label %if.end41, !dbg !381

if.end41:                                         ; preds = %if.end40, %while.body29
  br label %while.end42, !dbg !382

while.end42:                                      ; preds = %if.end41
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !384 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !388
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !388
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !389
  store i8* %arraydecay, i8** %data, align 8, !dbg !390
  br label %while.body, !dbg !391

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !392
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !394
  br label %while.end, !dbg !395

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !396

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %n, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !403, metadata !DIExpression()), !dbg !404
  %2 = load i8*, i8** %data, align 8, !dbg !405
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !407
  %cmp = icmp eq i32 %call2, 1, !dbg !408
  br i1 %cmp, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %while.body1
  store i32 0, i32* %intVariable, align 4, !dbg !410
  store i32 0, i32* %i, align 4, !dbg !412
  br label %for.cond, !dbg !414

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !415
  %4 = load i32, i32* %n, align 4, !dbg !417
  %cmp3 = icmp slt i32 %3, %4, !dbg !418
  br i1 %cmp3, label %for.body, label %for.end, !dbg !419

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !420
  %inc = add nsw i32 %5, 1, !dbg !420
  store i32 %inc, i32* %intVariable, align 4, !dbg !420
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !423
  %inc4 = add nsw i32 %6, 1, !dbg !423
  store i32 %inc4, i32* %i, align 4, !dbg !423
  br label %for.cond, !dbg !424, !llvm.loop !425

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !427
  call void @printIntLine(i32 %7), !dbg !428
  br label %if.end, !dbg !429

if.end:                                           ; preds = %for.end, %while.body1
  br label %while.end5, !dbg !430

while.end5:                                       ; preds = %if.end
  ret void, !dbg !431
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_16_good() #0 !dbg !432 {
entry:
  call void @goodB2G(), !dbg !433
  call void @goodG2B(), !dbg !434
  ret void, !dbg !435
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_945/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_16_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!77 = !DILocation(line: 55, column: 5, scope: !64)
!78 = !DILocalVariable(name: "recvResult", scope: !79, file: !1, line: 62, type: !81)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 57, column: 9)
!80 = distinct !DILexicalBlock(scope: !64, file: !1, line: 56, column: 5)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DILocation(line: 62, column: 17, scope: !79)
!83 = !DILocalVariable(name: "service", scope: !79, file: !1, line: 63, type: !84)
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
!105 = !DILocation(line: 63, column: 32, scope: !79)
!106 = !DILocalVariable(name: "replace", scope: !79, file: !1, line: 64, type: !59)
!107 = !DILocation(line: 64, column: 19, scope: !79)
!108 = !DILocalVariable(name: "connectSocket", scope: !79, file: !1, line: 65, type: !81)
!109 = !DILocation(line: 65, column: 20, scope: !79)
!110 = !DILocalVariable(name: "dataLen", scope: !79, file: !1, line: 66, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 66, column: 20, scope: !79)
!115 = !DILocation(line: 66, column: 37, scope: !79)
!116 = !DILocation(line: 66, column: 30, scope: !79)
!117 = !DILocation(line: 67, column: 13, scope: !79)
!118 = !DILocation(line: 77, column: 33, scope: !119)
!119 = distinct !DILexicalBlock(scope: !79, file: !1, line: 68, column: 13)
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
!192 = distinct !DILexicalBlock(scope: !79, file: !1, line: 113, column: 17)
!193 = !DILocation(line: 113, column: 31, scope: !192)
!194 = !DILocation(line: 113, column: 17, scope: !79)
!195 = !DILocation(line: 115, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 114, column: 13)
!197 = !DILocation(line: 115, column: 17, scope: !196)
!198 = !DILocation(line: 116, column: 13, scope: !196)
!199 = !DILocation(line: 124, column: 9, scope: !80)
!200 = !DILocation(line: 126, column: 5, scope: !64)
!201 = !DILocalVariable(name: "i", scope: !202, file: !1, line: 129, type: !81)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 128, column: 9)
!203 = distinct !DILexicalBlock(scope: !64, file: !1, line: 127, column: 5)
!204 = !DILocation(line: 129, column: 17, scope: !202)
!205 = !DILocalVariable(name: "n", scope: !202, file: !1, line: 129, type: !81)
!206 = !DILocation(line: 129, column: 20, scope: !202)
!207 = !DILocalVariable(name: "intVariable", scope: !202, file: !1, line: 129, type: !81)
!208 = !DILocation(line: 129, column: 23, scope: !202)
!209 = !DILocation(line: 130, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !1, line: 130, column: 17)
!211 = !DILocation(line: 130, column: 17, scope: !210)
!212 = !DILocation(line: 130, column: 40, scope: !210)
!213 = !DILocation(line: 130, column: 17, scope: !202)
!214 = !DILocation(line: 133, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 131, column: 13)
!216 = !DILocation(line: 134, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !215, file: !1, line: 134, column: 17)
!218 = !DILocation(line: 134, column: 22, scope: !217)
!219 = !DILocation(line: 134, column: 29, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 134, column: 17)
!221 = !DILocation(line: 134, column: 33, scope: !220)
!222 = !DILocation(line: 134, column: 31, scope: !220)
!223 = !DILocation(line: 134, column: 17, scope: !217)
!224 = !DILocation(line: 137, column: 32, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 135, column: 17)
!226 = !DILocation(line: 138, column: 17, scope: !225)
!227 = !DILocation(line: 134, column: 37, scope: !220)
!228 = !DILocation(line: 134, column: 17, scope: !220)
!229 = distinct !{!229, !223, !230, !231}
!230 = !DILocation(line: 138, column: 17, scope: !217)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !DILocation(line: 139, column: 30, scope: !215)
!233 = !DILocation(line: 139, column: 17, scope: !215)
!234 = !DILocation(line: 140, column: 13, scope: !215)
!235 = !DILocation(line: 142, column: 9, scope: !203)
!236 = !DILocation(line: 144, column: 1, scope: !64)
!237 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 151, type: !65, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!238 = !DILocalVariable(name: "data", scope: !237, file: !1, line: 153, type: !59)
!239 = !DILocation(line: 153, column: 12, scope: !237)
!240 = !DILocalVariable(name: "dataBuffer", scope: !237, file: !1, line: 154, type: !71)
!241 = !DILocation(line: 154, column: 10, scope: !237)
!242 = !DILocation(line: 155, column: 12, scope: !237)
!243 = !DILocation(line: 155, column: 10, scope: !237)
!244 = !DILocation(line: 156, column: 5, scope: !237)
!245 = !DILocalVariable(name: "recvResult", scope: !246, file: !1, line: 163, type: !81)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 158, column: 9)
!247 = distinct !DILexicalBlock(scope: !237, file: !1, line: 157, column: 5)
!248 = !DILocation(line: 163, column: 17, scope: !246)
!249 = !DILocalVariable(name: "service", scope: !246, file: !1, line: 164, type: !84)
!250 = !DILocation(line: 164, column: 32, scope: !246)
!251 = !DILocalVariable(name: "replace", scope: !246, file: !1, line: 165, type: !59)
!252 = !DILocation(line: 165, column: 19, scope: !246)
!253 = !DILocalVariable(name: "connectSocket", scope: !246, file: !1, line: 166, type: !81)
!254 = !DILocation(line: 166, column: 20, scope: !246)
!255 = !DILocalVariable(name: "dataLen", scope: !246, file: !1, line: 167, type: !111)
!256 = !DILocation(line: 167, column: 20, scope: !246)
!257 = !DILocation(line: 167, column: 37, scope: !246)
!258 = !DILocation(line: 167, column: 30, scope: !246)
!259 = !DILocation(line: 168, column: 13, scope: !246)
!260 = !DILocation(line: 178, column: 33, scope: !261)
!261 = distinct !DILexicalBlock(scope: !246, file: !1, line: 169, column: 13)
!262 = !DILocation(line: 178, column: 31, scope: !261)
!263 = !DILocation(line: 179, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 179, column: 21)
!265 = !DILocation(line: 179, column: 35, scope: !264)
!266 = !DILocation(line: 179, column: 21, scope: !261)
!267 = !DILocation(line: 181, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 180, column: 17)
!269 = !DILocation(line: 183, column: 17, scope: !261)
!270 = !DILocation(line: 184, column: 25, scope: !261)
!271 = !DILocation(line: 184, column: 36, scope: !261)
!272 = !DILocation(line: 185, column: 43, scope: !261)
!273 = !DILocation(line: 185, column: 25, scope: !261)
!274 = !DILocation(line: 185, column: 34, scope: !261)
!275 = !DILocation(line: 185, column: 41, scope: !261)
!276 = !DILocation(line: 186, column: 36, scope: !261)
!277 = !DILocation(line: 186, column: 25, scope: !261)
!278 = !DILocation(line: 186, column: 34, scope: !261)
!279 = !DILocation(line: 187, column: 29, scope: !280)
!280 = distinct !DILexicalBlock(scope: !261, file: !1, line: 187, column: 21)
!281 = !DILocation(line: 187, column: 44, scope: !280)
!282 = !DILocation(line: 187, column: 21, scope: !280)
!283 = !DILocation(line: 187, column: 89, scope: !280)
!284 = !DILocation(line: 187, column: 21, scope: !261)
!285 = !DILocation(line: 189, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !1, line: 188, column: 17)
!287 = !DILocation(line: 194, column: 35, scope: !261)
!288 = !DILocation(line: 194, column: 59, scope: !261)
!289 = !DILocation(line: 194, column: 66, scope: !261)
!290 = !DILocation(line: 194, column: 64, scope: !261)
!291 = !DILocation(line: 194, column: 98, scope: !261)
!292 = !DILocation(line: 194, column: 96, scope: !261)
!293 = !DILocation(line: 194, column: 106, scope: !261)
!294 = !DILocation(line: 194, column: 89, scope: !261)
!295 = !DILocation(line: 194, column: 30, scope: !261)
!296 = !DILocation(line: 194, column: 28, scope: !261)
!297 = !DILocation(line: 195, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !261, file: !1, line: 195, column: 21)
!299 = !DILocation(line: 195, column: 32, scope: !298)
!300 = !DILocation(line: 195, column: 48, scope: !298)
!301 = !DILocation(line: 195, column: 51, scope: !298)
!302 = !DILocation(line: 195, column: 62, scope: !298)
!303 = !DILocation(line: 195, column: 21, scope: !261)
!304 = !DILocation(line: 197, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !1, line: 196, column: 17)
!306 = !DILocation(line: 200, column: 17, scope: !261)
!307 = !DILocation(line: 200, column: 22, scope: !261)
!308 = !DILocation(line: 200, column: 32, scope: !261)
!309 = !DILocation(line: 200, column: 43, scope: !261)
!310 = !DILocation(line: 200, column: 30, scope: !261)
!311 = !DILocation(line: 200, column: 59, scope: !261)
!312 = !DILocation(line: 202, column: 34, scope: !261)
!313 = !DILocation(line: 202, column: 27, scope: !261)
!314 = !DILocation(line: 202, column: 25, scope: !261)
!315 = !DILocation(line: 203, column: 21, scope: !316)
!316 = distinct !DILexicalBlock(scope: !261, file: !1, line: 203, column: 21)
!317 = !DILocation(line: 203, column: 21, scope: !261)
!318 = !DILocation(line: 205, column: 22, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !1, line: 204, column: 17)
!320 = !DILocation(line: 205, column: 30, scope: !319)
!321 = !DILocation(line: 206, column: 17, scope: !319)
!322 = !DILocation(line: 207, column: 34, scope: !261)
!323 = !DILocation(line: 207, column: 27, scope: !261)
!324 = !DILocation(line: 207, column: 25, scope: !261)
!325 = !DILocation(line: 208, column: 21, scope: !326)
!326 = distinct !DILexicalBlock(scope: !261, file: !1, line: 208, column: 21)
!327 = !DILocation(line: 208, column: 21, scope: !261)
!328 = !DILocation(line: 210, column: 22, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !1, line: 209, column: 17)
!330 = !DILocation(line: 210, column: 30, scope: !329)
!331 = !DILocation(line: 211, column: 17, scope: !329)
!332 = !DILocation(line: 212, column: 13, scope: !261)
!333 = !DILocation(line: 214, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !246, file: !1, line: 214, column: 17)
!335 = !DILocation(line: 214, column: 31, scope: !334)
!336 = !DILocation(line: 214, column: 17, scope: !246)
!337 = !DILocation(line: 216, column: 30, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 215, column: 13)
!339 = !DILocation(line: 216, column: 17, scope: !338)
!340 = !DILocation(line: 217, column: 13, scope: !338)
!341 = !DILocation(line: 225, column: 9, scope: !247)
!342 = !DILocation(line: 227, column: 5, scope: !237)
!343 = !DILocalVariable(name: "i", scope: !344, file: !1, line: 230, type: !81)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 229, column: 9)
!345 = distinct !DILexicalBlock(scope: !237, file: !1, line: 228, column: 5)
!346 = !DILocation(line: 230, column: 17, scope: !344)
!347 = !DILocalVariable(name: "n", scope: !344, file: !1, line: 230, type: !81)
!348 = !DILocation(line: 230, column: 20, scope: !344)
!349 = !DILocalVariable(name: "intVariable", scope: !344, file: !1, line: 230, type: !81)
!350 = !DILocation(line: 230, column: 23, scope: !344)
!351 = !DILocation(line: 231, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !1, line: 231, column: 17)
!353 = !DILocation(line: 231, column: 17, scope: !352)
!354 = !DILocation(line: 231, column: 40, scope: !352)
!355 = !DILocation(line: 231, column: 17, scope: !344)
!356 = !DILocation(line: 234, column: 21, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 234, column: 21)
!358 = distinct !DILexicalBlock(scope: !352, file: !1, line: 232, column: 13)
!359 = !DILocation(line: 234, column: 23, scope: !357)
!360 = !DILocation(line: 234, column: 21, scope: !358)
!361 = !DILocation(line: 236, column: 33, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 235, column: 17)
!363 = !DILocation(line: 237, column: 28, scope: !364)
!364 = distinct !DILexicalBlock(scope: !362, file: !1, line: 237, column: 21)
!365 = !DILocation(line: 237, column: 26, scope: !364)
!366 = !DILocation(line: 237, column: 33, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 237, column: 21)
!368 = !DILocation(line: 237, column: 37, scope: !367)
!369 = !DILocation(line: 237, column: 35, scope: !367)
!370 = !DILocation(line: 237, column: 21, scope: !364)
!371 = !DILocation(line: 240, column: 36, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !1, line: 238, column: 21)
!373 = !DILocation(line: 241, column: 21, scope: !372)
!374 = !DILocation(line: 237, column: 41, scope: !367)
!375 = !DILocation(line: 237, column: 21, scope: !367)
!376 = distinct !{!376, !370, !377, !231}
!377 = !DILocation(line: 241, column: 21, scope: !364)
!378 = !DILocation(line: 242, column: 34, scope: !362)
!379 = !DILocation(line: 242, column: 21, scope: !362)
!380 = !DILocation(line: 243, column: 17, scope: !362)
!381 = !DILocation(line: 244, column: 13, scope: !358)
!382 = !DILocation(line: 246, column: 9, scope: !345)
!383 = !DILocation(line: 248, column: 1, scope: !237)
!384 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 251, type: !65, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!385 = !DILocalVariable(name: "data", scope: !384, file: !1, line: 253, type: !59)
!386 = !DILocation(line: 253, column: 12, scope: !384)
!387 = !DILocalVariable(name: "dataBuffer", scope: !384, file: !1, line: 254, type: !71)
!388 = !DILocation(line: 254, column: 10, scope: !384)
!389 = !DILocation(line: 255, column: 12, scope: !384)
!390 = !DILocation(line: 255, column: 10, scope: !384)
!391 = !DILocation(line: 256, column: 5, scope: !384)
!392 = !DILocation(line: 259, column: 16, scope: !393)
!393 = distinct !DILexicalBlock(scope: !384, file: !1, line: 257, column: 5)
!394 = !DILocation(line: 259, column: 9, scope: !393)
!395 = !DILocation(line: 260, column: 9, scope: !393)
!396 = !DILocation(line: 262, column: 5, scope: !384)
!397 = !DILocalVariable(name: "i", scope: !398, file: !1, line: 265, type: !81)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 264, column: 9)
!399 = distinct !DILexicalBlock(scope: !384, file: !1, line: 263, column: 5)
!400 = !DILocation(line: 265, column: 17, scope: !398)
!401 = !DILocalVariable(name: "n", scope: !398, file: !1, line: 265, type: !81)
!402 = !DILocation(line: 265, column: 20, scope: !398)
!403 = !DILocalVariable(name: "intVariable", scope: !398, file: !1, line: 265, type: !81)
!404 = !DILocation(line: 265, column: 23, scope: !398)
!405 = !DILocation(line: 266, column: 24, scope: !406)
!406 = distinct !DILexicalBlock(scope: !398, file: !1, line: 266, column: 17)
!407 = !DILocation(line: 266, column: 17, scope: !406)
!408 = !DILocation(line: 266, column: 40, scope: !406)
!409 = !DILocation(line: 266, column: 17, scope: !398)
!410 = !DILocation(line: 269, column: 29, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !1, line: 267, column: 13)
!412 = !DILocation(line: 270, column: 24, scope: !413)
!413 = distinct !DILexicalBlock(scope: !411, file: !1, line: 270, column: 17)
!414 = !DILocation(line: 270, column: 22, scope: !413)
!415 = !DILocation(line: 270, column: 29, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !1, line: 270, column: 17)
!417 = !DILocation(line: 270, column: 33, scope: !416)
!418 = !DILocation(line: 270, column: 31, scope: !416)
!419 = !DILocation(line: 270, column: 17, scope: !413)
!420 = !DILocation(line: 273, column: 32, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 271, column: 17)
!422 = !DILocation(line: 274, column: 17, scope: !421)
!423 = !DILocation(line: 270, column: 37, scope: !416)
!424 = !DILocation(line: 270, column: 17, scope: !416)
!425 = distinct !{!425, !419, !426, !231}
!426 = !DILocation(line: 274, column: 17, scope: !413)
!427 = !DILocation(line: 275, column: 30, scope: !411)
!428 = !DILocation(line: 275, column: 17, scope: !411)
!429 = !DILocation(line: 276, column: 13, scope: !411)
!430 = !DILocation(line: 278, column: 9, scope: !399)
!431 = !DILocation(line: 280, column: 1, scope: !384)
!432 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_16_good", scope: !1, file: !1, line: 282, type: !65, scopeLine: 283, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!433 = !DILocation(line: 284, column: 5, scope: !432)
!434 = !DILocation(line: 285, column: 5, scope: !432)
!435 = !DILocation(line: 286, column: 1, scope: !432)
