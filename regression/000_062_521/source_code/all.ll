; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !63
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !87
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !89
@globalTrue = dso_local global i32 1, align 4, !dbg !91
@globalFalse = dso_local global i32 0, align 4, !dbg !93
@globalFive = dso_local global i32 5, align 4, !dbg !95
@globalArgc = dso_local global i32 0, align 4, !dbg !97
@globalArgv = dso_local global i8** null, align 8, !dbg !99
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_bad() #0 !dbg !107 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %data, align 4, !dbg !113
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !114
  %cmp = icmp eq i32 %0, 5, !dbg !116
  br i1 %cmp, label %if.then, label %if.end23, !dbg !117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 -1, i32* %connectSocket, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  br label %do.body, !dbg !148

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !149
  store i32 %call, i32* %connectSocket, align 4, !dbg !151
  %1 = load i32, i32* %connectSocket, align 4, !dbg !152
  %cmp1 = icmp eq i32 %1, -1, !dbg !154
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !155

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !156

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !158
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !159
  store i16 2, i16* %sin_family, align 4, !dbg !160
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !161
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !162
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !163
  store i32 %call3, i32* %s_addr, align 4, !dbg !164
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !165
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !166
  store i16 %call4, i16* %sin_port, align 2, !dbg !167
  %3 = load i32, i32* %connectSocket, align 4, !dbg !168
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !170
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !171
  %cmp6 = icmp eq i32 %call5, -1, !dbg !172
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !173

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !174

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !176
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !177
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !178
  %conv = trunc i64 %call9 to i32, !dbg !178
  store i32 %conv, i32* %recvResult, align 4, !dbg !179
  %6 = load i32, i32* %recvResult, align 4, !dbg !180
  %cmp10 = icmp eq i32 %6, -1, !dbg !182
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !183

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !184
  %cmp12 = icmp eq i32 %7, 0, !dbg !185
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !186

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !187

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !189
  %idxprom = sext i32 %8 to i64, !dbg !190
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !190
  store i8 0, i8* %arrayidx, align 1, !dbg !191
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !192
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !193
  store i32 %call17, i32* %data, align 4, !dbg !194
  br label %do.end, !dbg !195

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !196
  %cmp18 = icmp ne i32 %9, -1, !dbg !198
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !199

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !200
  %call21 = call i32 @close(i32 %10), !dbg !202
  br label %if.end22, !dbg !203

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !204

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !205
  %cmp24 = icmp eq i32 %11, 5, !dbg !207
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !208

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !209, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !213, metadata !DIExpression()), !dbg !217
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !217
  %13 = load i32, i32* %data, align 4, !dbg !218
  %cmp27 = icmp sge i32 %13, 0, !dbg !220
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !221

if.then29:                                        ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !222
  %idxprom30 = sext i32 %14 to i64, !dbg !224
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !224
  store i32 1, i32* %arrayidx31, align 4, !dbg !225
  store i32 0, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then29
  %15 = load i32, i32* %i, align 4, !dbg !229
  %cmp32 = icmp slt i32 %15, 10, !dbg !231
  br i1 %cmp32, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !233
  %idxprom34 = sext i32 %16 to i64, !dbg !235
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !235
  %17 = load i32, i32* %arrayidx35, align 4, !dbg !235
  call void @printIntLine(i32 %17), !dbg !236
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !238
  %inc = add nsw i32 %18, 1, !dbg !238
  store i32 %inc, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !243

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !244
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !246

if.end37:                                         ; preds = %if.end36, %if.end23
  ret void, !dbg !247
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
define dso_local void @goodB2G1() #0 !dbg !248 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 -1, i32* %data, align 4, !dbg !251
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !252
  %cmp = icmp eq i32 %0, 5, !dbg !254
  br i1 %cmp, label %if.then, label %if.end23, !dbg !255

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 -1, i32* %connectSocket, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !264, metadata !DIExpression()), !dbg !265
  br label %do.body, !dbg !266

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !267
  store i32 %call, i32* %connectSocket, align 4, !dbg !269
  %1 = load i32, i32* %connectSocket, align 4, !dbg !270
  %cmp1 = icmp eq i32 %1, -1, !dbg !272
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !273

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !274

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !276
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !277
  store i16 2, i16* %sin_family, align 4, !dbg !278
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !279
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !280
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !281
  store i32 %call3, i32* %s_addr, align 4, !dbg !282
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !283
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !284
  store i16 %call4, i16* %sin_port, align 2, !dbg !285
  %3 = load i32, i32* %connectSocket, align 4, !dbg !286
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !288
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !289
  %cmp6 = icmp eq i32 %call5, -1, !dbg !290
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !291

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !292

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !294
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !295
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !296
  %conv = trunc i64 %call9 to i32, !dbg !296
  store i32 %conv, i32* %recvResult, align 4, !dbg !297
  %6 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp10 = icmp eq i32 %6, -1, !dbg !300
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !301

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !302
  %cmp12 = icmp eq i32 %7, 0, !dbg !303
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !304

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !305

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !307
  %idxprom = sext i32 %8 to i64, !dbg !308
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !308
  store i8 0, i8* %arrayidx, align 1, !dbg !309
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !310
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !311
  store i32 %call17, i32* %data, align 4, !dbg !312
  br label %do.end, !dbg !313

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !314
  %cmp18 = icmp ne i32 %9, -1, !dbg !316
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !317

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !318
  %call21 = call i32 @close(i32 %10), !dbg !320
  br label %if.end22, !dbg !321

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !322

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !323
  %cmp24 = icmp ne i32 %11, 5, !dbg !325
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !326

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !327
  br label %if.end40, !dbg !329

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !330, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !334, metadata !DIExpression()), !dbg !335
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !335
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !335
  %13 = load i32, i32* %data, align 4, !dbg !336
  %cmp27 = icmp sge i32 %13, 0, !dbg !338
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !339

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !340
  %cmp29 = icmp slt i32 %14, 10, !dbg !341
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !342

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !343
  %idxprom32 = sext i32 %15 to i64, !dbg !345
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !345
  store i32 1, i32* %arrayidx33, align 4, !dbg !346
  store i32 0, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !349

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !350
  %cmp34 = icmp slt i32 %16, 10, !dbg !352
  br i1 %cmp34, label %for.body, label %for.end, !dbg !353

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !354
  %idxprom36 = sext i32 %17 to i64, !dbg !356
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !356
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !356
  call void @printIntLine(i32 %18), !dbg !357
  br label %for.inc, !dbg !358

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !359
  %inc = add nsw i32 %19, 1, !dbg !359
  store i32 %inc, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !360, !llvm.loop !361

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !363

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !364
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !367 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !368, metadata !DIExpression()), !dbg !369
  store i32 -1, i32* %data, align 4, !dbg !370
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !371
  %cmp = icmp eq i32 %0, 5, !dbg !373
  br i1 %cmp, label %if.then, label %if.end23, !dbg !374

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !375, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 -1, i32* %connectSocket, align 4, !dbg !382
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !383, metadata !DIExpression()), !dbg !384
  br label %do.body, !dbg !385

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !386
  store i32 %call, i32* %connectSocket, align 4, !dbg !388
  %1 = load i32, i32* %connectSocket, align 4, !dbg !389
  %cmp1 = icmp eq i32 %1, -1, !dbg !391
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !392

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !393

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !395
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !395
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !396
  store i16 2, i16* %sin_family, align 4, !dbg !397
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !398
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !399
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !400
  store i32 %call3, i32* %s_addr, align 4, !dbg !401
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !402
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !403
  store i16 %call4, i16* %sin_port, align 2, !dbg !404
  %3 = load i32, i32* %connectSocket, align 4, !dbg !405
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !407
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !408
  %cmp6 = icmp eq i32 %call5, -1, !dbg !409
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !410

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !411

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !413
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !414
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !415
  %conv = trunc i64 %call9 to i32, !dbg !415
  store i32 %conv, i32* %recvResult, align 4, !dbg !416
  %6 = load i32, i32* %recvResult, align 4, !dbg !417
  %cmp10 = icmp eq i32 %6, -1, !dbg !419
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !420

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !421
  %cmp12 = icmp eq i32 %7, 0, !dbg !422
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !423

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !424

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !426
  %idxprom = sext i32 %8 to i64, !dbg !427
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !427
  store i8 0, i8* %arrayidx, align 1, !dbg !428
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !429
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !430
  store i32 %call17, i32* %data, align 4, !dbg !431
  br label %do.end, !dbg !432

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !433
  %cmp18 = icmp ne i32 %9, -1, !dbg !435
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !436

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !437
  %call21 = call i32 @close(i32 %10), !dbg !439
  br label %if.end22, !dbg !440

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !441

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !442
  %cmp24 = icmp eq i32 %11, 5, !dbg !444
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !445

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !450, metadata !DIExpression()), !dbg !451
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !451
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !451
  %13 = load i32, i32* %data, align 4, !dbg !452
  %cmp27 = icmp sge i32 %13, 0, !dbg !454
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !455

