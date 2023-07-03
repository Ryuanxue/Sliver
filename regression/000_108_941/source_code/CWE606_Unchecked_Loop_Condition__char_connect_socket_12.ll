; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_12.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad() #0 !dbg !64 {
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
  %i46 = alloca i32, align 4
  %n47 = alloca i32, align 4
  %intVariable48 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !77
  %tobool = icmp ne i32 %call, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.else, !dbg !79

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %connectSocket, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !112, metadata !DIExpression()), !dbg !116
  %1 = load i8*, i8** %data, align 8, !dbg !117
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !118
  store i64 %call1, i64* %dataLen, align 8, !dbg !116
  br label %do.body, !dbg !119

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !120
  store i32 %call2, i32* %connectSocket, align 4, !dbg !122
  %2 = load i32, i32* %connectSocket, align 4, !dbg !123
  %cmp = icmp eq i32 %2, -1, !dbg !125
  br i1 %cmp, label %if.then3, label %if.end, !dbg !126

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !127

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !129
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !130
  store i16 2, i16* %sin_family, align 4, !dbg !131
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !132
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !133
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !134
  store i32 %call4, i32* %s_addr, align 4, !dbg !135
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !136
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !137
  store i16 %call5, i16* %sin_port, align 2, !dbg !138
  %4 = load i32, i32* %connectSocket, align 4, !dbg !139
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !141
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !142
  %cmp7 = icmp eq i32 %call6, -1, !dbg !143
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !144

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !145

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !147
  %7 = load i8*, i8** %data, align 8, !dbg !148
  %8 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !150
  %9 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub = sub i64 100, %9, !dbg !152
  %sub10 = sub i64 %sub, 1, !dbg !153
  %mul = mul i64 1, %sub10, !dbg !154
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !155
  %conv = trunc i64 %call11 to i32, !dbg !155
  store i32 %conv, i32* %recvResult, align 4, !dbg !156
  %10 = load i32, i32* %recvResult, align 4, !dbg !157
  %cmp12 = icmp eq i32 %10, -1, !dbg !159
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !161
  %cmp14 = icmp eq i32 %11, 0, !dbg !162
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !163

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !164

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !166
  %13 = load i64, i64* %dataLen, align 8, !dbg !167
  %14 = load i32, i32* %recvResult, align 4, !dbg !168
  %conv18 = sext i32 %14 to i64, !dbg !168
  %div = udiv i64 %conv18, 1, !dbg !169
  %add = add i64 %13, %div, !dbg !170
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !166
  store i8 0, i8* %arrayidx, align 1, !dbg !171
  %15 = load i8*, i8** %data, align 8, !dbg !172
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !173
  store i8* %call19, i8** %replace, align 8, !dbg !174
  %16 = load i8*, i8** %replace, align 8, !dbg !175
  %tobool20 = icmp ne i8* %16, null, !dbg !175
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !177

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !178
  store i8 0, i8* %17, align 1, !dbg !180
  br label %if.end22, !dbg !181

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !182
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !183
  store i8* %call23, i8** %replace, align 8, !dbg !184
  %19 = load i8*, i8** %replace, align 8, !dbg !185
  %tobool24 = icmp ne i8* %19, null, !dbg !185
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !187

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !188
  store i8 0, i8* %20, align 1, !dbg !190
  br label %if.end26, !dbg !191

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !192

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !193
  %cmp27 = icmp ne i32 %21, -1, !dbg !195
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !196

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !197
  %call30 = call i32 @close(i32 %22), !dbg !199
  br label %if.end31, !dbg !200

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end33, !dbg !201

if.else:                                          ; preds = %entry
  %23 = load i8*, i8** %data, align 8, !dbg !202
  %call32 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !204
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end31
  %call34 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !205
  %tobool35 = icmp ne i32 %call34, 0, !dbg !205
  br i1 %tobool35, label %if.then36, label %if.else45, !dbg !207

if.then36:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %n, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !214, metadata !DIExpression()), !dbg !215
  %24 = load i8*, i8** %data, align 8, !dbg !216
  %call37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !218
  %cmp38 = icmp eq i32 %call37, 1, !dbg !219
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !220

if.then40:                                        ; preds = %if.then36
  store i32 0, i32* %intVariable, align 4, !dbg !221
  store i32 0, i32* %i, align 4, !dbg !223
  br label %for.cond, !dbg !225

for.cond:                                         ; preds = %for.inc, %if.then40
  %25 = load i32, i32* %i, align 4, !dbg !226
  %26 = load i32, i32* %n, align 4, !dbg !228
  %cmp41 = icmp slt i32 %25, %26, !dbg !229
  br i1 %cmp41, label %for.body, label %for.end, !dbg !230

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !231
  %inc = add nsw i32 %27, 1, !dbg !231
  store i32 %inc, i32* %intVariable, align 4, !dbg !231
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !234
  %inc43 = add nsw i32 %28, 1, !dbg !234
  store i32 %inc43, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !235, !llvm.loop !236

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !239
  call void @printIntLine(i32 %29), !dbg !240
  br label %if.end44, !dbg !241

if.end44:                                         ; preds = %for.end, %if.then36
  br label %if.end66, !dbg !242

if.else45:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %i46, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %n47, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %intVariable48, metadata !249, metadata !DIExpression()), !dbg !250
  %30 = load i8*, i8** %data, align 8, !dbg !251
  %call49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n47) #8, !dbg !253
  %cmp50 = icmp eq i32 %call49, 1, !dbg !254
  br i1 %cmp50, label %if.then52, label %if.end65, !dbg !255

if.then52:                                        ; preds = %if.else45
  %31 = load i32, i32* %n47, align 4, !dbg !256
  %cmp53 = icmp slt i32 %31, 10000, !dbg !259
  br i1 %cmp53, label %if.then55, label %if.end64, !dbg !260

if.then55:                                        ; preds = %if.then52
  store i32 0, i32* %intVariable48, align 4, !dbg !261
  store i32 0, i32* %i46, align 4, !dbg !263
  br label %for.cond56, !dbg !265

for.cond56:                                       ; preds = %for.inc61, %if.then55
  %32 = load i32, i32* %i46, align 4, !dbg !266
  %33 = load i32, i32* %n47, align 4, !dbg !268
  %cmp57 = icmp slt i32 %32, %33, !dbg !269
  br i1 %cmp57, label %for.body59, label %for.end63, !dbg !270

for.body59:                                       ; preds = %for.cond56
  %34 = load i32, i32* %intVariable48, align 4, !dbg !271
  %inc60 = add nsw i32 %34, 1, !dbg !271
  store i32 %inc60, i32* %intVariable48, align 4, !dbg !271
  br label %for.inc61, !dbg !273

