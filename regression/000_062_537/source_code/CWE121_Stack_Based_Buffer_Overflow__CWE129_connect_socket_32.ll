; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data22 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !70, metadata !DIExpression()), !dbg !72
  store i32* %data, i32** %dataPtr1, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !73, metadata !DIExpression()), !dbg !74
  store i32* %data, i32** %dataPtr2, align 8, !dbg !74
  store i32 -1, i32* %data, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !76, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !79
  %1 = load i32, i32* %0, align 4, !dbg !80
  store i32 %1, i32* %data1, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !81, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !84, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 -1, i32* %connectSocket, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !109, metadata !DIExpression()), !dbg !110
  br label %do.body, !dbg !111

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !112
  store i32 %call, i32* %connectSocket, align 4, !dbg !114
  %2 = load i32, i32* %connectSocket, align 4, !dbg !115
  %cmp = icmp eq i32 %2, -1, !dbg !117
  br i1 %cmp, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !119

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !121
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !122
  store i16 2, i16* %sin_family, align 4, !dbg !123
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 %call2, i32* %s_addr, align 4, !dbg !127
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !129
  store i16 %call3, i16* %sin_port, align 2, !dbg !130
  %4 = load i32, i32* %connectSocket, align 4, !dbg !131
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !133
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !134
  %cmp5 = icmp eq i32 %call4, -1, !dbg !135
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !136

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !139
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !140
  %call8 = call i64 @recv(i32 %6, i8* %arraydecay, i64 13, i32 0), !dbg !141
  %conv = trunc i64 %call8 to i32, !dbg !141
  store i32 %conv, i32* %recvResult, align 4, !dbg !142
  %7 = load i32, i32* %recvResult, align 4, !dbg !143
  %cmp9 = icmp eq i32 %7, -1, !dbg !145
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %recvResult, align 4, !dbg !147
  %cmp11 = icmp eq i32 %8, 0, !dbg !148
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !149

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !150

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %recvResult, align 4, !dbg !152
  %idxprom = sext i32 %9 to i64, !dbg !153
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !154
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !155
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !156
  store i32 %call16, i32* %data1, align 4, !dbg !157
  br label %do.end, !dbg !158

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %10 = load i32, i32* %connectSocket, align 4, !dbg !159
  %cmp17 = icmp ne i32 %10, -1, !dbg !161
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !162

if.then19:                                        ; preds = %do.end
  %11 = load i32, i32* %connectSocket, align 4, !dbg !163
  %call20 = call i32 @close(i32 %11), !dbg !165
  br label %if.end21, !dbg !166

if.end21:                                         ; preds = %if.then19, %do.end
  %12 = load i32, i32* %data1, align 4, !dbg !167
  %13 = load i32*, i32** %dataPtr1, align 8, !dbg !168
  store i32 %12, i32* %13, align 4, !dbg !169
  call void @llvm.dbg.declare(metadata i32* %data22, metadata !170, metadata !DIExpression()), !dbg !172
  %14 = load i32*, i32** %dataPtr2, align 8, !dbg !173
  %15 = load i32, i32* %14, align 4, !dbg !174
  store i32 %15, i32* %data22, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %i, metadata !175, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !178, metadata !DIExpression()), !dbg !182
  %16 = bitcast [10 x i32]* %buffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !182
  %17 = load i32, i32* %data22, align 4, !dbg !183
  %cmp23 = icmp sge i32 %17, 0, !dbg !185
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !186

if.then25:                                        ; preds = %if.end21
  %18 = load i32, i32* %data22, align 4, !dbg !187
  %idxprom26 = sext i32 %18 to i64, !dbg !189
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !189
  store i32 1, i32* %arrayidx27, align 4, !dbg !190
  store i32 0, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !193

