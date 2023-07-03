; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad() #0 !dbg !63 {
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !160, metadata !DIExpression()), !dbg !164
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !164
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !164
  %11 = load i32, i32* %data, align 4, !dbg !165
  %cmp21 = icmp sge i32 %11, 0, !dbg !167
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !168

if.then23:                                        ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !169
  %idxprom24 = sext i32 %12 to i64, !dbg !171
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !171
  store i32 1, i32* %arrayidx25, align 4, !dbg !172
  store i32 0, i32* %i, align 4, !dbg !173
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !176
  %cmp26 = icmp slt i32 %13, 10, !dbg !178
  br i1 %cmp26, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !180
  %idxprom28 = sext i32 %14 to i64, !dbg !182
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !182
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !182
  call void @printIntLine(i32 %15), !dbg !183
  br label %for.inc, !dbg !184

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !185
  %inc = add nsw i32 %16, 1, !dbg !185
  store i32 %inc, i32* %i, align 4, !dbg !185
  br label %for.cond, !dbg !186, !llvm.loop !187

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !190

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !191
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !193
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
define dso_local void @goodG2B() #0 !dbg !194 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !195, metadata !DIExpression()), !dbg !196
  store i32 -1, i32* %data, align 4, !dbg !197
  store i32 7, i32* %data, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %i, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !203
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !203
  %1 = load i32, i32* %data, align 4, !dbg !204
  %cmp = icmp sge i32 %1, 0, !dbg !206
  br i1 %cmp, label %if.then, label %if.else, !dbg !207

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !208
  %idxprom = sext i32 %2 to i64, !dbg !210
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !210
  store i32 1, i32* %arrayidx, align 4, !dbg !211
  store i32 0, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !214

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !215
  %cmp1 = icmp slt i32 %3, 10, !dbg !217
  br i1 %cmp1, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !219
  %idxprom2 = sext i32 %4 to i64, !dbg !221
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !221
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !221
  call void @printIntLine(i32 %5), !dbg !222
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !224
  %inc = add nsw i32 %6, 1, !dbg !224
  store i32 %inc, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !225, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !228

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !229
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !232 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 -1, i32* %data, align 4, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !236, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 -1, i32* %connectSocket, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !243, metadata !DIExpression()), !dbg !244
  br label %do.body, !dbg !245

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !246
  store i32 %call, i32* %connectSocket, align 4, !dbg !248
  %0 = load i32, i32* %connectSocket, align 4, !dbg !249
  %cmp = icmp eq i32 %0, -1, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !253

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !255
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !256
  store i16 2, i16* %sin_family, align 4, !dbg !257
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !258
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !259
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !260
  store i32 %call1, i32* %s_addr, align 4, !dbg !261
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !262
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !263
  store i16 %call2, i16* %sin_port, align 2, !dbg !264
  %2 = load i32, i32* %connectSocket, align 4, !dbg !265
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !267
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !268
  %cmp4 = icmp eq i32 %call3, -1, !dbg !269
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !270

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !271

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !273
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !274
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !275
  %conv = trunc i64 %call7 to i32, !dbg !275
  store i32 %conv, i32* %recvResult, align 4, !dbg !276
  %5 = load i32, i32* %recvResult, align 4, !dbg !277
  %cmp8 = icmp eq i32 %5, -1, !dbg !279
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !281
  %cmp10 = icmp eq i32 %6, 0, !dbg !282
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !283

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !284

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !286
  %idxprom = sext i32 %7 to i64, !dbg !287
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !287
  store i8 0, i8* %arrayidx, align 1, !dbg !288
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !289
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !290
  store i32 %call15, i32* %data, align 4, !dbg !291
  br label %do.end, !dbg !292

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !293
  %cmp16 = icmp ne i32 %8, -1, !dbg !295
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !296

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !297
  %call19 = call i32 @close(i32 %9), !dbg !299
  br label %if.end20, !dbg !300

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !304, metadata !DIExpression()), !dbg !305
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !305
  %11 = load i32, i32* %data, align 4, !dbg !306
  %cmp21 = icmp sge i32 %11, 0, !dbg !308
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !309

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !310
  %cmp23 = icmp slt i32 %12, 10, !dbg !311
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !312

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !313
  %idxprom26 = sext i32 %13 to i64, !dbg !315
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !315
  store i32 1, i32* %arrayidx27, align 4, !dbg !316
  store i32 0, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !319

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !320
  %cmp28 = icmp slt i32 %14, 10, !dbg !322
  br i1 %cmp28, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !324
  %idxprom30 = sext i32 %15 to i64, !dbg !326
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !326
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !326
  call void @printIntLine(i32 %16), !dbg !327
  br label %for.inc, !dbg !328

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !329
  %inc = add nsw i32 %17, 1, !dbg !329
  store i32 %inc, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !330, !llvm.loop !331

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !333

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !334
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_good() #0 !dbg !337 {
entry:
  call void @goodG2B(), !dbg !338
  call void @goodB2G(), !dbg !339
  ret void, !dbg !340
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_516/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
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
!157 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 107, type: !68)
!158 = distinct !DILexicalBlock(scope: !63, file: !1, line: 106, column: 5)
!159 = !DILocation(line: 107, column: 13, scope: !158)
!160 = !DILocalVariable(name: "buffer", scope: !158, file: !1, line: 108, type: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 10)
!164 = !DILocation(line: 108, column: 13, scope: !158)
!165 = !DILocation(line: 111, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 111, column: 13)
!167 = !DILocation(line: 111, column: 18, scope: !166)
!168 = !DILocation(line: 111, column: 13, scope: !158)
!169 = !DILocation(line: 113, column: 20, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 112, column: 9)
!171 = !DILocation(line: 113, column: 13, scope: !170)
!172 = !DILocation(line: 113, column: 26, scope: !170)
!173 = !DILocation(line: 115, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 115, column: 13)
!175 = !DILocation(line: 115, column: 17, scope: !174)
!176 = !DILocation(line: 115, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 115, column: 13)
!178 = !DILocation(line: 115, column: 26, scope: !177)
!179 = !DILocation(line: 115, column: 13, scope: !174)
!180 = !DILocation(line: 117, column: 37, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 116, column: 13)
!182 = !DILocation(line: 117, column: 30, scope: !181)
!183 = !DILocation(line: 117, column: 17, scope: !181)
!184 = !DILocation(line: 118, column: 13, scope: !181)
!185 = !DILocation(line: 115, column: 33, scope: !177)
!186 = !DILocation(line: 115, column: 13, scope: !177)
!187 = distinct !{!187, !179, !188, !189}
!188 = !DILocation(line: 118, column: 13, scope: !174)
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 119, column: 9, scope: !170)
!191 = !DILocation(line: 122, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !1, line: 121, column: 9)
!193 = !DILocation(line: 125, column: 1, scope: !63)
!194 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 132, type: !64, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!195 = !DILocalVariable(name: "data", scope: !194, file: !1, line: 134, type: !68)
!196 = !DILocation(line: 134, column: 9, scope: !194)
!197 = !DILocation(line: 136, column: 10, scope: !194)
!198 = !DILocation(line: 139, column: 10, scope: !194)
!199 = !DILocalVariable(name: "i", scope: !200, file: !1, line: 141, type: !68)
!200 = distinct !DILexicalBlock(scope: !194, file: !1, line: 140, column: 5)
!201 = !DILocation(line: 141, column: 13, scope: !200)
!202 = !DILocalVariable(name: "buffer", scope: !200, file: !1, line: 142, type: !161)
!203 = !DILocation(line: 142, column: 13, scope: !200)
!204 = !DILocation(line: 145, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 145, column: 13)
!206 = !DILocation(line: 145, column: 18, scope: !205)
!207 = !DILocation(line: 145, column: 13, scope: !200)
!208 = !DILocation(line: 147, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 146, column: 9)
!210 = !DILocation(line: 147, column: 13, scope: !209)
!211 = !DILocation(line: 147, column: 26, scope: !209)
!212 = !DILocation(line: 149, column: 19, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 149, column: 13)
!214 = !DILocation(line: 149, column: 17, scope: !213)
!215 = !DILocation(line: 149, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !1, line: 149, column: 13)
!217 = !DILocation(line: 149, column: 26, scope: !216)
!218 = !DILocation(line: 149, column: 13, scope: !213)
!219 = !DILocation(line: 151, column: 37, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 150, column: 13)
!221 = !DILocation(line: 151, column: 30, scope: !220)
!222 = !DILocation(line: 151, column: 17, scope: !220)
!223 = !DILocation(line: 152, column: 13, scope: !220)
!224 = !DILocation(line: 149, column: 33, scope: !216)
!225 = !DILocation(line: 149, column: 13, scope: !216)
!226 = distinct !{!226, !218, !227, !189}
!227 = !DILocation(line: 152, column: 13, scope: !213)
!228 = !DILocation(line: 153, column: 9, scope: !209)
!229 = !DILocation(line: 156, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !205, file: !1, line: 155, column: 9)
!231 = !DILocation(line: 159, column: 1, scope: !194)
!232 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 162, type: !64, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!233 = !DILocalVariable(name: "data", scope: !232, file: !1, line: 164, type: !68)
!234 = !DILocation(line: 164, column: 9, scope: !232)
!235 = !DILocation(line: 166, column: 10, scope: !232)
!236 = !DILocalVariable(name: "recvResult", scope: !237, file: !1, line: 172, type: !68)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 167, column: 5)
!238 = !DILocation(line: 172, column: 13, scope: !237)
!239 = !DILocalVariable(name: "service", scope: !237, file: !1, line: 173, type: !75)
!240 = !DILocation(line: 173, column: 28, scope: !237)
!241 = !DILocalVariable(name: "connectSocket", scope: !237, file: !1, line: 174, type: !68)
!242 = !DILocation(line: 174, column: 16, scope: !237)
!243 = !DILocalVariable(name: "inputBuffer", scope: !237, file: !1, line: 175, type: !55)
!244 = !DILocation(line: 175, column: 14, scope: !237)
!245 = !DILocation(line: 176, column: 9, scope: !237)
!246 = !DILocation(line: 186, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !237, file: !1, line: 177, column: 9)
!248 = !DILocation(line: 186, column: 27, scope: !247)
!249 = !DILocation(line: 187, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 187, column: 17)
!251 = !DILocation(line: 187, column: 31, scope: !250)
!252 = !DILocation(line: 187, column: 17, scope: !247)
!253 = !DILocation(line: 189, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 188, column: 13)
!255 = !DILocation(line: 191, column: 13, scope: !247)
!256 = !DILocation(line: 192, column: 21, scope: !247)
!257 = !DILocation(line: 192, column: 32, scope: !247)
!258 = !DILocation(line: 193, column: 39, scope: !247)
!259 = !DILocation(line: 193, column: 21, scope: !247)
!260 = !DILocation(line: 193, column: 30, scope: !247)
!261 = !DILocation(line: 193, column: 37, scope: !247)
!262 = !DILocation(line: 194, column: 32, scope: !247)
!263 = !DILocation(line: 194, column: 21, scope: !247)
!264 = !DILocation(line: 194, column: 30, scope: !247)
!265 = !DILocation(line: 195, column: 25, scope: !266)
!266 = distinct !DILexicalBlock(scope: !247, file: !1, line: 195, column: 17)
!267 = !DILocation(line: 195, column: 40, scope: !266)
!268 = !DILocation(line: 195, column: 17, scope: !266)
!269 = !DILocation(line: 195, column: 85, scope: !266)
!270 = !DILocation(line: 195, column: 17, scope: !247)
!271 = !DILocation(line: 197, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !1, line: 196, column: 13)
!273 = !DILocation(line: 201, column: 31, scope: !247)
!274 = !DILocation(line: 201, column: 46, scope: !247)
!275 = !DILocation(line: 201, column: 26, scope: !247)
!276 = !DILocation(line: 201, column: 24, scope: !247)
!277 = !DILocation(line: 202, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !247, file: !1, line: 202, column: 17)
!279 = !DILocation(line: 202, column: 28, scope: !278)
!280 = !DILocation(line: 202, column: 44, scope: !278)
!281 = !DILocation(line: 202, column: 47, scope: !278)
!282 = !DILocation(line: 202, column: 58, scope: !278)
!283 = !DILocation(line: 202, column: 17, scope: !247)
!284 = !DILocation(line: 204, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !1, line: 203, column: 13)
!286 = !DILocation(line: 207, column: 25, scope: !247)
!287 = !DILocation(line: 207, column: 13, scope: !247)
!288 = !DILocation(line: 207, column: 37, scope: !247)
!289 = !DILocation(line: 209, column: 25, scope: !247)
!290 = !DILocation(line: 209, column: 20, scope: !247)
!291 = !DILocation(line: 209, column: 18, scope: !247)
!292 = !DILocation(line: 210, column: 9, scope: !247)
!293 = !DILocation(line: 212, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !237, file: !1, line: 212, column: 13)
!295 = !DILocation(line: 212, column: 27, scope: !294)
!296 = !DILocation(line: 212, column: 13, scope: !237)
!297 = !DILocation(line: 214, column: 26, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 213, column: 9)
!299 = !DILocation(line: 214, column: 13, scope: !298)
!300 = !DILocation(line: 215, column: 9, scope: !298)
!301 = !DILocalVariable(name: "i", scope: !302, file: !1, line: 224, type: !68)
!302 = distinct !DILexicalBlock(scope: !232, file: !1, line: 223, column: 5)
!303 = !DILocation(line: 224, column: 13, scope: !302)
!304 = !DILocalVariable(name: "buffer", scope: !302, file: !1, line: 225, type: !161)
!305 = !DILocation(line: 225, column: 13, scope: !302)
!306 = !DILocation(line: 227, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 227, column: 13)
!308 = !DILocation(line: 227, column: 18, scope: !307)
!309 = !DILocation(line: 227, column: 23, scope: !307)
!310 = !DILocation(line: 227, column: 26, scope: !307)
!311 = !DILocation(line: 227, column: 31, scope: !307)
!312 = !DILocation(line: 227, column: 13, scope: !302)
!313 = !DILocation(line: 229, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 228, column: 9)
!315 = !DILocation(line: 229, column: 13, scope: !314)
!316 = !DILocation(line: 229, column: 26, scope: !314)
!317 = !DILocation(line: 231, column: 19, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 231, column: 13)
!319 = !DILocation(line: 231, column: 17, scope: !318)
!320 = !DILocation(line: 231, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !1, line: 231, column: 13)
!322 = !DILocation(line: 231, column: 26, scope: !321)
!323 = !DILocation(line: 231, column: 13, scope: !318)
!324 = !DILocation(line: 233, column: 37, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 232, column: 13)
!326 = !DILocation(line: 233, column: 30, scope: !325)
!327 = !DILocation(line: 233, column: 17, scope: !325)
!328 = !DILocation(line: 234, column: 13, scope: !325)
!329 = !DILocation(line: 231, column: 33, scope: !321)
!330 = !DILocation(line: 231, column: 13, scope: !321)
!331 = distinct !{!331, !323, !332, !189}
!332 = !DILocation(line: 234, column: 13, scope: !318)
!333 = !DILocation(line: 235, column: 9, scope: !314)
!334 = !DILocation(line: 238, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !307, file: !1, line: 237, column: 9)
!336 = !DILocation(line: 241, column: 1, scope: !232)
!337 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_good", scope: !1, file: !1, line: 243, type: !64, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!338 = !DILocation(line: 245, column: 5, scope: !337)
!339 = !DILocation(line: 246, column: 5, scope: !337)
!340 = !DILocation(line: 247, column: 1, scope: !337)
