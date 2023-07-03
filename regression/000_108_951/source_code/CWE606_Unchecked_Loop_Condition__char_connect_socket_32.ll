; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_32.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad() #0 !dbg !64 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data30 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !70, metadata !DIExpression()), !dbg !72
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !73, metadata !DIExpression()), !dbg !74
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !75, metadata !DIExpression()), !dbg !79
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !80
  store i8* %arraydecay, i8** %data, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !82, metadata !DIExpression()), !dbg !84
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !85
  %2 = load i8*, i8** %1, align 8, !dbg !86
  store i8* %2, i8** %data1, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %connectSocket, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !118, metadata !DIExpression()), !dbg !122
  %3 = load i8*, i8** %data1, align 8, !dbg !123
  %call = call i64 @strlen(i8* %3) #7, !dbg !124
  store i64 %call, i64* %dataLen, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %entry
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !126
  store i32 %call2, i32* %connectSocket, align 4, !dbg !128
  %4 = load i32, i32* %connectSocket, align 4, !dbg !129
  %cmp = icmp eq i32 %4, -1, !dbg !131
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %5 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call3, i32* %s_addr, align 4, !dbg !141
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !143
  store i16 %call4, i16* %sin_port, align 2, !dbg !144
  %6 = load i32, i32* %connectSocket, align 4, !dbg !145
  %7 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !147
  %call5 = call i32 @connect(i32 %6, %struct.sockaddr* %7, i32 16), !dbg !148
  %cmp6 = icmp eq i32 %call5, -1, !dbg !149
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !150

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end8:                                          ; preds = %if.end
  %8 = load i32, i32* %connectSocket, align 4, !dbg !153
  %9 = load i8*, i8** %data1, align 8, !dbg !154
  %10 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !156
  %11 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub = sub i64 100, %11, !dbg !158
  %sub9 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub9, !dbg !160
  %call10 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call10 to i32, !dbg !161
  store i32 %conv, i32* %recvResult, align 4, !dbg !162
  %12 = load i32, i32* %recvResult, align 4, !dbg !163
  %cmp11 = icmp eq i32 %12, -1, !dbg !165
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end8
  %13 = load i32, i32* %recvResult, align 4, !dbg !167
  %cmp13 = icmp eq i32 %13, 0, !dbg !168
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !169

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !170

if.end16:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data1, align 8, !dbg !172
  %15 = load i64, i64* %dataLen, align 8, !dbg !173
  %16 = load i32, i32* %recvResult, align 4, !dbg !174
  %conv17 = sext i32 %16 to i64, !dbg !174
  %div = udiv i64 %conv17, 1, !dbg !175
  %add = add i64 %15, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %17 = load i8*, i8** %data1, align 8, !dbg !178
  %call18 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !179
  store i8* %call18, i8** %replace, align 8, !dbg !180
  %18 = load i8*, i8** %replace, align 8, !dbg !181
  %tobool = icmp ne i8* %18, null, !dbg !181
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !183

if.then19:                                        ; preds = %if.end16
  %19 = load i8*, i8** %replace, align 8, !dbg !184
  store i8 0, i8* %19, align 1, !dbg !186
  br label %if.end20, !dbg !187

if.end20:                                         ; preds = %if.then19, %if.end16
  %20 = load i8*, i8** %data1, align 8, !dbg !188
  %call21 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !189
  store i8* %call21, i8** %replace, align 8, !dbg !190
  %21 = load i8*, i8** %replace, align 8, !dbg !191
  %tobool22 = icmp ne i8* %21, null, !dbg !191
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !193

if.then23:                                        ; preds = %if.end20
  %22 = load i8*, i8** %replace, align 8, !dbg !194
  store i8 0, i8* %22, align 1, !dbg !196
  br label %if.end24, !dbg !197

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %23 = load i32, i32* %connectSocket, align 4, !dbg !199
  %cmp25 = icmp ne i32 %23, -1, !dbg !201
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !202

if.then27:                                        ; preds = %do.end
  %24 = load i32, i32* %connectSocket, align 4, !dbg !203
  %call28 = call i32 @close(i32 %24), !dbg !205
  br label %if.end29, !dbg !206

if.end29:                                         ; preds = %if.then27, %do.end
  %25 = load i8*, i8** %data1, align 8, !dbg !207
  %26 = load i8**, i8*** %dataPtr1, align 8, !dbg !208
  store i8* %25, i8** %26, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i8** %data30, metadata !210, metadata !DIExpression()), !dbg !212
  %27 = load i8**, i8*** %dataPtr2, align 8, !dbg !213
  %28 = load i8*, i8** %27, align 8, !dbg !214
  store i8* %28, i8** %data30, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i32* %i, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %n, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !220, metadata !DIExpression()), !dbg !221
  %29 = load i8*, i8** %data30, align 8, !dbg !222
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !224
  %cmp32 = icmp eq i32 %call31, 1, !dbg !225
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !226

