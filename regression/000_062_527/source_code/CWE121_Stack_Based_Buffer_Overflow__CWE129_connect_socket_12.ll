; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i39 = alloca i32, align 4
  %buffer40 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !69
  store i32 -1, i32* %data, align 4, !dbg !70
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !71
  %tobool = icmp ne i32 %call, 0, !dbg !71
  br i1 %tobool, label %if.then, label %if.else, !dbg !73

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !78, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 -1, i32* %connectSocket, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  br label %do.body, !dbg !105

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !106
  store i32 %call1, i32* %connectSocket, align 4, !dbg !108
  %0 = load i32, i32* %connectSocket, align 4, !dbg !109
  %cmp = icmp eq i32 %0, -1, !dbg !111
  br i1 %cmp, label %if.then2, label %if.end, !dbg !112

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !113

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !115
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !115
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !116
  store i16 2, i16* %sin_family, align 4, !dbg !117
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !118
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !119
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !120
  store i32 %call3, i32* %s_addr, align 4, !dbg !121
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !122
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !123
  store i16 %call4, i16* %sin_port, align 2, !dbg !124
  %2 = load i32, i32* %connectSocket, align 4, !dbg !125
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !127
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !128
  %cmp6 = icmp eq i32 %call5, -1, !dbg !129
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !130

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !131

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !133
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !134
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !135
  %conv = trunc i64 %call9 to i32, !dbg !135
  store i32 %conv, i32* %recvResult, align 4, !dbg !136
  %5 = load i32, i32* %recvResult, align 4, !dbg !137
  %cmp10 = icmp eq i32 %5, -1, !dbg !139
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !140

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !141
  %cmp12 = icmp eq i32 %6, 0, !dbg !142
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !143

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !144

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !146
  %idxprom = sext i32 %7 to i64, !dbg !147
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !147
  store i8 0, i8* %arrayidx, align 1, !dbg !148
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !149
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !150
  store i32 %call17, i32* %data, align 4, !dbg !151
  br label %do.end, !dbg !152

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !153
  %cmp18 = icmp ne i32 %8, -1, !dbg !155
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !156

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !157
  %call21 = call i32 @close(i32 %9), !dbg !159
  br label %if.end22, !dbg !160

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !161

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !162
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end22
  %call24 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !164
  %tobool25 = icmp ne i32 %call24, 0, !dbg !164
  br i1 %tobool25, label %if.then26, label %if.else38, !dbg !166

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !171, metadata !DIExpression()), !dbg !175
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !175
  %11 = load i32, i32* %data, align 4, !dbg !176
  %cmp27 = icmp sge i32 %11, 0, !dbg !178
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !179

if.then29:                                        ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !180
  %idxprom30 = sext i32 %12 to i64, !dbg !182
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !182
  store i32 1, i32* %arrayidx31, align 4, !dbg !183
  store i32 0, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !186

for.cond:                                         ; preds = %for.inc, %if.then29
  %13 = load i32, i32* %i, align 4, !dbg !187
  %cmp32 = icmp slt i32 %13, 10, !dbg !189
  br i1 %cmp32, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !191
  %idxprom34 = sext i32 %14 to i64, !dbg !193
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !193
  %15 = load i32, i32* %arrayidx35, align 4, !dbg !193
  call void @printIntLine(i32 %15), !dbg !194
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !196
  %inc = add nsw i32 %16, 1, !dbg !196
  store i32 %inc, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !201

if.else36:                                        ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !202
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end59, !dbg !204

if.else38:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i39, metadata !205, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer40, metadata !209, metadata !DIExpression()), !dbg !210
  %17 = bitcast [10 x i32]* %buffer40 to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 40, i1 false), !dbg !210
  %18 = load i32, i32* %data, align 4, !dbg !211
  %cmp41 = icmp sge i32 %18, 0, !dbg !213
  br i1 %cmp41, label %land.lhs.true, label %if.else57, !dbg !214

land.lhs.true:                                    ; preds = %if.else38
  %19 = load i32, i32* %data, align 4, !dbg !215
  %cmp43 = icmp slt i32 %19, 10, !dbg !216
  br i1 %cmp43, label %if.then45, label %if.else57, !dbg !217

if.then45:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %data, align 4, !dbg !218
  %idxprom46 = sext i32 %20 to i64, !dbg !220
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer40, i64 0, i64 %idxprom46, !dbg !220
  store i32 1, i32* %arrayidx47, align 4, !dbg !221
  store i32 0, i32* %i39, align 4, !dbg !222
  br label %for.cond48, !dbg !224

for.cond48:                                       ; preds = %for.inc54, %if.then45
  %21 = load i32, i32* %i39, align 4, !dbg !225
  %cmp49 = icmp slt i32 %21, 10, !dbg !227
  br i1 %cmp49, label %for.body51, label %for.end56, !dbg !228

for.body51:                                       ; preds = %for.cond48
  %22 = load i32, i32* %i39, align 4, !dbg !229
  %idxprom52 = sext i32 %22 to i64, !dbg !231
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer40, i64 0, i64 %idxprom52, !dbg !231
  %23 = load i32, i32* %arrayidx53, align 4, !dbg !231
  call void @printIntLine(i32 %23), !dbg !232
  br label %for.inc54, !dbg !233

for.inc54:                                        ; preds = %for.body51
  %24 = load i32, i32* %i39, align 4, !dbg !234
  %inc55 = add nsw i32 %24, 1, !dbg !234
  store i32 %inc55, i32* %i39, align 4, !dbg !234
  br label %for.cond48, !dbg !235, !llvm.loop !236

for.end56:                                        ; preds = %for.cond48
  br label %if.end58, !dbg !238

