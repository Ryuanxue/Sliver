; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData = dso_local global i32 0, align 4, !dbg !62
@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData = dso_local global i32 0, align 4, !dbg !65
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !71 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData, align 4, !dbg !77
  store i32 %0, i32* %data, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !81, metadata !DIExpression()), !dbg !85
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !85
  %2 = load i32, i32* %data, align 4, !dbg !86
  %cmp = icmp sge i32 %2, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.else, !dbg !89

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !90
  %idxprom = sext i32 %3 to i64, !dbg !92
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !92
  store i32 1, i32* %arrayidx, align 4, !dbg !93
  store i32 0, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !97
  %cmp1 = icmp slt i32 %4, 10, !dbg !99
  br i1 %cmp1, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !101
  %idxprom2 = sext i32 %5 to i64, !dbg !103
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !103
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !103
  call void @printIntLine(i32 %6), !dbg !104
  br label %for.inc, !dbg !105

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !106
  %inc = add nsw i32 %7, 1, !dbg !106
  store i32 %inc, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !107, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !111

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !112
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_bad() #0 !dbg !115 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %data, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !122, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 -1, i32* %connectSocket, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !147, metadata !DIExpression()), !dbg !148
  br label %do.body, !dbg !149

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !150
  store i32 %call, i32* %connectSocket, align 4, !dbg !152
  %0 = load i32, i32* %connectSocket, align 4, !dbg !153
  %cmp = icmp eq i32 %0, -1, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !157

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !159
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !160
  store i16 2, i16* %sin_family, align 4, !dbg !161
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !162
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !163
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !164
  store i32 %call1, i32* %s_addr, align 4, !dbg !165
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !166
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !167
  store i16 %call2, i16* %sin_port, align 2, !dbg !168
  %2 = load i32, i32* %connectSocket, align 4, !dbg !169
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !171
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !172
  %cmp4 = icmp eq i32 %call3, -1, !dbg !173
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !174

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !175

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !177
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !178
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !179
  %conv = trunc i64 %call7 to i32, !dbg !179
  store i32 %conv, i32* %recvResult, align 4, !dbg !180
  %5 = load i32, i32* %recvResult, align 4, !dbg !181
  %cmp8 = icmp eq i32 %5, -1, !dbg !183
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !184

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !185
  %cmp10 = icmp eq i32 %6, 0, !dbg !186
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !187

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !188

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !190
  %idxprom = sext i32 %7 to i64, !dbg !191
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !191
  store i8 0, i8* %arrayidx, align 1, !dbg !192
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !193
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !194
  store i32 %call15, i32* %data, align 4, !dbg !195
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !197
  %cmp16 = icmp ne i32 %8, -1, !dbg !199
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !200

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !201
  %call19 = call i32 @close(i32 %9), !dbg !203
  br label %if.end20, !dbg !204

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !205
  store i32 %10, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData, align 4, !dbg !206
  call void @badSink(), !dbg !207
  ret void, !dbg !208
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
define dso_local void @goodG2BSink() #0 !dbg !209 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData, align 4, !dbg !212
  store i32 %0, i32* %data, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %i, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !216, metadata !DIExpression()), !dbg !217
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !217
  %2 = load i32, i32* %data, align 4, !dbg !218
  %cmp = icmp sge i32 %2, 0, !dbg !220
  br i1 %cmp, label %if.then, label %if.else, !dbg !221

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !222
  %idxprom = sext i32 %3 to i64, !dbg !224
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !224
  store i32 1, i32* %arrayidx, align 4, !dbg !225
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !229
  %cmp1 = icmp slt i32 %4, 10, !dbg !231
  br i1 %cmp1, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !233
  %idxprom2 = sext i32 %5 to i64, !dbg !235
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !235
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !235
  call void @printIntLine(i32 %6), !dbg !236
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !238
  %inc = add nsw i32 %7, 1, !dbg !238
  store i32 %inc, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !242

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !243
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !246 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 -1, i32* %data, align 4, !dbg !249
  store i32 7, i32* %data, align 4, !dbg !250
  %0 = load i32, i32* %data, align 4, !dbg !251
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData, align 4, !dbg !252
  call void @goodG2BSink(), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !255 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData, align 4, !dbg !258
  store i32 %0, i32* %data, align 4, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %i, metadata !259, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !262, metadata !DIExpression()), !dbg !263
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !263
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !263
  %2 = load i32, i32* %data, align 4, !dbg !264
  %cmp = icmp sge i32 %2, 0, !dbg !266
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !267

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !268
  %cmp1 = icmp slt i32 %3, 10, !dbg !269
  br i1 %cmp1, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !271
  %idxprom = sext i32 %4 to i64, !dbg !273
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !273
  store i32 1, i32* %arrayidx, align 4, !dbg !274
  store i32 0, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !277

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !278
  %cmp2 = icmp slt i32 %5, 10, !dbg !280
  br i1 %cmp2, label %for.body, label %for.end, !dbg !281

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !282
  %idxprom3 = sext i32 %6 to i64, !dbg !284
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !284
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !284
  call void @printIntLine(i32 %7), !dbg !285
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !287
  %inc = add nsw i32 %8, 1, !dbg !287
  store i32 %inc, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !288, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !291

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !292
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !295 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !296, metadata !DIExpression()), !dbg !297
  store i32 -1, i32* %data, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 -1, i32* %connectSocket, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !306, metadata !DIExpression()), !dbg !307
  br label %do.body, !dbg !308

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !309
  store i32 %call, i32* %connectSocket, align 4, !dbg !311
  %0 = load i32, i32* %connectSocket, align 4, !dbg !312
  %cmp = icmp eq i32 %0, -1, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !316

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !318
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !318
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !319
  store i16 2, i16* %sin_family, align 4, !dbg !320
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !321
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !322
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !323
  store i32 %call1, i32* %s_addr, align 4, !dbg !324
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !325
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !326
  store i16 %call2, i16* %sin_port, align 2, !dbg !327
  %2 = load i32, i32* %connectSocket, align 4, !dbg !328
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !330
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !331
  %cmp4 = icmp eq i32 %call3, -1, !dbg !332
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !333

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !334

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !336
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !337
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !338
  %conv = trunc i64 %call7 to i32, !dbg !338
  store i32 %conv, i32* %recvResult, align 4, !dbg !339
  %5 = load i32, i32* %recvResult, align 4, !dbg !340
  %cmp8 = icmp eq i32 %5, -1, !dbg !342
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !343

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !344
  %cmp10 = icmp eq i32 %6, 0, !dbg !345
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !346

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !347

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !349
  %idxprom = sext i32 %7 to i64, !dbg !350
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !350
  store i8 0, i8* %arrayidx, align 1, !dbg !351
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !352
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !353
  store i32 %call15, i32* %data, align 4, !dbg !354
  br label %do.end, !dbg !355

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !356
  %cmp16 = icmp ne i32 %8, -1, !dbg !358
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !359

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !360
  %call19 = call i32 @close(i32 %9), !dbg !362
  br label %if.end20, !dbg !363

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !364
  store i32 %10, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData, align 4, !dbg !365
  call void @goodB2GSink(), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_good() #0 !dbg !368 {
