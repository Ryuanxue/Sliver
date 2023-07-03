; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13_bad() #0 !dbg !63 {
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
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !71
  %cmp = icmp eq i32 %0, 5, !dbg !73
  br i1 %cmp, label %if.then, label %if.end23, !dbg !74

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !75, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !79, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 -1, i32* %connectSocket, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !104, metadata !DIExpression()), !dbg !105
  br label %do.body, !dbg !106

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !107
  store i32 %call, i32* %connectSocket, align 4, !dbg !109
  %1 = load i32, i32* %connectSocket, align 4, !dbg !110
  %cmp1 = icmp eq i32 %1, -1, !dbg !112
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !113

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !114

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !116
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !116
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !117
  store i16 2, i16* %sin_family, align 4, !dbg !118
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !119
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !120
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !121
  store i32 %call3, i32* %s_addr, align 4, !dbg !122
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !123
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !124
  store i16 %call4, i16* %sin_port, align 2, !dbg !125
  %3 = load i32, i32* %connectSocket, align 4, !dbg !126
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !128
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !129
  %cmp6 = icmp eq i32 %call5, -1, !dbg !130
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !131

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !132

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !134
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !135
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !136
  %conv = trunc i64 %call9 to i32, !dbg !136
  store i32 %conv, i32* %recvResult, align 4, !dbg !137
  %6 = load i32, i32* %recvResult, align 4, !dbg !138
  %cmp10 = icmp eq i32 %6, -1, !dbg !140
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !141

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !142
  %cmp12 = icmp eq i32 %7, 0, !dbg !143
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !144

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !145

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !147
  %idxprom = sext i32 %8 to i64, !dbg !148
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !148
  store i8 0, i8* %arrayidx, align 1, !dbg !149
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !150
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !151
  store i32 %call17, i32* %data, align 4, !dbg !152
  br label %do.end, !dbg !153

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !154
  %cmp18 = icmp ne i32 %9, -1, !dbg !156
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !157

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !158
  %call21 = call i32 @close(i32 %10), !dbg !160
  br label %if.end22, !dbg !161

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !162

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !163
  %cmp24 = icmp eq i32 %11, 5, !dbg !165
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !166

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !171, metadata !DIExpression()), !dbg !175
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !175
  %13 = load i32, i32* %data, align 4, !dbg !176
  %cmp27 = icmp sge i32 %13, 0, !dbg !178
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !179

if.then29:                                        ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !180
  %idxprom30 = sext i32 %14 to i64, !dbg !182
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !182
  store i32 1, i32* %arrayidx31, align 4, !dbg !183
  store i32 0, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !186

for.cond:                                         ; preds = %for.inc, %if.then29
  %15 = load i32, i32* %i, align 4, !dbg !187
  %cmp32 = icmp slt i32 %15, 10, !dbg !189
  br i1 %cmp32, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !191
  %idxprom34 = sext i32 %16 to i64, !dbg !193
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !193
  %17 = load i32, i32* %arrayidx35, align 4, !dbg !193
  call void @printIntLine(i32 %17), !dbg !194
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !196
  %inc = add nsw i32 %18, 1, !dbg !196
  store i32 %inc, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !201

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !202
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !204

