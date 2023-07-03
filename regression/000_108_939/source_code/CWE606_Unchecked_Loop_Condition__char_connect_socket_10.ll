; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_10.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@globalTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_10_bad() #0 !dbg !64 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  %1 = load i32, i32* @globalTrue, align 4, !dbg !77
  %tobool = icmp ne i32 %1, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.end31, !dbg !79

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %connectSocket, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !112, metadata !DIExpression()), !dbg !116
  %2 = load i8*, i8** %data, align 8, !dbg !117
  %call = call i64 @strlen(i8* %2) #7, !dbg !118
  store i64 %call, i64* %dataLen, align 8, !dbg !116
  br label %do.body, !dbg !119

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !120
  store i32 %call1, i32* %connectSocket, align 4, !dbg !122
  %3 = load i32, i32* %connectSocket, align 4, !dbg !123
  %cmp = icmp eq i32 %3, -1, !dbg !125
  br i1 %cmp, label %if.then2, label %if.end, !dbg !126

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !127

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !129
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !130
  store i16 2, i16* %sin_family, align 4, !dbg !131
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !132
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !133
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !134
  store i32 %call3, i32* %s_addr, align 4, !dbg !135
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !136
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !137
  store i16 %call4, i16* %sin_port, align 2, !dbg !138
  %5 = load i32, i32* %connectSocket, align 4, !dbg !139
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !141
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !142
  %cmp6 = icmp eq i32 %call5, -1, !dbg !143
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !144

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !145

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !147
  %8 = load i8*, i8** %data, align 8, !dbg !148
  %9 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !150
  %10 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub = sub i64 100, %10, !dbg !152
  %sub9 = sub i64 %sub, 1, !dbg !153
  %mul = mul i64 1, %sub9, !dbg !154
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !155
  %conv = trunc i64 %call10 to i32, !dbg !155
  store i32 %conv, i32* %recvResult, align 4, !dbg !156
  %11 = load i32, i32* %recvResult, align 4, !dbg !157
  %cmp11 = icmp eq i32 %11, -1, !dbg !159
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !161
  %cmp13 = icmp eq i32 %12, 0, !dbg !162
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !163

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !164

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !166
  %14 = load i64, i64* %dataLen, align 8, !dbg !167
  %15 = load i32, i32* %recvResult, align 4, !dbg !168
  %conv17 = sext i32 %15 to i64, !dbg !168
  %div = udiv i64 %conv17, 1, !dbg !169
  %add = add i64 %14, %div, !dbg !170
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !166
  store i8 0, i8* %arrayidx, align 1, !dbg !171
  %16 = load i8*, i8** %data, align 8, !dbg !172
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !173
  store i8* %call18, i8** %replace, align 8, !dbg !174
  %17 = load i8*, i8** %replace, align 8, !dbg !175
  %tobool19 = icmp ne i8* %17, null, !dbg !175
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !177

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !178
  store i8 0, i8* %18, align 1, !dbg !180
  br label %if.end21, !dbg !181

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !182
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !183
  store i8* %call22, i8** %replace, align 8, !dbg !184
  %20 = load i8*, i8** %replace, align 8, !dbg !185
  %tobool23 = icmp ne i8* %20, null, !dbg !185
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !187

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !188
  store i8 0, i8* %21, align 1, !dbg !190
  br label %if.end25, !dbg !191

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !192

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !193
  %cmp26 = icmp ne i32 %22, -1, !dbg !195
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !196

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !197
  %call29 = call i32 @close(i32 %23), !dbg !199
  br label %if.end30, !dbg !200

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !201

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalTrue, align 4, !dbg !202
  %tobool32 = icmp ne i32 %24, 0, !dbg !202
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !204

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !205, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %25 = load i8*, i8** %data, align 8, !dbg !213
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !215
  %cmp35 = icmp eq i32 %call34, 1, !dbg !216
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !217

if.then37:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !218
  store i32 0, i32* %i, align 4, !dbg !220
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %if.then37
  %26 = load i32, i32* %i, align 4, !dbg !223
  %27 = load i32, i32* %n, align 4, !dbg !225
  %cmp38 = icmp slt i32 %26, %27, !dbg !226
  br i1 %cmp38, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !228
  %inc = add nsw i32 %28, 1, !dbg !228
  store i32 %inc, i32* %intVariable, align 4, !dbg !228
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !231
  %inc40 = add nsw i32 %29, 1, !dbg !231
  store i32 %inc40, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !236
  call void @printIntLine(i32 %30), !dbg !237
  br label %if.end41, !dbg !238

if.end41:                                         ; preds = %for.end, %if.then33
  br label %if.end42, !dbg !239

if.end42:                                         ; preds = %if.end41, %if.end31
  ret void, !dbg !240
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
define dso_local void @goodB2G1() #0 !dbg !241 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !245
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !246
  store i8* %arraydecay, i8** %data, align 8, !dbg !247
  %1 = load i32, i32* @globalTrue, align 4, !dbg !248
  %tobool = icmp ne i32 %1, 0, !dbg !248
  br i1 %tobool, label %if.then, label %if.end31, !dbg !250

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !251, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !259, metadata !DIExpression()), !dbg !260
  store i32 -1, i32* %connectSocket, align 4, !dbg !260
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !261, metadata !DIExpression()), !dbg !262
  %2 = load i8*, i8** %data, align 8, !dbg !263
  %call = call i64 @strlen(i8* %2) #7, !dbg !264
  store i64 %call, i64* %dataLen, align 8, !dbg !262
  br label %do.body, !dbg !265

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !266
  store i32 %call1, i32* %connectSocket, align 4, !dbg !268
  %3 = load i32, i32* %connectSocket, align 4, !dbg !269
  %cmp = icmp eq i32 %3, -1, !dbg !271
  br i1 %cmp, label %if.then2, label %if.end, !dbg !272

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !273

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !275
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !276
  store i16 2, i16* %sin_family, align 4, !dbg !277
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !278
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !279
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !280
  store i32 %call3, i32* %s_addr, align 4, !dbg !281
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !282
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !283
  store i16 %call4, i16* %sin_port, align 2, !dbg !284
  %5 = load i32, i32* %connectSocket, align 4, !dbg !285
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !287
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !288
  %cmp6 = icmp eq i32 %call5, -1, !dbg !289
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !290

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !291

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !293
  %8 = load i8*, i8** %data, align 8, !dbg !294
  %9 = load i64, i64* %dataLen, align 8, !dbg !295
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !296
  %10 = load i64, i64* %dataLen, align 8, !dbg !297
  %sub = sub i64 100, %10, !dbg !298
  %sub9 = sub i64 %sub, 1, !dbg !299
  %mul = mul i64 1, %sub9, !dbg !300
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !301
  %conv = trunc i64 %call10 to i32, !dbg !301
  store i32 %conv, i32* %recvResult, align 4, !dbg !302
  %11 = load i32, i32* %recvResult, align 4, !dbg !303
  %cmp11 = icmp eq i32 %11, -1, !dbg !305
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !306

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !307
  %cmp13 = icmp eq i32 %12, 0, !dbg !308
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !309

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !310

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !312
  %14 = load i64, i64* %dataLen, align 8, !dbg !313
  %15 = load i32, i32* %recvResult, align 4, !dbg !314
  %conv17 = sext i32 %15 to i64, !dbg !314
  %div = udiv i64 %conv17, 1, !dbg !315
  %add = add i64 %14, %div, !dbg !316
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !312
  store i8 0, i8* %arrayidx, align 1, !dbg !317
  %16 = load i8*, i8** %data, align 8, !dbg !318
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !319
  store i8* %call18, i8** %replace, align 8, !dbg !320
  %17 = load i8*, i8** %replace, align 8, !dbg !321
  %tobool19 = icmp ne i8* %17, null, !dbg !321
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !323

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !324
  store i8 0, i8* %18, align 1, !dbg !326
  br label %if.end21, !dbg !327

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !328
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !329
  store i8* %call22, i8** %replace, align 8, !dbg !330
  %20 = load i8*, i8** %replace, align 8, !dbg !331
  %tobool23 = icmp ne i8* %20, null, !dbg !331
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !333

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !334
  store i8 0, i8* %21, align 1, !dbg !336
  br label %if.end25, !dbg !337

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !338

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !339
  %cmp26 = icmp ne i32 %22, -1, !dbg !341
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !342

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !343
  %call29 = call i32 @close(i32 %23), !dbg !345
  br label %if.end30, !dbg !346

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !347

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalFalse, align 4, !dbg !348
  %tobool32 = icmp ne i32 %24, 0, !dbg !348
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !350

