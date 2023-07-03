; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_04.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !63
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_04_bad() #0 !dbg !70 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %data, align 8, !dbg !82
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !83
  %tobool = icmp ne i32 %1, 0, !dbg !83
  br i1 %tobool, label %if.then, label %if.end31, !dbg !85

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !90, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %connectSocket, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !121
  %2 = load i8*, i8** %data, align 8, !dbg !122
  %call = call i64 @strlen(i8* %2) #7, !dbg !123
  store i64 %call, i64* %dataLen, align 8, !dbg !121
  br label %do.body, !dbg !124

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !125
  store i32 %call1, i32* %connectSocket, align 4, !dbg !127
  %3 = load i32, i32* %connectSocket, align 4, !dbg !128
  %cmp = icmp eq i32 %3, -1, !dbg !130
  br i1 %cmp, label %if.then2, label %if.end, !dbg !131

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !132

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !134
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !135
  store i16 2, i16* %sin_family, align 4, !dbg !136
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !137
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !138
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !139
  store i32 %call3, i32* %s_addr, align 4, !dbg !140
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !141
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !142
  store i16 %call4, i16* %sin_port, align 2, !dbg !143
  %5 = load i32, i32* %connectSocket, align 4, !dbg !144
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !146
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !147
  %cmp6 = icmp eq i32 %call5, -1, !dbg !148
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !149

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !150

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !152
  %8 = load i8*, i8** %data, align 8, !dbg !153
  %9 = load i64, i64* %dataLen, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !155
  %10 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub = sub i64 100, %10, !dbg !157
  %sub9 = sub i64 %sub, 1, !dbg !158
  %mul = mul i64 1, %sub9, !dbg !159
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !160
  %conv = trunc i64 %call10 to i32, !dbg !160
  store i32 %conv, i32* %recvResult, align 4, !dbg !161
  %11 = load i32, i32* %recvResult, align 4, !dbg !162
  %cmp11 = icmp eq i32 %11, -1, !dbg !164
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !166
  %cmp13 = icmp eq i32 %12, 0, !dbg !167
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !168

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !169

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !171
  %14 = load i64, i64* %dataLen, align 8, !dbg !172
  %15 = load i32, i32* %recvResult, align 4, !dbg !173
  %conv17 = sext i32 %15 to i64, !dbg !173
  %div = udiv i64 %conv17, 1, !dbg !174
  %add = add i64 %14, %div, !dbg !175
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !171
  store i8 0, i8* %arrayidx, align 1, !dbg !176
  %16 = load i8*, i8** %data, align 8, !dbg !177
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !178
  store i8* %call18, i8** %replace, align 8, !dbg !179
  %17 = load i8*, i8** %replace, align 8, !dbg !180
  %tobool19 = icmp ne i8* %17, null, !dbg !180
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !182

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !183
  store i8 0, i8* %18, align 1, !dbg !185
  br label %if.end21, !dbg !186

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !187
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !188
  store i8* %call22, i8** %replace, align 8, !dbg !189
  %20 = load i8*, i8** %replace, align 8, !dbg !190
  %tobool23 = icmp ne i8* %20, null, !dbg !190
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !192

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !193
  store i8 0, i8* %21, align 1, !dbg !195
  br label %if.end25, !dbg !196

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !197

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !198
  %cmp26 = icmp ne i32 %22, -1, !dbg !200
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !201

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !202
  %call29 = call i32 @close(i32 %23), !dbg !204
  br label %if.end30, !dbg !205

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !206

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !207
  %tobool32 = icmp ne i32 %24, 0, !dbg !207
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !209

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %n, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !216, metadata !DIExpression()), !dbg !217
  %25 = load i8*, i8** %data, align 8, !dbg !218
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !220
  %cmp35 = icmp eq i32 %call34, 1, !dbg !221
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !222

if.then37:                                        ; preds = %if.then33
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then37
  %26 = load i32, i32* %i, align 4, !dbg !228
  %27 = load i32, i32* %n, align 4, !dbg !230
  %cmp38 = icmp slt i32 %26, %27, !dbg !231
  br i1 %cmp38, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %28, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !236
  %inc40 = add nsw i32 %29, 1, !dbg !236
  store i32 %inc40, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %intVariable, align 4, !dbg !241
  call void @printIntLine(i32 %30), !dbg !242
  br label %if.end41, !dbg !243

if.end41:                                         ; preds = %for.end, %if.then33
  br label %if.end42, !dbg !244

if.end42:                                         ; preds = %if.end41, %if.end31
  ret void, !dbg !245
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
define dso_local void @goodB2G1() #0 !dbg !246 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !253
  %tobool = icmp ne i32 %1, 0, !dbg !253
  br i1 %tobool, label %if.then, label %if.end31, !dbg !255

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 -1, i32* %connectSocket, align 4, !dbg !265
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !266, metadata !DIExpression()), !dbg !267
  %2 = load i8*, i8** %data, align 8, !dbg !268
  %call = call i64 @strlen(i8* %2) #7, !dbg !269
  store i64 %call, i64* %dataLen, align 8, !dbg !267
  br label %do.body, !dbg !270

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !271
  store i32 %call1, i32* %connectSocket, align 4, !dbg !273
  %3 = load i32, i32* %connectSocket, align 4, !dbg !274
  %cmp = icmp eq i32 %3, -1, !dbg !276
  br i1 %cmp, label %if.then2, label %if.end, !dbg !277

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !278

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !280
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !280
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !281
  store i16 2, i16* %sin_family, align 4, !dbg !282
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !283
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !284
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !285
  store i32 %call3, i32* %s_addr, align 4, !dbg !286
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !287
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !288
  store i16 %call4, i16* %sin_port, align 2, !dbg !289
  %5 = load i32, i32* %connectSocket, align 4, !dbg !290
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !292
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !293
  %cmp6 = icmp eq i32 %call5, -1, !dbg !294
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !295

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !296

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !298
  %8 = load i8*, i8** %data, align 8, !dbg !299
  %9 = load i64, i64* %dataLen, align 8, !dbg !300
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !301
  %10 = load i64, i64* %dataLen, align 8, !dbg !302
  %sub = sub i64 100, %10, !dbg !303
  %sub9 = sub i64 %sub, 1, !dbg !304
  %mul = mul i64 1, %sub9, !dbg !305
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !306
  %conv = trunc i64 %call10 to i32, !dbg !306
  store i32 %conv, i32* %recvResult, align 4, !dbg !307
  %11 = load i32, i32* %recvResult, align 4, !dbg !308
  %cmp11 = icmp eq i32 %11, -1, !dbg !310
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !311

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !312
  %cmp13 = icmp eq i32 %12, 0, !dbg !313
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !314

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !315

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !317
  %14 = load i64, i64* %dataLen, align 8, !dbg !318
  %15 = load i32, i32* %recvResult, align 4, !dbg !319
  %conv17 = sext i32 %15 to i64, !dbg !319
  %div = udiv i64 %conv17, 1, !dbg !320
  %add = add i64 %14, %div, !dbg !321
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !317
  store i8 0, i8* %arrayidx, align 1, !dbg !322
  %16 = load i8*, i8** %data, align 8, !dbg !323
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !324
  store i8* %call18, i8** %replace, align 8, !dbg !325
  %17 = load i8*, i8** %replace, align 8, !dbg !326
  %tobool19 = icmp ne i8* %17, null, !dbg !326
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !328

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !329
  store i8 0, i8* %18, align 1, !dbg !331
  br label %if.end21, !dbg !332

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !333
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !334
  store i8* %call22, i8** %replace, align 8, !dbg !335
  %20 = load i8*, i8** %replace, align 8, !dbg !336
  %tobool23 = icmp ne i8* %20, null, !dbg !336
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !338

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !339
  store i8 0, i8* %21, align 1, !dbg !341
  br label %if.end25, !dbg !342

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !343

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !344
  %cmp26 = icmp ne i32 %22, -1, !dbg !346
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !347

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !348
  %call29 = call i32 @close(i32 %23), !dbg !350
  br label %if.end30, !dbg !351

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !352

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !353
  %tobool32 = icmp ne i32 %24, 0, !dbg !353
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !355