for.cond:                                         ; preds = %for.inc, %if.then25
  %19 = load i32, i32* %i, align 4, !dbg !194
  %cmp28 = icmp slt i32 %19, 10, !dbg !196
  br i1 %cmp28, label %for.body, label %for.end, !dbg !197

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !dbg !198
  %idxprom30 = sext i32 %20 to i64, !dbg !200
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !200
  %21 = load i32, i32* %arrayidx31, align 4, !dbg !200
  call void @printIntLine(i32 %21), !dbg !201
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !203
  %inc = add nsw i32 %22, 1, !dbg !203
  store i32 %inc, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !208

if.else:                                          ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !209
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !211
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #5

declare dso_local void @printIntLine(i32) #5

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !212 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %data2 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !215, metadata !DIExpression()), !dbg !216
  store i32* %data, i32** %dataPtr1, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !217, metadata !DIExpression()), !dbg !218
  store i32* %data, i32** %dataPtr2, align 8, !dbg !218
  store i32 -1, i32* %data, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !220, metadata !DIExpression()), !dbg !222
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !223
  %1 = load i32, i32* %0, align 4, !dbg !224
  store i32 %1, i32* %data1, align 4, !dbg !222
  store i32 7, i32* %data1, align 4, !dbg !225
  %2 = load i32, i32* %data1, align 4, !dbg !226
  %3 = load i32*, i32** %dataPtr1, align 8, !dbg !227
  store i32 %2, i32* %3, align 4, !dbg !228
  call void @llvm.dbg.declare(metadata i32* %data2, metadata !229, metadata !DIExpression()), !dbg !231
  %4 = load i32*, i32** %dataPtr2, align 8, !dbg !232
  %5 = load i32, i32* %4, align 4, !dbg !233
  store i32 %5, i32* %data2, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %i, metadata !234, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !237, metadata !DIExpression()), !dbg !238
  %6 = bitcast [10 x i32]* %buffer to i8*, !dbg !238
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !238
  %7 = load i32, i32* %data2, align 4, !dbg !239
  %cmp = icmp sge i32 %7, 0, !dbg !241
  br i1 %cmp, label %if.then, label %if.else, !dbg !242

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %data2, align 4, !dbg !243
  %idxprom = sext i32 %8 to i64, !dbg !245
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !245
  store i32 1, i32* %arrayidx, align 4, !dbg !246
  store i32 0, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !250
  %cmp3 = icmp slt i32 %9, 10, !dbg !252
  br i1 %cmp3, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !254
  %idxprom4 = sext i32 %10 to i64, !dbg !256
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !256
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !256
  call void @printIntLine(i32 %11), !dbg !257
  br label %for.inc, !dbg !258

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !259
  %inc = add nsw i32 %12, 1, !dbg !259
  store i32 %inc, i32* %i, align 4, !dbg !259
  br label %for.cond, !dbg !260, !llvm.loop !261

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !263

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !264
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !267 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data22 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !270, metadata !DIExpression()), !dbg !271
  store i32* %data, i32** %dataPtr1, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !272, metadata !DIExpression()), !dbg !273
  store i32* %data, i32** %dataPtr2, align 8, !dbg !273
  store i32 -1, i32* %data, align 4, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !275, metadata !DIExpression()), !dbg !277
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !278
  %1 = load i32, i32* %0, align 4, !dbg !279
  store i32 %1, i32* %data1, align 4, !dbg !277
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !285, metadata !DIExpression()), !dbg !286
  store i32 -1, i32* %connectSocket, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !287, metadata !DIExpression()), !dbg !288
  br label %do.body, !dbg !289

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !290
  store i32 %call, i32* %connectSocket, align 4, !dbg !292
  %2 = load i32, i32* %connectSocket, align 4, !dbg !293
  %cmp = icmp eq i32 %2, -1, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !297

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !299
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !299
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !300
  store i16 2, i16* %sin_family, align 4, !dbg !301
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !302
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !303
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !304
  store i32 %call2, i32* %s_addr, align 4, !dbg !305
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !306
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !307
  store i16 %call3, i16* %sin_port, align 2, !dbg !308
  %4 = load i32, i32* %connectSocket, align 4, !dbg !309
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !311
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !312
  %cmp5 = icmp eq i32 %call4, -1, !dbg !313
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !314

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !315

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !317
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !318
  %call8 = call i64 @recv(i32 %6, i8* %arraydecay, i64 13, i32 0), !dbg !319
  %conv = trunc i64 %call8 to i32, !dbg !319
  store i32 %conv, i32* %recvResult, align 4, !dbg !320
  %7 = load i32, i32* %recvResult, align 4, !dbg !321
  %cmp9 = icmp eq i32 %7, -1, !dbg !323
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !324

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %recvResult, align 4, !dbg !325
  %cmp11 = icmp eq i32 %8, 0, !dbg !326
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !327

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !328

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %recvResult, align 4, !dbg !330
  %idxprom = sext i32 %9 to i64, !dbg !331
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !331
  store i8 0, i8* %arrayidx, align 1, !dbg !332
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !333
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !334
  store i32 %call16, i32* %data1, align 4, !dbg !335
  br label %do.end, !dbg !336

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %10 = load i32, i32* %connectSocket, align 4, !dbg !337
  %cmp17 = icmp ne i32 %10, -1, !dbg !339
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !340

