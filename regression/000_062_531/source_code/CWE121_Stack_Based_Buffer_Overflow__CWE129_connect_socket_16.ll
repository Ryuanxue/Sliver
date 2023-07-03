; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad() #0 !dbg !63 {
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
  br label %while.body, !dbg !71

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !72, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !76, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 -1, i32* %connectSocket, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  br label %do.body, !dbg !103

do.body:                                          ; preds = %while.body
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
  br label %while.end, !dbg !159

while.end:                                        ; preds = %if.end20
  br label %while.body21, !dbg !160

while.body21:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !165, metadata !DIExpression()), !dbg !169
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !169
  %11 = load i32, i32* %data, align 4, !dbg !170
  %cmp22 = icmp sge i32 %11, 0, !dbg !172
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !173

if.then24:                                        ; preds = %while.body21
  %12 = load i32, i32* %data, align 4, !dbg !174
  %idxprom25 = sext i32 %12 to i64, !dbg !176
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !176
  store i32 1, i32* %arrayidx26, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !181
  %cmp27 = icmp slt i32 %13, 10, !dbg !183
  br i1 %cmp27, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !185
  %idxprom29 = sext i32 %14 to i64, !dbg !187
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !187
  %15 = load i32, i32* %arrayidx30, align 4, !dbg !187
  call void @printIntLine(i32 %15), !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !190
  %inc = add nsw i32 %16, 1, !dbg !190
  store i32 %inc, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !195

if.else:                                          ; preds = %while.body21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !196
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %while.end32, !dbg !198

while.end32:                                      ; preds = %if.end31
  ret void, !dbg !199
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
define dso_local void @goodB2G() #0 !dbg !200 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 -1, i32* %data, align 4, !dbg !203
  br label %while.body, !dbg !204

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !205, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 -1, i32* %connectSocket, align 4, !dbg !212
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !213, metadata !DIExpression()), !dbg !214
  br label %do.body, !dbg !215

do.body:                                          ; preds = %while.body
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !216
  store i32 %call, i32* %connectSocket, align 4, !dbg !218
  %0 = load i32, i32* %connectSocket, align 4, !dbg !219
  %cmp = icmp eq i32 %0, -1, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !223

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !225
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !225
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !226
  store i16 2, i16* %sin_family, align 4, !dbg !227
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !228
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !229
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !230
  store i32 %call1, i32* %s_addr, align 4, !dbg !231
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !232
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !233
  store i16 %call2, i16* %sin_port, align 2, !dbg !234
  %2 = load i32, i32* %connectSocket, align 4, !dbg !235
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !237
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !238
  %cmp4 = icmp eq i32 %call3, -1, !dbg !239
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !240

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !241

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !243
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !244
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !245
  %conv = trunc i64 %call7 to i32, !dbg !245
  store i32 %conv, i32* %recvResult, align 4, !dbg !246
  %5 = load i32, i32* %recvResult, align 4, !dbg !247
  %cmp8 = icmp eq i32 %5, -1, !dbg !249
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !250

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !251
  %cmp10 = icmp eq i32 %6, 0, !dbg !252
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !253

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !254

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !256
  %idxprom = sext i32 %7 to i64, !dbg !257
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !257
  store i8 0, i8* %arrayidx, align 1, !dbg !258
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !259
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !260
  store i32 %call15, i32* %data, align 4, !dbg !261
  br label %do.end, !dbg !262

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !263
  %cmp16 = icmp ne i32 %8, -1, !dbg !265
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !266

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !267
  %call19 = call i32 @close(i32 %9), !dbg !269
  br label %if.end20, !dbg !270

if.end20:                                         ; preds = %if.then18, %do.end
  br label %while.end, !dbg !271

while.end:                                        ; preds = %if.end20
  br label %while.body21, !dbg !272

while.body21:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !277, metadata !DIExpression()), !dbg !278
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !278
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !278
  %11 = load i32, i32* %data, align 4, !dbg !279
  %cmp22 = icmp sge i32 %11, 0, !dbg !281
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !282

