; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_65a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_65a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65_bad() #0 !dbg !69 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !75, metadata !DIExpression()), !dbg !79
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !79
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
  %28 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !227
  %29 = load i8*, i8** %data, align 8, !dbg !228
  call void %28(i8* %29), !dbg !227
  ret void, !dbg !229
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_badSink(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #5

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !230 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !233, metadata !DIExpression()), !dbg !234
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !236
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !236
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !237
  store i8* %arraydecay, i8** %data, align 8, !dbg !238
  %1 = load i8*, i8** %data, align 8, !dbg !239
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !240
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !241
  %3 = load i8*, i8** %data, align 8, !dbg !242
  call void %2(i8* %3), !dbg !241
  ret void, !dbg !243
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodG2BSink(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !244 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !247, metadata !DIExpression()), !dbg !248
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !248
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
  %28 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !373
  %29 = load i8*, i8** %data, align 8, !dbg !374
  call void %28(i8* %29), !dbg !373
  ret void, !dbg !375
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65b_goodB2GSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_65_good() #0 !dbg !376 {
entry:
  call void @goodG2B(), !dbg !377
  call void @goodB2G(), !dbg !378
  ret void, !dbg !379
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_159/source_code")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65_bad", scope: !1, file: !1, line: 52, type: !70, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !{}
!73 = !DILocalVariable(name: "data", scope: !69, file: !1, line: 54, type: !64)
!74 = !DILocation(line: 54, column: 12, scope: !69)
!75 = !DILocalVariable(name: "funcPtr", scope: !69, file: !1, line: 56, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !64}
!79 = !DILocation(line: 56, column: 12, scope: !69)
!80 = !DILocalVariable(name: "dataBuffer", scope: !69, file: !1, line: 57, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 100)
!84 = !DILocation(line: 57, column: 10, scope: !69)
!85 = !DILocation(line: 58, column: 12, scope: !69)
!86 = !DILocation(line: 58, column: 10, scope: !69)
!87 = !DILocalVariable(name: "recvResult", scope: !88, file: !1, line: 64, type: !89)
!88 = distinct !DILexicalBlock(scope: !69, file: !1, line: 59, column: 5)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DILocation(line: 64, column: 13, scope: !88)
!91 = !DILocalVariable(name: "service", scope: !88, file: !1, line: 65, type: !92)
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
!108 = !DILocation(line: 65, column: 28, scope: !88)
!109 = !DILocalVariable(name: "replace", scope: !88, file: !1, line: 66, type: !64)
!110 = !DILocation(line: 66, column: 15, scope: !88)
!111 = !DILocalVariable(name: "listenSocket", scope: !88, file: !1, line: 67, type: !89)
!112 = !DILocation(line: 67, column: 16, scope: !88)
!113 = !DILocalVariable(name: "acceptSocket", scope: !88, file: !1, line: 68, type: !89)
!114 = !DILocation(line: 68, column: 16, scope: !88)
!115 = !DILocalVariable(name: "dataLen", scope: !88, file: !1, line: 69, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DILocation(line: 69, column: 16, scope: !88)
!120 = !DILocation(line: 69, column: 33, scope: !88)
!121 = !DILocation(line: 69, column: 26, scope: !88)
!122 = !DILocation(line: 70, column: 9, scope: !88)
!123 = !DILocation(line: 80, column: 28, scope: !124)
!124 = distinct !DILexicalBlock(scope: !88, file: !1, line: 71, column: 9)
!125 = !DILocation(line: 80, column: 26, scope: !124)
!126 = !DILocation(line: 81, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 81, column: 17)
!128 = !DILocation(line: 81, column: 30, scope: !127)
!129 = !DILocation(line: 81, column: 17, scope: !124)
!130 = !DILocation(line: 83, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 82, column: 13)
!132 = !DILocation(line: 85, column: 13, scope: !124)
!133 = !DILocation(line: 86, column: 21, scope: !124)
!134 = !DILocation(line: 86, column: 32, scope: !124)
!135 = !DILocation(line: 87, column: 21, scope: !124)
!136 = !DILocation(line: 87, column: 30, scope: !124)
!137 = !DILocation(line: 87, column: 37, scope: !124)
!138 = !DILocation(line: 88, column: 32, scope: !124)
!139 = !DILocation(line: 88, column: 21, scope: !124)
!140 = !DILocation(line: 88, column: 30, scope: !124)
!141 = !DILocation(line: 89, column: 22, scope: !142)
!142 = distinct !DILexicalBlock(scope: !124, file: !1, line: 89, column: 17)
!143 = !DILocation(line: 89, column: 36, scope: !142)
!144 = !DILocation(line: 89, column: 17, scope: !142)
!145 = !DILocation(line: 89, column: 81, scope: !142)
!146 = !DILocation(line: 89, column: 17, scope: !124)
!147 = !DILocation(line: 91, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 90, column: 13)
!149 = !DILocation(line: 93, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !1, line: 93, column: 17)
!151 = !DILocation(line: 93, column: 17, scope: !150)
!152 = !DILocation(line: 93, column: 54, scope: !150)
!153 = !DILocation(line: 93, column: 17, scope: !124)
!154 = !DILocation(line: 95, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 94, column: 13)
!156 = !DILocation(line: 97, column: 35, scope: !124)
!157 = !DILocation(line: 97, column: 28, scope: !124)
!158 = !DILocation(line: 97, column: 26, scope: !124)
!159 = !DILocation(line: 98, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !124, file: !1, line: 98, column: 17)
!161 = !DILocation(line: 98, column: 30, scope: !160)
!162 = !DILocation(line: 98, column: 17, scope: !124)
!163 = !DILocation(line: 100, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 99, column: 13)
!165 = !DILocation(line: 103, column: 31, scope: !124)
!166 = !DILocation(line: 103, column: 54, scope: !124)
!167 = !DILocation(line: 103, column: 61, scope: !124)
!168 = !DILocation(line: 103, column: 59, scope: !124)
!169 = !DILocation(line: 103, column: 93, scope: !124)
!170 = !DILocation(line: 103, column: 91, scope: !124)
!171 = !DILocation(line: 103, column: 101, scope: !124)
!172 = !DILocation(line: 103, column: 84, scope: !124)
!173 = !DILocation(line: 103, column: 26, scope: !124)
!174 = !DILocation(line: 103, column: 24, scope: !124)
!175 = !DILocation(line: 104, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !124, file: !1, line: 104, column: 17)
!177 = !DILocation(line: 104, column: 28, scope: !176)
!178 = !DILocation(line: 104, column: 44, scope: !176)
!179 = !DILocation(line: 104, column: 47, scope: !176)
!180 = !DILocation(line: 104, column: 58, scope: !176)
!181 = !DILocation(line: 104, column: 17, scope: !124)
!182 = !DILocation(line: 106, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 105, column: 13)
!184 = !DILocation(line: 109, column: 13, scope: !124)
!185 = !DILocation(line: 109, column: 18, scope: !124)
!186 = !DILocation(line: 109, column: 28, scope: !124)
!187 = !DILocation(line: 109, column: 39, scope: !124)
!188 = !DILocation(line: 109, column: 26, scope: !124)
!189 = !DILocation(line: 109, column: 55, scope: !124)
!190 = !DILocation(line: 111, column: 30, scope: !124)
!191 = !DILocation(line: 111, column: 23, scope: !124)
!192 = !DILocation(line: 111, column: 21, scope: !124)
!193 = !DILocation(line: 112, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !124, file: !1, line: 112, column: 17)
!195 = !DILocation(line: 112, column: 17, scope: !124)
!196 = !DILocation(line: 114, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 113, column: 13)
!198 = !DILocation(line: 114, column: 26, scope: !197)
!199 = !DILocation(line: 115, column: 13, scope: !197)
!200 = !DILocation(line: 116, column: 30, scope: !124)
!201 = !DILocation(line: 116, column: 23, scope: !124)
!202 = !DILocation(line: 116, column: 21, scope: !124)
!203 = !DILocation(line: 117, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !124, file: !1, line: 117, column: 17)
!205 = !DILocation(line: 117, column: 17, scope: !124)
!206 = !DILocation(line: 119, column: 18, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 118, column: 13)
!208 = !DILocation(line: 119, column: 26, scope: !207)
!209 = !DILocation(line: 120, column: 13, scope: !207)
!210 = !DILocation(line: 121, column: 9, scope: !124)
!211 = !DILocation(line: 123, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !88, file: !1, line: 123, column: 13)
!213 = !DILocation(line: 123, column: 26, scope: !212)
!214 = !DILocation(line: 123, column: 13, scope: !88)
!215 = !DILocation(line: 125, column: 26, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 124, column: 9)
!217 = !DILocation(line: 125, column: 13, scope: !216)
!218 = !DILocation(line: 126, column: 9, scope: !216)
!219 = !DILocation(line: 127, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !88, file: !1, line: 127, column: 13)
!221 = !DILocation(line: 127, column: 26, scope: !220)
!222 = !DILocation(line: 127, column: 13, scope: !88)
!223 = !DILocation(line: 129, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 128, column: 9)
!225 = !DILocation(line: 129, column: 13, scope: !224)
!226 = !DILocation(line: 130, column: 9, scope: !224)
!227 = !DILocation(line: 139, column: 5, scope: !69)
!228 = !DILocation(line: 139, column: 13, scope: !69)
!229 = !DILocation(line: 140, column: 1, scope: !69)
!230 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 148, type: !70, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!231 = !DILocalVariable(name: "data", scope: !230, file: !1, line: 150, type: !64)
!232 = !DILocation(line: 150, column: 12, scope: !230)
!233 = !DILocalVariable(name: "funcPtr", scope: !230, file: !1, line: 151, type: !76)
!234 = !DILocation(line: 151, column: 12, scope: !230)
!235 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !1, line: 152, type: !81)
!236 = !DILocation(line: 152, column: 10, scope: !230)
!237 = !DILocation(line: 153, column: 12, scope: !230)
!238 = !DILocation(line: 153, column: 10, scope: !230)
!239 = !DILocation(line: 155, column: 12, scope: !230)
!240 = !DILocation(line: 155, column: 5, scope: !230)
!241 = !DILocation(line: 156, column: 5, scope: !230)
!242 = !DILocation(line: 156, column: 13, scope: !230)
!243 = !DILocation(line: 157, column: 1, scope: !230)
!244 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 161, type: !70, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!245 = !DILocalVariable(name: "data", scope: !244, file: !1, line: 163, type: !64)
!246 = !DILocation(line: 163, column: 12, scope: !244)
!247 = !DILocalVariable(name: "funcPtr", scope: !244, file: !1, line: 164, type: !76)
!248 = !DILocation(line: 164, column: 12, scope: !244)
!249 = !DILocalVariable(name: "dataBuffer", scope: !244, file: !1, line: 165, type: !81)
!250 = !DILocation(line: 165, column: 10, scope: !244)
!251 = !DILocation(line: 166, column: 12, scope: !244)
!252 = !DILocation(line: 166, column: 10, scope: !244)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !1, line: 172, type: !89)
!254 = distinct !DILexicalBlock(scope: !244, file: !1, line: 167, column: 5)
!255 = !DILocation(line: 172, column: 13, scope: !254)
!256 = !DILocalVariable(name: "service", scope: !254, file: !1, line: 173, type: !92)
!257 = !DILocation(line: 173, column: 28, scope: !254)
!258 = !DILocalVariable(name: "replace", scope: !254, file: !1, line: 174, type: !64)
!259 = !DILocation(line: 174, column: 15, scope: !254)
!260 = !DILocalVariable(name: "listenSocket", scope: !254, file: !1, line: 175, type: !89)
!261 = !DILocation(line: 175, column: 16, scope: !254)
!262 = !DILocalVariable(name: "acceptSocket", scope: !254, file: !1, line: 176, type: !89)
!263 = !DILocation(line: 176, column: 16, scope: !254)
!264 = !DILocalVariable(name: "dataLen", scope: !254, file: !1, line: 177, type: !116)
!265 = !DILocation(line: 177, column: 16, scope: !254)
!266 = !DILocation(line: 177, column: 33, scope: !254)
!267 = !DILocation(line: 177, column: 26, scope: !254)
!268 = !DILocation(line: 178, column: 9, scope: !254)
!269 = !DILocation(line: 188, column: 28, scope: !270)
!270 = distinct !DILexicalBlock(scope: !254, file: !1, line: 179, column: 9)
!271 = !DILocation(line: 188, column: 26, scope: !270)
!272 = !DILocation(line: 189, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 189, column: 17)
!274 = !DILocation(line: 189, column: 30, scope: !273)
!275 = !DILocation(line: 189, column: 17, scope: !270)
!276 = !DILocation(line: 191, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 190, column: 13)
!278 = !DILocation(line: 193, column: 13, scope: !270)
!279 = !DILocation(line: 194, column: 21, scope: !270)
!280 = !DILocation(line: 194, column: 32, scope: !270)
!281 = !DILocation(line: 195, column: 21, scope: !270)
!282 = !DILocation(line: 195, column: 30, scope: !270)
!283 = !DILocation(line: 195, column: 37, scope: !270)
!284 = !DILocation(line: 196, column: 32, scope: !270)
!285 = !DILocation(line: 196, column: 21, scope: !270)
!286 = !DILocation(line: 196, column: 30, scope: !270)
!287 = !DILocation(line: 197, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !1, line: 197, column: 17)
!289 = !DILocation(line: 197, column: 36, scope: !288)
!290 = !DILocation(line: 197, column: 17, scope: !288)
!291 = !DILocation(line: 197, column: 81, scope: !288)
!292 = !DILocation(line: 197, column: 17, scope: !270)
!293 = !DILocation(line: 199, column: 17, scope: !294)
!294 = distinct !DILexicalBlock(scope: !288, file: !1, line: 198, column: 13)
!295 = !DILocation(line: 201, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !270, file: !1, line: 201, column: 17)
!297 = !DILocation(line: 201, column: 17, scope: !296)
!298 = !DILocation(line: 201, column: 54, scope: !296)
!299 = !DILocation(line: 201, column: 17, scope: !270)
!300 = !DILocation(line: 203, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !1, line: 202, column: 13)
!302 = !DILocation(line: 205, column: 35, scope: !270)
!303 = !DILocation(line: 205, column: 28, scope: !270)
!304 = !DILocation(line: 205, column: 26, scope: !270)
!305 = !DILocation(line: 206, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !270, file: !1, line: 206, column: 17)
!307 = !DILocation(line: 206, column: 30, scope: !306)
!308 = !DILocation(line: 206, column: 17, scope: !270)
!309 = !DILocation(line: 208, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !1, line: 207, column: 13)
!311 = !DILocation(line: 211, column: 31, scope: !270)
!312 = !DILocation(line: 211, column: 54, scope: !270)
!313 = !DILocation(line: 211, column: 61, scope: !270)
!314 = !DILocation(line: 211, column: 59, scope: !270)
!315 = !DILocation(line: 211, column: 93, scope: !270)
!316 = !DILocation(line: 211, column: 91, scope: !270)
!317 = !DILocation(line: 211, column: 101, scope: !270)
!318 = !DILocation(line: 211, column: 84, scope: !270)
!319 = !DILocation(line: 211, column: 26, scope: !270)
!320 = !DILocation(line: 211, column: 24, scope: !270)
!321 = !DILocation(line: 212, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !270, file: !1, line: 212, column: 17)
!323 = !DILocation(line: 212, column: 28, scope: !322)
!324 = !DILocation(line: 212, column: 44, scope: !322)
!325 = !DILocation(line: 212, column: 47, scope: !322)
!326 = !DILocation(line: 212, column: 58, scope: !322)
!327 = !DILocation(line: 212, column: 17, scope: !270)
!328 = !DILocation(line: 214, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !1, line: 213, column: 13)
!330 = !DILocation(line: 217, column: 13, scope: !270)
!331 = !DILocation(line: 217, column: 18, scope: !270)
!332 = !DILocation(line: 217, column: 28, scope: !270)
!333 = !DILocation(line: 217, column: 39, scope: !270)
!334 = !DILocation(line: 217, column: 26, scope: !270)
!335 = !DILocation(line: 217, column: 55, scope: !270)
!336 = !DILocation(line: 219, column: 30, scope: !270)
!337 = !DILocation(line: 219, column: 23, scope: !270)
!338 = !DILocation(line: 219, column: 21, scope: !270)
!339 = !DILocation(line: 220, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !270, file: !1, line: 220, column: 17)
!341 = !DILocation(line: 220, column: 17, scope: !270)
!342 = !DILocation(line: 222, column: 18, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 221, column: 13)
!344 = !DILocation(line: 222, column: 26, scope: !343)
!345 = !DILocation(line: 223, column: 13, scope: !343)
!346 = !DILocation(line: 224, column: 30, scope: !270)
!347 = !DILocation(line: 224, column: 23, scope: !270)
!348 = !DILocation(line: 224, column: 21, scope: !270)
!349 = !DILocation(line: 225, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !270, file: !1, line: 225, column: 17)
!351 = !DILocation(line: 225, column: 17, scope: !270)
!352 = !DILocation(line: 227, column: 18, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 226, column: 13)
!354 = !DILocation(line: 227, column: 26, scope: !353)
!355 = !DILocation(line: 228, column: 13, scope: !353)
!356 = !DILocation(line: 229, column: 9, scope: !270)
!357 = !DILocation(line: 231, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !254, file: !1, line: 231, column: 13)
!359 = !DILocation(line: 231, column: 26, scope: !358)
!360 = !DILocation(line: 231, column: 13, scope: !254)
!361 = !DILocation(line: 233, column: 26, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 232, column: 9)
!363 = !DILocation(line: 233, column: 13, scope: !362)
!364 = !DILocation(line: 234, column: 9, scope: !362)
!365 = !DILocation(line: 235, column: 13, scope: !366)
!366 = distinct !DILexicalBlock(scope: !254, file: !1, line: 235, column: 13)
!367 = !DILocation(line: 235, column: 26, scope: !366)
!368 = !DILocation(line: 235, column: 13, scope: !254)
!369 = !DILocation(line: 237, column: 26, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 236, column: 9)
!371 = !DILocation(line: 237, column: 13, scope: !370)
!372 = !DILocation(line: 238, column: 9, scope: !370)
!373 = !DILocation(line: 246, column: 5, scope: !244)
!374 = !DILocation(line: 246, column: 13, scope: !244)
!375 = !DILocation(line: 247, column: 1, scope: !244)
!376 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_65_good", scope: !1, file: !1, line: 249, type: !70, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!377 = !DILocation(line: 251, column: 5, scope: !376)
!378 = !DILocation(line: 252, column: 5, scope: !376)
!379 = !DILocation(line: 253, column: 1, scope: !376)
