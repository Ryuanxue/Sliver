; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_66a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66_bad() #0 !dbg !69 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !80, metadata !DIExpression()), !dbg !84
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !84
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !84
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !85
  store i8* %arraydecay, i8** %data, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !91, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %listenSocket, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %acceptSocket, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !115, metadata !DIExpression()), !dbg !119
  %1 = load i8*, i8** %data, align 8, !dbg !120
  %call = call i64 @strlen(i8* %1) #7, !dbg !121
  store i64 %call, i64* %dataLen, align 8, !dbg !119
  br label %do.body, !dbg !122

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !123
  store i32 %call1, i32* %listenSocket, align 4, !dbg !125
  %2 = load i32, i32* %listenSocket, align 4, !dbg !126
  %cmp = icmp eq i32 %2, -1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !130

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !132
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !133
  store i16 2, i16* %sin_family, align 4, !dbg !134
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !135
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !136
  store i32 0, i32* %s_addr, align 4, !dbg !137
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !138
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !139
  store i16 %call2, i16* %sin_port, align 2, !dbg !140
  %4 = load i32, i32* %listenSocket, align 4, !dbg !141
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !143
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !144
  %cmp4 = icmp eq i32 %call3, -1, !dbg !145
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !146

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !147

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !149
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !151
  %cmp8 = icmp eq i32 %call7, -1, !dbg !152
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !153

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !154

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !156
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !157
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !158
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !159
  %cmp12 = icmp eq i32 %8, -1, !dbg !161
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !162

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !163

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !165
  %10 = load i8*, i8** %data, align 8, !dbg !166
  %11 = load i64, i64* %dataLen, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !168
  %12 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub = sub i64 100, %12, !dbg !170
  %sub15 = sub i64 %sub, 1, !dbg !171
  %mul = mul i64 1, %sub15, !dbg !172
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !173
  %conv = trunc i64 %call16 to i32, !dbg !173
  store i32 %conv, i32* %recvResult, align 4, !dbg !174
  %13 = load i32, i32* %recvResult, align 4, !dbg !175
  %cmp17 = icmp eq i32 %13, -1, !dbg !177
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !178

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !179
  %cmp19 = icmp eq i32 %14, 0, !dbg !180
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !181

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !182

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !184
  %16 = load i64, i64* %dataLen, align 8, !dbg !185
  %17 = load i32, i32* %recvResult, align 4, !dbg !186
  %conv23 = sext i32 %17 to i64, !dbg !186
  %div = udiv i64 %conv23, 1, !dbg !187
  %add = add i64 %16, %div, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !184
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  %18 = load i8*, i8** %data, align 8, !dbg !190
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !191
  store i8* %call24, i8** %replace, align 8, !dbg !192
  %19 = load i8*, i8** %replace, align 8, !dbg !193
  %tobool = icmp ne i8* %19, null, !dbg !193
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !195

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !196
  store i8 0, i8* %20, align 1, !dbg !198
  br label %if.end26, !dbg !199

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !200
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !201
  store i8* %call27, i8** %replace, align 8, !dbg !202
  %22 = load i8*, i8** %replace, align 8, !dbg !203
  %tobool28 = icmp ne i8* %22, null, !dbg !203
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !205

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !206
  store i8 0, i8* %23, align 1, !dbg !208
  br label %if.end30, !dbg !209

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !210

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !211
  %cmp31 = icmp ne i32 %24, -1, !dbg !213
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !214

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !215
  %call34 = call i32 @close(i32 %25), !dbg !217
  br label %if.end35, !dbg !218

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !219
  %cmp36 = icmp ne i32 %26, -1, !dbg !221
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !222

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !223
  %call39 = call i32 @close(i32 %27), !dbg !225
  br label %if.end40, !dbg !226

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !227
  %arrayidx41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !228
  store i8* %28, i8** %arrayidx41, align 16, !dbg !229
  %arraydecay42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !230
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink(i8** %arraydecay42), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #4

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #6

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_badSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !233 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  %1 = load i8*, i8** %data, align 8, !dbg !242
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !243
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !245
  store i8* %2, i8** %arrayidx, align 16, !dbg !246
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !247
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink(i8** %arraydecay1), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodG2BSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !250 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !256
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !256
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !257
  store i8* %arraydecay, i8** %data, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !259, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !266, metadata !DIExpression()), !dbg !267
  store i32 -1, i32* %listenSocket, align 4, !dbg !267
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !268, metadata !DIExpression()), !dbg !269
  store i32 -1, i32* %acceptSocket, align 4, !dbg !269
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !270, metadata !DIExpression()), !dbg !271
  %1 = load i8*, i8** %data, align 8, !dbg !272
  %call = call i64 @strlen(i8* %1) #7, !dbg !273
  store i64 %call, i64* %dataLen, align 8, !dbg !271
  br label %do.body, !dbg !274

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !275
  store i32 %call1, i32* %listenSocket, align 4, !dbg !277
  %2 = load i32, i32* %listenSocket, align 4, !dbg !278
  %cmp = icmp eq i32 %2, -1, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !282

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !284
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !284
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !285
  store i16 2, i16* %sin_family, align 4, !dbg !286
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !287
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !288
  store i32 0, i32* %s_addr, align 4, !dbg !289
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !290
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !291
  store i16 %call2, i16* %sin_port, align 2, !dbg !292
  %4 = load i32, i32* %listenSocket, align 4, !dbg !293
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !295
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !296
  %cmp4 = icmp eq i32 %call3, -1, !dbg !297
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !298

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !299

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !301
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !303
  %cmp8 = icmp eq i32 %call7, -1, !dbg !304
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !305

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !306

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !308
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !309
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !310
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !311
  %cmp12 = icmp eq i32 %8, -1, !dbg !313
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !314

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !315

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !317
  %10 = load i8*, i8** %data, align 8, !dbg !318
  %11 = load i64, i64* %dataLen, align 8, !dbg !319
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !320
  %12 = load i64, i64* %dataLen, align 8, !dbg !321
  %sub = sub i64 100, %12, !dbg !322
  %sub15 = sub i64 %sub, 1, !dbg !323
  %mul = mul i64 1, %sub15, !dbg !324
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !325
  %conv = trunc i64 %call16 to i32, !dbg !325
  store i32 %conv, i32* %recvResult, align 4, !dbg !326
  %13 = load i32, i32* %recvResult, align 4, !dbg !327
  %cmp17 = icmp eq i32 %13, -1, !dbg !329
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !330

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !331
  %cmp19 = icmp eq i32 %14, 0, !dbg !332
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !333

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !334

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !336
  %16 = load i64, i64* %dataLen, align 8, !dbg !337
  %17 = load i32, i32* %recvResult, align 4, !dbg !338
  %conv23 = sext i32 %17 to i64, !dbg !338
  %div = udiv i64 %conv23, 1, !dbg !339
  %add = add i64 %16, %div, !dbg !340
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !336
  store i8 0, i8* %arrayidx, align 1, !dbg !341
  %18 = load i8*, i8** %data, align 8, !dbg !342
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !343
  store i8* %call24, i8** %replace, align 8, !dbg !344
  %19 = load i8*, i8** %replace, align 8, !dbg !345
  %tobool = icmp ne i8* %19, null, !dbg !345
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !347

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !348
  store i8 0, i8* %20, align 1, !dbg !350
  br label %if.end26, !dbg !351

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !352
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !353
  store i8* %call27, i8** %replace, align 8, !dbg !354
  %22 = load i8*, i8** %replace, align 8, !dbg !355
  %tobool28 = icmp ne i8* %22, null, !dbg !355
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !357

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !358
  store i8 0, i8* %23, align 1, !dbg !360
  br label %if.end30, !dbg !361

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !362

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !363
  %cmp31 = icmp ne i32 %24, -1, !dbg !365
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !366

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !367
  %call34 = call i32 @close(i32 %25), !dbg !369
  br label %if.end35, !dbg !370

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !371
  %cmp36 = icmp ne i32 %26, -1, !dbg !373
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !374

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !375
  %call39 = call i32 @close(i32 %27), !dbg !377
  br label %if.end40, !dbg !378

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !379
  %arrayidx41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !380
  store i8* %28, i8** %arrayidx41, align 16, !dbg !381
  %arraydecay42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !382
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink(i8** %arraydecay42), !dbg !383
  ret void, !dbg !384
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66_good() #0 !dbg !385 {
entry:
  call void @goodG2B(), !dbg !386
  call void @goodB2G(), !dbg !387
  ret void, !dbg !388
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
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/source_code")
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
!45 = !{!46, !51, !64}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !53, line: 178, size: 128, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !52, file: !53, line: 180, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !57, line: 28, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !52, file: !53, line: 181, baseType: !60, size: 112, offset: 16)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 112, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 12.0.0"}
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66_bad", scope: !1, file: !1, line: 52, type: !70, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !{}
!73 = !DILocalVariable(name: "data", scope: !69, file: !1, line: 54, type: !64)
!74 = !DILocation(line: 54, column: 12, scope: !69)
!75 = !DILocalVariable(name: "dataArray", scope: !69, file: !1, line: 55, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 5)
!79 = !DILocation(line: 55, column: 12, scope: !69)
!80 = !DILocalVariable(name: "dataBuffer", scope: !69, file: !1, line: 56, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 100)
!84 = !DILocation(line: 56, column: 10, scope: !69)
!85 = !DILocation(line: 57, column: 12, scope: !69)
!86 = !DILocation(line: 57, column: 10, scope: !69)
!87 = !DILocalVariable(name: "recvResult", scope: !88, file: !1, line: 63, type: !89)
!88 = distinct !DILexicalBlock(scope: !69, file: !1, line: 58, column: 5)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DILocation(line: 63, column: 13, scope: !88)
!91 = !DILocalVariable(name: "service", scope: !88, file: !1, line: 64, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !99, !103}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !56, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !17, line: 33, baseType: !46, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !104, size: 64, offset: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !106)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DILocation(line: 64, column: 28, scope: !88)
!109 = !DILocalVariable(name: "replace", scope: !88, file: !1, line: 65, type: !64)
!110 = !DILocation(line: 65, column: 15, scope: !88)
!111 = !DILocalVariable(name: "listenSocket", scope: !88, file: !1, line: 66, type: !89)
!112 = !DILocation(line: 66, column: 16, scope: !88)
!113 = !DILocalVariable(name: "acceptSocket", scope: !88, file: !1, line: 67, type: !89)
!114 = !DILocation(line: 67, column: 16, scope: !88)
!115 = !DILocalVariable(name: "dataLen", scope: !88, file: !1, line: 68, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DILocation(line: 68, column: 16, scope: !88)
!120 = !DILocation(line: 68, column: 33, scope: !88)
!121 = !DILocation(line: 68, column: 26, scope: !88)
!122 = !DILocation(line: 69, column: 9, scope: !88)
!123 = !DILocation(line: 79, column: 28, scope: !124)
!124 = distinct !DILexicalBlock(scope: !88, file: !1, line: 70, column: 9)
!125 = !DILocation(line: 79, column: 26, scope: !124)
!126 = !DILocation(line: 80, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 17)
!128 = !DILocation(line: 80, column: 30, scope: !127)
!129 = !DILocation(line: 80, column: 17, scope: !124)
!130 = !DILocation(line: 82, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 81, column: 13)
!132 = !DILocation(line: 84, column: 13, scope: !124)
!133 = !DILocation(line: 85, column: 21, scope: !124)
!134 = !DILocation(line: 85, column: 32, scope: !124)
!135 = !DILocation(line: 86, column: 21, scope: !124)
!136 = !DILocation(line: 86, column: 30, scope: !124)
!137 = !DILocation(line: 86, column: 37, scope: !124)
!138 = !DILocation(line: 87, column: 32, scope: !124)
!139 = !DILocation(line: 87, column: 21, scope: !124)
!140 = !DILocation(line: 87, column: 30, scope: !124)
!141 = !DILocation(line: 88, column: 22, scope: !142)
!142 = distinct !DILexicalBlock(scope: !124, file: !1, line: 88, column: 17)
!143 = !DILocation(line: 88, column: 36, scope: !142)
!144 = !DILocation(line: 88, column: 17, scope: !142)
!145 = !DILocation(line: 88, column: 81, scope: !142)
!146 = !DILocation(line: 88, column: 17, scope: !124)
!147 = !DILocation(line: 90, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 89, column: 13)
!149 = !DILocation(line: 92, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !1, line: 92, column: 17)
!151 = !DILocation(line: 92, column: 17, scope: !150)
!152 = !DILocation(line: 92, column: 54, scope: !150)
!153 = !DILocation(line: 92, column: 17, scope: !124)
!154 = !DILocation(line: 94, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 93, column: 13)
!156 = !DILocation(line: 96, column: 35, scope: !124)
!157 = !DILocation(line: 96, column: 28, scope: !124)
!158 = !DILocation(line: 96, column: 26, scope: !124)
!159 = !DILocation(line: 97, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !124, file: !1, line: 97, column: 17)
!161 = !DILocation(line: 97, column: 30, scope: !160)
!162 = !DILocation(line: 97, column: 17, scope: !124)
!163 = !DILocation(line: 99, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 98, column: 13)
!165 = !DILocation(line: 102, column: 31, scope: !124)
!166 = !DILocation(line: 102, column: 54, scope: !124)
!167 = !DILocation(line: 102, column: 61, scope: !124)
!168 = !DILocation(line: 102, column: 59, scope: !124)
!169 = !DILocation(line: 102, column: 93, scope: !124)
!170 = !DILocation(line: 102, column: 91, scope: !124)
!171 = !DILocation(line: 102, column: 101, scope: !124)
!172 = !DILocation(line: 102, column: 84, scope: !124)
!173 = !DILocation(line: 102, column: 26, scope: !124)
!174 = !DILocation(line: 102, column: 24, scope: !124)
!175 = !DILocation(line: 103, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !124, file: !1, line: 103, column: 17)
!177 = !DILocation(line: 103, column: 28, scope: !176)
!178 = !DILocation(line: 103, column: 44, scope: !176)
!179 = !DILocation(line: 103, column: 47, scope: !176)
!180 = !DILocation(line: 103, column: 58, scope: !176)
!181 = !DILocation(line: 103, column: 17, scope: !124)
!182 = !DILocation(line: 105, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 104, column: 13)
!184 = !DILocation(line: 108, column: 13, scope: !124)
!185 = !DILocation(line: 108, column: 18, scope: !124)
!186 = !DILocation(line: 108, column: 28, scope: !124)
!187 = !DILocation(line: 108, column: 39, scope: !124)
!188 = !DILocation(line: 108, column: 26, scope: !124)
!189 = !DILocation(line: 108, column: 55, scope: !124)
!190 = !DILocation(line: 110, column: 30, scope: !124)
!191 = !DILocation(line: 110, column: 23, scope: !124)
!192 = !DILocation(line: 110, column: 21, scope: !124)
!193 = !DILocation(line: 111, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !124, file: !1, line: 111, column: 17)
!195 = !DILocation(line: 111, column: 17, scope: !124)
!196 = !DILocation(line: 113, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 112, column: 13)
!198 = !DILocation(line: 113, column: 26, scope: !197)
!199 = !DILocation(line: 114, column: 13, scope: !197)
!200 = !DILocation(line: 115, column: 30, scope: !124)
!201 = !DILocation(line: 115, column: 23, scope: !124)
!202 = !DILocation(line: 115, column: 21, scope: !124)
!203 = !DILocation(line: 116, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !124, file: !1, line: 116, column: 17)
!205 = !DILocation(line: 116, column: 17, scope: !124)
!206 = !DILocation(line: 118, column: 18, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 117, column: 13)
!208 = !DILocation(line: 118, column: 26, scope: !207)
!209 = !DILocation(line: 119, column: 13, scope: !207)
!210 = !DILocation(line: 120, column: 9, scope: !124)
!211 = !DILocation(line: 122, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !88, file: !1, line: 122, column: 13)
!213 = !DILocation(line: 122, column: 26, scope: !212)
!214 = !DILocation(line: 122, column: 13, scope: !88)
!215 = !DILocation(line: 124, column: 26, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 123, column: 9)
!217 = !DILocation(line: 124, column: 13, scope: !216)
!218 = !DILocation(line: 125, column: 9, scope: !216)
!219 = !DILocation(line: 126, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !88, file: !1, line: 126, column: 13)
!221 = !DILocation(line: 126, column: 26, scope: !220)
!222 = !DILocation(line: 126, column: 13, scope: !88)
!223 = !DILocation(line: 128, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 127, column: 9)
!225 = !DILocation(line: 128, column: 13, scope: !224)
!226 = !DILocation(line: 129, column: 9, scope: !224)
!227 = !DILocation(line: 138, column: 20, scope: !69)
!228 = !DILocation(line: 138, column: 5, scope: !69)
!229 = !DILocation(line: 138, column: 18, scope: !69)
!230 = !DILocation(line: 139, column: 69, scope: !69)
!231 = !DILocation(line: 139, column: 5, scope: !69)
!232 = !DILocation(line: 140, column: 1, scope: !69)
!233 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 148, type: !70, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!234 = !DILocalVariable(name: "data", scope: !233, file: !1, line: 150, type: !64)
!235 = !DILocation(line: 150, column: 12, scope: !233)
!236 = !DILocalVariable(name: "dataArray", scope: !233, file: !1, line: 151, type: !76)
!237 = !DILocation(line: 151, column: 12, scope: !233)
!238 = !DILocalVariable(name: "dataBuffer", scope: !233, file: !1, line: 152, type: !81)
!239 = !DILocation(line: 152, column: 10, scope: !233)
!240 = !DILocation(line: 153, column: 12, scope: !233)
!241 = !DILocation(line: 153, column: 10, scope: !233)
!242 = !DILocation(line: 155, column: 12, scope: !233)
!243 = !DILocation(line: 155, column: 5, scope: !233)
!244 = !DILocation(line: 156, column: 20, scope: !233)
!245 = !DILocation(line: 156, column: 5, scope: !233)
!246 = !DILocation(line: 156, column: 18, scope: !233)
!247 = !DILocation(line: 157, column: 73, scope: !233)
!248 = !DILocation(line: 157, column: 5, scope: !233)
!249 = !DILocation(line: 158, column: 1, scope: !233)
!250 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 162, type: !70, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!251 = !DILocalVariable(name: "data", scope: !250, file: !1, line: 164, type: !64)
!252 = !DILocation(line: 164, column: 12, scope: !250)
!253 = !DILocalVariable(name: "dataArray", scope: !250, file: !1, line: 165, type: !76)
!254 = !DILocation(line: 165, column: 12, scope: !250)
!255 = !DILocalVariable(name: "dataBuffer", scope: !250, file: !1, line: 166, type: !81)
!256 = !DILocation(line: 166, column: 10, scope: !250)
!257 = !DILocation(line: 167, column: 12, scope: !250)
!258 = !DILocation(line: 167, column: 10, scope: !250)
!259 = !DILocalVariable(name: "recvResult", scope: !260, file: !1, line: 173, type: !89)
!260 = distinct !DILexicalBlock(scope: !250, file: !1, line: 168, column: 5)
!261 = !DILocation(line: 173, column: 13, scope: !260)
!262 = !DILocalVariable(name: "service", scope: !260, file: !1, line: 174, type: !92)
!263 = !DILocation(line: 174, column: 28, scope: !260)
!264 = !DILocalVariable(name: "replace", scope: !260, file: !1, line: 175, type: !64)
!265 = !DILocation(line: 175, column: 15, scope: !260)
!266 = !DILocalVariable(name: "listenSocket", scope: !260, file: !1, line: 176, type: !89)
!267 = !DILocation(line: 176, column: 16, scope: !260)
!268 = !DILocalVariable(name: "acceptSocket", scope: !260, file: !1, line: 177, type: !89)
!269 = !DILocation(line: 177, column: 16, scope: !260)
!270 = !DILocalVariable(name: "dataLen", scope: !260, file: !1, line: 178, type: !116)
!271 = !DILocation(line: 178, column: 16, scope: !260)
!272 = !DILocation(line: 178, column: 33, scope: !260)
!273 = !DILocation(line: 178, column: 26, scope: !260)
!274 = !DILocation(line: 179, column: 9, scope: !260)
!275 = !DILocation(line: 189, column: 28, scope: !276)
!276 = distinct !DILexicalBlock(scope: !260, file: !1, line: 180, column: 9)
!277 = !DILocation(line: 189, column: 26, scope: !276)
!278 = !DILocation(line: 190, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 190, column: 17)
!280 = !DILocation(line: 190, column: 30, scope: !279)
!281 = !DILocation(line: 190, column: 17, scope: !276)
!282 = !DILocation(line: 192, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !1, line: 191, column: 13)
!284 = !DILocation(line: 194, column: 13, scope: !276)
!285 = !DILocation(line: 195, column: 21, scope: !276)
!286 = !DILocation(line: 195, column: 32, scope: !276)
!287 = !DILocation(line: 196, column: 21, scope: !276)
!288 = !DILocation(line: 196, column: 30, scope: !276)
!289 = !DILocation(line: 196, column: 37, scope: !276)
!290 = !DILocation(line: 197, column: 32, scope: !276)
!291 = !DILocation(line: 197, column: 21, scope: !276)
!292 = !DILocation(line: 197, column: 30, scope: !276)
!293 = !DILocation(line: 198, column: 22, scope: !294)
!294 = distinct !DILexicalBlock(scope: !276, file: !1, line: 198, column: 17)
!295 = !DILocation(line: 198, column: 36, scope: !294)
!296 = !DILocation(line: 198, column: 17, scope: !294)
!297 = !DILocation(line: 198, column: 81, scope: !294)
!298 = !DILocation(line: 198, column: 17, scope: !276)
!299 = !DILocation(line: 200, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !294, file: !1, line: 199, column: 13)
!301 = !DILocation(line: 202, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !276, file: !1, line: 202, column: 17)
!303 = !DILocation(line: 202, column: 17, scope: !302)
!304 = !DILocation(line: 202, column: 54, scope: !302)
!305 = !DILocation(line: 202, column: 17, scope: !276)
!306 = !DILocation(line: 204, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 203, column: 13)
!308 = !DILocation(line: 206, column: 35, scope: !276)
!309 = !DILocation(line: 206, column: 28, scope: !276)
!310 = !DILocation(line: 206, column: 26, scope: !276)
!311 = !DILocation(line: 207, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !276, file: !1, line: 207, column: 17)
!313 = !DILocation(line: 207, column: 30, scope: !312)
!314 = !DILocation(line: 207, column: 17, scope: !276)
!315 = !DILocation(line: 209, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 208, column: 13)
!317 = !DILocation(line: 212, column: 31, scope: !276)
!318 = !DILocation(line: 212, column: 54, scope: !276)
!319 = !DILocation(line: 212, column: 61, scope: !276)
!320 = !DILocation(line: 212, column: 59, scope: !276)
!321 = !DILocation(line: 212, column: 93, scope: !276)
!322 = !DILocation(line: 212, column: 91, scope: !276)
!323 = !DILocation(line: 212, column: 101, scope: !276)
!324 = !DILocation(line: 212, column: 84, scope: !276)
!325 = !DILocation(line: 212, column: 26, scope: !276)
!326 = !DILocation(line: 212, column: 24, scope: !276)
!327 = !DILocation(line: 213, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !276, file: !1, line: 213, column: 17)
!329 = !DILocation(line: 213, column: 28, scope: !328)
!330 = !DILocation(line: 213, column: 44, scope: !328)
!331 = !DILocation(line: 213, column: 47, scope: !328)
!332 = !DILocation(line: 213, column: 58, scope: !328)
!333 = !DILocation(line: 213, column: 17, scope: !276)
!334 = !DILocation(line: 215, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !1, line: 214, column: 13)
!336 = !DILocation(line: 218, column: 13, scope: !276)
!337 = !DILocation(line: 218, column: 18, scope: !276)
!338 = !DILocation(line: 218, column: 28, scope: !276)
!339 = !DILocation(line: 218, column: 39, scope: !276)
!340 = !DILocation(line: 218, column: 26, scope: !276)
!341 = !DILocation(line: 218, column: 55, scope: !276)
!342 = !DILocation(line: 220, column: 30, scope: !276)
!343 = !DILocation(line: 220, column: 23, scope: !276)
!344 = !DILocation(line: 220, column: 21, scope: !276)
!345 = !DILocation(line: 221, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !276, file: !1, line: 221, column: 17)
!347 = !DILocation(line: 221, column: 17, scope: !276)
!348 = !DILocation(line: 223, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !1, line: 222, column: 13)
!350 = !DILocation(line: 223, column: 26, scope: !349)
!351 = !DILocation(line: 224, column: 13, scope: !349)
!352 = !DILocation(line: 225, column: 30, scope: !276)
!353 = !DILocation(line: 225, column: 23, scope: !276)
!354 = !DILocation(line: 225, column: 21, scope: !276)
!355 = !DILocation(line: 226, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !276, file: !1, line: 226, column: 17)
!357 = !DILocation(line: 226, column: 17, scope: !276)
!358 = !DILocation(line: 228, column: 18, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 227, column: 13)
!360 = !DILocation(line: 228, column: 26, scope: !359)
!361 = !DILocation(line: 229, column: 13, scope: !359)
!362 = !DILocation(line: 230, column: 9, scope: !276)
!363 = !DILocation(line: 232, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !260, file: !1, line: 232, column: 13)
!365 = !DILocation(line: 232, column: 26, scope: !364)
!366 = !DILocation(line: 232, column: 13, scope: !260)
!367 = !DILocation(line: 234, column: 26, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !1, line: 233, column: 9)
!369 = !DILocation(line: 234, column: 13, scope: !368)
!370 = !DILocation(line: 235, column: 9, scope: !368)
!371 = !DILocation(line: 236, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !260, file: !1, line: 236, column: 13)
!373 = !DILocation(line: 236, column: 26, scope: !372)
!374 = !DILocation(line: 236, column: 13, scope: !260)
!375 = !DILocation(line: 238, column: 26, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 237, column: 9)
!377 = !DILocation(line: 238, column: 13, scope: !376)
!378 = !DILocation(line: 239, column: 9, scope: !376)
!379 = !DILocation(line: 247, column: 20, scope: !250)
!380 = !DILocation(line: 247, column: 5, scope: !250)
!381 = !DILocation(line: 247, column: 18, scope: !250)
!382 = !DILocation(line: 248, column: 73, scope: !250)
!383 = !DILocation(line: 248, column: 5, scope: !250)
!384 = !DILocation(line: 249, column: 1, scope: !250)
!385 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66_good", scope: !1, file: !1, line: 251, type: !70, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!386 = !DILocation(line: 253, column: 5, scope: !385)
!387 = !DILocation(line: 254, column: 5, scope: !385)
!388 = !DILocation(line: 255, column: 1, scope: !385)
