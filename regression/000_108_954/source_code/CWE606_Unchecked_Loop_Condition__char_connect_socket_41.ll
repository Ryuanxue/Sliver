; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_41.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !64 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %n, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i8*, i8** %data.addr, align 8, !dbg !78
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !80
  %cmp = icmp eq i32 %call, 1, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !83
  store i32 0, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !88
  %2 = load i32, i32* %n, align 4, !dbg !90
  %cmp1 = icmp slt i32 %1, %2, !dbg !91
  br i1 %cmp1, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !93
  %inc = add nsw i32 %3, 1, !dbg !93
  store i32 %inc, i32* %intVariable, align 4, !dbg !93
  br label %for.inc, !dbg !95

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !96
  %inc2 = add nsw i32 %4, 1, !dbg !96
  store i32 %inc2, i32* %i, align 4, !dbg !96
  br label %for.cond, !dbg !97, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !101
  call void @printIntLine(i32 %5), !dbg !102
  br label %if.end, !dbg !103

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_41_bad() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !117, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !120, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 -1, i32* %connectSocket, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !147, metadata !DIExpression()), !dbg !151
  %1 = load i8*, i8** %data, align 8, !dbg !152
  %call = call i64 @strlen(i8* %1) #8, !dbg !153
  store i64 %call, i64* %dataLen, align 8, !dbg !151
  br label %do.body, !dbg !154

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !155
  store i32 %call1, i32* %connectSocket, align 4, !dbg !157
  %2 = load i32, i32* %connectSocket, align 4, !dbg !158
  %cmp = icmp eq i32 %2, -1, !dbg !160
  br i1 %cmp, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !162

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !164
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !164
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !165
  store i16 2, i16* %sin_family, align 4, !dbg !166
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !167
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !168
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !169
  store i32 %call2, i32* %s_addr, align 4, !dbg !170
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !171
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !172
  store i16 %call3, i16* %sin_port, align 2, !dbg !173
  %4 = load i32, i32* %connectSocket, align 4, !dbg !174
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !176
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !177
  %cmp5 = icmp eq i32 %call4, -1, !dbg !178
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !179

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !180

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !182
  %7 = load i8*, i8** %data, align 8, !dbg !183
  %8 = load i64, i64* %dataLen, align 8, !dbg !184
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !185
  %9 = load i64, i64* %dataLen, align 8, !dbg !186
  %sub = sub i64 100, %9, !dbg !187
  %sub8 = sub i64 %sub, 1, !dbg !188
  %mul = mul i64 1, %sub8, !dbg !189
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !190
  %conv = trunc i64 %call9 to i32, !dbg !190
  store i32 %conv, i32* %recvResult, align 4, !dbg !191
  %10 = load i32, i32* %recvResult, align 4, !dbg !192
  %cmp10 = icmp eq i32 %10, -1, !dbg !194
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !195

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !196
  %cmp12 = icmp eq i32 %11, 0, !dbg !197
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !198

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !199

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !201
  %13 = load i64, i64* %dataLen, align 8, !dbg !202
  %14 = load i32, i32* %recvResult, align 4, !dbg !203
  %conv16 = sext i32 %14 to i64, !dbg !203
  %div = udiv i64 %conv16, 1, !dbg !204
  %add = add i64 %13, %div, !dbg !205
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !201
  store i8 0, i8* %arrayidx, align 1, !dbg !206
  %15 = load i8*, i8** %data, align 8, !dbg !207
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !208
  store i8* %call17, i8** %replace, align 8, !dbg !209
  %16 = load i8*, i8** %replace, align 8, !dbg !210
  %tobool = icmp ne i8* %16, null, !dbg !210
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !212

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !213
  store i8 0, i8* %17, align 1, !dbg !215
  br label %if.end19, !dbg !216

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !217
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !218
  store i8* %call20, i8** %replace, align 8, !dbg !219
  %19 = load i8*, i8** %replace, align 8, !dbg !220
  %tobool21 = icmp ne i8* %19, null, !dbg !220
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !222

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !223
  store i8 0, i8* %20, align 1, !dbg !225
  br label %if.end23, !dbg !226

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !227

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !228
  %cmp24 = icmp ne i32 %21, -1, !dbg !230
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !231

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !232
  %call27 = call i32 @close(i32 %22), !dbg !234
  br label %if.end28, !dbg !235

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !236
  call void @badSink(i8* %23), !dbg !237
  ret void, !dbg !238
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !239 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %i, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %n, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load i8*, i8** %data.addr, align 8, !dbg !249
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !251
  %cmp = icmp eq i32 %call, 1, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !254
  store i32 0, i32* %i, align 4, !dbg !256
  br label %for.cond, !dbg !258

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !259
  %2 = load i32, i32* %n, align 4, !dbg !261
  %cmp1 = icmp slt i32 %1, %2, !dbg !262
  br i1 %cmp1, label %for.body, label %for.end, !dbg !263

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !264
  %inc = add nsw i32 %3, 1, !dbg !264
  store i32 %inc, i32* %intVariable, align 4, !dbg !264
  br label %for.inc, !dbg !266

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !267
  %inc2 = add nsw i32 %4, 1, !dbg !267
  store i32 %inc2, i32* %i, align 4, !dbg !267
  br label %for.cond, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !271
  call void @printIntLine(i32 %5), !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !275 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  %1 = load i8*, i8** %data, align 8, !dbg !282
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !283
  %2 = load i8*, i8** %data, align 8, !dbg !284
  call void @goodG2BSink(i8* %2), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !287 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %i, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %n, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i8*, i8** %data.addr, align 8, !dbg !297
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !299
  %cmp = icmp eq i32 %call, 1, !dbg !300
  br i1 %cmp, label %if.then, label %if.end5, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !302
  %cmp1 = icmp slt i32 %1, 10000, !dbg !305
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !306

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !307
  store i32 0, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !311

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !312
  %3 = load i32, i32* %n, align 4, !dbg !314
  %cmp3 = icmp slt i32 %2, %3, !dbg !315
  br i1 %cmp3, label %for.body, label %for.end, !dbg !316

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !317
  %inc = add nsw i32 %4, 1, !dbg !317
  store i32 %inc, i32* %intVariable, align 4, !dbg !317
  br label %for.inc, !dbg !319

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !320
  %inc4 = add nsw i32 %5, 1, !dbg !320
  store i32 %inc4, i32* %i, align 4, !dbg !320
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !324
  call void @printIntLine(i32 %6), !dbg !325
  br label %if.end, !dbg !326

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !327

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !329 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !333
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !334
  store i8* %arraydecay, i8** %data, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !343, metadata !DIExpression()), !dbg !344
  store i32 -1, i32* %connectSocket, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !345, metadata !DIExpression()), !dbg !346
  %1 = load i8*, i8** %data, align 8, !dbg !347
  %call = call i64 @strlen(i8* %1) #8, !dbg !348
  store i64 %call, i64* %dataLen, align 8, !dbg !346
  br label %do.body, !dbg !349

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !350
  store i32 %call1, i32* %connectSocket, align 4, !dbg !352
  %2 = load i32, i32* %connectSocket, align 4, !dbg !353
  %cmp = icmp eq i32 %2, -1, !dbg !355
  br i1 %cmp, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !357

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !359
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !359
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !360
  store i16 2, i16* %sin_family, align 4, !dbg !361
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !362
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !363
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !364
  store i32 %call2, i32* %s_addr, align 4, !dbg !365
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !366
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !367
  store i16 %call3, i16* %sin_port, align 2, !dbg !368
  %4 = load i32, i32* %connectSocket, align 4, !dbg !369
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !371
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !372
  %cmp5 = icmp eq i32 %call4, -1, !dbg !373
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !374

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !375

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !377
  %7 = load i8*, i8** %data, align 8, !dbg !378
  %8 = load i64, i64* %dataLen, align 8, !dbg !379
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !380
  %9 = load i64, i64* %dataLen, align 8, !dbg !381
  %sub = sub i64 100, %9, !dbg !382
  %sub8 = sub i64 %sub, 1, !dbg !383
  %mul = mul i64 1, %sub8, !dbg !384
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !385
  %conv = trunc i64 %call9 to i32, !dbg !385
  store i32 %conv, i32* %recvResult, align 4, !dbg !386
  %10 = load i32, i32* %recvResult, align 4, !dbg !387
  %cmp10 = icmp eq i32 %10, -1, !dbg !389
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !390

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !391
  %cmp12 = icmp eq i32 %11, 0, !dbg !392
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !393

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !394

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !396
  %13 = load i64, i64* %dataLen, align 8, !dbg !397
  %14 = load i32, i32* %recvResult, align 4, !dbg !398
  %conv16 = sext i32 %14 to i64, !dbg !398
  %div = udiv i64 %conv16, 1, !dbg !399
  %add = add i64 %13, %div, !dbg !400
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !396
  store i8 0, i8* %arrayidx, align 1, !dbg !401
  %15 = load i8*, i8** %data, align 8, !dbg !402
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !403
  store i8* %call17, i8** %replace, align 8, !dbg !404
  %16 = load i8*, i8** %replace, align 8, !dbg !405
  %tobool = icmp ne i8* %16, null, !dbg !405
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !407

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !408
  store i8 0, i8* %17, align 1, !dbg !410
  br label %if.end19, !dbg !411

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !412
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !413
  store i8* %call20, i8** %replace, align 8, !dbg !414
  %19 = load i8*, i8** %replace, align 8, !dbg !415
  %tobool21 = icmp ne i8* %19, null, !dbg !415
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !417

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !418
  store i8 0, i8* %20, align 1, !dbg !420
  br label %if.end23, !dbg !421

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !422

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !423
  %cmp24 = icmp ne i32 %21, -1, !dbg !425
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !426

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !427
  %call27 = call i32 @close(i32 %22), !dbg !429
  br label %if.end28, !dbg !430

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !431
  call void @goodB2GSink(i8* %23), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_41_good() #0 !dbg !434 {
