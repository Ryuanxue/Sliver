; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_44.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !64 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %n, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i8*, i8** %data.addr, align 8, !dbg !78
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !80
  %cmp = icmp eq i32 %call, 1, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !83
  store i32 0, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !88
  %2 = load i32, i32* %n, align 4, !dbg !90
  %cmp1 = icmp slt i32 %1, %2, !dbg !91
  br i1 %cmp1, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !93
  %inc = add nsw i32 %3, 1, !dbg !93
  store i32 %inc, i32* %intVariable, align 4, !dbg !93
  br label %for.inc, !dbg !95

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !96
  %inc2 = add nsw i32 %4, 1, !dbg !96
  store i32 %inc2, i32* %i, align 4, !dbg !96
  br label %for.cond, !dbg !97, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !101
  call void @printIntLine(i32 %5), !dbg !102
  br label %if.end, !dbg !103

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_44_bad() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !110, metadata !DIExpression()), !dbg !112
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !113, metadata !DIExpression()), !dbg !117
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !118
  store i8* %arraydecay, i8** %data, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !120, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !123, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 -1, i32* %connectSocket, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !150, metadata !DIExpression()), !dbg !154
  %1 = load i8*, i8** %data, align 8, !dbg !155
  %call = call i64 @strlen(i8* %1) #8, !dbg !156
  store i64 %call, i64* %dataLen, align 8, !dbg !154
  br label %do.body, !dbg !157

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !158
  store i32 %call1, i32* %connectSocket, align 4, !dbg !160
  %2 = load i32, i32* %connectSocket, align 4, !dbg !161
  %cmp = icmp eq i32 %2, -1, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !165

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !167
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !168
  store i16 2, i16* %sin_family, align 4, !dbg !169
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !170
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !171
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !172
  store i32 %call2, i32* %s_addr, align 4, !dbg !173
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !174
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !175
  store i16 %call3, i16* %sin_port, align 2, !dbg !176
  %4 = load i32, i32* %connectSocket, align 4, !dbg !177
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !179
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !180
  %cmp5 = icmp eq i32 %call4, -1, !dbg !181
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !182

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !183

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !185
  %7 = load i8*, i8** %data, align 8, !dbg !186
  %8 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !188
  %9 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %9, !dbg !190
  %sub8 = sub i64 %sub, 1, !dbg !191
  %mul = mul i64 1, %sub8, !dbg !192
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !193
  %conv = trunc i64 %call9 to i32, !dbg !193
  store i32 %conv, i32* %recvResult, align 4, !dbg !194
  %10 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp10 = icmp eq i32 %10, -1, !dbg !197
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp12 = icmp eq i32 %11, 0, !dbg !200
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !201

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !202

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !204
  %13 = load i64, i64* %dataLen, align 8, !dbg !205
  %14 = load i32, i32* %recvResult, align 4, !dbg !206
  %conv16 = sext i32 %14 to i64, !dbg !206
  %div = udiv i64 %conv16, 1, !dbg !207
  %add = add i64 %13, %div, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !204
  store i8 0, i8* %arrayidx, align 1, !dbg !209
  %15 = load i8*, i8** %data, align 8, !dbg !210
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !211
  store i8* %call17, i8** %replace, align 8, !dbg !212
  %16 = load i8*, i8** %replace, align 8, !dbg !213
  %tobool = icmp ne i8* %16, null, !dbg !213
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !215

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !216
  store i8 0, i8* %17, align 1, !dbg !218
  br label %if.end19, !dbg !219

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !220
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !221
  store i8* %call20, i8** %replace, align 8, !dbg !222
  %19 = load i8*, i8** %replace, align 8, !dbg !223
  %tobool21 = icmp ne i8* %19, null, !dbg !223
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !225

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !226
  store i8 0, i8* %20, align 1, !dbg !228
  br label %if.end23, !dbg !229

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !230

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !231
  %cmp24 = icmp ne i32 %21, -1, !dbg !233
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !234

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !235
  %call27 = call i32 @close(i32 %22), !dbg !237
  br label %if.end28, !dbg !238

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !239
  %24 = load i8*, i8** %data, align 8, !dbg !240
  call void %23(i8* %24), !dbg !239
  ret void, !dbg !241
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #5

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !242 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i8*, i8** %data.addr, align 8, !dbg !252
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !254
  %cmp = icmp eq i32 %call, 1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !257
  store i32 0, i32* %i, align 4, !dbg !259
  br label %for.cond, !dbg !261

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !262
  %2 = load i32, i32* %n, align 4, !dbg !264
  %cmp1 = icmp slt i32 %1, %2, !dbg !265
  br i1 %cmp1, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !267
  %inc = add nsw i32 %3, 1, !dbg !267
  store i32 %inc, i32* %intVariable, align 4, !dbg !267
  br label %for.inc, !dbg !269

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !270
  %inc2 = add nsw i32 %4, 1, !dbg !270
  store i32 %inc2, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !274
  call void @printIntLine(i32 %5), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !278 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !281, metadata !DIExpression()), !dbg !282
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !284
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !284
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !285
  store i8* %arraydecay, i8** %data, align 8, !dbg !286
  %1 = load i8*, i8** %data, align 8, !dbg !287
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !288
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !289
  %3 = load i8*, i8** %data, align 8, !dbg !290
  call void %2(i8* %3), !dbg !289
  ret void, !dbg !291
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !292 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %i, metadata !295, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %n, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i8*, i8** %data.addr, align 8, !dbg !302
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !304
  %cmp = icmp eq i32 %call, 1, !dbg !305
  br i1 %cmp, label %if.then, label %if.end5, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !307
  %cmp1 = icmp slt i32 %1, 10000, !dbg !310
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !311

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !312
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !317
  %3 = load i32, i32* %n, align 4, !dbg !319
  %cmp3 = icmp slt i32 %2, %3, !dbg !320
  br i1 %cmp3, label %for.body, label %for.end, !dbg !321

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !322
  %inc = add nsw i32 %4, 1, !dbg !322
  store i32 %inc, i32* %intVariable, align 4, !dbg !322
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !325
  %inc4 = add nsw i32 %5, 1, !dbg !325
  store i32 %inc4, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !329
  call void @printIntLine(i32 %6), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !332

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !334 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !337, metadata !DIExpression()), !dbg !338
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !340
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !340
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !341
  store i8* %arraydecay, i8** %data, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !350, metadata !DIExpression()), !dbg !351
  store i32 -1, i32* %connectSocket, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !352, metadata !DIExpression()), !dbg !353
  %1 = load i8*, i8** %data, align 8, !dbg !354
  %call = call i64 @strlen(i8* %1) #8, !dbg !355
  store i64 %call, i64* %dataLen, align 8, !dbg !353
  br label %do.body, !dbg !356

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !357
  store i32 %call1, i32* %connectSocket, align 4, !dbg !359
  %2 = load i32, i32* %connectSocket, align 4, !dbg !360
  %cmp = icmp eq i32 %2, -1, !dbg !362
  br i1 %cmp, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !364

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !366
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !366
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !367
  store i16 2, i16* %sin_family, align 4, !dbg !368
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !369
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !370
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !371
  store i32 %call2, i32* %s_addr, align 4, !dbg !372
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !373
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !374
  store i16 %call3, i16* %sin_port, align 2, !dbg !375
  %4 = load i32, i32* %connectSocket, align 4, !dbg !376
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !378
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !379
  %cmp5 = icmp eq i32 %call4, -1, !dbg !380
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !381

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !382

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !384
  %7 = load i8*, i8** %data, align 8, !dbg !385
  %8 = load i64, i64* %dataLen, align 8, !dbg !386
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !387
  %9 = load i64, i64* %dataLen, align 8, !dbg !388
  %sub = sub i64 100, %9, !dbg !389
  %sub8 = sub i64 %sub, 1, !dbg !390
  %mul = mul i64 1, %sub8, !dbg !391
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !392
  %conv = trunc i64 %call9 to i32, !dbg !392
  store i32 %conv, i32* %recvResult, align 4, !dbg !393
  %10 = load i32, i32* %recvResult, align 4, !dbg !394
  %cmp10 = icmp eq i32 %10, -1, !dbg !396
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !397

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !398
  %cmp12 = icmp eq i32 %11, 0, !dbg !399
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !400

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !401

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !403
  %13 = load i64, i64* %dataLen, align 8, !dbg !404
  %14 = load i32, i32* %recvResult, align 4, !dbg !405
  %conv16 = sext i32 %14 to i64, !dbg !405
  %div = udiv i64 %conv16, 1, !dbg !406
  %add = add i64 %13, %div, !dbg !407
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !403
  store i8 0, i8* %arrayidx, align 1, !dbg !408
  %15 = load i8*, i8** %data, align 8, !dbg !409
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !410
  store i8* %call17, i8** %replace, align 8, !dbg !411
  %16 = load i8*, i8** %replace, align 8, !dbg !412
  %tobool = icmp ne i8* %16, null, !dbg !412
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !414

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !415
  store i8 0, i8* %17, align 1, !dbg !417
  br label %if.end19, !dbg !418

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !419
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !420
  store i8* %call20, i8** %replace, align 8, !dbg !421
  %19 = load i8*, i8** %replace, align 8, !dbg !422
  %tobool21 = icmp ne i8* %19, null, !dbg !422
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !424

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !425
  store i8 0, i8* %20, align 1, !dbg !427
  br label %if.end23, !dbg !428

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !429

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !430
  %cmp24 = icmp ne i32 %21, -1, !dbg !432
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !433

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !434
  %call27 = call i32 @close(i32 %22), !dbg !436
  br label %if.end28, !dbg !437

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !438
  %24 = load i8*, i8** %data, align 8, !dbg !439
  call void %23(i8* %24), !dbg !438
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_44_good() #0 !dbg !441 {
entry:
  call void @goodG2B(), !dbg !442
  call void @goodB2G(), !dbg !443
  ret void, !dbg !444
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_957/source_code")
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
!45 = !{!46, !59}
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
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0"}
!64 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59}
!67 = !{}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !64, file: !1, line: 50, type: !59)
!69 = !DILocation(line: 50, column: 21, scope: !64)
!70 = !DILocalVariable(name: "i", scope: !71, file: !1, line: 53, type: !72)
!71 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 5)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DILocation(line: 53, column: 13, scope: !71)
!74 = !DILocalVariable(name: "n", scope: !71, file: !1, line: 53, type: !72)
!75 = !DILocation(line: 53, column: 16, scope: !71)
!76 = !DILocalVariable(name: "intVariable", scope: !71, file: !1, line: 53, type: !72)
!77 = !DILocation(line: 53, column: 19, scope: !71)
!78 = !DILocation(line: 54, column: 20, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 54, column: 13)
!80 = !DILocation(line: 54, column: 13, scope: !79)
!81 = !DILocation(line: 54, column: 36, scope: !79)
!82 = !DILocation(line: 54, column: 13, scope: !71)
!83 = !DILocation(line: 57, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 55, column: 9)
!85 = !DILocation(line: 58, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !1, line: 58, column: 13)
!87 = !DILocation(line: 58, column: 18, scope: !86)
!88 = !DILocation(line: 58, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 13)
!90 = !DILocation(line: 58, column: 29, scope: !89)
!91 = !DILocation(line: 58, column: 27, scope: !89)
!92 = !DILocation(line: 58, column: 13, scope: !86)
!93 = !DILocation(line: 61, column: 28, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 59, column: 13)
!95 = !DILocation(line: 62, column: 13, scope: !94)
!96 = !DILocation(line: 58, column: 33, scope: !89)
!97 = !DILocation(line: 58, column: 13, scope: !89)
!98 = distinct !{!98, !92, !99, !100}
!99 = !DILocation(line: 62, column: 13, scope: !86)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !DILocation(line: 63, column: 26, scope: !84)
!102 = !DILocation(line: 63, column: 13, scope: !84)
!103 = !DILocation(line: 64, column: 9, scope: !84)
!104 = !DILocation(line: 66, column: 1, scope: !64)
!105 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44_bad", scope: !1, file: !1, line: 68, type: !106, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 70, type: !59)
!109 = !DILocation(line: 70, column: 12, scope: !105)
!110 = !DILocalVariable(name: "funcPtr", scope: !105, file: !1, line: 72, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!112 = !DILocation(line: 72, column: 12, scope: !105)
!113 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !1, line: 73, type: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 100)
!117 = !DILocation(line: 73, column: 10, scope: !105)
!118 = !DILocation(line: 74, column: 12, scope: !105)
!119 = !DILocation(line: 74, column: 10, scope: !105)
!120 = !DILocalVariable(name: "recvResult", scope: !121, file: !1, line: 80, type: !72)
!121 = distinct !DILexicalBlock(scope: !105, file: !1, line: 75, column: 5)
!122 = !DILocation(line: 80, column: 13, scope: !121)
!123 = !DILocalVariable(name: "service", scope: !121, file: !1, line: 81, type: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !125)
!125 = !{!126, !127, !133, !140}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !124, file: !17, line: 240, baseType: !51, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !124, file: !17, line: 241, baseType: !128, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 25, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !132, line: 40, baseType: !53)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !124, file: !17, line: 242, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !134, file: !17, line: 33, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 26, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !132, line: 42, baseType: !5)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !124, file: !17, line: 245, baseType: !141, size: 64, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !143)
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DILocation(line: 81, column: 28, scope: !121)
!146 = !DILocalVariable(name: "replace", scope: !121, file: !1, line: 82, type: !59)
!147 = !DILocation(line: 82, column: 15, scope: !121)
!148 = !DILocalVariable(name: "connectSocket", scope: !121, file: !1, line: 83, type: !72)
!149 = !DILocation(line: 83, column: 16, scope: !121)
!150 = !DILocalVariable(name: "dataLen", scope: !121, file: !1, line: 84, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!153 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!154 = !DILocation(line: 84, column: 16, scope: !121)
!155 = !DILocation(line: 84, column: 33, scope: !121)
!156 = !DILocation(line: 84, column: 26, scope: !121)
!157 = !DILocation(line: 85, column: 9, scope: !121)
!158 = !DILocation(line: 95, column: 29, scope: !159)
!159 = distinct !DILexicalBlock(scope: !121, file: !1, line: 86, column: 9)
!160 = !DILocation(line: 95, column: 27, scope: !159)
!161 = !DILocation(line: 96, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !1, line: 96, column: 17)
!163 = !DILocation(line: 96, column: 31, scope: !162)
!164 = !DILocation(line: 96, column: 17, scope: !159)
!165 = !DILocation(line: 98, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 97, column: 13)
!167 = !DILocation(line: 100, column: 13, scope: !159)
!168 = !DILocation(line: 101, column: 21, scope: !159)
!169 = !DILocation(line: 101, column: 32, scope: !159)
!170 = !DILocation(line: 102, column: 39, scope: !159)
!171 = !DILocation(line: 102, column: 21, scope: !159)
!172 = !DILocation(line: 102, column: 30, scope: !159)
!173 = !DILocation(line: 102, column: 37, scope: !159)
!174 = !DILocation(line: 103, column: 32, scope: !159)
!175 = !DILocation(line: 103, column: 21, scope: !159)
!176 = !DILocation(line: 103, column: 30, scope: !159)
!177 = !DILocation(line: 104, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !159, file: !1, line: 104, column: 17)
!179 = !DILocation(line: 104, column: 40, scope: !178)
!180 = !DILocation(line: 104, column: 17, scope: !178)
!181 = !DILocation(line: 104, column: 85, scope: !178)
!182 = !DILocation(line: 104, column: 17, scope: !159)
!183 = !DILocation(line: 106, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 105, column: 13)
!185 = !DILocation(line: 111, column: 31, scope: !159)
!186 = !DILocation(line: 111, column: 55, scope: !159)
!187 = !DILocation(line: 111, column: 62, scope: !159)
!188 = !DILocation(line: 111, column: 60, scope: !159)
!189 = !DILocation(line: 111, column: 94, scope: !159)
!190 = !DILocation(line: 111, column: 92, scope: !159)
!191 = !DILocation(line: 111, column: 102, scope: !159)
!192 = !DILocation(line: 111, column: 85, scope: !159)
!193 = !DILocation(line: 111, column: 26, scope: !159)
!194 = !DILocation(line: 111, column: 24, scope: !159)
!195 = !DILocation(line: 112, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !159, file: !1, line: 112, column: 17)
!197 = !DILocation(line: 112, column: 28, scope: !196)
!198 = !DILocation(line: 112, column: 44, scope: !196)
!199 = !DILocation(line: 112, column: 47, scope: !196)
!200 = !DILocation(line: 112, column: 58, scope: !196)
!201 = !DILocation(line: 112, column: 17, scope: !159)
!202 = !DILocation(line: 114, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !1, line: 113, column: 13)
!204 = !DILocation(line: 117, column: 13, scope: !159)
!205 = !DILocation(line: 117, column: 18, scope: !159)
!206 = !DILocation(line: 117, column: 28, scope: !159)
!207 = !DILocation(line: 117, column: 39, scope: !159)
!208 = !DILocation(line: 117, column: 26, scope: !159)
!209 = !DILocation(line: 117, column: 55, scope: !159)
!210 = !DILocation(line: 119, column: 30, scope: !159)
!211 = !DILocation(line: 119, column: 23, scope: !159)
!212 = !DILocation(line: 119, column: 21, scope: !159)
!213 = !DILocation(line: 120, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !159, file: !1, line: 120, column: 17)
!215 = !DILocation(line: 120, column: 17, scope: !159)
!216 = !DILocation(line: 122, column: 18, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 121, column: 13)
!218 = !DILocation(line: 122, column: 26, scope: !217)
!219 = !DILocation(line: 123, column: 13, scope: !217)
!220 = !DILocation(line: 124, column: 30, scope: !159)
!221 = !DILocation(line: 124, column: 23, scope: !159)
!222 = !DILocation(line: 124, column: 21, scope: !159)
!223 = !DILocation(line: 125, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !159, file: !1, line: 125, column: 17)
!225 = !DILocation(line: 125, column: 17, scope: !159)
!226 = !DILocation(line: 127, column: 18, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 126, column: 13)
!228 = !DILocation(line: 127, column: 26, scope: !227)
!229 = !DILocation(line: 128, column: 13, scope: !227)
!230 = !DILocation(line: 129, column: 9, scope: !159)
!231 = !DILocation(line: 131, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !121, file: !1, line: 131, column: 13)
!233 = !DILocation(line: 131, column: 27, scope: !232)
!234 = !DILocation(line: 131, column: 13, scope: !121)
!235 = !DILocation(line: 133, column: 26, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 132, column: 9)
!237 = !DILocation(line: 133, column: 13, scope: !236)
!238 = !DILocation(line: 134, column: 9, scope: !236)
!239 = !DILocation(line: 143, column: 5, scope: !105)
!240 = !DILocation(line: 143, column: 13, scope: !105)
!241 = !DILocation(line: 144, column: 1, scope: !105)
!242 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 151, type: !65, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!243 = !DILocalVariable(name: "data", arg: 1, scope: !242, file: !1, line: 151, type: !59)
!244 = !DILocation(line: 151, column: 25, scope: !242)
!245 = !DILocalVariable(name: "i", scope: !246, file: !1, line: 154, type: !72)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 153, column: 5)
!247 = !DILocation(line: 154, column: 13, scope: !246)
!248 = !DILocalVariable(name: "n", scope: !246, file: !1, line: 154, type: !72)
!249 = !DILocation(line: 154, column: 16, scope: !246)
!250 = !DILocalVariable(name: "intVariable", scope: !246, file: !1, line: 154, type: !72)
!251 = !DILocation(line: 154, column: 19, scope: !246)
!252 = !DILocation(line: 155, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 155, column: 13)
!254 = !DILocation(line: 155, column: 13, scope: !253)
!255 = !DILocation(line: 155, column: 36, scope: !253)
!256 = !DILocation(line: 155, column: 13, scope: !246)
!257 = !DILocation(line: 158, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !1, line: 156, column: 9)
!259 = !DILocation(line: 159, column: 20, scope: !260)
!260 = distinct !DILexicalBlock(scope: !258, file: !1, line: 159, column: 13)
!261 = !DILocation(line: 159, column: 18, scope: !260)
!262 = !DILocation(line: 159, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 159, column: 13)
!264 = !DILocation(line: 159, column: 29, scope: !263)
!265 = !DILocation(line: 159, column: 27, scope: !263)
!266 = !DILocation(line: 159, column: 13, scope: !260)
!267 = !DILocation(line: 162, column: 28, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !1, line: 160, column: 13)
!269 = !DILocation(line: 163, column: 13, scope: !268)
!270 = !DILocation(line: 159, column: 33, scope: !263)
!271 = !DILocation(line: 159, column: 13, scope: !263)
!272 = distinct !{!272, !266, !273, !100}
!273 = !DILocation(line: 163, column: 13, scope: !260)
!274 = !DILocation(line: 164, column: 26, scope: !258)
!275 = !DILocation(line: 164, column: 13, scope: !258)
!276 = !DILocation(line: 165, column: 9, scope: !258)
!277 = !DILocation(line: 167, column: 1, scope: !242)
!278 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 169, type: !106, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!279 = !DILocalVariable(name: "data", scope: !278, file: !1, line: 171, type: !59)
!280 = !DILocation(line: 171, column: 12, scope: !278)
!281 = !DILocalVariable(name: "funcPtr", scope: !278, file: !1, line: 172, type: !111)
!282 = !DILocation(line: 172, column: 12, scope: !278)
!283 = !DILocalVariable(name: "dataBuffer", scope: !278, file: !1, line: 173, type: !114)
!284 = !DILocation(line: 173, column: 10, scope: !278)
!285 = !DILocation(line: 174, column: 12, scope: !278)
!286 = !DILocation(line: 174, column: 10, scope: !278)
!287 = !DILocation(line: 176, column: 12, scope: !278)
!288 = !DILocation(line: 176, column: 5, scope: !278)
!289 = !DILocation(line: 177, column: 5, scope: !278)
!290 = !DILocation(line: 177, column: 13, scope: !278)
!291 = !DILocation(line: 178, column: 1, scope: !278)
!292 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 181, type: !65, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!293 = !DILocalVariable(name: "data", arg: 1, scope: !292, file: !1, line: 181, type: !59)
!294 = !DILocation(line: 181, column: 25, scope: !292)
!295 = !DILocalVariable(name: "i", scope: !296, file: !1, line: 184, type: !72)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 183, column: 5)
!297 = !DILocation(line: 184, column: 13, scope: !296)
!298 = !DILocalVariable(name: "n", scope: !296, file: !1, line: 184, type: !72)
!299 = !DILocation(line: 184, column: 16, scope: !296)
!300 = !DILocalVariable(name: "intVariable", scope: !296, file: !1, line: 184, type: !72)
!301 = !DILocation(line: 184, column: 19, scope: !296)
!302 = !DILocation(line: 185, column: 20, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 185, column: 13)
!304 = !DILocation(line: 185, column: 13, scope: !303)
!305 = !DILocation(line: 185, column: 36, scope: !303)
!306 = !DILocation(line: 185, column: 13, scope: !296)
!307 = !DILocation(line: 188, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 188, column: 17)
!309 = distinct !DILexicalBlock(scope: !303, file: !1, line: 186, column: 9)
!310 = !DILocation(line: 188, column: 19, scope: !308)
!311 = !DILocation(line: 188, column: 17, scope: !309)
!312 = !DILocation(line: 190, column: 29, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 189, column: 13)
!314 = !DILocation(line: 191, column: 24, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 191, column: 17)
!316 = !DILocation(line: 191, column: 22, scope: !315)
!317 = !DILocation(line: 191, column: 29, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 191, column: 17)
!319 = !DILocation(line: 191, column: 33, scope: !318)
!320 = !DILocation(line: 191, column: 31, scope: !318)
!321 = !DILocation(line: 191, column: 17, scope: !315)
!322 = !DILocation(line: 194, column: 32, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !1, line: 192, column: 17)
!324 = !DILocation(line: 195, column: 17, scope: !323)
!325 = !DILocation(line: 191, column: 37, scope: !318)
!326 = !DILocation(line: 191, column: 17, scope: !318)
!327 = distinct !{!327, !321, !328, !100}
!328 = !DILocation(line: 195, column: 17, scope: !315)
!329 = !DILocation(line: 196, column: 30, scope: !313)
!330 = !DILocation(line: 196, column: 17, scope: !313)
!331 = !DILocation(line: 197, column: 13, scope: !313)
!332 = !DILocation(line: 198, column: 9, scope: !309)
!333 = !DILocation(line: 200, column: 1, scope: !292)
!334 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 202, type: !106, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!335 = !DILocalVariable(name: "data", scope: !334, file: !1, line: 204, type: !59)
!336 = !DILocation(line: 204, column: 12, scope: !334)
!337 = !DILocalVariable(name: "funcPtr", scope: !334, file: !1, line: 205, type: !111)
!338 = !DILocation(line: 205, column: 12, scope: !334)
!339 = !DILocalVariable(name: "dataBuffer", scope: !334, file: !1, line: 206, type: !114)
!340 = !DILocation(line: 206, column: 10, scope: !334)
!341 = !DILocation(line: 207, column: 12, scope: !334)
!342 = !DILocation(line: 207, column: 10, scope: !334)
!343 = !DILocalVariable(name: "recvResult", scope: !344, file: !1, line: 213, type: !72)
!344 = distinct !DILexicalBlock(scope: !334, file: !1, line: 208, column: 5)
!345 = !DILocation(line: 213, column: 13, scope: !344)
!346 = !DILocalVariable(name: "service", scope: !344, file: !1, line: 214, type: !124)
!347 = !DILocation(line: 214, column: 28, scope: !344)
!348 = !DILocalVariable(name: "replace", scope: !344, file: !1, line: 215, type: !59)
!349 = !DILocation(line: 215, column: 15, scope: !344)
!350 = !DILocalVariable(name: "connectSocket", scope: !344, file: !1, line: 216, type: !72)
!351 = !DILocation(line: 216, column: 16, scope: !344)
!352 = !DILocalVariable(name: "dataLen", scope: !344, file: !1, line: 217, type: !151)
!353 = !DILocation(line: 217, column: 16, scope: !344)
!354 = !DILocation(line: 217, column: 33, scope: !344)
!355 = !DILocation(line: 217, column: 26, scope: !344)
!356 = !DILocation(line: 218, column: 9, scope: !344)
!357 = !DILocation(line: 228, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !344, file: !1, line: 219, column: 9)
!359 = !DILocation(line: 228, column: 27, scope: !358)
!360 = !DILocation(line: 229, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 229, column: 17)
!362 = !DILocation(line: 229, column: 31, scope: !361)
!363 = !DILocation(line: 229, column: 17, scope: !358)
!364 = !DILocation(line: 231, column: 17, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 230, column: 13)
!366 = !DILocation(line: 233, column: 13, scope: !358)
!367 = !DILocation(line: 234, column: 21, scope: !358)
!368 = !DILocation(line: 234, column: 32, scope: !358)
!369 = !DILocation(line: 235, column: 39, scope: !358)
!370 = !DILocation(line: 235, column: 21, scope: !358)
!371 = !DILocation(line: 235, column: 30, scope: !358)
!372 = !DILocation(line: 235, column: 37, scope: !358)
!373 = !DILocation(line: 236, column: 32, scope: !358)
!374 = !DILocation(line: 236, column: 21, scope: !358)
!375 = !DILocation(line: 236, column: 30, scope: !358)
!376 = !DILocation(line: 237, column: 25, scope: !377)
!377 = distinct !DILexicalBlock(scope: !358, file: !1, line: 237, column: 17)
!378 = !DILocation(line: 237, column: 40, scope: !377)
!379 = !DILocation(line: 237, column: 17, scope: !377)
!380 = !DILocation(line: 237, column: 85, scope: !377)
!381 = !DILocation(line: 237, column: 17, scope: !358)
!382 = !DILocation(line: 239, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !1, line: 238, column: 13)
!384 = !DILocation(line: 244, column: 31, scope: !358)
!385 = !DILocation(line: 244, column: 55, scope: !358)
!386 = !DILocation(line: 244, column: 62, scope: !358)
!387 = !DILocation(line: 244, column: 60, scope: !358)
!388 = !DILocation(line: 244, column: 94, scope: !358)
!389 = !DILocation(line: 244, column: 92, scope: !358)
!390 = !DILocation(line: 244, column: 102, scope: !358)
!391 = !DILocation(line: 244, column: 85, scope: !358)
!392 = !DILocation(line: 244, column: 26, scope: !358)
!393 = !DILocation(line: 244, column: 24, scope: !358)
!394 = !DILocation(line: 245, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !358, file: !1, line: 245, column: 17)
!396 = !DILocation(line: 245, column: 28, scope: !395)
!397 = !DILocation(line: 245, column: 44, scope: !395)
!398 = !DILocation(line: 245, column: 47, scope: !395)
!399 = !DILocation(line: 245, column: 58, scope: !395)
!400 = !DILocation(line: 245, column: 17, scope: !358)
!401 = !DILocation(line: 247, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !1, line: 246, column: 13)
!403 = !DILocation(line: 250, column: 13, scope: !358)
!404 = !DILocation(line: 250, column: 18, scope: !358)
!405 = !DILocation(line: 250, column: 28, scope: !358)
!406 = !DILocation(line: 250, column: 39, scope: !358)
!407 = !DILocation(line: 250, column: 26, scope: !358)
!408 = !DILocation(line: 250, column: 55, scope: !358)
!409 = !DILocation(line: 252, column: 30, scope: !358)
!410 = !DILocation(line: 252, column: 23, scope: !358)
!411 = !DILocation(line: 252, column: 21, scope: !358)
!412 = !DILocation(line: 253, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !358, file: !1, line: 253, column: 17)
!414 = !DILocation(line: 253, column: 17, scope: !358)
!415 = !DILocation(line: 255, column: 18, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !1, line: 254, column: 13)
!417 = !DILocation(line: 255, column: 26, scope: !416)
!418 = !DILocation(line: 256, column: 13, scope: !416)
!419 = !DILocation(line: 257, column: 30, scope: !358)
!420 = !DILocation(line: 257, column: 23, scope: !358)
!421 = !DILocation(line: 257, column: 21, scope: !358)
!422 = !DILocation(line: 258, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !358, file: !1, line: 258, column: 17)
!424 = !DILocation(line: 258, column: 17, scope: !358)
!425 = !DILocation(line: 260, column: 18, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !1, line: 259, column: 13)
!427 = !DILocation(line: 260, column: 26, scope: !426)
!428 = !DILocation(line: 261, column: 13, scope: !426)
!429 = !DILocation(line: 262, column: 9, scope: !358)
!430 = !DILocation(line: 264, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !344, file: !1, line: 264, column: 13)
!432 = !DILocation(line: 264, column: 27, scope: !431)
!433 = !DILocation(line: 264, column: 13, scope: !344)
!434 = !DILocation(line: 266, column: 26, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !1, line: 265, column: 9)
!436 = !DILocation(line: 266, column: 13, scope: !435)
!437 = !DILocation(line: 267, column: 9, scope: !435)
!438 = !DILocation(line: 275, column: 5, scope: !334)
!439 = !DILocation(line: 275, column: 13, scope: !334)
!440 = !DILocation(line: 276, column: 1, scope: !334)
!441 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_44_good", scope: !1, file: !1, line: 278, type: !106, scopeLine: 279, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!442 = !DILocation(line: 280, column: 5, scope: !441)
!443 = !DILocation(line: 281, column: 5, scope: !441)
!444 = !DILocation(line: 282, column: 1, scope: !441)
