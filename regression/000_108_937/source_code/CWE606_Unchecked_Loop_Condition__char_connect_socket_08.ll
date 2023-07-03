; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_08.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !64 {
entry:
  ret i32 1, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !70 {
entry:
  ret i32 0, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_08_bad() #0 !dbg !72 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !77, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %data, align 8, !dbg !83
  %call = call i32 @staticReturnsTrue(), !dbg !84
  %tobool = icmp ne i32 %call, 0, !dbg !84
  br i1 %tobool, label %if.then, label %if.end32, !dbg !86

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %connectSocket, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !118, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %data, align 8, !dbg !123
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !124
  store i64 %call1, i64* %dataLen, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !126
  store i32 %call2, i32* %connectSocket, align 4, !dbg !128
  %2 = load i32, i32* %connectSocket, align 4, !dbg !129
  %cmp = icmp eq i32 %2, -1, !dbg !131
  br i1 %cmp, label %if.then3, label %if.end, !dbg !132

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call4, i32* %s_addr, align 4, !dbg !141
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !143
  store i16 %call5, i16* %sin_port, align 2, !dbg !144
  %4 = load i32, i32* %connectSocket, align 4, !dbg !145
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !147
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !148
  %cmp7 = icmp eq i32 %call6, -1, !dbg !149
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !150

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !153
  %7 = load i8*, i8** %data, align 8, !dbg !154
  %8 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !156
  %9 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub = sub i64 100, %9, !dbg !158
  %sub10 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub10, !dbg !160
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call11 to i32, !dbg !161
  store i32 %conv, i32* %recvResult, align 4, !dbg !162
  %10 = load i32, i32* %recvResult, align 4, !dbg !163
  %cmp12 = icmp eq i32 %10, -1, !dbg !165
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !167
  %cmp14 = icmp eq i32 %11, 0, !dbg !168
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !169

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !170

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !172
  %13 = load i64, i64* %dataLen, align 8, !dbg !173
  %14 = load i32, i32* %recvResult, align 4, !dbg !174
  %conv18 = sext i32 %14 to i64, !dbg !174
  %div = udiv i64 %conv18, 1, !dbg !175
  %add = add i64 %13, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %15 = load i8*, i8** %data, align 8, !dbg !178
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !179
  store i8* %call19, i8** %replace, align 8, !dbg !180
  %16 = load i8*, i8** %replace, align 8, !dbg !181
  %tobool20 = icmp ne i8* %16, null, !dbg !181
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !183

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !184
  store i8 0, i8* %17, align 1, !dbg !186
  br label %if.end22, !dbg !187

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !188
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !189
  store i8* %call23, i8** %replace, align 8, !dbg !190
  %19 = load i8*, i8** %replace, align 8, !dbg !191
  %tobool24 = icmp ne i8* %19, null, !dbg !191
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !193

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !194
  store i8 0, i8* %20, align 1, !dbg !196
  br label %if.end26, !dbg !197

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !199
  %cmp27 = icmp ne i32 %21, -1, !dbg !201
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !202

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !203
  %call30 = call i32 @close(i32 %22), !dbg !205
  br label %if.end31, !dbg !206

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !207

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsTrue(), !dbg !208
  %tobool34 = icmp ne i32 %call33, 0, !dbg !208
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !210

if.then35:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %n, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !217, metadata !DIExpression()), !dbg !218
  %23 = load i8*, i8** %data, align 8, !dbg !219
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !221
  %cmp37 = icmp eq i32 %call36, 1, !dbg !222
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !223

if.then39:                                        ; preds = %if.then35
  store i32 0, i32* %intVariable, align 4, !dbg !224
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then39
  %24 = load i32, i32* %i, align 4, !dbg !229
  %25 = load i32, i32* %n, align 4, !dbg !231
  %cmp40 = icmp slt i32 %24, %25, !dbg !232
  br i1 %cmp40, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !234
  %inc = add nsw i32 %26, 1, !dbg !234
  store i32 %inc, i32* %intVariable, align 4, !dbg !234
  br label %for.inc, !dbg !236

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !237
  %inc42 = add nsw i32 %27, 1, !dbg !237
  store i32 %inc42, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !238, !llvm.loop !239

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !242
  call void @printIntLine(i32 %28), !dbg !243
  br label %if.end43, !dbg !244

if.end43:                                         ; preds = %for.end, %if.then35
  br label %if.end44, !dbg !245

if.end44:                                         ; preds = %if.end43, %if.end32
  ret void, !dbg !246
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
define dso_local void @goodB2G1() #0 !dbg !247 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !251
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !251
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !252
  store i8* %arraydecay, i8** %data, align 8, !dbg !253
  %call = call i32 @staticReturnsTrue(), !dbg !254
  %tobool = icmp ne i32 %call, 0, !dbg !254
  br i1 %tobool, label %if.then, label %if.end32, !dbg !256

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !257, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 -1, i32* %connectSocket, align 4, !dbg !266
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !267, metadata !DIExpression()), !dbg !268
  %1 = load i8*, i8** %data, align 8, !dbg !269
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !270
  store i64 %call1, i64* %dataLen, align 8, !dbg !268
  br label %do.body, !dbg !271

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !272
  store i32 %call2, i32* %connectSocket, align 4, !dbg !274
  %2 = load i32, i32* %connectSocket, align 4, !dbg !275
  %cmp = icmp eq i32 %2, -1, !dbg !277
  br i1 %cmp, label %if.then3, label %if.end, !dbg !278

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !279

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !281
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !282
  store i16 2, i16* %sin_family, align 4, !dbg !283
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !284
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !285
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !286
  store i32 %call4, i32* %s_addr, align 4, !dbg !287
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !288
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !289
  store i16 %call5, i16* %sin_port, align 2, !dbg !290
  %4 = load i32, i32* %connectSocket, align 4, !dbg !291
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !293
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !294
  %cmp7 = icmp eq i32 %call6, -1, !dbg !295
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !296

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !297

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !299
  %7 = load i8*, i8** %data, align 8, !dbg !300
  %8 = load i64, i64* %dataLen, align 8, !dbg !301
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !302
  %9 = load i64, i64* %dataLen, align 8, !dbg !303
  %sub = sub i64 100, %9, !dbg !304
  %sub10 = sub i64 %sub, 1, !dbg !305
  %mul = mul i64 1, %sub10, !dbg !306
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !307
  %conv = trunc i64 %call11 to i32, !dbg !307
  store i32 %conv, i32* %recvResult, align 4, !dbg !308
  %10 = load i32, i32* %recvResult, align 4, !dbg !309
  %cmp12 = icmp eq i32 %10, -1, !dbg !311
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !312

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !313
  %cmp14 = icmp eq i32 %11, 0, !dbg !314
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !315

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !316

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !318
  %13 = load i64, i64* %dataLen, align 8, !dbg !319
  %14 = load i32, i32* %recvResult, align 4, !dbg !320
  %conv18 = sext i32 %14 to i64, !dbg !320
  %div = udiv i64 %conv18, 1, !dbg !321
  %add = add i64 %13, %div, !dbg !322
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !318
  store i8 0, i8* %arrayidx, align 1, !dbg !323
  %15 = load i8*, i8** %data, align 8, !dbg !324
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !325
  store i8* %call19, i8** %replace, align 8, !dbg !326
  %16 = load i8*, i8** %replace, align 8, !dbg !327
  %tobool20 = icmp ne i8* %16, null, !dbg !327
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !329

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !330
  store i8 0, i8* %17, align 1, !dbg !332
  br label %if.end22, !dbg !333

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !334
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !335
  store i8* %call23, i8** %replace, align 8, !dbg !336
  %19 = load i8*, i8** %replace, align 8, !dbg !337
  %tobool24 = icmp ne i8* %19, null, !dbg !337
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !339

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !340
  store i8 0, i8* %20, align 1, !dbg !342
  br label %if.end26, !dbg !343

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !344

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !345
  %cmp27 = icmp ne i32 %21, -1, !dbg !347
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !348

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !349
  %call30 = call i32 @close(i32 %22), !dbg !351
  br label %if.end31, !dbg !352

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !353

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsFalse(), !dbg !354
  %tobool34 = icmp ne i32 %call33, 0, !dbg !354
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !356