if.else57:                                        ; preds = %land.lhs.true, %if.else38
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !239
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %for.end56
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end37
  ret void, !dbg !241
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #2

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !242 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %recvResult23 = alloca i32, align 4
  %service24 = alloca %struct.sockaddr_in, align 4
  %connectSocket25 = alloca i32, align 4
  %inputBuffer26 = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i82 = alloca i32, align 4
  %buffer83 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 -1, i32* %data, align 4, !dbg !245
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !246
  %tobool = icmp ne i32 %call, 0, !dbg !246
  br i1 %tobool, label %if.then, label %if.else, !dbg !248

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 -1, i32* %connectSocket, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !257, metadata !DIExpression()), !dbg !258
  br label %do.body, !dbg !259

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !260
  store i32 %call1, i32* %connectSocket, align 4, !dbg !262
  %0 = load i32, i32* %connectSocket, align 4, !dbg !263
  %cmp = icmp eq i32 %0, -1, !dbg !265
  br i1 %cmp, label %if.then2, label %if.end, !dbg !266

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !267

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !269
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !270
  store i16 2, i16* %sin_family, align 4, !dbg !271
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !272
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !273
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !274
  store i32 %call3, i32* %s_addr, align 4, !dbg !275
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !276
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !277
  store i16 %call4, i16* %sin_port, align 2, !dbg !278
  %2 = load i32, i32* %connectSocket, align 4, !dbg !279
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !281
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !282
  %cmp6 = icmp eq i32 %call5, -1, !dbg !283
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !284

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !285

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !287
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !288
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !289
  %conv = trunc i64 %call9 to i32, !dbg !289
  store i32 %conv, i32* %recvResult, align 4, !dbg !290
  %5 = load i32, i32* %recvResult, align 4, !dbg !291
  %cmp10 = icmp eq i32 %5, -1, !dbg !293
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !294

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !295
  %cmp12 = icmp eq i32 %6, 0, !dbg !296
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !297

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !298

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !300
  %idxprom = sext i32 %7 to i64, !dbg !301
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !301
  store i8 0, i8* %arrayidx, align 1, !dbg !302
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !303
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !304
  store i32 %call17, i32* %data, align 4, !dbg !305
  br label %do.end, !dbg !306

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !307
  %cmp18 = icmp ne i32 %8, -1, !dbg !309
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !310

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !311
  %call21 = call i32 @close(i32 %9), !dbg !313
  br label %if.end22, !dbg !314

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end64, !dbg !315

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult23, metadata !316, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service24, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %connectSocket25, metadata !322, metadata !DIExpression()), !dbg !323
  store i32 -1, i32* %connectSocket25, align 4, !dbg !323
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer26, metadata !324, metadata !DIExpression()), !dbg !325
  br label %do.body27, !dbg !326

do.body27:                                        ; preds = %if.else
  %call28 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !327
  store i32 %call28, i32* %connectSocket25, align 4, !dbg !329
  %10 = load i32, i32* %connectSocket25, align 4, !dbg !330
  %cmp29 = icmp eq i32 %10, -1, !dbg !332
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !333

if.then31:                                        ; preds = %do.body27
  br label %do.end58, !dbg !334

if.end32:                                         ; preds = %do.body27
  %11 = bitcast %struct.sockaddr_in* %service24 to i8*, !dbg !336
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false), !dbg !336
  %sin_family33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 0, !dbg !337
  store i16 2, i16* %sin_family33, align 4, !dbg !338
  %call34 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !339
  %sin_addr35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 2, !dbg !340
  %s_addr36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr35, i32 0, i32 0, !dbg !341
  store i32 %call34, i32* %s_addr36, align 4, !dbg !342
  %call37 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !343
  %sin_port38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service24, i32 0, i32 1, !dbg !344
  store i16 %call37, i16* %sin_port38, align 2, !dbg !345
  %12 = load i32, i32* %connectSocket25, align 4, !dbg !346
  %13 = bitcast %struct.sockaddr_in* %service24 to %struct.sockaddr*, !dbg !348
  %call39 = call i32 @connect(i32 %12, %struct.sockaddr* %13, i32 16), !dbg !349
  %cmp40 = icmp eq i32 %call39, -1, !dbg !350
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !351

if.then42:                                        ; preds = %if.end32
  br label %do.end58, !dbg !352

if.end43:                                         ; preds = %if.end32
  %14 = load i32, i32* %connectSocket25, align 4, !dbg !354
  %arraydecay44 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 0, !dbg !355
  %call45 = call i64 @recv(i32 %14, i8* %arraydecay44, i64 13, i32 0), !dbg !356
  %conv46 = trunc i64 %call45 to i32, !dbg !356
  store i32 %conv46, i32* %recvResult23, align 4, !dbg !357
  %15 = load i32, i32* %recvResult23, align 4, !dbg !358
  %cmp47 = icmp eq i32 %15, -1, !dbg !360
  br i1 %cmp47, label %if.then52, label %lor.lhs.false49, !dbg !361

lor.lhs.false49:                                  ; preds = %if.end43
  %16 = load i32, i32* %recvResult23, align 4, !dbg !362
  %cmp50 = icmp eq i32 %16, 0, !dbg !363
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !364

if.then52:                                        ; preds = %lor.lhs.false49, %if.end43
  br label %do.end58, !dbg !365

if.end53:                                         ; preds = %lor.lhs.false49
  %17 = load i32, i32* %recvResult23, align 4, !dbg !367
  %idxprom54 = sext i32 %17 to i64, !dbg !368
  %arrayidx55 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 %idxprom54, !dbg !368
  store i8 0, i8* %arrayidx55, align 1, !dbg !369
  %arraydecay56 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer26, i64 0, i64 0, !dbg !370
  %call57 = call i32 @atoi(i8* %arraydecay56) #9, !dbg !371
  store i32 %call57, i32* %data, align 4, !dbg !372
  br label %do.end58, !dbg !373

do.end58:                                         ; preds = %if.end53, %if.then52, %if.then42, %if.then31
  %18 = load i32, i32* %connectSocket25, align 4, !dbg !374
  %cmp59 = icmp ne i32 %18, -1, !dbg !376
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !377

if.then61:                                        ; preds = %do.end58
  %19 = load i32, i32* %connectSocket25, align 4, !dbg !378
  %call62 = call i32 @close(i32 %19), !dbg !380
  br label %if.end63, !dbg !381

