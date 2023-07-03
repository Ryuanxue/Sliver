; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i32 %data) #0 !dbg !63 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !73, metadata !DIExpression()), !dbg !77
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !77
  %1 = load i32, i32* %data.addr, align 4, !dbg !78
  %cmp = icmp sge i32 %1, 0, !dbg !80
  br i1 %cmp, label %if.then, label %if.else, !dbg !81

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !82
  %idxprom = sext i32 %2 to i64, !dbg !84
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !84
  store i32 1, i32* %arrayidx, align 4, !dbg !85
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !89
  %cmp1 = icmp slt i32 %3, 10, !dbg !91
  br i1 %cmp1, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !93
  %idxprom2 = sext i32 %4 to i64, !dbg !95
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !95
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !95
  call void @printIntLine(i32 %5), !dbg !96
  br label %for.inc, !dbg !97

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !98
  %inc = add nsw i32 %6, 1, !dbg !98
  store i32 %inc, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !103

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !104
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !106
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41_bad() #0 !dbg !107 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %data, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !116, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 -1, i32* %connectSocket, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  br label %do.body, !dbg !143

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !144
  store i32 %call, i32* %connectSocket, align 4, !dbg !146
  %0 = load i32, i32* %connectSocket, align 4, !dbg !147
  %cmp = icmp eq i32 %0, -1, !dbg !149
  br i1 %cmp, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !151

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !153
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !154
  store i16 2, i16* %sin_family, align 4, !dbg !155
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !156
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !157
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !158
  store i32 %call1, i32* %s_addr, align 4, !dbg !159
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !160
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !161
  store i16 %call2, i16* %sin_port, align 2, !dbg !162
  %2 = load i32, i32* %connectSocket, align 4, !dbg !163
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !165
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !166
  %cmp4 = icmp eq i32 %call3, -1, !dbg !167
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !168

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !169

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !171
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !172
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !173
  %conv = trunc i64 %call7 to i32, !dbg !173
  store i32 %conv, i32* %recvResult, align 4, !dbg !174
  %5 = load i32, i32* %recvResult, align 4, !dbg !175
  %cmp8 = icmp eq i32 %5, -1, !dbg !177
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !178

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !179
  %cmp10 = icmp eq i32 %6, 0, !dbg !180
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !181

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !182

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !184
  %idxprom = sext i32 %7 to i64, !dbg !185
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !185
  store i8 0, i8* %arrayidx, align 1, !dbg !186
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !187
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !188
  store i32 %call15, i32* %data, align 4, !dbg !189
  br label %do.end, !dbg !190

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !191
  %cmp16 = icmp ne i32 %8, -1, !dbg !193
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !194

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !195
  %call19 = call i32 @close(i32 %9), !dbg !197
  br label %if.end20, !dbg !198

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !199
  call void @badSink(i32 %10), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !202 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %i, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !209
  %1 = load i32, i32* %data.addr, align 4, !dbg !210
  %cmp = icmp sge i32 %1, 0, !dbg !212
  br i1 %cmp, label %if.then, label %if.else, !dbg !213

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !214
  %idxprom = sext i32 %2 to i64, !dbg !216
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !216
  store i32 1, i32* %arrayidx, align 4, !dbg !217
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !221
  %cmp1 = icmp slt i32 %3, 10, !dbg !223
  br i1 %cmp1, label %for.body, label %for.end, !dbg !224

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !225
  %idxprom2 = sext i32 %4 to i64, !dbg !227
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !227
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !227
  call void @printIntLine(i32 %5), !dbg !228
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !230
  %inc = add nsw i32 %6, 1, !dbg !230
  store i32 %inc, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !234

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !235
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !238 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !239, metadata !DIExpression()), !dbg !240
  store i32 -1, i32* %data, align 4, !dbg !241
  store i32 7, i32* %data, align 4, !dbg !242
  %0 = load i32, i32* %data, align 4, !dbg !243
  call void @goodG2BSink(i32 %0), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !246 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !253
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !253
  %1 = load i32, i32* %data.addr, align 4, !dbg !254
  %cmp = icmp sge i32 %1, 0, !dbg !256
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !257

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !258
  %cmp1 = icmp slt i32 %2, 10, !dbg !259
  br i1 %cmp1, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !261
  %idxprom = sext i32 %3 to i64, !dbg !263
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !263
  store i32 1, i32* %arrayidx, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !268
  %cmp2 = icmp slt i32 %4, 10, !dbg !270
  br i1 %cmp2, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !272
  %idxprom3 = sext i32 %5 to i64, !dbg !274
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !274
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !274
  call void @printIntLine(i32 %6), !dbg !275
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !277
  %inc = add nsw i32 %7, 1, !dbg !277
  store i32 %inc, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !281

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !282
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !285 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 -1, i32* %data, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 -1, i32* %connectSocket, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !296, metadata !DIExpression()), !dbg !297
  br label %do.body, !dbg !298

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !299
  store i32 %call, i32* %connectSocket, align 4, !dbg !301
  %0 = load i32, i32* %connectSocket, align 4, !dbg !302
  %cmp = icmp eq i32 %0, -1, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !306

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !308
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !308
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !309
  store i16 2, i16* %sin_family, align 4, !dbg !310
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !311
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !312
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !313
  store i32 %call1, i32* %s_addr, align 4, !dbg !314
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !315
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !316
  store i16 %call2, i16* %sin_port, align 2, !dbg !317
  %2 = load i32, i32* %connectSocket, align 4, !dbg !318
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !320
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !321
  %cmp4 = icmp eq i32 %call3, -1, !dbg !322
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !323

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !324

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !326
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !327
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !328
  %conv = trunc i64 %call7 to i32, !dbg !328
  store i32 %conv, i32* %recvResult, align 4, !dbg !329
  %5 = load i32, i32* %recvResult, align 4, !dbg !330
  %cmp8 = icmp eq i32 %5, -1, !dbg !332
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !333

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !334
  %cmp10 = icmp eq i32 %6, 0, !dbg !335
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !336

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !337

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !339
  %idxprom = sext i32 %7 to i64, !dbg !340
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !340
  store i8 0, i8* %arrayidx, align 1, !dbg !341
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !342
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !343
  store i32 %call15, i32* %data, align 4, !dbg !344
  br label %do.end, !dbg !345

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !346
  %cmp16 = icmp ne i32 %8, -1, !dbg !348
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !349

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !350
  %call19 = call i32 @close(i32 %9), !dbg !352
  br label %if.end20, !dbg !353

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !354
  call void @goodB2GSink(i32 %10), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41_good() #0 !dbg !357 {
