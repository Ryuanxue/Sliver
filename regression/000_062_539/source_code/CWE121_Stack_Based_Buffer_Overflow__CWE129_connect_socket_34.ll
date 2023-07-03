; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !70, metadata !DIExpression()), !dbg !77
  store i32 -1, i32* %data, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !82, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 -1, i32* %connectSocket, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  br label %do.body, !dbg !109

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !110
  store i32 %call, i32* %connectSocket, align 4, !dbg !112
  %0 = load i32, i32* %connectSocket, align 4, !dbg !113
  %cmp = icmp eq i32 %0, -1, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !117

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !119
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !120
  store i16 2, i16* %sin_family, align 4, !dbg !121
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 %call1, i32* %s_addr, align 4, !dbg !125
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !127
  store i16 %call2, i16* %sin_port, align 2, !dbg !128
  %2 = load i32, i32* %connectSocket, align 4, !dbg !129
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !131
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !132
  %cmp4 = icmp eq i32 %call3, -1, !dbg !133
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !134

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !137
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !138
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !139
  %conv = trunc i64 %call7 to i32, !dbg !139
  store i32 %conv, i32* %recvResult, align 4, !dbg !140
  %5 = load i32, i32* %recvResult, align 4, !dbg !141
  %cmp8 = icmp eq i32 %5, -1, !dbg !143
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !144

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !145
  %cmp10 = icmp eq i32 %6, 0, !dbg !146
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !147

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !148

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !150
  %idxprom = sext i32 %7 to i64, !dbg !151
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !151
  store i8 0, i8* %arrayidx, align 1, !dbg !152
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !153
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !154
  store i32 %call15, i32* %data, align 4, !dbg !155
  br label %do.end, !dbg !156

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !157
  %cmp16 = icmp ne i32 %8, -1, !dbg !159
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !160

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !161
  %call19 = call i32 @close(i32 %9), !dbg !163
  br label %if.end20, !dbg !164

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !165
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !166
  store i32 %10, i32* %unionFirst, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !168, metadata !DIExpression()), !dbg !170
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !171
  %11 = load i32, i32* %unionSecond, align 4, !dbg !171
  store i32 %11, i32* %data21, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %i, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !175, metadata !DIExpression()), !dbg !179
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !179
  %13 = load i32, i32* %data21, align 4, !dbg !180
  %cmp22 = icmp sge i32 %13, 0, !dbg !182
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !183

if.then24:                                        ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !184
  %idxprom25 = sext i32 %14 to i64, !dbg !186
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom25, !dbg !186
  store i32 1, i32* %arrayidx26, align 4, !dbg !187
  store i32 0, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !191
  %cmp27 = icmp slt i32 %15, 10, !dbg !193
  br i1 %cmp27, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !195
  %idxprom29 = sext i32 %16 to i64, !dbg !197
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom29, !dbg !197
  %17 = load i32, i32* %arrayidx30, align 4, !dbg !197
  call void @printIntLine(i32 %17), !dbg !198
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !200
  %inc = add nsw i32 %18, 1, !dbg !200
  store i32 %inc, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !205

