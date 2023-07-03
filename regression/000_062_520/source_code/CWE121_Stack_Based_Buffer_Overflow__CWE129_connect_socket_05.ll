; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !62
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_bad() #0 !dbg !69 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 -1, i32* %data, align 4, !dbg !75
  %0 = load i32, i32* @staticTrue, align 4, !dbg !76
  %tobool = icmp ne i32 %0, 0, !dbg !76
  br i1 %tobool, label %if.then, label %if.end22, !dbg !78

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !83, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %connectSocket, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !111
  store i32 %call, i32* %connectSocket, align 4, !dbg !113
  %1 = load i32, i32* %connectSocket, align 4, !dbg !114
  %cmp = icmp eq i32 %1, -1, !dbg !116
  br i1 %cmp, label %if.then1, label %if.end, !dbg !117

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !123
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !124
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !125
  store i32 %call2, i32* %s_addr, align 4, !dbg !126
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !127
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !128
  store i16 %call3, i16* %sin_port, align 2, !dbg !129
  %3 = load i32, i32* %connectSocket, align 4, !dbg !130
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !132
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !133
  %cmp5 = icmp eq i32 %call4, -1, !dbg !134
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !135

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !136

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !138
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !139
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !140
  %conv = trunc i64 %call8 to i32, !dbg !140
  store i32 %conv, i32* %recvResult, align 4, !dbg !141
  %6 = load i32, i32* %recvResult, align 4, !dbg !142
  %cmp9 = icmp eq i32 %6, -1, !dbg !144
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !145

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !146
  %cmp11 = icmp eq i32 %7, 0, !dbg !147
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !148

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !149

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !151
  %idxprom = sext i32 %8 to i64, !dbg !152
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !152
  store i8 0, i8* %arrayidx, align 1, !dbg !153
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !154
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !155
  store i32 %call16, i32* %data, align 4, !dbg !156
  br label %do.end, !dbg !157

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !158
  %cmp17 = icmp ne i32 %9, -1, !dbg !160
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !161

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !162
  %call20 = call i32 @close(i32 %10), !dbg !164
  br label %if.end21, !dbg !165

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !166

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticTrue, align 4, !dbg !167
  %tobool23 = icmp ne i32 %11, 0, !dbg !167
  br i1 %tobool23, label %if.then24, label %if.end35, !dbg !169

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !170, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !174, metadata !DIExpression()), !dbg !178
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !178
  %13 = load i32, i32* %data, align 4, !dbg !179
  %cmp25 = icmp sge i32 %13, 0, !dbg !181
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !182

if.then27:                                        ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !183
  %idxprom28 = sext i32 %14 to i64, !dbg !185
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom28, !dbg !185
  store i32 1, i32* %arrayidx29, align 4, !dbg !186
  store i32 0, i32* %i, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then27
  %15 = load i32, i32* %i, align 4, !dbg !190
  %cmp30 = icmp slt i32 %15, 10, !dbg !192
  br i1 %cmp30, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !194
  %idxprom32 = sext i32 %16 to i64, !dbg !196
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom32, !dbg !196
  %17 = load i32, i32* %arrayidx33, align 4, !dbg !196
  call void @printIntLine(i32 %17), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !199
  %inc = add nsw i32 %18, 1, !dbg !199
  store i32 %inc, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  br label %if.end34, !dbg !204

if.else:                                          ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  br label %if.end35, !dbg !207

if.end35:                                         ; preds = %if.end34, %if.end22
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
  %0 = load i32, i32* @staticTrue, align 4, !dbg !213
  %tobool = icmp ne i32 %0, 0, !dbg !213
  br i1 %tobool, label %if.then, label %if.end22, !dbg !215

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !222, metadata !DIExpression()), !dbg !223
  store i32 -1, i32* %connectSocket, align 4, !dbg !223
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !224, metadata !DIExpression()), !dbg !225
  br label %do.body, !dbg !226

do.body:                                          ; preds = %if.then
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !227
  store i32 %call, i32* %connectSocket, align 4, !dbg !229
  %1 = load i32, i32* %connectSocket, align 4, !dbg !230
  %cmp = icmp eq i32 %1, -1, !dbg !232
  br i1 %cmp, label %if.then1, label %if.end, !dbg !233

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !234

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !236
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !236
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !237
  store i16 2, i16* %sin_family, align 4, !dbg !238
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !239
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !240
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !241
  store i32 %call2, i32* %s_addr, align 4, !dbg !242
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !243
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !244
  store i16 %call3, i16* %sin_port, align 2, !dbg !245
  %3 = load i32, i32* %connectSocket, align 4, !dbg !246
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !248
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !249
  %cmp5 = icmp eq i32 %call4, -1, !dbg !250
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !251

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !252

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !254
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !255
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !256
  %conv = trunc i64 %call8 to i32, !dbg !256
  store i32 %conv, i32* %recvResult, align 4, !dbg !257
  %6 = load i32, i32* %recvResult, align 4, !dbg !258
  %cmp9 = icmp eq i32 %6, -1, !dbg !260
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !261

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !262
  %cmp11 = icmp eq i32 %7, 0, !dbg !263
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !264

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !265

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !267
  %idxprom = sext i32 %8 to i64, !dbg !268
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !268
  store i8 0, i8* %arrayidx, align 1, !dbg !269
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !270
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !271
  store i32 %call16, i32* %data, align 4, !dbg !272
  br label %do.end, !dbg !273

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !274
  %cmp17 = icmp ne i32 %9, -1, !dbg !276
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !277

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !278
  %call20 = call i32 @close(i32 %10), !dbg !280
  br label %if.end21, !dbg !281

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !282

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticFalse, align 4, !dbg !283
  %tobool23 = icmp ne i32 %11, 0, !dbg !283
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !285

