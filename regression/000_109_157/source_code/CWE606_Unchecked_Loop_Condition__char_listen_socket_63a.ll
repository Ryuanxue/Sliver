; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_63a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63_bad() #0 !dbg !69 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !75, metadata !DIExpression()), !dbg !79
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !80
  store i8* %arraydecay, i8** %data, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !86, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %listenSocket, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %acceptSocket, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #7, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  br label %do.body, !dbg !117

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !118
  store i32 %call1, i32* %listenSocket, align 4, !dbg !120
  %2 = load i32, i32* %listenSocket, align 4, !dbg !121
  %cmp = icmp eq i32 %2, -1, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !125

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !127
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !128
  store i16 2, i16* %sin_family, align 4, !dbg !129
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !130
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !131
  store i32 0, i32* %s_addr, align 4, !dbg !132
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !133
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !134
  store i16 %call2, i16* %sin_port, align 2, !dbg !135
  %4 = load i32, i32* %listenSocket, align 4, !dbg !136
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !138
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !139
  %cmp4 = icmp eq i32 %call3, -1, !dbg !140
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !141

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !142

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !144
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !146
  %cmp8 = icmp eq i32 %call7, -1, !dbg !147
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !148

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !149

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !151
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !152
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !153
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !154
  %cmp12 = icmp eq i32 %8, -1, !dbg !156
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !157

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !158

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !160
  %10 = load i8*, i8** %data, align 8, !dbg !161
  %11 = load i64, i64* %dataLen, align 8, !dbg !162
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !163
  %12 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub = sub i64 100, %12, !dbg !165
  %sub15 = sub i64 %sub, 1, !dbg !166
  %mul = mul i64 1, %sub15, !dbg !167
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !168
  %conv = trunc i64 %call16 to i32, !dbg !168
  store i32 %conv, i32* %recvResult, align 4, !dbg !169
  %13 = load i32, i32* %recvResult, align 4, !dbg !170
  %cmp17 = icmp eq i32 %13, -1, !dbg !172
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !173

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !174
  %cmp19 = icmp eq i32 %14, 0, !dbg !175
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !176

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !177

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !179
  %16 = load i64, i64* %dataLen, align 8, !dbg !180
  %17 = load i32, i32* %recvResult, align 4, !dbg !181
  %conv23 = sext i32 %17 to i64, !dbg !181
  %div = udiv i64 %conv23, 1, !dbg !182
  %add = add i64 %16, %div, !dbg !183
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !179
  store i8 0, i8* %arrayidx, align 1, !dbg !184
  %18 = load i8*, i8** %data, align 8, !dbg !185
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !186
  store i8* %call24, i8** %replace, align 8, !dbg !187
  %19 = load i8*, i8** %replace, align 8, !dbg !188
  %tobool = icmp ne i8* %19, null, !dbg !188
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !190

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !191
  store i8 0, i8* %20, align 1, !dbg !193
  br label %if.end26, !dbg !194

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !195
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !196
  store i8* %call27, i8** %replace, align 8, !dbg !197
  %22 = load i8*, i8** %replace, align 8, !dbg !198
  %tobool28 = icmp ne i8* %22, null, !dbg !198
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !200

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !201
  store i8 0, i8* %23, align 1, !dbg !203
  br label %if.end30, !dbg !204

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !205

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !206
  %cmp31 = icmp ne i32 %24, -1, !dbg !208
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !209

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !210
  %call34 = call i32 @close(i32 %25), !dbg !212
  br label %if.end35, !dbg !213

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !214
  %cmp36 = icmp ne i32 %26, -1, !dbg !216
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !217

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !218
  %call39 = call i32 @close(i32 %27), !dbg !220
  br label %if.end40, !dbg !221

