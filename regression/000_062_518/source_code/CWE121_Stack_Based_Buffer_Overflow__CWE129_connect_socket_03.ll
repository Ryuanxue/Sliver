; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !69
  store i32 -1, i32* %data, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !71, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !76, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 -1, i32* %connectSocket, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  br label %do.body, !dbg !103

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !104
  store i32 %call, i32* %connectSocket, align 4, !dbg !106
  %0 = load i32, i32* %connectSocket, align 4, !dbg !107
  %cmp = icmp eq i32 %0, -1, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !111

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !113
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !114
  store i16 2, i16* %sin_family, align 4, !dbg !115
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !116
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !117
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !118
  store i32 %call1, i32* %s_addr, align 4, !dbg !119
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !120
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !121
  store i16 %call2, i16* %sin_port, align 2, !dbg !122
  %2 = load i32, i32* %connectSocket, align 4, !dbg !123
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !125
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !126
  %cmp4 = icmp eq i32 %call3, -1, !dbg !127
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !128

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !129

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !131
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !132
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !133
  %conv = trunc i64 %call7 to i32, !dbg !133
  store i32 %conv, i32* %recvResult, align 4, !dbg !134
  %5 = load i32, i32* %recvResult, align 4, !dbg !135
  %cmp8 = icmp eq i32 %5, -1, !dbg !137
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !138

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !139
  %cmp10 = icmp eq i32 %6, 0, !dbg !140
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !141

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !142

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !144
  %idxprom = sext i32 %7 to i64, !dbg !145
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !145
  store i8 0, i8* %arrayidx, align 1, !dbg !146
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !147
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !148
  store i32 %call15, i32* %data, align 4, !dbg !149
  br label %do.end, !dbg !150

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !151
  %cmp16 = icmp ne i32 %8, -1, !dbg !153
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !154

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !155
  %call19 = call i32 @close(i32 %9), !dbg !157
  br label %if.end20, !dbg !158

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !164, metadata !DIExpression()), !dbg !168
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !168
  %11 = load i32, i32* %data, align 4, !dbg !169
  %cmp21 = icmp sge i32 %11, 0, !dbg !171
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !172