land.lhs.true:                                    ; preds = %while.body21
  %12 = load i32, i32* %data, align 4, !dbg !283
  %cmp24 = icmp slt i32 %12, 10, !dbg !284
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !285

if.then26:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !286
  %idxprom27 = sext i32 %13 to i64, !dbg !288
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !288
  store i32 1, i32* %arrayidx28, align 4, !dbg !289
  store i32 0, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !292

for.cond:                                         ; preds = %for.inc, %if.then26
  %14 = load i32, i32* %i, align 4, !dbg !293
  %cmp29 = icmp slt i32 %14, 10, !dbg !295
  br i1 %cmp29, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !297
  %idxprom31 = sext i32 %15 to i64, !dbg !299
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !299
  %16 = load i32, i32* %arrayidx32, align 4, !dbg !299
  call void @printIntLine(i32 %16), !dbg !300
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !302
  %inc = add nsw i32 %17, 1, !dbg !302
  store i32 %inc, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !306

if.else:                                          ; preds = %land.lhs.true, %while.body21
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !307
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  br label %while.end34, !dbg !309

while.end34:                                      ; preds = %if.end33
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !311 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !312, metadata !DIExpression()), !dbg !313
  store i32 -1, i32* %data, align 4, !dbg !314
  br label %while.body, !dbg !315

while.body:                                       ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !316
  br label %while.end, !dbg !318

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !319

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !320, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !325
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !325
  %1 = load i32, i32* %data, align 4, !dbg !326
  %cmp = icmp sge i32 %1, 0, !dbg !328
  br i1 %cmp, label %if.then, label %if.else, !dbg !329

if.then:                                          ; preds = %while.body1
  %2 = load i32, i32* %data, align 4, !dbg !330
  %idxprom = sext i32 %2 to i64, !dbg !332
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !332
  store i32 1, i32* %arrayidx, align 4, !dbg !333
  store i32 0, i32* %i, align 4, !dbg !334
  br label %for.cond, !dbg !336

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !337
  %cmp2 = icmp slt i32 %3, 10, !dbg !339
  br i1 %cmp2, label %for.body, label %for.end, !dbg !340

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !341
  %idxprom3 = sext i32 %4 to i64, !dbg !343
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !343
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !343
  call void @printIntLine(i32 %5), !dbg !344
  br label %for.inc, !dbg !345

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !346
  %inc = add nsw i32 %6, 1, !dbg !346
  store i32 %inc, i32* %i, align 4, !dbg !346
  br label %for.cond, !dbg !347, !llvm.loop !348

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !350

if.else:                                          ; preds = %while.body1
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !351
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %while.end5, !dbg !353

