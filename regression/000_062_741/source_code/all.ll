; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.9 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.13 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad() #0 !dbg !112 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %data, align 4, !dbg !117
  %0 = load i32, i32* %data, align 4, !dbg !118
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource(i32 %0), !dbg !119
  store i32 %call, i32* %data, align 4, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %i, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !124, metadata !DIExpression()), !dbg !128
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !128
  %2 = load i32, i32* %data, align 4, !dbg !129
  %cmp = icmp sge i32 %2, 0, !dbg !131
  br i1 %cmp, label %if.then, label %if.else, !dbg !132

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !133
  %idxprom = sext i32 %3 to i64, !dbg !135
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !135
  store i32 1, i32* %arrayidx, align 4, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !140
  %cmp1 = icmp slt i32 %4, 10, !dbg !142
  br i1 %cmp1, label %for.body, label %for.end, !dbg !143

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !144
  %idxprom2 = sext i32 %5 to i64, !dbg !146
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !146
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !146
  call void @printIntLine(i32 %6), !dbg !147
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !149
  %inc = add nsw i32 %7, 1, !dbg !149
  store i32 %inc, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !154

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !155
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !158 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 -1, i32* %data, align 4, !dbg !161
  %0 = load i32, i32* %data, align 4, !dbg !162
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource(i32 %0), !dbg !163
  store i32 %call, i32* %data, align 4, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %i, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !168, metadata !DIExpression()), !dbg !169
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !169
  %2 = load i32, i32* %data, align 4, !dbg !170
  %cmp = icmp sge i32 %2, 0, !dbg !172
  br i1 %cmp, label %if.then, label %if.else, !dbg !173

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !174
  %idxprom = sext i32 %3 to i64, !dbg !176
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !176
  store i32 1, i32* %arrayidx, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !181
  %cmp1 = icmp slt i32 %4, 10, !dbg !183
  br i1 %cmp1, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !185
  %idxprom2 = sext i32 %5 to i64, !dbg !187
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !187
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !187
  call void @printIntLine(i32 %6), !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !190
  %inc = add nsw i32 %7, 1, !dbg !190
  store i32 %inc, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !194

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !195
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !198 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 -1, i32* %data, align 4, !dbg !201
  %0 = load i32, i32* %data, align 4, !dbg !202
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource(i32 %0), !dbg !203
  store i32 %call, i32* %data, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata i32* %i, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !208, metadata !DIExpression()), !dbg !209
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !209
  %2 = load i32, i32* %data, align 4, !dbg !210
  %cmp = icmp sge i32 %2, 0, !dbg !212
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !213

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !214
  %cmp1 = icmp slt i32 %3, 10, !dbg !215
  br i1 %cmp1, label %if.then, label %if.else, !dbg !216

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !217
  %idxprom = sext i32 %4 to i64, !dbg !219
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !219
  store i32 1, i32* %arrayidx, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !224
  %cmp2 = icmp slt i32 %5, 10, !dbg !226
  br i1 %cmp2, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !228
  %idxprom3 = sext i32 %6 to i64, !dbg !230
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !230
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !230
  call void @printIntLine(i32 %7), !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !233
  %inc = add nsw i32 %8, 1, !dbg !233
  store i32 %inc, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !237

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !238
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_good() #0 !dbg !241 {
entry:
  call void @goodG2B(), !dbg !242
  call void @goodB2G(), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource(i32 %data) #0 !dbg !245 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !253, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 -1, i32* %listenSocket, align 4, !dbg !271
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !272, metadata !DIExpression()), !dbg !273
  store i32 -1, i32* %acceptSocket, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  br label %do.body, !dbg !276

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !277
  store i32 %call, i32* %listenSocket, align 4, !dbg !279
  %0 = load i32, i32* %listenSocket, align 4, !dbg !280
  %cmp = icmp eq i32 %0, -1, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !284

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !286
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !287
  store i16 2, i16* %sin_family, align 4, !dbg !288
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !289
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !290
  store i32 0, i32* %s_addr, align 4, !dbg !291
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !292
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !293
  store i16 %call1, i16* %sin_port, align 2, !dbg !294
  %2 = load i32, i32* %listenSocket, align 4, !dbg !295
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !297
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !298
  %cmp3 = icmp eq i32 %call2, -1, !dbg !299
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !300

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !301

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !303
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !305
  %cmp7 = icmp eq i32 %call6, -1, !dbg !306
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !307

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !308

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !310
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !311
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !312
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !313
  %cmp11 = icmp eq i32 %6, -1, !dbg !315
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !316

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !317

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !319
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !320
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !321
  %conv = trunc i64 %call14 to i32, !dbg !321
  store i32 %conv, i32* %recvResult, align 4, !dbg !322
  %8 = load i32, i32* %recvResult, align 4, !dbg !323
  %cmp15 = icmp eq i32 %8, -1, !dbg !325
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !326

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !327
  %cmp17 = icmp eq i32 %9, 0, !dbg !328
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !329

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !330

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !332
  %idxprom = sext i32 %10 to i64, !dbg !333
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !333
  store i8 0, i8* %arrayidx, align 1, !dbg !334
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !335
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !336
  store i32 %call22, i32* %data.addr, align 4, !dbg !337
  br label %do.end, !dbg !338

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !339
  %cmp23 = icmp ne i32 %11, -1, !dbg !341
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !342

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !343
  %call26 = call i32 @close(i32 %12), !dbg !345
  br label %if.end27, !dbg !346

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !347
  %cmp28 = icmp ne i32 %13, -1, !dbg !349
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !350

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !351
  %call31 = call i32 @close(i32 %14), !dbg !353
  br label %if.end32, !dbg !354

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data.addr, align 4, !dbg !355
  ret i32 %15, !dbg !356
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource(i32 %data) #0 !dbg !357 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !358, metadata !DIExpression()), !dbg !359
  store i32 7, i32* %data.addr, align 4, !dbg !360
  %0 = load i32, i32* %data.addr, align 4, !dbg !361
  ret i32 %0, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource(i32 %data) #0 !dbg !363 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !371, metadata !DIExpression()), !dbg !372
  store i32 -1, i32* %listenSocket, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !373, metadata !DIExpression()), !dbg !374
  store i32 -1, i32* %acceptSocket, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !375, metadata !DIExpression()), !dbg !376
  br label %do.body, !dbg !377

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !378
  store i32 %call, i32* %listenSocket, align 4, !dbg !380
  %0 = load i32, i32* %listenSocket, align 4, !dbg !381
  %cmp = icmp eq i32 %0, -1, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !385

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !387
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !388
  store i16 2, i16* %sin_family, align 4, !dbg !389
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !390
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !391
  store i32 0, i32* %s_addr, align 4, !dbg !392
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !393
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !394
  store i16 %call1, i16* %sin_port, align 2, !dbg !395
  %2 = load i32, i32* %listenSocket, align 4, !dbg !396
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !398
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !399
  %cmp3 = icmp eq i32 %call2, -1, !dbg !400
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !401

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !402

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !404
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !406
  %cmp7 = icmp eq i32 %call6, -1, !dbg !407
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !408

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !409

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !411
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !412
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !413
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !414
  %cmp11 = icmp eq i32 %6, -1, !dbg !416
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !417

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !418

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !420
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !421
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !422
  %conv = trunc i64 %call14 to i32, !dbg !422
  store i32 %conv, i32* %recvResult, align 4, !dbg !423
  %8 = load i32, i32* %recvResult, align 4, !dbg !424
  %cmp15 = icmp eq i32 %8, -1, !dbg !426
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !427

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !428
  %cmp17 = icmp eq i32 %9, 0, !dbg !429
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !430

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !431

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !433
  %idxprom = sext i32 %10 to i64, !dbg !434
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !434
  store i8 0, i8* %arrayidx, align 1, !dbg !435
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !436
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !437
  store i32 %call22, i32* %data.addr, align 4, !dbg !438
  br label %do.end, !dbg !439

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !440
  %cmp23 = icmp ne i32 %11, -1, !dbg !442
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !443

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !444
  %call26 = call i32 @close(i32 %12), !dbg !446
  br label %if.end27, !dbg !447

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !448
  %cmp28 = icmp ne i32 %13, -1, !dbg !450
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !451

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !452
  %call31 = call i32 @close(i32 %14), !dbg !454
  br label %if.end32, !dbg !455

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data.addr, align 4, !dbg !456
  ret i32 %15, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !458 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !463
  %0 = load i8*, i8** %line.addr, align 8, !dbg !464
  %cmp = icmp ne i8* %0, null, !dbg !466
  br i1 %cmp, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !468
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !470
  br label %if.end, !dbg !471

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !472
  ret void, !dbg !473
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !474 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %0 = load i8*, i8** %line.addr, align 8, !dbg !477
  %cmp = icmp ne i8* %0, null, !dbg !479
  br i1 %cmp, label %if.then, label %if.end, !dbg !480

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !483
  br label %if.end, !dbg !484

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !486 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i32*, i32** %line.addr, align 8, !dbg !494
  %cmp = icmp ne i32* %0, null, !dbg !496
  br i1 %cmp, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !498
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !500
  br label %if.end, !dbg !501

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !502
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !503 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !511 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !517
  %conv = sext i16 %0 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !520 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !526
  %conv = fpext float %0 to double, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !529 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !538 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !549 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !559 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !564
  %conv = sext i8 %0 to i32, !dbg !564
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !565
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !567 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !572, metadata !DIExpression()), !dbg !576
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !577
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !578
  store i32 %0, i32* %arrayidx, align 4, !dbg !579
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !580
  store i32 0, i32* %arrayidx1, align 4, !dbg !581
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !585 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !593 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !598
  %conv = zext i8 %0 to i32, !dbg !598
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !601 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !610 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !622
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !623
  %1 = load i32, i32* %intOne, align 4, !dbg !623
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !624
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !625
  %3 = load i32, i32* %intTwo, align 4, !dbg !625
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !626
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !628 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !632, metadata !DIExpression()), !dbg !633
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata i64* %i, metadata !636, metadata !DIExpression()), !dbg !637
  store i64 0, i64* %i, align 8, !dbg !638
  br label %for.cond, !dbg !640

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !641
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !643
  %cmp = icmp ult i64 %0, %1, !dbg !644
  br i1 %cmp, label %for.body, label %for.end, !dbg !645

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !646
  %3 = load i64, i64* %i, align 8, !dbg !648
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !646
  %4 = load i8, i8* %arrayidx, align 1, !dbg !646
  %conv = zext i8 %4 to i32, !dbg !646
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !649
  br label %for.inc, !dbg !650

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !651
  %inc = add i64 %5, 1, !dbg !651
  store i64 %inc, i64* %i, align 8, !dbg !651
  br label %for.cond, !dbg !652, !llvm.loop !653

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !655
  ret void, !dbg !656
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !657 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !660, metadata !DIExpression()), !dbg !661
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !662, metadata !DIExpression()), !dbg !663
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !666, metadata !DIExpression()), !dbg !667
  store i64 0, i64* %numWritten, align 8, !dbg !667
  br label %while.cond, !dbg !668

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !669
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !670
  %cmp = icmp ult i64 %0, %1, !dbg !671
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !672

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !673
  %2 = load i16*, i16** %call, align 8, !dbg !673
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !673
  %4 = load i64, i64* %numWritten, align 8, !dbg !673
  %mul = mul i64 2, %4, !dbg !673
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !673
  %5 = load i8, i8* %arrayidx, align 1, !dbg !673
  %conv = sext i8 %5 to i32, !dbg !673
  %idxprom = sext i32 %conv to i64, !dbg !673
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !673
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !673
  %conv2 = zext i16 %6 to i32, !dbg !673
  %and = and i32 %conv2, 4096, !dbg !673
  %tobool = icmp ne i32 %and, 0, !dbg !673
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !674

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !675
  %7 = load i16*, i16** %call3, align 8, !dbg !675
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !675
  %9 = load i64, i64* %numWritten, align 8, !dbg !675
  %mul4 = mul i64 2, %9, !dbg !675
  %add = add i64 %mul4, 1, !dbg !675
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !675
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !675
  %conv6 = sext i8 %10 to i32, !dbg !675
  %idxprom7 = sext i32 %conv6 to i64, !dbg !675
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !675
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !675
  %conv9 = zext i16 %11 to i32, !dbg !675
  %and10 = and i32 %conv9, 4096, !dbg !675
  %tobool11 = icmp ne i32 %and10, 0, !dbg !674
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !676
  br i1 %12, label %while.body, label %while.end, !dbg !668

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !677, metadata !DIExpression()), !dbg !679
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !680
  %14 = load i64, i64* %numWritten, align 8, !dbg !681
  %mul12 = mul i64 2, %14, !dbg !682
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !680
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !683
  %15 = load i32, i32* %byte, align 4, !dbg !684
  %conv15 = trunc i32 %15 to i8, !dbg !685
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !686
  %17 = load i64, i64* %numWritten, align 8, !dbg !687
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !686
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !688
  %18 = load i64, i64* %numWritten, align 8, !dbg !689
  %inc = add i64 %18, 1, !dbg !689
  store i64 %inc, i64* %numWritten, align 8, !dbg !689
  br label %while.cond, !dbg !668, !llvm.loop !690

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !692
  ret i64 %19, !dbg !693
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !694 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !697, metadata !DIExpression()), !dbg !698
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !699, metadata !DIExpression()), !dbg !700
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !703, metadata !DIExpression()), !dbg !704
  store i64 0, i64* %numWritten, align 8, !dbg !704
  br label %while.cond, !dbg !705

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !706
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !707
  %cmp = icmp ult i64 %0, %1, !dbg !708
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !709

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !710
  %3 = load i64, i64* %numWritten, align 8, !dbg !711
  %mul = mul i64 2, %3, !dbg !712
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !710
  %4 = load i32, i32* %arrayidx, align 4, !dbg !710
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !713
  %tobool = icmp ne i32 %call, 0, !dbg !713
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !714

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !715
  %6 = load i64, i64* %numWritten, align 8, !dbg !716
  %mul1 = mul i64 2, %6, !dbg !717
  %add = add i64 %mul1, 1, !dbg !718
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !715
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !715
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !719
  %tobool4 = icmp ne i32 %call3, 0, !dbg !714
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !720
  br i1 %8, label %while.body, label %while.end, !dbg !705

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !721, metadata !DIExpression()), !dbg !723
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !724
  %10 = load i64, i64* %numWritten, align 8, !dbg !725
  %mul5 = mul i64 2, %10, !dbg !726
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !724
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !727
  %11 = load i32, i32* %byte, align 4, !dbg !728
  %conv = trunc i32 %11 to i8, !dbg !729
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !730
  %13 = load i64, i64* %numWritten, align 8, !dbg !731
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !730
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !732
  %14 = load i64, i64* %numWritten, align 8, !dbg !733
  %inc = add i64 %14, 1, !dbg !733
  store i64 %inc, i64* %numWritten, align 8, !dbg !733
  br label %while.cond, !dbg !705, !llvm.loop !734

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !736
  ret i64 %15, !dbg !737
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !738 {
entry:
  ret i32 1, !dbg !741
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !742 {
entry:
  ret i32 0, !dbg !743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !744 {
entry:
  %call = call i32 @rand() #7, !dbg !745
  %rem = srem i32 %call, 2, !dbg !746
  ret i32 %rem, !dbg !747
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !748 {
entry:
  ret void, !dbg !749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !750 {
entry:
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !752 {
entry:
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !754 {
entry:
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !756 {
entry:
  ret void, !dbg !757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !758 {
entry:
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !760 {
entry:
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !762 {
entry:
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!108, !108, !108}
!llvm.module.flags = !{!109, !110, !111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
!49 = !{!50, !62}
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !51, line: 24, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!59 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!60 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!61 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 40, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!65 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!70 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!71 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!72 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!73 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!74 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!75 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!76 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!77 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!78 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!79 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!80 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!81 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!82 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!83 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!84 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!85 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!86 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!87 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!88 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!89 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!90 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!91 = !{!92, !97}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !63, line: 30, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 26, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !7)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !99, line: 178, size: 128, elements: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !98, file: !99, line: 180, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !103, line: 28, baseType: !24)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !98, file: !99, line: 181, baseType: !105, size: 112, offset: 16)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 14)
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad", scope: !45, file: !45, line: 47, type: !113, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 49, type: !23)
!116 = !DILocation(line: 49, column: 9, scope: !112)
!117 = !DILocation(line: 51, column: 10, scope: !112)
!118 = !DILocation(line: 52, column: 83, scope: !112)
!119 = !DILocation(line: 52, column: 12, scope: !112)
!120 = !DILocation(line: 52, column: 10, scope: !112)
!121 = !DILocalVariable(name: "i", scope: !122, file: !45, line: 54, type: !23)
!122 = distinct !DILexicalBlock(scope: !112, file: !45, line: 53, column: 5)
!123 = !DILocation(line: 54, column: 13, scope: !122)
!124 = !DILocalVariable(name: "buffer", scope: !122, file: !45, line: 55, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 10)
!128 = !DILocation(line: 55, column: 13, scope: !122)
!129 = !DILocation(line: 58, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !122, file: !45, line: 58, column: 13)
!131 = !DILocation(line: 58, column: 18, scope: !130)
!132 = !DILocation(line: 58, column: 13, scope: !122)
!133 = !DILocation(line: 60, column: 20, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !45, line: 59, column: 9)
!135 = !DILocation(line: 60, column: 13, scope: !134)
!136 = !DILocation(line: 60, column: 26, scope: !134)
!137 = !DILocation(line: 62, column: 19, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !45, line: 62, column: 13)
!139 = !DILocation(line: 62, column: 17, scope: !138)
!140 = !DILocation(line: 62, column: 24, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !45, line: 62, column: 13)
!142 = !DILocation(line: 62, column: 26, scope: !141)
!143 = !DILocation(line: 62, column: 13, scope: !138)
!144 = !DILocation(line: 64, column: 37, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !45, line: 63, column: 13)
!146 = !DILocation(line: 64, column: 30, scope: !145)
!147 = !DILocation(line: 64, column: 17, scope: !145)
!148 = !DILocation(line: 65, column: 13, scope: !145)
!149 = !DILocation(line: 62, column: 33, scope: !141)
!150 = !DILocation(line: 62, column: 13, scope: !141)
!151 = distinct !{!151, !143, !152, !153}
!152 = !DILocation(line: 65, column: 13, scope: !138)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 66, column: 9, scope: !134)
!155 = !DILocation(line: 69, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !130, file: !45, line: 68, column: 9)
!157 = !DILocation(line: 72, column: 1, scope: !112)
!158 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 80, type: !113, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!159 = !DILocalVariable(name: "data", scope: !158, file: !45, line: 82, type: !23)
!160 = !DILocation(line: 82, column: 9, scope: !158)
!161 = !DILocation(line: 84, column: 10, scope: !158)
!162 = !DILocation(line: 85, column: 87, scope: !158)
!163 = !DILocation(line: 85, column: 12, scope: !158)
!164 = !DILocation(line: 85, column: 10, scope: !158)
!165 = !DILocalVariable(name: "i", scope: !166, file: !45, line: 87, type: !23)
!166 = distinct !DILexicalBlock(scope: !158, file: !45, line: 86, column: 5)
!167 = !DILocation(line: 87, column: 13, scope: !166)
!168 = !DILocalVariable(name: "buffer", scope: !166, file: !45, line: 88, type: !125)
!169 = !DILocation(line: 88, column: 13, scope: !166)
!170 = !DILocation(line: 91, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !45, line: 91, column: 13)
!172 = !DILocation(line: 91, column: 18, scope: !171)
!173 = !DILocation(line: 91, column: 13, scope: !166)
!174 = !DILocation(line: 93, column: 20, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 92, column: 9)
!176 = !DILocation(line: 93, column: 13, scope: !175)
!177 = !DILocation(line: 93, column: 26, scope: !175)
!178 = !DILocation(line: 95, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !45, line: 95, column: 13)
!180 = !DILocation(line: 95, column: 17, scope: !179)
!181 = !DILocation(line: 95, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !45, line: 95, column: 13)
!183 = !DILocation(line: 95, column: 26, scope: !182)
!184 = !DILocation(line: 95, column: 13, scope: !179)
!185 = !DILocation(line: 97, column: 37, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !45, line: 96, column: 13)
!187 = !DILocation(line: 97, column: 30, scope: !186)
!188 = !DILocation(line: 97, column: 17, scope: !186)
!189 = !DILocation(line: 98, column: 13, scope: !186)
!190 = !DILocation(line: 95, column: 33, scope: !182)
!191 = !DILocation(line: 95, column: 13, scope: !182)
!192 = distinct !{!192, !184, !193, !153}
!193 = !DILocation(line: 98, column: 13, scope: !179)
!194 = !DILocation(line: 99, column: 9, scope: !175)
!195 = !DILocation(line: 102, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !171, file: !45, line: 101, column: 9)
!197 = !DILocation(line: 105, column: 1, scope: !158)
!198 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 109, type: !113, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!199 = !DILocalVariable(name: "data", scope: !198, file: !45, line: 111, type: !23)
!200 = !DILocation(line: 111, column: 9, scope: !198)
!201 = !DILocation(line: 113, column: 10, scope: !198)
!202 = !DILocation(line: 114, column: 87, scope: !198)
!203 = !DILocation(line: 114, column: 12, scope: !198)
!204 = !DILocation(line: 114, column: 10, scope: !198)
!205 = !DILocalVariable(name: "i", scope: !206, file: !45, line: 116, type: !23)
!206 = distinct !DILexicalBlock(scope: !198, file: !45, line: 115, column: 5)
!207 = !DILocation(line: 116, column: 13, scope: !206)
!208 = !DILocalVariable(name: "buffer", scope: !206, file: !45, line: 117, type: !125)
!209 = !DILocation(line: 117, column: 13, scope: !206)
!210 = !DILocation(line: 119, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !45, line: 119, column: 13)
!212 = !DILocation(line: 119, column: 18, scope: !211)
!213 = !DILocation(line: 119, column: 23, scope: !211)
!214 = !DILocation(line: 119, column: 26, scope: !211)
!215 = !DILocation(line: 119, column: 31, scope: !211)
!216 = !DILocation(line: 119, column: 13, scope: !206)
!217 = !DILocation(line: 121, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !45, line: 120, column: 9)
!219 = !DILocation(line: 121, column: 13, scope: !218)
!220 = !DILocation(line: 121, column: 26, scope: !218)
!221 = !DILocation(line: 123, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 123, column: 13)
!223 = !DILocation(line: 123, column: 17, scope: !222)
!224 = !DILocation(line: 123, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 123, column: 13)
!226 = !DILocation(line: 123, column: 26, scope: !225)
!227 = !DILocation(line: 123, column: 13, scope: !222)
!228 = !DILocation(line: 125, column: 37, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !45, line: 124, column: 13)
!230 = !DILocation(line: 125, column: 30, scope: !229)
!231 = !DILocation(line: 125, column: 17, scope: !229)
!232 = !DILocation(line: 126, column: 13, scope: !229)
!233 = !DILocation(line: 123, column: 33, scope: !225)
!234 = !DILocation(line: 123, column: 13, scope: !225)
!235 = distinct !{!235, !227, !236, !153}
!236 = !DILocation(line: 126, column: 13, scope: !222)
!237 = !DILocation(line: 127, column: 9, scope: !218)
!238 = !DILocation(line: 130, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !211, file: !45, line: 129, column: 9)
!240 = !DILocation(line: 133, column: 1, scope: !198)
!241 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_good", scope: !45, file: !45, line: 135, type: !113, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!242 = !DILocation(line: 137, column: 5, scope: !241)
!243 = !DILocation(line: 138, column: 5, scope: !241)
!244 = !DILocation(line: 139, column: 1, scope: !241)
!245 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource", scope: !48, file: !48, line: 44, type: !246, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!246 = !DISubroutineType(types: !247)
!247 = !{!23, !23}
!248 = !DILocalVariable(name: "data", arg: 1, scope: !245, file: !48, line: 44, type: !23)
!249 = !DILocation(line: 44, column: 80, scope: !245)
!250 = !DILocalVariable(name: "recvResult", scope: !251, file: !48, line: 51, type: !23)
!251 = distinct !DILexicalBlock(scope: !245, file: !48, line: 46, column: 5)
!252 = !DILocation(line: 51, column: 13, scope: !251)
!253 = !DILocalVariable(name: "service", scope: !251, file: !48, line: 52, type: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !63, line: 238, size: 128, elements: !255)
!255 = !{!256, !257, !261, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !254, file: !63, line: 240, baseType: !102, size: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !254, file: !63, line: 241, baseType: !258, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !63, line: 119, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 25, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !96, line: 40, baseType: !24)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !254, file: !63, line: 242, baseType: !262, size: 32, offset: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !63, line: 31, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !262, file: !63, line: 33, baseType: !92, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !254, file: !63, line: 245, baseType: !266, size: 64, offset: 64)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 8)
!269 = !DILocation(line: 52, column: 28, scope: !251)
!270 = !DILocalVariable(name: "listenSocket", scope: !251, file: !48, line: 53, type: !23)
!271 = !DILocation(line: 53, column: 16, scope: !251)
!272 = !DILocalVariable(name: "acceptSocket", scope: !251, file: !48, line: 54, type: !23)
!273 = !DILocation(line: 54, column: 16, scope: !251)
!274 = !DILocalVariable(name: "inputBuffer", scope: !251, file: !48, line: 55, type: !105)
!275 = !DILocation(line: 55, column: 14, scope: !251)
!276 = !DILocation(line: 56, column: 9, scope: !251)
!277 = !DILocation(line: 66, column: 28, scope: !278)
!278 = distinct !DILexicalBlock(scope: !251, file: !48, line: 57, column: 9)
!279 = !DILocation(line: 66, column: 26, scope: !278)
!280 = !DILocation(line: 67, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !48, line: 67, column: 17)
!282 = !DILocation(line: 67, column: 30, scope: !281)
!283 = !DILocation(line: 67, column: 17, scope: !278)
!284 = !DILocation(line: 69, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !48, line: 68, column: 13)
!286 = !DILocation(line: 71, column: 13, scope: !278)
!287 = !DILocation(line: 72, column: 21, scope: !278)
!288 = !DILocation(line: 72, column: 32, scope: !278)
!289 = !DILocation(line: 73, column: 21, scope: !278)
!290 = !DILocation(line: 73, column: 30, scope: !278)
!291 = !DILocation(line: 73, column: 37, scope: !278)
!292 = !DILocation(line: 74, column: 32, scope: !278)
!293 = !DILocation(line: 74, column: 21, scope: !278)
!294 = !DILocation(line: 74, column: 30, scope: !278)
!295 = !DILocation(line: 75, column: 22, scope: !296)
!296 = distinct !DILexicalBlock(scope: !278, file: !48, line: 75, column: 17)
!297 = !DILocation(line: 75, column: 36, scope: !296)
!298 = !DILocation(line: 75, column: 17, scope: !296)
!299 = !DILocation(line: 75, column: 81, scope: !296)
!300 = !DILocation(line: 75, column: 17, scope: !278)
!301 = !DILocation(line: 77, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !48, line: 76, column: 13)
!303 = !DILocation(line: 79, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !278, file: !48, line: 79, column: 17)
!305 = !DILocation(line: 79, column: 17, scope: !304)
!306 = !DILocation(line: 79, column: 54, scope: !304)
!307 = !DILocation(line: 79, column: 17, scope: !278)
!308 = !DILocation(line: 81, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !48, line: 80, column: 13)
!310 = !DILocation(line: 83, column: 35, scope: !278)
!311 = !DILocation(line: 83, column: 28, scope: !278)
!312 = !DILocation(line: 83, column: 26, scope: !278)
!313 = !DILocation(line: 84, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !278, file: !48, line: 84, column: 17)
!315 = !DILocation(line: 84, column: 30, scope: !314)
!316 = !DILocation(line: 84, column: 17, scope: !278)
!317 = !DILocation(line: 86, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !48, line: 85, column: 13)
!319 = !DILocation(line: 89, column: 31, scope: !278)
!320 = !DILocation(line: 89, column: 45, scope: !278)
!321 = !DILocation(line: 89, column: 26, scope: !278)
!322 = !DILocation(line: 89, column: 24, scope: !278)
!323 = !DILocation(line: 90, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !278, file: !48, line: 90, column: 17)
!325 = !DILocation(line: 90, column: 28, scope: !324)
!326 = !DILocation(line: 90, column: 44, scope: !324)
!327 = !DILocation(line: 90, column: 47, scope: !324)
!328 = !DILocation(line: 90, column: 58, scope: !324)
!329 = !DILocation(line: 90, column: 17, scope: !278)
!330 = !DILocation(line: 92, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !48, line: 91, column: 13)
!332 = !DILocation(line: 95, column: 25, scope: !278)
!333 = !DILocation(line: 95, column: 13, scope: !278)
!334 = !DILocation(line: 95, column: 37, scope: !278)
!335 = !DILocation(line: 97, column: 25, scope: !278)
!336 = !DILocation(line: 97, column: 20, scope: !278)
!337 = !DILocation(line: 97, column: 18, scope: !278)
!338 = !DILocation(line: 98, column: 9, scope: !278)
!339 = !DILocation(line: 100, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !251, file: !48, line: 100, column: 13)
!341 = !DILocation(line: 100, column: 26, scope: !340)
!342 = !DILocation(line: 100, column: 13, scope: !251)
!343 = !DILocation(line: 102, column: 26, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !48, line: 101, column: 9)
!345 = !DILocation(line: 102, column: 13, scope: !344)
!346 = !DILocation(line: 103, column: 9, scope: !344)
!347 = !DILocation(line: 104, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !251, file: !48, line: 104, column: 13)
!349 = !DILocation(line: 104, column: 26, scope: !348)
!350 = !DILocation(line: 104, column: 13, scope: !251)
!351 = !DILocation(line: 106, column: 26, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !48, line: 105, column: 9)
!353 = !DILocation(line: 106, column: 13, scope: !352)
!354 = !DILocation(line: 107, column: 9, scope: !352)
!355 = !DILocation(line: 115, column: 12, scope: !245)
!356 = !DILocation(line: 115, column: 5, scope: !245)
!357 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource", scope: !48, file: !48, line: 123, type: !246, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!358 = !DILocalVariable(name: "data", arg: 1, scope: !357, file: !48, line: 123, type: !23)
!359 = !DILocation(line: 123, column: 84, scope: !357)
!360 = !DILocation(line: 127, column: 10, scope: !357)
!361 = !DILocation(line: 128, column: 12, scope: !357)
!362 = !DILocation(line: 128, column: 5, scope: !357)
!363 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource", scope: !48, file: !48, line: 132, type: !246, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!364 = !DILocalVariable(name: "data", arg: 1, scope: !363, file: !48, line: 132, type: !23)
!365 = !DILocation(line: 132, column: 84, scope: !363)
!366 = !DILocalVariable(name: "recvResult", scope: !367, file: !48, line: 139, type: !23)
!367 = distinct !DILexicalBlock(scope: !363, file: !48, line: 134, column: 5)
!368 = !DILocation(line: 139, column: 13, scope: !367)
!369 = !DILocalVariable(name: "service", scope: !367, file: !48, line: 140, type: !254)
!370 = !DILocation(line: 140, column: 28, scope: !367)
!371 = !DILocalVariable(name: "listenSocket", scope: !367, file: !48, line: 141, type: !23)
!372 = !DILocation(line: 141, column: 16, scope: !367)
!373 = !DILocalVariable(name: "acceptSocket", scope: !367, file: !48, line: 142, type: !23)
!374 = !DILocation(line: 142, column: 16, scope: !367)
!375 = !DILocalVariable(name: "inputBuffer", scope: !367, file: !48, line: 143, type: !105)
!376 = !DILocation(line: 143, column: 14, scope: !367)
!377 = !DILocation(line: 144, column: 9, scope: !367)
!378 = !DILocation(line: 154, column: 28, scope: !379)
!379 = distinct !DILexicalBlock(scope: !367, file: !48, line: 145, column: 9)
!380 = !DILocation(line: 154, column: 26, scope: !379)
!381 = !DILocation(line: 155, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !48, line: 155, column: 17)
!383 = !DILocation(line: 155, column: 30, scope: !382)
!384 = !DILocation(line: 155, column: 17, scope: !379)
!385 = !DILocation(line: 157, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !48, line: 156, column: 13)
!387 = !DILocation(line: 159, column: 13, scope: !379)
!388 = !DILocation(line: 160, column: 21, scope: !379)
!389 = !DILocation(line: 160, column: 32, scope: !379)
!390 = !DILocation(line: 161, column: 21, scope: !379)
!391 = !DILocation(line: 161, column: 30, scope: !379)
!392 = !DILocation(line: 161, column: 37, scope: !379)
!393 = !DILocation(line: 162, column: 32, scope: !379)
!394 = !DILocation(line: 162, column: 21, scope: !379)
!395 = !DILocation(line: 162, column: 30, scope: !379)
!396 = !DILocation(line: 163, column: 22, scope: !397)
!397 = distinct !DILexicalBlock(scope: !379, file: !48, line: 163, column: 17)
!398 = !DILocation(line: 163, column: 36, scope: !397)
!399 = !DILocation(line: 163, column: 17, scope: !397)
!400 = !DILocation(line: 163, column: 81, scope: !397)
!401 = !DILocation(line: 163, column: 17, scope: !379)
!402 = !DILocation(line: 165, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !48, line: 164, column: 13)
!404 = !DILocation(line: 167, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !379, file: !48, line: 167, column: 17)
!406 = !DILocation(line: 167, column: 17, scope: !405)
!407 = !DILocation(line: 167, column: 54, scope: !405)
!408 = !DILocation(line: 167, column: 17, scope: !379)
!409 = !DILocation(line: 169, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !405, file: !48, line: 168, column: 13)
!411 = !DILocation(line: 171, column: 35, scope: !379)
!412 = !DILocation(line: 171, column: 28, scope: !379)
!413 = !DILocation(line: 171, column: 26, scope: !379)
!414 = !DILocation(line: 172, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !379, file: !48, line: 172, column: 17)
!416 = !DILocation(line: 172, column: 30, scope: !415)
!417 = !DILocation(line: 172, column: 17, scope: !379)
!418 = !DILocation(line: 174, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !48, line: 173, column: 13)
!420 = !DILocation(line: 177, column: 31, scope: !379)
!421 = !DILocation(line: 177, column: 45, scope: !379)
!422 = !DILocation(line: 177, column: 26, scope: !379)
!423 = !DILocation(line: 177, column: 24, scope: !379)
!424 = !DILocation(line: 178, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !379, file: !48, line: 178, column: 17)
!426 = !DILocation(line: 178, column: 28, scope: !425)
!427 = !DILocation(line: 178, column: 44, scope: !425)
!428 = !DILocation(line: 178, column: 47, scope: !425)
!429 = !DILocation(line: 178, column: 58, scope: !425)
!430 = !DILocation(line: 178, column: 17, scope: !379)
!431 = !DILocation(line: 180, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !425, file: !48, line: 179, column: 13)
!433 = !DILocation(line: 183, column: 25, scope: !379)
!434 = !DILocation(line: 183, column: 13, scope: !379)
!435 = !DILocation(line: 183, column: 37, scope: !379)
!436 = !DILocation(line: 185, column: 25, scope: !379)
!437 = !DILocation(line: 185, column: 20, scope: !379)
!438 = !DILocation(line: 185, column: 18, scope: !379)
!439 = !DILocation(line: 186, column: 9, scope: !379)
!440 = !DILocation(line: 188, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !367, file: !48, line: 188, column: 13)
!442 = !DILocation(line: 188, column: 26, scope: !441)
!443 = !DILocation(line: 188, column: 13, scope: !367)
!444 = !DILocation(line: 190, column: 26, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !48, line: 189, column: 9)
!446 = !DILocation(line: 190, column: 13, scope: !445)
!447 = !DILocation(line: 191, column: 9, scope: !445)
!448 = !DILocation(line: 192, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !367, file: !48, line: 192, column: 13)
!450 = !DILocation(line: 192, column: 26, scope: !449)
!451 = !DILocation(line: 192, column: 13, scope: !367)
!452 = !DILocation(line: 194, column: 26, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !48, line: 193, column: 9)
!454 = !DILocation(line: 194, column: 13, scope: !453)
!455 = !DILocation(line: 195, column: 9, scope: !453)
!456 = !DILocation(line: 203, column: 12, scope: !363)
!457 = !DILocation(line: 203, column: 5, scope: !363)
!458 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !459, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !42}
!461 = !DILocalVariable(name: "line", arg: 1, scope: !458, file: !3, line: 11, type: !42)
!462 = !DILocation(line: 11, column: 25, scope: !458)
!463 = !DILocation(line: 13, column: 1, scope: !458)
!464 = !DILocation(line: 14, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !458, file: !3, line: 14, column: 8)
!466 = !DILocation(line: 14, column: 13, scope: !465)
!467 = !DILocation(line: 14, column: 8, scope: !458)
!468 = !DILocation(line: 16, column: 24, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !3, line: 15, column: 5)
!470 = !DILocation(line: 16, column: 9, scope: !469)
!471 = !DILocation(line: 17, column: 5, scope: !469)
!472 = !DILocation(line: 18, column: 5, scope: !458)
!473 = !DILocation(line: 19, column: 1, scope: !458)
!474 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !459, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DILocalVariable(name: "line", arg: 1, scope: !474, file: !3, line: 20, type: !42)
!476 = !DILocation(line: 20, column: 29, scope: !474)
!477 = !DILocation(line: 22, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 22, column: 8)
!479 = !DILocation(line: 22, column: 13, scope: !478)
!480 = !DILocation(line: 22, column: 8, scope: !474)
!481 = !DILocation(line: 24, column: 24, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 23, column: 5)
!483 = !DILocation(line: 24, column: 9, scope: !482)
!484 = !DILocation(line: 25, column: 5, scope: !482)
!485 = !DILocation(line: 26, column: 1, scope: !474)
!486 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !487, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !491, line: 74, baseType: !23)
!491 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!492 = !DILocalVariable(name: "line", arg: 1, scope: !486, file: !3, line: 27, type: !489)
!493 = !DILocation(line: 27, column: 29, scope: !486)
!494 = !DILocation(line: 29, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !3, line: 29, column: 8)
!496 = !DILocation(line: 29, column: 13, scope: !495)
!497 = !DILocation(line: 29, column: 8, scope: !486)
!498 = !DILocation(line: 31, column: 27, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 30, column: 5)
!500 = !DILocation(line: 31, column: 9, scope: !499)
!501 = !DILocation(line: 32, column: 5, scope: !499)
!502 = !DILocation(line: 33, column: 1, scope: !486)
!503 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !504, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !23}
!506 = !DILocalVariable(name: "intNumber", arg: 1, scope: !503, file: !3, line: 35, type: !23)
!507 = !DILocation(line: 35, column: 24, scope: !503)
!508 = !DILocation(line: 37, column: 20, scope: !503)
!509 = !DILocation(line: 37, column: 5, scope: !503)
!510 = !DILocation(line: 38, column: 1, scope: !503)
!511 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !512, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !511, file: !3, line: 40, type: !514)
!516 = !DILocation(line: 40, column: 28, scope: !511)
!517 = !DILocation(line: 42, column: 21, scope: !511)
!518 = !DILocation(line: 42, column: 5, scope: !511)
!519 = !DILocation(line: 43, column: 1, scope: !511)
!520 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !521, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!524 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !520, file: !3, line: 45, type: !523)
!525 = !DILocation(line: 45, column: 28, scope: !520)
!526 = !DILocation(line: 47, column: 20, scope: !520)
!527 = !DILocation(line: 47, column: 5, scope: !520)
!528 = !DILocation(line: 48, column: 1, scope: !520)
!529 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !530, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!533 = !DILocalVariable(name: "longNumber", arg: 1, scope: !529, file: !3, line: 50, type: !532)
!534 = !DILocation(line: 50, column: 26, scope: !529)
!535 = !DILocation(line: 52, column: 21, scope: !529)
!536 = !DILocation(line: 52, column: 5, scope: !529)
!537 = !DILocation(line: 53, column: 1, scope: !529)
!538 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !539, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !542, line: 27, baseType: !543)
!542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !96, line: 44, baseType: !532)
!544 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !538, file: !3, line: 55, type: !541)
!545 = !DILocation(line: 55, column: 33, scope: !538)
!546 = !DILocation(line: 57, column: 29, scope: !538)
!547 = !DILocation(line: 57, column: 5, scope: !538)
!548 = !DILocation(line: 58, column: 1, scope: !538)
!549 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !550, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !491, line: 46, baseType: !553)
!553 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!554 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !549, file: !3, line: 60, type: !552)
!555 = !DILocation(line: 60, column: 29, scope: !549)
!556 = !DILocation(line: 62, column: 21, scope: !549)
!557 = !DILocation(line: 62, column: 5, scope: !549)
!558 = !DILocation(line: 63, column: 1, scope: !549)
!559 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !560, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !43}
!562 = !DILocalVariable(name: "charHex", arg: 1, scope: !559, file: !3, line: 65, type: !43)
!563 = !DILocation(line: 65, column: 29, scope: !559)
!564 = !DILocation(line: 67, column: 22, scope: !559)
!565 = !DILocation(line: 67, column: 5, scope: !559)
!566 = !DILocation(line: 68, column: 1, scope: !559)
!567 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !568, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !490}
!570 = !DILocalVariable(name: "wideChar", arg: 1, scope: !567, file: !3, line: 70, type: !490)
!571 = !DILocation(line: 70, column: 29, scope: !567)
!572 = !DILocalVariable(name: "s", scope: !567, file: !3, line: 74, type: !573)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 2)
!576 = !DILocation(line: 74, column: 13, scope: !567)
!577 = !DILocation(line: 75, column: 16, scope: !567)
!578 = !DILocation(line: 75, column: 9, scope: !567)
!579 = !DILocation(line: 75, column: 14, scope: !567)
!580 = !DILocation(line: 76, column: 9, scope: !567)
!581 = !DILocation(line: 76, column: 14, scope: !567)
!582 = !DILocation(line: 77, column: 21, scope: !567)
!583 = !DILocation(line: 77, column: 5, scope: !567)
!584 = !DILocation(line: 78, column: 1, scope: !567)
!585 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !586, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !7}
!588 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !585, file: !3, line: 80, type: !7)
!589 = !DILocation(line: 80, column: 33, scope: !585)
!590 = !DILocation(line: 82, column: 20, scope: !585)
!591 = !DILocation(line: 82, column: 5, scope: !585)
!592 = !DILocation(line: 83, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !594, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !25}
!596 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !593, file: !3, line: 85, type: !25)
!597 = !DILocation(line: 85, column: 45, scope: !593)
!598 = !DILocation(line: 87, column: 22, scope: !593)
!599 = !DILocation(line: 87, column: 5, scope: !593)
!600 = !DILocation(line: 88, column: 1, scope: !593)
!601 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !602, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604}
!604 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!605 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !601, file: !3, line: 90, type: !604)
!606 = !DILocation(line: 90, column: 29, scope: !601)
!607 = !DILocation(line: 92, column: 20, scope: !601)
!608 = !DILocation(line: 92, column: 5, scope: !601)
!609 = !DILocation(line: 93, column: 1, scope: !601)
!610 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !611, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !615, line: 100, baseType: !616)
!615 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !615, line: 96, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !616, file: !615, line: 98, baseType: !23, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !616, file: !615, line: 99, baseType: !23, size: 32, offset: 32)
!620 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !610, file: !3, line: 95, type: !613)
!621 = !DILocation(line: 95, column: 40, scope: !610)
!622 = !DILocation(line: 97, column: 26, scope: !610)
!623 = !DILocation(line: 97, column: 47, scope: !610)
!624 = !DILocation(line: 97, column: 55, scope: !610)
!625 = !DILocation(line: 97, column: 76, scope: !610)
!626 = !DILocation(line: 97, column: 5, scope: !610)
!627 = !DILocation(line: 98, column: 1, scope: !610)
!628 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !629, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631, !552}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!632 = !DILocalVariable(name: "bytes", arg: 1, scope: !628, file: !3, line: 100, type: !631)
!633 = !DILocation(line: 100, column: 38, scope: !628)
!634 = !DILocalVariable(name: "numBytes", arg: 2, scope: !628, file: !3, line: 100, type: !552)
!635 = !DILocation(line: 100, column: 52, scope: !628)
!636 = !DILocalVariable(name: "i", scope: !628, file: !3, line: 102, type: !552)
!637 = !DILocation(line: 102, column: 12, scope: !628)
!638 = !DILocation(line: 103, column: 12, scope: !639)
!639 = distinct !DILexicalBlock(scope: !628, file: !3, line: 103, column: 5)
!640 = !DILocation(line: 103, column: 10, scope: !639)
!641 = !DILocation(line: 103, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !3, line: 103, column: 5)
!643 = !DILocation(line: 103, column: 21, scope: !642)
!644 = !DILocation(line: 103, column: 19, scope: !642)
!645 = !DILocation(line: 103, column: 5, scope: !639)
!646 = !DILocation(line: 105, column: 24, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !3, line: 104, column: 5)
!648 = !DILocation(line: 105, column: 30, scope: !647)
!649 = !DILocation(line: 105, column: 9, scope: !647)
!650 = !DILocation(line: 106, column: 5, scope: !647)
!651 = !DILocation(line: 103, column: 31, scope: !642)
!652 = !DILocation(line: 103, column: 5, scope: !642)
!653 = distinct !{!653, !645, !654, !153}
!654 = !DILocation(line: 106, column: 5, scope: !639)
!655 = !DILocation(line: 107, column: 5, scope: !628)
!656 = !DILocation(line: 108, column: 1, scope: !628)
!657 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !658, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DISubroutineType(types: !659)
!659 = !{!552, !631, !552, !42}
!660 = !DILocalVariable(name: "bytes", arg: 1, scope: !657, file: !3, line: 113, type: !631)
!661 = !DILocation(line: 113, column: 39, scope: !657)
!662 = !DILocalVariable(name: "numBytes", arg: 2, scope: !657, file: !3, line: 113, type: !552)
!663 = !DILocation(line: 113, column: 53, scope: !657)
!664 = !DILocalVariable(name: "hex", arg: 3, scope: !657, file: !3, line: 113, type: !42)
!665 = !DILocation(line: 113, column: 71, scope: !657)
!666 = !DILocalVariable(name: "numWritten", scope: !657, file: !3, line: 115, type: !552)
!667 = !DILocation(line: 115, column: 12, scope: !657)
!668 = !DILocation(line: 121, column: 5, scope: !657)
!669 = !DILocation(line: 121, column: 12, scope: !657)
!670 = !DILocation(line: 121, column: 25, scope: !657)
!671 = !DILocation(line: 121, column: 23, scope: !657)
!672 = !DILocation(line: 121, column: 34, scope: !657)
!673 = !DILocation(line: 121, column: 37, scope: !657)
!674 = !DILocation(line: 121, column: 67, scope: !657)
!675 = !DILocation(line: 121, column: 70, scope: !657)
!676 = !DILocation(line: 0, scope: !657)
!677 = !DILocalVariable(name: "byte", scope: !678, file: !3, line: 123, type: !23)
!678 = distinct !DILexicalBlock(scope: !657, file: !3, line: 122, column: 5)
!679 = !DILocation(line: 123, column: 13, scope: !678)
!680 = !DILocation(line: 124, column: 17, scope: !678)
!681 = !DILocation(line: 124, column: 25, scope: !678)
!682 = !DILocation(line: 124, column: 23, scope: !678)
!683 = !DILocation(line: 124, column: 9, scope: !678)
!684 = !DILocation(line: 125, column: 45, scope: !678)
!685 = !DILocation(line: 125, column: 29, scope: !678)
!686 = !DILocation(line: 125, column: 9, scope: !678)
!687 = !DILocation(line: 125, column: 15, scope: !678)
!688 = !DILocation(line: 125, column: 27, scope: !678)
!689 = !DILocation(line: 126, column: 9, scope: !678)
!690 = distinct !{!690, !668, !691, !153}
!691 = !DILocation(line: 127, column: 5, scope: !657)
!692 = !DILocation(line: 129, column: 12, scope: !657)
!693 = !DILocation(line: 129, column: 5, scope: !657)
!694 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !695, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!695 = !DISubroutineType(types: !696)
!696 = !{!552, !631, !552, !489}
!697 = !DILocalVariable(name: "bytes", arg: 1, scope: !694, file: !3, line: 135, type: !631)
!698 = !DILocation(line: 135, column: 41, scope: !694)
!699 = !DILocalVariable(name: "numBytes", arg: 2, scope: !694, file: !3, line: 135, type: !552)
!700 = !DILocation(line: 135, column: 55, scope: !694)
!701 = !DILocalVariable(name: "hex", arg: 3, scope: !694, file: !3, line: 135, type: !489)
!702 = !DILocation(line: 135, column: 76, scope: !694)
!703 = !DILocalVariable(name: "numWritten", scope: !694, file: !3, line: 137, type: !552)
!704 = !DILocation(line: 137, column: 12, scope: !694)
!705 = !DILocation(line: 143, column: 5, scope: !694)
!706 = !DILocation(line: 143, column: 12, scope: !694)
!707 = !DILocation(line: 143, column: 25, scope: !694)
!708 = !DILocation(line: 143, column: 23, scope: !694)
!709 = !DILocation(line: 143, column: 34, scope: !694)
!710 = !DILocation(line: 143, column: 47, scope: !694)
!711 = !DILocation(line: 143, column: 55, scope: !694)
!712 = !DILocation(line: 143, column: 53, scope: !694)
!713 = !DILocation(line: 143, column: 37, scope: !694)
!714 = !DILocation(line: 143, column: 68, scope: !694)
!715 = !DILocation(line: 143, column: 81, scope: !694)
!716 = !DILocation(line: 143, column: 89, scope: !694)
!717 = !DILocation(line: 143, column: 87, scope: !694)
!718 = !DILocation(line: 143, column: 100, scope: !694)
!719 = !DILocation(line: 143, column: 71, scope: !694)
!720 = !DILocation(line: 0, scope: !694)
!721 = !DILocalVariable(name: "byte", scope: !722, file: !3, line: 145, type: !23)
!722 = distinct !DILexicalBlock(scope: !694, file: !3, line: 144, column: 5)
!723 = !DILocation(line: 145, column: 13, scope: !722)
!724 = !DILocation(line: 146, column: 18, scope: !722)
!725 = !DILocation(line: 146, column: 26, scope: !722)
!726 = !DILocation(line: 146, column: 24, scope: !722)
!727 = !DILocation(line: 146, column: 9, scope: !722)
!728 = !DILocation(line: 147, column: 45, scope: !722)
!729 = !DILocation(line: 147, column: 29, scope: !722)
!730 = !DILocation(line: 147, column: 9, scope: !722)
!731 = !DILocation(line: 147, column: 15, scope: !722)
!732 = !DILocation(line: 147, column: 27, scope: !722)
!733 = !DILocation(line: 148, column: 9, scope: !722)
!734 = distinct !{!734, !705, !735, !153}
!735 = !DILocation(line: 149, column: 5, scope: !694)
!736 = !DILocation(line: 151, column: 12, scope: !694)
!737 = !DILocation(line: 151, column: 5, scope: !694)
!738 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !739, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!739 = !DISubroutineType(types: !740)
!740 = !{!23}
!741 = !DILocation(line: 158, column: 5, scope: !738)
!742 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !739, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!743 = !DILocation(line: 163, column: 5, scope: !742)
!744 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !739, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!745 = !DILocation(line: 168, column: 13, scope: !744)
!746 = !DILocation(line: 168, column: 20, scope: !744)
!747 = !DILocation(line: 168, column: 5, scope: !744)
!748 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!749 = !DILocation(line: 187, column: 16, scope: !748)
!750 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!751 = !DILocation(line: 188, column: 16, scope: !750)
!752 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!753 = !DILocation(line: 189, column: 16, scope: !752)
!754 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!755 = !DILocation(line: 190, column: 16, scope: !754)
!756 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!757 = !DILocation(line: 191, column: 16, scope: !756)
!758 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!759 = !DILocation(line: 192, column: 16, scope: !758)
!760 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!761 = !DILocation(line: 193, column: 16, scope: !760)
!762 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!763 = !DILocation(line: 194, column: 16, scope: !762)
!764 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!765 = !DILocation(line: 195, column: 16, scope: !764)
!766 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!767 = !DILocation(line: 198, column: 15, scope: !766)
!768 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!769 = !DILocation(line: 199, column: 15, scope: !768)
!770 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!771 = !DILocation(line: 200, column: 15, scope: !770)
!772 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!773 = !DILocation(line: 201, column: 15, scope: !772)
!774 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!775 = !DILocation(line: 202, column: 15, scope: !774)
!776 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!777 = !DILocation(line: 203, column: 15, scope: !776)
!778 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!779 = !DILocation(line: 204, column: 15, scope: !778)
!780 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!781 = !DILocation(line: 205, column: 15, scope: !780)
!782 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!783 = !DILocation(line: 206, column: 15, scope: !782)