if.then33:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !356
  br label %if.end46, !dbg !358

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !359, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %n, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !365, metadata !DIExpression()), !dbg !366
  %25 = load i8*, i8** %data, align 8, !dbg !367
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !369
  %cmp35 = icmp eq i32 %call34, 1, !dbg !370
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !371

if.then37:                                        ; preds = %if.else
  %26 = load i32, i32* %n, align 4, !dbg !372
  %cmp38 = icmp slt i32 %26, 10000, !dbg !375
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !376

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !377
  store i32 0, i32* %i, align 4, !dbg !379
  br label %for.cond, !dbg !381

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !382
  %28 = load i32, i32* %n, align 4, !dbg !384
  %cmp41 = icmp slt i32 %27, %28, !dbg !385
  br i1 %cmp41, label %for.body, label %for.end, !dbg !386

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !387
  %inc = add nsw i32 %29, 1, !dbg !387
  store i32 %inc, i32* %intVariable, align 4, !dbg !387
  br label %for.inc, !dbg !389

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !390
  %inc43 = add nsw i32 %30, 1, !dbg !390
  store i32 %inc43, i32* %i, align 4, !dbg !390
  br label %for.cond, !dbg !391, !llvm.loop !392

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !394
  call void @printIntLine(i32 %31), !dbg !395
  br label %if.end44, !dbg !396

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !397

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  ret void, !dbg !398
}

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !399 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !403
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !403
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !404
  store i8* %arraydecay, i8** %data, align 8, !dbg !405
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !406
  %tobool = icmp ne i32 %1, 0, !dbg !406
  br i1 %tobool, label %if.then, label %if.end31, !dbg !408

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !417, metadata !DIExpression()), !dbg !418
  store i32 -1, i32* %connectSocket, align 4, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !419, metadata !DIExpression()), !dbg !420
  %2 = load i8*, i8** %data, align 8, !dbg !421
  %call = call i64 @strlen(i8* %2) #7, !dbg !422
  store i64 %call, i64* %dataLen, align 8, !dbg !420
  br label %do.body, !dbg !423

do.body:                                          ; preds = %if.then
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !424
  store i32 %call1, i32* %connectSocket, align 4, !dbg !426
  %3 = load i32, i32* %connectSocket, align 4, !dbg !427
  %cmp = icmp eq i32 %3, -1, !dbg !429
  br i1 %cmp, label %if.then2, label %if.end, !dbg !430

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !431

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !433
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !434
  store i16 2, i16* %sin_family, align 4, !dbg !435
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !436
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !437
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !438
  store i32 %call3, i32* %s_addr, align 4, !dbg !439
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !440
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !441
  store i16 %call4, i16* %sin_port, align 2, !dbg !442
  %5 = load i32, i32* %connectSocket, align 4, !dbg !443
  %6 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !445
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !446
  %cmp6 = icmp eq i32 %call5, -1, !dbg !447
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !448

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !449

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %connectSocket, align 4, !dbg !451
  %8 = load i8*, i8** %data, align 8, !dbg !452
  %9 = load i64, i64* %dataLen, align 8, !dbg !453
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !454
  %10 = load i64, i64* %dataLen, align 8, !dbg !455
  %sub = sub i64 100, %10, !dbg !456
  %sub9 = sub i64 %sub, 1, !dbg !457
  %mul = mul i64 1, %sub9, !dbg !458
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !459
  %conv = trunc i64 %call10 to i32, !dbg !459
  store i32 %conv, i32* %recvResult, align 4, !dbg !460
  %11 = load i32, i32* %recvResult, align 4, !dbg !461
  %cmp11 = icmp eq i32 %11, -1, !dbg !463
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !464

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %recvResult, align 4, !dbg !465
  %cmp13 = icmp eq i32 %12, 0, !dbg !466
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !467

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !468

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %data, align 8, !dbg !470
  %14 = load i64, i64* %dataLen, align 8, !dbg !471
  %15 = load i32, i32* %recvResult, align 4, !dbg !472
  %conv17 = sext i32 %15 to i64, !dbg !472
  %div = udiv i64 %conv17, 1, !dbg !473
  %add = add i64 %14, %div, !dbg !474
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !470
  store i8 0, i8* %arrayidx, align 1, !dbg !475
  %16 = load i8*, i8** %data, align 8, !dbg !476
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !477
  store i8* %call18, i8** %replace, align 8, !dbg !478
  %17 = load i8*, i8** %replace, align 8, !dbg !479
  %tobool19 = icmp ne i8* %17, null, !dbg !479
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !481

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %replace, align 8, !dbg !482
  store i8 0, i8* %18, align 1, !dbg !484
  br label %if.end21, !dbg !485

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %data, align 8, !dbg !486
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !487
  store i8* %call22, i8** %replace, align 8, !dbg !488
  %20 = load i8*, i8** %replace, align 8, !dbg !489
  %tobool23 = icmp ne i8* %20, null, !dbg !489
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !491

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %replace, align 8, !dbg !492
  store i8 0, i8* %21, align 1, !dbg !494
  br label %if.end25, !dbg !495

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !496

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %connectSocket, align 4, !dbg !497
  %cmp26 = icmp ne i32 %22, -1, !dbg !499
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !500

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %connectSocket, align 4, !dbg !501
  %call29 = call i32 @close(i32 %23), !dbg !503
  br label %if.end30, !dbg !504

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !505

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !506
  %tobool32 = icmp ne i32 %24, 0, !dbg !506
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !508

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %n, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !515, metadata !DIExpression()), !dbg !516
  %25 = load i8*, i8** %data, align 8, !dbg !517
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !519
  %cmp35 = icmp eq i32 %call34, 1, !dbg !520
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !521

