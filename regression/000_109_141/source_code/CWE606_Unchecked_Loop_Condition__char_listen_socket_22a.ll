; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !68
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !71
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !73
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad() #0 !dbg !79 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !85, metadata !DIExpression()), !dbg !89
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !90
  store i8* %arraydecay, i8** %data, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !95, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %listenSocket, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %acceptSocket, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !119, metadata !DIExpression()), !dbg !123
  %1 = load i8*, i8** %data, align 8, !dbg !124
  %call = call i64 @strlen(i8* %1) #7, !dbg !125
  store i64 %call, i64* %dataLen, align 8, !dbg !123
  br label %do.body, !dbg !126

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !127
  store i32 %call1, i32* %listenSocket, align 4, !dbg !129
  %2 = load i32, i32* %listenSocket, align 4, !dbg !130
  %cmp = icmp eq i32 %2, -1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !134

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !136
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !137
  store i16 2, i16* %sin_family, align 4, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 0, i32* %s_addr, align 4, !dbg !141
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !143
  store i16 %call2, i16* %sin_port, align 2, !dbg !144
  %4 = load i32, i32* %listenSocket, align 4, !dbg !145
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !147
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !148
  %cmp4 = icmp eq i32 %call3, -1, !dbg !149
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !150

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !153
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !155
  %cmp8 = icmp eq i32 %call7, -1, !dbg !156
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !157

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !158

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !160
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !161
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !162
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !163
  %cmp12 = icmp eq i32 %8, -1, !dbg !165
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !166

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !167

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !169
  %10 = load i8*, i8** %data, align 8, !dbg !170
  %11 = load i64, i64* %dataLen, align 8, !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !172
  %12 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub = sub i64 100, %12, !dbg !174
  %sub15 = sub i64 %sub, 1, !dbg !175
  %mul = mul i64 1, %sub15, !dbg !176
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !177
  %conv = trunc i64 %call16 to i32, !dbg !177
  store i32 %conv, i32* %recvResult, align 4, !dbg !178
  %13 = load i32, i32* %recvResult, align 4, !dbg !179
  %cmp17 = icmp eq i32 %13, -1, !dbg !181
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !182

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !183
  %cmp19 = icmp eq i32 %14, 0, !dbg !184
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !185

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !186

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !188
  %16 = load i64, i64* %dataLen, align 8, !dbg !189
  %17 = load i32, i32* %recvResult, align 4, !dbg !190
  %conv23 = sext i32 %17 to i64, !dbg !190
  %div = udiv i64 %conv23, 1, !dbg !191
  %add = add i64 %16, %div, !dbg !192
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !188
  store i8 0, i8* %arrayidx, align 1, !dbg !193
  %18 = load i8*, i8** %data, align 8, !dbg !194
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !195
  store i8* %call24, i8** %replace, align 8, !dbg !196
  %19 = load i8*, i8** %replace, align 8, !dbg !197
  %tobool = icmp ne i8* %19, null, !dbg !197
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !199

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !200
  store i8 0, i8* %20, align 1, !dbg !202
  br label %if.end26, !dbg !203

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !204
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !205
  store i8* %call27, i8** %replace, align 8, !dbg !206
  %22 = load i8*, i8** %replace, align 8, !dbg !207
  %tobool28 = icmp ne i8* %22, null, !dbg !207
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !209

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !210
  store i8 0, i8* %23, align 1, !dbg !212
  br label %if.end30, !dbg !213

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !214

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !215
  %cmp31 = icmp ne i32 %24, -1, !dbg !217
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !218

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !219
  %call34 = call i32 @close(i32 %25), !dbg !221
  br label %if.end35, !dbg !222

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !223
  %cmp36 = icmp ne i32 %26, -1, !dbg !225
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !226

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !227
  %call39 = call i32 @close(i32 %27), !dbg !229
  br label %if.end40, !dbg !230

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal, align 4, !dbg !231
  %28 = load i8*, i8** %data, align 8, !dbg !232
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink(i8* %28), !dbg !233
  ret void, !dbg !234
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badSink(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !235 {
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
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global, align 4, !dbg !362
  %28 = load i8*, i8** %data, align 8, !dbg !363
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink(i8* %28), !dbg !364
  ret void, !dbg !365
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Sink(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !366 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !370
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !370
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !371
  store i8* %arraydecay, i8** %data, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !380, metadata !DIExpression()), !dbg !381
  store i32 -1, i32* %listenSocket, align 4, !dbg !381
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !382, metadata !DIExpression()), !dbg !383
  store i32 -1, i32* %acceptSocket, align 4, !dbg !383
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !384, metadata !DIExpression()), !dbg !385
  %1 = load i8*, i8** %data, align 8, !dbg !386
  %call = call i64 @strlen(i8* %1) #7, !dbg !387
  store i64 %call, i64* %dataLen, align 8, !dbg !385
  br label %do.body, !dbg !388

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !389
  store i32 %call1, i32* %listenSocket, align 4, !dbg !391
  %2 = load i32, i32* %listenSocket, align 4, !dbg !392
  %cmp = icmp eq i32 %2, -1, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !396

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !398
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !398
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !399
  store i16 2, i16* %sin_family, align 4, !dbg !400
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !401
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !402
  store i32 0, i32* %s_addr, align 4, !dbg !403
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !404
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !405
  store i16 %call2, i16* %sin_port, align 2, !dbg !406
  %4 = load i32, i32* %listenSocket, align 4, !dbg !407
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !409
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !410
  %cmp4 = icmp eq i32 %call3, -1, !dbg !411
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !412

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !413

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !415
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !417
  %cmp8 = icmp eq i32 %call7, -1, !dbg !418
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !419

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !420

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !422
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !423
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !424
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !425
  %cmp12 = icmp eq i32 %8, -1, !dbg !427
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !428

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !429

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !431
  %10 = load i8*, i8** %data, align 8, !dbg !432
  %11 = load i64, i64* %dataLen, align 8, !dbg !433
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !434
  %12 = load i64, i64* %dataLen, align 8, !dbg !435
  %sub = sub i64 100, %12, !dbg !436
  %sub15 = sub i64 %sub, 1, !dbg !437
  %mul = mul i64 1, %sub15, !dbg !438
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !439
  %conv = trunc i64 %call16 to i32, !dbg !439
  store i32 %conv, i32* %recvResult, align 4, !dbg !440
  %13 = load i32, i32* %recvResult, align 4, !dbg !441
  %cmp17 = icmp eq i32 %13, -1, !dbg !443
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !444

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !445
  %cmp19 = icmp eq i32 %14, 0, !dbg !446
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !447

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !448

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !450
  %16 = load i64, i64* %dataLen, align 8, !dbg !451
  %17 = load i32, i32* %recvResult, align 4, !dbg !452
  %conv23 = sext i32 %17 to i64, !dbg !452
  %div = udiv i64 %conv23, 1, !dbg !453
  %add = add i64 %16, %div, !dbg !454
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !450
  store i8 0, i8* %arrayidx, align 1, !dbg !455
  %18 = load i8*, i8** %data, align 8, !dbg !456
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !457
  store i8* %call24, i8** %replace, align 8, !dbg !458
  %19 = load i8*, i8** %replace, align 8, !dbg !459
  %tobool = icmp ne i8* %19, null, !dbg !459
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !461

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !462
  store i8 0, i8* %20, align 1, !dbg !464
  br label %if.end26, !dbg !465

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !466
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !467
  store i8* %call27, i8** %replace, align 8, !dbg !468
  %22 = load i8*, i8** %replace, align 8, !dbg !469
  %tobool28 = icmp ne i8* %22, null, !dbg !469
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !471

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !472
  store i8 0, i8* %23, align 1, !dbg !474
  br label %if.end30, !dbg !475

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !476

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !477
  %cmp31 = icmp ne i32 %24, -1, !dbg !479
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !480

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !481
  %call34 = call i32 @close(i32 %25), !dbg !483
  br label %if.end35, !dbg !484

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !485
  %cmp36 = icmp ne i32 %26, -1, !dbg !487
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !488

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !489
  %call39 = call i32 @close(i32 %27), !dbg !491
  br label %if.end40, !dbg !492

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global, align 4, !dbg !493
  %28 = load i8*, i8** %data, align 8, !dbg !494
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8* %28), !dbg !495
  ret void, !dbg !496
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !497 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !501
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !501
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !502
  store i8* %arraydecay, i8** %data, align 8, !dbg !503
  %1 = load i8*, i8** %data, align 8, !dbg !504
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !505
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal, align 4, !dbg !506
  %2 = load i8*, i8** %data, align 8, !dbg !507
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink(i8* %2), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good() #0 !dbg !510 {
entry:
  call void @goodB2G1(), !dbg !511
  call void @goodB2G2(), !dbg !512
  call void @goodG2B(), !dbg !513
  ret void, !dbg !514
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
!llvm.module.flags = !{!75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_badGlobal", scope: !2, file: !3, line: 51, type: !70, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/source_code")
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
!47 = !{!48, !53, !66}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !55, line: 178, size: 128, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!56 = !{!57, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !54, file: !55, line: 180, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !59, line: 28, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !54, file: !55, line: 181, baseType: !62, size: 112, offset: 16)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 112, elements: !64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !{!65}
!65 = !DISubrange(count: 14)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!67 = !{!0, !68, !71, !73}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G1Global", scope: !2, file: !3, line: 147, type: !70, isLocal: false, isDefinition: true)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global", scope: !2, file: !3, line: 148, type: !70, isLocal: false, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal", scope: !2, file: !3, line: 149, type: !70, isLocal: false, isDefinition: true)
!75 = !{i32 7, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{!"clang version 12.0.0"}
!79 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_bad", scope: !3, file: !3, line: 54, type: !80, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !{}
!83 = !DILocalVariable(name: "data", scope: !79, file: !3, line: 56, type: !66)
!84 = !DILocation(line: 56, column: 12, scope: !79)
!85 = !DILocalVariable(name: "dataBuffer", scope: !79, file: !3, line: 57, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 57, column: 10, scope: !79)
!90 = !DILocation(line: 58, column: 12, scope: !79)
!91 = !DILocation(line: 58, column: 10, scope: !79)
!92 = !DILocalVariable(name: "recvResult", scope: !93, file: !3, line: 64, type: !70)
!93 = distinct !DILexicalBlock(scope: !79, file: !3, line: 59, column: 5)
!94 = !DILocation(line: 64, column: 13, scope: !93)
!95 = !DILocalVariable(name: "service", scope: !93, file: !3, line: 65, type: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !97)
!97 = !{!98, !99, !103, !107}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !96, file: !19, line: 240, baseType: !58, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !96, file: !19, line: 241, baseType: !100, size: 16, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !96, file: !19, line: 242, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !104, file: !19, line: 33, baseType: !48, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !96, file: !19, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 65, column: 28, scope: !93)
!113 = !DILocalVariable(name: "replace", scope: !93, file: !3, line: 66, type: !66)
!114 = !DILocation(line: 66, column: 15, scope: !93)
!115 = !DILocalVariable(name: "listenSocket", scope: !93, file: !3, line: 67, type: !70)
!116 = !DILocation(line: 67, column: 16, scope: !93)
!117 = !DILocalVariable(name: "acceptSocket", scope: !93, file: !3, line: 68, type: !70)
!118 = !DILocation(line: 68, column: 16, scope: !93)
!119 = !DILocalVariable(name: "dataLen", scope: !93, file: !3, line: 69, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DILocation(line: 69, column: 16, scope: !93)
!124 = !DILocation(line: 69, column: 33, scope: !93)
!125 = !DILocation(line: 69, column: 26, scope: !93)
!126 = !DILocation(line: 70, column: 9, scope: !93)
!127 = !DILocation(line: 80, column: 28, scope: !128)
!128 = distinct !DILexicalBlock(scope: !93, file: !3, line: 71, column: 9)
!129 = !DILocation(line: 80, column: 26, scope: !128)
!130 = !DILocation(line: 81, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 81, column: 17)
!132 = !DILocation(line: 81, column: 30, scope: !131)
!133 = !DILocation(line: 81, column: 17, scope: !128)
!134 = !DILocation(line: 83, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 82, column: 13)
!136 = !DILocation(line: 85, column: 13, scope: !128)
!137 = !DILocation(line: 86, column: 21, scope: !128)
!138 = !DILocation(line: 86, column: 32, scope: !128)
!139 = !DILocation(line: 87, column: 21, scope: !128)
!140 = !DILocation(line: 87, column: 30, scope: !128)
!141 = !DILocation(line: 87, column: 37, scope: !128)
!142 = !DILocation(line: 88, column: 32, scope: !128)
!143 = !DILocation(line: 88, column: 21, scope: !128)
!144 = !DILocation(line: 88, column: 30, scope: !128)
!145 = !DILocation(line: 89, column: 22, scope: !146)
!146 = distinct !DILexicalBlock(scope: !128, file: !3, line: 89, column: 17)
!147 = !DILocation(line: 89, column: 36, scope: !146)
!148 = !DILocation(line: 89, column: 17, scope: !146)
!149 = !DILocation(line: 89, column: 81, scope: !146)
!150 = !DILocation(line: 89, column: 17, scope: !128)
!151 = !DILocation(line: 91, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !3, line: 90, column: 13)
!153 = !DILocation(line: 93, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !128, file: !3, line: 93, column: 17)
!155 = !DILocation(line: 93, column: 17, scope: !154)
!156 = !DILocation(line: 93, column: 54, scope: !154)
!157 = !DILocation(line: 93, column: 17, scope: !128)
!158 = !DILocation(line: 95, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 94, column: 13)
!160 = !DILocation(line: 97, column: 35, scope: !128)
!161 = !DILocation(line: 97, column: 28, scope: !128)
!162 = !DILocation(line: 97, column: 26, scope: !128)
!163 = !DILocation(line: 98, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !128, file: !3, line: 98, column: 17)
!165 = !DILocation(line: 98, column: 30, scope: !164)
!166 = !DILocation(line: 98, column: 17, scope: !128)
!167 = !DILocation(line: 100, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 99, column: 13)
!169 = !DILocation(line: 103, column: 31, scope: !128)
!170 = !DILocation(line: 103, column: 54, scope: !128)
!171 = !DILocation(line: 103, column: 61, scope: !128)
!172 = !DILocation(line: 103, column: 59, scope: !128)
!173 = !DILocation(line: 103, column: 93, scope: !128)
!174 = !DILocation(line: 103, column: 91, scope: !128)
!175 = !DILocation(line: 103, column: 101, scope: !128)
!176 = !DILocation(line: 103, column: 84, scope: !128)
!177 = !DILocation(line: 103, column: 26, scope: !128)
!178 = !DILocation(line: 103, column: 24, scope: !128)
!179 = !DILocation(line: 104, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !128, file: !3, line: 104, column: 17)
!181 = !DILocation(line: 104, column: 28, scope: !180)
!182 = !DILocation(line: 104, column: 44, scope: !180)
!183 = !DILocation(line: 104, column: 47, scope: !180)
!184 = !DILocation(line: 104, column: 58, scope: !180)
!185 = !DILocation(line: 104, column: 17, scope: !128)
!186 = !DILocation(line: 106, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !3, line: 105, column: 13)
!188 = !DILocation(line: 109, column: 13, scope: !128)
!189 = !DILocation(line: 109, column: 18, scope: !128)
!190 = !DILocation(line: 109, column: 28, scope: !128)
!191 = !DILocation(line: 109, column: 39, scope: !128)
!192 = !DILocation(line: 109, column: 26, scope: !128)
!193 = !DILocation(line: 109, column: 55, scope: !128)
!194 = !DILocation(line: 111, column: 30, scope: !128)
!195 = !DILocation(line: 111, column: 23, scope: !128)
!196 = !DILocation(line: 111, column: 21, scope: !128)
!197 = !DILocation(line: 112, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !128, file: !3, line: 112, column: 17)
!199 = !DILocation(line: 112, column: 17, scope: !128)
!200 = !DILocation(line: 114, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 113, column: 13)
!202 = !DILocation(line: 114, column: 26, scope: !201)
!203 = !DILocation(line: 115, column: 13, scope: !201)
!204 = !DILocation(line: 116, column: 30, scope: !128)
!205 = !DILocation(line: 116, column: 23, scope: !128)
!206 = !DILocation(line: 116, column: 21, scope: !128)
!207 = !DILocation(line: 117, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !128, file: !3, line: 117, column: 17)
!209 = !DILocation(line: 117, column: 17, scope: !128)
!210 = !DILocation(line: 119, column: 18, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !3, line: 118, column: 13)
!212 = !DILocation(line: 119, column: 26, scope: !211)
!213 = !DILocation(line: 120, column: 13, scope: !211)
!214 = !DILocation(line: 121, column: 9, scope: !128)
!215 = !DILocation(line: 123, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !93, file: !3, line: 123, column: 13)
!217 = !DILocation(line: 123, column: 26, scope: !216)
!218 = !DILocation(line: 123, column: 13, scope: !93)
!219 = !DILocation(line: 125, column: 26, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 124, column: 9)
!221 = !DILocation(line: 125, column: 13, scope: !220)
!222 = !DILocation(line: 126, column: 9, scope: !220)
!223 = !DILocation(line: 127, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !93, file: !3, line: 127, column: 13)
!225 = !DILocation(line: 127, column: 26, scope: !224)
!226 = !DILocation(line: 127, column: 13, scope: !93)
!227 = !DILocation(line: 129, column: 26, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 128, column: 9)
!229 = !DILocation(line: 129, column: 13, scope: !228)
!230 = !DILocation(line: 130, column: 9, scope: !228)
!231 = !DILocation(line: 138, column: 70, scope: !79)
!232 = !DILocation(line: 139, column: 68, scope: !79)
!233 = !DILocation(line: 139, column: 5, scope: !79)
!234 = !DILocation(line: 140, column: 1, scope: !79)
!235 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 153, type: !80, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!236 = !DILocalVariable(name: "data", scope: !235, file: !3, line: 155, type: !66)
!237 = !DILocation(line: 155, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !3, line: 156, type: !86)
!239 = !DILocation(line: 156, column: 10, scope: !235)
!240 = !DILocation(line: 157, column: 12, scope: !235)
!241 = !DILocation(line: 157, column: 10, scope: !235)
!242 = !DILocalVariable(name: "recvResult", scope: !243, file: !3, line: 163, type: !70)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 158, column: 5)
!244 = !DILocation(line: 163, column: 13, scope: !243)
!245 = !DILocalVariable(name: "service", scope: !243, file: !3, line: 164, type: !96)
!246 = !DILocation(line: 164, column: 28, scope: !243)
!247 = !DILocalVariable(name: "replace", scope: !243, file: !3, line: 165, type: !66)
!248 = !DILocation(line: 165, column: 15, scope: !243)
!249 = !DILocalVariable(name: "listenSocket", scope: !243, file: !3, line: 166, type: !70)
!250 = !DILocation(line: 166, column: 16, scope: !243)
!251 = !DILocalVariable(name: "acceptSocket", scope: !243, file: !3, line: 167, type: !70)
!252 = !DILocation(line: 167, column: 16, scope: !243)
!253 = !DILocalVariable(name: "dataLen", scope: !243, file: !3, line: 168, type: !120)
!254 = !DILocation(line: 168, column: 16, scope: !243)
!255 = !DILocation(line: 168, column: 33, scope: !243)
!256 = !DILocation(line: 168, column: 26, scope: !243)
!257 = !DILocation(line: 169, column: 9, scope: !243)
!258 = !DILocation(line: 179, column: 28, scope: !259)
!259 = distinct !DILexicalBlock(scope: !243, file: !3, line: 170, column: 9)
!260 = !DILocation(line: 179, column: 26, scope: !259)
!261 = !DILocation(line: 180, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 180, column: 17)
!263 = !DILocation(line: 180, column: 30, scope: !262)
!264 = !DILocation(line: 180, column: 17, scope: !259)
!265 = !DILocation(line: 182, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 181, column: 13)
!267 = !DILocation(line: 184, column: 13, scope: !259)
!268 = !DILocation(line: 185, column: 21, scope: !259)
!269 = !DILocation(line: 185, column: 32, scope: !259)
!270 = !DILocation(line: 186, column: 21, scope: !259)
!271 = !DILocation(line: 186, column: 30, scope: !259)
!272 = !DILocation(line: 186, column: 37, scope: !259)
!273 = !DILocation(line: 187, column: 32, scope: !259)
!274 = !DILocation(line: 187, column: 21, scope: !259)
!275 = !DILocation(line: 187, column: 30, scope: !259)
!276 = !DILocation(line: 188, column: 22, scope: !277)
!277 = distinct !DILexicalBlock(scope: !259, file: !3, line: 188, column: 17)
!278 = !DILocation(line: 188, column: 36, scope: !277)
!279 = !DILocation(line: 188, column: 17, scope: !277)
!280 = !DILocation(line: 188, column: 81, scope: !277)
!281 = !DILocation(line: 188, column: 17, scope: !259)
!282 = !DILocation(line: 190, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !277, file: !3, line: 189, column: 13)
!284 = !DILocation(line: 192, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !259, file: !3, line: 192, column: 17)
!286 = !DILocation(line: 192, column: 17, scope: !285)
!287 = !DILocation(line: 192, column: 54, scope: !285)
!288 = !DILocation(line: 192, column: 17, scope: !259)
!289 = !DILocation(line: 194, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 193, column: 13)
!291 = !DILocation(line: 196, column: 35, scope: !259)
!292 = !DILocation(line: 196, column: 28, scope: !259)
!293 = !DILocation(line: 196, column: 26, scope: !259)
!294 = !DILocation(line: 197, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !259, file: !3, line: 197, column: 17)
!296 = !DILocation(line: 197, column: 30, scope: !295)
!297 = !DILocation(line: 197, column: 17, scope: !259)
!298 = !DILocation(line: 199, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 198, column: 13)
!300 = !DILocation(line: 202, column: 31, scope: !259)
!301 = !DILocation(line: 202, column: 54, scope: !259)
!302 = !DILocation(line: 202, column: 61, scope: !259)
!303 = !DILocation(line: 202, column: 59, scope: !259)
!304 = !DILocation(line: 202, column: 93, scope: !259)
!305 = !DILocation(line: 202, column: 91, scope: !259)
!306 = !DILocation(line: 202, column: 101, scope: !259)
!307 = !DILocation(line: 202, column: 84, scope: !259)
!308 = !DILocation(line: 202, column: 26, scope: !259)
!309 = !DILocation(line: 202, column: 24, scope: !259)
!310 = !DILocation(line: 203, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !259, file: !3, line: 203, column: 17)
!312 = !DILocation(line: 203, column: 28, scope: !311)
!313 = !DILocation(line: 203, column: 44, scope: !311)
!314 = !DILocation(line: 203, column: 47, scope: !311)
!315 = !DILocation(line: 203, column: 58, scope: !311)
!316 = !DILocation(line: 203, column: 17, scope: !259)
!317 = !DILocation(line: 205, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !311, file: !3, line: 204, column: 13)
!319 = !DILocation(line: 208, column: 13, scope: !259)
!320 = !DILocation(line: 208, column: 18, scope: !259)
!321 = !DILocation(line: 208, column: 28, scope: !259)
!322 = !DILocation(line: 208, column: 39, scope: !259)
!323 = !DILocation(line: 208, column: 26, scope: !259)
!324 = !DILocation(line: 208, column: 55, scope: !259)
!325 = !DILocation(line: 210, column: 30, scope: !259)
!326 = !DILocation(line: 210, column: 23, scope: !259)
!327 = !DILocation(line: 210, column: 21, scope: !259)
!328 = !DILocation(line: 211, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !259, file: !3, line: 211, column: 17)
!330 = !DILocation(line: 211, column: 17, scope: !259)
!331 = !DILocation(line: 213, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 212, column: 13)
!333 = !DILocation(line: 213, column: 26, scope: !332)
!334 = !DILocation(line: 214, column: 13, scope: !332)
!335 = !DILocation(line: 215, column: 30, scope: !259)
!336 = !DILocation(line: 215, column: 23, scope: !259)
!337 = !DILocation(line: 215, column: 21, scope: !259)
!338 = !DILocation(line: 216, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !259, file: !3, line: 216, column: 17)
!340 = !DILocation(line: 216, column: 17, scope: !259)
!341 = !DILocation(line: 218, column: 18, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 217, column: 13)
!343 = !DILocation(line: 218, column: 26, scope: !342)
!344 = !DILocation(line: 219, column: 13, scope: !342)
!345 = !DILocation(line: 220, column: 9, scope: !259)
!346 = !DILocation(line: 222, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !243, file: !3, line: 222, column: 13)
!348 = !DILocation(line: 222, column: 26, scope: !347)
!349 = !DILocation(line: 222, column: 13, scope: !243)
!350 = !DILocation(line: 224, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 223, column: 9)
!352 = !DILocation(line: 224, column: 13, scope: !351)
!353 = !DILocation(line: 225, column: 9, scope: !351)
!354 = !DILocation(line: 226, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !243, file: !3, line: 226, column: 13)
!356 = !DILocation(line: 226, column: 26, scope: !355)
!357 = !DILocation(line: 226, column: 13, scope: !243)
!358 = !DILocation(line: 228, column: 26, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 227, column: 9)
!360 = !DILocation(line: 228, column: 13, scope: !359)
!361 = !DILocation(line: 229, column: 9, scope: !359)
!362 = !DILocation(line: 237, column: 75, scope: !235)
!363 = !DILocation(line: 238, column: 73, scope: !235)
!364 = !DILocation(line: 238, column: 5, scope: !235)
!365 = !DILocation(line: 239, column: 1, scope: !235)
!366 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 243, type: !80, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!367 = !DILocalVariable(name: "data", scope: !366, file: !3, line: 245, type: !66)
!368 = !DILocation(line: 245, column: 12, scope: !366)
!369 = !DILocalVariable(name: "dataBuffer", scope: !366, file: !3, line: 246, type: !86)
!370 = !DILocation(line: 246, column: 10, scope: !366)
!371 = !DILocation(line: 247, column: 12, scope: !366)
!372 = !DILocation(line: 247, column: 10, scope: !366)
!373 = !DILocalVariable(name: "recvResult", scope: !374, file: !3, line: 253, type: !70)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 248, column: 5)
!375 = !DILocation(line: 253, column: 13, scope: !374)
!376 = !DILocalVariable(name: "service", scope: !374, file: !3, line: 254, type: !96)
!377 = !DILocation(line: 254, column: 28, scope: !374)
!378 = !DILocalVariable(name: "replace", scope: !374, file: !3, line: 255, type: !66)
!379 = !DILocation(line: 255, column: 15, scope: !374)
!380 = !DILocalVariable(name: "listenSocket", scope: !374, file: !3, line: 256, type: !70)
!381 = !DILocation(line: 256, column: 16, scope: !374)
!382 = !DILocalVariable(name: "acceptSocket", scope: !374, file: !3, line: 257, type: !70)
!383 = !DILocation(line: 257, column: 16, scope: !374)
!384 = !DILocalVariable(name: "dataLen", scope: !374, file: !3, line: 258, type: !120)
!385 = !DILocation(line: 258, column: 16, scope: !374)
!386 = !DILocation(line: 258, column: 33, scope: !374)
!387 = !DILocation(line: 258, column: 26, scope: !374)
!388 = !DILocation(line: 259, column: 9, scope: !374)
!389 = !DILocation(line: 269, column: 28, scope: !390)
!390 = distinct !DILexicalBlock(scope: !374, file: !3, line: 260, column: 9)
!391 = !DILocation(line: 269, column: 26, scope: !390)
!392 = !DILocation(line: 270, column: 17, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 270, column: 17)
!394 = !DILocation(line: 270, column: 30, scope: !393)
!395 = !DILocation(line: 270, column: 17, scope: !390)
!396 = !DILocation(line: 272, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 271, column: 13)
!398 = !DILocation(line: 274, column: 13, scope: !390)
!399 = !DILocation(line: 275, column: 21, scope: !390)
!400 = !DILocation(line: 275, column: 32, scope: !390)
!401 = !DILocation(line: 276, column: 21, scope: !390)
!402 = !DILocation(line: 276, column: 30, scope: !390)
!403 = !DILocation(line: 276, column: 37, scope: !390)
!404 = !DILocation(line: 277, column: 32, scope: !390)
!405 = !DILocation(line: 277, column: 21, scope: !390)
!406 = !DILocation(line: 277, column: 30, scope: !390)
!407 = !DILocation(line: 278, column: 22, scope: !408)
!408 = distinct !DILexicalBlock(scope: !390, file: !3, line: 278, column: 17)
!409 = !DILocation(line: 278, column: 36, scope: !408)
!410 = !DILocation(line: 278, column: 17, scope: !408)
!411 = !DILocation(line: 278, column: 81, scope: !408)
!412 = !DILocation(line: 278, column: 17, scope: !390)
!413 = !DILocation(line: 280, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !3, line: 279, column: 13)
!415 = !DILocation(line: 282, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !390, file: !3, line: 282, column: 17)
!417 = !DILocation(line: 282, column: 17, scope: !416)
!418 = !DILocation(line: 282, column: 54, scope: !416)
!419 = !DILocation(line: 282, column: 17, scope: !390)
!420 = !DILocation(line: 284, column: 17, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !3, line: 283, column: 13)
!422 = !DILocation(line: 286, column: 35, scope: !390)
!423 = !DILocation(line: 286, column: 28, scope: !390)
!424 = !DILocation(line: 286, column: 26, scope: !390)
!425 = !DILocation(line: 287, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !390, file: !3, line: 287, column: 17)
!427 = !DILocation(line: 287, column: 30, scope: !426)
!428 = !DILocation(line: 287, column: 17, scope: !390)
!429 = !DILocation(line: 289, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 288, column: 13)
!431 = !DILocation(line: 292, column: 31, scope: !390)
!432 = !DILocation(line: 292, column: 54, scope: !390)
!433 = !DILocation(line: 292, column: 61, scope: !390)
!434 = !DILocation(line: 292, column: 59, scope: !390)
!435 = !DILocation(line: 292, column: 93, scope: !390)
!436 = !DILocation(line: 292, column: 91, scope: !390)
!437 = !DILocation(line: 292, column: 101, scope: !390)
!438 = !DILocation(line: 292, column: 84, scope: !390)
!439 = !DILocation(line: 292, column: 26, scope: !390)
!440 = !DILocation(line: 292, column: 24, scope: !390)
!441 = !DILocation(line: 293, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !390, file: !3, line: 293, column: 17)
!443 = !DILocation(line: 293, column: 28, scope: !442)
!444 = !DILocation(line: 293, column: 44, scope: !442)
!445 = !DILocation(line: 293, column: 47, scope: !442)
!446 = !DILocation(line: 293, column: 58, scope: !442)
!447 = !DILocation(line: 293, column: 17, scope: !390)
!448 = !DILocation(line: 295, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !3, line: 294, column: 13)
!450 = !DILocation(line: 298, column: 13, scope: !390)
!451 = !DILocation(line: 298, column: 18, scope: !390)
!452 = !DILocation(line: 298, column: 28, scope: !390)
!453 = !DILocation(line: 298, column: 39, scope: !390)
!454 = !DILocation(line: 298, column: 26, scope: !390)
!455 = !DILocation(line: 298, column: 55, scope: !390)
!456 = !DILocation(line: 300, column: 30, scope: !390)
!457 = !DILocation(line: 300, column: 23, scope: !390)
!458 = !DILocation(line: 300, column: 21, scope: !390)
!459 = !DILocation(line: 301, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !390, file: !3, line: 301, column: 17)
!461 = !DILocation(line: 301, column: 17, scope: !390)
!462 = !DILocation(line: 303, column: 18, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 302, column: 13)
!464 = !DILocation(line: 303, column: 26, scope: !463)
!465 = !DILocation(line: 304, column: 13, scope: !463)
!466 = !DILocation(line: 305, column: 30, scope: !390)
!467 = !DILocation(line: 305, column: 23, scope: !390)
!468 = !DILocation(line: 305, column: 21, scope: !390)
!469 = !DILocation(line: 306, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !390, file: !3, line: 306, column: 17)
!471 = !DILocation(line: 306, column: 17, scope: !390)
!472 = !DILocation(line: 308, column: 18, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 307, column: 13)
!474 = !DILocation(line: 308, column: 26, scope: !473)
!475 = !DILocation(line: 309, column: 13, scope: !473)
!476 = !DILocation(line: 310, column: 9, scope: !390)
!477 = !DILocation(line: 312, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !374, file: !3, line: 312, column: 13)
!479 = !DILocation(line: 312, column: 26, scope: !478)
!480 = !DILocation(line: 312, column: 13, scope: !374)
!481 = !DILocation(line: 314, column: 26, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 313, column: 9)
!483 = !DILocation(line: 314, column: 13, scope: !482)
!484 = !DILocation(line: 315, column: 9, scope: !482)
!485 = !DILocation(line: 316, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !374, file: !3, line: 316, column: 13)
!487 = !DILocation(line: 316, column: 26, scope: !486)
!488 = !DILocation(line: 316, column: 13, scope: !374)
!489 = !DILocation(line: 318, column: 26, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 317, column: 9)
!491 = !DILocation(line: 318, column: 13, scope: !490)
!492 = !DILocation(line: 319, column: 9, scope: !490)
!493 = !DILocation(line: 327, column: 75, scope: !366)
!494 = !DILocation(line: 328, column: 73, scope: !366)
!495 = !DILocation(line: 328, column: 5, scope: !366)
!496 = !DILocation(line: 329, column: 1, scope: !366)
!497 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 333, type: !80, scopeLine: 334, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!498 = !DILocalVariable(name: "data", scope: !497, file: !3, line: 335, type: !66)
!499 = !DILocation(line: 335, column: 12, scope: !497)
!500 = !DILocalVariable(name: "dataBuffer", scope: !497, file: !3, line: 336, type: !86)
!501 = !DILocation(line: 336, column: 10, scope: !497)
!502 = !DILocation(line: 337, column: 12, scope: !497)
!503 = !DILocation(line: 337, column: 10, scope: !497)
!504 = !DILocation(line: 339, column: 12, scope: !497)
!505 = !DILocation(line: 339, column: 5, scope: !497)
!506 = !DILocation(line: 340, column: 74, scope: !497)
!507 = !DILocation(line: 341, column: 72, scope: !497)
!508 = !DILocation(line: 341, column: 5, scope: !497)
!509 = !DILocation(line: 342, column: 1, scope: !497)
!510 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good", scope: !3, file: !3, line: 344, type: !80, scopeLine: 345, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!511 = !DILocation(line: 346, column: 5, scope: !510)
!512 = !DILocation(line: 347, column: 5, scope: !510)
!513 = !DILocation(line: 348, column: 5, scope: !510)
!514 = !DILocation(line: 349, column: 1, scope: !510)
