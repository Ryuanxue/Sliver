; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_61b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource(i8* %data) #0 !dbg !69 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !75, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !79, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 -1, i32* %listenSocket, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 -1, i32* %acceptSocket, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !103, metadata !DIExpression()), !dbg !107
  %0 = load i8*, i8** %data.addr, align 8, !dbg !108
  %call = call i64 @strlen(i8* %0) #7, !dbg !109
  store i64 %call, i64* %dataLen, align 8, !dbg !107
  br label %do.body, !dbg !110

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !111
  store i32 %call1, i32* %listenSocket, align 4, !dbg !113
  %1 = load i32, i32* %listenSocket, align 4, !dbg !114
  %cmp = icmp eq i32 %1, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 0, i32* %s_addr, align 4, !dbg !125
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !127
  store i16 %call2, i16* %sin_port, align 2, !dbg !128
  %3 = load i32, i32* %listenSocket, align 4, !dbg !129
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !131
  %call3 = call i32 @bind(i32 %3, %struct.sockaddr* %4, i32 16) #8, !dbg !132
  %cmp4 = icmp eq i32 %call3, -1, !dbg !133
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !134

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* %listenSocket, align 4, !dbg !137
  %call7 = call i32 @listen(i32 %5, i32 5) #8, !dbg !139
  %cmp8 = icmp eq i32 %call7, -1, !dbg !140
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !141

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !142

if.end10:                                         ; preds = %if.end6
  %6 = load i32, i32* %listenSocket, align 4, !dbg !144
  %call11 = call i32 @accept(i32 %6, %struct.sockaddr* null, i32* null), !dbg !145
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !146
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !147
  %cmp12 = icmp eq i32 %7, -1, !dbg !149
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !150

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !151

if.end14:                                         ; preds = %if.end10
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !153
  %9 = load i8*, i8** %data.addr, align 8, !dbg !154
  %10 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !156
  %11 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub = sub i64 100, %11, !dbg !158
  %sub15 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub15, !dbg !160
  %call16 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call16 to i32, !dbg !161
  store i32 %conv, i32* %recvResult, align 4, !dbg !162
  %12 = load i32, i32* %recvResult, align 4, !dbg !163
  %cmp17 = icmp eq i32 %12, -1, !dbg !165
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end14
  %13 = load i32, i32* %recvResult, align 4, !dbg !167
  %cmp19 = icmp eq i32 %13, 0, !dbg !168
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !169

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !170

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data.addr, align 8, !dbg !172
  %15 = load i64, i64* %dataLen, align 8, !dbg !173
  %16 = load i32, i32* %recvResult, align 4, !dbg !174
  %conv23 = sext i32 %16 to i64, !dbg !174
  %div = udiv i64 %conv23, 1, !dbg !175
  %add = add i64 %15, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %17 = load i8*, i8** %data.addr, align 8, !dbg !178
  %call24 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !179
  store i8* %call24, i8** %replace, align 8, !dbg !180
  %18 = load i8*, i8** %replace, align 8, !dbg !181
  %tobool = icmp ne i8* %18, null, !dbg !181
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !183

if.then25:                                        ; preds = %if.end22
  %19 = load i8*, i8** %replace, align 8, !dbg !184
  store i8 0, i8* %19, align 1, !dbg !186
  br label %if.end26, !dbg !187

if.end26:                                         ; preds = %if.then25, %if.end22
  %20 = load i8*, i8** %data.addr, align 8, !dbg !188
  %call27 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !189
  store i8* %call27, i8** %replace, align 8, !dbg !190
  %21 = load i8*, i8** %replace, align 8, !dbg !191
  %tobool28 = icmp ne i8* %21, null, !dbg !191
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !193

if.then29:                                        ; preds = %if.end26
  %22 = load i8*, i8** %replace, align 8, !dbg !194
  store i8 0, i8* %22, align 1, !dbg !196
  br label %if.end30, !dbg !197

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %23 = load i32, i32* %listenSocket, align 4, !dbg !199
  %cmp31 = icmp ne i32 %23, -1, !dbg !201
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !202

if.then33:                                        ; preds = %do.end
  %24 = load i32, i32* %listenSocket, align 4, !dbg !203
  %call34 = call i32 @close(i32 %24), !dbg !205
  br label %if.end35, !dbg !206

if.end35:                                         ; preds = %if.then33, %do.end
  %25 = load i32, i32* %acceptSocket, align 4, !dbg !207
  %cmp36 = icmp ne i32 %25, -1, !dbg !209
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !210