entry:
  call void @goodB2G(), !dbg !435
  call void @goodG2B(), !dbg !436
  ret void, !dbg !437
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_954/source_code")
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
!64 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59}
!67 = !{}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !64, file: !1, line: 50, type: !59)
!69 = !DILocation(line: 50, column: 21, scope: !64)
!70 = !DILocalVariable(name: "i", scope: !71, file: !1, line: 53, type: !72)
!71 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 5)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DILocation(line: 53, column: 13, scope: !71)
!74 = !DILocalVariable(name: "n", scope: !71, file: !1, line: 53, type: !72)
!75 = !DILocation(line: 53, column: 16, scope: !71)
!76 = !DILocalVariable(name: "intVariable", scope: !71, file: !1, line: 53, type: !72)
!77 = !DILocation(line: 53, column: 19, scope: !71)
!78 = !DILocation(line: 54, column: 20, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 54, column: 13)
!80 = !DILocation(line: 54, column: 13, scope: !79)
!81 = !DILocation(line: 54, column: 36, scope: !79)
!82 = !DILocation(line: 54, column: 13, scope: !71)
!83 = !DILocation(line: 57, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 55, column: 9)
!85 = !DILocation(line: 58, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !1, line: 58, column: 13)
!87 = !DILocation(line: 58, column: 18, scope: !86)
!88 = !DILocation(line: 58, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 13)
!90 = !DILocation(line: 58, column: 29, scope: !89)
!91 = !DILocation(line: 58, column: 27, scope: !89)
!92 = !DILocation(line: 58, column: 13, scope: !86)
!93 = !DILocation(line: 61, column: 28, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 59, column: 13)
!95 = !DILocation(line: 62, column: 13, scope: !94)
!96 = !DILocation(line: 58, column: 33, scope: !89)
!97 = !DILocation(line: 58, column: 13, scope: !89)
!98 = distinct !{!98, !92, !99, !100}
!99 = !DILocation(line: 62, column: 13, scope: !86)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !DILocation(line: 63, column: 26, scope: !84)
!102 = !DILocation(line: 63, column: 13, scope: !84)
!103 = !DILocation(line: 64, column: 9, scope: !84)
!104 = !DILocation(line: 66, column: 1, scope: !64)
!105 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41_bad", scope: !1, file: !1, line: 68, type: !106, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 70, type: !59)
!109 = !DILocation(line: 70, column: 12, scope: !105)
!110 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !1, line: 71, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 100)
!114 = !DILocation(line: 71, column: 10, scope: !105)
!115 = !DILocation(line: 72, column: 12, scope: !105)
!116 = !DILocation(line: 72, column: 10, scope: !105)
!117 = !DILocalVariable(name: "recvResult", scope: !118, file: !1, line: 78, type: !72)
!118 = distinct !DILexicalBlock(scope: !105, file: !1, line: 73, column: 5)
!119 = !DILocation(line: 78, column: 13, scope: !118)
!120 = !DILocalVariable(name: "service", scope: !118, file: !1, line: 79, type: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !122)
!122 = !{!123, !124, !130, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !121, file: !17, line: 240, baseType: !51, size: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !121, file: !17, line: 241, baseType: !125, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !127, line: 25, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !129, line: 40, baseType: !53)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !121, file: !17, line: 242, baseType: !131, size: 32, offset: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !131, file: !17, line: 33, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 26, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !129, line: 42, baseType: !5)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !121, file: !17, line: 245, baseType: !138, size: 64, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !140)
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DILocation(line: 79, column: 28, scope: !118)
!143 = !DILocalVariable(name: "replace", scope: !118, file: !1, line: 80, type: !59)
!144 = !DILocation(line: 80, column: 15, scope: !118)
!145 = !DILocalVariable(name: "connectSocket", scope: !118, file: !1, line: 81, type: !72)
!146 = !DILocation(line: 81, column: 16, scope: !118)
!147 = !DILocalVariable(name: "dataLen", scope: !118, file: !1, line: 82, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 46, baseType: !150)
!149 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!150 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!151 = !DILocation(line: 82, column: 16, scope: !118)
!152 = !DILocation(line: 82, column: 33, scope: !118)
!153 = !DILocation(line: 82, column: 26, scope: !118)
!154 = !DILocation(line: 83, column: 9, scope: !118)
!155 = !DILocation(line: 93, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !118, file: !1, line: 84, column: 9)
!157 = !DILocation(line: 93, column: 27, scope: !156)
!158 = !DILocation(line: 94, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !1, line: 94, column: 17)
!160 = !DILocation(line: 94, column: 31, scope: !159)
!161 = !DILocation(line: 94, column: 17, scope: !156)
!162 = !DILocation(line: 96, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 95, column: 13)
!164 = !DILocation(line: 98, column: 13, scope: !156)
!165 = !DILocation(line: 99, column: 21, scope: !156)
!166 = !DILocation(line: 99, column: 32, scope: !156)
!167 = !DILocation(line: 100, column: 39, scope: !156)
!168 = !DILocation(line: 100, column: 21, scope: !156)
!169 = !DILocation(line: 100, column: 30, scope: !156)
!170 = !DILocation(line: 100, column: 37, scope: !156)
!171 = !DILocation(line: 101, column: 32, scope: !156)
!172 = !DILocation(line: 101, column: 21, scope: !156)
!173 = !DILocation(line: 101, column: 30, scope: !156)
!174 = !DILocation(line: 102, column: 25, scope: !175)
!175 = distinct !DILexicalBlock(scope: !156, file: !1, line: 102, column: 17)
!176 = !DILocation(line: 102, column: 40, scope: !175)
!177 = !DILocation(line: 102, column: 17, scope: !175)
!178 = !DILocation(line: 102, column: 85, scope: !175)
!179 = !DILocation(line: 102, column: 17, scope: !156)
!180 = !DILocation(line: 104, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 103, column: 13)
!182 = !DILocation(line: 109, column: 31, scope: !156)
!183 = !DILocation(line: 109, column: 55, scope: !156)
!184 = !DILocation(line: 109, column: 62, scope: !156)
!185 = !DILocation(line: 109, column: 60, scope: !156)
!186 = !DILocation(line: 109, column: 94, scope: !156)
!187 = !DILocation(line: 109, column: 92, scope: !156)
!188 = !DILocation(line: 109, column: 102, scope: !156)
!189 = !DILocation(line: 109, column: 85, scope: !156)
!190 = !DILocation(line: 109, column: 26, scope: !156)
!191 = !DILocation(line: 109, column: 24, scope: !156)
!192 = !DILocation(line: 110, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !156, file: !1, line: 110, column: 17)
!194 = !DILocation(line: 110, column: 28, scope: !193)
!195 = !DILocation(line: 110, column: 44, scope: !193)
!196 = !DILocation(line: 110, column: 47, scope: !193)
!197 = !DILocation(line: 110, column: 58, scope: !193)
!198 = !DILocation(line: 110, column: 17, scope: !156)
!199 = !DILocation(line: 112, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !1, line: 111, column: 13)
!201 = !DILocation(line: 115, column: 13, scope: !156)
!202 = !DILocation(line: 115, column: 18, scope: !156)
!203 = !DILocation(line: 115, column: 28, scope: !156)
!204 = !DILocation(line: 115, column: 39, scope: !156)
!205 = !DILocation(line: 115, column: 26, scope: !156)
!206 = !DILocation(line: 115, column: 55, scope: !156)
!207 = !DILocation(line: 117, column: 30, scope: !156)
!208 = !DILocation(line: 117, column: 23, scope: !156)
!209 = !DILocation(line: 117, column: 21, scope: !156)
!210 = !DILocation(line: 118, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !156, file: !1, line: 118, column: 17)
!212 = !DILocation(line: 118, column: 17, scope: !156)
!213 = !DILocation(line: 120, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 119, column: 13)
!215 = !DILocation(line: 120, column: 26, scope: !214)
!216 = !DILocation(line: 121, column: 13, scope: !214)
!217 = !DILocation(line: 122, column: 30, scope: !156)
!218 = !DILocation(line: 122, column: 23, scope: !156)
!219 = !DILocation(line: 122, column: 21, scope: !156)
!220 = !DILocation(line: 123, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !156, file: !1, line: 123, column: 17)
!222 = !DILocation(line: 123, column: 17, scope: !156)
!223 = !DILocation(line: 125, column: 18, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 124, column: 13)
!225 = !DILocation(line: 125, column: 26, scope: !224)
!226 = !DILocation(line: 126, column: 13, scope: !224)
!227 = !DILocation(line: 127, column: 9, scope: !156)
!228 = !DILocation(line: 129, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !118, file: !1, line: 129, column: 13)
!230 = !DILocation(line: 129, column: 27, scope: !229)
!231 = !DILocation(line: 129, column: 13, scope: !118)
!232 = !DILocation(line: 131, column: 26, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 130, column: 9)
!234 = !DILocation(line: 131, column: 13, scope: !233)
!235 = !DILocation(line: 132, column: 9, scope: !233)
!236 = !DILocation(line: 140, column: 13, scope: !105)
!237 = !DILocation(line: 140, column: 5, scope: !105)
!238 = !DILocation(line: 141, column: 1, scope: !105)
!239 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 148, type: !65, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!240 = !DILocalVariable(name: "data", arg: 1, scope: !239, file: !1, line: 148, type: !59)
!241 = !DILocation(line: 148, column: 25, scope: !239)
!242 = !DILocalVariable(name: "i", scope: !243, file: !1, line: 151, type: !72)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 150, column: 5)
!244 = !DILocation(line: 151, column: 13, scope: !243)
!245 = !DILocalVariable(name: "n", scope: !243, file: !1, line: 151, type: !72)
!246 = !DILocation(line: 151, column: 16, scope: !243)
!247 = !DILocalVariable(name: "intVariable", scope: !243, file: !1, line: 151, type: !72)
!248 = !DILocation(line: 151, column: 19, scope: !243)
!249 = !DILocation(line: 152, column: 20, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !1, line: 152, column: 13)
!251 = !DILocation(line: 152, column: 13, scope: !250)
!252 = !DILocation(line: 152, column: 36, scope: !250)
!253 = !DILocation(line: 152, column: 13, scope: !243)
!254 = !DILocation(line: 155, column: 25, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 153, column: 9)
!256 = !DILocation(line: 156, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !255, file: !1, line: 156, column: 13)
!258 = !DILocation(line: 156, column: 18, scope: !257)
!259 = !DILocation(line: 156, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 156, column: 13)
!261 = !DILocation(line: 156, column: 29, scope: !260)
!262 = !DILocation(line: 156, column: 27, scope: !260)
!263 = !DILocation(line: 156, column: 13, scope: !257)
!264 = !DILocation(line: 159, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !1, line: 157, column: 13)
!266 = !DILocation(line: 160, column: 13, scope: !265)
!267 = !DILocation(line: 156, column: 33, scope: !260)
!268 = !DILocation(line: 156, column: 13, scope: !260)
!269 = distinct !{!269, !263, !270, !100}
!270 = !DILocation(line: 160, column: 13, scope: !257)
!271 = !DILocation(line: 161, column: 26, scope: !255)
!272 = !DILocation(line: 161, column: 13, scope: !255)
!273 = !DILocation(line: 162, column: 9, scope: !255)
!274 = !DILocation(line: 164, column: 1, scope: !239)
!275 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 166, type: !106, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!276 = !DILocalVariable(name: "data", scope: !275, file: !1, line: 168, type: !59)
!277 = !DILocation(line: 168, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !1, line: 169, type: !111)
!279 = !DILocation(line: 169, column: 10, scope: !275)
!280 = !DILocation(line: 170, column: 12, scope: !275)
!281 = !DILocation(line: 170, column: 10, scope: !275)
!282 = !DILocation(line: 172, column: 12, scope: !275)
!283 = !DILocation(line: 172, column: 5, scope: !275)
!284 = !DILocation(line: 173, column: 17, scope: !275)
!285 = !DILocation(line: 173, column: 5, scope: !275)
!286 = !DILocation(line: 174, column: 1, scope: !275)
!287 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 177, type: !65, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!288 = !DILocalVariable(name: "data", arg: 1, scope: !287, file: !1, line: 177, type: !59)
!289 = !DILocation(line: 177, column: 25, scope: !287)
!290 = !DILocalVariable(name: "i", scope: !291, file: !1, line: 180, type: !72)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 179, column: 5)
!292 = !DILocation(line: 180, column: 13, scope: !291)
!293 = !DILocalVariable(name: "n", scope: !291, file: !1, line: 180, type: !72)
!294 = !DILocation(line: 180, column: 16, scope: !291)
!295 = !DILocalVariable(name: "intVariable", scope: !291, file: !1, line: 180, type: !72)
!296 = !DILocation(line: 180, column: 19, scope: !291)
!297 = !DILocation(line: 181, column: 20, scope: !298)
!298 = distinct !DILexicalBlock(scope: !291, file: !1, line: 181, column: 13)
!299 = !DILocation(line: 181, column: 13, scope: !298)
!300 = !DILocation(line: 181, column: 36, scope: !298)
!301 = !DILocation(line: 181, column: 13, scope: !291)
!302 = !DILocation(line: 184, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 184, column: 17)
!304 = distinct !DILexicalBlock(scope: !298, file: !1, line: 182, column: 9)
!305 = !DILocation(line: 184, column: 19, scope: !303)
!306 = !DILocation(line: 184, column: 17, scope: !304)
!307 = !DILocation(line: 186, column: 29, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !1, line: 185, column: 13)
!309 = !DILocation(line: 187, column: 24, scope: !310)
!310 = distinct !DILexicalBlock(scope: !308, file: !1, line: 187, column: 17)
!311 = !DILocation(line: 187, column: 22, scope: !310)
!312 = !DILocation(line: 187, column: 29, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !1, line: 187, column: 17)
!314 = !DILocation(line: 187, column: 33, scope: !313)
!315 = !DILocation(line: 187, column: 31, scope: !313)
!316 = !DILocation(line: 187, column: 17, scope: !310)
!317 = !DILocation(line: 190, column: 32, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !1, line: 188, column: 17)
!319 = !DILocation(line: 191, column: 17, scope: !318)
!320 = !DILocation(line: 187, column: 37, scope: !313)
!321 = !DILocation(line: 187, column: 17, scope: !313)
!322 = distinct !{!322, !316, !323, !100}
!323 = !DILocation(line: 191, column: 17, scope: !310)
!324 = !DILocation(line: 192, column: 30, scope: !308)
!325 = !DILocation(line: 192, column: 17, scope: !308)
!326 = !DILocation(line: 193, column: 13, scope: !308)
!327 = !DILocation(line: 194, column: 9, scope: !304)
!328 = !DILocation(line: 196, column: 1, scope: !287)
!329 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 198, type: !106, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!330 = !DILocalVariable(name: "data", scope: !329, file: !1, line: 200, type: !59)
!331 = !DILocation(line: 200, column: 12, scope: !329)
!332 = !DILocalVariable(name: "dataBuffer", scope: !329, file: !1, line: 201, type: !111)
!333 = !DILocation(line: 201, column: 10, scope: !329)
!334 = !DILocation(line: 202, column: 12, scope: !329)
!335 = !DILocation(line: 202, column: 10, scope: !329)
!336 = !DILocalVariable(name: "recvResult", scope: !337, file: !1, line: 208, type: !72)
!337 = distinct !DILexicalBlock(scope: !329, file: !1, line: 203, column: 5)
!338 = !DILocation(line: 208, column: 13, scope: !337)
!339 = !DILocalVariable(name: "service", scope: !337, file: !1, line: 209, type: !121)
!340 = !DILocation(line: 209, column: 28, scope: !337)
!341 = !DILocalVariable(name: "replace", scope: !337, file: !1, line: 210, type: !59)
!342 = !DILocation(line: 210, column: 15, scope: !337)
!343 = !DILocalVariable(name: "connectSocket", scope: !337, file: !1, line: 211, type: !72)
!344 = !DILocation(line: 211, column: 16, scope: !337)
!345 = !DILocalVariable(name: "dataLen", scope: !337, file: !1, line: 212, type: !148)
!346 = !DILocation(line: 212, column: 16, scope: !337)
!347 = !DILocation(line: 212, column: 33, scope: !337)
!348 = !DILocation(line: 212, column: 26, scope: !337)
!349 = !DILocation(line: 213, column: 9, scope: !337)
!350 = !DILocation(line: 223, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !337, file: !1, line: 214, column: 9)
!352 = !DILocation(line: 223, column: 27, scope: !351)
!353 = !DILocation(line: 224, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 224, column: 17)
!355 = !DILocation(line: 224, column: 31, scope: !354)
!356 = !DILocation(line: 224, column: 17, scope: !351)
!357 = !DILocation(line: 226, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 225, column: 13)
!359 = !DILocation(line: 228, column: 13, scope: !351)
!360 = !DILocation(line: 229, column: 21, scope: !351)
!361 = !DILocation(line: 229, column: 32, scope: !351)
!362 = !DILocation(line: 230, column: 39, scope: !351)
!363 = !DILocation(line: 230, column: 21, scope: !351)
!364 = !DILocation(line: 230, column: 30, scope: !351)
!365 = !DILocation(line: 230, column: 37, scope: !351)
!366 = !DILocation(line: 231, column: 32, scope: !351)
!367 = !DILocation(line: 231, column: 21, scope: !351)
!368 = !DILocation(line: 231, column: 30, scope: !351)
!369 = !DILocation(line: 232, column: 25, scope: !370)
!370 = distinct !DILexicalBlock(scope: !351, file: !1, line: 232, column: 17)
!371 = !DILocation(line: 232, column: 40, scope: !370)
!372 = !DILocation(line: 232, column: 17, scope: !370)
!373 = !DILocation(line: 232, column: 85, scope: !370)
!374 = !DILocation(line: 232, column: 17, scope: !351)
!375 = !DILocation(line: 234, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !1, line: 233, column: 13)
!377 = !DILocation(line: 239, column: 31, scope: !351)
!378 = !DILocation(line: 239, column: 55, scope: !351)
!379 = !DILocation(line: 239, column: 62, scope: !351)
!380 = !DILocation(line: 239, column: 60, scope: !351)
!381 = !DILocation(line: 239, column: 94, scope: !351)
!382 = !DILocation(line: 239, column: 92, scope: !351)
!383 = !DILocation(line: 239, column: 102, scope: !351)
!384 = !DILocation(line: 239, column: 85, scope: !351)
!385 = !DILocation(line: 239, column: 26, scope: !351)
!386 = !DILocation(line: 239, column: 24, scope: !351)
!387 = !DILocation(line: 240, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !351, file: !1, line: 240, column: 17)
!389 = !DILocation(line: 240, column: 28, scope: !388)
!390 = !DILocation(line: 240, column: 44, scope: !388)
!391 = !DILocation(line: 240, column: 47, scope: !388)
!392 = !DILocation(line: 240, column: 58, scope: !388)
!393 = !DILocation(line: 240, column: 17, scope: !351)
!394 = !DILocation(line: 242, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !388, file: !1, line: 241, column: 13)
!396 = !DILocation(line: 245, column: 13, scope: !351)
!397 = !DILocation(line: 245, column: 18, scope: !351)
!398 = !DILocation(line: 245, column: 28, scope: !351)
!399 = !DILocation(line: 245, column: 39, scope: !351)
!400 = !DILocation(line: 245, column: 26, scope: !351)
!401 = !DILocation(line: 245, column: 55, scope: !351)
!402 = !DILocation(line: 247, column: 30, scope: !351)
!403 = !DILocation(line: 247, column: 23, scope: !351)
!404 = !DILocation(line: 247, column: 21, scope: !351)
!405 = !DILocation(line: 248, column: 17, scope: !406)
!406 = distinct !DILexicalBlock(scope: !351, file: !1, line: 248, column: 17)
!407 = !DILocation(line: 248, column: 17, scope: !351)
!408 = !DILocation(line: 250, column: 18, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 249, column: 13)
!410 = !DILocation(line: 250, column: 26, scope: !409)
!411 = !DILocation(line: 251, column: 13, scope: !409)
!412 = !DILocation(line: 252, column: 30, scope: !351)
!413 = !DILocation(line: 252, column: 23, scope: !351)
!414 = !DILocation(line: 252, column: 21, scope: !351)
!415 = !DILocation(line: 253, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !351, file: !1, line: 253, column: 17)
!417 = !DILocation(line: 253, column: 17, scope: !351)
!418 = !DILocation(line: 255, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 254, column: 13)
!420 = !DILocation(line: 255, column: 26, scope: !419)
!421 = !DILocation(line: 256, column: 13, scope: !419)
!422 = !DILocation(line: 257, column: 9, scope: !351)
!423 = !DILocation(line: 259, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !337, file: !1, line: 259, column: 13)
!425 = !DILocation(line: 259, column: 27, scope: !424)
!426 = !DILocation(line: 259, column: 13, scope: !337)
!427 = !DILocation(line: 261, column: 26, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 260, column: 9)
!429 = !DILocation(line: 261, column: 13, scope: !428)
!430 = !DILocation(line: 262, column: 9, scope: !428)
!431 = !DILocation(line: 270, column: 17, scope: !329)
!432 = !DILocation(line: 270, column: 5, scope: !329)
!433 = !DILocation(line: 271, column: 1, scope: !329)
!434 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_41_good", scope: !1, file: !1, line: 273, type: !106, scopeLine: 274, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!435 = !DILocation(line: 275, column: 5, scope: !434)
!436 = !DILocation(line: 276, column: 5, scope: !434)
!437 = !DILocation(line: 277, column: 1, scope: !434)
