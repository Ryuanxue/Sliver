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
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_14_bad() #0 !dbg !104 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %data, align 4, !dbg !110
  %0 = load i32, i32* @globalFive, align 4, !dbg !111
  %cmp = icmp eq i32 %0, 5, !dbg !113
  br i1 %cmp, label %if.then, label %if.end23, !dbg !114

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !115, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !119, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 -1, i32* %connectSocket, align 4, !dbg !142
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !143, metadata !DIExpression()), !dbg !144
  br label %do.body, !dbg !145

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !146
  store i32 %call, i32* %connectSocket, align 4, !dbg !148
  %1 = load i32, i32* %connectSocket, align 4, !dbg !149
  %cmp1 = icmp eq i32 %1, -1, !dbg !151
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !152

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !153

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !155
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !156
  store i16 2, i16* %sin_family, align 4, !dbg !157
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !158
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !159
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !160
  store i32 %call3, i32* %s_addr, align 4, !dbg !161
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !162
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !163
  store i16 %call4, i16* %sin_port, align 2, !dbg !164
  %3 = load i32, i32* %connectSocket, align 4, !dbg !165
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !167
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !168
  %cmp6 = icmp eq i32 %call5, -1, !dbg !169
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !170

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !171

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !173
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !174
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !175
  %conv = trunc i64 %call9 to i32, !dbg !175
  store i32 %conv, i32* %recvResult, align 4, !dbg !176
  %6 = load i32, i32* %recvResult, align 4, !dbg !177
  %cmp10 = icmp eq i32 %6, -1, !dbg !179
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !180

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !181
  %cmp12 = icmp eq i32 %7, 0, !dbg !182
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !183

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !184

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !186
  %idxprom = sext i32 %8 to i64, !dbg !187
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !187
  store i8 0, i8* %arrayidx, align 1, !dbg !188
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !189
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !190
  store i32 %call17, i32* %data, align 4, !dbg !191
  br label %do.end, !dbg !192

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !193
  %cmp18 = icmp ne i32 %9, -1, !dbg !195
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !196

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !197
  %call21 = call i32 @close(i32 %10), !dbg !199
  br label %if.end22, !dbg !200

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !201

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @globalFive, align 4, !dbg !202
  %cmp24 = icmp eq i32 %11, 5, !dbg !204
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !205

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !210, metadata !DIExpression()), !dbg !214
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !214
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !214
  %13 = load i32, i32* %data, align 4, !dbg !215
  %cmp27 = icmp sge i32 %13, 0, !dbg !217
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !218

if.then29:                                        ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !219
  %idxprom30 = sext i32 %14 to i64, !dbg !221
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !221
  store i32 1, i32* %arrayidx31, align 4, !dbg !222
  store i32 0, i32* %i, align 4, !dbg !223
  br label %for.cond, !dbg !225

for.cond:                                         ; preds = %for.inc, %if.then29
  %15 = load i32, i32* %i, align 4, !dbg !226
  %cmp32 = icmp slt i32 %15, 10, !dbg !228
  br i1 %cmp32, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !230
  %idxprom34 = sext i32 %16 to i64, !dbg !232
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !232
  %17 = load i32, i32* %arrayidx35, align 4, !dbg !232
  call void @printIntLine(i32 %17), !dbg !233
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !235
  %inc = add nsw i32 %18, 1, !dbg !235
  store i32 %inc, i32* %i, align 4, !dbg !235
  br label %for.cond, !dbg !236, !llvm.loop !237

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !240

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !241
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !243

if.end37:                                         ; preds = %if.end36, %if.end23
  ret void, !dbg !244
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
define dso_local void @goodB2G1() #0 !dbg !245 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !246, metadata !DIExpression()), !dbg !247
  store i32 -1, i32* %data, align 4, !dbg !248
  %0 = load i32, i32* @globalFive, align 4, !dbg !249
  %cmp = icmp eq i32 %0, 5, !dbg !251
  br i1 %cmp, label %if.then, label %if.end23, !dbg !252

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !253, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 -1, i32* %connectSocket, align 4, !dbg !260
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !261, metadata !DIExpression()), !dbg !262
  br label %do.body, !dbg !263

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !264
  store i32 %call, i32* %connectSocket, align 4, !dbg !266
  %1 = load i32, i32* %connectSocket, align 4, !dbg !267
  %cmp1 = icmp eq i32 %1, -1, !dbg !269
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !270

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !271

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !273
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !274
  store i16 2, i16* %sin_family, align 4, !dbg !275
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !276
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !277
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !278
  store i32 %call3, i32* %s_addr, align 4, !dbg !279
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !280
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !281
  store i16 %call4, i16* %sin_port, align 2, !dbg !282
  %3 = load i32, i32* %connectSocket, align 4, !dbg !283
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !285
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !286
  %cmp6 = icmp eq i32 %call5, -1, !dbg !287
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !288

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !289

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !291
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !292
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !293
  %conv = trunc i64 %call9 to i32, !dbg !293
  store i32 %conv, i32* %recvResult, align 4, !dbg !294
  %6 = load i32, i32* %recvResult, align 4, !dbg !295
  %cmp10 = icmp eq i32 %6, -1, !dbg !297
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !298

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !299
  %cmp12 = icmp eq i32 %7, 0, !dbg !300
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !301

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !302

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !304
  %idxprom = sext i32 %8 to i64, !dbg !305
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !305
  store i8 0, i8* %arrayidx, align 1, !dbg !306
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !307
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !308
  store i32 %call17, i32* %data, align 4, !dbg !309
  br label %do.end, !dbg !310

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !311
  %cmp18 = icmp ne i32 %9, -1, !dbg !313
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !314

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !315
  %call21 = call i32 @close(i32 %10), !dbg !317
  br label %if.end22, !dbg !318

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !319

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @globalFive, align 4, !dbg !320
  %cmp24 = icmp ne i32 %11, 5, !dbg !322
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !323

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !324
  br label %if.end40, !dbg !326

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !331, metadata !DIExpression()), !dbg !332
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !332
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !332
  %13 = load i32, i32* %data, align 4, !dbg !333
  %cmp27 = icmp sge i32 %13, 0, !dbg !335
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !336

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !337
  %cmp29 = icmp slt i32 %14, 10, !dbg !338
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !339

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !340
  %idxprom32 = sext i32 %15 to i64, !dbg !342
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !342
  store i32 1, i32* %arrayidx33, align 4, !dbg !343
  store i32 0, i32* %i, align 4, !dbg !344
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !347
  %cmp34 = icmp slt i32 %16, 10, !dbg !349
  br i1 %cmp34, label %for.body, label %for.end, !dbg !350

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !351
  %idxprom36 = sext i32 %17 to i64, !dbg !353
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !353
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !353
  call void @printIntLine(i32 %18), !dbg !354
  br label %for.inc, !dbg !355

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !356
  %inc = add nsw i32 %19, 1, !dbg !356
  store i32 %inc, i32* %i, align 4, !dbg !356
  br label %for.cond, !dbg !357, !llvm.loop !358

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !360

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !361
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !364 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !365, metadata !DIExpression()), !dbg !366
  store i32 -1, i32* %data, align 4, !dbg !367
  %0 = load i32, i32* @globalFive, align 4, !dbg !368
  %cmp = icmp eq i32 %0, 5, !dbg !370
  br i1 %cmp, label %if.then, label %if.end23, !dbg !371

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !378, metadata !DIExpression()), !dbg !379
  store i32 -1, i32* %connectSocket, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !380, metadata !DIExpression()), !dbg !381
  br label %do.body, !dbg !382

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !383
  store i32 %call, i32* %connectSocket, align 4, !dbg !385
  %1 = load i32, i32* %connectSocket, align 4, !dbg !386
  %cmp1 = icmp eq i32 %1, -1, !dbg !388
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !389

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !390

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !392
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !393
  store i16 2, i16* %sin_family, align 4, !dbg !394
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !395
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !396
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !397
  store i32 %call3, i32* %s_addr, align 4, !dbg !398
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !399
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !400
  store i16 %call4, i16* %sin_port, align 2, !dbg !401
  %3 = load i32, i32* %connectSocket, align 4, !dbg !402
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !404
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !405
  %cmp6 = icmp eq i32 %call5, -1, !dbg !406
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !407

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !408

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !410
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !411
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !412
  %conv = trunc i64 %call9 to i32, !dbg !412
  store i32 %conv, i32* %recvResult, align 4, !dbg !413
  %6 = load i32, i32* %recvResult, align 4, !dbg !414
  %cmp10 = icmp eq i32 %6, -1, !dbg !416
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !417

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !418
  %cmp12 = icmp eq i32 %7, 0, !dbg !419
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !420

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !421

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !423
  %idxprom = sext i32 %8 to i64, !dbg !424
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !424
  store i8 0, i8* %arrayidx, align 1, !dbg !425
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !426
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !427
  store i32 %call17, i32* %data, align 4, !dbg !428
  br label %do.end, !dbg !429

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !430
  %cmp18 = icmp ne i32 %9, -1, !dbg !432
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !433

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !434
  %call21 = call i32 @close(i32 %10), !dbg !436
  br label %if.end22, !dbg !437

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !438

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @globalFive, align 4, !dbg !439
  %cmp24 = icmp eq i32 %11, 5, !dbg !441
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !442

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !443, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !447, metadata !DIExpression()), !dbg !448
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !448
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !448
  %13 = load i32, i32* %data, align 4, !dbg !449
  %cmp27 = icmp sge i32 %13, 0, !dbg !451
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !452