if.then38:                                        ; preds = %if.end35
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !211
  %call39 = call i32 @close(i32 %26), !dbg !213
  br label %if.end40, !dbg !214

if.end40:                                         ; preds = %if.then38, %if.end35
  %27 = load i8*, i8** %data.addr, align 8, !dbg !215
  ret i8* %27, !dbg !216
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource(i8* %data) #0 !dbg !217 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i8*, i8** %data.addr, align 8, !dbg !220
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #8, !dbg !221
  %1 = load i8*, i8** %data.addr, align 8, !dbg !222
  ret i8* %1, !dbg !223
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource(i8* %data) #0 !dbg !224 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 -1, i32* %listenSocket, align 4, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 -1, i32* %acceptSocket, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load i8*, i8** %data.addr, align 8, !dbg !240
  %call = call i64 @strlen(i8* %0) #7, !dbg !241
  store i64 %call, i64* %dataLen, align 8, !dbg !239
  br label %do.body, !dbg !242

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !243
  store i32 %call1, i32* %listenSocket, align 4, !dbg !245
  %1 = load i32, i32* %listenSocket, align 4, !dbg !246
  %cmp = icmp eq i32 %1, -1, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !250

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !252
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !252
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !253
  store i16 2, i16* %sin_family, align 4, !dbg !254
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !255
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !256
  store i32 0, i32* %s_addr, align 4, !dbg !257
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !258
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !259
  store i16 %call2, i16* %sin_port, align 2, !dbg !260
  %3 = load i32, i32* %listenSocket, align 4, !dbg !261
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !263
  %call3 = call i32 @bind(i32 %3, %struct.sockaddr* %4, i32 16) #8, !dbg !264
  %cmp4 = icmp eq i32 %call3, -1, !dbg !265
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !266

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !267

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* %listenSocket, align 4, !dbg !269
  %call7 = call i32 @listen(i32 %5, i32 5) #8, !dbg !271
  %cmp8 = icmp eq i32 %call7, -1, !dbg !272
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !273

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !274

if.end10:                                         ; preds = %if.end6
  %6 = load i32, i32* %listenSocket, align 4, !dbg !276
  %call11 = call i32 @accept(i32 %6, %struct.sockaddr* null, i32* null), !dbg !277
  store i32 %call11, i32* %acceptSocket, align 4, !dbg !278
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !279
  %cmp12 = icmp eq i32 %7, -1, !dbg !281
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !282

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !283

if.end14:                                         ; preds = %if.end10
  %8 = load i32, i32* %acceptSocket, align 4, !dbg !285
  %9 = load i8*, i8** %data.addr, align 8, !dbg !286
  %10 = load i64, i64* %dataLen, align 8, !dbg !287
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !288
  %11 = load i64, i64* %dataLen, align 8, !dbg !289
  %sub = sub i64 100, %11, !dbg !290
  %sub15 = sub i64 %sub, 1, !dbg !291
  %mul = mul i64 1, %sub15, !dbg !292
  %call16 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !293
  %conv = trunc i64 %call16 to i32, !dbg !293
  store i32 %conv, i32* %recvResult, align 4, !dbg !294
  %12 = load i32, i32* %recvResult, align 4, !dbg !295
  %cmp17 = icmp eq i32 %12, -1, !dbg !297
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !298

lor.lhs.false:                                    ; preds = %if.end14
  %13 = load i32, i32* %recvResult, align 4, !dbg !299
  %cmp19 = icmp eq i32 %13, 0, !dbg !300
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !301

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !302

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data.addr, align 8, !dbg !304
  %15 = load i64, i64* %dataLen, align 8, !dbg !305
  %16 = load i32, i32* %recvResult, align 4, !dbg !306
  %conv23 = sext i32 %16 to i64, !dbg !306
  %div = udiv i64 %conv23, 1, !dbg !307
  %add = add i64 %15, %div, !dbg !308
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !304
  store i8 0, i8* %arrayidx, align 1, !dbg !309
  %17 = load i8*, i8** %data.addr, align 8, !dbg !310
  %call24 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !311
  store i8* %call24, i8** %replace, align 8, !dbg !312
  %18 = load i8*, i8** %replace, align 8, !dbg !313
  %tobool = icmp ne i8* %18, null, !dbg !313
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !315

if.then25:                                        ; preds = %if.end22
  %19 = load i8*, i8** %replace, align 8, !dbg !316
  store i8 0, i8* %19, align 1, !dbg !318
  br label %if.end26, !dbg !319

