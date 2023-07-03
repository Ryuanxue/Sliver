; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_45.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData = dso_local global i8* null, align 8, !dbg !63
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData = dso_local global i8* null, align 8, !dbg !65

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !71 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData, align 8, !dbg !77
  store i8* %0, i8** %data, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %n, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !84, metadata !DIExpression()), !dbg !85
  %1 = load i8*, i8** %data, align 8, !dbg !86
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !88
  %cmp = icmp eq i32 %call, 1, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !91
  store i32 0, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !96
  %3 = load i32, i32* %n, align 4, !dbg !98
  %cmp1 = icmp slt i32 %2, %3, !dbg !99
  br i1 %cmp1, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !101
  %inc = add nsw i32 %4, 1, !dbg !101
  store i32 %inc, i32* %intVariable, align 4, !dbg !101
  br label %for.inc, !dbg !103

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !104
  %inc2 = add nsw i32 %5, 1, !dbg !104
  store i32 %inc2, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !105, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !109
  call void @printIntLine(i32 %6), !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !112
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad() #0 !dbg !113 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !116, metadata !DIExpression()), !dbg !120
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !120
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !121
  store i8* %arraydecay, i8** %data, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !126, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 -1, i32* %connectSocket, align 4, !dbg !152
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !153, metadata !DIExpression()), !dbg !157
  %1 = load i8*, i8** %data, align 8, !dbg !158
  %call = call i64 @strlen(i8* %1) #8, !dbg !159
  store i64 %call, i64* %dataLen, align 8, !dbg !157
  br label %do.body, !dbg !160

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !161
  store i32 %call1, i32* %connectSocket, align 4, !dbg !163
  %2 = load i32, i32* %connectSocket, align 4, !dbg !164
  %cmp = icmp eq i32 %2, -1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !168

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !170
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !171
  store i16 2, i16* %sin_family, align 4, !dbg !172
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !173
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !174
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !175
  store i32 %call2, i32* %s_addr, align 4, !dbg !176
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !177
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !178
  store i16 %call3, i16* %sin_port, align 2, !dbg !179
  %4 = load i32, i32* %connectSocket, align 4, !dbg !180
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !182
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !183
  %cmp5 = icmp eq i32 %call4, -1, !dbg !184
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !185

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !186

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !188
  %7 = load i8*, i8** %data, align 8, !dbg !189
  %8 = load i64, i64* %dataLen, align 8, !dbg !190
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !191
  %9 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %9, !dbg !193
  %sub8 = sub i64 %sub, 1, !dbg !194
  %mul = mul i64 1, %sub8, !dbg !195
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !196
  %conv = trunc i64 %call9 to i32, !dbg !196
  store i32 %conv, i32* %recvResult, align 4, !dbg !197
  %10 = load i32, i32* %recvResult, align 4, !dbg !198
  %cmp10 = icmp eq i32 %10, -1, !dbg !200
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !201

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !202
  %cmp12 = icmp eq i32 %11, 0, !dbg !203
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !204

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !205

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !207
  %13 = load i64, i64* %dataLen, align 8, !dbg !208
  %14 = load i32, i32* %recvResult, align 4, !dbg !209
  %conv16 = sext i32 %14 to i64, !dbg !209
  %div = udiv i64 %conv16, 1, !dbg !210
  %add = add i64 %13, %div, !dbg !211
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !207
  store i8 0, i8* %arrayidx, align 1, !dbg !212
  %15 = load i8*, i8** %data, align 8, !dbg !213
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !214
  store i8* %call17, i8** %replace, align 8, !dbg !215
  %16 = load i8*, i8** %replace, align 8, !dbg !216
  %tobool = icmp ne i8* %16, null, !dbg !216
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !218

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !219
  store i8 0, i8* %17, align 1, !dbg !221
  br label %if.end19, !dbg !222

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !223
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !224
  store i8* %call20, i8** %replace, align 8, !dbg !225
  %19 = load i8*, i8** %replace, align 8, !dbg !226
  %tobool21 = icmp ne i8* %19, null, !dbg !226
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !228

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !229
  store i8 0, i8* %20, align 1, !dbg !231
  br label %if.end23, !dbg !232

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !233

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !234
  %cmp24 = icmp ne i32 %21, -1, !dbg !236
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !237

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !238
  %call27 = call i32 @close(i32 %22), !dbg !240
  br label %if.end28, !dbg !241

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !242
  store i8* %23, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData, align 8, !dbg !243
  call void @badSink(), !dbg !244
  ret void, !dbg !245
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
define dso_local void @goodG2BSink() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData, align 8, !dbg !249
  store i8* %0, i8** %data, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %i, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %n, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !255, metadata !DIExpression()), !dbg !256
  %1 = load i8*, i8** %data, align 8, !dbg !257
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !259
  %cmp = icmp eq i32 %call, 1, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !267
  %3 = load i32, i32* %n, align 4, !dbg !269
  %cmp1 = icmp slt i32 %2, %3, !dbg !270
  br i1 %cmp1, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %4, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !275
  %inc2 = add nsw i32 %5, 1, !dbg !275
  store i32 %inc2, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %6), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !283 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !287
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !287
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !288
  store i8* %arraydecay, i8** %data, align 8, !dbg !289
  %1 = load i8*, i8** %data, align 8, !dbg !290
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !291
  %2 = load i8*, i8** %data, align 8, !dbg !292
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData, align 8, !dbg !293
  call void @goodG2BSink(), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData, align 8, !dbg !299
  store i8* %0, i8** %data, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %i, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %n, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !305, metadata !DIExpression()), !dbg !306
  %1 = load i8*, i8** %data, align 8, !dbg !307
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !309
  %cmp = icmp eq i32 %call, 1, !dbg !310
  br i1 %cmp, label %if.then, label %if.end5, !dbg !311

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !312
  %cmp1 = icmp slt i32 %2, 10000, !dbg !315
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !316

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !317
  store i32 0, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !321

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !322
  %4 = load i32, i32* %n, align 4, !dbg !324
  %cmp3 = icmp slt i32 %3, %4, !dbg !325
  br i1 %cmp3, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !327
  %inc = add nsw i32 %5, 1, !dbg !327
  store i32 %inc, i32* %intVariable, align 4, !dbg !327
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !330
  %inc4 = add nsw i32 %6, 1, !dbg !330
  store i32 %inc4, i32* %i, align 4, !dbg !330
  br label %for.cond, !dbg !331, !llvm.loop !332

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !334
  call void @printIntLine(i32 %7), !dbg !335
  br label %if.end, !dbg !336

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !337

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !339 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !343
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !343
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !344
  store i8* %arraydecay, i8** %data, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !353, metadata !DIExpression()), !dbg !354
  store i32 -1, i32* %connectSocket, align 4, !dbg !354
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !355, metadata !DIExpression()), !dbg !356
  %1 = load i8*, i8** %data, align 8, !dbg !357
  %call = call i64 @strlen(i8* %1) #8, !dbg !358
  store i64 %call, i64* %dataLen, align 8, !dbg !356
  br label %do.body, !dbg !359

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !360
  store i32 %call1, i32* %connectSocket, align 4, !dbg !362
  %2 = load i32, i32* %connectSocket, align 4, !dbg !363
  %cmp = icmp eq i32 %2, -1, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !367

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !369
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !369
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !370
  store i16 2, i16* %sin_family, align 4, !dbg !371
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !372
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !373
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !374
  store i32 %call2, i32* %s_addr, align 4, !dbg !375
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !376
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !377
  store i16 %call3, i16* %sin_port, align 2, !dbg !378
  %4 = load i32, i32* %connectSocket, align 4, !dbg !379
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !381
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !382
  %cmp5 = icmp eq i32 %call4, -1, !dbg !383
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !384

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !385

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !387
  %7 = load i8*, i8** %data, align 8, !dbg !388
  %8 = load i64, i64* %dataLen, align 8, !dbg !389
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !390
  %9 = load i64, i64* %dataLen, align 8, !dbg !391
  %sub = sub i64 100, %9, !dbg !392
  %sub8 = sub i64 %sub, 1, !dbg !393
  %mul = mul i64 1, %sub8, !dbg !394
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !395
  %conv = trunc i64 %call9 to i32, !dbg !395
  store i32 %conv, i32* %recvResult, align 4, !dbg !396
  %10 = load i32, i32* %recvResult, align 4, !dbg !397
  %cmp10 = icmp eq i32 %10, -1, !dbg !399
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !400

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !401
  %cmp12 = icmp eq i32 %11, 0, !dbg !402
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !403

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !404

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !406
  %13 = load i64, i64* %dataLen, align 8, !dbg !407
  %14 = load i32, i32* %recvResult, align 4, !dbg !408
  %conv16 = sext i32 %14 to i64, !dbg !408
  %div = udiv i64 %conv16, 1, !dbg !409
  %add = add i64 %13, %div, !dbg !410
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !406
  store i8 0, i8* %arrayidx, align 1, !dbg !411
  %15 = load i8*, i8** %data, align 8, !dbg !412
  %call17 = call i8* @strchr(i8* %15, i32 13) #8, !dbg !413
  store i8* %call17, i8** %replace, align 8, !dbg !414
  %16 = load i8*, i8** %replace, align 8, !dbg !415
  %tobool = icmp ne i8* %16, null, !dbg !415
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !417

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !418
  store i8 0, i8* %17, align 1, !dbg !420
  br label %if.end19, !dbg !421

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !422
  %call20 = call i8* @strchr(i8* %18, i32 10) #8, !dbg !423
  store i8* %call20, i8** %replace, align 8, !dbg !424
  %19 = load i8*, i8** %replace, align 8, !dbg !425
  %tobool21 = icmp ne i8* %19, null, !dbg !425
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !427

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !428
  store i8 0, i8* %20, align 1, !dbg !430
  br label %if.end23, !dbg !431

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !432

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !433
  %cmp24 = icmp ne i32 %21, -1, !dbg !435
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !436

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !437
  %call27 = call i32 @close(i32 %22), !dbg !439
  br label %if.end28, !dbg !440

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %data, align 8, !dbg !441
  store i8* %23, i8** @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData, align 8, !dbg !442
  call void @goodB2GSink(), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_45_good() #0 !dbg !445 {
