; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@GLOBAL_CONST_TRUE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@GLOBAL_CONST_FALSE = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_bad() #0 !dbg !63 {
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
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !71
  %tobool = icmp ne i32 %0, 0, !dbg !71
  br i1 %tobool, label %if.then, label %if.end22, !dbg !73

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !78, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 -1, i32* %connectSocket, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  br label %do.body, !dbg !105

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !106
  store i32 %call, i32* %connectSocket, align 4, !dbg !108
  %1 = load i32, i32* %connectSocket, align 4, !dbg !109
  %cmp = icmp eq i32 %1, -1, !dbg !111
  br i1 %cmp, label %if.then1, label %if.end, !dbg !112

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !113

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !115
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !115
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !116
  store i16 2, i16* %sin_family, align 4, !dbg !117
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !118
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !119
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !120
  store i32 %call2, i32* %s_addr, align 4, !dbg !121
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !122
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !123
  store i16 %call3, i16* %sin_port, align 2, !dbg !124
  %3 = load i32, i32* %connectSocket, align 4, !dbg !125
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !127
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !128
  %cmp5 = icmp eq i32 %call4, -1, !dbg !129
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !130

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !131

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !133
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !134
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !135
  %conv = trunc i64 %call8 to i32, !dbg !135
  store i32 %conv, i32* %recvResult, align 4, !dbg !136
  %6 = load i32, i32* %recvResult, align 4, !dbg !137
  %cmp9 = icmp eq i32 %6, -1, !dbg !139
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !140

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !141
  %cmp11 = icmp eq i32 %7, 0, !dbg !142
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !143

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !144

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !146
  %idxprom = sext i32 %8 to i64, !dbg !147
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !147
  store i8 0, i8* %arrayidx, align 1, !dbg !148
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !149
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !150
  store i32 %call16, i32* %data, align 4, !dbg !151
  br label %do.end, !dbg !152

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !153
  %cmp17 = icmp ne i32 %9, -1, !dbg !155
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !156

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !157
  %call20 = call i32 @close(i32 %10), !dbg !159
  br label %if.end21, !dbg !160

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !161

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !162
  %tobool23 = icmp ne i32 %11, 0, !dbg !162
  br i1 %tobool23, label %if.then24, label %if.end35, !dbg !164

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !165, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !169, metadata !DIExpression()), !dbg !173
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !173
  %13 = load i32, i32* %data, align 4, !dbg !174
  %cmp25 = icmp sge i32 %13, 0, !dbg !176
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !177

if.then27:                                        ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !178
  %idxprom28 = sext i32 %14 to i64, !dbg !180
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !180
  store i32 1, i32* %arrayidx29, align 4, !dbg !181
  store i32 0, i32* %i, align 4, !dbg !182
  br label %for.cond, !dbg !184

for.cond:                                         ; preds = %for.inc, %if.then27
  %15 = load i32, i32* %i, align 4, !dbg !185
  %cmp30 = icmp slt i32 %15, 10, !dbg !187
  br i1 %cmp30, label %for.body, label %for.end, !dbg !188

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !189
  %idxprom32 = sext i32 %16 to i64, !dbg !191
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !191
  %17 = load i32, i32* %arrayidx33, align 4, !dbg !191
  call void @printIntLine(i32 %17), !dbg !192
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !194
  %inc = add nsw i32 %18, 1, !dbg !194
  store i32 %inc, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !199

if.else:                                          ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !200
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  br label %if.end35, !dbg !202

