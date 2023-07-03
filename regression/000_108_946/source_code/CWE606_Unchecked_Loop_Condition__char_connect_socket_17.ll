; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_17.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17_bad() #0 !dbg !64 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i34 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %j, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !75, metadata !DIExpression()), !dbg !79
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !80
  store i8* %arraydecay, i8** %data, align 8, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !84

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !85
  %cmp = icmp slt i32 %1, 1, !dbg !87
  br i1 %cmp, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !93, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 -1, i32* %connectSocket, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !120, metadata !DIExpression()), !dbg !124
  %2 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i64 @strlen(i8* %2) #7, !dbg !126
  store i64 %call, i64* %dataLen, align 8, !dbg !124
  br label %do.body, !dbg !127

do.body:                                          ; preds = %for.body
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !128
  store i32 %call1, i32* %connectSocket, align 4, !dbg !130
  %3 = load i32, i32* %connectSocket, align 4, !dbg !131
  %cmp2 = icmp eq i32 %3, -1, !dbg !133
  br i1 %cmp2, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !135

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !137
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !138
  store i16 2, i16* %sin_family, align 4, !dbg !139
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !140
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !141
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !142
  store i32 %call3, i32* %s_addr, align 4, !dbg !143
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !144
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !145
  store i16 %call4, i16* %sin_port, align 2, !dbg !146
  %5 = load i32, i32* %connectSocket, align 4, !dbg !147
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !149
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !150
  %cmp6 = icmp eq i32 %call5, -1, !dbg !151
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !152

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !153

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !155
  %8 = load i8*, i8** %data, align 8, !dbg !156
  %9 = load i64, i64* %dataLen, align 8, !dbg !157
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !158
  %10 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %10, !dbg !160
  %sub9 = sub i64 %sub, 1, !dbg !161
  %mul = mul i64 1, %sub9, !dbg !162
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !163
  %conv = trunc i64 %call10 to i32, !dbg !163
  store i32 %conv, i32* %recvResult, align 4, !dbg !164
  %11 = load i32, i32* %recvResult, align 4, !dbg !165
  %cmp11 = icmp eq i32 %11, -1, !dbg !167
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !168

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !169
  %cmp13 = icmp eq i32 %12, 0, !dbg !170
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !171

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !172

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !174
  %14 = load i64, i64* %dataLen, align 8, !dbg !175
  %15 = load i32, i32* %recvResult, align 4, !dbg !176
  %conv17 = sext i32 %15 to i64, !dbg !176
  %div = udiv i64 %conv17, 1, !dbg !177
  %add = add i64 %14, %div, !dbg !178
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !174
  store i8 0, i8* %arrayidx, align 1, !dbg !179
  %16 = load i8*, i8** %data, align 8, !dbg !180
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !181
  store i8* %call18, i8** %replace, align 8, !dbg !182
  %17 = load i8*, i8** %replace, align 8, !dbg !183
  %tobool = icmp ne i8* %17, null, !dbg !183
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !185

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !186
  store i8 0, i8* %18, align 1, !dbg !188
  br label %if.end20, !dbg !189

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !190
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !191
  store i8* %call21, i8** %replace, align 8, !dbg !192
  %20 = load i8*, i8** %replace, align 8, !dbg !193
  %tobool22 = icmp ne i8* %20, null, !dbg !193
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !195

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %replace, align 8, !dbg !196
  store i8 0, i8* %21, align 1, !dbg !198
  br label %if.end24, !dbg !199

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !200

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %connectSocket, align 4, !dbg !201
  %cmp25 = icmp ne i32 %22, -1, !dbg !203
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !204

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !205
  %call28 = call i32 @close(i32 %23), !dbg !207
  br label %if.end29, !dbg !208

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %i, align 4, !dbg !210
  %inc = add nsw i32 %24, 1, !dbg !210
  store i32 %inc, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !215
  br label %for.cond30, !dbg !217

for.cond30:                                       ; preds = %for.inc48, %for.end
  %25 = load i32, i32* %j, align 4, !dbg !218
  %cmp31 = icmp slt i32 %25, 1, !dbg !220
  br i1 %cmp31, label %for.body33, label %for.end50, !dbg !221

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %n, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !228, metadata !DIExpression()), !dbg !229
  %26 = load i8*, i8** %data, align 8, !dbg !230
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !232
  %cmp36 = icmp eq i32 %call35, 1, !dbg !233
  br i1 %cmp36, label %if.then38, label %if.end47, !dbg !234

if.then38:                                        ; preds = %for.body33
  store i32 0, i32* %intVariable, align 4, !dbg !235
  store i32 0, i32* %i34, align 4, !dbg !237
  br label %for.cond39, !dbg !239

for.cond39:                                       ; preds = %for.inc44, %if.then38
  %27 = load i32, i32* %i34, align 4, !dbg !240
  %28 = load i32, i32* %n, align 4, !dbg !242
  %cmp40 = icmp slt i32 %27, %28, !dbg !243
  br i1 %cmp40, label %for.body42, label %for.end46, !dbg !244

