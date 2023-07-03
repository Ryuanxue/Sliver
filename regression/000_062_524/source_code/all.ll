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
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.13 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_bad() #0 !dbg !104 {
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
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !111
  %tobool = icmp ne i32 %0, 0, !dbg !111
  br i1 %tobool, label %if.then, label %if.end22, !dbg !113

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !118, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 -1, i32* %connectSocket, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  br label %do.body, !dbg !144

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !145
  store i32 %call, i32* %connectSocket, align 4, !dbg !147
  %1 = load i32, i32* %connectSocket, align 4, !dbg !148
  %cmp = icmp eq i32 %1, -1, !dbg !150
  br i1 %cmp, label %if.then1, label %if.end, !dbg !151

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !152

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !154
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !155
  store i16 2, i16* %sin_family, align 4, !dbg !156
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !157
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !158
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !159
  store i32 %call2, i32* %s_addr, align 4, !dbg !160
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !161
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !162
  store i16 %call3, i16* %sin_port, align 2, !dbg !163
  %3 = load i32, i32* %connectSocket, align 4, !dbg !164
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !166
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !167
  %cmp5 = icmp eq i32 %call4, -1, !dbg !168
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !169

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !170

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !172
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !174
  %conv = trunc i64 %call8 to i32, !dbg !174
  store i32 %conv, i32* %recvResult, align 4, !dbg !175
  %6 = load i32, i32* %recvResult, align 4, !dbg !176
  %cmp9 = icmp eq i32 %6, -1, !dbg !178
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !179

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !180
  %cmp11 = icmp eq i32 %7, 0, !dbg !181
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !182

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !183

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !185
  %idxprom = sext i32 %8 to i64, !dbg !186
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !186
  store i8 0, i8* %arrayidx, align 1, !dbg !187
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !188
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !189
  store i32 %call16, i32* %data, align 4, !dbg !190
  br label %do.end, !dbg !191

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !192
  %cmp17 = icmp ne i32 %9, -1, !dbg !194
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !195

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !196
  %call20 = call i32 @close(i32 %10), !dbg !198
  br label %if.end21, !dbg !199

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !200

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !201
  %tobool23 = icmp ne i32 %11, 0, !dbg !201
  br i1 %tobool23, label %if.then24, label %if.end35, !dbg !203

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !208, metadata !DIExpression()), !dbg !212
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !212
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !212
  %13 = load i32, i32* %data, align 4, !dbg !213
  %cmp25 = icmp sge i32 %13, 0, !dbg !215
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !216

if.then27:                                        ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !217
  %idxprom28 = sext i32 %14 to i64, !dbg !219
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !219
  store i32 1, i32* %arrayidx29, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then27
  %15 = load i32, i32* %i, align 4, !dbg !224
  %cmp30 = icmp slt i32 %15, 10, !dbg !226
  br i1 %cmp30, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !228
  %idxprom32 = sext i32 %16 to i64, !dbg !230
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !230
  %17 = load i32, i32* %arrayidx33, align 4, !dbg !230
  call void @printIntLine(i32 %17), !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !233
  %inc = add nsw i32 %18, 1, !dbg !233
  store i32 %inc, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !238

if.else:                                          ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !239
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  br label %if.end35, !dbg !241

if.end35:                                         ; preds = %if.end34, %if.end22
  ret void, !dbg !242
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
define dso_local void @goodB2G1() #0 !dbg !243 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !244, metadata !DIExpression()), !dbg !245
  store i32 -1, i32* %data, align 4, !dbg !246
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !247
  %tobool = icmp ne i32 %0, 0, !dbg !247
  br i1 %tobool, label %if.then, label %if.end22, !dbg !249

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !250, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !256, metadata !DIExpression()), !dbg !257
  store i32 -1, i32* %connectSocket, align 4, !dbg !257
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !258, metadata !DIExpression()), !dbg !259
  br label %do.body, !dbg !260

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !261
  store i32 %call, i32* %connectSocket, align 4, !dbg !263
  %1 = load i32, i32* %connectSocket, align 4, !dbg !264
  %cmp = icmp eq i32 %1, -1, !dbg !266
  br i1 %cmp, label %if.then1, label %if.end, !dbg !267

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !268

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !270
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !271
  store i16 2, i16* %sin_family, align 4, !dbg !272
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !273
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !274
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !275
  store i32 %call2, i32* %s_addr, align 4, !dbg !276
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !277
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !278
  store i16 %call3, i16* %sin_port, align 2, !dbg !279
  %3 = load i32, i32* %connectSocket, align 4, !dbg !280
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !282
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !283
  %cmp5 = icmp eq i32 %call4, -1, !dbg !284
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !285

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !286

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !288
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !289
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !290
  %conv = trunc i64 %call8 to i32, !dbg !290
  store i32 %conv, i32* %recvResult, align 4, !dbg !291
  %6 = load i32, i32* %recvResult, align 4, !dbg !292
  %cmp9 = icmp eq i32 %6, -1, !dbg !294
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !295

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !296
  %cmp11 = icmp eq i32 %7, 0, !dbg !297
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !298

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !299

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !301
  %idxprom = sext i32 %8 to i64, !dbg !302
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !302
  store i8 0, i8* %arrayidx, align 1, !dbg !303
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !304
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !305
  store i32 %call16, i32* %data, align 4, !dbg !306
  br label %do.end, !dbg !307

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !308
  %cmp17 = icmp ne i32 %9, -1, !dbg !310
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !311

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !312
  %call20 = call i32 @close(i32 %10), !dbg !314
  br label %if.end21, !dbg !315

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !316

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !317
  %tobool23 = icmp ne i32 %11, 0, !dbg !317
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !319

if.then24:                                        ; preds = %if.end22
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !320
  br label %if.end38, !dbg !322

if.else:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !327, metadata !DIExpression()), !dbg !328
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !328
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !328
  %13 = load i32, i32* %data, align 4, !dbg !329
  %cmp25 = icmp sge i32 %13, 0, !dbg !331
  br i1 %cmp25, label %land.lhs.true, label %if.else36, !dbg !332

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !333
  %cmp27 = icmp slt i32 %14, 10, !dbg !334
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !335

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !336
  %idxprom30 = sext i32 %15 to i64, !dbg !338
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !338
  store i32 1, i32* %arrayidx31, align 4, !dbg !339
  store i32 0, i32* %i, align 4, !dbg !340
  br label %for.cond, !dbg !342

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !343
  %cmp32 = icmp slt i32 %16, 10, !dbg !345
  br i1 %cmp32, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !347
  %idxprom34 = sext i32 %17 to i64, !dbg !349
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !349
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !349
  call void @printIntLine(i32 %18), !dbg !350
  br label %for.inc, !dbg !351

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !352
  %inc = add nsw i32 %19, 1, !dbg !352
  store i32 %inc, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !353, !llvm.loop !354

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !356

if.else36:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !357
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !360 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !361, metadata !DIExpression()), !dbg !362
  store i32 -1, i32* %data, align 4, !dbg !363
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !364
  %tobool = icmp ne i32 %0, 0, !dbg !364
  br i1 %tobool, label %if.then, label %if.end22, !dbg !366

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !373, metadata !DIExpression()), !dbg !374
  store i32 -1, i32* %connectSocket, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !375, metadata !DIExpression()), !dbg !376
  br label %do.body, !dbg !377

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !378
  store i32 %call, i32* %connectSocket, align 4, !dbg !380
  %1 = load i32, i32* %connectSocket, align 4, !dbg !381
  %cmp = icmp eq i32 %1, -1, !dbg !383
  br i1 %cmp, label %if.then1, label %if.end, !dbg !384

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !385

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !387
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !388
  store i16 2, i16* %sin_family, align 4, !dbg !389
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !390
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !391
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !392
  store i32 %call2, i32* %s_addr, align 4, !dbg !393
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !394
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !395
  store i16 %call3, i16* %sin_port, align 2, !dbg !396
  %3 = load i32, i32* %connectSocket, align 4, !dbg !397
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !399
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !400
  %cmp5 = icmp eq i32 %call4, -1, !dbg !401
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !402

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !403

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !405
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !406
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !407
  %conv = trunc i64 %call8 to i32, !dbg !407
  store i32 %conv, i32* %recvResult, align 4, !dbg !408
  %6 = load i32, i32* %recvResult, align 4, !dbg !409
  %cmp9 = icmp eq i32 %6, -1, !dbg !411
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !412

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !413
  %cmp11 = icmp eq i32 %7, 0, !dbg !414
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !415

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !416

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !418
  %idxprom = sext i32 %8 to i64, !dbg !419
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !419
  store i8 0, i8* %arrayidx, align 1, !dbg !420
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !421
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !422
  store i32 %call16, i32* %data, align 4, !dbg !423
  br label %do.end, !dbg !424

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !425
  %cmp17 = icmp ne i32 %9, -1, !dbg !427
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !428

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !429
  %call20 = call i32 @close(i32 %10), !dbg !431
  br label %if.end21, !dbg !432

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !433

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !434
  %tobool23 = icmp ne i32 %11, 0, !dbg !434
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !436

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !437, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !441, metadata !DIExpression()), !dbg !442
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !442
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !442
  %13 = load i32, i32* %data, align 4, !dbg !443
  %cmp25 = icmp sge i32 %13, 0, !dbg !445
  br i1 %cmp25, label %land.lhs.true, label %if.else, !dbg !446