if.end63:                                         ; preds = %if.then61, %do.end58
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end22
  %call65 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !382
  %tobool66 = icmp ne i32 %call65, 0, !dbg !382
  br i1 %tobool66, label %if.then67, label %if.else81, !dbg !384

if.then67:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !389, metadata !DIExpression()), !dbg !390
  %20 = bitcast [10 x i32]* %buffer to i8*, !dbg !390
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !390
  %21 = load i32, i32* %data, align 4, !dbg !391
  %cmp68 = icmp sge i32 %21, 0, !dbg !393
  br i1 %cmp68, label %land.lhs.true, label %if.else79, !dbg !394

land.lhs.true:                                    ; preds = %if.then67
  %22 = load i32, i32* %data, align 4, !dbg !395
  %cmp70 = icmp slt i32 %22, 10, !dbg !396
  br i1 %cmp70, label %if.then72, label %if.else79, !dbg !397

if.then72:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %data, align 4, !dbg !398
  %idxprom73 = sext i32 %23 to i64, !dbg !400
  %arrayidx74 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom73, !dbg !400
  store i32 1, i32* %arrayidx74, align 4, !dbg !401
  store i32 0, i32* %i, align 4, !dbg !402
  br label %for.cond, !dbg !404

for.cond:                                         ; preds = %for.inc, %if.then72
  %24 = load i32, i32* %i, align 4, !dbg !405
  %cmp75 = icmp slt i32 %24, 10, !dbg !407
  br i1 %cmp75, label %for.body, label %for.end, !dbg !408

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !dbg !409
  %idxprom77 = sext i32 %25 to i64, !dbg !411
  %arrayidx78 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom77, !dbg !411
  %26 = load i32, i32* %arrayidx78, align 4, !dbg !411
  call void @printIntLine(i32 %26), !dbg !412
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !414
  %inc = add nsw i32 %27, 1, !dbg !414
  store i32 %inc, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  br label %if.end80, !dbg !418

if.else79:                                        ; preds = %land.lhs.true, %if.then67
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !419
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %for.end
  br label %if.end103, !dbg !421

if.else81:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i32* %i82, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer83, metadata !426, metadata !DIExpression()), !dbg !427
  %28 = bitcast [10 x i32]* %buffer83 to i8*, !dbg !427
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 40, i1 false), !dbg !427
  %29 = load i32, i32* %data, align 4, !dbg !428
  %cmp84 = icmp sge i32 %29, 0, !dbg !430
  br i1 %cmp84, label %land.lhs.true86, label %if.else101, !dbg !431

land.lhs.true86:                                  ; preds = %if.else81
  %30 = load i32, i32* %data, align 4, !dbg !432
  %cmp87 = icmp slt i32 %30, 10, !dbg !433
  br i1 %cmp87, label %if.then89, label %if.else101, !dbg !434

if.then89:                                        ; preds = %land.lhs.true86
  %31 = load i32, i32* %data, align 4, !dbg !435
  %idxprom90 = sext i32 %31 to i64, !dbg !437
  %arrayidx91 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer83, i64 0, i64 %idxprom90, !dbg !437
  store i32 1, i32* %arrayidx91, align 4, !dbg !438
  store i32 0, i32* %i82, align 4, !dbg !439
  br label %for.cond92, !dbg !441

for.cond92:                                       ; preds = %for.inc98, %if.then89
  %32 = load i32, i32* %i82, align 4, !dbg !442
  %cmp93 = icmp slt i32 %32, 10, !dbg !444
  br i1 %cmp93, label %for.body95, label %for.end100, !dbg !445

for.body95:                                       ; preds = %for.cond92
  %33 = load i32, i32* %i82, align 4, !dbg !446
  %idxprom96 = sext i32 %33 to i64, !dbg !448
  %arrayidx97 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer83, i64 0, i64 %idxprom96, !dbg !448
  %34 = load i32, i32* %arrayidx97, align 4, !dbg !448
  call void @printIntLine(i32 %34), !dbg !449
  br label %for.inc98, !dbg !450

for.inc98:                                        ; preds = %for.body95
  %35 = load i32, i32* %i82, align 4, !dbg !451
  %inc99 = add nsw i32 %35, 1, !dbg !451
  store i32 %inc99, i32* %i82, align 4, !dbg !451
  br label %for.cond92, !dbg !452, !llvm.loop !453

for.end100:                                       ; preds = %for.cond92
  br label %if.end102, !dbg !455

if.else101:                                       ; preds = %land.lhs.true86, %if.else81
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !456
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %for.end100
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end80
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !459 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i11 = alloca i32, align 4
  %buffer12 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 -1, i32* %data, align 4, !dbg !462
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !463
  %tobool = icmp ne i32 %call, 0, !dbg !463
  br i1 %tobool, label %if.then, label %if.else, !dbg !465

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !466
  br label %if.end, !dbg !468

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !469
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !471
  %tobool2 = icmp ne i32 %call1, 0, !dbg !471
  br i1 %tobool2, label %if.then3, label %if.else10, !dbg !473

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !479
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !479
  %1 = load i32, i32* %data, align 4, !dbg !480
  %cmp = icmp sge i32 %1, 0, !dbg !482
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !483

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !484
  %idxprom = sext i32 %2 to i64, !dbg !486
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !486
  store i32 1, i32* %arrayidx, align 4, !dbg !487
  store i32 0, i32* %i, align 4, !dbg !488
  br label %for.cond, !dbg !490

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !491
  %cmp5 = icmp slt i32 %3, 10, !dbg !493
  br i1 %cmp5, label %for.body, label %for.end, !dbg !494

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !495
  %idxprom6 = sext i32 %4 to i64, !dbg !497
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !497
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !497
  call void @printIntLine(i32 %5), !dbg !498
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !500
  %inc = add nsw i32 %6, 1, !dbg !500
  store i32 %inc, i32* %i, align 4, !dbg !500
  br label %for.cond, !dbg !501, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !504

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !505
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end27, !dbg !507