for.body42:                                       ; preds = %for.cond39
  %29 = load i32, i32* %intVariable, align 4, !dbg !245
  %inc43 = add nsw i32 %29, 1, !dbg !245
  store i32 %inc43, i32* %intVariable, align 4, !dbg !245
  br label %for.inc44, !dbg !247

for.inc44:                                        ; preds = %for.body42
  %30 = load i32, i32* %i34, align 4, !dbg !248
  %inc45 = add nsw i32 %30, 1, !dbg !248
  store i32 %inc45, i32* %i34, align 4, !dbg !248
  br label %for.cond39, !dbg !249, !llvm.loop !250

for.end46:                                        ; preds = %for.cond39
  %31 = load i32, i32* %intVariable, align 4, !dbg !252
  call void @printIntLine(i32 %31), !dbg !253
  br label %if.end47, !dbg !254

if.end47:                                         ; preds = %for.end46, %for.body33
  br label %for.inc48, !dbg !255

for.inc48:                                        ; preds = %if.end47
  %32 = load i32, i32* %j, align 4, !dbg !256
  %inc49 = add nsw i32 %32, 1, !dbg !256
  store i32 %inc49, i32* %j, align 4, !dbg !256
  br label %for.cond30, !dbg !257, !llvm.loop !258

for.end50:                                        ; preds = %for.cond30
  ret void, !dbg !260
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
define dso_local void @goodB2G() #0 !dbg !261 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i34 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %k, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %data, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !269
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !270
  store i8* %arraydecay, i8** %data, align 8, !dbg !271
  store i32 0, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !274

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !275
  %cmp = icmp slt i32 %1, 1, !dbg !277
  br i1 %cmp, label %for.body, label %for.end, !dbg !278

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !287, metadata !DIExpression()), !dbg !288
  store i32 -1, i32* %connectSocket, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = load i8*, i8** %data, align 8, !dbg !291
  %call = call i64 @strlen(i8* %2) #7, !dbg !292
  store i64 %call, i64* %dataLen, align 8, !dbg !290
  br label %do.body, !dbg !293

do.body:                                          ; preds = %for.body
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !294
  store i32 %call1, i32* %connectSocket, align 4, !dbg !296
  %3 = load i32, i32* %connectSocket, align 4, !dbg !297
  %cmp2 = icmp eq i32 %3, -1, !dbg !299
  br i1 %cmp2, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !301

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !303
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !303
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !304
  store i16 2, i16* %sin_family, align 4, !dbg !305
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !306
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !307
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !308
  store i32 %call3, i32* %s_addr, align 4, !dbg !309
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !310
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !311
  store i16 %call4, i16* %sin_port, align 2, !dbg !312
  %5 = load i32, i32* %connectSocket, align 4, !dbg !313
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !315
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !316
  %cmp6 = icmp eq i32 %call5, -1, !dbg !317
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !318

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !319

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !321
  %8 = load i8*, i8** %data, align 8, !dbg !322
  %9 = load i64, i64* %dataLen, align 8, !dbg !323
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !324
  %10 = load i64, i64* %dataLen, align 8, !dbg !325
  %sub = sub i64 100, %10, !dbg !326
  %sub9 = sub i64 %sub, 1, !dbg !327
  %mul = mul i64 1, %sub9, !dbg !328
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !329
  %conv = trunc i64 %call10 to i32, !dbg !329
  store i32 %conv, i32* %recvResult, align 4, !dbg !330
  %11 = load i32, i32* %recvResult, align 4, !dbg !331
  %cmp11 = icmp eq i32 %11, -1, !dbg !333
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !334

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !335
  %cmp13 = icmp eq i32 %12, 0, !dbg !336
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !337

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !338

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !340
  %14 = load i64, i64* %dataLen, align 8, !dbg !341
  %15 = load i32, i32* %recvResult, align 4, !dbg !342
  %conv17 = sext i32 %15 to i64, !dbg !342
  %div = udiv i64 %conv17, 1, !dbg !343
  %add = add i64 %14, %div, !dbg !344
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !340
  store i8 0, i8* %arrayidx, align 1, !dbg !345
  %16 = load i8*, i8** %data, align 8, !dbg !346
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !347
  store i8* %call18, i8** %replace, align 8, !dbg !348
  %17 = load i8*, i8** %replace, align 8, !dbg !349
  %tobool = icmp ne i8* %17, null, !dbg !349
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !351

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !352
  store i8 0, i8* %18, align 1, !dbg !354
  br label %if.end20, !dbg !355

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !356
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !357
  store i8* %call21, i8** %replace, align 8, !dbg !358
  %20 = load i8*, i8** %replace, align 8, !dbg !359
  %tobool22 = icmp ne i8* %20, null, !dbg !359
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !361

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %replace, align 8, !dbg !362
  store i8 0, i8* %21, align 1, !dbg !364
  br label %if.end24, !dbg !365

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !366

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %connectSocket, align 4, !dbg !367
  %cmp25 = icmp ne i32 %22, -1, !dbg !369
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !370

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !371
  %call28 = call i32 @close(i32 %23), !dbg !373
  br label %if.end29, !dbg !374

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !375

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %i, align 4, !dbg !376
  %inc = add nsw i32 %24, 1, !dbg !376
  store i32 %inc, i32* %i, align 4, !dbg !376
  br label %for.cond, !dbg !377, !llvm.loop !378

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !380
  br label %for.cond30, !dbg !382

