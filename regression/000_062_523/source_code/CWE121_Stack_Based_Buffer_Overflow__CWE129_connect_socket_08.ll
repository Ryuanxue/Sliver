; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !63 {
entry:
  ret i32 1, !dbg !68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !69 {
entry:
  ret i32 0, !dbg !70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_bad() #0 !dbg !71 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 -1, i32* %data, align 4, !dbg !76
  %call = call i32 @staticReturnsTrue(), !dbg !77
  %tobool = icmp ne i32 %call, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.end23, !dbg !79

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !80, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !84, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 -1, i32* %connectSocket, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !109, metadata !DIExpression()), !dbg !110
  br label %do.body, !dbg !111

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !112
  store i32 %call1, i32* %connectSocket, align 4, !dbg !114
  %0 = load i32, i32* %connectSocket, align 4, !dbg !115
  %cmp = icmp eq i32 %0, -1, !dbg !117
  br i1 %cmp, label %if.then2, label %if.end, !dbg !118

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !119

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !121
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !122
  store i16 2, i16* %sin_family, align 4, !dbg !123
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 %call3, i32* %s_addr, align 4, !dbg !127
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !129
  store i16 %call4, i16* %sin_port, align 2, !dbg !130
  %2 = load i32, i32* %connectSocket, align 4, !dbg !131
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !133
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !134
  %cmp6 = icmp eq i32 %call5, -1, !dbg !135
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !136

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !139
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !140
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !141
  %conv = trunc i64 %call9 to i32, !dbg !141
  store i32 %conv, i32* %recvResult, align 4, !dbg !142
  %5 = load i32, i32* %recvResult, align 4, !dbg !143
  %cmp10 = icmp eq i32 %5, -1, !dbg !145
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !147
  %cmp12 = icmp eq i32 %6, 0, !dbg !148
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !149

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !150

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !152
  %idxprom = sext i32 %7 to i64, !dbg !153
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !154
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !155
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !156
  store i32 %call17, i32* %data, align 4, !dbg !157
  br label %do.end, !dbg !158

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !159
  %cmp18 = icmp ne i32 %8, -1, !dbg !161
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !162

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !163
  %call21 = call i32 @close(i32 %9), !dbg !165
  br label %if.end22, !dbg !166

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !167

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsTrue(), !dbg !168
  %tobool25 = icmp ne i32 %call24, 0, !dbg !168
  br i1 %tobool25, label %if.then26, label %if.end37, !dbg !170

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !175, metadata !DIExpression()), !dbg !179
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !179
  %11 = load i32, i32* %data, align 4, !dbg !180
  %cmp27 = icmp sge i32 %11, 0, !dbg !182
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !183

if.then29:                                        ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !184
  %idxprom30 = sext i32 %12 to i64, !dbg !186
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !186
  store i32 1, i32* %arrayidx31, align 4, !dbg !187
  store i32 0, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %if.then29
  %13 = load i32, i32* %i, align 4, !dbg !191
  %cmp32 = icmp slt i32 %13, 10, !dbg !193
  br i1 %cmp32, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !195
  %idxprom34 = sext i32 %14 to i64, !dbg !197
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !197
  %15 = load i32, i32* %arrayidx35, align 4, !dbg !197
  call void @printIntLine(i32 %15), !dbg !198
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !200
  %inc = add nsw i32 %16, 1, !dbg !200
  store i32 %inc, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !205

if.else:                                          ; preds = %if.then26
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !206
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !208

if.end37:                                         ; preds = %if.end36, %if.end23
  ret void, !dbg !209
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
define dso_local void @goodB2G1() #0 !dbg !210 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 -1, i32* %data, align 4, !dbg !213
  %call = call i32 @staticReturnsTrue(), !dbg !214
  %tobool = icmp ne i32 %call, 0, !dbg !214
  br i1 %tobool, label %if.then, label %if.end23, !dbg !216

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !217, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !223, metadata !DIExpression()), !dbg !224
  store i32 -1, i32* %connectSocket, align 4, !dbg !224
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  br label %do.body, !dbg !227

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !228
  store i32 %call1, i32* %connectSocket, align 4, !dbg !230
  %0 = load i32, i32* %connectSocket, align 4, !dbg !231
  %cmp = icmp eq i32 %0, -1, !dbg !233
  br i1 %cmp, label %if.then2, label %if.end, !dbg !234

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !235

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !237
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !238
  store i16 2, i16* %sin_family, align 4, !dbg !239
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !240
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !241
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !242
  store i32 %call3, i32* %s_addr, align 4, !dbg !243
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !244
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !245
  store i16 %call4, i16* %sin_port, align 2, !dbg !246
  %2 = load i32, i32* %connectSocket, align 4, !dbg !247
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !249
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !250
  %cmp6 = icmp eq i32 %call5, -1, !dbg !251
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !252

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !253

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !255
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !256
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !257
  %conv = trunc i64 %call9 to i32, !dbg !257
  store i32 %conv, i32* %recvResult, align 4, !dbg !258
  %5 = load i32, i32* %recvResult, align 4, !dbg !259
  %cmp10 = icmp eq i32 %5, -1, !dbg !261
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !262

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !263
  %cmp12 = icmp eq i32 %6, 0, !dbg !264
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !265

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !266

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !268
  %idxprom = sext i32 %7 to i64, !dbg !269
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !269
  store i8 0, i8* %arrayidx, align 1, !dbg !270
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !271
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !272
  store i32 %call17, i32* %data, align 4, !dbg !273
  br label %do.end, !dbg !274

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !275
  %cmp18 = icmp ne i32 %8, -1, !dbg !277
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !278

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !279
  %call21 = call i32 @close(i32 %9), !dbg !281
  br label %if.end22, !dbg !282

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !283

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsFalse(), !dbg !284
  %tobool25 = icmp ne i32 %call24, 0, !dbg !284
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !286