if.then19:                                        ; preds = %do.end
  %11 = load i32, i32* %connectSocket, align 4, !dbg !341
  %call20 = call i32 @close(i32 %11), !dbg !343
  br label %if.end21, !dbg !344

if.end21:                                         ; preds = %if.then19, %do.end
  %12 = load i32, i32* %data1, align 4, !dbg !345
  %13 = load i32*, i32** %dataPtr1, align 8, !dbg !346
  store i32 %12, i32* %13, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %data22, metadata !348, metadata !DIExpression()), !dbg !350
  %14 = load i32*, i32** %dataPtr2, align 8, !dbg !351
  %15 = load i32, i32* %14, align 4, !dbg !352
  store i32 %15, i32* %data22, align 4, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %i, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !356, metadata !DIExpression()), !dbg !357
  %16 = bitcast [10 x i32]* %buffer to i8*, !dbg !357
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !357
  %17 = load i32, i32* %data22, align 4, !dbg !358
  %cmp23 = icmp sge i32 %17, 0, !dbg !360
  br i1 %cmp23, label %land.lhs.true, label %if.else, !dbg !361

land.lhs.true:                                    ; preds = %if.end21
  %18 = load i32, i32* %data22, align 4, !dbg !362
  %cmp25 = icmp slt i32 %18, 10, !dbg !363
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !364

if.then27:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %data22, align 4, !dbg !365
  %idxprom28 = sext i32 %19 to i64, !dbg !367
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !367
  store i32 1, i32* %arrayidx29, align 4, !dbg !368
  store i32 0, i32* %i, align 4, !dbg !369
  br label %for.cond, !dbg !371

for.cond:                                         ; preds = %for.inc, %if.then27
  %20 = load i32, i32* %i, align 4, !dbg !372
  %cmp30 = icmp slt i32 %20, 10, !dbg !374
  br i1 %cmp30, label %for.body, label %for.end, !dbg !375

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !376
  %idxprom32 = sext i32 %21 to i64, !dbg !378
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !378
  %22 = load i32, i32* %arrayidx33, align 4, !dbg !378
  call void @printIntLine(i32 %22), !dbg !379
  br label %for.inc, !dbg !380

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !381
  %inc = add nsw i32 %23, 1, !dbg !381
  store i32 %inc, i32* %i, align 4, !dbg !381
  br label %for.cond, !dbg !382, !llvm.loop !383

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !385

