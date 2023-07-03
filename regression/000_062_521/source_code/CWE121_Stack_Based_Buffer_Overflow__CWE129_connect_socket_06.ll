; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_bad() #0 !dbg !67 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 -1, i32* %data, align 4, !dbg !73
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !74
  %cmp = icmp eq i32 %0, 5, !dbg !76
  br i1 %cmp, label %if.then, label %if.end23, !dbg !77

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !82, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 -1, i32* %connectSocket, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  br label %do.body, !dbg !109

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !110
  store i32 %call, i32* %connectSocket, align 4, !dbg !112
  %1 = load i32, i32* %connectSocket, align 4, !dbg !113
  %cmp1 = icmp eq i32 %1, -1, !dbg !115
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !116

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !117

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !119
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !120
  store i16 2, i16* %sin_family, align 4, !dbg !121
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 %call3, i32* %s_addr, align 4, !dbg !125
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !127
  store i16 %call4, i16* %sin_port, align 2, !dbg !128
  %3 = load i32, i32* %connectSocket, align 4, !dbg !129
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !131
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !132
  %cmp6 = icmp eq i32 %call5, -1, !dbg !133
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !134

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !137
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !138
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !139
  %conv = trunc i64 %call9 to i32, !dbg !139
  store i32 %conv, i32* %recvResult, align 4, !dbg !140
  %6 = load i32, i32* %recvResult, align 4, !dbg !141
  %cmp10 = icmp eq i32 %6, -1, !dbg !143
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !144

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !145
  %cmp12 = icmp eq i32 %7, 0, !dbg !146
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !147

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !148

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !150
  %idxprom = sext i32 %8 to i64, !dbg !151
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !151
  store i8 0, i8* %arrayidx, align 1, !dbg !152
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !153
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !154
  store i32 %call17, i32* %data, align 4, !dbg !155
  br label %do.end, !dbg !156

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !157
  %cmp18 = icmp ne i32 %9, -1, !dbg !159
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !160

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !161
  %call21 = call i32 @close(i32 %10), !dbg !163
  br label %if.end22, !dbg !164

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !165

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !166
  %cmp24 = icmp eq i32 %11, 5, !dbg !168
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !169

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !170, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !174, metadata !DIExpression()), !dbg !178
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !178
  %13 = load i32, i32* %data, align 4, !dbg !179
  %cmp27 = icmp sge i32 %13, 0, !dbg !181
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !182

if.then29:                                        ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !183
  %idxprom30 = sext i32 %14 to i64, !dbg !185
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !185
  store i32 1, i32* %arrayidx31, align 4, !dbg !186
  store i32 0, i32* %i, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then29
  %15 = load i32, i32* %i, align 4, !dbg !190
  %cmp32 = icmp slt i32 %15, 10, !dbg !192
  br i1 %cmp32, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !194
  %idxprom34 = sext i32 %16 to i64, !dbg !196
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !196
  %17 = load i32, i32* %arrayidx35, align 4, !dbg !196
  call void @printIntLine(i32 %17), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !199
  %inc = add nsw i32 %18, 1, !dbg !199
  store i32 %inc, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !204

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !207