if.then23:                                        ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !173
  %idxprom24 = sext i32 %12 to i64, !dbg !175
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !175
  store i32 1, i32* %arrayidx25, align 4, !dbg !176
  store i32 0, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !180
  %cmp26 = icmp slt i32 %13, 10, !dbg !182
  br i1 %cmp26, label %for.body, label %for.end, !dbg !183

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !184
  %idxprom28 = sext i32 %14 to i64, !dbg !186
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !186
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !186
  call void @printIntLine(i32 %15), !dbg !187
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !189
  %inc = add nsw i32 %16, 1, !dbg !189
  store i32 %inc, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !190, !llvm.loop !191

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !194

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !195
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !197
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
define dso_local void @goodB2G1() #0 !dbg !198 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 -1, i32* %data, align 4, !dbg !201
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !202, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !209, metadata !DIExpression()), !dbg !210
  store i32 -1, i32* %connectSocket, align 4, !dbg !210
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !211, metadata !DIExpression()), !dbg !212
  br label %do.body, !dbg !213

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !214
  store i32 %call, i32* %connectSocket, align 4, !dbg !216
  %0 = load i32, i32* %connectSocket, align 4, !dbg !217
  %cmp = icmp eq i32 %0, -1, !dbg !219
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !221

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !223
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !223
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !224
  store i16 2, i16* %sin_family, align 4, !dbg !225
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !226
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !227
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !228
  store i32 %call1, i32* %s_addr, align 4, !dbg !229
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !230
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !231
  store i16 %call2, i16* %sin_port, align 2, !dbg !232
  %2 = load i32, i32* %connectSocket, align 4, !dbg !233
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !235
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !236
  %cmp4 = icmp eq i32 %call3, -1, !dbg !237
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !238

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !239

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !241
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !242
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !243
  %conv = trunc i64 %call7 to i32, !dbg !243
  store i32 %conv, i32* %recvResult, align 4, !dbg !244
  %5 = load i32, i32* %recvResult, align 4, !dbg !245
  %cmp8 = icmp eq i32 %5, -1, !dbg !247
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !248

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !249
  %cmp10 = icmp eq i32 %6, 0, !dbg !250
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !251

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !252

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !254
  %idxprom = sext i32 %7 to i64, !dbg !255
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !255
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !257
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !258
  store i32 %call15, i32* %data, align 4, !dbg !259
  br label %do.end, !dbg !260

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !261
  %cmp16 = icmp ne i32 %8, -1, !dbg !263
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !264

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !265
  %call19 = call i32 @close(i32 %9), !dbg !267
  br label %if.end20, !dbg !268

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !269, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !274, metadata !DIExpression()), !dbg !275
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !275
  %11 = load i32, i32* %data, align 4, !dbg !276
  %cmp21 = icmp sge i32 %11, 0, !dbg !278
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !279

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !280
  %cmp23 = icmp slt i32 %12, 10, !dbg !281
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !282

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !283
  %idxprom26 = sext i32 %13 to i64, !dbg !285
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !285
  store i32 1, i32* %arrayidx27, align 4, !dbg !286
  store i32 0, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !289

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !290
  %cmp28 = icmp slt i32 %14, 10, !dbg !292
  br i1 %cmp28, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !294
  %idxprom30 = sext i32 %15 to i64, !dbg !296
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !296
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !296
  call void @printIntLine(i32 %16), !dbg !297
  br label %for.inc, !dbg !298

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !299
  %inc = add nsw i32 %17, 1, !dbg !299
  store i32 %inc, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !300, !llvm.loop !301

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !303

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !304
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !307 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !308, metadata !DIExpression()), !dbg !309
  store i32 -1, i32* %data, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !311, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !318, metadata !DIExpression()), !dbg !319
  store i32 -1, i32* %connectSocket, align 4, !dbg !319
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !320, metadata !DIExpression()), !dbg !321
  br label %do.body, !dbg !322

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !323
  store i32 %call, i32* %connectSocket, align 4, !dbg !325
  %0 = load i32, i32* %connectSocket, align 4, !dbg !326
  %cmp = icmp eq i32 %0, -1, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !330

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !332
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !332
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !333
  store i16 2, i16* %sin_family, align 4, !dbg !334
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !335
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !336
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !337
  store i32 %call1, i32* %s_addr, align 4, !dbg !338
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !339
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !340
  store i16 %call2, i16* %sin_port, align 2, !dbg !341
  %2 = load i32, i32* %connectSocket, align 4, !dbg !342
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !344
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !345
  %cmp4 = icmp eq i32 %call3, -1, !dbg !346
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !347

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !348

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !350
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !351
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !352
  %conv = trunc i64 %call7 to i32, !dbg !352
  store i32 %conv, i32* %recvResult, align 4, !dbg !353
  %5 = load i32, i32* %recvResult, align 4, !dbg !354
  %cmp8 = icmp eq i32 %5, -1, !dbg !356
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !357

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !358
  %cmp10 = icmp eq i32 %6, 0, !dbg !359
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !360

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !361

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !363
  %idxprom = sext i32 %7 to i64, !dbg !364
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !364
  store i8 0, i8* %arrayidx, align 1, !dbg !365
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !366
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !367
  store i32 %call15, i32* %data, align 4, !dbg !368
  br label %do.end, !dbg !369

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !370
  %cmp16 = icmp ne i32 %8, -1, !dbg !372
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !373

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !374
  %call19 = call i32 @close(i32 %9), !dbg !376
  br label %if.end20, !dbg !377

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !383, metadata !DIExpression()), !dbg !384
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !384
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !384
  %11 = load i32, i32* %data, align 4, !dbg !385
  %cmp21 = icmp sge i32 %11, 0, !dbg !387
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !388

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !389
  %cmp23 = icmp slt i32 %12, 10, !dbg !390
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !391

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !392
  %idxprom26 = sext i32 %13 to i64, !dbg !394
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !394
  store i32 1, i32* %arrayidx27, align 4, !dbg !395
  store i32 0, i32* %i, align 4, !dbg !396
  br label %for.cond, !dbg !398

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !399
  %cmp28 = icmp slt i32 %14, 10, !dbg !401
  br i1 %cmp28, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !403
  %idxprom30 = sext i32 %15 to i64, !dbg !405
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !405
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !405
  call void @printIntLine(i32 %16), !dbg !406
  br label %for.inc, !dbg !407

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !408
  %inc = add nsw i32 %17, 1, !dbg !408
  store i32 %inc, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !412

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !413
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !416 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !417, metadata !DIExpression()), !dbg !418
  store i32 -1, i32* %data, align 4, !dbg !419
  store i32 7, i32* %data, align 4, !dbg !420
  call void @llvm.dbg.declare(metadata i32* %i, metadata !423, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !429
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !429
  %1 = load i32, i32* %data, align 4, !dbg !430
  %cmp = icmp sge i32 %1, 0, !dbg !432
  br i1 %cmp, label %if.then, label %if.else, !dbg !433

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !434
  %idxprom = sext i32 %2 to i64, !dbg !436
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !436
  store i32 1, i32* %arrayidx, align 4, !dbg !437
  store i32 0, i32* %i, align 4, !dbg !438
  br label %for.cond, !dbg !440

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !441
  %cmp1 = icmp slt i32 %3, 10, !dbg !443
  br i1 %cmp1, label %for.body, label %for.end, !dbg !444

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !445
  %idxprom2 = sext i32 %4 to i64, !dbg !447
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !447
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !447
  call void @printIntLine(i32 %5), !dbg !448
  br label %for.inc, !dbg !449

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !450
  %inc = add nsw i32 %6, 1, !dbg !450
  store i32 %inc, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !451, !llvm.loop !452

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !454

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !455
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !458 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !459, metadata !DIExpression()), !dbg !460
  store i32 -1, i32* %data, align 4, !dbg !461
  store i32 7, i32* %data, align 4, !dbg !462
  call void @llvm.dbg.declare(metadata i32* %i, metadata !465, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !471
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !471
  %1 = load i32, i32* %data, align 4, !dbg !472
  %cmp = icmp sge i32 %1, 0, !dbg !474
  br i1 %cmp, label %if.then, label %if.else, !dbg !475

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !476
  %idxprom = sext i32 %2 to i64, !dbg !478
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !478
  store i32 1, i32* %arrayidx, align 4, !dbg !479
  store i32 0, i32* %i, align 4, !dbg !480
  br label %for.cond, !dbg !482

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !483
  %cmp1 = icmp slt i32 %3, 10, !dbg !485
  br i1 %cmp1, label %for.body, label %for.end, !dbg !486

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !487
  %idxprom2 = sext i32 %4 to i64, !dbg !489
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !489
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !489
  call void @printIntLine(i32 %5), !dbg !490
  br label %for.inc, !dbg !491

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !492
  %inc = add nsw i32 %6, 1, !dbg !492
  store i32 %inc, i32* %i, align 4, !dbg !492
  br label %for.cond, !dbg !493, !llvm.loop !494

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !496

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !497
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_good() #0 !dbg !500 {
entry:
  call void @goodB2G1(), !dbg !501
  call void @goodB2G2(), !dbg !502
  call void @goodG2B1(), !dbg !503
  call void @goodG2B2(), !dbg !504
  ret void, !dbg !505
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_518/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocalVariable(name: "recvResult", scope: !72, file: !1, line: 57, type: !68)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 52, column: 9)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 51, column: 5)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 8)
!75 = !DILocation(line: 57, column: 17, scope: !72)
!76 = !DILocalVariable(name: "service", scope: !72, file: !1, line: 58, type: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !78)
!78 = !{!79, !80, !86, !93}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !77, file: !17, line: 240, baseType: !51, size: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !77, file: !17, line: 241, baseType: !81, size: 16, offset: 16)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !83, line: 25, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !85, line: 40, baseType: !53)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !77, file: !17, line: 242, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !87, file: !17, line: 33, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 26, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 42, baseType: !5)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !77, file: !17, line: 245, baseType: !94, size: 64, offset: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !96)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DILocation(line: 58, column: 32, scope: !72)
!99 = !DILocalVariable(name: "connectSocket", scope: !72, file: !1, line: 59, type: !68)
!100 = !DILocation(line: 59, column: 20, scope: !72)
!101 = !DILocalVariable(name: "inputBuffer", scope: !72, file: !1, line: 60, type: !55)
!102 = !DILocation(line: 60, column: 18, scope: !72)
!103 = !DILocation(line: 61, column: 13, scope: !72)
!104 = !DILocation(line: 71, column: 33, scope: !105)
!105 = distinct !DILexicalBlock(scope: !72, file: !1, line: 62, column: 13)
!106 = !DILocation(line: 71, column: 31, scope: !105)
!107 = !DILocation(line: 72, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 72, column: 21)
!109 = !DILocation(line: 72, column: 35, scope: !108)
!110 = !DILocation(line: 72, column: 21, scope: !105)
!111 = !DILocation(line: 74, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 73, column: 17)
!113 = !DILocation(line: 76, column: 17, scope: !105)
!114 = !DILocation(line: 77, column: 25, scope: !105)
!115 = !DILocation(line: 77, column: 36, scope: !105)
!116 = !DILocation(line: 78, column: 43, scope: !105)
!117 = !DILocation(line: 78, column: 25, scope: !105)
!118 = !DILocation(line: 78, column: 34, scope: !105)
!119 = !DILocation(line: 78, column: 41, scope: !105)
!120 = !DILocation(line: 79, column: 36, scope: !105)
!121 = !DILocation(line: 79, column: 25, scope: !105)
!122 = !DILocation(line: 79, column: 34, scope: !105)
!123 = !DILocation(line: 80, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !105, file: !1, line: 80, column: 21)
!125 = !DILocation(line: 80, column: 44, scope: !124)
!126 = !DILocation(line: 80, column: 21, scope: !124)
!127 = !DILocation(line: 80, column: 89, scope: !124)
!128 = !DILocation(line: 80, column: 21, scope: !105)
!129 = !DILocation(line: 82, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !1, line: 81, column: 17)
!131 = !DILocation(line: 86, column: 35, scope: !105)
!132 = !DILocation(line: 86, column: 50, scope: !105)
!133 = !DILocation(line: 86, column: 30, scope: !105)
!134 = !DILocation(line: 86, column: 28, scope: !105)
!135 = !DILocation(line: 87, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !105, file: !1, line: 87, column: 21)
!137 = !DILocation(line: 87, column: 32, scope: !136)
!138 = !DILocation(line: 87, column: 48, scope: !136)
!139 = !DILocation(line: 87, column: 51, scope: !136)
!140 = !DILocation(line: 87, column: 62, scope: !136)
!141 = !DILocation(line: 87, column: 21, scope: !105)
!142 = !DILocation(line: 89, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 88, column: 17)
!144 = !DILocation(line: 92, column: 29, scope: !105)
!145 = !DILocation(line: 92, column: 17, scope: !105)
!146 = !DILocation(line: 92, column: 41, scope: !105)
!147 = !DILocation(line: 94, column: 29, scope: !105)
!148 = !DILocation(line: 94, column: 24, scope: !105)
!149 = !DILocation(line: 94, column: 22, scope: !105)
!150 = !DILocation(line: 95, column: 13, scope: !105)
!151 = !DILocation(line: 97, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !72, file: !1, line: 97, column: 17)
!153 = !DILocation(line: 97, column: 31, scope: !152)
!154 = !DILocation(line: 97, column: 17, scope: !72)
!155 = !DILocation(line: 99, column: 30, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 98, column: 13)
!157 = !DILocation(line: 99, column: 17, scope: !156)
!158 = !DILocation(line: 100, column: 13, scope: !156)
!159 = !DILocalVariable(name: "i", scope: !160, file: !1, line: 112, type: !68)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 111, column: 9)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 110, column: 5)
!162 = distinct !DILexicalBlock(scope: !63, file: !1, line: 109, column: 8)
!163 = !DILocation(line: 112, column: 17, scope: !160)
!164 = !DILocalVariable(name: "buffer", scope: !160, file: !1, line: 113, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 10)
!168 = !DILocation(line: 113, column: 17, scope: !160)
!169 = !DILocation(line: 116, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !160, file: !1, line: 116, column: 17)
!171 = !DILocation(line: 116, column: 22, scope: !170)
!172 = !DILocation(line: 116, column: 17, scope: !160)
!173 = !DILocation(line: 118, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 117, column: 13)
!175 = !DILocation(line: 118, column: 17, scope: !174)
!176 = !DILocation(line: 118, column: 30, scope: !174)
!177 = !DILocation(line: 120, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 120, column: 17)
!179 = !DILocation(line: 120, column: 21, scope: !178)
!180 = !DILocation(line: 120, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 120, column: 17)
!182 = !DILocation(line: 120, column: 30, scope: !181)
!183 = !DILocation(line: 120, column: 17, scope: !178)
!184 = !DILocation(line: 122, column: 41, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 121, column: 17)
!186 = !DILocation(line: 122, column: 34, scope: !185)
!187 = !DILocation(line: 122, column: 21, scope: !185)
!188 = !DILocation(line: 123, column: 17, scope: !185)
!189 = !DILocation(line: 120, column: 37, scope: !181)
!190 = !DILocation(line: 120, column: 17, scope: !181)
!191 = distinct !{!191, !183, !192, !193}
!192 = !DILocation(line: 123, column: 17, scope: !178)
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 124, column: 13, scope: !174)
!195 = !DILocation(line: 127, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !170, file: !1, line: 126, column: 13)
!197 = !DILocation(line: 131, column: 1, scope: !63)
!198 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 138, type: !64, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!199 = !DILocalVariable(name: "data", scope: !198, file: !1, line: 140, type: !68)
!200 = !DILocation(line: 140, column: 9, scope: !198)
!201 = !DILocation(line: 142, column: 10, scope: !198)
!202 = !DILocalVariable(name: "recvResult", scope: !203, file: !1, line: 150, type: !68)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 145, column: 9)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 144, column: 5)
!205 = distinct !DILexicalBlock(scope: !198, file: !1, line: 143, column: 8)
!206 = !DILocation(line: 150, column: 17, scope: !203)
!207 = !DILocalVariable(name: "service", scope: !203, file: !1, line: 151, type: !77)
!208 = !DILocation(line: 151, column: 32, scope: !203)
!209 = !DILocalVariable(name: "connectSocket", scope: !203, file: !1, line: 152, type: !68)
!210 = !DILocation(line: 152, column: 20, scope: !203)
!211 = !DILocalVariable(name: "inputBuffer", scope: !203, file: !1, line: 153, type: !55)
!212 = !DILocation(line: 153, column: 18, scope: !203)
!213 = !DILocation(line: 154, column: 13, scope: !203)
!214 = !DILocation(line: 164, column: 33, scope: !215)
!215 = distinct !DILexicalBlock(scope: !203, file: !1, line: 155, column: 13)
!216 = !DILocation(line: 164, column: 31, scope: !215)
!217 = !DILocation(line: 165, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !1, line: 165, column: 21)
!219 = !DILocation(line: 165, column: 35, scope: !218)
!220 = !DILocation(line: 165, column: 21, scope: !215)
!221 = !DILocation(line: 167, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 166, column: 17)
!223 = !DILocation(line: 169, column: 17, scope: !215)
!224 = !DILocation(line: 170, column: 25, scope: !215)
!225 = !DILocation(line: 170, column: 36, scope: !215)
!226 = !DILocation(line: 171, column: 43, scope: !215)
!227 = !DILocation(line: 171, column: 25, scope: !215)
!228 = !DILocation(line: 171, column: 34, scope: !215)
!229 = !DILocation(line: 171, column: 41, scope: !215)
!230 = !DILocation(line: 172, column: 36, scope: !215)
!231 = !DILocation(line: 172, column: 25, scope: !215)
!232 = !DILocation(line: 172, column: 34, scope: !215)
!233 = !DILocation(line: 173, column: 29, scope: !234)
!234 = distinct !DILexicalBlock(scope: !215, file: !1, line: 173, column: 21)
!235 = !DILocation(line: 173, column: 44, scope: !234)
!236 = !DILocation(line: 173, column: 21, scope: !234)
!237 = !DILocation(line: 173, column: 89, scope: !234)
!238 = !DILocation(line: 173, column: 21, scope: !215)
!239 = !DILocation(line: 175, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !1, line: 174, column: 17)
!241 = !DILocation(line: 179, column: 35, scope: !215)
!242 = !DILocation(line: 179, column: 50, scope: !215)
!243 = !DILocation(line: 179, column: 30, scope: !215)
!244 = !DILocation(line: 179, column: 28, scope: !215)
!245 = !DILocation(line: 180, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !215, file: !1, line: 180, column: 21)
!247 = !DILocation(line: 180, column: 32, scope: !246)
!248 = !DILocation(line: 180, column: 48, scope: !246)
!249 = !DILocation(line: 180, column: 51, scope: !246)
!250 = !DILocation(line: 180, column: 62, scope: !246)
!251 = !DILocation(line: 180, column: 21, scope: !215)
!252 = !DILocation(line: 182, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 181, column: 17)
!254 = !DILocation(line: 185, column: 29, scope: !215)
!255 = !DILocation(line: 185, column: 17, scope: !215)
!256 = !DILocation(line: 185, column: 41, scope: !215)
!257 = !DILocation(line: 187, column: 29, scope: !215)
!258 = !DILocation(line: 187, column: 24, scope: !215)
!259 = !DILocation(line: 187, column: 22, scope: !215)
!260 = !DILocation(line: 188, column: 13, scope: !215)
!261 = !DILocation(line: 190, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !203, file: !1, line: 190, column: 17)
!263 = !DILocation(line: 190, column: 31, scope: !262)
!264 = !DILocation(line: 190, column: 17, scope: !203)
!265 = !DILocation(line: 192, column: 30, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 191, column: 13)
!267 = !DILocation(line: 192, column: 17, scope: !266)
!268 = !DILocation(line: 193, column: 13, scope: !266)
!269 = !DILocalVariable(name: "i", scope: !270, file: !1, line: 210, type: !68)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 209, column: 9)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 208, column: 5)
!272 = distinct !DILexicalBlock(scope: !198, file: !1, line: 202, column: 8)
!273 = !DILocation(line: 210, column: 17, scope: !270)
!274 = !DILocalVariable(name: "buffer", scope: !270, file: !1, line: 211, type: !165)
!275 = !DILocation(line: 211, column: 17, scope: !270)
!276 = !DILocation(line: 213, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !1, line: 213, column: 17)
!278 = !DILocation(line: 213, column: 22, scope: !277)
!279 = !DILocation(line: 213, column: 27, scope: !277)
!280 = !DILocation(line: 213, column: 30, scope: !277)
!281 = !DILocation(line: 213, column: 35, scope: !277)
!282 = !DILocation(line: 213, column: 17, scope: !270)
!283 = !DILocation(line: 215, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !1, line: 214, column: 13)
!285 = !DILocation(line: 215, column: 17, scope: !284)
!286 = !DILocation(line: 215, column: 30, scope: !284)
!287 = !DILocation(line: 217, column: 23, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !1, line: 217, column: 17)
!289 = !DILocation(line: 217, column: 21, scope: !288)
!290 = !DILocation(line: 217, column: 28, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !1, line: 217, column: 17)
!292 = !DILocation(line: 217, column: 30, scope: !291)
!293 = !DILocation(line: 217, column: 17, scope: !288)
!294 = !DILocation(line: 219, column: 41, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 218, column: 17)
!296 = !DILocation(line: 219, column: 34, scope: !295)
!297 = !DILocation(line: 219, column: 21, scope: !295)
!298 = !DILocation(line: 220, column: 17, scope: !295)
!299 = !DILocation(line: 217, column: 37, scope: !291)
!300 = !DILocation(line: 217, column: 17, scope: !291)
!301 = distinct !{!301, !293, !302, !193}
!302 = !DILocation(line: 220, column: 17, scope: !288)
!303 = !DILocation(line: 221, column: 13, scope: !284)
!304 = !DILocation(line: 224, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !277, file: !1, line: 223, column: 13)
!306 = !DILocation(line: 228, column: 1, scope: !198)
!307 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 231, type: !64, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!308 = !DILocalVariable(name: "data", scope: !307, file: !1, line: 233, type: !68)
!309 = !DILocation(line: 233, column: 9, scope: !307)
!310 = !DILocation(line: 235, column: 10, scope: !307)
!311 = !DILocalVariable(name: "recvResult", scope: !312, file: !1, line: 243, type: !68)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 238, column: 9)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 237, column: 5)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 236, column: 8)
!315 = !DILocation(line: 243, column: 17, scope: !312)
!316 = !DILocalVariable(name: "service", scope: !312, file: !1, line: 244, type: !77)
!317 = !DILocation(line: 244, column: 32, scope: !312)
!318 = !DILocalVariable(name: "connectSocket", scope: !312, file: !1, line: 245, type: !68)
!319 = !DILocation(line: 245, column: 20, scope: !312)
!320 = !DILocalVariable(name: "inputBuffer", scope: !312, file: !1, line: 246, type: !55)
!321 = !DILocation(line: 246, column: 18, scope: !312)
!322 = !DILocation(line: 247, column: 13, scope: !312)
!323 = !DILocation(line: 257, column: 33, scope: !324)
!324 = distinct !DILexicalBlock(scope: !312, file: !1, line: 248, column: 13)
!325 = !DILocation(line: 257, column: 31, scope: !324)
!326 = !DILocation(line: 258, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 258, column: 21)
!328 = !DILocation(line: 258, column: 35, scope: !327)
!329 = !DILocation(line: 258, column: 21, scope: !324)
!330 = !DILocation(line: 260, column: 21, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 259, column: 17)
!332 = !DILocation(line: 262, column: 17, scope: !324)
!333 = !DILocation(line: 263, column: 25, scope: !324)
!334 = !DILocation(line: 263, column: 36, scope: !324)
!335 = !DILocation(line: 264, column: 43, scope: !324)
!336 = !DILocation(line: 264, column: 25, scope: !324)
!337 = !DILocation(line: 264, column: 34, scope: !324)
!338 = !DILocation(line: 264, column: 41, scope: !324)
!339 = !DILocation(line: 265, column: 36, scope: !324)
!340 = !DILocation(line: 265, column: 25, scope: !324)
!341 = !DILocation(line: 265, column: 34, scope: !324)
!342 = !DILocation(line: 266, column: 29, scope: !343)
!343 = distinct !DILexicalBlock(scope: !324, file: !1, line: 266, column: 21)
!344 = !DILocation(line: 266, column: 44, scope: !343)
!345 = !DILocation(line: 266, column: 21, scope: !343)
!346 = !DILocation(line: 266, column: 89, scope: !343)
!347 = !DILocation(line: 266, column: 21, scope: !324)
!348 = !DILocation(line: 268, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !1, line: 267, column: 17)
!350 = !DILocation(line: 272, column: 35, scope: !324)
!351 = !DILocation(line: 272, column: 50, scope: !324)
!352 = !DILocation(line: 272, column: 30, scope: !324)
!353 = !DILocation(line: 272, column: 28, scope: !324)
!354 = !DILocation(line: 273, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !324, file: !1, line: 273, column: 21)
!356 = !DILocation(line: 273, column: 32, scope: !355)
!357 = !DILocation(line: 273, column: 48, scope: !355)
!358 = !DILocation(line: 273, column: 51, scope: !355)
!359 = !DILocation(line: 273, column: 62, scope: !355)
!360 = !DILocation(line: 273, column: 21, scope: !324)
!361 = !DILocation(line: 275, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !355, file: !1, line: 274, column: 17)
!363 = !DILocation(line: 278, column: 29, scope: !324)
!364 = !DILocation(line: 278, column: 17, scope: !324)
!365 = !DILocation(line: 278, column: 41, scope: !324)
!366 = !DILocation(line: 280, column: 29, scope: !324)
!367 = !DILocation(line: 280, column: 24, scope: !324)
!368 = !DILocation(line: 280, column: 22, scope: !324)
!369 = !DILocation(line: 281, column: 13, scope: !324)
!370 = !DILocation(line: 283, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !312, file: !1, line: 283, column: 17)
!372 = !DILocation(line: 283, column: 31, scope: !371)
!373 = !DILocation(line: 283, column: 17, scope: !312)
!374 = !DILocation(line: 285, column: 30, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 284, column: 13)
!376 = !DILocation(line: 285, column: 17, scope: !375)
!377 = !DILocation(line: 286, column: 13, scope: !375)
!378 = !DILocalVariable(name: "i", scope: !379, file: !1, line: 298, type: !68)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 297, column: 9)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 296, column: 5)
!381 = distinct !DILexicalBlock(scope: !307, file: !1, line: 295, column: 8)
!382 = !DILocation(line: 298, column: 17, scope: !379)
!383 = !DILocalVariable(name: "buffer", scope: !379, file: !1, line: 299, type: !165)
!384 = !DILocation(line: 299, column: 17, scope: !379)
!385 = !DILocation(line: 301, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !1, line: 301, column: 17)
!387 = !DILocation(line: 301, column: 22, scope: !386)
!388 = !DILocation(line: 301, column: 27, scope: !386)
!389 = !DILocation(line: 301, column: 30, scope: !386)
!390 = !DILocation(line: 301, column: 35, scope: !386)
!391 = !DILocation(line: 301, column: 17, scope: !379)
!392 = !DILocation(line: 303, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !1, line: 302, column: 13)
!394 = !DILocation(line: 303, column: 17, scope: !393)
!395 = !DILocation(line: 303, column: 30, scope: !393)
!396 = !DILocation(line: 305, column: 23, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 305, column: 17)
!398 = !DILocation(line: 305, column: 21, scope: !397)
!399 = !DILocation(line: 305, column: 28, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 305, column: 17)
!401 = !DILocation(line: 305, column: 30, scope: !400)
!402 = !DILocation(line: 305, column: 17, scope: !397)
!403 = !DILocation(line: 307, column: 41, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 306, column: 17)
!405 = !DILocation(line: 307, column: 34, scope: !404)
!406 = !DILocation(line: 307, column: 21, scope: !404)
!407 = !DILocation(line: 308, column: 17, scope: !404)
!408 = !DILocation(line: 305, column: 37, scope: !400)
!409 = !DILocation(line: 305, column: 17, scope: !400)
!410 = distinct !{!410, !402, !411, !193}
!411 = !DILocation(line: 308, column: 17, scope: !397)
!412 = !DILocation(line: 309, column: 13, scope: !393)
!413 = !DILocation(line: 312, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !386, file: !1, line: 311, column: 13)
!415 = !DILocation(line: 316, column: 1, scope: !307)
!416 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 319, type: !64, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!417 = !DILocalVariable(name: "data", scope: !416, file: !1, line: 321, type: !68)
!418 = !DILocation(line: 321, column: 9, scope: !416)
!419 = !DILocation(line: 323, column: 10, scope: !416)
!420 = !DILocation(line: 333, column: 14, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 330, column: 5)
!422 = distinct !DILexicalBlock(scope: !416, file: !1, line: 324, column: 8)
!423 = !DILocalVariable(name: "i", scope: !424, file: !1, line: 338, type: !68)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 337, column: 9)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 336, column: 5)
!426 = distinct !DILexicalBlock(scope: !416, file: !1, line: 335, column: 8)
!427 = !DILocation(line: 338, column: 17, scope: !424)
!428 = !DILocalVariable(name: "buffer", scope: !424, file: !1, line: 339, type: !165)
!429 = !DILocation(line: 339, column: 17, scope: !424)
!430 = !DILocation(line: 342, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !1, line: 342, column: 17)
!432 = !DILocation(line: 342, column: 22, scope: !431)
!433 = !DILocation(line: 342, column: 17, scope: !424)
!434 = !DILocation(line: 344, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !1, line: 343, column: 13)
!436 = !DILocation(line: 344, column: 17, scope: !435)
!437 = !DILocation(line: 344, column: 30, scope: !435)
!438 = !DILocation(line: 346, column: 23, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !1, line: 346, column: 17)
!440 = !DILocation(line: 346, column: 21, scope: !439)
!441 = !DILocation(line: 346, column: 28, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 346, column: 17)
!443 = !DILocation(line: 346, column: 30, scope: !442)
!444 = !DILocation(line: 346, column: 17, scope: !439)
!445 = !DILocation(line: 348, column: 41, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 347, column: 17)
!447 = !DILocation(line: 348, column: 34, scope: !446)
!448 = !DILocation(line: 348, column: 21, scope: !446)
!449 = !DILocation(line: 349, column: 17, scope: !446)
!450 = !DILocation(line: 346, column: 37, scope: !442)
!451 = !DILocation(line: 346, column: 17, scope: !442)
!452 = distinct !{!452, !444, !453, !193}
!453 = !DILocation(line: 349, column: 17, scope: !439)
!454 = !DILocation(line: 350, column: 13, scope: !435)
!455 = !DILocation(line: 353, column: 17, scope: !456)
!456 = distinct !DILexicalBlock(scope: !431, file: !1, line: 352, column: 13)
!457 = !DILocation(line: 357, column: 1, scope: !416)
!458 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 360, type: !64, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!459 = !DILocalVariable(name: "data", scope: !458, file: !1, line: 362, type: !68)
!460 = !DILocation(line: 362, column: 9, scope: !458)
!461 = !DILocation(line: 364, column: 10, scope: !458)
!462 = !DILocation(line: 369, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 366, column: 5)
!464 = distinct !DILexicalBlock(scope: !458, file: !1, line: 365, column: 8)
!465 = !DILocalVariable(name: "i", scope: !466, file: !1, line: 374, type: !68)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 373, column: 9)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 372, column: 5)
!468 = distinct !DILexicalBlock(scope: !458, file: !1, line: 371, column: 8)
!469 = !DILocation(line: 374, column: 17, scope: !466)
!470 = !DILocalVariable(name: "buffer", scope: !466, file: !1, line: 375, type: !165)
!471 = !DILocation(line: 375, column: 17, scope: !466)
!472 = !DILocation(line: 378, column: 17, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !1, line: 378, column: 17)
!474 = !DILocation(line: 378, column: 22, scope: !473)
!475 = !DILocation(line: 378, column: 17, scope: !466)
!476 = !DILocation(line: 380, column: 24, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !1, line: 379, column: 13)
!478 = !DILocation(line: 380, column: 17, scope: !477)
!479 = !DILocation(line: 380, column: 30, scope: !477)
!480 = !DILocation(line: 382, column: 23, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !1, line: 382, column: 17)
!482 = !DILocation(line: 382, column: 21, scope: !481)
!483 = !DILocation(line: 382, column: 28, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !1, line: 382, column: 17)
!485 = !DILocation(line: 382, column: 30, scope: !484)
!486 = !DILocation(line: 382, column: 17, scope: !481)
!487 = !DILocation(line: 384, column: 41, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !1, line: 383, column: 17)
!489 = !DILocation(line: 384, column: 34, scope: !488)
!490 = !DILocation(line: 384, column: 21, scope: !488)
!491 = !DILocation(line: 385, column: 17, scope: !488)
!492 = !DILocation(line: 382, column: 37, scope: !484)
!493 = !DILocation(line: 382, column: 17, scope: !484)
!494 = distinct !{!494, !486, !495, !193}
!495 = !DILocation(line: 385, column: 17, scope: !481)
!496 = !DILocation(line: 386, column: 13, scope: !477)
!497 = !DILocation(line: 389, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !473, file: !1, line: 388, column: 13)
!499 = !DILocation(line: 393, column: 1, scope: !458)
!500 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_good", scope: !1, file: !1, line: 395, type: !64, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!501 = !DILocation(line: 397, column: 5, scope: !500)
!502 = !DILocation(line: 398, column: 5, scope: !500)
!503 = !DILocation(line: 399, column: 5, scope: !500)
!504 = !DILocation(line: 400, column: 5, scope: !500)
!505 = !DILocation(line: 401, column: 1, scope: !500)
