; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_13.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_13_bad() #0 !dbg !64 {
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
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !77
  %cmp = icmp eq i32 %1, 5, !dbg !79
  br i1 %cmp, label %if.then, label %if.end31, !dbg !80

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !81, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %connectSocket, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !113, metadata !DIExpression()), !dbg !117
  %2 = load i8*, i8** %data, align 8, !dbg !118
  %call = call i64 @strlen(i8* %2) #7, !dbg !119
  store i64 %call, i64* %dataLen, align 8, !dbg !117
  br label %do.body, !dbg !120

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !121
  store i32 %call1, i32* %connectSocket, align 4, !dbg !123
  %3 = load i32, i32* %connectSocket, align 4, !dbg !124
  %cmp2 = icmp eq i32 %3, -1, !dbg !126
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !127

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !128

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !130
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !131
  store i16 2, i16* %sin_family, align 4, !dbg !132
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !133
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !134
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !135
  store i32 %call4, i32* %s_addr, align 4, !dbg !136
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !137
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !138
  store i16 %call5, i16* %sin_port, align 2, !dbg !139
  %5 = load i32, i32* %connectSocket, align 4, !dbg !140
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !142
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !143
  %cmp7 = icmp eq i32 %call6, -1, !dbg !144
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !145

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !146

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !148
  %8 = load i8*, i8** %data, align 8, !dbg !149
  %9 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !151
  %10 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub = sub i64 100, %10, !dbg !153
  %sub10 = sub i64 %sub, 1, !dbg !154
  %mul = mul i64 1, %sub10, !dbg !155
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !156
  %conv = trunc i64 %call11 to i32, !dbg !156
  store i32 %conv, i32* %recvResult, align 4, !dbg !157
  %11 = load i32, i32* %recvResult, align 4, !dbg !158
  %cmp12 = icmp eq i32 %11, -1, !dbg !160
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !161

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !162
  %cmp14 = icmp eq i32 %12, 0, !dbg !163
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !164

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !165

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !167
  %14 = load i64, i64* %dataLen, align 8, !dbg !168
  %15 = load i32, i32* %recvResult, align 4, !dbg !169
  %conv18 = sext i32 %15 to i64, !dbg !169
  %div = udiv i64 %conv18, 1, !dbg !170
  %add = add i64 %14, %div, !dbg !171
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !172
  %16 = load i8*, i8** %data, align 8, !dbg !173
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !174
  store i8* %call19, i8** %replace, align 8, !dbg !175
  %17 = load i8*, i8** %replace, align 8, !dbg !176
  %tobool = icmp ne i8* %17, null, !dbg !176
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !178

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !179
  store i8 0, i8* %18, align 1, !dbg !181
  br label %if.end21, !dbg !182

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !183
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !184
  store i8* %call22, i8** %replace, align 8, !dbg !185
  %20 = load i8*, i8** %replace, align 8, !dbg !186
  %tobool23 = icmp ne i8* %20, null, !dbg !186
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !188

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !189
  store i8 0, i8* %21, align 1, !dbg !191
  br label %if.end25, !dbg !192

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !193

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !194
  %cmp26 = icmp ne i32 %22, -1, !dbg !196
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !197

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !198
  %call29 = call i32 @close(i32 %23), !dbg !200
  br label %if.end30, !dbg !201

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !202

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !203
  %cmp32 = icmp eq i32 %24, 5, !dbg !205
  br i1 %cmp32, label %if.then34, label %if.end43, !dbg !206

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !207, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %n, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !213, metadata !DIExpression()), !dbg !214
  %25 = load i8*, i8** %data, align 8, !dbg !215
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !217
  %cmp36 = icmp eq i32 %call35, 1, !dbg !218
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !219

if.then38:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then38
  %26 = load i32, i32* %i, align 4, !dbg !225
  %27 = load i32, i32* %n, align 4, !dbg !227
  %cmp39 = icmp slt i32 %26, %27, !dbg !228
  br i1 %cmp39, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !230
  %inc = add nsw i32 %28, 1, !dbg !230
  store i32 %inc, i32* %intVariable, align 4, !dbg !230
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !233
  %inc41 = add nsw i32 %29, 1, !dbg !233
  store i32 %inc41, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !238
  call void @printIntLine(i32 %30), !dbg !239
  br label %if.end42, !dbg !240

if.end42:                                         ; preds = %for.end, %if.then34
  br label %if.end43, !dbg !241

if.end43:                                         ; preds = %if.end42, %if.end31
  ret void, !dbg !242
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
define dso_local void @goodB2G1() #0 !dbg !243 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !247
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !248
  store i8* %arraydecay, i8** %data, align 8, !dbg !249
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !250
  %cmp = icmp eq i32 %1, 5, !dbg !252
  br i1 %cmp, label %if.then, label %if.end31, !dbg !253

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !254, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 -1, i32* %connectSocket, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !264, metadata !DIExpression()), !dbg !265
  %2 = load i8*, i8** %data, align 8, !dbg !266
  %call = call i64 @strlen(i8* %2) #7, !dbg !267
  store i64 %call, i64* %dataLen, align 8, !dbg !265
  br label %do.body, !dbg !268

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !269
  store i32 %call1, i32* %connectSocket, align 4, !dbg !271
  %3 = load i32, i32* %connectSocket, align 4, !dbg !272
  %cmp2 = icmp eq i32 %3, -1, !dbg !274
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !275

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !276

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !278
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !278
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !279
  store i16 2, i16* %sin_family, align 4, !dbg !280
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !281
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !282
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !283
  store i32 %call4, i32* %s_addr, align 4, !dbg !284
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !285
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !286
  store i16 %call5, i16* %sin_port, align 2, !dbg !287
  %5 = load i32, i32* %connectSocket, align 4, !dbg !288
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !290
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !291
  %cmp7 = icmp eq i32 %call6, -1, !dbg !292
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !293

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !294

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !296
  %8 = load i8*, i8** %data, align 8, !dbg !297
  %9 = load i64, i64* %dataLen, align 8, !dbg !298
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !299
  %10 = load i64, i64* %dataLen, align 8, !dbg !300
  %sub = sub i64 100, %10, !dbg !301
  %sub10 = sub i64 %sub, 1, !dbg !302
  %mul = mul i64 1, %sub10, !dbg !303
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !304
  %conv = trunc i64 %call11 to i32, !dbg !304
  store i32 %conv, i32* %recvResult, align 4, !dbg !305
  %11 = load i32, i32* %recvResult, align 4, !dbg !306
  %cmp12 = icmp eq i32 %11, -1, !dbg !308
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !309

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !310
  %cmp14 = icmp eq i32 %12, 0, !dbg !311
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !312

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !313

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !315
  %14 = load i64, i64* %dataLen, align 8, !dbg !316
  %15 = load i32, i32* %recvResult, align 4, !dbg !317
  %conv18 = sext i32 %15 to i64, !dbg !317
  %div = udiv i64 %conv18, 1, !dbg !318
  %add = add i64 %14, %div, !dbg !319
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !315
  store i8 0, i8* %arrayidx, align 1, !dbg !320
  %16 = load i8*, i8** %data, align 8, !dbg !321
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !322
  store i8* %call19, i8** %replace, align 8, !dbg !323
  %17 = load i8*, i8** %replace, align 8, !dbg !324
  %tobool = icmp ne i8* %17, null, !dbg !324
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !326

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !327
  store i8 0, i8* %18, align 1, !dbg !329
  br label %if.end21, !dbg !330

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !331
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !332
  store i8* %call22, i8** %replace, align 8, !dbg !333
  %20 = load i8*, i8** %replace, align 8, !dbg !334
  %tobool23 = icmp ne i8* %20, null, !dbg !334
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !336

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !337
  store i8 0, i8* %21, align 1, !dbg !339
  br label %if.end25, !dbg !340

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !341

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !342
  %cmp26 = icmp ne i32 %22, -1, !dbg !344
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !345

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !346
  %call29 = call i32 @close(i32 %23), !dbg !348
  br label %if.end30, !dbg !349

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !350

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !351
  %cmp32 = icmp ne i32 %24, 5, !dbg !353
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !354

