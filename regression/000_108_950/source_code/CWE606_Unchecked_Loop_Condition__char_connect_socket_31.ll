; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_31.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_31_bad() #0 !dbg !64 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data29 = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !197, metadata !DIExpression()), !dbg !199
  %23 = load i8*, i8** %data, align 8, !dbg !200
  store i8* %23, i8** %dataCopy, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !201, metadata !DIExpression()), !dbg !202
  %24 = load i8*, i8** %dataCopy, align 8, !dbg !203
  store i8* %24, i8** %data29, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %i, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %n, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !209, metadata !DIExpression()), !dbg !210
  %25 = load i8*, i8** %data29, align 8, !dbg !211
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !213
  %cmp31 = icmp eq i32 %call30, 1, !dbg !214
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !215

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !216
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then33
  %26 = load i32, i32* %i, align 4, !dbg !221
  %27 = load i32, i32* %n, align 4, !dbg !223
  %cmp34 = icmp slt i32 %26, %27, !dbg !224
  br i1 %cmp34, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !226
  %inc = add nsw i32 %28, 1, !dbg !226
  store i32 %inc, i32* %intVariable, align 4, !dbg !226
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !229
  %inc36 = add nsw i32 %29, 1, !dbg !229
  store i32 %inc36, i32* %i, align 4, !dbg !229
  br label %for.cond, !dbg !230, !llvm.loop !231

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !234
  call void @printIntLine(i32 %30), !dbg !235
  br label %if.end37, !dbg !236