if.then24:                                        ; preds = %if.end22
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !286
  br label %if.end38, !dbg !288

if.else:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !293, metadata !DIExpression()), !dbg !294
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !294
  %13 = load i32, i32* %data, align 4, !dbg !295
  %cmp25 = icmp sge i32 %13, 0, !dbg !297
  br i1 %cmp25, label %land.lhs.true, label %if.else36, !dbg !298

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %data, align 4, !dbg !299
  %cmp27 = icmp slt i32 %14, 10, !dbg !300
  br i1 %cmp27, label %if.then29, label %if.else36, !dbg !301

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !302
  %idxprom30 = sext i32 %15 to i64, !dbg !304
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !304
  store i32 1, i32* %arrayidx31, align 4, !dbg !305
  store i32 0, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !308

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !309
  %cmp32 = icmp slt i32 %16, 10, !dbg !311
  br i1 %cmp32, label %for.body, label %for.end, !dbg !312

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !313
  %idxprom34 = sext i32 %17 to i64, !dbg !315
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !315
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !315
  call void @printIntLine(i32 %18), !dbg !316
  br label %for.inc, !dbg !317

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !318
  %inc = add nsw i32 %19, 1, !dbg !318
  store i32 %inc, i32* %i, align 4, !dbg !318
  br label %for.cond, !dbg !319, !llvm.loop !320

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !322

if.else36:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !323
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !326 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %connectSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 -1, i32* %data, align 4, !dbg !329
  %0 = load i32, i32* @staticTrue, align 4, !dbg !330
  %tobool = icmp ne i32 %0, 0, !dbg !330
  br i1 %tobool, label %if.then, label %if.end22, !dbg !332

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
  %cmp = icmp eq i32 %1, -1, !dbg !349
  br i1 %cmp, label %if.then1, label %if.end, !dbg !350

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !351

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !353
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !354
  store i16 2, i16* %sin_family, align 4, !dbg !355
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !356
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !357
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !358
  store i32 %call2, i32* %s_addr, align 4, !dbg !359
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !360
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !361
  store i16 %call3, i16* %sin_port, align 2, !dbg !362
  %3 = load i32, i32* %connectSocket, align 4, !dbg !363
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !365
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !366
  %cmp5 = icmp eq i32 %call4, -1, !dbg !367
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !368

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !369

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !371
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !372
  %call8 = call i64 @recv(i32 %5, i8* %arraydecay, i64 13, i32 0), !dbg !373
  %conv = trunc i64 %call8 to i32, !dbg !373
  store i32 %conv, i32* %recvResult, align 4, !dbg !374
  %6 = load i32, i32* %recvResult, align 4, !dbg !375
  %cmp9 = icmp eq i32 %6, -1, !dbg !377
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !378

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i32, i32* %recvResult, align 4, !dbg !379
  %cmp11 = icmp eq i32 %7, 0, !dbg !380
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !381

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !382

if.end14:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %recvResult, align 4, !dbg !384
  %idxprom = sext i32 %8 to i64, !dbg !385
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !385
  store i8 0, i8* %arrayidx, align 1, !dbg !386
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !387
  %call16 = call i32 @atoi(i8* %arraydecay15) #9, !dbg !388
  store i32 %call16, i32* %data, align 4, !dbg !389
  br label %do.end, !dbg !390

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %9 = load i32, i32* %connectSocket, align 4, !dbg !391
  %cmp17 = icmp ne i32 %9, -1, !dbg !393
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !394

if.then19:                                        ; preds = %do.end
  %10 = load i32, i32* %connectSocket, align 4, !dbg !395
  %call20 = call i32 @close(i32 %10), !dbg !397
  br label %if.end21, !dbg !398

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !399

if.end22:                                         ; preds = %if.end21, %entry
  %11 = load i32, i32* @staticTrue, align 4, !dbg !400
  %tobool23 = icmp ne i32 %11, 0, !dbg !400
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !402

if.then24:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !403, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !407, metadata !DIExpression()), !dbg !408
  %12 = bitcast [10 x i32]* %buffer to i8*, !dbg !408
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !408
  %13 = load i32, i32* %data, align 4, !dbg !409
  %cmp25 = icmp sge i32 %13, 0, !dbg !411
  br i1 %cmp25, label %land.lhs.true, label %if.else, !dbg !412

land.lhs.true:                                    ; preds = %if.then24
  %14 = load i32, i32* %data, align 4, !dbg !413
  %cmp27 = icmp slt i32 %14, 10, !dbg !414
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !415