for.cond30:                                       ; preds = %for.inc52, %for.end
  %25 = load i32, i32* %k, align 4, !dbg !383
  %cmp31 = icmp slt i32 %25, 1, !dbg !385
  br i1 %cmp31, label %for.body33, label %for.end54, !dbg !386

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !387, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %n, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !393, metadata !DIExpression()), !dbg !394
  %26 = load i8*, i8** %data, align 8, !dbg !395
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !397
  %cmp36 = icmp eq i32 %call35, 1, !dbg !398
  br i1 %cmp36, label %if.then38, label %if.end51, !dbg !399

if.then38:                                        ; preds = %for.body33
  %27 = load i32, i32* %n, align 4, !dbg !400
  %cmp39 = icmp slt i32 %27, 10000, !dbg !403
  br i1 %cmp39, label %if.then41, label %if.end50, !dbg !404

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !405
  store i32 0, i32* %i34, align 4, !dbg !407
  br label %for.cond42, !dbg !409

for.cond42:                                       ; preds = %for.inc47, %if.then41
  %28 = load i32, i32* %i34, align 4, !dbg !410
  %29 = load i32, i32* %n, align 4, !dbg !412
  %cmp43 = icmp slt i32 %28, %29, !dbg !413
  br i1 %cmp43, label %for.body45, label %for.end49, !dbg !414

for.body45:                                       ; preds = %for.cond42
  %30 = load i32, i32* %intVariable, align 4, !dbg !415
  %inc46 = add nsw i32 %30, 1, !dbg !415
  store i32 %inc46, i32* %intVariable, align 4, !dbg !415
  br label %for.inc47, !dbg !417

for.inc47:                                        ; preds = %for.body45
  %31 = load i32, i32* %i34, align 4, !dbg !418
  %inc48 = add nsw i32 %31, 1, !dbg !418
  store i32 %inc48, i32* %i34, align 4, !dbg !418
  br label %for.cond42, !dbg !419, !llvm.loop !420

for.end49:                                        ; preds = %for.cond42
  %32 = load i32, i32* %intVariable, align 4, !dbg !422
  call void @printIntLine(i32 %32), !dbg !423
  br label %if.end50, !dbg !424

if.end50:                                         ; preds = %for.end49, %if.then38
  br label %if.end51, !dbg !425

if.end51:                                         ; preds = %if.end50, %for.body33
  br label %for.inc52, !dbg !426

for.inc52:                                        ; preds = %if.end51
  %33 = load i32, i32* %k, align 4, !dbg !427
  %inc53 = add nsw i32 %33, 1, !dbg !427
  store i32 %inc53, i32* %k, align 4, !dbg !427
  br label %for.cond30, !dbg !428, !llvm.loop !429