if.else:                                          ; preds = %land.lhs.true, %if.end21
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !386
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_good() #0 !dbg !389 {
entry:
  call void @goodG2B(), !dbg !390
  call void @goodB2G(), !dbg !391
  ret void, !dbg !392
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_537/source_code")
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
!45 = !{!46}
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
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{!"clang version 12.0.0"}
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocalVariable(name: "dataPtr1", scope: !63, file: !1, line: 48, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!72 = !DILocation(line: 48, column: 10, scope: !63)
!73 = !DILocalVariable(name: "dataPtr2", scope: !63, file: !1, line: 49, type: !71)
!74 = !DILocation(line: 49, column: 10, scope: !63)
!75 = !DILocation(line: 51, column: 10, scope: !63)
!76 = !DILocalVariable(name: "data", scope: !77, file: !1, line: 53, type: !68)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 52, column: 5)
!78 = !DILocation(line: 53, column: 13, scope: !77)
!79 = !DILocation(line: 53, column: 21, scope: !77)
!80 = !DILocation(line: 53, column: 20, scope: !77)
!81 = !DILocalVariable(name: "recvResult", scope: !82, file: !1, line: 59, type: !68)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 54, column: 9)
!83 = !DILocation(line: 59, column: 17, scope: !82)
!84 = !DILocalVariable(name: "service", scope: !82, file: !1, line: 60, type: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !86)
!86 = !{!87, !88, !94, !101}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !85, file: !17, line: 240, baseType: !51, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !85, file: !17, line: 241, baseType: !89, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !53)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !85, file: !17, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !17, line: 33, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !5)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !85, file: !17, line: 245, baseType: !102, size: 64, offset: 64)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !104)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !{!105}
!105 = !DISubrange(count: 8)
!106 = !DILocation(line: 60, column: 32, scope: !82)
!107 = !DILocalVariable(name: "connectSocket", scope: !82, file: !1, line: 61, type: !68)
!108 = !DILocation(line: 61, column: 20, scope: !82)
!109 = !DILocalVariable(name: "inputBuffer", scope: !82, file: !1, line: 62, type: !55)
!110 = !DILocation(line: 62, column: 18, scope: !82)
!111 = !DILocation(line: 63, column: 13, scope: !82)
!112 = !DILocation(line: 73, column: 33, scope: !113)
!113 = distinct !DILexicalBlock(scope: !82, file: !1, line: 64, column: 13)
!114 = !DILocation(line: 73, column: 31, scope: !113)
!115 = !DILocation(line: 74, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 74, column: 21)
!117 = !DILocation(line: 74, column: 35, scope: !116)
!118 = !DILocation(line: 74, column: 21, scope: !113)
!119 = !DILocation(line: 76, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 75, column: 17)
!121 = !DILocation(line: 78, column: 17, scope: !113)
!122 = !DILocation(line: 79, column: 25, scope: !113)
!123 = !DILocation(line: 79, column: 36, scope: !113)
!124 = !DILocation(line: 80, column: 43, scope: !113)
!125 = !DILocation(line: 80, column: 25, scope: !113)
!126 = !DILocation(line: 80, column: 34, scope: !113)
!127 = !DILocation(line: 80, column: 41, scope: !113)
!128 = !DILocation(line: 81, column: 36, scope: !113)
!129 = !DILocation(line: 81, column: 25, scope: !113)
!130 = !DILocation(line: 81, column: 34, scope: !113)
!131 = !DILocation(line: 82, column: 29, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !1, line: 82, column: 21)
!133 = !DILocation(line: 82, column: 44, scope: !132)
!134 = !DILocation(line: 82, column: 21, scope: !132)
!135 = !DILocation(line: 82, column: 89, scope: !132)
!136 = !DILocation(line: 82, column: 21, scope: !113)
!137 = !DILocation(line: 84, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 83, column: 17)
!139 = !DILocation(line: 88, column: 35, scope: !113)
!140 = !DILocation(line: 88, column: 50, scope: !113)
!141 = !DILocation(line: 88, column: 30, scope: !113)
!142 = !DILocation(line: 88, column: 28, scope: !113)
!143 = !DILocation(line: 89, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !113, file: !1, line: 89, column: 21)
!145 = !DILocation(line: 89, column: 32, scope: !144)
!146 = !DILocation(line: 89, column: 48, scope: !144)
!147 = !DILocation(line: 89, column: 51, scope: !144)
!148 = !DILocation(line: 89, column: 62, scope: !144)
!149 = !DILocation(line: 89, column: 21, scope: !113)
!150 = !DILocation(line: 91, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 90, column: 17)
!152 = !DILocation(line: 94, column: 29, scope: !113)
!153 = !DILocation(line: 94, column: 17, scope: !113)
!154 = !DILocation(line: 94, column: 41, scope: !113)
!155 = !DILocation(line: 96, column: 29, scope: !113)
!156 = !DILocation(line: 96, column: 24, scope: !113)
!157 = !DILocation(line: 96, column: 22, scope: !113)
!158 = !DILocation(line: 97, column: 13, scope: !113)
!159 = !DILocation(line: 99, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !82, file: !1, line: 99, column: 17)
!161 = !DILocation(line: 99, column: 31, scope: !160)
!162 = !DILocation(line: 99, column: 17, scope: !82)
!163 = !DILocation(line: 101, column: 30, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 100, column: 13)
!165 = !DILocation(line: 101, column: 17, scope: !164)
!166 = !DILocation(line: 102, column: 13, scope: !164)
!167 = !DILocation(line: 110, column: 21, scope: !77)
!168 = !DILocation(line: 110, column: 10, scope: !77)
!169 = !DILocation(line: 110, column: 19, scope: !77)
!170 = !DILocalVariable(name: "data", scope: !171, file: !1, line: 113, type: !68)
!171 = distinct !DILexicalBlock(scope: !63, file: !1, line: 112, column: 5)
!172 = !DILocation(line: 113, column: 13, scope: !171)
!173 = !DILocation(line: 113, column: 21, scope: !171)
!174 = !DILocation(line: 113, column: 20, scope: !171)
!175 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 115, type: !68)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 114, column: 9)
!177 = !DILocation(line: 115, column: 17, scope: !176)
!178 = !DILocalVariable(name: "buffer", scope: !176, file: !1, line: 116, type: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 10)
!182 = !DILocation(line: 116, column: 17, scope: !176)
!183 = !DILocation(line: 119, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !176, file: !1, line: 119, column: 17)
!185 = !DILocation(line: 119, column: 22, scope: !184)
!186 = !DILocation(line: 119, column: 17, scope: !176)
!187 = !DILocation(line: 121, column: 24, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 120, column: 13)
!189 = !DILocation(line: 121, column: 17, scope: !188)
!190 = !DILocation(line: 121, column: 30, scope: !188)
!191 = !DILocation(line: 123, column: 23, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 123, column: 17)
!193 = !DILocation(line: 123, column: 21, scope: !192)
!194 = !DILocation(line: 123, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 123, column: 17)
!196 = !DILocation(line: 123, column: 30, scope: !195)
!197 = !DILocation(line: 123, column: 17, scope: !192)
!198 = !DILocation(line: 125, column: 41, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 124, column: 17)
!200 = !DILocation(line: 125, column: 34, scope: !199)
!201 = !DILocation(line: 125, column: 21, scope: !199)
!202 = !DILocation(line: 126, column: 17, scope: !199)
!203 = !DILocation(line: 123, column: 37, scope: !195)
!204 = !DILocation(line: 123, column: 17, scope: !195)
!205 = distinct !{!205, !197, !206, !207}
!206 = !DILocation(line: 126, column: 17, scope: !192)
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 127, column: 13, scope: !188)
!209 = !DILocation(line: 130, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !184, file: !1, line: 129, column: 13)
!211 = !DILocation(line: 134, column: 1, scope: !63)
!212 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 141, type: !64, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!213 = !DILocalVariable(name: "data", scope: !212, file: !1, line: 143, type: !68)
!214 = !DILocation(line: 143, column: 9, scope: !212)
!215 = !DILocalVariable(name: "dataPtr1", scope: !212, file: !1, line: 144, type: !71)
!216 = !DILocation(line: 144, column: 10, scope: !212)
!217 = !DILocalVariable(name: "dataPtr2", scope: !212, file: !1, line: 145, type: !71)
!218 = !DILocation(line: 145, column: 10, scope: !212)
!219 = !DILocation(line: 147, column: 10, scope: !212)
!220 = !DILocalVariable(name: "data", scope: !221, file: !1, line: 149, type: !68)
!221 = distinct !DILexicalBlock(scope: !212, file: !1, line: 148, column: 5)
!222 = !DILocation(line: 149, column: 13, scope: !221)
!223 = !DILocation(line: 149, column: 21, scope: !221)
!224 = !DILocation(line: 149, column: 20, scope: !221)
!225 = !DILocation(line: 152, column: 14, scope: !221)
!226 = !DILocation(line: 153, column: 21, scope: !221)
!227 = !DILocation(line: 153, column: 10, scope: !221)
!228 = !DILocation(line: 153, column: 19, scope: !221)
!229 = !DILocalVariable(name: "data", scope: !230, file: !1, line: 156, type: !68)
!230 = distinct !DILexicalBlock(scope: !212, file: !1, line: 155, column: 5)
!231 = !DILocation(line: 156, column: 13, scope: !230)
!232 = !DILocation(line: 156, column: 21, scope: !230)
!233 = !DILocation(line: 156, column: 20, scope: !230)
!234 = !DILocalVariable(name: "i", scope: !235, file: !1, line: 158, type: !68)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 157, column: 9)
!236 = !DILocation(line: 158, column: 17, scope: !235)
!237 = !DILocalVariable(name: "buffer", scope: !235, file: !1, line: 159, type: !179)
!238 = !DILocation(line: 159, column: 17, scope: !235)
!239 = !DILocation(line: 162, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 162, column: 17)
!241 = !DILocation(line: 162, column: 22, scope: !240)
!242 = !DILocation(line: 162, column: 17, scope: !235)
!243 = !DILocation(line: 164, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 163, column: 13)
!245 = !DILocation(line: 164, column: 17, scope: !244)
!246 = !DILocation(line: 164, column: 30, scope: !244)
!247 = !DILocation(line: 166, column: 23, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 166, column: 17)
!249 = !DILocation(line: 166, column: 21, scope: !248)
!250 = !DILocation(line: 166, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 166, column: 17)
!252 = !DILocation(line: 166, column: 30, scope: !251)
!253 = !DILocation(line: 166, column: 17, scope: !248)
!254 = !DILocation(line: 168, column: 41, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 167, column: 17)
!256 = !DILocation(line: 168, column: 34, scope: !255)
!257 = !DILocation(line: 168, column: 21, scope: !255)
!258 = !DILocation(line: 169, column: 17, scope: !255)
!259 = !DILocation(line: 166, column: 37, scope: !251)
!260 = !DILocation(line: 166, column: 17, scope: !251)
!261 = distinct !{!261, !253, !262, !207}
!262 = !DILocation(line: 169, column: 17, scope: !248)
!263 = !DILocation(line: 170, column: 13, scope: !244)
!264 = !DILocation(line: 173, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !240, file: !1, line: 172, column: 13)
!266 = !DILocation(line: 177, column: 1, scope: !212)
!267 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 180, type: !64, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!268 = !DILocalVariable(name: "data", scope: !267, file: !1, line: 182, type: !68)
!269 = !DILocation(line: 182, column: 9, scope: !267)
!270 = !DILocalVariable(name: "dataPtr1", scope: !267, file: !1, line: 183, type: !71)
!271 = !DILocation(line: 183, column: 10, scope: !267)
!272 = !DILocalVariable(name: "dataPtr2", scope: !267, file: !1, line: 184, type: !71)
!273 = !DILocation(line: 184, column: 10, scope: !267)
!274 = !DILocation(line: 186, column: 10, scope: !267)
!275 = !DILocalVariable(name: "data", scope: !276, file: !1, line: 188, type: !68)
!276 = distinct !DILexicalBlock(scope: !267, file: !1, line: 187, column: 5)
!277 = !DILocation(line: 188, column: 13, scope: !276)
!278 = !DILocation(line: 188, column: 21, scope: !276)
!279 = !DILocation(line: 188, column: 20, scope: !276)
!280 = !DILocalVariable(name: "recvResult", scope: !281, file: !1, line: 194, type: !68)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 189, column: 9)
!282 = !DILocation(line: 194, column: 17, scope: !281)
!283 = !DILocalVariable(name: "service", scope: !281, file: !1, line: 195, type: !85)
!284 = !DILocation(line: 195, column: 32, scope: !281)
!285 = !DILocalVariable(name: "connectSocket", scope: !281, file: !1, line: 196, type: !68)
!286 = !DILocation(line: 196, column: 20, scope: !281)
!287 = !DILocalVariable(name: "inputBuffer", scope: !281, file: !1, line: 197, type: !55)
!288 = !DILocation(line: 197, column: 18, scope: !281)
!289 = !DILocation(line: 198, column: 13, scope: !281)
!290 = !DILocation(line: 208, column: 33, scope: !291)
!291 = distinct !DILexicalBlock(scope: !281, file: !1, line: 199, column: 13)
!292 = !DILocation(line: 208, column: 31, scope: !291)
!293 = !DILocation(line: 209, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 209, column: 21)
!295 = !DILocation(line: 209, column: 35, scope: !294)
!296 = !DILocation(line: 209, column: 21, scope: !291)
!297 = !DILocation(line: 211, column: 21, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 210, column: 17)
!299 = !DILocation(line: 213, column: 17, scope: !291)
!300 = !DILocation(line: 214, column: 25, scope: !291)
!301 = !DILocation(line: 214, column: 36, scope: !291)
!302 = !DILocation(line: 215, column: 43, scope: !291)
!303 = !DILocation(line: 215, column: 25, scope: !291)
!304 = !DILocation(line: 215, column: 34, scope: !291)
!305 = !DILocation(line: 215, column: 41, scope: !291)
!306 = !DILocation(line: 216, column: 36, scope: !291)
!307 = !DILocation(line: 216, column: 25, scope: !291)
!308 = !DILocation(line: 216, column: 34, scope: !291)
!309 = !DILocation(line: 217, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !291, file: !1, line: 217, column: 21)
!311 = !DILocation(line: 217, column: 44, scope: !310)
!312 = !DILocation(line: 217, column: 21, scope: !310)
!313 = !DILocation(line: 217, column: 89, scope: !310)
!314 = !DILocation(line: 217, column: 21, scope: !291)
!315 = !DILocation(line: 219, column: 21, scope: !316)
!316 = distinct !DILexicalBlock(scope: !310, file: !1, line: 218, column: 17)
!317 = !DILocation(line: 223, column: 35, scope: !291)
!318 = !DILocation(line: 223, column: 50, scope: !291)
!319 = !DILocation(line: 223, column: 30, scope: !291)
!320 = !DILocation(line: 223, column: 28, scope: !291)
!321 = !DILocation(line: 224, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !291, file: !1, line: 224, column: 21)
!323 = !DILocation(line: 224, column: 32, scope: !322)
!324 = !DILocation(line: 224, column: 48, scope: !322)
!325 = !DILocation(line: 224, column: 51, scope: !322)
!326 = !DILocation(line: 224, column: 62, scope: !322)
!327 = !DILocation(line: 224, column: 21, scope: !291)
!328 = !DILocation(line: 226, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !1, line: 225, column: 17)
!330 = !DILocation(line: 229, column: 29, scope: !291)
!331 = !DILocation(line: 229, column: 17, scope: !291)
!332 = !DILocation(line: 229, column: 41, scope: !291)
!333 = !DILocation(line: 231, column: 29, scope: !291)
!334 = !DILocation(line: 231, column: 24, scope: !291)
!335 = !DILocation(line: 231, column: 22, scope: !291)
!336 = !DILocation(line: 232, column: 13, scope: !291)
!337 = !DILocation(line: 234, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !281, file: !1, line: 234, column: 17)
!339 = !DILocation(line: 234, column: 31, scope: !338)
!340 = !DILocation(line: 234, column: 17, scope: !281)
!341 = !DILocation(line: 236, column: 30, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 235, column: 13)
!343 = !DILocation(line: 236, column: 17, scope: !342)
!344 = !DILocation(line: 237, column: 13, scope: !342)
!345 = !DILocation(line: 245, column: 21, scope: !276)
!346 = !DILocation(line: 245, column: 10, scope: !276)
!347 = !DILocation(line: 245, column: 19, scope: !276)
!348 = !DILocalVariable(name: "data", scope: !349, file: !1, line: 248, type: !68)
!349 = distinct !DILexicalBlock(scope: !267, file: !1, line: 247, column: 5)
!350 = !DILocation(line: 248, column: 13, scope: !349)
!351 = !DILocation(line: 248, column: 21, scope: !349)
!352 = !DILocation(line: 248, column: 20, scope: !349)
!353 = !DILocalVariable(name: "i", scope: !354, file: !1, line: 250, type: !68)
!354 = distinct !DILexicalBlock(scope: !349, file: !1, line: 249, column: 9)
!355 = !DILocation(line: 250, column: 17, scope: !354)
!356 = !DILocalVariable(name: "buffer", scope: !354, file: !1, line: 251, type: !179)
!357 = !DILocation(line: 251, column: 17, scope: !354)
!358 = !DILocation(line: 253, column: 17, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !1, line: 253, column: 17)
!360 = !DILocation(line: 253, column: 22, scope: !359)
!361 = !DILocation(line: 253, column: 27, scope: !359)
!362 = !DILocation(line: 253, column: 30, scope: !359)
!363 = !DILocation(line: 253, column: 35, scope: !359)
!364 = !DILocation(line: 253, column: 17, scope: !354)
!365 = !DILocation(line: 255, column: 24, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !1, line: 254, column: 13)
!367 = !DILocation(line: 255, column: 17, scope: !366)
!368 = !DILocation(line: 255, column: 30, scope: !366)
!369 = !DILocation(line: 257, column: 23, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 257, column: 17)
!371 = !DILocation(line: 257, column: 21, scope: !370)
!372 = !DILocation(line: 257, column: 28, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 257, column: 17)
!374 = !DILocation(line: 257, column: 30, scope: !373)
!375 = !DILocation(line: 257, column: 17, scope: !370)
!376 = !DILocation(line: 259, column: 41, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !1, line: 258, column: 17)
!378 = !DILocation(line: 259, column: 34, scope: !377)
!379 = !DILocation(line: 259, column: 21, scope: !377)
!380 = !DILocation(line: 260, column: 17, scope: !377)
!381 = !DILocation(line: 257, column: 37, scope: !373)
!382 = !DILocation(line: 257, column: 17, scope: !373)
!383 = distinct !{!383, !375, !384, !207}
!384 = !DILocation(line: 260, column: 17, scope: !370)
!385 = !DILocation(line: 261, column: 13, scope: !366)
!386 = !DILocation(line: 264, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !359, file: !1, line: 263, column: 13)
!388 = !DILocation(line: 268, column: 1, scope: !267)
!389 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_good", scope: !1, file: !1, line: 270, type: !64, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!390 = !DILocation(line: 272, column: 5, scope: !389)
!391 = !DILocation(line: 273, column: 5, scope: !389)
!392 = !DILocation(line: 274, column: 1, scope: !389)