land.lhs.true:                                    ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !453
  %cmp29 = icmp slt i32 %14, 10, !dbg !454
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !455

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !456
  %idxprom32 = sext i32 %15 to i64, !dbg !458
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !458
  store i32 1, i32* %arrayidx33, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !463
  %cmp34 = icmp slt i32 %16, 10, !dbg !465
  br i1 %cmp34, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !467
  %idxprom36 = sext i32 %17 to i64, !dbg !469
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !469
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !469
  call void @printIntLine(i32 %18), !dbg !470
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !472
  %inc = add nsw i32 %19, 1, !dbg !472
  store i32 %inc, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  br label %if.end38, !dbg !476

if.else:                                          ; preds = %land.lhs.true, %if.then26
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !477
  br label %if.end38

if.end38:                                         ; preds = %if.else, %for.end
  br label %if.end39, !dbg !479

if.end39:                                         ; preds = %if.end38, %if.end23
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !481 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 -1, i32* %data, align 4, !dbg !484
  %0 = load i32, i32* @globalFive, align 4, !dbg !485
  %cmp = icmp ne i32 %0, 5, !dbg !487
  br i1 %cmp, label %if.then, label %if.else, !dbg !488

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !489
  br label %if.end, !dbg !491

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !492
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @globalFive, align 4, !dbg !494
  %cmp1 = icmp eq i32 %1, 5, !dbg !496
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !497

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !498, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !502, metadata !DIExpression()), !dbg !503
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !503
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !503
  %3 = load i32, i32* %data, align 4, !dbg !504
  %cmp3 = icmp sge i32 %3, 0, !dbg !506
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !507

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !508
  %idxprom = sext i32 %4 to i64, !dbg !510
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !510
  store i32 1, i32* %arrayidx, align 4, !dbg !511
  store i32 0, i32* %i, align 4, !dbg !512
  br label %for.cond, !dbg !514

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !515
  %cmp5 = icmp slt i32 %5, 10, !dbg !517
  br i1 %cmp5, label %for.body, label %for.end, !dbg !518

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !519
  %idxprom6 = sext i32 %6 to i64, !dbg !521
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !521
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !521
  call void @printIntLine(i32 %7), !dbg !522
  br label %for.inc, !dbg !523

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !524
  %inc = add nsw i32 %8, 1, !dbg !524
  store i32 %inc, i32* %i, align 4, !dbg !524
  br label %for.cond, !dbg !525, !llvm.loop !526

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !528

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !529
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !531

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !533 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !534, metadata !DIExpression()), !dbg !535
  store i32 -1, i32* %data, align 4, !dbg !536
  %0 = load i32, i32* @globalFive, align 4, !dbg !537
  %cmp = icmp eq i32 %0, 5, !dbg !539
  br i1 %cmp, label %if.then, label %if.end, !dbg !540

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !541
  br label %if.end, !dbg !543

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @globalFive, align 4, !dbg !544
  %cmp1 = icmp eq i32 %1, 5, !dbg !546
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !547

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !552, metadata !DIExpression()), !dbg !553
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !553
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !553
  %3 = load i32, i32* %data, align 4, !dbg !554
  %cmp3 = icmp sge i32 %3, 0, !dbg !556
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !557

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !558
  %idxprom = sext i32 %4 to i64, !dbg !560
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !560
  store i32 1, i32* %arrayidx, align 4, !dbg !561
  store i32 0, i32* %i, align 4, !dbg !562
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !565
  %cmp5 = icmp slt i32 %5, 10, !dbg !567
  br i1 %cmp5, label %for.body, label %for.end, !dbg !568

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !569
  %idxprom6 = sext i32 %6 to i64, !dbg !571
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !571
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !571
  call void @printIntLine(i32 %7), !dbg !572
  br label %for.inc, !dbg !573

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !574
  %inc = add nsw i32 %8, 1, !dbg !574
  store i32 %inc, i32* %i, align 4, !dbg !574
  br label %for.cond, !dbg !575, !llvm.loop !576

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !578

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !579
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !581

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_14_good() #0 !dbg !583 {
entry:
  call void @goodB2G1(), !dbg !584
  call void @goodB2G2(), !dbg !585
  call void @goodG2B1(), !dbg !586
  call void @goodG2B2(), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !589 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !594
  %0 = load i8*, i8** %line.addr, align 8, !dbg !595
  %cmp = icmp ne i8* %0, null, !dbg !597
  br i1 %cmp, label %if.then, label %if.end, !dbg !598

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !599
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !601
  br label %if.end, !dbg !602

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !603
  ret void, !dbg !604
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !605 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = load i8*, i8** %line.addr, align 8, !dbg !608
  %cmp = icmp ne i8* %0, null, !dbg !610
  br i1 %cmp, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !612
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !614
  br label %if.end, !dbg !615

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !617 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !623, metadata !DIExpression()), !dbg !624
  %0 = load i32*, i32** %line.addr, align 8, !dbg !625
  %cmp = icmp ne i32* %0, null, !dbg !627
  br i1 %cmp, label %if.then, label %if.end, !dbg !628

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !629
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !631
  br label %if.end, !dbg !632

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !633
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !634 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !639
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !640
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !642 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !648
  %conv = sext i16 %0 to i32, !dbg !648
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !651 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !655, metadata !DIExpression()), !dbg !656
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !657
  %conv = fpext float %0 to double, !dbg !657
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !660 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !666
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !667
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !669 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !677
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !680 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !685, metadata !DIExpression()), !dbg !686
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !687
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !690 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !695
  %conv = sext i8 %0 to i32, !dbg !695
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !696
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !698 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !703, metadata !DIExpression()), !dbg !707
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !708
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !709
  store i32 %0, i32* %arrayidx, align 4, !dbg !710
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !711
  store i32 0, i32* %arrayidx1, align 4, !dbg !712
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !713
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !714
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !716 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !719, metadata !DIExpression()), !dbg !720
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !721
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !722
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !724 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !727, metadata !DIExpression()), !dbg !728
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !729
  %conv = zext i8 %0 to i32, !dbg !729
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !730
  ret void, !dbg !731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !732 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !736, metadata !DIExpression()), !dbg !737
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !738
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !739
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !741 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !753
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !754
  %1 = load i32, i32* %intOne, align 4, !dbg !754
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !755
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !756
  %3 = load i32, i32* %intTwo, align 4, !dbg !756
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !757
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !759 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata i64* %i, metadata !767, metadata !DIExpression()), !dbg !768
  store i64 0, i64* %i, align 8, !dbg !769
  br label %for.cond, !dbg !771

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !772
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !774
  %cmp = icmp ult i64 %0, %1, !dbg !775
  br i1 %cmp, label %for.body, label %for.end, !dbg !776

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !777
  %3 = load i64, i64* %i, align 8, !dbg !779
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !777
  %4 = load i8, i8* %arrayidx, align 1, !dbg !777
  %conv = zext i8 %4 to i32, !dbg !777
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !780
  br label %for.inc, !dbg !781

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !782
  %inc = add i64 %5, 1, !dbg !782
  store i64 %inc, i64* %i, align 8, !dbg !782
  br label %for.cond, !dbg !783, !llvm.loop !784

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !786
  ret void, !dbg !787
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !788 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !791, metadata !DIExpression()), !dbg !792
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !797, metadata !DIExpression()), !dbg !798
  store i64 0, i64* %numWritten, align 8, !dbg !798
  br label %while.cond, !dbg !799

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !800
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !801
  %cmp = icmp ult i64 %0, %1, !dbg !802
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !803

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !804
  %2 = load i16*, i16** %call, align 8, !dbg !804
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !804
  %4 = load i64, i64* %numWritten, align 8, !dbg !804
  %mul = mul i64 2, %4, !dbg !804
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !804
  %5 = load i8, i8* %arrayidx, align 1, !dbg !804
  %conv = sext i8 %5 to i32, !dbg !804
  %idxprom = sext i32 %conv to i64, !dbg !804
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !804
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !804
  %conv2 = zext i16 %6 to i32, !dbg !804
  %and = and i32 %conv2, 4096, !dbg !804
  %tobool = icmp ne i32 %and, 0, !dbg !804
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !805

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !806
  %7 = load i16*, i16** %call3, align 8, !dbg !806
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !806
  %9 = load i64, i64* %numWritten, align 8, !dbg !806
  %mul4 = mul i64 2, %9, !dbg !806
  %add = add i64 %mul4, 1, !dbg !806
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !806
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !806
  %conv6 = sext i8 %10 to i32, !dbg !806
  %idxprom7 = sext i32 %conv6 to i64, !dbg !806
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !806
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !806
  %conv9 = zext i16 %11 to i32, !dbg !806
  %and10 = and i32 %conv9, 4096, !dbg !806
  %tobool11 = icmp ne i32 %and10, 0, !dbg !805
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !807
  br i1 %12, label %while.body, label %while.end, !dbg !799

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !808, metadata !DIExpression()), !dbg !810
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !811
  %14 = load i64, i64* %numWritten, align 8, !dbg !812
  %mul12 = mul i64 2, %14, !dbg !813
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !811
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !814
  %15 = load i32, i32* %byte, align 4, !dbg !815
  %conv15 = trunc i32 %15 to i8, !dbg !816
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !817
  %17 = load i64, i64* %numWritten, align 8, !dbg !818
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !817
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !819
  %18 = load i64, i64* %numWritten, align 8, !dbg !820
  %inc = add i64 %18, 1, !dbg !820
  store i64 %inc, i64* %numWritten, align 8, !dbg !820
  br label %while.cond, !dbg !799, !llvm.loop !821

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !823
  ret i64 %19, !dbg !824
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !825 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !830, metadata !DIExpression()), !dbg !831
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !834, metadata !DIExpression()), !dbg !835
  store i64 0, i64* %numWritten, align 8, !dbg !835
  br label %while.cond, !dbg !836

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !837
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !838
  %cmp = icmp ult i64 %0, %1, !dbg !839
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !840

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !841
  %3 = load i64, i64* %numWritten, align 8, !dbg !842
  %mul = mul i64 2, %3, !dbg !843
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !841
  %4 = load i32, i32* %arrayidx, align 4, !dbg !841
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !844
  %tobool = icmp ne i32 %call, 0, !dbg !844
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !845

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !846
  %6 = load i64, i64* %numWritten, align 8, !dbg !847
  %mul1 = mul i64 2, %6, !dbg !848
  %add = add i64 %mul1, 1, !dbg !849
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !846
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !846
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !850
  %tobool4 = icmp ne i32 %call3, 0, !dbg !845
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !851
  br i1 %8, label %while.body, label %while.end, !dbg !836

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !852, metadata !DIExpression()), !dbg !854
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !855
  %10 = load i64, i64* %numWritten, align 8, !dbg !856
  %mul5 = mul i64 2, %10, !dbg !857
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !855
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !858
  %11 = load i32, i32* %byte, align 4, !dbg !859
  %conv = trunc i32 %11 to i8, !dbg !860
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !861
  %13 = load i64, i64* %numWritten, align 8, !dbg !862
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !861
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !863
  %14 = load i64, i64* %numWritten, align 8, !dbg !864
  %inc = add i64 %14, 1, !dbg !864
  store i64 %inc, i64* %numWritten, align 8, !dbg !864
  br label %while.cond, !dbg !836, !llvm.loop !865

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !867
  ret i64 %15, !dbg !868
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !869 {
entry:
  ret i32 1, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !873 {
entry:
  ret i32 0, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !875 {
entry:
  %call = call i32 @rand() #7, !dbg !876
  %rem = srem i32 %call, 2, !dbg !877
  ret i32 %rem, !dbg !878
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !887 {
entry:
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !889 {
entry:
  ret void, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !891 {
entry:
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !893 {
entry:
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !895 {
entry:
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !897 {
entry:
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !899 {
entry:
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !901 {
entry:
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !903 {
entry:
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !905 {
entry:
  ret void, !dbg !906
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !907 {
entry:
  ret void, !dbg !908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !909 {
entry:
  ret void, !dbg !910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !911 {
entry:
  ret void, !dbg !912
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !913 {
entry:
  ret void, !dbg !914
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_529/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_529/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_14_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocation(line: 50, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 50, column: 8)
!113 = !DILocation(line: 50, column: 18, scope: !112)
!114 = !DILocation(line: 50, column: 8, scope: !104)
!115 = !DILocalVariable(name: "recvResult", scope: !116, file: !45, line: 57, type: !23)
!116 = distinct !DILexicalBlock(scope: !117, file: !45, line: 52, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !45, line: 51, column: 5)
!118 = !DILocation(line: 57, column: 17, scope: !116)
!119 = !DILocalVariable(name: "service", scope: !116, file: !45, line: 58, type: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !121)
!121 = !{!122, !123, !129, !136}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !120, file: !60, line: 240, baseType: !94, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !120, file: !60, line: 241, baseType: !124, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !126, line: 25, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !128, line: 40, baseType: !24)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !120, file: !60, line: 242, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !130, file: !60, line: 33, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 26, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !128, line: 42, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !120, file: !60, line: 245, baseType: !137, size: 64, offset: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DILocation(line: 58, column: 32, scope: !116)
!141 = !DILocalVariable(name: "connectSocket", scope: !116, file: !45, line: 59, type: !23)
!142 = !DILocation(line: 59, column: 20, scope: !116)
!143 = !DILocalVariable(name: "inputBuffer", scope: !116, file: !45, line: 60, type: !97)
!144 = !DILocation(line: 60, column: 18, scope: !116)
!145 = !DILocation(line: 61, column: 13, scope: !116)
!146 = !DILocation(line: 71, column: 33, scope: !147)
!147 = distinct !DILexicalBlock(scope: !116, file: !45, line: 62, column: 13)
!148 = !DILocation(line: 71, column: 31, scope: !147)
!149 = !DILocation(line: 72, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 72, column: 21)
!151 = !DILocation(line: 72, column: 35, scope: !150)
!152 = !DILocation(line: 72, column: 21, scope: !147)
!153 = !DILocation(line: 74, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !45, line: 73, column: 17)
!155 = !DILocation(line: 76, column: 17, scope: !147)
!156 = !DILocation(line: 77, column: 25, scope: !147)
!157 = !DILocation(line: 77, column: 36, scope: !147)
!158 = !DILocation(line: 78, column: 43, scope: !147)
!159 = !DILocation(line: 78, column: 25, scope: !147)
!160 = !DILocation(line: 78, column: 34, scope: !147)
!161 = !DILocation(line: 78, column: 41, scope: !147)
!162 = !DILocation(line: 79, column: 36, scope: !147)
!163 = !DILocation(line: 79, column: 25, scope: !147)
!164 = !DILocation(line: 79, column: 34, scope: !147)
!165 = !DILocation(line: 80, column: 29, scope: !166)
!166 = distinct !DILexicalBlock(scope: !147, file: !45, line: 80, column: 21)
!167 = !DILocation(line: 80, column: 44, scope: !166)
!168 = !DILocation(line: 80, column: 21, scope: !166)
!169 = !DILocation(line: 80, column: 89, scope: !166)
!170 = !DILocation(line: 80, column: 21, scope: !147)
!171 = !DILocation(line: 82, column: 21, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !45, line: 81, column: 17)
!173 = !DILocation(line: 86, column: 35, scope: !147)
!174 = !DILocation(line: 86, column: 50, scope: !147)
!175 = !DILocation(line: 86, column: 30, scope: !147)
!176 = !DILocation(line: 86, column: 28, scope: !147)
!177 = !DILocation(line: 87, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !147, file: !45, line: 87, column: 21)
!179 = !DILocation(line: 87, column: 32, scope: !178)
!180 = !DILocation(line: 87, column: 48, scope: !178)
!181 = !DILocation(line: 87, column: 51, scope: !178)
!182 = !DILocation(line: 87, column: 62, scope: !178)
!183 = !DILocation(line: 87, column: 21, scope: !147)
!184 = !DILocation(line: 89, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !45, line: 88, column: 17)
!186 = !DILocation(line: 92, column: 29, scope: !147)
!187 = !DILocation(line: 92, column: 17, scope: !147)
!188 = !DILocation(line: 92, column: 41, scope: !147)
!189 = !DILocation(line: 94, column: 29, scope: !147)
!190 = !DILocation(line: 94, column: 24, scope: !147)
!191 = !DILocation(line: 94, column: 22, scope: !147)
!192 = !DILocation(line: 95, column: 13, scope: !147)
!193 = !DILocation(line: 97, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !116, file: !45, line: 97, column: 17)
!195 = !DILocation(line: 97, column: 31, scope: !194)
!196 = !DILocation(line: 97, column: 17, scope: !116)
!197 = !DILocation(line: 99, column: 30, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !45, line: 98, column: 13)
!199 = !DILocation(line: 99, column: 17, scope: !198)
!200 = !DILocation(line: 100, column: 13, scope: !198)
!201 = !DILocation(line: 108, column: 5, scope: !117)
!202 = !DILocation(line: 109, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !104, file: !45, line: 109, column: 8)
!204 = !DILocation(line: 109, column: 18, scope: !203)
!205 = !DILocation(line: 109, column: 8, scope: !104)
!206 = !DILocalVariable(name: "i", scope: !207, file: !45, line: 112, type: !23)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 111, column: 9)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 110, column: 5)
!209 = !DILocation(line: 112, column: 17, scope: !207)
!210 = !DILocalVariable(name: "buffer", scope: !207, file: !45, line: 113, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 10)
!214 = !DILocation(line: 113, column: 17, scope: !207)
!215 = !DILocation(line: 116, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !207, file: !45, line: 116, column: 17)
!217 = !DILocation(line: 116, column: 22, scope: !216)
!218 = !DILocation(line: 116, column: 17, scope: !207)
!219 = !DILocation(line: 118, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 117, column: 13)
!221 = !DILocation(line: 118, column: 17, scope: !220)
!222 = !DILocation(line: 118, column: 30, scope: !220)
!223 = !DILocation(line: 120, column: 23, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 120, column: 17)
!225 = !DILocation(line: 120, column: 21, scope: !224)
!226 = !DILocation(line: 120, column: 28, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !45, line: 120, column: 17)
!228 = !DILocation(line: 120, column: 30, scope: !227)
!229 = !DILocation(line: 120, column: 17, scope: !224)
!230 = !DILocation(line: 122, column: 41, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 121, column: 17)
!232 = !DILocation(line: 122, column: 34, scope: !231)
!233 = !DILocation(line: 122, column: 21, scope: !231)
!234 = !DILocation(line: 123, column: 17, scope: !231)
!235 = !DILocation(line: 120, column: 37, scope: !227)
!236 = !DILocation(line: 120, column: 17, scope: !227)
!237 = distinct !{!237, !229, !238, !239}
!238 = !DILocation(line: 123, column: 17, scope: !224)
!239 = !{!"llvm.loop.mustprogress"}
!240 = !DILocation(line: 124, column: 13, scope: !220)
!241 = !DILocation(line: 127, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !216, file: !45, line: 126, column: 13)
!243 = !DILocation(line: 130, column: 5, scope: !208)
!244 = !DILocation(line: 131, column: 1, scope: !104)
!245 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 138, type: !105, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!246 = !DILocalVariable(name: "data", scope: !245, file: !45, line: 140, type: !23)
!247 = !DILocation(line: 140, column: 9, scope: !245)
!248 = !DILocation(line: 142, column: 10, scope: !245)
!249 = !DILocation(line: 143, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !45, line: 143, column: 8)
!251 = !DILocation(line: 143, column: 18, scope: !250)
!252 = !DILocation(line: 143, column: 8, scope: !245)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !45, line: 150, type: !23)
!254 = distinct !DILexicalBlock(scope: !255, file: !45, line: 145, column: 9)
!255 = distinct !DILexicalBlock(scope: !250, file: !45, line: 144, column: 5)
!256 = !DILocation(line: 150, column: 17, scope: !254)
!257 = !DILocalVariable(name: "service", scope: !254, file: !45, line: 151, type: !120)
!258 = !DILocation(line: 151, column: 32, scope: !254)
!259 = !DILocalVariable(name: "connectSocket", scope: !254, file: !45, line: 152, type: !23)
!260 = !DILocation(line: 152, column: 20, scope: !254)
!261 = !DILocalVariable(name: "inputBuffer", scope: !254, file: !45, line: 153, type: !97)
!262 = !DILocation(line: 153, column: 18, scope: !254)
!263 = !DILocation(line: 154, column: 13, scope: !254)
!264 = !DILocation(line: 164, column: 33, scope: !265)
!265 = distinct !DILexicalBlock(scope: !254, file: !45, line: 155, column: 13)
!266 = !DILocation(line: 164, column: 31, scope: !265)
!267 = !DILocation(line: 165, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 165, column: 21)
!269 = !DILocation(line: 165, column: 35, scope: !268)
!270 = !DILocation(line: 165, column: 21, scope: !265)
!271 = !DILocation(line: 167, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !45, line: 166, column: 17)
!273 = !DILocation(line: 169, column: 17, scope: !265)
!274 = !DILocation(line: 170, column: 25, scope: !265)
!275 = !DILocation(line: 170, column: 36, scope: !265)
!276 = !DILocation(line: 171, column: 43, scope: !265)
!277 = !DILocation(line: 171, column: 25, scope: !265)
!278 = !DILocation(line: 171, column: 34, scope: !265)
!279 = !DILocation(line: 171, column: 41, scope: !265)
!280 = !DILocation(line: 172, column: 36, scope: !265)
!281 = !DILocation(line: 172, column: 25, scope: !265)
!282 = !DILocation(line: 172, column: 34, scope: !265)
!283 = !DILocation(line: 173, column: 29, scope: !284)
!284 = distinct !DILexicalBlock(scope: !265, file: !45, line: 173, column: 21)
!285 = !DILocation(line: 173, column: 44, scope: !284)
!286 = !DILocation(line: 173, column: 21, scope: !284)
!287 = !DILocation(line: 173, column: 89, scope: !284)
!288 = !DILocation(line: 173, column: 21, scope: !265)
!289 = !DILocation(line: 175, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !45, line: 174, column: 17)
!291 = !DILocation(line: 179, column: 35, scope: !265)
!292 = !DILocation(line: 179, column: 50, scope: !265)
!293 = !DILocation(line: 179, column: 30, scope: !265)
!294 = !DILocation(line: 179, column: 28, scope: !265)
!295 = !DILocation(line: 180, column: 21, scope: !296)
!296 = distinct !DILexicalBlock(scope: !265, file: !45, line: 180, column: 21)
!297 = !DILocation(line: 180, column: 32, scope: !296)
!298 = !DILocation(line: 180, column: 48, scope: !296)
!299 = !DILocation(line: 180, column: 51, scope: !296)
!300 = !DILocation(line: 180, column: 62, scope: !296)
!301 = !DILocation(line: 180, column: 21, scope: !265)
!302 = !DILocation(line: 182, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !45, line: 181, column: 17)
!304 = !DILocation(line: 185, column: 29, scope: !265)
!305 = !DILocation(line: 185, column: 17, scope: !265)
!306 = !DILocation(line: 185, column: 41, scope: !265)
!307 = !DILocation(line: 187, column: 29, scope: !265)
!308 = !DILocation(line: 187, column: 24, scope: !265)
!309 = !DILocation(line: 187, column: 22, scope: !265)
!310 = !DILocation(line: 188, column: 13, scope: !265)
!311 = !DILocation(line: 190, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !254, file: !45, line: 190, column: 17)
!313 = !DILocation(line: 190, column: 31, scope: !312)
!314 = !DILocation(line: 190, column: 17, scope: !254)
!315 = !DILocation(line: 192, column: 30, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !45, line: 191, column: 13)
!317 = !DILocation(line: 192, column: 17, scope: !316)
!318 = !DILocation(line: 193, column: 13, scope: !316)
!319 = !DILocation(line: 201, column: 5, scope: !255)
!320 = !DILocation(line: 202, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !245, file: !45, line: 202, column: 8)
!322 = !DILocation(line: 202, column: 18, scope: !321)
!323 = !DILocation(line: 202, column: 8, scope: !245)
!324 = !DILocation(line: 205, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !45, line: 203, column: 5)
!326 = !DILocation(line: 206, column: 5, scope: !325)
!327 = !DILocalVariable(name: "i", scope: !328, file: !45, line: 210, type: !23)
!328 = distinct !DILexicalBlock(scope: !329, file: !45, line: 209, column: 9)
!329 = distinct !DILexicalBlock(scope: !321, file: !45, line: 208, column: 5)
!330 = !DILocation(line: 210, column: 17, scope: !328)
!331 = !DILocalVariable(name: "buffer", scope: !328, file: !45, line: 211, type: !211)
!332 = !DILocation(line: 211, column: 17, scope: !328)
!333 = !DILocation(line: 213, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !45, line: 213, column: 17)
!335 = !DILocation(line: 213, column: 22, scope: !334)
!336 = !DILocation(line: 213, column: 27, scope: !334)
!337 = !DILocation(line: 213, column: 30, scope: !334)
!338 = !DILocation(line: 213, column: 35, scope: !334)
!339 = !DILocation(line: 213, column: 17, scope: !328)
!340 = !DILocation(line: 215, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !45, line: 214, column: 13)
!342 = !DILocation(line: 215, column: 17, scope: !341)
!343 = !DILocation(line: 215, column: 30, scope: !341)
!344 = !DILocation(line: 217, column: 23, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !45, line: 217, column: 17)
!346 = !DILocation(line: 217, column: 21, scope: !345)
!347 = !DILocation(line: 217, column: 28, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !45, line: 217, column: 17)
!349 = !DILocation(line: 217, column: 30, scope: !348)
!350 = !DILocation(line: 217, column: 17, scope: !345)
!351 = !DILocation(line: 219, column: 41, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !45, line: 218, column: 17)
!353 = !DILocation(line: 219, column: 34, scope: !352)
!354 = !DILocation(line: 219, column: 21, scope: !352)
!355 = !DILocation(line: 220, column: 17, scope: !352)
!356 = !DILocation(line: 217, column: 37, scope: !348)
!357 = !DILocation(line: 217, column: 17, scope: !348)
!358 = distinct !{!358, !350, !359, !239}
!359 = !DILocation(line: 220, column: 17, scope: !345)
!360 = !DILocation(line: 221, column: 13, scope: !341)
!361 = !DILocation(line: 224, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !334, file: !45, line: 223, column: 13)
!363 = !DILocation(line: 228, column: 1, scope: !245)
!364 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 231, type: !105, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!365 = !DILocalVariable(name: "data", scope: !364, file: !45, line: 233, type: !23)
!366 = !DILocation(line: 233, column: 9, scope: !364)
!367 = !DILocation(line: 235, column: 10, scope: !364)
!368 = !DILocation(line: 236, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !45, line: 236, column: 8)
!370 = !DILocation(line: 236, column: 18, scope: !369)
!371 = !DILocation(line: 236, column: 8, scope: !364)
!372 = !DILocalVariable(name: "recvResult", scope: !373, file: !45, line: 243, type: !23)
!373 = distinct !DILexicalBlock(scope: !374, file: !45, line: 238, column: 9)
!374 = distinct !DILexicalBlock(scope: !369, file: !45, line: 237, column: 5)
!375 = !DILocation(line: 243, column: 17, scope: !373)
!376 = !DILocalVariable(name: "service", scope: !373, file: !45, line: 244, type: !120)
!377 = !DILocation(line: 244, column: 32, scope: !373)
!378 = !DILocalVariable(name: "connectSocket", scope: !373, file: !45, line: 245, type: !23)
!379 = !DILocation(line: 245, column: 20, scope: !373)
!380 = !DILocalVariable(name: "inputBuffer", scope: !373, file: !45, line: 246, type: !97)
!381 = !DILocation(line: 246, column: 18, scope: !373)
!382 = !DILocation(line: 247, column: 13, scope: !373)
!383 = !DILocation(line: 257, column: 33, scope: !384)
!384 = distinct !DILexicalBlock(scope: !373, file: !45, line: 248, column: 13)
!385 = !DILocation(line: 257, column: 31, scope: !384)
!386 = !DILocation(line: 258, column: 21, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !45, line: 258, column: 21)
!388 = !DILocation(line: 258, column: 35, scope: !387)
!389 = !DILocation(line: 258, column: 21, scope: !384)
!390 = !DILocation(line: 260, column: 21, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !45, line: 259, column: 17)
!392 = !DILocation(line: 262, column: 17, scope: !384)
!393 = !DILocation(line: 263, column: 25, scope: !384)
!394 = !DILocation(line: 263, column: 36, scope: !384)
!395 = !DILocation(line: 264, column: 43, scope: !384)
!396 = !DILocation(line: 264, column: 25, scope: !384)
!397 = !DILocation(line: 264, column: 34, scope: !384)
!398 = !DILocation(line: 264, column: 41, scope: !384)
!399 = !DILocation(line: 265, column: 36, scope: !384)
!400 = !DILocation(line: 265, column: 25, scope: !384)
!401 = !DILocation(line: 265, column: 34, scope: !384)
!402 = !DILocation(line: 266, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !384, file: !45, line: 266, column: 21)
!404 = !DILocation(line: 266, column: 44, scope: !403)
!405 = !DILocation(line: 266, column: 21, scope: !403)
!406 = !DILocation(line: 266, column: 89, scope: !403)
!407 = !DILocation(line: 266, column: 21, scope: !384)
!408 = !DILocation(line: 268, column: 21, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !45, line: 267, column: 17)
!410 = !DILocation(line: 272, column: 35, scope: !384)
!411 = !DILocation(line: 272, column: 50, scope: !384)
!412 = !DILocation(line: 272, column: 30, scope: !384)
!413 = !DILocation(line: 272, column: 28, scope: !384)
!414 = !DILocation(line: 273, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !384, file: !45, line: 273, column: 21)
!416 = !DILocation(line: 273, column: 32, scope: !415)
!417 = !DILocation(line: 273, column: 48, scope: !415)
!418 = !DILocation(line: 273, column: 51, scope: !415)
!419 = !DILocation(line: 273, column: 62, scope: !415)
!420 = !DILocation(line: 273, column: 21, scope: !384)
!421 = !DILocation(line: 275, column: 21, scope: !422)
!422 = distinct !DILexicalBlock(scope: !415, file: !45, line: 274, column: 17)
!423 = !DILocation(line: 278, column: 29, scope: !384)
!424 = !DILocation(line: 278, column: 17, scope: !384)
!425 = !DILocation(line: 278, column: 41, scope: !384)
!426 = !DILocation(line: 280, column: 29, scope: !384)
!427 = !DILocation(line: 280, column: 24, scope: !384)
!428 = !DILocation(line: 280, column: 22, scope: !384)
!429 = !DILocation(line: 281, column: 13, scope: !384)
!430 = !DILocation(line: 283, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !373, file: !45, line: 283, column: 17)
!432 = !DILocation(line: 283, column: 31, scope: !431)
!433 = !DILocation(line: 283, column: 17, scope: !373)
!434 = !DILocation(line: 285, column: 30, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !45, line: 284, column: 13)
!436 = !DILocation(line: 285, column: 17, scope: !435)
!437 = !DILocation(line: 286, column: 13, scope: !435)
!438 = !DILocation(line: 294, column: 5, scope: !374)
!439 = !DILocation(line: 295, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !364, file: !45, line: 295, column: 8)
!441 = !DILocation(line: 295, column: 18, scope: !440)
!442 = !DILocation(line: 295, column: 8, scope: !364)
!443 = !DILocalVariable(name: "i", scope: !444, file: !45, line: 298, type: !23)
!444 = distinct !DILexicalBlock(scope: !445, file: !45, line: 297, column: 9)
!445 = distinct !DILexicalBlock(scope: !440, file: !45, line: 296, column: 5)
!446 = !DILocation(line: 298, column: 17, scope: !444)
!447 = !DILocalVariable(name: "buffer", scope: !444, file: !45, line: 299, type: !211)
!448 = !DILocation(line: 299, column: 17, scope: !444)
!449 = !DILocation(line: 301, column: 17, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !45, line: 301, column: 17)
!451 = !DILocation(line: 301, column: 22, scope: !450)
!452 = !DILocation(line: 301, column: 27, scope: !450)
!453 = !DILocation(line: 301, column: 30, scope: !450)
!454 = !DILocation(line: 301, column: 35, scope: !450)
!455 = !DILocation(line: 301, column: 17, scope: !444)
!456 = !DILocation(line: 303, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !45, line: 302, column: 13)
!458 = !DILocation(line: 303, column: 17, scope: !457)
!459 = !DILocation(line: 303, column: 30, scope: !457)
!460 = !DILocation(line: 305, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !45, line: 305, column: 17)
!462 = !DILocation(line: 305, column: 21, scope: !461)
!463 = !DILocation(line: 305, column: 28, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !45, line: 305, column: 17)
!465 = !DILocation(line: 305, column: 30, scope: !464)
!466 = !DILocation(line: 305, column: 17, scope: !461)
!467 = !DILocation(line: 307, column: 41, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !45, line: 306, column: 17)
!469 = !DILocation(line: 307, column: 34, scope: !468)
!470 = !DILocation(line: 307, column: 21, scope: !468)
!471 = !DILocation(line: 308, column: 17, scope: !468)
!472 = !DILocation(line: 305, column: 37, scope: !464)
!473 = !DILocation(line: 305, column: 17, scope: !464)
!474 = distinct !{!474, !466, !475, !239}
!475 = !DILocation(line: 308, column: 17, scope: !461)
!476 = !DILocation(line: 309, column: 13, scope: !457)
!477 = !DILocation(line: 312, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !450, file: !45, line: 311, column: 13)
!479 = !DILocation(line: 315, column: 5, scope: !445)
!480 = !DILocation(line: 316, column: 1, scope: !364)
!481 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 319, type: !105, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!482 = !DILocalVariable(name: "data", scope: !481, file: !45, line: 321, type: !23)
!483 = !DILocation(line: 321, column: 9, scope: !481)
!484 = !DILocation(line: 323, column: 10, scope: !481)
!485 = !DILocation(line: 324, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !45, line: 324, column: 8)
!487 = !DILocation(line: 324, column: 18, scope: !486)
!488 = !DILocation(line: 324, column: 8, scope: !481)
!489 = !DILocation(line: 327, column: 9, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !45, line: 325, column: 5)
!491 = !DILocation(line: 328, column: 5, scope: !490)
!492 = !DILocation(line: 333, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !486, file: !45, line: 330, column: 5)
!494 = !DILocation(line: 335, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !481, file: !45, line: 335, column: 8)
!496 = !DILocation(line: 335, column: 18, scope: !495)
!497 = !DILocation(line: 335, column: 8, scope: !481)
!498 = !DILocalVariable(name: "i", scope: !499, file: !45, line: 338, type: !23)
!499 = distinct !DILexicalBlock(scope: !500, file: !45, line: 337, column: 9)
!500 = distinct !DILexicalBlock(scope: !495, file: !45, line: 336, column: 5)
!501 = !DILocation(line: 338, column: 17, scope: !499)
!502 = !DILocalVariable(name: "buffer", scope: !499, file: !45, line: 339, type: !211)
!503 = !DILocation(line: 339, column: 17, scope: !499)
!504 = !DILocation(line: 342, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !499, file: !45, line: 342, column: 17)
!506 = !DILocation(line: 342, column: 22, scope: !505)
!507 = !DILocation(line: 342, column: 17, scope: !499)
!508 = !DILocation(line: 344, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !45, line: 343, column: 13)
!510 = !DILocation(line: 344, column: 17, scope: !509)
!511 = !DILocation(line: 344, column: 30, scope: !509)
!512 = !DILocation(line: 346, column: 23, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !45, line: 346, column: 17)
!514 = !DILocation(line: 346, column: 21, scope: !513)
!515 = !DILocation(line: 346, column: 28, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !45, line: 346, column: 17)
!517 = !DILocation(line: 346, column: 30, scope: !516)
!518 = !DILocation(line: 346, column: 17, scope: !513)
!519 = !DILocation(line: 348, column: 41, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !45, line: 347, column: 17)
!521 = !DILocation(line: 348, column: 34, scope: !520)
!522 = !DILocation(line: 348, column: 21, scope: !520)
!523 = !DILocation(line: 349, column: 17, scope: !520)
!524 = !DILocation(line: 346, column: 37, scope: !516)
!525 = !DILocation(line: 346, column: 17, scope: !516)
!526 = distinct !{!526, !518, !527, !239}
!527 = !DILocation(line: 349, column: 17, scope: !513)
!528 = !DILocation(line: 350, column: 13, scope: !509)
!529 = !DILocation(line: 353, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !505, file: !45, line: 352, column: 13)
!531 = !DILocation(line: 356, column: 5, scope: !500)
!532 = !DILocation(line: 357, column: 1, scope: !481)
!533 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 360, type: !105, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!534 = !DILocalVariable(name: "data", scope: !533, file: !45, line: 362, type: !23)
!535 = !DILocation(line: 362, column: 9, scope: !533)
!536 = !DILocation(line: 364, column: 10, scope: !533)
!537 = !DILocation(line: 365, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !45, line: 365, column: 8)
!539 = !DILocation(line: 365, column: 18, scope: !538)
!540 = !DILocation(line: 365, column: 8, scope: !533)
!541 = !DILocation(line: 369, column: 14, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !45, line: 366, column: 5)
!543 = !DILocation(line: 370, column: 5, scope: !542)
!544 = !DILocation(line: 371, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !45, line: 371, column: 8)
!546 = !DILocation(line: 371, column: 18, scope: !545)
!547 = !DILocation(line: 371, column: 8, scope: !533)
!548 = !DILocalVariable(name: "i", scope: !549, file: !45, line: 374, type: !23)
!549 = distinct !DILexicalBlock(scope: !550, file: !45, line: 373, column: 9)
!550 = distinct !DILexicalBlock(scope: !545, file: !45, line: 372, column: 5)
!551 = !DILocation(line: 374, column: 17, scope: !549)
!552 = !DILocalVariable(name: "buffer", scope: !549, file: !45, line: 375, type: !211)
!553 = !DILocation(line: 375, column: 17, scope: !549)
!554 = !DILocation(line: 378, column: 17, scope: !555)
!555 = distinct !DILexicalBlock(scope: !549, file: !45, line: 378, column: 17)
!556 = !DILocation(line: 378, column: 22, scope: !555)
!557 = !DILocation(line: 378, column: 17, scope: !549)
!558 = !DILocation(line: 380, column: 24, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !45, line: 379, column: 13)
!560 = !DILocation(line: 380, column: 17, scope: !559)
!561 = !DILocation(line: 380, column: 30, scope: !559)
!562 = !DILocation(line: 382, column: 23, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !45, line: 382, column: 17)
!564 = !DILocation(line: 382, column: 21, scope: !563)
!565 = !DILocation(line: 382, column: 28, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !45, line: 382, column: 17)
!567 = !DILocation(line: 382, column: 30, scope: !566)
!568 = !DILocation(line: 382, column: 17, scope: !563)
!569 = !DILocation(line: 384, column: 41, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !45, line: 383, column: 17)
!571 = !DILocation(line: 384, column: 34, scope: !570)
!572 = !DILocation(line: 384, column: 21, scope: !570)
!573 = !DILocation(line: 385, column: 17, scope: !570)
!574 = !DILocation(line: 382, column: 37, scope: !566)
!575 = !DILocation(line: 382, column: 17, scope: !566)
!576 = distinct !{!576, !568, !577, !239}
!577 = !DILocation(line: 385, column: 17, scope: !563)
!578 = !DILocation(line: 386, column: 13, scope: !559)
!579 = !DILocation(line: 389, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !555, file: !45, line: 388, column: 13)
!581 = !DILocation(line: 392, column: 5, scope: !550)
!582 = !DILocation(line: 393, column: 1, scope: !533)
!583 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_14_good", scope: !45, file: !45, line: 395, type: !105, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!584 = !DILocation(line: 397, column: 5, scope: !583)
!585 = !DILocation(line: 398, column: 5, scope: !583)
!586 = !DILocation(line: 399, column: 5, scope: !583)
!587 = !DILocation(line: 400, column: 5, scope: !583)
!588 = !DILocation(line: 401, column: 1, scope: !583)
!589 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !590, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !42}
!592 = !DILocalVariable(name: "line", arg: 1, scope: !589, file: !3, line: 11, type: !42)
!593 = !DILocation(line: 11, column: 25, scope: !589)
!594 = !DILocation(line: 13, column: 1, scope: !589)
!595 = !DILocation(line: 14, column: 8, scope: !596)
!596 = distinct !DILexicalBlock(scope: !589, file: !3, line: 14, column: 8)
!597 = !DILocation(line: 14, column: 13, scope: !596)
!598 = !DILocation(line: 14, column: 8, scope: !589)
!599 = !DILocation(line: 16, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !3, line: 15, column: 5)
!601 = !DILocation(line: 16, column: 9, scope: !600)
!602 = !DILocation(line: 17, column: 5, scope: !600)
!603 = !DILocation(line: 18, column: 5, scope: !589)
!604 = !DILocation(line: 19, column: 1, scope: !589)
!605 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !590, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DILocalVariable(name: "line", arg: 1, scope: !605, file: !3, line: 20, type: !42)
!607 = !DILocation(line: 20, column: 29, scope: !605)
!608 = !DILocation(line: 22, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !3, line: 22, column: 8)
!610 = !DILocation(line: 22, column: 13, scope: !609)
!611 = !DILocation(line: 22, column: 8, scope: !605)
!612 = !DILocation(line: 24, column: 24, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 23, column: 5)
!614 = !DILocation(line: 24, column: 9, scope: !613)
!615 = !DILocation(line: 25, column: 5, scope: !613)
!616 = !DILocation(line: 26, column: 1, scope: !605)
!617 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !618, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !622, line: 74, baseType: !23)
!622 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!623 = !DILocalVariable(name: "line", arg: 1, scope: !617, file: !3, line: 27, type: !620)
!624 = !DILocation(line: 27, column: 29, scope: !617)
!625 = !DILocation(line: 29, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 29, column: 8)
!627 = !DILocation(line: 29, column: 13, scope: !626)
!628 = !DILocation(line: 29, column: 8, scope: !617)
!629 = !DILocation(line: 31, column: 27, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 30, column: 5)
!631 = !DILocation(line: 31, column: 9, scope: !630)
!632 = !DILocation(line: 32, column: 5, scope: !630)
!633 = !DILocation(line: 33, column: 1, scope: !617)
!634 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !635, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !23}
!637 = !DILocalVariable(name: "intNumber", arg: 1, scope: !634, file: !3, line: 35, type: !23)
!638 = !DILocation(line: 35, column: 24, scope: !634)
!639 = !DILocation(line: 37, column: 20, scope: !634)
!640 = !DILocation(line: 37, column: 5, scope: !634)
!641 = !DILocation(line: 38, column: 1, scope: !634)
!642 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !643, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !645}
!645 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!646 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !642, file: !3, line: 40, type: !645)
!647 = !DILocation(line: 40, column: 28, scope: !642)
!648 = !DILocation(line: 42, column: 21, scope: !642)
!649 = !DILocation(line: 42, column: 5, scope: !642)
!650 = !DILocation(line: 43, column: 1, scope: !642)
!651 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !652, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !654}
!654 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!655 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !651, file: !3, line: 45, type: !654)
!656 = !DILocation(line: 45, column: 28, scope: !651)
!657 = !DILocation(line: 47, column: 20, scope: !651)
!658 = !DILocation(line: 47, column: 5, scope: !651)
!659 = !DILocation(line: 48, column: 1, scope: !651)
!660 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !661, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663}
!663 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!664 = !DILocalVariable(name: "longNumber", arg: 1, scope: !660, file: !3, line: 50, type: !663)
!665 = !DILocation(line: 50, column: 26, scope: !660)
!666 = !DILocation(line: 52, column: 21, scope: !660)
!667 = !DILocation(line: 52, column: 5, scope: !660)
!668 = !DILocation(line: 53, column: 1, scope: !660)
!669 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !670, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !673, line: 27, baseType: !674)
!673 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !128, line: 44, baseType: !663)
!675 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !669, file: !3, line: 55, type: !672)
!676 = !DILocation(line: 55, column: 33, scope: !669)
!677 = !DILocation(line: 57, column: 29, scope: !669)
!678 = !DILocation(line: 57, column: 5, scope: !669)
!679 = !DILocation(line: 58, column: 1, scope: !669)
!680 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !681, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !683}
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !622, line: 46, baseType: !684)
!684 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!685 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !680, file: !3, line: 60, type: !683)
!686 = !DILocation(line: 60, column: 29, scope: !680)
!687 = !DILocation(line: 62, column: 21, scope: !680)
!688 = !DILocation(line: 62, column: 5, scope: !680)
!689 = !DILocation(line: 63, column: 1, scope: !680)
!690 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !691, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !43}
!693 = !DILocalVariable(name: "charHex", arg: 1, scope: !690, file: !3, line: 65, type: !43)
!694 = !DILocation(line: 65, column: 29, scope: !690)
!695 = !DILocation(line: 67, column: 22, scope: !690)
!696 = !DILocation(line: 67, column: 5, scope: !690)
!697 = !DILocation(line: 68, column: 1, scope: !690)
!698 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !699, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !621}
!701 = !DILocalVariable(name: "wideChar", arg: 1, scope: !698, file: !3, line: 70, type: !621)
!702 = !DILocation(line: 70, column: 29, scope: !698)
!703 = !DILocalVariable(name: "s", scope: !698, file: !3, line: 74, type: !704)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 64, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 2)
!707 = !DILocation(line: 74, column: 13, scope: !698)
!708 = !DILocation(line: 75, column: 16, scope: !698)
!709 = !DILocation(line: 75, column: 9, scope: !698)
!710 = !DILocation(line: 75, column: 14, scope: !698)
!711 = !DILocation(line: 76, column: 9, scope: !698)
!712 = !DILocation(line: 76, column: 14, scope: !698)
!713 = !DILocation(line: 77, column: 21, scope: !698)
!714 = !DILocation(line: 77, column: 5, scope: !698)
!715 = !DILocation(line: 78, column: 1, scope: !698)
!716 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !717, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !7}
!719 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !716, file: !3, line: 80, type: !7)
!720 = !DILocation(line: 80, column: 33, scope: !716)
!721 = !DILocation(line: 82, column: 20, scope: !716)
!722 = !DILocation(line: 82, column: 5, scope: !716)
!723 = !DILocation(line: 83, column: 1, scope: !716)
!724 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !725, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !25}
!727 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !724, file: !3, line: 85, type: !25)
!728 = !DILocation(line: 85, column: 45, scope: !724)
!729 = !DILocation(line: 87, column: 22, scope: !724)
!730 = !DILocation(line: 87, column: 5, scope: !724)
!731 = !DILocation(line: 88, column: 1, scope: !724)
!732 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !733, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735}
!735 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!736 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !732, file: !3, line: 90, type: !735)
!737 = !DILocation(line: 90, column: 29, scope: !732)
!738 = !DILocation(line: 92, column: 20, scope: !732)
!739 = !DILocation(line: 92, column: 5, scope: !732)
!740 = !DILocation(line: 93, column: 1, scope: !732)
!741 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !742, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !746, line: 100, baseType: !747)
!746 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_529/source_code")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !746, line: 96, size: 64, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !747, file: !746, line: 98, baseType: !23, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !747, file: !746, line: 99, baseType: !23, size: 32, offset: 32)
!751 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !741, file: !3, line: 95, type: !744)
!752 = !DILocation(line: 95, column: 40, scope: !741)
!753 = !DILocation(line: 97, column: 26, scope: !741)
!754 = !DILocation(line: 97, column: 47, scope: !741)
!755 = !DILocation(line: 97, column: 55, scope: !741)
!756 = !DILocation(line: 97, column: 76, scope: !741)
!757 = !DILocation(line: 97, column: 5, scope: !741)
!758 = !DILocation(line: 98, column: 1, scope: !741)
!759 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !760, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !762, !683}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!763 = !DILocalVariable(name: "bytes", arg: 1, scope: !759, file: !3, line: 100, type: !762)
!764 = !DILocation(line: 100, column: 38, scope: !759)
!765 = !DILocalVariable(name: "numBytes", arg: 2, scope: !759, file: !3, line: 100, type: !683)
!766 = !DILocation(line: 100, column: 52, scope: !759)
!767 = !DILocalVariable(name: "i", scope: !759, file: !3, line: 102, type: !683)
!768 = !DILocation(line: 102, column: 12, scope: !759)
!769 = !DILocation(line: 103, column: 12, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !3, line: 103, column: 5)
!771 = !DILocation(line: 103, column: 10, scope: !770)
!772 = !DILocation(line: 103, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !3, line: 103, column: 5)
!774 = !DILocation(line: 103, column: 21, scope: !773)
!775 = !DILocation(line: 103, column: 19, scope: !773)
!776 = !DILocation(line: 103, column: 5, scope: !770)
!777 = !DILocation(line: 105, column: 24, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 104, column: 5)
!779 = !DILocation(line: 105, column: 30, scope: !778)
!780 = !DILocation(line: 105, column: 9, scope: !778)
!781 = !DILocation(line: 106, column: 5, scope: !778)
!782 = !DILocation(line: 103, column: 31, scope: !773)
!783 = !DILocation(line: 103, column: 5, scope: !773)
!784 = distinct !{!784, !776, !785, !239}
!785 = !DILocation(line: 106, column: 5, scope: !770)
!786 = !DILocation(line: 107, column: 5, scope: !759)
!787 = !DILocation(line: 108, column: 1, scope: !759)
!788 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !789, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DISubroutineType(types: !790)
!790 = !{!683, !762, !683, !42}
!791 = !DILocalVariable(name: "bytes", arg: 1, scope: !788, file: !3, line: 113, type: !762)
!792 = !DILocation(line: 113, column: 39, scope: !788)
!793 = !DILocalVariable(name: "numBytes", arg: 2, scope: !788, file: !3, line: 113, type: !683)
!794 = !DILocation(line: 113, column: 53, scope: !788)
!795 = !DILocalVariable(name: "hex", arg: 3, scope: !788, file: !3, line: 113, type: !42)
!796 = !DILocation(line: 113, column: 71, scope: !788)
!797 = !DILocalVariable(name: "numWritten", scope: !788, file: !3, line: 115, type: !683)
!798 = !DILocation(line: 115, column: 12, scope: !788)
!799 = !DILocation(line: 121, column: 5, scope: !788)
!800 = !DILocation(line: 121, column: 12, scope: !788)
!801 = !DILocation(line: 121, column: 25, scope: !788)
!802 = !DILocation(line: 121, column: 23, scope: !788)
!803 = !DILocation(line: 121, column: 34, scope: !788)
!804 = !DILocation(line: 121, column: 37, scope: !788)
!805 = !DILocation(line: 121, column: 67, scope: !788)
!806 = !DILocation(line: 121, column: 70, scope: !788)
!807 = !DILocation(line: 0, scope: !788)
!808 = !DILocalVariable(name: "byte", scope: !809, file: !3, line: 123, type: !23)
!809 = distinct !DILexicalBlock(scope: !788, file: !3, line: 122, column: 5)
!810 = !DILocation(line: 123, column: 13, scope: !809)
!811 = !DILocation(line: 124, column: 17, scope: !809)
!812 = !DILocation(line: 124, column: 25, scope: !809)
!813 = !DILocation(line: 124, column: 23, scope: !809)
!814 = !DILocation(line: 124, column: 9, scope: !809)
!815 = !DILocation(line: 125, column: 45, scope: !809)
!816 = !DILocation(line: 125, column: 29, scope: !809)
!817 = !DILocation(line: 125, column: 9, scope: !809)
!818 = !DILocation(line: 125, column: 15, scope: !809)
!819 = !DILocation(line: 125, column: 27, scope: !809)
!820 = !DILocation(line: 126, column: 9, scope: !809)
!821 = distinct !{!821, !799, !822, !239}
!822 = !DILocation(line: 127, column: 5, scope: !788)
!823 = !DILocation(line: 129, column: 12, scope: !788)
!824 = !DILocation(line: 129, column: 5, scope: !788)
!825 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !826, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!826 = !DISubroutineType(types: !827)
!827 = !{!683, !762, !683, !620}
!828 = !DILocalVariable(name: "bytes", arg: 1, scope: !825, file: !3, line: 135, type: !762)
!829 = !DILocation(line: 135, column: 41, scope: !825)
!830 = !DILocalVariable(name: "numBytes", arg: 2, scope: !825, file: !3, line: 135, type: !683)
!831 = !DILocation(line: 135, column: 55, scope: !825)
!832 = !DILocalVariable(name: "hex", arg: 3, scope: !825, file: !3, line: 135, type: !620)
!833 = !DILocation(line: 135, column: 76, scope: !825)
!834 = !DILocalVariable(name: "numWritten", scope: !825, file: !3, line: 137, type: !683)
!835 = !DILocation(line: 137, column: 12, scope: !825)
!836 = !DILocation(line: 143, column: 5, scope: !825)
!837 = !DILocation(line: 143, column: 12, scope: !825)
!838 = !DILocation(line: 143, column: 25, scope: !825)
!839 = !DILocation(line: 143, column: 23, scope: !825)
!840 = !DILocation(line: 143, column: 34, scope: !825)
!841 = !DILocation(line: 143, column: 47, scope: !825)
!842 = !DILocation(line: 143, column: 55, scope: !825)
!843 = !DILocation(line: 143, column: 53, scope: !825)
!844 = !DILocation(line: 143, column: 37, scope: !825)
!845 = !DILocation(line: 143, column: 68, scope: !825)
!846 = !DILocation(line: 143, column: 81, scope: !825)
!847 = !DILocation(line: 143, column: 89, scope: !825)
!848 = !DILocation(line: 143, column: 87, scope: !825)
!849 = !DILocation(line: 143, column: 100, scope: !825)
!850 = !DILocation(line: 143, column: 71, scope: !825)
!851 = !DILocation(line: 0, scope: !825)
!852 = !DILocalVariable(name: "byte", scope: !853, file: !3, line: 145, type: !23)
!853 = distinct !DILexicalBlock(scope: !825, file: !3, line: 144, column: 5)
!854 = !DILocation(line: 145, column: 13, scope: !853)
!855 = !DILocation(line: 146, column: 18, scope: !853)
!856 = !DILocation(line: 146, column: 26, scope: !853)
!857 = !DILocation(line: 146, column: 24, scope: !853)
!858 = !DILocation(line: 146, column: 9, scope: !853)
!859 = !DILocation(line: 147, column: 45, scope: !853)
!860 = !DILocation(line: 147, column: 29, scope: !853)
!861 = !DILocation(line: 147, column: 9, scope: !853)
!862 = !DILocation(line: 147, column: 15, scope: !853)
!863 = !DILocation(line: 147, column: 27, scope: !853)
!864 = !DILocation(line: 148, column: 9, scope: !853)
!865 = distinct !{!865, !836, !866, !239}
!866 = !DILocation(line: 149, column: 5, scope: !825)
!867 = !DILocation(line: 151, column: 12, scope: !825)
!868 = !DILocation(line: 151, column: 5, scope: !825)
!869 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !870, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DISubroutineType(types: !871)
!871 = !{!23}
!872 = !DILocation(line: 158, column: 5, scope: !869)
!873 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !870, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 163, column: 5, scope: !873)
!875 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !870, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 168, column: 13, scope: !875)
!877 = !DILocation(line: 168, column: 20, scope: !875)
!878 = !DILocation(line: 168, column: 5, scope: !875)
!879 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 187, column: 16, scope: !879)
!881 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 188, column: 16, scope: !881)
!883 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 189, column: 16, scope: !883)
!885 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 190, column: 16, scope: !885)
!887 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 191, column: 16, scope: !887)
!889 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!890 = !DILocation(line: 192, column: 16, scope: !889)
!891 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DILocation(line: 193, column: 16, scope: !891)
!893 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!894 = !DILocation(line: 194, column: 16, scope: !893)
!895 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DILocation(line: 195, column: 16, scope: !895)
!897 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DILocation(line: 198, column: 15, scope: !897)
!899 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!900 = !DILocation(line: 199, column: 15, scope: !899)
!901 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DILocation(line: 200, column: 15, scope: !901)
!903 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!904 = !DILocation(line: 201, column: 15, scope: !903)
!905 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!906 = !DILocation(line: 202, column: 15, scope: !905)
!907 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!908 = !DILocation(line: 203, column: 15, scope: !907)
!909 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!910 = !DILocation(line: 204, column: 15, scope: !909)
!911 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!912 = !DILocation(line: 205, column: 15, scope: !911)
!913 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!914 = !DILocation(line: 206, column: 15, scope: !913)