if.then29:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %data, align 4, !dbg !416
  %idxprom30 = sext i32 %15 to i64, !dbg !418
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom30, !dbg !418
  store i32 1, i32* %arrayidx31, align 4, !dbg !419
  store i32 0, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %if.then29
  %16 = load i32, i32* %i, align 4, !dbg !423
  %cmp32 = icmp slt i32 %16, 10, !dbg !425
  br i1 %cmp32, label %for.body, label %for.end, !dbg !426

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !dbg !427
  %idxprom34 = sext i32 %17 to i64, !dbg !429
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom34, !dbg !429
  %18 = load i32, i32* %arrayidx35, align 4, !dbg !429
  call void @printIntLine(i32 %18), !dbg !430
  br label %for.inc, !dbg !431

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !432
  %inc = add nsw i32 %19, 1, !dbg !432
  store i32 %inc, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !433, !llvm.loop !434

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !436

if.else:                                          ; preds = %land.lhs.true, %if.then24
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !437
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end
  br label %if.end37, !dbg !439

if.end37:                                         ; preds = %if.end36, %if.end22
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !441 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !442, metadata !DIExpression()), !dbg !443
  store i32 -1, i32* %data, align 4, !dbg !444
  %0 = load i32, i32* @staticFalse, align 4, !dbg !445
  %tobool = icmp ne i32 %0, 0, !dbg !445
  br i1 %tobool, label %if.then, label %if.else, !dbg !447

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !448
  br label %if.end, !dbg !450

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !451
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @staticTrue, align 4, !dbg !453
  %tobool1 = icmp ne i32 %1, 0, !dbg !453
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !455

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !456, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !460, metadata !DIExpression()), !dbg !461
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !461
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !461
  %3 = load i32, i32* %data, align 4, !dbg !462
  %cmp = icmp sge i32 %3, 0, !dbg !464
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !465

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !466
  %idxprom = sext i32 %4 to i64, !dbg !468
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !468
  store i32 1, i32* %arrayidx, align 4, !dbg !469
  store i32 0, i32* %i, align 4, !dbg !470
  br label %for.cond, !dbg !472

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !473
  %cmp4 = icmp slt i32 %5, 10, !dbg !475
  br i1 %cmp4, label %for.body, label %for.end, !dbg !476

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !477
  %idxprom5 = sext i32 %6 to i64, !dbg !479
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !479
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !479
  call void @printIntLine(i32 %7), !dbg !480
  br label %for.inc, !dbg !481

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !482
  %inc = add nsw i32 %8, 1, !dbg !482
  store i32 %inc, i32* %i, align 4, !dbg !482
  br label %for.cond, !dbg !483, !llvm.loop !484

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !486

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !487
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !489

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !491 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !492, metadata !DIExpression()), !dbg !493
  store i32 -1, i32* %data, align 4, !dbg !494
  %0 = load i32, i32* @staticTrue, align 4, !dbg !495
  %tobool = icmp ne i32 %0, 0, !dbg !495
  br i1 %tobool, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !498
  br label %if.end, !dbg !500

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @staticTrue, align 4, !dbg !501
  %tobool1 = icmp ne i32 %1, 0, !dbg !501
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !503

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !508, metadata !DIExpression()), !dbg !509
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !509
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !509
  %3 = load i32, i32* %data, align 4, !dbg !510
  %cmp = icmp sge i32 %3, 0, !dbg !512
  br i1 %cmp, label %if.then3, label %if.else, !dbg !513

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !514
  %idxprom = sext i32 %4 to i64, !dbg !516
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !516
  store i32 1, i32* %arrayidx, align 4, !dbg !517
  store i32 0, i32* %i, align 4, !dbg !518
  br label %for.cond, !dbg !520

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !521
  %cmp4 = icmp slt i32 %5, 10, !dbg !523
  br i1 %cmp4, label %for.body, label %for.end, !dbg !524

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !525
  %idxprom5 = sext i32 %6 to i64, !dbg !527
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !527
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !527
  call void @printIntLine(i32 %7), !dbg !528
  br label %for.inc, !dbg !529

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !530
  %inc = add nsw i32 %8, 1, !dbg !530
  store i32 %inc, i32* %i, align 4, !dbg !530
  br label %for.cond, !dbg !531, !llvm.loop !532

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !534

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !535
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !537

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_good() #0 !dbg !539 {
entry:
  call void @goodB2G1(), !dbg !540
  call void @goodB2G2(), !dbg !541
  call void @goodG2B1(), !dbg !542
  call void @goodG2B2(), !dbg !543
  ret void, !dbg !544
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
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 46, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_520/source_code")
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
!61 = !{!0, !62}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 47, type: !64, isLocal: false, isDefinition: true)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 12.0.0"}
!69 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_bad", scope: !3, file: !3, line: 51, type: !70, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !{}
!73 = !DILocalVariable(name: "data", scope: !69, file: !3, line: 53, type: !64)
!74 = !DILocation(line: 53, column: 9, scope: !69)
!75 = !DILocation(line: 55, column: 10, scope: !69)
!76 = !DILocation(line: 56, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !3, line: 56, column: 8)
!78 = !DILocation(line: 56, column: 8, scope: !69)
!79 = !DILocalVariable(name: "recvResult", scope: !80, file: !3, line: 63, type: !64)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 58, column: 9)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 57, column: 5)
!82 = !DILocation(line: 63, column: 17, scope: !80)
!83 = !DILocalVariable(name: "service", scope: !80, file: !3, line: 64, type: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !85)
!85 = !{!86, !87, !93, !100}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !84, file: !19, line: 240, baseType: !53, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !84, file: !19, line: 241, baseType: !88, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 25, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !92, line: 40, baseType: !55)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !84, file: !19, line: 242, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !94, file: !19, line: 33, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !90, line: 26, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !92, line: 42, baseType: !7)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !84, file: !19, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 64, column: 32, scope: !80)
!106 = !DILocalVariable(name: "connectSocket", scope: !80, file: !3, line: 65, type: !64)
!107 = !DILocation(line: 65, column: 20, scope: !80)
!108 = !DILocalVariable(name: "inputBuffer", scope: !80, file: !3, line: 66, type: !57)
!109 = !DILocation(line: 66, column: 18, scope: !80)
!110 = !DILocation(line: 67, column: 13, scope: !80)
!111 = !DILocation(line: 77, column: 33, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !3, line: 68, column: 13)
!113 = !DILocation(line: 77, column: 31, scope: !112)
!114 = !DILocation(line: 78, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 78, column: 21)
!116 = !DILocation(line: 78, column: 35, scope: !115)
!117 = !DILocation(line: 78, column: 21, scope: !112)
!118 = !DILocation(line: 80, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 79, column: 17)
!120 = !DILocation(line: 82, column: 17, scope: !112)
!121 = !DILocation(line: 83, column: 25, scope: !112)
!122 = !DILocation(line: 83, column: 36, scope: !112)
!123 = !DILocation(line: 84, column: 43, scope: !112)
!124 = !DILocation(line: 84, column: 25, scope: !112)
!125 = !DILocation(line: 84, column: 34, scope: !112)
!126 = !DILocation(line: 84, column: 41, scope: !112)
!127 = !DILocation(line: 85, column: 36, scope: !112)
!128 = !DILocation(line: 85, column: 25, scope: !112)
!129 = !DILocation(line: 85, column: 34, scope: !112)
!130 = !DILocation(line: 86, column: 29, scope: !131)
!131 = distinct !DILexicalBlock(scope: !112, file: !3, line: 86, column: 21)
!132 = !DILocation(line: 86, column: 44, scope: !131)
!133 = !DILocation(line: 86, column: 21, scope: !131)
!134 = !DILocation(line: 86, column: 89, scope: !131)
!135 = !DILocation(line: 86, column: 21, scope: !112)
!136 = !DILocation(line: 88, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !3, line: 87, column: 17)
!138 = !DILocation(line: 92, column: 35, scope: !112)
!139 = !DILocation(line: 92, column: 50, scope: !112)
!140 = !DILocation(line: 92, column: 30, scope: !112)
!141 = !DILocation(line: 92, column: 28, scope: !112)
!142 = !DILocation(line: 93, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !112, file: !3, line: 93, column: 21)
!144 = !DILocation(line: 93, column: 32, scope: !143)
!145 = !DILocation(line: 93, column: 48, scope: !143)
!146 = !DILocation(line: 93, column: 51, scope: !143)
!147 = !DILocation(line: 93, column: 62, scope: !143)
!148 = !DILocation(line: 93, column: 21, scope: !112)
!149 = !DILocation(line: 95, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 94, column: 17)
!151 = !DILocation(line: 98, column: 29, scope: !112)
!152 = !DILocation(line: 98, column: 17, scope: !112)
!153 = !DILocation(line: 98, column: 41, scope: !112)
!154 = !DILocation(line: 100, column: 29, scope: !112)
!155 = !DILocation(line: 100, column: 24, scope: !112)
!156 = !DILocation(line: 100, column: 22, scope: !112)
!157 = !DILocation(line: 101, column: 13, scope: !112)
!158 = !DILocation(line: 103, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !80, file: !3, line: 103, column: 17)
!160 = !DILocation(line: 103, column: 31, scope: !159)
!161 = !DILocation(line: 103, column: 17, scope: !80)
!162 = !DILocation(line: 105, column: 30, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 104, column: 13)
!164 = !DILocation(line: 105, column: 17, scope: !163)
!165 = !DILocation(line: 106, column: 13, scope: !163)
!166 = !DILocation(line: 114, column: 5, scope: !81)
!167 = !DILocation(line: 115, column: 8, scope: !168)
!168 = distinct !DILexicalBlock(scope: !69, file: !3, line: 115, column: 8)
!169 = !DILocation(line: 115, column: 8, scope: !69)
!170 = !DILocalVariable(name: "i", scope: !171, file: !3, line: 118, type: !64)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 117, column: 9)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 116, column: 5)
!173 = !DILocation(line: 118, column: 17, scope: !171)
!174 = !DILocalVariable(name: "buffer", scope: !171, file: !3, line: 119, type: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 10)
!178 = !DILocation(line: 119, column: 17, scope: !171)
!179 = !DILocation(line: 122, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !3, line: 122, column: 17)
!181 = !DILocation(line: 122, column: 22, scope: !180)
!182 = !DILocation(line: 122, column: 17, scope: !171)
!183 = !DILocation(line: 124, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !3, line: 123, column: 13)
!185 = !DILocation(line: 124, column: 17, scope: !184)
!186 = !DILocation(line: 124, column: 30, scope: !184)
!187 = !DILocation(line: 126, column: 23, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !3, line: 126, column: 17)
!189 = !DILocation(line: 126, column: 21, scope: !188)
!190 = !DILocation(line: 126, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 126, column: 17)
!192 = !DILocation(line: 126, column: 30, scope: !191)
!193 = !DILocation(line: 126, column: 17, scope: !188)
!194 = !DILocation(line: 128, column: 41, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 127, column: 17)
!196 = !DILocation(line: 128, column: 34, scope: !195)
!197 = !DILocation(line: 128, column: 21, scope: !195)
!198 = !DILocation(line: 129, column: 17, scope: !195)
!199 = !DILocation(line: 126, column: 37, scope: !191)
!200 = !DILocation(line: 126, column: 17, scope: !191)
!201 = distinct !{!201, !193, !202, !203}
!202 = !DILocation(line: 129, column: 17, scope: !188)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 130, column: 13, scope: !184)
!205 = !DILocation(line: 133, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !180, file: !3, line: 132, column: 13)
!207 = !DILocation(line: 136, column: 5, scope: !172)
!208 = !DILocation(line: 137, column: 1, scope: !69)
!209 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 144, type: !70, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!210 = !DILocalVariable(name: "data", scope: !209, file: !3, line: 146, type: !64)
!211 = !DILocation(line: 146, column: 9, scope: !209)
!212 = !DILocation(line: 148, column: 10, scope: !209)
!213 = !DILocation(line: 149, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 149, column: 8)
!215 = !DILocation(line: 149, column: 8, scope: !209)
!216 = !DILocalVariable(name: "recvResult", scope: !217, file: !3, line: 156, type: !64)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 151, column: 9)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 150, column: 5)
!219 = !DILocation(line: 156, column: 17, scope: !217)
!220 = !DILocalVariable(name: "service", scope: !217, file: !3, line: 157, type: !84)
!221 = !DILocation(line: 157, column: 32, scope: !217)
!222 = !DILocalVariable(name: "connectSocket", scope: !217, file: !3, line: 158, type: !64)
!223 = !DILocation(line: 158, column: 20, scope: !217)
!224 = !DILocalVariable(name: "inputBuffer", scope: !217, file: !3, line: 159, type: !57)
!225 = !DILocation(line: 159, column: 18, scope: !217)
!226 = !DILocation(line: 160, column: 13, scope: !217)
!227 = !DILocation(line: 170, column: 33, scope: !228)
!228 = distinct !DILexicalBlock(scope: !217, file: !3, line: 161, column: 13)
!229 = !DILocation(line: 170, column: 31, scope: !228)
!230 = !DILocation(line: 171, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !3, line: 171, column: 21)
!232 = !DILocation(line: 171, column: 35, scope: !231)
!233 = !DILocation(line: 171, column: 21, scope: !228)
!234 = !DILocation(line: 173, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 172, column: 17)
!236 = !DILocation(line: 175, column: 17, scope: !228)
!237 = !DILocation(line: 176, column: 25, scope: !228)
!238 = !DILocation(line: 176, column: 36, scope: !228)
!239 = !DILocation(line: 177, column: 43, scope: !228)
!240 = !DILocation(line: 177, column: 25, scope: !228)
!241 = !DILocation(line: 177, column: 34, scope: !228)
!242 = !DILocation(line: 177, column: 41, scope: !228)
!243 = !DILocation(line: 178, column: 36, scope: !228)
!244 = !DILocation(line: 178, column: 25, scope: !228)
!245 = !DILocation(line: 178, column: 34, scope: !228)
!246 = !DILocation(line: 179, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !228, file: !3, line: 179, column: 21)
!248 = !DILocation(line: 179, column: 44, scope: !247)
!249 = !DILocation(line: 179, column: 21, scope: !247)
!250 = !DILocation(line: 179, column: 89, scope: !247)
!251 = !DILocation(line: 179, column: 21, scope: !228)
!252 = !DILocation(line: 181, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !3, line: 180, column: 17)
!254 = !DILocation(line: 185, column: 35, scope: !228)
!255 = !DILocation(line: 185, column: 50, scope: !228)
!256 = !DILocation(line: 185, column: 30, scope: !228)
!257 = !DILocation(line: 185, column: 28, scope: !228)
!258 = !DILocation(line: 186, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !228, file: !3, line: 186, column: 21)
!260 = !DILocation(line: 186, column: 32, scope: !259)
!261 = !DILocation(line: 186, column: 48, scope: !259)
!262 = !DILocation(line: 186, column: 51, scope: !259)
!263 = !DILocation(line: 186, column: 62, scope: !259)
!264 = !DILocation(line: 186, column: 21, scope: !228)
!265 = !DILocation(line: 188, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !3, line: 187, column: 17)
!267 = !DILocation(line: 191, column: 29, scope: !228)
!268 = !DILocation(line: 191, column: 17, scope: !228)
!269 = !DILocation(line: 191, column: 41, scope: !228)
!270 = !DILocation(line: 193, column: 29, scope: !228)
!271 = !DILocation(line: 193, column: 24, scope: !228)
!272 = !DILocation(line: 193, column: 22, scope: !228)
!273 = !DILocation(line: 194, column: 13, scope: !228)
!274 = !DILocation(line: 196, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !217, file: !3, line: 196, column: 17)
!276 = !DILocation(line: 196, column: 31, scope: !275)
!277 = !DILocation(line: 196, column: 17, scope: !217)
!278 = !DILocation(line: 198, column: 30, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 197, column: 13)
!280 = !DILocation(line: 198, column: 17, scope: !279)
!281 = !DILocation(line: 199, column: 13, scope: !279)
!282 = !DILocation(line: 207, column: 5, scope: !218)
!283 = !DILocation(line: 208, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !209, file: !3, line: 208, column: 8)
!285 = !DILocation(line: 208, column: 8, scope: !209)
!286 = !DILocation(line: 211, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 209, column: 5)
!288 = !DILocation(line: 212, column: 5, scope: !287)
!289 = !DILocalVariable(name: "i", scope: !290, file: !3, line: 216, type: !64)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 215, column: 9)
!291 = distinct !DILexicalBlock(scope: !284, file: !3, line: 214, column: 5)
!292 = !DILocation(line: 216, column: 17, scope: !290)
!293 = !DILocalVariable(name: "buffer", scope: !290, file: !3, line: 217, type: !175)
!294 = !DILocation(line: 217, column: 17, scope: !290)
!295 = !DILocation(line: 219, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 219, column: 17)
!297 = !DILocation(line: 219, column: 22, scope: !296)
!298 = !DILocation(line: 219, column: 27, scope: !296)
!299 = !DILocation(line: 219, column: 30, scope: !296)
!300 = !DILocation(line: 219, column: 35, scope: !296)
!301 = !DILocation(line: 219, column: 17, scope: !290)
!302 = !DILocation(line: 221, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !3, line: 220, column: 13)
!304 = !DILocation(line: 221, column: 17, scope: !303)
!305 = !DILocation(line: 221, column: 30, scope: !303)
!306 = !DILocation(line: 223, column: 23, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 223, column: 17)
!308 = !DILocation(line: 223, column: 21, scope: !307)
!309 = !DILocation(line: 223, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 223, column: 17)
!311 = !DILocation(line: 223, column: 30, scope: !310)
!312 = !DILocation(line: 223, column: 17, scope: !307)
!313 = !DILocation(line: 225, column: 41, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 224, column: 17)
!315 = !DILocation(line: 225, column: 34, scope: !314)
!316 = !DILocation(line: 225, column: 21, scope: !314)
!317 = !DILocation(line: 226, column: 17, scope: !314)
!318 = !DILocation(line: 223, column: 37, scope: !310)
!319 = !DILocation(line: 223, column: 17, scope: !310)
!320 = distinct !{!320, !312, !321, !203}
!321 = !DILocation(line: 226, column: 17, scope: !307)
!322 = !DILocation(line: 227, column: 13, scope: !303)
!323 = !DILocation(line: 230, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !296, file: !3, line: 229, column: 13)
!325 = !DILocation(line: 234, column: 1, scope: !209)
!326 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 237, type: !70, scopeLine: 238, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!327 = !DILocalVariable(name: "data", scope: !326, file: !3, line: 239, type: !64)
!328 = !DILocation(line: 239, column: 9, scope: !326)
!329 = !DILocation(line: 241, column: 10, scope: !326)
!330 = !DILocation(line: 242, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 242, column: 8)
!332 = !DILocation(line: 242, column: 8, scope: !326)
!333 = !DILocalVariable(name: "recvResult", scope: !334, file: !3, line: 249, type: !64)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 244, column: 9)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 243, column: 5)
!336 = !DILocation(line: 249, column: 17, scope: !334)
!337 = !DILocalVariable(name: "service", scope: !334, file: !3, line: 250, type: !84)
!338 = !DILocation(line: 250, column: 32, scope: !334)
!339 = !DILocalVariable(name: "connectSocket", scope: !334, file: !3, line: 251, type: !64)
!340 = !DILocation(line: 251, column: 20, scope: !334)
!341 = !DILocalVariable(name: "inputBuffer", scope: !334, file: !3, line: 252, type: !57)
!342 = !DILocation(line: 252, column: 18, scope: !334)
!343 = !DILocation(line: 253, column: 13, scope: !334)
!344 = !DILocation(line: 263, column: 33, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !3, line: 254, column: 13)
!346 = !DILocation(line: 263, column: 31, scope: !345)
!347 = !DILocation(line: 264, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 264, column: 21)
!349 = !DILocation(line: 264, column: 35, scope: !348)
!350 = !DILocation(line: 264, column: 21, scope: !345)
!351 = !DILocation(line: 266, column: 21, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 265, column: 17)
!353 = !DILocation(line: 268, column: 17, scope: !345)
!354 = !DILocation(line: 269, column: 25, scope: !345)
!355 = !DILocation(line: 269, column: 36, scope: !345)
!356 = !DILocation(line: 270, column: 43, scope: !345)
!357 = !DILocation(line: 270, column: 25, scope: !345)
!358 = !DILocation(line: 270, column: 34, scope: !345)
!359 = !DILocation(line: 270, column: 41, scope: !345)
!360 = !DILocation(line: 271, column: 36, scope: !345)
!361 = !DILocation(line: 271, column: 25, scope: !345)
!362 = !DILocation(line: 271, column: 34, scope: !345)
!363 = !DILocation(line: 272, column: 29, scope: !364)
!364 = distinct !DILexicalBlock(scope: !345, file: !3, line: 272, column: 21)
!365 = !DILocation(line: 272, column: 44, scope: !364)
!366 = !DILocation(line: 272, column: 21, scope: !364)
!367 = !DILocation(line: 272, column: 89, scope: !364)
!368 = !DILocation(line: 272, column: 21, scope: !345)
!369 = !DILocation(line: 274, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !3, line: 273, column: 17)
!371 = !DILocation(line: 278, column: 35, scope: !345)
!372 = !DILocation(line: 278, column: 50, scope: !345)
!373 = !DILocation(line: 278, column: 30, scope: !345)
!374 = !DILocation(line: 278, column: 28, scope: !345)
!375 = !DILocation(line: 279, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !345, file: !3, line: 279, column: 21)
!377 = !DILocation(line: 279, column: 32, scope: !376)
!378 = !DILocation(line: 279, column: 48, scope: !376)
!379 = !DILocation(line: 279, column: 51, scope: !376)
!380 = !DILocation(line: 279, column: 62, scope: !376)
!381 = !DILocation(line: 279, column: 21, scope: !345)
!382 = !DILocation(line: 281, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 280, column: 17)
!384 = !DILocation(line: 284, column: 29, scope: !345)
!385 = !DILocation(line: 284, column: 17, scope: !345)
!386 = !DILocation(line: 284, column: 41, scope: !345)
!387 = !DILocation(line: 286, column: 29, scope: !345)
!388 = !DILocation(line: 286, column: 24, scope: !345)
!389 = !DILocation(line: 286, column: 22, scope: !345)
!390 = !DILocation(line: 287, column: 13, scope: !345)
!391 = !DILocation(line: 289, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !334, file: !3, line: 289, column: 17)
!393 = !DILocation(line: 289, column: 31, scope: !392)
!394 = !DILocation(line: 289, column: 17, scope: !334)
!395 = !DILocation(line: 291, column: 30, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 290, column: 13)
!397 = !DILocation(line: 291, column: 17, scope: !396)
!398 = !DILocation(line: 292, column: 13, scope: !396)
!399 = !DILocation(line: 300, column: 5, scope: !335)
!400 = !DILocation(line: 301, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !326, file: !3, line: 301, column: 8)
!402 = !DILocation(line: 301, column: 8, scope: !326)
!403 = !DILocalVariable(name: "i", scope: !404, file: !3, line: 304, type: !64)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 303, column: 9)
!405 = distinct !DILexicalBlock(scope: !401, file: !3, line: 302, column: 5)
!406 = !DILocation(line: 304, column: 17, scope: !404)
!407 = !DILocalVariable(name: "buffer", scope: !404, file: !3, line: 305, type: !175)
!408 = !DILocation(line: 305, column: 17, scope: !404)
!409 = !DILocation(line: 307, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !404, file: !3, line: 307, column: 17)
!411 = !DILocation(line: 307, column: 22, scope: !410)
!412 = !DILocation(line: 307, column: 27, scope: !410)
!413 = !DILocation(line: 307, column: 30, scope: !410)
!414 = !DILocation(line: 307, column: 35, scope: !410)
!415 = !DILocation(line: 307, column: 17, scope: !404)
!416 = !DILocation(line: 309, column: 24, scope: !417)
!417 = distinct !DILexicalBlock(scope: !410, file: !3, line: 308, column: 13)
!418 = !DILocation(line: 309, column: 17, scope: !417)
!419 = !DILocation(line: 309, column: 30, scope: !417)
!420 = !DILocation(line: 311, column: 23, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 311, column: 17)
!422 = !DILocation(line: 311, column: 21, scope: !421)
!423 = !DILocation(line: 311, column: 28, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 311, column: 17)
!425 = !DILocation(line: 311, column: 30, scope: !424)
!426 = !DILocation(line: 311, column: 17, scope: !421)
!427 = !DILocation(line: 313, column: 41, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !3, line: 312, column: 17)
!429 = !DILocation(line: 313, column: 34, scope: !428)
!430 = !DILocation(line: 313, column: 21, scope: !428)
!431 = !DILocation(line: 314, column: 17, scope: !428)
!432 = !DILocation(line: 311, column: 37, scope: !424)
!433 = !DILocation(line: 311, column: 17, scope: !424)
!434 = distinct !{!434, !426, !435, !203}
!435 = !DILocation(line: 314, column: 17, scope: !421)
!436 = !DILocation(line: 315, column: 13, scope: !417)
!437 = !DILocation(line: 318, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !410, file: !3, line: 317, column: 13)
!439 = !DILocation(line: 321, column: 5, scope: !405)
!440 = !DILocation(line: 322, column: 1, scope: !326)
!441 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 325, type: !70, scopeLine: 326, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!442 = !DILocalVariable(name: "data", scope: !441, file: !3, line: 327, type: !64)
!443 = !DILocation(line: 327, column: 9, scope: !441)
!444 = !DILocation(line: 329, column: 10, scope: !441)
!445 = !DILocation(line: 330, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !3, line: 330, column: 8)
!447 = !DILocation(line: 330, column: 8, scope: !441)
!448 = !DILocation(line: 333, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 331, column: 5)
!450 = !DILocation(line: 334, column: 5, scope: !449)
!451 = !DILocation(line: 339, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !446, file: !3, line: 336, column: 5)
!453 = !DILocation(line: 341, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !441, file: !3, line: 341, column: 8)
!455 = !DILocation(line: 341, column: 8, scope: !441)
!456 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 344, type: !64)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 343, column: 9)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 342, column: 5)
!459 = !DILocation(line: 344, column: 17, scope: !457)
!460 = !DILocalVariable(name: "buffer", scope: !457, file: !3, line: 345, type: !175)
!461 = !DILocation(line: 345, column: 17, scope: !457)
!462 = !DILocation(line: 348, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !3, line: 348, column: 17)
!464 = !DILocation(line: 348, column: 22, scope: !463)
!465 = !DILocation(line: 348, column: 17, scope: !457)
!466 = !DILocation(line: 350, column: 24, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 349, column: 13)
!468 = !DILocation(line: 350, column: 17, scope: !467)
!469 = !DILocation(line: 350, column: 30, scope: !467)
!470 = !DILocation(line: 352, column: 23, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 352, column: 17)
!472 = !DILocation(line: 352, column: 21, scope: !471)
!473 = !DILocation(line: 352, column: 28, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !3, line: 352, column: 17)
!475 = !DILocation(line: 352, column: 30, scope: !474)
!476 = !DILocation(line: 352, column: 17, scope: !471)
!477 = !DILocation(line: 354, column: 41, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 353, column: 17)
!479 = !DILocation(line: 354, column: 34, scope: !478)
!480 = !DILocation(line: 354, column: 21, scope: !478)
!481 = !DILocation(line: 355, column: 17, scope: !478)
!482 = !DILocation(line: 352, column: 37, scope: !474)
!483 = !DILocation(line: 352, column: 17, scope: !474)
!484 = distinct !{!484, !476, !485, !203}
!485 = !DILocation(line: 355, column: 17, scope: !471)
!486 = !DILocation(line: 356, column: 13, scope: !467)
!487 = !DILocation(line: 359, column: 17, scope: !488)
!488 = distinct !DILexicalBlock(scope: !463, file: !3, line: 358, column: 13)
!489 = !DILocation(line: 362, column: 5, scope: !458)
!490 = !DILocation(line: 363, column: 1, scope: !441)
!491 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 366, type: !70, scopeLine: 367, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!492 = !DILocalVariable(name: "data", scope: !491, file: !3, line: 368, type: !64)
!493 = !DILocation(line: 368, column: 9, scope: !491)
!494 = !DILocation(line: 370, column: 10, scope: !491)
!495 = !DILocation(line: 371, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !3, line: 371, column: 8)
!497 = !DILocation(line: 371, column: 8, scope: !491)
!498 = !DILocation(line: 375, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !3, line: 372, column: 5)
!500 = !DILocation(line: 376, column: 5, scope: !499)
!501 = !DILocation(line: 377, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !491, file: !3, line: 377, column: 8)
!503 = !DILocation(line: 377, column: 8, scope: !491)
!504 = !DILocalVariable(name: "i", scope: !505, file: !3, line: 380, type: !64)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 379, column: 9)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 378, column: 5)
!507 = !DILocation(line: 380, column: 17, scope: !505)
!508 = !DILocalVariable(name: "buffer", scope: !505, file: !3, line: 381, type: !175)
!509 = !DILocation(line: 381, column: 17, scope: !505)
!510 = !DILocation(line: 384, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !505, file: !3, line: 384, column: 17)
!512 = !DILocation(line: 384, column: 22, scope: !511)
!513 = !DILocation(line: 384, column: 17, scope: !505)
!514 = !DILocation(line: 386, column: 24, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !3, line: 385, column: 13)
!516 = !DILocation(line: 386, column: 17, scope: !515)
!517 = !DILocation(line: 386, column: 30, scope: !515)
!518 = !DILocation(line: 388, column: 23, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 388, column: 17)
!520 = !DILocation(line: 388, column: 21, scope: !519)
!521 = !DILocation(line: 388, column: 28, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 388, column: 17)
!523 = !DILocation(line: 388, column: 30, scope: !522)
!524 = !DILocation(line: 388, column: 17, scope: !519)
!525 = !DILocation(line: 390, column: 41, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 389, column: 17)
!527 = !DILocation(line: 390, column: 34, scope: !526)
!528 = !DILocation(line: 390, column: 21, scope: !526)
!529 = !DILocation(line: 391, column: 17, scope: !526)
!530 = !DILocation(line: 388, column: 37, scope: !522)
!531 = !DILocation(line: 388, column: 17, scope: !522)
!532 = distinct !{!532, !524, !533, !203}
!533 = !DILocation(line: 391, column: 17, scope: !519)
!534 = !DILocation(line: 392, column: 13, scope: !515)
!535 = !DILocation(line: 395, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !511, file: !3, line: 394, column: 13)
!537 = !DILocation(line: 398, column: 5, scope: !506)
!538 = !DILocation(line: 399, column: 1, scope: !491)
!539 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05_good", scope: !3, file: !3, line: 401, type: !70, scopeLine: 402, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !72)
!540 = !DILocation(line: 403, column: 5, scope: !539)
!541 = !DILocation(line: 404, column: 5, scope: !539)
!542 = !DILocation(line: 405, column: 5, scope: !539)
!543 = !DILocation(line: 406, column: 5, scope: !539)
!544 = !DILocation(line: 407, column: 1, scope: !539)