if.then34:                                        ; preds = %if.end29
  store i32 0, i32* %intVariable, align 4, !dbg !227
  store i32 0, i32* %i, align 4, !dbg !229
  br label %for.cond, !dbg !231

for.cond:                                         ; preds = %for.inc, %if.then34
  %30 = load i32, i32* %i, align 4, !dbg !232
  %31 = load i32, i32* %n, align 4, !dbg !234
  %cmp35 = icmp slt i32 %30, %31, !dbg !235
  br i1 %cmp35, label %for.body, label %for.end, !dbg !236

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %intVariable, align 4, !dbg !237
  %inc = add nsw i32 %32, 1, !dbg !237
  store i32 %inc, i32* %intVariable, align 4, !dbg !237
  br label %for.inc, !dbg !239

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !dbg !240
  %inc37 = add nsw i32 %33, 1, !dbg !240
  store i32 %inc37, i32* %i, align 4, !dbg !240
  br label %for.cond, !dbg !241, !llvm.loop !242

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %intVariable, align 4, !dbg !245
  call void @printIntLine(i32 %34), !dbg !246
  br label %if.end38, !dbg !247

if.end38:                                         ; preds = %for.end, %if.end29
  ret void, !dbg !248
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !249 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !252, metadata !DIExpression()), !dbg !253
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !254, metadata !DIExpression()), !dbg !255
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !257
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !258
  store i8* %arraydecay, i8** %data, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !260, metadata !DIExpression()), !dbg !262
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !263
  %2 = load i8*, i8** %1, align 8, !dbg !264
  store i8* %2, i8** %data1, align 8, !dbg !262
  %3 = load i8*, i8** %data1, align 8, !dbg !265
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !266
  %4 = load i8*, i8** %data1, align 8, !dbg !267
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !268
  store i8* %4, i8** %5, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !270, metadata !DIExpression()), !dbg !272
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !273
  %7 = load i8*, i8** %6, align 8, !dbg !274
  store i8* %7, i8** %data2, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %i, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %n, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !280, metadata !DIExpression()), !dbg !281
  %8 = load i8*, i8** %data2, align 8, !dbg !282
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !284
  %cmp = icmp eq i32 %call3, 1, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !287
  store i32 0, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !291

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !292
  %10 = load i32, i32* %n, align 4, !dbg !294
  %cmp4 = icmp slt i32 %9, %10, !dbg !295
  br i1 %cmp4, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !297
  %inc = add nsw i32 %11, 1, !dbg !297
  store i32 %inc, i32* %intVariable, align 4, !dbg !297
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !300
  %inc5 = add nsw i32 %12, 1, !dbg !300
  store i32 %inc5, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !304
  call void @printIntLine(i32 %13), !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !307
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !308 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %data30 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !311, metadata !DIExpression()), !dbg !312
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !313, metadata !DIExpression()), !dbg !314
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !314
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !316
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !316
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !317
  store i8* %arraydecay, i8** %data, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !319, metadata !DIExpression()), !dbg !321
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !322
  %2 = load i8*, i8** %1, align 8, !dbg !323
  store i8* %2, i8** %data1, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !331, metadata !DIExpression()), !dbg !332
  store i32 -1, i32* %connectSocket, align 4, !dbg !332
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i8*, i8** %data1, align 8, !dbg !335
  %call = call i64 @strlen(i8* %3) #7, !dbg !336
  store i64 %call, i64* %dataLen, align 8, !dbg !334
  br label %do.body, !dbg !337

do.body:                                          ; preds = %entry
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !338
  store i32 %call2, i32* %connectSocket, align 4, !dbg !340
  %4 = load i32, i32* %connectSocket, align 4, !dbg !341
  %cmp = icmp eq i32 %4, -1, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !345

if.end:                                           ; preds = %do.body
  %5 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !347
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false), !dbg !347
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !348
  store i16 2, i16* %sin_family, align 4, !dbg !349
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !350
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !351
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !352
  store i32 %call3, i32* %s_addr, align 4, !dbg !353
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !354
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !355
  store i16 %call4, i16* %sin_port, align 2, !dbg !356
  %6 = load i32, i32* %connectSocket, align 4, !dbg !357
  %7 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !359
  %call5 = call i32 @connect(i32 %6, %struct.sockaddr* %7, i32 16), !dbg !360
  %cmp6 = icmp eq i32 %call5, -1, !dbg !361
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !362

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !363

if.end8:                                          ; preds = %if.end
  %8 = load i32, i32* %connectSocket, align 4, !dbg !365
  %9 = load i8*, i8** %data1, align 8, !dbg !366
  %10 = load i64, i64* %dataLen, align 8, !dbg !367
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !368
  %11 = load i64, i64* %dataLen, align 8, !dbg !369
  %sub = sub i64 100, %11, !dbg !370
  %sub9 = sub i64 %sub, 1, !dbg !371
  %mul = mul i64 1, %sub9, !dbg !372
  %call10 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !373
  %conv = trunc i64 %call10 to i32, !dbg !373
  store i32 %conv, i32* %recvResult, align 4, !dbg !374
  %12 = load i32, i32* %recvResult, align 4, !dbg !375
  %cmp11 = icmp eq i32 %12, -1, !dbg !377
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !378

