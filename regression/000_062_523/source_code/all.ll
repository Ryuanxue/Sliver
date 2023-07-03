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
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local i32 @staticReturnsTrue() #0 !dbg !104 {
entry:
  ret i32 1, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !109 {
entry:
  ret i32 0, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_bad() #0 !dbg !111 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %data, align 4, !dbg !116
  %call = call i32 @staticReturnsTrue(), !dbg !117
  %tobool = icmp ne i32 %call, 0, !dbg !117
  br i1 %tobool, label %if.then, label %if.end23, !dbg !119

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !124, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 -1, i32* %connectSocket, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !148, metadata !DIExpression()), !dbg !149
  br label %do.body, !dbg !150

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !151
  store i32 %call1, i32* %connectSocket, align 4, !dbg !153
  %0 = load i32, i32* %connectSocket, align 4, !dbg !154
  %cmp = icmp eq i32 %0, -1, !dbg !156
  br i1 %cmp, label %if.then2, label %if.end, !dbg !157

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !158

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !160
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !161
  store i16 2, i16* %sin_family, align 4, !dbg !162
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !163
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !164
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !165
  store i32 %call3, i32* %s_addr, align 4, !dbg !166
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !167
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !168
  store i16 %call4, i16* %sin_port, align 2, !dbg !169
  %2 = load i32, i32* %connectSocket, align 4, !dbg !170
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !172
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !173
  %cmp6 = icmp eq i32 %call5, -1, !dbg !174
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !175

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !176

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !178
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !179
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !180
  %conv = trunc i64 %call9 to i32, !dbg !180
  store i32 %conv, i32* %recvResult, align 4, !dbg !181
  %5 = load i32, i32* %recvResult, align 4, !dbg !182
  %cmp10 = icmp eq i32 %5, -1, !dbg !184
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !186
  %cmp12 = icmp eq i32 %6, 0, !dbg !187
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !188

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !189

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !191
  %idxprom = sext i32 %7 to i64, !dbg !192
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !192
  store i8 0, i8* %arrayidx, align 1, !dbg !193
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !194
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !195
  store i32 %call17, i32* %data, align 4, !dbg !196
  br label %do.end, !dbg !197

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !198
  %cmp18 = icmp ne i32 %8, -1, !dbg !200
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !201

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !202
  %call21 = call i32 @close(i32 %9), !dbg !204
  br label %if.end22, !dbg !205

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !206

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsTrue(), !dbg !207
  %tobool25 = icmp ne i32 %call24, 0, !dbg !207
  br i1 %tobool25, label %if.then26, label %if.end37, !dbg !209

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !214, metadata !DIExpression()), !dbg !218
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !218
  %11 = load i32, i32* %data, align 4, !dbg !219
  %cmp27 = icmp sge i32 %11, 0, !dbg !221
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !222

if.then29:                                        ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !223
  %idxprom30 = sext i32 %12 to i64, !dbg !225
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !225
  store i32 1, i32* %arrayidx31, align 4, !dbg !226
  store i32 0, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %if.then29
  %13 = load i32, i32* %i, align 4, !dbg !230
  %cmp32 = icmp slt i32 %13, 10, !dbg !232
  br i1 %cmp32, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !234
  %idxprom34 = sext i32 %14 to i64, !dbg !236
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !236
  %15 = load i32, i32* %arrayidx35, align 4, !dbg !236
  call void @printIntLine(i32 %15), !dbg !237
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !239
  %inc = add nsw i32 %16, 1, !dbg !239
  store i32 %inc, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !244

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !245
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !247

if.end37:                                         ; preds = %if.end36, %if.end23
  ret void, !dbg !248
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
define dso_local void @goodB2G1() #0 !dbg !249 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 -1, i32* %data, align 4, !dbg !252
  %call = call i32 @staticReturnsTrue(), !dbg !253
  %tobool = icmp ne i32 %call, 0, !dbg !253
  br i1 %tobool, label %if.then, label %if.end23, !dbg !255

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 -1, i32* %connectSocket, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !264, metadata !DIExpression()), !dbg !265
  br label %do.body, !dbg !266

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !267
  store i32 %call1, i32* %connectSocket, align 4, !dbg !269
  %0 = load i32, i32* %connectSocket, align 4, !dbg !270
  %cmp = icmp eq i32 %0, -1, !dbg !272
  br i1 %cmp, label %if.then2, label %if.end, !dbg !273

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !274

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !276
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !277
  store i16 2, i16* %sin_family, align 4, !dbg !278
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !279
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !280
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !281
  store i32 %call3, i32* %s_addr, align 4, !dbg !282
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !283
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !284
  store i16 %call4, i16* %sin_port, align 2, !dbg !285
  %2 = load i32, i32* %connectSocket, align 4, !dbg !286
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !288
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !289
  %cmp6 = icmp eq i32 %call5, -1, !dbg !290
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !291

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !292

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !294
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !295
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !296
  %conv = trunc i64 %call9 to i32, !dbg !296
  store i32 %conv, i32* %recvResult, align 4, !dbg !297
  %5 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp10 = icmp eq i32 %5, -1, !dbg !300
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !301

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !302
  %cmp12 = icmp eq i32 %6, 0, !dbg !303
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !304

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !305

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !307
  %idxprom = sext i32 %7 to i64, !dbg !308
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !308
  store i8 0, i8* %arrayidx, align 1, !dbg !309
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !310
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !311
  store i32 %call17, i32* %data, align 4, !dbg !312
  br label %do.end, !dbg !313

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !314
  %cmp18 = icmp ne i32 %8, -1, !dbg !316
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !317

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !318
  %call21 = call i32 @close(i32 %9), !dbg !320
  br label %if.end22, !dbg !321

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !322

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsFalse(), !dbg !323
  %tobool25 = icmp ne i32 %call24, 0, !dbg !323
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !325

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !326
  br label %if.end40, !dbg !328

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !333, metadata !DIExpression()), !dbg !334
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !334
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !334
  %11 = load i32, i32* %data, align 4, !dbg !335
  %cmp27 = icmp sge i32 %11, 0, !dbg !337
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !338

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, i32* %data, align 4, !dbg !339
  %cmp29 = icmp slt i32 %12, 10, !dbg !340
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !341

if.then31:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !342
  %idxprom32 = sext i32 %13 to i64, !dbg !344
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !344
  store i32 1, i32* %arrayidx33, align 4, !dbg !345
  store i32 0, i32* %i, align 4, !dbg !346
  br label %for.cond, !dbg !348

for.cond:                                         ; preds = %for.inc, %if.then31
  %14 = load i32, i32* %i, align 4, !dbg !349
  %cmp34 = icmp slt i32 %14, 10, !dbg !351
  br i1 %cmp34, label %for.body, label %for.end, !dbg !352

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !353
  %idxprom36 = sext i32 %15 to i64, !dbg !355
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !355
  %16 = load i32, i32* %arrayidx37, align 4, !dbg !355
  call void @printIntLine(i32 %16), !dbg !356
  br label %for.inc, !dbg !357

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !358
  %inc = add nsw i32 %17, 1, !dbg !358
  store i32 %inc, i32* %i, align 4, !dbg !358
  br label %for.cond, !dbg !359, !llvm.loop !360

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !362

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !363
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !366 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !367, metadata !DIExpression()), !dbg !368
  store i32 -1, i32* %data, align 4, !dbg !369
  %call = call i32 @staticReturnsTrue(), !dbg !370
  %tobool = icmp ne i32 %call, 0, !dbg !370
  br i1 %tobool, label %if.then, label %if.end23, !dbg !372

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !379, metadata !DIExpression()), !dbg !380
  store i32 -1, i32* %connectSocket, align 4, !dbg !380
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !381, metadata !DIExpression()), !dbg !382
  br label %do.body, !dbg !383

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !384
  store i32 %call1, i32* %connectSocket, align 4, !dbg !386
  %0 = load i32, i32* %connectSocket, align 4, !dbg !387
  %cmp = icmp eq i32 %0, -1, !dbg !389
  br i1 %cmp, label %if.then2, label %if.end, !dbg !390

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !391

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !393
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !393
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !394
  store i16 2, i16* %sin_family, align 4, !dbg !395
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !396
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !397
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !398
  store i32 %call3, i32* %s_addr, align 4, !dbg !399
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !400
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !401
  store i16 %call4, i16* %sin_port, align 2, !dbg !402
  %2 = load i32, i32* %connectSocket, align 4, !dbg !403
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !405
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !406
  %cmp6 = icmp eq i32 %call5, -1, !dbg !407
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !408

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !409

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !411
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !412
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !413
  %conv = trunc i64 %call9 to i32, !dbg !413
  store i32 %conv, i32* %recvResult, align 4, !dbg !414
  %5 = load i32, i32* %recvResult, align 4, !dbg !415
  %cmp10 = icmp eq i32 %5, -1, !dbg !417
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !418

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !419
  %cmp12 = icmp eq i32 %6, 0, !dbg !420
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !421

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !422

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !424
  %idxprom = sext i32 %7 to i64, !dbg !425
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !425
  store i8 0, i8* %arrayidx, align 1, !dbg !426
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !427
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !428
  store i32 %call17, i32* %data, align 4, !dbg !429
  br label %do.end, !dbg !430

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !431
  %cmp18 = icmp ne i32 %8, -1, !dbg !433
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !434

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !435
  %call21 = call i32 @close(i32 %9), !dbg !437
  br label %if.end22, !dbg !438

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !439

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsTrue(), !dbg !440
  %tobool25 = icmp ne i32 %call24, 0, !dbg !440
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !442

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !443, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !447, metadata !DIExpression()), !dbg !448
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !448
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !448
  %11 = load i32, i32* %data, align 4, !dbg !449
  %cmp27 = icmp sge i32 %11, 0, !dbg !451
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !452