if.then37:                                        ; preds = %if.then33
  %26 = load i32, i32* %n, align 4, !dbg !522
  %cmp38 = icmp slt i32 %26, 10000, !dbg !525
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !526

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %intVariable, align 4, !dbg !527
  store i32 0, i32* %i, align 4, !dbg !529
  br label %for.cond, !dbg !531

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %i, align 4, !dbg !532
  %28 = load i32, i32* %n, align 4, !dbg !534
  %cmp41 = icmp slt i32 %27, %28, !dbg !535
  br i1 %cmp41, label %for.body, label %for.end, !dbg !536

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !537
  %inc = add nsw i32 %29, 1, !dbg !537
  store i32 %inc, i32* %intVariable, align 4, !dbg !537
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !540
  %inc43 = add nsw i32 %30, 1, !dbg !540
  store i32 %inc43, i32* %i, align 4, !dbg !540
  br label %for.cond, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %intVariable, align 4, !dbg !544
  call void @printIntLine(i32 %31), !dbg !545
  br label %if.end44, !dbg !546

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !547

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end46, !dbg !548

if.end46:                                         ; preds = %if.end45, %if.end31
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !550 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !554
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !554
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !555
  store i8* %arraydecay, i8** %data, align 8, !dbg !556
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !557
  %tobool = icmp ne i32 %1, 0, !dbg !557
  br i1 %tobool, label %if.then, label %if.else, !dbg !559

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !560
  br label %if.end, !dbg !562

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !563
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !565
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !566
  %tobool1 = icmp ne i32 %3, 0, !dbg !566
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !568

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !569, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %n, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !575, metadata !DIExpression()), !dbg !576
  %4 = load i8*, i8** %data, align 8, !dbg !577
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !579
  %cmp = icmp eq i32 %call3, 1, !dbg !580
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !581

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !582
  store i32 0, i32* %i, align 4, !dbg !584
  br label %for.cond, !dbg !586

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !587
  %6 = load i32, i32* %n, align 4, !dbg !589
  %cmp5 = icmp slt i32 %5, %6, !dbg !590
  br i1 %cmp5, label %for.body, label %for.end, !dbg !591

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !592
  %inc = add nsw i32 %7, 1, !dbg !592
  store i32 %inc, i32* %intVariable, align 4, !dbg !592
  br label %for.inc, !dbg !594

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !595
  %inc6 = add nsw i32 %8, 1, !dbg !595
  store i32 %inc6, i32* %i, align 4, !dbg !595
  br label %for.cond, !dbg !596, !llvm.loop !597

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !599
  call void @printIntLine(i32 %9), !dbg !600
  br label %if.end7, !dbg !601

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !602

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !603
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !604 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !608
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !608
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !609
  store i8* %arraydecay, i8** %data, align 8, !dbg !610
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !611
  %tobool = icmp ne i32 %1, 0, !dbg !611
  br i1 %tobool, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !614
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !616
  br label %if.end, !dbg !617

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !618
  %tobool1 = icmp ne i32 %3, 0, !dbg !618
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !620

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !621, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata i32* %n, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !627, metadata !DIExpression()), !dbg !628
  %4 = load i8*, i8** %data, align 8, !dbg !629
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !631
  %cmp = icmp eq i32 %call3, 1, !dbg !632
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !633

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !634
  store i32 0, i32* %i, align 4, !dbg !636
  br label %for.cond, !dbg !638

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !639
  %6 = load i32, i32* %n, align 4, !dbg !641
  %cmp5 = icmp slt i32 %5, %6, !dbg !642
  br i1 %cmp5, label %for.body, label %for.end, !dbg !643

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !644
  %inc = add nsw i32 %7, 1, !dbg !644
  store i32 %inc, i32* %intVariable, align 4, !dbg !644
  br label %for.inc, !dbg !646

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !647
  %inc6 = add nsw i32 %8, 1, !dbg !647
  store i32 %inc6, i32* %i, align 4, !dbg !647
  br label %for.cond, !dbg !648, !llvm.loop !649

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !651
  call void @printIntLine(i32 %9), !dbg !652
  br label %if.end7, !dbg !653

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !654

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good() #0 !dbg !656 {
entry:
  call void @goodB2G1(), !dbg !657
  call void @goodB2G2(), !dbg !658
  call void @goodG2B1(), !dbg !659
  call void @goodG2B2(), !dbg !660
  ret void, !dbg !661
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 51, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_933/source_code")
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
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 52, type: !65, isLocal: false, isDefinition: true)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{!"clang version 12.0.0"}
!70 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04_bad", scope: !3, file: !3, line: 56, type: !71, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !{}
!74 = !DILocalVariable(name: "data", scope: !70, file: !3, line: 58, type: !61)
!75 = !DILocation(line: 58, column: 12, scope: !70)
!76 = !DILocalVariable(name: "dataBuffer", scope: !70, file: !3, line: 59, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 59, column: 10, scope: !70)
!81 = !DILocation(line: 60, column: 12, scope: !70)
!82 = !DILocation(line: 60, column: 10, scope: !70)
!83 = !DILocation(line: 61, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !70, file: !3, line: 61, column: 8)
!85 = !DILocation(line: 61, column: 8, scope: !70)
!86 = !DILocalVariable(name: "recvResult", scope: !87, file: !3, line: 68, type: !65)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 63, column: 9)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 62, column: 5)
!89 = !DILocation(line: 68, column: 17, scope: !87)
!90 = !DILocalVariable(name: "service", scope: !87, file: !3, line: 69, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !92)
!92 = !{!93, !94, !100, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !91, file: !19, line: 240, baseType: !53, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !91, file: !19, line: 241, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !97, line: 25, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !99, line: 40, baseType: !55)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !91, file: !19, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !19, line: 33, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 26, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !7)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !91, file: !19, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 69, column: 32, scope: !87)
!113 = !DILocalVariable(name: "replace", scope: !87, file: !3, line: 70, type: !61)
!114 = !DILocation(line: 70, column: 19, scope: !87)
!115 = !DILocalVariable(name: "connectSocket", scope: !87, file: !3, line: 71, type: !65)
!116 = !DILocation(line: 71, column: 20, scope: !87)
!117 = !DILocalVariable(name: "dataLen", scope: !87, file: !3, line: 72, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocation(line: 72, column: 20, scope: !87)
!122 = !DILocation(line: 72, column: 37, scope: !87)
!123 = !DILocation(line: 72, column: 30, scope: !87)
!124 = !DILocation(line: 73, column: 13, scope: !87)
!125 = !DILocation(line: 83, column: 33, scope: !126)
!126 = distinct !DILexicalBlock(scope: !87, file: !3, line: 74, column: 13)
!127 = !DILocation(line: 83, column: 31, scope: !126)
!128 = !DILocation(line: 84, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 84, column: 21)
!130 = !DILocation(line: 84, column: 35, scope: !129)
!131 = !DILocation(line: 84, column: 21, scope: !126)
!132 = !DILocation(line: 86, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 85, column: 17)
!134 = !DILocation(line: 88, column: 17, scope: !126)
!135 = !DILocation(line: 89, column: 25, scope: !126)
!136 = !DILocation(line: 89, column: 36, scope: !126)
!137 = !DILocation(line: 90, column: 43, scope: !126)
!138 = !DILocation(line: 90, column: 25, scope: !126)
!139 = !DILocation(line: 90, column: 34, scope: !126)
!140 = !DILocation(line: 90, column: 41, scope: !126)
!141 = !DILocation(line: 91, column: 36, scope: !126)
!142 = !DILocation(line: 91, column: 25, scope: !126)
!143 = !DILocation(line: 91, column: 34, scope: !126)
!144 = !DILocation(line: 92, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !3, line: 92, column: 21)
!146 = !DILocation(line: 92, column: 44, scope: !145)
!147 = !DILocation(line: 92, column: 21, scope: !145)
!148 = !DILocation(line: 92, column: 89, scope: !145)
!149 = !DILocation(line: 92, column: 21, scope: !126)
!150 = !DILocation(line: 94, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 93, column: 17)
!152 = !DILocation(line: 99, column: 35, scope: !126)
!153 = !DILocation(line: 99, column: 59, scope: !126)
!154 = !DILocation(line: 99, column: 66, scope: !126)
!155 = !DILocation(line: 99, column: 64, scope: !126)
!156 = !DILocation(line: 99, column: 98, scope: !126)
!157 = !DILocation(line: 99, column: 96, scope: !126)
!158 = !DILocation(line: 99, column: 106, scope: !126)
!159 = !DILocation(line: 99, column: 89, scope: !126)
!160 = !DILocation(line: 99, column: 30, scope: !126)
!161 = !DILocation(line: 99, column: 28, scope: !126)
!162 = !DILocation(line: 100, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !126, file: !3, line: 100, column: 21)
!164 = !DILocation(line: 100, column: 32, scope: !163)
!165 = !DILocation(line: 100, column: 48, scope: !163)
!166 = !DILocation(line: 100, column: 51, scope: !163)
!167 = !DILocation(line: 100, column: 62, scope: !163)
!168 = !DILocation(line: 100, column: 21, scope: !126)
!169 = !DILocation(line: 102, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !3, line: 101, column: 17)
!171 = !DILocation(line: 105, column: 17, scope: !126)
!172 = !DILocation(line: 105, column: 22, scope: !126)
!173 = !DILocation(line: 105, column: 32, scope: !126)
!174 = !DILocation(line: 105, column: 43, scope: !126)
!175 = !DILocation(line: 105, column: 30, scope: !126)
!176 = !DILocation(line: 105, column: 59, scope: !126)
!177 = !DILocation(line: 107, column: 34, scope: !126)
!178 = !DILocation(line: 107, column: 27, scope: !126)
!179 = !DILocation(line: 107, column: 25, scope: !126)
!180 = !DILocation(line: 108, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !126, file: !3, line: 108, column: 21)
!182 = !DILocation(line: 108, column: 21, scope: !126)
!183 = !DILocation(line: 110, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !3, line: 109, column: 17)
!185 = !DILocation(line: 110, column: 30, scope: !184)
!186 = !DILocation(line: 111, column: 17, scope: !184)
!187 = !DILocation(line: 112, column: 34, scope: !126)
!188 = !DILocation(line: 112, column: 27, scope: !126)
!189 = !DILocation(line: 112, column: 25, scope: !126)
!190 = !DILocation(line: 113, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !126, file: !3, line: 113, column: 21)
!192 = !DILocation(line: 113, column: 21, scope: !126)
!193 = !DILocation(line: 115, column: 22, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 114, column: 17)
!195 = !DILocation(line: 115, column: 30, scope: !194)
!196 = !DILocation(line: 116, column: 17, scope: !194)
!197 = !DILocation(line: 117, column: 13, scope: !126)
!198 = !DILocation(line: 119, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !87, file: !3, line: 119, column: 17)
!200 = !DILocation(line: 119, column: 31, scope: !199)
!201 = !DILocation(line: 119, column: 17, scope: !87)
!202 = !DILocation(line: 121, column: 30, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 120, column: 13)
!204 = !DILocation(line: 121, column: 17, scope: !203)
!205 = !DILocation(line: 122, column: 13, scope: !203)
!206 = !DILocation(line: 130, column: 5, scope: !88)
!207 = !DILocation(line: 131, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !70, file: !3, line: 131, column: 8)
!209 = !DILocation(line: 131, column: 8, scope: !70)
!210 = !DILocalVariable(name: "i", scope: !211, file: !3, line: 134, type: !65)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 133, column: 9)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 132, column: 5)
!213 = !DILocation(line: 134, column: 17, scope: !211)
!214 = !DILocalVariable(name: "n", scope: !211, file: !3, line: 134, type: !65)
!215 = !DILocation(line: 134, column: 20, scope: !211)
!216 = !DILocalVariable(name: "intVariable", scope: !211, file: !3, line: 134, type: !65)
!217 = !DILocation(line: 134, column: 23, scope: !211)
!218 = !DILocation(line: 135, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !3, line: 135, column: 17)
!220 = !DILocation(line: 135, column: 17, scope: !219)
!221 = !DILocation(line: 135, column: 40, scope: !219)
!222 = !DILocation(line: 135, column: 17, scope: !211)
!223 = !DILocation(line: 138, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 136, column: 13)
!225 = !DILocation(line: 139, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !3, line: 139, column: 17)
!227 = !DILocation(line: 139, column: 22, scope: !226)
!228 = !DILocation(line: 139, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 139, column: 17)
!230 = !DILocation(line: 139, column: 33, scope: !229)
!231 = !DILocation(line: 139, column: 31, scope: !229)
!232 = !DILocation(line: 139, column: 17, scope: !226)
!233 = !DILocation(line: 142, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 140, column: 17)
!235 = !DILocation(line: 143, column: 17, scope: !234)
!236 = !DILocation(line: 139, column: 37, scope: !229)
!237 = !DILocation(line: 139, column: 17, scope: !229)
!238 = distinct !{!238, !232, !239, !240}
!239 = !DILocation(line: 143, column: 17, scope: !226)
!240 = !{!"llvm.loop.mustprogress"}
!241 = !DILocation(line: 144, column: 30, scope: !224)
!242 = !DILocation(line: 144, column: 17, scope: !224)
!243 = !DILocation(line: 145, column: 13, scope: !224)
!244 = !DILocation(line: 147, column: 5, scope: !212)
!245 = !DILocation(line: 148, column: 1, scope: !70)
!246 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 155, type: !71, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 157, type: !61)
!248 = !DILocation(line: 157, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !3, line: 158, type: !77)
!250 = !DILocation(line: 158, column: 10, scope: !246)
!251 = !DILocation(line: 159, column: 12, scope: !246)
!252 = !DILocation(line: 159, column: 10, scope: !246)
!253 = !DILocation(line: 160, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 160, column: 8)
!255 = !DILocation(line: 160, column: 8, scope: !246)
!256 = !DILocalVariable(name: "recvResult", scope: !257, file: !3, line: 167, type: !65)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 162, column: 9)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 161, column: 5)
!259 = !DILocation(line: 167, column: 17, scope: !257)
!260 = !DILocalVariable(name: "service", scope: !257, file: !3, line: 168, type: !91)
!261 = !DILocation(line: 168, column: 32, scope: !257)
!262 = !DILocalVariable(name: "replace", scope: !257, file: !3, line: 169, type: !61)
!263 = !DILocation(line: 169, column: 19, scope: !257)
!264 = !DILocalVariable(name: "connectSocket", scope: !257, file: !3, line: 170, type: !65)
!265 = !DILocation(line: 170, column: 20, scope: !257)
!266 = !DILocalVariable(name: "dataLen", scope: !257, file: !3, line: 171, type: !118)
!267 = !DILocation(line: 171, column: 20, scope: !257)
!268 = !DILocation(line: 171, column: 37, scope: !257)
!269 = !DILocation(line: 171, column: 30, scope: !257)
!270 = !DILocation(line: 172, column: 13, scope: !257)
!271 = !DILocation(line: 182, column: 33, scope: !272)
!272 = distinct !DILexicalBlock(scope: !257, file: !3, line: 173, column: 13)
!273 = !DILocation(line: 182, column: 31, scope: !272)
!274 = !DILocation(line: 183, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 183, column: 21)
!276 = !DILocation(line: 183, column: 35, scope: !275)
!277 = !DILocation(line: 183, column: 21, scope: !272)
!278 = !DILocation(line: 185, column: 21, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 184, column: 17)
!280 = !DILocation(line: 187, column: 17, scope: !272)
!281 = !DILocation(line: 188, column: 25, scope: !272)
!282 = !DILocation(line: 188, column: 36, scope: !272)
!283 = !DILocation(line: 189, column: 43, scope: !272)
!284 = !DILocation(line: 189, column: 25, scope: !272)
!285 = !DILocation(line: 189, column: 34, scope: !272)
!286 = !DILocation(line: 189, column: 41, scope: !272)
!287 = !DILocation(line: 190, column: 36, scope: !272)
!288 = !DILocation(line: 190, column: 25, scope: !272)
!289 = !DILocation(line: 190, column: 34, scope: !272)
!290 = !DILocation(line: 191, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !272, file: !3, line: 191, column: 21)
!292 = !DILocation(line: 191, column: 44, scope: !291)
!293 = !DILocation(line: 191, column: 21, scope: !291)
!294 = !DILocation(line: 191, column: 89, scope: !291)
!295 = !DILocation(line: 191, column: 21, scope: !272)
!296 = !DILocation(line: 193, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !291, file: !3, line: 192, column: 17)
!298 = !DILocation(line: 198, column: 35, scope: !272)
!299 = !DILocation(line: 198, column: 59, scope: !272)
!300 = !DILocation(line: 198, column: 66, scope: !272)
!301 = !DILocation(line: 198, column: 64, scope: !272)
!302 = !DILocation(line: 198, column: 98, scope: !272)
!303 = !DILocation(line: 198, column: 96, scope: !272)
!304 = !DILocation(line: 198, column: 106, scope: !272)
!305 = !DILocation(line: 198, column: 89, scope: !272)
!306 = !DILocation(line: 198, column: 30, scope: !272)
!307 = !DILocation(line: 198, column: 28, scope: !272)
!308 = !DILocation(line: 199, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !272, file: !3, line: 199, column: 21)
!310 = !DILocation(line: 199, column: 32, scope: !309)
!311 = !DILocation(line: 199, column: 48, scope: !309)
!312 = !DILocation(line: 199, column: 51, scope: !309)
!313 = !DILocation(line: 199, column: 62, scope: !309)
!314 = !DILocation(line: 199, column: 21, scope: !272)
!315 = !DILocation(line: 201, column: 21, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !3, line: 200, column: 17)
!317 = !DILocation(line: 204, column: 17, scope: !272)
!318 = !DILocation(line: 204, column: 22, scope: !272)
!319 = !DILocation(line: 204, column: 32, scope: !272)
!320 = !DILocation(line: 204, column: 43, scope: !272)
!321 = !DILocation(line: 204, column: 30, scope: !272)
!322 = !DILocation(line: 204, column: 59, scope: !272)
!323 = !DILocation(line: 206, column: 34, scope: !272)
!324 = !DILocation(line: 206, column: 27, scope: !272)
!325 = !DILocation(line: 206, column: 25, scope: !272)
!326 = !DILocation(line: 207, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !272, file: !3, line: 207, column: 21)
!328 = !DILocation(line: 207, column: 21, scope: !272)
!329 = !DILocation(line: 209, column: 22, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 208, column: 17)
!331 = !DILocation(line: 209, column: 30, scope: !330)
!332 = !DILocation(line: 210, column: 17, scope: !330)
!333 = !DILocation(line: 211, column: 34, scope: !272)
!334 = !DILocation(line: 211, column: 27, scope: !272)
!335 = !DILocation(line: 211, column: 25, scope: !272)
!336 = !DILocation(line: 212, column: 21, scope: !337)
!337 = distinct !DILexicalBlock(scope: !272, file: !3, line: 212, column: 21)
!338 = !DILocation(line: 212, column: 21, scope: !272)
!339 = !DILocation(line: 214, column: 22, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 213, column: 17)
!341 = !DILocation(line: 214, column: 30, scope: !340)
!342 = !DILocation(line: 215, column: 17, scope: !340)
!343 = !DILocation(line: 216, column: 13, scope: !272)
!344 = !DILocation(line: 218, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !257, file: !3, line: 218, column: 17)
!346 = !DILocation(line: 218, column: 31, scope: !345)
!347 = !DILocation(line: 218, column: 17, scope: !257)
!348 = !DILocation(line: 220, column: 30, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 219, column: 13)
!350 = !DILocation(line: 220, column: 17, scope: !349)
!351 = !DILocation(line: 221, column: 13, scope: !349)
!352 = !DILocation(line: 229, column: 5, scope: !258)
!353 = !DILocation(line: 230, column: 8, scope: !354)
!354 = distinct !DILexicalBlock(scope: !246, file: !3, line: 230, column: 8)
!355 = !DILocation(line: 230, column: 8, scope: !246)
!356 = !DILocation(line: 233, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 231, column: 5)
!358 = !DILocation(line: 234, column: 5, scope: !357)
!359 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 238, type: !65)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 237, column: 9)
!361 = distinct !DILexicalBlock(scope: !354, file: !3, line: 236, column: 5)
!362 = !DILocation(line: 238, column: 17, scope: !360)
!363 = !DILocalVariable(name: "n", scope: !360, file: !3, line: 238, type: !65)
!364 = !DILocation(line: 238, column: 20, scope: !360)
!365 = !DILocalVariable(name: "intVariable", scope: !360, file: !3, line: 238, type: !65)
!366 = !DILocation(line: 238, column: 23, scope: !360)
!367 = !DILocation(line: 239, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !360, file: !3, line: 239, column: 17)
!369 = !DILocation(line: 239, column: 17, scope: !368)
!370 = !DILocation(line: 239, column: 40, scope: !368)
!371 = !DILocation(line: 239, column: 17, scope: !360)
!372 = !DILocation(line: 242, column: 21, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 242, column: 21)
!374 = distinct !DILexicalBlock(scope: !368, file: !3, line: 240, column: 13)
!375 = !DILocation(line: 242, column: 23, scope: !373)
!376 = !DILocation(line: 242, column: 21, scope: !374)
!377 = !DILocation(line: 244, column: 33, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !3, line: 243, column: 17)
!379 = !DILocation(line: 245, column: 28, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 245, column: 21)
!381 = !DILocation(line: 245, column: 26, scope: !380)
!382 = !DILocation(line: 245, column: 33, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 245, column: 21)
!384 = !DILocation(line: 245, column: 37, scope: !383)
!385 = !DILocation(line: 245, column: 35, scope: !383)
!386 = !DILocation(line: 245, column: 21, scope: !380)
!387 = !DILocation(line: 248, column: 36, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 246, column: 21)
!389 = !DILocation(line: 249, column: 21, scope: !388)
!390 = !DILocation(line: 245, column: 41, scope: !383)
!391 = !DILocation(line: 245, column: 21, scope: !383)
!392 = distinct !{!392, !386, !393, !240}
!393 = !DILocation(line: 249, column: 21, scope: !380)
!394 = !DILocation(line: 250, column: 34, scope: !378)
!395 = !DILocation(line: 250, column: 21, scope: !378)
!396 = !DILocation(line: 251, column: 17, scope: !378)
!397 = !DILocation(line: 252, column: 13, scope: !374)
!398 = !DILocation(line: 255, column: 1, scope: !246)
!399 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 258, type: !71, scopeLine: 259, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!400 = !DILocalVariable(name: "data", scope: !399, file: !3, line: 260, type: !61)
!401 = !DILocation(line: 260, column: 12, scope: !399)
!402 = !DILocalVariable(name: "dataBuffer", scope: !399, file: !3, line: 261, type: !77)
!403 = !DILocation(line: 261, column: 10, scope: !399)
!404 = !DILocation(line: 262, column: 12, scope: !399)
!405 = !DILocation(line: 262, column: 10, scope: !399)
!406 = !DILocation(line: 263, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !3, line: 263, column: 8)
!408 = !DILocation(line: 263, column: 8, scope: !399)
!409 = !DILocalVariable(name: "recvResult", scope: !410, file: !3, line: 270, type: !65)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 265, column: 9)
!411 = distinct !DILexicalBlock(scope: !407, file: !3, line: 264, column: 5)
!412 = !DILocation(line: 270, column: 17, scope: !410)
!413 = !DILocalVariable(name: "service", scope: !410, file: !3, line: 271, type: !91)
!414 = !DILocation(line: 271, column: 32, scope: !410)
!415 = !DILocalVariable(name: "replace", scope: !410, file: !3, line: 272, type: !61)
!416 = !DILocation(line: 272, column: 19, scope: !410)
!417 = !DILocalVariable(name: "connectSocket", scope: !410, file: !3, line: 273, type: !65)
!418 = !DILocation(line: 273, column: 20, scope: !410)
!419 = !DILocalVariable(name: "dataLen", scope: !410, file: !3, line: 274, type: !118)
!420 = !DILocation(line: 274, column: 20, scope: !410)
!421 = !DILocation(line: 274, column: 37, scope: !410)
!422 = !DILocation(line: 274, column: 30, scope: !410)
!423 = !DILocation(line: 275, column: 13, scope: !410)
!424 = !DILocation(line: 285, column: 33, scope: !425)
!425 = distinct !DILexicalBlock(scope: !410, file: !3, line: 276, column: 13)
!426 = !DILocation(line: 285, column: 31, scope: !425)
!427 = !DILocation(line: 286, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 286, column: 21)
!429 = !DILocation(line: 286, column: 35, scope: !428)
!430 = !DILocation(line: 286, column: 21, scope: !425)
!431 = !DILocation(line: 288, column: 21, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 287, column: 17)
!433 = !DILocation(line: 290, column: 17, scope: !425)
!434 = !DILocation(line: 291, column: 25, scope: !425)
!435 = !DILocation(line: 291, column: 36, scope: !425)
!436 = !DILocation(line: 292, column: 43, scope: !425)
!437 = !DILocation(line: 292, column: 25, scope: !425)
!438 = !DILocation(line: 292, column: 34, scope: !425)
!439 = !DILocation(line: 292, column: 41, scope: !425)
!440 = !DILocation(line: 293, column: 36, scope: !425)
!441 = !DILocation(line: 293, column: 25, scope: !425)
!442 = !DILocation(line: 293, column: 34, scope: !425)
!443 = !DILocation(line: 294, column: 29, scope: !444)
!444 = distinct !DILexicalBlock(scope: !425, file: !3, line: 294, column: 21)
!445 = !DILocation(line: 294, column: 44, scope: !444)
!446 = !DILocation(line: 294, column: 21, scope: !444)
!447 = !DILocation(line: 294, column: 89, scope: !444)
!448 = !DILocation(line: 294, column: 21, scope: !425)
!449 = !DILocation(line: 296, column: 21, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !3, line: 295, column: 17)
!451 = !DILocation(line: 301, column: 35, scope: !425)
!452 = !DILocation(line: 301, column: 59, scope: !425)
!453 = !DILocation(line: 301, column: 66, scope: !425)
!454 = !DILocation(line: 301, column: 64, scope: !425)
!455 = !DILocation(line: 301, column: 98, scope: !425)
!456 = !DILocation(line: 301, column: 96, scope: !425)
!457 = !DILocation(line: 301, column: 106, scope: !425)
!458 = !DILocation(line: 301, column: 89, scope: !425)
!459 = !DILocation(line: 301, column: 30, scope: !425)
!460 = !DILocation(line: 301, column: 28, scope: !425)
!461 = !DILocation(line: 302, column: 21, scope: !462)
!462 = distinct !DILexicalBlock(scope: !425, file: !3, line: 302, column: 21)
!463 = !DILocation(line: 302, column: 32, scope: !462)
!464 = !DILocation(line: 302, column: 48, scope: !462)
!465 = !DILocation(line: 302, column: 51, scope: !462)
!466 = !DILocation(line: 302, column: 62, scope: !462)
!467 = !DILocation(line: 302, column: 21, scope: !425)
!468 = !DILocation(line: 304, column: 21, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 303, column: 17)
!470 = !DILocation(line: 307, column: 17, scope: !425)
!471 = !DILocation(line: 307, column: 22, scope: !425)
!472 = !DILocation(line: 307, column: 32, scope: !425)
!473 = !DILocation(line: 307, column: 43, scope: !425)
!474 = !DILocation(line: 307, column: 30, scope: !425)
!475 = !DILocation(line: 307, column: 59, scope: !425)
!476 = !DILocation(line: 309, column: 34, scope: !425)
!477 = !DILocation(line: 309, column: 27, scope: !425)
!478 = !DILocation(line: 309, column: 25, scope: !425)
!479 = !DILocation(line: 310, column: 21, scope: !480)
!480 = distinct !DILexicalBlock(scope: !425, file: !3, line: 310, column: 21)
!481 = !DILocation(line: 310, column: 21, scope: !425)
!482 = !DILocation(line: 312, column: 22, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !3, line: 311, column: 17)
!484 = !DILocation(line: 312, column: 30, scope: !483)
!485 = !DILocation(line: 313, column: 17, scope: !483)
!486 = !DILocation(line: 314, column: 34, scope: !425)
!487 = !DILocation(line: 314, column: 27, scope: !425)
!488 = !DILocation(line: 314, column: 25, scope: !425)
!489 = !DILocation(line: 315, column: 21, scope: !490)
!490 = distinct !DILexicalBlock(scope: !425, file: !3, line: 315, column: 21)
!491 = !DILocation(line: 315, column: 21, scope: !425)
!492 = !DILocation(line: 317, column: 22, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 316, column: 17)
!494 = !DILocation(line: 317, column: 30, scope: !493)
!495 = !DILocation(line: 318, column: 17, scope: !493)
!496 = !DILocation(line: 319, column: 13, scope: !425)
!497 = !DILocation(line: 321, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !410, file: !3, line: 321, column: 17)
!499 = !DILocation(line: 321, column: 31, scope: !498)
!500 = !DILocation(line: 321, column: 17, scope: !410)
!501 = !DILocation(line: 323, column: 30, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 322, column: 13)
!503 = !DILocation(line: 323, column: 17, scope: !502)
!504 = !DILocation(line: 324, column: 13, scope: !502)
!505 = !DILocation(line: 332, column: 5, scope: !411)
!506 = !DILocation(line: 333, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !399, file: !3, line: 333, column: 8)
!508 = !DILocation(line: 333, column: 8, scope: !399)
!509 = !DILocalVariable(name: "i", scope: !510, file: !3, line: 336, type: !65)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 335, column: 9)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 334, column: 5)
!512 = !DILocation(line: 336, column: 17, scope: !510)
!513 = !DILocalVariable(name: "n", scope: !510, file: !3, line: 336, type: !65)
!514 = !DILocation(line: 336, column: 20, scope: !510)
!515 = !DILocalVariable(name: "intVariable", scope: !510, file: !3, line: 336, type: !65)
!516 = !DILocation(line: 336, column: 23, scope: !510)
!517 = !DILocation(line: 337, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !510, file: !3, line: 337, column: 17)
!519 = !DILocation(line: 337, column: 17, scope: !518)
!520 = !DILocation(line: 337, column: 40, scope: !518)
!521 = !DILocation(line: 337, column: 17, scope: !510)
!522 = !DILocation(line: 340, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 340, column: 21)
!524 = distinct !DILexicalBlock(scope: !518, file: !3, line: 338, column: 13)
!525 = !DILocation(line: 340, column: 23, scope: !523)
!526 = !DILocation(line: 340, column: 21, scope: !524)
!527 = !DILocation(line: 342, column: 33, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 341, column: 17)
!529 = !DILocation(line: 343, column: 28, scope: !530)
!530 = distinct !DILexicalBlock(scope: !528, file: !3, line: 343, column: 21)
!531 = !DILocation(line: 343, column: 26, scope: !530)
!532 = !DILocation(line: 343, column: 33, scope: !533)
!533 = distinct !DILexicalBlock(scope: !530, file: !3, line: 343, column: 21)
!534 = !DILocation(line: 343, column: 37, scope: !533)
!535 = !DILocation(line: 343, column: 35, scope: !533)
!536 = !DILocation(line: 343, column: 21, scope: !530)
!537 = !DILocation(line: 346, column: 36, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !3, line: 344, column: 21)
!539 = !DILocation(line: 347, column: 21, scope: !538)
!540 = !DILocation(line: 343, column: 41, scope: !533)
!541 = !DILocation(line: 343, column: 21, scope: !533)
!542 = distinct !{!542, !536, !543, !240}
!543 = !DILocation(line: 347, column: 21, scope: !530)
!544 = !DILocation(line: 348, column: 34, scope: !528)
!545 = !DILocation(line: 348, column: 21, scope: !528)
!546 = !DILocation(line: 349, column: 17, scope: !528)
!547 = !DILocation(line: 350, column: 13, scope: !524)
!548 = !DILocation(line: 352, column: 5, scope: !511)
!549 = !DILocation(line: 353, column: 1, scope: !399)
!550 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 356, type: !71, scopeLine: 357, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!551 = !DILocalVariable(name: "data", scope: !550, file: !3, line: 358, type: !61)
!552 = !DILocation(line: 358, column: 12, scope: !550)
!553 = !DILocalVariable(name: "dataBuffer", scope: !550, file: !3, line: 359, type: !77)
!554 = !DILocation(line: 359, column: 10, scope: !550)
!555 = !DILocation(line: 360, column: 12, scope: !550)
!556 = !DILocation(line: 360, column: 10, scope: !550)
!557 = !DILocation(line: 361, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !550, file: !3, line: 361, column: 8)
!559 = !DILocation(line: 361, column: 8, scope: !550)
!560 = !DILocation(line: 364, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 362, column: 5)
!562 = !DILocation(line: 365, column: 5, scope: !561)
!563 = !DILocation(line: 369, column: 16, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 367, column: 5)
!565 = !DILocation(line: 369, column: 9, scope: !564)
!566 = !DILocation(line: 371, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !550, file: !3, line: 371, column: 8)
!568 = !DILocation(line: 371, column: 8, scope: !550)
!569 = !DILocalVariable(name: "i", scope: !570, file: !3, line: 374, type: !65)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 373, column: 9)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 372, column: 5)
!572 = !DILocation(line: 374, column: 17, scope: !570)
!573 = !DILocalVariable(name: "n", scope: !570, file: !3, line: 374, type: !65)
!574 = !DILocation(line: 374, column: 20, scope: !570)
!575 = !DILocalVariable(name: "intVariable", scope: !570, file: !3, line: 374, type: !65)
!576 = !DILocation(line: 374, column: 23, scope: !570)
!577 = !DILocation(line: 375, column: 24, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !3, line: 375, column: 17)
!579 = !DILocation(line: 375, column: 17, scope: !578)
!580 = !DILocation(line: 375, column: 40, scope: !578)
!581 = !DILocation(line: 375, column: 17, scope: !570)
!582 = !DILocation(line: 378, column: 29, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !3, line: 376, column: 13)
!584 = !DILocation(line: 379, column: 24, scope: !585)
!585 = distinct !DILexicalBlock(scope: !583, file: !3, line: 379, column: 17)
!586 = !DILocation(line: 379, column: 22, scope: !585)
!587 = !DILocation(line: 379, column: 29, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 379, column: 17)
!589 = !DILocation(line: 379, column: 33, scope: !588)
!590 = !DILocation(line: 379, column: 31, scope: !588)
!591 = !DILocation(line: 379, column: 17, scope: !585)
!592 = !DILocation(line: 382, column: 32, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !3, line: 380, column: 17)
!594 = !DILocation(line: 383, column: 17, scope: !593)
!595 = !DILocation(line: 379, column: 37, scope: !588)
!596 = !DILocation(line: 379, column: 17, scope: !588)
!597 = distinct !{!597, !591, !598, !240}
!598 = !DILocation(line: 383, column: 17, scope: !585)
!599 = !DILocation(line: 384, column: 30, scope: !583)
!600 = !DILocation(line: 384, column: 17, scope: !583)
!601 = !DILocation(line: 385, column: 13, scope: !583)
!602 = !DILocation(line: 387, column: 5, scope: !571)
!603 = !DILocation(line: 388, column: 1, scope: !550)
!604 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 391, type: !71, scopeLine: 392, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!605 = !DILocalVariable(name: "data", scope: !604, file: !3, line: 393, type: !61)
!606 = !DILocation(line: 393, column: 12, scope: !604)
!607 = !DILocalVariable(name: "dataBuffer", scope: !604, file: !3, line: 394, type: !77)
!608 = !DILocation(line: 394, column: 10, scope: !604)
!609 = !DILocation(line: 395, column: 12, scope: !604)
!610 = !DILocation(line: 395, column: 10, scope: !604)
!611 = !DILocation(line: 396, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !3, line: 396, column: 8)
!613 = !DILocation(line: 396, column: 8, scope: !604)
!614 = !DILocation(line: 399, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 397, column: 5)
!616 = !DILocation(line: 399, column: 9, scope: !615)
!617 = !DILocation(line: 400, column: 5, scope: !615)
!618 = !DILocation(line: 401, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !604, file: !3, line: 401, column: 8)
!620 = !DILocation(line: 401, column: 8, scope: !604)
!621 = !DILocalVariable(name: "i", scope: !622, file: !3, line: 404, type: !65)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 403, column: 9)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 402, column: 5)
!624 = !DILocation(line: 404, column: 17, scope: !622)
!625 = !DILocalVariable(name: "n", scope: !622, file: !3, line: 404, type: !65)
!626 = !DILocation(line: 404, column: 20, scope: !622)
!627 = !DILocalVariable(name: "intVariable", scope: !622, file: !3, line: 404, type: !65)
!628 = !DILocation(line: 404, column: 23, scope: !622)
!629 = !DILocation(line: 405, column: 24, scope: !630)
!630 = distinct !DILexicalBlock(scope: !622, file: !3, line: 405, column: 17)
!631 = !DILocation(line: 405, column: 17, scope: !630)
!632 = !DILocation(line: 405, column: 40, scope: !630)
!633 = !DILocation(line: 405, column: 17, scope: !622)
!634 = !DILocation(line: 408, column: 29, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !3, line: 406, column: 13)
!636 = !DILocation(line: 409, column: 24, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !3, line: 409, column: 17)
!638 = !DILocation(line: 409, column: 22, scope: !637)
!639 = !DILocation(line: 409, column: 29, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 409, column: 17)
!641 = !DILocation(line: 409, column: 33, scope: !640)
!642 = !DILocation(line: 409, column: 31, scope: !640)
!643 = !DILocation(line: 409, column: 17, scope: !637)
!644 = !DILocation(line: 412, column: 32, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 410, column: 17)
!646 = !DILocation(line: 413, column: 17, scope: !645)
!647 = !DILocation(line: 409, column: 37, scope: !640)
!648 = !DILocation(line: 409, column: 17, scope: !640)
!649 = distinct !{!649, !643, !650, !240}
!650 = !DILocation(line: 413, column: 17, scope: !637)
!651 = !DILocation(line: 414, column: 30, scope: !635)
!652 = !DILocation(line: 414, column: 17, scope: !635)
!653 = !DILocation(line: 415, column: 13, scope: !635)
!654 = !DILocation(line: 417, column: 5, scope: !623)
!655 = !DILocation(line: 418, column: 1, scope: !604)
!656 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good", scope: !3, file: !3, line: 420, type: !71, scopeLine: 421, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !73)
!657 = !DILocation(line: 422, column: 5, scope: !656)
!658 = !DILocation(line: 423, column: 5, scope: !656)
!659 = !DILocation(line: 424, column: 5, scope: !656)
!660 = !DILocation(line: 425, column: 5, scope: !656)
!661 = !DILocation(line: 426, column: 1, scope: !656)