for.inc61:                                        ; preds = %for.body59
  %35 = load i32, i32* %i46, align 4, !dbg !274
  %inc62 = add nsw i32 %35, 1, !dbg !274
  store i32 %inc62, i32* %i46, align 4, !dbg !274
  br label %for.cond56, !dbg !275, !llvm.loop !276

for.end63:                                        ; preds = %for.cond56
  %36 = load i32, i32* %intVariable48, align 4, !dbg !278
  call void @printIntLine(i32 %36), !dbg !279
  br label %if.end64, !dbg !280

if.end64:                                         ; preds = %for.end63, %if.then52
  br label %if.end65, !dbg !281

if.end65:                                         ; preds = %if.end64, %if.else45
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end44
  ret void, !dbg !282
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #5

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !283 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  %recvResult32 = alloca i32, align 4
  %service33 = alloca %struct.sockaddr_in, align 4
  %replace34 = alloca i8*, align 8
  %connectSocket35 = alloca i32, align 4
  %dataLen36 = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i103 = alloca i32, align 4
  %n104 = alloca i32, align 4
  %intVariable105 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !287
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !287
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !288
  store i8* %arraydecay, i8** %data, align 8, !dbg !289
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !290
  %tobool = icmp ne i32 %call, 0, !dbg !290
  br i1 %tobool, label %if.then, label %if.else, !dbg !292

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !293, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 -1, i32* %connectSocket, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !303, metadata !DIExpression()), !dbg !304
  %1 = load i8*, i8** %data, align 8, !dbg !305
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !306
  store i64 %call1, i64* %dataLen, align 8, !dbg !304
  br label %do.body, !dbg !307

do.body:                                          ; preds = %if.then
  %call2 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !308
  store i32 %call2, i32* %connectSocket, align 4, !dbg !310
  %2 = load i32, i32* %connectSocket, align 4, !dbg !311
  %cmp = icmp eq i32 %2, -1, !dbg !313
  br i1 %cmp, label %if.then3, label %if.end, !dbg !314

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !315

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !317
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !318
  store i16 2, i16* %sin_family, align 4, !dbg !319
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !320
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !321
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !322
  store i32 %call4, i32* %s_addr, align 4, !dbg !323
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !324
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !325
  store i16 %call5, i16* %sin_port, align 2, !dbg !326
  %4 = load i32, i32* %connectSocket, align 4, !dbg !327
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !329
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !330
  %cmp7 = icmp eq i32 %call6, -1, !dbg !331
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !332

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !333

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !335
  %7 = load i8*, i8** %data, align 8, !dbg !336
  %8 = load i64, i64* %dataLen, align 8, !dbg !337
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !338
  %9 = load i64, i64* %dataLen, align 8, !dbg !339
  %sub = sub i64 100, %9, !dbg !340
  %sub10 = sub i64 %sub, 1, !dbg !341
  %mul = mul i64 1, %sub10, !dbg !342
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !343
  %conv = trunc i64 %call11 to i32, !dbg !343
  store i32 %conv, i32* %recvResult, align 4, !dbg !344
  %10 = load i32, i32* %recvResult, align 4, !dbg !345
  %cmp12 = icmp eq i32 %10, -1, !dbg !347
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !348

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %recvResult, align 4, !dbg !349
  %cmp14 = icmp eq i32 %11, 0, !dbg !350
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !351

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !352

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !354
  %13 = load i64, i64* %dataLen, align 8, !dbg !355
  %14 = load i32, i32* %recvResult, align 4, !dbg !356
  %conv18 = sext i32 %14 to i64, !dbg !356
  %div = udiv i64 %conv18, 1, !dbg !357
  %add = add i64 %13, %div, !dbg !358
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !354
  store i8 0, i8* %arrayidx, align 1, !dbg !359
  %15 = load i8*, i8** %data, align 8, !dbg !360
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !361
  store i8* %call19, i8** %replace, align 8, !dbg !362
  %16 = load i8*, i8** %replace, align 8, !dbg !363
  %tobool20 = icmp ne i8* %16, null, !dbg !363
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !365

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %replace, align 8, !dbg !366
  store i8 0, i8* %17, align 1, !dbg !368
  br label %if.end22, !dbg !369

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %data, align 8, !dbg !370
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !371
  store i8* %call23, i8** %replace, align 8, !dbg !372
  %19 = load i8*, i8** %replace, align 8, !dbg !373
  %tobool24 = icmp ne i8* %19, null, !dbg !373
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !375

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %replace, align 8, !dbg !376
  store i8 0, i8* %20, align 1, !dbg !378
  br label %if.end26, !dbg !379

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !380

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %connectSocket, align 4, !dbg !381
  %cmp27 = icmp ne i32 %21, -1, !dbg !383
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !384

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !385
  %call30 = call i32 @close(i32 %22), !dbg !387
  br label %if.end31, !dbg !388

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end86, !dbg !389

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %recvResult32, metadata !390, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service33, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i8** %replace34, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %connectSocket35, metadata !398, metadata !DIExpression()), !dbg !399
  store i32 -1, i32* %connectSocket35, align 4, !dbg !399
  call void @llvm.dbg.declare(metadata i64* %dataLen36, metadata !400, metadata !DIExpression()), !dbg !401
  %23 = load i8*, i8** %data, align 8, !dbg !402
  %call37 = call i64 @strlen(i8* %23) #7, !dbg !403
  store i64 %call37, i64* %dataLen36, align 8, !dbg !401
  br label %do.body38, !dbg !404

do.body38:                                        ; preds = %if.else
  %call39 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !405
  store i32 %call39, i32* %connectSocket35, align 4, !dbg !407
  %24 = load i32, i32* %connectSocket35, align 4, !dbg !408
  %cmp40 = icmp eq i32 %24, -1, !dbg !410
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !411

if.then42:                                        ; preds = %do.body38
  br label %do.end80, !dbg !412

if.end43:                                         ; preds = %do.body38
  %25 = bitcast %struct.sockaddr_in* %service33 to i8*, !dbg !414
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false), !dbg !414
  %sin_family44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 0, !dbg !415
  store i16 2, i16* %sin_family44, align 4, !dbg !416
  %call45 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !417
  %sin_addr46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 2, !dbg !418
  %s_addr47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr46, i32 0, i32 0, !dbg !419
  store i32 %call45, i32* %s_addr47, align 4, !dbg !420
  %call48 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !421
  %sin_port49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service33, i32 0, i32 1, !dbg !422
  store i16 %call48, i16* %sin_port49, align 2, !dbg !423
  %26 = load i32, i32* %connectSocket35, align 4, !dbg !424
  %27 = bitcast %struct.sockaddr_in* %service33 to %struct.sockaddr*, !dbg !426
  %call50 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16), !dbg !427
  %cmp51 = icmp eq i32 %call50, -1, !dbg !428
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !429