land.lhs.true:                                    ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !456
  %cmp29 = icmp slt i32 %14, 10, !dbg !457
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !458

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !459
  %idxprom32 = sext i32 %15 to i64, !dbg !461
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !461
  store i32 1, i32* %arrayidx33, align 4, !dbg !462
  store i32 0, i32* %i, align 4, !dbg !463
  br label %for.cond, !dbg !465

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !466
  %cmp34 = icmp slt i32 %16, 10, !dbg !468
  br i1 %cmp34, label %for.body, label %for.end, !dbg !469

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !470
  %idxprom36 = sext i32 %17 to i64, !dbg !472
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !472
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !472
  call void @printIntLine(i32 %18), !dbg !473
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !475
  %inc = add nsw i32 %19, 1, !dbg !475
  store i32 %inc, i32* %i, align 4, !dbg !475
  br label %for.cond, !dbg !476, !llvm.loop !477

for.end:                                          ; preds = %for.cond
  br label %if.end38, !dbg !479

if.else:                                          ; preds = %land.lhs.true, %if.then26
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !480
  br label %if.end38

if.end38:                                         ; preds = %if.else, %for.end
  br label %if.end39, !dbg !482

if.end39:                                         ; preds = %if.end38, %if.end23
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !484 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !485, metadata !DIExpression()), !dbg !486
  store i32 -1, i32* %data, align 4, !dbg !487
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !488
  %cmp = icmp ne i32 %0, 5, !dbg !490
  br i1 %cmp, label %if.then, label %if.else, !dbg !491

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !492
  br label %if.end, !dbg !494

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !495
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !497
  %cmp1 = icmp eq i32 %1, 5, !dbg !499
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !500

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !501, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !505, metadata !DIExpression()), !dbg !506
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !506
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !506
  %3 = load i32, i32* %data, align 4, !dbg !507
  %cmp3 = icmp sge i32 %3, 0, !dbg !509
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !510

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !511
  %idxprom = sext i32 %4 to i64, !dbg !513
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !513
  store i32 1, i32* %arrayidx, align 4, !dbg !514
  store i32 0, i32* %i, align 4, !dbg !515
  br label %for.cond, !dbg !517

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !518
  %cmp5 = icmp slt i32 %5, 10, !dbg !520
  br i1 %cmp5, label %for.body, label %for.end, !dbg !521

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !522
  %idxprom6 = sext i32 %6 to i64, !dbg !524
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !524
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !524
  call void @printIntLine(i32 %7), !dbg !525
  br label %for.inc, !dbg !526

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !527
  %inc = add nsw i32 %8, 1, !dbg !527
  store i32 %inc, i32* %i, align 4, !dbg !527
  br label %for.cond, !dbg !528, !llvm.loop !529

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !531

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !532
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !534

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !536 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !537, metadata !DIExpression()), !dbg !538
  store i32 -1, i32* %data, align 4, !dbg !539
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !540
  %cmp = icmp eq i32 %0, 5, !dbg !542
  br i1 %cmp, label %if.then, label %if.end, !dbg !543

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !544
  br label %if.end, !dbg !546

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !547
  %cmp1 = icmp eq i32 %1, 5, !dbg !549
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !550

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !551, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !555, metadata !DIExpression()), !dbg !556
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !556
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !556
  %3 = load i32, i32* %data, align 4, !dbg !557
  %cmp3 = icmp sge i32 %3, 0, !dbg !559
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !560

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !561
  %idxprom = sext i32 %4 to i64, !dbg !563
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !563
  store i32 1, i32* %arrayidx, align 4, !dbg !564
  store i32 0, i32* %i, align 4, !dbg !565
  br label %for.cond, !dbg !567

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !568
  %cmp5 = icmp slt i32 %5, 10, !dbg !570
  br i1 %cmp5, label %for.body, label %for.end, !dbg !571

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !572
  %idxprom6 = sext i32 %6 to i64, !dbg !574
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !574
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !574
  call void @printIntLine(i32 %7), !dbg !575
  br label %for.inc, !dbg !576

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !577
  %inc = add nsw i32 %8, 1, !dbg !577
  store i32 %inc, i32* %i, align 4, !dbg !577
  br label %for.cond, !dbg !578, !llvm.loop !579

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !581

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !582
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !584

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good() #0 !dbg !586 {
entry:
  call void @goodB2G1(), !dbg !587
  call void @goodB2G2(), !dbg !588
  call void @goodG2B1(), !dbg !589
  call void @goodG2B2(), !dbg !590
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !592 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !595, metadata !DIExpression()), !dbg !596
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !597
  %0 = load i8*, i8** %line.addr, align 8, !dbg !598
  %cmp = icmp ne i8* %0, null, !dbg !600
  br i1 %cmp, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !602
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !604
  br label %if.end, !dbg !605

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !606
  ret void, !dbg !607
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !608 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i8*, i8** %line.addr, align 8, !dbg !611
  %cmp = icmp ne i8* %0, null, !dbg !613
  br i1 %cmp, label %if.then, label %if.end, !dbg !614

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !617
  br label %if.end, !dbg !618

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !620 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load i32*, i32** %line.addr, align 8, !dbg !628
  %cmp = icmp ne i32* %0, null, !dbg !630
  br i1 %cmp, label %if.then, label %if.end, !dbg !631

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !632
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !634
  br label %if.end, !dbg !635

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !636
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !637 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !645 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !651
  %conv = sext i16 %0 to i32, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !654 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !660
  %conv = fpext float %0 to double, !dbg !660
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !663 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !667, metadata !DIExpression()), !dbg !668
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !669
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !670
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !672 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !680
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !681
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !683 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !693 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !698
  %conv = sext i8 %0 to i32, !dbg !698
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !699
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !701 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !706, metadata !DIExpression()), !dbg !710
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !711
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !712
  store i32 %0, i32* %arrayidx, align 4, !dbg !713
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !714
  store i32 0, i32* %arrayidx1, align 4, !dbg !715
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !716
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !717
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !719 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !724
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !725
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !727 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !730, metadata !DIExpression()), !dbg !731
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !732
  %conv = zext i8 %0 to i32, !dbg !732
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !733
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !735 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !739, metadata !DIExpression()), !dbg !740
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !741
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !742
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !744 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !754, metadata !DIExpression()), !dbg !755
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !756
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !757
  %1 = load i32, i32* %intOne, align 4, !dbg !757
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !758
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !759
  %3 = load i32, i32* %intTwo, align 4, !dbg !759
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !760
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !762 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !766, metadata !DIExpression()), !dbg !767
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !768, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata i64* %i, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 0, i64* %i, align 8, !dbg !772
  br label %for.cond, !dbg !774

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !775
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !777
  %cmp = icmp ult i64 %0, %1, !dbg !778
  br i1 %cmp, label %for.body, label %for.end, !dbg !779

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !780
  %3 = load i64, i64* %i, align 8, !dbg !782
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !780
  %4 = load i8, i8* %arrayidx, align 1, !dbg !780
  %conv = zext i8 %4 to i32, !dbg !780
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !783
  br label %for.inc, !dbg !784

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !785
  %inc = add i64 %5, 1, !dbg !785
  store i64 %inc, i64* %i, align 8, !dbg !785
  br label %for.cond, !dbg !786, !llvm.loop !787

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !789
  ret void, !dbg !790
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !791 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 0, i64* %numWritten, align 8, !dbg !801
  br label %while.cond, !dbg !802

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !803
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !804
  %cmp = icmp ult i64 %0, %1, !dbg !805
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !806

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !807
  %2 = load i16*, i16** %call, align 8, !dbg !807
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !807
  %4 = load i64, i64* %numWritten, align 8, !dbg !807
  %mul = mul i64 2, %4, !dbg !807
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !807
  %5 = load i8, i8* %arrayidx, align 1, !dbg !807
  %conv = sext i8 %5 to i32, !dbg !807
  %idxprom = sext i32 %conv to i64, !dbg !807
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !807
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !807
  %conv2 = zext i16 %6 to i32, !dbg !807
  %and = and i32 %conv2, 4096, !dbg !807
  %tobool = icmp ne i32 %and, 0, !dbg !807
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !808

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !809
  %7 = load i16*, i16** %call3, align 8, !dbg !809
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !809
  %9 = load i64, i64* %numWritten, align 8, !dbg !809
  %mul4 = mul i64 2, %9, !dbg !809
  %add = add i64 %mul4, 1, !dbg !809
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !809
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !809
  %conv6 = sext i8 %10 to i32, !dbg !809
  %idxprom7 = sext i32 %conv6 to i64, !dbg !809
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !809
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !809
  %conv9 = zext i16 %11 to i32, !dbg !809
  %and10 = and i32 %conv9, 4096, !dbg !809
  %tobool11 = icmp ne i32 %and10, 0, !dbg !808
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !810
  br i1 %12, label %while.body, label %while.end, !dbg !802

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !811, metadata !DIExpression()), !dbg !813
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !814
  %14 = load i64, i64* %numWritten, align 8, !dbg !815
  %mul12 = mul i64 2, %14, !dbg !816
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !814
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !817
  %15 = load i32, i32* %byte, align 4, !dbg !818
  %conv15 = trunc i32 %15 to i8, !dbg !819
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !820
  %17 = load i64, i64* %numWritten, align 8, !dbg !821
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !820
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !822
  %18 = load i64, i64* %numWritten, align 8, !dbg !823
  %inc = add i64 %18, 1, !dbg !823
  store i64 %inc, i64* %numWritten, align 8, !dbg !823
  br label %while.cond, !dbg !802, !llvm.loop !824

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !826
  ret i64 %19, !dbg !827
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !828 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !831, metadata !DIExpression()), !dbg !832
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !833, metadata !DIExpression()), !dbg !834
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !837, metadata !DIExpression()), !dbg !838
  store i64 0, i64* %numWritten, align 8, !dbg !838
  br label %while.cond, !dbg !839

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !840
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !841
  %cmp = icmp ult i64 %0, %1, !dbg !842
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !843

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !844
  %3 = load i64, i64* %numWritten, align 8, !dbg !845
  %mul = mul i64 2, %3, !dbg !846
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !844
  %4 = load i32, i32* %arrayidx, align 4, !dbg !844
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !847
  %tobool = icmp ne i32 %call, 0, !dbg !847
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !848

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !849
  %6 = load i64, i64* %numWritten, align 8, !dbg !850
  %mul1 = mul i64 2, %6, !dbg !851
  %add = add i64 %mul1, 1, !dbg !852
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !849
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !849
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !853
  %tobool4 = icmp ne i32 %call3, 0, !dbg !848
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !854
  br i1 %8, label %while.body, label %while.end, !dbg !839

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !855, metadata !DIExpression()), !dbg !857
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !858
  %10 = load i64, i64* %numWritten, align 8, !dbg !859
  %mul5 = mul i64 2, %10, !dbg !860
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !858
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !861
  %11 = load i32, i32* %byte, align 4, !dbg !862
  %conv = trunc i32 %11 to i8, !dbg !863
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !864
  %13 = load i64, i64* %numWritten, align 8, !dbg !865
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !864
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !866
  %14 = load i64, i64* %numWritten, align 8, !dbg !867
  %inc = add i64 %14, 1, !dbg !867
  store i64 %inc, i64* %numWritten, align 8, !dbg !867
  br label %while.cond, !dbg !839, !llvm.loop !868

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !870
  ret i64 %15, !dbg !871
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !872 {
entry:
  ret i32 1, !dbg !875
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !876 {
entry:
  ret i32 0, !dbg !877
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !878 {
entry:
  %call = call i32 @rand() #7, !dbg !879
  %rem = srem i32 %call, 2, !dbg !880
  ret i32 %rem, !dbg !881
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !882 {
entry:
  ret void, !dbg !883
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !884 {
entry:
  ret void, !dbg !885
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !886 {
entry:
  ret void, !dbg !887
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !888 {
entry:
  ret void, !dbg !889
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !890 {
entry:
  ret void, !dbg !891
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !892 {
entry:
  ret void, !dbg !893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !894 {
entry:
  ret void, !dbg !895
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !896 {
entry:
  ret void, !dbg !897
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !898 {
entry:
  ret void, !dbg !899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !900 {
entry:
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !902 {
entry:
  ret void, !dbg !903
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !904 {
entry:
  ret void, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !906 {
entry:
  ret void, !dbg !907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !908 {
entry:
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !910 {
entry:
  ret void, !dbg !911
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !912 {
entry:
  ret void, !dbg !913
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !914 {
entry:
  ret void, !dbg !915
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !916 {
entry:
  ret void, !dbg !917
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

!llvm.dbg.cu = !{!2, !65}
!llvm.ident = !{!103, !103}
!llvm.module.flags = !{!104, !105, !106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 46, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_521/source_code")
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
!61 = !{!0}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !65, file: !66, line: 174, type: !62, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !83, globals: !86, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_521/source_code")
!67 = !{!68}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 46, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!71 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!72 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!83 = !{!84, !62, !55, !85}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!63, !87, !89, !91, !93, !95, !97, !99}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !65, file: !66, line: 175, type: !62, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !65, file: !66, line: 176, type: !62, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "globalTrue", scope: !65, file: !66, line: 181, type: !62, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "globalFalse", scope: !65, file: !66, line: 182, type: !62, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "globalFive", scope: !65, file: !66, line: 183, type: !62, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "globalArgc", scope: !65, file: !66, line: 214, type: !62, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "globalArgv", scope: !65, file: !66, line: 215, type: !101, isLocal: false, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!103 = !{!"clang version 12.0.0"}
!104 = !{i32 7, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_bad", scope: !3, file: !3, line: 50, type: !108, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !{}
!111 = !DILocalVariable(name: "data", scope: !107, file: !3, line: 52, type: !62)
!112 = !DILocation(line: 52, column: 9, scope: !107)
!113 = !DILocation(line: 54, column: 10, scope: !107)
!114 = !DILocation(line: 55, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !3, line: 55, column: 8)
!116 = !DILocation(line: 55, column: 25, scope: !115)
!117 = !DILocation(line: 55, column: 8, scope: !107)
!118 = !DILocalVariable(name: "recvResult", scope: !119, file: !3, line: 62, type: !62)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 57, column: 9)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 56, column: 5)
!121 = !DILocation(line: 62, column: 17, scope: !119)
!122 = !DILocalVariable(name: "service", scope: !119, file: !3, line: 63, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !124)
!124 = !{!125, !126, !132, !139}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !123, file: !19, line: 240, baseType: !53, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !123, file: !19, line: 241, baseType: !127, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 25, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 40, baseType: !55)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !123, file: !19, line: 242, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !133, file: !19, line: 33, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 26, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !131, line: 42, baseType: !7)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !123, file: !19, line: 245, baseType: !140, size: 64, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DILocation(line: 63, column: 32, scope: !119)
!144 = !DILocalVariable(name: "connectSocket", scope: !119, file: !3, line: 64, type: !62)
!145 = !DILocation(line: 64, column: 20, scope: !119)
!146 = !DILocalVariable(name: "inputBuffer", scope: !119, file: !3, line: 65, type: !57)
!147 = !DILocation(line: 65, column: 18, scope: !119)
!148 = !DILocation(line: 66, column: 13, scope: !119)
!149 = !DILocation(line: 76, column: 33, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !3, line: 67, column: 13)
!151 = !DILocation(line: 76, column: 31, scope: !150)
!152 = !DILocation(line: 77, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 77, column: 21)
!154 = !DILocation(line: 77, column: 35, scope: !153)
!155 = !DILocation(line: 77, column: 21, scope: !150)
!156 = !DILocation(line: 79, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 78, column: 17)
!158 = !DILocation(line: 81, column: 17, scope: !150)
!159 = !DILocation(line: 82, column: 25, scope: !150)
!160 = !DILocation(line: 82, column: 36, scope: !150)
!161 = !DILocation(line: 83, column: 43, scope: !150)
!162 = !DILocation(line: 83, column: 25, scope: !150)
!163 = !DILocation(line: 83, column: 34, scope: !150)
!164 = !DILocation(line: 83, column: 41, scope: !150)
!165 = !DILocation(line: 84, column: 36, scope: !150)
!166 = !DILocation(line: 84, column: 25, scope: !150)
!167 = !DILocation(line: 84, column: 34, scope: !150)
!168 = !DILocation(line: 85, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !150, file: !3, line: 85, column: 21)
!170 = !DILocation(line: 85, column: 44, scope: !169)
!171 = !DILocation(line: 85, column: 21, scope: !169)
!172 = !DILocation(line: 85, column: 89, scope: !169)
!173 = !DILocation(line: 85, column: 21, scope: !150)
!174 = !DILocation(line: 87, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !3, line: 86, column: 17)
!176 = !DILocation(line: 91, column: 35, scope: !150)
!177 = !DILocation(line: 91, column: 50, scope: !150)
!178 = !DILocation(line: 91, column: 30, scope: !150)
!179 = !DILocation(line: 91, column: 28, scope: !150)
!180 = !DILocation(line: 92, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !150, file: !3, line: 92, column: 21)
!182 = !DILocation(line: 92, column: 32, scope: !181)
!183 = !DILocation(line: 92, column: 48, scope: !181)
!184 = !DILocation(line: 92, column: 51, scope: !181)
!185 = !DILocation(line: 92, column: 62, scope: !181)
!186 = !DILocation(line: 92, column: 21, scope: !150)
!187 = !DILocation(line: 94, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !3, line: 93, column: 17)
!189 = !DILocation(line: 97, column: 29, scope: !150)
!190 = !DILocation(line: 97, column: 17, scope: !150)
!191 = !DILocation(line: 97, column: 41, scope: !150)
!192 = !DILocation(line: 99, column: 29, scope: !150)
!193 = !DILocation(line: 99, column: 24, scope: !150)
!194 = !DILocation(line: 99, column: 22, scope: !150)
!195 = !DILocation(line: 100, column: 13, scope: !150)
!196 = !DILocation(line: 102, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !119, file: !3, line: 102, column: 17)
!198 = !DILocation(line: 102, column: 31, scope: !197)
!199 = !DILocation(line: 102, column: 17, scope: !119)
!200 = !DILocation(line: 104, column: 30, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 103, column: 13)
!202 = !DILocation(line: 104, column: 17, scope: !201)
!203 = !DILocation(line: 105, column: 13, scope: !201)
!204 = !DILocation(line: 113, column: 5, scope: !120)
!205 = !DILocation(line: 114, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !107, file: !3, line: 114, column: 8)
!207 = !DILocation(line: 114, column: 25, scope: !206)
!208 = !DILocation(line: 114, column: 8, scope: !107)
!209 = !DILocalVariable(name: "i", scope: !210, file: !3, line: 117, type: !62)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 116, column: 9)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 115, column: 5)
!212 = !DILocation(line: 117, column: 17, scope: !210)
!213 = !DILocalVariable(name: "buffer", scope: !210, file: !3, line: 118, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 320, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 10)
!217 = !DILocation(line: 118, column: 17, scope: !210)
!218 = !DILocation(line: 121, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !210, file: !3, line: 121, column: 17)
!220 = !DILocation(line: 121, column: 22, scope: !219)
!221 = !DILocation(line: 121, column: 17, scope: !210)
!222 = !DILocation(line: 123, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 122, column: 13)
!224 = !DILocation(line: 123, column: 17, scope: !223)
!225 = !DILocation(line: 123, column: 30, scope: !223)
!226 = !DILocation(line: 125, column: 23, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 125, column: 17)
!228 = !DILocation(line: 125, column: 21, scope: !227)
!229 = !DILocation(line: 125, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 125, column: 17)
!231 = !DILocation(line: 125, column: 30, scope: !230)
!232 = !DILocation(line: 125, column: 17, scope: !227)
!233 = !DILocation(line: 127, column: 41, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 126, column: 17)
!235 = !DILocation(line: 127, column: 34, scope: !234)
!236 = !DILocation(line: 127, column: 21, scope: !234)
!237 = !DILocation(line: 128, column: 17, scope: !234)
!238 = !DILocation(line: 125, column: 37, scope: !230)
!239 = !DILocation(line: 125, column: 17, scope: !230)
!240 = distinct !{!240, !232, !241, !242}
!241 = !DILocation(line: 128, column: 17, scope: !227)
!242 = !{!"llvm.loop.mustprogress"}
!243 = !DILocation(line: 129, column: 13, scope: !223)
!244 = !DILocation(line: 132, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !219, file: !3, line: 131, column: 13)
!246 = !DILocation(line: 135, column: 5, scope: !211)
!247 = !DILocation(line: 136, column: 1, scope: !107)
!248 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 143, type: !108, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!249 = !DILocalVariable(name: "data", scope: !248, file: !3, line: 145, type: !62)
!250 = !DILocation(line: 145, column: 9, scope: !248)
!251 = !DILocation(line: 147, column: 10, scope: !248)
!252 = !DILocation(line: 148, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 148, column: 8)
!254 = !DILocation(line: 148, column: 25, scope: !253)
!255 = !DILocation(line: 148, column: 8, scope: !248)
!256 = !DILocalVariable(name: "recvResult", scope: !257, file: !3, line: 155, type: !62)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 150, column: 9)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 149, column: 5)
!259 = !DILocation(line: 155, column: 17, scope: !257)
!260 = !DILocalVariable(name: "service", scope: !257, file: !3, line: 156, type: !123)
!261 = !DILocation(line: 156, column: 32, scope: !257)
!262 = !DILocalVariable(name: "connectSocket", scope: !257, file: !3, line: 157, type: !62)
!263 = !DILocation(line: 157, column: 20, scope: !257)
!264 = !DILocalVariable(name: "inputBuffer", scope: !257, file: !3, line: 158, type: !57)
!265 = !DILocation(line: 158, column: 18, scope: !257)
!266 = !DILocation(line: 159, column: 13, scope: !257)
!267 = !DILocation(line: 169, column: 33, scope: !268)
!268 = distinct !DILexicalBlock(scope: !257, file: !3, line: 160, column: 13)
!269 = !DILocation(line: 169, column: 31, scope: !268)
!270 = !DILocation(line: 170, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 170, column: 21)
!272 = !DILocation(line: 170, column: 35, scope: !271)
!273 = !DILocation(line: 170, column: 21, scope: !268)
!274 = !DILocation(line: 172, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 171, column: 17)
!276 = !DILocation(line: 174, column: 17, scope: !268)
!277 = !DILocation(line: 175, column: 25, scope: !268)
!278 = !DILocation(line: 175, column: 36, scope: !268)
!279 = !DILocation(line: 176, column: 43, scope: !268)
!280 = !DILocation(line: 176, column: 25, scope: !268)
!281 = !DILocation(line: 176, column: 34, scope: !268)
!282 = !DILocation(line: 176, column: 41, scope: !268)
!283 = !DILocation(line: 177, column: 36, scope: !268)
!284 = !DILocation(line: 177, column: 25, scope: !268)
!285 = !DILocation(line: 177, column: 34, scope: !268)
!286 = !DILocation(line: 178, column: 29, scope: !287)
!287 = distinct !DILexicalBlock(scope: !268, file: !3, line: 178, column: 21)
!288 = !DILocation(line: 178, column: 44, scope: !287)
!289 = !DILocation(line: 178, column: 21, scope: !287)
!290 = !DILocation(line: 178, column: 89, scope: !287)
!291 = !DILocation(line: 178, column: 21, scope: !268)
!292 = !DILocation(line: 180, column: 21, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !3, line: 179, column: 17)
!294 = !DILocation(line: 184, column: 35, scope: !268)
!295 = !DILocation(line: 184, column: 50, scope: !268)
!296 = !DILocation(line: 184, column: 30, scope: !268)
!297 = !DILocation(line: 184, column: 28, scope: !268)
!298 = !DILocation(line: 185, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !268, file: !3, line: 185, column: 21)
!300 = !DILocation(line: 185, column: 32, scope: !299)
!301 = !DILocation(line: 185, column: 48, scope: !299)
!302 = !DILocation(line: 185, column: 51, scope: !299)
!303 = !DILocation(line: 185, column: 62, scope: !299)
!304 = !DILocation(line: 185, column: 21, scope: !268)
!305 = !DILocation(line: 187, column: 21, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !3, line: 186, column: 17)
!307 = !DILocation(line: 190, column: 29, scope: !268)
!308 = !DILocation(line: 190, column: 17, scope: !268)
!309 = !DILocation(line: 190, column: 41, scope: !268)
!310 = !DILocation(line: 192, column: 29, scope: !268)
!311 = !DILocation(line: 192, column: 24, scope: !268)
!312 = !DILocation(line: 192, column: 22, scope: !268)
!313 = !DILocation(line: 193, column: 13, scope: !268)
!314 = !DILocation(line: 195, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !257, file: !3, line: 195, column: 17)
!316 = !DILocation(line: 195, column: 31, scope: !315)
!317 = !DILocation(line: 195, column: 17, scope: !257)
!318 = !DILocation(line: 197, column: 30, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 196, column: 13)
!320 = !DILocation(line: 197, column: 17, scope: !319)
!321 = !DILocation(line: 198, column: 13, scope: !319)
!322 = !DILocation(line: 206, column: 5, scope: !258)
!323 = !DILocation(line: 207, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !248, file: !3, line: 207, column: 8)
!325 = !DILocation(line: 207, column: 25, scope: !324)
!326 = !DILocation(line: 207, column: 8, scope: !248)
!327 = !DILocation(line: 210, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 208, column: 5)
!329 = !DILocation(line: 211, column: 5, scope: !328)
!330 = !DILocalVariable(name: "i", scope: !331, file: !3, line: 215, type: !62)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 214, column: 9)
!332 = distinct !DILexicalBlock(scope: !324, file: !3, line: 213, column: 5)
!333 = !DILocation(line: 215, column: 17, scope: !331)
!334 = !DILocalVariable(name: "buffer", scope: !331, file: !3, line: 216, type: !214)
!335 = !DILocation(line: 216, column: 17, scope: !331)
!336 = !DILocation(line: 218, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !3, line: 218, column: 17)
!338 = !DILocation(line: 218, column: 22, scope: !337)
!339 = !DILocation(line: 218, column: 27, scope: !337)
!340 = !DILocation(line: 218, column: 30, scope: !337)
!341 = !DILocation(line: 218, column: 35, scope: !337)
!342 = !DILocation(line: 218, column: 17, scope: !331)
!343 = !DILocation(line: 220, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !3, line: 219, column: 13)
!345 = !DILocation(line: 220, column: 17, scope: !344)
!346 = !DILocation(line: 220, column: 30, scope: !344)
!347 = !DILocation(line: 222, column: 23, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 222, column: 17)
!349 = !DILocation(line: 222, column: 21, scope: !348)
!350 = !DILocation(line: 222, column: 28, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 222, column: 17)
!352 = !DILocation(line: 222, column: 30, scope: !351)
!353 = !DILocation(line: 222, column: 17, scope: !348)
!354 = !DILocation(line: 224, column: 41, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 223, column: 17)
!356 = !DILocation(line: 224, column: 34, scope: !355)
!357 = !DILocation(line: 224, column: 21, scope: !355)
!358 = !DILocation(line: 225, column: 17, scope: !355)
!359 = !DILocation(line: 222, column: 37, scope: !351)
!360 = !DILocation(line: 222, column: 17, scope: !351)
!361 = distinct !{!361, !353, !362, !242}
!362 = !DILocation(line: 225, column: 17, scope: !348)
!363 = !DILocation(line: 226, column: 13, scope: !344)
!364 = !DILocation(line: 229, column: 17, scope: !365)
!365 = distinct !DILexicalBlock(scope: !337, file: !3, line: 228, column: 13)
!366 = !DILocation(line: 233, column: 1, scope: !248)
!367 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 236, type: !108, scopeLine: 237, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!368 = !DILocalVariable(name: "data", scope: !367, file: !3, line: 238, type: !62)
!369 = !DILocation(line: 238, column: 9, scope: !367)
!370 = !DILocation(line: 240, column: 10, scope: !367)
!371 = !DILocation(line: 241, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 241, column: 8)
!373 = !DILocation(line: 241, column: 25, scope: !372)
!374 = !DILocation(line: 241, column: 8, scope: !367)
!375 = !DILocalVariable(name: "recvResult", scope: !376, file: !3, line: 248, type: !62)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 243, column: 9)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 242, column: 5)
!378 = !DILocation(line: 248, column: 17, scope: !376)
!379 = !DILocalVariable(name: "service", scope: !376, file: !3, line: 249, type: !123)
!380 = !DILocation(line: 249, column: 32, scope: !376)
!381 = !DILocalVariable(name: "connectSocket", scope: !376, file: !3, line: 250, type: !62)
!382 = !DILocation(line: 250, column: 20, scope: !376)
!383 = !DILocalVariable(name: "inputBuffer", scope: !376, file: !3, line: 251, type: !57)
!384 = !DILocation(line: 251, column: 18, scope: !376)
!385 = !DILocation(line: 252, column: 13, scope: !376)
!386 = !DILocation(line: 262, column: 33, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !3, line: 253, column: 13)
!388 = !DILocation(line: 262, column: 31, scope: !387)
!389 = !DILocation(line: 263, column: 21, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 263, column: 21)
!391 = !DILocation(line: 263, column: 35, scope: !390)
!392 = !DILocation(line: 263, column: 21, scope: !387)
!393 = !DILocation(line: 265, column: 21, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 264, column: 17)
!395 = !DILocation(line: 267, column: 17, scope: !387)
!396 = !DILocation(line: 268, column: 25, scope: !387)
!397 = !DILocation(line: 268, column: 36, scope: !387)
!398 = !DILocation(line: 269, column: 43, scope: !387)
!399 = !DILocation(line: 269, column: 25, scope: !387)
!400 = !DILocation(line: 269, column: 34, scope: !387)
!401 = !DILocation(line: 269, column: 41, scope: !387)
!402 = !DILocation(line: 270, column: 36, scope: !387)
!403 = !DILocation(line: 270, column: 25, scope: !387)
!404 = !DILocation(line: 270, column: 34, scope: !387)
!405 = !DILocation(line: 271, column: 29, scope: !406)
!406 = distinct !DILexicalBlock(scope: !387, file: !3, line: 271, column: 21)
!407 = !DILocation(line: 271, column: 44, scope: !406)
!408 = !DILocation(line: 271, column: 21, scope: !406)
!409 = !DILocation(line: 271, column: 89, scope: !406)
!410 = !DILocation(line: 271, column: 21, scope: !387)
!411 = !DILocation(line: 273, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !3, line: 272, column: 17)
!413 = !DILocation(line: 277, column: 35, scope: !387)
!414 = !DILocation(line: 277, column: 50, scope: !387)
!415 = !DILocation(line: 277, column: 30, scope: !387)
!416 = !DILocation(line: 277, column: 28, scope: !387)
!417 = !DILocation(line: 278, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !387, file: !3, line: 278, column: 21)
!419 = !DILocation(line: 278, column: 32, scope: !418)
!420 = !DILocation(line: 278, column: 48, scope: !418)
!421 = !DILocation(line: 278, column: 51, scope: !418)
!422 = !DILocation(line: 278, column: 62, scope: !418)
!423 = !DILocation(line: 278, column: 21, scope: !387)
!424 = !DILocation(line: 280, column: 21, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !3, line: 279, column: 17)
!426 = !DILocation(line: 283, column: 29, scope: !387)
!427 = !DILocation(line: 283, column: 17, scope: !387)
!428 = !DILocation(line: 283, column: 41, scope: !387)
!429 = !DILocation(line: 285, column: 29, scope: !387)
!430 = !DILocation(line: 285, column: 24, scope: !387)
!431 = !DILocation(line: 285, column: 22, scope: !387)
!432 = !DILocation(line: 286, column: 13, scope: !387)
!433 = !DILocation(line: 288, column: 17, scope: !434)
!434 = distinct !DILexicalBlock(scope: !376, file: !3, line: 288, column: 17)
!435 = !DILocation(line: 288, column: 31, scope: !434)
!436 = !DILocation(line: 288, column: 17, scope: !376)
!437 = !DILocation(line: 290, column: 30, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 289, column: 13)
!439 = !DILocation(line: 290, column: 17, scope: !438)
!440 = !DILocation(line: 291, column: 13, scope: !438)
!441 = !DILocation(line: 299, column: 5, scope: !377)
!442 = !DILocation(line: 300, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !367, file: !3, line: 300, column: 8)
!444 = !DILocation(line: 300, column: 25, scope: !443)
!445 = !DILocation(line: 300, column: 8, scope: !367)
!446 = !DILocalVariable(name: "i", scope: !447, file: !3, line: 303, type: !62)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 302, column: 9)
!448 = distinct !DILexicalBlock(scope: !443, file: !3, line: 301, column: 5)
!449 = !DILocation(line: 303, column: 17, scope: !447)
!450 = !DILocalVariable(name: "buffer", scope: !447, file: !3, line: 304, type: !214)
!451 = !DILocation(line: 304, column: 17, scope: !447)
!452 = !DILocation(line: 306, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !3, line: 306, column: 17)
!454 = !DILocation(line: 306, column: 22, scope: !453)
!455 = !DILocation(line: 306, column: 27, scope: !453)
!456 = !DILocation(line: 306, column: 30, scope: !453)
!457 = !DILocation(line: 306, column: 35, scope: !453)
!458 = !DILocation(line: 306, column: 17, scope: !447)
!459 = !DILocation(line: 308, column: 24, scope: !460)
!460 = distinct !DILexicalBlock(scope: !453, file: !3, line: 307, column: 13)
!461 = !DILocation(line: 308, column: 17, scope: !460)
!462 = !DILocation(line: 308, column: 30, scope: !460)
!463 = !DILocation(line: 310, column: 23, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !3, line: 310, column: 17)
!465 = !DILocation(line: 310, column: 21, scope: !464)
!466 = !DILocation(line: 310, column: 28, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 310, column: 17)
!468 = !DILocation(line: 310, column: 30, scope: !467)
!469 = !DILocation(line: 310, column: 17, scope: !464)
!470 = !DILocation(line: 312, column: 41, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 311, column: 17)
!472 = !DILocation(line: 312, column: 34, scope: !471)
!473 = !DILocation(line: 312, column: 21, scope: !471)
!474 = !DILocation(line: 313, column: 17, scope: !471)
!475 = !DILocation(line: 310, column: 37, scope: !467)
!476 = !DILocation(line: 310, column: 17, scope: !467)
!477 = distinct !{!477, !469, !478, !242}
!478 = !DILocation(line: 313, column: 17, scope: !464)
!479 = !DILocation(line: 314, column: 13, scope: !460)
!480 = !DILocation(line: 317, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !453, file: !3, line: 316, column: 13)
!482 = !DILocation(line: 320, column: 5, scope: !448)
!483 = !DILocation(line: 321, column: 1, scope: !367)
!484 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 324, type: !108, scopeLine: 325, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!485 = !DILocalVariable(name: "data", scope: !484, file: !3, line: 326, type: !62)
!486 = !DILocation(line: 326, column: 9, scope: !484)
!487 = !DILocation(line: 328, column: 10, scope: !484)
!488 = !DILocation(line: 329, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 329, column: 8)
!490 = !DILocation(line: 329, column: 25, scope: !489)
!491 = !DILocation(line: 329, column: 8, scope: !484)
!492 = !DILocation(line: 332, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 330, column: 5)
!494 = !DILocation(line: 333, column: 5, scope: !493)
!495 = !DILocation(line: 338, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !3, line: 335, column: 5)
!497 = !DILocation(line: 340, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !484, file: !3, line: 340, column: 8)
!499 = !DILocation(line: 340, column: 25, scope: !498)
!500 = !DILocation(line: 340, column: 8, scope: !484)
!501 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 343, type: !62)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 342, column: 9)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 341, column: 5)
!504 = !DILocation(line: 343, column: 17, scope: !502)
!505 = !DILocalVariable(name: "buffer", scope: !502, file: !3, line: 344, type: !214)
!506 = !DILocation(line: 344, column: 17, scope: !502)
!507 = !DILocation(line: 347, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !502, file: !3, line: 347, column: 17)
!509 = !DILocation(line: 347, column: 22, scope: !508)
!510 = !DILocation(line: 347, column: 17, scope: !502)
!511 = !DILocation(line: 349, column: 24, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 348, column: 13)
!513 = !DILocation(line: 349, column: 17, scope: !512)
!514 = !DILocation(line: 349, column: 30, scope: !512)
!515 = !DILocation(line: 351, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 351, column: 17)
!517 = !DILocation(line: 351, column: 21, scope: !516)
!518 = !DILocation(line: 351, column: 28, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 351, column: 17)
!520 = !DILocation(line: 351, column: 30, scope: !519)
!521 = !DILocation(line: 351, column: 17, scope: !516)
!522 = !DILocation(line: 353, column: 41, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 352, column: 17)
!524 = !DILocation(line: 353, column: 34, scope: !523)
!525 = !DILocation(line: 353, column: 21, scope: !523)
!526 = !DILocation(line: 354, column: 17, scope: !523)
!527 = !DILocation(line: 351, column: 37, scope: !519)
!528 = !DILocation(line: 351, column: 17, scope: !519)
!529 = distinct !{!529, !521, !530, !242}
!530 = !DILocation(line: 354, column: 17, scope: !516)
!531 = !DILocation(line: 355, column: 13, scope: !512)
!532 = !DILocation(line: 358, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !508, file: !3, line: 357, column: 13)
!534 = !DILocation(line: 361, column: 5, scope: !503)
!535 = !DILocation(line: 362, column: 1, scope: !484)
!536 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 365, type: !108, scopeLine: 366, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!537 = !DILocalVariable(name: "data", scope: !536, file: !3, line: 367, type: !62)
!538 = !DILocation(line: 367, column: 9, scope: !536)
!539 = !DILocation(line: 369, column: 10, scope: !536)
!540 = !DILocation(line: 370, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !3, line: 370, column: 8)
!542 = !DILocation(line: 370, column: 25, scope: !541)
!543 = !DILocation(line: 370, column: 8, scope: !536)
!544 = !DILocation(line: 374, column: 14, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 371, column: 5)
!546 = !DILocation(line: 375, column: 5, scope: !545)
!547 = !DILocation(line: 376, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !536, file: !3, line: 376, column: 8)
!549 = !DILocation(line: 376, column: 25, scope: !548)
!550 = !DILocation(line: 376, column: 8, scope: !536)
!551 = !DILocalVariable(name: "i", scope: !552, file: !3, line: 379, type: !62)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 378, column: 9)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 377, column: 5)
!554 = !DILocation(line: 379, column: 17, scope: !552)
!555 = !DILocalVariable(name: "buffer", scope: !552, file: !3, line: 380, type: !214)
!556 = !DILocation(line: 380, column: 17, scope: !552)
!557 = !DILocation(line: 383, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !3, line: 383, column: 17)
!559 = !DILocation(line: 383, column: 22, scope: !558)
!560 = !DILocation(line: 383, column: 17, scope: !552)
!561 = !DILocation(line: 385, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !3, line: 384, column: 13)
!563 = !DILocation(line: 385, column: 17, scope: !562)
!564 = !DILocation(line: 385, column: 30, scope: !562)
!565 = !DILocation(line: 387, column: 23, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 387, column: 17)
!567 = !DILocation(line: 387, column: 21, scope: !566)
!568 = !DILocation(line: 387, column: 28, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !3, line: 387, column: 17)
!570 = !DILocation(line: 387, column: 30, scope: !569)
!571 = !DILocation(line: 387, column: 17, scope: !566)
!572 = !DILocation(line: 389, column: 41, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 388, column: 17)
!574 = !DILocation(line: 389, column: 34, scope: !573)
!575 = !DILocation(line: 389, column: 21, scope: !573)
!576 = !DILocation(line: 390, column: 17, scope: !573)
!577 = !DILocation(line: 387, column: 37, scope: !569)
!578 = !DILocation(line: 387, column: 17, scope: !569)
!579 = distinct !{!579, !571, !580, !242}
!580 = !DILocation(line: 390, column: 17, scope: !566)
!581 = !DILocation(line: 391, column: 13, scope: !562)
!582 = !DILocation(line: 394, column: 17, scope: !583)
!583 = distinct !DILexicalBlock(scope: !558, file: !3, line: 393, column: 13)
!584 = !DILocation(line: 397, column: 5, scope: !553)
!585 = !DILocation(line: 398, column: 1, scope: !536)
!586 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good", scope: !3, file: !3, line: 400, type: !108, scopeLine: 401, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !110)
!587 = !DILocation(line: 402, column: 5, scope: !586)
!588 = !DILocation(line: 403, column: 5, scope: !586)
!589 = !DILocation(line: 404, column: 5, scope: !586)
!590 = !DILocation(line: 405, column: 5, scope: !586)
!591 = !DILocation(line: 406, column: 1, scope: !586)
!592 = distinct !DISubprogram(name: "printLine", scope: !66, file: !66, line: 11, type: !593, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !102}
!595 = !DILocalVariable(name: "line", arg: 1, scope: !592, file: !66, line: 11, type: !102)
!596 = !DILocation(line: 11, column: 25, scope: !592)
!597 = !DILocation(line: 13, column: 1, scope: !592)
!598 = !DILocation(line: 14, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !66, line: 14, column: 8)
!600 = !DILocation(line: 14, column: 13, scope: !599)
!601 = !DILocation(line: 14, column: 8, scope: !592)
!602 = !DILocation(line: 16, column: 24, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !66, line: 15, column: 5)
!604 = !DILocation(line: 16, column: 9, scope: !603)
!605 = !DILocation(line: 17, column: 5, scope: !603)
!606 = !DILocation(line: 18, column: 5, scope: !592)
!607 = !DILocation(line: 19, column: 1, scope: !592)
!608 = distinct !DISubprogram(name: "printSinkLine", scope: !66, file: !66, line: 20, type: !593, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!609 = !DILocalVariable(name: "line", arg: 1, scope: !608, file: !66, line: 20, type: !102)
!610 = !DILocation(line: 20, column: 29, scope: !608)
!611 = !DILocation(line: 22, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !66, line: 22, column: 8)
!613 = !DILocation(line: 22, column: 13, scope: !612)
!614 = !DILocation(line: 22, column: 8, scope: !608)
!615 = !DILocation(line: 24, column: 24, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !66, line: 23, column: 5)
!617 = !DILocation(line: 24, column: 9, scope: !616)
!618 = !DILocation(line: 25, column: 5, scope: !616)
!619 = !DILocation(line: 26, column: 1, scope: !608)
!620 = distinct !DISubprogram(name: "printWLine", scope: !66, file: !66, line: 27, type: !621, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !625, line: 74, baseType: !62)
!625 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!626 = !DILocalVariable(name: "line", arg: 1, scope: !620, file: !66, line: 27, type: !623)
!627 = !DILocation(line: 27, column: 29, scope: !620)
!628 = !DILocation(line: 29, column: 8, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !66, line: 29, column: 8)
!630 = !DILocation(line: 29, column: 13, scope: !629)
!631 = !DILocation(line: 29, column: 8, scope: !620)
!632 = !DILocation(line: 31, column: 27, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !66, line: 30, column: 5)
!634 = !DILocation(line: 31, column: 9, scope: !633)
!635 = !DILocation(line: 32, column: 5, scope: !633)
!636 = !DILocation(line: 33, column: 1, scope: !620)
!637 = distinct !DISubprogram(name: "printIntLine", scope: !66, file: !66, line: 35, type: !638, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !62}
!640 = !DILocalVariable(name: "intNumber", arg: 1, scope: !637, file: !66, line: 35, type: !62)
!641 = !DILocation(line: 35, column: 24, scope: !637)
!642 = !DILocation(line: 37, column: 20, scope: !637)
!643 = !DILocation(line: 37, column: 5, scope: !637)
!644 = !DILocation(line: 38, column: 1, scope: !637)
!645 = distinct !DISubprogram(name: "printShortLine", scope: !66, file: !66, line: 40, type: !646, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648}
!648 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!649 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !645, file: !66, line: 40, type: !648)
!650 = !DILocation(line: 40, column: 28, scope: !645)
!651 = !DILocation(line: 42, column: 21, scope: !645)
!652 = !DILocation(line: 42, column: 5, scope: !645)
!653 = !DILocation(line: 43, column: 1, scope: !645)
!654 = distinct !DISubprogram(name: "printFloatLine", scope: !66, file: !66, line: 45, type: !655, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657}
!657 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!658 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !654, file: !66, line: 45, type: !657)
!659 = !DILocation(line: 45, column: 28, scope: !654)
!660 = !DILocation(line: 47, column: 20, scope: !654)
!661 = !DILocation(line: 47, column: 5, scope: !654)
!662 = !DILocation(line: 48, column: 1, scope: !654)
!663 = distinct !DISubprogram(name: "printLongLine", scope: !66, file: !66, line: 50, type: !664, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !666}
!666 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!667 = !DILocalVariable(name: "longNumber", arg: 1, scope: !663, file: !66, line: 50, type: !666)
!668 = !DILocation(line: 50, column: 26, scope: !663)
!669 = !DILocation(line: 52, column: 21, scope: !663)
!670 = !DILocation(line: 52, column: 5, scope: !663)
!671 = !DILocation(line: 53, column: 1, scope: !663)
!672 = distinct !DISubprogram(name: "printLongLongLine", scope: !66, file: !66, line: 55, type: !673, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675}
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !676, line: 27, baseType: !677)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !131, line: 44, baseType: !666)
!678 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !672, file: !66, line: 55, type: !675)
!679 = !DILocation(line: 55, column: 33, scope: !672)
!680 = !DILocation(line: 57, column: 29, scope: !672)
!681 = !DILocation(line: 57, column: 5, scope: !672)
!682 = !DILocation(line: 58, column: 1, scope: !672)
!683 = distinct !DISubprogram(name: "printSizeTLine", scope: !66, file: !66, line: 60, type: !684, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686}
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !625, line: 46, baseType: !687)
!687 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!688 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !683, file: !66, line: 60, type: !686)
!689 = !DILocation(line: 60, column: 29, scope: !683)
!690 = !DILocation(line: 62, column: 21, scope: !683)
!691 = !DILocation(line: 62, column: 5, scope: !683)
!692 = !DILocation(line: 63, column: 1, scope: !683)
!693 = distinct !DISubprogram(name: "printHexCharLine", scope: !66, file: !66, line: 65, type: !694, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !58}
!696 = !DILocalVariable(name: "charHex", arg: 1, scope: !693, file: !66, line: 65, type: !58)
!697 = !DILocation(line: 65, column: 29, scope: !693)
!698 = !DILocation(line: 67, column: 22, scope: !693)
!699 = !DILocation(line: 67, column: 5, scope: !693)
!700 = !DILocation(line: 68, column: 1, scope: !693)
!701 = distinct !DISubprogram(name: "printWcharLine", scope: !66, file: !66, line: 70, type: !702, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !624}
!704 = !DILocalVariable(name: "wideChar", arg: 1, scope: !701, file: !66, line: 70, type: !624)
!705 = !DILocation(line: 70, column: 29, scope: !701)
!706 = !DILocalVariable(name: "s", scope: !701, file: !66, line: 74, type: !707)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 64, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 2)
!710 = !DILocation(line: 74, column: 13, scope: !701)
!711 = !DILocation(line: 75, column: 16, scope: !701)
!712 = !DILocation(line: 75, column: 9, scope: !701)
!713 = !DILocation(line: 75, column: 14, scope: !701)
!714 = !DILocation(line: 76, column: 9, scope: !701)
!715 = !DILocation(line: 76, column: 14, scope: !701)
!716 = !DILocation(line: 77, column: 21, scope: !701)
!717 = !DILocation(line: 77, column: 5, scope: !701)
!718 = !DILocation(line: 78, column: 1, scope: !701)
!719 = distinct !DISubprogram(name: "printUnsignedLine", scope: !66, file: !66, line: 80, type: !720, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !7}
!722 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !719, file: !66, line: 80, type: !7)
!723 = !DILocation(line: 80, column: 33, scope: !719)
!724 = !DILocation(line: 82, column: 20, scope: !719)
!725 = !DILocation(line: 82, column: 5, scope: !719)
!726 = !DILocation(line: 83, column: 1, scope: !719)
!727 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !66, file: !66, line: 85, type: !728, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !85}
!730 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !727, file: !66, line: 85, type: !85)
!731 = !DILocation(line: 85, column: 45, scope: !727)
!732 = !DILocation(line: 87, column: 22, scope: !727)
!733 = !DILocation(line: 87, column: 5, scope: !727)
!734 = !DILocation(line: 88, column: 1, scope: !727)
!735 = distinct !DISubprogram(name: "printDoubleLine", scope: !66, file: !66, line: 90, type: !736, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !738}
!738 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!739 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !735, file: !66, line: 90, type: !738)
!740 = !DILocation(line: 90, column: 29, scope: !735)
!741 = !DILocation(line: 92, column: 20, scope: !735)
!742 = !DILocation(line: 92, column: 5, scope: !735)
!743 = !DILocation(line: 93, column: 1, scope: !735)
!744 = distinct !DISubprogram(name: "printStructLine", scope: !66, file: !66, line: 95, type: !745, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !749, line: 100, baseType: !750)
!749 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_521/source_code")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !749, line: 96, size: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !750, file: !749, line: 98, baseType: !62, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !750, file: !749, line: 99, baseType: !62, size: 32, offset: 32)
!754 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !744, file: !66, line: 95, type: !747)
!755 = !DILocation(line: 95, column: 40, scope: !744)
!756 = !DILocation(line: 97, column: 26, scope: !744)
!757 = !DILocation(line: 97, column: 47, scope: !744)
!758 = !DILocation(line: 97, column: 55, scope: !744)
!759 = !DILocation(line: 97, column: 76, scope: !744)
!760 = !DILocation(line: 97, column: 5, scope: !744)
!761 = !DILocation(line: 98, column: 1, scope: !744)
!762 = distinct !DISubprogram(name: "printBytesLine", scope: !66, file: !66, line: 100, type: !763, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765, !686}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!766 = !DILocalVariable(name: "bytes", arg: 1, scope: !762, file: !66, line: 100, type: !765)
!767 = !DILocation(line: 100, column: 38, scope: !762)
!768 = !DILocalVariable(name: "numBytes", arg: 2, scope: !762, file: !66, line: 100, type: !686)
!769 = !DILocation(line: 100, column: 52, scope: !762)
!770 = !DILocalVariable(name: "i", scope: !762, file: !66, line: 102, type: !686)
!771 = !DILocation(line: 102, column: 12, scope: !762)
!772 = !DILocation(line: 103, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !762, file: !66, line: 103, column: 5)
!774 = !DILocation(line: 103, column: 10, scope: !773)
!775 = !DILocation(line: 103, column: 17, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !66, line: 103, column: 5)
!777 = !DILocation(line: 103, column: 21, scope: !776)
!778 = !DILocation(line: 103, column: 19, scope: !776)
!779 = !DILocation(line: 103, column: 5, scope: !773)
!780 = !DILocation(line: 105, column: 24, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !66, line: 104, column: 5)
!782 = !DILocation(line: 105, column: 30, scope: !781)
!783 = !DILocation(line: 105, column: 9, scope: !781)
!784 = !DILocation(line: 106, column: 5, scope: !781)
!785 = !DILocation(line: 103, column: 31, scope: !776)
!786 = !DILocation(line: 103, column: 5, scope: !776)
!787 = distinct !{!787, !779, !788, !242}
!788 = !DILocation(line: 106, column: 5, scope: !773)
!789 = !DILocation(line: 107, column: 5, scope: !762)
!790 = !DILocation(line: 108, column: 1, scope: !762)
!791 = distinct !DISubprogram(name: "decodeHexChars", scope: !66, file: !66, line: 113, type: !792, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!792 = !DISubroutineType(types: !793)
!793 = !{!686, !765, !686, !102}
!794 = !DILocalVariable(name: "bytes", arg: 1, scope: !791, file: !66, line: 113, type: !765)
!795 = !DILocation(line: 113, column: 39, scope: !791)
!796 = !DILocalVariable(name: "numBytes", arg: 2, scope: !791, file: !66, line: 113, type: !686)
!797 = !DILocation(line: 113, column: 53, scope: !791)
!798 = !DILocalVariable(name: "hex", arg: 3, scope: !791, file: !66, line: 113, type: !102)
!799 = !DILocation(line: 113, column: 71, scope: !791)
!800 = !DILocalVariable(name: "numWritten", scope: !791, file: !66, line: 115, type: !686)
!801 = !DILocation(line: 115, column: 12, scope: !791)
!802 = !DILocation(line: 121, column: 5, scope: !791)
!803 = !DILocation(line: 121, column: 12, scope: !791)
!804 = !DILocation(line: 121, column: 25, scope: !791)
!805 = !DILocation(line: 121, column: 23, scope: !791)
!806 = !DILocation(line: 121, column: 34, scope: !791)
!807 = !DILocation(line: 121, column: 37, scope: !791)
!808 = !DILocation(line: 121, column: 67, scope: !791)
!809 = !DILocation(line: 121, column: 70, scope: !791)
!810 = !DILocation(line: 0, scope: !791)
!811 = !DILocalVariable(name: "byte", scope: !812, file: !66, line: 123, type: !62)
!812 = distinct !DILexicalBlock(scope: !791, file: !66, line: 122, column: 5)
!813 = !DILocation(line: 123, column: 13, scope: !812)
!814 = !DILocation(line: 124, column: 17, scope: !812)
!815 = !DILocation(line: 124, column: 25, scope: !812)
!816 = !DILocation(line: 124, column: 23, scope: !812)
!817 = !DILocation(line: 124, column: 9, scope: !812)
!818 = !DILocation(line: 125, column: 45, scope: !812)
!819 = !DILocation(line: 125, column: 29, scope: !812)
!820 = !DILocation(line: 125, column: 9, scope: !812)
!821 = !DILocation(line: 125, column: 15, scope: !812)
!822 = !DILocation(line: 125, column: 27, scope: !812)
!823 = !DILocation(line: 126, column: 9, scope: !812)
!824 = distinct !{!824, !802, !825, !242}
!825 = !DILocation(line: 127, column: 5, scope: !791)
!826 = !DILocation(line: 129, column: 12, scope: !791)
!827 = !DILocation(line: 129, column: 5, scope: !791)
!828 = distinct !DISubprogram(name: "decodeHexWChars", scope: !66, file: !66, line: 135, type: !829, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!829 = !DISubroutineType(types: !830)
!830 = !{!686, !765, !686, !623}
!831 = !DILocalVariable(name: "bytes", arg: 1, scope: !828, file: !66, line: 135, type: !765)
!832 = !DILocation(line: 135, column: 41, scope: !828)
!833 = !DILocalVariable(name: "numBytes", arg: 2, scope: !828, file: !66, line: 135, type: !686)
!834 = !DILocation(line: 135, column: 55, scope: !828)
!835 = !DILocalVariable(name: "hex", arg: 3, scope: !828, file: !66, line: 135, type: !623)
!836 = !DILocation(line: 135, column: 76, scope: !828)
!837 = !DILocalVariable(name: "numWritten", scope: !828, file: !66, line: 137, type: !686)
!838 = !DILocation(line: 137, column: 12, scope: !828)
!839 = !DILocation(line: 143, column: 5, scope: !828)
!840 = !DILocation(line: 143, column: 12, scope: !828)
!841 = !DILocation(line: 143, column: 25, scope: !828)
!842 = !DILocation(line: 143, column: 23, scope: !828)
!843 = !DILocation(line: 143, column: 34, scope: !828)
!844 = !DILocation(line: 143, column: 47, scope: !828)
!845 = !DILocation(line: 143, column: 55, scope: !828)
!846 = !DILocation(line: 143, column: 53, scope: !828)
!847 = !DILocation(line: 143, column: 37, scope: !828)
!848 = !DILocation(line: 143, column: 68, scope: !828)
!849 = !DILocation(line: 143, column: 81, scope: !828)
!850 = !DILocation(line: 143, column: 89, scope: !828)
!851 = !DILocation(line: 143, column: 87, scope: !828)
!852 = !DILocation(line: 143, column: 100, scope: !828)
!853 = !DILocation(line: 143, column: 71, scope: !828)
!854 = !DILocation(line: 0, scope: !828)
!855 = !DILocalVariable(name: "byte", scope: !856, file: !66, line: 145, type: !62)
!856 = distinct !DILexicalBlock(scope: !828, file: !66, line: 144, column: 5)
!857 = !DILocation(line: 145, column: 13, scope: !856)
!858 = !DILocation(line: 146, column: 18, scope: !856)
!859 = !DILocation(line: 146, column: 26, scope: !856)
!860 = !DILocation(line: 146, column: 24, scope: !856)
!861 = !DILocation(line: 146, column: 9, scope: !856)
!862 = !DILocation(line: 147, column: 45, scope: !856)
!863 = !DILocation(line: 147, column: 29, scope: !856)
!864 = !DILocation(line: 147, column: 9, scope: !856)
!865 = !DILocation(line: 147, column: 15, scope: !856)
!866 = !DILocation(line: 147, column: 27, scope: !856)
!867 = !DILocation(line: 148, column: 9, scope: !856)
!868 = distinct !{!868, !839, !869, !242}
!869 = !DILocation(line: 149, column: 5, scope: !828)
!870 = !DILocation(line: 151, column: 12, scope: !828)
!871 = !DILocation(line: 151, column: 5, scope: !828)
!872 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !66, file: !66, line: 156, type: !873, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!873 = !DISubroutineType(types: !874)
!874 = !{!62}
!875 = !DILocation(line: 158, column: 5, scope: !872)
!876 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !66, file: !66, line: 161, type: !873, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!877 = !DILocation(line: 163, column: 5, scope: !876)
!878 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !66, file: !66, line: 166, type: !873, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!879 = !DILocation(line: 168, column: 13, scope: !878)
!880 = !DILocation(line: 168, column: 20, scope: !878)
!881 = !DILocation(line: 168, column: 5, scope: !878)
!882 = distinct !DISubprogram(name: "good1", scope: !66, file: !66, line: 187, type: !108, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!883 = !DILocation(line: 187, column: 16, scope: !882)
!884 = distinct !DISubprogram(name: "good2", scope: !66, file: !66, line: 188, type: !108, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!885 = !DILocation(line: 188, column: 16, scope: !884)
!886 = distinct !DISubprogram(name: "good3", scope: !66, file: !66, line: 189, type: !108, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!887 = !DILocation(line: 189, column: 16, scope: !886)
!888 = distinct !DISubprogram(name: "good4", scope: !66, file: !66, line: 190, type: !108, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!889 = !DILocation(line: 190, column: 16, scope: !888)
!890 = distinct !DISubprogram(name: "good5", scope: !66, file: !66, line: 191, type: !108, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!891 = !DILocation(line: 191, column: 16, scope: !890)
!892 = distinct !DISubprogram(name: "good6", scope: !66, file: !66, line: 192, type: !108, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!893 = !DILocation(line: 192, column: 16, scope: !892)
!894 = distinct !DISubprogram(name: "good7", scope: !66, file: !66, line: 193, type: !108, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!895 = !DILocation(line: 193, column: 16, scope: !894)
!896 = distinct !DISubprogram(name: "good8", scope: !66, file: !66, line: 194, type: !108, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!897 = !DILocation(line: 194, column: 16, scope: !896)
!898 = distinct !DISubprogram(name: "good9", scope: !66, file: !66, line: 195, type: !108, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!899 = !DILocation(line: 195, column: 16, scope: !898)
!900 = distinct !DISubprogram(name: "bad1", scope: !66, file: !66, line: 198, type: !108, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!901 = !DILocation(line: 198, column: 15, scope: !900)
!902 = distinct !DISubprogram(name: "bad2", scope: !66, file: !66, line: 199, type: !108, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!903 = !DILocation(line: 199, column: 15, scope: !902)
!904 = distinct !DISubprogram(name: "bad3", scope: !66, file: !66, line: 200, type: !108, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!905 = !DILocation(line: 200, column: 15, scope: !904)
!906 = distinct !DISubprogram(name: "bad4", scope: !66, file: !66, line: 201, type: !108, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!907 = !DILocation(line: 201, column: 15, scope: !906)
!908 = distinct !DISubprogram(name: "bad5", scope: !66, file: !66, line: 202, type: !108, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!909 = !DILocation(line: 202, column: 15, scope: !908)
!910 = distinct !DISubprogram(name: "bad6", scope: !66, file: !66, line: 203, type: !108, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!911 = !DILocation(line: 203, column: 15, scope: !910)
!912 = distinct !DISubprogram(name: "bad7", scope: !66, file: !66, line: 204, type: !108, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!913 = !DILocation(line: 204, column: 15, scope: !912)
!914 = distinct !DISubprogram(name: "bad8", scope: !66, file: !66, line: 205, type: !108, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!915 = !DILocation(line: 205, column: 15, scope: !914)
!916 = distinct !DISubprogram(name: "bad9", scope: !66, file: !66, line: 206, type: !108, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !110)
!917 = !DILocation(line: 206, column: 15, scope: !916)