if.end37:                                         ; preds = %if.end36, %if.end23
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
define dso_local void @goodB2G1() #0 !dbg !209 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 -1, i32* %data, align 4, !dbg !212
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !213
  %cmp = icmp eq i32 %0, 5, !dbg !215
  br i1 %cmp, label %if.then, label %if.end23, !dbg !216

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !217, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !223, metadata !DIExpression()), !dbg !224
  store i32 -1, i32* %connectSocket, align 4, !dbg !224
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  br label %do.body, !dbg !227

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !228
  store i32 %call, i32* %connectSocket, align 4, !dbg !230
  %1 = load i32, i32* %connectSocket, align 4, !dbg !231
  %cmp1 = icmp eq i32 %1, -1, !dbg !233
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !234

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !235

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !237
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !238
  store i16 2, i16* %sin_family, align 4, !dbg !239
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !240
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !241
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !242
  store i32 %call3, i32* %s_addr, align 4, !dbg !243
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !244
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !245
  store i16 %call4, i16* %sin_port, align 2, !dbg !246
  %3 = load i32, i32* %connectSocket, align 4, !dbg !247
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !249
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !250
  %cmp6 = icmp eq i32 %call5, -1, !dbg !251
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !252

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !253

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !255
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !256
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !257
  %conv = trunc i64 %call9 to i32, !dbg !257
  store i32 %conv, i32* %recvResult, align 4, !dbg !258
  %6 = load i32, i32* %recvResult, align 4, !dbg !259
  %cmp10 = icmp eq i32 %6, -1, !dbg !261
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !262

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !263
  %cmp12 = icmp eq i32 %7, 0, !dbg !264
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !265

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !266

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !268
  %idxprom = sext i32 %8 to i64, !dbg !269
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !269
  store i8 0, i8* %arrayidx, align 1, !dbg !270
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !271
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !272
  store i32 %call17, i32* %data, align 4, !dbg !273
  br label %do.end, !dbg !274

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !275
  %cmp18 = icmp ne i32 %9, -1, !dbg !277
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !278

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !279
  %call21 = call i32 @close(i32 %10), !dbg !281
  br label %if.end22, !dbg !282

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !283

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !284
  %cmp24 = icmp ne i32 %11, 5, !dbg !286
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !287

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !288
  br label %if.end40, !dbg !290

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !295, metadata !DIExpression()), !dbg !296
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !296
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !296
  %13 = load i32, i32* %data, align 4, !dbg !297
  %cmp27 = icmp sge i32 %13, 0, !dbg !299
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !300

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !301
  %cmp29 = icmp slt i32 %14, 10, !dbg !302
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !303

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !304
  %idxprom32 = sext i32 %15 to i64, !dbg !306
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !306
  store i32 1, i32* %arrayidx33, align 4, !dbg !307
  store i32 0, i32* %i, align 4, !dbg !308
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !311
  %cmp34 = icmp slt i32 %16, 10, !dbg !313
  br i1 %cmp34, label %for.body, label %for.end, !dbg !314

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !315
  %idxprom36 = sext i32 %17 to i64, !dbg !317
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !317
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !317
  call void @printIntLine(i32 %18), !dbg !318
  br label %for.inc, !dbg !319

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !320
  %inc = add nsw i32 %19, 1, !dbg !320
  store i32 %inc, i32* %i, align 4, !dbg !320
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !324

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !325
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !328 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !329, metadata !DIExpression()), !dbg !330
  store i32 -1, i32* %data, align 4, !dbg !331
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !332
  %cmp = icmp eq i32 %0, 5, !dbg !334
  br i1 %cmp, label %if.then, label %if.end23, !dbg !335

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !336, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 -1, i32* %connectSocket, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !344, metadata !DIExpression()), !dbg !345
  br label %do.body, !dbg !346

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !347
  store i32 %call, i32* %connectSocket, align 4, !dbg !349
  %1 = load i32, i32* %connectSocket, align 4, !dbg !350
  %cmp1 = icmp eq i32 %1, -1, !dbg !352
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !353

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !354

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !356
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !356
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !357
  store i16 2, i16* %sin_family, align 4, !dbg !358
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !359
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !360
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !361
  store i32 %call3, i32* %s_addr, align 4, !dbg !362
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !363
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !364
  store i16 %call4, i16* %sin_port, align 2, !dbg !365
  %3 = load i32, i32* %connectSocket, align 4, !dbg !366
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !368
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !369
  %cmp6 = icmp eq i32 %call5, -1, !dbg !370
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !371

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !372

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !374
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !375
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !376
  %conv = trunc i64 %call9 to i32, !dbg !376
  store i32 %conv, i32* %recvResult, align 4, !dbg !377
  %6 = load i32, i32* %recvResult, align 4, !dbg !378
  %cmp10 = icmp eq i32 %6, -1, !dbg !380
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !381

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !382
  %cmp12 = icmp eq i32 %7, 0, !dbg !383
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !384

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !385

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !387
  %idxprom = sext i32 %8 to i64, !dbg !388
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !388
  store i8 0, i8* %arrayidx, align 1, !dbg !389
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !390
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !391
  store i32 %call17, i32* %data, align 4, !dbg !392
  br label %do.end, !dbg !393

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !394
  %cmp18 = icmp ne i32 %9, -1, !dbg !396
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !397

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !398
  %call21 = call i32 @close(i32 %10), !dbg !400
  br label %if.end22, !dbg !401

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !402

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !403
  %cmp24 = icmp eq i32 %11, 5, !dbg !405
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !406

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !407, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !411, metadata !DIExpression()), !dbg !412
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !412
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !412
  %13 = load i32, i32* %data, align 4, !dbg !413
  %cmp27 = icmp sge i32 %13, 0, !dbg !415
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !416

land.lhs.true:                                    ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !417
  %cmp29 = icmp slt i32 %14, 10, !dbg !418
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !419

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !420
  %idxprom32 = sext i32 %15 to i64, !dbg !422
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !422
  store i32 1, i32* %arrayidx33, align 4, !dbg !423
  store i32 0, i32* %i, align 4, !dbg !424
  br label %for.cond, !dbg !426

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !427
  %cmp34 = icmp slt i32 %16, 10, !dbg !429
  br i1 %cmp34, label %for.body, label %for.end, !dbg !430

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !431
  %idxprom36 = sext i32 %17 to i64, !dbg !433
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !433
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !433
  call void @printIntLine(i32 %18), !dbg !434
  br label %for.inc, !dbg !435

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !436
  %inc = add nsw i32 %19, 1, !dbg !436
  store i32 %inc, i32* %i, align 4, !dbg !436
  br label %for.cond, !dbg !437, !llvm.loop !438

for.end:                                          ; preds = %for.cond
  br label %if.end38, !dbg !440

if.else:                                          ; preds = %land.lhs.true, %if.then26
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !441
  br label %if.end38

if.end38:                                         ; preds = %if.else, %for.end
  br label %if.end39, !dbg !443

