; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad() #0 !dbg !63 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i26 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %j, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %data, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 -1, i32* %data, align 4, !dbg !74
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !78
  %cmp = icmp slt i32 %0, 1, !dbg !80
  br i1 %cmp, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 -1, i32* %connectSocket, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  br label %do.body, !dbg !113

do.body:                                          ; preds = %for.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !114
  store i32 %call, i32* %connectSocket, align 4, !dbg !116
  %1 = load i32, i32* %connectSocket, align 4, !dbg !117
  %cmp1 = icmp eq i32 %1, -1, !dbg !119
  br i1 %cmp1, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !121

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !123
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !124
  store i16 2, i16* %sin_family, align 4, !dbg !125
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !126
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !127
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !128
  store i32 %call2, i32* %s_addr, align 4, !dbg !129
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !130
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !131
  store i16 %call3, i16* %sin_port, align 2, !dbg !132
  %3 = load i32, i32* %connectSocket, align 4, !dbg !133
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !135
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !136
  %cmp5 = icmp eq i32 %call4, -1, !dbg !137
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !138

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !139

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !141
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !142
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !143
  %conv = trunc i64 %call8 to i32, !dbg !143
  store i32 %conv, i32* %recvResult, align 4, !dbg !144
  %6 = load i32, i32* %recvResult, align 4, !dbg !145
  %cmp9 = icmp eq i32 %6, -1, !dbg !147
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !148

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !149
  %cmp11 = icmp eq i32 %7, 0, !dbg !150
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !151

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !152

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !154
  %idxprom = sext i32 %8 to i64, !dbg !155
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !155
  store i8 0, i8* %arrayidx, align 1, !dbg !156
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !157
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !158
  store i32 %call16, i32* %data, align 4, !dbg !159
  br label %do.end, !dbg !160

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %9 = load i32, i32* %connectSocket, align 4, !dbg !161
  %cmp17 = icmp ne i32 %9, -1, !dbg !163
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !164

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !165
  %call20 = call i32 @close(i32 %10), !dbg !167
  br label %if.end21, !dbg !168

if.end21:                                         ; preds = %if.then19, %do.end
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %if.end21
  %11 = load i32, i32* %i, align 4, !dbg !170
  %inc = add nsw i32 %11, 1, !dbg !170
  store i32 %inc, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !175
  br label %for.cond22, !dbg !177

for.cond22:                                       ; preds = %for.inc42, %for.end
  %12 = load i32, i32* %j, align 4, !dbg !178
  %cmp23 = icmp slt i32 %12, 1, !dbg !180
  br i1 %cmp23, label %for.body25, label %for.end44, !dbg !181

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.declare(metadata i32* %i26, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !186, metadata !DIExpression()), !dbg !190
  %13 = bitcast [10 x i32]* %buffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !190
  %14 = load i32, i32* %data, align 4, !dbg !191
  %cmp27 = icmp sge i32 %14, 0, !dbg !193
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !194

if.then29:                                        ; preds = %for.body25
  %15 = load i32, i32* %data, align 4, !dbg !195
  %idxprom30 = sext i32 %15 to i64, !dbg !197
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !197
  store i32 1, i32* %arrayidx31, align 4, !dbg !198
  store i32 0, i32* %i26, align 4, !dbg !199
  br label %for.cond32, !dbg !201

for.cond32:                                       ; preds = %for.inc38, %if.then29
  %16 = load i32, i32* %i26, align 4, !dbg !202
  %cmp33 = icmp slt i32 %16, 10, !dbg !204
  br i1 %cmp33, label %for.body35, label %for.end40, !dbg !205

for.body35:                                       ; preds = %for.cond32
  %17 = load i32, i32* %i26, align 4, !dbg !206
  %idxprom36 = sext i32 %17 to i64, !dbg !208
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !208
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !208
  call void @printIntLine(i32 %18), !dbg !209
  br label %for.inc38, !dbg !210

for.inc38:                                        ; preds = %for.body35
  %19 = load i32, i32* %i26, align 4, !dbg !211
  %inc39 = add nsw i32 %19, 1, !dbg !211
  store i32 %inc39, i32* %i26, align 4, !dbg !211
  br label %for.cond32, !dbg !212, !llvm.loop !213

