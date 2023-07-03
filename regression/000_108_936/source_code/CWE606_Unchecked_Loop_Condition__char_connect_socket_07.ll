; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_07.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_07_bad() #0 !dbg !68 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !74, metadata !DIExpression()), !dbg !78
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !78
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !78
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !79
  store i8* %arraydecay, i8** %data, align 8, !dbg !80
  %1 = load i32, i32* @staticFive, align 4, !dbg !81
  %cmp = icmp eq i32 %1, 5, !dbg !83
  br i1 %cmp, label %if.then, label %if.end31, !dbg !84

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !89, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %connectSocket, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !116, metadata !DIExpression()), !dbg !120
  %2 = load i8*, i8** %data, align 8, !dbg !121
  %call = call i64 @strlen(i8* %2) #7, !dbg !122
  store i64 %call, i64* %dataLen, align 8, !dbg !120
  br label %do.body, !dbg !123

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !124
  store i32 %call1, i32* %connectSocket, align 4, !dbg !126
  %3 = load i32, i32* %connectSocket, align 4, !dbg !127
  %cmp2 = icmp eq i32 %3, -1, !dbg !129
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !130

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !131

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !133
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !134
  store i16 2, i16* %sin_family, align 4, !dbg !135
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !136
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !137
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !138
  store i32 %call4, i32* %s_addr, align 4, !dbg !139
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !140
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !141
  store i16 %call5, i16* %sin_port, align 2, !dbg !142
  %5 = load i32, i32* %connectSocket, align 4, !dbg !143
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !145
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !146
  %cmp7 = icmp eq i32 %call6, -1, !dbg !147
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !148

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !149

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !151
  %8 = load i8*, i8** %data, align 8, !dbg !152
  %9 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !154
  %10 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %10, !dbg !156
  %sub10 = sub i64 %sub, 1, !dbg !157
  %mul = mul i64 1, %sub10, !dbg !158
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !159
  %conv = trunc i64 %call11 to i32, !dbg !159
  store i32 %conv, i32* %recvResult, align 4, !dbg !160
  %11 = load i32, i32* %recvResult, align 4, !dbg !161
  %cmp12 = icmp eq i32 %11, -1, !dbg !163
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !165
  %cmp14 = icmp eq i32 %12, 0, !dbg !166
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !167

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !168

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !170
  %14 = load i64, i64* %dataLen, align 8, !dbg !171
  %15 = load i32, i32* %recvResult, align 4, !dbg !172
  %conv18 = sext i32 %15 to i64, !dbg !172
  %div = udiv i64 %conv18, 1, !dbg !173
  %add = add i64 %14, %div, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !170
  store i8 0, i8* %arrayidx, align 1, !dbg !175
  %16 = load i8*, i8** %data, align 8, !dbg !176
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !177
  store i8* %call19, i8** %replace, align 8, !dbg !178
  %17 = load i8*, i8** %replace, align 8, !dbg !179
  %tobool = icmp ne i8* %17, null, !dbg !179
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !181

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !182
  store i8 0, i8* %18, align 1, !dbg !184
  br label %if.end21, !dbg !185

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !186
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !187
  store i8* %call22, i8** %replace, align 8, !dbg !188
  %20 = load i8*, i8** %replace, align 8, !dbg !189
  %tobool23 = icmp ne i8* %20, null, !dbg !189
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !191

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !192
  store i8 0, i8* %21, align 1, !dbg !194
  br label %if.end25, !dbg !195

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !197
  %cmp26 = icmp ne i32 %22, -1, !dbg !199
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !200

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !201
  %call29 = call i32 @close(i32 %23), !dbg !203
  br label %if.end30, !dbg !204

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !205

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @staticFive, align 4, !dbg !206
  %cmp32 = icmp eq i32 %24, 5, !dbg !208
  br i1 %cmp32, label %if.then34, label %if.end43, !dbg !209

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %n, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !216, metadata !DIExpression()), !dbg !217
  %25 = load i8*, i8** %data, align 8, !dbg !218
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !220
  %cmp36 = icmp eq i32 %call35, 1, !dbg !221
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !222

if.then38:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then38
  %26 = load i32, i32* %i, align 4, !dbg !228
  %27 = load i32, i32* %n, align 4, !dbg !230
  %cmp39 = icmp slt i32 %26, %27, !dbg !231
  br i1 %cmp39, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %28, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !236
  %inc41 = add nsw i32 %29, 1, !dbg !236
  store i32 %inc41, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !241
  call void @printIntLine(i32 %30), !dbg !242
  br label %if.end42, !dbg !243

if.end42:                                         ; preds = %for.end, %if.then34
  br label %if.end43, !dbg !244

if.end43:                                         ; preds = %if.end42, %if.end31
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
define dso_local void @goodB2G1() #0 !dbg !246 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i32, i32* @staticFive, align 4, !dbg !253
  %cmp = icmp eq i32 %1, 5, !dbg !255
  br i1 %cmp, label %if.then, label %if.end31, !dbg !256

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !257, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 -1, i32* %connectSocket, align 4, !dbg !266
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !267, metadata !DIExpression()), !dbg !268
  %2 = load i8*, i8** %data, align 8, !dbg !269
  %call = call i64 @strlen(i8* %2) #7, !dbg !270
  store i64 %call, i64* %dataLen, align 8, !dbg !268
  br label %do.body, !dbg !271

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !272
  store i32 %call1, i32* %connectSocket, align 4, !dbg !274
  %3 = load i32, i32* %connectSocket, align 4, !dbg !275
  %cmp2 = icmp eq i32 %3, -1, !dbg !277
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !278

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !279

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !281
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !282
  store i16 2, i16* %sin_family, align 4, !dbg !283
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !284
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !285
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !286
  store i32 %call4, i32* %s_addr, align 4, !dbg !287
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !288
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !289
  store i16 %call5, i16* %sin_port, align 2, !dbg !290
  %5 = load i32, i32* %connectSocket, align 4, !dbg !291
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !293
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !294
  %cmp7 = icmp eq i32 %call6, -1, !dbg !295
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !296

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !297

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !299
  %8 = load i8*, i8** %data, align 8, !dbg !300
  %9 = load i64, i64* %dataLen, align 8, !dbg !301
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !302
  %10 = load i64, i64* %dataLen, align 8, !dbg !303
  %sub = sub i64 100, %10, !dbg !304
  %sub10 = sub i64 %sub, 1, !dbg !305
  %mul = mul i64 1, %sub10, !dbg !306
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !307
  %conv = trunc i64 %call11 to i32, !dbg !307
  store i32 %conv, i32* %recvResult, align 4, !dbg !308
  %11 = load i32, i32* %recvResult, align 4, !dbg !309
  %cmp12 = icmp eq i32 %11, -1, !dbg !311
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !312

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !313
  %cmp14 = icmp eq i32 %12, 0, !dbg !314
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !315

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !316

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !318
  %14 = load i64, i64* %dataLen, align 8, !dbg !319
  %15 = load i32, i32* %recvResult, align 4, !dbg !320
  %conv18 = sext i32 %15 to i64, !dbg !320
  %div = udiv i64 %conv18, 1, !dbg !321
  %add = add i64 %14, %div, !dbg !322
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !318
  store i8 0, i8* %arrayidx, align 1, !dbg !323
  %16 = load i8*, i8** %data, align 8, !dbg !324
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !325
  store i8* %call19, i8** %replace, align 8, !dbg !326
  %17 = load i8*, i8** %replace, align 8, !dbg !327
  %tobool = icmp ne i8* %17, null, !dbg !327
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !329

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !330
  store i8 0, i8* %18, align 1, !dbg !332
  br label %if.end21, !dbg !333

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !334
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !335
  store i8* %call22, i8** %replace, align 8, !dbg !336
  %20 = load i8*, i8** %replace, align 8, !dbg !337
  %tobool23 = icmp ne i8* %20, null, !dbg !337
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !339

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !340
  store i8 0, i8* %21, align 1, !dbg !342
  br label %if.end25, !dbg !343

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !344

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !345
  %cmp26 = icmp ne i32 %22, -1, !dbg !347
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !348

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !349
  %call29 = call i32 @close(i32 %23), !dbg !351
  br label %if.end30, !dbg !352

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !353

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @staticFive, align 4, !dbg !354
  %cmp32 = icmp ne i32 %24, 5, !dbg !356
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !357

