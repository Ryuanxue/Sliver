; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !69
  store i32 -1, i32* %data, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !74, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 -1, i32* %connectSocket, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !99, metadata !DIExpression()), !dbg !100
  br label %do.body, !dbg !101

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !102
  store i32 %call, i32* %connectSocket, align 4, !dbg !104
  %0 = load i32, i32* %connectSocket, align 4, !dbg !105
  %cmp = icmp eq i32 %0, -1, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !109

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !111
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !112
  store i16 2, i16* %sin_family, align 4, !dbg !113
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !114
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !115
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !116
  store i32 %call1, i32* %s_addr, align 4, !dbg !117
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !118
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !119
  store i16 %call2, i16* %sin_port, align 2, !dbg !120
  %2 = load i32, i32* %connectSocket, align 4, !dbg !121
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !123
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !124
  %cmp4 = icmp eq i32 %call3, -1, !dbg !125
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !126

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !127

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !129
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !130
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !131
  %conv = trunc i64 %call7 to i32, !dbg !131
  store i32 %conv, i32* %recvResult, align 4, !dbg !132
  %5 = load i32, i32* %recvResult, align 4, !dbg !133
  %cmp8 = icmp eq i32 %5, -1, !dbg !135
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !136

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !137
  %cmp10 = icmp eq i32 %6, 0, !dbg !138
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !139

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !140

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !142
  %idxprom = sext i32 %7 to i64, !dbg !143
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !143
  store i8 0, i8* %arrayidx, align 1, !dbg !144
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !145
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !146
  store i32 %call15, i32* %data, align 4, !dbg !147
  br label %do.end, !dbg !148

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !149
  %cmp16 = icmp ne i32 %8, -1, !dbg !151
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !152

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !153
  %call19 = call i32 @close(i32 %9), !dbg !155
  br label %if.end20, !dbg !156

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !157, metadata !DIExpression()), !dbg !159
  %10 = load i32, i32* %data, align 4, !dbg !160
  store i32 %10, i32* %dataCopy, align 4, !dbg !159
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !161, metadata !DIExpression()), !dbg !162
  %11 = load i32, i32* %dataCopy, align 4, !dbg !163
  store i32 %11, i32* %data21, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %i, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !167, metadata !DIExpression()), !dbg !171
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !171
  %13 = load i32, i32* %data21, align 4, !dbg !172
  %cmp22 = icmp sge i32 %13, 0, !dbg !174
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !175