for.end40:                                        ; preds = %for.cond32
  br label %if.end41, !dbg !215

if.else:                                          ; preds = %for.body25
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !216
  br label %if.end41

if.end41:                                         ; preds = %if.else, %for.end40
  br label %for.inc42, !dbg !218

for.inc42:                                        ; preds = %if.end41
  %20 = load i32, i32* %j, align 4, !dbg !219
  %inc43 = add nsw i32 %20, 1, !dbg !219
  store i32 %inc43, i32* %j, align 4, !dbg !219
  br label %for.cond22, !dbg !220, !llvm.loop !221

for.end44:                                        ; preds = %for.cond22
  ret void, !dbg !223
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
define dso_local void @goodB2G() #0 !dbg !224 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i26 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %k, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %data, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 -1, i32* %data, align 4, !dbg !231
  store i32 0, i32* %i, align 4, !dbg !232
  br label %for.cond, !dbg !234

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !235
  %cmp = icmp slt i32 %0, 1, !dbg !237
  br i1 %cmp, label %for.body, label %for.end, !dbg !238

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 -1, i32* %connectSocket, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !247, metadata !DIExpression()), !dbg !248
  br label %do.body, !dbg !249

do.body:                                          ; preds = %for.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !250
  store i32 %call, i32* %connectSocket, align 4, !dbg !252
  %1 = load i32, i32* %connectSocket, align 4, !dbg !253
  %cmp1 = icmp eq i32 %1, -1, !dbg !255
  br i1 %cmp1, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !257

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !259
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !260
  store i16 2, i16* %sin_family, align 4, !dbg !261
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !262
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !263
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !264
  store i32 %call2, i32* %s_addr, align 4, !dbg !265
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !266
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !267
  store i16 %call3, i16* %sin_port, align 2, !dbg !268
  %3 = load i32, i32* %connectSocket, align 4, !dbg !269
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !271
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !272
  %cmp5 = icmp eq i32 %call4, -1, !dbg !273
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !274

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !275

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !277
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !278
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !279
  %conv = trunc i64 %call8 to i32, !dbg !279
  store i32 %conv, i32* %recvResult, align 4, !dbg !280
  %6 = load i32, i32* %recvResult, align 4, !dbg !281
  %cmp9 = icmp eq i32 %6, -1, !dbg !283
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !284

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !285
  %cmp11 = icmp eq i32 %7, 0, !dbg !286
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !287

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !288

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !290
  %idxprom = sext i32 %8 to i64, !dbg !291
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !291
  store i8 0, i8* %arrayidx, align 1, !dbg !292
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !293
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !294
  store i32 %call16, i32* %data, align 4, !dbg !295
  br label %do.end, !dbg !296

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %9 = load i32, i32* %connectSocket, align 4, !dbg !297
  %cmp17 = icmp ne i32 %9, -1, !dbg !299
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !300

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !301
  %call20 = call i32 @close(i32 %10), !dbg !303
  br label %if.end21, !dbg !304

if.end21:                                         ; preds = %if.then19, %do.end
  br label %for.inc, !dbg !305

for.inc:                                          ; preds = %if.end21
  %11 = load i32, i32* %i, align 4, !dbg !306
  %inc = add nsw i32 %11, 1, !dbg !306
  store i32 %inc, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !307, !llvm.loop !308

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !310
  br label %for.cond22, !dbg !312

for.cond22:                                       ; preds = %for.inc44, %for.end
  %12 = load i32, i32* %k, align 4, !dbg !313
  %cmp23 = icmp slt i32 %12, 1, !dbg !315
  br i1 %cmp23, label %for.body25, label %for.end46, !dbg !316

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.declare(metadata i32* %i26, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !321, metadata !DIExpression()), !dbg !322
  %13 = bitcast [10 x i32]* %buffer to i8*, !dbg !322
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !322
  %14 = load i32, i32* %data, align 4, !dbg !323
  %cmp27 = icmp sge i32 %14, 0, !dbg !325
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !326

land.lhs.true:                                    ; preds = %for.body25
  %15 = load i32, i32* %data, align 4, !dbg !327
  %cmp29 = icmp slt i32 %15, 10, !dbg !328
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !329