if.then35:                                        ; preds = %if.end32
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !357
  br label %if.end48, !dbg !359

if.else:                                          ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !360, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %n, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !366, metadata !DIExpression()), !dbg !367
  %23 = load i8*, i8** %data, align 8, !dbg !368
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !370
  %cmp37 = icmp eq i32 %call36, 1, !dbg !371
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !372

if.then39:                                        ; preds = %if.else
  %24 = load i32, i32* %n, align 4, !dbg !373
  %cmp40 = icmp slt i32 %24, 10000, !dbg !376
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !377

if.then42:                                        ; preds = %if.then39
  store i32 0, i32* %intVariable, align 4, !dbg !378
  store i32 0, i32* %i, align 4, !dbg !380
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %if.then42
  %25 = load i32, i32* %i, align 4, !dbg !383
  %26 = load i32, i32* %n, align 4, !dbg !385
  %cmp43 = icmp slt i32 %25, %26, !dbg !386
  br i1 %cmp43, label %for.body, label %for.end, !dbg !387

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !388
  %inc = add nsw i32 %27, 1, !dbg !388
  store i32 %inc, i32* %intVariable, align 4, !dbg !388
  br label %for.inc, !dbg !390

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !391
  %inc45 = add nsw i32 %28, 1, !dbg !391
  store i32 %inc45, i32* %i, align 4, !dbg !391
  br label %for.cond, !dbg !392, !llvm.loop !393

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !395
  call void @printIntLine(i32 %29), !dbg !396
  br label %if.end46, !dbg !397

if.end46:                                         ; preds = %for.end, %if.then39
  br label %if.end47, !dbg !398

if.end47:                                         ; preds = %if.end46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then35
  ret void, !dbg !399
}

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !400 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !404
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !404
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !405
  store i8* %arraydecay, i8** %data, align 8, !dbg !406
  %call = call i32 @staticReturnsTrue(), !dbg !407
  %tobool = icmp ne i32 %call, 0, !dbg !407
  br i1 %tobool, label %if.then, label %if.end32, !dbg !409

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !418, metadata !DIExpression()), !dbg !419
  store i32 -1, i32* %connectSocket, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !420, metadata !DIExpression()), !dbg !421
  %1 = load i8*, i8** %data, align 8, !dbg !422
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !423
  store i64 %call1, i64* %dataLen, align 8, !dbg !421
  br label %do.body, !dbg !424

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !425
  store i32 %call2, i32* %connectSocket, align 4, !dbg !427
  %2 = load i32, i32* %connectSocket, align 4, !dbg !428
  %cmp = icmp eq i32 %2, -1, !dbg !430
  br i1 %cmp, label %if.then3, label %if.end, !dbg !431

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !432

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !434
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !434
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !435
  store i16 2, i16* %sin_family, align 4, !dbg !436
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !437
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !438
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !439
  store i32 %call4, i32* %s_addr, align 4, !dbg !440
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !441
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !442
  store i16 %call5, i16* %sin_port, align 2, !dbg !443
  %4 = load i32, i32* %connectSocket, align 4, !dbg !444
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !446
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !447
  %cmp7 = icmp eq i32 %call6, -1, !dbg !448
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !449

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !450

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !452
  %7 = load i8*, i8** %data, align 8, !dbg !453
  %8 = load i64, i64* %dataLen, align 8, !dbg !454
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !455
  %9 = load i64, i64* %dataLen, align 8, !dbg !456
  %sub = sub i64 100, %9, !dbg !457
  %sub10 = sub i64 %sub, 1, !dbg !458
  %mul = mul i64 1, %sub10, !dbg !459
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !460
  %conv = trunc i64 %call11 to i32, !dbg !460
  store i32 %conv, i32* %recvResult, align 4, !dbg !461
  %10 = load i32, i32* %recvResult, align 4, !dbg !462
  %cmp12 = icmp eq i32 %10, -1, !dbg !464
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !465

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !466
  %cmp14 = icmp eq i32 %11, 0, !dbg !467
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !468

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !469

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !471
  %13 = load i64, i64* %dataLen, align 8, !dbg !472
  %14 = load i32, i32* %recvResult, align 4, !dbg !473
  %conv18 = sext i32 %14 to i64, !dbg !473
  %div = udiv i64 %conv18, 1, !dbg !474
  %add = add i64 %13, %div, !dbg !475
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !471
  store i8 0, i8* %arrayidx, align 1, !dbg !476
  %15 = load i8*, i8** %data, align 8, !dbg !477
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !478
  store i8* %call19, i8** %replace, align 8, !dbg !479
  %16 = load i8*, i8** %replace, align 8, !dbg !480
  %tobool20 = icmp ne i8* %16, null, !dbg !480
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !482

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !483
  store i8 0, i8* %17, align 1, !dbg !485
  br label %if.end22, !dbg !486

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !487
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !488
  store i8* %call23, i8** %replace, align 8, !dbg !489
  %19 = load i8*, i8** %replace, align 8, !dbg !490
  %tobool24 = icmp ne i8* %19, null, !dbg !490
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !492

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !493
  store i8 0, i8* %20, align 1, !dbg !495
  br label %if.end26, !dbg !496

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !497

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !498
  %cmp27 = icmp ne i32 %21, -1, !dbg !500
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !501

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !502
  %call30 = call i32 @close(i32 %22), !dbg !504
  br label %if.end31, !dbg !505

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !506

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 @staticReturnsTrue(), !dbg !507
  %tobool34 = icmp ne i32 %call33, 0, !dbg !507
  br i1 %tobool34, label %if.then35, label %if.end48, !dbg !509