if.then34:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !355
  br label %if.end47, !dbg !357

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !358, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %n, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !364, metadata !DIExpression()), !dbg !365
  %25 = load i8*, i8** %data, align 8, !dbg !366
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !368
  %cmp36 = icmp eq i32 %call35, 1, !dbg !369
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !370

if.then38:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !371
  %cmp39 = icmp slt i32 %26, 10000, !dbg !374
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !375

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !376
  store i32 0, i32* %i, align 4, !dbg !378
  br label %for.cond, !dbg !380

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !381
  %28 = load i32, i32* %n, align 4, !dbg !383
  %cmp42 = icmp slt i32 %27, %28, !dbg !384
  br i1 %cmp42, label %for.body, label %for.end, !dbg !385

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !386
  %inc = add nsw i32 %29, 1, !dbg !386
  store i32 %inc, i32* %intVariable, align 4, !dbg !386
  br label %for.inc, !dbg !388

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !389
  %inc44 = add nsw i32 %30, 1, !dbg !389
  store i32 %inc44, i32* %i, align 4, !dbg !389
  br label %for.cond, !dbg !390, !llvm.loop !391

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !393
  call void @printIntLine(i32 %31), !dbg !394
  br label %if.end45, !dbg !395

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !396

if.end46:                                         ; preds = %if.end45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  ret void, !dbg !397
}

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !398 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !402
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !402
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !403
  store i8* %arraydecay, i8** %data, align 8, !dbg !404
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !405
  %cmp = icmp eq i32 %1, 5, !dbg !407
  br i1 %cmp, label %if.then, label %if.end31, !dbg !408

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !417, metadata !DIExpression()), !dbg !418
  store i32 -1, i32* %connectSocket, align 4, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !419, metadata !DIExpression()), !dbg !420
  %2 = load i8*, i8** %data, align 8, !dbg !421
  %call = call i64 @strlen(i8* %2) #7, !dbg !422
  store i64 %call, i64* %dataLen, align 8, !dbg !420
  br label %do.body, !dbg !423

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !424
  store i32 %call1, i32* %connectSocket, align 4, !dbg !426
  %3 = load i32, i32* %connectSocket, align 4, !dbg !427
  %cmp2 = icmp eq i32 %3, -1, !dbg !429
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !430

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !431

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !433
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !434
  store i16 2, i16* %sin_family, align 4, !dbg !435
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !436
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !437
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !438
  store i32 %call4, i32* %s_addr, align 4, !dbg !439
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !440
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !441
  store i16 %call5, i16* %sin_port, align 2, !dbg !442
  %5 = load i32, i32* %connectSocket, align 4, !dbg !443
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !445
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !446
  %cmp7 = icmp eq i32 %call6, -1, !dbg !447
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !448

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !449

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !451
  %8 = load i8*, i8** %data, align 8, !dbg !452
  %9 = load i64, i64* %dataLen, align 8, !dbg !453
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !454
  %10 = load i64, i64* %dataLen, align 8, !dbg !455
  %sub = sub i64 100, %10, !dbg !456
  %sub10 = sub i64 %sub, 1, !dbg !457
  %mul = mul i64 1, %sub10, !dbg !458
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !459
  %conv = trunc i64 %call11 to i32, !dbg !459
  store i32 %conv, i32* %recvResult, align 4, !dbg !460
  %11 = load i32, i32* %recvResult, align 4, !dbg !461
  %cmp12 = icmp eq i32 %11, -1, !dbg !463
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !464

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %recvResult, align 4, !dbg !465
  %cmp14 = icmp eq i32 %12, 0, !dbg !466
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !467

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !468

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !470
  %14 = load i64, i64* %dataLen, align 8, !dbg !471
  %15 = load i32, i32* %recvResult, align 4, !dbg !472
  %conv18 = sext i32 %15 to i64, !dbg !472
  %div = udiv i64 %conv18, 1, !dbg !473
  %add = add i64 %14, %div, !dbg !474
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !470
  store i8 0, i8* %arrayidx, align 1, !dbg !475
  %16 = load i8*, i8** %data, align 8, !dbg !476
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !477
  store i8* %call19, i8** %replace, align 8, !dbg !478
  %17 = load i8*, i8** %replace, align 8, !dbg !479
  %tobool = icmp ne i8* %17, null, !dbg !479
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !481

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %replace, align 8, !dbg !482
  store i8 0, i8* %18, align 1, !dbg !484
  br label %if.end21, !dbg !485

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %data, align 8, !dbg !486
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !487
  store i8* %call22, i8** %replace, align 8, !dbg !488
  %20 = load i8*, i8** %replace, align 8, !dbg !489
  %tobool23 = icmp ne i8* %20, null, !dbg !489
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !491

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !492
  store i8 0, i8* %21, align 1, !dbg !494
  br label %if.end25, !dbg !495

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !496

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %connectSocket, align 4, !dbg !497
  %cmp26 = icmp ne i32 %22, -1, !dbg !499
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !500

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !501
  %call29 = call i32 @close(i32 %23), !dbg !503
  br label %if.end30, !dbg !504

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !505

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !506
  %cmp32 = icmp eq i32 %24, 5, !dbg !508
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !509

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !510, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i32* %n, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !516, metadata !DIExpression()), !dbg !517
  %25 = load i8*, i8** %data, align 8, !dbg !518
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !520
  %cmp36 = icmp eq i32 %call35, 1, !dbg !521
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !522

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %n, align 4, !dbg !523
  %cmp39 = icmp slt i32 %26, 10000, !dbg !526
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !527

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %intVariable, align 4, !dbg !528
  store i32 0, i32* %i, align 4, !dbg !530
  br label %for.cond, !dbg !532

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %i, align 4, !dbg !533
  %28 = load i32, i32* %n, align 4, !dbg !535
  %cmp42 = icmp slt i32 %27, %28, !dbg !536
  br i1 %cmp42, label %for.body, label %for.end, !dbg !537

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !538
  %inc = add nsw i32 %29, 1, !dbg !538
  store i32 %inc, i32* %intVariable, align 4, !dbg !538
  br label %for.inc, !dbg !540

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !541
  %inc44 = add nsw i32 %30, 1, !dbg !541
  store i32 %inc44, i32* %i, align 4, !dbg !541
  br label %for.cond, !dbg !542, !llvm.loop !543

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !545
  call void @printIntLine(i32 %31), !dbg !546
  br label %if.end45, !dbg !547

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !548

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47, !dbg !549