if.end37:                                         ; preds = %if.end36, %if.end23
  ret void, !dbg !205
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
define dso_local void @goodB2G1() #0 !dbg !206 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !207, metadata !DIExpression()), !dbg !208
  store i32 -1, i32* %data, align 4, !dbg !209
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !210
  %cmp = icmp eq i32 %0, 5, !dbg !212
  br i1 %cmp, label %if.then, label %if.end23, !dbg !213

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !214, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !220, metadata !DIExpression()), !dbg !221
  store i32 -1, i32* %connectSocket, align 4, !dbg !221
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !222, metadata !DIExpression()), !dbg !223
  br label %do.body, !dbg !224

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !225
  store i32 %call, i32* %connectSocket, align 4, !dbg !227
  %1 = load i32, i32* %connectSocket, align 4, !dbg !228
  %cmp1 = icmp eq i32 %1, -1, !dbg !230
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !231

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !232

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !234
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !235
  store i16 2, i16* %sin_family, align 4, !dbg !236
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !237
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !238
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !239
  store i32 %call3, i32* %s_addr, align 4, !dbg !240
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !241
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !242
  store i16 %call4, i16* %sin_port, align 2, !dbg !243
  %3 = load i32, i32* %connectSocket, align 4, !dbg !244
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !246
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !247
  %cmp6 = icmp eq i32 %call5, -1, !dbg !248
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !249

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !250

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !252
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !253
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !254
  %conv = trunc i64 %call9 to i32, !dbg !254
  store i32 %conv, i32* %recvResult, align 4, !dbg !255
  %6 = load i32, i32* %recvResult, align 4, !dbg !256
  %cmp10 = icmp eq i32 %6, -1, !dbg !258
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !259

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !260
  %cmp12 = icmp eq i32 %7, 0, !dbg !261
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !262

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !263

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !265
  %idxprom = sext i32 %8 to i64, !dbg !266
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !266
  store i8 0, i8* %arrayidx, align 1, !dbg !267
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !268
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !269
  store i32 %call17, i32* %data, align 4, !dbg !270
  br label %do.end, !dbg !271

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !272
  %cmp18 = icmp ne i32 %9, -1, !dbg !274
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !275

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !276
  %call21 = call i32 @close(i32 %10), !dbg !278
  br label %if.end22, !dbg !279

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !280

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !281
  %cmp24 = icmp ne i32 %11, 5, !dbg !283
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !284

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !285
  br label %if.end40, !dbg !287

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !292, metadata !DIExpression()), !dbg !293
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !293
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !293
  %13 = load i32, i32* %data, align 4, !dbg !294
  %cmp27 = icmp sge i32 %13, 0, !dbg !296
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !297

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !298
  %cmp29 = icmp slt i32 %14, 10, !dbg !299
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !300

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !301
  %idxprom32 = sext i32 %15 to i64, !dbg !303
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !303
  store i32 1, i32* %arrayidx33, align 4, !dbg !304
  store i32 0, i32* %i, align 4, !dbg !305
  br label %for.cond, !dbg !307

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !308
  %cmp34 = icmp slt i32 %16, 10, !dbg !310
  br i1 %cmp34, label %for.body, label %for.end, !dbg !311

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !312
  %idxprom36 = sext i32 %17 to i64, !dbg !314
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !314
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !314
  call void @printIntLine(i32 %18), !dbg !315
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !317
  %inc = add nsw i32 %19, 1, !dbg !317
  store i32 %inc, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !321

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !322
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !325 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 -1, i32* %data, align 4, !dbg !328
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !329
  %cmp = icmp eq i32 %0, 5, !dbg !331
  br i1 %cmp, label %if.then, label %if.end23, !dbg !332

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !333, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 -1, i32* %connectSocket, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !341, metadata !DIExpression()), !dbg !342
  br label %do.body, !dbg !343

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !344
  store i32 %call, i32* %connectSocket, align 4, !dbg !346
  %1 = load i32, i32* %connectSocket, align 4, !dbg !347
  %cmp1 = icmp eq i32 %1, -1, !dbg !349
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !350

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !351

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !353
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !354
  store i16 2, i16* %sin_family, align 4, !dbg !355
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !356
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !357
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !358
  store i32 %call3, i32* %s_addr, align 4, !dbg !359
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !360
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !361
  store i16 %call4, i16* %sin_port, align 2, !dbg !362
  %3 = load i32, i32* %connectSocket, align 4, !dbg !363
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !365
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !366
  %cmp6 = icmp eq i32 %call5, -1, !dbg !367
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !368

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !369

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !371
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !372
  %call9 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !373
  %conv = trunc i64 %call9 to i32, !dbg !373
  store i32 %conv, i32* %recvResult, align 4, !dbg !374
  %6 = load i32, i32* %recvResult, align 4, !dbg !375
  %cmp10 = icmp eq i32 %6, -1, !dbg !377
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !378

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %recvResult, align 4, !dbg !379
  %cmp12 = icmp eq i32 %7, 0, !dbg !380
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !381

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !382

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !384
  %idxprom = sext i32 %8 to i64, !dbg !385
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !385
  store i8 0, i8* %arrayidx, align 1, !dbg !386
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !387
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !388
  store i32 %call17, i32* %data, align 4, !dbg !389
  br label %do.end, !dbg !390

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %9 = load i32, i32* %connectSocket, align 4, !dbg !391
  %cmp18 = icmp ne i32 %9, -1, !dbg !393
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !394

if.then20:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !395
  %call21 = call i32 @close(i32 %10), !dbg !397
  br label %if.end22, !dbg !398

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !399

if.end23:                                         ; preds = %if.end22, %entry
  %11 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !400
  %cmp24 = icmp eq i32 %11, 5, !dbg !402
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !403

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !404, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !408, metadata !DIExpression()), !dbg !409
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !409
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !409
  %13 = load i32, i32* %data, align 4, !dbg !410
  %cmp27 = icmp sge i32 %13, 0, !dbg !412
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !413

land.lhs.true:                                    ; preds = %if.then26
  %14 = load i32, i32* %data, align 4, !dbg !414
  %cmp29 = icmp slt i32 %14, 10, !dbg !415
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !416

if.then31:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !417
  %idxprom32 = sext i32 %15 to i64, !dbg !419
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !419
  store i32 1, i32* %arrayidx33, align 4, !dbg !420
  store i32 0, i32* %i, align 4, !dbg !421
  br label %for.cond, !dbg !423

for.cond:                                         ; preds = %for.inc, %if.then31
  %16 = load i32, i32* %i, align 4, !dbg !424
  %cmp34 = icmp slt i32 %16, 10, !dbg !426
  br i1 %cmp34, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !428
  %idxprom36 = sext i32 %17 to i64, !dbg !430
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !430
  %18 = load i32, i32* %arrayidx37, align 4, !dbg !430
  call void @printIntLine(i32 %18), !dbg !431
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !433
  %inc = add nsw i32 %19, 1, !dbg !433
  store i32 %inc, i32* %i, align 4, !dbg !433
  br label %for.cond, !dbg !434, !llvm.loop !435

for.end:                                          ; preds = %for.cond
  br label %if.end38, !dbg !437

