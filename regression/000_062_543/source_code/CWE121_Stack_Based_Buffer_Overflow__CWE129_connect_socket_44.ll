; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad() #0 !dbg !107 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !112, metadata !DIExpression()), !dbg !114
  store void (i32)* @badSink, void (i32)** %funcPtr, align 8, !dbg !114
  store i32 -1, i32* %data, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !116, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !119, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 -1, i32* %connectSocket, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !144, metadata !DIExpression()), !dbg !145
  br label %do.body, !dbg !146

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !147
  store i32 %call, i32* %connectSocket, align 4, !dbg !149
  %0 = load i32, i32* %connectSocket, align 4, !dbg !150
  %cmp = icmp eq i32 %0, -1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !154

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !156
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !157
  store i16 2, i16* %sin_family, align 4, !dbg !158
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !159
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !160
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !161
  store i32 %call1, i32* %s_addr, align 4, !dbg !162
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !163
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !164
  store i16 %call2, i16* %sin_port, align 2, !dbg !165
  %2 = load i32, i32* %connectSocket, align 4, !dbg !166
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !168
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !169
  %cmp4 = icmp eq i32 %call3, -1, !dbg !170
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !171

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !172

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !174
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !175
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !176
  %conv = trunc i64 %call7 to i32, !dbg !176
  store i32 %conv, i32* %recvResult, align 4, !dbg !177
  %5 = load i32, i32* %recvResult, align 4, !dbg !178
  %cmp8 = icmp eq i32 %5, -1, !dbg !180
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !181

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !182
  %cmp10 = icmp eq i32 %6, 0, !dbg !183
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !184

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !185

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !187
  %idxprom = sext i32 %7 to i64, !dbg !188
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !188
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !190
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !191
  store i32 %call15, i32* %data, align 4, !dbg !192
  br label %do.end, !dbg !193

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !194
  %cmp16 = icmp ne i32 %8, -1, !dbg !196
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !197

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !198
  %call19 = call i32 @close(i32 %9), !dbg !200
  br label %if.end20, !dbg !201

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !202
  %11 = load i32, i32* %data, align 4, !dbg !203
  call void %10(i32 %11), !dbg !202
  ret void, !dbg !204
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
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !205 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %i, metadata !208, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !212
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !212
  %1 = load i32, i32* %data.addr, align 4, !dbg !213
  %cmp = icmp sge i32 %1, 0, !dbg !215
  br i1 %cmp, label %if.then, label %if.else, !dbg !216

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !217
  %idxprom = sext i32 %2 to i64, !dbg !219
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !219
  store i32 1, i32* %arrayidx, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !224
  %cmp1 = icmp slt i32 %3, 10, !dbg !226
  br i1 %cmp1, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !228
  %idxprom2 = sext i32 %4 to i64, !dbg !230
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !230
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !230
  call void @printIntLine(i32 %5), !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !233
  %inc = add nsw i32 %6, 1, !dbg !233
  store i32 %inc, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !237

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !238
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !241 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !244, metadata !DIExpression()), !dbg !245
  store void (i32)* @goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !245
  store i32 -1, i32* %data, align 4, !dbg !246
  store i32 7, i32* %data, align 4, !dbg !247
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !248
  %1 = load i32, i32* %data, align 4, !dbg !249
  call void %0(i32 %1), !dbg !248
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !251 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %i, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !258
  %1 = load i32, i32* %data.addr, align 4, !dbg !259
  %cmp = icmp sge i32 %1, 0, !dbg !261
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !262

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !263
  %cmp1 = icmp slt i32 %2, 10, !dbg !264
  br i1 %cmp1, label %if.then, label %if.else, !dbg !265

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !266
  %idxprom = sext i32 %3 to i64, !dbg !268
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !268
  store i32 1, i32* %arrayidx, align 4, !dbg !269
  store i32 0, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !273
  %cmp2 = icmp slt i32 %4, 10, !dbg !275
  br i1 %cmp2, label %for.body, label %for.end, !dbg !276

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !277
  %idxprom3 = sext i32 %5 to i64, !dbg !279
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !279
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !279
  call void @printIntLine(i32 %6), !dbg !280
  br label %for.inc, !dbg !281

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !282
  %inc = add nsw i32 %7, 1, !dbg !282
  store i32 %inc, i32* %i, align 4, !dbg !282
  br label %for.cond, !dbg !283, !llvm.loop !284

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !286

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !287
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !290 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !293, metadata !DIExpression()), !dbg !294
  store void (i32)* @goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !294
  store i32 -1, i32* %data, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !296, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 -1, i32* %connectSocket, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !303, metadata !DIExpression()), !dbg !304
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !306
  store i32 %call, i32* %connectSocket, align 4, !dbg !308
  %0 = load i32, i32* %connectSocket, align 4, !dbg !309
  %cmp = icmp eq i32 %0, -1, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !313

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !315
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !316
  store i16 2, i16* %sin_family, align 4, !dbg !317
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !318
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !319
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !320
  store i32 %call1, i32* %s_addr, align 4, !dbg !321
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !322
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !323
  store i16 %call2, i16* %sin_port, align 2, !dbg !324
  %2 = load i32, i32* %connectSocket, align 4, !dbg !325
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !327
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !328
  %cmp4 = icmp eq i32 %call3, -1, !dbg !329
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !330

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !331

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !333
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !334
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !335
  %conv = trunc i64 %call7 to i32, !dbg !335
  store i32 %conv, i32* %recvResult, align 4, !dbg !336
  %5 = load i32, i32* %recvResult, align 4, !dbg !337
  %cmp8 = icmp eq i32 %5, -1, !dbg !339
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !340

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !341
  %cmp10 = icmp eq i32 %6, 0, !dbg !342
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !343

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !344

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !346
  %idxprom = sext i32 %7 to i64, !dbg !347
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !347
  store i8 0, i8* %arrayidx, align 1, !dbg !348
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !349
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !350
  store i32 %call15, i32* %data, align 4, !dbg !351
  br label %do.end, !dbg !352

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !353
  %cmp16 = icmp ne i32 %8, -1, !dbg !355
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !356

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !357
  %call19 = call i32 @close(i32 %9), !dbg !359
  br label %if.end20, !dbg !360

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !361
  %11 = load i32, i32* %data, align 4, !dbg !362
  call void %10(i32 %11), !dbg !361
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_good() #0 !dbg !364 {
entry:
  call void @goodG2B(), !dbg !365
  call void @goodB2G(), !dbg !366
  ret void, !dbg !367
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_543/source_code")
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
!107 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad", scope: !1, file: !1, line: 68, type: !108, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !DILocalVariable(name: "data", scope: !107, file: !1, line: 70, type: !66)
!111 = !DILocation(line: 70, column: 9, scope: !107)
!112 = !DILocalVariable(name: "funcPtr", scope: !107, file: !1, line: 72, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!114 = !DILocation(line: 72, column: 12, scope: !107)
!115 = !DILocation(line: 74, column: 10, scope: !107)
!116 = !DILocalVariable(name: "recvResult", scope: !117, file: !1, line: 80, type: !66)
!117 = distinct !DILexicalBlock(scope: !107, file: !1, line: 75, column: 5)
!118 = !DILocation(line: 80, column: 13, scope: !117)
!119 = !DILocalVariable(name: "service", scope: !117, file: !1, line: 81, type: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !121)
!121 = !{!122, !123, !129, !136}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !120, file: !17, line: 240, baseType: !51, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !120, file: !17, line: 241, baseType: !124, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !126, line: 25, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !128, line: 40, baseType: !53)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !120, file: !17, line: 242, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !130, file: !17, line: 33, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 26, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !128, line: 42, baseType: !5)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !120, file: !17, line: 245, baseType: !137, size: 64, offset: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !139)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DILocation(line: 81, column: 28, scope: !117)
!142 = !DILocalVariable(name: "connectSocket", scope: !117, file: !1, line: 82, type: !66)
!143 = !DILocation(line: 82, column: 16, scope: !117)
!144 = !DILocalVariable(name: "inputBuffer", scope: !117, file: !1, line: 83, type: !55)
!145 = !DILocation(line: 83, column: 14, scope: !117)
!146 = !DILocation(line: 84, column: 9, scope: !117)
!147 = !DILocation(line: 94, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !117, file: !1, line: 85, column: 9)
!149 = !DILocation(line: 94, column: 27, scope: !148)
!150 = !DILocation(line: 95, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 95, column: 17)
!152 = !DILocation(line: 95, column: 31, scope: !151)
!153 = !DILocation(line: 95, column: 17, scope: !148)
!154 = !DILocation(line: 97, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 96, column: 13)
!156 = !DILocation(line: 99, column: 13, scope: !148)
!157 = !DILocation(line: 100, column: 21, scope: !148)
!158 = !DILocation(line: 100, column: 32, scope: !148)
!159 = !DILocation(line: 101, column: 39, scope: !148)
!160 = !DILocation(line: 101, column: 21, scope: !148)
!161 = !DILocation(line: 101, column: 30, scope: !148)
!162 = !DILocation(line: 101, column: 37, scope: !148)
!163 = !DILocation(line: 102, column: 32, scope: !148)
!164 = !DILocation(line: 102, column: 21, scope: !148)
!165 = !DILocation(line: 102, column: 30, scope: !148)
!166 = !DILocation(line: 103, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !148, file: !1, line: 103, column: 17)
!168 = !DILocation(line: 103, column: 40, scope: !167)
!169 = !DILocation(line: 103, column: 17, scope: !167)
!170 = !DILocation(line: 103, column: 85, scope: !167)
!171 = !DILocation(line: 103, column: 17, scope: !148)
!172 = !DILocation(line: 105, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !1, line: 104, column: 13)
!174 = !DILocation(line: 109, column: 31, scope: !148)
!175 = !DILocation(line: 109, column: 46, scope: !148)
!176 = !DILocation(line: 109, column: 26, scope: !148)
!177 = !DILocation(line: 109, column: 24, scope: !148)
!178 = !DILocation(line: 110, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !148, file: !1, line: 110, column: 17)
!180 = !DILocation(line: 110, column: 28, scope: !179)
!181 = !DILocation(line: 110, column: 44, scope: !179)
!182 = !DILocation(line: 110, column: 47, scope: !179)
!183 = !DILocation(line: 110, column: 58, scope: !179)
!184 = !DILocation(line: 110, column: 17, scope: !148)
!185 = !DILocation(line: 112, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !1, line: 111, column: 13)
!187 = !DILocation(line: 115, column: 25, scope: !148)
!188 = !DILocation(line: 115, column: 13, scope: !148)
!189 = !DILocation(line: 115, column: 37, scope: !148)
!190 = !DILocation(line: 117, column: 25, scope: !148)
!191 = !DILocation(line: 117, column: 20, scope: !148)
!192 = !DILocation(line: 117, column: 18, scope: !148)
!193 = !DILocation(line: 118, column: 9, scope: !148)
!194 = !DILocation(line: 120, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !117, file: !1, line: 120, column: 13)
!196 = !DILocation(line: 120, column: 27, scope: !195)
!197 = !DILocation(line: 120, column: 13, scope: !117)
!198 = !DILocation(line: 122, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 121, column: 9)
!200 = !DILocation(line: 122, column: 13, scope: !199)
!201 = !DILocation(line: 123, column: 9, scope: !199)
!202 = !DILocation(line: 132, column: 5, scope: !107)
!203 = !DILocation(line: 132, column: 13, scope: !107)
!204 = !DILocation(line: 133, column: 1, scope: !107)
!205 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 140, type: !64, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!206 = !DILocalVariable(name: "data", arg: 1, scope: !205, file: !1, line: 140, type: !66)
!207 = !DILocation(line: 140, column: 22, scope: !205)
!208 = !DILocalVariable(name: "i", scope: !209, file: !1, line: 143, type: !66)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 142, column: 5)
!210 = !DILocation(line: 143, column: 13, scope: !209)
!211 = !DILocalVariable(name: "buffer", scope: !209, file: !1, line: 144, type: !74)
!212 = !DILocation(line: 144, column: 13, scope: !209)
!213 = !DILocation(line: 147, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 147, column: 13)
!215 = !DILocation(line: 147, column: 18, scope: !214)
!216 = !DILocation(line: 147, column: 13, scope: !209)
!217 = !DILocation(line: 149, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 148, column: 9)
!219 = !DILocation(line: 149, column: 13, scope: !218)
!220 = !DILocation(line: 149, column: 26, scope: !218)
!221 = !DILocation(line: 151, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 151, column: 13)
!223 = !DILocation(line: 151, column: 17, scope: !222)
!224 = !DILocation(line: 151, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 151, column: 13)
!226 = !DILocation(line: 151, column: 26, scope: !225)
!227 = !DILocation(line: 151, column: 13, scope: !222)
!228 = !DILocation(line: 153, column: 37, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 152, column: 13)
!230 = !DILocation(line: 153, column: 30, scope: !229)
!231 = !DILocation(line: 153, column: 17, scope: !229)
!232 = !DILocation(line: 154, column: 13, scope: !229)
!233 = !DILocation(line: 151, column: 33, scope: !225)
!234 = !DILocation(line: 151, column: 13, scope: !225)
!235 = distinct !{!235, !227, !236, !102}
!236 = !DILocation(line: 154, column: 13, scope: !222)
!237 = !DILocation(line: 155, column: 9, scope: !218)
!238 = !DILocation(line: 158, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !214, file: !1, line: 157, column: 9)
!240 = !DILocation(line: 161, column: 1, scope: !205)
!241 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 163, type: !108, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!242 = !DILocalVariable(name: "data", scope: !241, file: !1, line: 165, type: !66)
!243 = !DILocation(line: 165, column: 9, scope: !241)
!244 = !DILocalVariable(name: "funcPtr", scope: !241, file: !1, line: 166, type: !113)
!245 = !DILocation(line: 166, column: 12, scope: !241)
!246 = !DILocation(line: 168, column: 10, scope: !241)
!247 = !DILocation(line: 171, column: 10, scope: !241)
!248 = !DILocation(line: 172, column: 5, scope: !241)
!249 = !DILocation(line: 172, column: 13, scope: !241)
!250 = !DILocation(line: 173, column: 1, scope: !241)
!251 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 176, type: !64, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!252 = !DILocalVariable(name: "data", arg: 1, scope: !251, file: !1, line: 176, type: !66)
!253 = !DILocation(line: 176, column: 22, scope: !251)
!254 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 179, type: !66)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 178, column: 5)
!256 = !DILocation(line: 179, column: 13, scope: !255)
!257 = !DILocalVariable(name: "buffer", scope: !255, file: !1, line: 180, type: !74)
!258 = !DILocation(line: 180, column: 13, scope: !255)
!259 = !DILocation(line: 182, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !1, line: 182, column: 13)
!261 = !DILocation(line: 182, column: 18, scope: !260)
!262 = !DILocation(line: 182, column: 23, scope: !260)
!263 = !DILocation(line: 182, column: 26, scope: !260)
!264 = !DILocation(line: 182, column: 31, scope: !260)
!265 = !DILocation(line: 182, column: 13, scope: !255)
!266 = !DILocation(line: 184, column: 20, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !1, line: 183, column: 9)
!268 = !DILocation(line: 184, column: 13, scope: !267)
!269 = !DILocation(line: 184, column: 26, scope: !267)
!270 = !DILocation(line: 186, column: 19, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 186, column: 13)
!272 = !DILocation(line: 186, column: 17, scope: !271)
!273 = !DILocation(line: 186, column: 24, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !1, line: 186, column: 13)
!275 = !DILocation(line: 186, column: 26, scope: !274)
!276 = !DILocation(line: 186, column: 13, scope: !271)
!277 = !DILocation(line: 188, column: 37, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !1, line: 187, column: 13)
!279 = !DILocation(line: 188, column: 30, scope: !278)
!280 = !DILocation(line: 188, column: 17, scope: !278)
!281 = !DILocation(line: 189, column: 13, scope: !278)
!282 = !DILocation(line: 186, column: 33, scope: !274)
!283 = !DILocation(line: 186, column: 13, scope: !274)
!284 = distinct !{!284, !276, !285, !102}
!285 = !DILocation(line: 189, column: 13, scope: !271)
!286 = !DILocation(line: 190, column: 9, scope: !267)
!287 = !DILocation(line: 193, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !260, file: !1, line: 192, column: 9)
!289 = !DILocation(line: 196, column: 1, scope: !251)
!290 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 198, type: !108, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!291 = !DILocalVariable(name: "data", scope: !290, file: !1, line: 200, type: !66)
!292 = !DILocation(line: 200, column: 9, scope: !290)
!293 = !DILocalVariable(name: "funcPtr", scope: !290, file: !1, line: 201, type: !113)
!294 = !DILocation(line: 201, column: 12, scope: !290)
!295 = !DILocation(line: 203, column: 10, scope: !290)
!296 = !DILocalVariable(name: "recvResult", scope: !297, file: !1, line: 209, type: !66)
!297 = distinct !DILexicalBlock(scope: !290, file: !1, line: 204, column: 5)
!298 = !DILocation(line: 209, column: 13, scope: !297)
!299 = !DILocalVariable(name: "service", scope: !297, file: !1, line: 210, type: !120)
!300 = !DILocation(line: 210, column: 28, scope: !297)
!301 = !DILocalVariable(name: "connectSocket", scope: !297, file: !1, line: 211, type: !66)
!302 = !DILocation(line: 211, column: 16, scope: !297)
!303 = !DILocalVariable(name: "inputBuffer", scope: !297, file: !1, line: 212, type: !55)
!304 = !DILocation(line: 212, column: 14, scope: !297)
!305 = !DILocation(line: 213, column: 9, scope: !297)
!306 = !DILocation(line: 223, column: 29, scope: !307)
!307 = distinct !DILexicalBlock(scope: !297, file: !1, line: 214, column: 9)
!308 = !DILocation(line: 223, column: 27, scope: !307)
!309 = !DILocation(line: 224, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !1, line: 224, column: 17)
!311 = !DILocation(line: 224, column: 31, scope: !310)
!312 = !DILocation(line: 224, column: 17, scope: !307)
!313 = !DILocation(line: 226, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !1, line: 225, column: 13)
!315 = !DILocation(line: 228, column: 13, scope: !307)
!316 = !DILocation(line: 229, column: 21, scope: !307)
!317 = !DILocation(line: 229, column: 32, scope: !307)
!318 = !DILocation(line: 230, column: 39, scope: !307)
!319 = !DILocation(line: 230, column: 21, scope: !307)
!320 = !DILocation(line: 230, column: 30, scope: !307)
!321 = !DILocation(line: 230, column: 37, scope: !307)
!322 = !DILocation(line: 231, column: 32, scope: !307)
!323 = !DILocation(line: 231, column: 21, scope: !307)
!324 = !DILocation(line: 231, column: 30, scope: !307)
!325 = !DILocation(line: 232, column: 25, scope: !326)
!326 = distinct !DILexicalBlock(scope: !307, file: !1, line: 232, column: 17)
!327 = !DILocation(line: 232, column: 40, scope: !326)
!328 = !DILocation(line: 232, column: 17, scope: !326)
!329 = !DILocation(line: 232, column: 85, scope: !326)
!330 = !DILocation(line: 232, column: 17, scope: !307)
!331 = !DILocation(line: 234, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !326, file: !1, line: 233, column: 13)
!333 = !DILocation(line: 238, column: 31, scope: !307)
!334 = !DILocation(line: 238, column: 46, scope: !307)
!335 = !DILocation(line: 238, column: 26, scope: !307)
!336 = !DILocation(line: 238, column: 24, scope: !307)
!337 = !DILocation(line: 239, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !307, file: !1, line: 239, column: 17)
!339 = !DILocation(line: 239, column: 28, scope: !338)
!340 = !DILocation(line: 239, column: 44, scope: !338)
!341 = !DILocation(line: 239, column: 47, scope: !338)
!342 = !DILocation(line: 239, column: 58, scope: !338)
!343 = !DILocation(line: 239, column: 17, scope: !307)
!344 = !DILocation(line: 241, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !1, line: 240, column: 13)
!346 = !DILocation(line: 244, column: 25, scope: !307)
!347 = !DILocation(line: 244, column: 13, scope: !307)
!348 = !DILocation(line: 244, column: 37, scope: !307)
!349 = !DILocation(line: 246, column: 25, scope: !307)
!350 = !DILocation(line: 246, column: 20, scope: !307)
!351 = !DILocation(line: 246, column: 18, scope: !307)
!352 = !DILocation(line: 247, column: 9, scope: !307)
!353 = !DILocation(line: 249, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !297, file: !1, line: 249, column: 13)
!355 = !DILocation(line: 249, column: 27, scope: !354)
!356 = !DILocation(line: 249, column: 13, scope: !297)
!357 = !DILocation(line: 251, column: 26, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 250, column: 9)
!359 = !DILocation(line: 251, column: 13, scope: !358)
!360 = !DILocation(line: 252, column: 9, scope: !358)
!361 = !DILocation(line: 260, column: 5, scope: !290)
!362 = !DILocation(line: 260, column: 13, scope: !290)
!363 = !DILocation(line: 261, column: 1, scope: !290)
!364 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_good", scope: !1, file: !1, line: 263, type: !108, scopeLine: 264, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!365 = !DILocation(line: 265, column: 5, scope: !364)
!366 = !DILocation(line: 266, column: 5, scope: !364)
!367 = !DILocation(line: 267, column: 1, scope: !364)
