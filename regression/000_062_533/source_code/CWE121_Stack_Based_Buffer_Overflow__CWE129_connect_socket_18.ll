; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_bad() #0 !dbg !63 {
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
  br label %source, !dbg !71

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !72), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !77, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !100, metadata !DIExpression()), !dbg !101
  store i32 -1, i32* %connectSocket, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !102, metadata !DIExpression()), !dbg !103
  br label %do.body, !dbg !104

do.body:                                          ; preds = %source
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !105
  store i32 %call, i32* %connectSocket, align 4, !dbg !107
  %0 = load i32, i32* %connectSocket, align 4, !dbg !108
  %cmp = icmp eq i32 %0, -1, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !112

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !114
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !115
  store i16 2, i16* %sin_family, align 4, !dbg !116
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !117
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !118
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !119
  store i32 %call1, i32* %s_addr, align 4, !dbg !120
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !121
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !122
  store i16 %call2, i16* %sin_port, align 2, !dbg !123
  %2 = load i32, i32* %connectSocket, align 4, !dbg !124
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !126
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !127
  %cmp4 = icmp eq i32 %call3, -1, !dbg !128
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !129

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !130

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !132
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !133
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !134
  %conv = trunc i64 %call7 to i32, !dbg !134
  store i32 %conv, i32* %recvResult, align 4, !dbg !135
  %5 = load i32, i32* %recvResult, align 4, !dbg !136
  %cmp8 = icmp eq i32 %5, -1, !dbg !138
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !139

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !140
  %cmp10 = icmp eq i32 %6, 0, !dbg !141
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !142

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !143

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !145
  %idxprom = sext i32 %7 to i64, !dbg !146
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !146
  store i8 0, i8* %arrayidx, align 1, !dbg !147
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !148
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !149
  store i32 %call15, i32* %data, align 4, !dbg !150
  br label %do.end, !dbg !151

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !152
  %cmp16 = icmp ne i32 %8, -1, !dbg !154
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !155

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !156
  %call19 = call i32 @close(i32 %9), !dbg !158
  br label %if.end20, !dbg !159

if.end20:                                         ; preds = %if.then18, %do.end
  br label %sink, !dbg !160

sink:                                             ; preds = %if.end20
  call void @llvm.dbg.label(metadata !161), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %i, metadata !163, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !166, metadata !DIExpression()), !dbg !170
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !170
  %11 = load i32, i32* %data, align 4, !dbg !171
  %cmp21 = icmp sge i32 %11, 0, !dbg !173
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !174

if.then23:                                        ; preds = %sink
  %12 = load i32, i32* %data, align 4, !dbg !175
  %idxprom24 = sext i32 %12 to i64, !dbg !177
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom24, !dbg !177
  store i32 1, i32* %arrayidx25, align 4, !dbg !178
  store i32 0, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %if.then23
  %13 = load i32, i32* %i, align 4, !dbg !182
  %cmp26 = icmp slt i32 %13, 10, !dbg !184
  br i1 %cmp26, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !186
  %idxprom28 = sext i32 %14 to i64, !dbg !188
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !188
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !188
  call void @printIntLine(i32 %15), !dbg !189
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !191
  %inc = add nsw i32 %16, 1, !dbg !191
  store i32 %inc, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !196

if.else:                                          ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  ret void, !dbg !199
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
  br label %source, !dbg !204

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !205), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !207, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !212, metadata !DIExpression()), !dbg !213
  store i32 -1, i32* %connectSocket, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !214, metadata !DIExpression()), !dbg !215
  br label %do.body, !dbg !216

