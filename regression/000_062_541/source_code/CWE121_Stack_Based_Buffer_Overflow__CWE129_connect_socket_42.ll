; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @badSource(i32 %data) #0 !dbg !63 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !70, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !73, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 -1, i32* %connectSocket, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  br label %do.body, !dbg !100

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !101
  store i32 %call, i32* %connectSocket, align 4, !dbg !103
  %0 = load i32, i32* %connectSocket, align 4, !dbg !104
  %cmp = icmp eq i32 %0, -1, !dbg !106
  br i1 %cmp, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !108

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !110
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !111
  store i16 2, i16* %sin_family, align 4, !dbg !112
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !113
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !114
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !115
  store i32 %call1, i32* %s_addr, align 4, !dbg !116
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !117
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !118
  store i16 %call2, i16* %sin_port, align 2, !dbg !119
  %2 = load i32, i32* %connectSocket, align 4, !dbg !120
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !122
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !123
  %cmp4 = icmp eq i32 %call3, -1, !dbg !124
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !125

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !126

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !128
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !129
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !130
  %conv = trunc i64 %call7 to i32, !dbg !130
  store i32 %conv, i32* %recvResult, align 4, !dbg !131
  %5 = load i32, i32* %recvResult, align 4, !dbg !132
  %cmp8 = icmp eq i32 %5, -1, !dbg !134
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !135

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !136
  %cmp10 = icmp eq i32 %6, 0, !dbg !137
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !138

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !139

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !141
  %idxprom = sext i32 %7 to i64, !dbg !142
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !142
  store i8 0, i8* %arrayidx, align 1, !dbg !143
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !144
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !145
  store i32 %call15, i32* %data.addr, align 4, !dbg !146
  br label %do.end, !dbg !147

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !148
  %cmp16 = icmp ne i32 %8, -1, !dbg !150
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !151

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !152
  %call19 = call i32 @close(i32 %9), !dbg !154
  br label %if.end20, !dbg !155

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data.addr, align 4, !dbg !156
  ret i32 %10, !dbg !157
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad() #0 !dbg !158 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 -1, i32* %data, align 4, !dbg !163
  %0 = load i32, i32* %data, align 4, !dbg !164
  %call = call i32 @badSource(i32 %0), !dbg !165
  store i32 %call, i32* %data, align 4, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !170, metadata !DIExpression()), !dbg !174
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !174
  %2 = load i32, i32* %data, align 4, !dbg !175
  %cmp = icmp sge i32 %2, 0, !dbg !177
  br i1 %cmp, label %if.then, label %if.else, !dbg !178

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !179
  %idxprom = sext i32 %3 to i64, !dbg !181
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !181
  store i32 1, i32* %arrayidx, align 4, !dbg !182
  store i32 0, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !186
  %cmp1 = icmp slt i32 %4, 10, !dbg !188
  br i1 %cmp1, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !190
  %idxprom2 = sext i32 %5 to i64, !dbg !192
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !192
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !192
  call void @printIntLine(i32 %6), !dbg !193
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !195
  %inc = add nsw i32 %7, 1, !dbg !195
  store i32 %inc, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !196, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !200

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !201
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !203
}