if.then26:                                        ; preds = %if.end23
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !287
  br label %if.end40, !dbg !289

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !294, metadata !DIExpression()), !dbg !295
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !295
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !295
  %11 = load i32, i32* %data, align 4, !dbg !296
  %cmp27 = icmp sge i32 %11, 0, !dbg !298
  br i1 %cmp27, label %land.lhs.true, label %if.else38, !dbg !299

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, i32* %data, align 4, !dbg !300
  %cmp29 = icmp slt i32 %12, 10, !dbg !301
  br i1 %cmp29, label %if.then31, label %if.else38, !dbg !302

if.then31:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !303
  %idxprom32 = sext i32 %13 to i64, !dbg !305
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !305
  store i32 1, i32* %arrayidx33, align 4, !dbg !306
  store i32 0, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !309

for.cond:                                         ; preds = %for.inc, %if.then31
  %14 = load i32, i32* %i, align 4, !dbg !310
  %cmp34 = icmp slt i32 %14, 10, !dbg !312
  br i1 %cmp34, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !314
  %idxprom36 = sext i32 %15 to i64, !dbg !316
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !316
  %16 = load i32, i32* %arrayidx37, align 4, !dbg !316
  call void @printIntLine(i32 %16), !dbg !317
  br label %for.inc, !dbg !318

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !319
  %inc = add nsw i32 %17, 1, !dbg !319
  store i32 %inc, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !323

if.else38:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !324
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !327 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 -1, i32* %data, align 4, !dbg !330
  %call = call i32 @staticReturnsTrue(), !dbg !331
  %tobool = icmp ne i32 %call, 0, !dbg !331
  br i1 %tobool, label %if.then, label %if.end23, !dbg !333

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 -1, i32* %connectSocket, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !342, metadata !DIExpression()), !dbg !343
  br label %do.body, !dbg !344

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !345
  store i32 %call1, i32* %connectSocket, align 4, !dbg !347
  %0 = load i32, i32* %connectSocket, align 4, !dbg !348
  %cmp = icmp eq i32 %0, -1, !dbg !350
  br i1 %cmp, label %if.then2, label %if.end, !dbg !351

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !352

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !354
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !354
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !355
  store i16 2, i16* %sin_family, align 4, !dbg !356
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !357
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !358
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !359
  store i32 %call3, i32* %s_addr, align 4, !dbg !360
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !361
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !362
  store i16 %call4, i16* %sin_port, align 2, !dbg !363
  %2 = load i32, i32* %connectSocket, align 4, !dbg !364
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !366
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !367
  %cmp6 = icmp eq i32 %call5, -1, !dbg !368
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !369

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !370

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %connectSocket, align 4, !dbg !372
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !373
  %call9 = call i64 @recv(i32 %4, i8* %arraydecay, i64 13, i32 0), !dbg !374
  %conv = trunc i64 %call9 to i32, !dbg !374
  store i32 %conv, i32* %recvResult, align 4, !dbg !375
  %5 = load i32, i32* %recvResult, align 4, !dbg !376
  %cmp10 = icmp eq i32 %5, -1, !dbg !378
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !379

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i32, i32* %recvResult, align 4, !dbg !380
  %cmp12 = icmp eq i32 %6, 0, !dbg !381
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !382

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !383

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %recvResult, align 4, !dbg !385
  %idxprom = sext i32 %7 to i64, !dbg !386
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !386
  store i8 0, i8* %arrayidx, align 1, !dbg !387
  %arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !388
  %call17 = call i32 @atoi(i8* %arraydecay16) #9, !dbg !389
  store i32 %call17, i32* %data, align 4, !dbg !390
  br label %do.end, !dbg !391

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %8 = load i32, i32* %connectSocket, align 4, !dbg !392
  %cmp18 = icmp ne i32 %8, -1, !dbg !394
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !395

if.then20:                                        ; preds = %do.end
  %9 = load i32, i32* %connectSocket, align 4, !dbg !396
  %call21 = call i32 @close(i32 %9), !dbg !398
  br label %if.end22, !dbg !399

if.end22:                                         ; preds = %if.then20, %do.end
  br label %if.end23, !dbg !400

if.end23:                                         ; preds = %if.end22, %entry
  %call24 = call i32 @staticReturnsTrue(), !dbg !401
  %tobool25 = icmp ne i32 %call24, 0, !dbg !401
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !403

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !404, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !408, metadata !DIExpression()), !dbg !409
  %10 = bitcast [10 x i32]* %buffer to i8*, !dbg !409
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false), !dbg !409
  %11 = load i32, i32* %data, align 4, !dbg !410
  %cmp27 = icmp sge i32 %11, 0, !dbg !412
  br i1 %cmp27, label %land.lhs.true, label %if.else, !dbg !413