land.lhs.true:                                    ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !447
  %cmp27 = icmp slt i32 %14, 10, !dbg !448
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !449

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !450
  %idxprom30 = sext i32 %15 to i64, !dbg !452
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !452
  store i32 1, i32* %arrayidx31, align 4, !dbg !453
  store i32 0, i32* %i, align 4, !dbg !454
  br label %for.cond, !dbg !456

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !457
  %cmp32 = icmp slt i32 %16, 10, !dbg !459
  br i1 %cmp32, label %for.body, label %for.end, !dbg !460

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !461
  %idxprom34 = sext i32 %17 to i64, !dbg !463
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !463
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !463
  call void @printIntLine(i32 %18), !dbg !464
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !466
  %inc = add nsw i32 %19, 1, !dbg !466
  store i32 %inc, i32* %i, align 4, !dbg !466
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !470

if.else:                                          ; preds = %land.lhs.true, %if.then24
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !471
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !473

if.end37:                                         ; preds = %if.end36, %if.end22
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !475 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !476, metadata !DIExpression()), !dbg !477
  store i32 -1, i32* %data, align 4, !dbg !478
  %0 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !479
  %tobool = icmp ne i32 %0, 0, !dbg !479
  br i1 %tobool, label %if.then, label %if.else, !dbg !481

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !482
  br label %if.end, !dbg !484

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !485
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !487
  %tobool1 = icmp ne i32 %1, 0, !dbg !487
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !489

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !490, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !494, metadata !DIExpression()), !dbg !495
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !495
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !495
  %3 = load i32, i32* %data, align 4, !dbg !496
  %cmp = icmp sge i32 %3, 0, !dbg !498
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !499

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !500
  %idxprom = sext i32 %4 to i64, !dbg !502
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !502
  store i32 1, i32* %arrayidx, align 4, !dbg !503
  store i32 0, i32* %i, align 4, !dbg !504
  br label %for.cond, !dbg !506

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !507
  %cmp4 = icmp slt i32 %5, 10, !dbg !509
  br i1 %cmp4, label %for.body, label %for.end, !dbg !510

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !511
  %idxprom5 = sext i32 %6 to i64, !dbg !513
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !513
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !513
  call void @printIntLine(i32 %7), !dbg !514
  br label %for.inc, !dbg !515

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !516
  %inc = add nsw i32 %8, 1, !dbg !516
  store i32 %inc, i32* %i, align 4, !dbg !516
  br label %for.cond, !dbg !517, !llvm.loop !518

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !520

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !521
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !523

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !525 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !526, metadata !DIExpression()), !dbg !527
  store i32 -1, i32* %data, align 4, !dbg !528
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !529
  %tobool = icmp ne i32 %0, 0, !dbg !529
  br i1 %tobool, label %if.then, label %if.end, !dbg !531

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !532
  br label %if.end, !dbg !534

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !535
  %tobool1 = icmp ne i32 %1, 0, !dbg !535
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !537

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !542, metadata !DIExpression()), !dbg !543
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !543
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !543
  %3 = load i32, i32* %data, align 4, !dbg !544
  %cmp = icmp sge i32 %3, 0, !dbg !546
  br i1 %cmp, label %if.then3, label %if.else, !dbg !547

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !548
  %idxprom = sext i32 %4 to i64, !dbg !550
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !550
  store i32 1, i32* %arrayidx, align 4, !dbg !551
  store i32 0, i32* %i, align 4, !dbg !552
  br label %for.cond, !dbg !554

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !555
  %cmp4 = icmp slt i32 %5, 10, !dbg !557
  br i1 %cmp4, label %for.body, label %for.end, !dbg !558

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !559
  %idxprom5 = sext i32 %6 to i64, !dbg !561
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !561
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !561
  call void @printIntLine(i32 %7), !dbg !562
  br label %for.inc, !dbg !563

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !564
  %inc = add nsw i32 %8, 1, !dbg !564
  store i32 %inc, i32* %i, align 4, !dbg !564
  br label %for.cond, !dbg !565, !llvm.loop !566

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !568

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !569
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !571

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_good() #0 !dbg !573 {
entry:
  call void @goodB2G1(), !dbg !574
  call void @goodB2G2(), !dbg !575
  call void @goodG2B1(), !dbg !576
  call void @goodG2B2(), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !579 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !584
  %0 = load i8*, i8** %line.addr, align 8, !dbg !585
  %cmp = icmp ne i8* %0, null, !dbg !587
  br i1 %cmp, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !589
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !591
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !593
  ret void, !dbg !594
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !595 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i8*, i8** %line.addr, align 8, !dbg !598
  %cmp = icmp ne i8* %0, null, !dbg !600
  br i1 %cmp, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !604
  br label %if.end, !dbg !605

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !607 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i32*, i32** %line.addr, align 8, !dbg !615
  %cmp = icmp ne i32* %0, null, !dbg !617
  br i1 %cmp, label %if.then, label %if.end, !dbg !618

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !619
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !621
  br label %if.end, !dbg !622

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !623
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !624 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !632 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !636, metadata !DIExpression()), !dbg !637
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !638
  %conv = sext i16 %0 to i32, !dbg !638
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !639
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !641 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !647
  %conv = fpext float %0 to double, !dbg !647
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !650 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !656
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !659 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !667
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !670 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !677
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !680 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !683, metadata !DIExpression()), !dbg !684
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !685
  %conv = sext i8 %0 to i32, !dbg !685
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !686
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !688 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !693, metadata !DIExpression()), !dbg !697
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !698
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !699
  store i32 %0, i32* %arrayidx, align 4, !dbg !700
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !701
  store i32 0, i32* %arrayidx1, align 4, !dbg !702
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !703
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !704
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !706 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !709, metadata !DIExpression()), !dbg !710
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !711
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !712
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !714 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !717, metadata !DIExpression()), !dbg !718
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !719
  %conv = zext i8 %0 to i32, !dbg !719
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !722 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !728
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !731 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !743
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !744
  %1 = load i32, i32* %intOne, align 4, !dbg !744
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !745
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !746
  %3 = load i32, i32* %intTwo, align 4, !dbg !746
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !747
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !749 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata i64* %i, metadata !757, metadata !DIExpression()), !dbg !758
  store i64 0, i64* %i, align 8, !dbg !759
  br label %for.cond, !dbg !761

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !762
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !764
  %cmp = icmp ult i64 %0, %1, !dbg !765
  br i1 %cmp, label %for.body, label %for.end, !dbg !766

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !767
  %3 = load i64, i64* %i, align 8, !dbg !769
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !767
  %4 = load i8, i8* %arrayidx, align 1, !dbg !767
  %conv = zext i8 %4 to i32, !dbg !767
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !770
  br label %for.inc, !dbg !771

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !772
  %inc = add i64 %5, 1, !dbg !772
  store i64 %inc, i64* %i, align 8, !dbg !772
  br label %for.cond, !dbg !773, !llvm.loop !774

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !776
  ret void, !dbg !777
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !778 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !781, metadata !DIExpression()), !dbg !782
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !783, metadata !DIExpression()), !dbg !784
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !787, metadata !DIExpression()), !dbg !788
  store i64 0, i64* %numWritten, align 8, !dbg !788
  br label %while.cond, !dbg !789

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !790
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !791
  %cmp = icmp ult i64 %0, %1, !dbg !792
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !793

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !794
  %2 = load i16*, i16** %call, align 8, !dbg !794
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !794
  %4 = load i64, i64* %numWritten, align 8, !dbg !794
  %mul = mul i64 2, %4, !dbg !794
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !794
  %5 = load i8, i8* %arrayidx, align 1, !dbg !794
  %conv = sext i8 %5 to i32, !dbg !794
  %idxprom = sext i32 %conv to i64, !dbg !794
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !794
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !794
  %conv2 = zext i16 %6 to i32, !dbg !794
  %and = and i32 %conv2, 4096, !dbg !794
  %tobool = icmp ne i32 %and, 0, !dbg !794
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !795

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !796
  %7 = load i16*, i16** %call3, align 8, !dbg !796
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !796
  %9 = load i64, i64* %numWritten, align 8, !dbg !796
  %mul4 = mul i64 2, %9, !dbg !796
  %add = add i64 %mul4, 1, !dbg !796
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !796
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !796
  %conv6 = sext i8 %10 to i32, !dbg !796
  %idxprom7 = sext i32 %conv6 to i64, !dbg !796
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !796
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !796
  %conv9 = zext i16 %11 to i32, !dbg !796
  %and10 = and i32 %conv9, 4096, !dbg !796
  %tobool11 = icmp ne i32 %and10, 0, !dbg !795
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !797
  br i1 %12, label %while.body, label %while.end, !dbg !789

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !798, metadata !DIExpression()), !dbg !800
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !801
  %14 = load i64, i64* %numWritten, align 8, !dbg !802
  %mul12 = mul i64 2, %14, !dbg !803
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !801
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !804
  %15 = load i32, i32* %byte, align 4, !dbg !805
  %conv15 = trunc i32 %15 to i8, !dbg !806
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !807
  %17 = load i64, i64* %numWritten, align 8, !dbg !808
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !807
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !809
  %18 = load i64, i64* %numWritten, align 8, !dbg !810
  %inc = add i64 %18, 1, !dbg !810
  store i64 %inc, i64* %numWritten, align 8, !dbg !810
  br label %while.cond, !dbg !789, !llvm.loop !811

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !813
  ret i64 %19, !dbg !814
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !815 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !818, metadata !DIExpression()), !dbg !819
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !820, metadata !DIExpression()), !dbg !821
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !824, metadata !DIExpression()), !dbg !825
  store i64 0, i64* %numWritten, align 8, !dbg !825
  br label %while.cond, !dbg !826

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !827
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !828
  %cmp = icmp ult i64 %0, %1, !dbg !829
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !830

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !831
  %3 = load i64, i64* %numWritten, align 8, !dbg !832
  %mul = mul i64 2, %3, !dbg !833
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !831
  %4 = load i32, i32* %arrayidx, align 4, !dbg !831
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !834
  %tobool = icmp ne i32 %call, 0, !dbg !834
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !835

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !836
  %6 = load i64, i64* %numWritten, align 8, !dbg !837
  %mul1 = mul i64 2, %6, !dbg !838
  %add = add i64 %mul1, 1, !dbg !839
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !836
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !836
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !840
  %tobool4 = icmp ne i32 %call3, 0, !dbg !835
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !841
  br i1 %8, label %while.body, label %while.end, !dbg !826

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !842, metadata !DIExpression()), !dbg !844
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !845
  %10 = load i64, i64* %numWritten, align 8, !dbg !846
  %mul5 = mul i64 2, %10, !dbg !847
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !845
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !848
  %11 = load i32, i32* %byte, align 4, !dbg !849
  %conv = trunc i32 %11 to i8, !dbg !850
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !851
  %13 = load i64, i64* %numWritten, align 8, !dbg !852
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !851
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !853
  %14 = load i64, i64* %numWritten, align 8, !dbg !854
  %inc = add i64 %14, 1, !dbg !854
  store i64 %inc, i64* %numWritten, align 8, !dbg !854
  br label %while.cond, !dbg !826, !llvm.loop !855

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !857
  ret i64 %15, !dbg !858
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !859 {
entry:
  ret i32 1, !dbg !862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !863 {
entry:
  ret i32 0, !dbg !864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !865 {
entry:
  %call = call i32 @rand() #7, !dbg !866
  %rem = srem i32 %call, 2, !dbg !867
  ret i32 %rem, !dbg !868
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !869 {
entry:
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !871 {
entry:
  ret void, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !873 {
entry:
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !875 {
entry:
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !877 {
entry:
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !879 {
entry:
  ret void, !dbg !880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !881 {
entry:
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !883 {
entry:
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !885 {
entry:
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !887 {
entry:
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !889 {
entry:
  ret void, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !891 {
entry:
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !893 {
entry:
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !895 {
entry:
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !897 {
entry:
  ret void, !dbg !898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !899 {
entry:
  ret void, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !901 {
entry:
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !903 {
entry:
  ret void, !dbg !904
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_524/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_524/source_code")
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
!104 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_bad", scope: !45, file: !45, line: 45, type: !105, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !{}
!108 = !DILocalVariable(name: "data", scope: !104, file: !45, line: 47, type: !23)
!109 = !DILocation(line: 47, column: 9, scope: !104)
!110 = !DILocation(line: 49, column: 10, scope: !104)
!111 = !DILocation(line: 50, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 50, column: 8)
!113 = !DILocation(line: 50, column: 8, scope: !104)
!114 = !DILocalVariable(name: "recvResult", scope: !115, file: !45, line: 57, type: !23)
!115 = distinct !DILexicalBlock(scope: !116, file: !45, line: 52, column: 9)
!116 = distinct !DILexicalBlock(scope: !112, file: !45, line: 51, column: 5)
!117 = !DILocation(line: 57, column: 17, scope: !115)
!118 = !DILocalVariable(name: "service", scope: !115, file: !45, line: 58, type: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !120)
!120 = !{!121, !122, !128, !135}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !119, file: !60, line: 240, baseType: !94, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !119, file: !60, line: 241, baseType: !123, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !125, line: 25, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !127, line: 40, baseType: !24)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !119, file: !60, line: 242, baseType: !129, size: 32, offset: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !129, file: !60, line: 33, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 26, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !7)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !119, file: !60, line: 245, baseType: !136, size: 64, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DILocation(line: 58, column: 32, scope: !115)
!140 = !DILocalVariable(name: "connectSocket", scope: !115, file: !45, line: 59, type: !23)
!141 = !DILocation(line: 59, column: 20, scope: !115)
!142 = !DILocalVariable(name: "inputBuffer", scope: !115, file: !45, line: 60, type: !97)
!143 = !DILocation(line: 60, column: 18, scope: !115)
!144 = !DILocation(line: 61, column: 13, scope: !115)
!145 = !DILocation(line: 71, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !115, file: !45, line: 62, column: 13)
!147 = !DILocation(line: 71, column: 31, scope: !146)
!148 = !DILocation(line: 72, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !45, line: 72, column: 21)
!150 = !DILocation(line: 72, column: 35, scope: !149)
!151 = !DILocation(line: 72, column: 21, scope: !146)
!152 = !DILocation(line: 74, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !45, line: 73, column: 17)
!154 = !DILocation(line: 76, column: 17, scope: !146)
!155 = !DILocation(line: 77, column: 25, scope: !146)
!156 = !DILocation(line: 77, column: 36, scope: !146)
!157 = !DILocation(line: 78, column: 43, scope: !146)
!158 = !DILocation(line: 78, column: 25, scope: !146)
!159 = !DILocation(line: 78, column: 34, scope: !146)
!160 = !DILocation(line: 78, column: 41, scope: !146)
!161 = !DILocation(line: 79, column: 36, scope: !146)
!162 = !DILocation(line: 79, column: 25, scope: !146)
!163 = !DILocation(line: 79, column: 34, scope: !146)
!164 = !DILocation(line: 80, column: 29, scope: !165)
!165 = distinct !DILexicalBlock(scope: !146, file: !45, line: 80, column: 21)
!166 = !DILocation(line: 80, column: 44, scope: !165)
!167 = !DILocation(line: 80, column: 21, scope: !165)
!168 = !DILocation(line: 80, column: 89, scope: !165)
!169 = !DILocation(line: 80, column: 21, scope: !146)
!170 = !DILocation(line: 82, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !45, line: 81, column: 17)
!172 = !DILocation(line: 86, column: 35, scope: !146)
!173 = !DILocation(line: 86, column: 50, scope: !146)
!174 = !DILocation(line: 86, column: 30, scope: !146)
!175 = !DILocation(line: 86, column: 28, scope: !146)
!176 = !DILocation(line: 87, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !146, file: !45, line: 87, column: 21)
!178 = !DILocation(line: 87, column: 32, scope: !177)
!179 = !DILocation(line: 87, column: 48, scope: !177)
!180 = !DILocation(line: 87, column: 51, scope: !177)
!181 = !DILocation(line: 87, column: 62, scope: !177)
!182 = !DILocation(line: 87, column: 21, scope: !146)
!183 = !DILocation(line: 89, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !45, line: 88, column: 17)
!185 = !DILocation(line: 92, column: 29, scope: !146)
!186 = !DILocation(line: 92, column: 17, scope: !146)
!187 = !DILocation(line: 92, column: 41, scope: !146)
!188 = !DILocation(line: 94, column: 29, scope: !146)
!189 = !DILocation(line: 94, column: 24, scope: !146)
!190 = !DILocation(line: 94, column: 22, scope: !146)
!191 = !DILocation(line: 95, column: 13, scope: !146)
!192 = !DILocation(line: 97, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !115, file: !45, line: 97, column: 17)
!194 = !DILocation(line: 97, column: 31, scope: !193)
!195 = !DILocation(line: 97, column: 17, scope: !115)
!196 = !DILocation(line: 99, column: 30, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !45, line: 98, column: 13)
!198 = !DILocation(line: 99, column: 17, scope: !197)
!199 = !DILocation(line: 100, column: 13, scope: !197)
!200 = !DILocation(line: 108, column: 5, scope: !116)
!201 = !DILocation(line: 109, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !104, file: !45, line: 109, column: 8)
!203 = !DILocation(line: 109, column: 8, scope: !104)
!204 = !DILocalVariable(name: "i", scope: !205, file: !45, line: 112, type: !23)
!205 = distinct !DILexicalBlock(scope: !206, file: !45, line: 111, column: 9)
!206 = distinct !DILexicalBlock(scope: !202, file: !45, line: 110, column: 5)
!207 = !DILocation(line: 112, column: 17, scope: !205)
!208 = !DILocalVariable(name: "buffer", scope: !205, file: !45, line: 113, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 10)
!212 = !DILocation(line: 113, column: 17, scope: !205)
!213 = !DILocation(line: 116, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !45, line: 116, column: 17)
!215 = !DILocation(line: 116, column: 22, scope: !214)
!216 = !DILocation(line: 116, column: 17, scope: !205)
!217 = !DILocation(line: 118, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !45, line: 117, column: 13)
!219 = !DILocation(line: 118, column: 17, scope: !218)
!220 = !DILocation(line: 118, column: 30, scope: !218)
!221 = !DILocation(line: 120, column: 23, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 120, column: 17)
!223 = !DILocation(line: 120, column: 21, scope: !222)
!224 = !DILocation(line: 120, column: 28, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !45, line: 120, column: 17)
!226 = !DILocation(line: 120, column: 30, scope: !225)
!227 = !DILocation(line: 120, column: 17, scope: !222)
!228 = !DILocation(line: 122, column: 41, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !45, line: 121, column: 17)
!230 = !DILocation(line: 122, column: 34, scope: !229)
!231 = !DILocation(line: 122, column: 21, scope: !229)
!232 = !DILocation(line: 123, column: 17, scope: !229)
!233 = !DILocation(line: 120, column: 37, scope: !225)
!234 = !DILocation(line: 120, column: 17, scope: !225)
!235 = distinct !{!235, !227, !236, !237}
!236 = !DILocation(line: 123, column: 17, scope: !222)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 124, column: 13, scope: !218)
!239 = !DILocation(line: 127, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !214, file: !45, line: 126, column: 13)
!241 = !DILocation(line: 130, column: 5, scope: !206)
!242 = !DILocation(line: 131, column: 1, scope: !104)
!243 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 138, type: !105, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!244 = !DILocalVariable(name: "data", scope: !243, file: !45, line: 140, type: !23)
!245 = !DILocation(line: 140, column: 9, scope: !243)
!246 = !DILocation(line: 142, column: 10, scope: !243)
!247 = !DILocation(line: 143, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !45, line: 143, column: 8)
!249 = !DILocation(line: 143, column: 8, scope: !243)
!250 = !DILocalVariable(name: "recvResult", scope: !251, file: !45, line: 150, type: !23)
!251 = distinct !DILexicalBlock(scope: !252, file: !45, line: 145, column: 9)
!252 = distinct !DILexicalBlock(scope: !248, file: !45, line: 144, column: 5)
!253 = !DILocation(line: 150, column: 17, scope: !251)
!254 = !DILocalVariable(name: "service", scope: !251, file: !45, line: 151, type: !119)
!255 = !DILocation(line: 151, column: 32, scope: !251)
!256 = !DILocalVariable(name: "connectSocket", scope: !251, file: !45, line: 152, type: !23)
!257 = !DILocation(line: 152, column: 20, scope: !251)
!258 = !DILocalVariable(name: "inputBuffer", scope: !251, file: !45, line: 153, type: !97)
!259 = !DILocation(line: 153, column: 18, scope: !251)
!260 = !DILocation(line: 154, column: 13, scope: !251)
!261 = !DILocation(line: 164, column: 33, scope: !262)
!262 = distinct !DILexicalBlock(scope: !251, file: !45, line: 155, column: 13)
!263 = !DILocation(line: 164, column: 31, scope: !262)
!264 = !DILocation(line: 165, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !45, line: 165, column: 21)
!266 = !DILocation(line: 165, column: 35, scope: !265)
!267 = !DILocation(line: 165, column: 21, scope: !262)
!268 = !DILocation(line: 167, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !45, line: 166, column: 17)
!270 = !DILocation(line: 169, column: 17, scope: !262)
!271 = !DILocation(line: 170, column: 25, scope: !262)
!272 = !DILocation(line: 170, column: 36, scope: !262)
!273 = !DILocation(line: 171, column: 43, scope: !262)
!274 = !DILocation(line: 171, column: 25, scope: !262)
!275 = !DILocation(line: 171, column: 34, scope: !262)
!276 = !DILocation(line: 171, column: 41, scope: !262)
!277 = !DILocation(line: 172, column: 36, scope: !262)
!278 = !DILocation(line: 172, column: 25, scope: !262)
!279 = !DILocation(line: 172, column: 34, scope: !262)
!280 = !DILocation(line: 173, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !262, file: !45, line: 173, column: 21)
!282 = !DILocation(line: 173, column: 44, scope: !281)
!283 = !DILocation(line: 173, column: 21, scope: !281)
!284 = !DILocation(line: 173, column: 89, scope: !281)
!285 = !DILocation(line: 173, column: 21, scope: !262)
!286 = !DILocation(line: 175, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !45, line: 174, column: 17)
!288 = !DILocation(line: 179, column: 35, scope: !262)
!289 = !DILocation(line: 179, column: 50, scope: !262)
!290 = !DILocation(line: 179, column: 30, scope: !262)
!291 = !DILocation(line: 179, column: 28, scope: !262)
!292 = !DILocation(line: 180, column: 21, scope: !293)
!293 = distinct !DILexicalBlock(scope: !262, file: !45, line: 180, column: 21)
!294 = !DILocation(line: 180, column: 32, scope: !293)
!295 = !DILocation(line: 180, column: 48, scope: !293)
!296 = !DILocation(line: 180, column: 51, scope: !293)
!297 = !DILocation(line: 180, column: 62, scope: !293)
!298 = !DILocation(line: 180, column: 21, scope: !262)
!299 = !DILocation(line: 182, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !45, line: 181, column: 17)
!301 = !DILocation(line: 185, column: 29, scope: !262)
!302 = !DILocation(line: 185, column: 17, scope: !262)
!303 = !DILocation(line: 185, column: 41, scope: !262)
!304 = !DILocation(line: 187, column: 29, scope: !262)
!305 = !DILocation(line: 187, column: 24, scope: !262)
!306 = !DILocation(line: 187, column: 22, scope: !262)
!307 = !DILocation(line: 188, column: 13, scope: !262)
!308 = !DILocation(line: 190, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !251, file: !45, line: 190, column: 17)
!310 = !DILocation(line: 190, column: 31, scope: !309)
!311 = !DILocation(line: 190, column: 17, scope: !251)
!312 = !DILocation(line: 192, column: 30, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !45, line: 191, column: 13)
!314 = !DILocation(line: 192, column: 17, scope: !313)
!315 = !DILocation(line: 193, column: 13, scope: !313)
!316 = !DILocation(line: 201, column: 5, scope: !252)
!317 = !DILocation(line: 202, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !243, file: !45, line: 202, column: 8)
!319 = !DILocation(line: 202, column: 8, scope: !243)
!320 = !DILocation(line: 205, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !45, line: 203, column: 5)
!322 = !DILocation(line: 206, column: 5, scope: !321)
!323 = !DILocalVariable(name: "i", scope: !324, file: !45, line: 210, type: !23)
!324 = distinct !DILexicalBlock(scope: !325, file: !45, line: 209, column: 9)
!325 = distinct !DILexicalBlock(scope: !318, file: !45, line: 208, column: 5)
!326 = !DILocation(line: 210, column: 17, scope: !324)
!327 = !DILocalVariable(name: "buffer", scope: !324, file: !45, line: 211, type: !209)
!328 = !DILocation(line: 211, column: 17, scope: !324)
!329 = !DILocation(line: 213, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !45, line: 213, column: 17)
!331 = !DILocation(line: 213, column: 22, scope: !330)
!332 = !DILocation(line: 213, column: 27, scope: !330)
!333 = !DILocation(line: 213, column: 30, scope: !330)
!334 = !DILocation(line: 213, column: 35, scope: !330)
!335 = !DILocation(line: 213, column: 17, scope: !324)
!336 = !DILocation(line: 215, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !45, line: 214, column: 13)
!338 = !DILocation(line: 215, column: 17, scope: !337)
!339 = !DILocation(line: 215, column: 30, scope: !337)
!340 = !DILocation(line: 217, column: 23, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !45, line: 217, column: 17)
!342 = !DILocation(line: 217, column: 21, scope: !341)
!343 = !DILocation(line: 217, column: 28, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !45, line: 217, column: 17)
!345 = !DILocation(line: 217, column: 30, scope: !344)
!346 = !DILocation(line: 217, column: 17, scope: !341)
!347 = !DILocation(line: 219, column: 41, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !45, line: 218, column: 17)
!349 = !DILocation(line: 219, column: 34, scope: !348)
!350 = !DILocation(line: 219, column: 21, scope: !348)
!351 = !DILocation(line: 220, column: 17, scope: !348)
!352 = !DILocation(line: 217, column: 37, scope: !344)
!353 = !DILocation(line: 217, column: 17, scope: !344)
!354 = distinct !{!354, !346, !355, !237}
!355 = !DILocation(line: 220, column: 17, scope: !341)
!356 = !DILocation(line: 221, column: 13, scope: !337)
!357 = !DILocation(line: 224, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !330, file: !45, line: 223, column: 13)
!359 = !DILocation(line: 228, column: 1, scope: !243)
!360 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 231, type: !105, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!361 = !DILocalVariable(name: "data", scope: !360, file: !45, line: 233, type: !23)
!362 = !DILocation(line: 233, column: 9, scope: !360)
!363 = !DILocation(line: 235, column: 10, scope: !360)
!364 = !DILocation(line: 236, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !45, line: 236, column: 8)
!366 = !DILocation(line: 236, column: 8, scope: !360)
!367 = !DILocalVariable(name: "recvResult", scope: !368, file: !45, line: 243, type: !23)
!368 = distinct !DILexicalBlock(scope: !369, file: !45, line: 238, column: 9)
!369 = distinct !DILexicalBlock(scope: !365, file: !45, line: 237, column: 5)
!370 = !DILocation(line: 243, column: 17, scope: !368)
!371 = !DILocalVariable(name: "service", scope: !368, file: !45, line: 244, type: !119)
!372 = !DILocation(line: 244, column: 32, scope: !368)
!373 = !DILocalVariable(name: "connectSocket", scope: !368, file: !45, line: 245, type: !23)
!374 = !DILocation(line: 245, column: 20, scope: !368)
!375 = !DILocalVariable(name: "inputBuffer", scope: !368, file: !45, line: 246, type: !97)
!376 = !DILocation(line: 246, column: 18, scope: !368)
!377 = !DILocation(line: 247, column: 13, scope: !368)
!378 = !DILocation(line: 257, column: 33, scope: !379)
!379 = distinct !DILexicalBlock(scope: !368, file: !45, line: 248, column: 13)
!380 = !DILocation(line: 257, column: 31, scope: !379)
!381 = !DILocation(line: 258, column: 21, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !45, line: 258, column: 21)
!383 = !DILocation(line: 258, column: 35, scope: !382)
!384 = !DILocation(line: 258, column: 21, scope: !379)
!385 = !DILocation(line: 260, column: 21, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !45, line: 259, column: 17)
!387 = !DILocation(line: 262, column: 17, scope: !379)
!388 = !DILocation(line: 263, column: 25, scope: !379)
!389 = !DILocation(line: 263, column: 36, scope: !379)
!390 = !DILocation(line: 264, column: 43, scope: !379)
!391 = !DILocation(line: 264, column: 25, scope: !379)
!392 = !DILocation(line: 264, column: 34, scope: !379)
!393 = !DILocation(line: 264, column: 41, scope: !379)
!394 = !DILocation(line: 265, column: 36, scope: !379)
!395 = !DILocation(line: 265, column: 25, scope: !379)
!396 = !DILocation(line: 265, column: 34, scope: !379)
!397 = !DILocation(line: 266, column: 29, scope: !398)
!398 = distinct !DILexicalBlock(scope: !379, file: !45, line: 266, column: 21)
!399 = !DILocation(line: 266, column: 44, scope: !398)
!400 = !DILocation(line: 266, column: 21, scope: !398)
!401 = !DILocation(line: 266, column: 89, scope: !398)
!402 = !DILocation(line: 266, column: 21, scope: !379)
!403 = !DILocation(line: 268, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !45, line: 267, column: 17)
!405 = !DILocation(line: 272, column: 35, scope: !379)
!406 = !DILocation(line: 272, column: 50, scope: !379)
!407 = !DILocation(line: 272, column: 30, scope: !379)
!408 = !DILocation(line: 272, column: 28, scope: !379)
!409 = !DILocation(line: 273, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !379, file: !45, line: 273, column: 21)
!411 = !DILocation(line: 273, column: 32, scope: !410)
!412 = !DILocation(line: 273, column: 48, scope: !410)
!413 = !DILocation(line: 273, column: 51, scope: !410)
!414 = !DILocation(line: 273, column: 62, scope: !410)
!415 = !DILocation(line: 273, column: 21, scope: !379)
!416 = !DILocation(line: 275, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !410, file: !45, line: 274, column: 17)
!418 = !DILocation(line: 278, column: 29, scope: !379)
!419 = !DILocation(line: 278, column: 17, scope: !379)
!420 = !DILocation(line: 278, column: 41, scope: !379)
!421 = !DILocation(line: 280, column: 29, scope: !379)
!422 = !DILocation(line: 280, column: 24, scope: !379)
!423 = !DILocation(line: 280, column: 22, scope: !379)
!424 = !DILocation(line: 281, column: 13, scope: !379)
!425 = !DILocation(line: 283, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !368, file: !45, line: 283, column: 17)
!427 = !DILocation(line: 283, column: 31, scope: !426)
!428 = !DILocation(line: 283, column: 17, scope: !368)
!429 = !DILocation(line: 285, column: 30, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !45, line: 284, column: 13)
!431 = !DILocation(line: 285, column: 17, scope: !430)
!432 = !DILocation(line: 286, column: 13, scope: !430)
!433 = !DILocation(line: 294, column: 5, scope: !369)
!434 = !DILocation(line: 295, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !360, file: !45, line: 295, column: 8)
!436 = !DILocation(line: 295, column: 8, scope: !360)
!437 = !DILocalVariable(name: "i", scope: !438, file: !45, line: 298, type: !23)
!438 = distinct !DILexicalBlock(scope: !439, file: !45, line: 297, column: 9)
!439 = distinct !DILexicalBlock(scope: !435, file: !45, line: 296, column: 5)
!440 = !DILocation(line: 298, column: 17, scope: !438)
!441 = !DILocalVariable(name: "buffer", scope: !438, file: !45, line: 299, type: !209)
!442 = !DILocation(line: 299, column: 17, scope: !438)
!443 = !DILocation(line: 301, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !438, file: !45, line: 301, column: 17)
!445 = !DILocation(line: 301, column: 22, scope: !444)
!446 = !DILocation(line: 301, column: 27, scope: !444)
!447 = !DILocation(line: 301, column: 30, scope: !444)
!448 = !DILocation(line: 301, column: 35, scope: !444)
!449 = !DILocation(line: 301, column: 17, scope: !438)
!450 = !DILocation(line: 303, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !45, line: 302, column: 13)
!452 = !DILocation(line: 303, column: 17, scope: !451)
!453 = !DILocation(line: 303, column: 30, scope: !451)
!454 = !DILocation(line: 305, column: 23, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !45, line: 305, column: 17)
!456 = !DILocation(line: 305, column: 21, scope: !455)
!457 = !DILocation(line: 305, column: 28, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !45, line: 305, column: 17)
!459 = !DILocation(line: 305, column: 30, scope: !458)
!460 = !DILocation(line: 305, column: 17, scope: !455)
!461 = !DILocation(line: 307, column: 41, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !45, line: 306, column: 17)
!463 = !DILocation(line: 307, column: 34, scope: !462)
!464 = !DILocation(line: 307, column: 21, scope: !462)
!465 = !DILocation(line: 308, column: 17, scope: !462)
!466 = !DILocation(line: 305, column: 37, scope: !458)
!467 = !DILocation(line: 305, column: 17, scope: !458)
!468 = distinct !{!468, !460, !469, !237}
!469 = !DILocation(line: 308, column: 17, scope: !455)
!470 = !DILocation(line: 309, column: 13, scope: !451)
!471 = !DILocation(line: 312, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !444, file: !45, line: 311, column: 13)
!473 = !DILocation(line: 315, column: 5, scope: !439)
!474 = !DILocation(line: 316, column: 1, scope: !360)
!475 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 319, type: !105, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!476 = !DILocalVariable(name: "data", scope: !475, file: !45, line: 321, type: !23)
!477 = !DILocation(line: 321, column: 9, scope: !475)
!478 = !DILocation(line: 323, column: 10, scope: !475)
!479 = !DILocation(line: 324, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !45, line: 324, column: 8)
!481 = !DILocation(line: 324, column: 8, scope: !475)
!482 = !DILocation(line: 327, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !45, line: 325, column: 5)
!484 = !DILocation(line: 328, column: 5, scope: !483)
!485 = !DILocation(line: 333, column: 14, scope: !486)
!486 = distinct !DILexicalBlock(scope: !480, file: !45, line: 330, column: 5)
!487 = !DILocation(line: 335, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !475, file: !45, line: 335, column: 8)
!489 = !DILocation(line: 335, column: 8, scope: !475)
!490 = !DILocalVariable(name: "i", scope: !491, file: !45, line: 338, type: !23)
!491 = distinct !DILexicalBlock(scope: !492, file: !45, line: 337, column: 9)
!492 = distinct !DILexicalBlock(scope: !488, file: !45, line: 336, column: 5)
!493 = !DILocation(line: 338, column: 17, scope: !491)
!494 = !DILocalVariable(name: "buffer", scope: !491, file: !45, line: 339, type: !209)
!495 = !DILocation(line: 339, column: 17, scope: !491)
!496 = !DILocation(line: 342, column: 17, scope: !497)
!497 = distinct !DILexicalBlock(scope: !491, file: !45, line: 342, column: 17)
!498 = !DILocation(line: 342, column: 22, scope: !497)
!499 = !DILocation(line: 342, column: 17, scope: !491)
!500 = !DILocation(line: 344, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !45, line: 343, column: 13)
!502 = !DILocation(line: 344, column: 17, scope: !501)
!503 = !DILocation(line: 344, column: 30, scope: !501)
!504 = !DILocation(line: 346, column: 23, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !45, line: 346, column: 17)
!506 = !DILocation(line: 346, column: 21, scope: !505)
!507 = !DILocation(line: 346, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !45, line: 346, column: 17)
!509 = !DILocation(line: 346, column: 30, scope: !508)
!510 = !DILocation(line: 346, column: 17, scope: !505)
!511 = !DILocation(line: 348, column: 41, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !45, line: 347, column: 17)
!513 = !DILocation(line: 348, column: 34, scope: !512)
!514 = !DILocation(line: 348, column: 21, scope: !512)
!515 = !DILocation(line: 349, column: 17, scope: !512)
!516 = !DILocation(line: 346, column: 37, scope: !508)
!517 = !DILocation(line: 346, column: 17, scope: !508)
!518 = distinct !{!518, !510, !519, !237}
!519 = !DILocation(line: 349, column: 17, scope: !505)
!520 = !DILocation(line: 350, column: 13, scope: !501)
!521 = !DILocation(line: 353, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !497, file: !45, line: 352, column: 13)
!523 = !DILocation(line: 356, column: 5, scope: !492)
!524 = !DILocation(line: 357, column: 1, scope: !475)
!525 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 360, type: !105, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!526 = !DILocalVariable(name: "data", scope: !525, file: !45, line: 362, type: !23)
!527 = !DILocation(line: 362, column: 9, scope: !525)
!528 = !DILocation(line: 364, column: 10, scope: !525)
!529 = !DILocation(line: 365, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !45, line: 365, column: 8)
!531 = !DILocation(line: 365, column: 8, scope: !525)
!532 = !DILocation(line: 369, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !530, file: !45, line: 366, column: 5)
!534 = !DILocation(line: 370, column: 5, scope: !533)
!535 = !DILocation(line: 371, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !525, file: !45, line: 371, column: 8)
!537 = !DILocation(line: 371, column: 8, scope: !525)
!538 = !DILocalVariable(name: "i", scope: !539, file: !45, line: 374, type: !23)
!539 = distinct !DILexicalBlock(scope: !540, file: !45, line: 373, column: 9)
!540 = distinct !DILexicalBlock(scope: !536, file: !45, line: 372, column: 5)
!541 = !DILocation(line: 374, column: 17, scope: !539)
!542 = !DILocalVariable(name: "buffer", scope: !539, file: !45, line: 375, type: !209)
!543 = !DILocation(line: 375, column: 17, scope: !539)
!544 = !DILocation(line: 378, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !539, file: !45, line: 378, column: 17)
!546 = !DILocation(line: 378, column: 22, scope: !545)
!547 = !DILocation(line: 378, column: 17, scope: !539)
!548 = !DILocation(line: 380, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !45, line: 379, column: 13)
!550 = !DILocation(line: 380, column: 17, scope: !549)
!551 = !DILocation(line: 380, column: 30, scope: !549)
!552 = !DILocation(line: 382, column: 23, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !45, line: 382, column: 17)
!554 = !DILocation(line: 382, column: 21, scope: !553)
!555 = !DILocation(line: 382, column: 28, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !45, line: 382, column: 17)
!557 = !DILocation(line: 382, column: 30, scope: !556)
!558 = !DILocation(line: 382, column: 17, scope: !553)
!559 = !DILocation(line: 384, column: 41, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !45, line: 383, column: 17)
!561 = !DILocation(line: 384, column: 34, scope: !560)
!562 = !DILocation(line: 384, column: 21, scope: !560)
!563 = !DILocation(line: 385, column: 17, scope: !560)
!564 = !DILocation(line: 382, column: 37, scope: !556)
!565 = !DILocation(line: 382, column: 17, scope: !556)
!566 = distinct !{!566, !558, !567, !237}
!567 = !DILocation(line: 385, column: 17, scope: !553)
!568 = !DILocation(line: 386, column: 13, scope: !549)
!569 = !DILocation(line: 389, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !545, file: !45, line: 388, column: 13)
!571 = !DILocation(line: 392, column: 5, scope: !540)
!572 = !DILocation(line: 393, column: 1, scope: !525)
!573 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_good", scope: !45, file: !45, line: 395, type: !105, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!574 = !DILocation(line: 397, column: 5, scope: !573)
!575 = !DILocation(line: 398, column: 5, scope: !573)
!576 = !DILocation(line: 399, column: 5, scope: !573)
!577 = !DILocation(line: 400, column: 5, scope: !573)
!578 = !DILocation(line: 401, column: 1, scope: !573)
!579 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !580, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !42}
!582 = !DILocalVariable(name: "line", arg: 1, scope: !579, file: !3, line: 11, type: !42)
!583 = !DILocation(line: 11, column: 25, scope: !579)
!584 = !DILocation(line: 13, column: 1, scope: !579)
!585 = !DILocation(line: 14, column: 8, scope: !586)
!586 = distinct !DILexicalBlock(scope: !579, file: !3, line: 14, column: 8)
!587 = !DILocation(line: 14, column: 13, scope: !586)
!588 = !DILocation(line: 14, column: 8, scope: !579)
!589 = !DILocation(line: 16, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 15, column: 5)
!591 = !DILocation(line: 16, column: 9, scope: !590)
!592 = !DILocation(line: 17, column: 5, scope: !590)
!593 = !DILocation(line: 18, column: 5, scope: !579)
!594 = !DILocation(line: 19, column: 1, scope: !579)
!595 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !580, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!596 = !DILocalVariable(name: "line", arg: 1, scope: !595, file: !3, line: 20, type: !42)
!597 = !DILocation(line: 20, column: 29, scope: !595)
!598 = !DILocation(line: 22, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !3, line: 22, column: 8)
!600 = !DILocation(line: 22, column: 13, scope: !599)
!601 = !DILocation(line: 22, column: 8, scope: !595)
!602 = !DILocation(line: 24, column: 24, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 23, column: 5)
!604 = !DILocation(line: 24, column: 9, scope: !603)
!605 = !DILocation(line: 25, column: 5, scope: !603)
!606 = !DILocation(line: 26, column: 1, scope: !595)
!607 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !608, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !612, line: 74, baseType: !23)
!612 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!613 = !DILocalVariable(name: "line", arg: 1, scope: !607, file: !3, line: 27, type: !610)
!614 = !DILocation(line: 27, column: 29, scope: !607)
!615 = !DILocation(line: 29, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !607, file: !3, line: 29, column: 8)
!617 = !DILocation(line: 29, column: 13, scope: !616)
!618 = !DILocation(line: 29, column: 8, scope: !607)
!619 = !DILocation(line: 31, column: 27, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !3, line: 30, column: 5)
!621 = !DILocation(line: 31, column: 9, scope: !620)
!622 = !DILocation(line: 32, column: 5, scope: !620)
!623 = !DILocation(line: 33, column: 1, scope: !607)
!624 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !625, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !23}
!627 = !DILocalVariable(name: "intNumber", arg: 1, scope: !624, file: !3, line: 35, type: !23)
!628 = !DILocation(line: 35, column: 24, scope: !624)
!629 = !DILocation(line: 37, column: 20, scope: !624)
!630 = !DILocation(line: 37, column: 5, scope: !624)
!631 = !DILocation(line: 38, column: 1, scope: !624)
!632 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !633, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!636 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !632, file: !3, line: 40, type: !635)
!637 = !DILocation(line: 40, column: 28, scope: !632)
!638 = !DILocation(line: 42, column: 21, scope: !632)
!639 = !DILocation(line: 42, column: 5, scope: !632)
!640 = !DILocation(line: 43, column: 1, scope: !632)
!641 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !642, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644}
!644 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!645 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !641, file: !3, line: 45, type: !644)
!646 = !DILocation(line: 45, column: 28, scope: !641)
!647 = !DILocation(line: 47, column: 20, scope: !641)
!648 = !DILocation(line: 47, column: 5, scope: !641)
!649 = !DILocation(line: 48, column: 1, scope: !641)
!650 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !651, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !653}
!653 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!654 = !DILocalVariable(name: "longNumber", arg: 1, scope: !650, file: !3, line: 50, type: !653)
!655 = !DILocation(line: 50, column: 26, scope: !650)
!656 = !DILocation(line: 52, column: 21, scope: !650)
!657 = !DILocation(line: 52, column: 5, scope: !650)
!658 = !DILocation(line: 53, column: 1, scope: !650)
!659 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !660, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !662}
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !663, line: 27, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !127, line: 44, baseType: !653)
!665 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !659, file: !3, line: 55, type: !662)
!666 = !DILocation(line: 55, column: 33, scope: !659)
!667 = !DILocation(line: 57, column: 29, scope: !659)
!668 = !DILocation(line: 57, column: 5, scope: !659)
!669 = !DILocation(line: 58, column: 1, scope: !659)
!670 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !671, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !673}
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !612, line: 46, baseType: !674)
!674 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!675 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !670, file: !3, line: 60, type: !673)
!676 = !DILocation(line: 60, column: 29, scope: !670)
!677 = !DILocation(line: 62, column: 21, scope: !670)
!678 = !DILocation(line: 62, column: 5, scope: !670)
!679 = !DILocation(line: 63, column: 1, scope: !670)
!680 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !681, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !43}
!683 = !DILocalVariable(name: "charHex", arg: 1, scope: !680, file: !3, line: 65, type: !43)
!684 = !DILocation(line: 65, column: 29, scope: !680)
!685 = !DILocation(line: 67, column: 22, scope: !680)
!686 = !DILocation(line: 67, column: 5, scope: !680)
!687 = !DILocation(line: 68, column: 1, scope: !680)
!688 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !689, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !611}
!691 = !DILocalVariable(name: "wideChar", arg: 1, scope: !688, file: !3, line: 70, type: !611)
!692 = !DILocation(line: 70, column: 29, scope: !688)
!693 = !DILocalVariable(name: "s", scope: !688, file: !3, line: 74, type: !694)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 64, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 2)
!697 = !DILocation(line: 74, column: 13, scope: !688)
!698 = !DILocation(line: 75, column: 16, scope: !688)
!699 = !DILocation(line: 75, column: 9, scope: !688)
!700 = !DILocation(line: 75, column: 14, scope: !688)
!701 = !DILocation(line: 76, column: 9, scope: !688)
!702 = !DILocation(line: 76, column: 14, scope: !688)
!703 = !DILocation(line: 77, column: 21, scope: !688)
!704 = !DILocation(line: 77, column: 5, scope: !688)
!705 = !DILocation(line: 78, column: 1, scope: !688)
!706 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !707, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !7}
!709 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !706, file: !3, line: 80, type: !7)
!710 = !DILocation(line: 80, column: 33, scope: !706)
!711 = !DILocation(line: 82, column: 20, scope: !706)
!712 = !DILocation(line: 82, column: 5, scope: !706)
!713 = !DILocation(line: 83, column: 1, scope: !706)
!714 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !715, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !25}
!717 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !714, file: !3, line: 85, type: !25)
!718 = !DILocation(line: 85, column: 45, scope: !714)
!719 = !DILocation(line: 87, column: 22, scope: !714)
!720 = !DILocation(line: 87, column: 5, scope: !714)
!721 = !DILocation(line: 88, column: 1, scope: !714)
!722 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !723, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725}
!725 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!726 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !722, file: !3, line: 90, type: !725)
!727 = !DILocation(line: 90, column: 29, scope: !722)
!728 = !DILocation(line: 92, column: 20, scope: !722)
!729 = !DILocation(line: 92, column: 5, scope: !722)
!730 = !DILocation(line: 93, column: 1, scope: !722)
!731 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !732, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !736, line: 100, baseType: !737)
!736 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_524/source_code")
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !736, line: 96, size: 64, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !737, file: !736, line: 98, baseType: !23, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !737, file: !736, line: 99, baseType: !23, size: 32, offset: 32)
!741 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !731, file: !3, line: 95, type: !734)
!742 = !DILocation(line: 95, column: 40, scope: !731)
!743 = !DILocation(line: 97, column: 26, scope: !731)
!744 = !DILocation(line: 97, column: 47, scope: !731)
!745 = !DILocation(line: 97, column: 55, scope: !731)
!746 = !DILocation(line: 97, column: 76, scope: !731)
!747 = !DILocation(line: 97, column: 5, scope: !731)
!748 = !DILocation(line: 98, column: 1, scope: !731)
!749 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !750, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !752, !673}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!753 = !DILocalVariable(name: "bytes", arg: 1, scope: !749, file: !3, line: 100, type: !752)
!754 = !DILocation(line: 100, column: 38, scope: !749)
!755 = !DILocalVariable(name: "numBytes", arg: 2, scope: !749, file: !3, line: 100, type: !673)
!756 = !DILocation(line: 100, column: 52, scope: !749)
!757 = !DILocalVariable(name: "i", scope: !749, file: !3, line: 102, type: !673)
!758 = !DILocation(line: 102, column: 12, scope: !749)
!759 = !DILocation(line: 103, column: 12, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !3, line: 103, column: 5)
!761 = !DILocation(line: 103, column: 10, scope: !760)
!762 = !DILocation(line: 103, column: 17, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 103, column: 5)
!764 = !DILocation(line: 103, column: 21, scope: !763)
!765 = !DILocation(line: 103, column: 19, scope: !763)
!766 = !DILocation(line: 103, column: 5, scope: !760)
!767 = !DILocation(line: 105, column: 24, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !3, line: 104, column: 5)
!769 = !DILocation(line: 105, column: 30, scope: !768)
!770 = !DILocation(line: 105, column: 9, scope: !768)
!771 = !DILocation(line: 106, column: 5, scope: !768)
!772 = !DILocation(line: 103, column: 31, scope: !763)
!773 = !DILocation(line: 103, column: 5, scope: !763)
!774 = distinct !{!774, !766, !775, !237}
!775 = !DILocation(line: 106, column: 5, scope: !760)
!776 = !DILocation(line: 107, column: 5, scope: !749)
!777 = !DILocation(line: 108, column: 1, scope: !749)
!778 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !779, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DISubroutineType(types: !780)
!780 = !{!673, !752, !673, !42}
!781 = !DILocalVariable(name: "bytes", arg: 1, scope: !778, file: !3, line: 113, type: !752)
!782 = !DILocation(line: 113, column: 39, scope: !778)
!783 = !DILocalVariable(name: "numBytes", arg: 2, scope: !778, file: !3, line: 113, type: !673)
!784 = !DILocation(line: 113, column: 53, scope: !778)
!785 = !DILocalVariable(name: "hex", arg: 3, scope: !778, file: !3, line: 113, type: !42)
!786 = !DILocation(line: 113, column: 71, scope: !778)
!787 = !DILocalVariable(name: "numWritten", scope: !778, file: !3, line: 115, type: !673)
!788 = !DILocation(line: 115, column: 12, scope: !778)
!789 = !DILocation(line: 121, column: 5, scope: !778)
!790 = !DILocation(line: 121, column: 12, scope: !778)
!791 = !DILocation(line: 121, column: 25, scope: !778)
!792 = !DILocation(line: 121, column: 23, scope: !778)
!793 = !DILocation(line: 121, column: 34, scope: !778)
!794 = !DILocation(line: 121, column: 37, scope: !778)
!795 = !DILocation(line: 121, column: 67, scope: !778)
!796 = !DILocation(line: 121, column: 70, scope: !778)
!797 = !DILocation(line: 0, scope: !778)
!798 = !DILocalVariable(name: "byte", scope: !799, file: !3, line: 123, type: !23)
!799 = distinct !DILexicalBlock(scope: !778, file: !3, line: 122, column: 5)
!800 = !DILocation(line: 123, column: 13, scope: !799)
!801 = !DILocation(line: 124, column: 17, scope: !799)
!802 = !DILocation(line: 124, column: 25, scope: !799)
!803 = !DILocation(line: 124, column: 23, scope: !799)
!804 = !DILocation(line: 124, column: 9, scope: !799)
!805 = !DILocation(line: 125, column: 45, scope: !799)
!806 = !DILocation(line: 125, column: 29, scope: !799)
!807 = !DILocation(line: 125, column: 9, scope: !799)
!808 = !DILocation(line: 125, column: 15, scope: !799)
!809 = !DILocation(line: 125, column: 27, scope: !799)
!810 = !DILocation(line: 126, column: 9, scope: !799)
!811 = distinct !{!811, !789, !812, !237}
!812 = !DILocation(line: 127, column: 5, scope: !778)
!813 = !DILocation(line: 129, column: 12, scope: !778)
!814 = !DILocation(line: 129, column: 5, scope: !778)
!815 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !816, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!816 = !DISubroutineType(types: !817)
!817 = !{!673, !752, !673, !610}
!818 = !DILocalVariable(name: "bytes", arg: 1, scope: !815, file: !3, line: 135, type: !752)
!819 = !DILocation(line: 135, column: 41, scope: !815)
!820 = !DILocalVariable(name: "numBytes", arg: 2, scope: !815, file: !3, line: 135, type: !673)
!821 = !DILocation(line: 135, column: 55, scope: !815)
!822 = !DILocalVariable(name: "hex", arg: 3, scope: !815, file: !3, line: 135, type: !610)
!823 = !DILocation(line: 135, column: 76, scope: !815)
!824 = !DILocalVariable(name: "numWritten", scope: !815, file: !3, line: 137, type: !673)
!825 = !DILocation(line: 137, column: 12, scope: !815)
!826 = !DILocation(line: 143, column: 5, scope: !815)
!827 = !DILocation(line: 143, column: 12, scope: !815)
!828 = !DILocation(line: 143, column: 25, scope: !815)
!829 = !DILocation(line: 143, column: 23, scope: !815)
!830 = !DILocation(line: 143, column: 34, scope: !815)
!831 = !DILocation(line: 143, column: 47, scope: !815)
!832 = !DILocation(line: 143, column: 55, scope: !815)
!833 = !DILocation(line: 143, column: 53, scope: !815)
!834 = !DILocation(line: 143, column: 37, scope: !815)
!835 = !DILocation(line: 143, column: 68, scope: !815)
!836 = !DILocation(line: 143, column: 81, scope: !815)
!837 = !DILocation(line: 143, column: 89, scope: !815)
!838 = !DILocation(line: 143, column: 87, scope: !815)
!839 = !DILocation(line: 143, column: 100, scope: !815)
!840 = !DILocation(line: 143, column: 71, scope: !815)
!841 = !DILocation(line: 0, scope: !815)
!842 = !DILocalVariable(name: "byte", scope: !843, file: !3, line: 145, type: !23)
!843 = distinct !DILexicalBlock(scope: !815, file: !3, line: 144, column: 5)
!844 = !DILocation(line: 145, column: 13, scope: !843)
!845 = !DILocation(line: 146, column: 18, scope: !843)
!846 = !DILocation(line: 146, column: 26, scope: !843)
!847 = !DILocation(line: 146, column: 24, scope: !843)
!848 = !DILocation(line: 146, column: 9, scope: !843)
!849 = !DILocation(line: 147, column: 45, scope: !843)
!850 = !DILocation(line: 147, column: 29, scope: !843)
!851 = !DILocation(line: 147, column: 9, scope: !843)
!852 = !DILocation(line: 147, column: 15, scope: !843)
!853 = !DILocation(line: 147, column: 27, scope: !843)
!854 = !DILocation(line: 148, column: 9, scope: !843)
!855 = distinct !{!855, !826, !856, !237}
!856 = !DILocation(line: 149, column: 5, scope: !815)
!857 = !DILocation(line: 151, column: 12, scope: !815)
!858 = !DILocation(line: 151, column: 5, scope: !815)
!859 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !860, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!860 = !DISubroutineType(types: !861)
!861 = !{!23}
!862 = !DILocation(line: 158, column: 5, scope: !859)
!863 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !860, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!864 = !DILocation(line: 163, column: 5, scope: !863)
!865 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !860, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!866 = !DILocation(line: 168, column: 13, scope: !865)
!867 = !DILocation(line: 168, column: 20, scope: !865)
!868 = !DILocation(line: 168, column: 5, scope: !865)
!869 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !105, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!870 = !DILocation(line: 187, column: 16, scope: !869)
!871 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !105, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!872 = !DILocation(line: 188, column: 16, scope: !871)
!873 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !105, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!874 = !DILocation(line: 189, column: 16, scope: !873)
!875 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !105, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!876 = !DILocation(line: 190, column: 16, scope: !875)
!877 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !105, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!878 = !DILocation(line: 191, column: 16, scope: !877)
!879 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !105, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!880 = !DILocation(line: 192, column: 16, scope: !879)
!881 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !105, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!882 = !DILocation(line: 193, column: 16, scope: !881)
!883 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !105, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!884 = !DILocation(line: 194, column: 16, scope: !883)
!885 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !105, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!886 = !DILocation(line: 195, column: 16, scope: !885)
!887 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !105, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!888 = !DILocation(line: 198, column: 15, scope: !887)
!889 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !105, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!890 = !DILocation(line: 199, column: 15, scope: !889)
!891 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !105, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!892 = !DILocation(line: 200, column: 15, scope: !891)
!893 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !105, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!894 = !DILocation(line: 201, column: 15, scope: !893)
!895 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !105, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!896 = !DILocation(line: 202, column: 15, scope: !895)
!897 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !105, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!898 = !DILocation(line: 203, column: 15, scope: !897)
!899 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !105, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!900 = !DILocation(line: 204, column: 15, scope: !899)
!901 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !105, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!902 = !DILocation(line: 205, column: 15, scope: !901)
!903 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !105, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!904 = !DILocation(line: 206, column: 15, scope: !903)