lor.lhs.false:                                    ; preds = %if.end8
  %13 = load i32, i32* %recvResult, align 4, !dbg !379
  %cmp13 = icmp eq i32 %13, 0, !dbg !380
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !381

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !382

if.end16:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %data1, align 8, !dbg !384
  %15 = load i64, i64* %dataLen, align 8, !dbg !385
  %16 = load i32, i32* %recvResult, align 4, !dbg !386
  %conv17 = sext i32 %16 to i64, !dbg !386
  %div = udiv i64 %conv17, 1, !dbg !387
  %add = add i64 %15, %div, !dbg !388
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !384
  store i8 0, i8* %arrayidx, align 1, !dbg !389
  %17 = load i8*, i8** %data1, align 8, !dbg !390
  %call18 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !391
  store i8* %call18, i8** %replace, align 8, !dbg !392
  %18 = load i8*, i8** %replace, align 8, !dbg !393
  %tobool = icmp ne i8* %18, null, !dbg !393
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !395

if.then19:                                        ; preds = %if.end16
  %19 = load i8*, i8** %replace, align 8, !dbg !396
  store i8 0, i8* %19, align 1, !dbg !398
  br label %if.end20, !dbg !399

if.end20:                                         ; preds = %if.then19, %if.end16
  %20 = load i8*, i8** %data1, align 8, !dbg !400
  %call21 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !401
  store i8* %call21, i8** %replace, align 8, !dbg !402
  %21 = load i8*, i8** %replace, align 8, !dbg !403
  %tobool22 = icmp ne i8* %21, null, !dbg !403
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !405

if.then23:                                        ; preds = %if.end20
  %22 = load i8*, i8** %replace, align 8, !dbg !406
  store i8 0, i8* %22, align 1, !dbg !408
  br label %if.end24, !dbg !409

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !410

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %23 = load i32, i32* %connectSocket, align 4, !dbg !411
  %cmp25 = icmp ne i32 %23, -1, !dbg !413
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !414

if.then27:                                        ; preds = %do.end
  %24 = load i32, i32* %connectSocket, align 4, !dbg !415
  %call28 = call i32 @close(i32 %24), !dbg !417
  br label %if.end29, !dbg !418

if.end29:                                         ; preds = %if.then27, %do.end
  %25 = load i8*, i8** %data1, align 8, !dbg !419
  %26 = load i8**, i8*** %dataPtr1, align 8, !dbg !420
  store i8* %25, i8** %26, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata i8** %data30, metadata !422, metadata !DIExpression()), !dbg !424
  %27 = load i8**, i8*** %dataPtr2, align 8, !dbg !425
  %28 = load i8*, i8** %27, align 8, !dbg !426
  store i8* %28, i8** %data30, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i32* %i, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %n, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !432, metadata !DIExpression()), !dbg !433
  %29 = load i8*, i8** %data30, align 8, !dbg !434
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !436
  %cmp32 = icmp eq i32 %call31, 1, !dbg !437
  br i1 %cmp32, label %if.then34, label %if.end42, !dbg !438

if.then34:                                        ; preds = %if.end29
  %30 = load i32, i32* %n, align 4, !dbg !439
  %cmp35 = icmp slt i32 %30, 10000, !dbg !442
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !443

if.then37:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable, align 4, !dbg !444
  store i32 0, i32* %i, align 4, !dbg !446
  br label %for.cond, !dbg !448

for.cond:                                         ; preds = %for.inc, %if.then37
  %31 = load i32, i32* %i, align 4, !dbg !449
  %32 = load i32, i32* %n, align 4, !dbg !451
  %cmp38 = icmp slt i32 %31, %32, !dbg !452
  br i1 %cmp38, label %for.body, label %for.end, !dbg !453

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %intVariable, align 4, !dbg !454
  %inc = add nsw i32 %33, 1, !dbg !454
  store i32 %inc, i32* %intVariable, align 4, !dbg !454
  br label %for.inc, !dbg !456

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !dbg !457
  %inc40 = add nsw i32 %34, 1, !dbg !457
  store i32 %inc40, i32* %i, align 4, !dbg !457
  br label %for.cond, !dbg !458, !llvm.loop !459

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %intVariable, align 4, !dbg !461
  call void @printIntLine(i32 %35), !dbg !462
  br label %if.end41, !dbg !463

if.end41:                                         ; preds = %for.end, %if.then34
  br label %if.end42, !dbg !464