if.then34:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !358
  br label %if.end47, !dbg !360

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !361, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %n, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !367, metadata !DIExpression()), !dbg !368
  %25 = load i8*, i8** %data, align 8, !dbg !369
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !371
  %cmp36 = icmp eq i32 %call35, 1, !dbg !372
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !373

if.then38:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !374
  %cmp39 = icmp slt i32 %26, 10000, !dbg !377
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !378

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !379
  store i32 0, i32* %i, align 4, !dbg !381
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !384
  %28 = load i32, i32* %n, align 4, !dbg !386
  %cmp42 = icmp slt i32 %27, %28, !dbg !387
  br i1 %cmp42, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !389
  %inc = add nsw i32 %29, 1, !dbg !389
  store i32 %inc, i32* %intVariable, align 4, !dbg !389
  br label %for.inc, !dbg !391

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !392
  %inc44 = add nsw i32 %30, 1, !dbg !392
  store i32 %inc44, i32* %i, align 4, !dbg !392
  br label %for.cond, !dbg !393, !llvm.loop !394

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !396
  call void @printIntLine(i32 %31), !dbg !397
  br label %if.end45, !dbg !398

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !399

if.end46:                                         ; preds = %if.end45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  ret void, !dbg !400
}

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !401 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !405
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !405
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !406
  store i8* %arraydecay, i8** %data, align 8, !dbg !407
  %1 = load i32, i32* @staticFive, align 4, !dbg !408
  %cmp = icmp eq i32 %1, 5, !dbg !410
  br i1 %cmp, label %if.then, label %if.end31, !dbg !411

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 -1, i32* %connectSocket, align 4, !dbg !421
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !422, metadata !DIExpression()), !dbg !423
  %2 = load i8*, i8** %data, align 8, !dbg !424
  %call = call i64 @strlen(i8* %2) #7, !dbg !425
  store i64 %call, i64* %dataLen, align 8, !dbg !423
  br label %do.body, !dbg !426

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !427
  store i32 %call1, i32* %connectSocket, align 4, !dbg !429
  %3 = load i32, i32* %connectSocket, align 4, !dbg !430
  %cmp2 = icmp eq i32 %3, -1, !dbg !432
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !433

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !434

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !436
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !436
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !437
  store i16 2, i16* %sin_family, align 4, !dbg !438
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !439
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !440
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !441
  store i32 %call4, i32* %s_addr, align 4, !dbg !442
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !443
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !444
  store i16 %call5, i16* %sin_port, align 2, !dbg !445
  %5 = load i32, i32* %connectSocket, align 4, !dbg !446
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !448
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !449
  %cmp7 = icmp eq i32 %call6, -1, !dbg !450
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !451

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !452

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !454
  %8 = load i8*, i8** %data, align 8, !dbg !455
  %9 = load i64, i64* %dataLen, align 8, !dbg !456
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !457
  %10 = load i64, i64* %dataLen, align 8, !dbg !458
  %sub = sub i64 100, %10, !dbg !459
  %sub10 = sub i64 %sub, 1, !dbg !460
  %mul = mul i64 1, %sub10, !dbg !461
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !462
  %conv = trunc i64 %call11 to i32, !dbg !462
  store i32 %conv, i32* %recvResult, align 4, !dbg !463
  %11 = load i32, i32* %recvResult, align 4, !dbg !464
  %cmp12 = icmp eq i32 %11, -1, !dbg !466
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !467

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !468
  %cmp14 = icmp eq i32 %12, 0, !dbg !469
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !470

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !471

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !473
  %14 = load i64, i64* %dataLen, align 8, !dbg !474
  %15 = load i32, i32* %recvResult, align 4, !dbg !475
  %conv18 = sext i32 %15 to i64, !dbg !475
  %div = udiv i64 %conv18, 1, !dbg !476
  %add = add i64 %14, %div, !dbg !477
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !473
  store i8 0, i8* %arrayidx, align 1, !dbg !478
  %16 = load i8*, i8** %data, align 8, !dbg !479
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !480
  store i8* %call19, i8** %replace, align 8, !dbg !481
  %17 = load i8*, i8** %replace, align 8, !dbg !482
  %tobool = icmp ne i8* %17, null, !dbg !482
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !484

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !485
  store i8 0, i8* %18, align 1, !dbg !487
  br label %if.end21, !dbg !488

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !489
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !490
  store i8* %call22, i8** %replace, align 8, !dbg !491
  %20 = load i8*, i8** %replace, align 8, !dbg !492
  %tobool23 = icmp ne i8* %20, null, !dbg !492
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !494

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !495
  store i8 0, i8* %21, align 1, !dbg !497
  br label %if.end25, !dbg !498

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !499

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !500
  %cmp26 = icmp ne i32 %22, -1, !dbg !502
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !503

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !504
  %call29 = call i32 @close(i32 %23), !dbg !506
  br label %if.end30, !dbg !507

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !508

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @staticFive, align 4, !dbg !509
  %cmp32 = icmp eq i32 %24, 5, !dbg !511
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !512

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !513, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i32* %n, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !519, metadata !DIExpression()), !dbg !520
  %25 = load i8*, i8** %data, align 8, !dbg !521
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !523
  %cmp36 = icmp eq i32 %call35, 1, !dbg !524
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !525

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %n, align 4, !dbg !526
  %cmp39 = icmp slt i32 %26, 10000, !dbg !529
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !530

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !531
  store i32 0, i32* %i, align 4, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !536
  %28 = load i32, i32* %n, align 4, !dbg !538
  %cmp42 = icmp slt i32 %27, %28, !dbg !539
  br i1 %cmp42, label %for.body, label %for.end, !dbg !540

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !541
  %inc = add nsw i32 %29, 1, !dbg !541
  store i32 %inc, i32* %intVariable, align 4, !dbg !541
  br label %for.inc, !dbg !543

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !544
  %inc44 = add nsw i32 %30, 1, !dbg !544
  store i32 %inc44, i32* %i, align 4, !dbg !544
  br label %for.cond, !dbg !545, !llvm.loop !546

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !548
  call void @printIntLine(i32 %31), !dbg !549
  br label %if.end45, !dbg !550

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !551

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47, !dbg !552