declare dso_local void @printIntLine(i32) #5

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodG2BSource(i32 %data) #0 !dbg !204 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 7, i32* %data.addr, align 4, !dbg !207
  %0 = load i32, i32* %data.addr, align 4, !dbg !208
  ret i32 %0, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !210 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 -1, i32* %data, align 4, !dbg !213
  %0 = load i32, i32* %data, align 4, !dbg !214
  %call = call i32 @goodG2BSource(i32 %0), !dbg !215
  store i32 %call, i32* %data, align 4, !dbg !216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !220, metadata !DIExpression()), !dbg !221
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !221
  %2 = load i32, i32* %data, align 4, !dbg !222
  %cmp = icmp sge i32 %2, 0, !dbg !224
  br i1 %cmp, label %if.then, label %if.else, !dbg !225

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !226
  %idxprom = sext i32 %3 to i64, !dbg !228
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !228
  store i32 1, i32* %arrayidx, align 4, !dbg !229
  store i32 0, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !233
  %cmp1 = icmp slt i32 %4, 10, !dbg !235
  br i1 %cmp1, label %for.body, label %for.end, !dbg !236

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !237
  %idxprom2 = sext i32 %5 to i64, !dbg !239
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !239
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !239
  call void @printIntLine(i32 %6), !dbg !240
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !242
  %inc = add nsw i32 %7, 1, !dbg !242
  store i32 %inc, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !246

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !247
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodB2GSource(i32 %data) #0 !dbg !250 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !258, metadata !DIExpression()), !dbg !259
  store i32 -1, i32* %connectSocket, align 4, !dbg !259
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  br label %do.body, !dbg !262

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !263
  store i32 %call, i32* %connectSocket, align 4, !dbg !265
  %0 = load i32, i32* %connectSocket, align 4, !dbg !266
  %cmp = icmp eq i32 %0, -1, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !270

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !272
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !272
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !273
  store i16 2, i16* %sin_family, align 4, !dbg !274
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !275
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !276
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !277
  store i32 %call1, i32* %s_addr, align 4, !dbg !278
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !279
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !280
  store i16 %call2, i16* %sin_port, align 2, !dbg !281
  %2 = load i32, i32* %connectSocket, align 4, !dbg !282
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !284
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !285
  %cmp4 = icmp eq i32 %call3, -1, !dbg !286
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !287

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !288

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !290
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !291
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !292
  %conv = trunc i64 %call7 to i32, !dbg !292
  store i32 %conv, i32* %recvResult, align 4, !dbg !293
  %5 = load i32, i32* %recvResult, align 4, !dbg !294
  %cmp8 = icmp eq i32 %5, -1, !dbg !296
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp10 = icmp eq i32 %6, 0, !dbg !299
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !300

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !301

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !303
  %idxprom = sext i32 %7 to i64, !dbg !304
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !304
  store i8 0, i8* %arrayidx, align 1, !dbg !305
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !306
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !307
  store i32 %call15, i32* %data.addr, align 4, !dbg !308
  br label %do.end, !dbg !309

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !310
  %cmp16 = icmp ne i32 %8, -1, !dbg !312
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !313

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !314
  %call19 = call i32 @close(i32 %9), !dbg !316
  br label %if.end20, !dbg !317

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data.addr, align 4, !dbg !318
  ret i32 %10, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !320 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !321, metadata !DIExpression()), !dbg !322
  store i32 -1, i32* %data, align 4, !dbg !323
  %0 = load i32, i32* %data, align 4, !dbg !324
  %call = call i32 @goodB2GSource(i32 %0), !dbg !325
  store i32 %call, i32* %data, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata i32* %i, metadata !327, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !330, metadata !DIExpression()), !dbg !331
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !331
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !331
  %2 = load i32, i32* %data, align 4, !dbg !332
  %cmp = icmp sge i32 %2, 0, !dbg !334
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !335

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !336
  %cmp1 = icmp slt i32 %3, 10, !dbg !337
  br i1 %cmp1, label %if.then, label %if.else, !dbg !338

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !339
  %idxprom = sext i32 %4 to i64, !dbg !341
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !341
  store i32 1, i32* %arrayidx, align 4, !dbg !342
  store i32 0, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !346
  %cmp2 = icmp slt i32 %5, 10, !dbg !348
  br i1 %cmp2, label %for.body, label %for.end, !dbg !349

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !350
  %idxprom3 = sext i32 %6 to i64, !dbg !352
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !352
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !352
  call void @printIntLine(i32 %7), !dbg !353
  br label %for.inc, !dbg !354

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !355
  %inc = add nsw i32 %8, 1, !dbg !355
  store i32 %inc, i32* %i, align 4, !dbg !355
  br label %for.cond, !dbg !356, !llvm.loop !357

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !359

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !360
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good() #0 !dbg !363 {
entry:
  call void @goodB2G(), !dbg !364
  call void @goodG2B(), !dbg !365
  ret void, !dbg !366
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_541/source_code")
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
!63 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !63, file: !1, line: 45, type: !66)
!69 = !DILocation(line: 45, column: 19, scope: !63)
!70 = !DILocalVariable(name: "recvResult", scope: !71, file: !1, line: 52, type: !66)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 47, column: 5)
!72 = !DILocation(line: 52, column: 13, scope: !71)
!73 = !DILocalVariable(name: "service", scope: !71, file: !1, line: 53, type: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !75)
!75 = !{!76, !77, !83, !90}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !74, file: !17, line: 240, baseType: !51, size: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !74, file: !17, line: 241, baseType: !78, size: 16, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !80, line: 25, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !82, line: 40, baseType: !53)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !74, file: !17, line: 242, baseType: !84, size: 32, offset: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !84, file: !17, line: 33, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 26, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !82, line: 42, baseType: !5)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !74, file: !17, line: 245, baseType: !91, size: 64, offset: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !93)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DILocation(line: 53, column: 28, scope: !71)
!96 = !DILocalVariable(name: "connectSocket", scope: !71, file: !1, line: 54, type: !66)
!97 = !DILocation(line: 54, column: 16, scope: !71)
!98 = !DILocalVariable(name: "inputBuffer", scope: !71, file: !1, line: 55, type: !55)
!99 = !DILocation(line: 55, column: 14, scope: !71)
!100 = !DILocation(line: 56, column: 9, scope: !71)
!101 = !DILocation(line: 66, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !71, file: !1, line: 57, column: 9)
!103 = !DILocation(line: 66, column: 27, scope: !102)
!104 = !DILocation(line: 67, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 67, column: 17)
!106 = !DILocation(line: 67, column: 31, scope: !105)
!107 = !DILocation(line: 67, column: 17, scope: !102)
!108 = !DILocation(line: 69, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 68, column: 13)
!110 = !DILocation(line: 71, column: 13, scope: !102)
!111 = !DILocation(line: 72, column: 21, scope: !102)
!112 = !DILocation(line: 72, column: 32, scope: !102)
!113 = !DILocation(line: 73, column: 39, scope: !102)
!114 = !DILocation(line: 73, column: 21, scope: !102)
!115 = !DILocation(line: 73, column: 30, scope: !102)
!116 = !DILocation(line: 73, column: 37, scope: !102)
!117 = !DILocation(line: 74, column: 32, scope: !102)
!118 = !DILocation(line: 74, column: 21, scope: !102)
!119 = !DILocation(line: 74, column: 30, scope: !102)
!120 = !DILocation(line: 75, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !102, file: !1, line: 75, column: 17)
!122 = !DILocation(line: 75, column: 40, scope: !121)
!123 = !DILocation(line: 75, column: 17, scope: !121)
!124 = !DILocation(line: 75, column: 85, scope: !121)
!125 = !DILocation(line: 75, column: 17, scope: !102)
!126 = !DILocation(line: 77, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !1, line: 76, column: 13)
!128 = !DILocation(line: 81, column: 31, scope: !102)
!129 = !DILocation(line: 81, column: 46, scope: !102)
!130 = !DILocation(line: 81, column: 26, scope: !102)
!131 = !DILocation(line: 81, column: 24, scope: !102)
!132 = !DILocation(line: 82, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !102, file: !1, line: 82, column: 17)
!134 = !DILocation(line: 82, column: 28, scope: !133)
!135 = !DILocation(line: 82, column: 44, scope: !133)
!136 = !DILocation(line: 82, column: 47, scope: !133)
!137 = !DILocation(line: 82, column: 58, scope: !133)
!138 = !DILocation(line: 82, column: 17, scope: !102)
!139 = !DILocation(line: 84, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 83, column: 13)
!141 = !DILocation(line: 87, column: 25, scope: !102)
!142 = !DILocation(line: 87, column: 13, scope: !102)
!143 = !DILocation(line: 87, column: 37, scope: !102)
!144 = !DILocation(line: 89, column: 25, scope: !102)
!145 = !DILocation(line: 89, column: 20, scope: !102)
!146 = !DILocation(line: 89, column: 18, scope: !102)
!147 = !DILocation(line: 90, column: 9, scope: !102)
!148 = !DILocation(line: 92, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !71, file: !1, line: 92, column: 13)
!150 = !DILocation(line: 92, column: 27, scope: !149)
!151 = !DILocation(line: 92, column: 13, scope: !71)
!152 = !DILocation(line: 94, column: 26, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 93, column: 9)
!154 = !DILocation(line: 94, column: 13, scope: !153)
!155 = !DILocation(line: 95, column: 9, scope: !153)
!156 = !DILocation(line: 103, column: 12, scope: !63)
!157 = !DILocation(line: 103, column: 5, scope: !63)
!158 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad", scope: !1, file: !1, line: 106, type: !159, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!159 = !DISubroutineType(types: !160)
!160 = !{null}
!161 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 108, type: !66)
!162 = !DILocation(line: 108, column: 9, scope: !158)
!163 = !DILocation(line: 110, column: 10, scope: !158)
!164 = !DILocation(line: 111, column: 22, scope: !158)
!165 = !DILocation(line: 111, column: 12, scope: !158)
!166 = !DILocation(line: 111, column: 10, scope: !158)
!167 = !DILocalVariable(name: "i", scope: !168, file: !1, line: 113, type: !66)
!168 = distinct !DILexicalBlock(scope: !158, file: !1, line: 112, column: 5)
!169 = !DILocation(line: 113, column: 13, scope: !168)
!170 = !DILocalVariable(name: "buffer", scope: !168, file: !1, line: 114, type: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DILocation(line: 114, column: 13, scope: !168)
!175 = !DILocation(line: 117, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !168, file: !1, line: 117, column: 13)
!177 = !DILocation(line: 117, column: 18, scope: !176)
!178 = !DILocation(line: 117, column: 13, scope: !168)
!179 = !DILocation(line: 119, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 118, column: 9)
!181 = !DILocation(line: 119, column: 13, scope: !180)
!182 = !DILocation(line: 119, column: 26, scope: !180)
!183 = !DILocation(line: 121, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 121, column: 13)
!185 = !DILocation(line: 121, column: 17, scope: !184)
!186 = !DILocation(line: 121, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 121, column: 13)
!188 = !DILocation(line: 121, column: 26, scope: !187)
!189 = !DILocation(line: 121, column: 13, scope: !184)
!190 = !DILocation(line: 123, column: 37, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 122, column: 13)
!192 = !DILocation(line: 123, column: 30, scope: !191)
!193 = !DILocation(line: 123, column: 17, scope: !191)
!194 = !DILocation(line: 124, column: 13, scope: !191)
!195 = !DILocation(line: 121, column: 33, scope: !187)
!196 = !DILocation(line: 121, column: 13, scope: !187)
!197 = distinct !{!197, !189, !198, !199}
!198 = !DILocation(line: 124, column: 13, scope: !184)
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 125, column: 9, scope: !180)
!201 = !DILocation(line: 128, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !176, file: !1, line: 127, column: 9)
!203 = !DILocation(line: 131, column: 1, scope: !158)
!204 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 138, type: !64, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!205 = !DILocalVariable(name: "data", arg: 1, scope: !204, file: !1, line: 138, type: !66)
!206 = !DILocation(line: 138, column: 23, scope: !204)
!207 = !DILocation(line: 142, column: 10, scope: !204)
!208 = !DILocation(line: 143, column: 12, scope: !204)
!209 = !DILocation(line: 143, column: 5, scope: !204)
!210 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 146, type: !159, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!211 = !DILocalVariable(name: "data", scope: !210, file: !1, line: 148, type: !66)
!212 = !DILocation(line: 148, column: 9, scope: !210)
!213 = !DILocation(line: 150, column: 10, scope: !210)
!214 = !DILocation(line: 151, column: 26, scope: !210)
!215 = !DILocation(line: 151, column: 12, scope: !210)
!216 = !DILocation(line: 151, column: 10, scope: !210)
!217 = !DILocalVariable(name: "i", scope: !218, file: !1, line: 153, type: !66)
!218 = distinct !DILexicalBlock(scope: !210, file: !1, line: 152, column: 5)
!219 = !DILocation(line: 153, column: 13, scope: !218)
!220 = !DILocalVariable(name: "buffer", scope: !218, file: !1, line: 154, type: !171)
!221 = !DILocation(line: 154, column: 13, scope: !218)
!222 = !DILocation(line: 157, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !1, line: 157, column: 13)
!224 = !DILocation(line: 157, column: 18, scope: !223)
!225 = !DILocation(line: 157, column: 13, scope: !218)
!226 = !DILocation(line: 159, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 158, column: 9)
!228 = !DILocation(line: 159, column: 13, scope: !227)
!229 = !DILocation(line: 159, column: 26, scope: !227)
!230 = !DILocation(line: 161, column: 19, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 161, column: 13)
!232 = !DILocation(line: 161, column: 17, scope: !231)
!233 = !DILocation(line: 161, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !1, line: 161, column: 13)
!235 = !DILocation(line: 161, column: 26, scope: !234)
!236 = !DILocation(line: 161, column: 13, scope: !231)
!237 = !DILocation(line: 163, column: 37, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 162, column: 13)
!239 = !DILocation(line: 163, column: 30, scope: !238)
!240 = !DILocation(line: 163, column: 17, scope: !238)
!241 = !DILocation(line: 164, column: 13, scope: !238)
!242 = !DILocation(line: 161, column: 33, scope: !234)
!243 = !DILocation(line: 161, column: 13, scope: !234)
!244 = distinct !{!244, !236, !245, !199}
!245 = !DILocation(line: 164, column: 13, scope: !231)
!246 = !DILocation(line: 165, column: 9, scope: !227)
!247 = !DILocation(line: 168, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !223, file: !1, line: 167, column: 9)
!249 = !DILocation(line: 171, column: 1, scope: !210)
!250 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 174, type: !64, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!251 = !DILocalVariable(name: "data", arg: 1, scope: !250, file: !1, line: 174, type: !66)
!252 = !DILocation(line: 174, column: 23, scope: !250)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !1, line: 181, type: !66)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 176, column: 5)
!255 = !DILocation(line: 181, column: 13, scope: !254)
!256 = !DILocalVariable(name: "service", scope: !254, file: !1, line: 182, type: !74)
!257 = !DILocation(line: 182, column: 28, scope: !254)
!258 = !DILocalVariable(name: "connectSocket", scope: !254, file: !1, line: 183, type: !66)
!259 = !DILocation(line: 183, column: 16, scope: !254)
!260 = !DILocalVariable(name: "inputBuffer", scope: !254, file: !1, line: 184, type: !55)
!261 = !DILocation(line: 184, column: 14, scope: !254)
!262 = !DILocation(line: 185, column: 9, scope: !254)
!263 = !DILocation(line: 195, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !254, file: !1, line: 186, column: 9)
!265 = !DILocation(line: 195, column: 27, scope: !264)
!266 = !DILocation(line: 196, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 196, column: 17)
!268 = !DILocation(line: 196, column: 31, scope: !267)
!269 = !DILocation(line: 196, column: 17, scope: !264)
!270 = !DILocation(line: 198, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 197, column: 13)
!272 = !DILocation(line: 200, column: 13, scope: !264)
!273 = !DILocation(line: 201, column: 21, scope: !264)
!274 = !DILocation(line: 201, column: 32, scope: !264)
!275 = !DILocation(line: 202, column: 39, scope: !264)
!276 = !DILocation(line: 202, column: 21, scope: !264)
!277 = !DILocation(line: 202, column: 30, scope: !264)
!278 = !DILocation(line: 202, column: 37, scope: !264)
!279 = !DILocation(line: 203, column: 32, scope: !264)
!280 = !DILocation(line: 203, column: 21, scope: !264)
!281 = !DILocation(line: 203, column: 30, scope: !264)
!282 = !DILocation(line: 204, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !264, file: !1, line: 204, column: 17)
!284 = !DILocation(line: 204, column: 40, scope: !283)
!285 = !DILocation(line: 204, column: 17, scope: !283)
!286 = !DILocation(line: 204, column: 85, scope: !283)
!287 = !DILocation(line: 204, column: 17, scope: !264)
!288 = !DILocation(line: 206, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !1, line: 205, column: 13)
!290 = !DILocation(line: 210, column: 31, scope: !264)
!291 = !DILocation(line: 210, column: 46, scope: !264)
!292 = !DILocation(line: 210, column: 26, scope: !264)
!293 = !DILocation(line: 210, column: 24, scope: !264)
!294 = !DILocation(line: 211, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !264, file: !1, line: 211, column: 17)
!296 = !DILocation(line: 211, column: 28, scope: !295)
!297 = !DILocation(line: 211, column: 44, scope: !295)
!298 = !DILocation(line: 211, column: 47, scope: !295)
!299 = !DILocation(line: 211, column: 58, scope: !295)
!300 = !DILocation(line: 211, column: 17, scope: !264)
!301 = !DILocation(line: 213, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !1, line: 212, column: 13)
!303 = !DILocation(line: 216, column: 25, scope: !264)
!304 = !DILocation(line: 216, column: 13, scope: !264)
!305 = !DILocation(line: 216, column: 37, scope: !264)
!306 = !DILocation(line: 218, column: 25, scope: !264)
!307 = !DILocation(line: 218, column: 20, scope: !264)
!308 = !DILocation(line: 218, column: 18, scope: !264)
!309 = !DILocation(line: 219, column: 9, scope: !264)
!310 = !DILocation(line: 221, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !254, file: !1, line: 221, column: 13)
!312 = !DILocation(line: 221, column: 27, scope: !311)
!313 = !DILocation(line: 221, column: 13, scope: !254)
!314 = !DILocation(line: 223, column: 26, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 222, column: 9)
!316 = !DILocation(line: 223, column: 13, scope: !315)
!317 = !DILocation(line: 224, column: 9, scope: !315)
!318 = !DILocation(line: 232, column: 12, scope: !250)
!319 = !DILocation(line: 232, column: 5, scope: !250)
!320 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 235, type: !159, scopeLine: 236, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!321 = !DILocalVariable(name: "data", scope: !320, file: !1, line: 237, type: !66)
!322 = !DILocation(line: 237, column: 9, scope: !320)
!323 = !DILocation(line: 239, column: 10, scope: !320)
!324 = !DILocation(line: 240, column: 26, scope: !320)
!325 = !DILocation(line: 240, column: 12, scope: !320)
!326 = !DILocation(line: 240, column: 10, scope: !320)
!327 = !DILocalVariable(name: "i", scope: !328, file: !1, line: 242, type: !66)
!328 = distinct !DILexicalBlock(scope: !320, file: !1, line: 241, column: 5)
!329 = !DILocation(line: 242, column: 13, scope: !328)
!330 = !DILocalVariable(name: "buffer", scope: !328, file: !1, line: 243, type: !171)
!331 = !DILocation(line: 243, column: 13, scope: !328)
!332 = !DILocation(line: 245, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 245, column: 13)
!334 = !DILocation(line: 245, column: 18, scope: !333)
!335 = !DILocation(line: 245, column: 23, scope: !333)
!336 = !DILocation(line: 245, column: 26, scope: !333)
!337 = !DILocation(line: 245, column: 31, scope: !333)
!338 = !DILocation(line: 245, column: 13, scope: !328)
!339 = !DILocation(line: 247, column: 20, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !1, line: 246, column: 9)
!341 = !DILocation(line: 247, column: 13, scope: !340)
!342 = !DILocation(line: 247, column: 26, scope: !340)
!343 = !DILocation(line: 249, column: 19, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 249, column: 13)
!345 = !DILocation(line: 249, column: 17, scope: !344)
!346 = !DILocation(line: 249, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 249, column: 13)
!348 = !DILocation(line: 249, column: 26, scope: !347)
!349 = !DILocation(line: 249, column: 13, scope: !344)
!350 = !DILocation(line: 251, column: 37, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 250, column: 13)
!352 = !DILocation(line: 251, column: 30, scope: !351)
!353 = !DILocation(line: 251, column: 17, scope: !351)
!354 = !DILocation(line: 252, column: 13, scope: !351)
!355 = !DILocation(line: 249, column: 33, scope: !347)
!356 = !DILocation(line: 249, column: 13, scope: !347)
!357 = distinct !{!357, !349, !358, !199}
!358 = !DILocation(line: 252, column: 13, scope: !344)
!359 = !DILocation(line: 253, column: 9, scope: !340)
!360 = !DILocation(line: 256, column: 13, scope: !361)
!361 = distinct !DILexicalBlock(scope: !333, file: !1, line: 255, column: 9)
!362 = !DILocation(line: 259, column: 1, scope: !320)
!363 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good", scope: !1, file: !1, line: 261, type: !159, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!364 = !DILocation(line: 263, column: 5, scope: !363)
!365 = !DILocation(line: 264, column: 5, scope: !363)
!366 = !DILocation(line: 265, column: 1, scope: !363)