if.then33:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !351
  br label %if.end46, !dbg !353

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !354, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %n, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !360, metadata !DIExpression()), !dbg !361
  %25 = load i8*, i8** %data, align 8, !dbg !362
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !364
  %cmp35 = icmp eq i32 %call34, 1, !dbg !365
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !366

if.then37:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !367
  %cmp38 = icmp slt i32 %26, 10000, !dbg !370
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !371

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !372
  store i32 0, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !376

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !377
  %28 = load i32, i32* %n, align 4, !dbg !379
  %cmp41 = icmp slt i32 %27, %28, !dbg !380
  br i1 %cmp41, label %for.body, label %for.end, !dbg !381

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !382
  %inc = add nsw i32 %29, 1, !dbg !382
  store i32 %inc, i32* %intVariable, align 4, !dbg !382
  br label %for.inc, !dbg !384

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !385
  %inc43 = add nsw i32 %30, 1, !dbg !385
  store i32 %inc43, i32* %i, align 4, !dbg !385
  br label %for.cond, !dbg !386, !llvm.loop !387

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !389
  call void @printIntLine(i32 %31), !dbg !390
  br label %if.end44, !dbg !391

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !392

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  ret void, !dbg !393
}

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !394 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !398
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !398
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !399
  store i8* %arraydecay, i8** %data, align 8, !dbg !400
  %1 = load i32, i32* @globalTrue, align 4, !dbg !401
  %tobool = icmp ne i32 %1, 0, !dbg !401
  br i1 %tobool, label %if.then, label %if.end31, !dbg !403

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !404, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 -1, i32* %connectSocket, align 4, !dbg !413
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !414, metadata !DIExpression()), !dbg !415
  %2 = load i8*, i8** %data, align 8, !dbg !416
  %call = call i64 @strlen(i8* %2) #7, !dbg !417
  store i64 %call, i64* %dataLen, align 8, !dbg !415
  br label %do.body, !dbg !418

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !419
  store i32 %call1, i32* %connectSocket, align 4, !dbg !421
  %3 = load i32, i32* %connectSocket, align 4, !dbg !422
  %cmp = icmp eq i32 %3, -1, !dbg !424
  br i1 %cmp, label %if.then2, label %if.end, !dbg !425

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !426

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !428
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !428
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !429
  store i16 2, i16* %sin_family, align 4, !dbg !430
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !431
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !432
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !433
  store i32 %call3, i32* %s_addr, align 4, !dbg !434
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !435
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !436
  store i16 %call4, i16* %sin_port, align 2, !dbg !437
  %5 = load i32, i32* %connectSocket, align 4, !dbg !438
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !440
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !441
  %cmp6 = icmp eq i32 %call5, -1, !dbg !442
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !443

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !444

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !446
  %8 = load i8*, i8** %data, align 8, !dbg !447
  %9 = load i64, i64* %dataLen, align 8, !dbg !448
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !449
  %10 = load i64, i64* %dataLen, align 8, !dbg !450
  %sub = sub i64 100, %10, !dbg !451
  %sub9 = sub i64 %sub, 1, !dbg !452
  %mul = mul i64 1, %sub9, !dbg !453
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !454
  %conv = trunc i64 %call10 to i32, !dbg !454
  store i32 %conv, i32* %recvResult, align 4, !dbg !455
  %11 = load i32, i32* %recvResult, align 4, !dbg !456
  %cmp11 = icmp eq i32 %11, -1, !dbg !458
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !459

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !460
  %cmp13 = icmp eq i32 %12, 0, !dbg !461
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !462

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !463

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !465
  %14 = load i64, i64* %dataLen, align 8, !dbg !466
  %15 = load i32, i32* %recvResult, align 4, !dbg !467
  %conv17 = sext i32 %15 to i64, !dbg !467
  %div = udiv i64 %conv17, 1, !dbg !468
  %add = add i64 %14, %div, !dbg !469
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !465
  store i8 0, i8* %arrayidx, align 1, !dbg !470
  %16 = load i8*, i8** %data, align 8, !dbg !471
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !472
  store i8* %call18, i8** %replace, align 8, !dbg !473
  %17 = load i8*, i8** %replace, align 8, !dbg !474
  %tobool19 = icmp ne i8* %17, null, !dbg !474
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !476

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !477
  store i8 0, i8* %18, align 1, !dbg !479
  br label %if.end21, !dbg !480

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !481
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !482
  store i8* %call22, i8** %replace, align 8, !dbg !483
  %20 = load i8*, i8** %replace, align 8, !dbg !484
  %tobool23 = icmp ne i8* %20, null, !dbg !484
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !486

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !487
  store i8 0, i8* %21, align 1, !dbg !489
  br label %if.end25, !dbg !490

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !491

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !492
  %cmp26 = icmp ne i32 %22, -1, !dbg !494
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !495

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !496
  %call29 = call i32 @close(i32 %23), !dbg !498
  br label %if.end30, !dbg !499

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !500

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalTrue, align 4, !dbg !501
  %tobool32 = icmp ne i32 %24, 0, !dbg !501
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !503

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %n, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !510, metadata !DIExpression()), !dbg !511
  %25 = load i8*, i8** %data, align 8, !dbg !512
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !514
  %cmp35 = icmp eq i32 %call34, 1, !dbg !515
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !516

