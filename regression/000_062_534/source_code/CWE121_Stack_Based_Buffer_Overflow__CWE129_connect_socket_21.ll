; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !62
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !65
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !67
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i32 %data) #0 !dbg !73 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32, i32* @badStatic, align 4, !dbg !79
  %tobool = icmp ne i32 %0, 0, !dbg !79
  br i1 %tobool, label %if.then, label %if.end5, !dbg !81

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !86, metadata !DIExpression()), !dbg !90
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !90
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !90
  %2 = load i32, i32* %data.addr, align 4, !dbg !91
  %cmp = icmp sge i32 %2, 0, !dbg !93
  br i1 %cmp, label %if.then1, label %if.else, !dbg !94

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !95
  %idxprom = sext i32 %3 to i64, !dbg !97
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !97
  store i32 1, i32* %arrayidx, align 4, !dbg !98
  store i32 0, i32* %i, align 4, !dbg !99
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !102
  %cmp2 = icmp slt i32 %4, 10, !dbg !104
  br i1 %cmp2, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !106
  %idxprom3 = sext i32 %5 to i64, !dbg !108
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !108
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !108
  call void @printIntLine(i32 %6), !dbg !109
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !111
  %inc = add nsw i32 %7, 1, !dbg !111
  store i32 %inc, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !116

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !117
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !119

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_bad() #0 !dbg !121 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 -1, i32* %data, align 4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !130, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %connectSocket, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !155, metadata !DIExpression()), !dbg !156
  br label %do.body, !dbg !157

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !158
  store i32 %call, i32* %connectSocket, align 4, !dbg !160
  %0 = load i32, i32* %connectSocket, align 4, !dbg !161
  %cmp = icmp eq i32 %0, -1, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !165

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !167
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !168
  store i16 2, i16* %sin_family, align 4, !dbg !169
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !170
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !171
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !172
  store i32 %call1, i32* %s_addr, align 4, !dbg !173
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !174
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !175
  store i16 %call2, i16* %sin_port, align 2, !dbg !176
  %2 = load i32, i32* %connectSocket, align 4, !dbg !177
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !179
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !180
  %cmp4 = icmp eq i32 %call3, -1, !dbg !181
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !182

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !183

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !185
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !186
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !187
  %conv = trunc i64 %call7 to i32, !dbg !187
  store i32 %conv, i32* %recvResult, align 4, !dbg !188
  %5 = load i32, i32* %recvResult, align 4, !dbg !189
  %cmp8 = icmp eq i32 %5, -1, !dbg !191
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !192

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !193
  %cmp10 = icmp eq i32 %6, 0, !dbg !194
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !195

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !196

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !198
  %idxprom = sext i32 %7 to i64, !dbg !199
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !199
  store i8 0, i8* %arrayidx, align 1, !dbg !200
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !201
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !202
  store i32 %call15, i32* %data, align 4, !dbg !203
  br label %do.end, !dbg !204

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !205
  %cmp16 = icmp ne i32 %8, -1, !dbg !207
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !208

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !209
  %call19 = call i32 @close(i32 %9), !dbg !211
  br label %if.end20, !dbg !212

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 1, i32* @badStatic, align 4, !dbg !213
  %10 = load i32, i32* %data, align 4, !dbg !214
  call void @badSink(i32 %10), !dbg !215
  ret void, !dbg !216
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
define dso_local void @goodB2G1Sink(i32 %data) #0 !dbg !217 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !220
  %tobool = icmp ne i32 %0, 0, !dbg !220
  br i1 %tobool, label %if.then, label %if.else, !dbg !222

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !223
  br label %if.end7, !dbg !225

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !230, metadata !DIExpression()), !dbg !231
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !231
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !231
  %2 = load i32, i32* %data.addr, align 4, !dbg !232
  %cmp = icmp sge i32 %2, 0, !dbg !234
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !235

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !236
  %cmp1 = icmp slt i32 %3, 10, !dbg !237
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !238

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !239
  %idxprom = sext i32 %4 to i64, !dbg !241
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !241
  store i32 1, i32* %arrayidx, align 4, !dbg !242
  store i32 0, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !246
  %cmp3 = icmp slt i32 %5, 10, !dbg !248
  br i1 %cmp3, label %for.body, label %for.end, !dbg !249

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !250
  %idxprom4 = sext i32 %6 to i64, !dbg !252
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !252
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !252
  call void @printIntLine(i32 %7), !dbg !253
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !255
  %inc = add nsw i32 %8, 1, !dbg !255
  store i32 %inc, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !259

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !260
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !263 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 -1, i32* %data, align 4, !dbg !266
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !272, metadata !DIExpression()), !dbg !273
  store i32 -1, i32* %connectSocket, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  br label %do.body, !dbg !276

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !277
  store i32 %call, i32* %connectSocket, align 4, !dbg !279
  %0 = load i32, i32* %connectSocket, align 4, !dbg !280
  %cmp = icmp eq i32 %0, -1, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !284

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !286
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !287
  store i16 2, i16* %sin_family, align 4, !dbg !288
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !289
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !290
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !291
  store i32 %call1, i32* %s_addr, align 4, !dbg !292
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !293
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !294
  store i16 %call2, i16* %sin_port, align 2, !dbg !295
  %2 = load i32, i32* %connectSocket, align 4, !dbg !296
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !298
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !299
  %cmp4 = icmp eq i32 %call3, -1, !dbg !300
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !301

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !302

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !304
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !305
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !306
  %conv = trunc i64 %call7 to i32, !dbg !306
  store i32 %conv, i32* %recvResult, align 4, !dbg !307
  %5 = load i32, i32* %recvResult, align 4, !dbg !308
  %cmp8 = icmp eq i32 %5, -1, !dbg !310
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !311

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !312
  %cmp10 = icmp eq i32 %6, 0, !dbg !313
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !314

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !315

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !317
  %idxprom = sext i32 %7 to i64, !dbg !318
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !318
  store i8 0, i8* %arrayidx, align 1, !dbg !319
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !320
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !321
  store i32 %call15, i32* %data, align 4, !dbg !322
  br label %do.end, !dbg !323

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !324
  %cmp16 = icmp ne i32 %8, -1, !dbg !326
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !327

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !328
  %call19 = call i32 @close(i32 %9), !dbg !330
  br label %if.end20, !dbg !331

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !332
  %10 = load i32, i32* %data, align 4, !dbg !333
  call void @goodB2G1Sink(i32 %10), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i32 %data) #0 !dbg !336 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !339
  %tobool = icmp ne i32 %0, 0, !dbg !339
  br i1 %tobool, label %if.then, label %if.end6, !dbg !341

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !342, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !346, metadata !DIExpression()), !dbg !347
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !347
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !347
  %2 = load i32, i32* %data.addr, align 4, !dbg !348
  %cmp = icmp sge i32 %2, 0, !dbg !350
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !351

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !352
  %cmp1 = icmp slt i32 %3, 10, !dbg !353
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !354

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !355
  %idxprom = sext i32 %4 to i64, !dbg !357
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !357
  store i32 1, i32* %arrayidx, align 4, !dbg !358
  store i32 0, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !361

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !362
  %cmp3 = icmp slt i32 %5, 10, !dbg !364
  br i1 %cmp3, label %for.body, label %for.end, !dbg !365

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !366
  %idxprom4 = sext i32 %6 to i64, !dbg !368
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !368
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !368
  call void @printIntLine(i32 %7), !dbg !369
  br label %for.inc, !dbg !370

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !371
  %inc = add nsw i32 %8, 1, !dbg !371
  store i32 %inc, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !372, !llvm.loop !373

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !375

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !376
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !378

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !380 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 -1, i32* %data, align 4, !dbg !383
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !384, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !389, metadata !DIExpression()), !dbg !390
  store i32 -1, i32* %connectSocket, align 4, !dbg !390
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !391, metadata !DIExpression()), !dbg !392
  br label %do.body, !dbg !393

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !394
  store i32 %call, i32* %connectSocket, align 4, !dbg !396
  %0 = load i32, i32* %connectSocket, align 4, !dbg !397
  %cmp = icmp eq i32 %0, -1, !dbg !399
  br i1 %cmp, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !401

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !403
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !403
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !404
  store i16 2, i16* %sin_family, align 4, !dbg !405
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !406
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !407
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !408
  store i32 %call1, i32* %s_addr, align 4, !dbg !409
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !410
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !411
  store i16 %call2, i16* %sin_port, align 2, !dbg !412
  %2 = load i32, i32* %connectSocket, align 4, !dbg !413
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !415
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !416
  %cmp4 = icmp eq i32 %call3, -1, !dbg !417
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !418

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !419

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !421
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !422
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !423
  %conv = trunc i64 %call7 to i32, !dbg !423
  store i32 %conv, i32* %recvResult, align 4, !dbg !424
  %5 = load i32, i32* %recvResult, align 4, !dbg !425
  %cmp8 = icmp eq i32 %5, -1, !dbg !427
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !428

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !429
  %cmp10 = icmp eq i32 %6, 0, !dbg !430
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !431

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !432

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !434
  %idxprom = sext i32 %7 to i64, !dbg !435
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !435
  store i8 0, i8* %arrayidx, align 1, !dbg !436
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !437
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !438
  store i32 %call15, i32* %data, align 4, !dbg !439
  br label %do.end, !dbg !440

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !441
  %cmp16 = icmp ne i32 %8, -1, !dbg !443
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !444

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !445
  %call19 = call i32 @close(i32 %9), !dbg !447
  br label %if.end20, !dbg !448