for.end54:                                        ; preds = %for.cond30
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !432 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %j, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i8** %data, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !440
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !441
  store i8* %arraydecay, i8** %data, align 8, !dbg !442
  store i32 0, i32* %h, align 4, !dbg !443
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !446
  %cmp = icmp slt i32 %1, 1, !dbg !448
  br i1 %cmp, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !450
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !452
  br label %for.inc, !dbg !453

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !454
  %inc = add nsw i32 %3, 1, !dbg !454
  store i32 %inc, i32* %h, align 4, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !458
  br label %for.cond1, !dbg !460

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !461
  %cmp2 = icmp slt i32 %4, 1, !dbg !463
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !464

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !465, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %n, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !471, metadata !DIExpression()), !dbg !472
  %5 = load i8*, i8** %data, align 8, !dbg !473
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !475
  %cmp5 = icmp eq i32 %call4, 1, !dbg !476
  br i1 %cmp5, label %if.then, label %if.end, !dbg !477

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !478
  store i32 0, i32* %i, align 4, !dbg !480
  br label %for.cond6, !dbg !482

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !483
  %7 = load i32, i32* %n, align 4, !dbg !485
  %cmp7 = icmp slt i32 %6, %7, !dbg !486
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !487

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !488
  %inc9 = add nsw i32 %8, 1, !dbg !488
  store i32 %inc9, i32* %intVariable, align 4, !dbg !488
  br label %for.inc10, !dbg !490

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !491
  %inc11 = add nsw i32 %9, 1, !dbg !491
  store i32 %inc11, i32* %i, align 4, !dbg !491
  br label %for.cond6, !dbg !492, !llvm.loop !493

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !495
  call void @printIntLine(i32 %10), !dbg !496
  br label %if.end, !dbg !497

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !498

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !499
  %inc14 = add nsw i32 %11, 1, !dbg !499
  store i32 %inc14, i32* %j, align 4, !dbg !499
  br label %for.cond1, !dbg !500, !llvm.loop !501

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !503
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good() #0 !dbg !504 {
entry:
  call void @goodB2G(), !dbg !505
  call void @goodG2B(), !dbg !506
  ret void, !dbg !507
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{}
!68 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 52, type: !69)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocation(line: 52, column: 9, scope: !64)
!71 = !DILocalVariable(name: "j", scope: !64, file: !1, line: 52, type: !69)
!72 = !DILocation(line: 52, column: 11, scope: !64)
!73 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 53, type: !59)
!74 = !DILocation(line: 53, column: 12, scope: !64)
!75 = !DILocalVariable(name: "dataBuffer", scope: !64, file: !1, line: 54, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !DILocation(line: 54, column: 10, scope: !64)
!80 = !DILocation(line: 55, column: 12, scope: !64)
!81 = !DILocation(line: 55, column: 10, scope: !64)
!82 = !DILocation(line: 56, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !1, line: 56, column: 5)
!84 = !DILocation(line: 56, column: 9, scope: !83)
!85 = !DILocation(line: 56, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 56, column: 5)
!87 = !DILocation(line: 56, column: 18, scope: !86)
!88 = !DILocation(line: 56, column: 5, scope: !83)
!89 = !DILocalVariable(name: "recvResult", scope: !90, file: !1, line: 63, type: !69)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 58, column: 9)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 57, column: 5)
!92 = !DILocation(line: 63, column: 17, scope: !90)
!93 = !DILocalVariable(name: "service", scope: !90, file: !1, line: 64, type: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !95)
!95 = !{!96, !97, !103, !110}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !94, file: !17, line: 240, baseType: !51, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !94, file: !17, line: 241, baseType: !98, size: 16, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !100, line: 25, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !102, line: 40, baseType: !53)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !94, file: !17, line: 242, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !104, file: !17, line: 33, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 26, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !102, line: 42, baseType: !5)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !94, file: !17, line: 245, baseType: !111, size: 64, offset: 64)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !113)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 8)
!115 = !DILocation(line: 64, column: 32, scope: !90)
!116 = !DILocalVariable(name: "replace", scope: !90, file: !1, line: 65, type: !59)
!117 = !DILocation(line: 65, column: 19, scope: !90)
!118 = !DILocalVariable(name: "connectSocket", scope: !90, file: !1, line: 66, type: !69)
!119 = !DILocation(line: 66, column: 20, scope: !90)
!120 = !DILocalVariable(name: "dataLen", scope: !90, file: !1, line: 67, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DILocation(line: 67, column: 20, scope: !90)
!125 = !DILocation(line: 67, column: 37, scope: !90)
!126 = !DILocation(line: 67, column: 30, scope: !90)
!127 = !DILocation(line: 68, column: 13, scope: !90)
!128 = !DILocation(line: 78, column: 33, scope: !129)
!129 = distinct !DILexicalBlock(scope: !90, file: !1, line: 69, column: 13)
!130 = !DILocation(line: 78, column: 31, scope: !129)
!131 = !DILocation(line: 79, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 79, column: 21)
!133 = !DILocation(line: 79, column: 35, scope: !132)
!134 = !DILocation(line: 79, column: 21, scope: !129)
!135 = !DILocation(line: 81, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 80, column: 17)
!137 = !DILocation(line: 83, column: 17, scope: !129)
!138 = !DILocation(line: 84, column: 25, scope: !129)
!139 = !DILocation(line: 84, column: 36, scope: !129)
!140 = !DILocation(line: 85, column: 43, scope: !129)
!141 = !DILocation(line: 85, column: 25, scope: !129)
!142 = !DILocation(line: 85, column: 34, scope: !129)
!143 = !DILocation(line: 85, column: 41, scope: !129)
!144 = !DILocation(line: 86, column: 36, scope: !129)
!145 = !DILocation(line: 86, column: 25, scope: !129)
!146 = !DILocation(line: 86, column: 34, scope: !129)
!147 = !DILocation(line: 87, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !129, file: !1, line: 87, column: 21)
!149 = !DILocation(line: 87, column: 44, scope: !148)
!150 = !DILocation(line: 87, column: 21, scope: !148)
!151 = !DILocation(line: 87, column: 89, scope: !148)
!152 = !DILocation(line: 87, column: 21, scope: !129)
!153 = !DILocation(line: 89, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 88, column: 17)
!155 = !DILocation(line: 94, column: 35, scope: !129)
!156 = !DILocation(line: 94, column: 59, scope: !129)
!157 = !DILocation(line: 94, column: 66, scope: !129)
!158 = !DILocation(line: 94, column: 64, scope: !129)
!159 = !DILocation(line: 94, column: 98, scope: !129)
!160 = !DILocation(line: 94, column: 96, scope: !129)
!161 = !DILocation(line: 94, column: 106, scope: !129)
!162 = !DILocation(line: 94, column: 89, scope: !129)
!163 = !DILocation(line: 94, column: 30, scope: !129)
!164 = !DILocation(line: 94, column: 28, scope: !129)
!165 = !DILocation(line: 95, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !129, file: !1, line: 95, column: 21)
!167 = !DILocation(line: 95, column: 32, scope: !166)
!168 = !DILocation(line: 95, column: 48, scope: !166)
!169 = !DILocation(line: 95, column: 51, scope: !166)
!170 = !DILocation(line: 95, column: 62, scope: !166)
!171 = !DILocation(line: 95, column: 21, scope: !129)
!172 = !DILocation(line: 97, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !1, line: 96, column: 17)
!174 = !DILocation(line: 100, column: 17, scope: !129)
!175 = !DILocation(line: 100, column: 22, scope: !129)
!176 = !DILocation(line: 100, column: 32, scope: !129)
!177 = !DILocation(line: 100, column: 43, scope: !129)
!178 = !DILocation(line: 100, column: 30, scope: !129)
!179 = !DILocation(line: 100, column: 59, scope: !129)
!180 = !DILocation(line: 102, column: 34, scope: !129)
!181 = !DILocation(line: 102, column: 27, scope: !129)
!182 = !DILocation(line: 102, column: 25, scope: !129)
!183 = !DILocation(line: 103, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !129, file: !1, line: 103, column: 21)
!185 = !DILocation(line: 103, column: 21, scope: !129)
!186 = !DILocation(line: 105, column: 22, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 104, column: 17)
!188 = !DILocation(line: 105, column: 30, scope: !187)
!189 = !DILocation(line: 106, column: 17, scope: !187)
!190 = !DILocation(line: 107, column: 34, scope: !129)
!191 = !DILocation(line: 107, column: 27, scope: !129)
!192 = !DILocation(line: 107, column: 25, scope: !129)
!193 = !DILocation(line: 108, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !129, file: !1, line: 108, column: 21)
!195 = !DILocation(line: 108, column: 21, scope: !129)
!196 = !DILocation(line: 110, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 109, column: 17)
!198 = !DILocation(line: 110, column: 30, scope: !197)
!199 = !DILocation(line: 111, column: 17, scope: !197)
!200 = !DILocation(line: 112, column: 13, scope: !129)
!201 = !DILocation(line: 114, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !90, file: !1, line: 114, column: 17)
!203 = !DILocation(line: 114, column: 31, scope: !202)
!204 = !DILocation(line: 114, column: 17, scope: !90)
!205 = !DILocation(line: 116, column: 30, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 115, column: 13)
!207 = !DILocation(line: 116, column: 17, scope: !206)
!208 = !DILocation(line: 117, column: 13, scope: !206)
!209 = !DILocation(line: 125, column: 5, scope: !91)
!210 = !DILocation(line: 56, column: 24, scope: !86)
!211 = !DILocation(line: 56, column: 5, scope: !86)
!212 = distinct !{!212, !88, !213, !214}
!213 = !DILocation(line: 125, column: 5, scope: !83)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 126, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !64, file: !1, line: 126, column: 5)
!217 = !DILocation(line: 126, column: 9, scope: !216)
!218 = !DILocation(line: 126, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 126, column: 5)
!220 = !DILocation(line: 126, column: 18, scope: !219)
!221 = !DILocation(line: 126, column: 5, scope: !216)
!222 = !DILocalVariable(name: "i", scope: !223, file: !1, line: 129, type: !69)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 128, column: 9)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 127, column: 5)
!225 = !DILocation(line: 129, column: 17, scope: !223)
!226 = !DILocalVariable(name: "n", scope: !223, file: !1, line: 129, type: !69)
!227 = !DILocation(line: 129, column: 20, scope: !223)
!228 = !DILocalVariable(name: "intVariable", scope: !223, file: !1, line: 129, type: !69)
!229 = !DILocation(line: 129, column: 23, scope: !223)
!230 = !DILocation(line: 130, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !1, line: 130, column: 17)
!232 = !DILocation(line: 130, column: 17, scope: !231)
!233 = !DILocation(line: 130, column: 40, scope: !231)
!234 = !DILocation(line: 130, column: 17, scope: !223)
!235 = !DILocation(line: 133, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !1, line: 131, column: 13)
!237 = !DILocation(line: 134, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 134, column: 17)
!239 = !DILocation(line: 134, column: 22, scope: !238)
!240 = !DILocation(line: 134, column: 29, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 134, column: 17)
!242 = !DILocation(line: 134, column: 33, scope: !241)
!243 = !DILocation(line: 134, column: 31, scope: !241)
!244 = !DILocation(line: 134, column: 17, scope: !238)
!245 = !DILocation(line: 137, column: 32, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 135, column: 17)
!247 = !DILocation(line: 138, column: 17, scope: !246)
!248 = !DILocation(line: 134, column: 37, scope: !241)
!249 = !DILocation(line: 134, column: 17, scope: !241)
!250 = distinct !{!250, !244, !251, !214}
!251 = !DILocation(line: 138, column: 17, scope: !238)
!252 = !DILocation(line: 139, column: 30, scope: !236)
!253 = !DILocation(line: 139, column: 17, scope: !236)
!254 = !DILocation(line: 140, column: 13, scope: !236)
!255 = !DILocation(line: 142, column: 5, scope: !224)
!256 = !DILocation(line: 126, column: 24, scope: !219)
!257 = !DILocation(line: 126, column: 5, scope: !219)
!258 = distinct !{!258, !221, !259, !214}
!259 = !DILocation(line: 142, column: 5, scope: !216)
!260 = !DILocation(line: 143, column: 1, scope: !64)
!261 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 150, type: !65, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!262 = !DILocalVariable(name: "i", scope: !261, file: !1, line: 152, type: !69)
!263 = !DILocation(line: 152, column: 9, scope: !261)
!264 = !DILocalVariable(name: "k", scope: !261, file: !1, line: 152, type: !69)
!265 = !DILocation(line: 152, column: 11, scope: !261)
!266 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 153, type: !59)
!267 = !DILocation(line: 153, column: 12, scope: !261)
!268 = !DILocalVariable(name: "dataBuffer", scope: !261, file: !1, line: 154, type: !76)
!269 = !DILocation(line: 154, column: 10, scope: !261)
!270 = !DILocation(line: 155, column: 12, scope: !261)
!271 = !DILocation(line: 155, column: 10, scope: !261)
!272 = !DILocation(line: 156, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !261, file: !1, line: 156, column: 5)
!274 = !DILocation(line: 156, column: 9, scope: !273)
!275 = !DILocation(line: 156, column: 16, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 156, column: 5)
!277 = !DILocation(line: 156, column: 18, scope: !276)
!278 = !DILocation(line: 156, column: 5, scope: !273)
!279 = !DILocalVariable(name: "recvResult", scope: !280, file: !1, line: 163, type: !69)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 158, column: 9)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 157, column: 5)
!282 = !DILocation(line: 163, column: 17, scope: !280)
!283 = !DILocalVariable(name: "service", scope: !280, file: !1, line: 164, type: !94)
!284 = !DILocation(line: 164, column: 32, scope: !280)
!285 = !DILocalVariable(name: "replace", scope: !280, file: !1, line: 165, type: !59)
!286 = !DILocation(line: 165, column: 19, scope: !280)
!287 = !DILocalVariable(name: "connectSocket", scope: !280, file: !1, line: 166, type: !69)
!288 = !DILocation(line: 166, column: 20, scope: !280)
!289 = !DILocalVariable(name: "dataLen", scope: !280, file: !1, line: 167, type: !121)
!290 = !DILocation(line: 167, column: 20, scope: !280)
!291 = !DILocation(line: 167, column: 37, scope: !280)
!292 = !DILocation(line: 167, column: 30, scope: !280)
!293 = !DILocation(line: 168, column: 13, scope: !280)
!294 = !DILocation(line: 178, column: 33, scope: !295)
!295 = distinct !DILexicalBlock(scope: !280, file: !1, line: 169, column: 13)
!296 = !DILocation(line: 178, column: 31, scope: !295)
!297 = !DILocation(line: 179, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !1, line: 179, column: 21)
!299 = !DILocation(line: 179, column: 35, scope: !298)
!300 = !DILocation(line: 179, column: 21, scope: !295)
!301 = !DILocation(line: 181, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 180, column: 17)
!303 = !DILocation(line: 183, column: 17, scope: !295)
!304 = !DILocation(line: 184, column: 25, scope: !295)
!305 = !DILocation(line: 184, column: 36, scope: !295)
!306 = !DILocation(line: 185, column: 43, scope: !295)
!307 = !DILocation(line: 185, column: 25, scope: !295)
!308 = !DILocation(line: 185, column: 34, scope: !295)
!309 = !DILocation(line: 185, column: 41, scope: !295)
!310 = !DILocation(line: 186, column: 36, scope: !295)
!311 = !DILocation(line: 186, column: 25, scope: !295)
!312 = !DILocation(line: 186, column: 34, scope: !295)
!313 = !DILocation(line: 187, column: 29, scope: !314)
!314 = distinct !DILexicalBlock(scope: !295, file: !1, line: 187, column: 21)
!315 = !DILocation(line: 187, column: 44, scope: !314)
!316 = !DILocation(line: 187, column: 21, scope: !314)
!317 = !DILocation(line: 187, column: 89, scope: !314)
!318 = !DILocation(line: 187, column: 21, scope: !295)
!319 = !DILocation(line: 189, column: 21, scope: !320)
!320 = distinct !DILexicalBlock(scope: !314, file: !1, line: 188, column: 17)
!321 = !DILocation(line: 194, column: 35, scope: !295)
!322 = !DILocation(line: 194, column: 59, scope: !295)
!323 = !DILocation(line: 194, column: 66, scope: !295)
!324 = !DILocation(line: 194, column: 64, scope: !295)
!325 = !DILocation(line: 194, column: 98, scope: !295)
!326 = !DILocation(line: 194, column: 96, scope: !295)
!327 = !DILocation(line: 194, column: 106, scope: !295)
!328 = !DILocation(line: 194, column: 89, scope: !295)
!329 = !DILocation(line: 194, column: 30, scope: !295)
!330 = !DILocation(line: 194, column: 28, scope: !295)
!331 = !DILocation(line: 195, column: 21, scope: !332)
!332 = distinct !DILexicalBlock(scope: !295, file: !1, line: 195, column: 21)
!333 = !DILocation(line: 195, column: 32, scope: !332)
!334 = !DILocation(line: 195, column: 48, scope: !332)
!335 = !DILocation(line: 195, column: 51, scope: !332)
!336 = !DILocation(line: 195, column: 62, scope: !332)
!337 = !DILocation(line: 195, column: 21, scope: !295)
!338 = !DILocation(line: 197, column: 21, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !1, line: 196, column: 17)
!340 = !DILocation(line: 200, column: 17, scope: !295)
!341 = !DILocation(line: 200, column: 22, scope: !295)
!342 = !DILocation(line: 200, column: 32, scope: !295)
!343 = !DILocation(line: 200, column: 43, scope: !295)
!344 = !DILocation(line: 200, column: 30, scope: !295)
!345 = !DILocation(line: 200, column: 59, scope: !295)
!346 = !DILocation(line: 202, column: 34, scope: !295)
!347 = !DILocation(line: 202, column: 27, scope: !295)
!348 = !DILocation(line: 202, column: 25, scope: !295)
!349 = !DILocation(line: 203, column: 21, scope: !350)
!350 = distinct !DILexicalBlock(scope: !295, file: !1, line: 203, column: 21)
!351 = !DILocation(line: 203, column: 21, scope: !295)
!352 = !DILocation(line: 205, column: 22, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 204, column: 17)
!354 = !DILocation(line: 205, column: 30, scope: !353)
!355 = !DILocation(line: 206, column: 17, scope: !353)
!356 = !DILocation(line: 207, column: 34, scope: !295)
!357 = !DILocation(line: 207, column: 27, scope: !295)
!358 = !DILocation(line: 207, column: 25, scope: !295)
!359 = !DILocation(line: 208, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !295, file: !1, line: 208, column: 21)
!361 = !DILocation(line: 208, column: 21, scope: !295)
!362 = !DILocation(line: 210, column: 22, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 209, column: 17)
!364 = !DILocation(line: 210, column: 30, scope: !363)
!365 = !DILocation(line: 211, column: 17, scope: !363)
!366 = !DILocation(line: 212, column: 13, scope: !295)
!367 = !DILocation(line: 214, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !280, file: !1, line: 214, column: 17)
!369 = !DILocation(line: 214, column: 31, scope: !368)
!370 = !DILocation(line: 214, column: 17, scope: !280)
!371 = !DILocation(line: 216, column: 30, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 215, column: 13)
!373 = !DILocation(line: 216, column: 17, scope: !372)
!374 = !DILocation(line: 217, column: 13, scope: !372)
!375 = !DILocation(line: 225, column: 5, scope: !281)
!376 = !DILocation(line: 156, column: 24, scope: !276)
!377 = !DILocation(line: 156, column: 5, scope: !276)
!378 = distinct !{!378, !278, !379, !214}
!379 = !DILocation(line: 225, column: 5, scope: !273)
!380 = !DILocation(line: 226, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !261, file: !1, line: 226, column: 5)
!382 = !DILocation(line: 226, column: 9, scope: !381)
!383 = !DILocation(line: 226, column: 16, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !1, line: 226, column: 5)
!385 = !DILocation(line: 226, column: 18, scope: !384)
!386 = !DILocation(line: 226, column: 5, scope: !381)
!387 = !DILocalVariable(name: "i", scope: !388, file: !1, line: 229, type: !69)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 228, column: 9)
!389 = distinct !DILexicalBlock(scope: !384, file: !1, line: 227, column: 5)
!390 = !DILocation(line: 229, column: 17, scope: !388)
!391 = !DILocalVariable(name: "n", scope: !388, file: !1, line: 229, type: !69)
!392 = !DILocation(line: 229, column: 20, scope: !388)
!393 = !DILocalVariable(name: "intVariable", scope: !388, file: !1, line: 229, type: !69)
!394 = !DILocation(line: 229, column: 23, scope: !388)
!395 = !DILocation(line: 230, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !1, line: 230, column: 17)
!397 = !DILocation(line: 230, column: 17, scope: !396)
!398 = !DILocation(line: 230, column: 40, scope: !396)
!399 = !DILocation(line: 230, column: 17, scope: !388)
!400 = !DILocation(line: 233, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 233, column: 21)
!402 = distinct !DILexicalBlock(scope: !396, file: !1, line: 231, column: 13)
!403 = !DILocation(line: 233, column: 23, scope: !401)
!404 = !DILocation(line: 233, column: 21, scope: !402)
!405 = !DILocation(line: 235, column: 33, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 234, column: 17)
!407 = !DILocation(line: 236, column: 28, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !1, line: 236, column: 21)
!409 = !DILocation(line: 236, column: 26, scope: !408)
!410 = !DILocation(line: 236, column: 33, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !1, line: 236, column: 21)
!412 = !DILocation(line: 236, column: 37, scope: !411)
!413 = !DILocation(line: 236, column: 35, scope: !411)
!414 = !DILocation(line: 236, column: 21, scope: !408)
!415 = !DILocation(line: 239, column: 36, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 237, column: 21)
!417 = !DILocation(line: 240, column: 21, scope: !416)
!418 = !DILocation(line: 236, column: 41, scope: !411)
!419 = !DILocation(line: 236, column: 21, scope: !411)
!420 = distinct !{!420, !414, !421, !214}
!421 = !DILocation(line: 240, column: 21, scope: !408)
!422 = !DILocation(line: 241, column: 34, scope: !406)
!423 = !DILocation(line: 241, column: 21, scope: !406)
!424 = !DILocation(line: 242, column: 17, scope: !406)
!425 = !DILocation(line: 243, column: 13, scope: !402)
!426 = !DILocation(line: 245, column: 5, scope: !389)
!427 = !DILocation(line: 226, column: 24, scope: !384)
!428 = !DILocation(line: 226, column: 5, scope: !384)
!429 = distinct !{!429, !386, !430, !214}
!430 = !DILocation(line: 245, column: 5, scope: !381)
!431 = !DILocation(line: 246, column: 1, scope: !261)
!432 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 249, type: !65, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!433 = !DILocalVariable(name: "h", scope: !432, file: !1, line: 251, type: !69)
!434 = !DILocation(line: 251, column: 9, scope: !432)
!435 = !DILocalVariable(name: "j", scope: !432, file: !1, line: 251, type: !69)
!436 = !DILocation(line: 251, column: 11, scope: !432)
!437 = !DILocalVariable(name: "data", scope: !432, file: !1, line: 252, type: !59)
!438 = !DILocation(line: 252, column: 12, scope: !432)
!439 = !DILocalVariable(name: "dataBuffer", scope: !432, file: !1, line: 253, type: !76)
!440 = !DILocation(line: 253, column: 10, scope: !432)
!441 = !DILocation(line: 254, column: 12, scope: !432)
!442 = !DILocation(line: 254, column: 10, scope: !432)
!443 = !DILocation(line: 255, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !1, line: 255, column: 5)
!445 = !DILocation(line: 255, column: 9, scope: !444)
!446 = !DILocation(line: 255, column: 16, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !1, line: 255, column: 5)
!448 = !DILocation(line: 255, column: 18, scope: !447)
!449 = !DILocation(line: 255, column: 5, scope: !444)
!450 = !DILocation(line: 258, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 256, column: 5)
!452 = !DILocation(line: 258, column: 9, scope: !451)
!453 = !DILocation(line: 259, column: 5, scope: !451)
!454 = !DILocation(line: 255, column: 24, scope: !447)
!455 = !DILocation(line: 255, column: 5, scope: !447)
!456 = distinct !{!456, !449, !457, !214}
!457 = !DILocation(line: 259, column: 5, scope: !444)
!458 = !DILocation(line: 260, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !432, file: !1, line: 260, column: 5)
!460 = !DILocation(line: 260, column: 9, scope: !459)
!461 = !DILocation(line: 260, column: 16, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 260, column: 5)
!463 = !DILocation(line: 260, column: 18, scope: !462)
!464 = !DILocation(line: 260, column: 5, scope: !459)
!465 = !DILocalVariable(name: "i", scope: !466, file: !1, line: 263, type: !69)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 262, column: 9)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 261, column: 5)
!468 = !DILocation(line: 263, column: 17, scope: !466)
!469 = !DILocalVariable(name: "n", scope: !466, file: !1, line: 263, type: !69)
!470 = !DILocation(line: 263, column: 20, scope: !466)
!471 = !DILocalVariable(name: "intVariable", scope: !466, file: !1, line: 263, type: !69)
!472 = !DILocation(line: 263, column: 23, scope: !466)
!473 = !DILocation(line: 264, column: 24, scope: !474)
!474 = distinct !DILexicalBlock(scope: !466, file: !1, line: 264, column: 17)
!475 = !DILocation(line: 264, column: 17, scope: !474)
!476 = !DILocation(line: 264, column: 40, scope: !474)
!477 = !DILocation(line: 264, column: 17, scope: !466)
!478 = !DILocation(line: 267, column: 29, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !1, line: 265, column: 13)
!480 = !DILocation(line: 268, column: 24, scope: !481)
!481 = distinct !DILexicalBlock(scope: !479, file: !1, line: 268, column: 17)
!482 = !DILocation(line: 268, column: 22, scope: !481)
!483 = !DILocation(line: 268, column: 29, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 268, column: 17)
!485 = !DILocation(line: 268, column: 33, scope: !484)
!486 = !DILocation(line: 268, column: 31, scope: !484)
!487 = !DILocation(line: 268, column: 17, scope: !481)
!488 = !DILocation(line: 271, column: 32, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !1, line: 269, column: 17)
!490 = !DILocation(line: 272, column: 17, scope: !489)
!491 = !DILocation(line: 268, column: 37, scope: !484)
!492 = !DILocation(line: 268, column: 17, scope: !484)
!493 = distinct !{!493, !487, !494, !214}
!494 = !DILocation(line: 272, column: 17, scope: !481)
!495 = !DILocation(line: 273, column: 30, scope: !479)
!496 = !DILocation(line: 273, column: 17, scope: !479)
!497 = !DILocation(line: 274, column: 13, scope: !479)
!498 = !DILocation(line: 276, column: 5, scope: !467)
!499 = !DILocation(line: 260, column: 24, scope: !462)
!500 = !DILocation(line: 260, column: 5, scope: !462)
!501 = distinct !{!501, !464, !502, !214}
!502 = !DILocation(line: 276, column: 5, scope: !459)
!503 = !DILocation(line: 277, column: 1, scope: !432)
!504 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good", scope: !1, file: !1, line: 279, type: !65, scopeLine: 280, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!505 = !DILocation(line: 281, column: 5, scope: !504)
!506 = !DILocation(line: 282, column: 5, scope: !504)
!507 = !DILocation(line: 283, column: 1, scope: !504)