if.then53:                                        ; preds = %if.end43
  br label %do.end80, !dbg !430

if.end54:                                         ; preds = %if.end43
  %28 = load i32, i32* %connectSocket35, align 4, !dbg !432
  %29 = load i8*, i8** %data, align 8, !dbg !433
  %30 = load i64, i64* %dataLen36, align 8, !dbg !434
  %add.ptr55 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !435
  %31 = load i64, i64* %dataLen36, align 8, !dbg !436
  %sub56 = sub i64 100, %31, !dbg !437
  %sub57 = sub i64 %sub56, 1, !dbg !438
  %mul58 = mul i64 1, %sub57, !dbg !439
  %call59 = call i64 @recv(i32 %28, i8* %add.ptr55, i64 %mul58, i32 0), !dbg !440
  %conv60 = trunc i64 %call59 to i32, !dbg !440
  store i32 %conv60, i32* %recvResult32, align 4, !dbg !441
  %32 = load i32, i32* %recvResult32, align 4, !dbg !442
  %cmp61 = icmp eq i32 %32, -1, !dbg !444
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63, !dbg !445

lor.lhs.false63:                                  ; preds = %if.end54
  %33 = load i32, i32* %recvResult32, align 4, !dbg !446
  %cmp64 = icmp eq i32 %33, 0, !dbg !447
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !448

if.then66:                                        ; preds = %lor.lhs.false63, %if.end54
  br label %do.end80, !dbg !449

if.end67:                                         ; preds = %lor.lhs.false63
  %34 = load i8*, i8** %data, align 8, !dbg !451
  %35 = load i64, i64* %dataLen36, align 8, !dbg !452
  %36 = load i32, i32* %recvResult32, align 4, !dbg !453
  %conv68 = sext i32 %36 to i64, !dbg !453
  %div69 = udiv i64 %conv68, 1, !dbg !454
  %add70 = add i64 %35, %div69, !dbg !455
  %arrayidx71 = getelementptr inbounds i8, i8* %34, i64 %add70, !dbg !451
  store i8 0, i8* %arrayidx71, align 1, !dbg !456
  %37 = load i8*, i8** %data, align 8, !dbg !457
  %call72 = call i8* @strchr(i8* %37, i32 13) #7, !dbg !458
  store i8* %call72, i8** %replace34, align 8, !dbg !459
  %38 = load i8*, i8** %replace34, align 8, !dbg !460
  %tobool73 = icmp ne i8* %38, null, !dbg !460
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !462

if.then74:                                        ; preds = %if.end67
  %39 = load i8*, i8** %replace34, align 8, !dbg !463
  store i8 0, i8* %39, align 1, !dbg !465
  br label %if.end75, !dbg !466

if.end75:                                         ; preds = %if.then74, %if.end67
  %40 = load i8*, i8** %data, align 8, !dbg !467
  %call76 = call i8* @strchr(i8* %40, i32 10) #7, !dbg !468
  store i8* %call76, i8** %replace34, align 8, !dbg !469
  %41 = load i8*, i8** %replace34, align 8, !dbg !470
  %tobool77 = icmp ne i8* %41, null, !dbg !470
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !472

if.then78:                                        ; preds = %if.end75
  %42 = load i8*, i8** %replace34, align 8, !dbg !473
  store i8 0, i8* %42, align 1, !dbg !475
  br label %if.end79, !dbg !476

if.end79:                                         ; preds = %if.then78, %if.end75
  br label %do.end80, !dbg !477

do.end80:                                         ; preds = %if.end79, %if.then66, %if.then53, %if.then42
  %43 = load i32, i32* %connectSocket35, align 4, !dbg !478
  %cmp81 = icmp ne i32 %43, -1, !dbg !480
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !481

if.then83:                                        ; preds = %do.end80
  %44 = load i32, i32* %connectSocket35, align 4, !dbg !482
  %call84 = call i32 @close(i32 %44), !dbg !484
  br label %if.end85, !dbg !485

if.end85:                                         ; preds = %if.then83, %do.end80
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end31
  %call87 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !486
  %tobool88 = icmp ne i32 %call87, 0, !dbg !486
  br i1 %tobool88, label %if.then89, label %if.else102, !dbg !488

if.then89:                                        ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !489, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i32* %n, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !495, metadata !DIExpression()), !dbg !496
  %45 = load i8*, i8** %data, align 8, !dbg !497
  %call90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !499
  %cmp91 = icmp eq i32 %call90, 1, !dbg !500
  br i1 %cmp91, label %if.then93, label %if.end101, !dbg !501

if.then93:                                        ; preds = %if.then89
  %46 = load i32, i32* %n, align 4, !dbg !502
  %cmp94 = icmp slt i32 %46, 10000, !dbg !505
  br i1 %cmp94, label %if.then96, label %if.end100, !dbg !506

if.then96:                                        ; preds = %if.then93
  store i32 0, i32* %intVariable, align 4, !dbg !507
  store i32 0, i32* %i, align 4, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %if.then96
  %47 = load i32, i32* %i, align 4, !dbg !512
  %48 = load i32, i32* %n, align 4, !dbg !514
  %cmp97 = icmp slt i32 %47, %48, !dbg !515
  br i1 %cmp97, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %intVariable, align 4, !dbg !517
  %inc = add nsw i32 %49, 1, !dbg !517
  store i32 %inc, i32* %intVariable, align 4, !dbg !517
  br label %for.inc, !dbg !519

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4, !dbg !520
  %inc99 = add nsw i32 %50, 1, !dbg !520
  store i32 %inc99, i32* %i, align 4, !dbg !520
  br label %for.cond, !dbg !521, !llvm.loop !522

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %intVariable, align 4, !dbg !524
  call void @printIntLine(i32 %51), !dbg !525
  br label %if.end100, !dbg !526

if.end100:                                        ; preds = %for.end, %if.then93
  br label %if.end101, !dbg !527

if.end101:                                        ; preds = %if.end100, %if.then89
  br label %if.end123, !dbg !528

if.else102:                                       ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %i103, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %n104, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i32* %intVariable105, metadata !535, metadata !DIExpression()), !dbg !536
  %52 = load i8*, i8** %data, align 8, !dbg !537
  %call106 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n104) #8, !dbg !539
  %cmp107 = icmp eq i32 %call106, 1, !dbg !540
  br i1 %cmp107, label %if.then109, label %if.end122, !dbg !541

if.then109:                                       ; preds = %if.else102
  %53 = load i32, i32* %n104, align 4, !dbg !542
  %cmp110 = icmp slt i32 %53, 10000, !dbg !545
  br i1 %cmp110, label %if.then112, label %if.end121, !dbg !546

