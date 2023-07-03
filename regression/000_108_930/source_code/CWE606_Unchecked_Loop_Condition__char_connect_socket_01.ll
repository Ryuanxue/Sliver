; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_01.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_01_bad() #0 !dbg !64 {
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
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !77, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !81, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %connectSocket, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !108, metadata !DIExpression()), !dbg !112
  %1 = load i8*, i8** %data, align 8, !dbg !113
  %call = call i64 @strlen(i8* %1) #7, !dbg !114
  store i64 %call, i64* %dataLen, align 8, !dbg !112
  br label %do.body, !dbg !115

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !116
  store i32 %call1, i32* %connectSocket, align 4, !dbg !118
  %2 = load i32, i32* %connectSocket, align 4, !dbg !119
  %cmp = icmp eq i32 %2, -1, !dbg !121
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !123

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !125
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !126
  store i16 2, i16* %sin_family, align 4, !dbg !127
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !128
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !129
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !130
  store i32 %call2, i32* %s_addr, align 4, !dbg !131
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !132
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !133
  store i16 %call3, i16* %sin_port, align 2, !dbg !134
  %4 = load i32, i32* %connectSocket, align 4, !dbg !135
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !137
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !138
  %cmp5 = icmp eq i32 %call4, -1, !dbg !139
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !140

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !141

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !143
  %7 = load i8*, i8** %data, align 8, !dbg !144
  %8 = load i64, i64* %dataLen, align 8, !dbg !145
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !146
  %9 = load i64, i64* %dataLen, align 8, !dbg !147
  %sub = sub i64 100, %9, !dbg !148
  %sub8 = sub i64 %sub, 1, !dbg !149
  %mul = mul i64 1, %sub8, !dbg !150
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !151
  %conv = trunc i64 %call9 to i32, !dbg !151
  store i32 %conv, i32* %recvResult, align 4, !dbg !152
  %10 = load i32, i32* %recvResult, align 4, !dbg !153
  %cmp10 = icmp eq i32 %10, -1, !dbg !155
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !156

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !157
  %cmp12 = icmp eq i32 %11, 0, !dbg !158
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !159

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !160

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !162
  %13 = load i64, i64* %dataLen, align 8, !dbg !163
  %14 = load i32, i32* %recvResult, align 4, !dbg !164
  %conv16 = sext i32 %14 to i64, !dbg !164
  %div = udiv i64 %conv16, 1, !dbg !165
  %add = add i64 %13, %div, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !162
  store i8 0, i8* %arrayidx, align 1, !dbg !167
  %15 = load i8*, i8** %data, align 8, !dbg !168
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !169
  store i8* %call17, i8** %replace, align 8, !dbg !170
  %16 = load i8*, i8** %replace, align 8, !dbg !171
  %tobool = icmp ne i8* %16, null, !dbg !171
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !173

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !174
  store i8 0, i8* %17, align 1, !dbg !176
  br label %if.end19, !dbg !177

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !178
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !179
  store i8* %call20, i8** %replace, align 8, !dbg !180
  %19 = load i8*, i8** %replace, align 8, !dbg !181
  %tobool21 = icmp ne i8* %19, null, !dbg !181
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !183

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !184
  store i8 0, i8* %20, align 1, !dbg !186
  br label %if.end23, !dbg !187

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !188

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !189
  %cmp24 = icmp ne i32 %21, -1, !dbg !191
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !192

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !193
  %call27 = call i32 @close(i32 %22), !dbg !195
  br label %if.end28, !dbg !196

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %n, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !202, metadata !DIExpression()), !dbg !203
  %23 = load i8*, i8** %data, align 8, !dbg !204
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !206
  %cmp30 = icmp eq i32 %call29, 1, !dbg !207
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !208

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load i32, i32* %i, align 4, !dbg !214
  %25 = load i32, i32* %n, align 4, !dbg !216
  %cmp33 = icmp slt i32 %24, %25, !dbg !217
  br i1 %cmp33, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !219
  %inc = add nsw i32 %26, 1, !dbg !219
  store i32 %inc, i32* %intVariable, align 4, !dbg !219
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !222
  %inc35 = add nsw i32 %27, 1, !dbg !222
  store i32 %inc35, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !227
  call void @printIntLine(i32 %28), !dbg !228
  br label %if.end36, !dbg !229