do.body:                                          ; preds = %source
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !217
  store i32 %call, i32* %connectSocket, align 4, !dbg !219
  %0 = load i32, i32* %connectSocket, align 4, !dbg !220
  %cmp = icmp eq i32 %0, -1, !dbg !222
  br i1 %cmp, label %if.then, label %if.end, !dbg !223

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !224

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !226
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !227
  store i16 2, i16* %sin_family, align 4, !dbg !228
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !229
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !230
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !231
  store i32 %call1, i32* %s_addr, align 4, !dbg !232
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !233
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !234
  store i16 %call2, i16* %sin_port, align 2, !dbg !235
  %2 = load i32, i32* %connectSocket, align 4, !dbg !236
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !238
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !239
  %cmp4 = icmp eq i32 %call3, -1, !dbg !240
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !241

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !242

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !244
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !245
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !246
  %conv = trunc i64 %call7 to i32, !dbg !246
  store i32 %conv, i32* %recvResult, align 4, !dbg !247
  %5 = load i32, i32* %recvResult, align 4, !dbg !248
  %cmp8 = icmp eq i32 %5, -1, !dbg !250
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !251

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !252
  %cmp10 = icmp eq i32 %6, 0, !dbg !253
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !254

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !255

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !257
  %idxprom = sext i32 %7 to i64, !dbg !258
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !258
  store i8 0, i8* %arrayidx, align 1, !dbg !259
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !260
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !261
  store i32 %call15, i32* %data, align 4, !dbg !262
  br label %do.end, !dbg !263

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !264
  %cmp16 = icmp ne i32 %8, -1, !dbg !266
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !267

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !268
  %call19 = call i32 @close(i32 %9), !dbg !270
  br label %if.end20, !dbg !271

if.end20:                                         ; preds = %if.then18, %do.end
  br label %sink, !dbg !272

sink:                                             ; preds = %if.end20
  call void @llvm.dbg.label(metadata !273), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %i, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !278, metadata !DIExpression()), !dbg !279
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !279
  %11 = load i32, i32* %data, align 4, !dbg !280
  %cmp21 = icmp sge i32 %11, 0, !dbg !282
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !283

land.lhs.true:                                    ; preds = %sink
  %12 = load i32, i32* %data, align 4, !dbg !284
  %cmp23 = icmp slt i32 %12, 10, !dbg !285
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !286

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !287
  %idxprom26 = sext i32 %13 to i64, !dbg !289
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !289
  store i32 1, i32* %arrayidx27, align 4, !dbg !290
  store i32 0, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !293

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !294
  %cmp28 = icmp slt i32 %14, 10, !dbg !296
  br i1 %cmp28, label %for.body, label %for.end, !dbg !297

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !298
  %idxprom30 = sext i32 %15 to i64, !dbg !300
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !300
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !300
  call void @printIntLine(i32 %16), !dbg !301
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !303
  %inc = add nsw i32 %17, 1, !dbg !303
  store i32 %inc, i32* %i, align 4, !dbg !303
  br label %for.cond, !dbg !304, !llvm.loop !305

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !307

if.else:                                          ; preds = %land.lhs.true, %sink
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !308
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
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
  br label %source, !dbg !315

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !316), !dbg !317
  store i32 7, i32* %data, align 4, !dbg !318
  br label %sink, !dbg !319

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !320), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %i, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !326
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !326
  %1 = load i32, i32* %data, align 4, !dbg !327
  %cmp = icmp sge i32 %1, 0, !dbg !329
  br i1 %cmp, label %if.then, label %if.else, !dbg !330

if.then:                                          ; preds = %sink
  %2 = load i32, i32* %data, align 4, !dbg !331
  %idxprom = sext i32 %2 to i64, !dbg !333
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !333
  store i32 1, i32* %arrayidx, align 4, !dbg !334
  store i32 0, i32* %i, align 4, !dbg !335
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !338
  %cmp1 = icmp slt i32 %3, 10, !dbg !340
  br i1 %cmp1, label %for.body, label %for.end, !dbg !341

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !342
  %idxprom2 = sext i32 %4 to i64, !dbg !344
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !344
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !344
  call void @printIntLine(i32 %5), !dbg !345
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !347
  %inc = add nsw i32 %6, 1, !dbg !347
  store i32 %inc, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !348, !llvm.loop !349

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !351