if.then31:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %data, align 4, !dbg !330
  %idxprom32 = sext i32 %16 to i64, !dbg !332
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !332
  store i32 1, i32* %arrayidx33, align 4, !dbg !333
  store i32 0, i32* %i26, align 4, !dbg !334
  br label %for.cond34, !dbg !336

for.cond34:                                       ; preds = %for.inc40, %if.then31
  %17 = load i32, i32* %i26, align 4, !dbg !337
  %cmp35 = icmp slt i32 %17, 10, !dbg !339
  br i1 %cmp35, label %for.body37, label %for.end42, !dbg !340

for.body37:                                       ; preds = %for.cond34
  %18 = load i32, i32* %i26, align 4, !dbg !341
  %idxprom38 = sext i32 %18 to i64, !dbg !343
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom38, !dbg !343
  %19 = load i32, i32* %arrayidx39, align 4, !dbg !343
  call void @printIntLine(i32 %19), !dbg !344
  br label %for.inc40, !dbg !345

for.inc40:                                        ; preds = %for.body37
  %20 = load i32, i32* %i26, align 4, !dbg !346
  %inc41 = add nsw i32 %20, 1, !dbg !346
  store i32 %inc41, i32* %i26, align 4, !dbg !346
  br label %for.cond34, !dbg !347, !llvm.loop !348

for.end42:                                        ; preds = %for.cond34
  br label %if.end43, !dbg !350

if.else:                                          ; preds = %land.lhs.true, %for.body25
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !351
  br label %if.end43

if.end43:                                         ; preds = %if.else, %for.end42
  br label %for.inc44, !dbg !353

for.inc44:                                        ; preds = %if.end43
  %21 = load i32, i32* %k, align 4, !dbg !354
  %inc45 = add nsw i32 %21, 1, !dbg !354
  store i32 %inc45, i32* %k, align 4, !dbg !354
  br label %for.cond22, !dbg !355, !llvm.loop !356

for.end46:                                        ; preds = %for.cond22
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !359 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %j, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %data, metadata !364, metadata !DIExpression()), !dbg !365
  store i32 -1, i32* %data, align 4, !dbg !366
  store i32 0, i32* %h, align 4, !dbg !367
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4, !dbg !370
  %cmp = icmp slt i32 %0, 1, !dbg !372
  br i1 %cmp, label %for.body, label %for.end, !dbg !373

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %data, align 4, !dbg !374
  br label %for.inc, !dbg !376

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %h, align 4, !dbg !377
  %inc = add nsw i32 %1, 1, !dbg !377
  store i32 %inc, i32* %h, align 4, !dbg !377
  br label %for.cond, !dbg !378, !llvm.loop !379

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !381
  br label %for.cond1, !dbg !383

for.cond1:                                        ; preds = %for.inc13, %for.end
  %2 = load i32, i32* %j, align 4, !dbg !384
  %cmp2 = icmp slt i32 %2, 1, !dbg !386
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !387

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !388, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = bitcast [10 x i32]* %buffer to i8*, !dbg !393
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !393
  %4 = load i32, i32* %data, align 4, !dbg !394
  %cmp4 = icmp sge i32 %4, 0, !dbg !396
  br i1 %cmp4, label %if.then, label %if.else, !dbg !397

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %data, align 4, !dbg !398
  %idxprom = sext i32 %5 to i64, !dbg !400
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !400
  store i32 1, i32* %arrayidx, align 4, !dbg !401
  store i32 0, i32* %i, align 4, !dbg !402
  br label %for.cond5, !dbg !404

for.cond5:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !405
  %cmp6 = icmp slt i32 %6, 10, !dbg !407
  br i1 %cmp6, label %for.body7, label %for.end12, !dbg !408

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, i32* %i, align 4, !dbg !409
  %idxprom8 = sext i32 %7 to i64, !dbg !411
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !411
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !411
  call void @printIntLine(i32 %8), !dbg !412
  br label %for.inc10, !dbg !413

for.inc10:                                        ; preds = %for.body7
  %9 = load i32, i32* %i, align 4, !dbg !414
  %inc11 = add nsw i32 %9, 1, !dbg !414
  store i32 %inc11, i32* %i, align 4, !dbg !414
  br label %for.cond5, !dbg !415, !llvm.loop !416

for.end12:                                        ; preds = %for.cond5
  br label %if.end, !dbg !418