if.then35:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !510, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i32* %n, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !516, metadata !DIExpression()), !dbg !517
  %23 = load i8*, i8** %data, align 8, !dbg !518
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !520
  %cmp37 = icmp eq i32 %call36, 1, !dbg !521
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !522

if.then39:                                        ; preds = %if.then35
  %24 = load i32, i32* %n, align 4, !dbg !523
  %cmp40 = icmp slt i32 %24, 10000, !dbg !526
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !527

if.then42:                                        ; preds = %if.then39
  store i32 0, i32* %intVariable, align 4, !dbg !528
  store i32 0, i32* %i, align 4, !dbg !530
  br label %for.cond, !dbg !532

for.cond:                                         ; preds = %for.inc, %if.then42
  %25 = load i32, i32* %i, align 4, !dbg !533
  %26 = load i32, i32* %n, align 4, !dbg !535
  %cmp43 = icmp slt i32 %25, %26, !dbg !536
  br i1 %cmp43, label %for.body, label %for.end, !dbg !537

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !538
  %inc = add nsw i32 %27, 1, !dbg !538
  store i32 %inc, i32* %intVariable, align 4, !dbg !538
  br label %for.inc, !dbg !540

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !541
  %inc45 = add nsw i32 %28, 1, !dbg !541
  store i32 %inc45, i32* %i, align 4, !dbg !541
  br label %for.cond, !dbg !542, !llvm.loop !543

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !545
  call void @printIntLine(i32 %29), !dbg !546
  br label %if.end46, !dbg !547

if.end46:                                         ; preds = %for.end, %if.then39
  br label %if.end47, !dbg !548

if.end47:                                         ; preds = %if.end46, %if.then35
  br label %if.end48, !dbg !549

