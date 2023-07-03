; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_34.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_34_bad() #0 !dbg !64 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !70, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !78, metadata !DIExpression()), !dbg !82
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !82
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !83
  store i8* %arraydecay, i8** %data, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !89, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %connectSocket, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !116, metadata !DIExpression()), !dbg !120
  %1 = load i8*, i8** %data, align 8, !dbg !121
  %call = call i64 @strlen(i8* %1) #7, !dbg !122
  store i64 %call, i64* %dataLen, align 8, !dbg !120
  br label %do.body, !dbg !123

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !124
  store i32 %call1, i32* %connectSocket, align 4, !dbg !126
  %2 = load i32, i32* %connectSocket, align 4, !dbg !127
  %cmp = icmp eq i32 %2, -1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !131

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !133
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !134
  store i16 2, i16* %sin_family, align 4, !dbg !135
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !136
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !137
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !138
  store i32 %call2, i32* %s_addr, align 4, !dbg !139
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !140
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !141
  store i16 %call3, i16* %sin_port, align 2, !dbg !142
  %4 = load i32, i32* %connectSocket, align 4, !dbg !143
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !145
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !146
  %cmp5 = icmp eq i32 %call4, -1, !dbg !147
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !148

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !149

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !151
  %7 = load i8*, i8** %data, align 8, !dbg !152
  %8 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !154
  %9 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %9, !dbg !156
  %sub8 = sub i64 %sub, 1, !dbg !157
  %mul = mul i64 1, %sub8, !dbg !158
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !159
  %conv = trunc i64 %call9 to i32, !dbg !159
  store i32 %conv, i32* %recvResult, align 4, !dbg !160
  %10 = load i32, i32* %recvResult, align 4, !dbg !161
  %cmp10 = icmp eq i32 %10, -1, !dbg !163
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !165
  %cmp12 = icmp eq i32 %11, 0, !dbg !166
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !167

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !168

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !170
  %13 = load i64, i64* %dataLen, align 8, !dbg !171
  %14 = load i32, i32* %recvResult, align 4, !dbg !172
  %conv16 = sext i32 %14 to i64, !dbg !172
  %div = udiv i64 %conv16, 1, !dbg !173
  %add = add i64 %13, %div, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !170
  store i8 0, i8* %arrayidx, align 1, !dbg !175
  %15 = load i8*, i8** %data, align 8, !dbg !176
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !177
  store i8* %call17, i8** %replace, align 8, !dbg !178
  %16 = load i8*, i8** %replace, align 8, !dbg !179
  %tobool = icmp ne i8* %16, null, !dbg !179
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !181

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !182
  store i8 0, i8* %17, align 1, !dbg !184
  br label %if.end19, !dbg !185

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !186
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !187
  store i8* %call20, i8** %replace, align 8, !dbg !188
  %19 = load i8*, i8** %replace, align 8, !dbg !189
  %tobool21 = icmp ne i8* %19, null, !dbg !189
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !191

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !192
  store i8 0, i8* %20, align 1, !dbg !194
  br label %if.end23, !dbg !195

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !197
  %cmp24 = icmp ne i32 %21, -1, !dbg !199
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !200

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !201
  %call27 = call i32 @close(i32 %22), !dbg !203
  br label %if.end28, !dbg !204

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !205
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !206
  store i8* %23, i8** %unionFirst, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !208, metadata !DIExpression()), !dbg !210
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !211
  %24 = load i8*, i8** %unionSecond, align 8, !dbg !211
  store i8* %24, i8** %data29, align 8, !dbg !210
  call void @llvm.dbg.declare(metadata i32* %i, metadata !212, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %n, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !217, metadata !DIExpression()), !dbg !218
  %25 = load i8*, i8** %data29, align 8, !dbg !219
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !221
  %cmp31 = icmp eq i32 %call30, 1, !dbg !222
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !223

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %intVariable, align 4, !dbg !224
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then33
  %26 = load i32, i32* %i, align 4, !dbg !229
  %27 = load i32, i32* %n, align 4, !dbg !231
  %cmp34 = icmp slt i32 %26, %27, !dbg !232
  br i1 %cmp34, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !234
  %inc = add nsw i32 %28, 1, !dbg !234
  store i32 %inc, i32* %intVariable, align 4, !dbg !234
  br label %for.inc, !dbg !236

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !237
  %inc36 = add nsw i32 %29, 1, !dbg !237
  store i32 %inc36, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !238, !llvm.loop !239

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !242
  call void @printIntLine(i32 %30), !dbg !243
  br label %if.end37, !dbg !244