while.end5:                                       ; preds = %if.end
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_good() #0 !dbg !355 {
entry:
  call void @goodB2G(), !dbg !356
  call void @goodG2B(), !dbg !357
  ret void, !dbg !358
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_531/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocation(line: 50, column: 5, scope: !63)
!72 = !DILocalVariable(name: "recvResult", scope: !73, file: !1, line: 57, type: !68)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 52, column: 9)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 51, column: 5)
!75 = !DILocation(line: 57, column: 17, scope: !73)
!76 = !DILocalVariable(name: "service", scope: !73, file: !1, line: 58, type: !77)
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
!98 = !DILocation(line: 58, column: 32, scope: !73)
!99 = !DILocalVariable(name: "connectSocket", scope: !73, file: !1, line: 59, type: !68)
!100 = !DILocation(line: 59, column: 20, scope: !73)
!101 = !DILocalVariable(name: "inputBuffer", scope: !73, file: !1, line: 60, type: !55)
!102 = !DILocation(line: 60, column: 18, scope: !73)
!103 = !DILocation(line: 61, column: 13, scope: !73)
!104 = !DILocation(line: 71, column: 33, scope: !105)
!105 = distinct !DILexicalBlock(scope: !73, file: !1, line: 62, column: 13)
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
!152 = distinct !DILexicalBlock(scope: !73, file: !1, line: 97, column: 17)
!153 = !DILocation(line: 97, column: 31, scope: !152)
!154 = !DILocation(line: 97, column: 17, scope: !73)
!155 = !DILocation(line: 99, column: 30, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 98, column: 13)
!157 = !DILocation(line: 99, column: 17, scope: !156)
!158 = !DILocation(line: 100, column: 13, scope: !156)
!159 = !DILocation(line: 108, column: 9, scope: !74)
!160 = !DILocation(line: 110, column: 5, scope: !63)
!161 = !DILocalVariable(name: "i", scope: !162, file: !1, line: 113, type: !68)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 112, column: 9)
!163 = distinct !DILexicalBlock(scope: !63, file: !1, line: 111, column: 5)
!164 = !DILocation(line: 113, column: 17, scope: !162)
!165 = !DILocalVariable(name: "buffer", scope: !162, file: !1, line: 114, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 10)
!169 = !DILocation(line: 114, column: 17, scope: !162)
!170 = !DILocation(line: 117, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !1, line: 117, column: 17)
!172 = !DILocation(line: 117, column: 22, scope: !171)
!173 = !DILocation(line: 117, column: 17, scope: !162)
!174 = !DILocation(line: 119, column: 24, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 118, column: 13)
!176 = !DILocation(line: 119, column: 17, scope: !175)
!177 = !DILocation(line: 119, column: 30, scope: !175)
!178 = !DILocation(line: 121, column: 23, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 121, column: 17)
!180 = !DILocation(line: 121, column: 21, scope: !179)
!181 = !DILocation(line: 121, column: 28, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 121, column: 17)
!183 = !DILocation(line: 121, column: 30, scope: !182)
!184 = !DILocation(line: 121, column: 17, scope: !179)
!185 = !DILocation(line: 123, column: 41, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 122, column: 17)
!187 = !DILocation(line: 123, column: 34, scope: !186)
!188 = !DILocation(line: 123, column: 21, scope: !186)
!189 = !DILocation(line: 124, column: 17, scope: !186)
!190 = !DILocation(line: 121, column: 37, scope: !182)
!191 = !DILocation(line: 121, column: 17, scope: !182)
!192 = distinct !{!192, !184, !193, !194}
!193 = !DILocation(line: 124, column: 17, scope: !179)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 125, column: 13, scope: !175)
!196 = !DILocation(line: 128, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !171, file: !1, line: 127, column: 13)
!198 = !DILocation(line: 131, column: 9, scope: !163)
!199 = !DILocation(line: 133, column: 1, scope: !63)
!200 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 140, type: !64, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!201 = !DILocalVariable(name: "data", scope: !200, file: !1, line: 142, type: !68)
!202 = !DILocation(line: 142, column: 9, scope: !200)
!203 = !DILocation(line: 144, column: 10, scope: !200)
!204 = !DILocation(line: 145, column: 5, scope: !200)
!205 = !DILocalVariable(name: "recvResult", scope: !206, file: !1, line: 152, type: !68)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 147, column: 9)
!207 = distinct !DILexicalBlock(scope: !200, file: !1, line: 146, column: 5)
!208 = !DILocation(line: 152, column: 17, scope: !206)
!209 = !DILocalVariable(name: "service", scope: !206, file: !1, line: 153, type: !77)
!210 = !DILocation(line: 153, column: 32, scope: !206)
!211 = !DILocalVariable(name: "connectSocket", scope: !206, file: !1, line: 154, type: !68)
!212 = !DILocation(line: 154, column: 20, scope: !206)
!213 = !DILocalVariable(name: "inputBuffer", scope: !206, file: !1, line: 155, type: !55)
!214 = !DILocation(line: 155, column: 18, scope: !206)
!215 = !DILocation(line: 156, column: 13, scope: !206)
!216 = !DILocation(line: 166, column: 33, scope: !217)
!217 = distinct !DILexicalBlock(scope: !206, file: !1, line: 157, column: 13)
!218 = !DILocation(line: 166, column: 31, scope: !217)
!219 = !DILocation(line: 167, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 167, column: 21)
!221 = !DILocation(line: 167, column: 35, scope: !220)
!222 = !DILocation(line: 167, column: 21, scope: !217)
!223 = !DILocation(line: 169, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 168, column: 17)
!225 = !DILocation(line: 171, column: 17, scope: !217)
!226 = !DILocation(line: 172, column: 25, scope: !217)
!227 = !DILocation(line: 172, column: 36, scope: !217)
!228 = !DILocation(line: 173, column: 43, scope: !217)
!229 = !DILocation(line: 173, column: 25, scope: !217)
!230 = !DILocation(line: 173, column: 34, scope: !217)
!231 = !DILocation(line: 173, column: 41, scope: !217)
!232 = !DILocation(line: 174, column: 36, scope: !217)
!233 = !DILocation(line: 174, column: 25, scope: !217)
!234 = !DILocation(line: 174, column: 34, scope: !217)
!235 = !DILocation(line: 175, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !217, file: !1, line: 175, column: 21)
!237 = !DILocation(line: 175, column: 44, scope: !236)
!238 = !DILocation(line: 175, column: 21, scope: !236)
!239 = !DILocation(line: 175, column: 89, scope: !236)
!240 = !DILocation(line: 175, column: 21, scope: !217)
!241 = !DILocation(line: 177, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 176, column: 17)
!243 = !DILocation(line: 181, column: 35, scope: !217)
!244 = !DILocation(line: 181, column: 50, scope: !217)
!245 = !DILocation(line: 181, column: 30, scope: !217)
!246 = !DILocation(line: 181, column: 28, scope: !217)
!247 = !DILocation(line: 182, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !217, file: !1, line: 182, column: 21)
!249 = !DILocation(line: 182, column: 32, scope: !248)
!250 = !DILocation(line: 182, column: 48, scope: !248)
!251 = !DILocation(line: 182, column: 51, scope: !248)
!252 = !DILocation(line: 182, column: 62, scope: !248)
!253 = !DILocation(line: 182, column: 21, scope: !217)
!254 = !DILocation(line: 184, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !1, line: 183, column: 17)
!256 = !DILocation(line: 187, column: 29, scope: !217)
!257 = !DILocation(line: 187, column: 17, scope: !217)
!258 = !DILocation(line: 187, column: 41, scope: !217)
!259 = !DILocation(line: 189, column: 29, scope: !217)
!260 = !DILocation(line: 189, column: 24, scope: !217)
!261 = !DILocation(line: 189, column: 22, scope: !217)
!262 = !DILocation(line: 190, column: 13, scope: !217)
!263 = !DILocation(line: 192, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !206, file: !1, line: 192, column: 17)
!265 = !DILocation(line: 192, column: 31, scope: !264)
!266 = !DILocation(line: 192, column: 17, scope: !206)
!267 = !DILocation(line: 194, column: 30, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 193, column: 13)
!269 = !DILocation(line: 194, column: 17, scope: !268)
!270 = !DILocation(line: 195, column: 13, scope: !268)
!271 = !DILocation(line: 203, column: 9, scope: !207)
!272 = !DILocation(line: 205, column: 5, scope: !200)
!273 = !DILocalVariable(name: "i", scope: !274, file: !1, line: 208, type: !68)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 207, column: 9)
!275 = distinct !DILexicalBlock(scope: !200, file: !1, line: 206, column: 5)
!276 = !DILocation(line: 208, column: 17, scope: !274)
!277 = !DILocalVariable(name: "buffer", scope: !274, file: !1, line: 209, type: !166)
!278 = !DILocation(line: 209, column: 17, scope: !274)
!279 = !DILocation(line: 211, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 211, column: 17)
!281 = !DILocation(line: 211, column: 22, scope: !280)
!282 = !DILocation(line: 211, column: 27, scope: !280)
!283 = !DILocation(line: 211, column: 30, scope: !280)
!284 = !DILocation(line: 211, column: 35, scope: !280)
!285 = !DILocation(line: 211, column: 17, scope: !274)
!286 = !DILocation(line: 213, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !1, line: 212, column: 13)
!288 = !DILocation(line: 213, column: 17, scope: !287)
!289 = !DILocation(line: 213, column: 30, scope: !287)
!290 = !DILocation(line: 215, column: 23, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 215, column: 17)
!292 = !DILocation(line: 215, column: 21, scope: !291)
!293 = !DILocation(line: 215, column: 28, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 215, column: 17)
!295 = !DILocation(line: 215, column: 30, scope: !294)
!296 = !DILocation(line: 215, column: 17, scope: !291)
!297 = !DILocation(line: 217, column: 41, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 216, column: 17)
!299 = !DILocation(line: 217, column: 34, scope: !298)
!300 = !DILocation(line: 217, column: 21, scope: !298)
!301 = !DILocation(line: 218, column: 17, scope: !298)
!302 = !DILocation(line: 215, column: 37, scope: !294)
!303 = !DILocation(line: 215, column: 17, scope: !294)
!304 = distinct !{!304, !296, !305, !194}
!305 = !DILocation(line: 218, column: 17, scope: !291)
!306 = !DILocation(line: 219, column: 13, scope: !287)
!307 = !DILocation(line: 222, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !280, file: !1, line: 221, column: 13)
!309 = !DILocation(line: 225, column: 9, scope: !275)
!310 = !DILocation(line: 227, column: 1, scope: !200)
!311 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 230, type: !64, scopeLine: 231, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!312 = !DILocalVariable(name: "data", scope: !311, file: !1, line: 232, type: !68)
!313 = !DILocation(line: 232, column: 9, scope: !311)
!314 = !DILocation(line: 234, column: 10, scope: !311)
!315 = !DILocation(line: 235, column: 5, scope: !311)
!316 = !DILocation(line: 239, column: 14, scope: !317)
!317 = distinct !DILexicalBlock(scope: !311, file: !1, line: 236, column: 5)
!318 = !DILocation(line: 240, column: 9, scope: !317)
!319 = !DILocation(line: 242, column: 5, scope: !311)
!320 = !DILocalVariable(name: "i", scope: !321, file: !1, line: 245, type: !68)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 244, column: 9)
!322 = distinct !DILexicalBlock(scope: !311, file: !1, line: 243, column: 5)
!323 = !DILocation(line: 245, column: 17, scope: !321)
!324 = !DILocalVariable(name: "buffer", scope: !321, file: !1, line: 246, type: !166)
!325 = !DILocation(line: 246, column: 17, scope: !321)
!326 = !DILocation(line: 249, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !321, file: !1, line: 249, column: 17)
!328 = !DILocation(line: 249, column: 22, scope: !327)
!329 = !DILocation(line: 249, column: 17, scope: !321)
!330 = !DILocation(line: 251, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 250, column: 13)
!332 = !DILocation(line: 251, column: 17, scope: !331)
!333 = !DILocation(line: 251, column: 30, scope: !331)
!334 = !DILocation(line: 253, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 253, column: 17)
!336 = !DILocation(line: 253, column: 21, scope: !335)
!337 = !DILocation(line: 253, column: 28, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 253, column: 17)
!339 = !DILocation(line: 253, column: 30, scope: !338)
!340 = !DILocation(line: 253, column: 17, scope: !335)
!341 = !DILocation(line: 255, column: 41, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 254, column: 17)
!343 = !DILocation(line: 255, column: 34, scope: !342)
!344 = !DILocation(line: 255, column: 21, scope: !342)
!345 = !DILocation(line: 256, column: 17, scope: !342)
!346 = !DILocation(line: 253, column: 37, scope: !338)
!347 = !DILocation(line: 253, column: 17, scope: !338)
!348 = distinct !{!348, !340, !349, !194}
!349 = !DILocation(line: 256, column: 17, scope: !335)
!350 = !DILocation(line: 257, column: 13, scope: !331)
!351 = !DILocation(line: 260, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !327, file: !1, line: 259, column: 13)
!353 = !DILocation(line: 263, column: 9, scope: !322)
!354 = !DILocation(line: 265, column: 1, scope: !311)
!355 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_good", scope: !1, file: !1, line: 267, type: !64, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!356 = !DILocation(line: 269, column: 5, scope: !355)
!357 = !DILocation(line: 270, column: 5, scope: !355)
!358 = !DILocation(line: 271, column: 1, scope: !355)