entry:
  call void @goodB2G(), !dbg !358
  call void @goodG2B(), !dbg !359
  ret void, !dbg !360
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_540/source_code")
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
!63 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !63, file: !1, line: 45, type: !66)
!69 = !DILocation(line: 45, column: 18, scope: !63)
!70 = !DILocalVariable(name: "i", scope: !71, file: !1, line: 48, type: !66)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 47, column: 5)
!72 = !DILocation(line: 48, column: 13, scope: !71)
!73 = !DILocalVariable(name: "buffer", scope: !71, file: !1, line: 49, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 10)
!77 = !DILocation(line: 49, column: 13, scope: !71)
!78 = !DILocation(line: 52, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 52, column: 13)
!80 = !DILocation(line: 52, column: 18, scope: !79)
!81 = !DILocation(line: 52, column: 13, scope: !71)
!82 = !DILocation(line: 54, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 53, column: 9)
!84 = !DILocation(line: 54, column: 13, scope: !83)
!85 = !DILocation(line: 54, column: 26, scope: !83)
!86 = !DILocation(line: 56, column: 19, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 56, column: 13)
!88 = !DILocation(line: 56, column: 17, scope: !87)
!89 = !DILocation(line: 56, column: 24, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 56, column: 13)
!91 = !DILocation(line: 56, column: 26, scope: !90)
!92 = !DILocation(line: 56, column: 13, scope: !87)
!93 = !DILocation(line: 58, column: 37, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 57, column: 13)
!95 = !DILocation(line: 58, column: 30, scope: !94)
!96 = !DILocation(line: 58, column: 17, scope: !94)
!97 = !DILocation(line: 59, column: 13, scope: !94)
!98 = !DILocation(line: 56, column: 33, scope: !90)
!99 = !DILocation(line: 56, column: 13, scope: !90)
!100 = distinct !{!100, !92, !101, !102}
!101 = !DILocation(line: 59, column: 13, scope: !87)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !DILocation(line: 60, column: 9, scope: !83)
!104 = !DILocation(line: 63, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !79, file: !1, line: 62, column: 9)
!106 = !DILocation(line: 66, column: 1, scope: !63)
!107 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41_bad", scope: !1, file: !1, line: 68, type: !108, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !DILocalVariable(name: "data", scope: !107, file: !1, line: 70, type: !66)
!111 = !DILocation(line: 70, column: 9, scope: !107)
!112 = !DILocation(line: 72, column: 10, scope: !107)
!113 = !DILocalVariable(name: "recvResult", scope: !114, file: !1, line: 78, type: !66)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 73, column: 5)
!115 = !DILocation(line: 78, column: 13, scope: !114)
!116 = !DILocalVariable(name: "service", scope: !114, file: !1, line: 79, type: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !118)
!118 = !{!119, !120, !126, !133}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !117, file: !17, line: 240, baseType: !51, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !117, file: !17, line: 241, baseType: !121, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !123, line: 25, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !125, line: 40, baseType: !53)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !117, file: !17, line: 242, baseType: !127, size: 32, offset: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !127, file: !17, line: 33, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !123, line: 26, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !125, line: 42, baseType: !5)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !117, file: !17, line: 245, baseType: !134, size: 64, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !136)
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DILocation(line: 79, column: 28, scope: !114)
!139 = !DILocalVariable(name: "connectSocket", scope: !114, file: !1, line: 80, type: !66)
!140 = !DILocation(line: 80, column: 16, scope: !114)
!141 = !DILocalVariable(name: "inputBuffer", scope: !114, file: !1, line: 81, type: !55)
!142 = !DILocation(line: 81, column: 14, scope: !114)
!143 = !DILocation(line: 82, column: 9, scope: !114)
!144 = !DILocation(line: 92, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !114, file: !1, line: 83, column: 9)
!146 = !DILocation(line: 92, column: 27, scope: !145)
!147 = !DILocation(line: 93, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 93, column: 17)
!149 = !DILocation(line: 93, column: 31, scope: !148)
!150 = !DILocation(line: 93, column: 17, scope: !145)
!151 = !DILocation(line: 95, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 94, column: 13)
!153 = !DILocation(line: 97, column: 13, scope: !145)
!154 = !DILocation(line: 98, column: 21, scope: !145)
!155 = !DILocation(line: 98, column: 32, scope: !145)
!156 = !DILocation(line: 99, column: 39, scope: !145)
!157 = !DILocation(line: 99, column: 21, scope: !145)
!158 = !DILocation(line: 99, column: 30, scope: !145)
!159 = !DILocation(line: 99, column: 37, scope: !145)
!160 = !DILocation(line: 100, column: 32, scope: !145)
!161 = !DILocation(line: 100, column: 21, scope: !145)
!162 = !DILocation(line: 100, column: 30, scope: !145)
!163 = !DILocation(line: 101, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !145, file: !1, line: 101, column: 17)
!165 = !DILocation(line: 101, column: 40, scope: !164)
!166 = !DILocation(line: 101, column: 17, scope: !164)
!167 = !DILocation(line: 101, column: 85, scope: !164)
!168 = !DILocation(line: 101, column: 17, scope: !145)
!169 = !DILocation(line: 103, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 102, column: 13)
!171 = !DILocation(line: 107, column: 31, scope: !145)
!172 = !DILocation(line: 107, column: 46, scope: !145)
!173 = !DILocation(line: 107, column: 26, scope: !145)
!174 = !DILocation(line: 107, column: 24, scope: !145)
!175 = !DILocation(line: 108, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !145, file: !1, line: 108, column: 17)
!177 = !DILocation(line: 108, column: 28, scope: !176)
!178 = !DILocation(line: 108, column: 44, scope: !176)
!179 = !DILocation(line: 108, column: 47, scope: !176)
!180 = !DILocation(line: 108, column: 58, scope: !176)
!181 = !DILocation(line: 108, column: 17, scope: !145)
!182 = !DILocation(line: 110, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 109, column: 13)
!184 = !DILocation(line: 113, column: 25, scope: !145)
!185 = !DILocation(line: 113, column: 13, scope: !145)
!186 = !DILocation(line: 113, column: 37, scope: !145)
!187 = !DILocation(line: 115, column: 25, scope: !145)
!188 = !DILocation(line: 115, column: 20, scope: !145)
!189 = !DILocation(line: 115, column: 18, scope: !145)
!190 = !DILocation(line: 116, column: 9, scope: !145)
!191 = !DILocation(line: 118, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !114, file: !1, line: 118, column: 13)
!193 = !DILocation(line: 118, column: 27, scope: !192)
!194 = !DILocation(line: 118, column: 13, scope: !114)
!195 = !DILocation(line: 120, column: 26, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 119, column: 9)
!197 = !DILocation(line: 120, column: 13, scope: !196)
!198 = !DILocation(line: 121, column: 9, scope: !196)
!199 = !DILocation(line: 129, column: 13, scope: !107)
!200 = !DILocation(line: 129, column: 5, scope: !107)
!201 = !DILocation(line: 130, column: 1, scope: !107)
!202 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 137, type: !64, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!203 = !DILocalVariable(name: "data", arg: 1, scope: !202, file: !1, line: 137, type: !66)
!204 = !DILocation(line: 137, column: 22, scope: !202)
!205 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 140, type: !66)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 139, column: 5)
!207 = !DILocation(line: 140, column: 13, scope: !206)
!208 = !DILocalVariable(name: "buffer", scope: !206, file: !1, line: 141, type: !74)
!209 = !DILocation(line: 141, column: 13, scope: !206)
!210 = !DILocation(line: 144, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !1, line: 144, column: 13)
!212 = !DILocation(line: 144, column: 18, scope: !211)
!213 = !DILocation(line: 144, column: 13, scope: !206)
!214 = !DILocation(line: 146, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 145, column: 9)
!216 = !DILocation(line: 146, column: 13, scope: !215)
!217 = !DILocation(line: 146, column: 26, scope: !215)
!218 = !DILocation(line: 148, column: 19, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 148, column: 13)
!220 = !DILocation(line: 148, column: 17, scope: !219)
!221 = !DILocation(line: 148, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 148, column: 13)
!223 = !DILocation(line: 148, column: 26, scope: !222)
!224 = !DILocation(line: 148, column: 13, scope: !219)
!225 = !DILocation(line: 150, column: 37, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 149, column: 13)
!227 = !DILocation(line: 150, column: 30, scope: !226)
!228 = !DILocation(line: 150, column: 17, scope: !226)
!229 = !DILocation(line: 151, column: 13, scope: !226)
!230 = !DILocation(line: 148, column: 33, scope: !222)
!231 = !DILocation(line: 148, column: 13, scope: !222)
!232 = distinct !{!232, !224, !233, !102}
!233 = !DILocation(line: 151, column: 13, scope: !219)
!234 = !DILocation(line: 152, column: 9, scope: !215)
!235 = !DILocation(line: 155, column: 13, scope: !236)
!236 = distinct !DILexicalBlock(scope: !211, file: !1, line: 154, column: 9)
!237 = !DILocation(line: 158, column: 1, scope: !202)
!238 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 160, type: !108, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!239 = !DILocalVariable(name: "data", scope: !238, file: !1, line: 162, type: !66)
!240 = !DILocation(line: 162, column: 9, scope: !238)
!241 = !DILocation(line: 164, column: 10, scope: !238)
!242 = !DILocation(line: 167, column: 10, scope: !238)
!243 = !DILocation(line: 168, column: 17, scope: !238)
!244 = !DILocation(line: 168, column: 5, scope: !238)
!245 = !DILocation(line: 169, column: 1, scope: !238)
!246 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 172, type: !64, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!247 = !DILocalVariable(name: "data", arg: 1, scope: !246, file: !1, line: 172, type: !66)
!248 = !DILocation(line: 172, column: 22, scope: !246)
!249 = !DILocalVariable(name: "i", scope: !250, file: !1, line: 175, type: !66)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 174, column: 5)
!251 = !DILocation(line: 175, column: 13, scope: !250)
!252 = !DILocalVariable(name: "buffer", scope: !250, file: !1, line: 176, type: !74)
!253 = !DILocation(line: 176, column: 13, scope: !250)
!254 = !DILocation(line: 178, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 178, column: 13)
!256 = !DILocation(line: 178, column: 18, scope: !255)
!257 = !DILocation(line: 178, column: 23, scope: !255)
!258 = !DILocation(line: 178, column: 26, scope: !255)
!259 = !DILocation(line: 178, column: 31, scope: !255)
!260 = !DILocation(line: 178, column: 13, scope: !250)
!261 = !DILocation(line: 180, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !1, line: 179, column: 9)
!263 = !DILocation(line: 180, column: 13, scope: !262)
!264 = !DILocation(line: 180, column: 26, scope: !262)
!265 = !DILocation(line: 182, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 182, column: 13)
!267 = !DILocation(line: 182, column: 17, scope: !266)
!268 = !DILocation(line: 182, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 182, column: 13)
!270 = !DILocation(line: 182, column: 26, scope: !269)
!271 = !DILocation(line: 182, column: 13, scope: !266)
!272 = !DILocation(line: 184, column: 37, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !1, line: 183, column: 13)
!274 = !DILocation(line: 184, column: 30, scope: !273)
!275 = !DILocation(line: 184, column: 17, scope: !273)
!276 = !DILocation(line: 185, column: 13, scope: !273)
!277 = !DILocation(line: 182, column: 33, scope: !269)
!278 = !DILocation(line: 182, column: 13, scope: !269)
!279 = distinct !{!279, !271, !280, !102}
!280 = !DILocation(line: 185, column: 13, scope: !266)
!281 = !DILocation(line: 186, column: 9, scope: !262)
!282 = !DILocation(line: 189, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !255, file: !1, line: 188, column: 9)
!284 = !DILocation(line: 192, column: 1, scope: !246)
!285 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 194, type: !108, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!286 = !DILocalVariable(name: "data", scope: !285, file: !1, line: 196, type: !66)
!287 = !DILocation(line: 196, column: 9, scope: !285)
!288 = !DILocation(line: 198, column: 10, scope: !285)
!289 = !DILocalVariable(name: "recvResult", scope: !290, file: !1, line: 204, type: !66)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 199, column: 5)
!291 = !DILocation(line: 204, column: 13, scope: !290)
!292 = !DILocalVariable(name: "service", scope: !290, file: !1, line: 205, type: !117)
!293 = !DILocation(line: 205, column: 28, scope: !290)
!294 = !DILocalVariable(name: "connectSocket", scope: !290, file: !1, line: 206, type: !66)
!295 = !DILocation(line: 206, column: 16, scope: !290)
!296 = !DILocalVariable(name: "inputBuffer", scope: !290, file: !1, line: 207, type: !55)
!297 = !DILocation(line: 207, column: 14, scope: !290)
!298 = !DILocation(line: 208, column: 9, scope: !290)
!299 = !DILocation(line: 218, column: 29, scope: !300)
!300 = distinct !DILexicalBlock(scope: !290, file: !1, line: 209, column: 9)
!301 = !DILocation(line: 218, column: 27, scope: !300)
!302 = !DILocation(line: 219, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 219, column: 17)
!304 = !DILocation(line: 219, column: 31, scope: !303)
!305 = !DILocation(line: 219, column: 17, scope: !300)
!306 = !DILocation(line: 221, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 220, column: 13)
!308 = !DILocation(line: 223, column: 13, scope: !300)
!309 = !DILocation(line: 224, column: 21, scope: !300)
!310 = !DILocation(line: 224, column: 32, scope: !300)
!311 = !DILocation(line: 225, column: 39, scope: !300)
!312 = !DILocation(line: 225, column: 21, scope: !300)
!313 = !DILocation(line: 225, column: 30, scope: !300)
!314 = !DILocation(line: 225, column: 37, scope: !300)
!315 = !DILocation(line: 226, column: 32, scope: !300)
!316 = !DILocation(line: 226, column: 21, scope: !300)
!317 = !DILocation(line: 226, column: 30, scope: !300)
!318 = !DILocation(line: 227, column: 25, scope: !319)
!319 = distinct !DILexicalBlock(scope: !300, file: !1, line: 227, column: 17)
!320 = !DILocation(line: 227, column: 40, scope: !319)
!321 = !DILocation(line: 227, column: 17, scope: !319)
!322 = !DILocation(line: 227, column: 85, scope: !319)
!323 = !DILocation(line: 227, column: 17, scope: !300)
!324 = !DILocation(line: 229, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !1, line: 228, column: 13)
!326 = !DILocation(line: 233, column: 31, scope: !300)
!327 = !DILocation(line: 233, column: 46, scope: !300)
!328 = !DILocation(line: 233, column: 26, scope: !300)
!329 = !DILocation(line: 233, column: 24, scope: !300)
!330 = !DILocation(line: 234, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !300, file: !1, line: 234, column: 17)
!332 = !DILocation(line: 234, column: 28, scope: !331)
!333 = !DILocation(line: 234, column: 44, scope: !331)
!334 = !DILocation(line: 234, column: 47, scope: !331)
!335 = !DILocation(line: 234, column: 58, scope: !331)
!336 = !DILocation(line: 234, column: 17, scope: !300)
!337 = !DILocation(line: 236, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !1, line: 235, column: 13)
!339 = !DILocation(line: 239, column: 25, scope: !300)
!340 = !DILocation(line: 239, column: 13, scope: !300)
!341 = !DILocation(line: 239, column: 37, scope: !300)
!342 = !DILocation(line: 241, column: 25, scope: !300)
!343 = !DILocation(line: 241, column: 20, scope: !300)
!344 = !DILocation(line: 241, column: 18, scope: !300)
!345 = !DILocation(line: 242, column: 9, scope: !300)
!346 = !DILocation(line: 244, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !290, file: !1, line: 244, column: 13)
!348 = !DILocation(line: 244, column: 27, scope: !347)
!349 = !DILocation(line: 244, column: 13, scope: !290)
!350 = !DILocation(line: 246, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 245, column: 9)
!352 = !DILocation(line: 246, column: 13, scope: !351)
!353 = !DILocation(line: 247, column: 9, scope: !351)
!354 = !DILocation(line: 255, column: 17, scope: !285)
!355 = !DILocation(line: 255, column: 5, scope: !285)
!356 = !DILocation(line: 256, column: 1, scope: !285)
!357 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_41_good", scope: !1, file: !1, line: 258, type: !108, scopeLine: 259, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!358 = !DILocation(line: 260, column: 5, scope: !357)
!359 = !DILocation(line: 261, column: 5, scope: !357)
!360 = !DILocation(line: 262, column: 1, scope: !357)
