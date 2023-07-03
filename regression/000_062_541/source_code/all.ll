; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @badSource(i32 %data) #0 !dbg !104 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !113, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 -1, i32* %connectSocket, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !137, metadata !DIExpression()), !dbg !138
  br label %do.body, !dbg !139

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !140
  store i32 %call, i32* %connectSocket, align 4, !dbg !142
  %0 = load i32, i32* %connectSocket, align 4, !dbg !143
  %cmp = icmp eq i32 %0, -1, !dbg !145
  br i1 %cmp, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !147

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !149
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !149
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !150
  store i16 2, i16* %sin_family, align 4, !dbg !151
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !152
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !153
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !154
  store i32 %call1, i32* %s_addr, align 4, !dbg !155
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !156
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !157
  store i16 %call2, i16* %sin_port, align 2, !dbg !158
  %2 = load i32, i32* %connectSocket, align 4, !dbg !159
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !161
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !162
  %cmp4 = icmp eq i32 %call3, -1, !dbg !163
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !164

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !165

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !167
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !168
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !169
  %conv = trunc i64 %call7 to i32, !dbg !169
  store i32 %conv, i32* %recvResult, align 4, !dbg !170
  %5 = load i32, i32* %recvResult, align 4, !dbg !171
  %cmp8 = icmp eq i32 %5, -1, !dbg !173
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !174

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !175
  %cmp10 = icmp eq i32 %6, 0, !dbg !176
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !177

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !178

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !180
  %idxprom = sext i32 %7 to i64, !dbg !181
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !181
  store i8 0, i8* %arrayidx, align 1, !dbg !182
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !183
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !184
  store i32 %call15, i32* %data.addr, align 4, !dbg !185
  br label %do.end, !dbg !186

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !187
  %cmp16 = icmp ne i32 %8, -1, !dbg !189
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !190

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !191
  %call19 = call i32 @close(i32 %9), !dbg !193
  br label %if.end20, !dbg !194

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data.addr, align 4, !dbg !195
  ret i32 %10, !dbg !196
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad() #0 !dbg !197 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 -1, i32* %data, align 4, !dbg !202
  %0 = load i32, i32* %data, align 4, !dbg !203
  %call = call i32 @badSource(i32 %0), !dbg !204
  store i32 %call, i32* %data, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !209, metadata !DIExpression()), !dbg !213
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !213
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !213
  %2 = load i32, i32* %data, align 4, !dbg !214
  %cmp = icmp sge i32 %2, 0, !dbg !216
  br i1 %cmp, label %if.then, label %if.else, !dbg !217

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !218
  %idxprom = sext i32 %3 to i64, !dbg !220
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !220
  store i32 1, i32* %arrayidx, align 4, !dbg !221
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !225
  %cmp1 = icmp slt i32 %4, 10, !dbg !227
  br i1 %cmp1, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !229
  %idxprom2 = sext i32 %5 to i64, !dbg !231
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !231
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !231
  call void @printIntLine(i32 %6), !dbg !232
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !234
  %inc = add nsw i32 %7, 1, !dbg !234
  store i32 %inc, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !235, !llvm.loop !236

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !239

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !240
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodG2BSource(i32 %data) #0 !dbg !243 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  store i32 7, i32* %data.addr, align 4, !dbg !246
  %0 = load i32, i32* %data.addr, align 4, !dbg !247
  ret i32 %0, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !249 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 -1, i32* %data, align 4, !dbg !252
  %0 = load i32, i32* %data, align 4, !dbg !253
  %call = call i32 @goodG2BSource(i32 %0), !dbg !254
  store i32 %call, i32* %data, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata i32* %i, metadata !256, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !259, metadata !DIExpression()), !dbg !260
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !260
  %2 = load i32, i32* %data, align 4, !dbg !261
  %cmp = icmp sge i32 %2, 0, !dbg !263
  br i1 %cmp, label %if.then, label %if.else, !dbg !264

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !265
  %idxprom = sext i32 %3 to i64, !dbg !267
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !267
  store i32 1, i32* %arrayidx, align 4, !dbg !268
  store i32 0, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !271

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !272
  %cmp1 = icmp slt i32 %4, 10, !dbg !274
  br i1 %cmp1, label %for.body, label %for.end, !dbg !275

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !276
  %idxprom2 = sext i32 %5 to i64, !dbg !278
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !278
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !278
  call void @printIntLine(i32 %6), !dbg !279
  br label %for.inc, !dbg !280

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !281
  %inc = add nsw i32 %7, 1, !dbg !281
  store i32 %inc, i32* %i, align 4, !dbg !281
  br label %for.cond, !dbg !282, !llvm.loop !283

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !285

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !286
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodB2GSource(i32 %data) #0 !dbg !289 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !297, metadata !DIExpression()), !dbg !298
  store i32 -1, i32* %connectSocket, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  br label %do.body, !dbg !301

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !302
  store i32 %call, i32* %connectSocket, align 4, !dbg !304
  %0 = load i32, i32* %connectSocket, align 4, !dbg !305
  %cmp = icmp eq i32 %0, -1, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !309

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !311
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !311
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !312
  store i16 2, i16* %sin_family, align 4, !dbg !313
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !314
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !315
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !316
  store i32 %call1, i32* %s_addr, align 4, !dbg !317
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !318
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !319
  store i16 %call2, i16* %sin_port, align 2, !dbg !320
  %2 = load i32, i32* %connectSocket, align 4, !dbg !321
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !323
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !324
  %cmp4 = icmp eq i32 %call3, -1, !dbg !325
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !326

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !327

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !329
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !330
  %call7 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !331
  %conv = trunc i64 %call7 to i32, !dbg !331
  store i32 %conv, i32* %recvResult, align 4, !dbg !332
  %5 = load i32, i32* %recvResult, align 4, !dbg !333
  %cmp8 = icmp eq i32 %5, -1, !dbg !335
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !336

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, i32* %recvResult, align 4, !dbg !337
  %cmp10 = icmp eq i32 %6, 0, !dbg !338
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !339

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !340

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !342
  %idxprom = sext i32 %7 to i64, !dbg !343
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !343
  store i8 0, i8* %arrayidx, align 1, !dbg !344
  %arraydecay14 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !345
  %call15 = call i32 @atoi(i8* %arraydecay14) #9, !dbg !346
  store i32 %call15, i32* %data.addr, align 4, !dbg !347
  br label %do.end, !dbg !348

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %8 = load i32, i32* %connectSocket, align 4, !dbg !349
  %cmp16 = icmp ne i32 %8, -1, !dbg !351
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !352