if.end48:                                         ; preds = %if.end47, %if.end32
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
  %call = call i32 @staticReturnsFalse(), !dbg !558
  %tobool = icmp ne i32 %call, 0, !dbg !558
  br i1 %tobool, label %if.then, label %if.else, !dbg !560

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !561
  br label %if.end, !dbg !563

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !564
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !566
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !567
  %tobool3 = icmp ne i32 %call2, 0, !dbg !567
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !569

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !570, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i32* %n, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !576, metadata !DIExpression()), !dbg !577
  %2 = load i8*, i8** %data, align 8, !dbg !578
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !580
  %cmp = icmp eq i32 %call5, 1, !dbg !581
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !582

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !583
  store i32 0, i32* %i, align 4, !dbg !585
  br label %for.cond, !dbg !587

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !588
  %4 = load i32, i32* %n, align 4, !dbg !590
  %cmp7 = icmp slt i32 %3, %4, !dbg !591
  br i1 %cmp7, label %for.body, label %for.end, !dbg !592

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !593
  %inc = add nsw i32 %5, 1, !dbg !593
  store i32 %inc, i32* %intVariable, align 4, !dbg !593
  br label %for.inc, !dbg !595

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !596
  %inc8 = add nsw i32 %6, 1, !dbg !596
  store i32 %inc8, i32* %i, align 4, !dbg !596
  br label %for.cond, !dbg !597, !llvm.loop !598

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !600
  call void @printIntLine(i32 %7), !dbg !601
  br label %if.end9, !dbg !602

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !603

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !604
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !605 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !609
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !609
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !610
  store i8* %arraydecay, i8** %data, align 8, !dbg !611
  %call = call i32 @staticReturnsTrue(), !dbg !612
  %tobool = icmp ne i32 %call, 0, !dbg !612
  br i1 %tobool, label %if.then, label %if.end, !dbg !614

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !615
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !617
  br label %if.end, !dbg !618

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !619
  %tobool3 = icmp ne i32 %call2, 0, !dbg !619
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !621

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !622, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %n, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !628, metadata !DIExpression()), !dbg !629
  %2 = load i8*, i8** %data, align 8, !dbg !630
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !632
  %cmp = icmp eq i32 %call5, 1, !dbg !633
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !634

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !635
  store i32 0, i32* %i, align 4, !dbg !637
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !640
  %4 = load i32, i32* %n, align 4, !dbg !642
  %cmp7 = icmp slt i32 %3, %4, !dbg !643
  br i1 %cmp7, label %for.body, label %for.end, !dbg !644

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !645
  %inc = add nsw i32 %5, 1, !dbg !645
  store i32 %inc, i32* %intVariable, align 4, !dbg !645
  br label %for.inc, !dbg !647

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !648
  %inc8 = add nsw i32 %6, 1, !dbg !648
  store i32 %inc8, i32* %i, align 4, !dbg !648
  br label %for.cond, !dbg !649, !llvm.loop !650

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !652
  call void @printIntLine(i32 %7), !dbg !653
  br label %if.end9, !dbg !654

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !655

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_08_good() #0 !dbg !657 {
entry:
  call void @goodB2G1(), !dbg !658
  call void @goodB2G2(), !dbg !659
  call void @goodG2B1(), !dbg !660
  call void @goodG2B2(), !dbg !661
  ret void, !dbg !662
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_937/source_code")
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
!64 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 51, type: !65, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{}
!69 = !DILocation(line: 53, column: 5, scope: !64)
!70 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 56, type: !65, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!71 = !DILocation(line: 58, column: 5, scope: !70)
!72 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08_bad", scope: !1, file: !1, line: 63, type: !73, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DILocalVariable(name: "data", scope: !72, file: !1, line: 65, type: !59)
!76 = !DILocation(line: 65, column: 12, scope: !72)
!77 = !DILocalVariable(name: "dataBuffer", scope: !72, file: !1, line: 66, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 66, column: 10, scope: !72)
!82 = !DILocation(line: 67, column: 12, scope: !72)
!83 = !DILocation(line: 67, column: 10, scope: !72)
!84 = !DILocation(line: 68, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !1, line: 68, column: 8)
!86 = !DILocation(line: 68, column: 8, scope: !72)
!87 = !DILocalVariable(name: "recvResult", scope: !88, file: !1, line: 75, type: !67)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 9)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 69, column: 5)
!90 = !DILocation(line: 75, column: 17, scope: !88)
!91 = !DILocalVariable(name: "service", scope: !88, file: !1, line: 76, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !101, !108}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !51, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100, line: 40, baseType: !53)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !17, line: 33, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !109, size: 64, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !111)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DILocation(line: 76, column: 32, scope: !88)
!114 = !DILocalVariable(name: "replace", scope: !88, file: !1, line: 77, type: !59)
!115 = !DILocation(line: 77, column: 19, scope: !88)
!116 = !DILocalVariable(name: "connectSocket", scope: !88, file: !1, line: 78, type: !67)
!117 = !DILocation(line: 78, column: 20, scope: !88)
!118 = !DILocalVariable(name: "dataLen", scope: !88, file: !1, line: 79, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 79, column: 20, scope: !88)
!123 = !DILocation(line: 79, column: 37, scope: !88)
!124 = !DILocation(line: 79, column: 30, scope: !88)
!125 = !DILocation(line: 80, column: 13, scope: !88)
!126 = !DILocation(line: 90, column: 33, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 81, column: 13)
!128 = !DILocation(line: 90, column: 31, scope: !127)
!129 = !DILocation(line: 91, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 91, column: 21)
!131 = !DILocation(line: 91, column: 35, scope: !130)
!132 = !DILocation(line: 91, column: 21, scope: !127)
!133 = !DILocation(line: 93, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 92, column: 17)
!135 = !DILocation(line: 95, column: 17, scope: !127)
!136 = !DILocation(line: 96, column: 25, scope: !127)
!137 = !DILocation(line: 96, column: 36, scope: !127)
!138 = !DILocation(line: 97, column: 43, scope: !127)
!139 = !DILocation(line: 97, column: 25, scope: !127)
!140 = !DILocation(line: 97, column: 34, scope: !127)
!141 = !DILocation(line: 97, column: 41, scope: !127)
!142 = !DILocation(line: 98, column: 36, scope: !127)
!143 = !DILocation(line: 98, column: 25, scope: !127)
!144 = !DILocation(line: 98, column: 34, scope: !127)
!145 = !DILocation(line: 99, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 99, column: 21)
!147 = !DILocation(line: 99, column: 44, scope: !146)
!148 = !DILocation(line: 99, column: 21, scope: !146)
!149 = !DILocation(line: 99, column: 89, scope: !146)
!150 = !DILocation(line: 99, column: 21, scope: !127)
!151 = !DILocation(line: 101, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 100, column: 17)
!153 = !DILocation(line: 106, column: 35, scope: !127)
!154 = !DILocation(line: 106, column: 59, scope: !127)
!155 = !DILocation(line: 106, column: 66, scope: !127)
!156 = !DILocation(line: 106, column: 64, scope: !127)
!157 = !DILocation(line: 106, column: 98, scope: !127)
!158 = !DILocation(line: 106, column: 96, scope: !127)
!159 = !DILocation(line: 106, column: 106, scope: !127)
!160 = !DILocation(line: 106, column: 89, scope: !127)
!161 = !DILocation(line: 106, column: 30, scope: !127)
!162 = !DILocation(line: 106, column: 28, scope: !127)
!163 = !DILocation(line: 107, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 107, column: 21)
!165 = !DILocation(line: 107, column: 32, scope: !164)
!166 = !DILocation(line: 107, column: 48, scope: !164)
!167 = !DILocation(line: 107, column: 51, scope: !164)
!168 = !DILocation(line: 107, column: 62, scope: !164)
!169 = !DILocation(line: 107, column: 21, scope: !127)
!170 = !DILocation(line: 109, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 108, column: 17)
!172 = !DILocation(line: 112, column: 17, scope: !127)
!173 = !DILocation(line: 112, column: 22, scope: !127)
!174 = !DILocation(line: 112, column: 32, scope: !127)
!175 = !DILocation(line: 112, column: 43, scope: !127)
!176 = !DILocation(line: 112, column: 30, scope: !127)
!177 = !DILocation(line: 112, column: 59, scope: !127)
!178 = !DILocation(line: 114, column: 34, scope: !127)
!179 = !DILocation(line: 114, column: 27, scope: !127)
!180 = !DILocation(line: 114, column: 25, scope: !127)
!181 = !DILocation(line: 115, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 115, column: 21)
!183 = !DILocation(line: 115, column: 21, scope: !127)
!184 = !DILocation(line: 117, column: 22, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 116, column: 17)
!186 = !DILocation(line: 117, column: 30, scope: !185)
!187 = !DILocation(line: 118, column: 17, scope: !185)
!188 = !DILocation(line: 119, column: 34, scope: !127)
!189 = !DILocation(line: 119, column: 27, scope: !127)
!190 = !DILocation(line: 119, column: 25, scope: !127)
!191 = !DILocation(line: 120, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 120, column: 21)
!193 = !DILocation(line: 120, column: 21, scope: !127)
!194 = !DILocation(line: 122, column: 22, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 121, column: 17)
!196 = !DILocation(line: 122, column: 30, scope: !195)
!197 = !DILocation(line: 123, column: 17, scope: !195)
!198 = !DILocation(line: 124, column: 13, scope: !127)
!199 = !DILocation(line: 126, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 126, column: 17)
!201 = !DILocation(line: 126, column: 31, scope: !200)
!202 = !DILocation(line: 126, column: 17, scope: !88)
!203 = !DILocation(line: 128, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 127, column: 13)
!205 = !DILocation(line: 128, column: 17, scope: !204)
!206 = !DILocation(line: 129, column: 13, scope: !204)
!207 = !DILocation(line: 137, column: 5, scope: !89)
!208 = !DILocation(line: 138, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !72, file: !1, line: 138, column: 8)
!210 = !DILocation(line: 138, column: 8, scope: !72)
!211 = !DILocalVariable(name: "i", scope: !212, file: !1, line: 141, type: !67)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 140, column: 9)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 139, column: 5)
!214 = !DILocation(line: 141, column: 17, scope: !212)
!215 = !DILocalVariable(name: "n", scope: !212, file: !1, line: 141, type: !67)
!216 = !DILocation(line: 141, column: 20, scope: !212)
!217 = !DILocalVariable(name: "intVariable", scope: !212, file: !1, line: 141, type: !67)
!218 = !DILocation(line: 141, column: 23, scope: !212)
!219 = !DILocation(line: 142, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !1, line: 142, column: 17)
!221 = !DILocation(line: 142, column: 17, scope: !220)
!222 = !DILocation(line: 142, column: 40, scope: !220)
!223 = !DILocation(line: 142, column: 17, scope: !212)
!224 = !DILocation(line: 145, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 143, column: 13)
!226 = !DILocation(line: 146, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !1, line: 146, column: 17)
!228 = !DILocation(line: 146, column: 22, scope: !227)
!229 = !DILocation(line: 146, column: 29, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 146, column: 17)
!231 = !DILocation(line: 146, column: 33, scope: !230)
!232 = !DILocation(line: 146, column: 31, scope: !230)
!233 = !DILocation(line: 146, column: 17, scope: !227)
!234 = !DILocation(line: 149, column: 32, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 147, column: 17)
!236 = !DILocation(line: 150, column: 17, scope: !235)
!237 = !DILocation(line: 146, column: 37, scope: !230)
!238 = !DILocation(line: 146, column: 17, scope: !230)
!239 = distinct !{!239, !233, !240, !241}
!240 = !DILocation(line: 150, column: 17, scope: !227)
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 151, column: 30, scope: !225)
!243 = !DILocation(line: 151, column: 17, scope: !225)
!244 = !DILocation(line: 152, column: 13, scope: !225)
!245 = !DILocation(line: 154, column: 5, scope: !213)
!246 = !DILocation(line: 155, column: 1, scope: !72)
!247 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 162, type: !73, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!248 = !DILocalVariable(name: "data", scope: !247, file: !1, line: 164, type: !59)
!249 = !DILocation(line: 164, column: 12, scope: !247)
!250 = !DILocalVariable(name: "dataBuffer", scope: !247, file: !1, line: 165, type: !78)
!251 = !DILocation(line: 165, column: 10, scope: !247)
!252 = !DILocation(line: 166, column: 12, scope: !247)
!253 = !DILocation(line: 166, column: 10, scope: !247)
!254 = !DILocation(line: 167, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !1, line: 167, column: 8)
!256 = !DILocation(line: 167, column: 8, scope: !247)
!257 = !DILocalVariable(name: "recvResult", scope: !258, file: !1, line: 174, type: !67)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 169, column: 9)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 168, column: 5)
!260 = !DILocation(line: 174, column: 17, scope: !258)
!261 = !DILocalVariable(name: "service", scope: !258, file: !1, line: 175, type: !92)
!262 = !DILocation(line: 175, column: 32, scope: !258)
!263 = !DILocalVariable(name: "replace", scope: !258, file: !1, line: 176, type: !59)
!264 = !DILocation(line: 176, column: 19, scope: !258)
!265 = !DILocalVariable(name: "connectSocket", scope: !258, file: !1, line: 177, type: !67)
!266 = !DILocation(line: 177, column: 20, scope: !258)
!267 = !DILocalVariable(name: "dataLen", scope: !258, file: !1, line: 178, type: !119)
!268 = !DILocation(line: 178, column: 20, scope: !258)
!269 = !DILocation(line: 178, column: 37, scope: !258)
!270 = !DILocation(line: 178, column: 30, scope: !258)
!271 = !DILocation(line: 179, column: 13, scope: !258)
!272 = !DILocation(line: 189, column: 33, scope: !273)
!273 = distinct !DILexicalBlock(scope: !258, file: !1, line: 180, column: 13)
!274 = !DILocation(line: 189, column: 31, scope: !273)
!275 = !DILocation(line: 190, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 190, column: 21)
!277 = !DILocation(line: 190, column: 35, scope: !276)
!278 = !DILocation(line: 190, column: 21, scope: !273)
!279 = !DILocation(line: 192, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 191, column: 17)
!281 = !DILocation(line: 194, column: 17, scope: !273)
!282 = !DILocation(line: 195, column: 25, scope: !273)
!283 = !DILocation(line: 195, column: 36, scope: !273)
!284 = !DILocation(line: 196, column: 43, scope: !273)
!285 = !DILocation(line: 196, column: 25, scope: !273)
!286 = !DILocation(line: 196, column: 34, scope: !273)
!287 = !DILocation(line: 196, column: 41, scope: !273)
!288 = !DILocation(line: 197, column: 36, scope: !273)
!289 = !DILocation(line: 197, column: 25, scope: !273)
!290 = !DILocation(line: 197, column: 34, scope: !273)
!291 = !DILocation(line: 198, column: 29, scope: !292)
!292 = distinct !DILexicalBlock(scope: !273, file: !1, line: 198, column: 21)
!293 = !DILocation(line: 198, column: 44, scope: !292)
!294 = !DILocation(line: 198, column: 21, scope: !292)
!295 = !DILocation(line: 198, column: 89, scope: !292)
!296 = !DILocation(line: 198, column: 21, scope: !273)
!297 = !DILocation(line: 200, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !1, line: 199, column: 17)
!299 = !DILocation(line: 205, column: 35, scope: !273)
!300 = !DILocation(line: 205, column: 59, scope: !273)
!301 = !DILocation(line: 205, column: 66, scope: !273)
!302 = !DILocation(line: 205, column: 64, scope: !273)
!303 = !DILocation(line: 205, column: 98, scope: !273)
!304 = !DILocation(line: 205, column: 96, scope: !273)
!305 = !DILocation(line: 205, column: 106, scope: !273)
!306 = !DILocation(line: 205, column: 89, scope: !273)
!307 = !DILocation(line: 205, column: 30, scope: !273)
!308 = !DILocation(line: 205, column: 28, scope: !273)
!309 = !DILocation(line: 206, column: 21, scope: !310)
!310 = distinct !DILexicalBlock(scope: !273, file: !1, line: 206, column: 21)
!311 = !DILocation(line: 206, column: 32, scope: !310)
!312 = !DILocation(line: 206, column: 48, scope: !310)
!313 = !DILocation(line: 206, column: 51, scope: !310)
!314 = !DILocation(line: 206, column: 62, scope: !310)
!315 = !DILocation(line: 206, column: 21, scope: !273)
!316 = !DILocation(line: 208, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !1, line: 207, column: 17)
!318 = !DILocation(line: 211, column: 17, scope: !273)
!319 = !DILocation(line: 211, column: 22, scope: !273)
!320 = !DILocation(line: 211, column: 32, scope: !273)
!321 = !DILocation(line: 211, column: 43, scope: !273)
!322 = !DILocation(line: 211, column: 30, scope: !273)
!323 = !DILocation(line: 211, column: 59, scope: !273)
!324 = !DILocation(line: 213, column: 34, scope: !273)
!325 = !DILocation(line: 213, column: 27, scope: !273)
!326 = !DILocation(line: 213, column: 25, scope: !273)
!327 = !DILocation(line: 214, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !273, file: !1, line: 214, column: 21)
!329 = !DILocation(line: 214, column: 21, scope: !273)
!330 = !DILocation(line: 216, column: 22, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 215, column: 17)
!332 = !DILocation(line: 216, column: 30, scope: !331)
!333 = !DILocation(line: 217, column: 17, scope: !331)
!334 = !DILocation(line: 218, column: 34, scope: !273)
!335 = !DILocation(line: 218, column: 27, scope: !273)
!336 = !DILocation(line: 218, column: 25, scope: !273)
!337 = !DILocation(line: 219, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !273, file: !1, line: 219, column: 21)
!339 = !DILocation(line: 219, column: 21, scope: !273)
!340 = !DILocation(line: 221, column: 22, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 220, column: 17)
!342 = !DILocation(line: 221, column: 30, scope: !341)
!343 = !DILocation(line: 222, column: 17, scope: !341)
!344 = !DILocation(line: 223, column: 13, scope: !273)
!345 = !DILocation(line: 225, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !258, file: !1, line: 225, column: 17)
!347 = !DILocation(line: 225, column: 31, scope: !346)
!348 = !DILocation(line: 225, column: 17, scope: !258)
!349 = !DILocation(line: 227, column: 30, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !1, line: 226, column: 13)
!351 = !DILocation(line: 227, column: 17, scope: !350)
!352 = !DILocation(line: 228, column: 13, scope: !350)
!353 = !DILocation(line: 236, column: 5, scope: !259)
!354 = !DILocation(line: 237, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !247, file: !1, line: 237, column: 8)
!356 = !DILocation(line: 237, column: 8, scope: !247)
!357 = !DILocation(line: 240, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 238, column: 5)
!359 = !DILocation(line: 241, column: 5, scope: !358)
!360 = !DILocalVariable(name: "i", scope: !361, file: !1, line: 245, type: !67)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 244, column: 9)
!362 = distinct !DILexicalBlock(scope: !355, file: !1, line: 243, column: 5)
!363 = !DILocation(line: 245, column: 17, scope: !361)
!364 = !DILocalVariable(name: "n", scope: !361, file: !1, line: 245, type: !67)
!365 = !DILocation(line: 245, column: 20, scope: !361)
!366 = !DILocalVariable(name: "intVariable", scope: !361, file: !1, line: 245, type: !67)
!367 = !DILocation(line: 245, column: 23, scope: !361)
!368 = !DILocation(line: 246, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !1, line: 246, column: 17)
!370 = !DILocation(line: 246, column: 17, scope: !369)
!371 = !DILocation(line: 246, column: 40, scope: !369)
!372 = !DILocation(line: 246, column: 17, scope: !361)
!373 = !DILocation(line: 249, column: 21, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 249, column: 21)
!375 = distinct !DILexicalBlock(scope: !369, file: !1, line: 247, column: 13)
!376 = !DILocation(line: 249, column: 23, scope: !374)
!377 = !DILocation(line: 249, column: 21, scope: !375)
!378 = !DILocation(line: 251, column: 33, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !1, line: 250, column: 17)
!380 = !DILocation(line: 252, column: 28, scope: !381)
!381 = distinct !DILexicalBlock(scope: !379, file: !1, line: 252, column: 21)
!382 = !DILocation(line: 252, column: 26, scope: !381)
!383 = !DILocation(line: 252, column: 33, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !1, line: 252, column: 21)
!385 = !DILocation(line: 252, column: 37, scope: !384)
!386 = !DILocation(line: 252, column: 35, scope: !384)
!387 = !DILocation(line: 252, column: 21, scope: !381)
!388 = !DILocation(line: 255, column: 36, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !1, line: 253, column: 21)
!390 = !DILocation(line: 256, column: 21, scope: !389)
!391 = !DILocation(line: 252, column: 41, scope: !384)
!392 = !DILocation(line: 252, column: 21, scope: !384)
!393 = distinct !{!393, !387, !394, !241}
!394 = !DILocation(line: 256, column: 21, scope: !381)
!395 = !DILocation(line: 257, column: 34, scope: !379)
!396 = !DILocation(line: 257, column: 21, scope: !379)
!397 = !DILocation(line: 258, column: 17, scope: !379)
!398 = !DILocation(line: 259, column: 13, scope: !375)
!399 = !DILocation(line: 262, column: 1, scope: !247)
!400 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 265, type: !73, scopeLine: 266, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!401 = !DILocalVariable(name: "data", scope: !400, file: !1, line: 267, type: !59)
!402 = !DILocation(line: 267, column: 12, scope: !400)
!403 = !DILocalVariable(name: "dataBuffer", scope: !400, file: !1, line: 268, type: !78)
!404 = !DILocation(line: 268, column: 10, scope: !400)
!405 = !DILocation(line: 269, column: 12, scope: !400)
!406 = !DILocation(line: 269, column: 10, scope: !400)
!407 = !DILocation(line: 270, column: 8, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !1, line: 270, column: 8)
!409 = !DILocation(line: 270, column: 8, scope: !400)
!410 = !DILocalVariable(name: "recvResult", scope: !411, file: !1, line: 277, type: !67)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 272, column: 9)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 271, column: 5)
!413 = !DILocation(line: 277, column: 17, scope: !411)
!414 = !DILocalVariable(name: "service", scope: !411, file: !1, line: 278, type: !92)
!415 = !DILocation(line: 278, column: 32, scope: !411)
!416 = !DILocalVariable(name: "replace", scope: !411, file: !1, line: 279, type: !59)
!417 = !DILocation(line: 279, column: 19, scope: !411)
!418 = !DILocalVariable(name: "connectSocket", scope: !411, file: !1, line: 280, type: !67)
!419 = !DILocation(line: 280, column: 20, scope: !411)
!420 = !DILocalVariable(name: "dataLen", scope: !411, file: !1, line: 281, type: !119)
!421 = !DILocation(line: 281, column: 20, scope: !411)
!422 = !DILocation(line: 281, column: 37, scope: !411)
!423 = !DILocation(line: 281, column: 30, scope: !411)
!424 = !DILocation(line: 282, column: 13, scope: !411)
!425 = !DILocation(line: 292, column: 33, scope: !426)
!426 = distinct !DILexicalBlock(scope: !411, file: !1, line: 283, column: 13)
!427 = !DILocation(line: 292, column: 31, scope: !426)
!428 = !DILocation(line: 293, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 293, column: 21)
!430 = !DILocation(line: 293, column: 35, scope: !429)
!431 = !DILocation(line: 293, column: 21, scope: !426)
!432 = !DILocation(line: 295, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 294, column: 17)
!434 = !DILocation(line: 297, column: 17, scope: !426)
!435 = !DILocation(line: 298, column: 25, scope: !426)
!436 = !DILocation(line: 298, column: 36, scope: !426)
!437 = !DILocation(line: 299, column: 43, scope: !426)
!438 = !DILocation(line: 299, column: 25, scope: !426)
!439 = !DILocation(line: 299, column: 34, scope: !426)
!440 = !DILocation(line: 299, column: 41, scope: !426)
!441 = !DILocation(line: 300, column: 36, scope: !426)
!442 = !DILocation(line: 300, column: 25, scope: !426)
!443 = !DILocation(line: 300, column: 34, scope: !426)
!444 = !DILocation(line: 301, column: 29, scope: !445)
!445 = distinct !DILexicalBlock(scope: !426, file: !1, line: 301, column: 21)
!446 = !DILocation(line: 301, column: 44, scope: !445)
!447 = !DILocation(line: 301, column: 21, scope: !445)
!448 = !DILocation(line: 301, column: 89, scope: !445)
!449 = !DILocation(line: 301, column: 21, scope: !426)
!450 = !DILocation(line: 303, column: 21, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !1, line: 302, column: 17)
!452 = !DILocation(line: 308, column: 35, scope: !426)
!453 = !DILocation(line: 308, column: 59, scope: !426)
!454 = !DILocation(line: 308, column: 66, scope: !426)
!455 = !DILocation(line: 308, column: 64, scope: !426)
!456 = !DILocation(line: 308, column: 98, scope: !426)
!457 = !DILocation(line: 308, column: 96, scope: !426)
!458 = !DILocation(line: 308, column: 106, scope: !426)
!459 = !DILocation(line: 308, column: 89, scope: !426)
!460 = !DILocation(line: 308, column: 30, scope: !426)
!461 = !DILocation(line: 308, column: 28, scope: !426)
!462 = !DILocation(line: 309, column: 21, scope: !463)
!463 = distinct !DILexicalBlock(scope: !426, file: !1, line: 309, column: 21)
!464 = !DILocation(line: 309, column: 32, scope: !463)
!465 = !DILocation(line: 309, column: 48, scope: !463)
!466 = !DILocation(line: 309, column: 51, scope: !463)
!467 = !DILocation(line: 309, column: 62, scope: !463)
!468 = !DILocation(line: 309, column: 21, scope: !426)
!469 = !DILocation(line: 311, column: 21, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !1, line: 310, column: 17)
!471 = !DILocation(line: 314, column: 17, scope: !426)
!472 = !DILocation(line: 314, column: 22, scope: !426)
!473 = !DILocation(line: 314, column: 32, scope: !426)
!474 = !DILocation(line: 314, column: 43, scope: !426)
!475 = !DILocation(line: 314, column: 30, scope: !426)
!476 = !DILocation(line: 314, column: 59, scope: !426)
!477 = !DILocation(line: 316, column: 34, scope: !426)
!478 = !DILocation(line: 316, column: 27, scope: !426)
!479 = !DILocation(line: 316, column: 25, scope: !426)
!480 = !DILocation(line: 317, column: 21, scope: !481)
!481 = distinct !DILexicalBlock(scope: !426, file: !1, line: 317, column: 21)
!482 = !DILocation(line: 317, column: 21, scope: !426)
!483 = !DILocation(line: 319, column: 22, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 318, column: 17)
!485 = !DILocation(line: 319, column: 30, scope: !484)
!486 = !DILocation(line: 320, column: 17, scope: !484)
!487 = !DILocation(line: 321, column: 34, scope: !426)
!488 = !DILocation(line: 321, column: 27, scope: !426)
!489 = !DILocation(line: 321, column: 25, scope: !426)
!490 = !DILocation(line: 322, column: 21, scope: !491)
!491 = distinct !DILexicalBlock(scope: !426, file: !1, line: 322, column: 21)
!492 = !DILocation(line: 322, column: 21, scope: !426)
!493 = !DILocation(line: 324, column: 22, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 323, column: 17)
!495 = !DILocation(line: 324, column: 30, scope: !494)
!496 = !DILocation(line: 325, column: 17, scope: !494)
!497 = !DILocation(line: 326, column: 13, scope: !426)
!498 = !DILocation(line: 328, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !411, file: !1, line: 328, column: 17)
!500 = !DILocation(line: 328, column: 31, scope: !499)
!501 = !DILocation(line: 328, column: 17, scope: !411)
!502 = !DILocation(line: 330, column: 30, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 329, column: 13)
!504 = !DILocation(line: 330, column: 17, scope: !503)
!505 = !DILocation(line: 331, column: 13, scope: !503)
!506 = !DILocation(line: 339, column: 5, scope: !412)
!507 = !DILocation(line: 340, column: 8, scope: !508)
!508 = distinct !DILexicalBlock(scope: !400, file: !1, line: 340, column: 8)
!509 = !DILocation(line: 340, column: 8, scope: !400)
!510 = !DILocalVariable(name: "i", scope: !511, file: !1, line: 343, type: !67)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 342, column: 9)
!512 = distinct !DILexicalBlock(scope: !508, file: !1, line: 341, column: 5)
!513 = !DILocation(line: 343, column: 17, scope: !511)
!514 = !DILocalVariable(name: "n", scope: !511, file: !1, line: 343, type: !67)
!515 = !DILocation(line: 343, column: 20, scope: !511)
!516 = !DILocalVariable(name: "intVariable", scope: !511, file: !1, line: 343, type: !67)
!517 = !DILocation(line: 343, column: 23, scope: !511)
!518 = !DILocation(line: 344, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !1, line: 344, column: 17)
!520 = !DILocation(line: 344, column: 17, scope: !519)
!521 = !DILocation(line: 344, column: 40, scope: !519)
!522 = !DILocation(line: 344, column: 17, scope: !511)
!523 = !DILocation(line: 347, column: 21, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 347, column: 21)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 345, column: 13)
!526 = !DILocation(line: 347, column: 23, scope: !524)
!527 = !DILocation(line: 347, column: 21, scope: !525)
!528 = !DILocation(line: 349, column: 33, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !1, line: 348, column: 17)
!530 = !DILocation(line: 350, column: 28, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !1, line: 350, column: 21)
!532 = !DILocation(line: 350, column: 26, scope: !531)
!533 = !DILocation(line: 350, column: 33, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 350, column: 21)
!535 = !DILocation(line: 350, column: 37, scope: !534)
!536 = !DILocation(line: 350, column: 35, scope: !534)
!537 = !DILocation(line: 350, column: 21, scope: !531)
!538 = !DILocation(line: 353, column: 36, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !1, line: 351, column: 21)
!540 = !DILocation(line: 354, column: 21, scope: !539)
!541 = !DILocation(line: 350, column: 41, scope: !534)
!542 = !DILocation(line: 350, column: 21, scope: !534)
!543 = distinct !{!543, !537, !544, !241}
!544 = !DILocation(line: 354, column: 21, scope: !531)
!545 = !DILocation(line: 355, column: 34, scope: !529)
!546 = !DILocation(line: 355, column: 21, scope: !529)
!547 = !DILocation(line: 356, column: 17, scope: !529)
!548 = !DILocation(line: 357, column: 13, scope: !525)
!549 = !DILocation(line: 359, column: 5, scope: !512)
!550 = !DILocation(line: 360, column: 1, scope: !400)
!551 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 363, type: !73, scopeLine: 364, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!552 = !DILocalVariable(name: "data", scope: !551, file: !1, line: 365, type: !59)
!553 = !DILocation(line: 365, column: 12, scope: !551)
!554 = !DILocalVariable(name: "dataBuffer", scope: !551, file: !1, line: 366, type: !78)
!555 = !DILocation(line: 366, column: 10, scope: !551)
!556 = !DILocation(line: 367, column: 12, scope: !551)
!557 = !DILocation(line: 367, column: 10, scope: !551)
!558 = !DILocation(line: 368, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !551, file: !1, line: 368, column: 8)
!560 = !DILocation(line: 368, column: 8, scope: !551)
!561 = !DILocation(line: 371, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !1, line: 369, column: 5)
!563 = !DILocation(line: 372, column: 5, scope: !562)
!564 = !DILocation(line: 376, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !559, file: !1, line: 374, column: 5)
!566 = !DILocation(line: 376, column: 9, scope: !565)
!567 = !DILocation(line: 378, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !551, file: !1, line: 378, column: 8)
!569 = !DILocation(line: 378, column: 8, scope: !551)
!570 = !DILocalVariable(name: "i", scope: !571, file: !1, line: 381, type: !67)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 380, column: 9)
!572 = distinct !DILexicalBlock(scope: !568, file: !1, line: 379, column: 5)
!573 = !DILocation(line: 381, column: 17, scope: !571)
!574 = !DILocalVariable(name: "n", scope: !571, file: !1, line: 381, type: !67)
!575 = !DILocation(line: 381, column: 20, scope: !571)
!576 = !DILocalVariable(name: "intVariable", scope: !571, file: !1, line: 381, type: !67)
!577 = !DILocation(line: 381, column: 23, scope: !571)
!578 = !DILocation(line: 382, column: 24, scope: !579)
!579 = distinct !DILexicalBlock(scope: !571, file: !1, line: 382, column: 17)
!580 = !DILocation(line: 382, column: 17, scope: !579)
!581 = !DILocation(line: 382, column: 40, scope: !579)
!582 = !DILocation(line: 382, column: 17, scope: !571)
!583 = !DILocation(line: 385, column: 29, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !1, line: 383, column: 13)
!585 = !DILocation(line: 386, column: 24, scope: !586)
!586 = distinct !DILexicalBlock(scope: !584, file: !1, line: 386, column: 17)
!587 = !DILocation(line: 386, column: 22, scope: !586)
!588 = !DILocation(line: 386, column: 29, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !1, line: 386, column: 17)
!590 = !DILocation(line: 386, column: 33, scope: !589)
!591 = !DILocation(line: 386, column: 31, scope: !589)
!592 = !DILocation(line: 386, column: 17, scope: !586)
!593 = !DILocation(line: 389, column: 32, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !1, line: 387, column: 17)
!595 = !DILocation(line: 390, column: 17, scope: !594)
!596 = !DILocation(line: 386, column: 37, scope: !589)
!597 = !DILocation(line: 386, column: 17, scope: !589)
!598 = distinct !{!598, !592, !599, !241}
!599 = !DILocation(line: 390, column: 17, scope: !586)
!600 = !DILocation(line: 391, column: 30, scope: !584)
!601 = !DILocation(line: 391, column: 17, scope: !584)
!602 = !DILocation(line: 392, column: 13, scope: !584)
!603 = !DILocation(line: 394, column: 5, scope: !572)
!604 = !DILocation(line: 395, column: 1, scope: !551)
!605 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 398, type: !73, scopeLine: 399, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!606 = !DILocalVariable(name: "data", scope: !605, file: !1, line: 400, type: !59)
!607 = !DILocation(line: 400, column: 12, scope: !605)
!608 = !DILocalVariable(name: "dataBuffer", scope: !605, file: !1, line: 401, type: !78)
!609 = !DILocation(line: 401, column: 10, scope: !605)
!610 = !DILocation(line: 402, column: 12, scope: !605)
!611 = !DILocation(line: 402, column: 10, scope: !605)
!612 = !DILocation(line: 403, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !1, line: 403, column: 8)
!614 = !DILocation(line: 403, column: 8, scope: !605)
!615 = !DILocation(line: 406, column: 16, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !1, line: 404, column: 5)
!617 = !DILocation(line: 406, column: 9, scope: !616)
!618 = !DILocation(line: 407, column: 5, scope: !616)
!619 = !DILocation(line: 408, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !605, file: !1, line: 408, column: 8)
!621 = !DILocation(line: 408, column: 8, scope: !605)
!622 = !DILocalVariable(name: "i", scope: !623, file: !1, line: 411, type: !67)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 410, column: 9)
!624 = distinct !DILexicalBlock(scope: !620, file: !1, line: 409, column: 5)
!625 = !DILocation(line: 411, column: 17, scope: !623)
!626 = !DILocalVariable(name: "n", scope: !623, file: !1, line: 411, type: !67)
!627 = !DILocation(line: 411, column: 20, scope: !623)
!628 = !DILocalVariable(name: "intVariable", scope: !623, file: !1, line: 411, type: !67)
!629 = !DILocation(line: 411, column: 23, scope: !623)
!630 = !DILocation(line: 412, column: 24, scope: !631)
!631 = distinct !DILexicalBlock(scope: !623, file: !1, line: 412, column: 17)
!632 = !DILocation(line: 412, column: 17, scope: !631)
!633 = !DILocation(line: 412, column: 40, scope: !631)
!634 = !DILocation(line: 412, column: 17, scope: !623)
!635 = !DILocation(line: 415, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !1, line: 413, column: 13)
!637 = !DILocation(line: 416, column: 24, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !1, line: 416, column: 17)
!639 = !DILocation(line: 416, column: 22, scope: !638)
!640 = !DILocation(line: 416, column: 29, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !1, line: 416, column: 17)
!642 = !DILocation(line: 416, column: 33, scope: !641)
!643 = !DILocation(line: 416, column: 31, scope: !641)
!644 = !DILocation(line: 416, column: 17, scope: !638)
!645 = !DILocation(line: 419, column: 32, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !1, line: 417, column: 17)
!647 = !DILocation(line: 420, column: 17, scope: !646)
!648 = !DILocation(line: 416, column: 37, scope: !641)
!649 = !DILocation(line: 416, column: 17, scope: !641)
!650 = distinct !{!650, !644, !651, !241}
!651 = !DILocation(line: 420, column: 17, scope: !638)
!652 = !DILocation(line: 421, column: 30, scope: !636)
!653 = !DILocation(line: 421, column: 17, scope: !636)
!654 = !DILocation(line: 422, column: 13, scope: !636)
!655 = !DILocation(line: 424, column: 5, scope: !624)
!656 = !DILocation(line: 425, column: 1, scope: !605)
!657 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08_good", scope: !1, file: !1, line: 427, type: !73, scopeLine: 428, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!658 = !DILocation(line: 429, column: 5, scope: !657)
!659 = !DILocation(line: 430, column: 5, scope: !657)
!660 = !DILocation(line: 431, column: 5, scope: !657)
!661 = !DILocation(line: 432, column: 5, scope: !657)
!662 = !DILocation(line: 433, column: 1, scope: !657)
