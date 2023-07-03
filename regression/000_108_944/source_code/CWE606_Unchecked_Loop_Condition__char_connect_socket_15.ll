; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_15.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad() #0 !dbg !64 {
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
define dso_local void @goodB2G1() #0 !dbg !231 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 -1, i32* %connectSocket, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !247, metadata !DIExpression()), !dbg !248
  %1 = load i8*, i8** %data, align 8, !dbg !249
  %call = call i64 @strlen(i8* %1) #7, !dbg !250
  store i64 %call, i64* %dataLen, align 8, !dbg !248
  br label %do.body, !dbg !251

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !252
  store i32 %call1, i32* %connectSocket, align 4, !dbg !254
  %2 = load i32, i32* %connectSocket, align 4, !dbg !255
  %cmp = icmp eq i32 %2, -1, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !259

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !261
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !262
  store i16 2, i16* %sin_family, align 4, !dbg !263
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !264
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !265
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !266
  store i32 %call2, i32* %s_addr, align 4, !dbg !267
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !268
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !269
  store i16 %call3, i16* %sin_port, align 2, !dbg !270
  %4 = load i32, i32* %connectSocket, align 4, !dbg !271
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !273
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !274
  %cmp5 = icmp eq i32 %call4, -1, !dbg !275
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !276

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !277

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !279
  %7 = load i8*, i8** %data, align 8, !dbg !280
  %8 = load i64, i64* %dataLen, align 8, !dbg !281
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !282
  %9 = load i64, i64* %dataLen, align 8, !dbg !283
  %sub = sub i64 100, %9, !dbg !284
  %sub8 = sub i64 %sub, 1, !dbg !285
  %mul = mul i64 1, %sub8, !dbg !286
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !287
  %conv = trunc i64 %call9 to i32, !dbg !287
  store i32 %conv, i32* %recvResult, align 4, !dbg !288
  %10 = load i32, i32* %recvResult, align 4, !dbg !289
  %cmp10 = icmp eq i32 %10, -1, !dbg !291
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !292

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !293
  %cmp12 = icmp eq i32 %11, 0, !dbg !294
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !295

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !296

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !298
  %13 = load i64, i64* %dataLen, align 8, !dbg !299
  %14 = load i32, i32* %recvResult, align 4, !dbg !300
  %conv16 = sext i32 %14 to i64, !dbg !300
  %div = udiv i64 %conv16, 1, !dbg !301
  %add = add i64 %13, %div, !dbg !302
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !298
  store i8 0, i8* %arrayidx, align 1, !dbg !303
  %15 = load i8*, i8** %data, align 8, !dbg !304
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !305
  store i8* %call17, i8** %replace, align 8, !dbg !306
  %16 = load i8*, i8** %replace, align 8, !dbg !307
  %tobool = icmp ne i8* %16, null, !dbg !307
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !309

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !310
  store i8 0, i8* %17, align 1, !dbg !312
  br label %if.end19, !dbg !313

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !314
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !315
  store i8* %call20, i8** %replace, align 8, !dbg !316
  %19 = load i8*, i8** %replace, align 8, !dbg !317
  %tobool21 = icmp ne i8* %19, null, !dbg !317
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !319

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !320
  store i8 0, i8* %20, align 1, !dbg !322
  br label %if.end23, !dbg !323

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !324

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !325
  %cmp24 = icmp ne i32 %21, -1, !dbg !327
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !328

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !329
  %call27 = call i32 @close(i32 %22), !dbg !331
  br label %if.end28, !dbg !332

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %n, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !338, metadata !DIExpression()), !dbg !339
  %23 = load i8*, i8** %data, align 8, !dbg !340
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !342
  %cmp30 = icmp eq i32 %call29, 1, !dbg !343
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !344

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !345
  %cmp33 = icmp slt i32 %24, 10000, !dbg !348
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !349

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !350
  store i32 0, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !355
  %26 = load i32, i32* %n, align 4, !dbg !357
  %cmp36 = icmp slt i32 %25, %26, !dbg !358
  br i1 %cmp36, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !360
  %inc = add nsw i32 %27, 1, !dbg !360
  store i32 %inc, i32* %intVariable, align 4, !dbg !360
  br label %for.inc, !dbg !362

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !363
  %inc38 = add nsw i32 %28, 1, !dbg !363
  store i32 %inc38, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !367
  call void @printIntLine(i32 %29), !dbg !368
  br label %if.end39, !dbg !369

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !370

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !372 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !376
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !376
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !377
  store i8* %arraydecay, i8** %data, align 8, !dbg !378
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !386, metadata !DIExpression()), !dbg !387
  store i32 -1, i32* %connectSocket, align 4, !dbg !387
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !388, metadata !DIExpression()), !dbg !389
  %1 = load i8*, i8** %data, align 8, !dbg !390
  %call = call i64 @strlen(i8* %1) #7, !dbg !391
  store i64 %call, i64* %dataLen, align 8, !dbg !389
  br label %do.body, !dbg !392

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !393
  store i32 %call1, i32* %connectSocket, align 4, !dbg !395
  %2 = load i32, i32* %connectSocket, align 4, !dbg !396
  %cmp = icmp eq i32 %2, -1, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !400

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !402
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !402
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !403
  store i16 2, i16* %sin_family, align 4, !dbg !404
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !405
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !406
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !407
  store i32 %call2, i32* %s_addr, align 4, !dbg !408
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !409
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !410
  store i16 %call3, i16* %sin_port, align 2, !dbg !411
  %4 = load i32, i32* %connectSocket, align 4, !dbg !412
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !414
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !415
  %cmp5 = icmp eq i32 %call4, -1, !dbg !416
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !417

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !418

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !420
  %7 = load i8*, i8** %data, align 8, !dbg !421
  %8 = load i64, i64* %dataLen, align 8, !dbg !422
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !423
  %9 = load i64, i64* %dataLen, align 8, !dbg !424
  %sub = sub i64 100, %9, !dbg !425
  %sub8 = sub i64 %sub, 1, !dbg !426
  %mul = mul i64 1, %sub8, !dbg !427
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !428
  %conv = trunc i64 %call9 to i32, !dbg !428
  store i32 %conv, i32* %recvResult, align 4, !dbg !429
  %10 = load i32, i32* %recvResult, align 4, !dbg !430
  %cmp10 = icmp eq i32 %10, -1, !dbg !432
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !433

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !434
  %cmp12 = icmp eq i32 %11, 0, !dbg !435
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !436

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !437

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !439
  %13 = load i64, i64* %dataLen, align 8, !dbg !440
  %14 = load i32, i32* %recvResult, align 4, !dbg !441
  %conv16 = sext i32 %14 to i64, !dbg !441
  %div = udiv i64 %conv16, 1, !dbg !442
  %add = add i64 %13, %div, !dbg !443
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !439
  store i8 0, i8* %arrayidx, align 1, !dbg !444
  %15 = load i8*, i8** %data, align 8, !dbg !445
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !446
  store i8* %call17, i8** %replace, align 8, !dbg !447
  %16 = load i8*, i8** %replace, align 8, !dbg !448
  %tobool = icmp ne i8* %16, null, !dbg !448
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !450

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !451
  store i8 0, i8* %17, align 1, !dbg !453
  br label %if.end19, !dbg !454

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !455
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !456
  store i8* %call20, i8** %replace, align 8, !dbg !457
  %19 = load i8*, i8** %replace, align 8, !dbg !458
  %tobool21 = icmp ne i8* %19, null, !dbg !458
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !460

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !461
  store i8 0, i8* %20, align 1, !dbg !463
  br label %if.end23, !dbg !464

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !465

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !466
  %cmp24 = icmp ne i32 %21, -1, !dbg !468
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !469

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !470
  %call27 = call i32 @close(i32 %22), !dbg !472
  br label %if.end28, !dbg !473

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !474, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata i32* %n, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !479, metadata !DIExpression()), !dbg !480
  %23 = load i8*, i8** %data, align 8, !dbg !481
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !483
  %cmp30 = icmp eq i32 %call29, 1, !dbg !484
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !485

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %n, align 4, !dbg !486
  %cmp33 = icmp slt i32 %24, 10000, !dbg !489
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !490

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !491
  store i32 0, i32* %i, align 4, !dbg !493
  br label %for.cond, !dbg !495

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !496
  %26 = load i32, i32* %n, align 4, !dbg !498
  %cmp36 = icmp slt i32 %25, %26, !dbg !499
  br i1 %cmp36, label %for.body, label %for.end, !dbg !500

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !501
  %inc = add nsw i32 %27, 1, !dbg !501
  store i32 %inc, i32* %intVariable, align 4, !dbg !501
  br label %for.inc, !dbg !503

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !504
  %inc38 = add nsw i32 %28, 1, !dbg !504
  store i32 %inc38, i32* %i, align 4, !dbg !504
  br label %for.cond, !dbg !505, !llvm.loop !506

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !508
  call void @printIntLine(i32 %29), !dbg !509
  br label %if.end39, !dbg !510

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !511