if.end20:                                         ; preds = %if.then18, %do.end
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !449
  %10 = load i32, i32* %data, align 4, !dbg !450
  call void @goodB2G2Sink(i32 %10), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !453 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !456
  %tobool = icmp ne i32 %0, 0, !dbg !456
  br i1 %tobool, label %if.then, label %if.end5, !dbg !458

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !463, metadata !DIExpression()), !dbg !464
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !464
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !464
  %2 = load i32, i32* %data.addr, align 4, !dbg !465
  %cmp = icmp sge i32 %2, 0, !dbg !467
  br i1 %cmp, label %if.then1, label %if.else, !dbg !468

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !469
  %idxprom = sext i32 %3 to i64, !dbg !471
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !471
  store i32 1, i32* %arrayidx, align 4, !dbg !472
  store i32 0, i32* %i, align 4, !dbg !473
  br label %for.cond, !dbg !475

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !476
  %cmp2 = icmp slt i32 %4, 10, !dbg !478
  br i1 %cmp2, label %for.body, label %for.end, !dbg !479

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !480
  %idxprom3 = sext i32 %5 to i64, !dbg !482
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !482
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !482
  call void @printIntLine(i32 %6), !dbg !483
  br label %for.inc, !dbg !484

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !485
  %inc = add nsw i32 %7, 1, !dbg !485
  store i32 %inc, i32* %i, align 4, !dbg !485
  br label %for.cond, !dbg !486, !llvm.loop !487

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !489

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !490
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !492

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !494 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 -1, i32* %data, align 4, !dbg !497
  store i32 7, i32* %data, align 4, !dbg !498
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !499
  %0 = load i32, i32* %data, align 4, !dbg !500
  call void @goodG2BSink(i32 %0), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_good() #0 !dbg !503 {