if.end47:                                         ; preds = %if.end46, %if.end31
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !554 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !558
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !558
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !559
  store i8* %arraydecay, i8** %data, align 8, !dbg !560
  %1 = load i32, i32* @staticFive, align 4, !dbg !561
  %cmp = icmp ne i32 %1, 5, !dbg !563
  br i1 %cmp, label %if.then, label %if.else, !dbg !564

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !565
  br label %if.end, !dbg !567

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !568
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !570
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !571
  %cmp1 = icmp eq i32 %3, 5, !dbg !573
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !574

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i32* %n, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !581, metadata !DIExpression()), !dbg !582
  %4 = load i8*, i8** %data, align 8, !dbg !583
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !585
  %cmp4 = icmp eq i32 %call3, 1, !dbg !586
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !587

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !588
  store i32 0, i32* %i, align 4, !dbg !590
  br label %for.cond, !dbg !592

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !593
  %6 = load i32, i32* %n, align 4, !dbg !595
  %cmp6 = icmp slt i32 %5, %6, !dbg !596
  br i1 %cmp6, label %for.body, label %for.end, !dbg !597

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !598
  %inc = add nsw i32 %7, 1, !dbg !598
  store i32 %inc, i32* %intVariable, align 4, !dbg !598
  br label %for.inc, !dbg !600

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !601
  %inc7 = add nsw i32 %8, 1, !dbg !601
  store i32 %inc7, i32* %i, align 4, !dbg !601
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !605
  call void @printIntLine(i32 %9), !dbg !606
  br label %if.end8, !dbg !607

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !608

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !609
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !610 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !614
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !614
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !615
  store i8* %arraydecay, i8** %data, align 8, !dbg !616
  %1 = load i32, i32* @staticFive, align 4, !dbg !617
  %cmp = icmp eq i32 %1, 5, !dbg !619
  br i1 %cmp, label %if.then, label %if.end, !dbg !620

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !621
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !623
  br label %if.end, !dbg !624

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !625
  %cmp1 = icmp eq i32 %3, 5, !dbg !627
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !628

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !629, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %n, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !635, metadata !DIExpression()), !dbg !636
  %4 = load i8*, i8** %data, align 8, !dbg !637
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !639
  %cmp4 = icmp eq i32 %call3, 1, !dbg !640
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !641

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !642
  store i32 0, i32* %i, align 4, !dbg !644
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !647
  %6 = load i32, i32* %n, align 4, !dbg !649
  %cmp6 = icmp slt i32 %5, %6, !dbg !650
  br i1 %cmp6, label %for.body, label %for.end, !dbg !651

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !652
  %inc = add nsw i32 %7, 1, !dbg !652
  store i32 %inc, i32* %intVariable, align 4, !dbg !652
  br label %for.inc, !dbg !654

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !655
  %inc7 = add nsw i32 %8, 1, !dbg !655
  store i32 %inc7, i32* %i, align 4, !dbg !655
  br label %for.cond, !dbg !656, !llvm.loop !657

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !659
  call void @printIntLine(i32 %9), !dbg !660
  br label %if.end8, !dbg !661

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !662

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_07_good() #0 !dbg !664 {
entry:
  call void @goodB2G1(), !dbg !665
  call void @goodB2G2(), !dbg !666
  call void @goodG2B1(), !dbg !667
  call void @goodG2B2(), !dbg !668
  ret void, !dbg !669
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 51, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_936/source_code")
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
!62 = !{!0}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !{i32 7, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{!"clang version 12.0.0"}
!68 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_07_bad", scope: !3, file: !3, line: 55, type: !69, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = !{}
!72 = !DILocalVariable(name: "data", scope: !68, file: !3, line: 57, type: !61)
!73 = !DILocation(line: 57, column: 12, scope: !68)
!74 = !DILocalVariable(name: "dataBuffer", scope: !68, file: !3, line: 58, type: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 100)
!78 = !DILocation(line: 58, column: 10, scope: !68)
!79 = !DILocation(line: 59, column: 12, scope: !68)
!80 = !DILocation(line: 59, column: 10, scope: !68)
!81 = !DILocation(line: 60, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !68, file: !3, line: 60, column: 8)
!83 = !DILocation(line: 60, column: 18, scope: !82)
!84 = !DILocation(line: 60, column: 8, scope: !68)
!85 = !DILocalVariable(name: "recvResult", scope: !86, file: !3, line: 67, type: !63)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 62, column: 9)
!87 = distinct !DILexicalBlock(scope: !82, file: !3, line: 61, column: 5)
!88 = !DILocation(line: 67, column: 17, scope: !86)
!89 = !DILocalVariable(name: "service", scope: !86, file: !3, line: 68, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !91)
!91 = !{!92, !93, !99, !106}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !90, file: !19, line: 240, baseType: !53, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !90, file: !19, line: 241, baseType: !94, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 25, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 40, baseType: !55)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !90, file: !19, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !19, line: 33, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 26, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !7)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !90, file: !19, line: 245, baseType: !107, size: 64, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !109)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DILocation(line: 68, column: 32, scope: !86)
!112 = !DILocalVariable(name: "replace", scope: !86, file: !3, line: 69, type: !61)
!113 = !DILocation(line: 69, column: 19, scope: !86)
!114 = !DILocalVariable(name: "connectSocket", scope: !86, file: !3, line: 70, type: !63)
!115 = !DILocation(line: 70, column: 20, scope: !86)
!116 = !DILocalVariable(name: "dataLen", scope: !86, file: !3, line: 71, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DILocation(line: 71, column: 20, scope: !86)
!121 = !DILocation(line: 71, column: 37, scope: !86)
!122 = !DILocation(line: 71, column: 30, scope: !86)
!123 = !DILocation(line: 72, column: 13, scope: !86)
!124 = !DILocation(line: 82, column: 33, scope: !125)
!125 = distinct !DILexicalBlock(scope: !86, file: !3, line: 73, column: 13)
!126 = !DILocation(line: 82, column: 31, scope: !125)
!127 = !DILocation(line: 83, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 83, column: 21)
!129 = !DILocation(line: 83, column: 35, scope: !128)
!130 = !DILocation(line: 83, column: 21, scope: !125)
!131 = !DILocation(line: 85, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 84, column: 17)
!133 = !DILocation(line: 87, column: 17, scope: !125)
!134 = !DILocation(line: 88, column: 25, scope: !125)
!135 = !DILocation(line: 88, column: 36, scope: !125)
!136 = !DILocation(line: 89, column: 43, scope: !125)
!137 = !DILocation(line: 89, column: 25, scope: !125)
!138 = !DILocation(line: 89, column: 34, scope: !125)
!139 = !DILocation(line: 89, column: 41, scope: !125)
!140 = !DILocation(line: 90, column: 36, scope: !125)
!141 = !DILocation(line: 90, column: 25, scope: !125)
!142 = !DILocation(line: 90, column: 34, scope: !125)
!143 = !DILocation(line: 91, column: 29, scope: !144)
!144 = distinct !DILexicalBlock(scope: !125, file: !3, line: 91, column: 21)
!145 = !DILocation(line: 91, column: 44, scope: !144)
!146 = !DILocation(line: 91, column: 21, scope: !144)
!147 = !DILocation(line: 91, column: 89, scope: !144)
!148 = !DILocation(line: 91, column: 21, scope: !125)
!149 = !DILocation(line: 93, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !3, line: 92, column: 17)
!151 = !DILocation(line: 98, column: 35, scope: !125)
!152 = !DILocation(line: 98, column: 59, scope: !125)
!153 = !DILocation(line: 98, column: 66, scope: !125)
!154 = !DILocation(line: 98, column: 64, scope: !125)
!155 = !DILocation(line: 98, column: 98, scope: !125)
!156 = !DILocation(line: 98, column: 96, scope: !125)
!157 = !DILocation(line: 98, column: 106, scope: !125)
!158 = !DILocation(line: 98, column: 89, scope: !125)
!159 = !DILocation(line: 98, column: 30, scope: !125)
!160 = !DILocation(line: 98, column: 28, scope: !125)
!161 = !DILocation(line: 99, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !125, file: !3, line: 99, column: 21)
!163 = !DILocation(line: 99, column: 32, scope: !162)
!164 = !DILocation(line: 99, column: 48, scope: !162)
!165 = !DILocation(line: 99, column: 51, scope: !162)
!166 = !DILocation(line: 99, column: 62, scope: !162)
!167 = !DILocation(line: 99, column: 21, scope: !125)
!168 = !DILocation(line: 101, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !3, line: 100, column: 17)
!170 = !DILocation(line: 104, column: 17, scope: !125)
!171 = !DILocation(line: 104, column: 22, scope: !125)
!172 = !DILocation(line: 104, column: 32, scope: !125)
!173 = !DILocation(line: 104, column: 43, scope: !125)
!174 = !DILocation(line: 104, column: 30, scope: !125)
!175 = !DILocation(line: 104, column: 59, scope: !125)
!176 = !DILocation(line: 106, column: 34, scope: !125)
!177 = !DILocation(line: 106, column: 27, scope: !125)
!178 = !DILocation(line: 106, column: 25, scope: !125)
!179 = !DILocation(line: 107, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !125, file: !3, line: 107, column: 21)
!181 = !DILocation(line: 107, column: 21, scope: !125)
!182 = !DILocation(line: 109, column: 22, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 108, column: 17)
!184 = !DILocation(line: 109, column: 30, scope: !183)
!185 = !DILocation(line: 110, column: 17, scope: !183)
!186 = !DILocation(line: 111, column: 34, scope: !125)
!187 = !DILocation(line: 111, column: 27, scope: !125)
!188 = !DILocation(line: 111, column: 25, scope: !125)
!189 = !DILocation(line: 112, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !125, file: !3, line: 112, column: 21)
!191 = !DILocation(line: 112, column: 21, scope: !125)
!192 = !DILocation(line: 114, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 113, column: 17)
!194 = !DILocation(line: 114, column: 30, scope: !193)
!195 = !DILocation(line: 115, column: 17, scope: !193)
!196 = !DILocation(line: 116, column: 13, scope: !125)
!197 = !DILocation(line: 118, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !86, file: !3, line: 118, column: 17)
!199 = !DILocation(line: 118, column: 31, scope: !198)
!200 = !DILocation(line: 118, column: 17, scope: !86)
!201 = !DILocation(line: 120, column: 30, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 119, column: 13)
!203 = !DILocation(line: 120, column: 17, scope: !202)
!204 = !DILocation(line: 121, column: 13, scope: !202)
!205 = !DILocation(line: 129, column: 5, scope: !87)
!206 = !DILocation(line: 130, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !68, file: !3, line: 130, column: 8)
!208 = !DILocation(line: 130, column: 18, scope: !207)
!209 = !DILocation(line: 130, column: 8, scope: !68)
!210 = !DILocalVariable(name: "i", scope: !211, file: !3, line: 133, type: !63)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 132, column: 9)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 131, column: 5)
!213 = !DILocation(line: 133, column: 17, scope: !211)
!214 = !DILocalVariable(name: "n", scope: !211, file: !3, line: 133, type: !63)
!215 = !DILocation(line: 133, column: 20, scope: !211)
!216 = !DILocalVariable(name: "intVariable", scope: !211, file: !3, line: 133, type: !63)
!217 = !DILocation(line: 133, column: 23, scope: !211)
!218 = !DILocation(line: 134, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !3, line: 134, column: 17)
!220 = !DILocation(line: 134, column: 17, scope: !219)
!221 = !DILocation(line: 134, column: 40, scope: !219)
!222 = !DILocation(line: 134, column: 17, scope: !211)
!223 = !DILocation(line: 137, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 135, column: 13)
!225 = !DILocation(line: 138, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !3, line: 138, column: 17)
!227 = !DILocation(line: 138, column: 22, scope: !226)
!228 = !DILocation(line: 138, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 138, column: 17)
!230 = !DILocation(line: 138, column: 33, scope: !229)
!231 = !DILocation(line: 138, column: 31, scope: !229)
!232 = !DILocation(line: 138, column: 17, scope: !226)
!233 = !DILocation(line: 141, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 139, column: 17)
!235 = !DILocation(line: 142, column: 17, scope: !234)
!236 = !DILocation(line: 138, column: 37, scope: !229)
!237 = !DILocation(line: 138, column: 17, scope: !229)
!238 = distinct !{!238, !232, !239, !240}
!239 = !DILocation(line: 142, column: 17, scope: !226)
!240 = !{!"llvm.loop.mustprogress"}
!241 = !DILocation(line: 143, column: 30, scope: !224)
!242 = !DILocation(line: 143, column: 17, scope: !224)
!243 = !DILocation(line: 144, column: 13, scope: !224)
!244 = !DILocation(line: 146, column: 5, scope: !212)
!245 = !DILocation(line: 147, column: 1, scope: !68)
!246 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 154, type: !69, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 156, type: !61)
!248 = !DILocation(line: 156, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !3, line: 157, type: !75)
!250 = !DILocation(line: 157, column: 10, scope: !246)
!251 = !DILocation(line: 158, column: 12, scope: !246)
!252 = !DILocation(line: 158, column: 10, scope: !246)
!253 = !DILocation(line: 159, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 159, column: 8)
!255 = !DILocation(line: 159, column: 18, scope: !254)
!256 = !DILocation(line: 159, column: 8, scope: !246)
!257 = !DILocalVariable(name: "recvResult", scope: !258, file: !3, line: 166, type: !63)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 161, column: 9)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 160, column: 5)
!260 = !DILocation(line: 166, column: 17, scope: !258)
!261 = !DILocalVariable(name: "service", scope: !258, file: !3, line: 167, type: !90)
!262 = !DILocation(line: 167, column: 32, scope: !258)
!263 = !DILocalVariable(name: "replace", scope: !258, file: !3, line: 168, type: !61)
!264 = !DILocation(line: 168, column: 19, scope: !258)
!265 = !DILocalVariable(name: "connectSocket", scope: !258, file: !3, line: 169, type: !63)
!266 = !DILocation(line: 169, column: 20, scope: !258)
!267 = !DILocalVariable(name: "dataLen", scope: !258, file: !3, line: 170, type: !117)
!268 = !DILocation(line: 170, column: 20, scope: !258)
!269 = !DILocation(line: 170, column: 37, scope: !258)
!270 = !DILocation(line: 170, column: 30, scope: !258)
!271 = !DILocation(line: 171, column: 13, scope: !258)
!272 = !DILocation(line: 181, column: 33, scope: !273)
!273 = distinct !DILexicalBlock(scope: !258, file: !3, line: 172, column: 13)
!274 = !DILocation(line: 181, column: 31, scope: !273)
!275 = !DILocation(line: 182, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 182, column: 21)
!277 = !DILocation(line: 182, column: 35, scope: !276)
!278 = !DILocation(line: 182, column: 21, scope: !273)
!279 = !DILocation(line: 184, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 183, column: 17)
!281 = !DILocation(line: 186, column: 17, scope: !273)
!282 = !DILocation(line: 187, column: 25, scope: !273)
!283 = !DILocation(line: 187, column: 36, scope: !273)
!284 = !DILocation(line: 188, column: 43, scope: !273)
!285 = !DILocation(line: 188, column: 25, scope: !273)
!286 = !DILocation(line: 188, column: 34, scope: !273)
!287 = !DILocation(line: 188, column: 41, scope: !273)
!288 = !DILocation(line: 189, column: 36, scope: !273)
!289 = !DILocation(line: 189, column: 25, scope: !273)
!290 = !DILocation(line: 189, column: 34, scope: !273)
!291 = !DILocation(line: 190, column: 29, scope: !292)
!292 = distinct !DILexicalBlock(scope: !273, file: !3, line: 190, column: 21)
!293 = !DILocation(line: 190, column: 44, scope: !292)
!294 = !DILocation(line: 190, column: 21, scope: !292)
!295 = !DILocation(line: 190, column: 89, scope: !292)
!296 = !DILocation(line: 190, column: 21, scope: !273)
!297 = !DILocation(line: 192, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 191, column: 17)
!299 = !DILocation(line: 197, column: 35, scope: !273)
!300 = !DILocation(line: 197, column: 59, scope: !273)
!301 = !DILocation(line: 197, column: 66, scope: !273)
!302 = !DILocation(line: 197, column: 64, scope: !273)
!303 = !DILocation(line: 197, column: 98, scope: !273)
!304 = !DILocation(line: 197, column: 96, scope: !273)
!305 = !DILocation(line: 197, column: 106, scope: !273)
!306 = !DILocation(line: 197, column: 89, scope: !273)
!307 = !DILocation(line: 197, column: 30, scope: !273)
!308 = !DILocation(line: 197, column: 28, scope: !273)
!309 = !DILocation(line: 198, column: 21, scope: !310)
!310 = distinct !DILexicalBlock(scope: !273, file: !3, line: 198, column: 21)
!311 = !DILocation(line: 198, column: 32, scope: !310)
!312 = !DILocation(line: 198, column: 48, scope: !310)
!313 = !DILocation(line: 198, column: 51, scope: !310)
!314 = !DILocation(line: 198, column: 62, scope: !310)
!315 = !DILocation(line: 198, column: 21, scope: !273)
!316 = !DILocation(line: 200, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !3, line: 199, column: 17)
!318 = !DILocation(line: 203, column: 17, scope: !273)
!319 = !DILocation(line: 203, column: 22, scope: !273)
!320 = !DILocation(line: 203, column: 32, scope: !273)
!321 = !DILocation(line: 203, column: 43, scope: !273)
!322 = !DILocation(line: 203, column: 30, scope: !273)
!323 = !DILocation(line: 203, column: 59, scope: !273)
!324 = !DILocation(line: 205, column: 34, scope: !273)
!325 = !DILocation(line: 205, column: 27, scope: !273)
!326 = !DILocation(line: 205, column: 25, scope: !273)
!327 = !DILocation(line: 206, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !273, file: !3, line: 206, column: 21)
!329 = !DILocation(line: 206, column: 21, scope: !273)
!330 = !DILocation(line: 208, column: 22, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 207, column: 17)
!332 = !DILocation(line: 208, column: 30, scope: !331)
!333 = !DILocation(line: 209, column: 17, scope: !331)
!334 = !DILocation(line: 210, column: 34, scope: !273)
!335 = !DILocation(line: 210, column: 27, scope: !273)
!336 = !DILocation(line: 210, column: 25, scope: !273)
!337 = !DILocation(line: 211, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !273, file: !3, line: 211, column: 21)
!339 = !DILocation(line: 211, column: 21, scope: !273)
!340 = !DILocation(line: 213, column: 22, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 212, column: 17)
!342 = !DILocation(line: 213, column: 30, scope: !341)
!343 = !DILocation(line: 214, column: 17, scope: !341)
!344 = !DILocation(line: 215, column: 13, scope: !273)
!345 = !DILocation(line: 217, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !258, file: !3, line: 217, column: 17)
!347 = !DILocation(line: 217, column: 31, scope: !346)
!348 = !DILocation(line: 217, column: 17, scope: !258)
!349 = !DILocation(line: 219, column: 30, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 218, column: 13)
!351 = !DILocation(line: 219, column: 17, scope: !350)
!352 = !DILocation(line: 220, column: 13, scope: !350)
!353 = !DILocation(line: 228, column: 5, scope: !259)
!354 = !DILocation(line: 229, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !246, file: !3, line: 229, column: 8)
!356 = !DILocation(line: 229, column: 18, scope: !355)
!357 = !DILocation(line: 229, column: 8, scope: !246)
!358 = !DILocation(line: 232, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 230, column: 5)
!360 = !DILocation(line: 233, column: 5, scope: !359)
!361 = !DILocalVariable(name: "i", scope: !362, file: !3, line: 237, type: !63)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 236, column: 9)
!363 = distinct !DILexicalBlock(scope: !355, file: !3, line: 235, column: 5)
!364 = !DILocation(line: 237, column: 17, scope: !362)
!365 = !DILocalVariable(name: "n", scope: !362, file: !3, line: 237, type: !63)
!366 = !DILocation(line: 237, column: 20, scope: !362)
!367 = !DILocalVariable(name: "intVariable", scope: !362, file: !3, line: 237, type: !63)
!368 = !DILocation(line: 237, column: 23, scope: !362)
!369 = !DILocation(line: 238, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !3, line: 238, column: 17)
!371 = !DILocation(line: 238, column: 17, scope: !370)
!372 = !DILocation(line: 238, column: 40, scope: !370)
!373 = !DILocation(line: 238, column: 17, scope: !362)
!374 = !DILocation(line: 241, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 241, column: 21)
!376 = distinct !DILexicalBlock(scope: !370, file: !3, line: 239, column: 13)
!377 = !DILocation(line: 241, column: 23, scope: !375)
!378 = !DILocation(line: 241, column: 21, scope: !376)
!379 = !DILocation(line: 243, column: 33, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !3, line: 242, column: 17)
!381 = !DILocation(line: 244, column: 28, scope: !382)
!382 = distinct !DILexicalBlock(scope: !380, file: !3, line: 244, column: 21)
!383 = !DILocation(line: 244, column: 26, scope: !382)
!384 = !DILocation(line: 244, column: 33, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 244, column: 21)
!386 = !DILocation(line: 244, column: 37, scope: !385)
!387 = !DILocation(line: 244, column: 35, scope: !385)
!388 = !DILocation(line: 244, column: 21, scope: !382)
!389 = !DILocation(line: 247, column: 36, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !3, line: 245, column: 21)
!391 = !DILocation(line: 248, column: 21, scope: !390)
!392 = !DILocation(line: 244, column: 41, scope: !385)
!393 = !DILocation(line: 244, column: 21, scope: !385)
!394 = distinct !{!394, !388, !395, !240}
!395 = !DILocation(line: 248, column: 21, scope: !382)
!396 = !DILocation(line: 249, column: 34, scope: !380)
!397 = !DILocation(line: 249, column: 21, scope: !380)
!398 = !DILocation(line: 250, column: 17, scope: !380)
!399 = !DILocation(line: 251, column: 13, scope: !376)
!400 = !DILocation(line: 254, column: 1, scope: !246)
!401 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 257, type: !69, scopeLine: 258, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!402 = !DILocalVariable(name: "data", scope: !401, file: !3, line: 259, type: !61)
!403 = !DILocation(line: 259, column: 12, scope: !401)
!404 = !DILocalVariable(name: "dataBuffer", scope: !401, file: !3, line: 260, type: !75)
!405 = !DILocation(line: 260, column: 10, scope: !401)
!406 = !DILocation(line: 261, column: 12, scope: !401)
!407 = !DILocation(line: 261, column: 10, scope: !401)
!408 = !DILocation(line: 262, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !3, line: 262, column: 8)
!410 = !DILocation(line: 262, column: 18, scope: !409)
!411 = !DILocation(line: 262, column: 8, scope: !401)
!412 = !DILocalVariable(name: "recvResult", scope: !413, file: !3, line: 269, type: !63)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 264, column: 9)
!414 = distinct !DILexicalBlock(scope: !409, file: !3, line: 263, column: 5)
!415 = !DILocation(line: 269, column: 17, scope: !413)
!416 = !DILocalVariable(name: "service", scope: !413, file: !3, line: 270, type: !90)
!417 = !DILocation(line: 270, column: 32, scope: !413)
!418 = !DILocalVariable(name: "replace", scope: !413, file: !3, line: 271, type: !61)
!419 = !DILocation(line: 271, column: 19, scope: !413)
!420 = !DILocalVariable(name: "connectSocket", scope: !413, file: !3, line: 272, type: !63)
!421 = !DILocation(line: 272, column: 20, scope: !413)
!422 = !DILocalVariable(name: "dataLen", scope: !413, file: !3, line: 273, type: !117)
!423 = !DILocation(line: 273, column: 20, scope: !413)
!424 = !DILocation(line: 273, column: 37, scope: !413)
!425 = !DILocation(line: 273, column: 30, scope: !413)
!426 = !DILocation(line: 274, column: 13, scope: !413)
!427 = !DILocation(line: 284, column: 33, scope: !428)
!428 = distinct !DILexicalBlock(scope: !413, file: !3, line: 275, column: 13)
!429 = !DILocation(line: 284, column: 31, scope: !428)
!430 = !DILocation(line: 285, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 285, column: 21)
!432 = !DILocation(line: 285, column: 35, scope: !431)
!433 = !DILocation(line: 285, column: 21, scope: !428)
!434 = !DILocation(line: 287, column: 21, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !3, line: 286, column: 17)
!436 = !DILocation(line: 289, column: 17, scope: !428)
!437 = !DILocation(line: 290, column: 25, scope: !428)
!438 = !DILocation(line: 290, column: 36, scope: !428)
!439 = !DILocation(line: 291, column: 43, scope: !428)
!440 = !DILocation(line: 291, column: 25, scope: !428)
!441 = !DILocation(line: 291, column: 34, scope: !428)
!442 = !DILocation(line: 291, column: 41, scope: !428)
!443 = !DILocation(line: 292, column: 36, scope: !428)
!444 = !DILocation(line: 292, column: 25, scope: !428)
!445 = !DILocation(line: 292, column: 34, scope: !428)
!446 = !DILocation(line: 293, column: 29, scope: !447)
!447 = distinct !DILexicalBlock(scope: !428, file: !3, line: 293, column: 21)
!448 = !DILocation(line: 293, column: 44, scope: !447)
!449 = !DILocation(line: 293, column: 21, scope: !447)
!450 = !DILocation(line: 293, column: 89, scope: !447)
!451 = !DILocation(line: 293, column: 21, scope: !428)
!452 = !DILocation(line: 295, column: 21, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !3, line: 294, column: 17)
!454 = !DILocation(line: 300, column: 35, scope: !428)
!455 = !DILocation(line: 300, column: 59, scope: !428)
!456 = !DILocation(line: 300, column: 66, scope: !428)
!457 = !DILocation(line: 300, column: 64, scope: !428)
!458 = !DILocation(line: 300, column: 98, scope: !428)
!459 = !DILocation(line: 300, column: 96, scope: !428)
!460 = !DILocation(line: 300, column: 106, scope: !428)
!461 = !DILocation(line: 300, column: 89, scope: !428)
!462 = !DILocation(line: 300, column: 30, scope: !428)
!463 = !DILocation(line: 300, column: 28, scope: !428)
!464 = !DILocation(line: 301, column: 21, scope: !465)
!465 = distinct !DILexicalBlock(scope: !428, file: !3, line: 301, column: 21)
!466 = !DILocation(line: 301, column: 32, scope: !465)
!467 = !DILocation(line: 301, column: 48, scope: !465)
!468 = !DILocation(line: 301, column: 51, scope: !465)
!469 = !DILocation(line: 301, column: 62, scope: !465)
!470 = !DILocation(line: 301, column: 21, scope: !428)
!471 = !DILocation(line: 303, column: 21, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !3, line: 302, column: 17)
!473 = !DILocation(line: 306, column: 17, scope: !428)
!474 = !DILocation(line: 306, column: 22, scope: !428)
!475 = !DILocation(line: 306, column: 32, scope: !428)
!476 = !DILocation(line: 306, column: 43, scope: !428)
!477 = !DILocation(line: 306, column: 30, scope: !428)
!478 = !DILocation(line: 306, column: 59, scope: !428)
!479 = !DILocation(line: 308, column: 34, scope: !428)
!480 = !DILocation(line: 308, column: 27, scope: !428)
!481 = !DILocation(line: 308, column: 25, scope: !428)
!482 = !DILocation(line: 309, column: 21, scope: !483)
!483 = distinct !DILexicalBlock(scope: !428, file: !3, line: 309, column: 21)
!484 = !DILocation(line: 309, column: 21, scope: !428)
!485 = !DILocation(line: 311, column: 22, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 310, column: 17)
!487 = !DILocation(line: 311, column: 30, scope: !486)
!488 = !DILocation(line: 312, column: 17, scope: !486)
!489 = !DILocation(line: 313, column: 34, scope: !428)
!490 = !DILocation(line: 313, column: 27, scope: !428)
!491 = !DILocation(line: 313, column: 25, scope: !428)
!492 = !DILocation(line: 314, column: 21, scope: !493)
!493 = distinct !DILexicalBlock(scope: !428, file: !3, line: 314, column: 21)
!494 = !DILocation(line: 314, column: 21, scope: !428)
!495 = !DILocation(line: 316, column: 22, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 315, column: 17)
!497 = !DILocation(line: 316, column: 30, scope: !496)
!498 = !DILocation(line: 317, column: 17, scope: !496)
!499 = !DILocation(line: 318, column: 13, scope: !428)
!500 = !DILocation(line: 320, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !413, file: !3, line: 320, column: 17)
!502 = !DILocation(line: 320, column: 31, scope: !501)
!503 = !DILocation(line: 320, column: 17, scope: !413)
!504 = !DILocation(line: 322, column: 30, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 321, column: 13)
!506 = !DILocation(line: 322, column: 17, scope: !505)
!507 = !DILocation(line: 323, column: 13, scope: !505)
!508 = !DILocation(line: 331, column: 5, scope: !414)
!509 = !DILocation(line: 332, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !401, file: !3, line: 332, column: 8)
!511 = !DILocation(line: 332, column: 18, scope: !510)
!512 = !DILocation(line: 332, column: 8, scope: !401)
!513 = !DILocalVariable(name: "i", scope: !514, file: !3, line: 335, type: !63)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 334, column: 9)
!515 = distinct !DILexicalBlock(scope: !510, file: !3, line: 333, column: 5)
!516 = !DILocation(line: 335, column: 17, scope: !514)
!517 = !DILocalVariable(name: "n", scope: !514, file: !3, line: 335, type: !63)
!518 = !DILocation(line: 335, column: 20, scope: !514)
!519 = !DILocalVariable(name: "intVariable", scope: !514, file: !3, line: 335, type: !63)
!520 = !DILocation(line: 335, column: 23, scope: !514)
!521 = !DILocation(line: 336, column: 24, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !3, line: 336, column: 17)
!523 = !DILocation(line: 336, column: 17, scope: !522)
!524 = !DILocation(line: 336, column: 40, scope: !522)
!525 = !DILocation(line: 336, column: 17, scope: !514)
!526 = !DILocation(line: 339, column: 21, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 339, column: 21)
!528 = distinct !DILexicalBlock(scope: !522, file: !3, line: 337, column: 13)
!529 = !DILocation(line: 339, column: 23, scope: !527)
!530 = !DILocation(line: 339, column: 21, scope: !528)
!531 = !DILocation(line: 341, column: 33, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 340, column: 17)
!533 = !DILocation(line: 342, column: 28, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !3, line: 342, column: 21)
!535 = !DILocation(line: 342, column: 26, scope: !534)
!536 = !DILocation(line: 342, column: 33, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 342, column: 21)
!538 = !DILocation(line: 342, column: 37, scope: !537)
!539 = !DILocation(line: 342, column: 35, scope: !537)
!540 = !DILocation(line: 342, column: 21, scope: !534)
!541 = !DILocation(line: 345, column: 36, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !3, line: 343, column: 21)
!543 = !DILocation(line: 346, column: 21, scope: !542)
!544 = !DILocation(line: 342, column: 41, scope: !537)
!545 = !DILocation(line: 342, column: 21, scope: !537)
!546 = distinct !{!546, !540, !547, !240}
!547 = !DILocation(line: 346, column: 21, scope: !534)
!548 = !DILocation(line: 347, column: 34, scope: !532)
!549 = !DILocation(line: 347, column: 21, scope: !532)
!550 = !DILocation(line: 348, column: 17, scope: !532)
!551 = !DILocation(line: 349, column: 13, scope: !528)
!552 = !DILocation(line: 351, column: 5, scope: !515)
!553 = !DILocation(line: 352, column: 1, scope: !401)
!554 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 355, type: !69, scopeLine: 356, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!555 = !DILocalVariable(name: "data", scope: !554, file: !3, line: 357, type: !61)
!556 = !DILocation(line: 357, column: 12, scope: !554)
!557 = !DILocalVariable(name: "dataBuffer", scope: !554, file: !3, line: 358, type: !75)
!558 = !DILocation(line: 358, column: 10, scope: !554)
!559 = !DILocation(line: 359, column: 12, scope: !554)
!560 = !DILocation(line: 359, column: 10, scope: !554)
!561 = !DILocation(line: 360, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !554, file: !3, line: 360, column: 8)
!563 = !DILocation(line: 360, column: 18, scope: !562)
!564 = !DILocation(line: 360, column: 8, scope: !554)
!565 = !DILocation(line: 363, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 361, column: 5)
!567 = !DILocation(line: 364, column: 5, scope: !566)
!568 = !DILocation(line: 368, column: 16, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !3, line: 366, column: 5)
!570 = !DILocation(line: 368, column: 9, scope: !569)
!571 = !DILocation(line: 370, column: 8, scope: !572)
!572 = distinct !DILexicalBlock(scope: !554, file: !3, line: 370, column: 8)
!573 = !DILocation(line: 370, column: 18, scope: !572)
!574 = !DILocation(line: 370, column: 8, scope: !554)
!575 = !DILocalVariable(name: "i", scope: !576, file: !3, line: 373, type: !63)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 372, column: 9)
!577 = distinct !DILexicalBlock(scope: !572, file: !3, line: 371, column: 5)
!578 = !DILocation(line: 373, column: 17, scope: !576)
!579 = !DILocalVariable(name: "n", scope: !576, file: !3, line: 373, type: !63)
!580 = !DILocation(line: 373, column: 20, scope: !576)
!581 = !DILocalVariable(name: "intVariable", scope: !576, file: !3, line: 373, type: !63)
!582 = !DILocation(line: 373, column: 23, scope: !576)
!583 = !DILocation(line: 374, column: 24, scope: !584)
!584 = distinct !DILexicalBlock(scope: !576, file: !3, line: 374, column: 17)
!585 = !DILocation(line: 374, column: 17, scope: !584)
!586 = !DILocation(line: 374, column: 40, scope: !584)
!587 = !DILocation(line: 374, column: 17, scope: !576)
!588 = !DILocation(line: 377, column: 29, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !3, line: 375, column: 13)
!590 = !DILocation(line: 378, column: 24, scope: !591)
!591 = distinct !DILexicalBlock(scope: !589, file: !3, line: 378, column: 17)
!592 = !DILocation(line: 378, column: 22, scope: !591)
!593 = !DILocation(line: 378, column: 29, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !3, line: 378, column: 17)
!595 = !DILocation(line: 378, column: 33, scope: !594)
!596 = !DILocation(line: 378, column: 31, scope: !594)
!597 = !DILocation(line: 378, column: 17, scope: !591)
!598 = !DILocation(line: 381, column: 32, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !3, line: 379, column: 17)
!600 = !DILocation(line: 382, column: 17, scope: !599)
!601 = !DILocation(line: 378, column: 37, scope: !594)
!602 = !DILocation(line: 378, column: 17, scope: !594)
!603 = distinct !{!603, !597, !604, !240}
!604 = !DILocation(line: 382, column: 17, scope: !591)
!605 = !DILocation(line: 383, column: 30, scope: !589)
!606 = !DILocation(line: 383, column: 17, scope: !589)
!607 = !DILocation(line: 384, column: 13, scope: !589)
!608 = !DILocation(line: 386, column: 5, scope: !577)
!609 = !DILocation(line: 387, column: 1, scope: !554)
!610 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 390, type: !69, scopeLine: 391, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!611 = !DILocalVariable(name: "data", scope: !610, file: !3, line: 392, type: !61)
!612 = !DILocation(line: 392, column: 12, scope: !610)
!613 = !DILocalVariable(name: "dataBuffer", scope: !610, file: !3, line: 393, type: !75)
!614 = !DILocation(line: 393, column: 10, scope: !610)
!615 = !DILocation(line: 394, column: 12, scope: !610)
!616 = !DILocation(line: 394, column: 10, scope: !610)
!617 = !DILocation(line: 395, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 395, column: 8)
!619 = !DILocation(line: 395, column: 18, scope: !618)
!620 = !DILocation(line: 395, column: 8, scope: !610)
!621 = !DILocation(line: 398, column: 16, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 396, column: 5)
!623 = !DILocation(line: 398, column: 9, scope: !622)
!624 = !DILocation(line: 399, column: 5, scope: !622)
!625 = !DILocation(line: 400, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !610, file: !3, line: 400, column: 8)
!627 = !DILocation(line: 400, column: 18, scope: !626)
!628 = !DILocation(line: 400, column: 8, scope: !610)
!629 = !DILocalVariable(name: "i", scope: !630, file: !3, line: 403, type: !63)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 402, column: 9)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 401, column: 5)
!632 = !DILocation(line: 403, column: 17, scope: !630)
!633 = !DILocalVariable(name: "n", scope: !630, file: !3, line: 403, type: !63)
!634 = !DILocation(line: 403, column: 20, scope: !630)
!635 = !DILocalVariable(name: "intVariable", scope: !630, file: !3, line: 403, type: !63)
!636 = !DILocation(line: 403, column: 23, scope: !630)
!637 = !DILocation(line: 404, column: 24, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !3, line: 404, column: 17)
!639 = !DILocation(line: 404, column: 17, scope: !638)
!640 = !DILocation(line: 404, column: 40, scope: !638)
!641 = !DILocation(line: 404, column: 17, scope: !630)
!642 = !DILocation(line: 407, column: 29, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !3, line: 405, column: 13)
!644 = !DILocation(line: 408, column: 24, scope: !645)
!645 = distinct !DILexicalBlock(scope: !643, file: !3, line: 408, column: 17)
!646 = !DILocation(line: 408, column: 22, scope: !645)
!647 = !DILocation(line: 408, column: 29, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 408, column: 17)
!649 = !DILocation(line: 408, column: 33, scope: !648)
!650 = !DILocation(line: 408, column: 31, scope: !648)
!651 = !DILocation(line: 408, column: 17, scope: !645)
!652 = !DILocation(line: 411, column: 32, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 409, column: 17)
!654 = !DILocation(line: 412, column: 17, scope: !653)
!655 = !DILocation(line: 408, column: 37, scope: !648)
!656 = !DILocation(line: 408, column: 17, scope: !648)
!657 = distinct !{!657, !651, !658, !240}
!658 = !DILocation(line: 412, column: 17, scope: !645)
!659 = !DILocation(line: 413, column: 30, scope: !643)
!660 = !DILocation(line: 413, column: 17, scope: !643)
!661 = !DILocation(line: 414, column: 13, scope: !643)
!662 = !DILocation(line: 416, column: 5, scope: !631)
!663 = !DILocation(line: 417, column: 1, scope: !610)
!664 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_07_good", scope: !3, file: !3, line: 419, type: !69, scopeLine: 420, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !71)
!665 = !DILocation(line: 421, column: 5, scope: !664)
!666 = !DILocation(line: 422, column: 5, scope: !664)
!667 = !DILocation(line: 423, column: 5, scope: !664)
!668 = !DILocation(line: 424, column: 5, scope: !664)
!669 = !DILocation(line: 425, column: 1, scope: !664)
