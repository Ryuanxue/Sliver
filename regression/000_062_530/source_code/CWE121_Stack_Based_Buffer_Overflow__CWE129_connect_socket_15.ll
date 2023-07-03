; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad() #0 !dbg !63 {
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
define dso_local void @goodB2G1() #0 !dbg !194 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !195, metadata !DIExpression()), !dbg !196
  store i32 -1, i32* %data, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 -1, i32* %connectSocket, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !205, metadata !DIExpression()), !dbg !206
  br label %do.body, !dbg !207

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !208
  store i32 %call, i32* %connectSocket, align 4, !dbg !210
  %0 = load i32, i32* %connectSocket, align 4, !dbg !211
  %cmp = icmp eq i32 %0, -1, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !215

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !217
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !218
  store i16 2, i16* %sin_family, align 4, !dbg !219
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !220
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !221
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !222
  store i32 %call1, i32* %s_addr, align 4, !dbg !223
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !224
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !225
  store i16 %call2, i16* %sin_port, align 2, !dbg !226
  %2 = load i32, i32* %connectSocket, align 4, !dbg !227
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !229
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !230
  %cmp4 = icmp eq i32 %call3, -1, !dbg !231
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !232

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !233

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !235
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !236
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !237
  %conv = trunc i64 %call7 to i32, !dbg !237
  store i32 %conv, i32* %recvResult, align 4, !dbg !238
  %5 = load i32, i32* %recvResult, align 4, !dbg !239
  %cmp8 = icmp eq i32 %5, -1, !dbg !241
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !242

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !243
  %cmp10 = icmp eq i32 %6, 0, !dbg !244
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !245

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !246

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !248
  %idxprom = sext i32 %7 to i64, !dbg !249
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !249
  store i8 0, i8* %arrayidx, align 1, !dbg !250
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !251
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !252
  store i32 %call15, i32* %data, align 4, !dbg !253
  br label %do.end, !dbg !254

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !255
  %cmp16 = icmp ne i32 %8, -1, !dbg !257
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !258

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !259
  %call19 = call i32 @close(i32 %9), !dbg !261
  br label %if.end20, !dbg !262

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !266, metadata !DIExpression()), !dbg !267
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !267
  %11 = load i32, i32* %data, align 4, !dbg !268
  %cmp21 = icmp sge i32 %11, 0, !dbg !270
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !271

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !272
  %cmp23 = icmp slt i32 %12, 10, !dbg !273
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !274

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !275
  %idxprom26 = sext i32 %13 to i64, !dbg !277
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !277
  store i32 1, i32* %arrayidx27, align 4, !dbg !278
  store i32 0, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !281

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !282
  %cmp28 = icmp slt i32 %14, 10, !dbg !284
  br i1 %cmp28, label %for.body, label %for.end, !dbg !285

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !286
  %idxprom30 = sext i32 %15 to i64, !dbg !288
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !288
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !288
  call void @printIntLine(i32 %16), !dbg !289
  br label %for.inc, !dbg !290

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !291
  %inc = add nsw i32 %17, 1, !dbg !291
  store i32 %inc, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !292, !llvm.loop !293

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !295

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !296
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !299 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 -1, i32* %data, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !303, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !308, metadata !DIExpression()), !dbg !309
  store i32 -1, i32* %connectSocket, align 4, !dbg !309
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !310, metadata !DIExpression()), !dbg !311
  br label %do.body, !dbg !312

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !313
  store i32 %call, i32* %connectSocket, align 4, !dbg !315
  %0 = load i32, i32* %connectSocket, align 4, !dbg !316
  %cmp = icmp eq i32 %0, -1, !dbg !318
  br i1 %cmp, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !320

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !322
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !322
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !323
  store i16 2, i16* %sin_family, align 4, !dbg !324
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !325
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !326
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !327
  store i32 %call1, i32* %s_addr, align 4, !dbg !328
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !329
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !330
  store i16 %call2, i16* %sin_port, align 2, !dbg !331
  %2 = load i32, i32* %connectSocket, align 4, !dbg !332
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !334
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !335
  %cmp4 = icmp eq i32 %call3, -1, !dbg !336
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !337

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !338

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !340
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !341
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !342
  %conv = trunc i64 %call7 to i32, !dbg !342
  store i32 %conv, i32* %recvResult, align 4, !dbg !343
  %5 = load i32, i32* %recvResult, align 4, !dbg !344
  %cmp8 = icmp eq i32 %5, -1, !dbg !346
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !347

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !348
  %cmp10 = icmp eq i32 %6, 0, !dbg !349
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !350

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !351

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !353
  %idxprom = sext i32 %7 to i64, !dbg !354
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !354
  store i8 0, i8* %arrayidx, align 1, !dbg !355
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !356
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !357
  store i32 %call15, i32* %data, align 4, !dbg !358
  br label %do.end, !dbg !359

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !360
  %cmp16 = icmp ne i32 %8, -1, !dbg !362
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !363

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !364
  %call19 = call i32 @close(i32 %9), !dbg !366
  br label %if.end20, !dbg !367