if.else:                                          ; preds = %for.body3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !419
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end12
  br label %for.inc13, !dbg !421

for.inc13:                                        ; preds = %if.end
  %10 = load i32, i32* %j, align 4, !dbg !422
  %inc14 = add nsw i32 %10, 1, !dbg !422
  store i32 %inc14, i32* %j, align 4, !dbg !422
  br label %for.cond1, !dbg !423, !llvm.loop !424

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good() #0 !dbg !427 {
entry:
  call void @goodB2G(), !dbg !428
  call void @goodG2B(), !dbg !429
  ret void, !dbg !430
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "i", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocalVariable(name: "j", scope: !63, file: !1, line: 47, type: !68)
!71 = !DILocation(line: 47, column: 11, scope: !63)
!72 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 48, type: !68)
!73 = !DILocation(line: 48, column: 9, scope: !63)
!74 = !DILocation(line: 50, column: 10, scope: !63)
!75 = !DILocation(line: 51, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !63, file: !1, line: 51, column: 5)
!77 = !DILocation(line: 51, column: 9, scope: !76)
!78 = !DILocation(line: 51, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 51, column: 5)
!80 = !DILocation(line: 51, column: 18, scope: !79)
!81 = !DILocation(line: 51, column: 5, scope: !76)
!82 = !DILocalVariable(name: "recvResult", scope: !83, file: !1, line: 58, type: !68)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 53, column: 9)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 52, column: 5)
!85 = !DILocation(line: 58, column: 17, scope: !83)
!86 = !DILocalVariable(name: "service", scope: !83, file: !1, line: 59, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !96, !103}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !17, line: 240, baseType: !51, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !17, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 25, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 40, baseType: !53)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !17, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !17, line: 33, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 26, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !5)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !17, line: 245, baseType: !104, size: 64, offset: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !106)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DILocation(line: 59, column: 32, scope: !83)
!109 = !DILocalVariable(name: "connectSocket", scope: !83, file: !1, line: 60, type: !68)
!110 = !DILocation(line: 60, column: 20, scope: !83)
!111 = !DILocalVariable(name: "inputBuffer", scope: !83, file: !1, line: 61, type: !55)
!112 = !DILocation(line: 61, column: 18, scope: !83)
!113 = !DILocation(line: 62, column: 13, scope: !83)
!114 = !DILocation(line: 72, column: 33, scope: !115)
!115 = distinct !DILexicalBlock(scope: !83, file: !1, line: 63, column: 13)
!116 = !DILocation(line: 72, column: 31, scope: !115)
!117 = !DILocation(line: 73, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 21)
!119 = !DILocation(line: 73, column: 35, scope: !118)
!120 = !DILocation(line: 73, column: 21, scope: !115)
!121 = !DILocation(line: 75, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 74, column: 17)
!123 = !DILocation(line: 77, column: 17, scope: !115)
!124 = !DILocation(line: 78, column: 25, scope: !115)
!125 = !DILocation(line: 78, column: 36, scope: !115)
!126 = !DILocation(line: 79, column: 43, scope: !115)
!127 = !DILocation(line: 79, column: 25, scope: !115)
!128 = !DILocation(line: 79, column: 34, scope: !115)
!129 = !DILocation(line: 79, column: 41, scope: !115)
!130 = !DILocation(line: 80, column: 36, scope: !115)
!131 = !DILocation(line: 80, column: 25, scope: !115)
!132 = !DILocation(line: 80, column: 34, scope: !115)
!133 = !DILocation(line: 81, column: 29, scope: !134)
!134 = distinct !DILexicalBlock(scope: !115, file: !1, line: 81, column: 21)
!135 = !DILocation(line: 81, column: 44, scope: !134)
!136 = !DILocation(line: 81, column: 21, scope: !134)
!137 = !DILocation(line: 81, column: 89, scope: !134)
!138 = !DILocation(line: 81, column: 21, scope: !115)
!139 = !DILocation(line: 83, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 82, column: 17)
!141 = !DILocation(line: 87, column: 35, scope: !115)
!142 = !DILocation(line: 87, column: 50, scope: !115)
!143 = !DILocation(line: 87, column: 30, scope: !115)
!144 = !DILocation(line: 87, column: 28, scope: !115)
!145 = !DILocation(line: 88, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !115, file: !1, line: 88, column: 21)
!147 = !DILocation(line: 88, column: 32, scope: !146)
!148 = !DILocation(line: 88, column: 48, scope: !146)
!149 = !DILocation(line: 88, column: 51, scope: !146)
!150 = !DILocation(line: 88, column: 62, scope: !146)
!151 = !DILocation(line: 88, column: 21, scope: !115)
!152 = !DILocation(line: 90, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !146, file: !1, line: 89, column: 17)
!154 = !DILocation(line: 93, column: 29, scope: !115)
!155 = !DILocation(line: 93, column: 17, scope: !115)
!156 = !DILocation(line: 93, column: 41, scope: !115)
!157 = !DILocation(line: 95, column: 29, scope: !115)
!158 = !DILocation(line: 95, column: 24, scope: !115)
!159 = !DILocation(line: 95, column: 22, scope: !115)
!160 = !DILocation(line: 96, column: 13, scope: !115)
!161 = !DILocation(line: 98, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !83, file: !1, line: 98, column: 17)
!163 = !DILocation(line: 98, column: 31, scope: !162)
!164 = !DILocation(line: 98, column: 17, scope: !83)
!165 = !DILocation(line: 100, column: 30, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 99, column: 13)
!167 = !DILocation(line: 100, column: 17, scope: !166)
!168 = !DILocation(line: 101, column: 13, scope: !166)
!169 = !DILocation(line: 109, column: 5, scope: !84)
!170 = !DILocation(line: 51, column: 24, scope: !79)
!171 = !DILocation(line: 51, column: 5, scope: !79)
!172 = distinct !{!172, !81, !173, !174}
!173 = !DILocation(line: 109, column: 5, scope: !76)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 110, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !63, file: !1, line: 110, column: 5)
!177 = !DILocation(line: 110, column: 9, scope: !176)
!178 = !DILocation(line: 110, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 110, column: 5)
!180 = !DILocation(line: 110, column: 18, scope: !179)
!181 = !DILocation(line: 110, column: 5, scope: !176)
!182 = !DILocalVariable(name: "i", scope: !183, file: !1, line: 113, type: !68)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 112, column: 9)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 111, column: 5)
!185 = !DILocation(line: 113, column: 17, scope: !183)
!186 = !DILocalVariable(name: "buffer", scope: !183, file: !1, line: 114, type: !187)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 10)
!190 = !DILocation(line: 114, column: 17, scope: !183)
!191 = !DILocation(line: 117, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !1, line: 117, column: 17)
!193 = !DILocation(line: 117, column: 22, scope: !192)
!194 = !DILocation(line: 117, column: 17, scope: !183)
!195 = !DILocation(line: 119, column: 24, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 118, column: 13)
!197 = !DILocation(line: 119, column: 17, scope: !196)
!198 = !DILocation(line: 119, column: 30, scope: !196)
!199 = !DILocation(line: 121, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 121, column: 17)
!201 = !DILocation(line: 121, column: 21, scope: !200)
!202 = !DILocation(line: 121, column: 28, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 121, column: 17)
!204 = !DILocation(line: 121, column: 30, scope: !203)
!205 = !DILocation(line: 121, column: 17, scope: !200)
!206 = !DILocation(line: 123, column: 41, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 122, column: 17)
!208 = !DILocation(line: 123, column: 34, scope: !207)
!209 = !DILocation(line: 123, column: 21, scope: !207)
!210 = !DILocation(line: 124, column: 17, scope: !207)
!211 = !DILocation(line: 121, column: 37, scope: !203)
!212 = !DILocation(line: 121, column: 17, scope: !203)
!213 = distinct !{!213, !205, !214, !174}
!214 = !DILocation(line: 124, column: 17, scope: !200)
!215 = !DILocation(line: 125, column: 13, scope: !196)
!216 = !DILocation(line: 128, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !192, file: !1, line: 127, column: 13)
!218 = !DILocation(line: 131, column: 5, scope: !184)
!219 = !DILocation(line: 110, column: 24, scope: !179)
!220 = !DILocation(line: 110, column: 5, scope: !179)
!221 = distinct !{!221, !181, !222, !174}
!222 = !DILocation(line: 131, column: 5, scope: !176)
!223 = !DILocation(line: 132, column: 1, scope: !63)
!224 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 139, type: !64, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!225 = !DILocalVariable(name: "i", scope: !224, file: !1, line: 141, type: !68)
!226 = !DILocation(line: 141, column: 9, scope: !224)
!227 = !DILocalVariable(name: "k", scope: !224, file: !1, line: 141, type: !68)
!228 = !DILocation(line: 141, column: 11, scope: !224)
!229 = !DILocalVariable(name: "data", scope: !224, file: !1, line: 142, type: !68)
!230 = !DILocation(line: 142, column: 9, scope: !224)
!231 = !DILocation(line: 144, column: 10, scope: !224)
!232 = !DILocation(line: 145, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !224, file: !1, line: 145, column: 5)
!234 = !DILocation(line: 145, column: 9, scope: !233)
!235 = !DILocation(line: 145, column: 16, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 145, column: 5)
!237 = !DILocation(line: 145, column: 18, scope: !236)
!238 = !DILocation(line: 145, column: 5, scope: !233)
!239 = !DILocalVariable(name: "recvResult", scope: !240, file: !1, line: 152, type: !68)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 147, column: 9)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 146, column: 5)
!242 = !DILocation(line: 152, column: 17, scope: !240)
!243 = !DILocalVariable(name: "service", scope: !240, file: !1, line: 153, type: !87)
!244 = !DILocation(line: 153, column: 32, scope: !240)
!245 = !DILocalVariable(name: "connectSocket", scope: !240, file: !1, line: 154, type: !68)
!246 = !DILocation(line: 154, column: 20, scope: !240)
!247 = !DILocalVariable(name: "inputBuffer", scope: !240, file: !1, line: 155, type: !55)
!248 = !DILocation(line: 155, column: 18, scope: !240)
!249 = !DILocation(line: 156, column: 13, scope: !240)
!250 = !DILocation(line: 166, column: 33, scope: !251)
!251 = distinct !DILexicalBlock(scope: !240, file: !1, line: 157, column: 13)
!252 = !DILocation(line: 166, column: 31, scope: !251)
!253 = !DILocation(line: 167, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 167, column: 21)
!255 = !DILocation(line: 167, column: 35, scope: !254)
!256 = !DILocation(line: 167, column: 21, scope: !251)
!257 = !DILocation(line: 169, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 168, column: 17)
!259 = !DILocation(line: 171, column: 17, scope: !251)
!260 = !DILocation(line: 172, column: 25, scope: !251)
!261 = !DILocation(line: 172, column: 36, scope: !251)
!262 = !DILocation(line: 173, column: 43, scope: !251)
!263 = !DILocation(line: 173, column: 25, scope: !251)
!264 = !DILocation(line: 173, column: 34, scope: !251)
!265 = !DILocation(line: 173, column: 41, scope: !251)
!266 = !DILocation(line: 174, column: 36, scope: !251)
!267 = !DILocation(line: 174, column: 25, scope: !251)
!268 = !DILocation(line: 174, column: 34, scope: !251)
!269 = !DILocation(line: 175, column: 29, scope: !270)
!270 = distinct !DILexicalBlock(scope: !251, file: !1, line: 175, column: 21)
!271 = !DILocation(line: 175, column: 44, scope: !270)
!272 = !DILocation(line: 175, column: 21, scope: !270)
!273 = !DILocation(line: 175, column: 89, scope: !270)
!274 = !DILocation(line: 175, column: 21, scope: !251)
!275 = !DILocation(line: 177, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 176, column: 17)
!277 = !DILocation(line: 181, column: 35, scope: !251)
!278 = !DILocation(line: 181, column: 50, scope: !251)
!279 = !DILocation(line: 181, column: 30, scope: !251)
!280 = !DILocation(line: 181, column: 28, scope: !251)
!281 = !DILocation(line: 182, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !251, file: !1, line: 182, column: 21)
!283 = !DILocation(line: 182, column: 32, scope: !282)
!284 = !DILocation(line: 182, column: 48, scope: !282)
!285 = !DILocation(line: 182, column: 51, scope: !282)
!286 = !DILocation(line: 182, column: 62, scope: !282)
!287 = !DILocation(line: 182, column: 21, scope: !251)
!288 = !DILocation(line: 184, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !1, line: 183, column: 17)
!290 = !DILocation(line: 187, column: 29, scope: !251)
!291 = !DILocation(line: 187, column: 17, scope: !251)
!292 = !DILocation(line: 187, column: 41, scope: !251)
!293 = !DILocation(line: 189, column: 29, scope: !251)
!294 = !DILocation(line: 189, column: 24, scope: !251)
!295 = !DILocation(line: 189, column: 22, scope: !251)
!296 = !DILocation(line: 190, column: 13, scope: !251)
!297 = !DILocation(line: 192, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !240, file: !1, line: 192, column: 17)
!299 = !DILocation(line: 192, column: 31, scope: !298)
!300 = !DILocation(line: 192, column: 17, scope: !240)
!301 = !DILocation(line: 194, column: 30, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 193, column: 13)
!303 = !DILocation(line: 194, column: 17, scope: !302)
!304 = !DILocation(line: 195, column: 13, scope: !302)
!305 = !DILocation(line: 203, column: 5, scope: !241)
!306 = !DILocation(line: 145, column: 24, scope: !236)
!307 = !DILocation(line: 145, column: 5, scope: !236)
!308 = distinct !{!308, !238, !309, !174}
!309 = !DILocation(line: 203, column: 5, scope: !233)
!310 = !DILocation(line: 204, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !224, file: !1, line: 204, column: 5)
!312 = !DILocation(line: 204, column: 9, scope: !311)
!313 = !DILocation(line: 204, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 204, column: 5)
!315 = !DILocation(line: 204, column: 18, scope: !314)
!316 = !DILocation(line: 204, column: 5, scope: !311)
!317 = !DILocalVariable(name: "i", scope: !318, file: !1, line: 207, type: !68)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 206, column: 9)
!319 = distinct !DILexicalBlock(scope: !314, file: !1, line: 205, column: 5)
!320 = !DILocation(line: 207, column: 17, scope: !318)
!321 = !DILocalVariable(name: "buffer", scope: !318, file: !1, line: 208, type: !187)
!322 = !DILocation(line: 208, column: 17, scope: !318)
!323 = !DILocation(line: 210, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !1, line: 210, column: 17)
!325 = !DILocation(line: 210, column: 22, scope: !324)
!326 = !DILocation(line: 210, column: 27, scope: !324)
!327 = !DILocation(line: 210, column: 30, scope: !324)
!328 = !DILocation(line: 210, column: 35, scope: !324)
!329 = !DILocation(line: 210, column: 17, scope: !318)
!330 = !DILocation(line: 212, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !1, line: 211, column: 13)
!332 = !DILocation(line: 212, column: 17, scope: !331)
!333 = !DILocation(line: 212, column: 30, scope: !331)
!334 = !DILocation(line: 214, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 214, column: 17)
!336 = !DILocation(line: 214, column: 21, scope: !335)
!337 = !DILocation(line: 214, column: 28, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 214, column: 17)
!339 = !DILocation(line: 214, column: 30, scope: !338)
!340 = !DILocation(line: 214, column: 17, scope: !335)
!341 = !DILocation(line: 216, column: 41, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 215, column: 17)
!343 = !DILocation(line: 216, column: 34, scope: !342)
!344 = !DILocation(line: 216, column: 21, scope: !342)
!345 = !DILocation(line: 217, column: 17, scope: !342)
!346 = !DILocation(line: 214, column: 37, scope: !338)
!347 = !DILocation(line: 214, column: 17, scope: !338)
!348 = distinct !{!348, !340, !349, !174}
!349 = !DILocation(line: 217, column: 17, scope: !335)
!350 = !DILocation(line: 218, column: 13, scope: !331)
!351 = !DILocation(line: 221, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !324, file: !1, line: 220, column: 13)
!353 = !DILocation(line: 224, column: 5, scope: !319)
!354 = !DILocation(line: 204, column: 24, scope: !314)
!355 = !DILocation(line: 204, column: 5, scope: !314)
!356 = distinct !{!356, !316, !357, !174}
!357 = !DILocation(line: 224, column: 5, scope: !311)
!358 = !DILocation(line: 225, column: 1, scope: !224)
!359 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 228, type: !64, scopeLine: 229, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!360 = !DILocalVariable(name: "h", scope: !359, file: !1, line: 230, type: !68)
!361 = !DILocation(line: 230, column: 9, scope: !359)
!362 = !DILocalVariable(name: "j", scope: !359, file: !1, line: 230, type: !68)
!363 = !DILocation(line: 230, column: 11, scope: !359)
!364 = !DILocalVariable(name: "data", scope: !359, file: !1, line: 231, type: !68)
!365 = !DILocation(line: 231, column: 9, scope: !359)
!366 = !DILocation(line: 233, column: 10, scope: !359)
!367 = !DILocation(line: 234, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !359, file: !1, line: 234, column: 5)
!369 = !DILocation(line: 234, column: 9, scope: !368)
!370 = !DILocation(line: 234, column: 16, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !1, line: 234, column: 5)
!372 = !DILocation(line: 234, column: 18, scope: !371)
!373 = !DILocation(line: 234, column: 5, scope: !368)
!374 = !DILocation(line: 238, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 235, column: 5)
!376 = !DILocation(line: 239, column: 5, scope: !375)
!377 = !DILocation(line: 234, column: 24, scope: !371)
!378 = !DILocation(line: 234, column: 5, scope: !371)
!379 = distinct !{!379, !373, !380, !174}
!380 = !DILocation(line: 239, column: 5, scope: !368)
!381 = !DILocation(line: 240, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !359, file: !1, line: 240, column: 5)
!383 = !DILocation(line: 240, column: 9, scope: !382)
!384 = !DILocation(line: 240, column: 16, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !1, line: 240, column: 5)
!386 = !DILocation(line: 240, column: 18, scope: !385)
!387 = !DILocation(line: 240, column: 5, scope: !382)
!388 = !DILocalVariable(name: "i", scope: !389, file: !1, line: 243, type: !68)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 242, column: 9)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 241, column: 5)
!391 = !DILocation(line: 243, column: 17, scope: !389)
!392 = !DILocalVariable(name: "buffer", scope: !389, file: !1, line: 244, type: !187)
!393 = !DILocation(line: 244, column: 17, scope: !389)
!394 = !DILocation(line: 247, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !389, file: !1, line: 247, column: 17)
!396 = !DILocation(line: 247, column: 22, scope: !395)
!397 = !DILocation(line: 247, column: 17, scope: !389)
!398 = !DILocation(line: 249, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 248, column: 13)
!400 = !DILocation(line: 249, column: 17, scope: !399)
!401 = !DILocation(line: 249, column: 30, scope: !399)
!402 = !DILocation(line: 251, column: 23, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 251, column: 17)
!404 = !DILocation(line: 251, column: 21, scope: !403)
!405 = !DILocation(line: 251, column: 28, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 251, column: 17)
!407 = !DILocation(line: 251, column: 30, scope: !406)
!408 = !DILocation(line: 251, column: 17, scope: !403)
!409 = !DILocation(line: 253, column: 41, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 252, column: 17)
!411 = !DILocation(line: 253, column: 34, scope: !410)
!412 = !DILocation(line: 253, column: 21, scope: !410)
!413 = !DILocation(line: 254, column: 17, scope: !410)
!414 = !DILocation(line: 251, column: 37, scope: !406)
!415 = !DILocation(line: 251, column: 17, scope: !406)
!416 = distinct !{!416, !408, !417, !174}
!417 = !DILocation(line: 254, column: 17, scope: !403)
!418 = !DILocation(line: 255, column: 13, scope: !399)
!419 = !DILocation(line: 258, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !395, file: !1, line: 257, column: 13)
!421 = !DILocation(line: 261, column: 5, scope: !390)
!422 = !DILocation(line: 240, column: 24, scope: !385)
!423 = !DILocation(line: 240, column: 5, scope: !385)
!424 = distinct !{!424, !387, !425, !174}
!425 = !DILocation(line: 261, column: 5, scope: !382)
!426 = !DILocation(line: 262, column: 1, scope: !359)
!427 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good", scope: !1, file: !1, line: 264, type: !64, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!428 = !DILocation(line: 266, column: 5, scope: !427)
!429 = !DILocation(line: 267, column: 5, scope: !427)
!430 = !DILocation(line: 268, column: 1, scope: !427)