if.then18:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !353
  %call19 = call i32 @close(i32 %9), !dbg !355
  br label %if.end20, !dbg !356

if.end20:                                         ; preds = %if.then18, %do.end
  %10 = load i32, i32* %data.addr, align 4, !dbg !357
  ret i32 %10, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !359 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !360, metadata !DIExpression()), !dbg !361
  store i32 -1, i32* %data, align 4, !dbg !362
  %0 = load i32, i32* %data, align 4, !dbg !363
  %call = call i32 @goodB2GSource(i32 %0), !dbg !364
  store i32 %call, i32* %data, align 4, !dbg !365
  call void @llvm.dbg.declare(metadata i32* %i, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !369, metadata !DIExpression()), !dbg !370
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !370
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !370
  %2 = load i32, i32* %data, align 4, !dbg !371
  %cmp = icmp sge i32 %2, 0, !dbg !373
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !374

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !375
  %cmp1 = icmp slt i32 %3, 10, !dbg !376
  br i1 %cmp1, label %if.then, label %if.else, !dbg !377

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !378
  %idxprom = sext i32 %4 to i64, !dbg !380
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !380
  store i32 1, i32* %arrayidx, align 4, !dbg !381
  store i32 0, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !385
  %cmp2 = icmp slt i32 %5, 10, !dbg !387
  br i1 %cmp2, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !389
  %idxprom3 = sext i32 %6 to i64, !dbg !391
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !391
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !391
  call void @printIntLine(i32 %7), !dbg !392
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !394
  %inc = add nsw i32 %8, 1, !dbg !394
  store i32 %inc, i32* %i, align 4, !dbg !394
  br label %for.cond, !dbg !395, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !398

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !399
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good() #0 !dbg !402 {
entry:
  call void @goodB2G(), !dbg !403
  call void @goodG2B(), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !406 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !411
  %0 = load i8*, i8** %line.addr, align 8, !dbg !412
  %cmp = icmp ne i8* %0, null, !dbg !414
  br i1 %cmp, label %if.then, label %if.end, !dbg !415

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !416
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !418
  br label %if.end, !dbg !419

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !420
  ret void, !dbg !421
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !422 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i8*, i8** %line.addr, align 8, !dbg !425
  %cmp = icmp ne i8* %0, null, !dbg !427
  br i1 %cmp, label %if.then, label %if.end, !dbg !428

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !431
  br label %if.end, !dbg !432

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !434 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i32*, i32** %line.addr, align 8, !dbg !442
  %cmp = icmp ne i32* %0, null, !dbg !444
  br i1 %cmp, label %if.then, label %if.end, !dbg !445

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !446
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !448
  br label %if.end, !dbg !449

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !450
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !451 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !459 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !465
  %conv = sext i16 %0 to i32, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !468 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !474
  %conv = fpext float %0 to double, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !477 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !486 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !497 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !507 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !512
  %conv = sext i8 %0 to i32, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !515 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !520, metadata !DIExpression()), !dbg !524
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !525
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !526
  store i32 %0, i32* %arrayidx, align 4, !dbg !527
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !528
  store i32 0, i32* %arrayidx1, align 4, !dbg !529
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !533 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !541 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !546
  %conv = zext i8 %0 to i32, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !549 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !558 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !570
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !571
  %1 = load i32, i32* %intOne, align 4, !dbg !571
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !572
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !573
  %3 = load i32, i32* %intTwo, align 4, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !576 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %i, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 0, i64* %i, align 8, !dbg !586
  br label %for.cond, !dbg !588

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !589
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !591
  %cmp = icmp ult i64 %0, %1, !dbg !592
  br i1 %cmp, label %for.body, label %for.end, !dbg !593

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !594
  %3 = load i64, i64* %i, align 8, !dbg !596
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !594
  %4 = load i8, i8* %arrayidx, align 1, !dbg !594
  %conv = zext i8 %4 to i32, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !597
  br label %for.inc, !dbg !598

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !599
  %inc = add i64 %5, 1, !dbg !599
  store i64 %inc, i64* %i, align 8, !dbg !599
  br label %for.cond, !dbg !600, !llvm.loop !601

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !603
  ret void, !dbg !604
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !605 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 0, i64* %numWritten, align 8, !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !617
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !618
  %cmp = icmp ult i64 %0, %1, !dbg !619
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !620

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !621
  %2 = load i16*, i16** %call, align 8, !dbg !621
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !621
  %4 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul = mul i64 2, %4, !dbg !621
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !621
  %5 = load i8, i8* %arrayidx, align 1, !dbg !621
  %conv = sext i8 %5 to i32, !dbg !621
  %idxprom = sext i32 %conv to i64, !dbg !621
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !621
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !621
  %conv2 = zext i16 %6 to i32, !dbg !621
  %and = and i32 %conv2, 4096, !dbg !621
  %tobool = icmp ne i32 %and, 0, !dbg !621
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !622

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !623
  %7 = load i16*, i16** %call3, align 8, !dbg !623
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !623
  %9 = load i64, i64* %numWritten, align 8, !dbg !623
  %mul4 = mul i64 2, %9, !dbg !623
  %add = add i64 %mul4, 1, !dbg !623
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !623
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !623
  %conv6 = sext i8 %10 to i32, !dbg !623
  %idxprom7 = sext i32 %conv6 to i64, !dbg !623
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !623
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !623
  %conv9 = zext i16 %11 to i32, !dbg !623
  %and10 = and i32 %conv9, 4096, !dbg !623
  %tobool11 = icmp ne i32 %and10, 0, !dbg !622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !624
  br i1 %12, label %while.body, label %while.end, !dbg !616

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !625, metadata !DIExpression()), !dbg !627
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %14 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul12 = mul i64 2, %14, !dbg !630
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !628
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !631
  %15 = load i32, i32* %byte, align 4, !dbg !632
  %conv15 = trunc i32 %15 to i8, !dbg !633
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !634
  %17 = load i64, i64* %numWritten, align 8, !dbg !635
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !634
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !636
  %18 = load i64, i64* %numWritten, align 8, !dbg !637
  %inc = add i64 %18, 1, !dbg !637
  store i64 %inc, i64* %numWritten, align 8, !dbg !637
  br label %while.cond, !dbg !616, !llvm.loop !638

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !640
  ret i64 %19, !dbg !641
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !642 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 0, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !653

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !654
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !657

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !658
  %3 = load i64, i64* %numWritten, align 8, !dbg !659
  %mul = mul i64 2, %3, !dbg !660
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !658
  %4 = load i32, i32* %arrayidx, align 4, !dbg !658
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !661
  %tobool = icmp ne i32 %call, 0, !dbg !661
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !662

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !663
  %6 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul1 = mul i64 2, %6, !dbg !665
  %add = add i64 %mul1, 1, !dbg !666
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !663
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !663
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !667
  %tobool4 = icmp ne i32 %call3, 0, !dbg !662
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !668
  br i1 %8, label %while.body, label %while.end, !dbg !653

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !669, metadata !DIExpression()), !dbg !671
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !672
  %10 = load i64, i64* %numWritten, align 8, !dbg !673
  %mul5 = mul i64 2, %10, !dbg !674
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !672
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !675
  %11 = load i32, i32* %byte, align 4, !dbg !676
  %conv = trunc i32 %11 to i8, !dbg !677
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !678
  %13 = load i64, i64* %numWritten, align 8, !dbg !679
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !678
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !680
  %14 = load i64, i64* %numWritten, align 8, !dbg !681
  %inc = add i64 %14, 1, !dbg !681
  store i64 %inc, i64* %numWritten, align 8, !dbg !681
  br label %while.cond, !dbg !653, !llvm.loop !682

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !684
  ret i64 %15, !dbg !685
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !686 {
entry:
  ret i32 1, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !690 {
entry:
  ret i32 0, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !692 {
entry:
  %call = call i32 @rand() #7, !dbg !693
  %rem = srem i32 %call, 2, !dbg !694
  ret i32 %rem, !dbg !695
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !730 {
entry:
  ret void, !dbg !731
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!100, !100}
!llvm.module.flags = !{!101, !102, !103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_541/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !88, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_541/source_code")
!46 = !{!47, !59}
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !48, line: 24, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 40, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!62 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!66 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!68 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!69 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!70 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!71 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!72 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!74 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!75 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!76 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!77 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!78 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!79 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!80 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!81 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!82 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!83 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!84 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!85 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!86 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!87 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !91, line: 178, size: 128, elements: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !90, file: !91, line: 180, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !95, line: 28, baseType: !24)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !90, file: !91, line: 181, baseType: !97, size: 112, offset: 16)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 14)
!100 = !{!"clang version 12.0.0"}
!101 = !{i32 7, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!23, !23}
!107 = !{}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !104, file: !45, line: 45, type: !23)
!109 = !DILocation(line: 45, column: 19, scope: !104)
!110 = !DILocalVariable(name: "recvResult", scope: !111, file: !45, line: 52, type: !23)
!111 = distinct !DILexicalBlock(scope: !104, file: !45, line: 47, column: 5)
!112 = !DILocation(line: 52, column: 13, scope: !111)
!113 = !DILocalVariable(name: "service", scope: !111, file: !45, line: 53, type: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !115)
!115 = !{!116, !117, !123, !130}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !114, file: !60, line: 240, baseType: !94, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !114, file: !60, line: 241, baseType: !118, size: 16, offset: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !120, line: 25, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !122, line: 40, baseType: !24)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !114, file: !60, line: 242, baseType: !124, size: 32, offset: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !124, file: !60, line: 33, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !122, line: 42, baseType: !7)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !114, file: !60, line: 245, baseType: !131, size: 64, offset: 64)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 8)
!134 = !DILocation(line: 53, column: 28, scope: !111)
!135 = !DILocalVariable(name: "connectSocket", scope: !111, file: !45, line: 54, type: !23)
!136 = !DILocation(line: 54, column: 16, scope: !111)
!137 = !DILocalVariable(name: "inputBuffer", scope: !111, file: !45, line: 55, type: !97)
!138 = !DILocation(line: 55, column: 14, scope: !111)
!139 = !DILocation(line: 56, column: 9, scope: !111)
!140 = !DILocation(line: 66, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !111, file: !45, line: 57, column: 9)
!142 = !DILocation(line: 66, column: 27, scope: !141)
!143 = !DILocation(line: 67, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !45, line: 67, column: 17)
!145 = !DILocation(line: 67, column: 31, scope: !144)
!146 = !DILocation(line: 67, column: 17, scope: !141)
!147 = !DILocation(line: 69, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !45, line: 68, column: 13)
!149 = !DILocation(line: 71, column: 13, scope: !141)
!150 = !DILocation(line: 72, column: 21, scope: !141)
!151 = !DILocation(line: 72, column: 32, scope: !141)
!152 = !DILocation(line: 73, column: 39, scope: !141)
!153 = !DILocation(line: 73, column: 21, scope: !141)
!154 = !DILocation(line: 73, column: 30, scope: !141)
!155 = !DILocation(line: 73, column: 37, scope: !141)
!156 = !DILocation(line: 74, column: 32, scope: !141)
!157 = !DILocation(line: 74, column: 21, scope: !141)
!158 = !DILocation(line: 74, column: 30, scope: !141)
!159 = !DILocation(line: 75, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !141, file: !45, line: 75, column: 17)
!161 = !DILocation(line: 75, column: 40, scope: !160)
!162 = !DILocation(line: 75, column: 17, scope: !160)
!163 = !DILocation(line: 75, column: 85, scope: !160)
!164 = !DILocation(line: 75, column: 17, scope: !141)
!165 = !DILocation(line: 77, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 76, column: 13)
!167 = !DILocation(line: 81, column: 31, scope: !141)
!168 = !DILocation(line: 81, column: 46, scope: !141)
!169 = !DILocation(line: 81, column: 26, scope: !141)
!170 = !DILocation(line: 81, column: 24, scope: !141)
!171 = !DILocation(line: 82, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !141, file: !45, line: 82, column: 17)
!173 = !DILocation(line: 82, column: 28, scope: !172)
!174 = !DILocation(line: 82, column: 44, scope: !172)
!175 = !DILocation(line: 82, column: 47, scope: !172)
!176 = !DILocation(line: 82, column: 58, scope: !172)
!177 = !DILocation(line: 82, column: 17, scope: !141)
!178 = !DILocation(line: 84, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !45, line: 83, column: 13)
!180 = !DILocation(line: 87, column: 25, scope: !141)
!181 = !DILocation(line: 87, column: 13, scope: !141)
!182 = !DILocation(line: 87, column: 37, scope: !141)
!183 = !DILocation(line: 89, column: 25, scope: !141)
!184 = !DILocation(line: 89, column: 20, scope: !141)
!185 = !DILocation(line: 89, column: 18, scope: !141)
!186 = !DILocation(line: 90, column: 9, scope: !141)
!187 = !DILocation(line: 92, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !111, file: !45, line: 92, column: 13)
!189 = !DILocation(line: 92, column: 27, scope: !188)
!190 = !DILocation(line: 92, column: 13, scope: !111)
!191 = !DILocation(line: 94, column: 26, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !45, line: 93, column: 9)
!193 = !DILocation(line: 94, column: 13, scope: !192)
!194 = !DILocation(line: 95, column: 9, scope: !192)
!195 = !DILocation(line: 103, column: 12, scope: !104)
!196 = !DILocation(line: 103, column: 5, scope: !104)
!197 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_bad", scope: !45, file: !45, line: 106, type: !198, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 108, type: !23)
!201 = !DILocation(line: 108, column: 9, scope: !197)
!202 = !DILocation(line: 110, column: 10, scope: !197)
!203 = !DILocation(line: 111, column: 22, scope: !197)
!204 = !DILocation(line: 111, column: 12, scope: !197)
!205 = !DILocation(line: 111, column: 10, scope: !197)
!206 = !DILocalVariable(name: "i", scope: !207, file: !45, line: 113, type: !23)
!207 = distinct !DILexicalBlock(scope: !197, file: !45, line: 112, column: 5)
!208 = !DILocation(line: 113, column: 13, scope: !207)
!209 = !DILocalVariable(name: "buffer", scope: !207, file: !45, line: 114, type: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 10)
!213 = !DILocation(line: 114, column: 13, scope: !207)
!214 = !DILocation(line: 117, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !45, line: 117, column: 13)
!216 = !DILocation(line: 117, column: 18, scope: !215)
!217 = !DILocation(line: 117, column: 13, scope: !207)
!218 = !DILocation(line: 119, column: 20, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 118, column: 9)
!220 = !DILocation(line: 119, column: 13, scope: !219)
!221 = !DILocation(line: 119, column: 26, scope: !219)
!222 = !DILocation(line: 121, column: 19, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !45, line: 121, column: 13)
!224 = !DILocation(line: 121, column: 17, scope: !223)
!225 = !DILocation(line: 121, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !45, line: 121, column: 13)
!227 = !DILocation(line: 121, column: 26, scope: !226)
!228 = !DILocation(line: 121, column: 13, scope: !223)
!229 = !DILocation(line: 123, column: 37, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !45, line: 122, column: 13)
!231 = !DILocation(line: 123, column: 30, scope: !230)
!232 = !DILocation(line: 123, column: 17, scope: !230)
!233 = !DILocation(line: 124, column: 13, scope: !230)
!234 = !DILocation(line: 121, column: 33, scope: !226)
!235 = !DILocation(line: 121, column: 13, scope: !226)
!236 = distinct !{!236, !228, !237, !238}
!237 = !DILocation(line: 124, column: 13, scope: !223)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 125, column: 9, scope: !219)
!240 = !DILocation(line: 128, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !215, file: !45, line: 127, column: 9)
!242 = !DILocation(line: 131, column: 1, scope: !197)
!243 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 138, type: !105, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!244 = !DILocalVariable(name: "data", arg: 1, scope: !243, file: !45, line: 138, type: !23)
!245 = !DILocation(line: 138, column: 23, scope: !243)
!246 = !DILocation(line: 142, column: 10, scope: !243)
!247 = !DILocation(line: 143, column: 12, scope: !243)
!248 = !DILocation(line: 143, column: 5, scope: !243)
!249 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 146, type: !198, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!250 = !DILocalVariable(name: "data", scope: !249, file: !45, line: 148, type: !23)
!251 = !DILocation(line: 148, column: 9, scope: !249)
!252 = !DILocation(line: 150, column: 10, scope: !249)
!253 = !DILocation(line: 151, column: 26, scope: !249)
!254 = !DILocation(line: 151, column: 12, scope: !249)
!255 = !DILocation(line: 151, column: 10, scope: !249)
!256 = !DILocalVariable(name: "i", scope: !257, file: !45, line: 153, type: !23)
!257 = distinct !DILexicalBlock(scope: !249, file: !45, line: 152, column: 5)
!258 = !DILocation(line: 153, column: 13, scope: !257)
!259 = !DILocalVariable(name: "buffer", scope: !257, file: !45, line: 154, type: !210)
!260 = !DILocation(line: 154, column: 13, scope: !257)
!261 = !DILocation(line: 157, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !45, line: 157, column: 13)
!263 = !DILocation(line: 157, column: 18, scope: !262)
!264 = !DILocation(line: 157, column: 13, scope: !257)
!265 = !DILocation(line: 159, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !45, line: 158, column: 9)
!267 = !DILocation(line: 159, column: 13, scope: !266)
!268 = !DILocation(line: 159, column: 26, scope: !266)
!269 = !DILocation(line: 161, column: 19, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !45, line: 161, column: 13)
!271 = !DILocation(line: 161, column: 17, scope: !270)
!272 = !DILocation(line: 161, column: 24, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !45, line: 161, column: 13)
!274 = !DILocation(line: 161, column: 26, scope: !273)
!275 = !DILocation(line: 161, column: 13, scope: !270)
!276 = !DILocation(line: 163, column: 37, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !45, line: 162, column: 13)
!278 = !DILocation(line: 163, column: 30, scope: !277)
!279 = !DILocation(line: 163, column: 17, scope: !277)
!280 = !DILocation(line: 164, column: 13, scope: !277)
!281 = !DILocation(line: 161, column: 33, scope: !273)
!282 = !DILocation(line: 161, column: 13, scope: !273)
!283 = distinct !{!283, !275, !284, !238}
!284 = !DILocation(line: 164, column: 13, scope: !270)
!285 = !DILocation(line: 165, column: 9, scope: !266)
!286 = !DILocation(line: 168, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !262, file: !45, line: 167, column: 9)
!288 = !DILocation(line: 171, column: 1, scope: !249)
!289 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 174, type: !105, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!290 = !DILocalVariable(name: "data", arg: 1, scope: !289, file: !45, line: 174, type: !23)
!291 = !DILocation(line: 174, column: 23, scope: !289)
!292 = !DILocalVariable(name: "recvResult", scope: !293, file: !45, line: 181, type: !23)
!293 = distinct !DILexicalBlock(scope: !289, file: !45, line: 176, column: 5)
!294 = !DILocation(line: 181, column: 13, scope: !293)
!295 = !DILocalVariable(name: "service", scope: !293, file: !45, line: 182, type: !114)
!296 = !DILocation(line: 182, column: 28, scope: !293)
!297 = !DILocalVariable(name: "connectSocket", scope: !293, file: !45, line: 183, type: !23)
!298 = !DILocation(line: 183, column: 16, scope: !293)
!299 = !DILocalVariable(name: "inputBuffer", scope: !293, file: !45, line: 184, type: !97)
!300 = !DILocation(line: 184, column: 14, scope: !293)
!301 = !DILocation(line: 185, column: 9, scope: !293)
!302 = !DILocation(line: 195, column: 29, scope: !303)
!303 = distinct !DILexicalBlock(scope: !293, file: !45, line: 186, column: 9)
!304 = !DILocation(line: 195, column: 27, scope: !303)
!305 = !DILocation(line: 196, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !45, line: 196, column: 17)
!307 = !DILocation(line: 196, column: 31, scope: !306)
!308 = !DILocation(line: 196, column: 17, scope: !303)
!309 = !DILocation(line: 198, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !45, line: 197, column: 13)
!311 = !DILocation(line: 200, column: 13, scope: !303)
!312 = !DILocation(line: 201, column: 21, scope: !303)
!313 = !DILocation(line: 201, column: 32, scope: !303)
!314 = !DILocation(line: 202, column: 39, scope: !303)
!315 = !DILocation(line: 202, column: 21, scope: !303)
!316 = !DILocation(line: 202, column: 30, scope: !303)
!317 = !DILocation(line: 202, column: 37, scope: !303)
!318 = !DILocation(line: 203, column: 32, scope: !303)
!319 = !DILocation(line: 203, column: 21, scope: !303)
!320 = !DILocation(line: 203, column: 30, scope: !303)
!321 = !DILocation(line: 204, column: 25, scope: !322)
!322 = distinct !DILexicalBlock(scope: !303, file: !45, line: 204, column: 17)
!323 = !DILocation(line: 204, column: 40, scope: !322)
!324 = !DILocation(line: 204, column: 17, scope: !322)
!325 = !DILocation(line: 204, column: 85, scope: !322)
!326 = !DILocation(line: 204, column: 17, scope: !303)
!327 = !DILocation(line: 206, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !45, line: 205, column: 13)
!329 = !DILocation(line: 210, column: 31, scope: !303)
!330 = !DILocation(line: 210, column: 46, scope: !303)
!331 = !DILocation(line: 210, column: 26, scope: !303)
!332 = !DILocation(line: 210, column: 24, scope: !303)
!333 = !DILocation(line: 211, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !303, file: !45, line: 211, column: 17)
!335 = !DILocation(line: 211, column: 28, scope: !334)
!336 = !DILocation(line: 211, column: 44, scope: !334)
!337 = !DILocation(line: 211, column: 47, scope: !334)
!338 = !DILocation(line: 211, column: 58, scope: !334)
!339 = !DILocation(line: 211, column: 17, scope: !303)
!340 = !DILocation(line: 213, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !45, line: 212, column: 13)
!342 = !DILocation(line: 216, column: 25, scope: !303)
!343 = !DILocation(line: 216, column: 13, scope: !303)
!344 = !DILocation(line: 216, column: 37, scope: !303)
!345 = !DILocation(line: 218, column: 25, scope: !303)
!346 = !DILocation(line: 218, column: 20, scope: !303)
!347 = !DILocation(line: 218, column: 18, scope: !303)
!348 = !DILocation(line: 219, column: 9, scope: !303)
!349 = !DILocation(line: 221, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !293, file: !45, line: 221, column: 13)
!351 = !DILocation(line: 221, column: 27, scope: !350)
!352 = !DILocation(line: 221, column: 13, scope: !293)
!353 = !DILocation(line: 223, column: 26, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !45, line: 222, column: 9)
!355 = !DILocation(line: 223, column: 13, scope: !354)
!356 = !DILocation(line: 224, column: 9, scope: !354)
!357 = !DILocation(line: 232, column: 12, scope: !289)
!358 = !DILocation(line: 232, column: 5, scope: !289)
!359 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 235, type: !198, scopeLine: 236, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!360 = !DILocalVariable(name: "data", scope: !359, file: !45, line: 237, type: !23)
!361 = !DILocation(line: 237, column: 9, scope: !359)
!362 = !DILocation(line: 239, column: 10, scope: !359)
!363 = !DILocation(line: 240, column: 26, scope: !359)
!364 = !DILocation(line: 240, column: 12, scope: !359)
!365 = !DILocation(line: 240, column: 10, scope: !359)
!366 = !DILocalVariable(name: "i", scope: !367, file: !45, line: 242, type: !23)
!367 = distinct !DILexicalBlock(scope: !359, file: !45, line: 241, column: 5)
!368 = !DILocation(line: 242, column: 13, scope: !367)
!369 = !DILocalVariable(name: "buffer", scope: !367, file: !45, line: 243, type: !210)
!370 = !DILocation(line: 243, column: 13, scope: !367)
!371 = !DILocation(line: 245, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !45, line: 245, column: 13)
!373 = !DILocation(line: 245, column: 18, scope: !372)
!374 = !DILocation(line: 245, column: 23, scope: !372)
!375 = !DILocation(line: 245, column: 26, scope: !372)
!376 = !DILocation(line: 245, column: 31, scope: !372)
!377 = !DILocation(line: 245, column: 13, scope: !367)
!378 = !DILocation(line: 247, column: 20, scope: !379)
!379 = distinct !DILexicalBlock(scope: !372, file: !45, line: 246, column: 9)
!380 = !DILocation(line: 247, column: 13, scope: !379)
!381 = !DILocation(line: 247, column: 26, scope: !379)
!382 = !DILocation(line: 249, column: 19, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !45, line: 249, column: 13)
!384 = !DILocation(line: 249, column: 17, scope: !383)
!385 = !DILocation(line: 249, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !45, line: 249, column: 13)
!387 = !DILocation(line: 249, column: 26, scope: !386)
!388 = !DILocation(line: 249, column: 13, scope: !383)
!389 = !DILocation(line: 251, column: 37, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !45, line: 250, column: 13)
!391 = !DILocation(line: 251, column: 30, scope: !390)
!392 = !DILocation(line: 251, column: 17, scope: !390)
!393 = !DILocation(line: 252, column: 13, scope: !390)
!394 = !DILocation(line: 249, column: 33, scope: !386)
!395 = !DILocation(line: 249, column: 13, scope: !386)
!396 = distinct !{!396, !388, !397, !238}
!397 = !DILocation(line: 252, column: 13, scope: !383)
!398 = !DILocation(line: 253, column: 9, scope: !379)
!399 = !DILocation(line: 256, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !372, file: !45, line: 255, column: 9)
!401 = !DILocation(line: 259, column: 1, scope: !359)
!402 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good", scope: !45, file: !45, line: 261, type: !198, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!403 = !DILocation(line: 263, column: 5, scope: !402)
!404 = !DILocation(line: 264, column: 5, scope: !402)
!405 = !DILocation(line: 265, column: 1, scope: !402)
!406 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !407, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !42}
!409 = !DILocalVariable(name: "line", arg: 1, scope: !406, file: !3, line: 11, type: !42)
!410 = !DILocation(line: 11, column: 25, scope: !406)
!411 = !DILocation(line: 13, column: 1, scope: !406)
!412 = !DILocation(line: 14, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !406, file: !3, line: 14, column: 8)
!414 = !DILocation(line: 14, column: 13, scope: !413)
!415 = !DILocation(line: 14, column: 8, scope: !406)
!416 = !DILocation(line: 16, column: 24, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 15, column: 5)
!418 = !DILocation(line: 16, column: 9, scope: !417)
!419 = !DILocation(line: 17, column: 5, scope: !417)
!420 = !DILocation(line: 18, column: 5, scope: !406)
!421 = !DILocation(line: 19, column: 1, scope: !406)
!422 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !407, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!423 = !DILocalVariable(name: "line", arg: 1, scope: !422, file: !3, line: 20, type: !42)
!424 = !DILocation(line: 20, column: 29, scope: !422)
!425 = !DILocation(line: 22, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !3, line: 22, column: 8)
!427 = !DILocation(line: 22, column: 13, scope: !426)
!428 = !DILocation(line: 22, column: 8, scope: !422)
!429 = !DILocation(line: 24, column: 24, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 23, column: 5)
!431 = !DILocation(line: 24, column: 9, scope: !430)
!432 = !DILocation(line: 25, column: 5, scope: !430)
!433 = !DILocation(line: 26, column: 1, scope: !422)
!434 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !435, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !439, line: 74, baseType: !23)
!439 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!440 = !DILocalVariable(name: "line", arg: 1, scope: !434, file: !3, line: 27, type: !437)
!441 = !DILocation(line: 27, column: 29, scope: !434)
!442 = !DILocation(line: 29, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !3, line: 29, column: 8)
!444 = !DILocation(line: 29, column: 13, scope: !443)
!445 = !DILocation(line: 29, column: 8, scope: !434)
!446 = !DILocation(line: 31, column: 27, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 30, column: 5)
!448 = !DILocation(line: 31, column: 9, scope: !447)
!449 = !DILocation(line: 32, column: 5, scope: !447)
!450 = !DILocation(line: 33, column: 1, scope: !434)
!451 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !452, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !23}
!454 = !DILocalVariable(name: "intNumber", arg: 1, scope: !451, file: !3, line: 35, type: !23)
!455 = !DILocation(line: 35, column: 24, scope: !451)
!456 = !DILocation(line: 37, column: 20, scope: !451)
!457 = !DILocation(line: 37, column: 5, scope: !451)
!458 = !DILocation(line: 38, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !460, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!463 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !459, file: !3, line: 40, type: !462)
!464 = !DILocation(line: 40, column: 28, scope: !459)
!465 = !DILocation(line: 42, column: 21, scope: !459)
!466 = !DILocation(line: 42, column: 5, scope: !459)
!467 = !DILocation(line: 43, column: 1, scope: !459)
!468 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !469, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!472 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !468, file: !3, line: 45, type: !471)
!473 = !DILocation(line: 45, column: 28, scope: !468)
!474 = !DILocation(line: 47, column: 20, scope: !468)
!475 = !DILocation(line: 47, column: 5, scope: !468)
!476 = !DILocation(line: 48, column: 1, scope: !468)
!477 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !478, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480}
!480 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!481 = !DILocalVariable(name: "longNumber", arg: 1, scope: !477, file: !3, line: 50, type: !480)
!482 = !DILocation(line: 50, column: 26, scope: !477)
!483 = !DILocation(line: 52, column: 21, scope: !477)
!484 = !DILocation(line: 52, column: 5, scope: !477)
!485 = !DILocation(line: 53, column: 1, scope: !477)
!486 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !487, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !490, line: 27, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !122, line: 44, baseType: !480)
!492 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !486, file: !3, line: 55, type: !489)
!493 = !DILocation(line: 55, column: 33, scope: !486)
!494 = !DILocation(line: 57, column: 29, scope: !486)
!495 = !DILocation(line: 57, column: 5, scope: !486)
!496 = !DILocation(line: 58, column: 1, scope: !486)
!497 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !498, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !439, line: 46, baseType: !501)
!501 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!502 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !497, file: !3, line: 60, type: !500)
!503 = !DILocation(line: 60, column: 29, scope: !497)
!504 = !DILocation(line: 62, column: 21, scope: !497)
!505 = !DILocation(line: 62, column: 5, scope: !497)
!506 = !DILocation(line: 63, column: 1, scope: !497)
!507 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !508, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !43}
!510 = !DILocalVariable(name: "charHex", arg: 1, scope: !507, file: !3, line: 65, type: !43)
!511 = !DILocation(line: 65, column: 29, scope: !507)
!512 = !DILocation(line: 67, column: 22, scope: !507)
!513 = !DILocation(line: 67, column: 5, scope: !507)
!514 = !DILocation(line: 68, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !438}
!518 = !DILocalVariable(name: "wideChar", arg: 1, scope: !515, file: !3, line: 70, type: !438)
!519 = !DILocation(line: 70, column: 29, scope: !515)
!520 = !DILocalVariable(name: "s", scope: !515, file: !3, line: 74, type: !521)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 64, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 2)
!524 = !DILocation(line: 74, column: 13, scope: !515)
!525 = !DILocation(line: 75, column: 16, scope: !515)
!526 = !DILocation(line: 75, column: 9, scope: !515)
!527 = !DILocation(line: 75, column: 14, scope: !515)
!528 = !DILocation(line: 76, column: 9, scope: !515)
!529 = !DILocation(line: 76, column: 14, scope: !515)
!530 = !DILocation(line: 77, column: 21, scope: !515)
!531 = !DILocation(line: 77, column: 5, scope: !515)
!532 = !DILocation(line: 78, column: 1, scope: !515)
!533 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !534, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !7}
!536 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !533, file: !3, line: 80, type: !7)
!537 = !DILocation(line: 80, column: 33, scope: !533)
!538 = !DILocation(line: 82, column: 20, scope: !533)
!539 = !DILocation(line: 82, column: 5, scope: !533)
!540 = !DILocation(line: 83, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !542, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !25}
!544 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !541, file: !3, line: 85, type: !25)
!545 = !DILocation(line: 85, column: 45, scope: !541)
!546 = !DILocation(line: 87, column: 22, scope: !541)
!547 = !DILocation(line: 87, column: 5, scope: !541)
!548 = !DILocation(line: 88, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !550, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!553 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !549, file: !3, line: 90, type: !552)
!554 = !DILocation(line: 90, column: 29, scope: !549)
!555 = !DILocation(line: 92, column: 20, scope: !549)
!556 = !DILocation(line: 92, column: 5, scope: !549)
!557 = !DILocation(line: 93, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !559, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !563, line: 100, baseType: !564)
!563 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_541/source_code")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !563, line: 96, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !564, file: !563, line: 98, baseType: !23, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !564, file: !563, line: 99, baseType: !23, size: 32, offset: 32)
!568 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !558, file: !3, line: 95, type: !561)
!569 = !DILocation(line: 95, column: 40, scope: !558)
!570 = !DILocation(line: 97, column: 26, scope: !558)
!571 = !DILocation(line: 97, column: 47, scope: !558)
!572 = !DILocation(line: 97, column: 55, scope: !558)
!573 = !DILocation(line: 97, column: 76, scope: !558)
!574 = !DILocation(line: 97, column: 5, scope: !558)
!575 = !DILocation(line: 98, column: 1, scope: !558)
!576 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !577, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579, !500}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!580 = !DILocalVariable(name: "bytes", arg: 1, scope: !576, file: !3, line: 100, type: !579)
!581 = !DILocation(line: 100, column: 38, scope: !576)
!582 = !DILocalVariable(name: "numBytes", arg: 2, scope: !576, file: !3, line: 100, type: !500)
!583 = !DILocation(line: 100, column: 52, scope: !576)
!584 = !DILocalVariable(name: "i", scope: !576, file: !3, line: 102, type: !500)
!585 = !DILocation(line: 102, column: 12, scope: !576)
!586 = !DILocation(line: 103, column: 12, scope: !587)
!587 = distinct !DILexicalBlock(scope: !576, file: !3, line: 103, column: 5)
!588 = !DILocation(line: 103, column: 10, scope: !587)
!589 = !DILocation(line: 103, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 103, column: 5)
!591 = !DILocation(line: 103, column: 21, scope: !590)
!592 = !DILocation(line: 103, column: 19, scope: !590)
!593 = !DILocation(line: 103, column: 5, scope: !587)
!594 = !DILocation(line: 105, column: 24, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !3, line: 104, column: 5)
!596 = !DILocation(line: 105, column: 30, scope: !595)
!597 = !DILocation(line: 105, column: 9, scope: !595)
!598 = !DILocation(line: 106, column: 5, scope: !595)
!599 = !DILocation(line: 103, column: 31, scope: !590)
!600 = !DILocation(line: 103, column: 5, scope: !590)
!601 = distinct !{!601, !593, !602, !238}
!602 = !DILocation(line: 106, column: 5, scope: !587)
!603 = !DILocation(line: 107, column: 5, scope: !576)
!604 = !DILocation(line: 108, column: 1, scope: !576)
!605 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !606, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{!500, !579, !500, !42}
!608 = !DILocalVariable(name: "bytes", arg: 1, scope: !605, file: !3, line: 113, type: !579)
!609 = !DILocation(line: 113, column: 39, scope: !605)
!610 = !DILocalVariable(name: "numBytes", arg: 2, scope: !605, file: !3, line: 113, type: !500)
!611 = !DILocation(line: 113, column: 53, scope: !605)
!612 = !DILocalVariable(name: "hex", arg: 3, scope: !605, file: !3, line: 113, type: !42)
!613 = !DILocation(line: 113, column: 71, scope: !605)
!614 = !DILocalVariable(name: "numWritten", scope: !605, file: !3, line: 115, type: !500)
!615 = !DILocation(line: 115, column: 12, scope: !605)
!616 = !DILocation(line: 121, column: 5, scope: !605)
!617 = !DILocation(line: 121, column: 12, scope: !605)
!618 = !DILocation(line: 121, column: 25, scope: !605)
!619 = !DILocation(line: 121, column: 23, scope: !605)
!620 = !DILocation(line: 121, column: 34, scope: !605)
!621 = !DILocation(line: 121, column: 37, scope: !605)
!622 = !DILocation(line: 121, column: 67, scope: !605)
!623 = !DILocation(line: 121, column: 70, scope: !605)
!624 = !DILocation(line: 0, scope: !605)
!625 = !DILocalVariable(name: "byte", scope: !626, file: !3, line: 123, type: !23)
!626 = distinct !DILexicalBlock(scope: !605, file: !3, line: 122, column: 5)
!627 = !DILocation(line: 123, column: 13, scope: !626)
!628 = !DILocation(line: 124, column: 17, scope: !626)
!629 = !DILocation(line: 124, column: 25, scope: !626)
!630 = !DILocation(line: 124, column: 23, scope: !626)
!631 = !DILocation(line: 124, column: 9, scope: !626)
!632 = !DILocation(line: 125, column: 45, scope: !626)
!633 = !DILocation(line: 125, column: 29, scope: !626)
!634 = !DILocation(line: 125, column: 9, scope: !626)
!635 = !DILocation(line: 125, column: 15, scope: !626)
!636 = !DILocation(line: 125, column: 27, scope: !626)
!637 = !DILocation(line: 126, column: 9, scope: !626)
!638 = distinct !{!638, !616, !639, !238}
!639 = !DILocation(line: 127, column: 5, scope: !605)
!640 = !DILocation(line: 129, column: 12, scope: !605)
!641 = !DILocation(line: 129, column: 5, scope: !605)
!642 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !643, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!643 = !DISubroutineType(types: !644)
!644 = !{!500, !579, !500, !437}
!645 = !DILocalVariable(name: "bytes", arg: 1, scope: !642, file: !3, line: 135, type: !579)
!646 = !DILocation(line: 135, column: 41, scope: !642)
!647 = !DILocalVariable(name: "numBytes", arg: 2, scope: !642, file: !3, line: 135, type: !500)
!648 = !DILocation(line: 135, column: 55, scope: !642)
!649 = !DILocalVariable(name: "hex", arg: 3, scope: !642, file: !3, line: 135, type: !437)
!650 = !DILocation(line: 135, column: 76, scope: !642)
!651 = !DILocalVariable(name: "numWritten", scope: !642, file: !3, line: 137, type: !500)
!652 = !DILocation(line: 137, column: 12, scope: !642)
!653 = !DILocation(line: 143, column: 5, scope: !642)
!654 = !DILocation(line: 143, column: 12, scope: !642)
!655 = !DILocation(line: 143, column: 25, scope: !642)
!656 = !DILocation(line: 143, column: 23, scope: !642)
!657 = !DILocation(line: 143, column: 34, scope: !642)
!658 = !DILocation(line: 143, column: 47, scope: !642)
!659 = !DILocation(line: 143, column: 55, scope: !642)
!660 = !DILocation(line: 143, column: 53, scope: !642)
!661 = !DILocation(line: 143, column: 37, scope: !642)
!662 = !DILocation(line: 143, column: 68, scope: !642)
!663 = !DILocation(line: 143, column: 81, scope: !642)
!664 = !DILocation(line: 143, column: 89, scope: !642)
!665 = !DILocation(line: 143, column: 87, scope: !642)
!666 = !DILocation(line: 143, column: 100, scope: !642)
!667 = !DILocation(line: 143, column: 71, scope: !642)
!668 = !DILocation(line: 0, scope: !642)
!669 = !DILocalVariable(name: "byte", scope: !670, file: !3, line: 145, type: !23)
!670 = distinct !DILexicalBlock(scope: !642, file: !3, line: 144, column: 5)
!671 = !DILocation(line: 145, column: 13, scope: !670)
!672 = !DILocation(line: 146, column: 18, scope: !670)
!673 = !DILocation(line: 146, column: 26, scope: !670)
!674 = !DILocation(line: 146, column: 24, scope: !670)
!675 = !DILocation(line: 146, column: 9, scope: !670)
!676 = !DILocation(line: 147, column: 45, scope: !670)
!677 = !DILocation(line: 147, column: 29, scope: !670)
!678 = !DILocation(line: 147, column: 9, scope: !670)
!679 = !DILocation(line: 147, column: 15, scope: !670)
!680 = !DILocation(line: 147, column: 27, scope: !670)
!681 = !DILocation(line: 148, column: 9, scope: !670)
!682 = distinct !{!682, !653, !683, !238}
!683 = !DILocation(line: 149, column: 5, scope: !642)
!684 = !DILocation(line: 151, column: 12, scope: !642)
!685 = !DILocation(line: 151, column: 5, scope: !642)
!686 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !687, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{!23}
!689 = !DILocation(line: 158, column: 5, scope: !686)
!690 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !687, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DILocation(line: 163, column: 5, scope: !690)
!692 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !687, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!693 = !DILocation(line: 168, column: 13, scope: !692)
!694 = !DILocation(line: 168, column: 20, scope: !692)
!695 = !DILocation(line: 168, column: 5, scope: !692)
!696 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !198, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!697 = !DILocation(line: 187, column: 16, scope: !696)
!698 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !198, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DILocation(line: 188, column: 16, scope: !698)
!700 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !198, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!701 = !DILocation(line: 189, column: 16, scope: !700)
!702 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !198, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!703 = !DILocation(line: 190, column: 16, scope: !702)
!704 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !198, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!705 = !DILocation(line: 191, column: 16, scope: !704)
!706 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !198, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DILocation(line: 192, column: 16, scope: !706)
!708 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !198, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!709 = !DILocation(line: 193, column: 16, scope: !708)
!710 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !198, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!711 = !DILocation(line: 194, column: 16, scope: !710)
!712 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !198, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!713 = !DILocation(line: 195, column: 16, scope: !712)
!714 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !198, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!715 = !DILocation(line: 198, column: 15, scope: !714)
!716 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !198, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!717 = !DILocation(line: 199, column: 15, scope: !716)
!718 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !198, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!719 = !DILocation(line: 200, column: 15, scope: !718)
!720 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !198, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DILocation(line: 201, column: 15, scope: !720)
!722 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !198, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DILocation(line: 202, column: 15, scope: !722)
!724 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !198, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!725 = !DILocation(line: 203, column: 15, scope: !724)
!726 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !198, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!727 = !DILocation(line: 204, column: 15, scope: !726)
!728 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !198, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!729 = !DILocation(line: 205, column: 15, scope: !728)
!730 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !198, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!731 = !DILocation(line: 206, column: 15, scope: !730)