if.end47:                                         ; preds = %if.end46, %if.end31
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !551 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !555
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !555
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !556
  store i8* %arraydecay, i8** %data, align 8, !dbg !557
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !558
  %cmp = icmp ne i32 %1, 5, !dbg !560
  br i1 %cmp, label %if.then, label %if.else, !dbg !561

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !562
  br label %if.end, !dbg !564

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !565
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !567
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !568
  %cmp1 = icmp eq i32 %3, 5, !dbg !570
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !571

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !572, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %n, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !578, metadata !DIExpression()), !dbg !579
  %4 = load i8*, i8** %data, align 8, !dbg !580
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !582
  %cmp4 = icmp eq i32 %call3, 1, !dbg !583
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !584

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !585
  store i32 0, i32* %i, align 4, !dbg !587
  br label %for.cond, !dbg !589

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !590
  %6 = load i32, i32* %n, align 4, !dbg !592
  %cmp6 = icmp slt i32 %5, %6, !dbg !593
  br i1 %cmp6, label %for.body, label %for.end, !dbg !594

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !595
  %inc = add nsw i32 %7, 1, !dbg !595
  store i32 %inc, i32* %intVariable, align 4, !dbg !595
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !598
  %inc7 = add nsw i32 %8, 1, !dbg !598
  store i32 %inc7, i32* %i, align 4, !dbg !598
  br label %for.cond, !dbg !599, !llvm.loop !600

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !602
  call void @printIntLine(i32 %9), !dbg !603
  br label %if.end8, !dbg !604

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !605

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !606
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !607 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !610, metadata !DIExpression()), !dbg !611
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !611
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !611
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !612
  store i8* %arraydecay, i8** %data, align 8, !dbg !613
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !614
  %cmp = icmp eq i32 %1, 5, !dbg !616
  br i1 %cmp, label %if.then, label %if.end, !dbg !617

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !618
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !620
  br label %if.end, !dbg !621

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !622
  %cmp1 = icmp eq i32 %3, 5, !dbg !624
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !625

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !626, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata i32* %n, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !632, metadata !DIExpression()), !dbg !633
  %4 = load i8*, i8** %data, align 8, !dbg !634
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !636
  %cmp4 = icmp eq i32 %call3, 1, !dbg !637
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !638

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !639
  store i32 0, i32* %i, align 4, !dbg !641
  br label %for.cond, !dbg !643

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !644
  %6 = load i32, i32* %n, align 4, !dbg !646
  %cmp6 = icmp slt i32 %5, %6, !dbg !647
  br i1 %cmp6, label %for.body, label %for.end, !dbg !648

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !649
  %inc = add nsw i32 %7, 1, !dbg !649
  store i32 %inc, i32* %intVariable, align 4, !dbg !649
  br label %for.inc, !dbg !651

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !652
  %inc7 = add nsw i32 %8, 1, !dbg !652
  store i32 %inc7, i32* %i, align 4, !dbg !652
  br label %for.cond, !dbg !653, !llvm.loop !654

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !656
  call void @printIntLine(i32 %9), !dbg !657
  br label %if.end8, !dbg !658

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !659

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_13_good() #0 !dbg !661 {
entry:
  call void @goodB2G1(), !dbg !662
  call void @goodB2G2(), !dbg !663
  call void @goodG2B1(), !dbg !664
  call void @goodG2B2(), !dbg !665
  ret void, !dbg !666
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_942/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_13_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!77 = !DILocation(line: 55, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 55, column: 8)
!79 = !DILocation(line: 55, column: 25, scope: !78)
!80 = !DILocation(line: 55, column: 8, scope: !64)
!81 = !DILocalVariable(name: "recvResult", scope: !82, file: !1, line: 62, type: !84)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 57, column: 9)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 56, column: 5)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DILocation(line: 62, column: 17, scope: !82)
!86 = !DILocalVariable(name: "service", scope: !82, file: !1, line: 63, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !96, !103}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !17, line: 240, baseType: !51, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !17, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 25, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 40, baseType: !53)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !17, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !17, line: 33, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 26, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !5)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !17, line: 245, baseType: !104, size: 64, offset: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !106)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DILocation(line: 63, column: 32, scope: !82)
!109 = !DILocalVariable(name: "replace", scope: !82, file: !1, line: 64, type: !59)
!110 = !DILocation(line: 64, column: 19, scope: !82)
!111 = !DILocalVariable(name: "connectSocket", scope: !82, file: !1, line: 65, type: !84)
!112 = !DILocation(line: 65, column: 20, scope: !82)
!113 = !DILocalVariable(name: "dataLen", scope: !82, file: !1, line: 66, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!116 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DILocation(line: 66, column: 20, scope: !82)
!118 = !DILocation(line: 66, column: 37, scope: !82)
!119 = !DILocation(line: 66, column: 30, scope: !82)
!120 = !DILocation(line: 67, column: 13, scope: !82)
!121 = !DILocation(line: 77, column: 33, scope: !122)
!122 = distinct !DILexicalBlock(scope: !82, file: !1, line: 68, column: 13)
!123 = !DILocation(line: 77, column: 31, scope: !122)
!124 = !DILocation(line: 78, column: 21, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 78, column: 21)
!126 = !DILocation(line: 78, column: 35, scope: !125)
!127 = !DILocation(line: 78, column: 21, scope: !122)
!128 = !DILocation(line: 80, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 79, column: 17)
!130 = !DILocation(line: 82, column: 17, scope: !122)
!131 = !DILocation(line: 83, column: 25, scope: !122)
!132 = !DILocation(line: 83, column: 36, scope: !122)
!133 = !DILocation(line: 84, column: 43, scope: !122)
!134 = !DILocation(line: 84, column: 25, scope: !122)
!135 = !DILocation(line: 84, column: 34, scope: !122)
!136 = !DILocation(line: 84, column: 41, scope: !122)
!137 = !DILocation(line: 85, column: 36, scope: !122)
!138 = !DILocation(line: 85, column: 25, scope: !122)
!139 = !DILocation(line: 85, column: 34, scope: !122)
!140 = !DILocation(line: 86, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !1, line: 86, column: 21)
!142 = !DILocation(line: 86, column: 44, scope: !141)
!143 = !DILocation(line: 86, column: 21, scope: !141)
!144 = !DILocation(line: 86, column: 89, scope: !141)
!145 = !DILocation(line: 86, column: 21, scope: !122)
!146 = !DILocation(line: 88, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 87, column: 17)
!148 = !DILocation(line: 93, column: 35, scope: !122)
!149 = !DILocation(line: 93, column: 59, scope: !122)
!150 = !DILocation(line: 93, column: 66, scope: !122)
!151 = !DILocation(line: 93, column: 64, scope: !122)
!152 = !DILocation(line: 93, column: 98, scope: !122)
!153 = !DILocation(line: 93, column: 96, scope: !122)
!154 = !DILocation(line: 93, column: 106, scope: !122)
!155 = !DILocation(line: 93, column: 89, scope: !122)
!156 = !DILocation(line: 93, column: 30, scope: !122)
!157 = !DILocation(line: 93, column: 28, scope: !122)
!158 = !DILocation(line: 94, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !122, file: !1, line: 94, column: 21)
!160 = !DILocation(line: 94, column: 32, scope: !159)
!161 = !DILocation(line: 94, column: 48, scope: !159)
!162 = !DILocation(line: 94, column: 51, scope: !159)
!163 = !DILocation(line: 94, column: 62, scope: !159)
!164 = !DILocation(line: 94, column: 21, scope: !122)
!165 = !DILocation(line: 96, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !1, line: 95, column: 17)
!167 = !DILocation(line: 99, column: 17, scope: !122)
!168 = !DILocation(line: 99, column: 22, scope: !122)
!169 = !DILocation(line: 99, column: 32, scope: !122)
!170 = !DILocation(line: 99, column: 43, scope: !122)
!171 = !DILocation(line: 99, column: 30, scope: !122)
!172 = !DILocation(line: 99, column: 59, scope: !122)
!173 = !DILocation(line: 101, column: 34, scope: !122)
!174 = !DILocation(line: 101, column: 27, scope: !122)
!175 = !DILocation(line: 101, column: 25, scope: !122)
!176 = !DILocation(line: 102, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !122, file: !1, line: 102, column: 21)
!178 = !DILocation(line: 102, column: 21, scope: !122)
!179 = !DILocation(line: 104, column: 22, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 103, column: 17)
!181 = !DILocation(line: 104, column: 30, scope: !180)
!182 = !DILocation(line: 105, column: 17, scope: !180)
!183 = !DILocation(line: 106, column: 34, scope: !122)
!184 = !DILocation(line: 106, column: 27, scope: !122)
!185 = !DILocation(line: 106, column: 25, scope: !122)
!186 = !DILocation(line: 107, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !122, file: !1, line: 107, column: 21)
!188 = !DILocation(line: 107, column: 21, scope: !122)
!189 = !DILocation(line: 109, column: 22, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 108, column: 17)
!191 = !DILocation(line: 109, column: 30, scope: !190)
!192 = !DILocation(line: 110, column: 17, scope: !190)
!193 = !DILocation(line: 111, column: 13, scope: !122)
!194 = !DILocation(line: 113, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !82, file: !1, line: 113, column: 17)
!196 = !DILocation(line: 113, column: 31, scope: !195)
!197 = !DILocation(line: 113, column: 17, scope: !82)
!198 = !DILocation(line: 115, column: 30, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 114, column: 13)
!200 = !DILocation(line: 115, column: 17, scope: !199)
!201 = !DILocation(line: 116, column: 13, scope: !199)
!202 = !DILocation(line: 124, column: 5, scope: !83)
!203 = !DILocation(line: 125, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !64, file: !1, line: 125, column: 8)
!205 = !DILocation(line: 125, column: 25, scope: !204)
!206 = !DILocation(line: 125, column: 8, scope: !64)
!207 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 128, type: !84)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 127, column: 9)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 126, column: 5)
!210 = !DILocation(line: 128, column: 17, scope: !208)
!211 = !DILocalVariable(name: "n", scope: !208, file: !1, line: 128, type: !84)
!212 = !DILocation(line: 128, column: 20, scope: !208)
!213 = !DILocalVariable(name: "intVariable", scope: !208, file: !1, line: 128, type: !84)
!214 = !DILocation(line: 128, column: 23, scope: !208)
!215 = !DILocation(line: 129, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !208, file: !1, line: 129, column: 17)
!217 = !DILocation(line: 129, column: 17, scope: !216)
!218 = !DILocation(line: 129, column: 40, scope: !216)
!219 = !DILocation(line: 129, column: 17, scope: !208)
!220 = !DILocation(line: 132, column: 29, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !1, line: 130, column: 13)
!222 = !DILocation(line: 133, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !1, line: 133, column: 17)
!224 = !DILocation(line: 133, column: 22, scope: !223)
!225 = !DILocation(line: 133, column: 29, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 133, column: 17)
!227 = !DILocation(line: 133, column: 33, scope: !226)
!228 = !DILocation(line: 133, column: 31, scope: !226)
!229 = !DILocation(line: 133, column: 17, scope: !223)
!230 = !DILocation(line: 136, column: 32, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 134, column: 17)
!232 = !DILocation(line: 137, column: 17, scope: !231)
!233 = !DILocation(line: 133, column: 37, scope: !226)
!234 = !DILocation(line: 133, column: 17, scope: !226)
!235 = distinct !{!235, !229, !236, !237}
!236 = !DILocation(line: 137, column: 17, scope: !223)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 138, column: 30, scope: !221)
!239 = !DILocation(line: 138, column: 17, scope: !221)
!240 = !DILocation(line: 139, column: 13, scope: !221)
!241 = !DILocation(line: 141, column: 5, scope: !209)
!242 = !DILocation(line: 142, column: 1, scope: !64)
!243 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 149, type: !65, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!244 = !DILocalVariable(name: "data", scope: !243, file: !1, line: 151, type: !59)
!245 = !DILocation(line: 151, column: 12, scope: !243)
!246 = !DILocalVariable(name: "dataBuffer", scope: !243, file: !1, line: 152, type: !71)
!247 = !DILocation(line: 152, column: 10, scope: !243)
!248 = !DILocation(line: 153, column: 12, scope: !243)
!249 = !DILocation(line: 153, column: 10, scope: !243)
!250 = !DILocation(line: 154, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !243, file: !1, line: 154, column: 8)
!252 = !DILocation(line: 154, column: 25, scope: !251)
!253 = !DILocation(line: 154, column: 8, scope: !243)
!254 = !DILocalVariable(name: "recvResult", scope: !255, file: !1, line: 161, type: !84)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 156, column: 9)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 155, column: 5)
!257 = !DILocation(line: 161, column: 17, scope: !255)
!258 = !DILocalVariable(name: "service", scope: !255, file: !1, line: 162, type: !87)
!259 = !DILocation(line: 162, column: 32, scope: !255)
!260 = !DILocalVariable(name: "replace", scope: !255, file: !1, line: 163, type: !59)
!261 = !DILocation(line: 163, column: 19, scope: !255)
!262 = !DILocalVariable(name: "connectSocket", scope: !255, file: !1, line: 164, type: !84)
!263 = !DILocation(line: 164, column: 20, scope: !255)
!264 = !DILocalVariable(name: "dataLen", scope: !255, file: !1, line: 165, type: !114)
!265 = !DILocation(line: 165, column: 20, scope: !255)
!266 = !DILocation(line: 165, column: 37, scope: !255)
!267 = !DILocation(line: 165, column: 30, scope: !255)
!268 = !DILocation(line: 166, column: 13, scope: !255)
!269 = !DILocation(line: 176, column: 33, scope: !270)
!270 = distinct !DILexicalBlock(scope: !255, file: !1, line: 167, column: 13)
!271 = !DILocation(line: 176, column: 31, scope: !270)
!272 = !DILocation(line: 177, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 177, column: 21)
!274 = !DILocation(line: 177, column: 35, scope: !273)
!275 = !DILocation(line: 177, column: 21, scope: !270)
!276 = !DILocation(line: 179, column: 21, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 178, column: 17)
!278 = !DILocation(line: 181, column: 17, scope: !270)
!279 = !DILocation(line: 182, column: 25, scope: !270)
!280 = !DILocation(line: 182, column: 36, scope: !270)
!281 = !DILocation(line: 183, column: 43, scope: !270)
!282 = !DILocation(line: 183, column: 25, scope: !270)
!283 = !DILocation(line: 183, column: 34, scope: !270)
!284 = !DILocation(line: 183, column: 41, scope: !270)
!285 = !DILocation(line: 184, column: 36, scope: !270)
!286 = !DILocation(line: 184, column: 25, scope: !270)
!287 = !DILocation(line: 184, column: 34, scope: !270)
!288 = !DILocation(line: 185, column: 29, scope: !289)
!289 = distinct !DILexicalBlock(scope: !270, file: !1, line: 185, column: 21)
!290 = !DILocation(line: 185, column: 44, scope: !289)
!291 = !DILocation(line: 185, column: 21, scope: !289)
!292 = !DILocation(line: 185, column: 89, scope: !289)
!293 = !DILocation(line: 185, column: 21, scope: !270)
!294 = !DILocation(line: 187, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 186, column: 17)
!296 = !DILocation(line: 192, column: 35, scope: !270)
!297 = !DILocation(line: 192, column: 59, scope: !270)
!298 = !DILocation(line: 192, column: 66, scope: !270)
!299 = !DILocation(line: 192, column: 64, scope: !270)
!300 = !DILocation(line: 192, column: 98, scope: !270)
!301 = !DILocation(line: 192, column: 96, scope: !270)
!302 = !DILocation(line: 192, column: 106, scope: !270)
!303 = !DILocation(line: 192, column: 89, scope: !270)
!304 = !DILocation(line: 192, column: 30, scope: !270)
!305 = !DILocation(line: 192, column: 28, scope: !270)
!306 = !DILocation(line: 193, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !270, file: !1, line: 193, column: 21)
!308 = !DILocation(line: 193, column: 32, scope: !307)
!309 = !DILocation(line: 193, column: 48, scope: !307)
!310 = !DILocation(line: 193, column: 51, scope: !307)
!311 = !DILocation(line: 193, column: 62, scope: !307)
!312 = !DILocation(line: 193, column: 21, scope: !270)
!313 = !DILocation(line: 195, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 194, column: 17)
!315 = !DILocation(line: 198, column: 17, scope: !270)
!316 = !DILocation(line: 198, column: 22, scope: !270)
!317 = !DILocation(line: 198, column: 32, scope: !270)
!318 = !DILocation(line: 198, column: 43, scope: !270)
!319 = !DILocation(line: 198, column: 30, scope: !270)
!320 = !DILocation(line: 198, column: 59, scope: !270)
!321 = !DILocation(line: 200, column: 34, scope: !270)
!322 = !DILocation(line: 200, column: 27, scope: !270)
!323 = !DILocation(line: 200, column: 25, scope: !270)
!324 = !DILocation(line: 201, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !270, file: !1, line: 201, column: 21)
!326 = !DILocation(line: 201, column: 21, scope: !270)
!327 = !DILocation(line: 203, column: 22, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 202, column: 17)
!329 = !DILocation(line: 203, column: 30, scope: !328)
!330 = !DILocation(line: 204, column: 17, scope: !328)
!331 = !DILocation(line: 205, column: 34, scope: !270)
!332 = !DILocation(line: 205, column: 27, scope: !270)
!333 = !DILocation(line: 205, column: 25, scope: !270)
!334 = !DILocation(line: 206, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !270, file: !1, line: 206, column: 21)
!336 = !DILocation(line: 206, column: 21, scope: !270)
!337 = !DILocation(line: 208, column: 22, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 207, column: 17)
!339 = !DILocation(line: 208, column: 30, scope: !338)
!340 = !DILocation(line: 209, column: 17, scope: !338)
!341 = !DILocation(line: 210, column: 13, scope: !270)
!342 = !DILocation(line: 212, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !255, file: !1, line: 212, column: 17)
!344 = !DILocation(line: 212, column: 31, scope: !343)
!345 = !DILocation(line: 212, column: 17, scope: !255)
!346 = !DILocation(line: 214, column: 30, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 213, column: 13)
!348 = !DILocation(line: 214, column: 17, scope: !347)
!349 = !DILocation(line: 215, column: 13, scope: !347)
!350 = !DILocation(line: 223, column: 5, scope: !256)
!351 = !DILocation(line: 224, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !243, file: !1, line: 224, column: 8)
!353 = !DILocation(line: 224, column: 25, scope: !352)
!354 = !DILocation(line: 224, column: 8, scope: !243)
!355 = !DILocation(line: 227, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 225, column: 5)
!357 = !DILocation(line: 228, column: 5, scope: !356)
!358 = !DILocalVariable(name: "i", scope: !359, file: !1, line: 232, type: !84)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 231, column: 9)
!360 = distinct !DILexicalBlock(scope: !352, file: !1, line: 230, column: 5)
!361 = !DILocation(line: 232, column: 17, scope: !359)
!362 = !DILocalVariable(name: "n", scope: !359, file: !1, line: 232, type: !84)
!363 = !DILocation(line: 232, column: 20, scope: !359)
!364 = !DILocalVariable(name: "intVariable", scope: !359, file: !1, line: 232, type: !84)
!365 = !DILocation(line: 232, column: 23, scope: !359)
!366 = !DILocation(line: 233, column: 24, scope: !367)
!367 = distinct !DILexicalBlock(scope: !359, file: !1, line: 233, column: 17)
!368 = !DILocation(line: 233, column: 17, scope: !367)
!369 = !DILocation(line: 233, column: 40, scope: !367)
!370 = !DILocation(line: 233, column: 17, scope: !359)
!371 = !DILocation(line: 236, column: 21, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 236, column: 21)
!373 = distinct !DILexicalBlock(scope: !367, file: !1, line: 234, column: 13)
!374 = !DILocation(line: 236, column: 23, scope: !372)
!375 = !DILocation(line: 236, column: 21, scope: !373)
!376 = !DILocation(line: 238, column: 33, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 237, column: 17)
!378 = !DILocation(line: 239, column: 28, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !1, line: 239, column: 21)
!380 = !DILocation(line: 239, column: 26, scope: !379)
!381 = !DILocation(line: 239, column: 33, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 239, column: 21)
!383 = !DILocation(line: 239, column: 37, scope: !382)
!384 = !DILocation(line: 239, column: 35, scope: !382)
!385 = !DILocation(line: 239, column: 21, scope: !379)
!386 = !DILocation(line: 242, column: 36, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 240, column: 21)
!388 = !DILocation(line: 243, column: 21, scope: !387)
!389 = !DILocation(line: 239, column: 41, scope: !382)
!390 = !DILocation(line: 239, column: 21, scope: !382)
!391 = distinct !{!391, !385, !392, !237}
!392 = !DILocation(line: 243, column: 21, scope: !379)
!393 = !DILocation(line: 244, column: 34, scope: !377)
!394 = !DILocation(line: 244, column: 21, scope: !377)
!395 = !DILocation(line: 245, column: 17, scope: !377)
!396 = !DILocation(line: 246, column: 13, scope: !373)
!397 = !DILocation(line: 249, column: 1, scope: !243)
!398 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 252, type: !65, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!399 = !DILocalVariable(name: "data", scope: !398, file: !1, line: 254, type: !59)
!400 = !DILocation(line: 254, column: 12, scope: !398)
!401 = !DILocalVariable(name: "dataBuffer", scope: !398, file: !1, line: 255, type: !71)
!402 = !DILocation(line: 255, column: 10, scope: !398)
!403 = !DILocation(line: 256, column: 12, scope: !398)
!404 = !DILocation(line: 256, column: 10, scope: !398)
!405 = !DILocation(line: 257, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !398, file: !1, line: 257, column: 8)
!407 = !DILocation(line: 257, column: 25, scope: !406)
!408 = !DILocation(line: 257, column: 8, scope: !398)
!409 = !DILocalVariable(name: "recvResult", scope: !410, file: !1, line: 264, type: !84)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 259, column: 9)
!411 = distinct !DILexicalBlock(scope: !406, file: !1, line: 258, column: 5)
!412 = !DILocation(line: 264, column: 17, scope: !410)
!413 = !DILocalVariable(name: "service", scope: !410, file: !1, line: 265, type: !87)
!414 = !DILocation(line: 265, column: 32, scope: !410)
!415 = !DILocalVariable(name: "replace", scope: !410, file: !1, line: 266, type: !59)
!416 = !DILocation(line: 266, column: 19, scope: !410)
!417 = !DILocalVariable(name: "connectSocket", scope: !410, file: !1, line: 267, type: !84)
!418 = !DILocation(line: 267, column: 20, scope: !410)
!419 = !DILocalVariable(name: "dataLen", scope: !410, file: !1, line: 268, type: !114)
!420 = !DILocation(line: 268, column: 20, scope: !410)
!421 = !DILocation(line: 268, column: 37, scope: !410)
!422 = !DILocation(line: 268, column: 30, scope: !410)
!423 = !DILocation(line: 269, column: 13, scope: !410)
!424 = !DILocation(line: 279, column: 33, scope: !425)
!425 = distinct !DILexicalBlock(scope: !410, file: !1, line: 270, column: 13)
!426 = !DILocation(line: 279, column: 31, scope: !425)
!427 = !DILocation(line: 280, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !1, line: 280, column: 21)
!429 = !DILocation(line: 280, column: 35, scope: !428)
!430 = !DILocation(line: 280, column: 21, scope: !425)
!431 = !DILocation(line: 282, column: 21, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !1, line: 281, column: 17)
!433 = !DILocation(line: 284, column: 17, scope: !425)
!434 = !DILocation(line: 285, column: 25, scope: !425)
!435 = !DILocation(line: 285, column: 36, scope: !425)
!436 = !DILocation(line: 286, column: 43, scope: !425)
!437 = !DILocation(line: 286, column: 25, scope: !425)
!438 = !DILocation(line: 286, column: 34, scope: !425)
!439 = !DILocation(line: 286, column: 41, scope: !425)
!440 = !DILocation(line: 287, column: 36, scope: !425)
!441 = !DILocation(line: 287, column: 25, scope: !425)
!442 = !DILocation(line: 287, column: 34, scope: !425)
!443 = !DILocation(line: 288, column: 29, scope: !444)
!444 = distinct !DILexicalBlock(scope: !425, file: !1, line: 288, column: 21)
!445 = !DILocation(line: 288, column: 44, scope: !444)
!446 = !DILocation(line: 288, column: 21, scope: !444)
!447 = !DILocation(line: 288, column: 89, scope: !444)
!448 = !DILocation(line: 288, column: 21, scope: !425)
!449 = !DILocation(line: 290, column: 21, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 289, column: 17)
!451 = !DILocation(line: 295, column: 35, scope: !425)
!452 = !DILocation(line: 295, column: 59, scope: !425)
!453 = !DILocation(line: 295, column: 66, scope: !425)
!454 = !DILocation(line: 295, column: 64, scope: !425)
!455 = !DILocation(line: 295, column: 98, scope: !425)
!456 = !DILocation(line: 295, column: 96, scope: !425)
!457 = !DILocation(line: 295, column: 106, scope: !425)
!458 = !DILocation(line: 295, column: 89, scope: !425)
!459 = !DILocation(line: 295, column: 30, scope: !425)
!460 = !DILocation(line: 295, column: 28, scope: !425)
!461 = !DILocation(line: 296, column: 21, scope: !462)
!462 = distinct !DILexicalBlock(scope: !425, file: !1, line: 296, column: 21)
!463 = !DILocation(line: 296, column: 32, scope: !462)
!464 = !DILocation(line: 296, column: 48, scope: !462)
!465 = !DILocation(line: 296, column: 51, scope: !462)
!466 = !DILocation(line: 296, column: 62, scope: !462)
!467 = !DILocation(line: 296, column: 21, scope: !425)
!468 = !DILocation(line: 298, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !1, line: 297, column: 17)
!470 = !DILocation(line: 301, column: 17, scope: !425)
!471 = !DILocation(line: 301, column: 22, scope: !425)
!472 = !DILocation(line: 301, column: 32, scope: !425)
!473 = !DILocation(line: 301, column: 43, scope: !425)
!474 = !DILocation(line: 301, column: 30, scope: !425)
!475 = !DILocation(line: 301, column: 59, scope: !425)
!476 = !DILocation(line: 303, column: 34, scope: !425)
!477 = !DILocation(line: 303, column: 27, scope: !425)
!478 = !DILocation(line: 303, column: 25, scope: !425)
!479 = !DILocation(line: 304, column: 21, scope: !480)
!480 = distinct !DILexicalBlock(scope: !425, file: !1, line: 304, column: 21)
!481 = !DILocation(line: 304, column: 21, scope: !425)
!482 = !DILocation(line: 306, column: 22, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !1, line: 305, column: 17)
!484 = !DILocation(line: 306, column: 30, scope: !483)
!485 = !DILocation(line: 307, column: 17, scope: !483)
!486 = !DILocation(line: 308, column: 34, scope: !425)
!487 = !DILocation(line: 308, column: 27, scope: !425)
!488 = !DILocation(line: 308, column: 25, scope: !425)
!489 = !DILocation(line: 309, column: 21, scope: !490)
!490 = distinct !DILexicalBlock(scope: !425, file: !1, line: 309, column: 21)
!491 = !DILocation(line: 309, column: 21, scope: !425)
!492 = !DILocation(line: 311, column: 22, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !1, line: 310, column: 17)
!494 = !DILocation(line: 311, column: 30, scope: !493)
!495 = !DILocation(line: 312, column: 17, scope: !493)
!496 = !DILocation(line: 313, column: 13, scope: !425)
!497 = !DILocation(line: 315, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !410, file: !1, line: 315, column: 17)
!499 = !DILocation(line: 315, column: 31, scope: !498)
!500 = !DILocation(line: 315, column: 17, scope: !410)
!501 = !DILocation(line: 317, column: 30, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 316, column: 13)
!503 = !DILocation(line: 317, column: 17, scope: !502)
!504 = !DILocation(line: 318, column: 13, scope: !502)
!505 = !DILocation(line: 326, column: 5, scope: !411)
!506 = !DILocation(line: 327, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !398, file: !1, line: 327, column: 8)
!508 = !DILocation(line: 327, column: 25, scope: !507)
!509 = !DILocation(line: 327, column: 8, scope: !398)
!510 = !DILocalVariable(name: "i", scope: !511, file: !1, line: 330, type: !84)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 329, column: 9)
!512 = distinct !DILexicalBlock(scope: !507, file: !1, line: 328, column: 5)
!513 = !DILocation(line: 330, column: 17, scope: !511)
!514 = !DILocalVariable(name: "n", scope: !511, file: !1, line: 330, type: !84)
!515 = !DILocation(line: 330, column: 20, scope: !511)
!516 = !DILocalVariable(name: "intVariable", scope: !511, file: !1, line: 330, type: !84)
!517 = !DILocation(line: 330, column: 23, scope: !511)
!518 = !DILocation(line: 331, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !1, line: 331, column: 17)
!520 = !DILocation(line: 331, column: 17, scope: !519)
!521 = !DILocation(line: 331, column: 40, scope: !519)
!522 = !DILocation(line: 331, column: 17, scope: !511)
!523 = !DILocation(line: 334, column: 21, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 334, column: 21)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 332, column: 13)
!526 = !DILocation(line: 334, column: 23, scope: !524)
!527 = !DILocation(line: 334, column: 21, scope: !525)
!528 = !DILocation(line: 336, column: 33, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !1, line: 335, column: 17)
!530 = !DILocation(line: 337, column: 28, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !1, line: 337, column: 21)
!532 = !DILocation(line: 337, column: 26, scope: !531)
!533 = !DILocation(line: 337, column: 33, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 337, column: 21)
!535 = !DILocation(line: 337, column: 37, scope: !534)
!536 = !DILocation(line: 337, column: 35, scope: !534)
!537 = !DILocation(line: 337, column: 21, scope: !531)
!538 = !DILocation(line: 340, column: 36, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !1, line: 338, column: 21)
!540 = !DILocation(line: 341, column: 21, scope: !539)
!541 = !DILocation(line: 337, column: 41, scope: !534)
!542 = !DILocation(line: 337, column: 21, scope: !534)
!543 = distinct !{!543, !537, !544, !237}
!544 = !DILocation(line: 341, column: 21, scope: !531)
!545 = !DILocation(line: 342, column: 34, scope: !529)
!546 = !DILocation(line: 342, column: 21, scope: !529)
!547 = !DILocation(line: 343, column: 17, scope: !529)
!548 = !DILocation(line: 344, column: 13, scope: !525)
!549 = !DILocation(line: 346, column: 5, scope: !512)
!550 = !DILocation(line: 347, column: 1, scope: !398)
!551 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 350, type: !65, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!552 = !DILocalVariable(name: "data", scope: !551, file: !1, line: 352, type: !59)
!553 = !DILocation(line: 352, column: 12, scope: !551)
!554 = !DILocalVariable(name: "dataBuffer", scope: !551, file: !1, line: 353, type: !71)
!555 = !DILocation(line: 353, column: 10, scope: !551)
!556 = !DILocation(line: 354, column: 12, scope: !551)
!557 = !DILocation(line: 354, column: 10, scope: !551)
!558 = !DILocation(line: 355, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !551, file: !1, line: 355, column: 8)
!560 = !DILocation(line: 355, column: 25, scope: !559)
!561 = !DILocation(line: 355, column: 8, scope: !551)
!562 = !DILocation(line: 358, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 356, column: 5)
!564 = !DILocation(line: 359, column: 5, scope: !563)
!565 = !DILocation(line: 363, column: 16, scope: !566)
!566 = distinct !DILexicalBlock(scope: !559, file: !1, line: 361, column: 5)
!567 = !DILocation(line: 363, column: 9, scope: !566)
!568 = !DILocation(line: 365, column: 8, scope: !569)
!569 = distinct !DILexicalBlock(scope: !551, file: !1, line: 365, column: 8)
!570 = !DILocation(line: 365, column: 25, scope: !569)
!571 = !DILocation(line: 365, column: 8, scope: !551)
!572 = !DILocalVariable(name: "i", scope: !573, file: !1, line: 368, type: !84)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 367, column: 9)
!574 = distinct !DILexicalBlock(scope: !569, file: !1, line: 366, column: 5)
!575 = !DILocation(line: 368, column: 17, scope: !573)
!576 = !DILocalVariable(name: "n", scope: !573, file: !1, line: 368, type: !84)
!577 = !DILocation(line: 368, column: 20, scope: !573)
!578 = !DILocalVariable(name: "intVariable", scope: !573, file: !1, line: 368, type: !84)
!579 = !DILocation(line: 368, column: 23, scope: !573)
!580 = !DILocation(line: 369, column: 24, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !1, line: 369, column: 17)
!582 = !DILocation(line: 369, column: 17, scope: !581)
!583 = !DILocation(line: 369, column: 40, scope: !581)
!584 = !DILocation(line: 369, column: 17, scope: !573)
!585 = !DILocation(line: 372, column: 29, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !1, line: 370, column: 13)
!587 = !DILocation(line: 373, column: 24, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !1, line: 373, column: 17)
!589 = !DILocation(line: 373, column: 22, scope: !588)
!590 = !DILocation(line: 373, column: 29, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 373, column: 17)
!592 = !DILocation(line: 373, column: 33, scope: !591)
!593 = !DILocation(line: 373, column: 31, scope: !591)
!594 = !DILocation(line: 373, column: 17, scope: !588)
!595 = !DILocation(line: 376, column: 32, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !1, line: 374, column: 17)
!597 = !DILocation(line: 377, column: 17, scope: !596)
!598 = !DILocation(line: 373, column: 37, scope: !591)
!599 = !DILocation(line: 373, column: 17, scope: !591)
!600 = distinct !{!600, !594, !601, !237}
!601 = !DILocation(line: 377, column: 17, scope: !588)
!602 = !DILocation(line: 378, column: 30, scope: !586)
!603 = !DILocation(line: 378, column: 17, scope: !586)
!604 = !DILocation(line: 379, column: 13, scope: !586)
!605 = !DILocation(line: 381, column: 5, scope: !574)
!606 = !DILocation(line: 382, column: 1, scope: !551)
!607 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 385, type: !65, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!608 = !DILocalVariable(name: "data", scope: !607, file: !1, line: 387, type: !59)
!609 = !DILocation(line: 387, column: 12, scope: !607)
!610 = !DILocalVariable(name: "dataBuffer", scope: !607, file: !1, line: 388, type: !71)
!611 = !DILocation(line: 388, column: 10, scope: !607)
!612 = !DILocation(line: 389, column: 12, scope: !607)
!613 = !DILocation(line: 389, column: 10, scope: !607)
!614 = !DILocation(line: 390, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !1, line: 390, column: 8)
!616 = !DILocation(line: 390, column: 25, scope: !615)
!617 = !DILocation(line: 390, column: 8, scope: !607)
!618 = !DILocation(line: 393, column: 16, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !1, line: 391, column: 5)
!620 = !DILocation(line: 393, column: 9, scope: !619)
!621 = !DILocation(line: 394, column: 5, scope: !619)
!622 = !DILocation(line: 395, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !607, file: !1, line: 395, column: 8)
!624 = !DILocation(line: 395, column: 25, scope: !623)
!625 = !DILocation(line: 395, column: 8, scope: !607)
!626 = !DILocalVariable(name: "i", scope: !627, file: !1, line: 398, type: !84)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 397, column: 9)
!628 = distinct !DILexicalBlock(scope: !623, file: !1, line: 396, column: 5)
!629 = !DILocation(line: 398, column: 17, scope: !627)
!630 = !DILocalVariable(name: "n", scope: !627, file: !1, line: 398, type: !84)
!631 = !DILocation(line: 398, column: 20, scope: !627)
!632 = !DILocalVariable(name: "intVariable", scope: !627, file: !1, line: 398, type: !84)
!633 = !DILocation(line: 398, column: 23, scope: !627)
!634 = !DILocation(line: 399, column: 24, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !1, line: 399, column: 17)
!636 = !DILocation(line: 399, column: 17, scope: !635)
!637 = !DILocation(line: 399, column: 40, scope: !635)
!638 = !DILocation(line: 399, column: 17, scope: !627)
!639 = !DILocation(line: 402, column: 29, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !1, line: 400, column: 13)
!641 = !DILocation(line: 403, column: 24, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !1, line: 403, column: 17)
!643 = !DILocation(line: 403, column: 22, scope: !642)
!644 = !DILocation(line: 403, column: 29, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 403, column: 17)
!646 = !DILocation(line: 403, column: 33, scope: !645)
!647 = !DILocation(line: 403, column: 31, scope: !645)
!648 = !DILocation(line: 403, column: 17, scope: !642)
!649 = !DILocation(line: 406, column: 32, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !1, line: 404, column: 17)
!651 = !DILocation(line: 407, column: 17, scope: !650)
!652 = !DILocation(line: 403, column: 37, scope: !645)
!653 = !DILocation(line: 403, column: 17, scope: !645)
!654 = distinct !{!654, !648, !655, !237}
!655 = !DILocation(line: 407, column: 17, scope: !642)
!656 = !DILocation(line: 408, column: 30, scope: !640)
!657 = !DILocation(line: 408, column: 17, scope: !640)
!658 = !DILocation(line: 409, column: 13, scope: !640)
!659 = !DILocation(line: 411, column: 5, scope: !628)
!660 = !DILocation(line: 412, column: 1, scope: !607)
!661 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_13_good", scope: !1, file: !1, line: 414, type: !65, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!662 = !DILocation(line: 416, column: 5, scope: !661)
!663 = !DILocation(line: 417, column: 5, scope: !661)
!664 = !DILocation(line: 418, column: 5, scope: !661)
!665 = !DILocation(line: 419, column: 5, scope: !661)
!666 = !DILocation(line: 420, column: 1, scope: !661)
