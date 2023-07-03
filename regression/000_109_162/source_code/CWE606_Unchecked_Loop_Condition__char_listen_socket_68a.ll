; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_68a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData = dso_local global i8* null, align 8, !dbg !68
@CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData = dso_local global i8* null, align 8, !dbg !70

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_bad() #0 !dbg !76 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !82, metadata !DIExpression()), !dbg !86
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !86
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !86
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !87
  store i8* %arraydecay, i8** %data, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !93, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %listenSocket, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %acceptSocket, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %data, align 8, !dbg !122
  %call = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call, i64* %dataLen, align 8, !dbg !121
  br label %do.body, !dbg !124

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !125
  store i32 %call1, i32* %listenSocket, align 4, !dbg !127
  %2 = load i32, i32* %listenSocket, align 4, !dbg !128
  %cmp = icmp eq i32 %2, -1, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !132

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !134
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !135
  store i16 2, i16* %sin_family, align 4, !dbg !136
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !137
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !138
  store i32 0, i32* %s_addr, align 4, !dbg !139
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !140
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !141
  store i16 %call2, i16* %sin_port, align 2, !dbg !142
  %4 = load i32, i32* %listenSocket, align 4, !dbg !143
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !145
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !146
  %cmp4 = icmp eq i32 %call3, -1, !dbg !147
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !148

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !149

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !151
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !153
  %cmp8 = icmp eq i32 %call7, -1, !dbg !154
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !155

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !156

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !158
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !159
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !160
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !161
  %cmp12 = icmp eq i32 %8, -1, !dbg !163
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !164

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !165

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !167
  %10 = load i8*, i8** %data, align 8, !dbg !168
  %11 = load i64, i64* %dataLen, align 8, !dbg !169
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !170
  %12 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub = sub i64 100, %12, !dbg !172
  %sub15 = sub i64 %sub, 1, !dbg !173
  %mul = mul i64 1, %sub15, !dbg !174
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !175
  %conv = trunc i64 %call16 to i32, !dbg !175
  store i32 %conv, i32* %recvResult, align 4, !dbg !176
  %13 = load i32, i32* %recvResult, align 4, !dbg !177
  %cmp17 = icmp eq i32 %13, -1, !dbg !179
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !180

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !181
  %cmp19 = icmp eq i32 %14, 0, !dbg !182
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !183

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !184

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !186
  %16 = load i64, i64* %dataLen, align 8, !dbg !187
  %17 = load i32, i32* %recvResult, align 4, !dbg !188
  %conv23 = sext i32 %17 to i64, !dbg !188
  %div = udiv i64 %conv23, 1, !dbg !189
  %add = add i64 %16, %div, !dbg !190
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !186
  store i8 0, i8* %arrayidx, align 1, !dbg !191
  %18 = load i8*, i8** %data, align 8, !dbg !192
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !193
  store i8* %call24, i8** %replace, align 8, !dbg !194
  %19 = load i8*, i8** %replace, align 8, !dbg !195
  %tobool = icmp ne i8* %19, null, !dbg !195
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !197

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !198
  store i8 0, i8* %20, align 1, !dbg !200
  br label %if.end26, !dbg !201

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !202
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !203
  store i8* %call27, i8** %replace, align 8, !dbg !204
  %22 = load i8*, i8** %replace, align 8, !dbg !205
  %tobool28 = icmp ne i8* %22, null, !dbg !205
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !207

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !208
  store i8 0, i8* %23, align 1, !dbg !210
  br label %if.end30, !dbg !211

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !212

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !213
  %cmp31 = icmp ne i32 %24, -1, !dbg !215
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !216

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !217
  %call34 = call i32 @close(i32 %25), !dbg !219
  br label %if.end35, !dbg !220

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !221
  %cmp36 = icmp ne i32 %26, -1, !dbg !223
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !224

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !225
  %call39 = call i32 @close(i32 %27), !dbg !227
  br label %if.end40, !dbg !228

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !229
  store i8* %28, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData, align 8, !dbg !230
  call void (...) @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink(), !dbg !231
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_badSink(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !233 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !237
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !238
  store i8* %arraydecay, i8** %data, align 8, !dbg !239
  %1 = load i8*, i8** %data, align 8, !dbg !240
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !241
  %2 = load i8*, i8** %data, align 8, !dbg !242
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData, align 8, !dbg !243
  call void (...) @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodG2BSink(), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodG2BSink(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !260, metadata !DIExpression()), !dbg !261
  store i32 -1, i32* %listenSocket, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 -1, i32* %acceptSocket, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !264, metadata !DIExpression()), !dbg !265
  %1 = load i8*, i8** %data, align 8, !dbg !266
  %call = call i64 @strlen(i8* %1) #7, !dbg !267
  store i64 %call, i64* %dataLen, align 8, !dbg !265
  br label %do.body, !dbg !268

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !269
  store i32 %call1, i32* %listenSocket, align 4, !dbg !271
  %2 = load i32, i32* %listenSocket, align 4, !dbg !272
  %cmp = icmp eq i32 %2, -1, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !276

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !278
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !278
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !279
  store i16 2, i16* %sin_family, align 4, !dbg !280
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !281
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !282
  store i32 0, i32* %s_addr, align 4, !dbg !283
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !284
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !285
  store i16 %call2, i16* %sin_port, align 2, !dbg !286
  %4 = load i32, i32* %listenSocket, align 4, !dbg !287
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !289
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #8, !dbg !290
  %cmp4 = icmp eq i32 %call3, -1, !dbg !291
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !292

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !293

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %listenSocket, align 4, !dbg !295
  %call7 = call i32 @listen(i32 %6, i32 5) #8, !dbg !297
  %cmp8 = icmp eq i32 %call7, -1, !dbg !298
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !299

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !300

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %listenSocket, align 4, !dbg !302
  %call11 = call i32 @accept(i32 %7, %struct.sockaddr* null, i32* null), !dbg !303
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !304
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !305
  %cmp12 = icmp eq i32 %8, -1, !dbg !307
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !308

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !309

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %acceptSocket, align 4, !dbg !311
  %10 = load i8*, i8** %data, align 8, !dbg !312
  %11 = load i64, i64* %dataLen, align 8, !dbg !313
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !314
  %12 = load i64, i64* %dataLen, align 8, !dbg !315
  %sub = sub i64 100, %12, !dbg !316
  %sub15 = sub i64 %sub, 1, !dbg !317
  %mul = mul i64 1, %sub15, !dbg !318
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !319
  %conv = trunc i64 %call16 to i32, !dbg !319
  store i32 %conv, i32* %recvResult, align 4, !dbg !320
  %13 = load i32, i32* %recvResult, align 4, !dbg !321
  %cmp17 = icmp eq i32 %13, -1, !dbg !323
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !324

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %recvResult, align 4, !dbg !325
  %cmp19 = icmp eq i32 %14, 0, !dbg !326
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !327

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !328

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %data, align 8, !dbg !330
  %16 = load i64, i64* %dataLen, align 8, !dbg !331
  %17 = load i32, i32* %recvResult, align 4, !dbg !332
  %conv23 = sext i32 %17 to i64, !dbg !332
  %div = udiv i64 %conv23, 1, !dbg !333
  %add = add i64 %16, %div, !dbg !334
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !330
  store i8 0, i8* %arrayidx, align 1, !dbg !335
  %18 = load i8*, i8** %data, align 8, !dbg !336
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !337
  store i8* %call24, i8** %replace, align 8, !dbg !338
  %19 = load i8*, i8** %replace, align 8, !dbg !339
  %tobool = icmp ne i8* %19, null, !dbg !339
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !341

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !342
  store i8 0, i8* %20, align 1, !dbg !344
  br label %if.end26, !dbg !345

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %data, align 8, !dbg !346
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !347
  store i8* %call27, i8** %replace, align 8, !dbg !348
  %22 = load i8*, i8** %replace, align 8, !dbg !349
  %tobool28 = icmp ne i8* %22, null, !dbg !349
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !351

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %replace, align 8, !dbg !352
  store i8 0, i8* %23, align 1, !dbg !354
  br label %if.end30, !dbg !355

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !356

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %listenSocket, align 4, !dbg !357
  %cmp31 = icmp ne i32 %24, -1, !dbg !359
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !360

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %listenSocket, align 4, !dbg !361
  %call34 = call i32 @close(i32 %25), !dbg !363
  br label %if.end35, !dbg !364

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !365
  %cmp36 = icmp ne i32 %26, -1, !dbg !367
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !368

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %acceptSocket, align 4, !dbg !369
  %call39 = call i32 @close(i32 %27), !dbg !371
  br label %if.end40, !dbg !372

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %data, align 8, !dbg !373
  store i8* %28, i8** @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData, align 8, !dbg !374
  call void (...) @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink(), !dbg !375
  ret void, !dbg !376
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68b_goodB2GSink(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_68_good() #0 !dbg !377 {
entry:
  call void @goodG2B(), !dbg !378
  call void @goodB2G(), !dbg !379
  ret void, !dbg !380
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
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_badData", scope: !2, file: !3, line: 48, type: !66, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_162/source_code")
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
!67 = !{!0, !68, !70}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodG2BData", scope: !2, file: !3, line: 49, type: !66, isLocal: false, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_goodB2GData", scope: !2, file: !3, line: 50, type: !66, isLocal: false, isDefinition: true)
!72 = !{i32 7, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{!"clang version 12.0.0"}
!76 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_bad", scope: !3, file: !3, line: 56, type: !77, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null}
!79 = !{}
!80 = !DILocalVariable(name: "data", scope: !76, file: !3, line: 58, type: !66)
!81 = !DILocation(line: 58, column: 12, scope: !76)
!82 = !DILocalVariable(name: "dataBuffer", scope: !76, file: !3, line: 59, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 800, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 100)
!86 = !DILocation(line: 59, column: 10, scope: !76)
!87 = !DILocation(line: 60, column: 12, scope: !76)
!88 = !DILocation(line: 60, column: 10, scope: !76)
!89 = !DILocalVariable(name: "recvResult", scope: !90, file: !3, line: 66, type: !91)
!90 = distinct !DILexicalBlock(scope: !76, file: !3, line: 61, column: 5)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DILocation(line: 66, column: 13, scope: !90)
!93 = !DILocalVariable(name: "service", scope: !90, file: !3, line: 67, type: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !95)
!95 = !{!96, !97, !101, !105}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !94, file: !19, line: 240, baseType: !58, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !94, file: !19, line: 241, baseType: !98, size: 16, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !94, file: !19, line: 242, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !19, line: 33, baseType: !48, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !94, file: !19, line: 245, baseType: !106, size: 64, offset: 64)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !108)
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DILocation(line: 67, column: 28, scope: !90)
!111 = !DILocalVariable(name: "replace", scope: !90, file: !3, line: 68, type: !66)
!112 = !DILocation(line: 68, column: 15, scope: !90)
!113 = !DILocalVariable(name: "listenSocket", scope: !90, file: !3, line: 69, type: !91)
!114 = !DILocation(line: 69, column: 16, scope: !90)
!115 = !DILocalVariable(name: "acceptSocket", scope: !90, file: !3, line: 70, type: !91)
!116 = !DILocation(line: 70, column: 16, scope: !90)
!117 = !DILocalVariable(name: "dataLen", scope: !90, file: !3, line: 71, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocation(line: 71, column: 16, scope: !90)
!122 = !DILocation(line: 71, column: 33, scope: !90)
!123 = !DILocation(line: 71, column: 26, scope: !90)
!124 = !DILocation(line: 72, column: 9, scope: !90)
!125 = !DILocation(line: 82, column: 28, scope: !126)
!126 = distinct !DILexicalBlock(scope: !90, file: !3, line: 73, column: 9)
!127 = !DILocation(line: 82, column: 26, scope: !126)
!128 = !DILocation(line: 83, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 83, column: 17)
!130 = !DILocation(line: 83, column: 30, scope: !129)
!131 = !DILocation(line: 83, column: 17, scope: !126)
!132 = !DILocation(line: 85, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 84, column: 13)
!134 = !DILocation(line: 87, column: 13, scope: !126)
!135 = !DILocation(line: 88, column: 21, scope: !126)
!136 = !DILocation(line: 88, column: 32, scope: !126)
!137 = !DILocation(line: 89, column: 21, scope: !126)
!138 = !DILocation(line: 89, column: 30, scope: !126)
!139 = !DILocation(line: 89, column: 37, scope: !126)
!140 = !DILocation(line: 90, column: 32, scope: !126)
!141 = !DILocation(line: 90, column: 21, scope: !126)
!142 = !DILocation(line: 90, column: 30, scope: !126)
!143 = !DILocation(line: 91, column: 22, scope: !144)
!144 = distinct !DILexicalBlock(scope: !126, file: !3, line: 91, column: 17)
!145 = !DILocation(line: 91, column: 36, scope: !144)
!146 = !DILocation(line: 91, column: 17, scope: !144)
!147 = !DILocation(line: 91, column: 81, scope: !144)
!148 = !DILocation(line: 91, column: 17, scope: !126)
!149 = !DILocation(line: 93, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !3, line: 92, column: 13)
!151 = !DILocation(line: 95, column: 24, scope: !152)
!152 = distinct !DILexicalBlock(scope: !126, file: !3, line: 95, column: 17)
!153 = !DILocation(line: 95, column: 17, scope: !152)
!154 = !DILocation(line: 95, column: 54, scope: !152)
!155 = !DILocation(line: 95, column: 17, scope: !126)
!156 = !DILocation(line: 97, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 96, column: 13)
!158 = !DILocation(line: 99, column: 35, scope: !126)
!159 = !DILocation(line: 99, column: 28, scope: !126)
!160 = !DILocation(line: 99, column: 26, scope: !126)
!161 = !DILocation(line: 100, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !126, file: !3, line: 100, column: 17)
!163 = !DILocation(line: 100, column: 30, scope: !162)
!164 = !DILocation(line: 100, column: 17, scope: !126)
!165 = !DILocation(line: 102, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 101, column: 13)
!167 = !DILocation(line: 105, column: 31, scope: !126)
!168 = !DILocation(line: 105, column: 54, scope: !126)
!169 = !DILocation(line: 105, column: 61, scope: !126)
!170 = !DILocation(line: 105, column: 59, scope: !126)
!171 = !DILocation(line: 105, column: 93, scope: !126)
!172 = !DILocation(line: 105, column: 91, scope: !126)
!173 = !DILocation(line: 105, column: 101, scope: !126)
!174 = !DILocation(line: 105, column: 84, scope: !126)
!175 = !DILocation(line: 105, column: 26, scope: !126)
!176 = !DILocation(line: 105, column: 24, scope: !126)
!177 = !DILocation(line: 106, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !126, file: !3, line: 106, column: 17)
!179 = !DILocation(line: 106, column: 28, scope: !178)
!180 = !DILocation(line: 106, column: 44, scope: !178)
!181 = !DILocation(line: 106, column: 47, scope: !178)
!182 = !DILocation(line: 106, column: 58, scope: !178)
!183 = !DILocation(line: 106, column: 17, scope: !126)
!184 = !DILocation(line: 108, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !3, line: 107, column: 13)
!186 = !DILocation(line: 111, column: 13, scope: !126)
!187 = !DILocation(line: 111, column: 18, scope: !126)
!188 = !DILocation(line: 111, column: 28, scope: !126)
!189 = !DILocation(line: 111, column: 39, scope: !126)
!190 = !DILocation(line: 111, column: 26, scope: !126)
!191 = !DILocation(line: 111, column: 55, scope: !126)
!192 = !DILocation(line: 113, column: 30, scope: !126)
!193 = !DILocation(line: 113, column: 23, scope: !126)
!194 = !DILocation(line: 113, column: 21, scope: !126)
!195 = !DILocation(line: 114, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !126, file: !3, line: 114, column: 17)
!197 = !DILocation(line: 114, column: 17, scope: !126)
!198 = !DILocation(line: 116, column: 18, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 115, column: 13)
!200 = !DILocation(line: 116, column: 26, scope: !199)
!201 = !DILocation(line: 117, column: 13, scope: !199)
!202 = !DILocation(line: 118, column: 30, scope: !126)
!203 = !DILocation(line: 118, column: 23, scope: !126)
!204 = !DILocation(line: 118, column: 21, scope: !126)
!205 = !DILocation(line: 119, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !126, file: !3, line: 119, column: 17)
!207 = !DILocation(line: 119, column: 17, scope: !126)
!208 = !DILocation(line: 121, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 120, column: 13)
!210 = !DILocation(line: 121, column: 26, scope: !209)
!211 = !DILocation(line: 122, column: 13, scope: !209)
!212 = !DILocation(line: 123, column: 9, scope: !126)
!213 = !DILocation(line: 125, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !90, file: !3, line: 125, column: 13)
!215 = !DILocation(line: 125, column: 26, scope: !214)
!216 = !DILocation(line: 125, column: 13, scope: !90)
!217 = !DILocation(line: 127, column: 26, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 126, column: 9)
!219 = !DILocation(line: 127, column: 13, scope: !218)
!220 = !DILocation(line: 128, column: 9, scope: !218)
!221 = !DILocation(line: 129, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !90, file: !3, line: 129, column: 13)
!223 = !DILocation(line: 129, column: 26, scope: !222)
!224 = !DILocation(line: 129, column: 13, scope: !90)
!225 = !DILocation(line: 131, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 130, column: 9)
!227 = !DILocation(line: 131, column: 13, scope: !226)
!228 = !DILocation(line: 132, column: 9, scope: !226)
!229 = !DILocation(line: 140, column: 70, scope: !76)
!230 = !DILocation(line: 140, column: 68, scope: !76)
!231 = !DILocation(line: 141, column: 5, scope: !76)
!232 = !DILocation(line: 142, column: 1, scope: !76)
!233 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 151, type: !77, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!234 = !DILocalVariable(name: "data", scope: !233, file: !3, line: 153, type: !66)
!235 = !DILocation(line: 153, column: 12, scope: !233)
!236 = !DILocalVariable(name: "dataBuffer", scope: !233, file: !3, line: 154, type: !83)
!237 = !DILocation(line: 154, column: 10, scope: !233)
!238 = !DILocation(line: 155, column: 12, scope: !233)
!239 = !DILocation(line: 155, column: 10, scope: !233)
!240 = !DILocation(line: 157, column: 12, scope: !233)
!241 = !DILocation(line: 157, column: 5, scope: !233)
!242 = !DILocation(line: 158, column: 74, scope: !233)
!243 = !DILocation(line: 158, column: 72, scope: !233)
!244 = !DILocation(line: 159, column: 5, scope: !233)
!245 = !DILocation(line: 160, column: 1, scope: !233)
!246 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 163, type: !77, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 165, type: !66)
!248 = !DILocation(line: 165, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !3, line: 166, type: !83)
!250 = !DILocation(line: 166, column: 10, scope: !246)
!251 = !DILocation(line: 167, column: 12, scope: !246)
!252 = !DILocation(line: 167, column: 10, scope: !246)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !3, line: 173, type: !91)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 168, column: 5)
!255 = !DILocation(line: 173, column: 13, scope: !254)
!256 = !DILocalVariable(name: "service", scope: !254, file: !3, line: 174, type: !94)
!257 = !DILocation(line: 174, column: 28, scope: !254)
!258 = !DILocalVariable(name: "replace", scope: !254, file: !3, line: 175, type: !66)
!259 = !DILocation(line: 175, column: 15, scope: !254)
!260 = !DILocalVariable(name: "listenSocket", scope: !254, file: !3, line: 176, type: !91)
!261 = !DILocation(line: 176, column: 16, scope: !254)
!262 = !DILocalVariable(name: "acceptSocket", scope: !254, file: !3, line: 177, type: !91)
!263 = !DILocation(line: 177, column: 16, scope: !254)
!264 = !DILocalVariable(name: "dataLen", scope: !254, file: !3, line: 178, type: !118)
!265 = !DILocation(line: 178, column: 16, scope: !254)
!266 = !DILocation(line: 178, column: 33, scope: !254)
!267 = !DILocation(line: 178, column: 26, scope: !254)
!268 = !DILocation(line: 179, column: 9, scope: !254)
!269 = !DILocation(line: 189, column: 28, scope: !270)
!270 = distinct !DILexicalBlock(scope: !254, file: !3, line: 180, column: 9)
!271 = !DILocation(line: 189, column: 26, scope: !270)
!272 = !DILocation(line: 190, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 190, column: 17)
!274 = !DILocation(line: 190, column: 30, scope: !273)
!275 = !DILocation(line: 190, column: 17, scope: !270)
!276 = !DILocation(line: 192, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 191, column: 13)
!278 = !DILocation(line: 194, column: 13, scope: !270)
!279 = !DILocation(line: 195, column: 21, scope: !270)
!280 = !DILocation(line: 195, column: 32, scope: !270)
!281 = !DILocation(line: 196, column: 21, scope: !270)
!282 = !DILocation(line: 196, column: 30, scope: !270)
!283 = !DILocation(line: 196, column: 37, scope: !270)
!284 = !DILocation(line: 197, column: 32, scope: !270)
!285 = !DILocation(line: 197, column: 21, scope: !270)
!286 = !DILocation(line: 197, column: 30, scope: !270)
!287 = !DILocation(line: 198, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !3, line: 198, column: 17)
!289 = !DILocation(line: 198, column: 36, scope: !288)
!290 = !DILocation(line: 198, column: 17, scope: !288)
!291 = !DILocation(line: 198, column: 81, scope: !288)
!292 = !DILocation(line: 198, column: 17, scope: !270)
!293 = !DILocation(line: 200, column: 17, scope: !294)
!294 = distinct !DILexicalBlock(scope: !288, file: !3, line: 199, column: 13)
!295 = !DILocation(line: 202, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !270, file: !3, line: 202, column: 17)
!297 = !DILocation(line: 202, column: 17, scope: !296)
!298 = !DILocation(line: 202, column: 54, scope: !296)
!299 = !DILocation(line: 202, column: 17, scope: !270)
!300 = !DILocation(line: 204, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !3, line: 203, column: 13)
!302 = !DILocation(line: 206, column: 35, scope: !270)
!303 = !DILocation(line: 206, column: 28, scope: !270)
!304 = !DILocation(line: 206, column: 26, scope: !270)
!305 = !DILocation(line: 207, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !270, file: !3, line: 207, column: 17)
!307 = !DILocation(line: 207, column: 30, scope: !306)
!308 = !DILocation(line: 207, column: 17, scope: !270)
!309 = !DILocation(line: 209, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !3, line: 208, column: 13)
!311 = !DILocation(line: 212, column: 31, scope: !270)
!312 = !DILocation(line: 212, column: 54, scope: !270)
!313 = !DILocation(line: 212, column: 61, scope: !270)
!314 = !DILocation(line: 212, column: 59, scope: !270)
!315 = !DILocation(line: 212, column: 93, scope: !270)
!316 = !DILocation(line: 212, column: 91, scope: !270)
!317 = !DILocation(line: 212, column: 101, scope: !270)
!318 = !DILocation(line: 212, column: 84, scope: !270)
!319 = !DILocation(line: 212, column: 26, scope: !270)
!320 = !DILocation(line: 212, column: 24, scope: !270)
!321 = !DILocation(line: 213, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !270, file: !3, line: 213, column: 17)
!323 = !DILocation(line: 213, column: 28, scope: !322)
!324 = !DILocation(line: 213, column: 44, scope: !322)
!325 = !DILocation(line: 213, column: 47, scope: !322)
!326 = !DILocation(line: 213, column: 58, scope: !322)
!327 = !DILocation(line: 213, column: 17, scope: !270)
!328 = !DILocation(line: 215, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 214, column: 13)
!330 = !DILocation(line: 218, column: 13, scope: !270)
!331 = !DILocation(line: 218, column: 18, scope: !270)
!332 = !DILocation(line: 218, column: 28, scope: !270)
!333 = !DILocation(line: 218, column: 39, scope: !270)
!334 = !DILocation(line: 218, column: 26, scope: !270)
!335 = !DILocation(line: 218, column: 55, scope: !270)
!336 = !DILocation(line: 220, column: 30, scope: !270)
!337 = !DILocation(line: 220, column: 23, scope: !270)
!338 = !DILocation(line: 220, column: 21, scope: !270)
!339 = !DILocation(line: 221, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !270, file: !3, line: 221, column: 17)
!341 = !DILocation(line: 221, column: 17, scope: !270)
!342 = !DILocation(line: 223, column: 18, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 222, column: 13)
!344 = !DILocation(line: 223, column: 26, scope: !343)
!345 = !DILocation(line: 224, column: 13, scope: !343)
!346 = !DILocation(line: 225, column: 30, scope: !270)
!347 = !DILocation(line: 225, column: 23, scope: !270)
!348 = !DILocation(line: 225, column: 21, scope: !270)
!349 = !DILocation(line: 226, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !270, file: !3, line: 226, column: 17)
!351 = !DILocation(line: 226, column: 17, scope: !270)
!352 = !DILocation(line: 228, column: 18, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 227, column: 13)
!354 = !DILocation(line: 228, column: 26, scope: !353)
!355 = !DILocation(line: 229, column: 13, scope: !353)
!356 = !DILocation(line: 230, column: 9, scope: !270)
!357 = !DILocation(line: 232, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !254, file: !3, line: 232, column: 13)
!359 = !DILocation(line: 232, column: 26, scope: !358)
!360 = !DILocation(line: 232, column: 13, scope: !254)
!361 = !DILocation(line: 234, column: 26, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 233, column: 9)
!363 = !DILocation(line: 234, column: 13, scope: !362)
!364 = !DILocation(line: 235, column: 9, scope: !362)
!365 = !DILocation(line: 236, column: 13, scope: !366)
!366 = distinct !DILexicalBlock(scope: !254, file: !3, line: 236, column: 13)
!367 = !DILocation(line: 236, column: 26, scope: !366)
!368 = !DILocation(line: 236, column: 13, scope: !254)
!369 = !DILocation(line: 238, column: 26, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !3, line: 237, column: 9)
!371 = !DILocation(line: 238, column: 13, scope: !370)
!372 = !DILocation(line: 239, column: 9, scope: !370)
!373 = !DILocation(line: 247, column: 74, scope: !246)
!374 = !DILocation(line: 247, column: 72, scope: !246)
!375 = !DILocation(line: 248, column: 5, scope: !246)
!376 = !DILocation(line: 249, column: 1, scope: !246)
!377 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_68_good", scope: !3, file: !3, line: 251, type: !77, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!378 = !DILocation(line: 253, column: 5, scope: !377)
!379 = !DILocation(line: 254, column: 5, scope: !377)
!380 = !DILocation(line: 255, column: 1, scope: !377)