if.end20:                                         ; preds = %if.then18, %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !371, metadata !DIExpression()), !dbg !372
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !372
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !372
  %11 = load i32, i32* %data, align 4, !dbg !373
  %cmp21 = icmp sge i32 %11, 0, !dbg !375
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !376

land.lhs.true:                                    ; preds = %if.end20
  %12 = load i32, i32* %data, align 4, !dbg !377
  %cmp23 = icmp slt i32 %12, 10, !dbg !378
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !379

if.then25:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !380
  %idxprom26 = sext i32 %13 to i64, !dbg !382
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom26, !dbg !382
  store i32 1, i32* %arrayidx27, align 4, !dbg !383
  store i32 0, i32* %i, align 4, !dbg !384
  br label %for.cond, !dbg !386

for.cond:                                         ; preds = %for.inc, %if.then25
  %14 = load i32, i32* %i, align 4, !dbg !387
  %cmp28 = icmp slt i32 %14, 10, !dbg !389
  br i1 %cmp28, label %for.body, label %for.end, !dbg !390

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !391
  %idxprom30 = sext i32 %15 to i64, !dbg !393
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !393
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !393
  call void @printIntLine(i32 %16), !dbg !394
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !396
  %inc = add nsw i32 %17, 1, !dbg !396
  store i32 %inc, i32* %i, align 4, !dbg !396
  br label %for.cond, !dbg !397, !llvm.loop !398