entry:
  call void @goodG2B(), !dbg !369
  call void @goodB2G(), !dbg !370
  ret void, !dbg !371
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_badData", scope: !2, file: !3, line: 43, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_544/source_code")
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
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !50, line: 178, size: 128, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!51 = !{!52, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !49, file: !50, line: 180, baseType: !53, size: 16)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !54, line: 28, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !49, file: !50, line: 181, baseType: !57, size: 112, offset: 16)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 112, elements: !59)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = !{!0, !62, !65}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodG2BData", scope: !2, file: !3, line: 44, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_goodB2GData", scope: !2, file: !3, line: 45, type: !64, isLocal: false, isDefinition: true)
!67 = !{i32 7, !"Dwarf Version", i32 4}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{!"clang version 12.0.0"}
!71 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 49, type: !72, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null}
!74 = !{}
!75 = !DILocalVariable(name: "data", scope: !71, file: !3, line: 51, type: !64)
!76 = !DILocation(line: 51, column: 9, scope: !71)
!77 = !DILocation(line: 51, column: 16, scope: !71)
!78 = !DILocalVariable(name: "i", scope: !79, file: !3, line: 53, type: !64)
!79 = distinct !DILexicalBlock(scope: !71, file: !3, line: 52, column: 5)
!80 = !DILocation(line: 53, column: 13, scope: !79)
!81 = !DILocalVariable(name: "buffer", scope: !79, file: !3, line: 54, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 10)
!85 = !DILocation(line: 54, column: 13, scope: !79)
!86 = !DILocation(line: 57, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !3, line: 57, column: 13)
!88 = !DILocation(line: 57, column: 18, scope: !87)
!89 = !DILocation(line: 57, column: 13, scope: !79)
!90 = !DILocation(line: 59, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 58, column: 9)
!92 = !DILocation(line: 59, column: 13, scope: !91)
!93 = !DILocation(line: 59, column: 26, scope: !91)
!94 = !DILocation(line: 61, column: 19, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !3, line: 61, column: 13)
!96 = !DILocation(line: 61, column: 17, scope: !95)
!97 = !DILocation(line: 61, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !3, line: 61, column: 13)
!99 = !DILocation(line: 61, column: 26, scope: !98)
!100 = !DILocation(line: 61, column: 13, scope: !95)
!101 = !DILocation(line: 63, column: 37, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 62, column: 13)
!103 = !DILocation(line: 63, column: 30, scope: !102)
!104 = !DILocation(line: 63, column: 17, scope: !102)
!105 = !DILocation(line: 64, column: 13, scope: !102)
!106 = !DILocation(line: 61, column: 33, scope: !98)
!107 = !DILocation(line: 61, column: 13, scope: !98)
!108 = distinct !{!108, !100, !109, !110}
!109 = !DILocation(line: 64, column: 13, scope: !95)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 65, column: 9, scope: !91)
!112 = !DILocation(line: 68, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !87, file: !3, line: 67, column: 9)
!114 = !DILocation(line: 71, column: 1, scope: !71)
!115 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_bad", scope: !3, file: !3, line: 73, type: !72, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!116 = !DILocalVariable(name: "data", scope: !115, file: !3, line: 75, type: !64)
!117 = !DILocation(line: 75, column: 9, scope: !115)
!118 = !DILocation(line: 77, column: 10, scope: !115)
!119 = !DILocalVariable(name: "recvResult", scope: !120, file: !3, line: 83, type: !64)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 78, column: 5)
!121 = !DILocation(line: 83, column: 13, scope: !120)
!122 = !DILocalVariable(name: "service", scope: !120, file: !3, line: 84, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !124)
!124 = !{!125, !126, !132, !139}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !123, file: !19, line: 240, baseType: !53, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !123, file: !19, line: 241, baseType: !127, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 25, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 40, baseType: !55)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !123, file: !19, line: 242, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !133, file: !19, line: 33, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 26, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !131, line: 42, baseType: !7)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !123, file: !19, line: 245, baseType: !140, size: 64, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !142)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DILocation(line: 84, column: 28, scope: !120)
!145 = !DILocalVariable(name: "connectSocket", scope: !120, file: !3, line: 85, type: !64)
!146 = !DILocation(line: 85, column: 16, scope: !120)
!147 = !DILocalVariable(name: "inputBuffer", scope: !120, file: !3, line: 86, type: !57)
!148 = !DILocation(line: 86, column: 14, scope: !120)
!149 = !DILocation(line: 87, column: 9, scope: !120)
!150 = !DILocation(line: 97, column: 29, scope: !151)
!151 = distinct !DILexicalBlock(scope: !120, file: !3, line: 88, column: 9)
!152 = !DILocation(line: 97, column: 27, scope: !151)
!153 = !DILocation(line: 98, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 98, column: 17)
!155 = !DILocation(line: 98, column: 31, scope: !154)
!156 = !DILocation(line: 98, column: 17, scope: !151)
!157 = !DILocation(line: 100, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 99, column: 13)
!159 = !DILocation(line: 102, column: 13, scope: !151)
!160 = !DILocation(line: 103, column: 21, scope: !151)
!161 = !DILocation(line: 103, column: 32, scope: !151)
!162 = !DILocation(line: 104, column: 39, scope: !151)
!163 = !DILocation(line: 104, column: 21, scope: !151)
!164 = !DILocation(line: 104, column: 30, scope: !151)
!165 = !DILocation(line: 104, column: 37, scope: !151)
!166 = !DILocation(line: 105, column: 32, scope: !151)
!167 = !DILocation(line: 105, column: 21, scope: !151)
!168 = !DILocation(line: 105, column: 30, scope: !151)
!169 = !DILocation(line: 106, column: 25, scope: !170)
!170 = distinct !DILexicalBlock(scope: !151, file: !3, line: 106, column: 17)
!171 = !DILocation(line: 106, column: 40, scope: !170)
!172 = !DILocation(line: 106, column: 17, scope: !170)
!173 = !DILocation(line: 106, column: 85, scope: !170)
!174 = !DILocation(line: 106, column: 17, scope: !151)
!175 = !DILocation(line: 108, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 107, column: 13)
!177 = !DILocation(line: 112, column: 31, scope: !151)
!178 = !DILocation(line: 112, column: 46, scope: !151)
!179 = !DILocation(line: 112, column: 26, scope: !151)
!180 = !DILocation(line: 112, column: 24, scope: !151)
!181 = !DILocation(line: 113, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !151, file: !3, line: 113, column: 17)
!183 = !DILocation(line: 113, column: 28, scope: !182)
!184 = !DILocation(line: 113, column: 44, scope: !182)
!185 = !DILocation(line: 113, column: 47, scope: !182)
!186 = !DILocation(line: 113, column: 58, scope: !182)
!187 = !DILocation(line: 113, column: 17, scope: !151)
!188 = !DILocation(line: 115, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !3, line: 114, column: 13)
!190 = !DILocation(line: 118, column: 25, scope: !151)
!191 = !DILocation(line: 118, column: 13, scope: !151)
!192 = !DILocation(line: 118, column: 37, scope: !151)
!193 = !DILocation(line: 120, column: 25, scope: !151)
!194 = !DILocation(line: 120, column: 20, scope: !151)
!195 = !DILocation(line: 120, column: 18, scope: !151)
!196 = !DILocation(line: 121, column: 9, scope: !151)
!197 = !DILocation(line: 123, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !120, file: !3, line: 123, column: 13)
!199 = !DILocation(line: 123, column: 27, scope: !198)
!200 = !DILocation(line: 123, column: 13, scope: !120)
!201 = !DILocation(line: 125, column: 26, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 124, column: 9)
!203 = !DILocation(line: 125, column: 13, scope: !202)
!204 = !DILocation(line: 126, column: 9, scope: !202)
!205 = !DILocation(line: 134, column: 76, scope: !115)
!206 = !DILocation(line: 134, column: 74, scope: !115)
!207 = !DILocation(line: 135, column: 5, scope: !115)
!208 = !DILocation(line: 136, column: 1, scope: !115)
!209 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 143, type: !72, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!210 = !DILocalVariable(name: "data", scope: !209, file: !3, line: 145, type: !64)
!211 = !DILocation(line: 145, column: 9, scope: !209)
!212 = !DILocation(line: 145, column: 16, scope: !209)
!213 = !DILocalVariable(name: "i", scope: !214, file: !3, line: 147, type: !64)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 146, column: 5)
!215 = !DILocation(line: 147, column: 13, scope: !214)
!216 = !DILocalVariable(name: "buffer", scope: !214, file: !3, line: 148, type: !82)
!217 = !DILocation(line: 148, column: 13, scope: !214)
!218 = !DILocation(line: 151, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 151, column: 13)
!220 = !DILocation(line: 151, column: 18, scope: !219)
!221 = !DILocation(line: 151, column: 13, scope: !214)
!222 = !DILocation(line: 153, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 152, column: 9)
!224 = !DILocation(line: 153, column: 13, scope: !223)
!225 = !DILocation(line: 153, column: 26, scope: !223)
!226 = !DILocation(line: 155, column: 19, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 155, column: 13)
!228 = !DILocation(line: 155, column: 17, scope: !227)
!229 = !DILocation(line: 155, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 155, column: 13)
!231 = !DILocation(line: 155, column: 26, scope: !230)
!232 = !DILocation(line: 155, column: 13, scope: !227)
!233 = !DILocation(line: 157, column: 37, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 156, column: 13)
!235 = !DILocation(line: 157, column: 30, scope: !234)
!236 = !DILocation(line: 157, column: 17, scope: !234)
!237 = !DILocation(line: 158, column: 13, scope: !234)
!238 = !DILocation(line: 155, column: 33, scope: !230)
!239 = !DILocation(line: 155, column: 13, scope: !230)
!240 = distinct !{!240, !232, !241, !110}
!241 = !DILocation(line: 158, column: 13, scope: !227)
!242 = !DILocation(line: 159, column: 9, scope: !223)
!243 = !DILocation(line: 162, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !219, file: !3, line: 161, column: 9)
!245 = !DILocation(line: 165, column: 1, scope: !209)
!246 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 167, type: !72, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 169, type: !64)
!248 = !DILocation(line: 169, column: 9, scope: !246)
!249 = !DILocation(line: 171, column: 10, scope: !246)
!250 = !DILocation(line: 174, column: 10, scope: !246)
!251 = !DILocation(line: 175, column: 80, scope: !246)
!252 = !DILocation(line: 175, column: 78, scope: !246)
!253 = !DILocation(line: 176, column: 5, scope: !246)
!254 = !DILocation(line: 177, column: 1, scope: !246)
!255 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 180, type: !72, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!256 = !DILocalVariable(name: "data", scope: !255, file: !3, line: 182, type: !64)
!257 = !DILocation(line: 182, column: 9, scope: !255)
!258 = !DILocation(line: 182, column: 16, scope: !255)
!259 = !DILocalVariable(name: "i", scope: !260, file: !3, line: 184, type: !64)
!260 = distinct !DILexicalBlock(scope: !255, file: !3, line: 183, column: 5)
!261 = !DILocation(line: 184, column: 13, scope: !260)
!262 = !DILocalVariable(name: "buffer", scope: !260, file: !3, line: 185, type: !82)
!263 = !DILocation(line: 185, column: 13, scope: !260)
!264 = !DILocation(line: 187, column: 13, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !3, line: 187, column: 13)
!266 = !DILocation(line: 187, column: 18, scope: !265)
!267 = !DILocation(line: 187, column: 23, scope: !265)
!268 = !DILocation(line: 187, column: 26, scope: !265)
!269 = !DILocation(line: 187, column: 31, scope: !265)
!270 = !DILocation(line: 187, column: 13, scope: !260)
!271 = !DILocation(line: 189, column: 20, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 188, column: 9)
!273 = !DILocation(line: 189, column: 13, scope: !272)
!274 = !DILocation(line: 189, column: 26, scope: !272)
!275 = !DILocation(line: 191, column: 19, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 191, column: 13)
!277 = !DILocation(line: 191, column: 17, scope: !276)
!278 = !DILocation(line: 191, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 191, column: 13)
!280 = !DILocation(line: 191, column: 26, scope: !279)
!281 = !DILocation(line: 191, column: 13, scope: !276)
!282 = !DILocation(line: 193, column: 37, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 192, column: 13)
!284 = !DILocation(line: 193, column: 30, scope: !283)
!285 = !DILocation(line: 193, column: 17, scope: !283)
!286 = !DILocation(line: 194, column: 13, scope: !283)
!287 = !DILocation(line: 191, column: 33, scope: !279)
!288 = !DILocation(line: 191, column: 13, scope: !279)
!289 = distinct !{!289, !281, !290, !110}
!290 = !DILocation(line: 194, column: 13, scope: !276)
!291 = !DILocation(line: 195, column: 9, scope: !272)
!292 = !DILocation(line: 198, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !265, file: !3, line: 197, column: 9)
!294 = !DILocation(line: 201, column: 1, scope: !255)
!295 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 203, type: !72, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!296 = !DILocalVariable(name: "data", scope: !295, file: !3, line: 205, type: !64)
!297 = !DILocation(line: 205, column: 9, scope: !295)
!298 = !DILocation(line: 207, column: 10, scope: !295)
!299 = !DILocalVariable(name: "recvResult", scope: !300, file: !3, line: 213, type: !64)
!300 = distinct !DILexicalBlock(scope: !295, file: !3, line: 208, column: 5)
!301 = !DILocation(line: 213, column: 13, scope: !300)
!302 = !DILocalVariable(name: "service", scope: !300, file: !3, line: 214, type: !123)
!303 = !DILocation(line: 214, column: 28, scope: !300)
!304 = !DILocalVariable(name: "connectSocket", scope: !300, file: !3, line: 215, type: !64)
!305 = !DILocation(line: 215, column: 16, scope: !300)
!306 = !DILocalVariable(name: "inputBuffer", scope: !300, file: !3, line: 216, type: !57)
!307 = !DILocation(line: 216, column: 14, scope: !300)
!308 = !DILocation(line: 217, column: 9, scope: !300)
!309 = !DILocation(line: 227, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !300, file: !3, line: 218, column: 9)
!311 = !DILocation(line: 227, column: 27, scope: !310)
!312 = !DILocation(line: 228, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 228, column: 17)
!314 = !DILocation(line: 228, column: 31, scope: !313)
!315 = !DILocation(line: 228, column: 17, scope: !310)
!316 = !DILocation(line: 230, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 229, column: 13)
!318 = !DILocation(line: 232, column: 13, scope: !310)
!319 = !DILocation(line: 233, column: 21, scope: !310)
!320 = !DILocation(line: 233, column: 32, scope: !310)
!321 = !DILocation(line: 234, column: 39, scope: !310)
!322 = !DILocation(line: 234, column: 21, scope: !310)
!323 = !DILocation(line: 234, column: 30, scope: !310)
!324 = !DILocation(line: 234, column: 37, scope: !310)
!325 = !DILocation(line: 235, column: 32, scope: !310)
!326 = !DILocation(line: 235, column: 21, scope: !310)
!327 = !DILocation(line: 235, column: 30, scope: !310)
!328 = !DILocation(line: 236, column: 25, scope: !329)
!329 = distinct !DILexicalBlock(scope: !310, file: !3, line: 236, column: 17)
!330 = !DILocation(line: 236, column: 40, scope: !329)
!331 = !DILocation(line: 236, column: 17, scope: !329)
!332 = !DILocation(line: 236, column: 85, scope: !329)
!333 = !DILocation(line: 236, column: 17, scope: !310)
!334 = !DILocation(line: 238, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !3, line: 237, column: 13)
!336 = !DILocation(line: 242, column: 31, scope: !310)
!337 = !DILocation(line: 242, column: 46, scope: !310)
!338 = !DILocation(line: 242, column: 26, scope: !310)
!339 = !DILocation(line: 242, column: 24, scope: !310)
!340 = !DILocation(line: 243, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !310, file: !3, line: 243, column: 17)
!342 = !DILocation(line: 243, column: 28, scope: !341)
!343 = !DILocation(line: 243, column: 44, scope: !341)
!344 = !DILocation(line: 243, column: 47, scope: !341)
!345 = !DILocation(line: 243, column: 58, scope: !341)
!346 = !DILocation(line: 243, column: 17, scope: !310)
!347 = !DILocation(line: 245, column: 17, scope: !348)
!348 = distinct !DILexicalBlock(scope: !341, file: !3, line: 244, column: 13)
!349 = !DILocation(line: 248, column: 25, scope: !310)
!350 = !DILocation(line: 248, column: 13, scope: !310)
!351 = !DILocation(line: 248, column: 37, scope: !310)
!352 = !DILocation(line: 250, column: 25, scope: !310)
!353 = !DILocation(line: 250, column: 20, scope: !310)
!354 = !DILocation(line: 250, column: 18, scope: !310)
!355 = !DILocation(line: 251, column: 9, scope: !310)
!356 = !DILocation(line: 253, column: 13, scope: !357)
!357 = distinct !DILexicalBlock(scope: !300, file: !3, line: 253, column: 13)
!358 = !DILocation(line: 253, column: 27, scope: !357)
!359 = !DILocation(line: 253, column: 13, scope: !300)
!360 = !DILocation(line: 255, column: 26, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 254, column: 9)
!362 = !DILocation(line: 255, column: 13, scope: !361)
!363 = !DILocation(line: 256, column: 9, scope: !361)
!364 = !DILocation(line: 264, column: 80, scope: !295)
!365 = !DILocation(line: 264, column: 78, scope: !295)
!366 = !DILocation(line: 265, column: 5, scope: !295)
!367 = !DILocation(line: 266, column: 1, scope: !295)
!368 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_45_good", scope: !3, file: !3, line: 268, type: !72, scopeLine: 269, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!369 = !DILocation(line: 270, column: 5, scope: !368)
!370 = !DILocation(line: 271, column: 5, scope: !368)
!371 = !DILocation(line: 272, column: 1, scope: !368)