if.then112:                                       ; preds = %if.then109
  store i32 0, i32* %intVariable105, align 4, !dbg !547
  store i32 0, i32* %i103, align 4, !dbg !549
  br label %for.cond113, !dbg !551

for.cond113:                                      ; preds = %for.inc118, %if.then112
  %54 = load i32, i32* %i103, align 4, !dbg !552
  %55 = load i32, i32* %n104, align 4, !dbg !554
  %cmp114 = icmp slt i32 %54, %55, !dbg !555
  br i1 %cmp114, label %for.body116, label %for.end120, !dbg !556

for.body116:                                      ; preds = %for.cond113
  %56 = load i32, i32* %intVariable105, align 4, !dbg !557
  %inc117 = add nsw i32 %56, 1, !dbg !557
  store i32 %inc117, i32* %intVariable105, align 4, !dbg !557
  br label %for.inc118, !dbg !559

for.inc118:                                       ; preds = %for.body116
  %57 = load i32, i32* %i103, align 4, !dbg !560
  %inc119 = add nsw i32 %57, 1, !dbg !560
  store i32 %inc119, i32* %i103, align 4, !dbg !560
  br label %for.cond113, !dbg !561, !llvm.loop !562

for.end120:                                       ; preds = %for.cond113
  %58 = load i32, i32* %intVariable105, align 4, !dbg !564
  call void @printIntLine(i32 %58), !dbg !565
  br label %if.end121, !dbg !566

if.end121:                                        ; preds = %for.end120, %if.then109
  br label %if.end122, !dbg !567