if.else:                                          ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !206
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  ret void, !dbg !208
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
define dso_local void @goodG2B() #0 !dbg !209 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !212, metadata !DIExpression()), !dbg !213
  store i32 -1, i32* %data, align 4, !dbg !214
  store i32 7, i32* %data, align 4, !dbg !215
  %0 = load i32, i32* %data, align 4, !dbg !216
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !217
  store i32 %0, i32* %unionFirst, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !219, metadata !DIExpression()), !dbg !221
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !222
  %1 = load i32, i32* %unionSecond, align 4, !dbg !222
  store i32 %1, i32* %data1, align 4, !dbg !221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !226, metadata !DIExpression()), !dbg !227
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !227
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !227
  %3 = load i32, i32* %data1, align 4, !dbg !228
  %cmp = icmp sge i32 %3, 0, !dbg !230
  br i1 %cmp, label %if.then, label %if.else, !dbg !231

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !232
  %idxprom = sext i32 %4 to i64, !dbg !234
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !234
  store i32 1, i32* %arrayidx, align 4, !dbg !235
  store i32 0, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !238

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !239
  %cmp2 = icmp slt i32 %5, 10, !dbg !241
  br i1 %cmp2, label %for.body, label %for.end, !dbg !242

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !243
  %idxprom3 = sext i32 %6 to i64, !dbg !245
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !245
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !245
  call void @printIntLine(i32 %7), !dbg !246
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !248
  %inc = add nsw i32 %8, 1, !dbg !248
  store i32 %inc, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !252

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !253
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !256 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data21 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 -1, i32* %data, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !267, metadata !DIExpression()), !dbg !268
  store i32 -1, i32* %connectSocket, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !269, metadata !DIExpression()), !dbg !270
  br label %do.body, !dbg !271

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !272
  store i32 %call, i32* %connectSocket, align 4, !dbg !274
  %0 = load i32, i32* %connectSocket, align 4, !dbg !275
  %cmp = icmp eq i32 %0, -1, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !279

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !281
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !282
  store i16 2, i16* %sin_family, align 4, !dbg !283
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !284
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !285
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !286
  store i32 %call1, i32* %s_addr, align 4, !dbg !287
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !288
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !289
  store i16 %call2, i16* %sin_port, align 2, !dbg !290
  %2 = load i32, i32* %connectSocket, align 4, !dbg !291
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !293
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !294
  %cmp4 = icmp eq i32 %call3, -1, !dbg !295
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !296

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !297

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !299
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !300
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !301
  %conv = trunc i64 %call7 to i32, !dbg !301
  store i32 %conv, i32* %recvResult, align 4, !dbg !302
  %5 = load i32, i32* %recvResult, align 4, !dbg !303
  %cmp8 = icmp eq i32 %5, -1, !dbg !305
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !306

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !307
  %cmp10 = icmp eq i32 %6, 0, !dbg !308
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !309

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !310

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !312
  %idxprom = sext i32 %7 to i64, !dbg !313
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !313
  store i8 0, i8* %arrayidx, align 1, !dbg !314
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !315
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !316
  store i32 %call15, i32* %data, align 4, !dbg !317
  br label %do.end, !dbg !318

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !319
  %cmp16 = icmp ne i32 %8, -1, !dbg !321
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !322

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !323
  %call19 = call i32 @close(i32 %9), !dbg !325
  br label %if.end20, !dbg !326

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data, align 4, !dbg !327
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !328
  store i32 %10, i32* %unionFirst, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata i32* %data21, metadata !330, metadata !DIExpression()), !dbg !332
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %myUnion to i32*, !dbg !333
  %11 = load i32, i32* %unionSecond, align 4, !dbg !333
  store i32 %11, i32* %data21, align 4, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %i, metadata !334, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !337, metadata !DIExpression()), !dbg !338
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !338
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !338
  %13 = load i32, i32* %data21, align 4, !dbg !339
  %cmp22 = icmp sge i32 %13, 0, !dbg !341
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !342

land.lhs.true:                                    ; preds = %if.end20
  %14 = load i32, i32* %data21, align 4, !dbg !343
  %cmp24 = icmp slt i32 %14, 10, !dbg !344
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !345

if.then26:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data21, align 4, !dbg !346
  %idxprom27 = sext i32 %15 to i64, !dbg !348
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom27, !dbg !348
  store i32 1, i32* %arrayidx28, align 4, !dbg !349
  store i32 0, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.inc, %if.then26
  %16 = load i32, i32* %i, align 4, !dbg !353
  %cmp29 = icmp slt i32 %16, 10, !dbg !355
  br i1 %cmp29, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !357
  %idxprom31 = sext i32 %17 to i64, !dbg !359
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom31, !dbg !359
  %18 = load i32, i32* %arrayidx32, align 4, !dbg !359
  call void @printIntLine(i32 %18), !dbg !360
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !362
  %inc = add nsw i32 %19, 1, !dbg !362
  store i32 %inc, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !366