if.end35:                                         ; preds = %if.end34, %if.end22
  ret void, !dbg !203
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
define dso_local void @goodB2G1() #0 !dbg !204 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 -1, i32* %data, align 4, !dbg !207
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !208
  %tobool = icmp ne i32 %0, 0, !dbg !208
  br i1 %tobool, label %if.then, label %if.end22, !dbg !210

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 -1, i32* %connectSocket, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !219, metadata !DIExpression()), !dbg !220
  br label %do.body, !dbg !221

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !222
  store i32 %call, i32* %connectSocket, align 4, !dbg !224
  %1 = load i32, i32* %connectSocket, align 4, !dbg !225
  %cmp = icmp eq i32 %1, -1, !dbg !227
  br i1 %cmp, label %if.then1, label %if.end, !dbg !228

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !229

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !231
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !231
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !232
  store i16 2, i16* %sin_family, align 4, !dbg !233
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !234
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !235
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !236
  store i32 %call2, i32* %s_addr, align 4, !dbg !237
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !238
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !239
  store i16 %call3, i16* %sin_port, align 2, !dbg !240
  %3 = load i32, i32* %connectSocket, align 4, !dbg !241
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !243
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !244
  %cmp5 = icmp eq i32 %call4, -1, !dbg !245
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !246

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !247

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !249
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !250
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !251
  %conv = trunc i64 %call8 to i32, !dbg !251
  store i32 %conv, i32* %recvResult, align 4, !dbg !252
  %6 = load i32, i32* %recvResult, align 4, !dbg !253
  %cmp9 = icmp eq i32 %6, -1, !dbg !255
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !256

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !257
  %cmp11 = icmp eq i32 %7, 0, !dbg !258
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !259

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !260

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !262
  %idxprom = sext i32 %8 to i64, !dbg !263
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !263
  store i8 0, i8* %arrayidx, align 1, !dbg !264
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !265
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !266
  store i32 %call16, i32* %data, align 4, !dbg !267
  br label %do.end, !dbg !268

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !269
  %cmp17 = icmp ne i32 %9, -1, !dbg !271
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !272

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !273
  %call20 = call i32 @close(i32 %10), !dbg !275
  br label %if.end21, !dbg !276

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !277

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !278
  %tobool23 = icmp ne i32 %11, 0, !dbg !278
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !280

if.then24:                                        ; preds = %if.end22
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !281
  br label %if.end38, !dbg !283

if.else:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !284, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !288, metadata !DIExpression()), !dbg !289
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !289
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !289
  %13 = load i32, i32* %data, align 4, !dbg !290
  %cmp25 = icmp sge i32 %13, 0, !dbg !292
  br i1 %cmp25, label %land.lhs.true, label %if.else36, !dbg !293

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !294
  %cmp27 = icmp slt i32 %14, 10, !dbg !295
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !296

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !297
  %idxprom30 = sext i32 %15 to i64, !dbg !299
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !299
  store i32 1, i32* %arrayidx31, align 4, !dbg !300
  store i32 0, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !303

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !304
  %cmp32 = icmp slt i32 %16, 10, !dbg !306
  br i1 %cmp32, label %for.body, label %for.end, !dbg !307

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !308
  %idxprom34 = sext i32 %17 to i64, !dbg !310
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !310
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !310
  call void @printIntLine(i32 %18), !dbg !311
  br label %for.inc, !dbg !312

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !313
  %inc = add nsw i32 %19, 1, !dbg !313
  store i32 %inc, i32* %i, align 4, !dbg !313
  br label %for.cond, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !317

if.else36:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !318
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !321 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !322, metadata !DIExpression()), !dbg !323
  store i32 -1, i32* %data, align 4, !dbg !324
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !325
  %tobool = icmp ne i32 %0, 0, !dbg !325
  br i1 %tobool, label %if.then, label %if.end22, !dbg !327

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !334, metadata !DIExpression()), !dbg !335
  store i32 -1, i32* %connectSocket, align 4, !dbg !335
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !336, metadata !DIExpression()), !dbg !337
  br label %do.body, !dbg !338

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !339
  store i32 %call, i32* %connectSocket, align 4, !dbg !341
  %1 = load i32, i32* %connectSocket, align 4, !dbg !342
  %cmp = icmp eq i32 %1, -1, !dbg !344
  br i1 %cmp, label %if.then1, label %if.end, !dbg !345

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !346

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !348
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !348
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !349
  store i16 2, i16* %sin_family, align 4, !dbg !350
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !351
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !352
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !353
  store i32 %call2, i32* %s_addr, align 4, !dbg !354
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !355
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !356
  store i16 %call3, i16* %sin_port, align 2, !dbg !357
  %3 = load i32, i32* %connectSocket, align 4, !dbg !358
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !360
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !361
  %cmp5 = icmp eq i32 %call4, -1, !dbg !362
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !363

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !364

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !366
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !367
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !368
  %conv = trunc i64 %call8 to i32, !dbg !368
  store i32 %conv, i32* %recvResult, align 4, !dbg !369
  %6 = load i32, i32* %recvResult, align 4, !dbg !370
  %cmp9 = icmp eq i32 %6, -1, !dbg !372
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !373

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !374
  %cmp11 = icmp eq i32 %7, 0, !dbg !375
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !376

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !377

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !379
  %idxprom = sext i32 %8 to i64, !dbg !380
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !380
  store i8 0, i8* %arrayidx, align 1, !dbg !381
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !382
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !383
  store i32 %call16, i32* %data, align 4, !dbg !384
  br label %do.end, !dbg !385

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !386
  %cmp17 = icmp ne i32 %9, -1, !dbg !388
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !389

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !390
  %call20 = call i32 @close(i32 %10), !dbg !392
  br label %if.end21, !dbg !393

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !394

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !395
  %tobool23 = icmp ne i32 %11, 0, !dbg !395
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !397

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !398, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !402, metadata !DIExpression()), !dbg !403
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !403
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !403
  %13 = load i32, i32* %data, align 4, !dbg !404
  %cmp25 = icmp sge i32 %13, 0, !dbg !406
  br i1 %cmp25, label %land.lhs.true, label %if.else, !dbg !407