if.end39:                                         ; preds = %if.end38, %if.end23
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !445 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !446, metadata !DIExpression()), !dbg !447
  store i32 -1, i32* %data, align 4, !dbg !448
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !449
  %cmp = icmp ne i32 %0, 5, !dbg !451
  br i1 %cmp, label %if.then, label %if.else, !dbg !452

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !453
  br label %if.end, !dbg !455

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !456
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !458
  %cmp1 = icmp eq i32 %1, 5, !dbg !460
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !461

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !462, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !466, metadata !DIExpression()), !dbg !467
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !467
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !467
  %3 = load i32, i32* %data, align 4, !dbg !468
  %cmp3 = icmp sge i32 %3, 0, !dbg !470
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !471

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !472
  %idxprom = sext i32 %4 to i64, !dbg !474
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !474
  store i32 1, i32* %arrayidx, align 4, !dbg !475
  store i32 0, i32* %i, align 4, !dbg !476
  br label %for.cond, !dbg !478

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !479
  %cmp5 = icmp slt i32 %5, 10, !dbg !481
  br i1 %cmp5, label %for.body, label %for.end, !dbg !482

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !483
  %idxprom6 = sext i32 %6 to i64, !dbg !485
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !485
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !485
  call void @printIntLine(i32 %7), !dbg !486
  br label %for.inc, !dbg !487

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !488
  %inc = add nsw i32 %8, 1, !dbg !488
  store i32 %inc, i32* %i, align 4, !dbg !488
  br label %for.cond, !dbg !489, !llvm.loop !490

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !492

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !493
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !495

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !497 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !498, metadata !DIExpression()), !dbg !499
  store i32 -1, i32* %data, align 4, !dbg !500
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !501
  %cmp = icmp eq i32 %0, 5, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !505
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !508
  %cmp1 = icmp eq i32 %1, 5, !dbg !510
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !511

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !512, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !516, metadata !DIExpression()), !dbg !517
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !517
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !517
  %3 = load i32, i32* %data, align 4, !dbg !518
  %cmp3 = icmp sge i32 %3, 0, !dbg !520
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !521

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !522
  %idxprom = sext i32 %4 to i64, !dbg !524
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !524
  store i32 1, i32* %arrayidx, align 4, !dbg !525
  store i32 0, i32* %i, align 4, !dbg !526
  br label %for.cond, !dbg !528

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !529
  %cmp5 = icmp slt i32 %5, 10, !dbg !531
  br i1 %cmp5, label %for.body, label %for.end, !dbg !532

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !533
  %idxprom6 = sext i32 %6 to i64, !dbg !535
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !535
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !535
  call void @printIntLine(i32 %7), !dbg !536
  br label %for.inc, !dbg !537

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !538
  %inc = add nsw i32 %8, 1, !dbg !538
  store i32 %inc, i32* %i, align 4, !dbg !538
  br label %for.cond, !dbg !539, !llvm.loop !540

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !542

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !543
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !545

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good() #0 !dbg !547 {
entry:
  call void @goodB2G1(), !dbg !548
  call void @goodB2G2(), !dbg !549
  call void @goodG2B1(), !dbg !550
  call void @goodG2B2(), !dbg !551
  ret void, !dbg !552
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!63, !64, !65}
!llvm.ident = !{!66}

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
!63 = !{i32 7, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{!"clang version 12.0.0"}
!67 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_bad", scope: !3, file: !3, line: 50, type: !68, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null}
!70 = !{}
!71 = !DILocalVariable(name: "data", scope: !67, file: !3, line: 52, type: !62)
!72 = !DILocation(line: 52, column: 9, scope: !67)
!73 = !DILocation(line: 54, column: 10, scope: !67)
!74 = !DILocation(line: 55, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !3, line: 55, column: 8)
!76 = !DILocation(line: 55, column: 25, scope: !75)
!77 = !DILocation(line: 55, column: 8, scope: !67)
!78 = !DILocalVariable(name: "recvResult", scope: !79, file: !3, line: 62, type: !62)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 57, column: 9)
!80 = distinct !DILexicalBlock(scope: !75, file: !3, line: 56, column: 5)
!81 = !DILocation(line: 62, column: 17, scope: !79)
!82 = !DILocalVariable(name: "service", scope: !79, file: !3, line: 63, type: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !84)
!84 = !{!85, !86, !92, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !83, file: !19, line: 240, baseType: !53, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !83, file: !19, line: 241, baseType: !87, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 25, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !91, line: 40, baseType: !55)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !83, file: !19, line: 242, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !93, file: !19, line: 33, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 26, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !91, line: 42, baseType: !7)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !83, file: !19, line: 245, baseType: !100, size: 64, offset: 64)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !102)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DILocation(line: 63, column: 32, scope: !79)
!105 = !DILocalVariable(name: "connectSocket", scope: !79, file: !3, line: 64, type: !62)
!106 = !DILocation(line: 64, column: 20, scope: !79)
!107 = !DILocalVariable(name: "inputBuffer", scope: !79, file: !3, line: 65, type: !57)
!108 = !DILocation(line: 65, column: 18, scope: !79)
!109 = !DILocation(line: 66, column: 13, scope: !79)
!110 = !DILocation(line: 76, column: 33, scope: !111)
!111 = distinct !DILexicalBlock(scope: !79, file: !3, line: 67, column: 13)
!112 = !DILocation(line: 76, column: 31, scope: !111)
!113 = !DILocation(line: 77, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 77, column: 21)
!115 = !DILocation(line: 77, column: 35, scope: !114)
!116 = !DILocation(line: 77, column: 21, scope: !111)
!117 = !DILocation(line: 79, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 78, column: 17)
!119 = !DILocation(line: 81, column: 17, scope: !111)
!120 = !DILocation(line: 82, column: 25, scope: !111)
!121 = !DILocation(line: 82, column: 36, scope: !111)
!122 = !DILocation(line: 83, column: 43, scope: !111)
!123 = !DILocation(line: 83, column: 25, scope: !111)
!124 = !DILocation(line: 83, column: 34, scope: !111)
!125 = !DILocation(line: 83, column: 41, scope: !111)
!126 = !DILocation(line: 84, column: 36, scope: !111)
!127 = !DILocation(line: 84, column: 25, scope: !111)
!128 = !DILocation(line: 84, column: 34, scope: !111)
!129 = !DILocation(line: 85, column: 29, scope: !130)
!130 = distinct !DILexicalBlock(scope: !111, file: !3, line: 85, column: 21)
!131 = !DILocation(line: 85, column: 44, scope: !130)
!132 = !DILocation(line: 85, column: 21, scope: !130)
!133 = !DILocation(line: 85, column: 89, scope: !130)
!134 = !DILocation(line: 85, column: 21, scope: !111)
!135 = !DILocation(line: 87, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !3, line: 86, column: 17)
!137 = !DILocation(line: 91, column: 35, scope: !111)
!138 = !DILocation(line: 91, column: 50, scope: !111)
!139 = !DILocation(line: 91, column: 30, scope: !111)
!140 = !DILocation(line: 91, column: 28, scope: !111)
!141 = !DILocation(line: 92, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !111, file: !3, line: 92, column: 21)
!143 = !DILocation(line: 92, column: 32, scope: !142)
!144 = !DILocation(line: 92, column: 48, scope: !142)
!145 = !DILocation(line: 92, column: 51, scope: !142)
!146 = !DILocation(line: 92, column: 62, scope: !142)
!147 = !DILocation(line: 92, column: 21, scope: !111)
!148 = !DILocation(line: 94, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !3, line: 93, column: 17)
!150 = !DILocation(line: 97, column: 29, scope: !111)
!151 = !DILocation(line: 97, column: 17, scope: !111)
!152 = !DILocation(line: 97, column: 41, scope: !111)
!153 = !DILocation(line: 99, column: 29, scope: !111)
!154 = !DILocation(line: 99, column: 24, scope: !111)
!155 = !DILocation(line: 99, column: 22, scope: !111)
!156 = !DILocation(line: 100, column: 13, scope: !111)
!157 = !DILocation(line: 102, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !79, file: !3, line: 102, column: 17)
!159 = !DILocation(line: 102, column: 31, scope: !158)
!160 = !DILocation(line: 102, column: 17, scope: !79)
!161 = !DILocation(line: 104, column: 30, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 103, column: 13)
!163 = !DILocation(line: 104, column: 17, scope: !162)
!164 = !DILocation(line: 105, column: 13, scope: !162)
!165 = !DILocation(line: 113, column: 5, scope: !80)
!166 = !DILocation(line: 114, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !67, file: !3, line: 114, column: 8)
!168 = !DILocation(line: 114, column: 25, scope: !167)
!169 = !DILocation(line: 114, column: 8, scope: !67)
!170 = !DILocalVariable(name: "i", scope: !171, file: !3, line: 117, type: !62)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 116, column: 9)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 115, column: 5)
!173 = !DILocation(line: 117, column: 17, scope: !171)
!174 = !DILocalVariable(name: "buffer", scope: !171, file: !3, line: 118, type: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 320, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 10)
!178 = !DILocation(line: 118, column: 17, scope: !171)
!179 = !DILocation(line: 121, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !3, line: 121, column: 17)
!181 = !DILocation(line: 121, column: 22, scope: !180)
!182 = !DILocation(line: 121, column: 17, scope: !171)
!183 = !DILocation(line: 123, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !3, line: 122, column: 13)
!185 = !DILocation(line: 123, column: 17, scope: !184)
!186 = !DILocation(line: 123, column: 30, scope: !184)
!187 = !DILocation(line: 125, column: 23, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !3, line: 125, column: 17)
!189 = !DILocation(line: 125, column: 21, scope: !188)
!190 = !DILocation(line: 125, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 125, column: 17)
!192 = !DILocation(line: 125, column: 30, scope: !191)
!193 = !DILocation(line: 125, column: 17, scope: !188)
!194 = !DILocation(line: 127, column: 41, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 126, column: 17)
!196 = !DILocation(line: 127, column: 34, scope: !195)
!197 = !DILocation(line: 127, column: 21, scope: !195)
!198 = !DILocation(line: 128, column: 17, scope: !195)
!199 = !DILocation(line: 125, column: 37, scope: !191)
!200 = !DILocation(line: 125, column: 17, scope: !191)
!201 = distinct !{!201, !193, !202, !203}
!202 = !DILocation(line: 128, column: 17, scope: !188)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 129, column: 13, scope: !184)
!205 = !DILocation(line: 132, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !180, file: !3, line: 131, column: 13)
!207 = !DILocation(line: 135, column: 5, scope: !172)
!208 = !DILocation(line: 136, column: 1, scope: !67)
!209 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 143, type: !68, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!210 = !DILocalVariable(name: "data", scope: !209, file: !3, line: 145, type: !62)
!211 = !DILocation(line: 145, column: 9, scope: !209)
!212 = !DILocation(line: 147, column: 10, scope: !209)
!213 = !DILocation(line: 148, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 148, column: 8)
!215 = !DILocation(line: 148, column: 25, scope: !214)
!216 = !DILocation(line: 148, column: 8, scope: !209)
!217 = !DILocalVariable(name: "recvResult", scope: !218, file: !3, line: 155, type: !62)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 150, column: 9)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 149, column: 5)
!220 = !DILocation(line: 155, column: 17, scope: !218)
!221 = !DILocalVariable(name: "service", scope: !218, file: !3, line: 156, type: !83)
!222 = !DILocation(line: 156, column: 32, scope: !218)
!223 = !DILocalVariable(name: "connectSocket", scope: !218, file: !3, line: 157, type: !62)
!224 = !DILocation(line: 157, column: 20, scope: !218)
!225 = !DILocalVariable(name: "inputBuffer", scope: !218, file: !3, line: 158, type: !57)
!226 = !DILocation(line: 158, column: 18, scope: !218)
!227 = !DILocation(line: 159, column: 13, scope: !218)
!228 = !DILocation(line: 169, column: 33, scope: !229)
!229 = distinct !DILexicalBlock(scope: !218, file: !3, line: 160, column: 13)
!230 = !DILocation(line: 169, column: 31, scope: !229)
!231 = !DILocation(line: 170, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 170, column: 21)
!233 = !DILocation(line: 170, column: 35, scope: !232)
!234 = !DILocation(line: 170, column: 21, scope: !229)
!235 = !DILocation(line: 172, column: 21, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 171, column: 17)
!237 = !DILocation(line: 174, column: 17, scope: !229)
!238 = !DILocation(line: 175, column: 25, scope: !229)
!239 = !DILocation(line: 175, column: 36, scope: !229)
!240 = !DILocation(line: 176, column: 43, scope: !229)
!241 = !DILocation(line: 176, column: 25, scope: !229)
!242 = !DILocation(line: 176, column: 34, scope: !229)
!243 = !DILocation(line: 176, column: 41, scope: !229)
!244 = !DILocation(line: 177, column: 36, scope: !229)
!245 = !DILocation(line: 177, column: 25, scope: !229)
!246 = !DILocation(line: 177, column: 34, scope: !229)
!247 = !DILocation(line: 178, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !229, file: !3, line: 178, column: 21)
!249 = !DILocation(line: 178, column: 44, scope: !248)
!250 = !DILocation(line: 178, column: 21, scope: !248)
!251 = !DILocation(line: 178, column: 89, scope: !248)
!252 = !DILocation(line: 178, column: 21, scope: !229)
!253 = !DILocation(line: 180, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !3, line: 179, column: 17)
!255 = !DILocation(line: 184, column: 35, scope: !229)
!256 = !DILocation(line: 184, column: 50, scope: !229)
!257 = !DILocation(line: 184, column: 30, scope: !229)
!258 = !DILocation(line: 184, column: 28, scope: !229)
!259 = !DILocation(line: 185, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !229, file: !3, line: 185, column: 21)
!261 = !DILocation(line: 185, column: 32, scope: !260)
!262 = !DILocation(line: 185, column: 48, scope: !260)
!263 = !DILocation(line: 185, column: 51, scope: !260)
!264 = !DILocation(line: 185, column: 62, scope: !260)
!265 = !DILocation(line: 185, column: 21, scope: !229)
!266 = !DILocation(line: 187, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !3, line: 186, column: 17)
!268 = !DILocation(line: 190, column: 29, scope: !229)
!269 = !DILocation(line: 190, column: 17, scope: !229)
!270 = !DILocation(line: 190, column: 41, scope: !229)
!271 = !DILocation(line: 192, column: 29, scope: !229)
!272 = !DILocation(line: 192, column: 24, scope: !229)
!273 = !DILocation(line: 192, column: 22, scope: !229)
!274 = !DILocation(line: 193, column: 13, scope: !229)
!275 = !DILocation(line: 195, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !218, file: !3, line: 195, column: 17)
!277 = !DILocation(line: 195, column: 31, scope: !276)
!278 = !DILocation(line: 195, column: 17, scope: !218)
!279 = !DILocation(line: 197, column: 30, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 196, column: 13)
!281 = !DILocation(line: 197, column: 17, scope: !280)
!282 = !DILocation(line: 198, column: 13, scope: !280)
!283 = !DILocation(line: 206, column: 5, scope: !219)
!284 = !DILocation(line: 207, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !209, file: !3, line: 207, column: 8)
!286 = !DILocation(line: 207, column: 25, scope: !285)
!287 = !DILocation(line: 207, column: 8, scope: !209)
!288 = !DILocation(line: 210, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 208, column: 5)
!290 = !DILocation(line: 211, column: 5, scope: !289)
!291 = !DILocalVariable(name: "i", scope: !292, file: !3, line: 215, type: !62)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 214, column: 9)
!293 = distinct !DILexicalBlock(scope: !285, file: !3, line: 213, column: 5)
!294 = !DILocation(line: 215, column: 17, scope: !292)
!295 = !DILocalVariable(name: "buffer", scope: !292, file: !3, line: 216, type: !175)
!296 = !DILocation(line: 216, column: 17, scope: !292)
!297 = !DILocation(line: 218, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 218, column: 17)
!299 = !DILocation(line: 218, column: 22, scope: !298)
!300 = !DILocation(line: 218, column: 27, scope: !298)
!301 = !DILocation(line: 218, column: 30, scope: !298)
!302 = !DILocation(line: 218, column: 35, scope: !298)
!303 = !DILocation(line: 218, column: 17, scope: !292)
!304 = !DILocation(line: 220, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !3, line: 219, column: 13)
!306 = !DILocation(line: 220, column: 17, scope: !305)
!307 = !DILocation(line: 220, column: 30, scope: !305)
!308 = !DILocation(line: 222, column: 23, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 222, column: 17)
!310 = !DILocation(line: 222, column: 21, scope: !309)
!311 = !DILocation(line: 222, column: 28, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 222, column: 17)
!313 = !DILocation(line: 222, column: 30, scope: !312)
!314 = !DILocation(line: 222, column: 17, scope: !309)
!315 = !DILocation(line: 224, column: 41, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 223, column: 17)
!317 = !DILocation(line: 224, column: 34, scope: !316)
!318 = !DILocation(line: 224, column: 21, scope: !316)
!319 = !DILocation(line: 225, column: 17, scope: !316)
!320 = !DILocation(line: 222, column: 37, scope: !312)
!321 = !DILocation(line: 222, column: 17, scope: !312)
!322 = distinct !{!322, !314, !323, !203}
!323 = !DILocation(line: 225, column: 17, scope: !309)
!324 = !DILocation(line: 226, column: 13, scope: !305)
!325 = !DILocation(line: 229, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !298, file: !3, line: 228, column: 13)
!327 = !DILocation(line: 233, column: 1, scope: !209)
!328 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 236, type: !68, scopeLine: 237, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!329 = !DILocalVariable(name: "data", scope: !328, file: !3, line: 238, type: !62)
!330 = !DILocation(line: 238, column: 9, scope: !328)
!331 = !DILocation(line: 240, column: 10, scope: !328)
!332 = !DILocation(line: 241, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 241, column: 8)
!334 = !DILocation(line: 241, column: 25, scope: !333)
!335 = !DILocation(line: 241, column: 8, scope: !328)
!336 = !DILocalVariable(name: "recvResult", scope: !337, file: !3, line: 248, type: !62)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 243, column: 9)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 242, column: 5)
!339 = !DILocation(line: 248, column: 17, scope: !337)
!340 = !DILocalVariable(name: "service", scope: !337, file: !3, line: 249, type: !83)
!341 = !DILocation(line: 249, column: 32, scope: !337)
!342 = !DILocalVariable(name: "connectSocket", scope: !337, file: !3, line: 250, type: !62)
!343 = !DILocation(line: 250, column: 20, scope: !337)
!344 = !DILocalVariable(name: "inputBuffer", scope: !337, file: !3, line: 251, type: !57)
!345 = !DILocation(line: 251, column: 18, scope: !337)
!346 = !DILocation(line: 252, column: 13, scope: !337)
!347 = !DILocation(line: 262, column: 33, scope: !348)
!348 = distinct !DILexicalBlock(scope: !337, file: !3, line: 253, column: 13)
!349 = !DILocation(line: 262, column: 31, scope: !348)
!350 = !DILocation(line: 263, column: 21, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 263, column: 21)
!352 = !DILocation(line: 263, column: 35, scope: !351)
!353 = !DILocation(line: 263, column: 21, scope: !348)
!354 = !DILocation(line: 265, column: 21, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 264, column: 17)
!356 = !DILocation(line: 267, column: 17, scope: !348)
!357 = !DILocation(line: 268, column: 25, scope: !348)
!358 = !DILocation(line: 268, column: 36, scope: !348)
!359 = !DILocation(line: 269, column: 43, scope: !348)
!360 = !DILocation(line: 269, column: 25, scope: !348)
!361 = !DILocation(line: 269, column: 34, scope: !348)
!362 = !DILocation(line: 269, column: 41, scope: !348)
!363 = !DILocation(line: 270, column: 36, scope: !348)
!364 = !DILocation(line: 270, column: 25, scope: !348)
!365 = !DILocation(line: 270, column: 34, scope: !348)
!366 = !DILocation(line: 271, column: 29, scope: !367)
!367 = distinct !DILexicalBlock(scope: !348, file: !3, line: 271, column: 21)
!368 = !DILocation(line: 271, column: 44, scope: !367)
!369 = !DILocation(line: 271, column: 21, scope: !367)
!370 = !DILocation(line: 271, column: 89, scope: !367)
!371 = !DILocation(line: 271, column: 21, scope: !348)
!372 = !DILocation(line: 273, column: 21, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !3, line: 272, column: 17)
!374 = !DILocation(line: 277, column: 35, scope: !348)
!375 = !DILocation(line: 277, column: 50, scope: !348)
!376 = !DILocation(line: 277, column: 30, scope: !348)
!377 = !DILocation(line: 277, column: 28, scope: !348)
!378 = !DILocation(line: 278, column: 21, scope: !379)
!379 = distinct !DILexicalBlock(scope: !348, file: !3, line: 278, column: 21)
!380 = !DILocation(line: 278, column: 32, scope: !379)
!381 = !DILocation(line: 278, column: 48, scope: !379)
!382 = !DILocation(line: 278, column: 51, scope: !379)
!383 = !DILocation(line: 278, column: 62, scope: !379)
!384 = !DILocation(line: 278, column: 21, scope: !348)
!385 = !DILocation(line: 280, column: 21, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !3, line: 279, column: 17)
!387 = !DILocation(line: 283, column: 29, scope: !348)
!388 = !DILocation(line: 283, column: 17, scope: !348)
!389 = !DILocation(line: 283, column: 41, scope: !348)
!390 = !DILocation(line: 285, column: 29, scope: !348)
!391 = !DILocation(line: 285, column: 24, scope: !348)
!392 = !DILocation(line: 285, column: 22, scope: !348)
!393 = !DILocation(line: 286, column: 13, scope: !348)
!394 = !DILocation(line: 288, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !337, file: !3, line: 288, column: 17)
!396 = !DILocation(line: 288, column: 31, scope: !395)
!397 = !DILocation(line: 288, column: 17, scope: !337)
!398 = !DILocation(line: 290, column: 30, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 289, column: 13)
!400 = !DILocation(line: 290, column: 17, scope: !399)
!401 = !DILocation(line: 291, column: 13, scope: !399)
!402 = !DILocation(line: 299, column: 5, scope: !338)
!403 = !DILocation(line: 300, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !328, file: !3, line: 300, column: 8)
!405 = !DILocation(line: 300, column: 25, scope: !404)
!406 = !DILocation(line: 300, column: 8, scope: !328)
!407 = !DILocalVariable(name: "i", scope: !408, file: !3, line: 303, type: !62)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 302, column: 9)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 301, column: 5)
!410 = !DILocation(line: 303, column: 17, scope: !408)
!411 = !DILocalVariable(name: "buffer", scope: !408, file: !3, line: 304, type: !175)
!412 = !DILocation(line: 304, column: 17, scope: !408)
!413 = !DILocation(line: 306, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !3, line: 306, column: 17)
!415 = !DILocation(line: 306, column: 22, scope: !414)
!416 = !DILocation(line: 306, column: 27, scope: !414)
!417 = !DILocation(line: 306, column: 30, scope: !414)
!418 = !DILocation(line: 306, column: 35, scope: !414)
!419 = !DILocation(line: 306, column: 17, scope: !408)
!420 = !DILocation(line: 308, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !3, line: 307, column: 13)
!422 = !DILocation(line: 308, column: 17, scope: !421)
!423 = !DILocation(line: 308, column: 30, scope: !421)
!424 = !DILocation(line: 310, column: 23, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 310, column: 17)
!426 = !DILocation(line: 310, column: 21, scope: !425)
!427 = !DILocation(line: 310, column: 28, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 310, column: 17)
!429 = !DILocation(line: 310, column: 30, scope: !428)
!430 = !DILocation(line: 310, column: 17, scope: !425)
!431 = !DILocation(line: 312, column: 41, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 311, column: 17)
!433 = !DILocation(line: 312, column: 34, scope: !432)
!434 = !DILocation(line: 312, column: 21, scope: !432)
!435 = !DILocation(line: 313, column: 17, scope: !432)
!436 = !DILocation(line: 310, column: 37, scope: !428)
!437 = !DILocation(line: 310, column: 17, scope: !428)
!438 = distinct !{!438, !430, !439, !203}
!439 = !DILocation(line: 313, column: 17, scope: !425)
!440 = !DILocation(line: 314, column: 13, scope: !421)
!441 = !DILocation(line: 317, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !414, file: !3, line: 316, column: 13)
!443 = !DILocation(line: 320, column: 5, scope: !409)
!444 = !DILocation(line: 321, column: 1, scope: !328)
!445 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 324, type: !68, scopeLine: 325, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!446 = !DILocalVariable(name: "data", scope: !445, file: !3, line: 326, type: !62)
!447 = !DILocation(line: 326, column: 9, scope: !445)
!448 = !DILocation(line: 328, column: 10, scope: !445)
!449 = !DILocation(line: 329, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 329, column: 8)
!451 = !DILocation(line: 329, column: 25, scope: !450)
!452 = !DILocation(line: 329, column: 8, scope: !445)
!453 = !DILocation(line: 332, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 330, column: 5)
!455 = !DILocation(line: 333, column: 5, scope: !454)
!456 = !DILocation(line: 338, column: 14, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !3, line: 335, column: 5)
!458 = !DILocation(line: 340, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !445, file: !3, line: 340, column: 8)
!460 = !DILocation(line: 340, column: 25, scope: !459)
!461 = !DILocation(line: 340, column: 8, scope: !445)
!462 = !DILocalVariable(name: "i", scope: !463, file: !3, line: 343, type: !62)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 342, column: 9)
!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 341, column: 5)
!465 = !DILocation(line: 343, column: 17, scope: !463)
!466 = !DILocalVariable(name: "buffer", scope: !463, file: !3, line: 344, type: !175)
!467 = !DILocation(line: 344, column: 17, scope: !463)
!468 = !DILocation(line: 347, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !3, line: 347, column: 17)
!470 = !DILocation(line: 347, column: 22, scope: !469)
!471 = !DILocation(line: 347, column: 17, scope: !463)
!472 = !DILocation(line: 349, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 348, column: 13)
!474 = !DILocation(line: 349, column: 17, scope: !473)
!475 = !DILocation(line: 349, column: 30, scope: !473)
!476 = !DILocation(line: 351, column: 23, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !3, line: 351, column: 17)
!478 = !DILocation(line: 351, column: 21, scope: !477)
!479 = !DILocation(line: 351, column: 28, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !3, line: 351, column: 17)
!481 = !DILocation(line: 351, column: 30, scope: !480)
!482 = !DILocation(line: 351, column: 17, scope: !477)
!483 = !DILocation(line: 353, column: 41, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 352, column: 17)
!485 = !DILocation(line: 353, column: 34, scope: !484)
!486 = !DILocation(line: 353, column: 21, scope: !484)
!487 = !DILocation(line: 354, column: 17, scope: !484)
!488 = !DILocation(line: 351, column: 37, scope: !480)
!489 = !DILocation(line: 351, column: 17, scope: !480)
!490 = distinct !{!490, !482, !491, !203}
!491 = !DILocation(line: 354, column: 17, scope: !477)
!492 = !DILocation(line: 355, column: 13, scope: !473)
!493 = !DILocation(line: 358, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !469, file: !3, line: 357, column: 13)
!495 = !DILocation(line: 361, column: 5, scope: !464)
!496 = !DILocation(line: 362, column: 1, scope: !445)
!497 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 365, type: !68, scopeLine: 366, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!498 = !DILocalVariable(name: "data", scope: !497, file: !3, line: 367, type: !62)
!499 = !DILocation(line: 367, column: 9, scope: !497)
!500 = !DILocation(line: 369, column: 10, scope: !497)
!501 = !DILocation(line: 370, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 370, column: 8)
!503 = !DILocation(line: 370, column: 25, scope: !502)
!504 = !DILocation(line: 370, column: 8, scope: !497)
!505 = !DILocation(line: 374, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 371, column: 5)
!507 = !DILocation(line: 375, column: 5, scope: !506)
!508 = !DILocation(line: 376, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !497, file: !3, line: 376, column: 8)
!510 = !DILocation(line: 376, column: 25, scope: !509)
!511 = !DILocation(line: 376, column: 8, scope: !497)
!512 = !DILocalVariable(name: "i", scope: !513, file: !3, line: 379, type: !62)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 378, column: 9)
!514 = distinct !DILexicalBlock(scope: !509, file: !3, line: 377, column: 5)
!515 = !DILocation(line: 379, column: 17, scope: !513)
!516 = !DILocalVariable(name: "buffer", scope: !513, file: !3, line: 380, type: !175)
!517 = !DILocation(line: 380, column: 17, scope: !513)
!518 = !DILocation(line: 383, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !513, file: !3, line: 383, column: 17)
!520 = !DILocation(line: 383, column: 22, scope: !519)
!521 = !DILocation(line: 383, column: 17, scope: !513)
!522 = !DILocation(line: 385, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 384, column: 13)
!524 = !DILocation(line: 385, column: 17, scope: !523)
!525 = !DILocation(line: 385, column: 30, scope: !523)
!526 = !DILocation(line: 387, column: 23, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 387, column: 17)
!528 = !DILocation(line: 387, column: 21, scope: !527)
!529 = !DILocation(line: 387, column: 28, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 387, column: 17)
!531 = !DILocation(line: 387, column: 30, scope: !530)
!532 = !DILocation(line: 387, column: 17, scope: !527)
!533 = !DILocation(line: 389, column: 41, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 388, column: 17)
!535 = !DILocation(line: 389, column: 34, scope: !534)
!536 = !DILocation(line: 389, column: 21, scope: !534)
!537 = !DILocation(line: 390, column: 17, scope: !534)
!538 = !DILocation(line: 387, column: 37, scope: !530)
!539 = !DILocation(line: 387, column: 17, scope: !530)
!540 = distinct !{!540, !532, !541, !203}
!541 = !DILocation(line: 390, column: 17, scope: !527)
!542 = !DILocation(line: 391, column: 13, scope: !523)
!543 = !DILocation(line: 394, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !519, file: !3, line: 393, column: 13)
!545 = !DILocation(line: 397, column: 5, scope: !514)
!546 = !DILocation(line: 398, column: 1, scope: !497)
!547 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good", scope: !3, file: !3, line: 400, type: !68, scopeLine: 401, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!548 = !DILocation(line: 402, column: 5, scope: !547)
!549 = !DILocation(line: 403, column: 5, scope: !547)
!550 = !DILocation(line: 404, column: 5, scope: !547)
!551 = !DILocation(line: 405, column: 5, scope: !547)
!552 = !DILocation(line: 406, column: 1, scope: !547)