if.end36:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !230
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
define dso_local void @goodG2B() #0 !dbg !231 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  %1 = load i8*, i8** %data, align 8, !dbg !238
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !239
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %n, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !245, metadata !DIExpression()), !dbg !246
  %2 = load i8*, i8** %data, align 8, !dbg !247
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !249
  %cmp = icmp eq i32 %call1, 1, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !257
  %4 = load i32, i32* %n, align 4, !dbg !259
  %cmp2 = icmp slt i32 %3, %4, !dbg !260
  br i1 %cmp2, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !262
  %inc = add nsw i32 %5, 1, !dbg !262
  store i32 %inc, i32* %intVariable, align 4, !dbg !262
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !265
  %inc3 = add nsw i32 %6, 1, !dbg !265
  store i32 %inc3, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %7), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !272
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !273 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !277
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !277
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !278
  store i8* %arraydecay, i8** %data, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !287, metadata !DIExpression()), !dbg !288
  store i32 -1, i32* %connectSocket, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !289, metadata !DIExpression()), !dbg !290
  %1 = load i8*, i8** %data, align 8, !dbg !291
  %call = call i64 @strlen(i8* %1) #7, !dbg !292
  store i64 %call, i64* %dataLen, align 8, !dbg !290
  br label %do.body, !dbg !293

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !294
  store i32 %call1, i32* %connectSocket, align 4, !dbg !296
  %2 = load i32, i32* %connectSocket, align 4, !dbg !297
  %cmp = icmp eq i32 %2, -1, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !301

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !303
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !303
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !304
  store i16 2, i16* %sin_family, align 4, !dbg !305
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !306
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !307
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !308
  store i32 %call2, i32* %s_addr, align 4, !dbg !309
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !310
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !311
  store i16 %call3, i16* %sin_port, align 2, !dbg !312
  %4 = load i32, i32* %connectSocket, align 4, !dbg !313
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !315
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !316
  %cmp5 = icmp eq i32 %call4, -1, !dbg !317
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !318

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !319

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !321
  %7 = load i8*, i8** %data, align 8, !dbg !322
  %8 = load i64, i64* %dataLen, align 8, !dbg !323
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !324
  %9 = load i64, i64* %dataLen, align 8, !dbg !325
  %sub = sub i64 100, %9, !dbg !326
  %sub8 = sub i64 %sub, 1, !dbg !327
  %mul = mul i64 1, %sub8, !dbg !328
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !329
  %conv = trunc i64 %call9 to i32, !dbg !329
  store i32 %conv, i32* %recvResult, align 4, !dbg !330
  %10 = load i32, i32* %recvResult, align 4, !dbg !331
  %cmp10 = icmp eq i32 %10, -1, !dbg !333
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !334

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !335
  %cmp12 = icmp eq i32 %11, 0, !dbg !336
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !337

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !338

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !340
  %13 = load i64, i64* %dataLen, align 8, !dbg !341
  %14 = load i32, i32* %recvResult, align 4, !dbg !342
  %conv16 = sext i32 %14 to i64, !dbg !342
  %div = udiv i64 %conv16, 1, !dbg !343
  %add = add i64 %13, %div, !dbg !344
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !340
  store i8 0, i8* %arrayidx, align 1, !dbg !345
  %15 = load i8*, i8** %data, align 8, !dbg !346
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !347
  store i8* %call17, i8** %replace, align 8, !dbg !348
  %16 = load i8*, i8** %replace, align 8, !dbg !349
  %tobool = icmp ne i8* %16, null, !dbg !349
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !351

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !352
  store i8 0, i8* %17, align 1, !dbg !354
  br label %if.end19, !dbg !355

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !356
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !357
  store i8* %call20, i8** %replace, align 8, !dbg !358
  %19 = load i8*, i8** %replace, align 8, !dbg !359
  %tobool21 = icmp ne i8* %19, null, !dbg !359
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !361

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !362
  store i8 0, i8* %20, align 1, !dbg !364
  br label %if.end23, !dbg !365

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !366

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !367
  %cmp24 = icmp ne i32 %21, -1, !dbg !369
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !370

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !371
  %call27 = call i32 @close(i32 %22), !dbg !373
  br label %if.end28, !dbg !374

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !375, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %n, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !380, metadata !DIExpression()), !dbg !381
  %23 = load i8*, i8** %data, align 8, !dbg !382
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !384
  %cmp30 = icmp eq i32 %call29, 1, !dbg !385
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !386

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !387
  %cmp33 = icmp slt i32 %24, 10000, !dbg !390
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !391

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !392
  store i32 0, i32* %i, align 4, !dbg !394
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !397
  %26 = load i32, i32* %n, align 4, !dbg !399
  %cmp36 = icmp slt i32 %25, %26, !dbg !400
  br i1 %cmp36, label %for.body, label %for.end, !dbg !401

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !402
  %inc = add nsw i32 %27, 1, !dbg !402
  store i32 %inc, i32* %intVariable, align 4, !dbg !402
  br label %for.inc, !dbg !404

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !405
  %inc38 = add nsw i32 %28, 1, !dbg !405
  store i32 %inc38, i32* %i, align 4, !dbg !405
  br label %for.cond, !dbg !406, !llvm.loop !407

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !409
  call void @printIntLine(i32 %29), !dbg !410
  br label %if.end39, !dbg !411

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !412

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_01_good() #0 !dbg !414 {
entry:
  call void @goodG2B(), !dbg !415
  call void @goodB2G(), !dbg !416
  ret void, !dbg !417
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_930/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!77 = !DILocalVariable(name: "recvResult", scope: !78, file: !1, line: 60, type: !79)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 55, column: 5)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DILocation(line: 60, column: 13, scope: !78)
!81 = !DILocalVariable(name: "service", scope: !78, file: !1, line: 61, type: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !83)
!83 = !{!84, !85, !91, !98}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !82, file: !17, line: 240, baseType: !51, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !82, file: !17, line: 241, baseType: !86, size: 16, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 25, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !90, line: 40, baseType: !53)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !82, file: !17, line: 242, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !92, file: !17, line: 33, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 26, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 42, baseType: !5)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !82, file: !17, line: 245, baseType: !99, size: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !101)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DILocation(line: 61, column: 28, scope: !78)
!104 = !DILocalVariable(name: "replace", scope: !78, file: !1, line: 62, type: !59)
!105 = !DILocation(line: 62, column: 15, scope: !78)
!106 = !DILocalVariable(name: "connectSocket", scope: !78, file: !1, line: 63, type: !79)
!107 = !DILocation(line: 63, column: 16, scope: !78)
!108 = !DILocalVariable(name: "dataLen", scope: !78, file: !1, line: 64, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DILocation(line: 64, column: 16, scope: !78)
!113 = !DILocation(line: 64, column: 33, scope: !78)
!114 = !DILocation(line: 64, column: 26, scope: !78)
!115 = !DILocation(line: 65, column: 9, scope: !78)
!116 = !DILocation(line: 75, column: 29, scope: !117)
!117 = distinct !DILexicalBlock(scope: !78, file: !1, line: 66, column: 9)
!118 = !DILocation(line: 75, column: 27, scope: !117)
!119 = !DILocation(line: 76, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 76, column: 17)
!121 = !DILocation(line: 76, column: 31, scope: !120)
!122 = !DILocation(line: 76, column: 17, scope: !117)
!123 = !DILocation(line: 78, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 77, column: 13)
!125 = !DILocation(line: 80, column: 13, scope: !117)
!126 = !DILocation(line: 81, column: 21, scope: !117)
!127 = !DILocation(line: 81, column: 32, scope: !117)
!128 = !DILocation(line: 82, column: 39, scope: !117)
!129 = !DILocation(line: 82, column: 21, scope: !117)
!130 = !DILocation(line: 82, column: 30, scope: !117)
!131 = !DILocation(line: 82, column: 37, scope: !117)
!132 = !DILocation(line: 83, column: 32, scope: !117)
!133 = !DILocation(line: 83, column: 21, scope: !117)
!134 = !DILocation(line: 83, column: 30, scope: !117)
!135 = !DILocation(line: 84, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !117, file: !1, line: 84, column: 17)
!137 = !DILocation(line: 84, column: 40, scope: !136)
!138 = !DILocation(line: 84, column: 17, scope: !136)
!139 = !DILocation(line: 84, column: 85, scope: !136)
!140 = !DILocation(line: 84, column: 17, scope: !117)
!141 = !DILocation(line: 86, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 85, column: 13)
!143 = !DILocation(line: 91, column: 31, scope: !117)
!144 = !DILocation(line: 91, column: 55, scope: !117)
!145 = !DILocation(line: 91, column: 62, scope: !117)
!146 = !DILocation(line: 91, column: 60, scope: !117)
!147 = !DILocation(line: 91, column: 94, scope: !117)
!148 = !DILocation(line: 91, column: 92, scope: !117)
!149 = !DILocation(line: 91, column: 102, scope: !117)
!150 = !DILocation(line: 91, column: 85, scope: !117)
!151 = !DILocation(line: 91, column: 26, scope: !117)
!152 = !DILocation(line: 91, column: 24, scope: !117)
!153 = !DILocation(line: 92, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !117, file: !1, line: 92, column: 17)
!155 = !DILocation(line: 92, column: 28, scope: !154)
!156 = !DILocation(line: 92, column: 44, scope: !154)
!157 = !DILocation(line: 92, column: 47, scope: !154)
!158 = !DILocation(line: 92, column: 58, scope: !154)
!159 = !DILocation(line: 92, column: 17, scope: !117)
!160 = !DILocation(line: 94, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 93, column: 13)
!162 = !DILocation(line: 97, column: 13, scope: !117)
!163 = !DILocation(line: 97, column: 18, scope: !117)
!164 = !DILocation(line: 97, column: 28, scope: !117)
!165 = !DILocation(line: 97, column: 39, scope: !117)
!166 = !DILocation(line: 97, column: 26, scope: !117)
!167 = !DILocation(line: 97, column: 55, scope: !117)
!168 = !DILocation(line: 99, column: 30, scope: !117)
!169 = !DILocation(line: 99, column: 23, scope: !117)
!170 = !DILocation(line: 99, column: 21, scope: !117)
!171 = !DILocation(line: 100, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !117, file: !1, line: 100, column: 17)
!173 = !DILocation(line: 100, column: 17, scope: !117)
!174 = !DILocation(line: 102, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 101, column: 13)
!176 = !DILocation(line: 102, column: 26, scope: !175)
!177 = !DILocation(line: 103, column: 13, scope: !175)
!178 = !DILocation(line: 104, column: 30, scope: !117)
!179 = !DILocation(line: 104, column: 23, scope: !117)
!180 = !DILocation(line: 104, column: 21, scope: !117)
!181 = !DILocation(line: 105, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !117, file: !1, line: 105, column: 17)
!183 = !DILocation(line: 105, column: 17, scope: !117)
!184 = !DILocation(line: 107, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 106, column: 13)
!186 = !DILocation(line: 107, column: 26, scope: !185)
!187 = !DILocation(line: 108, column: 13, scope: !185)
!188 = !DILocation(line: 109, column: 9, scope: !117)
!189 = !DILocation(line: 111, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !78, file: !1, line: 111, column: 13)
!191 = !DILocation(line: 111, column: 27, scope: !190)
!192 = !DILocation(line: 111, column: 13, scope: !78)
!193 = !DILocation(line: 113, column: 26, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 112, column: 9)
!195 = !DILocation(line: 113, column: 13, scope: !194)
!196 = !DILocation(line: 114, column: 9, scope: !194)
!197 = !DILocalVariable(name: "i", scope: !198, file: !1, line: 123, type: !79)
!198 = distinct !DILexicalBlock(scope: !64, file: !1, line: 122, column: 5)
!199 = !DILocation(line: 123, column: 13, scope: !198)
!200 = !DILocalVariable(name: "n", scope: !198, file: !1, line: 123, type: !79)
!201 = !DILocation(line: 123, column: 16, scope: !198)
!202 = !DILocalVariable(name: "intVariable", scope: !198, file: !1, line: 123, type: !79)
!203 = !DILocation(line: 123, column: 19, scope: !198)
!204 = !DILocation(line: 124, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !1, line: 124, column: 13)
!206 = !DILocation(line: 124, column: 13, scope: !205)
!207 = !DILocation(line: 124, column: 36, scope: !205)
!208 = !DILocation(line: 124, column: 13, scope: !198)
!209 = !DILocation(line: 127, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 125, column: 9)
!211 = !DILocation(line: 128, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !1, line: 128, column: 13)
!213 = !DILocation(line: 128, column: 18, scope: !212)
!214 = !DILocation(line: 128, column: 25, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 128, column: 13)
!216 = !DILocation(line: 128, column: 29, scope: !215)
!217 = !DILocation(line: 128, column: 27, scope: !215)
!218 = !DILocation(line: 128, column: 13, scope: !212)
!219 = !DILocation(line: 131, column: 28, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 129, column: 13)
!221 = !DILocation(line: 132, column: 13, scope: !220)
!222 = !DILocation(line: 128, column: 33, scope: !215)
!223 = !DILocation(line: 128, column: 13, scope: !215)
!224 = distinct !{!224, !218, !225, !226}
!225 = !DILocation(line: 132, column: 13, scope: !212)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 133, column: 26, scope: !210)
!228 = !DILocation(line: 133, column: 13, scope: !210)
!229 = !DILocation(line: 134, column: 9, scope: !210)
!230 = !DILocation(line: 136, column: 1, scope: !64)
!231 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 143, type: !65, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!232 = !DILocalVariable(name: "data", scope: !231, file: !1, line: 145, type: !59)
!233 = !DILocation(line: 145, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !1, line: 146, type: !71)
!235 = !DILocation(line: 146, column: 10, scope: !231)
!236 = !DILocation(line: 147, column: 12, scope: !231)
!237 = !DILocation(line: 147, column: 10, scope: !231)
!238 = !DILocation(line: 149, column: 12, scope: !231)
!239 = !DILocation(line: 149, column: 5, scope: !231)
!240 = !DILocalVariable(name: "i", scope: !241, file: !1, line: 151, type: !79)
!241 = distinct !DILexicalBlock(scope: !231, file: !1, line: 150, column: 5)
!242 = !DILocation(line: 151, column: 13, scope: !241)
!243 = !DILocalVariable(name: "n", scope: !241, file: !1, line: 151, type: !79)
!244 = !DILocation(line: 151, column: 16, scope: !241)
!245 = !DILocalVariable(name: "intVariable", scope: !241, file: !1, line: 151, type: !79)
!246 = !DILocation(line: 151, column: 19, scope: !241)
!247 = !DILocation(line: 152, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !1, line: 152, column: 13)
!249 = !DILocation(line: 152, column: 13, scope: !248)
!250 = !DILocation(line: 152, column: 36, scope: !248)
!251 = !DILocation(line: 152, column: 13, scope: !241)
!252 = !DILocation(line: 155, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 153, column: 9)
!254 = !DILocation(line: 156, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !1, line: 156, column: 13)
!256 = !DILocation(line: 156, column: 18, scope: !255)
!257 = !DILocation(line: 156, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 156, column: 13)
!259 = !DILocation(line: 156, column: 29, scope: !258)
!260 = !DILocation(line: 156, column: 27, scope: !258)
!261 = !DILocation(line: 156, column: 13, scope: !255)
!262 = !DILocation(line: 159, column: 28, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !1, line: 157, column: 13)
!264 = !DILocation(line: 160, column: 13, scope: !263)
!265 = !DILocation(line: 156, column: 33, scope: !258)
!266 = !DILocation(line: 156, column: 13, scope: !258)
!267 = distinct !{!267, !261, !268, !226}
!268 = !DILocation(line: 160, column: 13, scope: !255)
!269 = !DILocation(line: 161, column: 26, scope: !253)
!270 = !DILocation(line: 161, column: 13, scope: !253)
!271 = !DILocation(line: 162, column: 9, scope: !253)
!272 = !DILocation(line: 164, column: 1, scope: !231)
!273 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 167, type: !65, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!274 = !DILocalVariable(name: "data", scope: !273, file: !1, line: 169, type: !59)
!275 = !DILocation(line: 169, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !1, line: 170, type: !71)
!277 = !DILocation(line: 170, column: 10, scope: !273)
!278 = !DILocation(line: 171, column: 12, scope: !273)
!279 = !DILocation(line: 171, column: 10, scope: !273)
!280 = !DILocalVariable(name: "recvResult", scope: !281, file: !1, line: 177, type: !79)
!281 = distinct !DILexicalBlock(scope: !273, file: !1, line: 172, column: 5)
!282 = !DILocation(line: 177, column: 13, scope: !281)
!283 = !DILocalVariable(name: "service", scope: !281, file: !1, line: 178, type: !82)
!284 = !DILocation(line: 178, column: 28, scope: !281)
!285 = !DILocalVariable(name: "replace", scope: !281, file: !1, line: 179, type: !59)
!286 = !DILocation(line: 179, column: 15, scope: !281)
!287 = !DILocalVariable(name: "connectSocket", scope: !281, file: !1, line: 180, type: !79)
!288 = !DILocation(line: 180, column: 16, scope: !281)
!289 = !DILocalVariable(name: "dataLen", scope: !281, file: !1, line: 181, type: !109)
!290 = !DILocation(line: 181, column: 16, scope: !281)
!291 = !DILocation(line: 181, column: 33, scope: !281)
!292 = !DILocation(line: 181, column: 26, scope: !281)
!293 = !DILocation(line: 182, column: 9, scope: !281)
!294 = !DILocation(line: 192, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !281, file: !1, line: 183, column: 9)
!296 = !DILocation(line: 192, column: 27, scope: !295)
!297 = !DILocation(line: 193, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !1, line: 193, column: 17)
!299 = !DILocation(line: 193, column: 31, scope: !298)
!300 = !DILocation(line: 193, column: 17, scope: !295)
!301 = !DILocation(line: 195, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 194, column: 13)
!303 = !DILocation(line: 197, column: 13, scope: !295)
!304 = !DILocation(line: 198, column: 21, scope: !295)
!305 = !DILocation(line: 198, column: 32, scope: !295)
!306 = !DILocation(line: 199, column: 39, scope: !295)
!307 = !DILocation(line: 199, column: 21, scope: !295)
!308 = !DILocation(line: 199, column: 30, scope: !295)
!309 = !DILocation(line: 199, column: 37, scope: !295)
!310 = !DILocation(line: 200, column: 32, scope: !295)
!311 = !DILocation(line: 200, column: 21, scope: !295)
!312 = !DILocation(line: 200, column: 30, scope: !295)
!313 = !DILocation(line: 201, column: 25, scope: !314)
!314 = distinct !DILexicalBlock(scope: !295, file: !1, line: 201, column: 17)
!315 = !DILocation(line: 201, column: 40, scope: !314)
!316 = !DILocation(line: 201, column: 17, scope: !314)
!317 = !DILocation(line: 201, column: 85, scope: !314)
!318 = !DILocation(line: 201, column: 17, scope: !295)
!319 = !DILocation(line: 203, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !314, file: !1, line: 202, column: 13)
!321 = !DILocation(line: 208, column: 31, scope: !295)
!322 = !DILocation(line: 208, column: 55, scope: !295)
!323 = !DILocation(line: 208, column: 62, scope: !295)
!324 = !DILocation(line: 208, column: 60, scope: !295)
!325 = !DILocation(line: 208, column: 94, scope: !295)
!326 = !DILocation(line: 208, column: 92, scope: !295)
!327 = !DILocation(line: 208, column: 102, scope: !295)
!328 = !DILocation(line: 208, column: 85, scope: !295)
!329 = !DILocation(line: 208, column: 26, scope: !295)
!330 = !DILocation(line: 208, column: 24, scope: !295)
!331 = !DILocation(line: 209, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !295, file: !1, line: 209, column: 17)
!333 = !DILocation(line: 209, column: 28, scope: !332)
!334 = !DILocation(line: 209, column: 44, scope: !332)
!335 = !DILocation(line: 209, column: 47, scope: !332)
!336 = !DILocation(line: 209, column: 58, scope: !332)
!337 = !DILocation(line: 209, column: 17, scope: !295)
!338 = !DILocation(line: 211, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !1, line: 210, column: 13)
!340 = !DILocation(line: 214, column: 13, scope: !295)
!341 = !DILocation(line: 214, column: 18, scope: !295)
!342 = !DILocation(line: 214, column: 28, scope: !295)
!343 = !DILocation(line: 214, column: 39, scope: !295)
!344 = !DILocation(line: 214, column: 26, scope: !295)
!345 = !DILocation(line: 214, column: 55, scope: !295)
!346 = !DILocation(line: 216, column: 30, scope: !295)
!347 = !DILocation(line: 216, column: 23, scope: !295)
!348 = !DILocation(line: 216, column: 21, scope: !295)
!349 = !DILocation(line: 217, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !295, file: !1, line: 217, column: 17)
!351 = !DILocation(line: 217, column: 17, scope: !295)
!352 = !DILocation(line: 219, column: 18, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 218, column: 13)
!354 = !DILocation(line: 219, column: 26, scope: !353)
!355 = !DILocation(line: 220, column: 13, scope: !353)
!356 = !DILocation(line: 221, column: 30, scope: !295)
!357 = !DILocation(line: 221, column: 23, scope: !295)
!358 = !DILocation(line: 221, column: 21, scope: !295)
!359 = !DILocation(line: 222, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !295, file: !1, line: 222, column: 17)
!361 = !DILocation(line: 222, column: 17, scope: !295)
!362 = !DILocation(line: 224, column: 18, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 223, column: 13)
!364 = !DILocation(line: 224, column: 26, scope: !363)
!365 = !DILocation(line: 225, column: 13, scope: !363)
!366 = !DILocation(line: 226, column: 9, scope: !295)
!367 = !DILocation(line: 228, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !281, file: !1, line: 228, column: 13)
!369 = !DILocation(line: 228, column: 27, scope: !368)
!370 = !DILocation(line: 228, column: 13, scope: !281)
!371 = !DILocation(line: 230, column: 26, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 229, column: 9)
!373 = !DILocation(line: 230, column: 13, scope: !372)
!374 = !DILocation(line: 231, column: 9, scope: !372)
!375 = !DILocalVariable(name: "i", scope: !376, file: !1, line: 240, type: !79)
!376 = distinct !DILexicalBlock(scope: !273, file: !1, line: 239, column: 5)
!377 = !DILocation(line: 240, column: 13, scope: !376)
!378 = !DILocalVariable(name: "n", scope: !376, file: !1, line: 240, type: !79)
!379 = !DILocation(line: 240, column: 16, scope: !376)
!380 = !DILocalVariable(name: "intVariable", scope: !376, file: !1, line: 240, type: !79)
!381 = !DILocation(line: 240, column: 19, scope: !376)
!382 = !DILocation(line: 241, column: 20, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !1, line: 241, column: 13)
!384 = !DILocation(line: 241, column: 13, scope: !383)
!385 = !DILocation(line: 241, column: 36, scope: !383)
!386 = !DILocation(line: 241, column: 13, scope: !376)
!387 = !DILocation(line: 244, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 244, column: 17)
!389 = distinct !DILexicalBlock(scope: !383, file: !1, line: 242, column: 9)
!390 = !DILocation(line: 244, column: 19, scope: !388)
!391 = !DILocation(line: 244, column: 17, scope: !389)
!392 = !DILocation(line: 246, column: 29, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 245, column: 13)
!394 = !DILocation(line: 247, column: 24, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !1, line: 247, column: 17)
!396 = !DILocation(line: 247, column: 22, scope: !395)
!397 = !DILocation(line: 247, column: 29, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !1, line: 247, column: 17)
!399 = !DILocation(line: 247, column: 33, scope: !398)
!400 = !DILocation(line: 247, column: 31, scope: !398)
!401 = !DILocation(line: 247, column: 17, scope: !395)
!402 = !DILocation(line: 250, column: 32, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !1, line: 248, column: 17)
!404 = !DILocation(line: 251, column: 17, scope: !403)
!405 = !DILocation(line: 247, column: 37, scope: !398)
!406 = !DILocation(line: 247, column: 17, scope: !398)
!407 = distinct !{!407, !401, !408, !226}
!408 = !DILocation(line: 251, column: 17, scope: !395)
!409 = !DILocation(line: 252, column: 30, scope: !393)
!410 = !DILocation(line: 252, column: 17, scope: !393)
!411 = !DILocation(line: 253, column: 13, scope: !393)
!412 = !DILocation(line: 254, column: 9, scope: !389)
!413 = !DILocation(line: 256, column: 1, scope: !273)
!414 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_01_good", scope: !1, file: !1, line: 258, type: !65, scopeLine: 259, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!415 = !DILocation(line: 260, column: 5, scope: !414)
!416 = !DILocation(line: 261, column: 5, scope: !414)
!417 = !DILocation(line: 262, column: 1, scope: !414)