land.lhs.true:                                    ; preds = %if.then26
  %12 = load i32, i32* %data, align 4, !dbg !414
  %cmp29 = icmp slt i32 %12, 10, !dbg !415
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !416

if.then31:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %data, align 4, !dbg !417
  %idxprom32 = sext i32 %13 to i64, !dbg !419
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !419
  store i32 1, i32* %arrayidx33, align 4, !dbg !420
  store i32 0, i32* %i, align 4, !dbg !421
  br label %for.cond, !dbg !423

for.cond:                                         ; preds = %for.inc, %if.then31
  %14 = load i32, i32* %i, align 4, !dbg !424
  %cmp34 = icmp slt i32 %14, 10, !dbg !426
  br i1 %cmp34, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !428
  %idxprom36 = sext i32 %15 to i64, !dbg !430
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom36, !dbg !430
  %16 = load i32, i32* %arrayidx37, align 4, !dbg !430
  call void @printIntLine(i32 %16), !dbg !431
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !433
  %inc = add nsw i32 %17, 1, !dbg !433
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
  %call = call i32 @staticReturnsFalse(), !dbg !446
  %tobool = icmp ne i32 %call, 0, !dbg !446
  br i1 %tobool, label %if.then, label %if.else, !dbg !448

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !449
  br label %if.end, !dbg !451

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !452
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 @staticReturnsTrue(), !dbg !454
  %tobool2 = icmp ne i32 %call1, 0, !dbg !454
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !456

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !457, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !462
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !462
  %1 = load i32, i32* %data, align 4, !dbg !463
  %cmp = icmp sge i32 %1, 0, !dbg !465
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !466

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !467
  %idxprom = sext i32 %2 to i64, !dbg !469
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !469
  store i32 1, i32* %arrayidx, align 4, !dbg !470
  store i32 0, i32* %i, align 4, !dbg !471
  br label %for.cond, !dbg !473

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !474
  %cmp5 = icmp slt i32 %3, 10, !dbg !476
  br i1 %cmp5, label %for.body, label %for.end, !dbg !477

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !478
  %idxprom6 = sext i32 %4 to i64, !dbg !480
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !480
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !480
  call void @printIntLine(i32 %5), !dbg !481
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !483
  %inc = add nsw i32 %6, 1, !dbg !483
  store i32 %inc, i32* %i, align 4, !dbg !483
  br label %for.cond, !dbg !484, !llvm.loop !485

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !487

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !488
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !490

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !492 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !493, metadata !DIExpression()), !dbg !494
  store i32 -1, i32* %data, align 4, !dbg !495
  %call = call i32 @staticReturnsTrue(), !dbg !496
  %tobool = icmp ne i32 %call, 0, !dbg !496
  br i1 %tobool, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !499
  br label %if.end, !dbg !501

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @staticReturnsTrue(), !dbg !502
  %tobool2 = icmp ne i32 %call1, 0, !dbg !502
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !504

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !505, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !510
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !510
  %1 = load i32, i32* %data, align 4, !dbg !511
  %cmp = icmp sge i32 %1, 0, !dbg !513
  br i1 %cmp, label %if.then4, label %if.else, !dbg !514

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !515
  %idxprom = sext i32 %2 to i64, !dbg !517
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !517
  store i32 1, i32* %arrayidx, align 4, !dbg !518
  store i32 0, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !521

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !522
  %cmp5 = icmp slt i32 %3, 10, !dbg !524
  br i1 %cmp5, label %for.body, label %for.end, !dbg !525

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !526
  %idxprom6 = sext i32 %4 to i64, !dbg !528
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !528
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !528
  call void @printIntLine(i32 %5), !dbg !529
  br label %for.inc, !dbg !530

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !531
  %inc = add nsw i32 %6, 1, !dbg !531
  store i32 %inc, i32* %i, align 4, !dbg !531
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !535

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !536
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !538

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_good() #0 !dbg !540 {
entry:
  call void @goodB2G1(), !dbg !541
  call void @goodB2G2(), !dbg !542
  call void @goodG2B1(), !dbg !543
  call void @goodG2B2(), !dbg !544
  ret void, !dbg !545
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_523/source_code")
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
!63 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 46, type: !64, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!64 = !DISubroutineType(types: !65)
!65 = !{!66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{}
!68 = !DILocation(line: 48, column: 5, scope: !63)
!69 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 51, type: !64, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!70 = !DILocation(line: 53, column: 5, scope: !69)
!71 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_bad", scope: !1, file: !1, line: 58, type: !72, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!72 = !DISubroutineType(types: !73)
!73 = !{null}
!74 = !DILocalVariable(name: "data", scope: !71, file: !1, line: 60, type: !66)
!75 = !DILocation(line: 60, column: 9, scope: !71)
!76 = !DILocation(line: 62, column: 10, scope: !71)
!77 = !DILocation(line: 63, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 63, column: 8)
!79 = !DILocation(line: 63, column: 8, scope: !71)
!80 = !DILocalVariable(name: "recvResult", scope: !81, file: !1, line: 70, type: !66)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 65, column: 9)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 64, column: 5)
!83 = !DILocation(line: 70, column: 17, scope: !81)
!84 = !DILocalVariable(name: "service", scope: !81, file: !1, line: 71, type: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !86)
!86 = !{!87, !88, !94, !101}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !85, file: !17, line: 240, baseType: !51, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !85, file: !17, line: 241, baseType: !89, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !53)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !85, file: !17, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !17, line: 33, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !5)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !85, file: !17, line: 245, baseType: !102, size: 64, offset: 64)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !104)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !{!105}
!105 = !DISubrange(count: 8)
!106 = !DILocation(line: 71, column: 32, scope: !81)
!107 = !DILocalVariable(name: "connectSocket", scope: !81, file: !1, line: 72, type: !66)
!108 = !DILocation(line: 72, column: 20, scope: !81)
!109 = !DILocalVariable(name: "inputBuffer", scope: !81, file: !1, line: 73, type: !55)
!110 = !DILocation(line: 73, column: 18, scope: !81)
!111 = !DILocation(line: 74, column: 13, scope: !81)
!112 = !DILocation(line: 84, column: 33, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !1, line: 75, column: 13)
!114 = !DILocation(line: 84, column: 31, scope: !113)
!115 = !DILocation(line: 85, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 85, column: 21)
!117 = !DILocation(line: 85, column: 35, scope: !116)
!118 = !DILocation(line: 85, column: 21, scope: !113)
!119 = !DILocation(line: 87, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 86, column: 17)
!121 = !DILocation(line: 89, column: 17, scope: !113)
!122 = !DILocation(line: 90, column: 25, scope: !113)
!123 = !DILocation(line: 90, column: 36, scope: !113)
!124 = !DILocation(line: 91, column: 43, scope: !113)
!125 = !DILocation(line: 91, column: 25, scope: !113)
!126 = !DILocation(line: 91, column: 34, scope: !113)
!127 = !DILocation(line: 91, column: 41, scope: !113)
!128 = !DILocation(line: 92, column: 36, scope: !113)
!129 = !DILocation(line: 92, column: 25, scope: !113)
!130 = !DILocation(line: 92, column: 34, scope: !113)
!131 = !DILocation(line: 93, column: 29, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !1, line: 93, column: 21)
!133 = !DILocation(line: 93, column: 44, scope: !132)
!134 = !DILocation(line: 93, column: 21, scope: !132)
!135 = !DILocation(line: 93, column: 89, scope: !132)
!136 = !DILocation(line: 93, column: 21, scope: !113)
!137 = !DILocation(line: 95, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 94, column: 17)
!139 = !DILocation(line: 99, column: 35, scope: !113)
!140 = !DILocation(line: 99, column: 50, scope: !113)
!141 = !DILocation(line: 99, column: 30, scope: !113)
!142 = !DILocation(line: 99, column: 28, scope: !113)
!143 = !DILocation(line: 100, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !113, file: !1, line: 100, column: 21)
!145 = !DILocation(line: 100, column: 32, scope: !144)
!146 = !DILocation(line: 100, column: 48, scope: !144)
!147 = !DILocation(line: 100, column: 51, scope: !144)
!148 = !DILocation(line: 100, column: 62, scope: !144)
!149 = !DILocation(line: 100, column: 21, scope: !113)
!150 = !DILocation(line: 102, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 101, column: 17)
!152 = !DILocation(line: 105, column: 29, scope: !113)
!153 = !DILocation(line: 105, column: 17, scope: !113)
!154 = !DILocation(line: 105, column: 41, scope: !113)
!155 = !DILocation(line: 107, column: 29, scope: !113)
!156 = !DILocation(line: 107, column: 24, scope: !113)
!157 = !DILocation(line: 107, column: 22, scope: !113)
!158 = !DILocation(line: 108, column: 13, scope: !113)
!159 = !DILocation(line: 110, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !81, file: !1, line: 110, column: 17)
!161 = !DILocation(line: 110, column: 31, scope: !160)
!162 = !DILocation(line: 110, column: 17, scope: !81)
!163 = !DILocation(line: 112, column: 30, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 111, column: 13)
!165 = !DILocation(line: 112, column: 17, scope: !164)
!166 = !DILocation(line: 113, column: 13, scope: !164)
!167 = !DILocation(line: 121, column: 5, scope: !82)
!168 = !DILocation(line: 122, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !71, file: !1, line: 122, column: 8)
!170 = !DILocation(line: 122, column: 8, scope: !71)
!171 = !DILocalVariable(name: "i", scope: !172, file: !1, line: 125, type: !66)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 124, column: 9)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 123, column: 5)
!174 = !DILocation(line: 125, column: 17, scope: !172)
!175 = !DILocalVariable(name: "buffer", scope: !172, file: !1, line: 126, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 10)
!179 = !DILocation(line: 126, column: 17, scope: !172)
!180 = !DILocation(line: 129, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !1, line: 129, column: 17)
!182 = !DILocation(line: 129, column: 22, scope: !181)
!183 = !DILocation(line: 129, column: 17, scope: !172)
!184 = !DILocation(line: 131, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 130, column: 13)
!186 = !DILocation(line: 131, column: 17, scope: !185)
!187 = !DILocation(line: 131, column: 30, scope: !185)
!188 = !DILocation(line: 133, column: 23, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 133, column: 17)
!190 = !DILocation(line: 133, column: 21, scope: !189)
!191 = !DILocation(line: 133, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 133, column: 17)
!193 = !DILocation(line: 133, column: 30, scope: !192)
!194 = !DILocation(line: 133, column: 17, scope: !189)
!195 = !DILocation(line: 135, column: 41, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 134, column: 17)
!197 = !DILocation(line: 135, column: 34, scope: !196)
!198 = !DILocation(line: 135, column: 21, scope: !196)
!199 = !DILocation(line: 136, column: 17, scope: !196)
!200 = !DILocation(line: 133, column: 37, scope: !192)
!201 = !DILocation(line: 133, column: 17, scope: !192)
!202 = distinct !{!202, !194, !203, !204}
!203 = !DILocation(line: 136, column: 17, scope: !189)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 137, column: 13, scope: !185)
!206 = !DILocation(line: 140, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !181, file: !1, line: 139, column: 13)
!208 = !DILocation(line: 143, column: 5, scope: !173)
!209 = !DILocation(line: 144, column: 1, scope: !71)
!210 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 151, type: !72, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!211 = !DILocalVariable(name: "data", scope: !210, file: !1, line: 153, type: !66)
!212 = !DILocation(line: 153, column: 9, scope: !210)
!213 = !DILocation(line: 155, column: 10, scope: !210)
!214 = !DILocation(line: 156, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 156, column: 8)
!216 = !DILocation(line: 156, column: 8, scope: !210)
!217 = !DILocalVariable(name: "recvResult", scope: !218, file: !1, line: 163, type: !66)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 158, column: 9)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 157, column: 5)
!220 = !DILocation(line: 163, column: 17, scope: !218)
!221 = !DILocalVariable(name: "service", scope: !218, file: !1, line: 164, type: !85)
!222 = !DILocation(line: 164, column: 32, scope: !218)
!223 = !DILocalVariable(name: "connectSocket", scope: !218, file: !1, line: 165, type: !66)
!224 = !DILocation(line: 165, column: 20, scope: !218)
!225 = !DILocalVariable(name: "inputBuffer", scope: !218, file: !1, line: 166, type: !55)
!226 = !DILocation(line: 166, column: 18, scope: !218)
!227 = !DILocation(line: 167, column: 13, scope: !218)
!228 = !DILocation(line: 177, column: 33, scope: !229)
!229 = distinct !DILexicalBlock(scope: !218, file: !1, line: 168, column: 13)
!230 = !DILocation(line: 177, column: 31, scope: !229)
!231 = !DILocation(line: 178, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 178, column: 21)
!233 = !DILocation(line: 178, column: 35, scope: !232)
!234 = !DILocation(line: 178, column: 21, scope: !229)
!235 = !DILocation(line: 180, column: 21, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 179, column: 17)
!237 = !DILocation(line: 182, column: 17, scope: !229)
!238 = !DILocation(line: 183, column: 25, scope: !229)
!239 = !DILocation(line: 183, column: 36, scope: !229)
!240 = !DILocation(line: 184, column: 43, scope: !229)
!241 = !DILocation(line: 184, column: 25, scope: !229)
!242 = !DILocation(line: 184, column: 34, scope: !229)
!243 = !DILocation(line: 184, column: 41, scope: !229)
!244 = !DILocation(line: 185, column: 36, scope: !229)
!245 = !DILocation(line: 185, column: 25, scope: !229)
!246 = !DILocation(line: 185, column: 34, scope: !229)
!247 = !DILocation(line: 186, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !229, file: !1, line: 186, column: 21)
!249 = !DILocation(line: 186, column: 44, scope: !248)
!250 = !DILocation(line: 186, column: 21, scope: !248)
!251 = !DILocation(line: 186, column: 89, scope: !248)
!252 = !DILocation(line: 186, column: 21, scope: !229)
!253 = !DILocation(line: 188, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !1, line: 187, column: 17)
!255 = !DILocation(line: 192, column: 35, scope: !229)
!256 = !DILocation(line: 192, column: 50, scope: !229)
!257 = !DILocation(line: 192, column: 30, scope: !229)
!258 = !DILocation(line: 192, column: 28, scope: !229)
!259 = !DILocation(line: 193, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !229, file: !1, line: 193, column: 21)
!261 = !DILocation(line: 193, column: 32, scope: !260)
!262 = !DILocation(line: 193, column: 48, scope: !260)
!263 = !DILocation(line: 193, column: 51, scope: !260)
!264 = !DILocation(line: 193, column: 62, scope: !260)
!265 = !DILocation(line: 193, column: 21, scope: !229)
!266 = !DILocation(line: 195, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !1, line: 194, column: 17)
!268 = !DILocation(line: 198, column: 29, scope: !229)
!269 = !DILocation(line: 198, column: 17, scope: !229)
!270 = !DILocation(line: 198, column: 41, scope: !229)
!271 = !DILocation(line: 200, column: 29, scope: !229)
!272 = !DILocation(line: 200, column: 24, scope: !229)
!273 = !DILocation(line: 200, column: 22, scope: !229)
!274 = !DILocation(line: 201, column: 13, scope: !229)
!275 = !DILocation(line: 203, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !218, file: !1, line: 203, column: 17)
!277 = !DILocation(line: 203, column: 31, scope: !276)
!278 = !DILocation(line: 203, column: 17, scope: !218)
!279 = !DILocation(line: 205, column: 30, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 204, column: 13)
!281 = !DILocation(line: 205, column: 17, scope: !280)
!282 = !DILocation(line: 206, column: 13, scope: !280)
!283 = !DILocation(line: 214, column: 5, scope: !219)
!284 = !DILocation(line: 215, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !210, file: !1, line: 215, column: 8)
!286 = !DILocation(line: 215, column: 8, scope: !210)
!287 = !DILocation(line: 218, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 216, column: 5)
!289 = !DILocation(line: 219, column: 5, scope: !288)
!290 = !DILocalVariable(name: "i", scope: !291, file: !1, line: 223, type: !66)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 222, column: 9)
!292 = distinct !DILexicalBlock(scope: !285, file: !1, line: 221, column: 5)
!293 = !DILocation(line: 223, column: 17, scope: !291)
!294 = !DILocalVariable(name: "buffer", scope: !291, file: !1, line: 224, type: !176)
!295 = !DILocation(line: 224, column: 17, scope: !291)
!296 = !DILocation(line: 226, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !291, file: !1, line: 226, column: 17)
!298 = !DILocation(line: 226, column: 22, scope: !297)
!299 = !DILocation(line: 226, column: 27, scope: !297)
!300 = !DILocation(line: 226, column: 30, scope: !297)
!301 = !DILocation(line: 226, column: 35, scope: !297)
!302 = !DILocation(line: 226, column: 17, scope: !291)
!303 = !DILocation(line: 228, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !1, line: 227, column: 13)
!305 = !DILocation(line: 228, column: 17, scope: !304)
!306 = !DILocation(line: 228, column: 30, scope: !304)
!307 = !DILocation(line: 230, column: 23, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !1, line: 230, column: 17)
!309 = !DILocation(line: 230, column: 21, scope: !308)
!310 = !DILocation(line: 230, column: 28, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 230, column: 17)
!312 = !DILocation(line: 230, column: 30, scope: !311)
!313 = !DILocation(line: 230, column: 17, scope: !308)
!314 = !DILocation(line: 232, column: 41, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 231, column: 17)
!316 = !DILocation(line: 232, column: 34, scope: !315)
!317 = !DILocation(line: 232, column: 21, scope: !315)
!318 = !DILocation(line: 233, column: 17, scope: !315)
!319 = !DILocation(line: 230, column: 37, scope: !311)
!320 = !DILocation(line: 230, column: 17, scope: !311)
!321 = distinct !{!321, !313, !322, !204}
!322 = !DILocation(line: 233, column: 17, scope: !308)
!323 = !DILocation(line: 234, column: 13, scope: !304)
!324 = !DILocation(line: 237, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !297, file: !1, line: 236, column: 13)
!326 = !DILocation(line: 241, column: 1, scope: !210)
!327 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 244, type: !72, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!328 = !DILocalVariable(name: "data", scope: !327, file: !1, line: 246, type: !66)
!329 = !DILocation(line: 246, column: 9, scope: !327)
!330 = !DILocation(line: 248, column: 10, scope: !327)
!331 = !DILocation(line: 249, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !1, line: 249, column: 8)
!333 = !DILocation(line: 249, column: 8, scope: !327)
!334 = !DILocalVariable(name: "recvResult", scope: !335, file: !1, line: 256, type: !66)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 251, column: 9)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 250, column: 5)
!337 = !DILocation(line: 256, column: 17, scope: !335)
!338 = !DILocalVariable(name: "service", scope: !335, file: !1, line: 257, type: !85)
!339 = !DILocation(line: 257, column: 32, scope: !335)
!340 = !DILocalVariable(name: "connectSocket", scope: !335, file: !1, line: 258, type: !66)
!341 = !DILocation(line: 258, column: 20, scope: !335)
!342 = !DILocalVariable(name: "inputBuffer", scope: !335, file: !1, line: 259, type: !55)
!343 = !DILocation(line: 259, column: 18, scope: !335)
!344 = !DILocation(line: 260, column: 13, scope: !335)
!345 = !DILocation(line: 270, column: 33, scope: !346)
!346 = distinct !DILexicalBlock(scope: !335, file: !1, line: 261, column: 13)
!347 = !DILocation(line: 270, column: 31, scope: !346)
!348 = !DILocation(line: 271, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !1, line: 271, column: 21)
!350 = !DILocation(line: 271, column: 35, scope: !349)
!351 = !DILocation(line: 271, column: 21, scope: !346)
!352 = !DILocation(line: 273, column: 21, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !1, line: 272, column: 17)
!354 = !DILocation(line: 275, column: 17, scope: !346)
!355 = !DILocation(line: 276, column: 25, scope: !346)
!356 = !DILocation(line: 276, column: 36, scope: !346)
!357 = !DILocation(line: 277, column: 43, scope: !346)
!358 = !DILocation(line: 277, column: 25, scope: !346)
!359 = !DILocation(line: 277, column: 34, scope: !346)
!360 = !DILocation(line: 277, column: 41, scope: !346)
!361 = !DILocation(line: 278, column: 36, scope: !346)
!362 = !DILocation(line: 278, column: 25, scope: !346)
!363 = !DILocation(line: 278, column: 34, scope: !346)
!364 = !DILocation(line: 279, column: 29, scope: !365)
!365 = distinct !DILexicalBlock(scope: !346, file: !1, line: 279, column: 21)
!366 = !DILocation(line: 279, column: 44, scope: !365)
!367 = !DILocation(line: 279, column: 21, scope: !365)
!368 = !DILocation(line: 279, column: 89, scope: !365)
!369 = !DILocation(line: 279, column: 21, scope: !346)
!370 = !DILocation(line: 281, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !365, file: !1, line: 280, column: 17)
!372 = !DILocation(line: 285, column: 35, scope: !346)
!373 = !DILocation(line: 285, column: 50, scope: !346)
!374 = !DILocation(line: 285, column: 30, scope: !346)
!375 = !DILocation(line: 285, column: 28, scope: !346)
!376 = !DILocation(line: 286, column: 21, scope: !377)
!377 = distinct !DILexicalBlock(scope: !346, file: !1, line: 286, column: 21)
!378 = !DILocation(line: 286, column: 32, scope: !377)
!379 = !DILocation(line: 286, column: 48, scope: !377)
!380 = !DILocation(line: 286, column: 51, scope: !377)
!381 = !DILocation(line: 286, column: 62, scope: !377)
!382 = !DILocation(line: 286, column: 21, scope: !346)
!383 = !DILocation(line: 288, column: 21, scope: !384)
!384 = distinct !DILexicalBlock(scope: !377, file: !1, line: 287, column: 17)
!385 = !DILocation(line: 291, column: 29, scope: !346)
!386 = !DILocation(line: 291, column: 17, scope: !346)
!387 = !DILocation(line: 291, column: 41, scope: !346)
!388 = !DILocation(line: 293, column: 29, scope: !346)
!389 = !DILocation(line: 293, column: 24, scope: !346)
!390 = !DILocation(line: 293, column: 22, scope: !346)
!391 = !DILocation(line: 294, column: 13, scope: !346)
!392 = !DILocation(line: 296, column: 17, scope: !393)
!393 = distinct !DILexicalBlock(scope: !335, file: !1, line: 296, column: 17)
!394 = !DILocation(line: 296, column: 31, scope: !393)
!395 = !DILocation(line: 296, column: 17, scope: !335)
!396 = !DILocation(line: 298, column: 30, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 297, column: 13)
!398 = !DILocation(line: 298, column: 17, scope: !397)
!399 = !DILocation(line: 299, column: 13, scope: !397)
!400 = !DILocation(line: 307, column: 5, scope: !336)
!401 = !DILocation(line: 308, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !327, file: !1, line: 308, column: 8)
!403 = !DILocation(line: 308, column: 8, scope: !327)
!404 = !DILocalVariable(name: "i", scope: !405, file: !1, line: 311, type: !66)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 310, column: 9)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 309, column: 5)
!407 = !DILocation(line: 311, column: 17, scope: !405)
!408 = !DILocalVariable(name: "buffer", scope: !405, file: !1, line: 312, type: !176)
!409 = !DILocation(line: 312, column: 17, scope: !405)
!410 = !DILocation(line: 314, column: 17, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !1, line: 314, column: 17)
!412 = !DILocation(line: 314, column: 22, scope: !411)
!413 = !DILocation(line: 314, column: 27, scope: !411)
!414 = !DILocation(line: 314, column: 30, scope: !411)
!415 = !DILocation(line: 314, column: 35, scope: !411)
!416 = !DILocation(line: 314, column: 17, scope: !405)
!417 = !DILocation(line: 316, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !1, line: 315, column: 13)
!419 = !DILocation(line: 316, column: 17, scope: !418)
!420 = !DILocation(line: 316, column: 30, scope: !418)
!421 = !DILocation(line: 318, column: 23, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !1, line: 318, column: 17)
!423 = !DILocation(line: 318, column: 21, scope: !422)
!424 = !DILocation(line: 318, column: 28, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 318, column: 17)
!426 = !DILocation(line: 318, column: 30, scope: !425)
!427 = !DILocation(line: 318, column: 17, scope: !422)
!428 = !DILocation(line: 320, column: 41, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 319, column: 17)
!430 = !DILocation(line: 320, column: 34, scope: !429)
!431 = !DILocation(line: 320, column: 21, scope: !429)
!432 = !DILocation(line: 321, column: 17, scope: !429)
!433 = !DILocation(line: 318, column: 37, scope: !425)
!434 = !DILocation(line: 318, column: 17, scope: !425)
!435 = distinct !{!435, !427, !436, !204}
!436 = !DILocation(line: 321, column: 17, scope: !422)
!437 = !DILocation(line: 322, column: 13, scope: !418)
!438 = !DILocation(line: 325, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !411, file: !1, line: 324, column: 13)
!440 = !DILocation(line: 328, column: 5, scope: !406)
!441 = !DILocation(line: 329, column: 1, scope: !327)
!442 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 332, type: !72, scopeLine: 333, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!443 = !DILocalVariable(name: "data", scope: !442, file: !1, line: 334, type: !66)
!444 = !DILocation(line: 334, column: 9, scope: !442)
!445 = !DILocation(line: 336, column: 10, scope: !442)
!446 = !DILocation(line: 337, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 337, column: 8)
!448 = !DILocation(line: 337, column: 8, scope: !442)
!449 = !DILocation(line: 340, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 338, column: 5)
!451 = !DILocation(line: 341, column: 5, scope: !450)
!452 = !DILocation(line: 346, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !1, line: 343, column: 5)
!454 = !DILocation(line: 348, column: 8, scope: !455)
!455 = distinct !DILexicalBlock(scope: !442, file: !1, line: 348, column: 8)
!456 = !DILocation(line: 348, column: 8, scope: !442)
!457 = !DILocalVariable(name: "i", scope: !458, file: !1, line: 351, type: !66)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 350, column: 9)
!459 = distinct !DILexicalBlock(scope: !455, file: !1, line: 349, column: 5)
!460 = !DILocation(line: 351, column: 17, scope: !458)
!461 = !DILocalVariable(name: "buffer", scope: !458, file: !1, line: 352, type: !176)
!462 = !DILocation(line: 352, column: 17, scope: !458)
!463 = !DILocation(line: 355, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !458, file: !1, line: 355, column: 17)
!465 = !DILocation(line: 355, column: 22, scope: !464)
!466 = !DILocation(line: 355, column: 17, scope: !458)
!467 = !DILocation(line: 357, column: 24, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !1, line: 356, column: 13)
!469 = !DILocation(line: 357, column: 17, scope: !468)
!470 = !DILocation(line: 357, column: 30, scope: !468)
!471 = !DILocation(line: 359, column: 23, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 359, column: 17)
!473 = !DILocation(line: 359, column: 21, scope: !472)
!474 = !DILocation(line: 359, column: 28, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !1, line: 359, column: 17)
!476 = !DILocation(line: 359, column: 30, scope: !475)
!477 = !DILocation(line: 359, column: 17, scope: !472)
!478 = !DILocation(line: 361, column: 41, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !1, line: 360, column: 17)
!480 = !DILocation(line: 361, column: 34, scope: !479)
!481 = !DILocation(line: 361, column: 21, scope: !479)
!482 = !DILocation(line: 362, column: 17, scope: !479)
!483 = !DILocation(line: 359, column: 37, scope: !475)
!484 = !DILocation(line: 359, column: 17, scope: !475)
!485 = distinct !{!485, !477, !486, !204}
!486 = !DILocation(line: 362, column: 17, scope: !472)
!487 = !DILocation(line: 363, column: 13, scope: !468)
!488 = !DILocation(line: 366, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !464, file: !1, line: 365, column: 13)
!490 = !DILocation(line: 369, column: 5, scope: !459)
!491 = !DILocation(line: 370, column: 1, scope: !442)
!492 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 373, type: !72, scopeLine: 374, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!493 = !DILocalVariable(name: "data", scope: !492, file: !1, line: 375, type: !66)
!494 = !DILocation(line: 375, column: 9, scope: !492)
!495 = !DILocation(line: 377, column: 10, scope: !492)
!496 = !DILocation(line: 378, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !1, line: 378, column: 8)
!498 = !DILocation(line: 378, column: 8, scope: !492)
!499 = !DILocation(line: 382, column: 14, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 379, column: 5)
!501 = !DILocation(line: 383, column: 5, scope: !500)
!502 = !DILocation(line: 384, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !492, file: !1, line: 384, column: 8)
!504 = !DILocation(line: 384, column: 8, scope: !492)
!505 = !DILocalVariable(name: "i", scope: !506, file: !1, line: 387, type: !66)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 386, column: 9)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 385, column: 5)
!508 = !DILocation(line: 387, column: 17, scope: !506)
!509 = !DILocalVariable(name: "buffer", scope: !506, file: !1, line: 388, type: !176)
!510 = !DILocation(line: 388, column: 17, scope: !506)
!511 = !DILocation(line: 391, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !1, line: 391, column: 17)
!513 = !DILocation(line: 391, column: 22, scope: !512)
!514 = !DILocation(line: 391, column: 17, scope: !506)
!515 = !DILocation(line: 393, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 392, column: 13)
!517 = !DILocation(line: 393, column: 17, scope: !516)
!518 = !DILocation(line: 393, column: 30, scope: !516)
!519 = !DILocation(line: 395, column: 23, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 395, column: 17)
!521 = !DILocation(line: 395, column: 21, scope: !520)
!522 = !DILocation(line: 395, column: 28, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 395, column: 17)
!524 = !DILocation(line: 395, column: 30, scope: !523)
!525 = !DILocation(line: 395, column: 17, scope: !520)
!526 = !DILocation(line: 397, column: 41, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !1, line: 396, column: 17)
!528 = !DILocation(line: 397, column: 34, scope: !527)
!529 = !DILocation(line: 397, column: 21, scope: !527)
!530 = !DILocation(line: 398, column: 17, scope: !527)
!531 = !DILocation(line: 395, column: 37, scope: !523)
!532 = !DILocation(line: 395, column: 17, scope: !523)
!533 = distinct !{!533, !525, !534, !204}
!534 = !DILocation(line: 398, column: 17, scope: !520)
!535 = !DILocation(line: 399, column: 13, scope: !516)
!536 = !DILocation(line: 402, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !512, file: !1, line: 401, column: 13)
!538 = !DILocation(line: 405, column: 5, scope: !507)
!539 = !DILocation(line: 406, column: 1, scope: !492)
!540 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_08_good", scope: !1, file: !1, line: 408, type: !72, scopeLine: 409, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!541 = !DILocation(line: 410, column: 5, scope: !540)
!542 = !DILocation(line: 411, column: 5, scope: !540)
!543 = !DILocation(line: 412, column: 5, scope: !540)
!544 = !DILocation(line: 413, column: 5, scope: !540)
!545 = !DILocation(line: 414, column: 1, scope: !540)