if.else:                                          ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !352
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_good() #0 !dbg !355 {
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_533/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocation(line: 50, column: 5, scope: !63)
!72 = !DILabel(scope: !63, name: "source", file: !1, line: 51)
!73 = !DILocation(line: 51, column: 1, scope: !63)
!74 = !DILocalVariable(name: "recvResult", scope: !75, file: !1, line: 57, type: !68)
!75 = distinct !DILexicalBlock(scope: !63, file: !1, line: 52, column: 5)
!76 = !DILocation(line: 57, column: 13, scope: !75)
!77 = !DILocalVariable(name: "service", scope: !75, file: !1, line: 58, type: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !79)
!79 = !{!80, !81, !87, !94}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !78, file: !17, line: 240, baseType: !51, size: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !78, file: !17, line: 241, baseType: !82, size: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !84, line: 25, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !86, line: 40, baseType: !53)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !78, file: !17, line: 242, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !88, file: !17, line: 33, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 26, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 42, baseType: !5)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !78, file: !17, line: 245, baseType: !95, size: 64, offset: 64)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !97)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !{!98}
!98 = !DISubrange(count: 8)
!99 = !DILocation(line: 58, column: 28, scope: !75)
!100 = !DILocalVariable(name: "connectSocket", scope: !75, file: !1, line: 59, type: !68)
!101 = !DILocation(line: 59, column: 16, scope: !75)
!102 = !DILocalVariable(name: "inputBuffer", scope: !75, file: !1, line: 60, type: !55)
!103 = !DILocation(line: 60, column: 14, scope: !75)
!104 = !DILocation(line: 61, column: 9, scope: !75)
!105 = !DILocation(line: 71, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !75, file: !1, line: 62, column: 9)
!107 = !DILocation(line: 71, column: 27, scope: !106)
!108 = !DILocation(line: 72, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 72, column: 17)
!110 = !DILocation(line: 72, column: 31, scope: !109)
!111 = !DILocation(line: 72, column: 17, scope: !106)
!112 = !DILocation(line: 74, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 73, column: 13)
!114 = !DILocation(line: 76, column: 13, scope: !106)
!115 = !DILocation(line: 77, column: 21, scope: !106)
!116 = !DILocation(line: 77, column: 32, scope: !106)
!117 = !DILocation(line: 78, column: 39, scope: !106)
!118 = !DILocation(line: 78, column: 21, scope: !106)
!119 = !DILocation(line: 78, column: 30, scope: !106)
!120 = !DILocation(line: 78, column: 37, scope: !106)
!121 = !DILocation(line: 79, column: 32, scope: !106)
!122 = !DILocation(line: 79, column: 21, scope: !106)
!123 = !DILocation(line: 79, column: 30, scope: !106)
!124 = !DILocation(line: 80, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !106, file: !1, line: 80, column: 17)
!126 = !DILocation(line: 80, column: 40, scope: !125)
!127 = !DILocation(line: 80, column: 17, scope: !125)
!128 = !DILocation(line: 80, column: 85, scope: !125)
!129 = !DILocation(line: 80, column: 17, scope: !106)
!130 = !DILocation(line: 82, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !125, file: !1, line: 81, column: 13)
!132 = !DILocation(line: 86, column: 31, scope: !106)
!133 = !DILocation(line: 86, column: 46, scope: !106)
!134 = !DILocation(line: 86, column: 26, scope: !106)
!135 = !DILocation(line: 86, column: 24, scope: !106)
!136 = !DILocation(line: 87, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !106, file: !1, line: 87, column: 17)
!138 = !DILocation(line: 87, column: 28, scope: !137)
!139 = !DILocation(line: 87, column: 44, scope: !137)
!140 = !DILocation(line: 87, column: 47, scope: !137)
!141 = !DILocation(line: 87, column: 58, scope: !137)
!142 = !DILocation(line: 87, column: 17, scope: !106)
!143 = !DILocation(line: 89, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 88, column: 13)
!145 = !DILocation(line: 92, column: 25, scope: !106)
!146 = !DILocation(line: 92, column: 13, scope: !106)
!147 = !DILocation(line: 92, column: 37, scope: !106)
!148 = !DILocation(line: 94, column: 25, scope: !106)
!149 = !DILocation(line: 94, column: 20, scope: !106)
!150 = !DILocation(line: 94, column: 18, scope: !106)
!151 = !DILocation(line: 95, column: 9, scope: !106)
!152 = !DILocation(line: 97, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !75, file: !1, line: 97, column: 13)
!154 = !DILocation(line: 97, column: 27, scope: !153)
!155 = !DILocation(line: 97, column: 13, scope: !75)
!156 = !DILocation(line: 99, column: 26, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 98, column: 9)
!158 = !DILocation(line: 99, column: 13, scope: !157)
!159 = !DILocation(line: 100, column: 9, scope: !157)
!160 = !DILocation(line: 108, column: 5, scope: !63)
!161 = !DILabel(scope: !63, name: "sink", file: !1, line: 109)
!162 = !DILocation(line: 109, column: 1, scope: !63)
!163 = !DILocalVariable(name: "i", scope: !164, file: !1, line: 111, type: !68)
!164 = distinct !DILexicalBlock(scope: !63, file: !1, line: 110, column: 5)
!165 = !DILocation(line: 111, column: 13, scope: !164)
!166 = !DILocalVariable(name: "buffer", scope: !164, file: !1, line: 112, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 10)
!170 = !DILocation(line: 112, column: 13, scope: !164)
!171 = !DILocation(line: 115, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !1, line: 115, column: 13)
!173 = !DILocation(line: 115, column: 18, scope: !172)
!174 = !DILocation(line: 115, column: 13, scope: !164)
!175 = !DILocation(line: 117, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 116, column: 9)
!177 = !DILocation(line: 117, column: 13, scope: !176)
!178 = !DILocation(line: 117, column: 26, scope: !176)
!179 = !DILocation(line: 119, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 119, column: 13)
!181 = !DILocation(line: 119, column: 17, scope: !180)
!182 = !DILocation(line: 119, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 119, column: 13)
!184 = !DILocation(line: 119, column: 26, scope: !183)
!185 = !DILocation(line: 119, column: 13, scope: !180)
!186 = !DILocation(line: 121, column: 37, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 120, column: 13)
!188 = !DILocation(line: 121, column: 30, scope: !187)
!189 = !DILocation(line: 121, column: 17, scope: !187)
!190 = !DILocation(line: 122, column: 13, scope: !187)
!191 = !DILocation(line: 119, column: 33, scope: !183)
!192 = !DILocation(line: 119, column: 13, scope: !183)
!193 = distinct !{!193, !185, !194, !195}
!194 = !DILocation(line: 122, column: 13, scope: !180)
!195 = !{!"llvm.loop.mustprogress"}
!196 = !DILocation(line: 123, column: 9, scope: !176)
!197 = !DILocation(line: 126, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !172, file: !1, line: 125, column: 9)
!199 = !DILocation(line: 129, column: 1, scope: !63)
!200 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 136, type: !64, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!201 = !DILocalVariable(name: "data", scope: !200, file: !1, line: 138, type: !68)
!202 = !DILocation(line: 138, column: 9, scope: !200)
!203 = !DILocation(line: 140, column: 10, scope: !200)
!204 = !DILocation(line: 141, column: 5, scope: !200)
!205 = !DILabel(scope: !200, name: "source", file: !1, line: 142)
!206 = !DILocation(line: 142, column: 1, scope: !200)
!207 = !DILocalVariable(name: "recvResult", scope: !208, file: !1, line: 148, type: !68)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 143, column: 5)
!209 = !DILocation(line: 148, column: 13, scope: !208)
!210 = !DILocalVariable(name: "service", scope: !208, file: !1, line: 149, type: !78)
!211 = !DILocation(line: 149, column: 28, scope: !208)
!212 = !DILocalVariable(name: "connectSocket", scope: !208, file: !1, line: 150, type: !68)
!213 = !DILocation(line: 150, column: 16, scope: !208)
!214 = !DILocalVariable(name: "inputBuffer", scope: !208, file: !1, line: 151, type: !55)
!215 = !DILocation(line: 151, column: 14, scope: !208)
!216 = !DILocation(line: 152, column: 9, scope: !208)
!217 = !DILocation(line: 162, column: 29, scope: !218)
!218 = distinct !DILexicalBlock(scope: !208, file: !1, line: 153, column: 9)
!219 = !DILocation(line: 162, column: 27, scope: !218)
!220 = !DILocation(line: 163, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 163, column: 17)
!222 = !DILocation(line: 163, column: 31, scope: !221)
!223 = !DILocation(line: 163, column: 17, scope: !218)
!224 = !DILocation(line: 165, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 164, column: 13)
!226 = !DILocation(line: 167, column: 13, scope: !218)
!227 = !DILocation(line: 168, column: 21, scope: !218)
!228 = !DILocation(line: 168, column: 32, scope: !218)
!229 = !DILocation(line: 169, column: 39, scope: !218)
!230 = !DILocation(line: 169, column: 21, scope: !218)
!231 = !DILocation(line: 169, column: 30, scope: !218)
!232 = !DILocation(line: 169, column: 37, scope: !218)
!233 = !DILocation(line: 170, column: 32, scope: !218)
!234 = !DILocation(line: 170, column: 21, scope: !218)
!235 = !DILocation(line: 170, column: 30, scope: !218)
!236 = !DILocation(line: 171, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !218, file: !1, line: 171, column: 17)
!238 = !DILocation(line: 171, column: 40, scope: !237)
!239 = !DILocation(line: 171, column: 17, scope: !237)
!240 = !DILocation(line: 171, column: 85, scope: !237)
!241 = !DILocation(line: 171, column: 17, scope: !218)
!242 = !DILocation(line: 173, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 172, column: 13)
!244 = !DILocation(line: 177, column: 31, scope: !218)
!245 = !DILocation(line: 177, column: 46, scope: !218)
!246 = !DILocation(line: 177, column: 26, scope: !218)
!247 = !DILocation(line: 177, column: 24, scope: !218)
!248 = !DILocation(line: 178, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !218, file: !1, line: 178, column: 17)
!250 = !DILocation(line: 178, column: 28, scope: !249)
!251 = !DILocation(line: 178, column: 44, scope: !249)
!252 = !DILocation(line: 178, column: 47, scope: !249)
!253 = !DILocation(line: 178, column: 58, scope: !249)
!254 = !DILocation(line: 178, column: 17, scope: !218)
!255 = !DILocation(line: 180, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !249, file: !1, line: 179, column: 13)
!257 = !DILocation(line: 183, column: 25, scope: !218)
!258 = !DILocation(line: 183, column: 13, scope: !218)
!259 = !DILocation(line: 183, column: 37, scope: !218)
!260 = !DILocation(line: 185, column: 25, scope: !218)
!261 = !DILocation(line: 185, column: 20, scope: !218)
!262 = !DILocation(line: 185, column: 18, scope: !218)
!263 = !DILocation(line: 186, column: 9, scope: !218)
!264 = !DILocation(line: 188, column: 13, scope: !265)
!265 = distinct !DILexicalBlock(scope: !208, file: !1, line: 188, column: 13)
!266 = !DILocation(line: 188, column: 27, scope: !265)
!267 = !DILocation(line: 188, column: 13, scope: !208)
!268 = !DILocation(line: 190, column: 26, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 189, column: 9)
!270 = !DILocation(line: 190, column: 13, scope: !269)
!271 = !DILocation(line: 191, column: 9, scope: !269)
!272 = !DILocation(line: 199, column: 5, scope: !200)
!273 = !DILabel(scope: !200, name: "sink", file: !1, line: 200)
!274 = !DILocation(line: 200, column: 1, scope: !200)
!275 = !DILocalVariable(name: "i", scope: !276, file: !1, line: 202, type: !68)
!276 = distinct !DILexicalBlock(scope: !200, file: !1, line: 201, column: 5)
!277 = !DILocation(line: 202, column: 13, scope: !276)
!278 = !DILocalVariable(name: "buffer", scope: !276, file: !1, line: 203, type: !167)
!279 = !DILocation(line: 203, column: 13, scope: !276)
!280 = !DILocation(line: 205, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 205, column: 13)
!282 = !DILocation(line: 205, column: 18, scope: !281)
!283 = !DILocation(line: 205, column: 23, scope: !281)
!284 = !DILocation(line: 205, column: 26, scope: !281)
!285 = !DILocation(line: 205, column: 31, scope: !281)
!286 = !DILocation(line: 205, column: 13, scope: !276)
!287 = !DILocation(line: 207, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !1, line: 206, column: 9)
!289 = !DILocation(line: 207, column: 13, scope: !288)
!290 = !DILocation(line: 207, column: 26, scope: !288)
!291 = !DILocation(line: 209, column: 19, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !1, line: 209, column: 13)
!293 = !DILocation(line: 209, column: 17, scope: !292)
!294 = !DILocation(line: 209, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 209, column: 13)
!296 = !DILocation(line: 209, column: 26, scope: !295)
!297 = !DILocation(line: 209, column: 13, scope: !292)
!298 = !DILocation(line: 211, column: 37, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 210, column: 13)
!300 = !DILocation(line: 211, column: 30, scope: !299)
!301 = !DILocation(line: 211, column: 17, scope: !299)
!302 = !DILocation(line: 212, column: 13, scope: !299)
!303 = !DILocation(line: 209, column: 33, scope: !295)
!304 = !DILocation(line: 209, column: 13, scope: !295)
!305 = distinct !{!305, !297, !306, !195}
!306 = !DILocation(line: 212, column: 13, scope: !292)
!307 = !DILocation(line: 213, column: 9, scope: !288)
!308 = !DILocation(line: 216, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !281, file: !1, line: 215, column: 9)
!310 = !DILocation(line: 219, column: 1, scope: !200)
!311 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 222, type: !64, scopeLine: 223, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!312 = !DILocalVariable(name: "data", scope: !311, file: !1, line: 224, type: !68)
!313 = !DILocation(line: 224, column: 9, scope: !311)
!314 = !DILocation(line: 226, column: 10, scope: !311)
!315 = !DILocation(line: 227, column: 5, scope: !311)
!316 = !DILabel(scope: !311, name: "source", file: !1, line: 228)
!317 = !DILocation(line: 228, column: 1, scope: !311)
!318 = !DILocation(line: 231, column: 10, scope: !311)
!319 = !DILocation(line: 232, column: 5, scope: !311)
!320 = !DILabel(scope: !311, name: "sink", file: !1, line: 233)
!321 = !DILocation(line: 233, column: 1, scope: !311)
!322 = !DILocalVariable(name: "i", scope: !323, file: !1, line: 235, type: !68)
!323 = distinct !DILexicalBlock(scope: !311, file: !1, line: 234, column: 5)
!324 = !DILocation(line: 235, column: 13, scope: !323)
!325 = !DILocalVariable(name: "buffer", scope: !323, file: !1, line: 236, type: !167)
!326 = !DILocation(line: 236, column: 13, scope: !323)
!327 = !DILocation(line: 239, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 239, column: 13)
!329 = !DILocation(line: 239, column: 18, scope: !328)
!330 = !DILocation(line: 239, column: 13, scope: !323)
!331 = !DILocation(line: 241, column: 20, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !1, line: 240, column: 9)
!333 = !DILocation(line: 241, column: 13, scope: !332)
!334 = !DILocation(line: 241, column: 26, scope: !332)
!335 = !DILocation(line: 243, column: 19, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 243, column: 13)
!337 = !DILocation(line: 243, column: 17, scope: !336)
!338 = !DILocation(line: 243, column: 24, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !1, line: 243, column: 13)
!340 = !DILocation(line: 243, column: 26, scope: !339)
!341 = !DILocation(line: 243, column: 13, scope: !336)
!342 = !DILocation(line: 245, column: 37, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !1, line: 244, column: 13)
!344 = !DILocation(line: 245, column: 30, scope: !343)
!345 = !DILocation(line: 245, column: 17, scope: !343)
!346 = !DILocation(line: 246, column: 13, scope: !343)
!347 = !DILocation(line: 243, column: 33, scope: !339)
!348 = !DILocation(line: 243, column: 13, scope: !339)
!349 = distinct !{!349, !341, !350, !195}
!350 = !DILocation(line: 246, column: 13, scope: !336)
!351 = !DILocation(line: 247, column: 9, scope: !332)
!352 = !DILocation(line: 250, column: 13, scope: !353)
!353 = distinct !DILexicalBlock(scope: !328, file: !1, line: 249, column: 9)
!354 = !DILocation(line: 253, column: 1, scope: !311)
!355 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18_good", scope: !1, file: !1, line: 255, type: !64, scopeLine: 256, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!356 = !DILocation(line: 257, column: 5, scope: !355)
!357 = !DILocation(line: 258, column: 5, scope: !355)
!358 = !DILocation(line: 259, column: 1, scope: !355)