land.lhs.true:                                    ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !453
  %cmp29 = icmp slt i32 %12, 10, !dbg !454
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !455

if.then31:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !456
  %idxprom32 = sext i32 %13 to i64, !dbg !458
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !458
  store i32 1, i32* %arrayidx33, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then31
  %14 = load i32, i32* %i, align 4, !dbg !463
  %cmp34 = icmp slt i32 %14, 10, !dbg !465
  br i1 %cmp34, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !467
  %idxprom36 = sext i32 %15 to i64, !dbg !469
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !469
  %16 = load i32, i32* %arrayidx37, align 4, !dbg !469
  call void @printIntLine(i32 %16), !dbg !470
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !472
  %inc = add nsw i32 %17, 1, !dbg !472
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
  %call = call i32 @staticReturnsFalse(), !dbg !485
  %tobool = icmp ne i32 %call, 0, !dbg !485
  br i1 %tobool, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !488
  br label %if.end, !dbg !490

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !491
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 @staticReturnsTrue(), !dbg !493
  %tobool2 = icmp ne i32 %call1, 0, !dbg !493
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !495

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !496, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !501
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !501
  %1 = load i32, i32* %data, align 4, !dbg !502
  %cmp = icmp sge i32 %1, 0, !dbg !504
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !505

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !506
  %idxprom = sext i32 %2 to i64, !dbg !508
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !508
  store i32 1, i32* %arrayidx, align 4, !dbg !509
  store i32 0, i32* %i, align 4, !dbg !510
  br label %for.cond, !dbg !512

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !513
  %cmp5 = icmp slt i32 %3, 10, !dbg !515
  br i1 %cmp5, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !517
  %idxprom6 = sext i32 %4 to i64, !dbg !519
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !519
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !519
  call void @printIntLine(i32 %5), !dbg !520
  br label %for.inc, !dbg !521

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !522
  %inc = add nsw i32 %6, 1, !dbg !522
  store i32 %inc, i32* %i, align 4, !dbg !522
  br label %for.cond, !dbg !523, !llvm.loop !524

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !526

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !527
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !529

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !531 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !532, metadata !DIExpression()), !dbg !533
  store i32 -1, i32* %data, align 4, !dbg !534
  %call = call i32 @staticReturnsTrue(), !dbg !535
  %tobool = icmp ne i32 %call, 0, !dbg !535
  br i1 %tobool, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !538
  br label %if.end, !dbg !540

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @staticReturnsTrue(), !dbg !541
  %tobool2 = icmp ne i32 %call1, 0, !dbg !541
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !543

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !544, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !549
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !549
  %1 = load i32, i32* %data, align 4, !dbg !550
  %cmp = icmp sge i32 %1, 0, !dbg !552
  br i1 %cmp, label %if.then4, label %if.else, !dbg !553

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !554
  %idxprom = sext i32 %2 to i64, !dbg !556
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !556
  store i32 1, i32* %arrayidx, align 4, !dbg !557
  store i32 0, i32* %i, align 4, !dbg !558
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !561
  %cmp5 = icmp slt i32 %3, 10, !dbg !563
  br i1 %cmp5, label %for.body, label %for.end, !dbg !564

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !565
  %idxprom6 = sext i32 %4 to i64, !dbg !567
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !567
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !567
  call void @printIntLine(i32 %5), !dbg !568
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !570
  %inc = add nsw i32 %6, 1, !dbg !570
  store i32 %inc, i32* %i, align 4, !dbg !570
  br label %for.cond, !dbg !571, !llvm.loop !572

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !574

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !575
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !577

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_good() #0 !dbg !579 {
entry:
  call void @goodB2G1(), !dbg !580
  call void @goodB2G2(), !dbg !581
  call void @goodG2B1(), !dbg !582
  call void @goodG2B2(), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !585 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !590
  %0 = load i8*, i8** %line.addr, align 8, !dbg !591
  %cmp = icmp ne i8* %0, null, !dbg !593
  br i1 %cmp, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !595
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !597
  br label %if.end, !dbg !598

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !599
  ret void, !dbg !600
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !601 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i8*, i8** %line.addr, align 8, !dbg !604
  %cmp = icmp ne i8* %0, null, !dbg !606
  br i1 %cmp, label %if.then, label %if.end, !dbg !607

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !610
  br label %if.end, !dbg !611

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !613 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i32*, i32** %line.addr, align 8, !dbg !621
  %cmp = icmp ne i32* %0, null, !dbg !623
  br i1 %cmp, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !625
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !627
  br label %if.end, !dbg !628

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !629
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !630 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !633, metadata !DIExpression()), !dbg !634
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !635
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !636
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !638 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !644
  %conv = sext i16 %0 to i32, !dbg !644
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !647 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !653
  %conv = fpext float %0 to double, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !656 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !662
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !663
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !665 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !673
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !674
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !676 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !686 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !691
  %conv = sext i8 %0 to i32, !dbg !691
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !692
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !694 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !699, metadata !DIExpression()), !dbg !703
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !704
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !705
  store i32 %0, i32* %arrayidx, align 4, !dbg !706
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !707
  store i32 0, i32* %arrayidx1, align 4, !dbg !708
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !709
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !710
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !712 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !717
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !718
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !720 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !723, metadata !DIExpression()), !dbg !724
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !725
  %conv = zext i8 %0 to i32, !dbg !725
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !726
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !728 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !734
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !735
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !737 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !749
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !750
  %1 = load i32, i32* %intOne, align 4, !dbg !750
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !751
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !752
  %3 = load i32, i32* %intTwo, align 4, !dbg !752
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !753
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !755 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !759, metadata !DIExpression()), !dbg !760
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata i64* %i, metadata !763, metadata !DIExpression()), !dbg !764
  store i64 0, i64* %i, align 8, !dbg !765
  br label %for.cond, !dbg !767

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !768
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !770
  %cmp = icmp ult i64 %0, %1, !dbg !771
  br i1 %cmp, label %for.body, label %for.end, !dbg !772

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !773
  %3 = load i64, i64* %i, align 8, !dbg !775
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !773
  %4 = load i8, i8* %arrayidx, align 1, !dbg !773
  %conv = zext i8 %4 to i32, !dbg !773
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !776
  br label %for.inc, !dbg !777

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !778
  %inc = add i64 %5, 1, !dbg !778
  store i64 %inc, i64* %i, align 8, !dbg !778
  br label %for.cond, !dbg !779, !llvm.loop !780

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !782
  ret void, !dbg !783
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !784 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !787, metadata !DIExpression()), !dbg !788
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !793, metadata !DIExpression()), !dbg !794
  store i64 0, i64* %numWritten, align 8, !dbg !794
  br label %while.cond, !dbg !795

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !796
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !797
  %cmp = icmp ult i64 %0, %1, !dbg !798
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !799

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !800
  %2 = load i16*, i16** %call, align 8, !dbg !800
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !800
  %4 = load i64, i64* %numWritten, align 8, !dbg !800
  %mul = mul i64 2, %4, !dbg !800
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !800
  %5 = load i8, i8* %arrayidx, align 1, !dbg !800
  %conv = sext i8 %5 to i32, !dbg !800
  %idxprom = sext i32 %conv to i64, !dbg !800
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !800
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !800
  %conv2 = zext i16 %6 to i32, !dbg !800
  %and = and i32 %conv2, 4096, !dbg !800
  %tobool = icmp ne i32 %and, 0, !dbg !800
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !801

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !802
  %7 = load i16*, i16** %call3, align 8, !dbg !802
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !802
  %9 = load i64, i64* %numWritten, align 8, !dbg !802
  %mul4 = mul i64 2, %9, !dbg !802
  %add = add i64 %mul4, 1, !dbg !802
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !802
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !802
  %conv6 = sext i8 %10 to i32, !dbg !802
  %idxprom7 = sext i32 %conv6 to i64, !dbg !802
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !802
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !802
  %conv9 = zext i16 %11 to i32, !dbg !802
  %and10 = and i32 %conv9, 4096, !dbg !802
  %tobool11 = icmp ne i32 %and10, 0, !dbg !801
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !803
  br i1 %12, label %while.body, label %while.end, !dbg !795

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !804, metadata !DIExpression()), !dbg !806
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !807
  %14 = load i64, i64* %numWritten, align 8, !dbg !808
  %mul12 = mul i64 2, %14, !dbg !809
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !807
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !810
  %15 = load i32, i32* %byte, align 4, !dbg !811
  %conv15 = trunc i32 %15 to i8, !dbg !812
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !813
  %17 = load i64, i64* %numWritten, align 8, !dbg !814
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !813
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !815
  %18 = load i64, i64* %numWritten, align 8, !dbg !816
  %inc = add i64 %18, 1, !dbg !816
  store i64 %inc, i64* %numWritten, align 8, !dbg !816
  br label %while.cond, !dbg !795, !llvm.loop !817

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !819
  ret i64 %19, !dbg !820
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !821 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !830, metadata !DIExpression()), !dbg !831
  store i64 0, i64* %numWritten, align 8, !dbg !831
  br label %while.cond, !dbg !832

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !833
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !834
  %cmp = icmp ult i64 %0, %1, !dbg !835
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !836

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !837
  %3 = load i64, i64* %numWritten, align 8, !dbg !838
  %mul = mul i64 2, %3, !dbg !839
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !837
  %4 = load i32, i32* %arrayidx, align 4, !dbg !837
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !840
  %tobool = icmp ne i32 %call, 0, !dbg !840
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !841

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !842
  %6 = load i64, i64* %numWritten, align 8, !dbg !843
  %mul1 = mul i64 2, %6, !dbg !844
  %add = add i64 %mul1, 1, !dbg !845
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !842
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !842
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !846
  %tobool4 = icmp ne i32 %call3, 0, !dbg !841
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !847
  br i1 %8, label %while.body, label %while.end, !dbg !832

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !848, metadata !DIExpression()), !dbg !850
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !851
  %10 = load i64, i64* %numWritten, align 8, !dbg !852
  %mul5 = mul i64 2, %10, !dbg !853
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !851
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !854
  %11 = load i32, i32* %byte, align 4, !dbg !855
  %conv = trunc i32 %11 to i8, !dbg !856
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !857
  %13 = load i64, i64* %numWritten, align 8, !dbg !858
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !857
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !859
  %14 = load i64, i64* %numWritten, align 8, !dbg !860
  %inc = add i64 %14, 1, !dbg !860
  store i64 %inc, i64* %numWritten, align 8, !dbg !860
  br label %while.cond, !dbg !832, !llvm.loop !861

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !863
  ret i64 %15, !dbg !864
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !865 {
entry:
  ret i32 1, !dbg !866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !867 {
entry:
  ret i32 0, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !869 {
entry:
  %call = call i32 @rand() #7, !dbg !870
  %rem = srem i32 %call, 2, !dbg !871
  ret i32 %rem, !dbg !872
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !873 {
entry:
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !887 {
entry:
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !889 {
entry:
  ret void, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !891 {
entry:
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !893 {
entry:
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !895 {
entry:
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !897 {
entry:
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !899 {
entry:
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !901 {
entry:
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !903 {
entry:
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !905 {
entry:
  ret void, !dbg !906
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !907 {
entry:
  ret void, !dbg !908
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_523/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_523/source_code")
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
!104 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 46, type: !105, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!23}
!107 = !{}
!108 = !DILocation(line: 48, column: 5, scope: !104)
!109 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 51, type: !105, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!110 = !DILocation(line: 53, column: 5, scope: !109)
!111 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_bad", scope: !45, file: !45, line: 58, type: !112, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !DILocalVariable(name: "data", scope: !111, file: !45, line: 60, type: !23)
!115 = !DILocation(line: 60, column: 9, scope: !111)
!116 = !DILocation(line: 62, column: 10, scope: !111)
!117 = !DILocation(line: 63, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !45, line: 63, column: 8)
!119 = !DILocation(line: 63, column: 8, scope: !111)
!120 = !DILocalVariable(name: "recvResult", scope: !121, file: !45, line: 70, type: !23)
!121 = distinct !DILexicalBlock(scope: !122, file: !45, line: 65, column: 9)
!122 = distinct !DILexicalBlock(scope: !118, file: !45, line: 64, column: 5)
!123 = !DILocation(line: 70, column: 17, scope: !121)
!124 = !DILocalVariable(name: "service", scope: !121, file: !45, line: 71, type: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !126)
!126 = !{!127, !128, !134, !141}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !125, file: !60, line: 240, baseType: !94, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !125, file: !60, line: 241, baseType: !129, size: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !133, line: 40, baseType: !24)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !125, file: !60, line: 242, baseType: !135, size: 32, offset: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !135, file: !60, line: 33, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 26, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !7)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !125, file: !60, line: 245, baseType: !142, size: 64, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DILocation(line: 71, column: 32, scope: !121)
!146 = !DILocalVariable(name: "connectSocket", scope: !121, file: !45, line: 72, type: !23)
!147 = !DILocation(line: 72, column: 20, scope: !121)
!148 = !DILocalVariable(name: "inputBuffer", scope: !121, file: !45, line: 73, type: !97)
!149 = !DILocation(line: 73, column: 18, scope: !121)
!150 = !DILocation(line: 74, column: 13, scope: !121)
!151 = !DILocation(line: 84, column: 33, scope: !152)
!152 = distinct !DILexicalBlock(scope: !121, file: !45, line: 75, column: 13)
!153 = !DILocation(line: 84, column: 31, scope: !152)
!154 = !DILocation(line: 85, column: 21, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !45, line: 85, column: 21)
!156 = !DILocation(line: 85, column: 35, scope: !155)
!157 = !DILocation(line: 85, column: 21, scope: !152)
!158 = !DILocation(line: 87, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !45, line: 86, column: 17)
!160 = !DILocation(line: 89, column: 17, scope: !152)
!161 = !DILocation(line: 90, column: 25, scope: !152)
!162 = !DILocation(line: 90, column: 36, scope: !152)
!163 = !DILocation(line: 91, column: 43, scope: !152)
!164 = !DILocation(line: 91, column: 25, scope: !152)
!165 = !DILocation(line: 91, column: 34, scope: !152)
!166 = !DILocation(line: 91, column: 41, scope: !152)
!167 = !DILocation(line: 92, column: 36, scope: !152)
!168 = !DILocation(line: 92, column: 25, scope: !152)
!169 = !DILocation(line: 92, column: 34, scope: !152)
!170 = !DILocation(line: 93, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !152, file: !45, line: 93, column: 21)
!172 = !DILocation(line: 93, column: 44, scope: !171)
!173 = !DILocation(line: 93, column: 21, scope: !171)
!174 = !DILocation(line: 93, column: 89, scope: !171)
!175 = !DILocation(line: 93, column: 21, scope: !152)
!176 = !DILocation(line: 95, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !45, line: 94, column: 17)
!178 = !DILocation(line: 99, column: 35, scope: !152)
!179 = !DILocation(line: 99, column: 50, scope: !152)
!180 = !DILocation(line: 99, column: 30, scope: !152)
!181 = !DILocation(line: 99, column: 28, scope: !152)
!182 = !DILocation(line: 100, column: 21, scope: !183)
!183 = distinct !DILexicalBlock(scope: !152, file: !45, line: 100, column: 21)
!184 = !DILocation(line: 100, column: 32, scope: !183)
!185 = !DILocation(line: 100, column: 48, scope: !183)
!186 = !DILocation(line: 100, column: 51, scope: !183)
!187 = !DILocation(line: 100, column: 62, scope: !183)
!188 = !DILocation(line: 100, column: 21, scope: !152)
!189 = !DILocation(line: 102, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !45, line: 101, column: 17)
!191 = !DILocation(line: 105, column: 29, scope: !152)
!192 = !DILocation(line: 105, column: 17, scope: !152)
!193 = !DILocation(line: 105, column: 41, scope: !152)
!194 = !DILocation(line: 107, column: 29, scope: !152)
!195 = !DILocation(line: 107, column: 24, scope: !152)
!196 = !DILocation(line: 107, column: 22, scope: !152)
!197 = !DILocation(line: 108, column: 13, scope: !152)
!198 = !DILocation(line: 110, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !121, file: !45, line: 110, column: 17)
!200 = !DILocation(line: 110, column: 31, scope: !199)
!201 = !DILocation(line: 110, column: 17, scope: !121)
!202 = !DILocation(line: 112, column: 30, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !45, line: 111, column: 13)
!204 = !DILocation(line: 112, column: 17, scope: !203)
!205 = !DILocation(line: 113, column: 13, scope: !203)
!206 = !DILocation(line: 121, column: 5, scope: !122)
!207 = !DILocation(line: 122, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !111, file: !45, line: 122, column: 8)
!209 = !DILocation(line: 122, column: 8, scope: !111)
!210 = !DILocalVariable(name: "i", scope: !211, file: !45, line: 125, type: !23)
!211 = distinct !DILexicalBlock(scope: !212, file: !45, line: 124, column: 9)
!212 = distinct !DILexicalBlock(scope: !208, file: !45, line: 123, column: 5)
!213 = !DILocation(line: 125, column: 17, scope: !211)
!214 = !DILocalVariable(name: "buffer", scope: !211, file: !45, line: 126, type: !215)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 10)
!218 = !DILocation(line: 126, column: 17, scope: !211)
!219 = !DILocation(line: 129, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !211, file: !45, line: 129, column: 17)
!221 = !DILocation(line: 129, column: 22, scope: !220)
!222 = !DILocation(line: 129, column: 17, scope: !211)
!223 = !DILocation(line: 131, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 130, column: 13)
!225 = !DILocation(line: 131, column: 17, scope: !224)
!226 = !DILocation(line: 131, column: 30, scope: !224)
!227 = !DILocation(line: 133, column: 23, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !45, line: 133, column: 17)
!229 = !DILocation(line: 133, column: 21, scope: !228)
!230 = !DILocation(line: 133, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !45, line: 133, column: 17)
!232 = !DILocation(line: 133, column: 30, scope: !231)
!233 = !DILocation(line: 133, column: 17, scope: !228)
!234 = !DILocation(line: 135, column: 41, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !45, line: 134, column: 17)
!236 = !DILocation(line: 135, column: 34, scope: !235)
!237 = !DILocation(line: 135, column: 21, scope: !235)
!238 = !DILocation(line: 136, column: 17, scope: !235)
!239 = !DILocation(line: 133, column: 37, scope: !231)
!240 = !DILocation(line: 133, column: 17, scope: !231)
!241 = distinct !{!241, !233, !242, !243}
!242 = !DILocation(line: 136, column: 17, scope: !228)
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocation(line: 137, column: 13, scope: !224)
!245 = !DILocation(line: 140, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !220, file: !45, line: 139, column: 13)
!247 = !DILocation(line: 143, column: 5, scope: !212)
!248 = !DILocation(line: 144, column: 1, scope: !111)
!249 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 151, type: !112, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!250 = !DILocalVariable(name: "data", scope: !249, file: !45, line: 153, type: !23)
!251 = !DILocation(line: 153, column: 9, scope: !249)
!252 = !DILocation(line: 155, column: 10, scope: !249)
!253 = !DILocation(line: 156, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !45, line: 156, column: 8)
!255 = !DILocation(line: 156, column: 8, scope: !249)
!256 = !DILocalVariable(name: "recvResult", scope: !257, file: !45, line: 163, type: !23)
!257 = distinct !DILexicalBlock(scope: !258, file: !45, line: 158, column: 9)
!258 = distinct !DILexicalBlock(scope: !254, file: !45, line: 157, column: 5)
!259 = !DILocation(line: 163, column: 17, scope: !257)
!260 = !DILocalVariable(name: "service", scope: !257, file: !45, line: 164, type: !125)
!261 = !DILocation(line: 164, column: 32, scope: !257)
!262 = !DILocalVariable(name: "connectSocket", scope: !257, file: !45, line: 165, type: !23)
!263 = !DILocation(line: 165, column: 20, scope: !257)
!264 = !DILocalVariable(name: "inputBuffer", scope: !257, file: !45, line: 166, type: !97)
!265 = !DILocation(line: 166, column: 18, scope: !257)
!266 = !DILocation(line: 167, column: 13, scope: !257)
!267 = !DILocation(line: 177, column: 33, scope: !268)
!268 = distinct !DILexicalBlock(scope: !257, file: !45, line: 168, column: 13)
!269 = !DILocation(line: 177, column: 31, scope: !268)
!270 = !DILocation(line: 178, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !45, line: 178, column: 21)
!272 = !DILocation(line: 178, column: 35, scope: !271)
!273 = !DILocation(line: 178, column: 21, scope: !268)
!274 = !DILocation(line: 180, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !45, line: 179, column: 17)
!276 = !DILocation(line: 182, column: 17, scope: !268)
!277 = !DILocation(line: 183, column: 25, scope: !268)
!278 = !DILocation(line: 183, column: 36, scope: !268)
!279 = !DILocation(line: 184, column: 43, scope: !268)
!280 = !DILocation(line: 184, column: 25, scope: !268)
!281 = !DILocation(line: 184, column: 34, scope: !268)
!282 = !DILocation(line: 184, column: 41, scope: !268)
!283 = !DILocation(line: 185, column: 36, scope: !268)
!284 = !DILocation(line: 185, column: 25, scope: !268)
!285 = !DILocation(line: 185, column: 34, scope: !268)
!286 = !DILocation(line: 186, column: 29, scope: !287)
!287 = distinct !DILexicalBlock(scope: !268, file: !45, line: 186, column: 21)
!288 = !DILocation(line: 186, column: 44, scope: !287)
!289 = !DILocation(line: 186, column: 21, scope: !287)
!290 = !DILocation(line: 186, column: 89, scope: !287)
!291 = !DILocation(line: 186, column: 21, scope: !268)
!292 = !DILocation(line: 188, column: 21, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !45, line: 187, column: 17)
!294 = !DILocation(line: 192, column: 35, scope: !268)
!295 = !DILocation(line: 192, column: 50, scope: !268)
!296 = !DILocation(line: 192, column: 30, scope: !268)
!297 = !DILocation(line: 192, column: 28, scope: !268)
!298 = !DILocation(line: 193, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !268, file: !45, line: 193, column: 21)
!300 = !DILocation(line: 193, column: 32, scope: !299)
!301 = !DILocation(line: 193, column: 48, scope: !299)
!302 = !DILocation(line: 193, column: 51, scope: !299)
!303 = !DILocation(line: 193, column: 62, scope: !299)
!304 = !DILocation(line: 193, column: 21, scope: !268)
!305 = !DILocation(line: 195, column: 21, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !45, line: 194, column: 17)
!307 = !DILocation(line: 198, column: 29, scope: !268)
!308 = !DILocation(line: 198, column: 17, scope: !268)
!309 = !DILocation(line: 198, column: 41, scope: !268)
!310 = !DILocation(line: 200, column: 29, scope: !268)
!311 = !DILocation(line: 200, column: 24, scope: !268)
!312 = !DILocation(line: 200, column: 22, scope: !268)
!313 = !DILocation(line: 201, column: 13, scope: !268)
!314 = !DILocation(line: 203, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !257, file: !45, line: 203, column: 17)
!316 = !DILocation(line: 203, column: 31, scope: !315)
!317 = !DILocation(line: 203, column: 17, scope: !257)
!318 = !DILocation(line: 205, column: 30, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !45, line: 204, column: 13)
!320 = !DILocation(line: 205, column: 17, scope: !319)
!321 = !DILocation(line: 206, column: 13, scope: !319)
!322 = !DILocation(line: 214, column: 5, scope: !258)
!323 = !DILocation(line: 215, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !249, file: !45, line: 215, column: 8)
!325 = !DILocation(line: 215, column: 8, scope: !249)
!326 = !DILocation(line: 218, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !45, line: 216, column: 5)
!328 = !DILocation(line: 219, column: 5, scope: !327)
!329 = !DILocalVariable(name: "i", scope: !330, file: !45, line: 223, type: !23)
!330 = distinct !DILexicalBlock(scope: !331, file: !45, line: 222, column: 9)
!331 = distinct !DILexicalBlock(scope: !324, file: !45, line: 221, column: 5)
!332 = !DILocation(line: 223, column: 17, scope: !330)
!333 = !DILocalVariable(name: "buffer", scope: !330, file: !45, line: 224, type: !215)
!334 = !DILocation(line: 224, column: 17, scope: !330)
!335 = !DILocation(line: 226, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !45, line: 226, column: 17)
!337 = !DILocation(line: 226, column: 22, scope: !336)
!338 = !DILocation(line: 226, column: 27, scope: !336)
!339 = !DILocation(line: 226, column: 30, scope: !336)
!340 = !DILocation(line: 226, column: 35, scope: !336)
!341 = !DILocation(line: 226, column: 17, scope: !330)
!342 = !DILocation(line: 228, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !45, line: 227, column: 13)
!344 = !DILocation(line: 228, column: 17, scope: !343)
!345 = !DILocation(line: 228, column: 30, scope: !343)
!346 = !DILocation(line: 230, column: 23, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !45, line: 230, column: 17)
!348 = !DILocation(line: 230, column: 21, scope: !347)
!349 = !DILocation(line: 230, column: 28, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !45, line: 230, column: 17)
!351 = !DILocation(line: 230, column: 30, scope: !350)
!352 = !DILocation(line: 230, column: 17, scope: !347)
!353 = !DILocation(line: 232, column: 41, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !45, line: 231, column: 17)
!355 = !DILocation(line: 232, column: 34, scope: !354)
!356 = !DILocation(line: 232, column: 21, scope: !354)
!357 = !DILocation(line: 233, column: 17, scope: !354)
!358 = !DILocation(line: 230, column: 37, scope: !350)
!359 = !DILocation(line: 230, column: 17, scope: !350)
!360 = distinct !{!360, !352, !361, !243}
!361 = !DILocation(line: 233, column: 17, scope: !347)
!362 = !DILocation(line: 234, column: 13, scope: !343)
!363 = !DILocation(line: 237, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !336, file: !45, line: 236, column: 13)
!365 = !DILocation(line: 241, column: 1, scope: !249)
!366 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 244, type: !112, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!367 = !DILocalVariable(name: "data", scope: !366, file: !45, line: 246, type: !23)
!368 = !DILocation(line: 246, column: 9, scope: !366)
!369 = !DILocation(line: 248, column: 10, scope: !366)
!370 = !DILocation(line: 249, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !45, line: 249, column: 8)
!372 = !DILocation(line: 249, column: 8, scope: !366)
!373 = !DILocalVariable(name: "recvResult", scope: !374, file: !45, line: 256, type: !23)
!374 = distinct !DILexicalBlock(scope: !375, file: !45, line: 251, column: 9)
!375 = distinct !DILexicalBlock(scope: !371, file: !45, line: 250, column: 5)
!376 = !DILocation(line: 256, column: 17, scope: !374)
!377 = !DILocalVariable(name: "service", scope: !374, file: !45, line: 257, type: !125)
!378 = !DILocation(line: 257, column: 32, scope: !374)
!379 = !DILocalVariable(name: "connectSocket", scope: !374, file: !45, line: 258, type: !23)
!380 = !DILocation(line: 258, column: 20, scope: !374)
!381 = !DILocalVariable(name: "inputBuffer", scope: !374, file: !45, line: 259, type: !97)
!382 = !DILocation(line: 259, column: 18, scope: !374)
!383 = !DILocation(line: 260, column: 13, scope: !374)
!384 = !DILocation(line: 270, column: 33, scope: !385)
!385 = distinct !DILexicalBlock(scope: !374, file: !45, line: 261, column: 13)
!386 = !DILocation(line: 270, column: 31, scope: !385)
!387 = !DILocation(line: 271, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !45, line: 271, column: 21)
!389 = !DILocation(line: 271, column: 35, scope: !388)
!390 = !DILocation(line: 271, column: 21, scope: !385)
!391 = !DILocation(line: 273, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !45, line: 272, column: 17)
!393 = !DILocation(line: 275, column: 17, scope: !385)
!394 = !DILocation(line: 276, column: 25, scope: !385)
!395 = !DILocation(line: 276, column: 36, scope: !385)
!396 = !DILocation(line: 277, column: 43, scope: !385)
!397 = !DILocation(line: 277, column: 25, scope: !385)
!398 = !DILocation(line: 277, column: 34, scope: !385)
!399 = !DILocation(line: 277, column: 41, scope: !385)
!400 = !DILocation(line: 278, column: 36, scope: !385)
!401 = !DILocation(line: 278, column: 25, scope: !385)
!402 = !DILocation(line: 278, column: 34, scope: !385)
!403 = !DILocation(line: 279, column: 29, scope: !404)
!404 = distinct !DILexicalBlock(scope: !385, file: !45, line: 279, column: 21)
!405 = !DILocation(line: 279, column: 44, scope: !404)
!406 = !DILocation(line: 279, column: 21, scope: !404)
!407 = !DILocation(line: 279, column: 89, scope: !404)
!408 = !DILocation(line: 279, column: 21, scope: !385)
!409 = !DILocation(line: 281, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !404, file: !45, line: 280, column: 17)
!411 = !DILocation(line: 285, column: 35, scope: !385)
!412 = !DILocation(line: 285, column: 50, scope: !385)
!413 = !DILocation(line: 285, column: 30, scope: !385)
!414 = !DILocation(line: 285, column: 28, scope: !385)
!415 = !DILocation(line: 286, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !385, file: !45, line: 286, column: 21)
!417 = !DILocation(line: 286, column: 32, scope: !416)
!418 = !DILocation(line: 286, column: 48, scope: !416)
!419 = !DILocation(line: 286, column: 51, scope: !416)
!420 = !DILocation(line: 286, column: 62, scope: !416)
!421 = !DILocation(line: 286, column: 21, scope: !385)
!422 = !DILocation(line: 288, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !45, line: 287, column: 17)
!424 = !DILocation(line: 291, column: 29, scope: !385)
!425 = !DILocation(line: 291, column: 17, scope: !385)
!426 = !DILocation(line: 291, column: 41, scope: !385)
!427 = !DILocation(line: 293, column: 29, scope: !385)
!428 = !DILocation(line: 293, column: 24, scope: !385)
!429 = !DILocation(line: 293, column: 22, scope: !385)
!430 = !DILocation(line: 294, column: 13, scope: !385)
!431 = !DILocation(line: 296, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !374, file: !45, line: 296, column: 17)
!433 = !DILocation(line: 296, column: 31, scope: !432)
!434 = !DILocation(line: 296, column: 17, scope: !374)
!435 = !DILocation(line: 298, column: 30, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !45, line: 297, column: 13)
!437 = !DILocation(line: 298, column: 17, scope: !436)
!438 = !DILocation(line: 299, column: 13, scope: !436)
!439 = !DILocation(line: 307, column: 5, scope: !375)
!440 = !DILocation(line: 308, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !366, file: !45, line: 308, column: 8)
!442 = !DILocation(line: 308, column: 8, scope: !366)
!443 = !DILocalVariable(name: "i", scope: !444, file: !45, line: 311, type: !23)
!444 = distinct !DILexicalBlock(scope: !445, file: !45, line: 310, column: 9)
!445 = distinct !DILexicalBlock(scope: !441, file: !45, line: 309, column: 5)
!446 = !DILocation(line: 311, column: 17, scope: !444)
!447 = !DILocalVariable(name: "buffer", scope: !444, file: !45, line: 312, type: !215)
!448 = !DILocation(line: 312, column: 17, scope: !444)
!449 = !DILocation(line: 314, column: 17, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !45, line: 314, column: 17)
!451 = !DILocation(line: 314, column: 22, scope: !450)
!452 = !DILocation(line: 314, column: 27, scope: !450)
!453 = !DILocation(line: 314, column: 30, scope: !450)
!454 = !DILocation(line: 314, column: 35, scope: !450)
!455 = !DILocation(line: 314, column: 17, scope: !444)
!456 = !DILocation(line: 316, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !45, line: 315, column: 13)
!458 = !DILocation(line: 316, column: 17, scope: !457)
!459 = !DILocation(line: 316, column: 30, scope: !457)
!460 = !DILocation(line: 318, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !45, line: 318, column: 17)
!462 = !DILocation(line: 318, column: 21, scope: !461)
!463 = !DILocation(line: 318, column: 28, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !45, line: 318, column: 17)
!465 = !DILocation(line: 318, column: 30, scope: !464)
!466 = !DILocation(line: 318, column: 17, scope: !461)
!467 = !DILocation(line: 320, column: 41, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !45, line: 319, column: 17)
!469 = !DILocation(line: 320, column: 34, scope: !468)
!470 = !DILocation(line: 320, column: 21, scope: !468)
!471 = !DILocation(line: 321, column: 17, scope: !468)
!472 = !DILocation(line: 318, column: 37, scope: !464)
!473 = !DILocation(line: 318, column: 17, scope: !464)
!474 = distinct !{!474, !466, !475, !243}
!475 = !DILocation(line: 321, column: 17, scope: !461)
!476 = !DILocation(line: 322, column: 13, scope: !457)
!477 = !DILocation(line: 325, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !450, file: !45, line: 324, column: 13)
!479 = !DILocation(line: 328, column: 5, scope: !445)
!480 = !DILocation(line: 329, column: 1, scope: !366)
!481 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 332, type: !112, scopeLine: 333, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!482 = !DILocalVariable(name: "data", scope: !481, file: !45, line: 334, type: !23)
!483 = !DILocation(line: 334, column: 9, scope: !481)
!484 = !DILocation(line: 336, column: 10, scope: !481)
!485 = !DILocation(line: 337, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !45, line: 337, column: 8)
!487 = !DILocation(line: 337, column: 8, scope: !481)
!488 = !DILocation(line: 340, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !45, line: 338, column: 5)
!490 = !DILocation(line: 341, column: 5, scope: !489)
!491 = !DILocation(line: 346, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !486, file: !45, line: 343, column: 5)
!493 = !DILocation(line: 348, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !481, file: !45, line: 348, column: 8)
!495 = !DILocation(line: 348, column: 8, scope: !481)
!496 = !DILocalVariable(name: "i", scope: !497, file: !45, line: 351, type: !23)
!497 = distinct !DILexicalBlock(scope: !498, file: !45, line: 350, column: 9)
!498 = distinct !DILexicalBlock(scope: !494, file: !45, line: 349, column: 5)
!499 = !DILocation(line: 351, column: 17, scope: !497)
!500 = !DILocalVariable(name: "buffer", scope: !497, file: !45, line: 352, type: !215)
!501 = !DILocation(line: 352, column: 17, scope: !497)
!502 = !DILocation(line: 355, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !497, file: !45, line: 355, column: 17)
!504 = !DILocation(line: 355, column: 22, scope: !503)
!505 = !DILocation(line: 355, column: 17, scope: !497)
!506 = !DILocation(line: 357, column: 24, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !45, line: 356, column: 13)
!508 = !DILocation(line: 357, column: 17, scope: !507)
!509 = !DILocation(line: 357, column: 30, scope: !507)
!510 = !DILocation(line: 359, column: 23, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !45, line: 359, column: 17)
!512 = !DILocation(line: 359, column: 21, scope: !511)
!513 = !DILocation(line: 359, column: 28, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !45, line: 359, column: 17)
!515 = !DILocation(line: 359, column: 30, scope: !514)
!516 = !DILocation(line: 359, column: 17, scope: !511)
!517 = !DILocation(line: 361, column: 41, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !45, line: 360, column: 17)
!519 = !DILocation(line: 361, column: 34, scope: !518)
!520 = !DILocation(line: 361, column: 21, scope: !518)
!521 = !DILocation(line: 362, column: 17, scope: !518)
!522 = !DILocation(line: 359, column: 37, scope: !514)
!523 = !DILocation(line: 359, column: 17, scope: !514)
!524 = distinct !{!524, !516, !525, !243}
!525 = !DILocation(line: 362, column: 17, scope: !511)
!526 = !DILocation(line: 363, column: 13, scope: !507)
!527 = !DILocation(line: 366, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !503, file: !45, line: 365, column: 13)
!529 = !DILocation(line: 369, column: 5, scope: !498)
!530 = !DILocation(line: 370, column: 1, scope: !481)
!531 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 373, type: !112, scopeLine: 374, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!532 = !DILocalVariable(name: "data", scope: !531, file: !45, line: 375, type: !23)
!533 = !DILocation(line: 375, column: 9, scope: !531)
!534 = !DILocation(line: 377, column: 10, scope: !531)
!535 = !DILocation(line: 378, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !45, line: 378, column: 8)
!537 = !DILocation(line: 378, column: 8, scope: !531)
!538 = !DILocation(line: 382, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !45, line: 379, column: 5)
!540 = !DILocation(line: 383, column: 5, scope: !539)
!541 = !DILocation(line: 384, column: 8, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !45, line: 384, column: 8)
!543 = !DILocation(line: 384, column: 8, scope: !531)
!544 = !DILocalVariable(name: "i", scope: !545, file: !45, line: 387, type: !23)
!545 = distinct !DILexicalBlock(scope: !546, file: !45, line: 386, column: 9)
!546 = distinct !DILexicalBlock(scope: !542, file: !45, line: 385, column: 5)
!547 = !DILocation(line: 387, column: 17, scope: !545)
!548 = !DILocalVariable(name: "buffer", scope: !545, file: !45, line: 388, type: !215)
!549 = !DILocation(line: 388, column: 17, scope: !545)
!550 = !DILocation(line: 391, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !45, line: 391, column: 17)
!552 = !DILocation(line: 391, column: 22, scope: !551)
!553 = !DILocation(line: 391, column: 17, scope: !545)
!554 = !DILocation(line: 393, column: 24, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !45, line: 392, column: 13)
!556 = !DILocation(line: 393, column: 17, scope: !555)
!557 = !DILocation(line: 393, column: 30, scope: !555)
!558 = !DILocation(line: 395, column: 23, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !45, line: 395, column: 17)
!560 = !DILocation(line: 395, column: 21, scope: !559)
!561 = !DILocation(line: 395, column: 28, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !45, line: 395, column: 17)
!563 = !DILocation(line: 395, column: 30, scope: !562)
!564 = !DILocation(line: 395, column: 17, scope: !559)
!565 = !DILocation(line: 397, column: 41, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !45, line: 396, column: 17)
!567 = !DILocation(line: 397, column: 34, scope: !566)
!568 = !DILocation(line: 397, column: 21, scope: !566)
!569 = !DILocation(line: 398, column: 17, scope: !566)
!570 = !DILocation(line: 395, column: 37, scope: !562)
!571 = !DILocation(line: 395, column: 17, scope: !562)
!572 = distinct !{!572, !564, !573, !243}
!573 = !DILocation(line: 398, column: 17, scope: !559)
!574 = !DILocation(line: 399, column: 13, scope: !555)
!575 = !DILocation(line: 402, column: 17, scope: !576)
!576 = distinct !DILexicalBlock(scope: !551, file: !45, line: 401, column: 13)
!577 = !DILocation(line: 405, column: 5, scope: !546)
!578 = !DILocation(line: 406, column: 1, scope: !531)
!579 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_good", scope: !45, file: !45, line: 408, type: !112, scopeLine: 409, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!580 = !DILocation(line: 410, column: 5, scope: !579)
!581 = !DILocation(line: 411, column: 5, scope: !579)
!582 = !DILocation(line: 412, column: 5, scope: !579)
!583 = !DILocation(line: 413, column: 5, scope: !579)
!584 = !DILocation(line: 414, column: 1, scope: !579)
!585 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !586, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !42}
!588 = !DILocalVariable(name: "line", arg: 1, scope: !585, file: !3, line: 11, type: !42)
!589 = !DILocation(line: 11, column: 25, scope: !585)
!590 = !DILocation(line: 13, column: 1, scope: !585)
!591 = !DILocation(line: 14, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !3, line: 14, column: 8)
!593 = !DILocation(line: 14, column: 13, scope: !592)
!594 = !DILocation(line: 14, column: 8, scope: !585)
!595 = !DILocation(line: 16, column: 24, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 15, column: 5)
!597 = !DILocation(line: 16, column: 9, scope: !596)
!598 = !DILocation(line: 17, column: 5, scope: !596)
!599 = !DILocation(line: 18, column: 5, scope: !585)
!600 = !DILocation(line: 19, column: 1, scope: !585)
!601 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !586, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!602 = !DILocalVariable(name: "line", arg: 1, scope: !601, file: !3, line: 20, type: !42)
!603 = !DILocation(line: 20, column: 29, scope: !601)
!604 = !DILocation(line: 22, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 22, column: 8)
!606 = !DILocation(line: 22, column: 13, scope: !605)
!607 = !DILocation(line: 22, column: 8, scope: !601)
!608 = !DILocation(line: 24, column: 24, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !3, line: 23, column: 5)
!610 = !DILocation(line: 24, column: 9, scope: !609)
!611 = !DILocation(line: 25, column: 5, scope: !609)
!612 = !DILocation(line: 26, column: 1, scope: !601)
!613 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !614, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !618, line: 74, baseType: !23)
!618 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!619 = !DILocalVariable(name: "line", arg: 1, scope: !613, file: !3, line: 27, type: !616)
!620 = !DILocation(line: 27, column: 29, scope: !613)
!621 = !DILocation(line: 29, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !3, line: 29, column: 8)
!623 = !DILocation(line: 29, column: 13, scope: !622)
!624 = !DILocation(line: 29, column: 8, scope: !613)
!625 = !DILocation(line: 31, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 30, column: 5)
!627 = !DILocation(line: 31, column: 9, scope: !626)
!628 = !DILocation(line: 32, column: 5, scope: !626)
!629 = !DILocation(line: 33, column: 1, scope: !613)
!630 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !631, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !23}
!633 = !DILocalVariable(name: "intNumber", arg: 1, scope: !630, file: !3, line: 35, type: !23)
!634 = !DILocation(line: 35, column: 24, scope: !630)
!635 = !DILocation(line: 37, column: 20, scope: !630)
!636 = !DILocation(line: 37, column: 5, scope: !630)
!637 = !DILocation(line: 38, column: 1, scope: !630)
!638 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !639, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641}
!641 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!642 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !638, file: !3, line: 40, type: !641)
!643 = !DILocation(line: 40, column: 28, scope: !638)
!644 = !DILocation(line: 42, column: 21, scope: !638)
!645 = !DILocation(line: 42, column: 5, scope: !638)
!646 = !DILocation(line: 43, column: 1, scope: !638)
!647 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !648, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650}
!650 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!651 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !647, file: !3, line: 45, type: !650)
!652 = !DILocation(line: 45, column: 28, scope: !647)
!653 = !DILocation(line: 47, column: 20, scope: !647)
!654 = !DILocation(line: 47, column: 5, scope: !647)
!655 = !DILocation(line: 48, column: 1, scope: !647)
!656 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !657, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659}
!659 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!660 = !DILocalVariable(name: "longNumber", arg: 1, scope: !656, file: !3, line: 50, type: !659)
!661 = !DILocation(line: 50, column: 26, scope: !656)
!662 = !DILocation(line: 52, column: 21, scope: !656)
!663 = !DILocation(line: 52, column: 5, scope: !656)
!664 = !DILocation(line: 53, column: 1, scope: !656)
!665 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !666, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668}
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !669, line: 27, baseType: !670)
!669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !133, line: 44, baseType: !659)
!671 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !665, file: !3, line: 55, type: !668)
!672 = !DILocation(line: 55, column: 33, scope: !665)
!673 = !DILocation(line: 57, column: 29, scope: !665)
!674 = !DILocation(line: 57, column: 5, scope: !665)
!675 = !DILocation(line: 58, column: 1, scope: !665)
!676 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !677, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !618, line: 46, baseType: !680)
!680 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!681 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !676, file: !3, line: 60, type: !679)
!682 = !DILocation(line: 60, column: 29, scope: !676)
!683 = !DILocation(line: 62, column: 21, scope: !676)
!684 = !DILocation(line: 62, column: 5, scope: !676)
!685 = !DILocation(line: 63, column: 1, scope: !676)
!686 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !687, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !43}
!689 = !DILocalVariable(name: "charHex", arg: 1, scope: !686, file: !3, line: 65, type: !43)
!690 = !DILocation(line: 65, column: 29, scope: !686)
!691 = !DILocation(line: 67, column: 22, scope: !686)
!692 = !DILocation(line: 67, column: 5, scope: !686)
!693 = !DILocation(line: 68, column: 1, scope: !686)
!694 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !695, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !617}
!697 = !DILocalVariable(name: "wideChar", arg: 1, scope: !694, file: !3, line: 70, type: !617)
!698 = !DILocation(line: 70, column: 29, scope: !694)
!699 = !DILocalVariable(name: "s", scope: !694, file: !3, line: 74, type: !700)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 2)
!703 = !DILocation(line: 74, column: 13, scope: !694)
!704 = !DILocation(line: 75, column: 16, scope: !694)
!705 = !DILocation(line: 75, column: 9, scope: !694)
!706 = !DILocation(line: 75, column: 14, scope: !694)
!707 = !DILocation(line: 76, column: 9, scope: !694)
!708 = !DILocation(line: 76, column: 14, scope: !694)
!709 = !DILocation(line: 77, column: 21, scope: !694)
!710 = !DILocation(line: 77, column: 5, scope: !694)
!711 = !DILocation(line: 78, column: 1, scope: !694)
!712 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !713, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !7}
!715 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !712, file: !3, line: 80, type: !7)
!716 = !DILocation(line: 80, column: 33, scope: !712)
!717 = !DILocation(line: 82, column: 20, scope: !712)
!718 = !DILocation(line: 82, column: 5, scope: !712)
!719 = !DILocation(line: 83, column: 1, scope: !712)
!720 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !721, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !25}
!723 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !720, file: !3, line: 85, type: !25)
!724 = !DILocation(line: 85, column: 45, scope: !720)
!725 = !DILocation(line: 87, column: 22, scope: !720)
!726 = !DILocation(line: 87, column: 5, scope: !720)
!727 = !DILocation(line: 88, column: 1, scope: !720)
!728 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !729, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !731}
!731 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!732 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !728, file: !3, line: 90, type: !731)
!733 = !DILocation(line: 90, column: 29, scope: !728)
!734 = !DILocation(line: 92, column: 20, scope: !728)
!735 = !DILocation(line: 92, column: 5, scope: !728)
!736 = !DILocation(line: 93, column: 1, scope: !728)
!737 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !738, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !742, line: 100, baseType: !743)
!742 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_523/source_code")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !742, line: 96, size: 64, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !743, file: !742, line: 98, baseType: !23, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !743, file: !742, line: 99, baseType: !23, size: 32, offset: 32)
!747 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !737, file: !3, line: 95, type: !740)
!748 = !DILocation(line: 95, column: 40, scope: !737)
!749 = !DILocation(line: 97, column: 26, scope: !737)
!750 = !DILocation(line: 97, column: 47, scope: !737)
!751 = !DILocation(line: 97, column: 55, scope: !737)
!752 = !DILocation(line: 97, column: 76, scope: !737)
!753 = !DILocation(line: 97, column: 5, scope: !737)
!754 = !DILocation(line: 98, column: 1, scope: !737)
!755 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !756, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !758, !679}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!759 = !DILocalVariable(name: "bytes", arg: 1, scope: !755, file: !3, line: 100, type: !758)
!760 = !DILocation(line: 100, column: 38, scope: !755)
!761 = !DILocalVariable(name: "numBytes", arg: 2, scope: !755, file: !3, line: 100, type: !679)
!762 = !DILocation(line: 100, column: 52, scope: !755)
!763 = !DILocalVariable(name: "i", scope: !755, file: !3, line: 102, type: !679)
!764 = !DILocation(line: 102, column: 12, scope: !755)
!765 = !DILocation(line: 103, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !755, file: !3, line: 103, column: 5)
!767 = !DILocation(line: 103, column: 10, scope: !766)
!768 = !DILocation(line: 103, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 103, column: 5)
!770 = !DILocation(line: 103, column: 21, scope: !769)
!771 = !DILocation(line: 103, column: 19, scope: !769)
!772 = !DILocation(line: 103, column: 5, scope: !766)
!773 = !DILocation(line: 105, column: 24, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !3, line: 104, column: 5)
!775 = !DILocation(line: 105, column: 30, scope: !774)
!776 = !DILocation(line: 105, column: 9, scope: !774)
!777 = !DILocation(line: 106, column: 5, scope: !774)
!778 = !DILocation(line: 103, column: 31, scope: !769)
!779 = !DILocation(line: 103, column: 5, scope: !769)
!780 = distinct !{!780, !772, !781, !243}
!781 = !DILocation(line: 106, column: 5, scope: !766)
!782 = !DILocation(line: 107, column: 5, scope: !755)
!783 = !DILocation(line: 108, column: 1, scope: !755)
!784 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !785, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DISubroutineType(types: !786)
!786 = !{!679, !758, !679, !42}
!787 = !DILocalVariable(name: "bytes", arg: 1, scope: !784, file: !3, line: 113, type: !758)
!788 = !DILocation(line: 113, column: 39, scope: !784)
!789 = !DILocalVariable(name: "numBytes", arg: 2, scope: !784, file: !3, line: 113, type: !679)
!790 = !DILocation(line: 113, column: 53, scope: !784)
!791 = !DILocalVariable(name: "hex", arg: 3, scope: !784, file: !3, line: 113, type: !42)
!792 = !DILocation(line: 113, column: 71, scope: !784)
!793 = !DILocalVariable(name: "numWritten", scope: !784, file: !3, line: 115, type: !679)
!794 = !DILocation(line: 115, column: 12, scope: !784)
!795 = !DILocation(line: 121, column: 5, scope: !784)
!796 = !DILocation(line: 121, column: 12, scope: !784)
!797 = !DILocation(line: 121, column: 25, scope: !784)
!798 = !DILocation(line: 121, column: 23, scope: !784)
!799 = !DILocation(line: 121, column: 34, scope: !784)
!800 = !DILocation(line: 121, column: 37, scope: !784)
!801 = !DILocation(line: 121, column: 67, scope: !784)
!802 = !DILocation(line: 121, column: 70, scope: !784)
!803 = !DILocation(line: 0, scope: !784)
!804 = !DILocalVariable(name: "byte", scope: !805, file: !3, line: 123, type: !23)
!805 = distinct !DILexicalBlock(scope: !784, file: !3, line: 122, column: 5)
!806 = !DILocation(line: 123, column: 13, scope: !805)
!807 = !DILocation(line: 124, column: 17, scope: !805)
!808 = !DILocation(line: 124, column: 25, scope: !805)
!809 = !DILocation(line: 124, column: 23, scope: !805)
!810 = !DILocation(line: 124, column: 9, scope: !805)
!811 = !DILocation(line: 125, column: 45, scope: !805)
!812 = !DILocation(line: 125, column: 29, scope: !805)
!813 = !DILocation(line: 125, column: 9, scope: !805)
!814 = !DILocation(line: 125, column: 15, scope: !805)
!815 = !DILocation(line: 125, column: 27, scope: !805)
!816 = !DILocation(line: 126, column: 9, scope: !805)
!817 = distinct !{!817, !795, !818, !243}
!818 = !DILocation(line: 127, column: 5, scope: !784)
!819 = !DILocation(line: 129, column: 12, scope: !784)
!820 = !DILocation(line: 129, column: 5, scope: !784)
!821 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !822, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!822 = !DISubroutineType(types: !823)
!823 = !{!679, !758, !679, !616}
!824 = !DILocalVariable(name: "bytes", arg: 1, scope: !821, file: !3, line: 135, type: !758)
!825 = !DILocation(line: 135, column: 41, scope: !821)
!826 = !DILocalVariable(name: "numBytes", arg: 2, scope: !821, file: !3, line: 135, type: !679)
!827 = !DILocation(line: 135, column: 55, scope: !821)
!828 = !DILocalVariable(name: "hex", arg: 3, scope: !821, file: !3, line: 135, type: !616)
!829 = !DILocation(line: 135, column: 76, scope: !821)
!830 = !DILocalVariable(name: "numWritten", scope: !821, file: !3, line: 137, type: !679)
!831 = !DILocation(line: 137, column: 12, scope: !821)
!832 = !DILocation(line: 143, column: 5, scope: !821)
!833 = !DILocation(line: 143, column: 12, scope: !821)
!834 = !DILocation(line: 143, column: 25, scope: !821)
!835 = !DILocation(line: 143, column: 23, scope: !821)
!836 = !DILocation(line: 143, column: 34, scope: !821)
!837 = !DILocation(line: 143, column: 47, scope: !821)
!838 = !DILocation(line: 143, column: 55, scope: !821)
!839 = !DILocation(line: 143, column: 53, scope: !821)
!840 = !DILocation(line: 143, column: 37, scope: !821)
!841 = !DILocation(line: 143, column: 68, scope: !821)
!842 = !DILocation(line: 143, column: 81, scope: !821)
!843 = !DILocation(line: 143, column: 89, scope: !821)
!844 = !DILocation(line: 143, column: 87, scope: !821)
!845 = !DILocation(line: 143, column: 100, scope: !821)
!846 = !DILocation(line: 143, column: 71, scope: !821)
!847 = !DILocation(line: 0, scope: !821)
!848 = !DILocalVariable(name: "byte", scope: !849, file: !3, line: 145, type: !23)
!849 = distinct !DILexicalBlock(scope: !821, file: !3, line: 144, column: 5)
!850 = !DILocation(line: 145, column: 13, scope: !849)
!851 = !DILocation(line: 146, column: 18, scope: !849)
!852 = !DILocation(line: 146, column: 26, scope: !849)
!853 = !DILocation(line: 146, column: 24, scope: !849)
!854 = !DILocation(line: 146, column: 9, scope: !849)
!855 = !DILocation(line: 147, column: 45, scope: !849)
!856 = !DILocation(line: 147, column: 29, scope: !849)
!857 = !DILocation(line: 147, column: 9, scope: !849)
!858 = !DILocation(line: 147, column: 15, scope: !849)
!859 = !DILocation(line: 147, column: 27, scope: !849)
!860 = !DILocation(line: 148, column: 9, scope: !849)
!861 = distinct !{!861, !832, !862, !243}
!862 = !DILocation(line: 149, column: 5, scope: !821)
!863 = !DILocation(line: 151, column: 12, scope: !821)
!864 = !DILocation(line: 151, column: 5, scope: !821)
!865 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !105, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 158, column: 5, scope: !865)
!867 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !105, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!868 = !DILocation(line: 163, column: 5, scope: !867)
!869 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !105, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 168, column: 13, scope: !869)
!871 = !DILocation(line: 168, column: 20, scope: !869)
!872 = !DILocation(line: 168, column: 5, scope: !869)
!873 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !112, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 187, column: 16, scope: !873)
!875 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !112, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 188, column: 16, scope: !875)
!877 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !112, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 189, column: 16, scope: !877)
!879 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !112, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 190, column: 16, scope: !879)
!881 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !112, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 191, column: 16, scope: !881)
!883 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !112, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 192, column: 16, scope: !883)
!885 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !112, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 193, column: 16, scope: !885)
!887 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !112, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 194, column: 16, scope: !887)
!889 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !112, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!890 = !DILocation(line: 195, column: 16, scope: !889)
!891 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !112, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DILocation(line: 198, column: 15, scope: !891)
!893 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !112, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!894 = !DILocation(line: 199, column: 15, scope: !893)
!895 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !112, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DILocation(line: 200, column: 15, scope: !895)
!897 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !112, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DILocation(line: 201, column: 15, scope: !897)
!899 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !112, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!900 = !DILocation(line: 202, column: 15, scope: !899)
!901 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !112, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DILocation(line: 203, column: 15, scope: !901)
!903 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !112, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!904 = !DILocation(line: 204, column: 15, scope: !903)
!905 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !112, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!906 = !DILocation(line: 205, column: 15, scope: !905)
!907 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !112, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!908 = !DILocation(line: 206, column: 15, scope: !907)