if.end37:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !237
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
define dso_local void @goodG2B() #0 !dbg !238 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !242
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !242
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !243
  store i8* %arraydecay, i8** %data, align 8, !dbg !244
  %1 = load i8*, i8** %data, align 8, !dbg !245
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !247, metadata !DIExpression()), !dbg !249
  %2 = load i8*, i8** %data, align 8, !dbg !250
  store i8* %2, i8** %dataCopy, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !251, metadata !DIExpression()), !dbg !252
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !253
  store i8* %3, i8** %data1, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %i, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %n, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !259, metadata !DIExpression()), !dbg !260
  %4 = load i8*, i8** %data1, align 8, !dbg !261
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !263
  %cmp = icmp eq i32 %call2, 1, !dbg !264
  br i1 %cmp, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !266
  store i32 0, i32* %i, align 4, !dbg !268
  br label %for.cond, !dbg !270

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !271
  %6 = load i32, i32* %n, align 4, !dbg !273
  %cmp3 = icmp slt i32 %5, %6, !dbg !274
  br i1 %cmp3, label %for.body, label %for.end, !dbg !275

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !276
  %inc = add nsw i32 %7, 1, !dbg !276
  store i32 %inc, i32* %intVariable, align 4, !dbg !276
  br label %for.inc, !dbg !278

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !279
  %inc4 = add nsw i32 %8, 1, !dbg !279
  store i32 %inc4, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !280, !llvm.loop !281

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !283
  call void @printIntLine(i32 %9), !dbg !284
  br label %if.end, !dbg !285

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !286
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !287 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !291
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !291
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !292
  store i8* %arraydecay, i8** %data, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 -1, i32* %connectSocket, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !303, metadata !DIExpression()), !dbg !304
  %1 = load i8*, i8** %data, align 8, !dbg !305
  %call = call i64 @strlen(i8* %1) #7, !dbg !306
  store i64 %call, i64* %dataLen, align 8, !dbg !304
  br label %do.body, !dbg !307

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !308
  store i32 %call1, i32* %connectSocket, align 4, !dbg !310
  %2 = load i32, i32* %connectSocket, align 4, !dbg !311
  %cmp = icmp eq i32 %2, -1, !dbg !313
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !315

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !317
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !318
  store i16 2, i16* %sin_family, align 4, !dbg !319
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !320
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !321
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !322
  store i32 %call2, i32* %s_addr, align 4, !dbg !323
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !324
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !325
  store i16 %call3, i16* %sin_port, align 2, !dbg !326
  %4 = load i32, i32* %connectSocket, align 4, !dbg !327
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !329
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !330
  %cmp5 = icmp eq i32 %call4, -1, !dbg !331
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !332

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !333

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !335
  %7 = load i8*, i8** %data, align 8, !dbg !336
  %8 = load i64, i64* %dataLen, align 8, !dbg !337
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !338
  %9 = load i64, i64* %dataLen, align 8, !dbg !339
  %sub = sub i64 100, %9, !dbg !340
  %sub8 = sub i64 %sub, 1, !dbg !341
  %mul = mul i64 1, %sub8, !dbg !342
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !343
  %conv = trunc i64 %call9 to i32, !dbg !343
  store i32 %conv, i32* %recvResult, align 4, !dbg !344
  %10 = load i32, i32* %recvResult, align 4, !dbg !345
  %cmp10 = icmp eq i32 %10, -1, !dbg !347
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !348

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !349
  %cmp12 = icmp eq i32 %11, 0, !dbg !350
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !351

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !352

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !354
  %13 = load i64, i64* %dataLen, align 8, !dbg !355
  %14 = load i32, i32* %recvResult, align 4, !dbg !356
  %conv16 = sext i32 %14 to i64, !dbg !356
  %div = udiv i64 %conv16, 1, !dbg !357
  %add = add i64 %13, %div, !dbg !358
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !354
  store i8 0, i8* %arrayidx, align 1, !dbg !359
  %15 = load i8*, i8** %data, align 8, !dbg !360
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !361
  store i8* %call17, i8** %replace, align 8, !dbg !362
  %16 = load i8*, i8** %replace, align 8, !dbg !363
  %tobool = icmp ne i8* %16, null, !dbg !363
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !365

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !366
  store i8 0, i8* %17, align 1, !dbg !368
  br label %if.end19, !dbg !369

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !370
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !371
  store i8* %call20, i8** %replace, align 8, !dbg !372
  %19 = load i8*, i8** %replace, align 8, !dbg !373
  %tobool21 = icmp ne i8* %19, null, !dbg !373
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !375

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !376
  store i8 0, i8* %20, align 1, !dbg !378
  br label %if.end23, !dbg !379

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !380

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !381
  %cmp24 = icmp ne i32 %21, -1, !dbg !383
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !384

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !385
  %call27 = call i32 @close(i32 %22), !dbg !387
  br label %if.end28, !dbg !388

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !389, metadata !DIExpression()), !dbg !391
  %23 = load i8*, i8** %data, align 8, !dbg !392
  store i8* %23, i8** %dataCopy, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !393, metadata !DIExpression()), !dbg !394
  %24 = load i8*, i8** %dataCopy, align 8, !dbg !395
  store i8* %24, i8** %data29, align 8, !dbg !394
  call void @llvm.dbg.declare(metadata i32* %i, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %n, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !401, metadata !DIExpression()), !dbg !402
  %25 = load i8*, i8** %data29, align 8, !dbg !403
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !405
  %cmp31 = icmp eq i32 %call30, 1, !dbg !406
  br i1 %cmp31, label %if.then33, label %if.end41, !dbg !407

if.then33:                                        ; preds = %if.end28
  %26 = load i32, i32* %n, align 4, !dbg !408
  %cmp34 = icmp slt i32 %26, 10000, !dbg !411
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !412

if.then36:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !413
  store i32 0, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %if.then36
  %27 = load i32, i32* %i, align 4, !dbg !418
  %28 = load i32, i32* %n, align 4, !dbg !420
  %cmp37 = icmp slt i32 %27, %28, !dbg !421
  br i1 %cmp37, label %for.body, label %for.end, !dbg !422

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !423
  %inc = add nsw i32 %29, 1, !dbg !423
  store i32 %inc, i32* %intVariable, align 4, !dbg !423
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !426
  %inc39 = add nsw i32 %30, 1, !dbg !426
  store i32 %inc39, i32* %i, align 4, !dbg !426
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !430
  call void @printIntLine(i32 %31), !dbg !431
  br label %if.end40, !dbg !432