if.then24:                                        ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !176
  %idxprom25 = sext i32 %14 to i64, !dbg !178
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !178
  store i32 1, i32* %arrayidx26, align 4, !dbg !179
  store i32 0, i32* %i, align 4, !dbg !180
  br label %for.cond, !dbg !182

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !183
  %cmp27 = icmp slt i32 %15, 10, !dbg !185
  br i1 %cmp27, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !187
  %idxprom29 = sext i32 %16 to i64, !dbg !189
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !189
  %17 = load i32, i32* %arrayidx30, align 4, !dbg !189
  call void @printIntLine(i32 %17), !dbg !190
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !192
  %inc = add nsw i32 %18, 1, !dbg !192
  store i32 %inc, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !197

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !198
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  ret void, !dbg !200
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
define dso_local void @goodG2B() #0 !dbg !201 {
entry:
  %data = alloca i32, align 4
  %dataCopy = alloca i32, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 -1, i32* %data, align 4, !dbg !204
  store i32 7, i32* %data, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !206, metadata !DIExpression()), !dbg !208
  %0 = load i32, i32* %data, align 4, !dbg !209
  store i32 %0, i32* %dataCopy, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !210, metadata !DIExpression()), !dbg !211
  %1 = load i32, i32* %dataCopy, align 4, !dbg !212
  store i32 %1, i32* %data1, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %i, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !216, metadata !DIExpression()), !dbg !217
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !217
  %3 = load i32, i32* %data1, align 4, !dbg !218
  %cmp = icmp sge i32 %3, 0, !dbg !220
  br i1 %cmp, label %if.then, label %if.else, !dbg !221

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !222
  %idxprom = sext i32 %4 to i64, !dbg !224
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !224
  store i32 1, i32* %arrayidx, align 4, !dbg !225
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !229
  %cmp2 = icmp slt i32 %5, 10, !dbg !231
  br i1 %cmp2, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !233
  %idxprom3 = sext i32 %6 to i64, !dbg !235
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !235
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !235
  call void @printIntLine(i32 %7), !dbg !236
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !238
  %inc = add nsw i32 %8, 1, !dbg !238
  store i32 %inc, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !242

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !243
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !246 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 -1, i32* %data, align 4, !dbg !249
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 -1, i32* %connectSocket, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !257, metadata !DIExpression()), !dbg !258
  br label %do.body, !dbg !259

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !260
  store i32 %call, i32* %connectSocket, align 4, !dbg !262
  %0 = load i32, i32* %connectSocket, align 4, !dbg !263
  %cmp = icmp eq i32 %0, -1, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !266

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !267

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !269
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !270
  store i16 2, i16* %sin_family, align 4, !dbg !271
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !272
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !273
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !274
  store i32 %call1, i32* %s_addr, align 4, !dbg !275
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !276
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !277
  store i16 %call2, i16* %sin_port, align 2, !dbg !278
  %2 = load i32, i32* %connectSocket, align 4, !dbg !279
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !281
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !282
  %cmp4 = icmp eq i32 %call3, -1, !dbg !283
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !284

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !285

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !287
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !288
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !289
  %conv = trunc i64 %call7 to i32, !dbg !289
  store i32 %conv, i32* %recvResult, align 4, !dbg !290
  %5 = load i32, i32* %recvResult, align 4, !dbg !291
  %cmp8 = icmp eq i32 %5, -1, !dbg !293
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !294

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !295
  %cmp10 = icmp eq i32 %6, 0, !dbg !296
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !297

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !298

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !300
  %idxprom = sext i32 %7 to i64, !dbg !301
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !301
  store i8 0, i8* %arrayidx, align 1, !dbg !302
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !303
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !304
  store i32 %call15, i32* %data, align 4, !dbg !305
  br label %do.end, !dbg !306

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !307
  %cmp16 = icmp ne i32 %8, -1, !dbg !309
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !310

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !311
  %call19 = call i32 @close(i32 %9), !dbg !313
  br label %if.end20, !dbg !314

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !315, metadata !DIExpression()), !dbg !317
  %10 = load i32, i32* %data, align 4, !dbg !318
  store i32 %10, i32* %dataCopy, align 4, !dbg !317
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !319, metadata !DIExpression()), !dbg !320
  %11 = load i32, i32* %dataCopy, align 4, !dbg !321
  store i32 %11, i32* %data21, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %i, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !325, metadata !DIExpression()), !dbg !326
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !326
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !326
  %13 = load i32, i32* %data21, align 4, !dbg !327
  %cmp22 = icmp sge i32 %13, 0, !dbg !329
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !330

land.lhs.true:                                    ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !331
  %cmp24 = icmp slt i32 %14, 10, !dbg !332
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !333

if.then26:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data21, align 4, !dbg !334
  %idxprom27 = sext i32 %15 to i64, !dbg !336
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !336
  store i32 1, i32* %arrayidx28, align 4, !dbg !337
  store i32 0, i32* %i, align 4, !dbg !338
  br label %for.cond, !dbg !340