if.end42:                                         ; preds = %if.end41, %if.end29
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_32_good() #0 !dbg !466 {
entry:
  call void @goodG2B(), !dbg !467
  call void @goodB2G(), !dbg !468
  ret void, !dbg !469
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_951/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{}
!68 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 52, type: !59)
!69 = !DILocation(line: 52, column: 12, scope: !64)
!70 = !DILocalVariable(name: "dataPtr1", scope: !64, file: !1, line: 53, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!72 = !DILocation(line: 53, column: 13, scope: !64)
!73 = !DILocalVariable(name: "dataPtr2", scope: !64, file: !1, line: 54, type: !71)
!74 = !DILocation(line: 54, column: 13, scope: !64)
!75 = !DILocalVariable(name: "dataBuffer", scope: !64, file: !1, line: 55, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !DILocation(line: 55, column: 10, scope: !64)
!80 = !DILocation(line: 56, column: 12, scope: !64)
!81 = !DILocation(line: 56, column: 10, scope: !64)
!82 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 58, type: !59)
!83 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 5)
!84 = !DILocation(line: 58, column: 16, scope: !83)
!85 = !DILocation(line: 58, column: 24, scope: !83)
!86 = !DILocation(line: 58, column: 23, scope: !83)
!87 = !DILocalVariable(name: "recvResult", scope: !88, file: !1, line: 64, type: !89)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 59, column: 9)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DILocation(line: 64, column: 17, scope: !88)
!91 = !DILocalVariable(name: "service", scope: !88, file: !1, line: 65, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !101, !108}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !51, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100, line: 40, baseType: !53)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !17, line: 33, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !109, size: 64, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !111)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DILocation(line: 65, column: 32, scope: !88)
!114 = !DILocalVariable(name: "replace", scope: !88, file: !1, line: 66, type: !59)
!115 = !DILocation(line: 66, column: 19, scope: !88)
!116 = !DILocalVariable(name: "connectSocket", scope: !88, file: !1, line: 67, type: !89)
!117 = !DILocation(line: 67, column: 20, scope: !88)
!118 = !DILocalVariable(name: "dataLen", scope: !88, file: !1, line: 68, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 68, column: 20, scope: !88)
!123 = !DILocation(line: 68, column: 37, scope: !88)
!124 = !DILocation(line: 68, column: 30, scope: !88)
!125 = !DILocation(line: 69, column: 13, scope: !88)
!126 = !DILocation(line: 79, column: 33, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 70, column: 13)
!128 = !DILocation(line: 79, column: 31, scope: !127)
!129 = !DILocation(line: 80, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 80, column: 21)
!131 = !DILocation(line: 80, column: 35, scope: !130)
!132 = !DILocation(line: 80, column: 21, scope: !127)
!133 = !DILocation(line: 82, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 81, column: 17)
!135 = !DILocation(line: 84, column: 17, scope: !127)
!136 = !DILocation(line: 85, column: 25, scope: !127)
!137 = !DILocation(line: 85, column: 36, scope: !127)
!138 = !DILocation(line: 86, column: 43, scope: !127)
!139 = !DILocation(line: 86, column: 25, scope: !127)
!140 = !DILocation(line: 86, column: 34, scope: !127)
!141 = !DILocation(line: 86, column: 41, scope: !127)
!142 = !DILocation(line: 87, column: 36, scope: !127)
!143 = !DILocation(line: 87, column: 25, scope: !127)
!144 = !DILocation(line: 87, column: 34, scope: !127)
!145 = !DILocation(line: 88, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 88, column: 21)
!147 = !DILocation(line: 88, column: 44, scope: !146)
!148 = !DILocation(line: 88, column: 21, scope: !146)
!149 = !DILocation(line: 88, column: 89, scope: !146)
!150 = !DILocation(line: 88, column: 21, scope: !127)
!151 = !DILocation(line: 90, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 89, column: 17)
!153 = !DILocation(line: 95, column: 35, scope: !127)
!154 = !DILocation(line: 95, column: 59, scope: !127)
!155 = !DILocation(line: 95, column: 66, scope: !127)
!156 = !DILocation(line: 95, column: 64, scope: !127)
!157 = !DILocation(line: 95, column: 98, scope: !127)
!158 = !DILocation(line: 95, column: 96, scope: !127)
!159 = !DILocation(line: 95, column: 106, scope: !127)
!160 = !DILocation(line: 95, column: 89, scope: !127)
!161 = !DILocation(line: 95, column: 30, scope: !127)
!162 = !DILocation(line: 95, column: 28, scope: !127)
!163 = !DILocation(line: 96, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 96, column: 21)
!165 = !DILocation(line: 96, column: 32, scope: !164)
!166 = !DILocation(line: 96, column: 48, scope: !164)
!167 = !DILocation(line: 96, column: 51, scope: !164)
!168 = !DILocation(line: 96, column: 62, scope: !164)
!169 = !DILocation(line: 96, column: 21, scope: !127)
!170 = !DILocation(line: 98, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 97, column: 17)
!172 = !DILocation(line: 101, column: 17, scope: !127)
!173 = !DILocation(line: 101, column: 22, scope: !127)
!174 = !DILocation(line: 101, column: 32, scope: !127)
!175 = !DILocation(line: 101, column: 43, scope: !127)
!176 = !DILocation(line: 101, column: 30, scope: !127)
!177 = !DILocation(line: 101, column: 59, scope: !127)
!178 = !DILocation(line: 103, column: 34, scope: !127)
!179 = !DILocation(line: 103, column: 27, scope: !127)
!180 = !DILocation(line: 103, column: 25, scope: !127)
!181 = !DILocation(line: 104, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 104, column: 21)
!183 = !DILocation(line: 104, column: 21, scope: !127)
!184 = !DILocation(line: 106, column: 22, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 105, column: 17)
!186 = !DILocation(line: 106, column: 30, scope: !185)
!187 = !DILocation(line: 107, column: 17, scope: !185)
!188 = !DILocation(line: 108, column: 34, scope: !127)
!189 = !DILocation(line: 108, column: 27, scope: !127)
!190 = !DILocation(line: 108, column: 25, scope: !127)
!191 = !DILocation(line: 109, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 109, column: 21)
!193 = !DILocation(line: 109, column: 21, scope: !127)
!194 = !DILocation(line: 111, column: 22, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 110, column: 17)
!196 = !DILocation(line: 111, column: 30, scope: !195)
!197 = !DILocation(line: 112, column: 17, scope: !195)
!198 = !DILocation(line: 113, column: 13, scope: !127)
!199 = !DILocation(line: 115, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 115, column: 17)
!201 = !DILocation(line: 115, column: 31, scope: !200)
!202 = !DILocation(line: 115, column: 17, scope: !88)
!203 = !DILocation(line: 117, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 116, column: 13)
!205 = !DILocation(line: 117, column: 17, scope: !204)
!206 = !DILocation(line: 118, column: 13, scope: !204)
!207 = !DILocation(line: 126, column: 21, scope: !83)
!208 = !DILocation(line: 126, column: 10, scope: !83)
!209 = !DILocation(line: 126, column: 19, scope: !83)
!210 = !DILocalVariable(name: "data", scope: !211, file: !1, line: 129, type: !59)
!211 = distinct !DILexicalBlock(scope: !64, file: !1, line: 128, column: 5)
!212 = !DILocation(line: 129, column: 16, scope: !211)
!213 = !DILocation(line: 129, column: 24, scope: !211)
!214 = !DILocation(line: 129, column: 23, scope: !211)
!215 = !DILocalVariable(name: "i", scope: !216, file: !1, line: 131, type: !89)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 130, column: 9)
!217 = !DILocation(line: 131, column: 17, scope: !216)
!218 = !DILocalVariable(name: "n", scope: !216, file: !1, line: 131, type: !89)
!219 = !DILocation(line: 131, column: 20, scope: !216)
!220 = !DILocalVariable(name: "intVariable", scope: !216, file: !1, line: 131, type: !89)
!221 = !DILocation(line: 131, column: 23, scope: !216)
!222 = !DILocation(line: 132, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !1, line: 132, column: 17)
!224 = !DILocation(line: 132, column: 17, scope: !223)
!225 = !DILocation(line: 132, column: 40, scope: !223)
!226 = !DILocation(line: 132, column: 17, scope: !216)
!227 = !DILocation(line: 135, column: 29, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 133, column: 13)
!229 = !DILocation(line: 136, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !228, file: !1, line: 136, column: 17)
!231 = !DILocation(line: 136, column: 22, scope: !230)
!232 = !DILocation(line: 136, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 136, column: 17)
!234 = !DILocation(line: 136, column: 33, scope: !233)
!235 = !DILocation(line: 136, column: 31, scope: !233)
!236 = !DILocation(line: 136, column: 17, scope: !230)
!237 = !DILocation(line: 139, column: 32, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 137, column: 17)
!239 = !DILocation(line: 140, column: 17, scope: !238)
!240 = !DILocation(line: 136, column: 37, scope: !233)
!241 = !DILocation(line: 136, column: 17, scope: !233)
!242 = distinct !{!242, !236, !243, !244}
!243 = !DILocation(line: 140, column: 17, scope: !230)
!244 = !{!"llvm.loop.mustprogress"}
!245 = !DILocation(line: 141, column: 30, scope: !228)
!246 = !DILocation(line: 141, column: 17, scope: !228)
!247 = !DILocation(line: 142, column: 13, scope: !228)
!248 = !DILocation(line: 145, column: 1, scope: !64)
!249 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 152, type: !65, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!250 = !DILocalVariable(name: "data", scope: !249, file: !1, line: 154, type: !59)
!251 = !DILocation(line: 154, column: 12, scope: !249)
!252 = !DILocalVariable(name: "dataPtr1", scope: !249, file: !1, line: 155, type: !71)
!253 = !DILocation(line: 155, column: 13, scope: !249)
!254 = !DILocalVariable(name: "dataPtr2", scope: !249, file: !1, line: 156, type: !71)
!255 = !DILocation(line: 156, column: 13, scope: !249)
!256 = !DILocalVariable(name: "dataBuffer", scope: !249, file: !1, line: 157, type: !76)
!257 = !DILocation(line: 157, column: 10, scope: !249)
!258 = !DILocation(line: 158, column: 12, scope: !249)
!259 = !DILocation(line: 158, column: 10, scope: !249)
!260 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 160, type: !59)
!261 = distinct !DILexicalBlock(scope: !249, file: !1, line: 159, column: 5)
!262 = !DILocation(line: 160, column: 16, scope: !261)
!263 = !DILocation(line: 160, column: 24, scope: !261)
!264 = !DILocation(line: 160, column: 23, scope: !261)
!265 = !DILocation(line: 162, column: 16, scope: !261)
!266 = !DILocation(line: 162, column: 9, scope: !261)
!267 = !DILocation(line: 163, column: 21, scope: !261)
!268 = !DILocation(line: 163, column: 10, scope: !261)
!269 = !DILocation(line: 163, column: 19, scope: !261)
!270 = !DILocalVariable(name: "data", scope: !271, file: !1, line: 166, type: !59)
!271 = distinct !DILexicalBlock(scope: !249, file: !1, line: 165, column: 5)
!272 = !DILocation(line: 166, column: 16, scope: !271)
!273 = !DILocation(line: 166, column: 24, scope: !271)
!274 = !DILocation(line: 166, column: 23, scope: !271)
!275 = !DILocalVariable(name: "i", scope: !276, file: !1, line: 168, type: !89)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 167, column: 9)
!277 = !DILocation(line: 168, column: 17, scope: !276)
!278 = !DILocalVariable(name: "n", scope: !276, file: !1, line: 168, type: !89)
!279 = !DILocation(line: 168, column: 20, scope: !276)
!280 = !DILocalVariable(name: "intVariable", scope: !276, file: !1, line: 168, type: !89)
!281 = !DILocation(line: 168, column: 23, scope: !276)
!282 = !DILocation(line: 169, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !276, file: !1, line: 169, column: 17)
!284 = !DILocation(line: 169, column: 17, scope: !283)
!285 = !DILocation(line: 169, column: 40, scope: !283)
!286 = !DILocation(line: 169, column: 17, scope: !276)
!287 = !DILocation(line: 172, column: 29, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 170, column: 13)
!289 = !DILocation(line: 173, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !1, line: 173, column: 17)
!291 = !DILocation(line: 173, column: 22, scope: !290)
!292 = !DILocation(line: 173, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 173, column: 17)
!294 = !DILocation(line: 173, column: 33, scope: !293)
!295 = !DILocation(line: 173, column: 31, scope: !293)
!296 = !DILocation(line: 173, column: 17, scope: !290)
!297 = !DILocation(line: 176, column: 32, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 174, column: 17)
!299 = !DILocation(line: 177, column: 17, scope: !298)
!300 = !DILocation(line: 173, column: 37, scope: !293)
!301 = !DILocation(line: 173, column: 17, scope: !293)
!302 = distinct !{!302, !296, !303, !244}
!303 = !DILocation(line: 177, column: 17, scope: !290)
!304 = !DILocation(line: 178, column: 30, scope: !288)
!305 = !DILocation(line: 178, column: 17, scope: !288)
!306 = !DILocation(line: 179, column: 13, scope: !288)
!307 = !DILocation(line: 182, column: 1, scope: !249)
!308 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 185, type: !65, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!309 = !DILocalVariable(name: "data", scope: !308, file: !1, line: 187, type: !59)
!310 = !DILocation(line: 187, column: 12, scope: !308)
!311 = !DILocalVariable(name: "dataPtr1", scope: !308, file: !1, line: 188, type: !71)
!312 = !DILocation(line: 188, column: 13, scope: !308)
!313 = !DILocalVariable(name: "dataPtr2", scope: !308, file: !1, line: 189, type: !71)
!314 = !DILocation(line: 189, column: 13, scope: !308)
!315 = !DILocalVariable(name: "dataBuffer", scope: !308, file: !1, line: 190, type: !76)
!316 = !DILocation(line: 190, column: 10, scope: !308)
!317 = !DILocation(line: 191, column: 12, scope: !308)
!318 = !DILocation(line: 191, column: 10, scope: !308)
!319 = !DILocalVariable(name: "data", scope: !320, file: !1, line: 193, type: !59)
!320 = distinct !DILexicalBlock(scope: !308, file: !1, line: 192, column: 5)
!321 = !DILocation(line: 193, column: 16, scope: !320)
!322 = !DILocation(line: 193, column: 24, scope: !320)
!323 = !DILocation(line: 193, column: 23, scope: !320)
!324 = !DILocalVariable(name: "recvResult", scope: !325, file: !1, line: 199, type: !89)
!325 = distinct !DILexicalBlock(scope: !320, file: !1, line: 194, column: 9)
!326 = !DILocation(line: 199, column: 17, scope: !325)
!327 = !DILocalVariable(name: "service", scope: !325, file: !1, line: 200, type: !92)
!328 = !DILocation(line: 200, column: 32, scope: !325)
!329 = !DILocalVariable(name: "replace", scope: !325, file: !1, line: 201, type: !59)
!330 = !DILocation(line: 201, column: 19, scope: !325)
!331 = !DILocalVariable(name: "connectSocket", scope: !325, file: !1, line: 202, type: !89)
!332 = !DILocation(line: 202, column: 20, scope: !325)
!333 = !DILocalVariable(name: "dataLen", scope: !325, file: !1, line: 203, type: !119)
!334 = !DILocation(line: 203, column: 20, scope: !325)
!335 = !DILocation(line: 203, column: 37, scope: !325)
!336 = !DILocation(line: 203, column: 30, scope: !325)
!337 = !DILocation(line: 204, column: 13, scope: !325)
!338 = !DILocation(line: 214, column: 33, scope: !339)
!339 = distinct !DILexicalBlock(scope: !325, file: !1, line: 205, column: 13)
!340 = !DILocation(line: 214, column: 31, scope: !339)
!341 = !DILocation(line: 215, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 215, column: 21)
!343 = !DILocation(line: 215, column: 35, scope: !342)
!344 = !DILocation(line: 215, column: 21, scope: !339)
!345 = !DILocation(line: 217, column: 21, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 216, column: 17)
!347 = !DILocation(line: 219, column: 17, scope: !339)
!348 = !DILocation(line: 220, column: 25, scope: !339)
!349 = !DILocation(line: 220, column: 36, scope: !339)
!350 = !DILocation(line: 221, column: 43, scope: !339)
!351 = !DILocation(line: 221, column: 25, scope: !339)
!352 = !DILocation(line: 221, column: 34, scope: !339)
!353 = !DILocation(line: 221, column: 41, scope: !339)
!354 = !DILocation(line: 222, column: 36, scope: !339)
!355 = !DILocation(line: 222, column: 25, scope: !339)
!356 = !DILocation(line: 222, column: 34, scope: !339)
!357 = !DILocation(line: 223, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !339, file: !1, line: 223, column: 21)
!359 = !DILocation(line: 223, column: 44, scope: !358)
!360 = !DILocation(line: 223, column: 21, scope: !358)
!361 = !DILocation(line: 223, column: 89, scope: !358)
!362 = !DILocation(line: 223, column: 21, scope: !339)
!363 = !DILocation(line: 225, column: 21, scope: !364)
!364 = distinct !DILexicalBlock(scope: !358, file: !1, line: 224, column: 17)
!365 = !DILocation(line: 230, column: 35, scope: !339)
!366 = !DILocation(line: 230, column: 59, scope: !339)
!367 = !DILocation(line: 230, column: 66, scope: !339)
!368 = !DILocation(line: 230, column: 64, scope: !339)
!369 = !DILocation(line: 230, column: 98, scope: !339)
!370 = !DILocation(line: 230, column: 96, scope: !339)
!371 = !DILocation(line: 230, column: 106, scope: !339)
!372 = !DILocation(line: 230, column: 89, scope: !339)
!373 = !DILocation(line: 230, column: 30, scope: !339)
!374 = !DILocation(line: 230, column: 28, scope: !339)
!375 = !DILocation(line: 231, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !339, file: !1, line: 231, column: 21)
!377 = !DILocation(line: 231, column: 32, scope: !376)
!378 = !DILocation(line: 231, column: 48, scope: !376)
!379 = !DILocation(line: 231, column: 51, scope: !376)
!380 = !DILocation(line: 231, column: 62, scope: !376)
!381 = !DILocation(line: 231, column: 21, scope: !339)
!382 = !DILocation(line: 233, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !1, line: 232, column: 17)
!384 = !DILocation(line: 236, column: 17, scope: !339)
!385 = !DILocation(line: 236, column: 22, scope: !339)
!386 = !DILocation(line: 236, column: 32, scope: !339)
!387 = !DILocation(line: 236, column: 43, scope: !339)
!388 = !DILocation(line: 236, column: 30, scope: !339)
!389 = !DILocation(line: 236, column: 59, scope: !339)
!390 = !DILocation(line: 238, column: 34, scope: !339)
!391 = !DILocation(line: 238, column: 27, scope: !339)
!392 = !DILocation(line: 238, column: 25, scope: !339)
!393 = !DILocation(line: 239, column: 21, scope: !394)
!394 = distinct !DILexicalBlock(scope: !339, file: !1, line: 239, column: 21)
!395 = !DILocation(line: 239, column: 21, scope: !339)
!396 = !DILocation(line: 241, column: 22, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !1, line: 240, column: 17)
!398 = !DILocation(line: 241, column: 30, scope: !397)
!399 = !DILocation(line: 242, column: 17, scope: !397)
!400 = !DILocation(line: 243, column: 34, scope: !339)
!401 = !DILocation(line: 243, column: 27, scope: !339)
!402 = !DILocation(line: 243, column: 25, scope: !339)
!403 = !DILocation(line: 244, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !339, file: !1, line: 244, column: 21)
!405 = !DILocation(line: 244, column: 21, scope: !339)
!406 = !DILocation(line: 246, column: 22, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 245, column: 17)
!408 = !DILocation(line: 246, column: 30, scope: !407)
!409 = !DILocation(line: 247, column: 17, scope: !407)
!410 = !DILocation(line: 248, column: 13, scope: !339)
!411 = !DILocation(line: 250, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !325, file: !1, line: 250, column: 17)
!413 = !DILocation(line: 250, column: 31, scope: !412)
!414 = !DILocation(line: 250, column: 17, scope: !325)
!415 = !DILocation(line: 252, column: 30, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 251, column: 13)
!417 = !DILocation(line: 252, column: 17, scope: !416)
!418 = !DILocation(line: 253, column: 13, scope: !416)
!419 = !DILocation(line: 261, column: 21, scope: !320)
!420 = !DILocation(line: 261, column: 10, scope: !320)
!421 = !DILocation(line: 261, column: 19, scope: !320)
!422 = !DILocalVariable(name: "data", scope: !423, file: !1, line: 264, type: !59)
!423 = distinct !DILexicalBlock(scope: !308, file: !1, line: 263, column: 5)
!424 = !DILocation(line: 264, column: 16, scope: !423)
!425 = !DILocation(line: 264, column: 24, scope: !423)
!426 = !DILocation(line: 264, column: 23, scope: !423)
!427 = !DILocalVariable(name: "i", scope: !428, file: !1, line: 266, type: !89)
!428 = distinct !DILexicalBlock(scope: !423, file: !1, line: 265, column: 9)
!429 = !DILocation(line: 266, column: 17, scope: !428)
!430 = !DILocalVariable(name: "n", scope: !428, file: !1, line: 266, type: !89)
!431 = !DILocation(line: 266, column: 20, scope: !428)
!432 = !DILocalVariable(name: "intVariable", scope: !428, file: !1, line: 266, type: !89)
!433 = !DILocation(line: 266, column: 23, scope: !428)
!434 = !DILocation(line: 267, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !428, file: !1, line: 267, column: 17)
!436 = !DILocation(line: 267, column: 17, scope: !435)
!437 = !DILocation(line: 267, column: 40, scope: !435)
!438 = !DILocation(line: 267, column: 17, scope: !428)
!439 = !DILocation(line: 270, column: 21, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 270, column: 21)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 268, column: 13)
!442 = !DILocation(line: 270, column: 23, scope: !440)
!443 = !DILocation(line: 270, column: 21, scope: !441)
!444 = !DILocation(line: 272, column: 33, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !1, line: 271, column: 17)
!446 = !DILocation(line: 273, column: 28, scope: !447)
!447 = distinct !DILexicalBlock(scope: !445, file: !1, line: 273, column: 21)
!448 = !DILocation(line: 273, column: 26, scope: !447)
!449 = !DILocation(line: 273, column: 33, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 273, column: 21)
!451 = !DILocation(line: 273, column: 37, scope: !450)
!452 = !DILocation(line: 273, column: 35, scope: !450)
!453 = !DILocation(line: 273, column: 21, scope: !447)
!454 = !DILocation(line: 276, column: 36, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !1, line: 274, column: 21)
!456 = !DILocation(line: 277, column: 21, scope: !455)
!457 = !DILocation(line: 273, column: 41, scope: !450)
!458 = !DILocation(line: 273, column: 21, scope: !450)
!459 = distinct !{!459, !453, !460, !244}
!460 = !DILocation(line: 277, column: 21, scope: !447)
!461 = !DILocation(line: 278, column: 34, scope: !445)
!462 = !DILocation(line: 278, column: 21, scope: !445)
!463 = !DILocation(line: 279, column: 17, scope: !445)
!464 = !DILocation(line: 280, column: 13, scope: !441)
!465 = !DILocation(line: 283, column: 1, scope: !308)
!466 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32_good", scope: !1, file: !1, line: 285, type: !65, scopeLine: 286, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!467 = !DILocation(line: 287, column: 5, scope: !466)
!468 = !DILocation(line: 288, column: 5, scope: !466)
!469 = !DILocation(line: 289, column: 1, scope: !466)