if.end37:                                         ; preds = %for.end, %if.end28
  ret void, !dbg !245
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
define dso_local void @goodG2B() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !252
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !252
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !253
  store i8* %arraydecay, i8** %data, align 8, !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !256
  %2 = load i8*, i8** %data, align 8, !dbg !257
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !258
  store i8* %2, i8** %unionFirst, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !260, metadata !DIExpression()), !dbg !262
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !263
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !263
  store i8* %3, i8** %data1, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !264, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %n, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !269, metadata !DIExpression()), !dbg !270
  %4 = load i8*, i8** %data1, align 8, !dbg !271
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !273
  %cmp = icmp eq i32 %call2, 1, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !276
  store i32 0, i32* %i, align 4, !dbg !278
  br label %for.cond, !dbg !280

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !281
  %6 = load i32, i32* %n, align 4, !dbg !283
  %cmp3 = icmp slt i32 %5, %6, !dbg !284
  br i1 %cmp3, label %for.body, label %for.end, !dbg !285

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !286
  %inc = add nsw i32 %7, 1, !dbg !286
  store i32 %inc, i32* %intVariable, align 4, !dbg !286
  br label %for.inc, !dbg !288

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !289
  %inc4 = add nsw i32 %8, 1, !dbg !289
  store i32 %inc4, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !290, !llvm.loop !291

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !293
  call void @printIntLine(i32 %9), !dbg !294
  br label %if.end, !dbg !295

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !296
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !297 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data29 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !303
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !303
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !304
  store i8* %arraydecay, i8** %data, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 -1, i32* %connectSocket, align 4, !dbg !314
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !315, metadata !DIExpression()), !dbg !316
  %1 = load i8*, i8** %data, align 8, !dbg !317
  %call = call i64 @strlen(i8* %1) #7, !dbg !318
  store i64 %call, i64* %dataLen, align 8, !dbg !316
  br label %do.body, !dbg !319

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !320
  store i32 %call1, i32* %connectSocket, align 4, !dbg !322
  %2 = load i32, i32* %connectSocket, align 4, !dbg !323
  %cmp = icmp eq i32 %2, -1, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !327

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !329
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !329
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !330
  store i16 2, i16* %sin_family, align 4, !dbg !331
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !332
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !333
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !334
  store i32 %call2, i32* %s_addr, align 4, !dbg !335
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !336
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !337
  store i16 %call3, i16* %sin_port, align 2, !dbg !338
  %4 = load i32, i32* %connectSocket, align 4, !dbg !339
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !341
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !342
  %cmp5 = icmp eq i32 %call4, -1, !dbg !343
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !344

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !345

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !347
  %7 = load i8*, i8** %data, align 8, !dbg !348
  %8 = load i64, i64* %dataLen, align 8, !dbg !349
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !350
  %9 = load i64, i64* %dataLen, align 8, !dbg !351
  %sub = sub i64 100, %9, !dbg !352
  %sub8 = sub i64 %sub, 1, !dbg !353
  %mul = mul i64 1, %sub8, !dbg !354
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !355
  %conv = trunc i64 %call9 to i32, !dbg !355
  store i32 %conv, i32* %recvResult, align 4, !dbg !356
  %10 = load i32, i32* %recvResult, align 4, !dbg !357
  %cmp10 = icmp eq i32 %10, -1, !dbg !359
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !360

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !361
  %cmp12 = icmp eq i32 %11, 0, !dbg !362
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !363

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !364

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !366
  %13 = load i64, i64* %dataLen, align 8, !dbg !367
  %14 = load i32, i32* %recvResult, align 4, !dbg !368
  %conv16 = sext i32 %14 to i64, !dbg !368
  %div = udiv i64 %conv16, 1, !dbg !369
  %add = add i64 %13, %div, !dbg !370
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !366
  store i8 0, i8* %arrayidx, align 1, !dbg !371
  %15 = load i8*, i8** %data, align 8, !dbg !372
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !373
  store i8* %call17, i8** %replace, align 8, !dbg !374
  %16 = load i8*, i8** %replace, align 8, !dbg !375
  %tobool = icmp ne i8* %16, null, !dbg !375
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !377

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !378
  store i8 0, i8* %17, align 1, !dbg !380
  br label %if.end19, !dbg !381

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !382
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !383
  store i8* %call20, i8** %replace, align 8, !dbg !384
  %19 = load i8*, i8** %replace, align 8, !dbg !385
  %tobool21 = icmp ne i8* %19, null, !dbg !385
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !387

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !388
  store i8 0, i8* %20, align 1, !dbg !390
  br label %if.end23, !dbg !391

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !392

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !393
  %cmp24 = icmp ne i32 %21, -1, !dbg !395
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !396

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !397
  %call27 = call i32 @close(i32 %22), !dbg !399
  br label %if.end28, !dbg !400

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !401
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !402
  store i8* %23, i8** %unionFirst, align 8, !dbg !403
  call void @llvm.dbg.declare(metadata i8** %data29, metadata !404, metadata !DIExpression()), !dbg !406
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %myUnion to i8**, !dbg !407
  %24 = load i8*, i8** %unionSecond, align 8, !dbg !407
  store i8* %24, i8** %data29, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata i32* %i, metadata !408, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %n, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !413, metadata !DIExpression()), !dbg !414
  %25 = load i8*, i8** %data29, align 8, !dbg !415
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !417
  %cmp31 = icmp eq i32 %call30, 1, !dbg !418
  br i1 %cmp31, label %if.then33, label %if.end41, !dbg !419