for.cond:                                         ; preds = %for.inc, %if.then26
  %16 = load i32, i32* %i, align 4, !dbg !341
  %cmp29 = icmp slt i32 %16, 10, !dbg !343
  br i1 %cmp29, label %for.body, label %for.end, !dbg !344

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !345
  %idxprom31 = sext i32 %17 to i64, !dbg !347
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !347
  %18 = load i32, i32* %arrayidx32, align 4, !dbg !347
  call void @printIntLine(i32 %18), !dbg !348
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !350
  %inc = add nsw i32 %19, 1, !dbg !350
  store i32 %inc, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !351, !llvm.loop !352

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !354

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !355
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_good() #0 !dbg !358 {
entry:
  call void @goodG2B(), !dbg !359
  call void @goodB2G(), !dbg !360
  ret void, !dbg !361
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_536/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocalVariable(name: "recvResult", scope: !72, file: !1, line: 55, type: !68)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 5)
!73 = !DILocation(line: 55, column: 13, scope: !72)
!74 = !DILocalVariable(name: "service", scope: !72, file: !1, line: 56, type: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !76)
!76 = !{!77, !78, !84, !91}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !75, file: !17, line: 240, baseType: !51, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !75, file: !17, line: 241, baseType: !79, size: 16, offset: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !81, line: 25, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !83, line: 40, baseType: !53)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !75, file: !17, line: 242, baseType: !85, size: 32, offset: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !85, file: !17, line: 33, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 26, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !83, line: 42, baseType: !5)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !75, file: !17, line: 245, baseType: !92, size: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !94)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DILocation(line: 56, column: 28, scope: !72)
!97 = !DILocalVariable(name: "connectSocket", scope: !72, file: !1, line: 57, type: !68)
!98 = !DILocation(line: 57, column: 16, scope: !72)
!99 = !DILocalVariable(name: "inputBuffer", scope: !72, file: !1, line: 58, type: !55)
!100 = !DILocation(line: 58, column: 14, scope: !72)
!101 = !DILocation(line: 59, column: 9, scope: !72)
!102 = !DILocation(line: 69, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !72, file: !1, line: 60, column: 9)
!104 = !DILocation(line: 69, column: 27, scope: !103)
!105 = !DILocation(line: 70, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 70, column: 17)
!107 = !DILocation(line: 70, column: 31, scope: !106)
!108 = !DILocation(line: 70, column: 17, scope: !103)
!109 = !DILocation(line: 72, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 71, column: 13)
!111 = !DILocation(line: 74, column: 13, scope: !103)
!112 = !DILocation(line: 75, column: 21, scope: !103)
!113 = !DILocation(line: 75, column: 32, scope: !103)
!114 = !DILocation(line: 76, column: 39, scope: !103)
!115 = !DILocation(line: 76, column: 21, scope: !103)
!116 = !DILocation(line: 76, column: 30, scope: !103)
!117 = !DILocation(line: 76, column: 37, scope: !103)
!118 = !DILocation(line: 77, column: 32, scope: !103)
!119 = !DILocation(line: 77, column: 21, scope: !103)
!120 = !DILocation(line: 77, column: 30, scope: !103)
!121 = !DILocation(line: 78, column: 25, scope: !122)
!122 = distinct !DILexicalBlock(scope: !103, file: !1, line: 78, column: 17)
!123 = !DILocation(line: 78, column: 40, scope: !122)
!124 = !DILocation(line: 78, column: 17, scope: !122)
!125 = !DILocation(line: 78, column: 85, scope: !122)
!126 = !DILocation(line: 78, column: 17, scope: !103)
!127 = !DILocation(line: 80, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 79, column: 13)
!129 = !DILocation(line: 84, column: 31, scope: !103)
!130 = !DILocation(line: 84, column: 46, scope: !103)
!131 = !DILocation(line: 84, column: 26, scope: !103)
!132 = !DILocation(line: 84, column: 24, scope: !103)
!133 = !DILocation(line: 85, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !103, file: !1, line: 85, column: 17)
!135 = !DILocation(line: 85, column: 28, scope: !134)
!136 = !DILocation(line: 85, column: 44, scope: !134)
!137 = !DILocation(line: 85, column: 47, scope: !134)
!138 = !DILocation(line: 85, column: 58, scope: !134)
!139 = !DILocation(line: 85, column: 17, scope: !103)
!140 = !DILocation(line: 87, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 86, column: 13)
!142 = !DILocation(line: 90, column: 25, scope: !103)
!143 = !DILocation(line: 90, column: 13, scope: !103)
!144 = !DILocation(line: 90, column: 37, scope: !103)
!145 = !DILocation(line: 92, column: 25, scope: !103)
!146 = !DILocation(line: 92, column: 20, scope: !103)
!147 = !DILocation(line: 92, column: 18, scope: !103)
!148 = !DILocation(line: 93, column: 9, scope: !103)
!149 = !DILocation(line: 95, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !72, file: !1, line: 95, column: 13)
!151 = !DILocation(line: 95, column: 27, scope: !150)
!152 = !DILocation(line: 95, column: 13, scope: !72)
!153 = !DILocation(line: 97, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 96, column: 9)
!155 = !DILocation(line: 97, column: 13, scope: !154)
!156 = !DILocation(line: 98, column: 9, scope: !154)
!157 = !DILocalVariable(name: "dataCopy", scope: !158, file: !1, line: 107, type: !68)
!158 = distinct !DILexicalBlock(scope: !63, file: !1, line: 106, column: 5)
!159 = !DILocation(line: 107, column: 13, scope: !158)
!160 = !DILocation(line: 107, column: 24, scope: !158)
!161 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 108, type: !68)
!162 = !DILocation(line: 108, column: 13, scope: !158)
!163 = !DILocation(line: 108, column: 20, scope: !158)
!164 = !DILocalVariable(name: "i", scope: !165, file: !1, line: 110, type: !68)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 109, column: 9)
!166 = !DILocation(line: 110, column: 17, scope: !165)
!167 = !DILocalVariable(name: "buffer", scope: !165, file: !1, line: 111, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 10)
!171 = !DILocation(line: 111, column: 17, scope: !165)
!172 = !DILocation(line: 114, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !1, line: 114, column: 17)
!174 = !DILocation(line: 114, column: 22, scope: !173)
!175 = !DILocation(line: 114, column: 17, scope: !165)
!176 = !DILocation(line: 116, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 115, column: 13)
!178 = !DILocation(line: 116, column: 17, scope: !177)
!179 = !DILocation(line: 116, column: 30, scope: !177)
!180 = !DILocation(line: 118, column: 23, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 118, column: 17)
!182 = !DILocation(line: 118, column: 21, scope: !181)
!183 = !DILocation(line: 118, column: 28, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 118, column: 17)
!185 = !DILocation(line: 118, column: 30, scope: !184)
!186 = !DILocation(line: 118, column: 17, scope: !181)
!187 = !DILocation(line: 120, column: 41, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 119, column: 17)
!189 = !DILocation(line: 120, column: 34, scope: !188)
!190 = !DILocation(line: 120, column: 21, scope: !188)
!191 = !DILocation(line: 121, column: 17, scope: !188)
!192 = !DILocation(line: 118, column: 37, scope: !184)
!193 = !DILocation(line: 118, column: 17, scope: !184)
!194 = distinct !{!194, !186, !195, !196}
!195 = !DILocation(line: 121, column: 17, scope: !181)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 122, column: 13, scope: !177)
!198 = !DILocation(line: 125, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !173, file: !1, line: 124, column: 13)
!200 = !DILocation(line: 129, column: 1, scope: !63)
!201 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 136, type: !64, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!202 = !DILocalVariable(name: "data", scope: !201, file: !1, line: 138, type: !68)
!203 = !DILocation(line: 138, column: 9, scope: !201)
!204 = !DILocation(line: 140, column: 10, scope: !201)
!205 = !DILocation(line: 143, column: 10, scope: !201)
!206 = !DILocalVariable(name: "dataCopy", scope: !207, file: !1, line: 145, type: !68)
!207 = distinct !DILexicalBlock(scope: !201, file: !1, line: 144, column: 5)
!208 = !DILocation(line: 145, column: 13, scope: !207)
!209 = !DILocation(line: 145, column: 24, scope: !207)
!210 = !DILocalVariable(name: "data", scope: !207, file: !1, line: 146, type: !68)
!211 = !DILocation(line: 146, column: 13, scope: !207)
!212 = !DILocation(line: 146, column: 20, scope: !207)
!213 = !DILocalVariable(name: "i", scope: !214, file: !1, line: 148, type: !68)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 147, column: 9)
!215 = !DILocation(line: 148, column: 17, scope: !214)
!216 = !DILocalVariable(name: "buffer", scope: !214, file: !1, line: 149, type: !168)
!217 = !DILocation(line: 149, column: 17, scope: !214)
!218 = !DILocation(line: 152, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !1, line: 152, column: 17)
!220 = !DILocation(line: 152, column: 22, scope: !219)
!221 = !DILocation(line: 152, column: 17, scope: !214)
!222 = !DILocation(line: 154, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 153, column: 13)
!224 = !DILocation(line: 154, column: 17, scope: !223)
!225 = !DILocation(line: 154, column: 30, scope: !223)
!226 = !DILocation(line: 156, column: 23, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 156, column: 17)
!228 = !DILocation(line: 156, column: 21, scope: !227)
!229 = !DILocation(line: 156, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 156, column: 17)
!231 = !DILocation(line: 156, column: 30, scope: !230)
!232 = !DILocation(line: 156, column: 17, scope: !227)
!233 = !DILocation(line: 158, column: 41, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !1, line: 157, column: 17)
!235 = !DILocation(line: 158, column: 34, scope: !234)
!236 = !DILocation(line: 158, column: 21, scope: !234)
!237 = !DILocation(line: 159, column: 17, scope: !234)
!238 = !DILocation(line: 156, column: 37, scope: !230)
!239 = !DILocation(line: 156, column: 17, scope: !230)
!240 = distinct !{!240, !232, !241, !196}
!241 = !DILocation(line: 159, column: 17, scope: !227)
!242 = !DILocation(line: 160, column: 13, scope: !223)
!243 = !DILocation(line: 163, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !219, file: !1, line: 162, column: 13)
!245 = !DILocation(line: 167, column: 1, scope: !201)
!246 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 170, type: !64, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!247 = !DILocalVariable(name: "data", scope: !246, file: !1, line: 172, type: !68)
!248 = !DILocation(line: 172, column: 9, scope: !246)
!249 = !DILocation(line: 174, column: 10, scope: !246)
!250 = !DILocalVariable(name: "recvResult", scope: !251, file: !1, line: 180, type: !68)
!251 = distinct !DILexicalBlock(scope: !246, file: !1, line: 175, column: 5)
!252 = !DILocation(line: 180, column: 13, scope: !251)
!253 = !DILocalVariable(name: "service", scope: !251, file: !1, line: 181, type: !75)
!254 = !DILocation(line: 181, column: 28, scope: !251)
!255 = !DILocalVariable(name: "connectSocket", scope: !251, file: !1, line: 182, type: !68)
!256 = !DILocation(line: 182, column: 16, scope: !251)
!257 = !DILocalVariable(name: "inputBuffer", scope: !251, file: !1, line: 183, type: !55)
!258 = !DILocation(line: 183, column: 14, scope: !251)
!259 = !DILocation(line: 184, column: 9, scope: !251)
!260 = !DILocation(line: 194, column: 29, scope: !261)
!261 = distinct !DILexicalBlock(scope: !251, file: !1, line: 185, column: 9)
!262 = !DILocation(line: 194, column: 27, scope: !261)
!263 = !DILocation(line: 195, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 195, column: 17)
!265 = !DILocation(line: 195, column: 31, scope: !264)
!266 = !DILocation(line: 195, column: 17, scope: !261)
!267 = !DILocation(line: 197, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 196, column: 13)
!269 = !DILocation(line: 199, column: 13, scope: !261)
!270 = !DILocation(line: 200, column: 21, scope: !261)
!271 = !DILocation(line: 200, column: 32, scope: !261)
!272 = !DILocation(line: 201, column: 39, scope: !261)
!273 = !DILocation(line: 201, column: 21, scope: !261)
!274 = !DILocation(line: 201, column: 30, scope: !261)
!275 = !DILocation(line: 201, column: 37, scope: !261)
!276 = !DILocation(line: 202, column: 32, scope: !261)
!277 = !DILocation(line: 202, column: 21, scope: !261)
!278 = !DILocation(line: 202, column: 30, scope: !261)
!279 = !DILocation(line: 203, column: 25, scope: !280)
!280 = distinct !DILexicalBlock(scope: !261, file: !1, line: 203, column: 17)
!281 = !DILocation(line: 203, column: 40, scope: !280)
!282 = !DILocation(line: 203, column: 17, scope: !280)
!283 = !DILocation(line: 203, column: 85, scope: !280)
!284 = !DILocation(line: 203, column: 17, scope: !261)
!285 = !DILocation(line: 205, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !1, line: 204, column: 13)
!287 = !DILocation(line: 209, column: 31, scope: !261)
!288 = !DILocation(line: 209, column: 46, scope: !261)
!289 = !DILocation(line: 209, column: 26, scope: !261)
!290 = !DILocation(line: 209, column: 24, scope: !261)
!291 = !DILocation(line: 210, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !261, file: !1, line: 210, column: 17)
!293 = !DILocation(line: 210, column: 28, scope: !292)
!294 = !DILocation(line: 210, column: 44, scope: !292)
!295 = !DILocation(line: 210, column: 47, scope: !292)
!296 = !DILocation(line: 210, column: 58, scope: !292)
!297 = !DILocation(line: 210, column: 17, scope: !261)
!298 = !DILocation(line: 212, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !1, line: 211, column: 13)
!300 = !DILocation(line: 215, column: 25, scope: !261)
!301 = !DILocation(line: 215, column: 13, scope: !261)
!302 = !DILocation(line: 215, column: 37, scope: !261)
!303 = !DILocation(line: 217, column: 25, scope: !261)
!304 = !DILocation(line: 217, column: 20, scope: !261)
!305 = !DILocation(line: 217, column: 18, scope: !261)
!306 = !DILocation(line: 218, column: 9, scope: !261)
!307 = !DILocation(line: 220, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !251, file: !1, line: 220, column: 13)
!309 = !DILocation(line: 220, column: 27, scope: !308)
!310 = !DILocation(line: 220, column: 13, scope: !251)
!311 = !DILocation(line: 222, column: 26, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 221, column: 9)
!313 = !DILocation(line: 222, column: 13, scope: !312)
!314 = !DILocation(line: 223, column: 9, scope: !312)
!315 = !DILocalVariable(name: "dataCopy", scope: !316, file: !1, line: 232, type: !68)
!316 = distinct !DILexicalBlock(scope: !246, file: !1, line: 231, column: 5)
!317 = !DILocation(line: 232, column: 13, scope: !316)
!318 = !DILocation(line: 232, column: 24, scope: !316)
!319 = !DILocalVariable(name: "data", scope: !316, file: !1, line: 233, type: !68)
!320 = !DILocation(line: 233, column: 13, scope: !316)
!321 = !DILocation(line: 233, column: 20, scope: !316)
!322 = !DILocalVariable(name: "i", scope: !323, file: !1, line: 235, type: !68)
!323 = distinct !DILexicalBlock(scope: !316, file: !1, line: 234, column: 9)
!324 = !DILocation(line: 235, column: 17, scope: !323)
!325 = !DILocalVariable(name: "buffer", scope: !323, file: !1, line: 236, type: !168)
!326 = !DILocation(line: 236, column: 17, scope: !323)
!327 = !DILocation(line: 238, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 238, column: 17)
!329 = !DILocation(line: 238, column: 22, scope: !328)
!330 = !DILocation(line: 238, column: 27, scope: !328)
!331 = !DILocation(line: 238, column: 30, scope: !328)
!332 = !DILocation(line: 238, column: 35, scope: !328)
!333 = !DILocation(line: 238, column: 17, scope: !323)
!334 = !DILocation(line: 240, column: 24, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !1, line: 239, column: 13)
!336 = !DILocation(line: 240, column: 17, scope: !335)
!337 = !DILocation(line: 240, column: 30, scope: !335)
!338 = !DILocation(line: 242, column: 23, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 242, column: 17)
!340 = !DILocation(line: 242, column: 21, scope: !339)
!341 = !DILocation(line: 242, column: 28, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 242, column: 17)
!343 = !DILocation(line: 242, column: 30, scope: !342)
!344 = !DILocation(line: 242, column: 17, scope: !339)
!345 = !DILocation(line: 244, column: 41, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 243, column: 17)
!347 = !DILocation(line: 244, column: 34, scope: !346)
!348 = !DILocation(line: 244, column: 21, scope: !346)
!349 = !DILocation(line: 245, column: 17, scope: !346)
!350 = !DILocation(line: 242, column: 37, scope: !342)
!351 = !DILocation(line: 242, column: 17, scope: !342)
!352 = distinct !{!352, !344, !353, !196}
!353 = !DILocation(line: 245, column: 17, scope: !339)
!354 = !DILocation(line: 246, column: 13, scope: !335)
!355 = !DILocation(line: 249, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !328, file: !1, line: 248, column: 13)
!357 = !DILocation(line: 253, column: 1, scope: !246)
!358 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_31_good", scope: !1, file: !1, line: 255, type: !64, scopeLine: 256, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!359 = !DILocation(line: 257, column: 5, scope: !358)
!360 = !DILocation(line: 258, column: 5, scope: !358)
!361 = !DILocation(line: 259, column: 1, scope: !358)