if.end40:                                         ; preds = %if.then38, %if.end35
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_badSink(i8** %data), !dbg !222
  ret void, !dbg !223
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_badSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !224 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !228
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !228
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !229
  store i8* %arraydecay, i8** %data, align 8, !dbg !230
  %1 = load i8*, i8** %data, align 8, !dbg !231
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !232
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodG2BSink(i8** %data), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodG2BSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !235 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 -1, i32* %listenSocket, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 -1, i32* %acceptSocket, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !253, metadata !DIExpression()), !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i64 @strlen(i8* %1) #7, !dbg !256
  store i64 %call, i64* %dataLen, align 8, !dbg !254
  br label %do.body, !dbg !257

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !258
  store i32 %call1, i32* %listenSocket, align 4, !dbg !260
  %2 = load i32, i32* %listenSocket, align 4, !dbg !261
  %cmp = icmp eq i32 %2, -1, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !265

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !267
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !268
  store i16 2, i16* %sin_family, align 4, !dbg !269
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !270
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !271
  store i32 0, i32* %s_addr, align 4, !dbg !272
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !273
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !274
  store i16 %call2, i16* %sin_port, align 2, !dbg !275
  %4 = load i32, i32* %listenSocket, align 4, !dbg !276
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !278
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !279
  %cmp4 = icmp eq i32 %call3, -1, !dbg !280
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !281

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !282

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !284
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !286
  %cmp8 = icmp eq i32 %call7, -1, !dbg !287
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !288

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !289

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !291
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !292
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !293
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !294
  %cmp12 = icmp eq i32 %8, -1, !dbg !296
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !297

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !298

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !300
  %10 = load i8*, i8** %data, align 8, !dbg !301
  %11 = load i64, i64* %dataLen, align 8, !dbg !302
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !303
  %12 = load i64, i64* %dataLen, align 8, !dbg !304
  %sub = sub i64 100, %12, !dbg !305
  %sub15 = sub i64 %sub, 1, !dbg !306
  %mul = mul i64 1, %sub15, !dbg !307
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !308
  %conv = trunc i64 %call16 to i32, !dbg !308
  store i32 %conv, i32* %recvResult, align 4, !dbg !309
  %13 = load i32, i32* %recvResult, align 4, !dbg !310
  %cmp17 = icmp eq i32 %13, -1, !dbg !312
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !313

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !314
  %cmp19 = icmp eq i32 %14, 0, !dbg !315
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !316

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !317

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !319
  %16 = load i64, i64* %dataLen, align 8, !dbg !320
  %17 = load i32, i32* %recvResult, align 4, !dbg !321
  %conv23 = sext i32 %17 to i64, !dbg !321
  %div = udiv i64 %conv23, 1, !dbg !322
  %add = add i64 %16, %div, !dbg !323
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !319
  store i8 0, i8* %arrayidx, align 1, !dbg !324
  %18 = load i8*, i8** %data, align 8, !dbg !325
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !326
  store i8* %call24, i8** %replace, align 8, !dbg !327
  %19 = load i8*, i8** %replace, align 8, !dbg !328
  %tobool = icmp ne i8* %19, null, !dbg !328
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !330

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !331
  store i8 0, i8* %20, align 1, !dbg !333
  br label %if.end26, !dbg !334

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !335
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !336
  store i8* %call27, i8** %replace, align 8, !dbg !337
  %22 = load i8*, i8** %replace, align 8, !dbg !338
  %tobool28 = icmp ne i8* %22, null, !dbg !338
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !340

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !341
  store i8 0, i8* %23, align 1, !dbg !343
  br label %if.end30, !dbg !344

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !345

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !346
  %cmp31 = icmp ne i32 %24, -1, !dbg !348
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !349

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !350
  %call34 = call i32 @close(i32 %25), !dbg !352
  br label %if.end35, !dbg !353

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !354
  %cmp36 = icmp ne i32 %26, -1, !dbg !356
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !357

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !358
  %call39 = call i32 @close(i32 %27), !dbg !360
  br label %if.end40, !dbg !361