if.else:                                          ; preds = %land.lhs.true, %if.then26
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !438
  br label %if.end38

if.end38:                                         ; preds = %if.else, %for.end
  br label %if.end39, !dbg !440

if.end39:                                         ; preds = %if.end38, %if.end23
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !442 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !443, metadata !DIExpression()), !dbg !444
  store i32 -1, i32* %data, align 4, !dbg !445
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !446
  %cmp = icmp ne i32 %0, 5, !dbg !448
  br i1 %cmp, label %if.then, label %if.else, !dbg !449

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !450
  br label %if.end, !dbg !452

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !453
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !455
  %cmp1 = icmp eq i32 %1, 5, !dbg !457
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !458

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !463, metadata !DIExpression()), !dbg !464
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !464
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !464
  %3 = load i32, i32* %data, align 4, !dbg !465
  %cmp3 = icmp sge i32 %3, 0, !dbg !467
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !468

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !469
  %idxprom = sext i32 %4 to i64, !dbg !471
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !471
  store i32 1, i32* %arrayidx, align 4, !dbg !472
  store i32 0, i32* %i, align 4, !dbg !473
  br label %for.cond, !dbg !475

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !476
  %cmp5 = icmp slt i32 %5, 10, !dbg !478
  br i1 %cmp5, label %for.body, label %for.end, !dbg !479

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !480
  %idxprom6 = sext i32 %6 to i64, !dbg !482
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !482
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !482
  call void @printIntLine(i32 %7), !dbg !483
  br label %for.inc, !dbg !484

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !485
  %inc = add nsw i32 %8, 1, !dbg !485
  store i32 %inc, i32* %i, align 4, !dbg !485
  br label %for.cond, !dbg !486, !llvm.loop !487

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !489

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !490
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !492

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !494 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 -1, i32* %data, align 4, !dbg !497
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !498
  %cmp = icmp eq i32 %0, 5, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !502
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !505
  %cmp1 = icmp eq i32 %1, 5, !dbg !507
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !508

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !513, metadata !DIExpression()), !dbg !514
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !514
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !514
  %3 = load i32, i32* %data, align 4, !dbg !515
  %cmp3 = icmp sge i32 %3, 0, !dbg !517
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !518

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !519
  %idxprom = sext i32 %4 to i64, !dbg !521
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !521
  store i32 1, i32* %arrayidx, align 4, !dbg !522
  store i32 0, i32* %i, align 4, !dbg !523
  br label %for.cond, !dbg !525

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !526
  %cmp5 = icmp slt i32 %5, 10, !dbg !528
  br i1 %cmp5, label %for.body, label %for.end, !dbg !529

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !530
  %idxprom6 = sext i32 %6 to i64, !dbg !532
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !532
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !532
  call void @printIntLine(i32 %7), !dbg !533
  br label %for.inc, !dbg !534

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !535
  %inc = add nsw i32 %8, 1, !dbg !535
  store i32 %inc, i32* %i, align 4, !dbg !535
  br label %for.cond, !dbg !536, !llvm.loop !537

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !539

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !540
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !542

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13_good() #0 !dbg !544 {
entry:
  call void @goodB2G1(), !dbg !545
  call void @goodB2G2(), !dbg !546
  call void @goodG2B1(), !dbg !547
  call void @goodG2B2(), !dbg !548
  ret void, !dbg !549
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_528/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocation(line: 50, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 8)
!73 = !DILocation(line: 50, column: 25, scope: !72)
!74 = !DILocation(line: 50, column: 8, scope: !63)
!75 = !DILocalVariable(name: "recvResult", scope: !76, file: !1, line: 57, type: !68)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 52, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 51, column: 5)
!78 = !DILocation(line: 57, column: 17, scope: !76)
!79 = !DILocalVariable(name: "service", scope: !76, file: !1, line: 58, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !81)
!81 = !{!82, !83, !89, !96}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !80, file: !17, line: 240, baseType: !51, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !80, file: !17, line: 241, baseType: !84, size: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !86, line: 25, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !88, line: 40, baseType: !53)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !80, file: !17, line: 242, baseType: !90, size: 32, offset: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !90, file: !17, line: 33, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !86, line: 26, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !5)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !80, file: !17, line: 245, baseType: !97, size: 64, offset: 64)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !99)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 8)
!101 = !DILocation(line: 58, column: 32, scope: !76)
!102 = !DILocalVariable(name: "connectSocket", scope: !76, file: !1, line: 59, type: !68)
!103 = !DILocation(line: 59, column: 20, scope: !76)
!104 = !DILocalVariable(name: "inputBuffer", scope: !76, file: !1, line: 60, type: !55)
!105 = !DILocation(line: 60, column: 18, scope: !76)
!106 = !DILocation(line: 61, column: 13, scope: !76)
!107 = !DILocation(line: 71, column: 33, scope: !108)
!108 = distinct !DILexicalBlock(scope: !76, file: !1, line: 62, column: 13)
!109 = !DILocation(line: 71, column: 31, scope: !108)
!110 = !DILocation(line: 72, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 72, column: 21)
!112 = !DILocation(line: 72, column: 35, scope: !111)
!113 = !DILocation(line: 72, column: 21, scope: !108)
!114 = !DILocation(line: 74, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 73, column: 17)
!116 = !DILocation(line: 76, column: 17, scope: !108)
!117 = !DILocation(line: 77, column: 25, scope: !108)
!118 = !DILocation(line: 77, column: 36, scope: !108)
!119 = !DILocation(line: 78, column: 43, scope: !108)
!120 = !DILocation(line: 78, column: 25, scope: !108)
!121 = !DILocation(line: 78, column: 34, scope: !108)
!122 = !DILocation(line: 78, column: 41, scope: !108)
!123 = !DILocation(line: 79, column: 36, scope: !108)
!124 = !DILocation(line: 79, column: 25, scope: !108)
!125 = !DILocation(line: 79, column: 34, scope: !108)
!126 = !DILocation(line: 80, column: 29, scope: !127)
!127 = distinct !DILexicalBlock(scope: !108, file: !1, line: 80, column: 21)
!128 = !DILocation(line: 80, column: 44, scope: !127)
!129 = !DILocation(line: 80, column: 21, scope: !127)
!130 = !DILocation(line: 80, column: 89, scope: !127)
!131 = !DILocation(line: 80, column: 21, scope: !108)
!132 = !DILocation(line: 82, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !1, line: 81, column: 17)
!134 = !DILocation(line: 86, column: 35, scope: !108)
!135 = !DILocation(line: 86, column: 50, scope: !108)
!136 = !DILocation(line: 86, column: 30, scope: !108)
!137 = !DILocation(line: 86, column: 28, scope: !108)
!138 = !DILocation(line: 87, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !108, file: !1, line: 87, column: 21)
!140 = !DILocation(line: 87, column: 32, scope: !139)
!141 = !DILocation(line: 87, column: 48, scope: !139)
!142 = !DILocation(line: 87, column: 51, scope: !139)
!143 = !DILocation(line: 87, column: 62, scope: !139)
!144 = !DILocation(line: 87, column: 21, scope: !108)
!145 = !DILocation(line: 89, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !1, line: 88, column: 17)
!147 = !DILocation(line: 92, column: 29, scope: !108)
!148 = !DILocation(line: 92, column: 17, scope: !108)
!149 = !DILocation(line: 92, column: 41, scope: !108)
!150 = !DILocation(line: 94, column: 29, scope: !108)
!151 = !DILocation(line: 94, column: 24, scope: !108)
!152 = !DILocation(line: 94, column: 22, scope: !108)
!153 = !DILocation(line: 95, column: 13, scope: !108)
!154 = !DILocation(line: 97, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !76, file: !1, line: 97, column: 17)
!156 = !DILocation(line: 97, column: 31, scope: !155)
!157 = !DILocation(line: 97, column: 17, scope: !76)
!158 = !DILocation(line: 99, column: 30, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 98, column: 13)
!160 = !DILocation(line: 99, column: 17, scope: !159)
!161 = !DILocation(line: 100, column: 13, scope: !159)
!162 = !DILocation(line: 108, column: 5, scope: !77)
!163 = !DILocation(line: 109, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !63, file: !1, line: 109, column: 8)
!165 = !DILocation(line: 109, column: 25, scope: !164)
!166 = !DILocation(line: 109, column: 8, scope: !63)
!167 = !DILocalVariable(name: "i", scope: !168, file: !1, line: 112, type: !68)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 111, column: 9)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 110, column: 5)
!170 = !DILocation(line: 112, column: 17, scope: !168)
!171 = !DILocalVariable(name: "buffer", scope: !168, file: !1, line: 113, type: !172)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 10)
!175 = !DILocation(line: 113, column: 17, scope: !168)
!176 = !DILocation(line: 116, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !168, file: !1, line: 116, column: 17)
!178 = !DILocation(line: 116, column: 22, scope: !177)
!179 = !DILocation(line: 116, column: 17, scope: !168)
!180 = !DILocation(line: 118, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 117, column: 13)
!182 = !DILocation(line: 118, column: 17, scope: !181)
!183 = !DILocation(line: 118, column: 30, scope: !181)
!184 = !DILocation(line: 120, column: 23, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 120, column: 17)
!186 = !DILocation(line: 120, column: 21, scope: !185)
!187 = !DILocation(line: 120, column: 28, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 120, column: 17)
!189 = !DILocation(line: 120, column: 30, scope: !188)
!190 = !DILocation(line: 120, column: 17, scope: !185)
!191 = !DILocation(line: 122, column: 41, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 121, column: 17)
!193 = !DILocation(line: 122, column: 34, scope: !192)
!194 = !DILocation(line: 122, column: 21, scope: !192)
!195 = !DILocation(line: 123, column: 17, scope: !192)
!196 = !DILocation(line: 120, column: 37, scope: !188)
!197 = !DILocation(line: 120, column: 17, scope: !188)
!198 = distinct !{!198, !190, !199, !200}
!199 = !DILocation(line: 123, column: 17, scope: !185)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 124, column: 13, scope: !181)
!202 = !DILocation(line: 127, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !177, file: !1, line: 126, column: 13)
!204 = !DILocation(line: 130, column: 5, scope: !169)
!205 = !DILocation(line: 131, column: 1, scope: !63)
!206 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 138, type: !64, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!207 = !DILocalVariable(name: "data", scope: !206, file: !1, line: 140, type: !68)
!208 = !DILocation(line: 140, column: 9, scope: !206)
!209 = !DILocation(line: 142, column: 10, scope: !206)
!210 = !DILocation(line: 143, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !1, line: 143, column: 8)
!212 = !DILocation(line: 143, column: 25, scope: !211)
!213 = !DILocation(line: 143, column: 8, scope: !206)
!214 = !DILocalVariable(name: "recvResult", scope: !215, file: !1, line: 150, type: !68)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 145, column: 9)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 144, column: 5)
!217 = !DILocation(line: 150, column: 17, scope: !215)
!218 = !DILocalVariable(name: "service", scope: !215, file: !1, line: 151, type: !80)
!219 = !DILocation(line: 151, column: 32, scope: !215)
!220 = !DILocalVariable(name: "connectSocket", scope: !215, file: !1, line: 152, type: !68)
!221 = !DILocation(line: 152, column: 20, scope: !215)
!222 = !DILocalVariable(name: "inputBuffer", scope: !215, file: !1, line: 153, type: !55)
!223 = !DILocation(line: 153, column: 18, scope: !215)
!224 = !DILocation(line: 154, column: 13, scope: !215)
!225 = !DILocation(line: 164, column: 33, scope: !226)
!226 = distinct !DILexicalBlock(scope: !215, file: !1, line: 155, column: 13)
!227 = !DILocation(line: 164, column: 31, scope: !226)
!228 = !DILocation(line: 165, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 165, column: 21)
!230 = !DILocation(line: 165, column: 35, scope: !229)
!231 = !DILocation(line: 165, column: 21, scope: !226)
!232 = !DILocation(line: 167, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 166, column: 17)
!234 = !DILocation(line: 169, column: 17, scope: !226)
!235 = !DILocation(line: 170, column: 25, scope: !226)
!236 = !DILocation(line: 170, column: 36, scope: !226)
!237 = !DILocation(line: 171, column: 43, scope: !226)
!238 = !DILocation(line: 171, column: 25, scope: !226)
!239 = !DILocation(line: 171, column: 34, scope: !226)
!240 = !DILocation(line: 171, column: 41, scope: !226)
!241 = !DILocation(line: 172, column: 36, scope: !226)
!242 = !DILocation(line: 172, column: 25, scope: !226)
!243 = !DILocation(line: 172, column: 34, scope: !226)
!244 = !DILocation(line: 173, column: 29, scope: !245)
!245 = distinct !DILexicalBlock(scope: !226, file: !1, line: 173, column: 21)
!246 = !DILocation(line: 173, column: 44, scope: !245)
!247 = !DILocation(line: 173, column: 21, scope: !245)
!248 = !DILocation(line: 173, column: 89, scope: !245)
!249 = !DILocation(line: 173, column: 21, scope: !226)
!250 = !DILocation(line: 175, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !245, file: !1, line: 174, column: 17)
!252 = !DILocation(line: 179, column: 35, scope: !226)
!253 = !DILocation(line: 179, column: 50, scope: !226)
!254 = !DILocation(line: 179, column: 30, scope: !226)
!255 = !DILocation(line: 179, column: 28, scope: !226)
!256 = !DILocation(line: 180, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !226, file: !1, line: 180, column: 21)
!258 = !DILocation(line: 180, column: 32, scope: !257)
!259 = !DILocation(line: 180, column: 48, scope: !257)
!260 = !DILocation(line: 180, column: 51, scope: !257)
!261 = !DILocation(line: 180, column: 62, scope: !257)
!262 = !DILocation(line: 180, column: 21, scope: !226)
!263 = !DILocation(line: 182, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !1, line: 181, column: 17)
!265 = !DILocation(line: 185, column: 29, scope: !226)
!266 = !DILocation(line: 185, column: 17, scope: !226)
!267 = !DILocation(line: 185, column: 41, scope: !226)
!268 = !DILocation(line: 187, column: 29, scope: !226)
!269 = !DILocation(line: 187, column: 24, scope: !226)
!270 = !DILocation(line: 187, column: 22, scope: !226)
!271 = !DILocation(line: 188, column: 13, scope: !226)
!272 = !DILocation(line: 190, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !215, file: !1, line: 190, column: 17)
!274 = !DILocation(line: 190, column: 31, scope: !273)
!275 = !DILocation(line: 190, column: 17, scope: !215)
!276 = !DILocation(line: 192, column: 30, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 191, column: 13)
!278 = !DILocation(line: 192, column: 17, scope: !277)
!279 = !DILocation(line: 193, column: 13, scope: !277)
!280 = !DILocation(line: 201, column: 5, scope: !216)
!281 = !DILocation(line: 202, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !206, file: !1, line: 202, column: 8)
!283 = !DILocation(line: 202, column: 25, scope: !282)
!284 = !DILocation(line: 202, column: 8, scope: !206)
!285 = !DILocation(line: 205, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !1, line: 203, column: 5)
!287 = !DILocation(line: 206, column: 5, scope: !286)
!288 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 210, type: !68)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 209, column: 9)
!290 = distinct !DILexicalBlock(scope: !282, file: !1, line: 208, column: 5)
!291 = !DILocation(line: 210, column: 17, scope: !289)
!292 = !DILocalVariable(name: "buffer", scope: !289, file: !1, line: 211, type: !172)
!293 = !DILocation(line: 211, column: 17, scope: !289)
!294 = !DILocation(line: 213, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 213, column: 17)
!296 = !DILocation(line: 213, column: 22, scope: !295)
!297 = !DILocation(line: 213, column: 27, scope: !295)
!298 = !DILocation(line: 213, column: 30, scope: !295)
!299 = !DILocation(line: 213, column: 35, scope: !295)
!300 = !DILocation(line: 213, column: 17, scope: !289)
!301 = !DILocation(line: 215, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !1, line: 214, column: 13)
!303 = !DILocation(line: 215, column: 17, scope: !302)
!304 = !DILocation(line: 215, column: 30, scope: !302)
!305 = !DILocation(line: 217, column: 23, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 217, column: 17)
!307 = !DILocation(line: 217, column: 21, scope: !306)
!308 = !DILocation(line: 217, column: 28, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 217, column: 17)
!310 = !DILocation(line: 217, column: 30, scope: !309)
!311 = !DILocation(line: 217, column: 17, scope: !306)
!312 = !DILocation(line: 219, column: 41, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !1, line: 218, column: 17)
!314 = !DILocation(line: 219, column: 34, scope: !313)
!315 = !DILocation(line: 219, column: 21, scope: !313)
!316 = !DILocation(line: 220, column: 17, scope: !313)
!317 = !DILocation(line: 217, column: 37, scope: !309)
!318 = !DILocation(line: 217, column: 17, scope: !309)
!319 = distinct !{!319, !311, !320, !200}
!320 = !DILocation(line: 220, column: 17, scope: !306)
!321 = !DILocation(line: 221, column: 13, scope: !302)
!322 = !DILocation(line: 224, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !295, file: !1, line: 223, column: 13)
!324 = !DILocation(line: 228, column: 1, scope: !206)
!325 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 231, type: !64, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!326 = !DILocalVariable(name: "data", scope: !325, file: !1, line: 233, type: !68)
!327 = !DILocation(line: 233, column: 9, scope: !325)
!328 = !DILocation(line: 235, column: 10, scope: !325)
!329 = !DILocation(line: 236, column: 8, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 236, column: 8)
!331 = !DILocation(line: 236, column: 25, scope: !330)
!332 = !DILocation(line: 236, column: 8, scope: !325)
!333 = !DILocalVariable(name: "recvResult", scope: !334, file: !1, line: 243, type: !68)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 238, column: 9)
!335 = distinct !DILexicalBlock(scope: !330, file: !1, line: 237, column: 5)
!336 = !DILocation(line: 243, column: 17, scope: !334)
!337 = !DILocalVariable(name: "service", scope: !334, file: !1, line: 244, type: !80)
!338 = !DILocation(line: 244, column: 32, scope: !334)
!339 = !DILocalVariable(name: "connectSocket", scope: !334, file: !1, line: 245, type: !68)
!340 = !DILocation(line: 245, column: 20, scope: !334)
!341 = !DILocalVariable(name: "inputBuffer", scope: !334, file: !1, line: 246, type: !55)
!342 = !DILocation(line: 246, column: 18, scope: !334)
!343 = !DILocation(line: 247, column: 13, scope: !334)
!344 = !DILocation(line: 257, column: 33, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !1, line: 248, column: 13)
!346 = !DILocation(line: 257, column: 31, scope: !345)
!347 = !DILocation(line: 258, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 258, column: 21)
!349 = !DILocation(line: 258, column: 35, scope: !348)
!350 = !DILocation(line: 258, column: 21, scope: !345)
!351 = !DILocation(line: 260, column: 21, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !1, line: 259, column: 17)
!353 = !DILocation(line: 262, column: 17, scope: !345)
!354 = !DILocation(line: 263, column: 25, scope: !345)
!355 = !DILocation(line: 263, column: 36, scope: !345)
!356 = !DILocation(line: 264, column: 43, scope: !345)
!357 = !DILocation(line: 264, column: 25, scope: !345)
!358 = !DILocation(line: 264, column: 34, scope: !345)
!359 = !DILocation(line: 264, column: 41, scope: !345)
!360 = !DILocation(line: 265, column: 36, scope: !345)
!361 = !DILocation(line: 265, column: 25, scope: !345)
!362 = !DILocation(line: 265, column: 34, scope: !345)
!363 = !DILocation(line: 266, column: 29, scope: !364)
!364 = distinct !DILexicalBlock(scope: !345, file: !1, line: 266, column: 21)
!365 = !DILocation(line: 266, column: 44, scope: !364)
!366 = !DILocation(line: 266, column: 21, scope: !364)
!367 = !DILocation(line: 266, column: 89, scope: !364)
!368 = !DILocation(line: 266, column: 21, scope: !345)
!369 = !DILocation(line: 268, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !1, line: 267, column: 17)
!371 = !DILocation(line: 272, column: 35, scope: !345)
!372 = !DILocation(line: 272, column: 50, scope: !345)
!373 = !DILocation(line: 272, column: 30, scope: !345)
!374 = !DILocation(line: 272, column: 28, scope: !345)
!375 = !DILocation(line: 273, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !345, file: !1, line: 273, column: 21)
!377 = !DILocation(line: 273, column: 32, scope: !376)
!378 = !DILocation(line: 273, column: 48, scope: !376)
!379 = !DILocation(line: 273, column: 51, scope: !376)
!380 = !DILocation(line: 273, column: 62, scope: !376)
!381 = !DILocation(line: 273, column: 21, scope: !345)
!382 = !DILocation(line: 275, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !1, line: 274, column: 17)
!384 = !DILocation(line: 278, column: 29, scope: !345)
!385 = !DILocation(line: 278, column: 17, scope: !345)
!386 = !DILocation(line: 278, column: 41, scope: !345)
!387 = !DILocation(line: 280, column: 29, scope: !345)
!388 = !DILocation(line: 280, column: 24, scope: !345)
!389 = !DILocation(line: 280, column: 22, scope: !345)
!390 = !DILocation(line: 281, column: 13, scope: !345)
!391 = !DILocation(line: 283, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !334, file: !1, line: 283, column: 17)
!393 = !DILocation(line: 283, column: 31, scope: !392)
!394 = !DILocation(line: 283, column: 17, scope: !334)
!395 = !DILocation(line: 285, column: 30, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 284, column: 13)
!397 = !DILocation(line: 285, column: 17, scope: !396)
!398 = !DILocation(line: 286, column: 13, scope: !396)
!399 = !DILocation(line: 294, column: 5, scope: !335)
!400 = !DILocation(line: 295, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !325, file: !1, line: 295, column: 8)
!402 = !DILocation(line: 295, column: 25, scope: !401)
!403 = !DILocation(line: 295, column: 8, scope: !325)
!404 = !DILocalVariable(name: "i", scope: !405, file: !1, line: 298, type: !68)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 297, column: 9)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 296, column: 5)
!407 = !DILocation(line: 298, column: 17, scope: !405)
!408 = !DILocalVariable(name: "buffer", scope: !405, file: !1, line: 299, type: !172)
!409 = !DILocation(line: 299, column: 17, scope: !405)
!410 = !DILocation(line: 301, column: 17, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !1, line: 301, column: 17)
!412 = !DILocation(line: 301, column: 22, scope: !411)
!413 = !DILocation(line: 301, column: 27, scope: !411)
!414 = !DILocation(line: 301, column: 30, scope: !411)
!415 = !DILocation(line: 301, column: 35, scope: !411)
!416 = !DILocation(line: 301, column: 17, scope: !405)
!417 = !DILocation(line: 303, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !1, line: 302, column: 13)
!419 = !DILocation(line: 303, column: 17, scope: !418)
!420 = !DILocation(line: 303, column: 30, scope: !418)
!421 = !DILocation(line: 305, column: 23, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !1, line: 305, column: 17)
!423 = !DILocation(line: 305, column: 21, scope: !422)
!424 = !DILocation(line: 305, column: 28, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 305, column: 17)
!426 = !DILocation(line: 305, column: 30, scope: !425)
!427 = !DILocation(line: 305, column: 17, scope: !422)
!428 = !DILocation(line: 307, column: 41, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 306, column: 17)
!430 = !DILocation(line: 307, column: 34, scope: !429)
!431 = !DILocation(line: 307, column: 21, scope: !429)
!432 = !DILocation(line: 308, column: 17, scope: !429)
!433 = !DILocation(line: 305, column: 37, scope: !425)
!434 = !DILocation(line: 305, column: 17, scope: !425)
!435 = distinct !{!435, !427, !436, !200}
!436 = !DILocation(line: 308, column: 17, scope: !422)
!437 = !DILocation(line: 309, column: 13, scope: !418)
!438 = !DILocation(line: 312, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !411, file: !1, line: 311, column: 13)
!440 = !DILocation(line: 315, column: 5, scope: !406)
!441 = !DILocation(line: 316, column: 1, scope: !325)
!442 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 319, type: !64, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!443 = !DILocalVariable(name: "data", scope: !442, file: !1, line: 321, type: !68)
!444 = !DILocation(line: 321, column: 9, scope: !442)
!445 = !DILocation(line: 323, column: 10, scope: !442)
!446 = !DILocation(line: 324, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 324, column: 8)
!448 = !DILocation(line: 324, column: 25, scope: !447)
!449 = !DILocation(line: 324, column: 8, scope: !442)
!450 = !DILocation(line: 327, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 325, column: 5)
!452 = !DILocation(line: 328, column: 5, scope: !451)
!453 = !DILocation(line: 333, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !1, line: 330, column: 5)
!455 = !DILocation(line: 335, column: 8, scope: !456)
!456 = distinct !DILexicalBlock(scope: !442, file: !1, line: 335, column: 8)
!457 = !DILocation(line: 335, column: 25, scope: !456)
!458 = !DILocation(line: 335, column: 8, scope: !442)
!459 = !DILocalVariable(name: "i", scope: !460, file: !1, line: 338, type: !68)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 337, column: 9)
!461 = distinct !DILexicalBlock(scope: !456, file: !1, line: 336, column: 5)
!462 = !DILocation(line: 338, column: 17, scope: !460)
!463 = !DILocalVariable(name: "buffer", scope: !460, file: !1, line: 339, type: !172)
!464 = !DILocation(line: 339, column: 17, scope: !460)
!465 = !DILocation(line: 342, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !1, line: 342, column: 17)
!467 = !DILocation(line: 342, column: 22, scope: !466)
!468 = !DILocation(line: 342, column: 17, scope: !460)
!469 = !DILocation(line: 344, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !1, line: 343, column: 13)
!471 = !DILocation(line: 344, column: 17, scope: !470)
!472 = !DILocation(line: 344, column: 30, scope: !470)
!473 = !DILocation(line: 346, column: 23, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 346, column: 17)
!475 = !DILocation(line: 346, column: 21, scope: !474)
!476 = !DILocation(line: 346, column: 28, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !1, line: 346, column: 17)
!478 = !DILocation(line: 346, column: 30, scope: !477)
!479 = !DILocation(line: 346, column: 17, scope: !474)
!480 = !DILocation(line: 348, column: 41, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !1, line: 347, column: 17)
!482 = !DILocation(line: 348, column: 34, scope: !481)
!483 = !DILocation(line: 348, column: 21, scope: !481)
!484 = !DILocation(line: 349, column: 17, scope: !481)
!485 = !DILocation(line: 346, column: 37, scope: !477)
!486 = !DILocation(line: 346, column: 17, scope: !477)
!487 = distinct !{!487, !479, !488, !200}
!488 = !DILocation(line: 349, column: 17, scope: !474)
!489 = !DILocation(line: 350, column: 13, scope: !470)
!490 = !DILocation(line: 353, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !466, file: !1, line: 352, column: 13)
!492 = !DILocation(line: 356, column: 5, scope: !461)
!493 = !DILocation(line: 357, column: 1, scope: !442)
!494 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 360, type: !64, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!495 = !DILocalVariable(name: "data", scope: !494, file: !1, line: 362, type: !68)
!496 = !DILocation(line: 362, column: 9, scope: !494)
!497 = !DILocation(line: 364, column: 10, scope: !494)
!498 = !DILocation(line: 365, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !1, line: 365, column: 8)
!500 = !DILocation(line: 365, column: 25, scope: !499)
!501 = !DILocation(line: 365, column: 8, scope: !494)
!502 = !DILocation(line: 369, column: 14, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 366, column: 5)
!504 = !DILocation(line: 370, column: 5, scope: !503)
!505 = !DILocation(line: 371, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !494, file: !1, line: 371, column: 8)
!507 = !DILocation(line: 371, column: 25, scope: !506)
!508 = !DILocation(line: 371, column: 8, scope: !494)
!509 = !DILocalVariable(name: "i", scope: !510, file: !1, line: 374, type: !68)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 373, column: 9)
!511 = distinct !DILexicalBlock(scope: !506, file: !1, line: 372, column: 5)
!512 = !DILocation(line: 374, column: 17, scope: !510)
!513 = !DILocalVariable(name: "buffer", scope: !510, file: !1, line: 375, type: !172)
!514 = !DILocation(line: 375, column: 17, scope: !510)
!515 = !DILocation(line: 378, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !1, line: 378, column: 17)
!517 = !DILocation(line: 378, column: 22, scope: !516)
!518 = !DILocation(line: 378, column: 17, scope: !510)
!519 = !DILocation(line: 380, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 379, column: 13)
!521 = !DILocation(line: 380, column: 17, scope: !520)
!522 = !DILocation(line: 380, column: 30, scope: !520)
!523 = !DILocation(line: 382, column: 23, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !1, line: 382, column: 17)
!525 = !DILocation(line: 382, column: 21, scope: !524)
!526 = !DILocation(line: 382, column: 28, scope: !527)
!527 = distinct !DILexicalBlock(scope: !524, file: !1, line: 382, column: 17)
!528 = !DILocation(line: 382, column: 30, scope: !527)
!529 = !DILocation(line: 382, column: 17, scope: !524)
!530 = !DILocation(line: 384, column: 41, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !1, line: 383, column: 17)
!532 = !DILocation(line: 384, column: 34, scope: !531)
!533 = !DILocation(line: 384, column: 21, scope: !531)
!534 = !DILocation(line: 385, column: 17, scope: !531)
!535 = !DILocation(line: 382, column: 37, scope: !527)
!536 = !DILocation(line: 382, column: 17, scope: !527)
!537 = distinct !{!537, !529, !538, !200}
!538 = !DILocation(line: 385, column: 17, scope: !524)
!539 = !DILocation(line: 386, column: 13, scope: !520)
!540 = !DILocation(line: 389, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !516, file: !1, line: 388, column: 13)
!542 = !DILocation(line: 392, column: 5, scope: !511)
!543 = !DILocation(line: 393, column: 1, scope: !494)
!544 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_13_good", scope: !1, file: !1, line: 395, type: !64, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!545 = !DILocation(line: 397, column: 5, scope: !544)
!546 = !DILocation(line: 398, column: 5, scope: !544)
!547 = !DILocation(line: 399, column: 5, scope: !544)
!548 = !DILocation(line: 400, column: 5, scope: !544)
!549 = !DILocation(line: 401, column: 1, scope: !544)