if.else10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !508, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer12, metadata !512, metadata !DIExpression()), !dbg !513
  %7 = bitcast [10 x i32]* %buffer12 to i8*, !dbg !513
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false), !dbg !513
  %8 = load i32, i32* %data, align 4, !dbg !514
  %cmp13 = icmp sge i32 %8, 0, !dbg !516
  br i1 %cmp13, label %if.then14, label %if.else25, !dbg !517

if.then14:                                        ; preds = %if.else10
  %9 = load i32, i32* %data, align 4, !dbg !518
  %idxprom15 = sext i32 %9 to i64, !dbg !520
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom15, !dbg !520
  store i32 1, i32* %arrayidx16, align 4, !dbg !521
  store i32 0, i32* %i11, align 4, !dbg !522
  br label %for.cond17, !dbg !524

for.cond17:                                       ; preds = %for.inc22, %if.then14
  %10 = load i32, i32* %i11, align 4, !dbg !525
  %cmp18 = icmp slt i32 %10, 10, !dbg !527
  br i1 %cmp18, label %for.body19, label %for.end24, !dbg !528

for.body19:                                       ; preds = %for.cond17
  %11 = load i32, i32* %i11, align 4, !dbg !529
  %idxprom20 = sext i32 %11 to i64, !dbg !531
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom20, !dbg !531
  %12 = load i32, i32* %arrayidx21, align 4, !dbg !531
  call void @printIntLine(i32 %12), !dbg !532
  br label %for.inc22, !dbg !533

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, i32* %i11, align 4, !dbg !534
  %inc23 = add nsw i32 %13, 1, !dbg !534
  store i32 %inc23, i32* %i11, align 4, !dbg !534
  br label %for.cond17, !dbg !535, !llvm.loop !536

for.end24:                                        ; preds = %for.cond17
  br label %if.end26, !dbg !538