if.then37:                                        ; preds = %if.then33
  %26 = load i32, i32* %n, align 4, !dbg !517
  %cmp38 = icmp slt i32 %26, 10000, !dbg !520
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !521

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !522
  store i32 0, i32* %i, align 4, !dbg !524
  br label %for.cond, !dbg !526

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !527
  %28 = load i32, i32* %n, align 4, !dbg !529
  %cmp41 = icmp slt i32 %27, %28, !dbg !530
  br i1 %cmp41, label %for.body, label %for.end, !dbg !531

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !532
  %inc = add nsw i32 %29, 1, !dbg !532
  store i32 %inc, i32* %intVariable, align 4, !dbg !532
  br label %for.inc, !dbg !534

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !535
  %inc43 = add nsw i32 %30, 1, !dbg !535
  store i32 %inc43, i32* %i, align 4, !dbg !535
  br label %for.cond, !dbg !536, !llvm.loop !537

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !539
  call void @printIntLine(i32 %31), !dbg !540
  br label %if.end44, !dbg !541

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !542

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end46, !dbg !543

if.end46:                                         ; preds = %if.end45, %if.end31
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !545 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !549
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !549
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !550
  store i8* %arraydecay, i8** %data, align 8, !dbg !551
  %1 = load i32, i32* @globalFalse, align 4, !dbg !552
  %tobool = icmp ne i32 %1, 0, !dbg !552
  br i1 %tobool, label %if.then, label %if.else, !dbg !554

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !555
  br label %if.end, !dbg !557

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !558
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !560
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !561
  %tobool1 = icmp ne i32 %3, 0, !dbg !561
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !563

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !564, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata i32* %n, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !570, metadata !DIExpression()), !dbg !571
  %4 = load i8*, i8** %data, align 8, !dbg !572
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !574
  %cmp = icmp eq i32 %call3, 1, !dbg !575
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !576

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !577
  store i32 0, i32* %i, align 4, !dbg !579
  br label %for.cond, !dbg !581

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !582
  %6 = load i32, i32* %n, align 4, !dbg !584
  %cmp5 = icmp slt i32 %5, %6, !dbg !585
  br i1 %cmp5, label %for.body, label %for.end, !dbg !586

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !587
  %inc = add nsw i32 %7, 1, !dbg !587
  store i32 %inc, i32* %intVariable, align 4, !dbg !587
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !590
  %inc6 = add nsw i32 %8, 1, !dbg !590
  store i32 %inc6, i32* %i, align 4, !dbg !590
  br label %for.cond, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !594
  call void @printIntLine(i32 %9), !dbg !595
  br label %if.end7, !dbg !596

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !597

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !598
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !599 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !603
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !603
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !604
  store i8* %arraydecay, i8** %data, align 8, !dbg !605
  %1 = load i32, i32* @globalTrue, align 4, !dbg !606
  %tobool = icmp ne i32 %1, 0, !dbg !606
  br i1 %tobool, label %if.then, label %if.end, !dbg !608

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !609
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !611
  br label %if.end, !dbg !612

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !613
  %tobool1 = icmp ne i32 %3, 0, !dbg !613
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !615

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !616, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata i32* %n, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !622, metadata !DIExpression()), !dbg !623
  %4 = load i8*, i8** %data, align 8, !dbg !624
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !626
  %cmp = icmp eq i32 %call3, 1, !dbg !627
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !628

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !629
  store i32 0, i32* %i, align 4, !dbg !631
  br label %for.cond, !dbg !633

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !634
  %6 = load i32, i32* %n, align 4, !dbg !636
  %cmp5 = icmp slt i32 %5, %6, !dbg !637
  br i1 %cmp5, label %for.body, label %for.end, !dbg !638

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !639
  %inc = add nsw i32 %7, 1, !dbg !639
  store i32 %inc, i32* %intVariable, align 4, !dbg !639
  br label %for.inc, !dbg !641

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !642
  %inc6 = add nsw i32 %8, 1, !dbg !642
  store i32 %inc6, i32* %i, align 4, !dbg !642
  br label %for.cond, !dbg !643, !llvm.loop !644

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !646
  call void @printIntLine(i32 %9), !dbg !647
  br label %if.end7, !dbg !648

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !649

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_10_good() #0 !dbg !651 {
entry:
  call void @goodB2G1(), !dbg !652
  call void @goodB2G2(), !dbg !653
  call void @goodG2B1(), !dbg !654
  call void @goodG2B2(), !dbg !655
  ret void, !dbg !656
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_939/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{}
!68 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 52, type: !59)
!69 = !DILocation(line: 52, column: 12, scope: !64)
!70 = !DILocalVariable(name: "dataBuffer", scope: !64, file: !1, line: 53, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 100)
!74 = !DILocation(line: 53, column: 10, scope: !64)
!75 = !DILocation(line: 54, column: 12, scope: !64)
!76 = !DILocation(line: 54, column: 10, scope: !64)
!77 = !DILocation(line: 55, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 55, column: 8)
!79 = !DILocation(line: 55, column: 8, scope: !64)
!80 = !DILocalVariable(name: "recvResult", scope: !81, file: !1, line: 62, type: !83)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 57, column: 9)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 56, column: 5)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DILocation(line: 62, column: 17, scope: !81)
!85 = !DILocalVariable(name: "service", scope: !81, file: !1, line: 63, type: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !87)
!87 = !{!88, !89, !95, !102}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !86, file: !17, line: 240, baseType: !51, size: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !86, file: !17, line: 241, baseType: !90, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 25, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !94, line: 40, baseType: !53)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !86, file: !17, line: 242, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !96, file: !17, line: 33, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 26, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !94, line: 42, baseType: !5)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !86, file: !17, line: 245, baseType: !103, size: 64, offset: 64)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !105)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DILocation(line: 63, column: 32, scope: !81)
!108 = !DILocalVariable(name: "replace", scope: !81, file: !1, line: 64, type: !59)
!109 = !DILocation(line: 64, column: 19, scope: !81)
!110 = !DILocalVariable(name: "connectSocket", scope: !81, file: !1, line: 65, type: !83)
!111 = !DILocation(line: 65, column: 20, scope: !81)
!112 = !DILocalVariable(name: "dataLen", scope: !81, file: !1, line: 66, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !115)
!114 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DILocation(line: 66, column: 20, scope: !81)
!117 = !DILocation(line: 66, column: 37, scope: !81)
!118 = !DILocation(line: 66, column: 30, scope: !81)
!119 = !DILocation(line: 67, column: 13, scope: !81)
!120 = !DILocation(line: 77, column: 33, scope: !121)
!121 = distinct !DILexicalBlock(scope: !81, file: !1, line: 68, column: 13)
!122 = !DILocation(line: 77, column: 31, scope: !121)
!123 = !DILocation(line: 78, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 78, column: 21)
!125 = !DILocation(line: 78, column: 35, scope: !124)
!126 = !DILocation(line: 78, column: 21, scope: !121)
!127 = !DILocation(line: 80, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 79, column: 17)
!129 = !DILocation(line: 82, column: 17, scope: !121)
!130 = !DILocation(line: 83, column: 25, scope: !121)
!131 = !DILocation(line: 83, column: 36, scope: !121)
!132 = !DILocation(line: 84, column: 43, scope: !121)
!133 = !DILocation(line: 84, column: 25, scope: !121)
!134 = !DILocation(line: 84, column: 34, scope: !121)
!135 = !DILocation(line: 84, column: 41, scope: !121)
!136 = !DILocation(line: 85, column: 36, scope: !121)
!137 = !DILocation(line: 85, column: 25, scope: !121)
!138 = !DILocation(line: 85, column: 34, scope: !121)
!139 = !DILocation(line: 86, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !121, file: !1, line: 86, column: 21)
!141 = !DILocation(line: 86, column: 44, scope: !140)
!142 = !DILocation(line: 86, column: 21, scope: !140)
!143 = !DILocation(line: 86, column: 89, scope: !140)
!144 = !DILocation(line: 86, column: 21, scope: !121)
!145 = !DILocation(line: 88, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !140, file: !1, line: 87, column: 17)
!147 = !DILocation(line: 93, column: 35, scope: !121)
!148 = !DILocation(line: 93, column: 59, scope: !121)
!149 = !DILocation(line: 93, column: 66, scope: !121)
!150 = !DILocation(line: 93, column: 64, scope: !121)
!151 = !DILocation(line: 93, column: 98, scope: !121)
!152 = !DILocation(line: 93, column: 96, scope: !121)
!153 = !DILocation(line: 93, column: 106, scope: !121)
!154 = !DILocation(line: 93, column: 89, scope: !121)
!155 = !DILocation(line: 93, column: 30, scope: !121)
!156 = !DILocation(line: 93, column: 28, scope: !121)
!157 = !DILocation(line: 94, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !121, file: !1, line: 94, column: 21)
!159 = !DILocation(line: 94, column: 32, scope: !158)
!160 = !DILocation(line: 94, column: 48, scope: !158)
!161 = !DILocation(line: 94, column: 51, scope: !158)
!162 = !DILocation(line: 94, column: 62, scope: !158)
!163 = !DILocation(line: 94, column: 21, scope: !121)
!164 = !DILocation(line: 96, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 95, column: 17)
!166 = !DILocation(line: 99, column: 17, scope: !121)
!167 = !DILocation(line: 99, column: 22, scope: !121)
!168 = !DILocation(line: 99, column: 32, scope: !121)
!169 = !DILocation(line: 99, column: 43, scope: !121)
!170 = !DILocation(line: 99, column: 30, scope: !121)
!171 = !DILocation(line: 99, column: 59, scope: !121)
!172 = !DILocation(line: 101, column: 34, scope: !121)
!173 = !DILocation(line: 101, column: 27, scope: !121)
!174 = !DILocation(line: 101, column: 25, scope: !121)
!175 = !DILocation(line: 102, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !121, file: !1, line: 102, column: 21)
!177 = !DILocation(line: 102, column: 21, scope: !121)
!178 = !DILocation(line: 104, column: 22, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 103, column: 17)
!180 = !DILocation(line: 104, column: 30, scope: !179)
!181 = !DILocation(line: 105, column: 17, scope: !179)
!182 = !DILocation(line: 106, column: 34, scope: !121)
!183 = !DILocation(line: 106, column: 27, scope: !121)
!184 = !DILocation(line: 106, column: 25, scope: !121)
!185 = !DILocation(line: 107, column: 21, scope: !186)
!186 = distinct !DILexicalBlock(scope: !121, file: !1, line: 107, column: 21)
!187 = !DILocation(line: 107, column: 21, scope: !121)
!188 = !DILocation(line: 109, column: 22, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 108, column: 17)
!190 = !DILocation(line: 109, column: 30, scope: !189)
!191 = !DILocation(line: 110, column: 17, scope: !189)
!192 = !DILocation(line: 111, column: 13, scope: !121)
!193 = !DILocation(line: 113, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !81, file: !1, line: 113, column: 17)
!195 = !DILocation(line: 113, column: 31, scope: !194)
!196 = !DILocation(line: 113, column: 17, scope: !81)
!197 = !DILocation(line: 115, column: 30, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 114, column: 13)
!199 = !DILocation(line: 115, column: 17, scope: !198)
!200 = !DILocation(line: 116, column: 13, scope: !198)
!201 = !DILocation(line: 124, column: 5, scope: !82)
!202 = !DILocation(line: 125, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !64, file: !1, line: 125, column: 8)
!204 = !DILocation(line: 125, column: 8, scope: !64)
!205 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 128, type: !83)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 127, column: 9)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 126, column: 5)
!208 = !DILocation(line: 128, column: 17, scope: !206)
!209 = !DILocalVariable(name: "n", scope: !206, file: !1, line: 128, type: !83)
!210 = !DILocation(line: 128, column: 20, scope: !206)
!211 = !DILocalVariable(name: "intVariable", scope: !206, file: !1, line: 128, type: !83)
!212 = !DILocation(line: 128, column: 23, scope: !206)
!213 = !DILocation(line: 129, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !206, file: !1, line: 129, column: 17)
!215 = !DILocation(line: 129, column: 17, scope: !214)
!216 = !DILocation(line: 129, column: 40, scope: !214)
!217 = !DILocation(line: 129, column: 17, scope: !206)
!218 = !DILocation(line: 132, column: 29, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !1, line: 130, column: 13)
!220 = !DILocation(line: 133, column: 24, scope: !221)
!221 = distinct !DILexicalBlock(scope: !219, file: !1, line: 133, column: 17)
!222 = !DILocation(line: 133, column: 22, scope: !221)
!223 = !DILocation(line: 133, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 133, column: 17)
!225 = !DILocation(line: 133, column: 33, scope: !224)
!226 = !DILocation(line: 133, column: 31, scope: !224)
!227 = !DILocation(line: 133, column: 17, scope: !221)
!228 = !DILocation(line: 136, column: 32, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 134, column: 17)
!230 = !DILocation(line: 137, column: 17, scope: !229)
!231 = !DILocation(line: 133, column: 37, scope: !224)
!232 = !DILocation(line: 133, column: 17, scope: !224)
!233 = distinct !{!233, !227, !234, !235}
!234 = !DILocation(line: 137, column: 17, scope: !221)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 138, column: 30, scope: !219)
!237 = !DILocation(line: 138, column: 17, scope: !219)
!238 = !DILocation(line: 139, column: 13, scope: !219)
!239 = !DILocation(line: 141, column: 5, scope: !207)
!240 = !DILocation(line: 142, column: 1, scope: !64)
!241 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 149, type: !65, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!242 = !DILocalVariable(name: "data", scope: !241, file: !1, line: 151, type: !59)
!243 = !DILocation(line: 151, column: 12, scope: !241)
!244 = !DILocalVariable(name: "dataBuffer", scope: !241, file: !1, line: 152, type: !71)
!245 = !DILocation(line: 152, column: 10, scope: !241)
!246 = !DILocation(line: 153, column: 12, scope: !241)
!247 = !DILocation(line: 153, column: 10, scope: !241)
!248 = !DILocation(line: 154, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !1, line: 154, column: 8)
!250 = !DILocation(line: 154, column: 8, scope: !241)
!251 = !DILocalVariable(name: "recvResult", scope: !252, file: !1, line: 161, type: !83)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 156, column: 9)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 155, column: 5)
!254 = !DILocation(line: 161, column: 17, scope: !252)
!255 = !DILocalVariable(name: "service", scope: !252, file: !1, line: 162, type: !86)
!256 = !DILocation(line: 162, column: 32, scope: !252)
!257 = !DILocalVariable(name: "replace", scope: !252, file: !1, line: 163, type: !59)
!258 = !DILocation(line: 163, column: 19, scope: !252)
!259 = !DILocalVariable(name: "connectSocket", scope: !252, file: !1, line: 164, type: !83)
!260 = !DILocation(line: 164, column: 20, scope: !252)
!261 = !DILocalVariable(name: "dataLen", scope: !252, file: !1, line: 165, type: !113)
!262 = !DILocation(line: 165, column: 20, scope: !252)
!263 = !DILocation(line: 165, column: 37, scope: !252)
!264 = !DILocation(line: 165, column: 30, scope: !252)
!265 = !DILocation(line: 166, column: 13, scope: !252)
!266 = !DILocation(line: 176, column: 33, scope: !267)
!267 = distinct !DILexicalBlock(scope: !252, file: !1, line: 167, column: 13)
!268 = !DILocation(line: 176, column: 31, scope: !267)
!269 = !DILocation(line: 177, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !1, line: 177, column: 21)
!271 = !DILocation(line: 177, column: 35, scope: !270)
!272 = !DILocation(line: 177, column: 21, scope: !267)
!273 = !DILocation(line: 179, column: 21, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 178, column: 17)
!275 = !DILocation(line: 181, column: 17, scope: !267)
!276 = !DILocation(line: 182, column: 25, scope: !267)
!277 = !DILocation(line: 182, column: 36, scope: !267)
!278 = !DILocation(line: 183, column: 43, scope: !267)
!279 = !DILocation(line: 183, column: 25, scope: !267)
!280 = !DILocation(line: 183, column: 34, scope: !267)
!281 = !DILocation(line: 183, column: 41, scope: !267)
!282 = !DILocation(line: 184, column: 36, scope: !267)
!283 = !DILocation(line: 184, column: 25, scope: !267)
!284 = !DILocation(line: 184, column: 34, scope: !267)
!285 = !DILocation(line: 185, column: 29, scope: !286)
!286 = distinct !DILexicalBlock(scope: !267, file: !1, line: 185, column: 21)
!287 = !DILocation(line: 185, column: 44, scope: !286)
!288 = !DILocation(line: 185, column: 21, scope: !286)
!289 = !DILocation(line: 185, column: 89, scope: !286)
!290 = !DILocation(line: 185, column: 21, scope: !267)
!291 = !DILocation(line: 187, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !1, line: 186, column: 17)
!293 = !DILocation(line: 192, column: 35, scope: !267)
!294 = !DILocation(line: 192, column: 59, scope: !267)
!295 = !DILocation(line: 192, column: 66, scope: !267)
!296 = !DILocation(line: 192, column: 64, scope: !267)
!297 = !DILocation(line: 192, column: 98, scope: !267)
!298 = !DILocation(line: 192, column: 96, scope: !267)
!299 = !DILocation(line: 192, column: 106, scope: !267)
!300 = !DILocation(line: 192, column: 89, scope: !267)
!301 = !DILocation(line: 192, column: 30, scope: !267)
!302 = !DILocation(line: 192, column: 28, scope: !267)
!303 = !DILocation(line: 193, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !267, file: !1, line: 193, column: 21)
!305 = !DILocation(line: 193, column: 32, scope: !304)
!306 = !DILocation(line: 193, column: 48, scope: !304)
!307 = !DILocation(line: 193, column: 51, scope: !304)
!308 = !DILocation(line: 193, column: 62, scope: !304)
!309 = !DILocation(line: 193, column: 21, scope: !267)
!310 = !DILocation(line: 195, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !1, line: 194, column: 17)
!312 = !DILocation(line: 198, column: 17, scope: !267)
!313 = !DILocation(line: 198, column: 22, scope: !267)
!314 = !DILocation(line: 198, column: 32, scope: !267)
!315 = !DILocation(line: 198, column: 43, scope: !267)
!316 = !DILocation(line: 198, column: 30, scope: !267)
!317 = !DILocation(line: 198, column: 59, scope: !267)
!318 = !DILocation(line: 200, column: 34, scope: !267)
!319 = !DILocation(line: 200, column: 27, scope: !267)
!320 = !DILocation(line: 200, column: 25, scope: !267)
!321 = !DILocation(line: 201, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !267, file: !1, line: 201, column: 21)
!323 = !DILocation(line: 201, column: 21, scope: !267)
!324 = !DILocation(line: 203, column: 22, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 202, column: 17)
!326 = !DILocation(line: 203, column: 30, scope: !325)
!327 = !DILocation(line: 204, column: 17, scope: !325)
!328 = !DILocation(line: 205, column: 34, scope: !267)
!329 = !DILocation(line: 205, column: 27, scope: !267)
!330 = !DILocation(line: 205, column: 25, scope: !267)
!331 = !DILocation(line: 206, column: 21, scope: !332)
!332 = distinct !DILexicalBlock(scope: !267, file: !1, line: 206, column: 21)
!333 = !DILocation(line: 206, column: 21, scope: !267)
!334 = !DILocation(line: 208, column: 22, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 207, column: 17)
!336 = !DILocation(line: 208, column: 30, scope: !335)
!337 = !DILocation(line: 209, column: 17, scope: !335)
!338 = !DILocation(line: 210, column: 13, scope: !267)
!339 = !DILocation(line: 212, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !252, file: !1, line: 212, column: 17)
!341 = !DILocation(line: 212, column: 31, scope: !340)
!342 = !DILocation(line: 212, column: 17, scope: !252)
!343 = !DILocation(line: 214, column: 30, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 213, column: 13)
!345 = !DILocation(line: 214, column: 17, scope: !344)
!346 = !DILocation(line: 215, column: 13, scope: !344)
!347 = !DILocation(line: 223, column: 5, scope: !253)
!348 = !DILocation(line: 224, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !241, file: !1, line: 224, column: 8)
!350 = !DILocation(line: 224, column: 8, scope: !241)
!351 = !DILocation(line: 227, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 225, column: 5)
!353 = !DILocation(line: 228, column: 5, scope: !352)
!354 = !DILocalVariable(name: "i", scope: !355, file: !1, line: 232, type: !83)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 231, column: 9)
!356 = distinct !DILexicalBlock(scope: !349, file: !1, line: 230, column: 5)
!357 = !DILocation(line: 232, column: 17, scope: !355)
!358 = !DILocalVariable(name: "n", scope: !355, file: !1, line: 232, type: !83)
!359 = !DILocation(line: 232, column: 20, scope: !355)
!360 = !DILocalVariable(name: "intVariable", scope: !355, file: !1, line: 232, type: !83)
!361 = !DILocation(line: 232, column: 23, scope: !355)
!362 = !DILocation(line: 233, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !355, file: !1, line: 233, column: 17)
!364 = !DILocation(line: 233, column: 17, scope: !363)
!365 = !DILocation(line: 233, column: 40, scope: !363)
!366 = !DILocation(line: 233, column: 17, scope: !355)
!367 = !DILocation(line: 236, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 236, column: 21)
!369 = distinct !DILexicalBlock(scope: !363, file: !1, line: 234, column: 13)
!370 = !DILocation(line: 236, column: 23, scope: !368)
!371 = !DILocation(line: 236, column: 21, scope: !369)
!372 = !DILocation(line: 238, column: 33, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !1, line: 237, column: 17)
!374 = !DILocation(line: 239, column: 28, scope: !375)
!375 = distinct !DILexicalBlock(scope: !373, file: !1, line: 239, column: 21)
!376 = !DILocation(line: 239, column: 26, scope: !375)
!377 = !DILocation(line: 239, column: 33, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !1, line: 239, column: 21)
!379 = !DILocation(line: 239, column: 37, scope: !378)
!380 = !DILocation(line: 239, column: 35, scope: !378)
!381 = !DILocation(line: 239, column: 21, scope: !375)
!382 = !DILocation(line: 242, column: 36, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !1, line: 240, column: 21)
!384 = !DILocation(line: 243, column: 21, scope: !383)
!385 = !DILocation(line: 239, column: 41, scope: !378)
!386 = !DILocation(line: 239, column: 21, scope: !378)
!387 = distinct !{!387, !381, !388, !235}
!388 = !DILocation(line: 243, column: 21, scope: !375)
!389 = !DILocation(line: 244, column: 34, scope: !373)
!390 = !DILocation(line: 244, column: 21, scope: !373)
!391 = !DILocation(line: 245, column: 17, scope: !373)
!392 = !DILocation(line: 246, column: 13, scope: !369)
!393 = !DILocation(line: 249, column: 1, scope: !241)
!394 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 252, type: !65, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!395 = !DILocalVariable(name: "data", scope: !394, file: !1, line: 254, type: !59)
!396 = !DILocation(line: 254, column: 12, scope: !394)
!397 = !DILocalVariable(name: "dataBuffer", scope: !394, file: !1, line: 255, type: !71)
!398 = !DILocation(line: 255, column: 10, scope: !394)
!399 = !DILocation(line: 256, column: 12, scope: !394)
!400 = !DILocation(line: 256, column: 10, scope: !394)
!401 = !DILocation(line: 257, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !1, line: 257, column: 8)
!403 = !DILocation(line: 257, column: 8, scope: !394)
!404 = !DILocalVariable(name: "recvResult", scope: !405, file: !1, line: 264, type: !83)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 259, column: 9)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 258, column: 5)
!407 = !DILocation(line: 264, column: 17, scope: !405)
!408 = !DILocalVariable(name: "service", scope: !405, file: !1, line: 265, type: !86)
!409 = !DILocation(line: 265, column: 32, scope: !405)
!410 = !DILocalVariable(name: "replace", scope: !405, file: !1, line: 266, type: !59)
!411 = !DILocation(line: 266, column: 19, scope: !405)
!412 = !DILocalVariable(name: "connectSocket", scope: !405, file: !1, line: 267, type: !83)
!413 = !DILocation(line: 267, column: 20, scope: !405)
!414 = !DILocalVariable(name: "dataLen", scope: !405, file: !1, line: 268, type: !113)
!415 = !DILocation(line: 268, column: 20, scope: !405)
!416 = !DILocation(line: 268, column: 37, scope: !405)
!417 = !DILocation(line: 268, column: 30, scope: !405)
!418 = !DILocation(line: 269, column: 13, scope: !405)
!419 = !DILocation(line: 279, column: 33, scope: !420)
!420 = distinct !DILexicalBlock(scope: !405, file: !1, line: 270, column: 13)
!421 = !DILocation(line: 279, column: 31, scope: !420)
!422 = !DILocation(line: 280, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !1, line: 280, column: 21)
!424 = !DILocation(line: 280, column: 35, scope: !423)
!425 = !DILocation(line: 280, column: 21, scope: !420)
!426 = !DILocation(line: 282, column: 21, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !1, line: 281, column: 17)
!428 = !DILocation(line: 284, column: 17, scope: !420)
!429 = !DILocation(line: 285, column: 25, scope: !420)
!430 = !DILocation(line: 285, column: 36, scope: !420)
!431 = !DILocation(line: 286, column: 43, scope: !420)
!432 = !DILocation(line: 286, column: 25, scope: !420)
!433 = !DILocation(line: 286, column: 34, scope: !420)
!434 = !DILocation(line: 286, column: 41, scope: !420)
!435 = !DILocation(line: 287, column: 36, scope: !420)
!436 = !DILocation(line: 287, column: 25, scope: !420)
!437 = !DILocation(line: 287, column: 34, scope: !420)
!438 = !DILocation(line: 288, column: 29, scope: !439)
!439 = distinct !DILexicalBlock(scope: !420, file: !1, line: 288, column: 21)
!440 = !DILocation(line: 288, column: 44, scope: !439)
!441 = !DILocation(line: 288, column: 21, scope: !439)
!442 = !DILocation(line: 288, column: 89, scope: !439)
!443 = !DILocation(line: 288, column: 21, scope: !420)
!444 = !DILocation(line: 290, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !439, file: !1, line: 289, column: 17)
!446 = !DILocation(line: 295, column: 35, scope: !420)
!447 = !DILocation(line: 295, column: 59, scope: !420)
!448 = !DILocation(line: 295, column: 66, scope: !420)
!449 = !DILocation(line: 295, column: 64, scope: !420)
!450 = !DILocation(line: 295, column: 98, scope: !420)
!451 = !DILocation(line: 295, column: 96, scope: !420)
!452 = !DILocation(line: 295, column: 106, scope: !420)
!453 = !DILocation(line: 295, column: 89, scope: !420)
!454 = !DILocation(line: 295, column: 30, scope: !420)
!455 = !DILocation(line: 295, column: 28, scope: !420)
!456 = !DILocation(line: 296, column: 21, scope: !457)
!457 = distinct !DILexicalBlock(scope: !420, file: !1, line: 296, column: 21)
!458 = !DILocation(line: 296, column: 32, scope: !457)
!459 = !DILocation(line: 296, column: 48, scope: !457)
!460 = !DILocation(line: 296, column: 51, scope: !457)
!461 = !DILocation(line: 296, column: 62, scope: !457)
!462 = !DILocation(line: 296, column: 21, scope: !420)
!463 = !DILocation(line: 298, column: 21, scope: !464)
!464 = distinct !DILexicalBlock(scope: !457, file: !1, line: 297, column: 17)
!465 = !DILocation(line: 301, column: 17, scope: !420)
!466 = !DILocation(line: 301, column: 22, scope: !420)
!467 = !DILocation(line: 301, column: 32, scope: !420)
!468 = !DILocation(line: 301, column: 43, scope: !420)
!469 = !DILocation(line: 301, column: 30, scope: !420)
!470 = !DILocation(line: 301, column: 59, scope: !420)
!471 = !DILocation(line: 303, column: 34, scope: !420)
!472 = !DILocation(line: 303, column: 27, scope: !420)
!473 = !DILocation(line: 303, column: 25, scope: !420)
!474 = !DILocation(line: 304, column: 21, scope: !475)
!475 = distinct !DILexicalBlock(scope: !420, file: !1, line: 304, column: 21)
!476 = !DILocation(line: 304, column: 21, scope: !420)
!477 = !DILocation(line: 306, column: 22, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 305, column: 17)
!479 = !DILocation(line: 306, column: 30, scope: !478)
!480 = !DILocation(line: 307, column: 17, scope: !478)
!481 = !DILocation(line: 308, column: 34, scope: !420)
!482 = !DILocation(line: 308, column: 27, scope: !420)
!483 = !DILocation(line: 308, column: 25, scope: !420)
!484 = !DILocation(line: 309, column: 21, scope: !485)
!485 = distinct !DILexicalBlock(scope: !420, file: !1, line: 309, column: 21)
!486 = !DILocation(line: 309, column: 21, scope: !420)
!487 = !DILocation(line: 311, column: 22, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 310, column: 17)
!489 = !DILocation(line: 311, column: 30, scope: !488)
!490 = !DILocation(line: 312, column: 17, scope: !488)
!491 = !DILocation(line: 313, column: 13, scope: !420)
!492 = !DILocation(line: 315, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !405, file: !1, line: 315, column: 17)
!494 = !DILocation(line: 315, column: 31, scope: !493)
!495 = !DILocation(line: 315, column: 17, scope: !405)
!496 = !DILocation(line: 317, column: 30, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !1, line: 316, column: 13)
!498 = !DILocation(line: 317, column: 17, scope: !497)
!499 = !DILocation(line: 318, column: 13, scope: !497)
!500 = !DILocation(line: 326, column: 5, scope: !406)
!501 = !DILocation(line: 327, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !394, file: !1, line: 327, column: 8)
!503 = !DILocation(line: 327, column: 8, scope: !394)
!504 = !DILocalVariable(name: "i", scope: !505, file: !1, line: 330, type: !83)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 329, column: 9)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 328, column: 5)
!507 = !DILocation(line: 330, column: 17, scope: !505)
!508 = !DILocalVariable(name: "n", scope: !505, file: !1, line: 330, type: !83)
!509 = !DILocation(line: 330, column: 20, scope: !505)
!510 = !DILocalVariable(name: "intVariable", scope: !505, file: !1, line: 330, type: !83)
!511 = !DILocation(line: 330, column: 23, scope: !505)
!512 = !DILocation(line: 331, column: 24, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !1, line: 331, column: 17)
!514 = !DILocation(line: 331, column: 17, scope: !513)
!515 = !DILocation(line: 331, column: 40, scope: !513)
!516 = !DILocation(line: 331, column: 17, scope: !505)
!517 = !DILocation(line: 334, column: 21, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 334, column: 21)
!519 = distinct !DILexicalBlock(scope: !513, file: !1, line: 332, column: 13)
!520 = !DILocation(line: 334, column: 23, scope: !518)
!521 = !DILocation(line: 334, column: 21, scope: !519)
!522 = !DILocation(line: 336, column: 33, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 335, column: 17)
!524 = !DILocation(line: 337, column: 28, scope: !525)
!525 = distinct !DILexicalBlock(scope: !523, file: !1, line: 337, column: 21)
!526 = !DILocation(line: 337, column: 26, scope: !525)
!527 = !DILocation(line: 337, column: 33, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !1, line: 337, column: 21)
!529 = !DILocation(line: 337, column: 37, scope: !528)
!530 = !DILocation(line: 337, column: 35, scope: !528)
!531 = !DILocation(line: 337, column: 21, scope: !525)
!532 = !DILocation(line: 340, column: 36, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !1, line: 338, column: 21)
!534 = !DILocation(line: 341, column: 21, scope: !533)
!535 = !DILocation(line: 337, column: 41, scope: !528)
!536 = !DILocation(line: 337, column: 21, scope: !528)
!537 = distinct !{!537, !531, !538, !235}
!538 = !DILocation(line: 341, column: 21, scope: !525)
!539 = !DILocation(line: 342, column: 34, scope: !523)
!540 = !DILocation(line: 342, column: 21, scope: !523)
!541 = !DILocation(line: 343, column: 17, scope: !523)
!542 = !DILocation(line: 344, column: 13, scope: !519)
!543 = !DILocation(line: 346, column: 5, scope: !506)
!544 = !DILocation(line: 347, column: 1, scope: !394)
!545 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 350, type: !65, scopeLine: 351, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!546 = !DILocalVariable(name: "data", scope: !545, file: !1, line: 352, type: !59)
!547 = !DILocation(line: 352, column: 12, scope: !545)
!548 = !DILocalVariable(name: "dataBuffer", scope: !545, file: !1, line: 353, type: !71)
!549 = !DILocation(line: 353, column: 10, scope: !545)
!550 = !DILocation(line: 354, column: 12, scope: !545)
!551 = !DILocation(line: 354, column: 10, scope: !545)
!552 = !DILocation(line: 355, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !545, file: !1, line: 355, column: 8)
!554 = !DILocation(line: 355, column: 8, scope: !545)
!555 = !DILocation(line: 358, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 356, column: 5)
!557 = !DILocation(line: 359, column: 5, scope: !556)
!558 = !DILocation(line: 363, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !553, file: !1, line: 361, column: 5)
!560 = !DILocation(line: 363, column: 9, scope: !559)
!561 = !DILocation(line: 365, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !545, file: !1, line: 365, column: 8)
!563 = !DILocation(line: 365, column: 8, scope: !545)
!564 = !DILocalVariable(name: "i", scope: !565, file: !1, line: 368, type: !83)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 367, column: 9)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 366, column: 5)
!567 = !DILocation(line: 368, column: 17, scope: !565)
!568 = !DILocalVariable(name: "n", scope: !565, file: !1, line: 368, type: !83)
!569 = !DILocation(line: 368, column: 20, scope: !565)
!570 = !DILocalVariable(name: "intVariable", scope: !565, file: !1, line: 368, type: !83)
!571 = !DILocation(line: 368, column: 23, scope: !565)
!572 = !DILocation(line: 369, column: 24, scope: !573)
!573 = distinct !DILexicalBlock(scope: !565, file: !1, line: 369, column: 17)
!574 = !DILocation(line: 369, column: 17, scope: !573)
!575 = !DILocation(line: 369, column: 40, scope: !573)
!576 = !DILocation(line: 369, column: 17, scope: !565)
!577 = !DILocation(line: 372, column: 29, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !1, line: 370, column: 13)
!579 = !DILocation(line: 373, column: 24, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !1, line: 373, column: 17)
!581 = !DILocation(line: 373, column: 22, scope: !580)
!582 = !DILocation(line: 373, column: 29, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 373, column: 17)
!584 = !DILocation(line: 373, column: 33, scope: !583)
!585 = !DILocation(line: 373, column: 31, scope: !583)
!586 = !DILocation(line: 373, column: 17, scope: !580)
!587 = !DILocation(line: 376, column: 32, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 374, column: 17)
!589 = !DILocation(line: 377, column: 17, scope: !588)
!590 = !DILocation(line: 373, column: 37, scope: !583)
!591 = !DILocation(line: 373, column: 17, scope: !583)
!592 = distinct !{!592, !586, !593, !235}
!593 = !DILocation(line: 377, column: 17, scope: !580)
!594 = !DILocation(line: 378, column: 30, scope: !578)
!595 = !DILocation(line: 378, column: 17, scope: !578)
!596 = !DILocation(line: 379, column: 13, scope: !578)
!597 = !DILocation(line: 381, column: 5, scope: !566)
!598 = !DILocation(line: 382, column: 1, scope: !545)
!599 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 385, type: !65, scopeLine: 386, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!600 = !DILocalVariable(name: "data", scope: !599, file: !1, line: 387, type: !59)
!601 = !DILocation(line: 387, column: 12, scope: !599)
!602 = !DILocalVariable(name: "dataBuffer", scope: !599, file: !1, line: 388, type: !71)
!603 = !DILocation(line: 388, column: 10, scope: !599)
!604 = !DILocation(line: 389, column: 12, scope: !599)
!605 = !DILocation(line: 389, column: 10, scope: !599)
!606 = !DILocation(line: 390, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !599, file: !1, line: 390, column: 8)
!608 = !DILocation(line: 390, column: 8, scope: !599)
!609 = !DILocation(line: 393, column: 16, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !1, line: 391, column: 5)
!611 = !DILocation(line: 393, column: 9, scope: !610)
!612 = !DILocation(line: 394, column: 5, scope: !610)
!613 = !DILocation(line: 395, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !599, file: !1, line: 395, column: 8)
!615 = !DILocation(line: 395, column: 8, scope: !599)
!616 = !DILocalVariable(name: "i", scope: !617, file: !1, line: 398, type: !83)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 397, column: 9)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 396, column: 5)
!619 = !DILocation(line: 398, column: 17, scope: !617)
!620 = !DILocalVariable(name: "n", scope: !617, file: !1, line: 398, type: !83)
!621 = !DILocation(line: 398, column: 20, scope: !617)
!622 = !DILocalVariable(name: "intVariable", scope: !617, file: !1, line: 398, type: !83)
!623 = !DILocation(line: 398, column: 23, scope: !617)
!624 = !DILocation(line: 399, column: 24, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !1, line: 399, column: 17)
!626 = !DILocation(line: 399, column: 17, scope: !625)
!627 = !DILocation(line: 399, column: 40, scope: !625)
!628 = !DILocation(line: 399, column: 17, scope: !617)
!629 = !DILocation(line: 402, column: 29, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !1, line: 400, column: 13)
!631 = !DILocation(line: 403, column: 24, scope: !632)
!632 = distinct !DILexicalBlock(scope: !630, file: !1, line: 403, column: 17)
!633 = !DILocation(line: 403, column: 22, scope: !632)
!634 = !DILocation(line: 403, column: 29, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !1, line: 403, column: 17)
!636 = !DILocation(line: 403, column: 33, scope: !635)
!637 = !DILocation(line: 403, column: 31, scope: !635)
!638 = !DILocation(line: 403, column: 17, scope: !632)
!639 = !DILocation(line: 406, column: 32, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !1, line: 404, column: 17)
!641 = !DILocation(line: 407, column: 17, scope: !640)
!642 = !DILocation(line: 403, column: 37, scope: !635)
!643 = !DILocation(line: 403, column: 17, scope: !635)
!644 = distinct !{!644, !638, !645, !235}
!645 = !DILocation(line: 407, column: 17, scope: !632)
!646 = !DILocation(line: 408, column: 30, scope: !630)
!647 = !DILocation(line: 408, column: 17, scope: !630)
!648 = !DILocation(line: 409, column: 13, scope: !630)
!649 = !DILocation(line: 411, column: 5, scope: !618)
!650 = !DILocation(line: 412, column: 1, scope: !599)
!651 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10_good", scope: !1, file: !1, line: 414, type: !65, scopeLine: 415, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!652 = !DILocation(line: 416, column: 5, scope: !651)
!653 = !DILocation(line: 417, column: 5, scope: !651)
!654 = !DILocation(line: 418, column: 5, scope: !651)
!655 = !DILocation(line: 419, column: 5, scope: !651)
!656 = !DILocation(line: 420, column: 1, scope: !651)