if.else:                                          ; preds = %land.lhs.true, %if.end20
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !367
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good() #0 !dbg !370 {
entry:
  call void @goodG2B(), !dbg !371
  call void @goodB2G(), !dbg !372
  ret void, !dbg !373
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_bad", scope: !1, file: !1, line: 46, type: !64, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 48, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 48, column: 9, scope: !63)
!70 = !DILocalVariable(name: "myUnion", scope: !63, file: !1, line: 49, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType", file: !72, line: 9, baseType: !73)
!72 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/source_code")
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !72, line: 5, size: 32, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !73, file: !72, line: 7, baseType: !68, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !73, file: !72, line: 8, baseType: !68, size: 32)
!77 = !DILocation(line: 49, column: 76, scope: !63)
!78 = !DILocation(line: 51, column: 10, scope: !63)
!79 = !DILocalVariable(name: "recvResult", scope: !80, file: !1, line: 57, type: !68)
!80 = distinct !DILexicalBlock(scope: !63, file: !1, line: 52, column: 5)
!81 = !DILocation(line: 57, column: 13, scope: !80)
!82 = !DILocalVariable(name: "service", scope: !80, file: !1, line: 58, type: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !84)
!84 = !{!85, !86, !92, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !83, file: !17, line: 240, baseType: !51, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !83, file: !17, line: 241, baseType: !87, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 25, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !91, line: 40, baseType: !53)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !83, file: !17, line: 242, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !93, file: !17, line: 33, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 26, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !91, line: 42, baseType: !5)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !83, file: !17, line: 245, baseType: !100, size: 64, offset: 64)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !102)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DILocation(line: 58, column: 28, scope: !80)
!105 = !DILocalVariable(name: "connectSocket", scope: !80, file: !1, line: 59, type: !68)
!106 = !DILocation(line: 59, column: 16, scope: !80)
!107 = !DILocalVariable(name: "inputBuffer", scope: !80, file: !1, line: 60, type: !55)
!108 = !DILocation(line: 60, column: 14, scope: !80)
!109 = !DILocation(line: 61, column: 9, scope: !80)
!110 = !DILocation(line: 71, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !1, line: 62, column: 9)
!112 = !DILocation(line: 71, column: 27, scope: !111)
!113 = !DILocation(line: 72, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 72, column: 17)
!115 = !DILocation(line: 72, column: 31, scope: !114)
!116 = !DILocation(line: 72, column: 17, scope: !111)
!117 = !DILocation(line: 74, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 73, column: 13)
!119 = !DILocation(line: 76, column: 13, scope: !111)
!120 = !DILocation(line: 77, column: 21, scope: !111)
!121 = !DILocation(line: 77, column: 32, scope: !111)
!122 = !DILocation(line: 78, column: 39, scope: !111)
!123 = !DILocation(line: 78, column: 21, scope: !111)
!124 = !DILocation(line: 78, column: 30, scope: !111)
!125 = !DILocation(line: 78, column: 37, scope: !111)
!126 = !DILocation(line: 79, column: 32, scope: !111)
!127 = !DILocation(line: 79, column: 21, scope: !111)
!128 = !DILocation(line: 79, column: 30, scope: !111)
!129 = !DILocation(line: 80, column: 25, scope: !130)
!130 = distinct !DILexicalBlock(scope: !111, file: !1, line: 80, column: 17)
!131 = !DILocation(line: 80, column: 40, scope: !130)
!132 = !DILocation(line: 80, column: 17, scope: !130)
!133 = !DILocation(line: 80, column: 85, scope: !130)
!134 = !DILocation(line: 80, column: 17, scope: !111)
!135 = !DILocation(line: 82, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 81, column: 13)
!137 = !DILocation(line: 86, column: 31, scope: !111)
!138 = !DILocation(line: 86, column: 46, scope: !111)
!139 = !DILocation(line: 86, column: 26, scope: !111)
!140 = !DILocation(line: 86, column: 24, scope: !111)
!141 = !DILocation(line: 87, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !111, file: !1, line: 87, column: 17)
!143 = !DILocation(line: 87, column: 28, scope: !142)
!144 = !DILocation(line: 87, column: 44, scope: !142)
!145 = !DILocation(line: 87, column: 47, scope: !142)
!146 = !DILocation(line: 87, column: 58, scope: !142)
!147 = !DILocation(line: 87, column: 17, scope: !111)
!148 = !DILocation(line: 89, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 88, column: 13)
!150 = !DILocation(line: 92, column: 25, scope: !111)
!151 = !DILocation(line: 92, column: 13, scope: !111)
!152 = !DILocation(line: 92, column: 37, scope: !111)
!153 = !DILocation(line: 94, column: 25, scope: !111)
!154 = !DILocation(line: 94, column: 20, scope: !111)
!155 = !DILocation(line: 94, column: 18, scope: !111)
!156 = !DILocation(line: 95, column: 9, scope: !111)
!157 = !DILocation(line: 97, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !80, file: !1, line: 97, column: 13)
!159 = !DILocation(line: 97, column: 27, scope: !158)
!160 = !DILocation(line: 97, column: 13, scope: !80)
!161 = !DILocation(line: 99, column: 26, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 98, column: 9)
!163 = !DILocation(line: 99, column: 13, scope: !162)
!164 = !DILocation(line: 100, column: 9, scope: !162)
!165 = !DILocation(line: 108, column: 26, scope: !63)
!166 = !DILocation(line: 108, column: 13, scope: !63)
!167 = !DILocation(line: 108, column: 24, scope: !63)
!168 = !DILocalVariable(name: "data", scope: !169, file: !1, line: 110, type: !68)
!169 = distinct !DILexicalBlock(scope: !63, file: !1, line: 109, column: 5)
!170 = !DILocation(line: 110, column: 13, scope: !169)
!171 = !DILocation(line: 110, column: 28, scope: !169)
!172 = !DILocalVariable(name: "i", scope: !173, file: !1, line: 112, type: !68)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 111, column: 9)
!174 = !DILocation(line: 112, column: 17, scope: !173)
!175 = !DILocalVariable(name: "buffer", scope: !173, file: !1, line: 113, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 10)
!179 = !DILocation(line: 113, column: 17, scope: !173)
!180 = !DILocation(line: 116, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !1, line: 116, column: 17)
!182 = !DILocation(line: 116, column: 22, scope: !181)
!183 = !DILocation(line: 116, column: 17, scope: !173)
!184 = !DILocation(line: 118, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 117, column: 13)
!186 = !DILocation(line: 118, column: 17, scope: !185)
!187 = !DILocation(line: 118, column: 30, scope: !185)
!188 = !DILocation(line: 120, column: 23, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 120, column: 17)
!190 = !DILocation(line: 120, column: 21, scope: !189)
!191 = !DILocation(line: 120, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 120, column: 17)
!193 = !DILocation(line: 120, column: 30, scope: !192)
!194 = !DILocation(line: 120, column: 17, scope: !189)
!195 = !DILocation(line: 122, column: 41, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 121, column: 17)
!197 = !DILocation(line: 122, column: 34, scope: !196)
!198 = !DILocation(line: 122, column: 21, scope: !196)
!199 = !DILocation(line: 123, column: 17, scope: !196)
!200 = !DILocation(line: 120, column: 37, scope: !192)
!201 = !DILocation(line: 120, column: 17, scope: !192)
!202 = distinct !{!202, !194, !203, !204}
!203 = !DILocation(line: 123, column: 17, scope: !189)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 124, column: 13, scope: !185)
!206 = !DILocation(line: 127, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !181, file: !1, line: 126, column: 13)
!208 = !DILocation(line: 131, column: 1, scope: !63)
!209 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 138, type: !64, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!210 = !DILocalVariable(name: "data", scope: !209, file: !1, line: 140, type: !68)
!211 = !DILocation(line: 140, column: 9, scope: !209)
!212 = !DILocalVariable(name: "myUnion", scope: !209, file: !1, line: 141, type: !71)
!213 = !DILocation(line: 141, column: 76, scope: !209)
!214 = !DILocation(line: 143, column: 10, scope: !209)
!215 = !DILocation(line: 146, column: 10, scope: !209)
!216 = !DILocation(line: 147, column: 26, scope: !209)
!217 = !DILocation(line: 147, column: 13, scope: !209)
!218 = !DILocation(line: 147, column: 24, scope: !209)
!219 = !DILocalVariable(name: "data", scope: !220, file: !1, line: 149, type: !68)
!220 = distinct !DILexicalBlock(scope: !209, file: !1, line: 148, column: 5)
!221 = !DILocation(line: 149, column: 13, scope: !220)
!222 = !DILocation(line: 149, column: 28, scope: !220)
!223 = !DILocalVariable(name: "i", scope: !224, file: !1, line: 151, type: !68)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 150, column: 9)
!225 = !DILocation(line: 151, column: 17, scope: !224)
!226 = !DILocalVariable(name: "buffer", scope: !224, file: !1, line: 152, type: !176)
!227 = !DILocation(line: 152, column: 17, scope: !224)
!228 = !DILocation(line: 155, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 155, column: 17)
!230 = !DILocation(line: 155, column: 22, scope: !229)
!231 = !DILocation(line: 155, column: 17, scope: !224)
!232 = !DILocation(line: 157, column: 24, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 156, column: 13)
!234 = !DILocation(line: 157, column: 17, scope: !233)
!235 = !DILocation(line: 157, column: 30, scope: !233)
!236 = !DILocation(line: 159, column: 23, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 159, column: 17)
!238 = !DILocation(line: 159, column: 21, scope: !237)
!239 = !DILocation(line: 159, column: 28, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 159, column: 17)
!241 = !DILocation(line: 159, column: 30, scope: !240)
!242 = !DILocation(line: 159, column: 17, scope: !237)
!243 = !DILocation(line: 161, column: 41, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 160, column: 17)
!245 = !DILocation(line: 161, column: 34, scope: !244)
!246 = !DILocation(line: 161, column: 21, scope: !244)
!247 = !DILocation(line: 162, column: 17, scope: !244)
!248 = !DILocation(line: 159, column: 37, scope: !240)
!249 = !DILocation(line: 159, column: 17, scope: !240)
!250 = distinct !{!250, !242, !251, !204}
!251 = !DILocation(line: 162, column: 17, scope: !237)
!252 = !DILocation(line: 163, column: 13, scope: !233)
!253 = !DILocation(line: 166, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !229, file: !1, line: 165, column: 13)
!255 = !DILocation(line: 170, column: 1, scope: !209)
!256 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 173, type: !64, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!257 = !DILocalVariable(name: "data", scope: !256, file: !1, line: 175, type: !68)
!258 = !DILocation(line: 175, column: 9, scope: !256)
!259 = !DILocalVariable(name: "myUnion", scope: !256, file: !1, line: 176, type: !71)
!260 = !DILocation(line: 176, column: 76, scope: !256)
!261 = !DILocation(line: 178, column: 10, scope: !256)
!262 = !DILocalVariable(name: "recvResult", scope: !263, file: !1, line: 184, type: !68)
!263 = distinct !DILexicalBlock(scope: !256, file: !1, line: 179, column: 5)
!264 = !DILocation(line: 184, column: 13, scope: !263)
!265 = !DILocalVariable(name: "service", scope: !263, file: !1, line: 185, type: !83)
!266 = !DILocation(line: 185, column: 28, scope: !263)
!267 = !DILocalVariable(name: "connectSocket", scope: !263, file: !1, line: 186, type: !68)
!268 = !DILocation(line: 186, column: 16, scope: !263)
!269 = !DILocalVariable(name: "inputBuffer", scope: !263, file: !1, line: 187, type: !55)
!270 = !DILocation(line: 187, column: 14, scope: !263)
!271 = !DILocation(line: 188, column: 9, scope: !263)
!272 = !DILocation(line: 198, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !1, line: 189, column: 9)
!274 = !DILocation(line: 198, column: 27, scope: !273)
!275 = !DILocation(line: 199, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 199, column: 17)
!277 = !DILocation(line: 199, column: 31, scope: !276)
!278 = !DILocation(line: 199, column: 17, scope: !273)
!279 = !DILocation(line: 201, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 200, column: 13)
!281 = !DILocation(line: 203, column: 13, scope: !273)
!282 = !DILocation(line: 204, column: 21, scope: !273)
!283 = !DILocation(line: 204, column: 32, scope: !273)
!284 = !DILocation(line: 205, column: 39, scope: !273)
!285 = !DILocation(line: 205, column: 21, scope: !273)
!286 = !DILocation(line: 205, column: 30, scope: !273)
!287 = !DILocation(line: 205, column: 37, scope: !273)
!288 = !DILocation(line: 206, column: 32, scope: !273)
!289 = !DILocation(line: 206, column: 21, scope: !273)
!290 = !DILocation(line: 206, column: 30, scope: !273)
!291 = !DILocation(line: 207, column: 25, scope: !292)
!292 = distinct !DILexicalBlock(scope: !273, file: !1, line: 207, column: 17)
!293 = !DILocation(line: 207, column: 40, scope: !292)
!294 = !DILocation(line: 207, column: 17, scope: !292)
!295 = !DILocation(line: 207, column: 85, scope: !292)
!296 = !DILocation(line: 207, column: 17, scope: !273)
!297 = !DILocation(line: 209, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !1, line: 208, column: 13)
!299 = !DILocation(line: 213, column: 31, scope: !273)
!300 = !DILocation(line: 213, column: 46, scope: !273)
!301 = !DILocation(line: 213, column: 26, scope: !273)
!302 = !DILocation(line: 213, column: 24, scope: !273)
!303 = !DILocation(line: 214, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !273, file: !1, line: 214, column: 17)
!305 = !DILocation(line: 214, column: 28, scope: !304)
!306 = !DILocation(line: 214, column: 44, scope: !304)
!307 = !DILocation(line: 214, column: 47, scope: !304)
!308 = !DILocation(line: 214, column: 58, scope: !304)
!309 = !DILocation(line: 214, column: 17, scope: !273)
!310 = !DILocation(line: 216, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !1, line: 215, column: 13)
!312 = !DILocation(line: 219, column: 25, scope: !273)
!313 = !DILocation(line: 219, column: 13, scope: !273)
!314 = !DILocation(line: 219, column: 37, scope: !273)
!315 = !DILocation(line: 221, column: 25, scope: !273)
!316 = !DILocation(line: 221, column: 20, scope: !273)
!317 = !DILocation(line: 221, column: 18, scope: !273)
!318 = !DILocation(line: 222, column: 9, scope: !273)
!319 = !DILocation(line: 224, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !263, file: !1, line: 224, column: 13)
!321 = !DILocation(line: 224, column: 27, scope: !320)
!322 = !DILocation(line: 224, column: 13, scope: !263)
!323 = !DILocation(line: 226, column: 26, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !1, line: 225, column: 9)
!325 = !DILocation(line: 226, column: 13, scope: !324)
!326 = !DILocation(line: 227, column: 9, scope: !324)
!327 = !DILocation(line: 235, column: 26, scope: !256)
!328 = !DILocation(line: 235, column: 13, scope: !256)
!329 = !DILocation(line: 235, column: 24, scope: !256)
!330 = !DILocalVariable(name: "data", scope: !331, file: !1, line: 237, type: !68)
!331 = distinct !DILexicalBlock(scope: !256, file: !1, line: 236, column: 5)
!332 = !DILocation(line: 237, column: 13, scope: !331)
!333 = !DILocation(line: 237, column: 28, scope: !331)
!334 = !DILocalVariable(name: "i", scope: !335, file: !1, line: 239, type: !68)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 238, column: 9)
!336 = !DILocation(line: 239, column: 17, scope: !335)
!337 = !DILocalVariable(name: "buffer", scope: !335, file: !1, line: 240, type: !176)
!338 = !DILocation(line: 240, column: 17, scope: !335)
!339 = !DILocation(line: 242, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 242, column: 17)
!341 = !DILocation(line: 242, column: 22, scope: !340)
!342 = !DILocation(line: 242, column: 27, scope: !340)
!343 = !DILocation(line: 242, column: 30, scope: !340)
!344 = !DILocation(line: 242, column: 35, scope: !340)
!345 = !DILocation(line: 242, column: 17, scope: !335)
!346 = !DILocation(line: 244, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !1, line: 243, column: 13)
!348 = !DILocation(line: 244, column: 17, scope: !347)
!349 = !DILocation(line: 244, column: 30, scope: !347)
!350 = !DILocation(line: 246, column: 23, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 246, column: 17)
!352 = !DILocation(line: 246, column: 21, scope: !351)
!353 = !DILocation(line: 246, column: 28, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 246, column: 17)
!355 = !DILocation(line: 246, column: 30, scope: !354)
!356 = !DILocation(line: 246, column: 17, scope: !351)
!357 = !DILocation(line: 248, column: 41, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 247, column: 17)
!359 = !DILocation(line: 248, column: 34, scope: !358)
!360 = !DILocation(line: 248, column: 21, scope: !358)
!361 = !DILocation(line: 249, column: 17, scope: !358)
!362 = !DILocation(line: 246, column: 37, scope: !354)
!363 = !DILocation(line: 246, column: 17, scope: !354)
!364 = distinct !{!364, !356, !365, !204}
!365 = !DILocation(line: 249, column: 17, scope: !351)
!366 = !DILocation(line: 250, column: 13, scope: !347)
!367 = !DILocation(line: 253, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !340, file: !1, line: 252, column: 13)
!369 = !DILocation(line: 257, column: 1, scope: !256)
!370 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good", scope: !1, file: !1, line: 259, type: !64, scopeLine: 260, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!371 = !DILocation(line: 261, column: 5, scope: !370)
!372 = !DILocation(line: 262, column: 5, scope: !370)
!373 = !DILocation(line: 263, column: 1, scope: !370)