if.end26:                                         ; preds = %if.then25, %if.end22
  %20 = load i8*, i8** %data.addr, align 8, !dbg !320
  %call27 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !321
  store i8* %call27, i8** %replace, align 8, !dbg !322
  %21 = load i8*, i8** %replace, align 8, !dbg !323
  %tobool28 = icmp ne i8* %21, null, !dbg !323
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !325

if.then29:                                        ; preds = %if.end26
  %22 = load i8*, i8** %replace, align 8, !dbg !326
  store i8 0, i8* %22, align 1, !dbg !328
  br label %if.end30, !dbg !329

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !330

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %23 = load i32, i32* %listenSocket, align 4, !dbg !331
  %cmp31 = icmp ne i32 %23, -1, !dbg !333
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !334

if.then33:                                        ; preds = %do.end
  %24 = load i32, i32* %listenSocket, align 4, !dbg !335
  %call34 = call i32 @close(i32 %24), !dbg !337
  br label %if.end35, !dbg !338

if.end35:                                         ; preds = %if.then33, %do.end
  %25 = load i32, i32* %acceptSocket, align 4, !dbg !339
  %cmp36 = icmp ne i32 %25, -1, !dbg !341
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !342

if.then38:                                        ; preds = %if.end35
  %26 = load i32, i32* %acceptSocket, align 4, !dbg !343
  %call39 = call i32 @close(i32 %26), !dbg !345
  br label %if.end40, !dbg !346