for.end:                                          ; preds = %for.cond
  br label %if.end32, !dbg !400

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !401
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !404 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !405, metadata !DIExpression()), !dbg !406
  store i32 -1, i32* %data, align 4, !dbg !407
  store i32 7, i32* %data, align 4, !dbg !408
  call void @llvm.dbg.declare(metadata i32* %i, metadata !409, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !413
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !413
  %1 = load i32, i32* %data, align 4, !dbg !414
  %cmp = icmp sge i32 %1, 0, !dbg !416
  br i1 %cmp, label %if.then, label %if.else, !dbg !417

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !418
  %idxprom = sext i32 %2 to i64, !dbg !420
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !420
  store i32 1, i32* %arrayidx, align 4, !dbg !421
  store i32 0, i32* %i, align 4, !dbg !422
  br label %for.cond, !dbg !424

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !425
  %cmp1 = icmp slt i32 %3, 10, !dbg !427
  br i1 %cmp1, label %for.body, label %for.end, !dbg !428

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !429
  %idxprom2 = sext i32 %4 to i64, !dbg !431
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !431
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !431
  call void @printIntLine(i32 %5), !dbg !432
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !434
  %inc = add nsw i32 %6, 1, !dbg !434
  store i32 %inc, i32* %i, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !438

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !439
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !442 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !443, metadata !DIExpression()), !dbg !444
  store i32 -1, i32* %data, align 4, !dbg !445
  store i32 7, i32* %data, align 4, !dbg !446
  call void @llvm.dbg.declare(metadata i32* %i, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !451
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !451
  %1 = load i32, i32* %data, align 4, !dbg !452
  %cmp = icmp sge i32 %1, 0, !dbg !454
  br i1 %cmp, label %if.then, label %if.else, !dbg !455

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !456
  %idxprom = sext i32 %2 to i64, !dbg !458
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !458
  store i32 1, i32* %arrayidx, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !463
  %cmp1 = icmp slt i32 %3, 10, !dbg !465
  br i1 %cmp1, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !467
  %idxprom2 = sext i32 %4 to i64, !dbg !469
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !469
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !469
  call void @printIntLine(i32 %5), !dbg !470
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !472
  %inc = add nsw i32 %6, 1, !dbg !472
  store i32 %inc, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !476

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !477
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good() #0 !dbg !480 {
entry:
  call void @goodB2G1(), !dbg !481
  call void @goodB2G2(), !dbg !482
  call void @goodG2B1(), !dbg !483
  call void @goodG2B2(), !dbg !484
  ret void, !dbg !485
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_530/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocalVariable(name: "recvResult", scope: !72, file: !1, line: 58, type: !68)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 53, column: 5)
!73 = !DILocation(line: 58, column: 13, scope: !72)
!74 = !DILocalVariable(name: "service", scope: !72, file: !1, line: 59, type: !75)
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
!96 = !DILocation(line: 59, column: 28, scope: !72)
!97 = !DILocalVariable(name: "connectSocket", scope: !72, file: !1, line: 60, type: !68)
!98 = !DILocation(line: 60, column: 16, scope: !72)
!99 = !DILocalVariable(name: "inputBuffer", scope: !72, file: !1, line: 61, type: !55)
!100 = !DILocation(line: 61, column: 14, scope: !72)
!101 = !DILocation(line: 62, column: 9, scope: !72)
!102 = !DILocation(line: 72, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !72, file: !1, line: 63, column: 9)
!104 = !DILocation(line: 72, column: 27, scope: !103)
!105 = !DILocation(line: 73, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 73, column: 17)
!107 = !DILocation(line: 73, column: 31, scope: !106)
!108 = !DILocation(line: 73, column: 17, scope: !103)
!109 = !DILocation(line: 75, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 74, column: 13)
!111 = !DILocation(line: 77, column: 13, scope: !103)
!112 = !DILocation(line: 78, column: 21, scope: !103)
!113 = !DILocation(line: 78, column: 32, scope: !103)
!114 = !DILocation(line: 79, column: 39, scope: !103)
!115 = !DILocation(line: 79, column: 21, scope: !103)
!116 = !DILocation(line: 79, column: 30, scope: !103)
!117 = !DILocation(line: 79, column: 37, scope: !103)
!118 = !DILocation(line: 80, column: 32, scope: !103)
!119 = !DILocation(line: 80, column: 21, scope: !103)
!120 = !DILocation(line: 80, column: 30, scope: !103)
!121 = !DILocation(line: 81, column: 25, scope: !122)
!122 = distinct !DILexicalBlock(scope: !103, file: !1, line: 81, column: 17)
!123 = !DILocation(line: 81, column: 40, scope: !122)
!124 = !DILocation(line: 81, column: 17, scope: !122)
!125 = !DILocation(line: 81, column: 85, scope: !122)
!126 = !DILocation(line: 81, column: 17, scope: !103)
!127 = !DILocation(line: 83, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 82, column: 13)
!129 = !DILocation(line: 87, column: 31, scope: !103)
!130 = !DILocation(line: 87, column: 46, scope: !103)
!131 = !DILocation(line: 87, column: 26, scope: !103)
!132 = !DILocation(line: 87, column: 24, scope: !103)
!133 = !DILocation(line: 88, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !103, file: !1, line: 88, column: 17)
!135 = !DILocation(line: 88, column: 28, scope: !134)
!136 = !DILocation(line: 88, column: 44, scope: !134)
!137 = !DILocation(line: 88, column: 47, scope: !134)
!138 = !DILocation(line: 88, column: 58, scope: !134)
!139 = !DILocation(line: 88, column: 17, scope: !103)
!140 = !DILocation(line: 90, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 89, column: 13)
!142 = !DILocation(line: 93, column: 25, scope: !103)
!143 = !DILocation(line: 93, column: 13, scope: !103)
!144 = !DILocation(line: 93, column: 37, scope: !103)
!145 = !DILocation(line: 95, column: 25, scope: !103)
!146 = !DILocation(line: 95, column: 20, scope: !103)
!147 = !DILocation(line: 95, column: 18, scope: !103)
!148 = !DILocation(line: 96, column: 9, scope: !103)
!149 = !DILocation(line: 98, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !72, file: !1, line: 98, column: 13)
!151 = !DILocation(line: 98, column: 27, scope: !150)
!152 = !DILocation(line: 98, column: 13, scope: !72)
!153 = !DILocation(line: 100, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 99, column: 9)
!155 = !DILocation(line: 100, column: 13, scope: !154)
!156 = !DILocation(line: 101, column: 9, scope: !154)
!157 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 119, type: !68)
!158 = distinct !DILexicalBlock(scope: !63, file: !1, line: 118, column: 5)
!159 = !DILocation(line: 119, column: 13, scope: !158)
!160 = !DILocalVariable(name: "buffer", scope: !158, file: !1, line: 120, type: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 10)
!164 = !DILocation(line: 120, column: 13, scope: !158)
!165 = !DILocation(line: 123, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 123, column: 13)
!167 = !DILocation(line: 123, column: 18, scope: !166)
!168 = !DILocation(line: 123, column: 13, scope: !158)
!169 = !DILocation(line: 125, column: 20, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 124, column: 9)
!171 = !DILocation(line: 125, column: 13, scope: !170)
!172 = !DILocation(line: 125, column: 26, scope: !170)
!173 = !DILocation(line: 127, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 127, column: 13)
!175 = !DILocation(line: 127, column: 17, scope: !174)
!176 = !DILocation(line: 127, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 127, column: 13)
!178 = !DILocation(line: 127, column: 26, scope: !177)
!179 = !DILocation(line: 127, column: 13, scope: !174)
!180 = !DILocation(line: 129, column: 37, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 128, column: 13)
!182 = !DILocation(line: 129, column: 30, scope: !181)
!183 = !DILocation(line: 129, column: 17, scope: !181)
!184 = !DILocation(line: 130, column: 13, scope: !181)
!185 = !DILocation(line: 127, column: 33, scope: !177)
!186 = !DILocation(line: 127, column: 13, scope: !177)
!187 = distinct !{!187, !179, !188, !189}
!188 = !DILocation(line: 130, column: 13, scope: !174)
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 131, column: 9, scope: !170)
!191 = !DILocation(line: 134, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !1, line: 133, column: 9)
!193 = !DILocation(line: 143, column: 1, scope: !63)
!194 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 150, type: !64, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!195 = !DILocalVariable(name: "data", scope: !194, file: !1, line: 152, type: !68)
!196 = !DILocation(line: 152, column: 9, scope: !194)
!197 = !DILocation(line: 154, column: 10, scope: !194)
!198 = !DILocalVariable(name: "recvResult", scope: !199, file: !1, line: 163, type: !68)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 158, column: 5)
!200 = !DILocation(line: 163, column: 13, scope: !199)
!201 = !DILocalVariable(name: "service", scope: !199, file: !1, line: 164, type: !75)
!202 = !DILocation(line: 164, column: 28, scope: !199)
!203 = !DILocalVariable(name: "connectSocket", scope: !199, file: !1, line: 165, type: !68)
!204 = !DILocation(line: 165, column: 16, scope: !199)
!205 = !DILocalVariable(name: "inputBuffer", scope: !199, file: !1, line: 166, type: !55)
!206 = !DILocation(line: 166, column: 14, scope: !199)
!207 = !DILocation(line: 167, column: 9, scope: !199)
!208 = !DILocation(line: 177, column: 29, scope: !209)
!209 = distinct !DILexicalBlock(scope: !199, file: !1, line: 168, column: 9)
!210 = !DILocation(line: 177, column: 27, scope: !209)
!211 = !DILocation(line: 178, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 178, column: 17)
!213 = !DILocation(line: 178, column: 31, scope: !212)
!214 = !DILocation(line: 178, column: 17, scope: !209)
!215 = !DILocation(line: 180, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 179, column: 13)
!217 = !DILocation(line: 182, column: 13, scope: !209)
!218 = !DILocation(line: 183, column: 21, scope: !209)
!219 = !DILocation(line: 183, column: 32, scope: !209)
!220 = !DILocation(line: 184, column: 39, scope: !209)
!221 = !DILocation(line: 184, column: 21, scope: !209)
!222 = !DILocation(line: 184, column: 30, scope: !209)
!223 = !DILocation(line: 184, column: 37, scope: !209)
!224 = !DILocation(line: 185, column: 32, scope: !209)
!225 = !DILocation(line: 185, column: 21, scope: !209)
!226 = !DILocation(line: 185, column: 30, scope: !209)
!227 = !DILocation(line: 186, column: 25, scope: !228)
!228 = distinct !DILexicalBlock(scope: !209, file: !1, line: 186, column: 17)
!229 = !DILocation(line: 186, column: 40, scope: !228)
!230 = !DILocation(line: 186, column: 17, scope: !228)
!231 = !DILocation(line: 186, column: 85, scope: !228)
!232 = !DILocation(line: 186, column: 17, scope: !209)
!233 = !DILocation(line: 188, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !1, line: 187, column: 13)
!235 = !DILocation(line: 192, column: 31, scope: !209)
!236 = !DILocation(line: 192, column: 46, scope: !209)
!237 = !DILocation(line: 192, column: 26, scope: !209)
!238 = !DILocation(line: 192, column: 24, scope: !209)
!239 = !DILocation(line: 193, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !209, file: !1, line: 193, column: 17)
!241 = !DILocation(line: 193, column: 28, scope: !240)
!242 = !DILocation(line: 193, column: 44, scope: !240)
!243 = !DILocation(line: 193, column: 47, scope: !240)
!244 = !DILocation(line: 193, column: 58, scope: !240)
!245 = !DILocation(line: 193, column: 17, scope: !209)
!246 = !DILocation(line: 195, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !1, line: 194, column: 13)
!248 = !DILocation(line: 198, column: 25, scope: !209)
!249 = !DILocation(line: 198, column: 13, scope: !209)
!250 = !DILocation(line: 198, column: 37, scope: !209)
!251 = !DILocation(line: 200, column: 25, scope: !209)
!252 = !DILocation(line: 200, column: 20, scope: !209)
!253 = !DILocation(line: 200, column: 18, scope: !209)
!254 = !DILocation(line: 201, column: 9, scope: !209)
!255 = !DILocation(line: 203, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !199, file: !1, line: 203, column: 13)
!257 = !DILocation(line: 203, column: 27, scope: !256)
!258 = !DILocation(line: 203, column: 13, scope: !199)
!259 = !DILocation(line: 205, column: 26, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 204, column: 9)
!261 = !DILocation(line: 205, column: 13, scope: !260)
!262 = !DILocation(line: 206, column: 9, scope: !260)
!263 = !DILocalVariable(name: "i", scope: !264, file: !1, line: 228, type: !68)
!264 = distinct !DILexicalBlock(scope: !194, file: !1, line: 227, column: 5)
!265 = !DILocation(line: 228, column: 13, scope: !264)
!266 = !DILocalVariable(name: "buffer", scope: !264, file: !1, line: 229, type: !161)
!267 = !DILocation(line: 229, column: 13, scope: !264)
!268 = !DILocation(line: 231, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !1, line: 231, column: 13)
!270 = !DILocation(line: 231, column: 18, scope: !269)
!271 = !DILocation(line: 231, column: 23, scope: !269)
!272 = !DILocation(line: 231, column: 26, scope: !269)
!273 = !DILocation(line: 231, column: 31, scope: !269)
!274 = !DILocation(line: 231, column: 13, scope: !264)
!275 = !DILocation(line: 233, column: 20, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !1, line: 232, column: 9)
!277 = !DILocation(line: 233, column: 13, scope: !276)
!278 = !DILocation(line: 233, column: 26, scope: !276)
!279 = !DILocation(line: 235, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 235, column: 13)
!281 = !DILocation(line: 235, column: 17, scope: !280)
!282 = !DILocation(line: 235, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 235, column: 13)
!284 = !DILocation(line: 235, column: 26, scope: !283)
!285 = !DILocation(line: 235, column: 13, scope: !280)
!286 = !DILocation(line: 237, column: 37, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 236, column: 13)
!288 = !DILocation(line: 237, column: 30, scope: !287)
!289 = !DILocation(line: 237, column: 17, scope: !287)
!290 = !DILocation(line: 238, column: 13, scope: !287)
!291 = !DILocation(line: 235, column: 33, scope: !283)
!292 = !DILocation(line: 235, column: 13, scope: !283)
!293 = distinct !{!293, !285, !294, !189}
!294 = !DILocation(line: 238, column: 13, scope: !280)
!295 = !DILocation(line: 239, column: 9, scope: !276)
!296 = !DILocation(line: 242, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !269, file: !1, line: 241, column: 9)
!298 = !DILocation(line: 247, column: 1, scope: !194)
!299 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 250, type: !64, scopeLine: 251, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!300 = !DILocalVariable(name: "data", scope: !299, file: !1, line: 252, type: !68)
!301 = !DILocation(line: 252, column: 9, scope: !299)
!302 = !DILocation(line: 254, column: 10, scope: !299)
!303 = !DILocalVariable(name: "recvResult", scope: !304, file: !1, line: 263, type: !68)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 258, column: 5)
!305 = !DILocation(line: 263, column: 13, scope: !304)
!306 = !DILocalVariable(name: "service", scope: !304, file: !1, line: 264, type: !75)
!307 = !DILocation(line: 264, column: 28, scope: !304)
!308 = !DILocalVariable(name: "connectSocket", scope: !304, file: !1, line: 265, type: !68)
!309 = !DILocation(line: 265, column: 16, scope: !304)
!310 = !DILocalVariable(name: "inputBuffer", scope: !304, file: !1, line: 266, type: !55)
!311 = !DILocation(line: 266, column: 14, scope: !304)
!312 = !DILocation(line: 267, column: 9, scope: !304)
!313 = !DILocation(line: 277, column: 29, scope: !314)
!314 = distinct !DILexicalBlock(scope: !304, file: !1, line: 268, column: 9)
!315 = !DILocation(line: 277, column: 27, scope: !314)
!316 = !DILocation(line: 278, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !1, line: 278, column: 17)
!318 = !DILocation(line: 278, column: 31, scope: !317)
!319 = !DILocation(line: 278, column: 17, scope: !314)
!320 = !DILocation(line: 280, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !1, line: 279, column: 13)
!322 = !DILocation(line: 282, column: 13, scope: !314)
!323 = !DILocation(line: 283, column: 21, scope: !314)
!324 = !DILocation(line: 283, column: 32, scope: !314)
!325 = !DILocation(line: 284, column: 39, scope: !314)
!326 = !DILocation(line: 284, column: 21, scope: !314)
!327 = !DILocation(line: 284, column: 30, scope: !314)
!328 = !DILocation(line: 284, column: 37, scope: !314)
!329 = !DILocation(line: 285, column: 32, scope: !314)
!330 = !DILocation(line: 285, column: 21, scope: !314)
!331 = !DILocation(line: 285, column: 30, scope: !314)
!332 = !DILocation(line: 286, column: 25, scope: !333)
!333 = distinct !DILexicalBlock(scope: !314, file: !1, line: 286, column: 17)
!334 = !DILocation(line: 286, column: 40, scope: !333)
!335 = !DILocation(line: 286, column: 17, scope: !333)
!336 = !DILocation(line: 286, column: 85, scope: !333)
!337 = !DILocation(line: 286, column: 17, scope: !314)
!338 = !DILocation(line: 288, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !333, file: !1, line: 287, column: 13)
!340 = !DILocation(line: 292, column: 31, scope: !314)
!341 = !DILocation(line: 292, column: 46, scope: !314)
!342 = !DILocation(line: 292, column: 26, scope: !314)
!343 = !DILocation(line: 292, column: 24, scope: !314)
!344 = !DILocation(line: 293, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !314, file: !1, line: 293, column: 17)
!346 = !DILocation(line: 293, column: 28, scope: !345)
!347 = !DILocation(line: 293, column: 44, scope: !345)
!348 = !DILocation(line: 293, column: 47, scope: !345)
!349 = !DILocation(line: 293, column: 58, scope: !345)
!350 = !DILocation(line: 293, column: 17, scope: !314)
!351 = !DILocation(line: 295, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !1, line: 294, column: 13)
!353 = !DILocation(line: 298, column: 25, scope: !314)
!354 = !DILocation(line: 298, column: 13, scope: !314)
!355 = !DILocation(line: 298, column: 37, scope: !314)
!356 = !DILocation(line: 300, column: 25, scope: !314)
!357 = !DILocation(line: 300, column: 20, scope: !314)
!358 = !DILocation(line: 300, column: 18, scope: !314)
!359 = !DILocation(line: 301, column: 9, scope: !314)
!360 = !DILocation(line: 303, column: 13, scope: !361)
!361 = distinct !DILexicalBlock(scope: !304, file: !1, line: 303, column: 13)
!362 = !DILocation(line: 303, column: 27, scope: !361)
!363 = !DILocation(line: 303, column: 13, scope: !304)
!364 = !DILocation(line: 305, column: 26, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 304, column: 9)
!366 = !DILocation(line: 305, column: 13, scope: !365)
!367 = !DILocation(line: 306, column: 9, scope: !365)
!368 = !DILocalVariable(name: "i", scope: !369, file: !1, line: 324, type: !68)
!369 = distinct !DILexicalBlock(scope: !299, file: !1, line: 323, column: 5)
!370 = !DILocation(line: 324, column: 13, scope: !369)
!371 = !DILocalVariable(name: "buffer", scope: !369, file: !1, line: 325, type: !161)
!372 = !DILocation(line: 325, column: 13, scope: !369)
!373 = !DILocation(line: 327, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !1, line: 327, column: 13)
!375 = !DILocation(line: 327, column: 18, scope: !374)
!376 = !DILocation(line: 327, column: 23, scope: !374)
!377 = !DILocation(line: 327, column: 26, scope: !374)
!378 = !DILocation(line: 327, column: 31, scope: !374)
!379 = !DILocation(line: 327, column: 13, scope: !369)
!380 = !DILocation(line: 329, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !374, file: !1, line: 328, column: 9)
!382 = !DILocation(line: 329, column: 13, scope: !381)
!383 = !DILocation(line: 329, column: 26, scope: !381)
!384 = !DILocation(line: 331, column: 19, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 331, column: 13)
!386 = !DILocation(line: 331, column: 17, scope: !385)
!387 = !DILocation(line: 331, column: 24, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !1, line: 331, column: 13)
!389 = !DILocation(line: 331, column: 26, scope: !388)
!390 = !DILocation(line: 331, column: 13, scope: !385)
!391 = !DILocation(line: 333, column: 37, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !1, line: 332, column: 13)
!393 = !DILocation(line: 333, column: 30, scope: !392)
!394 = !DILocation(line: 333, column: 17, scope: !392)
!395 = !DILocation(line: 334, column: 13, scope: !392)
!396 = !DILocation(line: 331, column: 33, scope: !388)
!397 = !DILocation(line: 331, column: 13, scope: !388)
!398 = distinct !{!398, !390, !399, !189}
!399 = !DILocation(line: 334, column: 13, scope: !385)
!400 = !DILocation(line: 335, column: 9, scope: !381)
!401 = !DILocation(line: 338, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !374, file: !1, line: 337, column: 9)
!403 = !DILocation(line: 347, column: 1, scope: !299)
!404 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 350, type: !64, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!405 = !DILocalVariable(name: "data", scope: !404, file: !1, line: 352, type: !68)
!406 = !DILocation(line: 352, column: 9, scope: !404)
!407 = !DILocation(line: 354, column: 10, scope: !404)
!408 = !DILocation(line: 364, column: 14, scope: !404)
!409 = !DILocalVariable(name: "i", scope: !410, file: !1, line: 371, type: !68)
!410 = distinct !DILexicalBlock(scope: !404, file: !1, line: 370, column: 5)
!411 = !DILocation(line: 371, column: 13, scope: !410)
!412 = !DILocalVariable(name: "buffer", scope: !410, file: !1, line: 372, type: !161)
!413 = !DILocation(line: 372, column: 13, scope: !410)
!414 = !DILocation(line: 375, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !1, line: 375, column: 13)
!416 = !DILocation(line: 375, column: 18, scope: !415)
!417 = !DILocation(line: 375, column: 13, scope: !410)
!418 = !DILocation(line: 377, column: 20, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 376, column: 9)
!420 = !DILocation(line: 377, column: 13, scope: !419)
!421 = !DILocation(line: 377, column: 26, scope: !419)
!422 = !DILocation(line: 379, column: 19, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 379, column: 13)
!424 = !DILocation(line: 379, column: 17, scope: !423)
!425 = !DILocation(line: 379, column: 24, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !1, line: 379, column: 13)
!427 = !DILocation(line: 379, column: 26, scope: !426)
!428 = !DILocation(line: 379, column: 13, scope: !423)
!429 = !DILocation(line: 381, column: 37, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !1, line: 380, column: 13)
!431 = !DILocation(line: 381, column: 30, scope: !430)
!432 = !DILocation(line: 381, column: 17, scope: !430)
!433 = !DILocation(line: 382, column: 13, scope: !430)
!434 = !DILocation(line: 379, column: 33, scope: !426)
!435 = !DILocation(line: 379, column: 13, scope: !426)
!436 = distinct !{!436, !428, !437, !189}
!437 = !DILocation(line: 382, column: 13, scope: !423)
!438 = !DILocation(line: 383, column: 9, scope: !419)
!439 = !DILocation(line: 386, column: 13, scope: !440)
!440 = distinct !DILexicalBlock(scope: !415, file: !1, line: 385, column: 9)
!441 = !DILocation(line: 395, column: 1, scope: !404)
!442 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 398, type: !64, scopeLine: 399, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!443 = !DILocalVariable(name: "data", scope: !442, file: !1, line: 400, type: !68)
!444 = !DILocation(line: 400, column: 9, scope: !442)
!445 = !DILocation(line: 402, column: 10, scope: !442)
!446 = !DILocation(line: 408, column: 14, scope: !442)
!447 = !DILocalVariable(name: "i", scope: !448, file: !1, line: 419, type: !68)
!448 = distinct !DILexicalBlock(scope: !442, file: !1, line: 418, column: 5)
!449 = !DILocation(line: 419, column: 13, scope: !448)
!450 = !DILocalVariable(name: "buffer", scope: !448, file: !1, line: 420, type: !161)
!451 = !DILocation(line: 420, column: 13, scope: !448)
!452 = !DILocation(line: 423, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !448, file: !1, line: 423, column: 13)
!454 = !DILocation(line: 423, column: 18, scope: !453)
!455 = !DILocation(line: 423, column: 13, scope: !448)
!456 = !DILocation(line: 425, column: 20, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !1, line: 424, column: 9)
!458 = !DILocation(line: 425, column: 13, scope: !457)
!459 = !DILocation(line: 425, column: 26, scope: !457)
!460 = !DILocation(line: 427, column: 19, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !1, line: 427, column: 13)
!462 = !DILocation(line: 427, column: 17, scope: !461)
!463 = !DILocation(line: 427, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 427, column: 13)
!465 = !DILocation(line: 427, column: 26, scope: !464)
!466 = !DILocation(line: 427, column: 13, scope: !461)
!467 = !DILocation(line: 429, column: 37, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !1, line: 428, column: 13)
!469 = !DILocation(line: 429, column: 30, scope: !468)
!470 = !DILocation(line: 429, column: 17, scope: !468)
!471 = !DILocation(line: 430, column: 13, scope: !468)
!472 = !DILocation(line: 427, column: 33, scope: !464)
!473 = !DILocation(line: 427, column: 13, scope: !464)
!474 = distinct !{!474, !466, !475, !189}
!475 = !DILocation(line: 430, column: 13, scope: !461)
!476 = !DILocation(line: 431, column: 9, scope: !457)
!477 = !DILocation(line: 434, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !453, file: !1, line: 433, column: 9)
!479 = !DILocation(line: 443, column: 1, scope: !442)
!480 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good", scope: !1, file: !1, line: 445, type: !64, scopeLine: 446, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!481 = !DILocation(line: 447, column: 5, scope: !480)
!482 = !DILocation(line: 448, column: 5, scope: !480)
!483 = !DILocation(line: 449, column: 5, scope: !480)
!484 = !DILocation(line: 450, column: 5, scope: !480)
!485 = !DILocation(line: 451, column: 1, scope: !480)