entry:
  call void @goodB2G1(), !dbg !504
  call void @goodB2G2(), !dbg !505
  call void @goodG2B(), !dbg !506
  ret void, !dbg !507
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
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 46, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_534/source_code")
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
!61 = !{!0, !62, !65, !67}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 144, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 145, type: !64, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 146, type: !64, isLocal: false, isDefinition: true)
!69 = !{i32 7, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{!"clang version 12.0.0"}
!73 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 48, type: !74, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !64}
!76 = !{}
!77 = !DILocalVariable(name: "data", arg: 1, scope: !73, file: !3, line: 48, type: !64)
!78 = !DILocation(line: 48, column: 18, scope: !73)
!79 = !DILocation(line: 50, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !3, line: 50, column: 8)
!81 = !DILocation(line: 50, column: 8, scope: !73)
!82 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 53, type: !64)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 52, column: 9)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 51, column: 5)
!85 = !DILocation(line: 53, column: 17, scope: !83)
!86 = !DILocalVariable(name: "buffer", scope: !83, file: !3, line: 54, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 10)
!90 = !DILocation(line: 54, column: 17, scope: !83)
!91 = !DILocation(line: 57, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !3, line: 57, column: 17)
!93 = !DILocation(line: 57, column: 22, scope: !92)
!94 = !DILocation(line: 57, column: 17, scope: !83)
!95 = !DILocation(line: 59, column: 24, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !3, line: 58, column: 13)
!97 = !DILocation(line: 59, column: 17, scope: !96)
!98 = !DILocation(line: 59, column: 30, scope: !96)
!99 = !DILocation(line: 61, column: 23, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 61, column: 17)
!101 = !DILocation(line: 61, column: 21, scope: !100)
!102 = !DILocation(line: 61, column: 28, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 61, column: 17)
!104 = !DILocation(line: 61, column: 30, scope: !103)
!105 = !DILocation(line: 61, column: 17, scope: !100)
!106 = !DILocation(line: 63, column: 41, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 62, column: 17)
!108 = !DILocation(line: 63, column: 34, scope: !107)
!109 = !DILocation(line: 63, column: 21, scope: !107)
!110 = !DILocation(line: 64, column: 17, scope: !107)
!111 = !DILocation(line: 61, column: 37, scope: !103)
!112 = !DILocation(line: 61, column: 17, scope: !103)
!113 = distinct !{!113, !105, !114, !115}
!114 = !DILocation(line: 64, column: 17, scope: !100)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 65, column: 13, scope: !96)
!117 = !DILocation(line: 68, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !92, file: !3, line: 67, column: 13)
!119 = !DILocation(line: 71, column: 5, scope: !84)
!120 = !DILocation(line: 72, column: 1, scope: !73)
!121 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_bad", scope: !3, file: !3, line: 74, type: !122, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DILocalVariable(name: "data", scope: !121, file: !3, line: 76, type: !64)
!125 = !DILocation(line: 76, column: 9, scope: !121)
!126 = !DILocation(line: 78, column: 10, scope: !121)
!127 = !DILocalVariable(name: "recvResult", scope: !128, file: !3, line: 84, type: !64)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 79, column: 5)
!129 = !DILocation(line: 84, column: 13, scope: !128)
!130 = !DILocalVariable(name: "service", scope: !128, file: !3, line: 85, type: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !132)
!132 = !{!133, !134, !140, !147}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !131, file: !19, line: 240, baseType: !53, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !131, file: !19, line: 241, baseType: !135, size: 16, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !137, line: 25, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !139, line: 40, baseType: !55)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !131, file: !19, line: 242, baseType: !141, size: 32, offset: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !141, file: !19, line: 33, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 26, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !139, line: 42, baseType: !7)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !131, file: !19, line: 245, baseType: !148, size: 64, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !150)
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !{!151}
!151 = !DISubrange(count: 8)
!152 = !DILocation(line: 85, column: 28, scope: !128)
!153 = !DILocalVariable(name: "connectSocket", scope: !128, file: !3, line: 86, type: !64)
!154 = !DILocation(line: 86, column: 16, scope: !128)
!155 = !DILocalVariable(name: "inputBuffer", scope: !128, file: !3, line: 87, type: !57)
!156 = !DILocation(line: 87, column: 14, scope: !128)
!157 = !DILocation(line: 88, column: 9, scope: !128)
!158 = !DILocation(line: 98, column: 29, scope: !159)
!159 = distinct !DILexicalBlock(scope: !128, file: !3, line: 89, column: 9)
!160 = !DILocation(line: 98, column: 27, scope: !159)
!161 = !DILocation(line: 99, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 99, column: 17)
!163 = !DILocation(line: 99, column: 31, scope: !162)
!164 = !DILocation(line: 99, column: 17, scope: !159)
!165 = !DILocation(line: 101, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 100, column: 13)
!167 = !DILocation(line: 103, column: 13, scope: !159)
!168 = !DILocation(line: 104, column: 21, scope: !159)
!169 = !DILocation(line: 104, column: 32, scope: !159)
!170 = !DILocation(line: 105, column: 39, scope: !159)
!171 = !DILocation(line: 105, column: 21, scope: !159)
!172 = !DILocation(line: 105, column: 30, scope: !159)
!173 = !DILocation(line: 105, column: 37, scope: !159)
!174 = !DILocation(line: 106, column: 32, scope: !159)
!175 = !DILocation(line: 106, column: 21, scope: !159)
!176 = !DILocation(line: 106, column: 30, scope: !159)
!177 = !DILocation(line: 107, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !159, file: !3, line: 107, column: 17)
!179 = !DILocation(line: 107, column: 40, scope: !178)
!180 = !DILocation(line: 107, column: 17, scope: !178)
!181 = !DILocation(line: 107, column: 85, scope: !178)
!182 = !DILocation(line: 107, column: 17, scope: !159)
!183 = !DILocation(line: 109, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !3, line: 108, column: 13)
!185 = !DILocation(line: 113, column: 31, scope: !159)
!186 = !DILocation(line: 113, column: 46, scope: !159)
!187 = !DILocation(line: 113, column: 26, scope: !159)
!188 = !DILocation(line: 113, column: 24, scope: !159)
!189 = !DILocation(line: 114, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !159, file: !3, line: 114, column: 17)
!191 = !DILocation(line: 114, column: 28, scope: !190)
!192 = !DILocation(line: 114, column: 44, scope: !190)
!193 = !DILocation(line: 114, column: 47, scope: !190)
!194 = !DILocation(line: 114, column: 58, scope: !190)
!195 = !DILocation(line: 114, column: 17, scope: !159)
!196 = !DILocation(line: 116, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !3, line: 115, column: 13)
!198 = !DILocation(line: 119, column: 25, scope: !159)
!199 = !DILocation(line: 119, column: 13, scope: !159)
!200 = !DILocation(line: 119, column: 37, scope: !159)
!201 = !DILocation(line: 121, column: 25, scope: !159)
!202 = !DILocation(line: 121, column: 20, scope: !159)
!203 = !DILocation(line: 121, column: 18, scope: !159)
!204 = !DILocation(line: 122, column: 9, scope: !159)
!205 = !DILocation(line: 124, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !128, file: !3, line: 124, column: 13)
!207 = !DILocation(line: 124, column: 27, scope: !206)
!208 = !DILocation(line: 124, column: 13, scope: !128)
!209 = !DILocation(line: 126, column: 26, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 125, column: 9)
!211 = !DILocation(line: 126, column: 13, scope: !210)
!212 = !DILocation(line: 127, column: 9, scope: !210)
!213 = !DILocation(line: 135, column: 15, scope: !121)
!214 = !DILocation(line: 136, column: 13, scope: !121)
!215 = !DILocation(line: 136, column: 5, scope: !121)
!216 = !DILocation(line: 137, column: 1, scope: !121)
!217 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 149, type: !74, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!218 = !DILocalVariable(name: "data", arg: 1, scope: !217, file: !3, line: 149, type: !64)
!219 = !DILocation(line: 149, column: 23, scope: !217)
!220 = !DILocation(line: 151, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !3, line: 151, column: 8)
!222 = !DILocation(line: 151, column: 8, scope: !217)
!223 = !DILocation(line: 154, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !3, line: 152, column: 5)
!225 = !DILocation(line: 155, column: 5, scope: !224)
!226 = !DILocalVariable(name: "i", scope: !227, file: !3, line: 159, type: !64)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 158, column: 9)
!228 = distinct !DILexicalBlock(scope: !221, file: !3, line: 157, column: 5)
!229 = !DILocation(line: 159, column: 17, scope: !227)
!230 = !DILocalVariable(name: "buffer", scope: !227, file: !3, line: 160, type: !87)
!231 = !DILocation(line: 160, column: 17, scope: !227)
!232 = !DILocation(line: 162, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 162, column: 17)
!234 = !DILocation(line: 162, column: 22, scope: !233)
!235 = !DILocation(line: 162, column: 27, scope: !233)
!236 = !DILocation(line: 162, column: 30, scope: !233)
!237 = !DILocation(line: 162, column: 35, scope: !233)
!238 = !DILocation(line: 162, column: 17, scope: !227)
!239 = !DILocation(line: 164, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !3, line: 163, column: 13)
!241 = !DILocation(line: 164, column: 17, scope: !240)
!242 = !DILocation(line: 164, column: 30, scope: !240)
!243 = !DILocation(line: 166, column: 23, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 166, column: 17)
!245 = !DILocation(line: 166, column: 21, scope: !244)
!246 = !DILocation(line: 166, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !3, line: 166, column: 17)
!248 = !DILocation(line: 166, column: 30, scope: !247)
!249 = !DILocation(line: 166, column: 17, scope: !244)
!250 = !DILocation(line: 168, column: 41, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 167, column: 17)
!252 = !DILocation(line: 168, column: 34, scope: !251)
!253 = !DILocation(line: 168, column: 21, scope: !251)
!254 = !DILocation(line: 169, column: 17, scope: !251)
!255 = !DILocation(line: 166, column: 37, scope: !247)
!256 = !DILocation(line: 166, column: 17, scope: !247)
!257 = distinct !{!257, !249, !258, !115}
!258 = !DILocation(line: 169, column: 17, scope: !244)
!259 = !DILocation(line: 170, column: 13, scope: !240)
!260 = !DILocation(line: 173, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !233, file: !3, line: 172, column: 13)
!262 = !DILocation(line: 177, column: 1, scope: !217)
!263 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 179, type: !122, scopeLine: 180, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!264 = !DILocalVariable(name: "data", scope: !263, file: !3, line: 181, type: !64)
!265 = !DILocation(line: 181, column: 9, scope: !263)
!266 = !DILocation(line: 183, column: 10, scope: !263)
!267 = !DILocalVariable(name: "recvResult", scope: !268, file: !3, line: 189, type: !64)
!268 = distinct !DILexicalBlock(scope: !263, file: !3, line: 184, column: 5)
!269 = !DILocation(line: 189, column: 13, scope: !268)
!270 = !DILocalVariable(name: "service", scope: !268, file: !3, line: 190, type: !131)
!271 = !DILocation(line: 190, column: 28, scope: !268)
!272 = !DILocalVariable(name: "connectSocket", scope: !268, file: !3, line: 191, type: !64)
!273 = !DILocation(line: 191, column: 16, scope: !268)
!274 = !DILocalVariable(name: "inputBuffer", scope: !268, file: !3, line: 192, type: !57)
!275 = !DILocation(line: 192, column: 14, scope: !268)
!276 = !DILocation(line: 193, column: 9, scope: !268)
!277 = !DILocation(line: 203, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !268, file: !3, line: 194, column: 9)
!279 = !DILocation(line: 203, column: 27, scope: !278)
!280 = !DILocation(line: 204, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 204, column: 17)
!282 = !DILocation(line: 204, column: 31, scope: !281)
!283 = !DILocation(line: 204, column: 17, scope: !278)
!284 = !DILocation(line: 206, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 205, column: 13)
!286 = !DILocation(line: 208, column: 13, scope: !278)
!287 = !DILocation(line: 209, column: 21, scope: !278)
!288 = !DILocation(line: 209, column: 32, scope: !278)
!289 = !DILocation(line: 210, column: 39, scope: !278)
!290 = !DILocation(line: 210, column: 21, scope: !278)
!291 = !DILocation(line: 210, column: 30, scope: !278)
!292 = !DILocation(line: 210, column: 37, scope: !278)
!293 = !DILocation(line: 211, column: 32, scope: !278)
!294 = !DILocation(line: 211, column: 21, scope: !278)
!295 = !DILocation(line: 211, column: 30, scope: !278)
!296 = !DILocation(line: 212, column: 25, scope: !297)
!297 = distinct !DILexicalBlock(scope: !278, file: !3, line: 212, column: 17)
!298 = !DILocation(line: 212, column: 40, scope: !297)
!299 = !DILocation(line: 212, column: 17, scope: !297)
!300 = !DILocation(line: 212, column: 85, scope: !297)
!301 = !DILocation(line: 212, column: 17, scope: !278)
!302 = !DILocation(line: 214, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !3, line: 213, column: 13)
!304 = !DILocation(line: 218, column: 31, scope: !278)
!305 = !DILocation(line: 218, column: 46, scope: !278)
!306 = !DILocation(line: 218, column: 26, scope: !278)
!307 = !DILocation(line: 218, column: 24, scope: !278)
!308 = !DILocation(line: 219, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !278, file: !3, line: 219, column: 17)
!310 = !DILocation(line: 219, column: 28, scope: !309)
!311 = !DILocation(line: 219, column: 44, scope: !309)
!312 = !DILocation(line: 219, column: 47, scope: !309)
!313 = !DILocation(line: 219, column: 58, scope: !309)
!314 = !DILocation(line: 219, column: 17, scope: !278)
!315 = !DILocation(line: 221, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !3, line: 220, column: 13)
!317 = !DILocation(line: 224, column: 25, scope: !278)
!318 = !DILocation(line: 224, column: 13, scope: !278)
!319 = !DILocation(line: 224, column: 37, scope: !278)
!320 = !DILocation(line: 226, column: 25, scope: !278)
!321 = !DILocation(line: 226, column: 20, scope: !278)
!322 = !DILocation(line: 226, column: 18, scope: !278)
!323 = !DILocation(line: 227, column: 9, scope: !278)
!324 = !DILocation(line: 229, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !268, file: !3, line: 229, column: 13)
!326 = !DILocation(line: 229, column: 27, scope: !325)
!327 = !DILocation(line: 229, column: 13, scope: !268)
!328 = !DILocation(line: 231, column: 26, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 230, column: 9)
!330 = !DILocation(line: 231, column: 13, scope: !329)
!331 = !DILocation(line: 232, column: 9, scope: !329)
!332 = !DILocation(line: 240, column: 20, scope: !263)
!333 = !DILocation(line: 241, column: 18, scope: !263)
!334 = !DILocation(line: 241, column: 5, scope: !263)
!335 = !DILocation(line: 242, column: 1, scope: !263)
!336 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 245, type: !74, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!337 = !DILocalVariable(name: "data", arg: 1, scope: !336, file: !3, line: 245, type: !64)
!338 = !DILocation(line: 245, column: 23, scope: !336)
!339 = !DILocation(line: 247, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 247, column: 8)
!341 = !DILocation(line: 247, column: 8, scope: !336)
!342 = !DILocalVariable(name: "i", scope: !343, file: !3, line: 250, type: !64)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 249, column: 9)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 248, column: 5)
!345 = !DILocation(line: 250, column: 17, scope: !343)
!346 = !DILocalVariable(name: "buffer", scope: !343, file: !3, line: 251, type: !87)
!347 = !DILocation(line: 251, column: 17, scope: !343)
!348 = !DILocation(line: 253, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !3, line: 253, column: 17)
!350 = !DILocation(line: 253, column: 22, scope: !349)
!351 = !DILocation(line: 253, column: 27, scope: !349)
!352 = !DILocation(line: 253, column: 30, scope: !349)
!353 = !DILocation(line: 253, column: 35, scope: !349)
!354 = !DILocation(line: 253, column: 17, scope: !343)
!355 = !DILocation(line: 255, column: 24, scope: !356)
!356 = distinct !DILexicalBlock(scope: !349, file: !3, line: 254, column: 13)
!357 = !DILocation(line: 255, column: 17, scope: !356)
!358 = !DILocation(line: 255, column: 30, scope: !356)
!359 = !DILocation(line: 257, column: 23, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 257, column: 17)
!361 = !DILocation(line: 257, column: 21, scope: !360)
!362 = !DILocation(line: 257, column: 28, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !3, line: 257, column: 17)
!364 = !DILocation(line: 257, column: 30, scope: !363)
!365 = !DILocation(line: 257, column: 17, scope: !360)
!366 = !DILocation(line: 259, column: 41, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !3, line: 258, column: 17)
!368 = !DILocation(line: 259, column: 34, scope: !367)
!369 = !DILocation(line: 259, column: 21, scope: !367)
!370 = !DILocation(line: 260, column: 17, scope: !367)
!371 = !DILocation(line: 257, column: 37, scope: !363)
!372 = !DILocation(line: 257, column: 17, scope: !363)
!373 = distinct !{!373, !365, !374, !115}
!374 = !DILocation(line: 260, column: 17, scope: !360)
!375 = !DILocation(line: 261, column: 13, scope: !356)
!376 = !DILocation(line: 264, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !349, file: !3, line: 263, column: 13)
!378 = !DILocation(line: 267, column: 5, scope: !344)
!379 = !DILocation(line: 268, column: 1, scope: !336)
!380 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 270, type: !122, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!381 = !DILocalVariable(name: "data", scope: !380, file: !3, line: 272, type: !64)
!382 = !DILocation(line: 272, column: 9, scope: !380)
!383 = !DILocation(line: 274, column: 10, scope: !380)
!384 = !DILocalVariable(name: "recvResult", scope: !385, file: !3, line: 280, type: !64)
!385 = distinct !DILexicalBlock(scope: !380, file: !3, line: 275, column: 5)
!386 = !DILocation(line: 280, column: 13, scope: !385)
!387 = !DILocalVariable(name: "service", scope: !385, file: !3, line: 281, type: !131)
!388 = !DILocation(line: 281, column: 28, scope: !385)
!389 = !DILocalVariable(name: "connectSocket", scope: !385, file: !3, line: 282, type: !64)
!390 = !DILocation(line: 282, column: 16, scope: !385)
!391 = !DILocalVariable(name: "inputBuffer", scope: !385, file: !3, line: 283, type: !57)
!392 = !DILocation(line: 283, column: 14, scope: !385)
!393 = !DILocation(line: 284, column: 9, scope: !385)
!394 = !DILocation(line: 294, column: 29, scope: !395)
!395 = distinct !DILexicalBlock(scope: !385, file: !3, line: 285, column: 9)
!396 = !DILocation(line: 294, column: 27, scope: !395)
!397 = !DILocation(line: 295, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 295, column: 17)
!399 = !DILocation(line: 295, column: 31, scope: !398)
!400 = !DILocation(line: 295, column: 17, scope: !395)
!401 = !DILocation(line: 297, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 296, column: 13)
!403 = !DILocation(line: 299, column: 13, scope: !395)
!404 = !DILocation(line: 300, column: 21, scope: !395)
!405 = !DILocation(line: 300, column: 32, scope: !395)
!406 = !DILocation(line: 301, column: 39, scope: !395)
!407 = !DILocation(line: 301, column: 21, scope: !395)
!408 = !DILocation(line: 301, column: 30, scope: !395)
!409 = !DILocation(line: 301, column: 37, scope: !395)
!410 = !DILocation(line: 302, column: 32, scope: !395)
!411 = !DILocation(line: 302, column: 21, scope: !395)
!412 = !DILocation(line: 302, column: 30, scope: !395)
!413 = !DILocation(line: 303, column: 25, scope: !414)
!414 = distinct !DILexicalBlock(scope: !395, file: !3, line: 303, column: 17)
!415 = !DILocation(line: 303, column: 40, scope: !414)
!416 = !DILocation(line: 303, column: 17, scope: !414)
!417 = !DILocation(line: 303, column: 85, scope: !414)
!418 = !DILocation(line: 303, column: 17, scope: !395)
!419 = !DILocation(line: 305, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !3, line: 304, column: 13)
!421 = !DILocation(line: 309, column: 31, scope: !395)
!422 = !DILocation(line: 309, column: 46, scope: !395)
!423 = !DILocation(line: 309, column: 26, scope: !395)
!424 = !DILocation(line: 309, column: 24, scope: !395)
!425 = !DILocation(line: 310, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !395, file: !3, line: 310, column: 17)
!427 = !DILocation(line: 310, column: 28, scope: !426)
!428 = !DILocation(line: 310, column: 44, scope: !426)
!429 = !DILocation(line: 310, column: 47, scope: !426)
!430 = !DILocation(line: 310, column: 58, scope: !426)
!431 = !DILocation(line: 310, column: 17, scope: !395)
!432 = !DILocation(line: 312, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !3, line: 311, column: 13)
!434 = !DILocation(line: 315, column: 25, scope: !395)
!435 = !DILocation(line: 315, column: 13, scope: !395)
!436 = !DILocation(line: 315, column: 37, scope: !395)
!437 = !DILocation(line: 317, column: 25, scope: !395)
!438 = !DILocation(line: 317, column: 20, scope: !395)
!439 = !DILocation(line: 317, column: 18, scope: !395)
!440 = !DILocation(line: 318, column: 9, scope: !395)
!441 = !DILocation(line: 320, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !385, file: !3, line: 320, column: 13)
!443 = !DILocation(line: 320, column: 27, scope: !442)
!444 = !DILocation(line: 320, column: 13, scope: !385)
!445 = !DILocation(line: 322, column: 26, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 321, column: 9)
!447 = !DILocation(line: 322, column: 13, scope: !446)
!448 = !DILocation(line: 323, column: 9, scope: !446)
!449 = !DILocation(line: 331, column: 20, scope: !380)
!450 = !DILocation(line: 332, column: 18, scope: !380)
!451 = !DILocation(line: 332, column: 5, scope: !380)
!452 = !DILocation(line: 333, column: 1, scope: !380)
!453 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 336, type: !74, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!454 = !DILocalVariable(name: "data", arg: 1, scope: !453, file: !3, line: 336, type: !64)
!455 = !DILocation(line: 336, column: 22, scope: !453)
!456 = !DILocation(line: 338, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 338, column: 8)
!458 = !DILocation(line: 338, column: 8, scope: !453)
!459 = !DILocalVariable(name: "i", scope: !460, file: !3, line: 341, type: !64)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 340, column: 9)
!461 = distinct !DILexicalBlock(scope: !457, file: !3, line: 339, column: 5)
!462 = !DILocation(line: 341, column: 17, scope: !460)
!463 = !DILocalVariable(name: "buffer", scope: !460, file: !3, line: 342, type: !87)
!464 = !DILocation(line: 342, column: 17, scope: !460)
!465 = !DILocation(line: 345, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !3, line: 345, column: 17)
!467 = !DILocation(line: 345, column: 22, scope: !466)
!468 = !DILocation(line: 345, column: 17, scope: !460)
!469 = !DILocation(line: 347, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 346, column: 13)
!471 = !DILocation(line: 347, column: 17, scope: !470)
!472 = !DILocation(line: 347, column: 30, scope: !470)
!473 = !DILocation(line: 349, column: 23, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !3, line: 349, column: 17)
!475 = !DILocation(line: 349, column: 21, scope: !474)
!476 = !DILocation(line: 349, column: 28, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 349, column: 17)
!478 = !DILocation(line: 349, column: 30, scope: !477)
!479 = !DILocation(line: 349, column: 17, scope: !474)
!480 = !DILocation(line: 351, column: 41, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 350, column: 17)
!482 = !DILocation(line: 351, column: 34, scope: !481)
!483 = !DILocation(line: 351, column: 21, scope: !481)
!484 = !DILocation(line: 352, column: 17, scope: !481)
!485 = !DILocation(line: 349, column: 37, scope: !477)
!486 = !DILocation(line: 349, column: 17, scope: !477)
!487 = distinct !{!487, !479, !488, !115}
!488 = !DILocation(line: 352, column: 17, scope: !474)
!489 = !DILocation(line: 353, column: 13, scope: !470)
!490 = !DILocation(line: 356, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !466, file: !3, line: 355, column: 13)
!492 = !DILocation(line: 359, column: 5, scope: !461)
!493 = !DILocation(line: 360, column: 1, scope: !453)
!494 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 362, type: !122, scopeLine: 363, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!495 = !DILocalVariable(name: "data", scope: !494, file: !3, line: 364, type: !64)
!496 = !DILocation(line: 364, column: 9, scope: !494)
!497 = !DILocation(line: 366, column: 10, scope: !494)
!498 = !DILocation(line: 369, column: 10, scope: !494)
!499 = !DILocation(line: 370, column: 19, scope: !494)
!500 = !DILocation(line: 371, column: 17, scope: !494)
!501 = !DILocation(line: 371, column: 5, scope: !494)
!502 = !DILocation(line: 372, column: 1, scope: !494)
!503 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_21_good", scope: !3, file: !3, line: 374, type: !122, scopeLine: 375, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!504 = !DILocation(line: 376, column: 5, scope: !503)
!505 = !DILocation(line: 377, column: 5, scope: !503)
!506 = !DILocation(line: 378, column: 5, scope: !503)
!507 = !DILocation(line: 379, column: 1, scope: !503)