entry:
  call void @goodG2B(), !dbg !446
  call void @goodB2G(), !dbg !447
  ret void, !dbg !448
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_badData", scope: !2, file: !3, line: 48, type: !61, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_958/source_code")
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
!47 = !{!48, !61}
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
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!62 = !{!0, !63, !65}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodG2BData", scope: !2, file: !3, line: 49, type: !61, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_goodB2GData", scope: !2, file: !3, line: 50, type: !61, isLocal: false, isDefinition: true)
!67 = !{i32 7, !"Dwarf Version", i32 4}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{!"clang version 12.0.0"}
!71 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 54, type: !72, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null}
!74 = !{}
!75 = !DILocalVariable(name: "data", scope: !71, file: !3, line: 56, type: !61)
!76 = !DILocation(line: 56, column: 12, scope: !71)
!77 = !DILocation(line: 56, column: 19, scope: !71)
!78 = !DILocalVariable(name: "i", scope: !79, file: !3, line: 58, type: !80)
!79 = distinct !DILexicalBlock(scope: !71, file: !3, line: 57, column: 5)
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DILocation(line: 58, column: 13, scope: !79)
!82 = !DILocalVariable(name: "n", scope: !79, file: !3, line: 58, type: !80)
!83 = !DILocation(line: 58, column: 16, scope: !79)
!84 = !DILocalVariable(name: "intVariable", scope: !79, file: !3, line: 58, type: !80)
!85 = !DILocation(line: 58, column: 19, scope: !79)
!86 = !DILocation(line: 59, column: 20, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !3, line: 59, column: 13)
!88 = !DILocation(line: 59, column: 13, scope: !87)
!89 = !DILocation(line: 59, column: 36, scope: !87)
!90 = !DILocation(line: 59, column: 13, scope: !79)
!91 = !DILocation(line: 62, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !3, line: 60, column: 9)
!93 = !DILocation(line: 63, column: 20, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !3, line: 63, column: 13)
!95 = !DILocation(line: 63, column: 18, scope: !94)
!96 = !DILocation(line: 63, column: 25, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !3, line: 63, column: 13)
!98 = !DILocation(line: 63, column: 29, scope: !97)
!99 = !DILocation(line: 63, column: 27, scope: !97)
!100 = !DILocation(line: 63, column: 13, scope: !94)
!101 = !DILocation(line: 66, column: 28, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !3, line: 64, column: 13)
!103 = !DILocation(line: 67, column: 13, scope: !102)
!104 = !DILocation(line: 63, column: 33, scope: !97)
!105 = !DILocation(line: 63, column: 13, scope: !97)
!106 = distinct !{!106, !100, !107, !108}
!107 = !DILocation(line: 67, column: 13, scope: !94)
!108 = !{!"llvm.loop.mustprogress"}
!109 = !DILocation(line: 68, column: 26, scope: !92)
!110 = !DILocation(line: 68, column: 13, scope: !92)
!111 = !DILocation(line: 69, column: 9, scope: !92)
!112 = !DILocation(line: 71, column: 1, scope: !71)
!113 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_bad", scope: !3, file: !3, line: 73, type: !72, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!114 = !DILocalVariable(name: "data", scope: !113, file: !3, line: 75, type: !61)
!115 = !DILocation(line: 75, column: 12, scope: !113)
!116 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !3, line: 76, type: !117)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 100)
!120 = !DILocation(line: 76, column: 10, scope: !113)
!121 = !DILocation(line: 77, column: 12, scope: !113)
!122 = !DILocation(line: 77, column: 10, scope: !113)
!123 = !DILocalVariable(name: "recvResult", scope: !124, file: !3, line: 83, type: !80)
!124 = distinct !DILexicalBlock(scope: !113, file: !3, line: 78, column: 5)
!125 = !DILocation(line: 83, column: 13, scope: !124)
!126 = !DILocalVariable(name: "service", scope: !124, file: !3, line: 84, type: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !128)
!128 = !{!129, !130, !136, !143}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !127, file: !19, line: 240, baseType: !53, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !127, file: !19, line: 241, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !133, line: 25, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !135, line: 40, baseType: !55)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !127, file: !19, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !19, line: 33, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 26, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !135, line: 42, baseType: !7)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !127, file: !19, line: 245, baseType: !144, size: 64, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !146)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DILocation(line: 84, column: 28, scope: !124)
!149 = !DILocalVariable(name: "replace", scope: !124, file: !3, line: 85, type: !61)
!150 = !DILocation(line: 85, column: 15, scope: !124)
!151 = !DILocalVariable(name: "connectSocket", scope: !124, file: !3, line: 86, type: !80)
!152 = !DILocation(line: 86, column: 16, scope: !124)
!153 = !DILocalVariable(name: "dataLen", scope: !124, file: !3, line: 87, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 46, baseType: !156)
!155 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!156 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!157 = !DILocation(line: 87, column: 16, scope: !124)
!158 = !DILocation(line: 87, column: 33, scope: !124)
!159 = !DILocation(line: 87, column: 26, scope: !124)
!160 = !DILocation(line: 88, column: 9, scope: !124)
!161 = !DILocation(line: 98, column: 29, scope: !162)
!162 = distinct !DILexicalBlock(scope: !124, file: !3, line: 89, column: 9)
!163 = !DILocation(line: 98, column: 27, scope: !162)
!164 = !DILocation(line: 99, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 99, column: 17)
!166 = !DILocation(line: 99, column: 31, scope: !165)
!167 = !DILocation(line: 99, column: 17, scope: !162)
!168 = !DILocation(line: 101, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 100, column: 13)
!170 = !DILocation(line: 103, column: 13, scope: !162)
!171 = !DILocation(line: 104, column: 21, scope: !162)
!172 = !DILocation(line: 104, column: 32, scope: !162)
!173 = !DILocation(line: 105, column: 39, scope: !162)
!174 = !DILocation(line: 105, column: 21, scope: !162)
!175 = !DILocation(line: 105, column: 30, scope: !162)
!176 = !DILocation(line: 105, column: 37, scope: !162)
!177 = !DILocation(line: 106, column: 32, scope: !162)
!178 = !DILocation(line: 106, column: 21, scope: !162)
!179 = !DILocation(line: 106, column: 30, scope: !162)
!180 = !DILocation(line: 107, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !162, file: !3, line: 107, column: 17)
!182 = !DILocation(line: 107, column: 40, scope: !181)
!183 = !DILocation(line: 107, column: 17, scope: !181)
!184 = !DILocation(line: 107, column: 85, scope: !181)
!185 = !DILocation(line: 107, column: 17, scope: !162)
!186 = !DILocation(line: 109, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !181, file: !3, line: 108, column: 13)
!188 = !DILocation(line: 114, column: 31, scope: !162)
!189 = !DILocation(line: 114, column: 55, scope: !162)
!190 = !DILocation(line: 114, column: 62, scope: !162)
!191 = !DILocation(line: 114, column: 60, scope: !162)
!192 = !DILocation(line: 114, column: 94, scope: !162)
!193 = !DILocation(line: 114, column: 92, scope: !162)
!194 = !DILocation(line: 114, column: 102, scope: !162)
!195 = !DILocation(line: 114, column: 85, scope: !162)
!196 = !DILocation(line: 114, column: 26, scope: !162)
!197 = !DILocation(line: 114, column: 24, scope: !162)
!198 = !DILocation(line: 115, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !162, file: !3, line: 115, column: 17)
!200 = !DILocation(line: 115, column: 28, scope: !199)
!201 = !DILocation(line: 115, column: 44, scope: !199)
!202 = !DILocation(line: 115, column: 47, scope: !199)
!203 = !DILocation(line: 115, column: 58, scope: !199)
!204 = !DILocation(line: 115, column: 17, scope: !162)
!205 = !DILocation(line: 117, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !3, line: 116, column: 13)
!207 = !DILocation(line: 120, column: 13, scope: !162)
!208 = !DILocation(line: 120, column: 18, scope: !162)
!209 = !DILocation(line: 120, column: 28, scope: !162)
!210 = !DILocation(line: 120, column: 39, scope: !162)
!211 = !DILocation(line: 120, column: 26, scope: !162)
!212 = !DILocation(line: 120, column: 55, scope: !162)
!213 = !DILocation(line: 122, column: 30, scope: !162)
!214 = !DILocation(line: 122, column: 23, scope: !162)
!215 = !DILocation(line: 122, column: 21, scope: !162)
!216 = !DILocation(line: 123, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !162, file: !3, line: 123, column: 17)
!218 = !DILocation(line: 123, column: 17, scope: !162)
!219 = !DILocation(line: 125, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 124, column: 13)
!221 = !DILocation(line: 125, column: 26, scope: !220)
!222 = !DILocation(line: 126, column: 13, scope: !220)
!223 = !DILocation(line: 127, column: 30, scope: !162)
!224 = !DILocation(line: 127, column: 23, scope: !162)
!225 = !DILocation(line: 127, column: 21, scope: !162)
!226 = !DILocation(line: 128, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !162, file: !3, line: 128, column: 17)
!228 = !DILocation(line: 128, column: 17, scope: !162)
!229 = !DILocation(line: 130, column: 18, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 129, column: 13)
!231 = !DILocation(line: 130, column: 26, scope: !230)
!232 = !DILocation(line: 131, column: 13, scope: !230)
!233 = !DILocation(line: 132, column: 9, scope: !162)
!234 = !DILocation(line: 134, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !124, file: !3, line: 134, column: 13)
!236 = !DILocation(line: 134, column: 27, scope: !235)
!237 = !DILocation(line: 134, column: 13, scope: !124)
!238 = !DILocation(line: 136, column: 26, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 135, column: 9)
!240 = !DILocation(line: 136, column: 13, scope: !239)
!241 = !DILocation(line: 137, column: 9, scope: !239)
!242 = !DILocation(line: 145, column: 71, scope: !113)
!243 = !DILocation(line: 145, column: 69, scope: !113)
!244 = !DILocation(line: 146, column: 5, scope: !113)
!245 = !DILocation(line: 147, column: 1, scope: !113)
!246 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 154, type: !72, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 156, type: !61)
!248 = !DILocation(line: 156, column: 12, scope: !246)
!249 = !DILocation(line: 156, column: 19, scope: !246)
!250 = !DILocalVariable(name: "i", scope: !251, file: !3, line: 158, type: !80)
!251 = distinct !DILexicalBlock(scope: !246, file: !3, line: 157, column: 5)
!252 = !DILocation(line: 158, column: 13, scope: !251)
!253 = !DILocalVariable(name: "n", scope: !251, file: !3, line: 158, type: !80)
!254 = !DILocation(line: 158, column: 16, scope: !251)
!255 = !DILocalVariable(name: "intVariable", scope: !251, file: !3, line: 158, type: !80)
!256 = !DILocation(line: 158, column: 19, scope: !251)
!257 = !DILocation(line: 159, column: 20, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !3, line: 159, column: 13)
!259 = !DILocation(line: 159, column: 13, scope: !258)
!260 = !DILocation(line: 159, column: 36, scope: !258)
!261 = !DILocation(line: 159, column: 13, scope: !251)
!262 = !DILocation(line: 162, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !3, line: 160, column: 9)
!264 = !DILocation(line: 163, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !3, line: 163, column: 13)
!266 = !DILocation(line: 163, column: 18, scope: !265)
!267 = !DILocation(line: 163, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 163, column: 13)
!269 = !DILocation(line: 163, column: 29, scope: !268)
!270 = !DILocation(line: 163, column: 27, scope: !268)
!271 = !DILocation(line: 163, column: 13, scope: !265)
!272 = !DILocation(line: 166, column: 28, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !3, line: 164, column: 13)
!274 = !DILocation(line: 167, column: 13, scope: !273)
!275 = !DILocation(line: 163, column: 33, scope: !268)
!276 = !DILocation(line: 163, column: 13, scope: !268)
!277 = distinct !{!277, !271, !278, !108}
!278 = !DILocation(line: 167, column: 13, scope: !265)
!279 = !DILocation(line: 168, column: 26, scope: !263)
!280 = !DILocation(line: 168, column: 13, scope: !263)
!281 = !DILocation(line: 169, column: 9, scope: !263)
!282 = !DILocation(line: 171, column: 1, scope: !246)
!283 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 173, type: !72, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!284 = !DILocalVariable(name: "data", scope: !283, file: !3, line: 175, type: !61)
!285 = !DILocation(line: 175, column: 12, scope: !283)
!286 = !DILocalVariable(name: "dataBuffer", scope: !283, file: !3, line: 176, type: !117)
!287 = !DILocation(line: 176, column: 10, scope: !283)
!288 = !DILocation(line: 177, column: 12, scope: !283)
!289 = !DILocation(line: 177, column: 10, scope: !283)
!290 = !DILocation(line: 179, column: 12, scope: !283)
!291 = !DILocation(line: 179, column: 5, scope: !283)
!292 = !DILocation(line: 180, column: 75, scope: !283)
!293 = !DILocation(line: 180, column: 73, scope: !283)
!294 = !DILocation(line: 181, column: 5, scope: !283)
!295 = !DILocation(line: 182, column: 1, scope: !283)
!296 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 185, type: !72, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!297 = !DILocalVariable(name: "data", scope: !296, file: !3, line: 187, type: !61)
!298 = !DILocation(line: 187, column: 12, scope: !296)
!299 = !DILocation(line: 187, column: 19, scope: !296)
!300 = !DILocalVariable(name: "i", scope: !301, file: !3, line: 189, type: !80)
!301 = distinct !DILexicalBlock(scope: !296, file: !3, line: 188, column: 5)
!302 = !DILocation(line: 189, column: 13, scope: !301)
!303 = !DILocalVariable(name: "n", scope: !301, file: !3, line: 189, type: !80)
!304 = !DILocation(line: 189, column: 16, scope: !301)
!305 = !DILocalVariable(name: "intVariable", scope: !301, file: !3, line: 189, type: !80)
!306 = !DILocation(line: 189, column: 19, scope: !301)
!307 = !DILocation(line: 190, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !3, line: 190, column: 13)
!309 = !DILocation(line: 190, column: 13, scope: !308)
!310 = !DILocation(line: 190, column: 36, scope: !308)
!311 = !DILocation(line: 190, column: 13, scope: !301)
!312 = !DILocation(line: 193, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 193, column: 17)
!314 = distinct !DILexicalBlock(scope: !308, file: !3, line: 191, column: 9)
!315 = !DILocation(line: 193, column: 19, scope: !313)
!316 = !DILocation(line: 193, column: 17, scope: !314)
!317 = !DILocation(line: 195, column: 29, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !3, line: 194, column: 13)
!319 = !DILocation(line: 196, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !3, line: 196, column: 17)
!321 = !DILocation(line: 196, column: 22, scope: !320)
!322 = !DILocation(line: 196, column: 29, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !3, line: 196, column: 17)
!324 = !DILocation(line: 196, column: 33, scope: !323)
!325 = !DILocation(line: 196, column: 31, scope: !323)
!326 = !DILocation(line: 196, column: 17, scope: !320)
!327 = !DILocation(line: 199, column: 32, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !3, line: 197, column: 17)
!329 = !DILocation(line: 200, column: 17, scope: !328)
!330 = !DILocation(line: 196, column: 37, scope: !323)
!331 = !DILocation(line: 196, column: 17, scope: !323)
!332 = distinct !{!332, !326, !333, !108}
!333 = !DILocation(line: 200, column: 17, scope: !320)
!334 = !DILocation(line: 201, column: 30, scope: !318)
!335 = !DILocation(line: 201, column: 17, scope: !318)
!336 = !DILocation(line: 202, column: 13, scope: !318)
!337 = !DILocation(line: 203, column: 9, scope: !314)
!338 = !DILocation(line: 205, column: 1, scope: !296)
!339 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 207, type: !72, scopeLine: 208, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!340 = !DILocalVariable(name: "data", scope: !339, file: !3, line: 209, type: !61)
!341 = !DILocation(line: 209, column: 12, scope: !339)
!342 = !DILocalVariable(name: "dataBuffer", scope: !339, file: !3, line: 210, type: !117)
!343 = !DILocation(line: 210, column: 10, scope: !339)
!344 = !DILocation(line: 211, column: 12, scope: !339)
!345 = !DILocation(line: 211, column: 10, scope: !339)
!346 = !DILocalVariable(name: "recvResult", scope: !347, file: !3, line: 217, type: !80)
!347 = distinct !DILexicalBlock(scope: !339, file: !3, line: 212, column: 5)
!348 = !DILocation(line: 217, column: 13, scope: !347)
!349 = !DILocalVariable(name: "service", scope: !347, file: !3, line: 218, type: !127)
!350 = !DILocation(line: 218, column: 28, scope: !347)
!351 = !DILocalVariable(name: "replace", scope: !347, file: !3, line: 219, type: !61)
!352 = !DILocation(line: 219, column: 15, scope: !347)
!353 = !DILocalVariable(name: "connectSocket", scope: !347, file: !3, line: 220, type: !80)
!354 = !DILocation(line: 220, column: 16, scope: !347)
!355 = !DILocalVariable(name: "dataLen", scope: !347, file: !3, line: 221, type: !154)
!356 = !DILocation(line: 221, column: 16, scope: !347)
!357 = !DILocation(line: 221, column: 33, scope: !347)
!358 = !DILocation(line: 221, column: 26, scope: !347)
!359 = !DILocation(line: 222, column: 9, scope: !347)
!360 = !DILocation(line: 232, column: 29, scope: !361)
!361 = distinct !DILexicalBlock(scope: !347, file: !3, line: 223, column: 9)
!362 = !DILocation(line: 232, column: 27, scope: !361)
!363 = !DILocation(line: 233, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !3, line: 233, column: 17)
!365 = !DILocation(line: 233, column: 31, scope: !364)
!366 = !DILocation(line: 233, column: 17, scope: !361)
!367 = !DILocation(line: 235, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 234, column: 13)
!369 = !DILocation(line: 237, column: 13, scope: !361)
!370 = !DILocation(line: 238, column: 21, scope: !361)
!371 = !DILocation(line: 238, column: 32, scope: !361)
!372 = !DILocation(line: 239, column: 39, scope: !361)
!373 = !DILocation(line: 239, column: 21, scope: !361)
!374 = !DILocation(line: 239, column: 30, scope: !361)
!375 = !DILocation(line: 239, column: 37, scope: !361)
!376 = !DILocation(line: 240, column: 32, scope: !361)
!377 = !DILocation(line: 240, column: 21, scope: !361)
!378 = !DILocation(line: 240, column: 30, scope: !361)
!379 = !DILocation(line: 241, column: 25, scope: !380)
!380 = distinct !DILexicalBlock(scope: !361, file: !3, line: 241, column: 17)
!381 = !DILocation(line: 241, column: 40, scope: !380)
!382 = !DILocation(line: 241, column: 17, scope: !380)
!383 = !DILocation(line: 241, column: 85, scope: !380)
!384 = !DILocation(line: 241, column: 17, scope: !361)
!385 = !DILocation(line: 243, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !3, line: 242, column: 13)
!387 = !DILocation(line: 248, column: 31, scope: !361)
!388 = !DILocation(line: 248, column: 55, scope: !361)
!389 = !DILocation(line: 248, column: 62, scope: !361)
!390 = !DILocation(line: 248, column: 60, scope: !361)
!391 = !DILocation(line: 248, column: 94, scope: !361)
!392 = !DILocation(line: 248, column: 92, scope: !361)
!393 = !DILocation(line: 248, column: 102, scope: !361)
!394 = !DILocation(line: 248, column: 85, scope: !361)
!395 = !DILocation(line: 248, column: 26, scope: !361)
!396 = !DILocation(line: 248, column: 24, scope: !361)
!397 = !DILocation(line: 249, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !361, file: !3, line: 249, column: 17)
!399 = !DILocation(line: 249, column: 28, scope: !398)
!400 = !DILocation(line: 249, column: 44, scope: !398)
!401 = !DILocation(line: 249, column: 47, scope: !398)
!402 = !DILocation(line: 249, column: 58, scope: !398)
!403 = !DILocation(line: 249, column: 17, scope: !361)
!404 = !DILocation(line: 251, column: 17, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !3, line: 250, column: 13)
!406 = !DILocation(line: 254, column: 13, scope: !361)
!407 = !DILocation(line: 254, column: 18, scope: !361)
!408 = !DILocation(line: 254, column: 28, scope: !361)
!409 = !DILocation(line: 254, column: 39, scope: !361)
!410 = !DILocation(line: 254, column: 26, scope: !361)
!411 = !DILocation(line: 254, column: 55, scope: !361)
!412 = !DILocation(line: 256, column: 30, scope: !361)
!413 = !DILocation(line: 256, column: 23, scope: !361)
!414 = !DILocation(line: 256, column: 21, scope: !361)
!415 = !DILocation(line: 257, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !361, file: !3, line: 257, column: 17)
!417 = !DILocation(line: 257, column: 17, scope: !361)
!418 = !DILocation(line: 259, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 258, column: 13)
!420 = !DILocation(line: 259, column: 26, scope: !419)
!421 = !DILocation(line: 260, column: 13, scope: !419)
!422 = !DILocation(line: 261, column: 30, scope: !361)
!423 = !DILocation(line: 261, column: 23, scope: !361)
!424 = !DILocation(line: 261, column: 21, scope: !361)
!425 = !DILocation(line: 262, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !361, file: !3, line: 262, column: 17)
!427 = !DILocation(line: 262, column: 17, scope: !361)
!428 = !DILocation(line: 264, column: 18, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !3, line: 263, column: 13)
!430 = !DILocation(line: 264, column: 26, scope: !429)
!431 = !DILocation(line: 265, column: 13, scope: !429)
!432 = !DILocation(line: 266, column: 9, scope: !361)
!433 = !DILocation(line: 268, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !347, file: !3, line: 268, column: 13)
!435 = !DILocation(line: 268, column: 27, scope: !434)
!436 = !DILocation(line: 268, column: 13, scope: !347)
!437 = !DILocation(line: 270, column: 26, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 269, column: 9)
!439 = !DILocation(line: 270, column: 13, scope: !438)
!440 = !DILocation(line: 271, column: 9, scope: !438)
!441 = !DILocation(line: 279, column: 75, scope: !339)
!442 = !DILocation(line: 279, column: 73, scope: !339)
!443 = !DILocation(line: 280, column: 5, scope: !339)
!444 = !DILocation(line: 281, column: 1, scope: !339)
!445 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_45_good", scope: !3, file: !3, line: 283, type: !72, scopeLine: 284, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!446 = !DILocation(line: 285, column: 5, scope: !445)
!447 = !DILocation(line: 286, column: 5, scope: !445)
!448 = !DILocation(line: 287, column: 1, scope: !445)