if.end40:                                         ; preds = %for.end, %if.then33
  br label %if.end41, !dbg !433

if.end41:                                         ; preds = %if.end40, %if.end28
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_31_good() #0 !dbg !435 {
entry:
  call void @goodG2B(), !dbg !436
  call void @goodB2G(), !dbg !437
  ret void, !dbg !438
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_950/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!197 = !DILocalVariable(name: "dataCopy", scope: !198, file: !1, line: 123, type: !59)
!198 = distinct !DILexicalBlock(scope: !64, file: !1, line: 122, column: 5)
!199 = !DILocation(line: 123, column: 16, scope: !198)
!200 = !DILocation(line: 123, column: 27, scope: !198)
!201 = !DILocalVariable(name: "data", scope: !198, file: !1, line: 124, type: !59)
!202 = !DILocation(line: 124, column: 16, scope: !198)
!203 = !DILocation(line: 124, column: 23, scope: !198)
!204 = !DILocalVariable(name: "i", scope: !205, file: !1, line: 126, type: !79)
!205 = distinct !DILexicalBlock(scope: !198, file: !1, line: 125, column: 9)
!206 = !DILocation(line: 126, column: 17, scope: !205)
!207 = !DILocalVariable(name: "n", scope: !205, file: !1, line: 126, type: !79)
!208 = !DILocation(line: 126, column: 20, scope: !205)
!209 = !DILocalVariable(name: "intVariable", scope: !205, file: !1, line: 126, type: !79)
!210 = !DILocation(line: 126, column: 23, scope: !205)
!211 = !DILocation(line: 127, column: 24, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !1, line: 127, column: 17)
!213 = !DILocation(line: 127, column: 17, scope: !212)
!214 = !DILocation(line: 127, column: 40, scope: !212)
!215 = !DILocation(line: 127, column: 17, scope: !205)
!216 = !DILocation(line: 130, column: 29, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 128, column: 13)
!218 = !DILocation(line: 131, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !1, line: 131, column: 17)
!220 = !DILocation(line: 131, column: 22, scope: !219)
!221 = !DILocation(line: 131, column: 29, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 131, column: 17)
!223 = !DILocation(line: 131, column: 33, scope: !222)
!224 = !DILocation(line: 131, column: 31, scope: !222)
!225 = !DILocation(line: 131, column: 17, scope: !219)
!226 = !DILocation(line: 134, column: 32, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 132, column: 17)
!228 = !DILocation(line: 135, column: 17, scope: !227)
!229 = !DILocation(line: 131, column: 37, scope: !222)
!230 = !DILocation(line: 131, column: 17, scope: !222)
!231 = distinct !{!231, !225, !232, !233}
!232 = !DILocation(line: 135, column: 17, scope: !219)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 136, column: 30, scope: !217)
!235 = !DILocation(line: 136, column: 17, scope: !217)
!236 = !DILocation(line: 137, column: 13, scope: !217)
!237 = !DILocation(line: 140, column: 1, scope: !64)
!238 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 147, type: !65, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!239 = !DILocalVariable(name: "data", scope: !238, file: !1, line: 149, type: !59)
!240 = !DILocation(line: 149, column: 12, scope: !238)
!241 = !DILocalVariable(name: "dataBuffer", scope: !238, file: !1, line: 150, type: !71)
!242 = !DILocation(line: 150, column: 10, scope: !238)
!243 = !DILocation(line: 151, column: 12, scope: !238)
!244 = !DILocation(line: 151, column: 10, scope: !238)
!245 = !DILocation(line: 153, column: 12, scope: !238)
!246 = !DILocation(line: 153, column: 5, scope: !238)
!247 = !DILocalVariable(name: "dataCopy", scope: !248, file: !1, line: 155, type: !59)
!248 = distinct !DILexicalBlock(scope: !238, file: !1, line: 154, column: 5)
!249 = !DILocation(line: 155, column: 16, scope: !248)
!250 = !DILocation(line: 155, column: 27, scope: !248)
!251 = !DILocalVariable(name: "data", scope: !248, file: !1, line: 156, type: !59)
!252 = !DILocation(line: 156, column: 16, scope: !248)
!253 = !DILocation(line: 156, column: 23, scope: !248)
!254 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 158, type: !79)
!255 = distinct !DILexicalBlock(scope: !248, file: !1, line: 157, column: 9)
!256 = !DILocation(line: 158, column: 17, scope: !255)
!257 = !DILocalVariable(name: "n", scope: !255, file: !1, line: 158, type: !79)
!258 = !DILocation(line: 158, column: 20, scope: !255)
!259 = !DILocalVariable(name: "intVariable", scope: !255, file: !1, line: 158, type: !79)
!260 = !DILocation(line: 158, column: 23, scope: !255)
!261 = !DILocation(line: 159, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !1, line: 159, column: 17)
!263 = !DILocation(line: 159, column: 17, scope: !262)
!264 = !DILocation(line: 159, column: 40, scope: !262)
!265 = !DILocation(line: 159, column: 17, scope: !255)
!266 = !DILocation(line: 162, column: 29, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !1, line: 160, column: 13)
!268 = !DILocation(line: 163, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !267, file: !1, line: 163, column: 17)
!270 = !DILocation(line: 163, column: 22, scope: !269)
!271 = !DILocation(line: 163, column: 29, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 163, column: 17)
!273 = !DILocation(line: 163, column: 33, scope: !272)
!274 = !DILocation(line: 163, column: 31, scope: !272)
!275 = !DILocation(line: 163, column: 17, scope: !269)
!276 = !DILocation(line: 166, column: 32, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 164, column: 17)
!278 = !DILocation(line: 167, column: 17, scope: !277)
!279 = !DILocation(line: 163, column: 37, scope: !272)
!280 = !DILocation(line: 163, column: 17, scope: !272)
!281 = distinct !{!281, !275, !282, !233}
!282 = !DILocation(line: 167, column: 17, scope: !269)
!283 = !DILocation(line: 168, column: 30, scope: !267)
!284 = !DILocation(line: 168, column: 17, scope: !267)
!285 = !DILocation(line: 169, column: 13, scope: !267)
!286 = !DILocation(line: 172, column: 1, scope: !238)
!287 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 175, type: !65, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!288 = !DILocalVariable(name: "data", scope: !287, file: !1, line: 177, type: !59)
!289 = !DILocation(line: 177, column: 12, scope: !287)
!290 = !DILocalVariable(name: "dataBuffer", scope: !287, file: !1, line: 178, type: !71)
!291 = !DILocation(line: 178, column: 10, scope: !287)
!292 = !DILocation(line: 179, column: 12, scope: !287)
!293 = !DILocation(line: 179, column: 10, scope: !287)
!294 = !DILocalVariable(name: "recvResult", scope: !295, file: !1, line: 185, type: !79)
!295 = distinct !DILexicalBlock(scope: !287, file: !1, line: 180, column: 5)
!296 = !DILocation(line: 185, column: 13, scope: !295)
!297 = !DILocalVariable(name: "service", scope: !295, file: !1, line: 186, type: !82)
!298 = !DILocation(line: 186, column: 28, scope: !295)
!299 = !DILocalVariable(name: "replace", scope: !295, file: !1, line: 187, type: !59)
!300 = !DILocation(line: 187, column: 15, scope: !295)
!301 = !DILocalVariable(name: "connectSocket", scope: !295, file: !1, line: 188, type: !79)
!302 = !DILocation(line: 188, column: 16, scope: !295)
!303 = !DILocalVariable(name: "dataLen", scope: !295, file: !1, line: 189, type: !109)
!304 = !DILocation(line: 189, column: 16, scope: !295)
!305 = !DILocation(line: 189, column: 33, scope: !295)
!306 = !DILocation(line: 189, column: 26, scope: !295)
!307 = !DILocation(line: 190, column: 9, scope: !295)
!308 = !DILocation(line: 200, column: 29, scope: !309)
!309 = distinct !DILexicalBlock(scope: !295, file: !1, line: 191, column: 9)
!310 = !DILocation(line: 200, column: 27, scope: !309)
!311 = !DILocation(line: 201, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 201, column: 17)
!313 = !DILocation(line: 201, column: 31, scope: !312)
!314 = !DILocation(line: 201, column: 17, scope: !309)
!315 = !DILocation(line: 203, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 202, column: 13)
!317 = !DILocation(line: 205, column: 13, scope: !309)
!318 = !DILocation(line: 206, column: 21, scope: !309)
!319 = !DILocation(line: 206, column: 32, scope: !309)
!320 = !DILocation(line: 207, column: 39, scope: !309)
!321 = !DILocation(line: 207, column: 21, scope: !309)
!322 = !DILocation(line: 207, column: 30, scope: !309)
!323 = !DILocation(line: 207, column: 37, scope: !309)
!324 = !DILocation(line: 208, column: 32, scope: !309)
!325 = !DILocation(line: 208, column: 21, scope: !309)
!326 = !DILocation(line: 208, column: 30, scope: !309)
!327 = !DILocation(line: 209, column: 25, scope: !328)
!328 = distinct !DILexicalBlock(scope: !309, file: !1, line: 209, column: 17)
!329 = !DILocation(line: 209, column: 40, scope: !328)
!330 = !DILocation(line: 209, column: 17, scope: !328)
!331 = !DILocation(line: 209, column: 85, scope: !328)
!332 = !DILocation(line: 209, column: 17, scope: !309)
!333 = !DILocation(line: 211, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 210, column: 13)
!335 = !DILocation(line: 216, column: 31, scope: !309)
!336 = !DILocation(line: 216, column: 55, scope: !309)
!337 = !DILocation(line: 216, column: 62, scope: !309)
!338 = !DILocation(line: 216, column: 60, scope: !309)
!339 = !DILocation(line: 216, column: 94, scope: !309)
!340 = !DILocation(line: 216, column: 92, scope: !309)
!341 = !DILocation(line: 216, column: 102, scope: !309)
!342 = !DILocation(line: 216, column: 85, scope: !309)
!343 = !DILocation(line: 216, column: 26, scope: !309)
!344 = !DILocation(line: 216, column: 24, scope: !309)
!345 = !DILocation(line: 217, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !309, file: !1, line: 217, column: 17)
!347 = !DILocation(line: 217, column: 28, scope: !346)
!348 = !DILocation(line: 217, column: 44, scope: !346)
!349 = !DILocation(line: 217, column: 47, scope: !346)
!350 = !DILocation(line: 217, column: 58, scope: !346)
!351 = !DILocation(line: 217, column: 17, scope: !309)
!352 = !DILocation(line: 219, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 218, column: 13)
!354 = !DILocation(line: 222, column: 13, scope: !309)
!355 = !DILocation(line: 222, column: 18, scope: !309)
!356 = !DILocation(line: 222, column: 28, scope: !309)
!357 = !DILocation(line: 222, column: 39, scope: !309)
!358 = !DILocation(line: 222, column: 26, scope: !309)
!359 = !DILocation(line: 222, column: 55, scope: !309)
!360 = !DILocation(line: 224, column: 30, scope: !309)
!361 = !DILocation(line: 224, column: 23, scope: !309)
!362 = !DILocation(line: 224, column: 21, scope: !309)
!363 = !DILocation(line: 225, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !309, file: !1, line: 225, column: 17)
!365 = !DILocation(line: 225, column: 17, scope: !309)
!366 = !DILocation(line: 227, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 226, column: 13)
!368 = !DILocation(line: 227, column: 26, scope: !367)
!369 = !DILocation(line: 228, column: 13, scope: !367)
!370 = !DILocation(line: 229, column: 30, scope: !309)
!371 = !DILocation(line: 229, column: 23, scope: !309)
!372 = !DILocation(line: 229, column: 21, scope: !309)
!373 = !DILocation(line: 230, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !309, file: !1, line: 230, column: 17)
!375 = !DILocation(line: 230, column: 17, scope: !309)
!376 = !DILocation(line: 232, column: 18, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 231, column: 13)
!378 = !DILocation(line: 232, column: 26, scope: !377)
!379 = !DILocation(line: 233, column: 13, scope: !377)
!380 = !DILocation(line: 234, column: 9, scope: !309)
!381 = !DILocation(line: 236, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !295, file: !1, line: 236, column: 13)
!383 = !DILocation(line: 236, column: 27, scope: !382)
!384 = !DILocation(line: 236, column: 13, scope: !295)
!385 = !DILocation(line: 238, column: 26, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 237, column: 9)
!387 = !DILocation(line: 238, column: 13, scope: !386)
!388 = !DILocation(line: 239, column: 9, scope: !386)
!389 = !DILocalVariable(name: "dataCopy", scope: !390, file: !1, line: 248, type: !59)
!390 = distinct !DILexicalBlock(scope: !287, file: !1, line: 247, column: 5)
!391 = !DILocation(line: 248, column: 16, scope: !390)
!392 = !DILocation(line: 248, column: 27, scope: !390)
!393 = !DILocalVariable(name: "data", scope: !390, file: !1, line: 249, type: !59)
!394 = !DILocation(line: 249, column: 16, scope: !390)
!395 = !DILocation(line: 249, column: 23, scope: !390)
!396 = !DILocalVariable(name: "i", scope: !397, file: !1, line: 251, type: !79)
!397 = distinct !DILexicalBlock(scope: !390, file: !1, line: 250, column: 9)
!398 = !DILocation(line: 251, column: 17, scope: !397)
!399 = !DILocalVariable(name: "n", scope: !397, file: !1, line: 251, type: !79)
!400 = !DILocation(line: 251, column: 20, scope: !397)
!401 = !DILocalVariable(name: "intVariable", scope: !397, file: !1, line: 251, type: !79)
!402 = !DILocation(line: 251, column: 23, scope: !397)
!403 = !DILocation(line: 252, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !397, file: !1, line: 252, column: 17)
!405 = !DILocation(line: 252, column: 17, scope: !404)
!406 = !DILocation(line: 252, column: 40, scope: !404)
!407 = !DILocation(line: 252, column: 17, scope: !397)
!408 = !DILocation(line: 255, column: 21, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 255, column: 21)
!410 = distinct !DILexicalBlock(scope: !404, file: !1, line: 253, column: 13)
!411 = !DILocation(line: 255, column: 23, scope: !409)
!412 = !DILocation(line: 255, column: 21, scope: !410)
!413 = !DILocation(line: 257, column: 33, scope: !414)
!414 = distinct !DILexicalBlock(scope: !409, file: !1, line: 256, column: 17)
!415 = !DILocation(line: 258, column: 28, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !1, line: 258, column: 21)
!417 = !DILocation(line: 258, column: 26, scope: !416)
!418 = !DILocation(line: 258, column: 33, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 258, column: 21)
!420 = !DILocation(line: 258, column: 37, scope: !419)
!421 = !DILocation(line: 258, column: 35, scope: !419)
!422 = !DILocation(line: 258, column: 21, scope: !416)
!423 = !DILocation(line: 261, column: 36, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 259, column: 21)
!425 = !DILocation(line: 262, column: 21, scope: !424)
!426 = !DILocation(line: 258, column: 41, scope: !419)
!427 = !DILocation(line: 258, column: 21, scope: !419)
!428 = distinct !{!428, !422, !429, !233}
!429 = !DILocation(line: 262, column: 21, scope: !416)
!430 = !DILocation(line: 263, column: 34, scope: !414)
!431 = !DILocation(line: 263, column: 21, scope: !414)
!432 = !DILocation(line: 264, column: 17, scope: !414)
!433 = !DILocation(line: 265, column: 13, scope: !410)
!434 = !DILocation(line: 268, column: 1, scope: !287)
!435 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_31_good", scope: !1, file: !1, line: 270, type: !65, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!436 = !DILocation(line: 272, column: 5, scope: !435)
!437 = !DILocation(line: 273, column: 5, scope: !435)
!438 = !DILocation(line: 274, column: 1, scope: !435)