if.end40:                                         ; preds = %if.end39, %if.end28
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !513 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !517
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !517
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !518
  store i8* %arraydecay, i8** %data, align 8, !dbg !519
  %1 = load i8*, i8** %data, align 8, !dbg !520
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !521
  call void @llvm.dbg.declare(metadata i32* %i, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i32* %n, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !527, metadata !DIExpression()), !dbg !528
  %2 = load i8*, i8** %data, align 8, !dbg !529
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !531
  %cmp = icmp eq i32 %call1, 1, !dbg !532
  br i1 %cmp, label %if.then, label %if.end, !dbg !533

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !534
  store i32 0, i32* %i, align 4, !dbg !536
  br label %for.cond, !dbg !538

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !539
  %4 = load i32, i32* %n, align 4, !dbg !541
  %cmp2 = icmp slt i32 %3, %4, !dbg !542
  br i1 %cmp2, label %for.body, label %for.end, !dbg !543

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !544
  %inc = add nsw i32 %5, 1, !dbg !544
  store i32 %inc, i32* %intVariable, align 4, !dbg !544
  br label %for.inc, !dbg !546

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !547
  %inc3 = add nsw i32 %6, 1, !dbg !547
  store i32 %inc3, i32* %i, align 4, !dbg !547
  br label %for.cond, !dbg !548, !llvm.loop !549

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !551
  call void @printIntLine(i32 %7), !dbg !552
  br label %if.end, !dbg !553

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !554
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !555 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !559
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !559
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !560
  store i8* %arraydecay, i8** %data, align 8, !dbg !561
  %1 = load i8*, i8** %data, align 8, !dbg !562
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !563
  call void @llvm.dbg.declare(metadata i32* %i, metadata !564, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i32* %n, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !569, metadata !DIExpression()), !dbg !570
  %2 = load i8*, i8** %data, align 8, !dbg !571
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !573
  %cmp = icmp eq i32 %call1, 1, !dbg !574
  br i1 %cmp, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !576
  store i32 0, i32* %i, align 4, !dbg !578
  br label %for.cond, !dbg !580

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !581
  %4 = load i32, i32* %n, align 4, !dbg !583
  %cmp2 = icmp slt i32 %3, %4, !dbg !584
  br i1 %cmp2, label %for.body, label %for.end, !dbg !585

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !586
  %inc = add nsw i32 %5, 1, !dbg !586
  store i32 %inc, i32* %intVariable, align 4, !dbg !586
  br label %for.inc, !dbg !588

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !589
  %inc3 = add nsw i32 %6, 1, !dbg !589
  store i32 %inc3, i32* %i, align 4, !dbg !589
  br label %for.cond, !dbg !590, !llvm.loop !591

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !593
  call void @printIntLine(i32 %7), !dbg !594
  br label %if.end, !dbg !595

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good() #0 !dbg !597 {
entry:
  call void @goodB2G1(), !dbg !598
  call void @goodB2G2(), !dbg !599
  call void @goodG2B1(), !dbg !600
  call void @goodG2B2(), !dbg !601
  ret void, !dbg !602
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!77 = !DILocalVariable(name: "recvResult", scope: !78, file: !1, line: 63, type: !79)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 58, column: 5)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DILocation(line: 63, column: 13, scope: !78)
!81 = !DILocalVariable(name: "service", scope: !78, file: !1, line: 64, type: !82)
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
!103 = !DILocation(line: 64, column: 28, scope: !78)
!104 = !DILocalVariable(name: "replace", scope: !78, file: !1, line: 65, type: !59)
!105 = !DILocation(line: 65, column: 15, scope: !78)
!106 = !DILocalVariable(name: "connectSocket", scope: !78, file: !1, line: 66, type: !79)
!107 = !DILocation(line: 66, column: 16, scope: !78)
!108 = !DILocalVariable(name: "dataLen", scope: !78, file: !1, line: 67, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DILocation(line: 67, column: 16, scope: !78)
!113 = !DILocation(line: 67, column: 33, scope: !78)
!114 = !DILocation(line: 67, column: 26, scope: !78)
!115 = !DILocation(line: 68, column: 9, scope: !78)
!116 = !DILocation(line: 78, column: 29, scope: !117)
!117 = distinct !DILexicalBlock(scope: !78, file: !1, line: 69, column: 9)
!118 = !DILocation(line: 78, column: 27, scope: !117)
!119 = !DILocation(line: 79, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 79, column: 17)
!121 = !DILocation(line: 79, column: 31, scope: !120)
!122 = !DILocation(line: 79, column: 17, scope: !117)
!123 = !DILocation(line: 81, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 80, column: 13)
!125 = !DILocation(line: 83, column: 13, scope: !117)
!126 = !DILocation(line: 84, column: 21, scope: !117)
!127 = !DILocation(line: 84, column: 32, scope: !117)
!128 = !DILocation(line: 85, column: 39, scope: !117)
!129 = !DILocation(line: 85, column: 21, scope: !117)
!130 = !DILocation(line: 85, column: 30, scope: !117)
!131 = !DILocation(line: 85, column: 37, scope: !117)
!132 = !DILocation(line: 86, column: 32, scope: !117)
!133 = !DILocation(line: 86, column: 21, scope: !117)
!134 = !DILocation(line: 86, column: 30, scope: !117)
!135 = !DILocation(line: 87, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !117, file: !1, line: 87, column: 17)
!137 = !DILocation(line: 87, column: 40, scope: !136)
!138 = !DILocation(line: 87, column: 17, scope: !136)
!139 = !DILocation(line: 87, column: 85, scope: !136)
!140 = !DILocation(line: 87, column: 17, scope: !117)
!141 = !DILocation(line: 89, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 88, column: 13)
!143 = !DILocation(line: 94, column: 31, scope: !117)
!144 = !DILocation(line: 94, column: 55, scope: !117)
!145 = !DILocation(line: 94, column: 62, scope: !117)
!146 = !DILocation(line: 94, column: 60, scope: !117)
!147 = !DILocation(line: 94, column: 94, scope: !117)
!148 = !DILocation(line: 94, column: 92, scope: !117)
!149 = !DILocation(line: 94, column: 102, scope: !117)
!150 = !DILocation(line: 94, column: 85, scope: !117)
!151 = !DILocation(line: 94, column: 26, scope: !117)
!152 = !DILocation(line: 94, column: 24, scope: !117)
!153 = !DILocation(line: 95, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !117, file: !1, line: 95, column: 17)
!155 = !DILocation(line: 95, column: 28, scope: !154)
!156 = !DILocation(line: 95, column: 44, scope: !154)
!157 = !DILocation(line: 95, column: 47, scope: !154)
!158 = !DILocation(line: 95, column: 58, scope: !154)
!159 = !DILocation(line: 95, column: 17, scope: !117)
!160 = !DILocation(line: 97, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 96, column: 13)
!162 = !DILocation(line: 100, column: 13, scope: !117)
!163 = !DILocation(line: 100, column: 18, scope: !117)
!164 = !DILocation(line: 100, column: 28, scope: !117)
!165 = !DILocation(line: 100, column: 39, scope: !117)
!166 = !DILocation(line: 100, column: 26, scope: !117)
!167 = !DILocation(line: 100, column: 55, scope: !117)
!168 = !DILocation(line: 102, column: 30, scope: !117)
!169 = !DILocation(line: 102, column: 23, scope: !117)
!170 = !DILocation(line: 102, column: 21, scope: !117)
!171 = !DILocation(line: 103, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !117, file: !1, line: 103, column: 17)
!173 = !DILocation(line: 103, column: 17, scope: !117)
!174 = !DILocation(line: 105, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 104, column: 13)
!176 = !DILocation(line: 105, column: 26, scope: !175)
!177 = !DILocation(line: 106, column: 13, scope: !175)
!178 = !DILocation(line: 107, column: 30, scope: !117)
!179 = !DILocation(line: 107, column: 23, scope: !117)
!180 = !DILocation(line: 107, column: 21, scope: !117)
!181 = !DILocation(line: 108, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !117, file: !1, line: 108, column: 17)
!183 = !DILocation(line: 108, column: 17, scope: !117)
!184 = !DILocation(line: 110, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 109, column: 13)
!186 = !DILocation(line: 110, column: 26, scope: !185)
!187 = !DILocation(line: 111, column: 13, scope: !185)
!188 = !DILocation(line: 112, column: 9, scope: !117)
!189 = !DILocation(line: 114, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !78, file: !1, line: 114, column: 13)
!191 = !DILocation(line: 114, column: 27, scope: !190)
!192 = !DILocation(line: 114, column: 13, scope: !78)
!193 = !DILocation(line: 116, column: 26, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 115, column: 9)
!195 = !DILocation(line: 116, column: 13, scope: !194)
!196 = !DILocation(line: 117, column: 9, scope: !194)
!197 = !DILocalVariable(name: "i", scope: !198, file: !1, line: 135, type: !79)
!198 = distinct !DILexicalBlock(scope: !64, file: !1, line: 134, column: 5)
!199 = !DILocation(line: 135, column: 13, scope: !198)
!200 = !DILocalVariable(name: "n", scope: !198, file: !1, line: 135, type: !79)
!201 = !DILocation(line: 135, column: 16, scope: !198)
!202 = !DILocalVariable(name: "intVariable", scope: !198, file: !1, line: 135, type: !79)
!203 = !DILocation(line: 135, column: 19, scope: !198)
!204 = !DILocation(line: 136, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !1, line: 136, column: 13)
!206 = !DILocation(line: 136, column: 13, scope: !205)
!207 = !DILocation(line: 136, column: 36, scope: !205)
!208 = !DILocation(line: 136, column: 13, scope: !198)
!209 = !DILocation(line: 139, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 137, column: 9)
!211 = !DILocation(line: 140, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !1, line: 140, column: 13)
!213 = !DILocation(line: 140, column: 18, scope: !212)
!214 = !DILocation(line: 140, column: 25, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 140, column: 13)
!216 = !DILocation(line: 140, column: 29, scope: !215)
!217 = !DILocation(line: 140, column: 27, scope: !215)
!218 = !DILocation(line: 140, column: 13, scope: !212)
!219 = !DILocation(line: 143, column: 28, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 141, column: 13)
!221 = !DILocation(line: 144, column: 13, scope: !220)
!222 = !DILocation(line: 140, column: 33, scope: !215)
!223 = !DILocation(line: 140, column: 13, scope: !215)
!224 = distinct !{!224, !218, !225, !226}
!225 = !DILocation(line: 144, column: 13, scope: !212)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 145, column: 26, scope: !210)
!228 = !DILocation(line: 145, column: 13, scope: !210)
!229 = !DILocation(line: 146, column: 9, scope: !210)
!230 = !DILocation(line: 154, column: 1, scope: !64)
!231 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 161, type: !65, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!232 = !DILocalVariable(name: "data", scope: !231, file: !1, line: 163, type: !59)
!233 = !DILocation(line: 163, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !1, line: 164, type: !71)
!235 = !DILocation(line: 164, column: 10, scope: !231)
!236 = !DILocation(line: 165, column: 12, scope: !231)
!237 = !DILocation(line: 165, column: 10, scope: !231)
!238 = !DILocalVariable(name: "recvResult", scope: !239, file: !1, line: 174, type: !79)
!239 = distinct !DILexicalBlock(scope: !231, file: !1, line: 169, column: 5)
!240 = !DILocation(line: 174, column: 13, scope: !239)
!241 = !DILocalVariable(name: "service", scope: !239, file: !1, line: 175, type: !82)
!242 = !DILocation(line: 175, column: 28, scope: !239)
!243 = !DILocalVariable(name: "replace", scope: !239, file: !1, line: 176, type: !59)
!244 = !DILocation(line: 176, column: 15, scope: !239)
!245 = !DILocalVariable(name: "connectSocket", scope: !239, file: !1, line: 177, type: !79)
!246 = !DILocation(line: 177, column: 16, scope: !239)
!247 = !DILocalVariable(name: "dataLen", scope: !239, file: !1, line: 178, type: !109)
!248 = !DILocation(line: 178, column: 16, scope: !239)
!249 = !DILocation(line: 178, column: 33, scope: !239)
!250 = !DILocation(line: 178, column: 26, scope: !239)
!251 = !DILocation(line: 179, column: 9, scope: !239)
!252 = !DILocation(line: 189, column: 29, scope: !253)
!253 = distinct !DILexicalBlock(scope: !239, file: !1, line: 180, column: 9)
!254 = !DILocation(line: 189, column: 27, scope: !253)
!255 = !DILocation(line: 190, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 190, column: 17)
!257 = !DILocation(line: 190, column: 31, scope: !256)
!258 = !DILocation(line: 190, column: 17, scope: !253)
!259 = !DILocation(line: 192, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 191, column: 13)
!261 = !DILocation(line: 194, column: 13, scope: !253)
!262 = !DILocation(line: 195, column: 21, scope: !253)
!263 = !DILocation(line: 195, column: 32, scope: !253)
!264 = !DILocation(line: 196, column: 39, scope: !253)
!265 = !DILocation(line: 196, column: 21, scope: !253)
!266 = !DILocation(line: 196, column: 30, scope: !253)
!267 = !DILocation(line: 196, column: 37, scope: !253)
!268 = !DILocation(line: 197, column: 32, scope: !253)
!269 = !DILocation(line: 197, column: 21, scope: !253)
!270 = !DILocation(line: 197, column: 30, scope: !253)
!271 = !DILocation(line: 198, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !253, file: !1, line: 198, column: 17)
!273 = !DILocation(line: 198, column: 40, scope: !272)
!274 = !DILocation(line: 198, column: 17, scope: !272)
!275 = !DILocation(line: 198, column: 85, scope: !272)
!276 = !DILocation(line: 198, column: 17, scope: !253)
!277 = !DILocation(line: 200, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !1, line: 199, column: 13)
!279 = !DILocation(line: 205, column: 31, scope: !253)
!280 = !DILocation(line: 205, column: 55, scope: !253)
!281 = !DILocation(line: 205, column: 62, scope: !253)
!282 = !DILocation(line: 205, column: 60, scope: !253)
!283 = !DILocation(line: 205, column: 94, scope: !253)
!284 = !DILocation(line: 205, column: 92, scope: !253)
!285 = !DILocation(line: 205, column: 102, scope: !253)
!286 = !DILocation(line: 205, column: 85, scope: !253)
!287 = !DILocation(line: 205, column: 26, scope: !253)
!288 = !DILocation(line: 205, column: 24, scope: !253)
!289 = !DILocation(line: 206, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !253, file: !1, line: 206, column: 17)
!291 = !DILocation(line: 206, column: 28, scope: !290)
!292 = !DILocation(line: 206, column: 44, scope: !290)
!293 = !DILocation(line: 206, column: 47, scope: !290)
!294 = !DILocation(line: 206, column: 58, scope: !290)
!295 = !DILocation(line: 206, column: 17, scope: !253)
!296 = !DILocation(line: 208, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !1, line: 207, column: 13)
!298 = !DILocation(line: 211, column: 13, scope: !253)
!299 = !DILocation(line: 211, column: 18, scope: !253)
!300 = !DILocation(line: 211, column: 28, scope: !253)
!301 = !DILocation(line: 211, column: 39, scope: !253)
!302 = !DILocation(line: 211, column: 26, scope: !253)
!303 = !DILocation(line: 211, column: 55, scope: !253)
!304 = !DILocation(line: 213, column: 30, scope: !253)
!305 = !DILocation(line: 213, column: 23, scope: !253)
!306 = !DILocation(line: 213, column: 21, scope: !253)
!307 = !DILocation(line: 214, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !253, file: !1, line: 214, column: 17)
!309 = !DILocation(line: 214, column: 17, scope: !253)
!310 = !DILocation(line: 216, column: 18, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 215, column: 13)
!312 = !DILocation(line: 216, column: 26, scope: !311)
!313 = !DILocation(line: 217, column: 13, scope: !311)
!314 = !DILocation(line: 218, column: 30, scope: !253)
!315 = !DILocation(line: 218, column: 23, scope: !253)
!316 = !DILocation(line: 218, column: 21, scope: !253)
!317 = !DILocation(line: 219, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !253, file: !1, line: 219, column: 17)
!319 = !DILocation(line: 219, column: 17, scope: !253)
!320 = !DILocation(line: 221, column: 18, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !1, line: 220, column: 13)
!322 = !DILocation(line: 221, column: 26, scope: !321)
!323 = !DILocation(line: 222, column: 13, scope: !321)
!324 = !DILocation(line: 223, column: 9, scope: !253)
!325 = !DILocation(line: 225, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !239, file: !1, line: 225, column: 13)
!327 = !DILocation(line: 225, column: 27, scope: !326)
!328 = !DILocation(line: 225, column: 13, scope: !239)
!329 = !DILocation(line: 227, column: 26, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 226, column: 9)
!331 = !DILocation(line: 227, column: 13, scope: !330)
!332 = !DILocation(line: 228, column: 9, scope: !330)
!333 = !DILocalVariable(name: "i", scope: !334, file: !1, line: 250, type: !79)
!334 = distinct !DILexicalBlock(scope: !231, file: !1, line: 249, column: 5)
!335 = !DILocation(line: 250, column: 13, scope: !334)
!336 = !DILocalVariable(name: "n", scope: !334, file: !1, line: 250, type: !79)
!337 = !DILocation(line: 250, column: 16, scope: !334)
!338 = !DILocalVariable(name: "intVariable", scope: !334, file: !1, line: 250, type: !79)
!339 = !DILocation(line: 250, column: 19, scope: !334)
!340 = !DILocation(line: 251, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !1, line: 251, column: 13)
!342 = !DILocation(line: 251, column: 13, scope: !341)
!343 = !DILocation(line: 251, column: 36, scope: !341)
!344 = !DILocation(line: 251, column: 13, scope: !334)
!345 = !DILocation(line: 254, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 254, column: 17)
!347 = distinct !DILexicalBlock(scope: !341, file: !1, line: 252, column: 9)
!348 = !DILocation(line: 254, column: 19, scope: !346)
!349 = !DILocation(line: 254, column: 17, scope: !347)
!350 = !DILocation(line: 256, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 255, column: 13)
!352 = !DILocation(line: 257, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !1, line: 257, column: 17)
!354 = !DILocation(line: 257, column: 22, scope: !353)
!355 = !DILocation(line: 257, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 257, column: 17)
!357 = !DILocation(line: 257, column: 33, scope: !356)
!358 = !DILocation(line: 257, column: 31, scope: !356)
!359 = !DILocation(line: 257, column: 17, scope: !353)
!360 = !DILocation(line: 260, column: 32, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !1, line: 258, column: 17)
!362 = !DILocation(line: 261, column: 17, scope: !361)
!363 = !DILocation(line: 257, column: 37, scope: !356)
!364 = !DILocation(line: 257, column: 17, scope: !356)
!365 = distinct !{!365, !359, !366, !226}
!366 = !DILocation(line: 261, column: 17, scope: !353)
!367 = !DILocation(line: 262, column: 30, scope: !351)
!368 = !DILocation(line: 262, column: 17, scope: !351)
!369 = !DILocation(line: 263, column: 13, scope: !351)
!370 = !DILocation(line: 264, column: 9, scope: !347)
!371 = !DILocation(line: 268, column: 1, scope: !231)
!372 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 271, type: !65, scopeLine: 272, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!373 = !DILocalVariable(name: "data", scope: !372, file: !1, line: 273, type: !59)
!374 = !DILocation(line: 273, column: 12, scope: !372)
!375 = !DILocalVariable(name: "dataBuffer", scope: !372, file: !1, line: 274, type: !71)
!376 = !DILocation(line: 274, column: 10, scope: !372)
!377 = !DILocation(line: 275, column: 12, scope: !372)
!378 = !DILocation(line: 275, column: 10, scope: !372)
!379 = !DILocalVariable(name: "recvResult", scope: !380, file: !1, line: 284, type: !79)
!380 = distinct !DILexicalBlock(scope: !372, file: !1, line: 279, column: 5)
!381 = !DILocation(line: 284, column: 13, scope: !380)
!382 = !DILocalVariable(name: "service", scope: !380, file: !1, line: 285, type: !82)
!383 = !DILocation(line: 285, column: 28, scope: !380)
!384 = !DILocalVariable(name: "replace", scope: !380, file: !1, line: 286, type: !59)
!385 = !DILocation(line: 286, column: 15, scope: !380)
!386 = !DILocalVariable(name: "connectSocket", scope: !380, file: !1, line: 287, type: !79)
!387 = !DILocation(line: 287, column: 16, scope: !380)
!388 = !DILocalVariable(name: "dataLen", scope: !380, file: !1, line: 288, type: !109)
!389 = !DILocation(line: 288, column: 16, scope: !380)
!390 = !DILocation(line: 288, column: 33, scope: !380)
!391 = !DILocation(line: 288, column: 26, scope: !380)
!392 = !DILocation(line: 289, column: 9, scope: !380)
!393 = !DILocation(line: 299, column: 29, scope: !394)
!394 = distinct !DILexicalBlock(scope: !380, file: !1, line: 290, column: 9)
!395 = !DILocation(line: 299, column: 27, scope: !394)
!396 = !DILocation(line: 300, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !1, line: 300, column: 17)
!398 = !DILocation(line: 300, column: 31, scope: !397)
!399 = !DILocation(line: 300, column: 17, scope: !394)
!400 = !DILocation(line: 302, column: 17, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 301, column: 13)
!402 = !DILocation(line: 304, column: 13, scope: !394)
!403 = !DILocation(line: 305, column: 21, scope: !394)
!404 = !DILocation(line: 305, column: 32, scope: !394)
!405 = !DILocation(line: 306, column: 39, scope: !394)
!406 = !DILocation(line: 306, column: 21, scope: !394)
!407 = !DILocation(line: 306, column: 30, scope: !394)
!408 = !DILocation(line: 306, column: 37, scope: !394)
!409 = !DILocation(line: 307, column: 32, scope: !394)
!410 = !DILocation(line: 307, column: 21, scope: !394)
!411 = !DILocation(line: 307, column: 30, scope: !394)
!412 = !DILocation(line: 308, column: 25, scope: !413)
!413 = distinct !DILexicalBlock(scope: !394, file: !1, line: 308, column: 17)
!414 = !DILocation(line: 308, column: 40, scope: !413)
!415 = !DILocation(line: 308, column: 17, scope: !413)
!416 = !DILocation(line: 308, column: 85, scope: !413)
!417 = !DILocation(line: 308, column: 17, scope: !394)
!418 = !DILocation(line: 310, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !1, line: 309, column: 13)
!420 = !DILocation(line: 315, column: 31, scope: !394)
!421 = !DILocation(line: 315, column: 55, scope: !394)
!422 = !DILocation(line: 315, column: 62, scope: !394)
!423 = !DILocation(line: 315, column: 60, scope: !394)
!424 = !DILocation(line: 315, column: 94, scope: !394)
!425 = !DILocation(line: 315, column: 92, scope: !394)
!426 = !DILocation(line: 315, column: 102, scope: !394)
!427 = !DILocation(line: 315, column: 85, scope: !394)
!428 = !DILocation(line: 315, column: 26, scope: !394)
!429 = !DILocation(line: 315, column: 24, scope: !394)
!430 = !DILocation(line: 316, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !394, file: !1, line: 316, column: 17)
!432 = !DILocation(line: 316, column: 28, scope: !431)
!433 = !DILocation(line: 316, column: 44, scope: !431)
!434 = !DILocation(line: 316, column: 47, scope: !431)
!435 = !DILocation(line: 316, column: 58, scope: !431)
!436 = !DILocation(line: 316, column: 17, scope: !394)
!437 = !DILocation(line: 318, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !1, line: 317, column: 13)
!439 = !DILocation(line: 321, column: 13, scope: !394)
!440 = !DILocation(line: 321, column: 18, scope: !394)
!441 = !DILocation(line: 321, column: 28, scope: !394)
!442 = !DILocation(line: 321, column: 39, scope: !394)
!443 = !DILocation(line: 321, column: 26, scope: !394)
!444 = !DILocation(line: 321, column: 55, scope: !394)
!445 = !DILocation(line: 323, column: 30, scope: !394)
!446 = !DILocation(line: 323, column: 23, scope: !394)
!447 = !DILocation(line: 323, column: 21, scope: !394)
!448 = !DILocation(line: 324, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !394, file: !1, line: 324, column: 17)
!450 = !DILocation(line: 324, column: 17, scope: !394)
!451 = !DILocation(line: 326, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 325, column: 13)
!453 = !DILocation(line: 326, column: 26, scope: !452)
!454 = !DILocation(line: 327, column: 13, scope: !452)
!455 = !DILocation(line: 328, column: 30, scope: !394)
!456 = !DILocation(line: 328, column: 23, scope: !394)
!457 = !DILocation(line: 328, column: 21, scope: !394)
!458 = !DILocation(line: 329, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !394, file: !1, line: 329, column: 17)
!460 = !DILocation(line: 329, column: 17, scope: !394)
!461 = !DILocation(line: 331, column: 18, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 330, column: 13)
!463 = !DILocation(line: 331, column: 26, scope: !462)
!464 = !DILocation(line: 332, column: 13, scope: !462)
!465 = !DILocation(line: 333, column: 9, scope: !394)
!466 = !DILocation(line: 335, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !380, file: !1, line: 335, column: 13)
!468 = !DILocation(line: 335, column: 27, scope: !467)
!469 = !DILocation(line: 335, column: 13, scope: !380)
!470 = !DILocation(line: 337, column: 26, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !1, line: 336, column: 9)
!472 = !DILocation(line: 337, column: 13, scope: !471)
!473 = !DILocation(line: 338, column: 9, scope: !471)
!474 = !DILocalVariable(name: "i", scope: !475, file: !1, line: 356, type: !79)
!475 = distinct !DILexicalBlock(scope: !372, file: !1, line: 355, column: 5)
!476 = !DILocation(line: 356, column: 13, scope: !475)
!477 = !DILocalVariable(name: "n", scope: !475, file: !1, line: 356, type: !79)
!478 = !DILocation(line: 356, column: 16, scope: !475)
!479 = !DILocalVariable(name: "intVariable", scope: !475, file: !1, line: 356, type: !79)
!480 = !DILocation(line: 356, column: 19, scope: !475)
!481 = !DILocation(line: 357, column: 20, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !1, line: 357, column: 13)
!483 = !DILocation(line: 357, column: 13, scope: !482)
!484 = !DILocation(line: 357, column: 36, scope: !482)
!485 = !DILocation(line: 357, column: 13, scope: !475)
!486 = !DILocation(line: 360, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 360, column: 17)
!488 = distinct !DILexicalBlock(scope: !482, file: !1, line: 358, column: 9)
!489 = !DILocation(line: 360, column: 19, scope: !487)
!490 = !DILocation(line: 360, column: 17, scope: !488)
!491 = !DILocation(line: 362, column: 29, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !1, line: 361, column: 13)
!493 = !DILocation(line: 363, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !492, file: !1, line: 363, column: 17)
!495 = !DILocation(line: 363, column: 22, scope: !494)
!496 = !DILocation(line: 363, column: 29, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 363, column: 17)
!498 = !DILocation(line: 363, column: 33, scope: !497)
!499 = !DILocation(line: 363, column: 31, scope: !497)
!500 = !DILocation(line: 363, column: 17, scope: !494)
!501 = !DILocation(line: 366, column: 32, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 364, column: 17)
!503 = !DILocation(line: 367, column: 17, scope: !502)
!504 = !DILocation(line: 363, column: 37, scope: !497)
!505 = !DILocation(line: 363, column: 17, scope: !497)
!506 = distinct !{!506, !500, !507, !226}
!507 = !DILocation(line: 367, column: 17, scope: !494)
!508 = !DILocation(line: 368, column: 30, scope: !492)
!509 = !DILocation(line: 368, column: 17, scope: !492)
!510 = !DILocation(line: 369, column: 13, scope: !492)
!511 = !DILocation(line: 370, column: 9, scope: !488)
!512 = !DILocation(line: 378, column: 1, scope: !372)
!513 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 381, type: !65, scopeLine: 382, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!514 = !DILocalVariable(name: "data", scope: !513, file: !1, line: 383, type: !59)
!515 = !DILocation(line: 383, column: 12, scope: !513)
!516 = !DILocalVariable(name: "dataBuffer", scope: !513, file: !1, line: 384, type: !71)
!517 = !DILocation(line: 384, column: 10, scope: !513)
!518 = !DILocation(line: 385, column: 12, scope: !513)
!519 = !DILocation(line: 385, column: 10, scope: !513)
!520 = !DILocation(line: 394, column: 16, scope: !513)
!521 = !DILocation(line: 394, column: 9, scope: !513)
!522 = !DILocalVariable(name: "i", scope: !523, file: !1, line: 401, type: !79)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 400, column: 5)
!524 = !DILocation(line: 401, column: 13, scope: !523)
!525 = !DILocalVariable(name: "n", scope: !523, file: !1, line: 401, type: !79)
!526 = !DILocation(line: 401, column: 16, scope: !523)
!527 = !DILocalVariable(name: "intVariable", scope: !523, file: !1, line: 401, type: !79)
!528 = !DILocation(line: 401, column: 19, scope: !523)
!529 = !DILocation(line: 402, column: 20, scope: !530)
!530 = distinct !DILexicalBlock(scope: !523, file: !1, line: 402, column: 13)
!531 = !DILocation(line: 402, column: 13, scope: !530)
!532 = !DILocation(line: 402, column: 36, scope: !530)
!533 = !DILocation(line: 402, column: 13, scope: !523)
!534 = !DILocation(line: 405, column: 25, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !1, line: 403, column: 9)
!536 = !DILocation(line: 406, column: 20, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !1, line: 406, column: 13)
!538 = !DILocation(line: 406, column: 18, scope: !537)
!539 = !DILocation(line: 406, column: 25, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !1, line: 406, column: 13)
!541 = !DILocation(line: 406, column: 29, scope: !540)
!542 = !DILocation(line: 406, column: 27, scope: !540)
!543 = !DILocation(line: 406, column: 13, scope: !537)
!544 = !DILocation(line: 409, column: 28, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !1, line: 407, column: 13)
!546 = !DILocation(line: 410, column: 13, scope: !545)
!547 = !DILocation(line: 406, column: 33, scope: !540)
!548 = !DILocation(line: 406, column: 13, scope: !540)
!549 = distinct !{!549, !543, !550, !226}
!550 = !DILocation(line: 410, column: 13, scope: !537)
!551 = !DILocation(line: 411, column: 26, scope: !535)
!552 = !DILocation(line: 411, column: 13, scope: !535)
!553 = !DILocation(line: 412, column: 9, scope: !535)
!554 = !DILocation(line: 420, column: 1, scope: !513)
!555 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 423, type: !65, scopeLine: 424, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!556 = !DILocalVariable(name: "data", scope: !555, file: !1, line: 425, type: !59)
!557 = !DILocation(line: 425, column: 12, scope: !555)
!558 = !DILocalVariable(name: "dataBuffer", scope: !555, file: !1, line: 426, type: !71)
!559 = !DILocation(line: 426, column: 10, scope: !555)
!560 = !DILocation(line: 427, column: 12, scope: !555)
!561 = !DILocation(line: 427, column: 10, scope: !555)
!562 = !DILocation(line: 432, column: 16, scope: !555)
!563 = !DILocation(line: 432, column: 9, scope: !555)
!564 = !DILocalVariable(name: "i", scope: !565, file: !1, line: 443, type: !79)
!565 = distinct !DILexicalBlock(scope: !555, file: !1, line: 442, column: 5)
!566 = !DILocation(line: 443, column: 13, scope: !565)
!567 = !DILocalVariable(name: "n", scope: !565, file: !1, line: 443, type: !79)
!568 = !DILocation(line: 443, column: 16, scope: !565)
!569 = !DILocalVariable(name: "intVariable", scope: !565, file: !1, line: 443, type: !79)
!570 = !DILocation(line: 443, column: 19, scope: !565)
!571 = !DILocation(line: 444, column: 20, scope: !572)
!572 = distinct !DILexicalBlock(scope: !565, file: !1, line: 444, column: 13)
!573 = !DILocation(line: 444, column: 13, scope: !572)
!574 = !DILocation(line: 444, column: 36, scope: !572)
!575 = !DILocation(line: 444, column: 13, scope: !565)
!576 = !DILocation(line: 447, column: 25, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !1, line: 445, column: 9)
!578 = !DILocation(line: 448, column: 20, scope: !579)
!579 = distinct !DILexicalBlock(scope: !577, file: !1, line: 448, column: 13)
!580 = !DILocation(line: 448, column: 18, scope: !579)
!581 = !DILocation(line: 448, column: 25, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 448, column: 13)
!583 = !DILocation(line: 448, column: 29, scope: !582)
!584 = !DILocation(line: 448, column: 27, scope: !582)
!585 = !DILocation(line: 448, column: 13, scope: !579)
!586 = !DILocation(line: 451, column: 28, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !1, line: 449, column: 13)
!588 = !DILocation(line: 452, column: 13, scope: !587)
!589 = !DILocation(line: 448, column: 33, scope: !582)
!590 = !DILocation(line: 448, column: 13, scope: !582)
!591 = distinct !{!591, !585, !592, !226}
!592 = !DILocation(line: 452, column: 13, scope: !579)
!593 = !DILocation(line: 453, column: 26, scope: !577)
!594 = !DILocation(line: 453, column: 13, scope: !577)
!595 = !DILocation(line: 454, column: 9, scope: !577)
!596 = !DILocation(line: 462, column: 1, scope: !555)
!597 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good", scope: !1, file: !1, line: 464, type: !65, scopeLine: 465, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!598 = !DILocation(line: 466, column: 5, scope: !597)
!599 = !DILocation(line: 467, column: 5, scope: !597)
!600 = !DILocation(line: 468, column: 5, scope: !597)
!601 = !DILocation(line: 469, column: 5, scope: !597)
!602 = !DILocation(line: 470, column: 1, scope: !597)