if.else25:                                        ; preds = %if.else10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !539
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good() #0 !dbg !542 {
entry:
  call void @goodB2G(), !dbg !543
  call void @goodG2B(), !dbg !544
  ret void, !dbg !545
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{}
!67 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 47, type: !68)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 47, column: 9, scope: !63)
!70 = !DILocation(line: 49, column: 10, scope: !63)
!71 = !DILocation(line: 50, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 8)
!73 = !DILocation(line: 50, column: 8, scope: !63)
!74 = !DILocalVariable(name: "recvResult", scope: !75, file: !1, line: 57, type: !68)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 52, column: 9)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 51, column: 5)
!77 = !DILocation(line: 57, column: 17, scope: !75)
!78 = !DILocalVariable(name: "service", scope: !75, file: !1, line: 58, type: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !80)
!80 = !{!81, !82, !88, !95}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !79, file: !17, line: 240, baseType: !51, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !79, file: !17, line: 241, baseType: !83, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !85, line: 25, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !87, line: 40, baseType: !53)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !79, file: !17, line: 242, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !89, file: !17, line: 33, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 26, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 42, baseType: !5)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !79, file: !17, line: 245, baseType: !96, size: 64, offset: 64)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !98)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!99}
!99 = !DISubrange(count: 8)
!100 = !DILocation(line: 58, column: 32, scope: !75)
!101 = !DILocalVariable(name: "connectSocket", scope: !75, file: !1, line: 59, type: !68)
!102 = !DILocation(line: 59, column: 20, scope: !75)
!103 = !DILocalVariable(name: "inputBuffer", scope: !75, file: !1, line: 60, type: !55)
!104 = !DILocation(line: 60, column: 18, scope: !75)
!105 = !DILocation(line: 61, column: 13, scope: !75)
!106 = !DILocation(line: 71, column: 33, scope: !107)
!107 = distinct !DILexicalBlock(scope: !75, file: !1, line: 62, column: 13)
!108 = !DILocation(line: 71, column: 31, scope: !107)
!109 = !DILocation(line: 72, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 72, column: 21)
!111 = !DILocation(line: 72, column: 35, scope: !110)
!112 = !DILocation(line: 72, column: 21, scope: !107)
!113 = !DILocation(line: 74, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 73, column: 17)
!115 = !DILocation(line: 76, column: 17, scope: !107)
!116 = !DILocation(line: 77, column: 25, scope: !107)
!117 = !DILocation(line: 77, column: 36, scope: !107)
!118 = !DILocation(line: 78, column: 43, scope: !107)
!119 = !DILocation(line: 78, column: 25, scope: !107)
!120 = !DILocation(line: 78, column: 34, scope: !107)
!121 = !DILocation(line: 78, column: 41, scope: !107)
!122 = !DILocation(line: 79, column: 36, scope: !107)
!123 = !DILocation(line: 79, column: 25, scope: !107)
!124 = !DILocation(line: 79, column: 34, scope: !107)
!125 = !DILocation(line: 80, column: 29, scope: !126)
!126 = distinct !DILexicalBlock(scope: !107, file: !1, line: 80, column: 21)
!127 = !DILocation(line: 80, column: 44, scope: !126)
!128 = !DILocation(line: 80, column: 21, scope: !126)
!129 = !DILocation(line: 80, column: 89, scope: !126)
!130 = !DILocation(line: 80, column: 21, scope: !107)
!131 = !DILocation(line: 82, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 81, column: 17)
!133 = !DILocation(line: 86, column: 35, scope: !107)
!134 = !DILocation(line: 86, column: 50, scope: !107)
!135 = !DILocation(line: 86, column: 30, scope: !107)
!136 = !DILocation(line: 86, column: 28, scope: !107)
!137 = !DILocation(line: 87, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !107, file: !1, line: 87, column: 21)
!139 = !DILocation(line: 87, column: 32, scope: !138)
!140 = !DILocation(line: 87, column: 48, scope: !138)
!141 = !DILocation(line: 87, column: 51, scope: !138)
!142 = !DILocation(line: 87, column: 62, scope: !138)
!143 = !DILocation(line: 87, column: 21, scope: !107)
!144 = !DILocation(line: 89, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !1, line: 88, column: 17)
!146 = !DILocation(line: 92, column: 29, scope: !107)
!147 = !DILocation(line: 92, column: 17, scope: !107)
!148 = !DILocation(line: 92, column: 41, scope: !107)
!149 = !DILocation(line: 94, column: 29, scope: !107)
!150 = !DILocation(line: 94, column: 24, scope: !107)
!151 = !DILocation(line: 94, column: 22, scope: !107)
!152 = !DILocation(line: 95, column: 13, scope: !107)
!153 = !DILocation(line: 97, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !75, file: !1, line: 97, column: 17)
!155 = !DILocation(line: 97, column: 31, scope: !154)
!156 = !DILocation(line: 97, column: 17, scope: !75)
!157 = !DILocation(line: 99, column: 30, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 98, column: 13)
!159 = !DILocation(line: 99, column: 17, scope: !158)
!160 = !DILocation(line: 100, column: 13, scope: !158)
!161 = !DILocation(line: 108, column: 5, scope: !76)
!162 = !DILocation(line: 113, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !72, file: !1, line: 110, column: 5)
!164 = !DILocation(line: 115, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !63, file: !1, line: 115, column: 8)
!166 = !DILocation(line: 115, column: 8, scope: !63)
!167 = !DILocalVariable(name: "i", scope: !168, file: !1, line: 118, type: !68)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 117, column: 9)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 116, column: 5)
!170 = !DILocation(line: 118, column: 17, scope: !168)
!171 = !DILocalVariable(name: "buffer", scope: !168, file: !1, line: 119, type: !172)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 10)
!175 = !DILocation(line: 119, column: 17, scope: !168)
!176 = !DILocation(line: 122, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !168, file: !1, line: 122, column: 17)
!178 = !DILocation(line: 122, column: 22, scope: !177)
!179 = !DILocation(line: 122, column: 17, scope: !168)
!180 = !DILocation(line: 124, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 123, column: 13)
!182 = !DILocation(line: 124, column: 17, scope: !181)
!183 = !DILocation(line: 124, column: 30, scope: !181)
!184 = !DILocation(line: 126, column: 23, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 126, column: 17)
!186 = !DILocation(line: 126, column: 21, scope: !185)
!187 = !DILocation(line: 126, column: 28, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 126, column: 17)
!189 = !DILocation(line: 126, column: 30, scope: !188)
!190 = !DILocation(line: 126, column: 17, scope: !185)
!191 = !DILocation(line: 128, column: 41, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 127, column: 17)
!193 = !DILocation(line: 128, column: 34, scope: !192)
!194 = !DILocation(line: 128, column: 21, scope: !192)
!195 = !DILocation(line: 129, column: 17, scope: !192)
!196 = !DILocation(line: 126, column: 37, scope: !188)
!197 = !DILocation(line: 126, column: 17, scope: !188)
!198 = distinct !{!198, !190, !199, !200}
!199 = !DILocation(line: 129, column: 17, scope: !185)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 130, column: 13, scope: !181)
!202 = !DILocation(line: 133, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !177, file: !1, line: 132, column: 13)
!204 = !DILocation(line: 136, column: 5, scope: !169)
!205 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 140, type: !68)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 139, column: 9)
!207 = distinct !DILexicalBlock(scope: !165, file: !1, line: 138, column: 5)
!208 = !DILocation(line: 140, column: 17, scope: !206)
!209 = !DILocalVariable(name: "buffer", scope: !206, file: !1, line: 141, type: !172)
!210 = !DILocation(line: 141, column: 17, scope: !206)
!211 = !DILocation(line: 143, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !1, line: 143, column: 17)
!213 = !DILocation(line: 143, column: 22, scope: !212)
!214 = !DILocation(line: 143, column: 27, scope: !212)
!215 = !DILocation(line: 143, column: 30, scope: !212)
!216 = !DILocation(line: 143, column: 35, scope: !212)
!217 = !DILocation(line: 143, column: 17, scope: !206)
!218 = !DILocation(line: 145, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !1, line: 144, column: 13)
!220 = !DILocation(line: 145, column: 17, scope: !219)
!221 = !DILocation(line: 145, column: 30, scope: !219)
!222 = !DILocation(line: 147, column: 23, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 147, column: 17)
!224 = !DILocation(line: 147, column: 21, scope: !223)
!225 = !DILocation(line: 147, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 147, column: 17)
!227 = !DILocation(line: 147, column: 30, scope: !226)
!228 = !DILocation(line: 147, column: 17, scope: !223)
!229 = !DILocation(line: 149, column: 41, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 148, column: 17)
!231 = !DILocation(line: 149, column: 34, scope: !230)
!232 = !DILocation(line: 149, column: 21, scope: !230)
!233 = !DILocation(line: 150, column: 17, scope: !230)
!234 = !DILocation(line: 147, column: 37, scope: !226)
!235 = !DILocation(line: 147, column: 17, scope: !226)
!236 = distinct !{!236, !228, !237, !200}
!237 = !DILocation(line: 150, column: 17, scope: !223)
!238 = !DILocation(line: 151, column: 13, scope: !219)
!239 = !DILocation(line: 154, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !212, file: !1, line: 153, column: 13)
!241 = !DILocation(line: 158, column: 1, scope: !63)
!242 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 167, type: !64, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!243 = !DILocalVariable(name: "data", scope: !242, file: !1, line: 169, type: !68)
!244 = !DILocation(line: 169, column: 9, scope: !242)
!245 = !DILocation(line: 171, column: 10, scope: !242)
!246 = !DILocation(line: 172, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 172, column: 8)
!248 = !DILocation(line: 172, column: 8, scope: !242)
!249 = !DILocalVariable(name: "recvResult", scope: !250, file: !1, line: 179, type: !68)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 174, column: 9)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 173, column: 5)
!252 = !DILocation(line: 179, column: 17, scope: !250)
!253 = !DILocalVariable(name: "service", scope: !250, file: !1, line: 180, type: !79)
!254 = !DILocation(line: 180, column: 32, scope: !250)
!255 = !DILocalVariable(name: "connectSocket", scope: !250, file: !1, line: 181, type: !68)
!256 = !DILocation(line: 181, column: 20, scope: !250)
!257 = !DILocalVariable(name: "inputBuffer", scope: !250, file: !1, line: 182, type: !55)
!258 = !DILocation(line: 182, column: 18, scope: !250)
!259 = !DILocation(line: 183, column: 13, scope: !250)
!260 = !DILocation(line: 193, column: 33, scope: !261)
!261 = distinct !DILexicalBlock(scope: !250, file: !1, line: 184, column: 13)
!262 = !DILocation(line: 193, column: 31, scope: !261)
!263 = !DILocation(line: 194, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 194, column: 21)
!265 = !DILocation(line: 194, column: 35, scope: !264)
!266 = !DILocation(line: 194, column: 21, scope: !261)
!267 = !DILocation(line: 196, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 195, column: 17)
!269 = !DILocation(line: 198, column: 17, scope: !261)
!270 = !DILocation(line: 199, column: 25, scope: !261)
!271 = !DILocation(line: 199, column: 36, scope: !261)
!272 = !DILocation(line: 200, column: 43, scope: !261)
!273 = !DILocation(line: 200, column: 25, scope: !261)
!274 = !DILocation(line: 200, column: 34, scope: !261)
!275 = !DILocation(line: 200, column: 41, scope: !261)
!276 = !DILocation(line: 201, column: 36, scope: !261)
!277 = !DILocation(line: 201, column: 25, scope: !261)
!278 = !DILocation(line: 201, column: 34, scope: !261)
!279 = !DILocation(line: 202, column: 29, scope: !280)
!280 = distinct !DILexicalBlock(scope: !261, file: !1, line: 202, column: 21)
!281 = !DILocation(line: 202, column: 44, scope: !280)
!282 = !DILocation(line: 202, column: 21, scope: !280)
!283 = !DILocation(line: 202, column: 89, scope: !280)
!284 = !DILocation(line: 202, column: 21, scope: !261)
!285 = !DILocation(line: 204, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !1, line: 203, column: 17)
!287 = !DILocation(line: 208, column: 35, scope: !261)
!288 = !DILocation(line: 208, column: 50, scope: !261)
!289 = !DILocation(line: 208, column: 30, scope: !261)
!290 = !DILocation(line: 208, column: 28, scope: !261)
!291 = !DILocation(line: 209, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !261, file: !1, line: 209, column: 21)
!293 = !DILocation(line: 209, column: 32, scope: !292)
!294 = !DILocation(line: 209, column: 48, scope: !292)
!295 = !DILocation(line: 209, column: 51, scope: !292)
!296 = !DILocation(line: 209, column: 62, scope: !292)
!297 = !DILocation(line: 209, column: 21, scope: !261)
!298 = !DILocation(line: 211, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !1, line: 210, column: 17)
!300 = !DILocation(line: 214, column: 29, scope: !261)
!301 = !DILocation(line: 214, column: 17, scope: !261)
!302 = !DILocation(line: 214, column: 41, scope: !261)
!303 = !DILocation(line: 216, column: 29, scope: !261)
!304 = !DILocation(line: 216, column: 24, scope: !261)
!305 = !DILocation(line: 216, column: 22, scope: !261)
!306 = !DILocation(line: 217, column: 13, scope: !261)
!307 = !DILocation(line: 219, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !250, file: !1, line: 219, column: 17)
!309 = !DILocation(line: 219, column: 31, scope: !308)
!310 = !DILocation(line: 219, column: 17, scope: !250)
!311 = !DILocation(line: 221, column: 30, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 220, column: 13)
!313 = !DILocation(line: 221, column: 17, scope: !312)
!314 = !DILocation(line: 222, column: 13, scope: !312)
!315 = !DILocation(line: 230, column: 5, scope: !251)
!316 = !DILocalVariable(name: "recvResult", scope: !317, file: !1, line: 238, type: !68)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 233, column: 9)
!318 = distinct !DILexicalBlock(scope: !247, file: !1, line: 232, column: 5)
!319 = !DILocation(line: 238, column: 17, scope: !317)
!320 = !DILocalVariable(name: "service", scope: !317, file: !1, line: 239, type: !79)
!321 = !DILocation(line: 239, column: 32, scope: !317)
!322 = !DILocalVariable(name: "connectSocket", scope: !317, file: !1, line: 240, type: !68)
!323 = !DILocation(line: 240, column: 20, scope: !317)
!324 = !DILocalVariable(name: "inputBuffer", scope: !317, file: !1, line: 241, type: !55)
!325 = !DILocation(line: 241, column: 18, scope: !317)
!326 = !DILocation(line: 242, column: 13, scope: !317)
!327 = !DILocation(line: 252, column: 33, scope: !328)
!328 = distinct !DILexicalBlock(scope: !317, file: !1, line: 243, column: 13)
!329 = !DILocation(line: 252, column: 31, scope: !328)
!330 = !DILocation(line: 253, column: 21, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 253, column: 21)
!332 = !DILocation(line: 253, column: 35, scope: !331)
!333 = !DILocation(line: 253, column: 21, scope: !328)
!334 = !DILocation(line: 255, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 254, column: 17)
!336 = !DILocation(line: 257, column: 17, scope: !328)
!337 = !DILocation(line: 258, column: 25, scope: !328)
!338 = !DILocation(line: 258, column: 36, scope: !328)
!339 = !DILocation(line: 259, column: 43, scope: !328)
!340 = !DILocation(line: 259, column: 25, scope: !328)
!341 = !DILocation(line: 259, column: 34, scope: !328)
!342 = !DILocation(line: 259, column: 41, scope: !328)
!343 = !DILocation(line: 260, column: 36, scope: !328)
!344 = !DILocation(line: 260, column: 25, scope: !328)
!345 = !DILocation(line: 260, column: 34, scope: !328)
!346 = !DILocation(line: 261, column: 29, scope: !347)
!347 = distinct !DILexicalBlock(scope: !328, file: !1, line: 261, column: 21)
!348 = !DILocation(line: 261, column: 44, scope: !347)
!349 = !DILocation(line: 261, column: 21, scope: !347)
!350 = !DILocation(line: 261, column: 89, scope: !347)
!351 = !DILocation(line: 261, column: 21, scope: !328)
!352 = !DILocation(line: 263, column: 21, scope: !353)
!353 = distinct !DILexicalBlock(scope: !347, file: !1, line: 262, column: 17)
!354 = !DILocation(line: 267, column: 35, scope: !328)
!355 = !DILocation(line: 267, column: 50, scope: !328)
!356 = !DILocation(line: 267, column: 30, scope: !328)
!357 = !DILocation(line: 267, column: 28, scope: !328)
!358 = !DILocation(line: 268, column: 21, scope: !359)
!359 = distinct !DILexicalBlock(scope: !328, file: !1, line: 268, column: 21)
!360 = !DILocation(line: 268, column: 32, scope: !359)
!361 = !DILocation(line: 268, column: 48, scope: !359)
!362 = !DILocation(line: 268, column: 51, scope: !359)
!363 = !DILocation(line: 268, column: 62, scope: !359)
!364 = !DILocation(line: 268, column: 21, scope: !328)
!365 = !DILocation(line: 270, column: 21, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !1, line: 269, column: 17)
!367 = !DILocation(line: 273, column: 29, scope: !328)
!368 = !DILocation(line: 273, column: 17, scope: !328)
!369 = !DILocation(line: 273, column: 41, scope: !328)
!370 = !DILocation(line: 275, column: 29, scope: !328)
!371 = !DILocation(line: 275, column: 24, scope: !328)
!372 = !DILocation(line: 275, column: 22, scope: !328)
!373 = !DILocation(line: 276, column: 13, scope: !328)
!374 = !DILocation(line: 278, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !317, file: !1, line: 278, column: 17)
!376 = !DILocation(line: 278, column: 31, scope: !375)
!377 = !DILocation(line: 278, column: 17, scope: !317)
!378 = !DILocation(line: 280, column: 30, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 279, column: 13)
!380 = !DILocation(line: 280, column: 17, scope: !379)
!381 = !DILocation(line: 281, column: 13, scope: !379)
!382 = !DILocation(line: 290, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !242, file: !1, line: 290, column: 8)
!384 = !DILocation(line: 290, column: 8, scope: !242)
!385 = !DILocalVariable(name: "i", scope: !386, file: !1, line: 293, type: !68)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 292, column: 9)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 291, column: 5)
!388 = !DILocation(line: 293, column: 17, scope: !386)
!389 = !DILocalVariable(name: "buffer", scope: !386, file: !1, line: 294, type: !172)
!390 = !DILocation(line: 294, column: 17, scope: !386)
!391 = !DILocation(line: 296, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !1, line: 296, column: 17)
!393 = !DILocation(line: 296, column: 22, scope: !392)
!394 = !DILocation(line: 296, column: 27, scope: !392)
!395 = !DILocation(line: 296, column: 30, scope: !392)
!396 = !DILocation(line: 296, column: 35, scope: !392)
!397 = !DILocation(line: 296, column: 17, scope: !386)
!398 = !DILocation(line: 298, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !392, file: !1, line: 297, column: 13)
!400 = !DILocation(line: 298, column: 17, scope: !399)
!401 = !DILocation(line: 298, column: 30, scope: !399)
!402 = !DILocation(line: 300, column: 23, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 300, column: 17)
!404 = !DILocation(line: 300, column: 21, scope: !403)
!405 = !DILocation(line: 300, column: 28, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 300, column: 17)
!407 = !DILocation(line: 300, column: 30, scope: !406)
!408 = !DILocation(line: 300, column: 17, scope: !403)
!409 = !DILocation(line: 302, column: 41, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 301, column: 17)
!411 = !DILocation(line: 302, column: 34, scope: !410)
!412 = !DILocation(line: 302, column: 21, scope: !410)
!413 = !DILocation(line: 303, column: 17, scope: !410)
!414 = !DILocation(line: 300, column: 37, scope: !406)
!415 = !DILocation(line: 300, column: 17, scope: !406)
!416 = distinct !{!416, !408, !417, !200}
!417 = !DILocation(line: 303, column: 17, scope: !403)
!418 = !DILocation(line: 304, column: 13, scope: !399)
!419 = !DILocation(line: 307, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !392, file: !1, line: 306, column: 13)
!421 = !DILocation(line: 310, column: 5, scope: !387)
!422 = !DILocalVariable(name: "i", scope: !423, file: !1, line: 314, type: !68)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 313, column: 9)
!424 = distinct !DILexicalBlock(scope: !383, file: !1, line: 312, column: 5)
!425 = !DILocation(line: 314, column: 17, scope: !423)
!426 = !DILocalVariable(name: "buffer", scope: !423, file: !1, line: 315, type: !172)
!427 = !DILocation(line: 315, column: 17, scope: !423)
!428 = !DILocation(line: 317, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !1, line: 317, column: 17)
!430 = !DILocation(line: 317, column: 22, scope: !429)
!431 = !DILocation(line: 317, column: 27, scope: !429)
!432 = !DILocation(line: 317, column: 30, scope: !429)
!433 = !DILocation(line: 317, column: 35, scope: !429)
!434 = !DILocation(line: 317, column: 17, scope: !423)
!435 = !DILocation(line: 319, column: 24, scope: !436)
!436 = distinct !DILexicalBlock(scope: !429, file: !1, line: 318, column: 13)
!437 = !DILocation(line: 319, column: 17, scope: !436)
!438 = !DILocation(line: 319, column: 30, scope: !436)
!439 = !DILocation(line: 321, column: 23, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !1, line: 321, column: 17)
!441 = !DILocation(line: 321, column: 21, scope: !440)
!442 = !DILocation(line: 321, column: 28, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 321, column: 17)
!444 = !DILocation(line: 321, column: 30, scope: !443)
!445 = !DILocation(line: 321, column: 17, scope: !440)
!446 = !DILocation(line: 323, column: 41, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 322, column: 17)
!448 = !DILocation(line: 323, column: 34, scope: !447)
!449 = !DILocation(line: 323, column: 21, scope: !447)
!450 = !DILocation(line: 324, column: 17, scope: !447)
!451 = !DILocation(line: 321, column: 37, scope: !443)
!452 = !DILocation(line: 321, column: 17, scope: !443)
!453 = distinct !{!453, !445, !454, !200}
!454 = !DILocation(line: 324, column: 17, scope: !440)
!455 = !DILocation(line: 325, column: 13, scope: !436)
!456 = !DILocation(line: 328, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !429, file: !1, line: 327, column: 13)
!458 = !DILocation(line: 332, column: 1, scope: !242)
!459 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 337, type: !64, scopeLine: 338, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!460 = !DILocalVariable(name: "data", scope: !459, file: !1, line: 339, type: !68)
!461 = !DILocation(line: 339, column: 9, scope: !459)
!462 = !DILocation(line: 341, column: 10, scope: !459)
!463 = !DILocation(line: 342, column: 8, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !1, line: 342, column: 8)
!465 = !DILocation(line: 342, column: 8, scope: !459)
!466 = !DILocation(line: 346, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 343, column: 5)
!468 = !DILocation(line: 347, column: 5, scope: !467)
!469 = !DILocation(line: 352, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !1, line: 349, column: 5)
!471 = !DILocation(line: 354, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !459, file: !1, line: 354, column: 8)
!473 = !DILocation(line: 354, column: 8, scope: !459)
!474 = !DILocalVariable(name: "i", scope: !475, file: !1, line: 357, type: !68)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 356, column: 9)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 355, column: 5)
!477 = !DILocation(line: 357, column: 17, scope: !475)
!478 = !DILocalVariable(name: "buffer", scope: !475, file: !1, line: 358, type: !172)
!479 = !DILocation(line: 358, column: 17, scope: !475)
!480 = !DILocation(line: 361, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !475, file: !1, line: 361, column: 17)
!482 = !DILocation(line: 361, column: 22, scope: !481)
!483 = !DILocation(line: 361, column: 17, scope: !475)
!484 = !DILocation(line: 363, column: 24, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 362, column: 13)
!486 = !DILocation(line: 363, column: 17, scope: !485)
!487 = !DILocation(line: 363, column: 30, scope: !485)
!488 = !DILocation(line: 365, column: 23, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !1, line: 365, column: 17)
!490 = !DILocation(line: 365, column: 21, scope: !489)
!491 = !DILocation(line: 365, column: 28, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 365, column: 17)
!493 = !DILocation(line: 365, column: 30, scope: !492)
!494 = !DILocation(line: 365, column: 17, scope: !489)
!495 = !DILocation(line: 367, column: 41, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 366, column: 17)
!497 = !DILocation(line: 367, column: 34, scope: !496)
!498 = !DILocation(line: 367, column: 21, scope: !496)
!499 = !DILocation(line: 368, column: 17, scope: !496)
!500 = !DILocation(line: 365, column: 37, scope: !492)
!501 = !DILocation(line: 365, column: 17, scope: !492)
!502 = distinct !{!502, !494, !503, !200}
!503 = !DILocation(line: 368, column: 17, scope: !489)
!504 = !DILocation(line: 369, column: 13, scope: !485)
!505 = !DILocation(line: 372, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !481, file: !1, line: 371, column: 13)
!507 = !DILocation(line: 375, column: 5, scope: !476)
!508 = !DILocalVariable(name: "i", scope: !509, file: !1, line: 379, type: !68)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 378, column: 9)
!510 = distinct !DILexicalBlock(scope: !472, file: !1, line: 377, column: 5)
!511 = !DILocation(line: 379, column: 17, scope: !509)
!512 = !DILocalVariable(name: "buffer", scope: !509, file: !1, line: 380, type: !172)
!513 = !DILocation(line: 380, column: 17, scope: !509)
!514 = !DILocation(line: 383, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !1, line: 383, column: 17)
!516 = !DILocation(line: 383, column: 22, scope: !515)
!517 = !DILocation(line: 383, column: 17, scope: !509)
!518 = !DILocation(line: 385, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !1, line: 384, column: 13)
!520 = !DILocation(line: 385, column: 17, scope: !519)
!521 = !DILocation(line: 385, column: 30, scope: !519)
!522 = !DILocation(line: 387, column: 23, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 387, column: 17)
!524 = !DILocation(line: 387, column: 21, scope: !523)
!525 = !DILocation(line: 387, column: 28, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 387, column: 17)
!527 = !DILocation(line: 387, column: 30, scope: !526)
!528 = !DILocation(line: 387, column: 17, scope: !523)
!529 = !DILocation(line: 389, column: 41, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !1, line: 388, column: 17)
!531 = !DILocation(line: 389, column: 34, scope: !530)
!532 = !DILocation(line: 389, column: 21, scope: !530)
!533 = !DILocation(line: 390, column: 17, scope: !530)
!534 = !DILocation(line: 387, column: 37, scope: !526)
!535 = !DILocation(line: 387, column: 17, scope: !526)
!536 = distinct !{!536, !528, !537, !200}
!537 = !DILocation(line: 390, column: 17, scope: !523)
!538 = !DILocation(line: 391, column: 13, scope: !519)
!539 = !DILocation(line: 394, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !515, file: !1, line: 393, column: 13)
!541 = !DILocation(line: 398, column: 1, scope: !459)
!542 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good", scope: !1, file: !1, line: 400, type: !64, scopeLine: 401, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!543 = !DILocation(line: 402, column: 5, scope: !542)
!544 = !DILocation(line: 403, column: 5, scope: !542)
!545 = !DILocation(line: 404, column: 1, scope: !542)