land.lhs.true:                                    ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !408
  %cmp27 = icmp slt i32 %14, 10, !dbg !409
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !410

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !411
  %idxprom30 = sext i32 %15 to i64, !dbg !413
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !413
  store i32 1, i32* %arrayidx31, align 4, !dbg !414
  store i32 0, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !418
  %cmp32 = icmp slt i32 %16, 10, !dbg !420
  br i1 %cmp32, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !422
  %idxprom34 = sext i32 %17 to i64, !dbg !424
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !424
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !424
  call void @printIntLine(i32 %18), !dbg !425
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !427
  %inc = add nsw i32 %19, 1, !dbg !427
  store i32 %inc, i32* %i, align 4, !dbg !427
  br label %for.cond, !dbg !428, !llvm.loop !429

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !431

if.else:                                          ; preds = %land.lhs.true, %if.then24
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !432
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !434

if.end37:                                         ; preds = %if.end36, %if.end22
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !436 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !437, metadata !DIExpression()), !dbg !438
  store i32 -1, i32* %data, align 4, !dbg !439
  %0 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !440
  %tobool = icmp ne i32 %0, 0, !dbg !440
  br i1 %tobool, label %if.then, label %if.else, !dbg !442

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !443
  br label %if.end, !dbg !445

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !446
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !448
  %tobool1 = icmp ne i32 %1, 0, !dbg !448
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !450

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !451, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !455, metadata !DIExpression()), !dbg !456
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !456
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !456
  %3 = load i32, i32* %data, align 4, !dbg !457
  %cmp = icmp sge i32 %3, 0, !dbg !459
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !460

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !461
  %idxprom = sext i32 %4 to i64, !dbg !463
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !463
  store i32 1, i32* %arrayidx, align 4, !dbg !464
  store i32 0, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !468
  %cmp4 = icmp slt i32 %5, 10, !dbg !470
  br i1 %cmp4, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !472
  %idxprom5 = sext i32 %6 to i64, !dbg !474
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !474
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !474
  call void @printIntLine(i32 %7), !dbg !475
  br label %for.inc, !dbg !476

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !477
  %inc = add nsw i32 %8, 1, !dbg !477
  store i32 %inc, i32* %i, align 4, !dbg !477
  br label %for.cond, !dbg !478, !llvm.loop !479

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !481

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !482
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !484

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !486 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !487, metadata !DIExpression()), !dbg !488
  store i32 -1, i32* %data, align 4, !dbg !489
  %0 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !490
  %tobool = icmp ne i32 %0, 0, !dbg !490
  br i1 %tobool, label %if.then, label %if.end, !dbg !492

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !493
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !496
  %tobool1 = icmp ne i32 %1, 0, !dbg !496
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !498

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !499, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !503, metadata !DIExpression()), !dbg !504
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !504
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !504
  %3 = load i32, i32* %data, align 4, !dbg !505
  %cmp = icmp sge i32 %3, 0, !dbg !507
  br i1 %cmp, label %if.then3, label %if.else, !dbg !508

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !509
  %idxprom = sext i32 %4 to i64, !dbg !511
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !511
  store i32 1, i32* %arrayidx, align 4, !dbg !512
  store i32 0, i32* %i, align 4, !dbg !513
  br label %for.cond, !dbg !515

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !516
  %cmp4 = icmp slt i32 %5, 10, !dbg !518
  br i1 %cmp4, label %for.body, label %for.end, !dbg !519

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !520
  %idxprom5 = sext i32 %6 to i64, !dbg !522
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !522
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !522
  call void @printIntLine(i32 %7), !dbg !523
  br label %for.inc, !dbg !524

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !525
  %inc = add nsw i32 %8, 1, !dbg !525
  store i32 %inc, i32* %i, align 4, !dbg !525
  br label %for.cond, !dbg !526, !llvm.loop !527

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !529

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !530
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !532

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_good() #0 !dbg !534 {
entry:
  call void @goodB2G1(), !dbg !535
  call void @goodB2G2(), !dbg !536
  call void @goodG2B1(), !dbg !537
  call void @goodG2B2(), !dbg !538
  ret void, !dbg !539
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_524/source_code")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_bad", scope: !1, file: !1, line: 45, type: !64, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
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
!162 = !DILocation(line: 109, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !63, file: !1, line: 109, column: 8)
!164 = !DILocation(line: 109, column: 8, scope: !63)
!165 = !DILocalVariable(name: "i", scope: !166, file: !1, line: 112, type: !68)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 111, column: 9)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 110, column: 5)
!168 = !DILocation(line: 112, column: 17, scope: !166)
!169 = !DILocalVariable(name: "buffer", scope: !166, file: !1, line: 113, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 320, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 10)
!173 = !DILocation(line: 113, column: 17, scope: !166)
!174 = !DILocation(line: 116, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !1, line: 116, column: 17)
!176 = !DILocation(line: 116, column: 22, scope: !175)
!177 = !DILocation(line: 116, column: 17, scope: !166)
!178 = !DILocation(line: 118, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 117, column: 13)
!180 = !DILocation(line: 118, column: 17, scope: !179)
!181 = !DILocation(line: 118, column: 30, scope: !179)
!182 = !DILocation(line: 120, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 120, column: 17)
!184 = !DILocation(line: 120, column: 21, scope: !183)
!185 = !DILocation(line: 120, column: 28, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 120, column: 17)
!187 = !DILocation(line: 120, column: 30, scope: !186)
!188 = !DILocation(line: 120, column: 17, scope: !183)
!189 = !DILocation(line: 122, column: 41, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 121, column: 17)
!191 = !DILocation(line: 122, column: 34, scope: !190)
!192 = !DILocation(line: 122, column: 21, scope: !190)
!193 = !DILocation(line: 123, column: 17, scope: !190)
!194 = !DILocation(line: 120, column: 37, scope: !186)
!195 = !DILocation(line: 120, column: 17, scope: !186)
!196 = distinct !{!196, !188, !197, !198}
!197 = !DILocation(line: 123, column: 17, scope: !183)
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 124, column: 13, scope: !179)
!200 = !DILocation(line: 127, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !175, file: !1, line: 126, column: 13)
!202 = !DILocation(line: 130, column: 5, scope: !167)
!203 = !DILocation(line: 131, column: 1, scope: !63)
!204 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 138, type: !64, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!205 = !DILocalVariable(name: "data", scope: !204, file: !1, line: 140, type: !68)
!206 = !DILocation(line: 140, column: 9, scope: !204)
!207 = !DILocation(line: 142, column: 10, scope: !204)
!208 = !DILocation(line: 143, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 143, column: 8)
!210 = !DILocation(line: 143, column: 8, scope: !204)
!211 = !DILocalVariable(name: "recvResult", scope: !212, file: !1, line: 150, type: !68)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 145, column: 9)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 144, column: 5)
!214 = !DILocation(line: 150, column: 17, scope: !212)
!215 = !DILocalVariable(name: "service", scope: !212, file: !1, line: 151, type: !79)
!216 = !DILocation(line: 151, column: 32, scope: !212)
!217 = !DILocalVariable(name: "connectSocket", scope: !212, file: !1, line: 152, type: !68)
!218 = !DILocation(line: 152, column: 20, scope: !212)
!219 = !DILocalVariable(name: "inputBuffer", scope: !212, file: !1, line: 153, type: !55)
!220 = !DILocation(line: 153, column: 18, scope: !212)
!221 = !DILocation(line: 154, column: 13, scope: !212)
!222 = !DILocation(line: 164, column: 33, scope: !223)
!223 = distinct !DILexicalBlock(scope: !212, file: !1, line: 155, column: 13)
!224 = !DILocation(line: 164, column: 31, scope: !223)
!225 = !DILocation(line: 165, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 165, column: 21)
!227 = !DILocation(line: 165, column: 35, scope: !226)
!228 = !DILocation(line: 165, column: 21, scope: !223)
!229 = !DILocation(line: 167, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 166, column: 17)
!231 = !DILocation(line: 169, column: 17, scope: !223)
!232 = !DILocation(line: 170, column: 25, scope: !223)
!233 = !DILocation(line: 170, column: 36, scope: !223)
!234 = !DILocation(line: 171, column: 43, scope: !223)
!235 = !DILocation(line: 171, column: 25, scope: !223)
!236 = !DILocation(line: 171, column: 34, scope: !223)
!237 = !DILocation(line: 171, column: 41, scope: !223)
!238 = !DILocation(line: 172, column: 36, scope: !223)
!239 = !DILocation(line: 172, column: 25, scope: !223)
!240 = !DILocation(line: 172, column: 34, scope: !223)
!241 = !DILocation(line: 173, column: 29, scope: !242)
!242 = distinct !DILexicalBlock(scope: !223, file: !1, line: 173, column: 21)
!243 = !DILocation(line: 173, column: 44, scope: !242)
!244 = !DILocation(line: 173, column: 21, scope: !242)
!245 = !DILocation(line: 173, column: 89, scope: !242)
!246 = !DILocation(line: 173, column: 21, scope: !223)
!247 = !DILocation(line: 175, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 174, column: 17)
!249 = !DILocation(line: 179, column: 35, scope: !223)
!250 = !DILocation(line: 179, column: 50, scope: !223)
!251 = !DILocation(line: 179, column: 30, scope: !223)
!252 = !DILocation(line: 179, column: 28, scope: !223)
!253 = !DILocation(line: 180, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !223, file: !1, line: 180, column: 21)
!255 = !DILocation(line: 180, column: 32, scope: !254)
!256 = !DILocation(line: 180, column: 48, scope: !254)
!257 = !DILocation(line: 180, column: 51, scope: !254)
!258 = !DILocation(line: 180, column: 62, scope: !254)
!259 = !DILocation(line: 180, column: 21, scope: !223)
!260 = !DILocation(line: 182, column: 21, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !1, line: 181, column: 17)
!262 = !DILocation(line: 185, column: 29, scope: !223)
!263 = !DILocation(line: 185, column: 17, scope: !223)
!264 = !DILocation(line: 185, column: 41, scope: !223)
!265 = !DILocation(line: 187, column: 29, scope: !223)
!266 = !DILocation(line: 187, column: 24, scope: !223)
!267 = !DILocation(line: 187, column: 22, scope: !223)
!268 = !DILocation(line: 188, column: 13, scope: !223)
!269 = !DILocation(line: 190, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !212, file: !1, line: 190, column: 17)
!271 = !DILocation(line: 190, column: 31, scope: !270)
!272 = !DILocation(line: 190, column: 17, scope: !212)
!273 = !DILocation(line: 192, column: 30, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 191, column: 13)
!275 = !DILocation(line: 192, column: 17, scope: !274)
!276 = !DILocation(line: 193, column: 13, scope: !274)
!277 = !DILocation(line: 201, column: 5, scope: !213)
!278 = !DILocation(line: 202, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !204, file: !1, line: 202, column: 8)
!280 = !DILocation(line: 202, column: 8, scope: !204)
!281 = !DILocation(line: 205, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 203, column: 5)
!283 = !DILocation(line: 206, column: 5, scope: !282)
!284 = !DILocalVariable(name: "i", scope: !285, file: !1, line: 210, type: !68)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 209, column: 9)
!286 = distinct !DILexicalBlock(scope: !279, file: !1, line: 208, column: 5)
!287 = !DILocation(line: 210, column: 17, scope: !285)
!288 = !DILocalVariable(name: "buffer", scope: !285, file: !1, line: 211, type: !170)
!289 = !DILocation(line: 211, column: 17, scope: !285)
!290 = !DILocation(line: 213, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !1, line: 213, column: 17)
!292 = !DILocation(line: 213, column: 22, scope: !291)
!293 = !DILocation(line: 213, column: 27, scope: !291)
!294 = !DILocation(line: 213, column: 30, scope: !291)
!295 = !DILocation(line: 213, column: 35, scope: !291)
!296 = !DILocation(line: 213, column: 17, scope: !285)
!297 = !DILocation(line: 215, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !291, file: !1, line: 214, column: 13)
!299 = !DILocation(line: 215, column: 17, scope: !298)
!300 = !DILocation(line: 215, column: 30, scope: !298)
!301 = !DILocation(line: 217, column: 23, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 217, column: 17)
!303 = !DILocation(line: 217, column: 21, scope: !302)
!304 = !DILocation(line: 217, column: 28, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !1, line: 217, column: 17)
!306 = !DILocation(line: 217, column: 30, scope: !305)
!307 = !DILocation(line: 217, column: 17, scope: !302)
!308 = !DILocation(line: 219, column: 41, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !1, line: 218, column: 17)
!310 = !DILocation(line: 219, column: 34, scope: !309)
!311 = !DILocation(line: 219, column: 21, scope: !309)
!312 = !DILocation(line: 220, column: 17, scope: !309)
!313 = !DILocation(line: 217, column: 37, scope: !305)
!314 = !DILocation(line: 217, column: 17, scope: !305)
!315 = distinct !{!315, !307, !316, !198}
!316 = !DILocation(line: 220, column: 17, scope: !302)
!317 = !DILocation(line: 221, column: 13, scope: !298)
!318 = !DILocation(line: 224, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !291, file: !1, line: 223, column: 13)
!320 = !DILocation(line: 228, column: 1, scope: !204)
!321 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 231, type: !64, scopeLine: 232, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!322 = !DILocalVariable(name: "data", scope: !321, file: !1, line: 233, type: !68)
!323 = !DILocation(line: 233, column: 9, scope: !321)
!324 = !DILocation(line: 235, column: 10, scope: !321)
!325 = !DILocation(line: 236, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !1, line: 236, column: 8)
!327 = !DILocation(line: 236, column: 8, scope: !321)
!328 = !DILocalVariable(name: "recvResult", scope: !329, file: !1, line: 243, type: !68)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 238, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 237, column: 5)
!331 = !DILocation(line: 243, column: 17, scope: !329)
!332 = !DILocalVariable(name: "service", scope: !329, file: !1, line: 244, type: !79)
!333 = !DILocation(line: 244, column: 32, scope: !329)
!334 = !DILocalVariable(name: "connectSocket", scope: !329, file: !1, line: 245, type: !68)
!335 = !DILocation(line: 245, column: 20, scope: !329)
!336 = !DILocalVariable(name: "inputBuffer", scope: !329, file: !1, line: 246, type: !55)
!337 = !DILocation(line: 246, column: 18, scope: !329)
!338 = !DILocation(line: 247, column: 13, scope: !329)
!339 = !DILocation(line: 257, column: 33, scope: !340)
!340 = distinct !DILexicalBlock(scope: !329, file: !1, line: 248, column: 13)
!341 = !DILocation(line: 257, column: 31, scope: !340)
!342 = !DILocation(line: 258, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 258, column: 21)
!344 = !DILocation(line: 258, column: 35, scope: !343)
!345 = !DILocation(line: 258, column: 21, scope: !340)
!346 = !DILocation(line: 260, column: 21, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 259, column: 17)
!348 = !DILocation(line: 262, column: 17, scope: !340)
!349 = !DILocation(line: 263, column: 25, scope: !340)
!350 = !DILocation(line: 263, column: 36, scope: !340)
!351 = !DILocation(line: 264, column: 43, scope: !340)
!352 = !DILocation(line: 264, column: 25, scope: !340)
!353 = !DILocation(line: 264, column: 34, scope: !340)
!354 = !DILocation(line: 264, column: 41, scope: !340)
!355 = !DILocation(line: 265, column: 36, scope: !340)
!356 = !DILocation(line: 265, column: 25, scope: !340)
!357 = !DILocation(line: 265, column: 34, scope: !340)
!358 = !DILocation(line: 266, column: 29, scope: !359)
!359 = distinct !DILexicalBlock(scope: !340, file: !1, line: 266, column: 21)
!360 = !DILocation(line: 266, column: 44, scope: !359)
!361 = !DILocation(line: 266, column: 21, scope: !359)
!362 = !DILocation(line: 266, column: 89, scope: !359)
!363 = !DILocation(line: 266, column: 21, scope: !340)
!364 = !DILocation(line: 268, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !1, line: 267, column: 17)
!366 = !DILocation(line: 272, column: 35, scope: !340)
!367 = !DILocation(line: 272, column: 50, scope: !340)
!368 = !DILocation(line: 272, column: 30, scope: !340)
!369 = !DILocation(line: 272, column: 28, scope: !340)
!370 = !DILocation(line: 273, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !340, file: !1, line: 273, column: 21)
!372 = !DILocation(line: 273, column: 32, scope: !371)
!373 = !DILocation(line: 273, column: 48, scope: !371)
!374 = !DILocation(line: 273, column: 51, scope: !371)
!375 = !DILocation(line: 273, column: 62, scope: !371)
!376 = !DILocation(line: 273, column: 21, scope: !340)
!377 = !DILocation(line: 275, column: 21, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !1, line: 274, column: 17)
!379 = !DILocation(line: 278, column: 29, scope: !340)
!380 = !DILocation(line: 278, column: 17, scope: !340)
!381 = !DILocation(line: 278, column: 41, scope: !340)
!382 = !DILocation(line: 280, column: 29, scope: !340)
!383 = !DILocation(line: 280, column: 24, scope: !340)
!384 = !DILocation(line: 280, column: 22, scope: !340)
!385 = !DILocation(line: 281, column: 13, scope: !340)
!386 = !DILocation(line: 283, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !329, file: !1, line: 283, column: 17)
!388 = !DILocation(line: 283, column: 31, scope: !387)
!389 = !DILocation(line: 283, column: 17, scope: !329)
!390 = !DILocation(line: 285, column: 30, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 284, column: 13)
!392 = !DILocation(line: 285, column: 17, scope: !391)
!393 = !DILocation(line: 286, column: 13, scope: !391)
!394 = !DILocation(line: 294, column: 5, scope: !330)
!395 = !DILocation(line: 295, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !321, file: !1, line: 295, column: 8)
!397 = !DILocation(line: 295, column: 8, scope: !321)
!398 = !DILocalVariable(name: "i", scope: !399, file: !1, line: 298, type: !68)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 297, column: 9)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 296, column: 5)
!401 = !DILocation(line: 298, column: 17, scope: !399)
!402 = !DILocalVariable(name: "buffer", scope: !399, file: !1, line: 299, type: !170)
!403 = !DILocation(line: 299, column: 17, scope: !399)
!404 = !DILocation(line: 301, column: 17, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 301, column: 17)
!406 = !DILocation(line: 301, column: 22, scope: !405)
!407 = !DILocation(line: 301, column: 27, scope: !405)
!408 = !DILocation(line: 301, column: 30, scope: !405)
!409 = !DILocation(line: 301, column: 35, scope: !405)
!410 = !DILocation(line: 301, column: 17, scope: !399)
!411 = !DILocation(line: 303, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !405, file: !1, line: 302, column: 13)
!413 = !DILocation(line: 303, column: 17, scope: !412)
!414 = !DILocation(line: 303, column: 30, scope: !412)
!415 = !DILocation(line: 305, column: 23, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 305, column: 17)
!417 = !DILocation(line: 305, column: 21, scope: !416)
!418 = !DILocation(line: 305, column: 28, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 305, column: 17)
!420 = !DILocation(line: 305, column: 30, scope: !419)
!421 = !DILocation(line: 305, column: 17, scope: !416)
!422 = !DILocation(line: 307, column: 41, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 306, column: 17)
!424 = !DILocation(line: 307, column: 34, scope: !423)
!425 = !DILocation(line: 307, column: 21, scope: !423)
!426 = !DILocation(line: 308, column: 17, scope: !423)
!427 = !DILocation(line: 305, column: 37, scope: !419)
!428 = !DILocation(line: 305, column: 17, scope: !419)
!429 = distinct !{!429, !421, !430, !198}
!430 = !DILocation(line: 308, column: 17, scope: !416)
!431 = !DILocation(line: 309, column: 13, scope: !412)
!432 = !DILocation(line: 312, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !405, file: !1, line: 311, column: 13)
!434 = !DILocation(line: 315, column: 5, scope: !400)
!435 = !DILocation(line: 316, column: 1, scope: !321)
!436 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 319, type: !64, scopeLine: 320, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!437 = !DILocalVariable(name: "data", scope: !436, file: !1, line: 321, type: !68)
!438 = !DILocation(line: 321, column: 9, scope: !436)
!439 = !DILocation(line: 323, column: 10, scope: !436)
!440 = !DILocation(line: 324, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !1, line: 324, column: 8)
!442 = !DILocation(line: 324, column: 8, scope: !436)
!443 = !DILocation(line: 327, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 325, column: 5)
!445 = !DILocation(line: 328, column: 5, scope: !444)
!446 = !DILocation(line: 333, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !1, line: 330, column: 5)
!448 = !DILocation(line: 335, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !436, file: !1, line: 335, column: 8)
!450 = !DILocation(line: 335, column: 8, scope: !436)
!451 = !DILocalVariable(name: "i", scope: !452, file: !1, line: 338, type: !68)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 337, column: 9)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 336, column: 5)
!454 = !DILocation(line: 338, column: 17, scope: !452)
!455 = !DILocalVariable(name: "buffer", scope: !452, file: !1, line: 339, type: !170)
!456 = !DILocation(line: 339, column: 17, scope: !452)
!457 = !DILocation(line: 342, column: 17, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !1, line: 342, column: 17)
!459 = !DILocation(line: 342, column: 22, scope: !458)
!460 = !DILocation(line: 342, column: 17, scope: !452)
!461 = !DILocation(line: 344, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 343, column: 13)
!463 = !DILocation(line: 344, column: 17, scope: !462)
!464 = !DILocation(line: 344, column: 30, scope: !462)
!465 = !DILocation(line: 346, column: 23, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !1, line: 346, column: 17)
!467 = !DILocation(line: 346, column: 21, scope: !466)
!468 = !DILocation(line: 346, column: 28, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 346, column: 17)
!470 = !DILocation(line: 346, column: 30, scope: !469)
!471 = !DILocation(line: 346, column: 17, scope: !466)
!472 = !DILocation(line: 348, column: 41, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !1, line: 347, column: 17)
!474 = !DILocation(line: 348, column: 34, scope: !473)
!475 = !DILocation(line: 348, column: 21, scope: !473)
!476 = !DILocation(line: 349, column: 17, scope: !473)
!477 = !DILocation(line: 346, column: 37, scope: !469)
!478 = !DILocation(line: 346, column: 17, scope: !469)
!479 = distinct !{!479, !471, !480, !198}
!480 = !DILocation(line: 349, column: 17, scope: !466)
!481 = !DILocation(line: 350, column: 13, scope: !462)
!482 = !DILocation(line: 353, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !458, file: !1, line: 352, column: 13)
!484 = !DILocation(line: 356, column: 5, scope: !453)
!485 = !DILocation(line: 357, column: 1, scope: !436)
!486 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 360, type: !64, scopeLine: 361, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!487 = !DILocalVariable(name: "data", scope: !486, file: !1, line: 362, type: !68)
!488 = !DILocation(line: 362, column: 9, scope: !486)
!489 = !DILocation(line: 364, column: 10, scope: !486)
!490 = !DILocation(line: 365, column: 8, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 365, column: 8)
!492 = !DILocation(line: 365, column: 8, scope: !486)
!493 = !DILocation(line: 369, column: 14, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 366, column: 5)
!495 = !DILocation(line: 370, column: 5, scope: !494)
!496 = !DILocation(line: 371, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !486, file: !1, line: 371, column: 8)
!498 = !DILocation(line: 371, column: 8, scope: !486)
!499 = !DILocalVariable(name: "i", scope: !500, file: !1, line: 374, type: !68)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 373, column: 9)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 372, column: 5)
!502 = !DILocation(line: 374, column: 17, scope: !500)
!503 = !DILocalVariable(name: "buffer", scope: !500, file: !1, line: 375, type: !170)
!504 = !DILocation(line: 375, column: 17, scope: !500)
!505 = !DILocation(line: 378, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !1, line: 378, column: 17)
!507 = !DILocation(line: 378, column: 22, scope: !506)
!508 = !DILocation(line: 378, column: 17, scope: !500)
!509 = !DILocation(line: 380, column: 24, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 379, column: 13)
!511 = !DILocation(line: 380, column: 17, scope: !510)
!512 = !DILocation(line: 380, column: 30, scope: !510)
!513 = !DILocation(line: 382, column: 23, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 382, column: 17)
!515 = !DILocation(line: 382, column: 21, scope: !514)
!516 = !DILocation(line: 382, column: 28, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 382, column: 17)
!518 = !DILocation(line: 382, column: 30, scope: !517)
!519 = !DILocation(line: 382, column: 17, scope: !514)
!520 = !DILocation(line: 384, column: 41, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 383, column: 17)
!522 = !DILocation(line: 384, column: 34, scope: !521)
!523 = !DILocation(line: 384, column: 21, scope: !521)
!524 = !DILocation(line: 385, column: 17, scope: !521)
!525 = !DILocation(line: 382, column: 37, scope: !517)
!526 = !DILocation(line: 382, column: 17, scope: !517)
!527 = distinct !{!527, !519, !528, !198}
!528 = !DILocation(line: 385, column: 17, scope: !514)
!529 = !DILocation(line: 386, column: 13, scope: !510)
!530 = !DILocation(line: 389, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !506, file: !1, line: 388, column: 13)
!532 = !DILocation(line: 392, column: 5, scope: !501)
!533 = !DILocation(line: 393, column: 1, scope: !486)
!534 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09_good", scope: !1, file: !1, line: 395, type: !64, scopeLine: 396, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !66)
!535 = !DILocation(line: 397, column: 5, scope: !534)
!536 = !DILocation(line: 398, column: 5, scope: !534)
!537 = !DILocation(line: 399, column: 5, scope: !534)
!538 = !DILocation(line: 400, column: 5, scope: !534)
!539 = !DILocation(line: 401, column: 1, scope: !534)