if.then33:                                        ; preds = %if.end28
  %26 = load i32, i32* %n, align 4, !dbg !420
  %cmp34 = icmp slt i32 %26, 10000, !dbg !423
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !424

if.then36:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !425
  store i32 0, i32* %i, align 4, !dbg !427
  br label %for.cond, !dbg !429

for.cond:                                         ; preds = %for.inc, %if.then36
  %27 = load i32, i32* %i, align 4, !dbg !430
  %28 = load i32, i32* %n, align 4, !dbg !432
  %cmp37 = icmp slt i32 %27, %28, !dbg !433
  br i1 %cmp37, label %for.body, label %for.end, !dbg !434

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !435
  %inc = add nsw i32 %29, 1, !dbg !435
  store i32 %inc, i32* %intVariable, align 4, !dbg !435
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !438
  %inc39 = add nsw i32 %30, 1, !dbg !438
  store i32 %inc39, i32* %i, align 4, !dbg !438
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !442
  call void @printIntLine(i32 %31), !dbg !443
  br label %if.end40, !dbg !444

if.end40:                                         ; preds = %for.end, %if.then33
  br label %if.end41, !dbg !445

if.end41:                                         ; preds = %if.end40, %if.end28
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_34_good() #0 !dbg !447 {
entry:
  call void @goodG2B(), !dbg !448
  call void @goodB2G(), !dbg !449
  ret void, !dbg !450
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_bad", scope: !1, file: !1, line: 51, type: !65, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{}
!68 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 53, type: !59)
!69 = !DILocation(line: 53, column: 12, scope: !64)
!70 = !DILocalVariable(name: "myUnion", scope: !64, file: !1, line: 54, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType", file: !72, line: 9, baseType: !73)
!72 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/source_code")
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !72, line: 5, size: 64, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !73, file: !72, line: 7, baseType: !59, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !73, file: !72, line: 8, baseType: !59, size: 64)
!77 = !DILocation(line: 54, column: 71, scope: !64)
!78 = !DILocalVariable(name: "dataBuffer", scope: !64, file: !1, line: 55, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 100)
!82 = !DILocation(line: 55, column: 10, scope: !64)
!83 = !DILocation(line: 56, column: 12, scope: !64)
!84 = !DILocation(line: 56, column: 10, scope: !64)
!85 = !DILocalVariable(name: "recvResult", scope: !86, file: !1, line: 62, type: !87)
!86 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 5)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DILocation(line: 62, column: 13, scope: !86)
!89 = !DILocalVariable(name: "service", scope: !86, file: !1, line: 63, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !91)
!91 = !{!92, !93, !99, !106}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !90, file: !17, line: 240, baseType: !51, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !90, file: !17, line: 241, baseType: !94, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 25, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 40, baseType: !53)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !90, file: !17, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !17, line: 33, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 26, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !90, file: !17, line: 245, baseType: !107, size: 64, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !109)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DILocation(line: 63, column: 28, scope: !86)
!112 = !DILocalVariable(name: "replace", scope: !86, file: !1, line: 64, type: !59)
!113 = !DILocation(line: 64, column: 15, scope: !86)
!114 = !DILocalVariable(name: "connectSocket", scope: !86, file: !1, line: 65, type: !87)
!115 = !DILocation(line: 65, column: 16, scope: !86)
!116 = !DILocalVariable(name: "dataLen", scope: !86, file: !1, line: 66, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DILocation(line: 66, column: 16, scope: !86)
!121 = !DILocation(line: 66, column: 33, scope: !86)
!122 = !DILocation(line: 66, column: 26, scope: !86)
!123 = !DILocation(line: 67, column: 9, scope: !86)
!124 = !DILocation(line: 77, column: 29, scope: !125)
!125 = distinct !DILexicalBlock(scope: !86, file: !1, line: 68, column: 9)
!126 = !DILocation(line: 77, column: 27, scope: !125)
!127 = !DILocation(line: 78, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 78, column: 17)
!129 = !DILocation(line: 78, column: 31, scope: !128)
!130 = !DILocation(line: 78, column: 17, scope: !125)
!131 = !DILocation(line: 80, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 79, column: 13)
!133 = !DILocation(line: 82, column: 13, scope: !125)
!134 = !DILocation(line: 83, column: 21, scope: !125)
!135 = !DILocation(line: 83, column: 32, scope: !125)
!136 = !DILocation(line: 84, column: 39, scope: !125)
!137 = !DILocation(line: 84, column: 21, scope: !125)
!138 = !DILocation(line: 84, column: 30, scope: !125)
!139 = !DILocation(line: 84, column: 37, scope: !125)
!140 = !DILocation(line: 85, column: 32, scope: !125)
!141 = !DILocation(line: 85, column: 21, scope: !125)
!142 = !DILocation(line: 85, column: 30, scope: !125)
!143 = !DILocation(line: 86, column: 25, scope: !144)
!144 = distinct !DILexicalBlock(scope: !125, file: !1, line: 86, column: 17)
!145 = !DILocation(line: 86, column: 40, scope: !144)
!146 = !DILocation(line: 86, column: 17, scope: !144)
!147 = !DILocation(line: 86, column: 85, scope: !144)
!148 = !DILocation(line: 86, column: 17, scope: !125)
!149 = !DILocation(line: 88, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 87, column: 13)
!151 = !DILocation(line: 93, column: 31, scope: !125)
!152 = !DILocation(line: 93, column: 55, scope: !125)
!153 = !DILocation(line: 93, column: 62, scope: !125)
!154 = !DILocation(line: 93, column: 60, scope: !125)
!155 = !DILocation(line: 93, column: 94, scope: !125)
!156 = !DILocation(line: 93, column: 92, scope: !125)
!157 = !DILocation(line: 93, column: 102, scope: !125)
!158 = !DILocation(line: 93, column: 85, scope: !125)
!159 = !DILocation(line: 93, column: 26, scope: !125)
!160 = !DILocation(line: 93, column: 24, scope: !125)
!161 = !DILocation(line: 94, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !125, file: !1, line: 94, column: 17)
!163 = !DILocation(line: 94, column: 28, scope: !162)
!164 = !DILocation(line: 94, column: 44, scope: !162)
!165 = !DILocation(line: 94, column: 47, scope: !162)
!166 = !DILocation(line: 94, column: 58, scope: !162)
!167 = !DILocation(line: 94, column: 17, scope: !125)
!168 = !DILocation(line: 96, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 95, column: 13)
!170 = !DILocation(line: 99, column: 13, scope: !125)
!171 = !DILocation(line: 99, column: 18, scope: !125)
!172 = !DILocation(line: 99, column: 28, scope: !125)
!173 = !DILocation(line: 99, column: 39, scope: !125)
!174 = !DILocation(line: 99, column: 26, scope: !125)
!175 = !DILocation(line: 99, column: 55, scope: !125)
!176 = !DILocation(line: 101, column: 30, scope: !125)
!177 = !DILocation(line: 101, column: 23, scope: !125)
!178 = !DILocation(line: 101, column: 21, scope: !125)
!179 = !DILocation(line: 102, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !125, file: !1, line: 102, column: 17)
!181 = !DILocation(line: 102, column: 17, scope: !125)
!182 = !DILocation(line: 104, column: 18, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 103, column: 13)
!184 = !DILocation(line: 104, column: 26, scope: !183)
!185 = !DILocation(line: 105, column: 13, scope: !183)
!186 = !DILocation(line: 106, column: 30, scope: !125)
!187 = !DILocation(line: 106, column: 23, scope: !125)
!188 = !DILocation(line: 106, column: 21, scope: !125)
!189 = !DILocation(line: 107, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !125, file: !1, line: 107, column: 17)
!191 = !DILocation(line: 107, column: 17, scope: !125)
!192 = !DILocation(line: 109, column: 18, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 108, column: 13)
!194 = !DILocation(line: 109, column: 26, scope: !193)
!195 = !DILocation(line: 110, column: 13, scope: !193)
!196 = !DILocation(line: 111, column: 9, scope: !125)
!197 = !DILocation(line: 113, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !86, file: !1, line: 113, column: 13)
!199 = !DILocation(line: 113, column: 27, scope: !198)
!200 = !DILocation(line: 113, column: 13, scope: !86)
!201 = !DILocation(line: 115, column: 26, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 114, column: 9)
!203 = !DILocation(line: 115, column: 13, scope: !202)
!204 = !DILocation(line: 116, column: 9, scope: !202)
!205 = !DILocation(line: 124, column: 26, scope: !64)
!206 = !DILocation(line: 124, column: 13, scope: !64)
!207 = !DILocation(line: 124, column: 24, scope: !64)
!208 = !DILocalVariable(name: "data", scope: !209, file: !1, line: 126, type: !59)
!209 = distinct !DILexicalBlock(scope: !64, file: !1, line: 125, column: 5)
!210 = !DILocation(line: 126, column: 16, scope: !209)
!211 = !DILocation(line: 126, column: 31, scope: !209)
!212 = !DILocalVariable(name: "i", scope: !213, file: !1, line: 128, type: !87)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 127, column: 9)
!214 = !DILocation(line: 128, column: 17, scope: !213)
!215 = !DILocalVariable(name: "n", scope: !213, file: !1, line: 128, type: !87)
!216 = !DILocation(line: 128, column: 20, scope: !213)
!217 = !DILocalVariable(name: "intVariable", scope: !213, file: !1, line: 128, type: !87)
!218 = !DILocation(line: 128, column: 23, scope: !213)
!219 = !DILocation(line: 129, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !1, line: 129, column: 17)
!221 = !DILocation(line: 129, column: 17, scope: !220)
!222 = !DILocation(line: 129, column: 40, scope: !220)
!223 = !DILocation(line: 129, column: 17, scope: !213)
!224 = !DILocation(line: 132, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 130, column: 13)
!226 = !DILocation(line: 133, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !1, line: 133, column: 17)
!228 = !DILocation(line: 133, column: 22, scope: !227)
!229 = !DILocation(line: 133, column: 29, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 133, column: 17)
!231 = !DILocation(line: 133, column: 33, scope: !230)
!232 = !DILocation(line: 133, column: 31, scope: !230)
!233 = !DILocation(line: 133, column: 17, scope: !227)
!234 = !DILocation(line: 136, column: 32, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 134, column: 17)
!236 = !DILocation(line: 137, column: 17, scope: !235)
!237 = !DILocation(line: 133, column: 37, scope: !230)
!238 = !DILocation(line: 133, column: 17, scope: !230)
!239 = distinct !{!239, !233, !240, !241}
!240 = !DILocation(line: 137, column: 17, scope: !227)
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 138, column: 30, scope: !225)
!243 = !DILocation(line: 138, column: 17, scope: !225)
!244 = !DILocation(line: 139, column: 13, scope: !225)
!245 = !DILocation(line: 142, column: 1, scope: !64)
!246 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 149, type: !65, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!247 = !DILocalVariable(name: "data", scope: !246, file: !1, line: 151, type: !59)
!248 = !DILocation(line: 151, column: 12, scope: !246)
!249 = !DILocalVariable(name: "myUnion", scope: !246, file: !1, line: 152, type: !71)
!250 = !DILocation(line: 152, column: 71, scope: !246)
!251 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !1, line: 153, type: !79)
!252 = !DILocation(line: 153, column: 10, scope: !246)
!253 = !DILocation(line: 154, column: 12, scope: !246)
!254 = !DILocation(line: 154, column: 10, scope: !246)
!255 = !DILocation(line: 156, column: 12, scope: !246)
!256 = !DILocation(line: 156, column: 5, scope: !246)
!257 = !DILocation(line: 157, column: 26, scope: !246)
!258 = !DILocation(line: 157, column: 13, scope: !246)
!259 = !DILocation(line: 157, column: 24, scope: !246)
!260 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 159, type: !59)
!261 = distinct !DILexicalBlock(scope: !246, file: !1, line: 158, column: 5)
!262 = !DILocation(line: 159, column: 16, scope: !261)
!263 = !DILocation(line: 159, column: 31, scope: !261)
!264 = !DILocalVariable(name: "i", scope: !265, file: !1, line: 161, type: !87)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 160, column: 9)
!266 = !DILocation(line: 161, column: 17, scope: !265)
!267 = !DILocalVariable(name: "n", scope: !265, file: !1, line: 161, type: !87)
!268 = !DILocation(line: 161, column: 20, scope: !265)
!269 = !DILocalVariable(name: "intVariable", scope: !265, file: !1, line: 161, type: !87)
!270 = !DILocation(line: 161, column: 23, scope: !265)
!271 = !DILocation(line: 162, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 162, column: 17)
!273 = !DILocation(line: 162, column: 17, scope: !272)
!274 = !DILocation(line: 162, column: 40, scope: !272)
!275 = !DILocation(line: 162, column: 17, scope: !265)
!276 = !DILocation(line: 165, column: 29, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 163, column: 13)
!278 = !DILocation(line: 166, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !1, line: 166, column: 17)
!280 = !DILocation(line: 166, column: 22, scope: !279)
!281 = !DILocation(line: 166, column: 29, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 166, column: 17)
!283 = !DILocation(line: 166, column: 33, scope: !282)
!284 = !DILocation(line: 166, column: 31, scope: !282)
!285 = !DILocation(line: 166, column: 17, scope: !279)
!286 = !DILocation(line: 169, column: 32, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !1, line: 167, column: 17)
!288 = !DILocation(line: 170, column: 17, scope: !287)
!289 = !DILocation(line: 166, column: 37, scope: !282)
!290 = !DILocation(line: 166, column: 17, scope: !282)
!291 = distinct !{!291, !285, !292, !241}
!292 = !DILocation(line: 170, column: 17, scope: !279)
!293 = !DILocation(line: 171, column: 30, scope: !277)
!294 = !DILocation(line: 171, column: 17, scope: !277)
!295 = !DILocation(line: 172, column: 13, scope: !277)
!296 = !DILocation(line: 175, column: 1, scope: !246)
!297 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 178, type: !65, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!298 = !DILocalVariable(name: "data", scope: !297, file: !1, line: 180, type: !59)
!299 = !DILocation(line: 180, column: 12, scope: !297)
!300 = !DILocalVariable(name: "myUnion", scope: !297, file: !1, line: 181, type: !71)
!301 = !DILocation(line: 181, column: 71, scope: !297)
!302 = !DILocalVariable(name: "dataBuffer", scope: !297, file: !1, line: 182, type: !79)
!303 = !DILocation(line: 182, column: 10, scope: !297)
!304 = !DILocation(line: 183, column: 12, scope: !297)
!305 = !DILocation(line: 183, column: 10, scope: !297)
!306 = !DILocalVariable(name: "recvResult", scope: !307, file: !1, line: 189, type: !87)
!307 = distinct !DILexicalBlock(scope: !297, file: !1, line: 184, column: 5)
!308 = !DILocation(line: 189, column: 13, scope: !307)
!309 = !DILocalVariable(name: "service", scope: !307, file: !1, line: 190, type: !90)
!310 = !DILocation(line: 190, column: 28, scope: !307)
!311 = !DILocalVariable(name: "replace", scope: !307, file: !1, line: 191, type: !59)
!312 = !DILocation(line: 191, column: 15, scope: !307)
!313 = !DILocalVariable(name: "connectSocket", scope: !307, file: !1, line: 192, type: !87)
!314 = !DILocation(line: 192, column: 16, scope: !307)
!315 = !DILocalVariable(name: "dataLen", scope: !307, file: !1, line: 193, type: !117)
!316 = !DILocation(line: 193, column: 16, scope: !307)
!317 = !DILocation(line: 193, column: 33, scope: !307)
!318 = !DILocation(line: 193, column: 26, scope: !307)
!319 = !DILocation(line: 194, column: 9, scope: !307)
!320 = !DILocation(line: 204, column: 29, scope: !321)
!321 = distinct !DILexicalBlock(scope: !307, file: !1, line: 195, column: 9)
!322 = !DILocation(line: 204, column: 27, scope: !321)
!323 = !DILocation(line: 205, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 205, column: 17)
!325 = !DILocation(line: 205, column: 31, scope: !324)
!326 = !DILocation(line: 205, column: 17, scope: !321)
!327 = !DILocation(line: 207, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 206, column: 13)
!329 = !DILocation(line: 209, column: 13, scope: !321)
!330 = !DILocation(line: 210, column: 21, scope: !321)
!331 = !DILocation(line: 210, column: 32, scope: !321)
!332 = !DILocation(line: 211, column: 39, scope: !321)
!333 = !DILocation(line: 211, column: 21, scope: !321)
!334 = !DILocation(line: 211, column: 30, scope: !321)
!335 = !DILocation(line: 211, column: 37, scope: !321)
!336 = !DILocation(line: 212, column: 32, scope: !321)
!337 = !DILocation(line: 212, column: 21, scope: !321)
!338 = !DILocation(line: 212, column: 30, scope: !321)
!339 = !DILocation(line: 213, column: 25, scope: !340)
!340 = distinct !DILexicalBlock(scope: !321, file: !1, line: 213, column: 17)
!341 = !DILocation(line: 213, column: 40, scope: !340)
!342 = !DILocation(line: 213, column: 17, scope: !340)
!343 = !DILocation(line: 213, column: 85, scope: !340)
!344 = !DILocation(line: 213, column: 17, scope: !321)
!345 = !DILocation(line: 215, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !1, line: 214, column: 13)
!347 = !DILocation(line: 220, column: 31, scope: !321)
!348 = !DILocation(line: 220, column: 55, scope: !321)
!349 = !DILocation(line: 220, column: 62, scope: !321)
!350 = !DILocation(line: 220, column: 60, scope: !321)
!351 = !DILocation(line: 220, column: 94, scope: !321)
!352 = !DILocation(line: 220, column: 92, scope: !321)
!353 = !DILocation(line: 220, column: 102, scope: !321)
!354 = !DILocation(line: 220, column: 85, scope: !321)
!355 = !DILocation(line: 220, column: 26, scope: !321)
!356 = !DILocation(line: 220, column: 24, scope: !321)
!357 = !DILocation(line: 221, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !321, file: !1, line: 221, column: 17)
!359 = !DILocation(line: 221, column: 28, scope: !358)
!360 = !DILocation(line: 221, column: 44, scope: !358)
!361 = !DILocation(line: 221, column: 47, scope: !358)
!362 = !DILocation(line: 221, column: 58, scope: !358)
!363 = !DILocation(line: 221, column: 17, scope: !321)
!364 = !DILocation(line: 223, column: 17, scope: !365)
!365 = distinct !DILexicalBlock(scope: !358, file: !1, line: 222, column: 13)
!366 = !DILocation(line: 226, column: 13, scope: !321)
!367 = !DILocation(line: 226, column: 18, scope: !321)
!368 = !DILocation(line: 226, column: 28, scope: !321)
!369 = !DILocation(line: 226, column: 39, scope: !321)
!370 = !DILocation(line: 226, column: 26, scope: !321)
!371 = !DILocation(line: 226, column: 55, scope: !321)
!372 = !DILocation(line: 228, column: 30, scope: !321)
!373 = !DILocation(line: 228, column: 23, scope: !321)
!374 = !DILocation(line: 228, column: 21, scope: !321)
!375 = !DILocation(line: 229, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !321, file: !1, line: 229, column: 17)
!377 = !DILocation(line: 229, column: 17, scope: !321)
!378 = !DILocation(line: 231, column: 18, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !1, line: 230, column: 13)
!380 = !DILocation(line: 231, column: 26, scope: !379)
!381 = !DILocation(line: 232, column: 13, scope: !379)
!382 = !DILocation(line: 233, column: 30, scope: !321)
!383 = !DILocation(line: 233, column: 23, scope: !321)
!384 = !DILocation(line: 233, column: 21, scope: !321)
!385 = !DILocation(line: 234, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !321, file: !1, line: 234, column: 17)
!387 = !DILocation(line: 234, column: 17, scope: !321)
!388 = !DILocation(line: 236, column: 18, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !1, line: 235, column: 13)
!390 = !DILocation(line: 236, column: 26, scope: !389)
!391 = !DILocation(line: 237, column: 13, scope: !389)
!392 = !DILocation(line: 238, column: 9, scope: !321)
!393 = !DILocation(line: 240, column: 13, scope: !394)
!394 = distinct !DILexicalBlock(scope: !307, file: !1, line: 240, column: 13)
!395 = !DILocation(line: 240, column: 27, scope: !394)
!396 = !DILocation(line: 240, column: 13, scope: !307)
!397 = !DILocation(line: 242, column: 26, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !1, line: 241, column: 9)
!399 = !DILocation(line: 242, column: 13, scope: !398)
!400 = !DILocation(line: 243, column: 9, scope: !398)
!401 = !DILocation(line: 251, column: 26, scope: !297)
!402 = !DILocation(line: 251, column: 13, scope: !297)
!403 = !DILocation(line: 251, column: 24, scope: !297)
!404 = !DILocalVariable(name: "data", scope: !405, file: !1, line: 253, type: !59)
!405 = distinct !DILexicalBlock(scope: !297, file: !1, line: 252, column: 5)
!406 = !DILocation(line: 253, column: 16, scope: !405)
!407 = !DILocation(line: 253, column: 31, scope: !405)
!408 = !DILocalVariable(name: "i", scope: !409, file: !1, line: 255, type: !87)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 254, column: 9)
!410 = !DILocation(line: 255, column: 17, scope: !409)
!411 = !DILocalVariable(name: "n", scope: !409, file: !1, line: 255, type: !87)
!412 = !DILocation(line: 255, column: 20, scope: !409)
!413 = !DILocalVariable(name: "intVariable", scope: !409, file: !1, line: 255, type: !87)
!414 = !DILocation(line: 255, column: 23, scope: !409)
!415 = !DILocation(line: 256, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !1, line: 256, column: 17)
!417 = !DILocation(line: 256, column: 17, scope: !416)
!418 = !DILocation(line: 256, column: 40, scope: !416)
!419 = !DILocation(line: 256, column: 17, scope: !409)
!420 = !DILocation(line: 259, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 259, column: 21)
!422 = distinct !DILexicalBlock(scope: !416, file: !1, line: 257, column: 13)
!423 = !DILocation(line: 259, column: 23, scope: !421)
!424 = !DILocation(line: 259, column: 21, scope: !422)
!425 = !DILocation(line: 261, column: 33, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 260, column: 17)
!427 = !DILocation(line: 262, column: 28, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !1, line: 262, column: 21)
!429 = !DILocation(line: 262, column: 26, scope: !428)
!430 = !DILocation(line: 262, column: 33, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !1, line: 262, column: 21)
!432 = !DILocation(line: 262, column: 37, scope: !431)
!433 = !DILocation(line: 262, column: 35, scope: !431)
!434 = !DILocation(line: 262, column: 21, scope: !428)
!435 = !DILocation(line: 265, column: 36, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !1, line: 263, column: 21)
!437 = !DILocation(line: 266, column: 21, scope: !436)
!438 = !DILocation(line: 262, column: 41, scope: !431)
!439 = !DILocation(line: 262, column: 21, scope: !431)
!440 = distinct !{!440, !434, !441, !241}
!441 = !DILocation(line: 266, column: 21, scope: !428)
!442 = !DILocation(line: 267, column: 34, scope: !426)
!443 = !DILocation(line: 267, column: 21, scope: !426)
!444 = !DILocation(line: 268, column: 17, scope: !426)
!445 = !DILocation(line: 269, column: 13, scope: !422)
!446 = !DILocation(line: 272, column: 1, scope: !297)
!447 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_good", scope: !1, file: !1, line: 274, type: !65, scopeLine: 275, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!448 = !DILocation(line: 276, column: 5, scope: !447)
!449 = !DILocation(line: 277, column: 5, scope: !447)
!450 = !DILocation(line: 278, column: 1, scope: !447)