if.end40:                                         ; preds = %if.then38, %if.end35
  %27 = load i8*, i8** %data.addr, align 8, !dbg !347
  ret i8* %27, !dbg !348
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource", scope: !1, file: !1, line: 49, type: !70, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!64, !64}
!72 = !{}
!73 = !DILocalVariable(name: "data", arg: 1, scope: !69, file: !1, line: 49, type: !64)
!74 = !DILocation(line: 49, column: 81, scope: !69)
!75 = !DILocalVariable(name: "recvResult", scope: !76, file: !1, line: 56, type: !77)
!76 = distinct !DILexicalBlock(scope: !69, file: !1, line: 51, column: 5)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DILocation(line: 56, column: 13, scope: !76)
!79 = !DILocalVariable(name: "service", scope: !76, file: !1, line: 57, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !81)
!81 = !{!82, !83, !87, !91}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !80, file: !17, line: 240, baseType: !56, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !80, file: !17, line: 241, baseType: !84, size: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !80, file: !17, line: 242, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !88, file: !17, line: 33, baseType: !46, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !80, file: !17, line: 245, baseType: !92, size: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !94)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DILocation(line: 57, column: 28, scope: !76)
!97 = !DILocalVariable(name: "replace", scope: !76, file: !1, line: 58, type: !64)
!98 = !DILocation(line: 58, column: 15, scope: !76)
!99 = !DILocalVariable(name: "listenSocket", scope: !76, file: !1, line: 59, type: !77)
!100 = !DILocation(line: 59, column: 16, scope: !76)
!101 = !DILocalVariable(name: "acceptSocket", scope: !76, file: !1, line: 60, type: !77)
!102 = !DILocation(line: 60, column: 16, scope: !76)
!103 = !DILocalVariable(name: "dataLen", scope: !76, file: !1, line: 61, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DILocation(line: 61, column: 16, scope: !76)
!108 = !DILocation(line: 61, column: 33, scope: !76)
!109 = !DILocation(line: 61, column: 26, scope: !76)
!110 = !DILocation(line: 62, column: 9, scope: !76)
!111 = !DILocation(line: 72, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !76, file: !1, line: 63, column: 9)
!113 = !DILocation(line: 72, column: 26, scope: !112)
!114 = !DILocation(line: 73, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 73, column: 17)
!116 = !DILocation(line: 73, column: 30, scope: !115)
!117 = !DILocation(line: 73, column: 17, scope: !112)
!118 = !DILocation(line: 75, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 74, column: 13)
!120 = !DILocation(line: 77, column: 13, scope: !112)
!121 = !DILocation(line: 78, column: 21, scope: !112)
!122 = !DILocation(line: 78, column: 32, scope: !112)
!123 = !DILocation(line: 79, column: 21, scope: !112)
!124 = !DILocation(line: 79, column: 30, scope: !112)
!125 = !DILocation(line: 79, column: 37, scope: !112)
!126 = !DILocation(line: 80, column: 32, scope: !112)
!127 = !DILocation(line: 80, column: 21, scope: !112)
!128 = !DILocation(line: 80, column: 30, scope: !112)
!129 = !DILocation(line: 81, column: 22, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 81, column: 17)
!131 = !DILocation(line: 81, column: 36, scope: !130)
!132 = !DILocation(line: 81, column: 17, scope: !130)
!133 = !DILocation(line: 81, column: 81, scope: !130)
!134 = !DILocation(line: 81, column: 17, scope: !112)
!135 = !DILocation(line: 83, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 82, column: 13)
!137 = !DILocation(line: 85, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 85, column: 17)
!139 = !DILocation(line: 85, column: 17, scope: !138)
!140 = !DILocation(line: 85, column: 54, scope: !138)
!141 = !DILocation(line: 85, column: 17, scope: !112)
!142 = !DILocation(line: 87, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 86, column: 13)
!144 = !DILocation(line: 89, column: 35, scope: !112)
!145 = !DILocation(line: 89, column: 28, scope: !112)
!146 = !DILocation(line: 89, column: 26, scope: !112)
!147 = !DILocation(line: 90, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !1, line: 90, column: 17)
!149 = !DILocation(line: 90, column: 30, scope: !148)
!150 = !DILocation(line: 90, column: 17, scope: !112)
!151 = !DILocation(line: 92, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 91, column: 13)
!153 = !DILocation(line: 95, column: 31, scope: !112)
!154 = !DILocation(line: 95, column: 54, scope: !112)
!155 = !DILocation(line: 95, column: 61, scope: !112)
!156 = !DILocation(line: 95, column: 59, scope: !112)
!157 = !DILocation(line: 95, column: 93, scope: !112)
!158 = !DILocation(line: 95, column: 91, scope: !112)
!159 = !DILocation(line: 95, column: 101, scope: !112)
!160 = !DILocation(line: 95, column: 84, scope: !112)
!161 = !DILocation(line: 95, column: 26, scope: !112)
!162 = !DILocation(line: 95, column: 24, scope: !112)
!163 = !DILocation(line: 96, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !112, file: !1, line: 96, column: 17)
!165 = !DILocation(line: 96, column: 28, scope: !164)
!166 = !DILocation(line: 96, column: 44, scope: !164)
!167 = !DILocation(line: 96, column: 47, scope: !164)
!168 = !DILocation(line: 96, column: 58, scope: !164)
!169 = !DILocation(line: 96, column: 17, scope: !112)
!170 = !DILocation(line: 98, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 97, column: 13)
!172 = !DILocation(line: 101, column: 13, scope: !112)
!173 = !DILocation(line: 101, column: 18, scope: !112)
!174 = !DILocation(line: 101, column: 28, scope: !112)
!175 = !DILocation(line: 101, column: 39, scope: !112)
!176 = !DILocation(line: 101, column: 26, scope: !112)
!177 = !DILocation(line: 101, column: 55, scope: !112)
!178 = !DILocation(line: 103, column: 30, scope: !112)
!179 = !DILocation(line: 103, column: 23, scope: !112)
!180 = !DILocation(line: 103, column: 21, scope: !112)
!181 = !DILocation(line: 104, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !112, file: !1, line: 104, column: 17)
!183 = !DILocation(line: 104, column: 17, scope: !112)
!184 = !DILocation(line: 106, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 105, column: 13)
!186 = !DILocation(line: 106, column: 26, scope: !185)
!187 = !DILocation(line: 107, column: 13, scope: !185)
!188 = !DILocation(line: 108, column: 30, scope: !112)
!189 = !DILocation(line: 108, column: 23, scope: !112)
!190 = !DILocation(line: 108, column: 21, scope: !112)
!191 = !DILocation(line: 109, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !112, file: !1, line: 109, column: 17)
!193 = !DILocation(line: 109, column: 17, scope: !112)
!194 = !DILocation(line: 111, column: 18, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 110, column: 13)
!196 = !DILocation(line: 111, column: 26, scope: !195)
!197 = !DILocation(line: 112, column: 13, scope: !195)
!198 = !DILocation(line: 113, column: 9, scope: !112)
!199 = !DILocation(line: 115, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !76, file: !1, line: 115, column: 13)
!201 = !DILocation(line: 115, column: 26, scope: !200)
!202 = !DILocation(line: 115, column: 13, scope: !76)
!203 = !DILocation(line: 117, column: 26, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 116, column: 9)
!205 = !DILocation(line: 117, column: 13, scope: !204)
!206 = !DILocation(line: 118, column: 9, scope: !204)
!207 = !DILocation(line: 119, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !76, file: !1, line: 119, column: 13)
!209 = !DILocation(line: 119, column: 26, scope: !208)
!210 = !DILocation(line: 119, column: 13, scope: !76)
!211 = !DILocation(line: 121, column: 26, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 120, column: 9)
!213 = !DILocation(line: 121, column: 13, scope: !212)
!214 = !DILocation(line: 122, column: 9, scope: !212)
!215 = !DILocation(line: 130, column: 12, scope: !69)
!216 = !DILocation(line: 130, column: 5, scope: !69)
!217 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource", scope: !1, file: !1, line: 138, type: !70, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!218 = !DILocalVariable(name: "data", arg: 1, scope: !217, file: !1, line: 138, type: !64)
!219 = !DILocation(line: 138, column: 85, scope: !217)
!220 = !DILocation(line: 141, column: 12, scope: !217)
!221 = !DILocation(line: 141, column: 5, scope: !217)
!222 = !DILocation(line: 142, column: 12, scope: !217)
!223 = !DILocation(line: 142, column: 5, scope: !217)
!224 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource", scope: !1, file: !1, line: 146, type: !70, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!225 = !DILocalVariable(name: "data", arg: 1, scope: !224, file: !1, line: 146, type: !64)
!226 = !DILocation(line: 146, column: 85, scope: !224)
!227 = !DILocalVariable(name: "recvResult", scope: !228, file: !1, line: 153, type: !77)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 148, column: 5)
!229 = !DILocation(line: 153, column: 13, scope: !228)
!230 = !DILocalVariable(name: "service", scope: !228, file: !1, line: 154, type: !80)
!231 = !DILocation(line: 154, column: 28, scope: !228)
!232 = !DILocalVariable(name: "replace", scope: !228, file: !1, line: 155, type: !64)
!233 = !DILocation(line: 155, column: 15, scope: !228)
!234 = !DILocalVariable(name: "listenSocket", scope: !228, file: !1, line: 156, type: !77)
!235 = !DILocation(line: 156, column: 16, scope: !228)
!236 = !DILocalVariable(name: "acceptSocket", scope: !228, file: !1, line: 157, type: !77)
!237 = !DILocation(line: 157, column: 16, scope: !228)
!238 = !DILocalVariable(name: "dataLen", scope: !228, file: !1, line: 158, type: !104)
!239 = !DILocation(line: 158, column: 16, scope: !228)
!240 = !DILocation(line: 158, column: 33, scope: !228)
!241 = !DILocation(line: 158, column: 26, scope: !228)
!242 = !DILocation(line: 159, column: 9, scope: !228)
!243 = !DILocation(line: 169, column: 28, scope: !244)
!244 = distinct !DILexicalBlock(scope: !228, file: !1, line: 160, column: 9)
!245 = !DILocation(line: 169, column: 26, scope: !244)
!246 = !DILocation(line: 170, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !1, line: 170, column: 17)
!248 = !DILocation(line: 170, column: 30, scope: !247)
!249 = !DILocation(line: 170, column: 17, scope: !244)
!250 = !DILocation(line: 172, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 171, column: 13)
!252 = !DILocation(line: 174, column: 13, scope: !244)
!253 = !DILocation(line: 175, column: 21, scope: !244)
!254 = !DILocation(line: 175, column: 32, scope: !244)
!255 = !DILocation(line: 176, column: 21, scope: !244)
!256 = !DILocation(line: 176, column: 30, scope: !244)
!257 = !DILocation(line: 176, column: 37, scope: !244)
!258 = !DILocation(line: 177, column: 32, scope: !244)
!259 = !DILocation(line: 177, column: 21, scope: !244)
!260 = !DILocation(line: 177, column: 30, scope: !244)
!261 = !DILocation(line: 178, column: 22, scope: !262)
!262 = distinct !DILexicalBlock(scope: !244, file: !1, line: 178, column: 17)
!263 = !DILocation(line: 178, column: 36, scope: !262)
!264 = !DILocation(line: 178, column: 17, scope: !262)
!265 = !DILocation(line: 178, column: 81, scope: !262)
!266 = !DILocation(line: 178, column: 17, scope: !244)
!267 = !DILocation(line: 180, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !1, line: 179, column: 13)
!269 = !DILocation(line: 182, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !244, file: !1, line: 182, column: 17)
!271 = !DILocation(line: 182, column: 17, scope: !270)
!272 = !DILocation(line: 182, column: 54, scope: !270)
!273 = !DILocation(line: 182, column: 17, scope: !244)
!274 = !DILocation(line: 184, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 183, column: 13)
!276 = !DILocation(line: 186, column: 35, scope: !244)
!277 = !DILocation(line: 186, column: 28, scope: !244)
!278 = !DILocation(line: 186, column: 26, scope: !244)
!279 = !DILocation(line: 187, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !244, file: !1, line: 187, column: 17)
!281 = !DILocation(line: 187, column: 30, scope: !280)
!282 = !DILocation(line: 187, column: 17, scope: !244)
!283 = !DILocation(line: 189, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 188, column: 13)
!285 = !DILocation(line: 192, column: 31, scope: !244)
!286 = !DILocation(line: 192, column: 54, scope: !244)
!287 = !DILocation(line: 192, column: 61, scope: !244)
!288 = !DILocation(line: 192, column: 59, scope: !244)
!289 = !DILocation(line: 192, column: 93, scope: !244)
!290 = !DILocation(line: 192, column: 91, scope: !244)
!291 = !DILocation(line: 192, column: 101, scope: !244)
!292 = !DILocation(line: 192, column: 84, scope: !244)
!293 = !DILocation(line: 192, column: 26, scope: !244)
!294 = !DILocation(line: 192, column: 24, scope: !244)
!295 = !DILocation(line: 193, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !244, file: !1, line: 193, column: 17)
!297 = !DILocation(line: 193, column: 28, scope: !296)
!298 = !DILocation(line: 193, column: 44, scope: !296)
!299 = !DILocation(line: 193, column: 47, scope: !296)
!300 = !DILocation(line: 193, column: 58, scope: !296)
!301 = !DILocation(line: 193, column: 17, scope: !244)
!302 = !DILocation(line: 195, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 194, column: 13)
!304 = !DILocation(line: 198, column: 13, scope: !244)
!305 = !DILocation(line: 198, column: 18, scope: !244)
!306 = !DILocation(line: 198, column: 28, scope: !244)
!307 = !DILocation(line: 198, column: 39, scope: !244)
!308 = !DILocation(line: 198, column: 26, scope: !244)
!309 = !DILocation(line: 198, column: 55, scope: !244)
!310 = !DILocation(line: 200, column: 30, scope: !244)
!311 = !DILocation(line: 200, column: 23, scope: !244)
!312 = !DILocation(line: 200, column: 21, scope: !244)
!313 = !DILocation(line: 201, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !244, file: !1, line: 201, column: 17)
!315 = !DILocation(line: 201, column: 17, scope: !244)
!316 = !DILocation(line: 203, column: 18, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !1, line: 202, column: 13)
!318 = !DILocation(line: 203, column: 26, scope: !317)
!319 = !DILocation(line: 204, column: 13, scope: !317)
!320 = !DILocation(line: 205, column: 30, scope: !244)
!321 = !DILocation(line: 205, column: 23, scope: !244)
!322 = !DILocation(line: 205, column: 21, scope: !244)
!323 = !DILocation(line: 206, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !244, file: !1, line: 206, column: 17)
!325 = !DILocation(line: 206, column: 17, scope: !244)
!326 = !DILocation(line: 208, column: 18, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 207, column: 13)
!328 = !DILocation(line: 208, column: 26, scope: !327)
!329 = !DILocation(line: 209, column: 13, scope: !327)
!330 = !DILocation(line: 210, column: 9, scope: !244)
!331 = !DILocation(line: 212, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !228, file: !1, line: 212, column: 13)
!333 = !DILocation(line: 212, column: 26, scope: !332)
!334 = !DILocation(line: 212, column: 13, scope: !228)
!335 = !DILocation(line: 214, column: 26, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 213, column: 9)
!337 = !DILocation(line: 214, column: 13, scope: !336)
!338 = !DILocation(line: 215, column: 9, scope: !336)
!339 = !DILocation(line: 216, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !228, file: !1, line: 216, column: 13)
!341 = !DILocation(line: 216, column: 26, scope: !340)
!342 = !DILocation(line: 216, column: 13, scope: !228)
!343 = !DILocation(line: 218, column: 26, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 217, column: 9)
!345 = !DILocation(line: 218, column: 13, scope: !344)
!346 = !DILocation(line: 219, column: 9, scope: !344)
!347 = !DILocation(line: 227, column: 12, scope: !224)
!348 = !DILocation(line: 227, column: 5, scope: !224)