if.end40:                                         ; preds = %if.then38, %if.end35
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink(i8** %data), !dbg !362
  ret void, !dbg !363
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink(i8**) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63_good() #0 !dbg !364 {
entry:
  call void @goodG2B(), !dbg !365
  call void @goodB2G(), !dbg !366
  ret void, !dbg !367
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/source_code")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63_bad", scope: !1, file: !1, line: 52, type: !70, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !{}
!73 = !DILocalVariable(name: "data", scope: !69, file: !1, line: 54, type: !64)
!74 = !DILocation(line: 54, column: 12, scope: !69)
!75 = !DILocalVariable(name: "dataBuffer", scope: !69, file: !1, line: 55, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !DILocation(line: 55, column: 10, scope: !69)
!80 = !DILocation(line: 56, column: 12, scope: !69)
!81 = !DILocation(line: 56, column: 10, scope: !69)
!82 = !DILocalVariable(name: "recvResult", scope: !83, file: !1, line: 62, type: !84)
!83 = distinct !DILexicalBlock(scope: !69, file: !1, line: 57, column: 5)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DILocation(line: 62, column: 13, scope: !83)
!86 = !DILocalVariable(name: "service", scope: !83, file: !1, line: 63, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !94, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !17, line: 240, baseType: !56, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !17, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !17, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !17, line: 33, baseType: !46, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !17, line: 245, baseType: !99, size: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !101)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DILocation(line: 63, column: 28, scope: !83)
!104 = !DILocalVariable(name: "replace", scope: !83, file: !1, line: 64, type: !64)
!105 = !DILocation(line: 64, column: 15, scope: !83)
!106 = !DILocalVariable(name: "listenSocket", scope: !83, file: !1, line: 65, type: !84)
!107 = !DILocation(line: 65, column: 16, scope: !83)
!108 = !DILocalVariable(name: "acceptSocket", scope: !83, file: !1, line: 66, type: !84)
!109 = !DILocation(line: 66, column: 16, scope: !83)
!110 = !DILocalVariable(name: "dataLen", scope: !83, file: !1, line: 67, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 67, column: 16, scope: !83)
!115 = !DILocation(line: 67, column: 33, scope: !83)
!116 = !DILocation(line: 67, column: 26, scope: !83)
!117 = !DILocation(line: 68, column: 9, scope: !83)
!118 = !DILocation(line: 78, column: 28, scope: !119)
!119 = distinct !DILexicalBlock(scope: !83, file: !1, line: 69, column: 9)
!120 = !DILocation(line: 78, column: 26, scope: !119)
!121 = !DILocation(line: 79, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 79, column: 17)
!123 = !DILocation(line: 79, column: 30, scope: !122)
!124 = !DILocation(line: 79, column: 17, scope: !119)
!125 = !DILocation(line: 81, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 80, column: 13)
!127 = !DILocation(line: 83, column: 13, scope: !119)
!128 = !DILocation(line: 84, column: 21, scope: !119)
!129 = !DILocation(line: 84, column: 32, scope: !119)
!130 = !DILocation(line: 85, column: 21, scope: !119)
!131 = !DILocation(line: 85, column: 30, scope: !119)
!132 = !DILocation(line: 85, column: 37, scope: !119)
!133 = !DILocation(line: 86, column: 32, scope: !119)
!134 = !DILocation(line: 86, column: 21, scope: !119)
!135 = !DILocation(line: 86, column: 30, scope: !119)
!136 = !DILocation(line: 87, column: 22, scope: !137)
!137 = distinct !DILexicalBlock(scope: !119, file: !1, line: 87, column: 17)
!138 = !DILocation(line: 87, column: 36, scope: !137)
!139 = !DILocation(line: 87, column: 17, scope: !137)
!140 = !DILocation(line: 87, column: 81, scope: !137)
!141 = !DILocation(line: 87, column: 17, scope: !119)
!142 = !DILocation(line: 89, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 88, column: 13)
!144 = !DILocation(line: 91, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !119, file: !1, line: 91, column: 17)
!146 = !DILocation(line: 91, column: 17, scope: !145)
!147 = !DILocation(line: 91, column: 54, scope: !145)
!148 = !DILocation(line: 91, column: 17, scope: !119)
!149 = !DILocation(line: 93, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 92, column: 13)
!151 = !DILocation(line: 95, column: 35, scope: !119)
!152 = !DILocation(line: 95, column: 28, scope: !119)
!153 = !DILocation(line: 95, column: 26, scope: !119)
!154 = !DILocation(line: 96, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !119, file: !1, line: 96, column: 17)
!156 = !DILocation(line: 96, column: 30, scope: !155)
!157 = !DILocation(line: 96, column: 17, scope: !119)
!158 = !DILocation(line: 98, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 97, column: 13)
!160 = !DILocation(line: 101, column: 31, scope: !119)
!161 = !DILocation(line: 101, column: 54, scope: !119)
!162 = !DILocation(line: 101, column: 61, scope: !119)
!163 = !DILocation(line: 101, column: 59, scope: !119)
!164 = !DILocation(line: 101, column: 93, scope: !119)
!165 = !DILocation(line: 101, column: 91, scope: !119)
!166 = !DILocation(line: 101, column: 101, scope: !119)
!167 = !DILocation(line: 101, column: 84, scope: !119)
!168 = !DILocation(line: 101, column: 26, scope: !119)
!169 = !DILocation(line: 101, column: 24, scope: !119)
!170 = !DILocation(line: 102, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !119, file: !1, line: 102, column: 17)
!172 = !DILocation(line: 102, column: 28, scope: !171)
!173 = !DILocation(line: 102, column: 44, scope: !171)
!174 = !DILocation(line: 102, column: 47, scope: !171)
!175 = !DILocation(line: 102, column: 58, scope: !171)
!176 = !DILocation(line: 102, column: 17, scope: !119)
!177 = !DILocation(line: 104, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !1, line: 103, column: 13)
!179 = !DILocation(line: 107, column: 13, scope: !119)
!180 = !DILocation(line: 107, column: 18, scope: !119)
!181 = !DILocation(line: 107, column: 28, scope: !119)
!182 = !DILocation(line: 107, column: 39, scope: !119)
!183 = !DILocation(line: 107, column: 26, scope: !119)
!184 = !DILocation(line: 107, column: 55, scope: !119)
!185 = !DILocation(line: 109, column: 30, scope: !119)
!186 = !DILocation(line: 109, column: 23, scope: !119)
!187 = !DILocation(line: 109, column: 21, scope: !119)
!188 = !DILocation(line: 110, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !119, file: !1, line: 110, column: 17)
!190 = !DILocation(line: 110, column: 17, scope: !119)
!191 = !DILocation(line: 112, column: 18, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 111, column: 13)
!193 = !DILocation(line: 112, column: 26, scope: !192)
!194 = !DILocation(line: 113, column: 13, scope: !192)
!195 = !DILocation(line: 114, column: 30, scope: !119)
!196 = !DILocation(line: 114, column: 23, scope: !119)
!197 = !DILocation(line: 114, column: 21, scope: !119)
!198 = !DILocation(line: 115, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !119, file: !1, line: 115, column: 17)
!200 = !DILocation(line: 115, column: 17, scope: !119)
!201 = !DILocation(line: 117, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 116, column: 13)
!203 = !DILocation(line: 117, column: 26, scope: !202)
!204 = !DILocation(line: 118, column: 13, scope: !202)
!205 = !DILocation(line: 119, column: 9, scope: !119)
!206 = !DILocation(line: 121, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !83, file: !1, line: 121, column: 13)
!208 = !DILocation(line: 121, column: 26, scope: !207)
!209 = !DILocation(line: 121, column: 13, scope: !83)
!210 = !DILocation(line: 123, column: 26, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 122, column: 9)
!212 = !DILocation(line: 123, column: 13, scope: !211)
!213 = !DILocation(line: 124, column: 9, scope: !211)
!214 = !DILocation(line: 125, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !83, file: !1, line: 125, column: 13)
!216 = !DILocation(line: 125, column: 26, scope: !215)
!217 = !DILocation(line: 125, column: 13, scope: !83)
!218 = !DILocation(line: 127, column: 26, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 126, column: 9)
!220 = !DILocation(line: 127, column: 13, scope: !219)
!221 = !DILocation(line: 128, column: 9, scope: !219)
!222 = !DILocation(line: 136, column: 5, scope: !69)
!223 = !DILocation(line: 137, column: 1, scope: !69)
!224 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 145, type: !70, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!225 = !DILocalVariable(name: "data", scope: !224, file: !1, line: 147, type: !64)
!226 = !DILocation(line: 147, column: 12, scope: !224)
!227 = !DILocalVariable(name: "dataBuffer", scope: !224, file: !1, line: 148, type: !76)
!228 = !DILocation(line: 148, column: 10, scope: !224)
!229 = !DILocation(line: 149, column: 12, scope: !224)
!230 = !DILocation(line: 149, column: 10, scope: !224)
!231 = !DILocation(line: 151, column: 12, scope: !224)
!232 = !DILocation(line: 151, column: 5, scope: !224)
!233 = !DILocation(line: 152, column: 5, scope: !224)
!234 = !DILocation(line: 153, column: 1, scope: !224)
!235 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 157, type: !70, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!236 = !DILocalVariable(name: "data", scope: !235, file: !1, line: 159, type: !64)
!237 = !DILocation(line: 159, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !1, line: 160, type: !76)
!239 = !DILocation(line: 160, column: 10, scope: !235)
!240 = !DILocation(line: 161, column: 12, scope: !235)
!241 = !DILocation(line: 161, column: 10, scope: !235)
!242 = !DILocalVariable(name: "recvResult", scope: !243, file: !1, line: 167, type: !84)
!243 = distinct !DILexicalBlock(scope: !235, file: !1, line: 162, column: 5)
!244 = !DILocation(line: 167, column: 13, scope: !243)
!245 = !DILocalVariable(name: "service", scope: !243, file: !1, line: 168, type: !87)
!246 = !DILocation(line: 168, column: 28, scope: !243)
!247 = !DILocalVariable(name: "replace", scope: !243, file: !1, line: 169, type: !64)
!248 = !DILocation(line: 169, column: 15, scope: !243)
!249 = !DILocalVariable(name: "listenSocket", scope: !243, file: !1, line: 170, type: !84)
!250 = !DILocation(line: 170, column: 16, scope: !243)
!251 = !DILocalVariable(name: "acceptSocket", scope: !243, file: !1, line: 171, type: !84)
!252 = !DILocation(line: 171, column: 16, scope: !243)
!253 = !DILocalVariable(name: "dataLen", scope: !243, file: !1, line: 172, type: !111)
!254 = !DILocation(line: 172, column: 16, scope: !243)
!255 = !DILocation(line: 172, column: 33, scope: !243)
!256 = !DILocation(line: 172, column: 26, scope: !243)
!257 = !DILocation(line: 173, column: 9, scope: !243)
!258 = !DILocation(line: 183, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !243, file: !1, line: 174, column: 9)
!260 = !DILocation(line: 183, column: 26, scope: !259)
!261 = !DILocation(line: 184, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 184, column: 17)
!263 = !DILocation(line: 184, column: 30, scope: !262)
!264 = !DILocation(line: 184, column: 17, scope: !259)
!265 = !DILocation(line: 186, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 185, column: 13)
!267 = !DILocation(line: 188, column: 13, scope: !259)
!268 = !DILocation(line: 189, column: 21, scope: !259)
!269 = !DILocation(line: 189, column: 32, scope: !259)
!270 = !DILocation(line: 190, column: 21, scope: !259)
!271 = !DILocation(line: 190, column: 30, scope: !259)
!272 = !DILocation(line: 190, column: 37, scope: !259)
!273 = !DILocation(line: 191, column: 32, scope: !259)
!274 = !DILocation(line: 191, column: 21, scope: !259)
!275 = !DILocation(line: 191, column: 30, scope: !259)
!276 = !DILocation(line: 192, column: 22, scope: !277)
!277 = distinct !DILexicalBlock(scope: !259, file: !1, line: 192, column: 17)
!278 = !DILocation(line: 192, column: 36, scope: !277)
!279 = !DILocation(line: 192, column: 17, scope: !277)
!280 = !DILocation(line: 192, column: 81, scope: !277)
!281 = !DILocation(line: 192, column: 17, scope: !259)
!282 = !DILocation(line: 194, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 193, column: 13)
!284 = !DILocation(line: 196, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !259, file: !1, line: 196, column: 17)
!286 = !DILocation(line: 196, column: 17, scope: !285)
!287 = !DILocation(line: 196, column: 54, scope: !285)
!288 = !DILocation(line: 196, column: 17, scope: !259)
!289 = !DILocation(line: 198, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 197, column: 13)
!291 = !DILocation(line: 200, column: 35, scope: !259)
!292 = !DILocation(line: 200, column: 28, scope: !259)
!293 = !DILocation(line: 200, column: 26, scope: !259)
!294 = !DILocation(line: 201, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !259, file: !1, line: 201, column: 17)
!296 = !DILocation(line: 201, column: 30, scope: !295)
!297 = !DILocation(line: 201, column: 17, scope: !259)
!298 = !DILocation(line: 203, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 202, column: 13)
!300 = !DILocation(line: 206, column: 31, scope: !259)
!301 = !DILocation(line: 206, column: 54, scope: !259)
!302 = !DILocation(line: 206, column: 61, scope: !259)
!303 = !DILocation(line: 206, column: 59, scope: !259)
!304 = !DILocation(line: 206, column: 93, scope: !259)
!305 = !DILocation(line: 206, column: 91, scope: !259)
!306 = !DILocation(line: 206, column: 101, scope: !259)
!307 = !DILocation(line: 206, column: 84, scope: !259)
!308 = !DILocation(line: 206, column: 26, scope: !259)
!309 = !DILocation(line: 206, column: 24, scope: !259)
!310 = !DILocation(line: 207, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !259, file: !1, line: 207, column: 17)
!312 = !DILocation(line: 207, column: 28, scope: !311)
!313 = !DILocation(line: 207, column: 44, scope: !311)
!314 = !DILocation(line: 207, column: 47, scope: !311)
!315 = !DILocation(line: 207, column: 58, scope: !311)
!316 = !DILocation(line: 207, column: 17, scope: !259)
!317 = !DILocation(line: 209, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !311, file: !1, line: 208, column: 13)
!319 = !DILocation(line: 212, column: 13, scope: !259)
!320 = !DILocation(line: 212, column: 18, scope: !259)
!321 = !DILocation(line: 212, column: 28, scope: !259)
!322 = !DILocation(line: 212, column: 39, scope: !259)
!323 = !DILocation(line: 212, column: 26, scope: !259)
!324 = !DILocation(line: 212, column: 55, scope: !259)
!325 = !DILocation(line: 214, column: 30, scope: !259)
!326 = !DILocation(line: 214, column: 23, scope: !259)
!327 = !DILocation(line: 214, column: 21, scope: !259)
!328 = !DILocation(line: 215, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !259, file: !1, line: 215, column: 17)
!330 = !DILocation(line: 215, column: 17, scope: !259)
!331 = !DILocation(line: 217, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !1, line: 216, column: 13)
!333 = !DILocation(line: 217, column: 26, scope: !332)
!334 = !DILocation(line: 218, column: 13, scope: !332)
!335 = !DILocation(line: 219, column: 30, scope: !259)
!336 = !DILocation(line: 219, column: 23, scope: !259)
!337 = !DILocation(line: 219, column: 21, scope: !259)
!338 = !DILocation(line: 220, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !259, file: !1, line: 220, column: 17)
!340 = !DILocation(line: 220, column: 17, scope: !259)
!341 = !DILocation(line: 222, column: 18, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 221, column: 13)
!343 = !DILocation(line: 222, column: 26, scope: !342)
!344 = !DILocation(line: 223, column: 13, scope: !342)
!345 = !DILocation(line: 224, column: 9, scope: !259)
!346 = !DILocation(line: 226, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !243, file: !1, line: 226, column: 13)
!348 = !DILocation(line: 226, column: 26, scope: !347)
!349 = !DILocation(line: 226, column: 13, scope: !243)
!350 = !DILocation(line: 228, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 227, column: 9)
!352 = !DILocation(line: 228, column: 13, scope: !351)
!353 = !DILocation(line: 229, column: 9, scope: !351)
!354 = !DILocation(line: 230, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !243, file: !1, line: 230, column: 13)
!356 = !DILocation(line: 230, column: 26, scope: !355)
!357 = !DILocation(line: 230, column: 13, scope: !243)
!358 = !DILocation(line: 232, column: 26, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 231, column: 9)
!360 = !DILocation(line: 232, column: 13, scope: !359)
!361 = !DILocation(line: 233, column: 9, scope: !359)
!362 = !DILocation(line: 241, column: 5, scope: !235)
!363 = !DILocation(line: 242, column: 1, scope: !235)
!364 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63_good", scope: !1, file: !1, line: 244, type: !70, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!365 = !DILocation(line: 246, column: 5, scope: !364)
!366 = !DILocation(line: 247, column: 5, scope: !364)
!367 = !DILocation(line: 248, column: 1, scope: !364)