if.end122:                                        ; preds = %if.end121, %if.else102
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end101
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !569 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !573
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !573
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !574
  store i8* %arraydecay, i8** %data, align 8, !dbg !575
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !576
  %tobool = icmp ne i32 %call, 0, !dbg !576
  br i1 %tobool, label %if.then, label %if.else, !dbg !578

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !579
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !581
  br label %if.end, !dbg !582

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !583
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !585
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !586
  %tobool4 = icmp ne i32 %call3, 0, !dbg !586
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !588

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !589, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %n, metadata !593, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = load i8*, i8** %data, align 8, !dbg !597
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !599
  %cmp = icmp eq i32 %call6, 1, !dbg !600
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !601

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !602
  store i32 0, i32* %i, align 4, !dbg !604
  br label %for.cond, !dbg !606

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !607
  %5 = load i32, i32* %n, align 4, !dbg !609
  %cmp8 = icmp slt i32 %4, %5, !dbg !610
  br i1 %cmp8, label %for.body, label %for.end, !dbg !611

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !612
  %inc = add nsw i32 %6, 1, !dbg !612
  store i32 %inc, i32* %intVariable, align 4, !dbg !612
  br label %for.inc, !dbg !614

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !615
  %inc9 = add nsw i32 %7, 1, !dbg !615
  store i32 %inc9, i32* %i, align 4, !dbg !615
  br label %for.cond, !dbg !616, !llvm.loop !617

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !619
  call void @printIntLine(i32 %8), !dbg !620
  br label %if.end10, !dbg !621

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !622

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !623, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !629, metadata !DIExpression()), !dbg !630
  %9 = load i8*, i8** %data, align 8, !dbg !631
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #8, !dbg !633
  %cmp16 = icmp eq i32 %call15, 1, !dbg !634
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !635

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !636
  store i32 0, i32* %i12, align 4, !dbg !638
  br label %for.cond18, !dbg !640

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !641
  %11 = load i32, i32* %n13, align 4, !dbg !643
  %cmp19 = icmp slt i32 %10, %11, !dbg !644
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !645

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !646
  %inc21 = add nsw i32 %12, 1, !dbg !646
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !646
  br label %for.inc22, !dbg !648

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !649
  %inc23 = add nsw i32 %13, 1, !dbg !649
  store i32 %inc23, i32* %i12, align 4, !dbg !649
  br label %for.cond18, !dbg !650, !llvm.loop !651

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !653
  call void @printIntLine(i32 %14), !dbg !654
  br label %if.end25, !dbg !655

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good() #0 !dbg !657 {
entry:
  call void @goodB2G(), !dbg !658
  call void @goodG2B(), !dbg !659
  ret void, !dbg !660
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!202 = !DILocation(line: 128, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !78, file: !1, line: 126, column: 5)
!204 = !DILocation(line: 128, column: 9, scope: !203)
!205 = !DILocation(line: 130, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !64, file: !1, line: 130, column: 8)
!207 = !DILocation(line: 130, column: 8, scope: !64)
!208 = !DILocalVariable(name: "i", scope: !209, file: !1, line: 133, type: !83)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 132, column: 9)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 131, column: 5)
!211 = !DILocation(line: 133, column: 17, scope: !209)
!212 = !DILocalVariable(name: "n", scope: !209, file: !1, line: 133, type: !83)
!213 = !DILocation(line: 133, column: 20, scope: !209)
!214 = !DILocalVariable(name: "intVariable", scope: !209, file: !1, line: 133, type: !83)
!215 = !DILocation(line: 133, column: 23, scope: !209)
!216 = !DILocation(line: 134, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !1, line: 134, column: 17)
!218 = !DILocation(line: 134, column: 17, scope: !217)
!219 = !DILocation(line: 134, column: 40, scope: !217)
!220 = !DILocation(line: 134, column: 17, scope: !209)
!221 = !DILocation(line: 137, column: 29, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 135, column: 13)
!223 = !DILocation(line: 138, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !1, line: 138, column: 17)
!225 = !DILocation(line: 138, column: 22, scope: !224)
!226 = !DILocation(line: 138, column: 29, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 138, column: 17)
!228 = !DILocation(line: 138, column: 33, scope: !227)
!229 = !DILocation(line: 138, column: 31, scope: !227)
!230 = !DILocation(line: 138, column: 17, scope: !224)
!231 = !DILocation(line: 141, column: 32, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 139, column: 17)
!233 = !DILocation(line: 142, column: 17, scope: !232)
!234 = !DILocation(line: 138, column: 37, scope: !227)
!235 = !DILocation(line: 138, column: 17, scope: !227)
!236 = distinct !{!236, !230, !237, !238}
!237 = !DILocation(line: 142, column: 17, scope: !224)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 143, column: 30, scope: !222)
!240 = !DILocation(line: 143, column: 17, scope: !222)
!241 = !DILocation(line: 144, column: 13, scope: !222)
!242 = !DILocation(line: 146, column: 5, scope: !210)
!243 = !DILocalVariable(name: "i", scope: !244, file: !1, line: 150, type: !83)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 149, column: 9)
!245 = distinct !DILexicalBlock(scope: !206, file: !1, line: 148, column: 5)
!246 = !DILocation(line: 150, column: 17, scope: !244)
!247 = !DILocalVariable(name: "n", scope: !244, file: !1, line: 150, type: !83)
!248 = !DILocation(line: 150, column: 20, scope: !244)
!249 = !DILocalVariable(name: "intVariable", scope: !244, file: !1, line: 150, type: !83)
!250 = !DILocation(line: 150, column: 23, scope: !244)
!251 = !DILocation(line: 151, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !1, line: 151, column: 17)
!253 = !DILocation(line: 151, column: 17, scope: !252)
!254 = !DILocation(line: 151, column: 40, scope: !252)
!255 = !DILocation(line: 151, column: 17, scope: !244)
!256 = !DILocation(line: 154, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 154, column: 21)
!258 = distinct !DILexicalBlock(scope: !252, file: !1, line: 152, column: 13)
!259 = !DILocation(line: 154, column: 23, scope: !257)
!260 = !DILocation(line: 154, column: 21, scope: !258)
!261 = !DILocation(line: 156, column: 33, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 155, column: 17)
!263 = !DILocation(line: 157, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !1, line: 157, column: 21)
!265 = !DILocation(line: 157, column: 26, scope: !264)
!266 = !DILocation(line: 157, column: 33, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 157, column: 21)
!268 = !DILocation(line: 157, column: 37, scope: !267)
!269 = !DILocation(line: 157, column: 35, scope: !267)
!270 = !DILocation(line: 157, column: 21, scope: !264)
!271 = !DILocation(line: 160, column: 36, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 158, column: 21)
!273 = !DILocation(line: 161, column: 21, scope: !272)
!274 = !DILocation(line: 157, column: 41, scope: !267)
!275 = !DILocation(line: 157, column: 21, scope: !267)
!276 = distinct !{!276, !270, !277, !238}
!277 = !DILocation(line: 161, column: 21, scope: !264)
!278 = !DILocation(line: 162, column: 34, scope: !262)
!279 = !DILocation(line: 162, column: 21, scope: !262)
!280 = !DILocation(line: 163, column: 17, scope: !262)
!281 = !DILocation(line: 164, column: 13, scope: !258)
!282 = !DILocation(line: 167, column: 1, scope: !64)
!283 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 176, type: !65, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!284 = !DILocalVariable(name: "data", scope: !283, file: !1, line: 178, type: !59)
!285 = !DILocation(line: 178, column: 12, scope: !283)
!286 = !DILocalVariable(name: "dataBuffer", scope: !283, file: !1, line: 179, type: !71)
!287 = !DILocation(line: 179, column: 10, scope: !283)
!288 = !DILocation(line: 180, column: 12, scope: !283)
!289 = !DILocation(line: 180, column: 10, scope: !283)
!290 = !DILocation(line: 181, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !1, line: 181, column: 8)
!292 = !DILocation(line: 181, column: 8, scope: !283)
!293 = !DILocalVariable(name: "recvResult", scope: !294, file: !1, line: 188, type: !83)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 183, column: 9)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 182, column: 5)
!296 = !DILocation(line: 188, column: 17, scope: !294)
!297 = !DILocalVariable(name: "service", scope: !294, file: !1, line: 189, type: !86)
!298 = !DILocation(line: 189, column: 32, scope: !294)
!299 = !DILocalVariable(name: "replace", scope: !294, file: !1, line: 190, type: !59)
!300 = !DILocation(line: 190, column: 19, scope: !294)
!301 = !DILocalVariable(name: "connectSocket", scope: !294, file: !1, line: 191, type: !83)
!302 = !DILocation(line: 191, column: 20, scope: !294)
!303 = !DILocalVariable(name: "dataLen", scope: !294, file: !1, line: 192, type: !113)
!304 = !DILocation(line: 192, column: 20, scope: !294)
!305 = !DILocation(line: 192, column: 37, scope: !294)
!306 = !DILocation(line: 192, column: 30, scope: !294)
!307 = !DILocation(line: 193, column: 13, scope: !294)
!308 = !DILocation(line: 203, column: 33, scope: !309)
!309 = distinct !DILexicalBlock(scope: !294, file: !1, line: 194, column: 13)
!310 = !DILocation(line: 203, column: 31, scope: !309)
!311 = !DILocation(line: 204, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 204, column: 21)
!313 = !DILocation(line: 204, column: 35, scope: !312)
!314 = !DILocation(line: 204, column: 21, scope: !309)
!315 = !DILocation(line: 206, column: 21, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 205, column: 17)
!317 = !DILocation(line: 208, column: 17, scope: !309)
!318 = !DILocation(line: 209, column: 25, scope: !309)
!319 = !DILocation(line: 209, column: 36, scope: !309)
!320 = !DILocation(line: 210, column: 43, scope: !309)
!321 = !DILocation(line: 210, column: 25, scope: !309)
!322 = !DILocation(line: 210, column: 34, scope: !309)
!323 = !DILocation(line: 210, column: 41, scope: !309)
!324 = !DILocation(line: 211, column: 36, scope: !309)
!325 = !DILocation(line: 211, column: 25, scope: !309)
!326 = !DILocation(line: 211, column: 34, scope: !309)
!327 = !DILocation(line: 212, column: 29, scope: !328)
!328 = distinct !DILexicalBlock(scope: !309, file: !1, line: 212, column: 21)
!329 = !DILocation(line: 212, column: 44, scope: !328)
!330 = !DILocation(line: 212, column: 21, scope: !328)
!331 = !DILocation(line: 212, column: 89, scope: !328)
!332 = !DILocation(line: 212, column: 21, scope: !309)
!333 = !DILocation(line: 214, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 213, column: 17)
!335 = !DILocation(line: 219, column: 35, scope: !309)
!336 = !DILocation(line: 219, column: 59, scope: !309)
!337 = !DILocation(line: 219, column: 66, scope: !309)
!338 = !DILocation(line: 219, column: 64, scope: !309)
!339 = !DILocation(line: 219, column: 98, scope: !309)
!340 = !DILocation(line: 219, column: 96, scope: !309)
!341 = !DILocation(line: 219, column: 106, scope: !309)
!342 = !DILocation(line: 219, column: 89, scope: !309)
!343 = !DILocation(line: 219, column: 30, scope: !309)
!344 = !DILocation(line: 219, column: 28, scope: !309)
!345 = !DILocation(line: 220, column: 21, scope: !346)
!346 = distinct !DILexicalBlock(scope: !309, file: !1, line: 220, column: 21)
!347 = !DILocation(line: 220, column: 32, scope: !346)
!348 = !DILocation(line: 220, column: 48, scope: !346)
!349 = !DILocation(line: 220, column: 51, scope: !346)
!350 = !DILocation(line: 220, column: 62, scope: !346)
!351 = !DILocation(line: 220, column: 21, scope: !309)
!352 = !DILocation(line: 222, column: 21, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 221, column: 17)
!354 = !DILocation(line: 225, column: 17, scope: !309)
!355 = !DILocation(line: 225, column: 22, scope: !309)
!356 = !DILocation(line: 225, column: 32, scope: !309)
!357 = !DILocation(line: 225, column: 43, scope: !309)
!358 = !DILocation(line: 225, column: 30, scope: !309)
!359 = !DILocation(line: 225, column: 59, scope: !309)
!360 = !DILocation(line: 227, column: 34, scope: !309)
!361 = !DILocation(line: 227, column: 27, scope: !309)
!362 = !DILocation(line: 227, column: 25, scope: !309)
!363 = !DILocation(line: 228, column: 21, scope: !364)
!364 = distinct !DILexicalBlock(scope: !309, file: !1, line: 228, column: 21)
!365 = !DILocation(line: 228, column: 21, scope: !309)
!366 = !DILocation(line: 230, column: 22, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 229, column: 17)
!368 = !DILocation(line: 230, column: 30, scope: !367)
!369 = !DILocation(line: 231, column: 17, scope: !367)
!370 = !DILocation(line: 232, column: 34, scope: !309)
!371 = !DILocation(line: 232, column: 27, scope: !309)
!372 = !DILocation(line: 232, column: 25, scope: !309)
!373 = !DILocation(line: 233, column: 21, scope: !374)
!374 = distinct !DILexicalBlock(scope: !309, file: !1, line: 233, column: 21)
!375 = !DILocation(line: 233, column: 21, scope: !309)
!376 = !DILocation(line: 235, column: 22, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 234, column: 17)
!378 = !DILocation(line: 235, column: 30, scope: !377)
!379 = !DILocation(line: 236, column: 17, scope: !377)
!380 = !DILocation(line: 237, column: 13, scope: !309)
!381 = !DILocation(line: 239, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !294, file: !1, line: 239, column: 17)
!383 = !DILocation(line: 239, column: 31, scope: !382)
!384 = !DILocation(line: 239, column: 17, scope: !294)
!385 = !DILocation(line: 241, column: 30, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 240, column: 13)
!387 = !DILocation(line: 241, column: 17, scope: !386)
!388 = !DILocation(line: 242, column: 13, scope: !386)
!389 = !DILocation(line: 250, column: 5, scope: !295)
!390 = !DILocalVariable(name: "recvResult", scope: !391, file: !1, line: 258, type: !83)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 253, column: 9)
!392 = distinct !DILexicalBlock(scope: !291, file: !1, line: 252, column: 5)
!393 = !DILocation(line: 258, column: 17, scope: !391)
!394 = !DILocalVariable(name: "service", scope: !391, file: !1, line: 259, type: !86)
!395 = !DILocation(line: 259, column: 32, scope: !391)
!396 = !DILocalVariable(name: "replace", scope: !391, file: !1, line: 260, type: !59)
!397 = !DILocation(line: 260, column: 19, scope: !391)
!398 = !DILocalVariable(name: "connectSocket", scope: !391, file: !1, line: 261, type: !83)
!399 = !DILocation(line: 261, column: 20, scope: !391)
!400 = !DILocalVariable(name: "dataLen", scope: !391, file: !1, line: 262, type: !113)
!401 = !DILocation(line: 262, column: 20, scope: !391)
!402 = !DILocation(line: 262, column: 37, scope: !391)
!403 = !DILocation(line: 262, column: 30, scope: !391)
!404 = !DILocation(line: 263, column: 13, scope: !391)
!405 = !DILocation(line: 273, column: 33, scope: !406)
!406 = distinct !DILexicalBlock(scope: !391, file: !1, line: 264, column: 13)
!407 = !DILocation(line: 273, column: 31, scope: !406)
!408 = !DILocation(line: 274, column: 21, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 274, column: 21)
!410 = !DILocation(line: 274, column: 35, scope: !409)
!411 = !DILocation(line: 274, column: 21, scope: !406)
!412 = !DILocation(line: 276, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !1, line: 275, column: 17)
!414 = !DILocation(line: 278, column: 17, scope: !406)
!415 = !DILocation(line: 279, column: 25, scope: !406)
!416 = !DILocation(line: 279, column: 36, scope: !406)
!417 = !DILocation(line: 280, column: 43, scope: !406)
!418 = !DILocation(line: 280, column: 25, scope: !406)
!419 = !DILocation(line: 280, column: 34, scope: !406)
!420 = !DILocation(line: 280, column: 41, scope: !406)
!421 = !DILocation(line: 281, column: 36, scope: !406)
!422 = !DILocation(line: 281, column: 25, scope: !406)
!423 = !DILocation(line: 281, column: 34, scope: !406)
!424 = !DILocation(line: 282, column: 29, scope: !425)
!425 = distinct !DILexicalBlock(scope: !406, file: !1, line: 282, column: 21)
!426 = !DILocation(line: 282, column: 44, scope: !425)
!427 = !DILocation(line: 282, column: 21, scope: !425)
!428 = !DILocation(line: 282, column: 89, scope: !425)
!429 = !DILocation(line: 282, column: 21, scope: !406)
!430 = !DILocation(line: 284, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !425, file: !1, line: 283, column: 17)
!432 = !DILocation(line: 289, column: 35, scope: !406)
!433 = !DILocation(line: 289, column: 59, scope: !406)
!434 = !DILocation(line: 289, column: 66, scope: !406)
!435 = !DILocation(line: 289, column: 64, scope: !406)
!436 = !DILocation(line: 289, column: 98, scope: !406)
!437 = !DILocation(line: 289, column: 96, scope: !406)
!438 = !DILocation(line: 289, column: 106, scope: !406)
!439 = !DILocation(line: 289, column: 89, scope: !406)
!440 = !DILocation(line: 289, column: 30, scope: !406)
!441 = !DILocation(line: 289, column: 28, scope: !406)
!442 = !DILocation(line: 290, column: 21, scope: !443)
!443 = distinct !DILexicalBlock(scope: !406, file: !1, line: 290, column: 21)
!444 = !DILocation(line: 290, column: 32, scope: !443)
!445 = !DILocation(line: 290, column: 48, scope: !443)
!446 = !DILocation(line: 290, column: 51, scope: !443)
!447 = !DILocation(line: 290, column: 62, scope: !443)
!448 = !DILocation(line: 290, column: 21, scope: !406)
!449 = !DILocation(line: 292, column: 21, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !1, line: 291, column: 17)
!451 = !DILocation(line: 295, column: 17, scope: !406)
!452 = !DILocation(line: 295, column: 22, scope: !406)
!453 = !DILocation(line: 295, column: 32, scope: !406)
!454 = !DILocation(line: 295, column: 43, scope: !406)
!455 = !DILocation(line: 295, column: 30, scope: !406)
!456 = !DILocation(line: 295, column: 59, scope: !406)
!457 = !DILocation(line: 297, column: 34, scope: !406)
!458 = !DILocation(line: 297, column: 27, scope: !406)
!459 = !DILocation(line: 297, column: 25, scope: !406)
!460 = !DILocation(line: 298, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !406, file: !1, line: 298, column: 21)
!462 = !DILocation(line: 298, column: 21, scope: !406)
!463 = !DILocation(line: 300, column: 22, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 299, column: 17)
!465 = !DILocation(line: 300, column: 30, scope: !464)
!466 = !DILocation(line: 301, column: 17, scope: !464)
!467 = !DILocation(line: 302, column: 34, scope: !406)
!468 = !DILocation(line: 302, column: 27, scope: !406)
!469 = !DILocation(line: 302, column: 25, scope: !406)
!470 = !DILocation(line: 303, column: 21, scope: !471)
!471 = distinct !DILexicalBlock(scope: !406, file: !1, line: 303, column: 21)
!472 = !DILocation(line: 303, column: 21, scope: !406)
!473 = !DILocation(line: 305, column: 22, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 304, column: 17)
!475 = !DILocation(line: 305, column: 30, scope: !474)
!476 = !DILocation(line: 306, column: 17, scope: !474)
!477 = !DILocation(line: 307, column: 13, scope: !406)
!478 = !DILocation(line: 309, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !391, file: !1, line: 309, column: 17)
!480 = !DILocation(line: 309, column: 31, scope: !479)
!481 = !DILocation(line: 309, column: 17, scope: !391)
!482 = !DILocation(line: 311, column: 30, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 310, column: 13)
!484 = !DILocation(line: 311, column: 17, scope: !483)
!485 = !DILocation(line: 312, column: 13, scope: !483)
!486 = !DILocation(line: 321, column: 8, scope: !487)
!487 = distinct !DILexicalBlock(scope: !283, file: !1, line: 321, column: 8)
!488 = !DILocation(line: 321, column: 8, scope: !283)
!489 = !DILocalVariable(name: "i", scope: !490, file: !1, line: 324, type: !83)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 323, column: 9)
!491 = distinct !DILexicalBlock(scope: !487, file: !1, line: 322, column: 5)
!492 = !DILocation(line: 324, column: 17, scope: !490)
!493 = !DILocalVariable(name: "n", scope: !490, file: !1, line: 324, type: !83)
!494 = !DILocation(line: 324, column: 20, scope: !490)
!495 = !DILocalVariable(name: "intVariable", scope: !490, file: !1, line: 324, type: !83)
!496 = !DILocation(line: 324, column: 23, scope: !490)
!497 = !DILocation(line: 325, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !490, file: !1, line: 325, column: 17)
!499 = !DILocation(line: 325, column: 17, scope: !498)
!500 = !DILocation(line: 325, column: 40, scope: !498)
!501 = !DILocation(line: 325, column: 17, scope: !490)
!502 = !DILocation(line: 328, column: 21, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 328, column: 21)
!504 = distinct !DILexicalBlock(scope: !498, file: !1, line: 326, column: 13)
!505 = !DILocation(line: 328, column: 23, scope: !503)
!506 = !DILocation(line: 328, column: 21, scope: !504)
!507 = !DILocation(line: 330, column: 33, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !1, line: 329, column: 17)
!509 = !DILocation(line: 331, column: 28, scope: !510)
!510 = distinct !DILexicalBlock(scope: !508, file: !1, line: 331, column: 21)
!511 = !DILocation(line: 331, column: 26, scope: !510)
!512 = !DILocation(line: 331, column: 33, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !1, line: 331, column: 21)
!514 = !DILocation(line: 331, column: 37, scope: !513)
!515 = !DILocation(line: 331, column: 35, scope: !513)
!516 = !DILocation(line: 331, column: 21, scope: !510)
!517 = !DILocation(line: 334, column: 36, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !1, line: 332, column: 21)
!519 = !DILocation(line: 335, column: 21, scope: !518)
!520 = !DILocation(line: 331, column: 41, scope: !513)
!521 = !DILocation(line: 331, column: 21, scope: !513)
!522 = distinct !{!522, !516, !523, !238}
!523 = !DILocation(line: 335, column: 21, scope: !510)
!524 = !DILocation(line: 336, column: 34, scope: !508)
!525 = !DILocation(line: 336, column: 21, scope: !508)
!526 = !DILocation(line: 337, column: 17, scope: !508)
!527 = !DILocation(line: 338, column: 13, scope: !504)
!528 = !DILocation(line: 340, column: 5, scope: !491)
!529 = !DILocalVariable(name: "i", scope: !530, file: !1, line: 344, type: !83)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 343, column: 9)
!531 = distinct !DILexicalBlock(scope: !487, file: !1, line: 342, column: 5)
!532 = !DILocation(line: 344, column: 17, scope: !530)
!533 = !DILocalVariable(name: "n", scope: !530, file: !1, line: 344, type: !83)
!534 = !DILocation(line: 344, column: 20, scope: !530)
!535 = !DILocalVariable(name: "intVariable", scope: !530, file: !1, line: 344, type: !83)
!536 = !DILocation(line: 344, column: 23, scope: !530)
!537 = !DILocation(line: 345, column: 24, scope: !538)
!538 = distinct !DILexicalBlock(scope: !530, file: !1, line: 345, column: 17)
!539 = !DILocation(line: 345, column: 17, scope: !538)
!540 = !DILocation(line: 345, column: 40, scope: !538)
!541 = !DILocation(line: 345, column: 17, scope: !530)
!542 = !DILocation(line: 348, column: 21, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 348, column: 21)
!544 = distinct !DILexicalBlock(scope: !538, file: !1, line: 346, column: 13)
!545 = !DILocation(line: 348, column: 23, scope: !543)
!546 = !DILocation(line: 348, column: 21, scope: !544)
!547 = !DILocation(line: 350, column: 33, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 349, column: 17)
!549 = !DILocation(line: 351, column: 28, scope: !550)
!550 = distinct !DILexicalBlock(scope: !548, file: !1, line: 351, column: 21)
!551 = !DILocation(line: 351, column: 26, scope: !550)
!552 = !DILocation(line: 351, column: 33, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !1, line: 351, column: 21)
!554 = !DILocation(line: 351, column: 37, scope: !553)
!555 = !DILocation(line: 351, column: 35, scope: !553)
!556 = !DILocation(line: 351, column: 21, scope: !550)
!557 = !DILocation(line: 354, column: 36, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !1, line: 352, column: 21)
!559 = !DILocation(line: 355, column: 21, scope: !558)
!560 = !DILocation(line: 351, column: 41, scope: !553)
!561 = !DILocation(line: 351, column: 21, scope: !553)
!562 = distinct !{!562, !556, !563, !238}
!563 = !DILocation(line: 355, column: 21, scope: !550)
!564 = !DILocation(line: 356, column: 34, scope: !548)
!565 = !DILocation(line: 356, column: 21, scope: !548)
!566 = !DILocation(line: 357, column: 17, scope: !548)
!567 = !DILocation(line: 358, column: 13, scope: !544)
!568 = !DILocation(line: 361, column: 1, scope: !283)
!569 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 366, type: !65, scopeLine: 367, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!570 = !DILocalVariable(name: "data", scope: !569, file: !1, line: 368, type: !59)
!571 = !DILocation(line: 368, column: 12, scope: !569)
!572 = !DILocalVariable(name: "dataBuffer", scope: !569, file: !1, line: 369, type: !71)
!573 = !DILocation(line: 369, column: 10, scope: !569)
!574 = !DILocation(line: 370, column: 12, scope: !569)
!575 = !DILocation(line: 370, column: 10, scope: !569)
!576 = !DILocation(line: 371, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !569, file: !1, line: 371, column: 8)
!578 = !DILocation(line: 371, column: 8, scope: !569)
!579 = !DILocation(line: 374, column: 16, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !1, line: 372, column: 5)
!581 = !DILocation(line: 374, column: 9, scope: !580)
!582 = !DILocation(line: 375, column: 5, scope: !580)
!583 = !DILocation(line: 379, column: 16, scope: !584)
!584 = distinct !DILexicalBlock(scope: !577, file: !1, line: 377, column: 5)
!585 = !DILocation(line: 379, column: 9, scope: !584)
!586 = !DILocation(line: 381, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !569, file: !1, line: 381, column: 8)
!588 = !DILocation(line: 381, column: 8, scope: !569)
!589 = !DILocalVariable(name: "i", scope: !590, file: !1, line: 384, type: !83)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 383, column: 9)
!591 = distinct !DILexicalBlock(scope: !587, file: !1, line: 382, column: 5)
!592 = !DILocation(line: 384, column: 17, scope: !590)
!593 = !DILocalVariable(name: "n", scope: !590, file: !1, line: 384, type: !83)
!594 = !DILocation(line: 384, column: 20, scope: !590)
!595 = !DILocalVariable(name: "intVariable", scope: !590, file: !1, line: 384, type: !83)
!596 = !DILocation(line: 384, column: 23, scope: !590)
!597 = !DILocation(line: 385, column: 24, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !1, line: 385, column: 17)
!599 = !DILocation(line: 385, column: 17, scope: !598)
!600 = !DILocation(line: 385, column: 40, scope: !598)
!601 = !DILocation(line: 385, column: 17, scope: !590)
!602 = !DILocation(line: 388, column: 29, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !1, line: 386, column: 13)
!604 = !DILocation(line: 389, column: 24, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !1, line: 389, column: 17)
!606 = !DILocation(line: 389, column: 22, scope: !605)
!607 = !DILocation(line: 389, column: 29, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !1, line: 389, column: 17)
!609 = !DILocation(line: 389, column: 33, scope: !608)
!610 = !DILocation(line: 389, column: 31, scope: !608)
!611 = !DILocation(line: 389, column: 17, scope: !605)
!612 = !DILocation(line: 392, column: 32, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !1, line: 390, column: 17)
!614 = !DILocation(line: 393, column: 17, scope: !613)
!615 = !DILocation(line: 389, column: 37, scope: !608)
!616 = !DILocation(line: 389, column: 17, scope: !608)
!617 = distinct !{!617, !611, !618, !238}
!618 = !DILocation(line: 393, column: 17, scope: !605)
!619 = !DILocation(line: 394, column: 30, scope: !603)
!620 = !DILocation(line: 394, column: 17, scope: !603)
!621 = !DILocation(line: 395, column: 13, scope: !603)
!622 = !DILocation(line: 397, column: 5, scope: !591)
!623 = !DILocalVariable(name: "i", scope: !624, file: !1, line: 401, type: !83)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 400, column: 9)
!625 = distinct !DILexicalBlock(scope: !587, file: !1, line: 399, column: 5)
!626 = !DILocation(line: 401, column: 17, scope: !624)
!627 = !DILocalVariable(name: "n", scope: !624, file: !1, line: 401, type: !83)
!628 = !DILocation(line: 401, column: 20, scope: !624)
!629 = !DILocalVariable(name: "intVariable", scope: !624, file: !1, line: 401, type: !83)
!630 = !DILocation(line: 401, column: 23, scope: !624)
!631 = !DILocation(line: 402, column: 24, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !1, line: 402, column: 17)
!633 = !DILocation(line: 402, column: 17, scope: !632)
!634 = !DILocation(line: 402, column: 40, scope: !632)
!635 = !DILocation(line: 402, column: 17, scope: !624)
!636 = !DILocation(line: 405, column: 29, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !1, line: 403, column: 13)
!638 = !DILocation(line: 406, column: 24, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !1, line: 406, column: 17)
!640 = !DILocation(line: 406, column: 22, scope: !639)
!641 = !DILocation(line: 406, column: 29, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !1, line: 406, column: 17)
!643 = !DILocation(line: 406, column: 33, scope: !642)
!644 = !DILocation(line: 406, column: 31, scope: !642)
!645 = !DILocation(line: 406, column: 17, scope: !639)
!646 = !DILocation(line: 409, column: 32, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !1, line: 407, column: 17)
!648 = !DILocation(line: 410, column: 17, scope: !647)
!649 = !DILocation(line: 406, column: 37, scope: !642)
!650 = !DILocation(line: 406, column: 17, scope: !642)
!651 = distinct !{!651, !645, !652, !238}
!652 = !DILocation(line: 410, column: 17, scope: !639)
!653 = !DILocation(line: 411, column: 30, scope: !637)
!654 = !DILocation(line: 411, column: 17, scope: !637)
!655 = !DILocation(line: 412, column: 13, scope: !637)
!656 = !DILocation(line: 415, column: 1, scope: !569)
!657 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good", scope: !1, file: !1, line: 417, type: !65, scopeLine: 418, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!658 = !DILocation(line: 419, column: 5, scope: !657)
!659 = !DILocation(line: 420, column: 5, scope: !657)
!660 = !DILocation(line: 421, column: 1, scope: !657)
