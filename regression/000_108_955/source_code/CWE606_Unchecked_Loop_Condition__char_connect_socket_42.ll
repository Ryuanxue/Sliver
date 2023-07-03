; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_42.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @badSource(i8* %data) #0 !dbg !64 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !74, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 -1, i32* %connectSocket, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !105
  %0 = load i8*, i8** %data.addr, align 8, !dbg !106
  %call = call i64 @strlen(i8* %0) #7, !dbg !107
  store i64 %call, i64* %dataLen, align 8, !dbg !105
  br label %do.body, !dbg !108

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !109
  store i32 %call1, i32* %connectSocket, align 4, !dbg !111
  %1 = load i32, i32* %connectSocket, align 4, !dbg !112
  %cmp = icmp eq i32 %1, -1, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !116

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !118
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !119
  store i16 2, i16* %sin_family, align 4, !dbg !120
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !121
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !122
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !123
  store i32 %call2, i32* %s_addr, align 4, !dbg !124
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !125
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !126
  store i16 %call3, i16* %sin_port, align 2, !dbg !127
  %3 = load i32, i32* %connectSocket, align 4, !dbg !128
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !130
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !131
  %cmp5 = icmp eq i32 %call4, -1, !dbg !132
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !133

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !134

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !136
  %6 = load i8*, i8** %data.addr, align 8, !dbg !137
  %7 = load i64, i64* %dataLen, align 8, !dbg !138
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !139
  %8 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub = sub i64 100, %8, !dbg !141
  %sub8 = sub i64 %sub, 1, !dbg !142
  %mul = mul i64 1, %sub8, !dbg !143
  %call9 = call i64 @recv(i32 %5, i8* %add.ptr, i64 %mul, i32 0), !dbg !144
  %conv = trunc i64 %call9 to i32, !dbg !144
  store i32 %conv, i32* %recvResult, align 4, !dbg !145
  %9 = load i32, i32* %recvResult, align 4, !dbg !146
  %cmp10 = icmp eq i32 %9, -1, !dbg !148
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !149

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load i32, i32* %recvResult, align 4, !dbg !150
  %cmp12 = icmp eq i32 %10, 0, !dbg !151
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !152

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !153

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %data.addr, align 8, !dbg !155
  %12 = load i64, i64* %dataLen, align 8, !dbg !156
  %13 = load i32, i32* %recvResult, align 4, !dbg !157
  %conv16 = sext i32 %13 to i64, !dbg !157
  %div = udiv i64 %conv16, 1, !dbg !158
  %add = add i64 %12, %div, !dbg !159
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %add, !dbg !155
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  %14 = load i8*, i8** %data.addr, align 8, !dbg !161
  %call17 = call i8* @strchr(i8* %14, i32 13) #7, !dbg !162
  store i8* %call17, i8** %replace, align 8, !dbg !163
  %15 = load i8*, i8** %replace, align 8, !dbg !164
  %tobool = icmp ne i8* %15, null, !dbg !164
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !166

if.then18:                                        ; preds = %if.end15
  %16 = load i8*, i8** %replace, align 8, !dbg !167
  store i8 0, i8* %16, align 1, !dbg !169
  br label %if.end19, !dbg !170

if.end19:                                         ; preds = %if.then18, %if.end15
  %17 = load i8*, i8** %data.addr, align 8, !dbg !171
  %call20 = call i8* @strchr(i8* %17, i32 10) #7, !dbg !172
  store i8* %call20, i8** %replace, align 8, !dbg !173
  %18 = load i8*, i8** %replace, align 8, !dbg !174
  %tobool21 = icmp ne i8* %18, null, !dbg !174
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !176

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %replace, align 8, !dbg !177
  store i8 0, i8* %19, align 1, !dbg !179
  br label %if.end23, !dbg !180

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !181

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %20 = load i32, i32* %connectSocket, align 4, !dbg !182
  %cmp24 = icmp ne i32 %20, -1, !dbg !184
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !185

if.then26:                                        ; preds = %do.end
  %21 = load i32, i32* %connectSocket, align 4, !dbg !186
  %call27 = call i32 @close(i32 %21), !dbg !188
  br label %if.end28, !dbg !189

if.end28:                                         ; preds = %if.then26, %do.end
  %22 = load i8*, i8** %data.addr, align 8, !dbg !190
  ret i8* %22, !dbg !191
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #6

declare dso_local i64 @recv(i32, i8*, i64, i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @close(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad() #0 !dbg !192 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !197, metadata !DIExpression()), !dbg !201
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !201
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !201
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !202
  store i8* %arraydecay, i8** %data, align 8, !dbg !203
  %1 = load i8*, i8** %data, align 8, !dbg !204
  %call = call i8* @badSource(i8* %1), !dbg !205
  store i8* %call, i8** %data, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata i32* %i, metadata !207, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %n, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !212, metadata !DIExpression()), !dbg !213
  %2 = load i8*, i8** %data, align 8, !dbg !214
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !216
  %cmp = icmp eq i32 %call1, 1, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !219
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !224
  %4 = load i32, i32* %n, align 4, !dbg !226
  %cmp2 = icmp slt i32 %3, %4, !dbg !227
  br i1 %cmp2, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !229
  %inc = add nsw i32 %5, 1, !dbg !229
  store i32 %inc, i32* %intVariable, align 4, !dbg !229
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !232
  %inc3 = add nsw i32 %6, 1, !dbg !232
  store i32 %inc3, i32* %i, align 4, !dbg !232
  br label %for.cond, !dbg !233, !llvm.loop !234

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !237
  call void @printIntLine(i32 %7), !dbg !238
  br label %if.end, !dbg !239

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !240
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local void @printIntLine(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8*, i8** %data.addr, align 8, !dbg !244
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !245
  %1 = load i8*, i8** %data.addr, align 8, !dbg !246
  ret i8* %1, !dbg !247
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !248 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !252
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !252
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !253
  store i8* %arraydecay, i8** %data, align 8, !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i8* @goodG2BSource(i8* %1), !dbg !256
  store i8* %call, i8** %data, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %i, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %n, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !263, metadata !DIExpression()), !dbg !264
  %2 = load i8*, i8** %data, align 8, !dbg !265
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !267
  %cmp = icmp eq i32 %call1, 1, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !270
  store i32 0, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !274

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !275
  %4 = load i32, i32* %n, align 4, !dbg !277
  %cmp2 = icmp slt i32 %3, %4, !dbg !278
  br i1 %cmp2, label %for.body, label %for.end, !dbg !279

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !280
  %inc = add nsw i32 %5, 1, !dbg !280
  store i32 %inc, i32* %intVariable, align 4, !dbg !280
  br label %for.inc, !dbg !282

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !283
  %inc3 = add nsw i32 %6, 1, !dbg !283
  store i32 %inc3, i32* %i, align 4, !dbg !283
  br label %for.cond, !dbg !284, !llvm.loop !285

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !287
  call void @printIntLine(i32 %7), !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !291 {
entry:
  %data.addr = alloca i8*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %replace = alloca i8*, align 8
  %connectSocket = alloca i32, align 4
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 -1, i32* %connectSocket, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i8*, i8** %data.addr, align 8, !dbg !305
  %call = call i64 @strlen(i8* %0) #7, !dbg !306
  store i64 %call, i64* %dataLen, align 8, !dbg !304
  br label %do.body, !dbg !307

do.body:                                          ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !308
  store i32 %call1, i32* %connectSocket, align 4, !dbg !310
  %1 = load i32, i32* %connectSocket, align 4, !dbg !311
  %cmp = icmp eq i32 %1, -1, !dbg !313
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !315

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !317
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !318
  store i16 2, i16* %sin_family, align 4, !dbg !319
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !320
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !321
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !322
  store i32 %call2, i32* %s_addr, align 4, !dbg !323
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !324
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !325
  store i16 %call3, i16* %sin_port, align 2, !dbg !326
  %3 = load i32, i32* %connectSocket, align 4, !dbg !327
  %4 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !329
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !330
  %cmp5 = icmp eq i32 %call4, -1, !dbg !331
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !332

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !333

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %connectSocket, align 4, !dbg !335
  %6 = load i8*, i8** %data.addr, align 8, !dbg !336
  %7 = load i64, i64* %dataLen, align 8, !dbg !337
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !338
  %8 = load i64, i64* %dataLen, align 8, !dbg !339
  %sub = sub i64 100, %8, !dbg !340
  %sub8 = sub i64 %sub, 1, !dbg !341
  %mul = mul i64 1, %sub8, !dbg !342
  %call9 = call i64 @recv(i32 %5, i8* %add.ptr, i64 %mul, i32 0), !dbg !343
  %conv = trunc i64 %call9 to i32, !dbg !343
  store i32 %conv, i32* %recvResult, align 4, !dbg !344
  %9 = load i32, i32* %recvResult, align 4, !dbg !345
  %cmp10 = icmp eq i32 %9, -1, !dbg !347
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !348

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load i32, i32* %recvResult, align 4, !dbg !349
  %cmp12 = icmp eq i32 %10, 0, !dbg !350
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !351

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !352

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %data.addr, align 8, !dbg !354
  %12 = load i64, i64* %dataLen, align 8, !dbg !355
  %13 = load i32, i32* %recvResult, align 4, !dbg !356
  %conv16 = sext i32 %13 to i64, !dbg !356
  %div = udiv i64 %conv16, 1, !dbg !357
  %add = add i64 %12, %div, !dbg !358
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %add, !dbg !354
  store i8 0, i8* %arrayidx, align 1, !dbg !359
  %14 = load i8*, i8** %data.addr, align 8, !dbg !360
  %call17 = call i8* @strchr(i8* %14, i32 13) #7, !dbg !361
  store i8* %call17, i8** %replace, align 8, !dbg !362
  %15 = load i8*, i8** %replace, align 8, !dbg !363
  %tobool = icmp ne i8* %15, null, !dbg !363
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !365

if.then18:                                        ; preds = %if.end15
  %16 = load i8*, i8** %replace, align 8, !dbg !366
  store i8 0, i8* %16, align 1, !dbg !368
  br label %if.end19, !dbg !369

if.end19:                                         ; preds = %if.then18, %if.end15
  %17 = load i8*, i8** %data.addr, align 8, !dbg !370
  %call20 = call i8* @strchr(i8* %17, i32 10) #7, !dbg !371
  store i8* %call20, i8** %replace, align 8, !dbg !372
  %18 = load i8*, i8** %replace, align 8, !dbg !373
  %tobool21 = icmp ne i8* %18, null, !dbg !373
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !375

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %replace, align 8, !dbg !376
  store i8 0, i8* %19, align 1, !dbg !378
  br label %if.end23, !dbg !379

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !380

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %20 = load i32, i32* %connectSocket, align 4, !dbg !381
  %cmp24 = icmp ne i32 %20, -1, !dbg !383
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !384

if.then26:                                        ; preds = %do.end
  %21 = load i32, i32* %connectSocket, align 4, !dbg !385
  %call27 = call i32 @close(i32 %21), !dbg !387
  br label %if.end28, !dbg !388

if.end28:                                         ; preds = %if.then26, %do.end
  %22 = load i8*, i8** %data.addr, align 8, !dbg !389
  ret i8* %22, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !391 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !395
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !395
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !396
  store i8* %arraydecay, i8** %data, align 8, !dbg !397
  %1 = load i8*, i8** %data, align 8, !dbg !398
  %call = call i8* @goodB2GSource(i8* %1), !dbg !399
  store i8* %call, i8** %data, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata i32* %i, metadata !401, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %n, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !406, metadata !DIExpression()), !dbg !407
  %2 = load i8*, i8** %data, align 8, !dbg !408
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !410
  %cmp = icmp eq i32 %call1, 1, !dbg !411
  br i1 %cmp, label %if.then, label %if.end6, !dbg !412

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !413
  %cmp2 = icmp slt i32 %3, 10000, !dbg !416
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !417

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !418
  store i32 0, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !423
  %5 = load i32, i32* %n, align 4, !dbg !425
  %cmp4 = icmp slt i32 %4, %5, !dbg !426
  br i1 %cmp4, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !428
  %inc = add nsw i32 %6, 1, !dbg !428
  store i32 %inc, i32* %intVariable, align 4, !dbg !428
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !431
  %inc5 = add nsw i32 %7, 1, !dbg !431
  store i32 %inc5, i32* %i, align 4, !dbg !431
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !435
  call void @printIntLine(i32 %8), !dbg !436
  br label %if.end, !dbg !437

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !438

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good() #0 !dbg !440 {
entry:
  call void @goodB2G(), !dbg !441
  call void @goodG2B(), !dbg !442
  ret void, !dbg !443
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_955/source_code")
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
!64 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!59, !59}
!67 = !{}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !64, file: !1, line: 50, type: !59)
!69 = !DILocation(line: 50, column: 25, scope: !64)
!70 = !DILocalVariable(name: "recvResult", scope: !71, file: !1, line: 57, type: !72)
!71 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 5)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DILocation(line: 57, column: 13, scope: !71)
!74 = !DILocalVariable(name: "service", scope: !71, file: !1, line: 58, type: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !76)
!76 = !{!77, !78, !84, !91}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !75, file: !17, line: 240, baseType: !51, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !75, file: !17, line: 241, baseType: !79, size: 16, offset: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !81, line: 25, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !83, line: 40, baseType: !53)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !75, file: !17, line: 242, baseType: !85, size: 32, offset: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !85, file: !17, line: 33, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 26, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !83, line: 42, baseType: !5)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !75, file: !17, line: 245, baseType: !92, size: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !94)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DILocation(line: 58, column: 28, scope: !71)
!97 = !DILocalVariable(name: "replace", scope: !71, file: !1, line: 59, type: !59)
!98 = !DILocation(line: 59, column: 15, scope: !71)
!99 = !DILocalVariable(name: "connectSocket", scope: !71, file: !1, line: 60, type: !72)
!100 = !DILocation(line: 60, column: 16, scope: !71)
!101 = !DILocalVariable(name: "dataLen", scope: !71, file: !1, line: 61, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !DILocation(line: 61, column: 16, scope: !71)
!106 = !DILocation(line: 61, column: 33, scope: !71)
!107 = !DILocation(line: 61, column: 26, scope: !71)
!108 = !DILocation(line: 62, column: 9, scope: !71)
!109 = !DILocation(line: 72, column: 29, scope: !110)
!110 = distinct !DILexicalBlock(scope: !71, file: !1, line: 63, column: 9)
!111 = !DILocation(line: 72, column: 27, scope: !110)
!112 = !DILocation(line: 73, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 73, column: 17)
!114 = !DILocation(line: 73, column: 31, scope: !113)
!115 = !DILocation(line: 73, column: 17, scope: !110)
!116 = !DILocation(line: 75, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 74, column: 13)
!118 = !DILocation(line: 77, column: 13, scope: !110)
!119 = !DILocation(line: 78, column: 21, scope: !110)
!120 = !DILocation(line: 78, column: 32, scope: !110)
!121 = !DILocation(line: 79, column: 39, scope: !110)
!122 = !DILocation(line: 79, column: 21, scope: !110)
!123 = !DILocation(line: 79, column: 30, scope: !110)
!124 = !DILocation(line: 79, column: 37, scope: !110)
!125 = !DILocation(line: 80, column: 32, scope: !110)
!126 = !DILocation(line: 80, column: 21, scope: !110)
!127 = !DILocation(line: 80, column: 30, scope: !110)
!128 = !DILocation(line: 81, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !110, file: !1, line: 81, column: 17)
!130 = !DILocation(line: 81, column: 40, scope: !129)
!131 = !DILocation(line: 81, column: 17, scope: !129)
!132 = !DILocation(line: 81, column: 85, scope: !129)
!133 = !DILocation(line: 81, column: 17, scope: !110)
!134 = !DILocation(line: 83, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 82, column: 13)
!136 = !DILocation(line: 88, column: 31, scope: !110)
!137 = !DILocation(line: 88, column: 55, scope: !110)
!138 = !DILocation(line: 88, column: 62, scope: !110)
!139 = !DILocation(line: 88, column: 60, scope: !110)
!140 = !DILocation(line: 88, column: 94, scope: !110)
!141 = !DILocation(line: 88, column: 92, scope: !110)
!142 = !DILocation(line: 88, column: 102, scope: !110)
!143 = !DILocation(line: 88, column: 85, scope: !110)
!144 = !DILocation(line: 88, column: 26, scope: !110)
!145 = !DILocation(line: 88, column: 24, scope: !110)
!146 = !DILocation(line: 89, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !110, file: !1, line: 89, column: 17)
!148 = !DILocation(line: 89, column: 28, scope: !147)
!149 = !DILocation(line: 89, column: 44, scope: !147)
!150 = !DILocation(line: 89, column: 47, scope: !147)
!151 = !DILocation(line: 89, column: 58, scope: !147)
!152 = !DILocation(line: 89, column: 17, scope: !110)
!153 = !DILocation(line: 91, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 90, column: 13)
!155 = !DILocation(line: 94, column: 13, scope: !110)
!156 = !DILocation(line: 94, column: 18, scope: !110)
!157 = !DILocation(line: 94, column: 28, scope: !110)
!158 = !DILocation(line: 94, column: 39, scope: !110)
!159 = !DILocation(line: 94, column: 26, scope: !110)
!160 = !DILocation(line: 94, column: 55, scope: !110)
!161 = !DILocation(line: 96, column: 30, scope: !110)
!162 = !DILocation(line: 96, column: 23, scope: !110)
!163 = !DILocation(line: 96, column: 21, scope: !110)
!164 = !DILocation(line: 97, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !110, file: !1, line: 97, column: 17)
!166 = !DILocation(line: 97, column: 17, scope: !110)
!167 = !DILocation(line: 99, column: 18, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 98, column: 13)
!169 = !DILocation(line: 99, column: 26, scope: !168)
!170 = !DILocation(line: 100, column: 13, scope: !168)
!171 = !DILocation(line: 101, column: 30, scope: !110)
!172 = !DILocation(line: 101, column: 23, scope: !110)
!173 = !DILocation(line: 101, column: 21, scope: !110)
!174 = !DILocation(line: 102, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !110, file: !1, line: 102, column: 17)
!176 = !DILocation(line: 102, column: 17, scope: !110)
!177 = !DILocation(line: 104, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 103, column: 13)
!179 = !DILocation(line: 104, column: 26, scope: !178)
!180 = !DILocation(line: 105, column: 13, scope: !178)
!181 = !DILocation(line: 106, column: 9, scope: !110)
!182 = !DILocation(line: 108, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !71, file: !1, line: 108, column: 13)
!184 = !DILocation(line: 108, column: 27, scope: !183)
!185 = !DILocation(line: 108, column: 13, scope: !71)
!186 = !DILocation(line: 110, column: 26, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 109, column: 9)
!188 = !DILocation(line: 110, column: 13, scope: !187)
!189 = !DILocation(line: 111, column: 9, scope: !187)
!190 = !DILocation(line: 119, column: 12, scope: !64)
!191 = !DILocation(line: 119, column: 5, scope: !64)
!192 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42_bad", scope: !1, file: !1, line: 122, type: !193, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !DILocalVariable(name: "data", scope: !192, file: !1, line: 124, type: !59)
!196 = !DILocation(line: 124, column: 12, scope: !192)
!197 = !DILocalVariable(name: "dataBuffer", scope: !192, file: !1, line: 125, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 100)
!201 = !DILocation(line: 125, column: 10, scope: !192)
!202 = !DILocation(line: 126, column: 12, scope: !192)
!203 = !DILocation(line: 126, column: 10, scope: !192)
!204 = !DILocation(line: 127, column: 22, scope: !192)
!205 = !DILocation(line: 127, column: 12, scope: !192)
!206 = !DILocation(line: 127, column: 10, scope: !192)
!207 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 129, type: !72)
!208 = distinct !DILexicalBlock(scope: !192, file: !1, line: 128, column: 5)
!209 = !DILocation(line: 129, column: 13, scope: !208)
!210 = !DILocalVariable(name: "n", scope: !208, file: !1, line: 129, type: !72)
!211 = !DILocation(line: 129, column: 16, scope: !208)
!212 = !DILocalVariable(name: "intVariable", scope: !208, file: !1, line: 129, type: !72)
!213 = !DILocation(line: 129, column: 19, scope: !208)
!214 = !DILocation(line: 130, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !1, line: 130, column: 13)
!216 = !DILocation(line: 130, column: 13, scope: !215)
!217 = !DILocation(line: 130, column: 36, scope: !215)
!218 = !DILocation(line: 130, column: 13, scope: !208)
!219 = !DILocation(line: 133, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 131, column: 9)
!221 = !DILocation(line: 134, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !1, line: 134, column: 13)
!223 = !DILocation(line: 134, column: 18, scope: !222)
!224 = !DILocation(line: 134, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 134, column: 13)
!226 = !DILocation(line: 134, column: 29, scope: !225)
!227 = !DILocation(line: 134, column: 27, scope: !225)
!228 = !DILocation(line: 134, column: 13, scope: !222)
!229 = !DILocation(line: 137, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 135, column: 13)
!231 = !DILocation(line: 138, column: 13, scope: !230)
!232 = !DILocation(line: 134, column: 33, scope: !225)
!233 = !DILocation(line: 134, column: 13, scope: !225)
!234 = distinct !{!234, !228, !235, !236}
!235 = !DILocation(line: 138, column: 13, scope: !222)
!236 = !{!"llvm.loop.mustprogress"}
!237 = !DILocation(line: 139, column: 26, scope: !220)
!238 = !DILocation(line: 139, column: 13, scope: !220)
!239 = !DILocation(line: 140, column: 9, scope: !220)
!240 = !DILocation(line: 142, column: 1, scope: !192)
!241 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 149, type: !65, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!242 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !1, line: 149, type: !59)
!243 = !DILocation(line: 149, column: 29, scope: !241)
!244 = !DILocation(line: 152, column: 12, scope: !241)
!245 = !DILocation(line: 152, column: 5, scope: !241)
!246 = !DILocation(line: 153, column: 12, scope: !241)
!247 = !DILocation(line: 153, column: 5, scope: !241)
!248 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 156, type: !193, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!249 = !DILocalVariable(name: "data", scope: !248, file: !1, line: 158, type: !59)
!250 = !DILocation(line: 158, column: 12, scope: !248)
!251 = !DILocalVariable(name: "dataBuffer", scope: !248, file: !1, line: 159, type: !198)
!252 = !DILocation(line: 159, column: 10, scope: !248)
!253 = !DILocation(line: 160, column: 12, scope: !248)
!254 = !DILocation(line: 160, column: 10, scope: !248)
!255 = !DILocation(line: 161, column: 26, scope: !248)
!256 = !DILocation(line: 161, column: 12, scope: !248)
!257 = !DILocation(line: 161, column: 10, scope: !248)
!258 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 163, type: !72)
!259 = distinct !DILexicalBlock(scope: !248, file: !1, line: 162, column: 5)
!260 = !DILocation(line: 163, column: 13, scope: !259)
!261 = !DILocalVariable(name: "n", scope: !259, file: !1, line: 163, type: !72)
!262 = !DILocation(line: 163, column: 16, scope: !259)
!263 = !DILocalVariable(name: "intVariable", scope: !259, file: !1, line: 163, type: !72)
!264 = !DILocation(line: 163, column: 19, scope: !259)
!265 = !DILocation(line: 164, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !1, line: 164, column: 13)
!267 = !DILocation(line: 164, column: 13, scope: !266)
!268 = !DILocation(line: 164, column: 36, scope: !266)
!269 = !DILocation(line: 164, column: 13, scope: !259)
!270 = !DILocation(line: 167, column: 25, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 165, column: 9)
!272 = !DILocation(line: 168, column: 20, scope: !273)
!273 = distinct !DILexicalBlock(scope: !271, file: !1, line: 168, column: 13)
!274 = !DILocation(line: 168, column: 18, scope: !273)
!275 = !DILocation(line: 168, column: 25, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 168, column: 13)
!277 = !DILocation(line: 168, column: 29, scope: !276)
!278 = !DILocation(line: 168, column: 27, scope: !276)
!279 = !DILocation(line: 168, column: 13, scope: !273)
!280 = !DILocation(line: 171, column: 28, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 169, column: 13)
!282 = !DILocation(line: 172, column: 13, scope: !281)
!283 = !DILocation(line: 168, column: 33, scope: !276)
!284 = !DILocation(line: 168, column: 13, scope: !276)
!285 = distinct !{!285, !279, !286, !236}
!286 = !DILocation(line: 172, column: 13, scope: !273)
!287 = !DILocation(line: 173, column: 26, scope: !271)
!288 = !DILocation(line: 173, column: 13, scope: !271)
!289 = !DILocation(line: 174, column: 9, scope: !271)
!290 = !DILocation(line: 176, column: 1, scope: !248)
!291 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 179, type: !65, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!292 = !DILocalVariable(name: "data", arg: 1, scope: !291, file: !1, line: 179, type: !59)
!293 = !DILocation(line: 179, column: 29, scope: !291)
!294 = !DILocalVariable(name: "recvResult", scope: !295, file: !1, line: 186, type: !72)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 181, column: 5)
!296 = !DILocation(line: 186, column: 13, scope: !295)
!297 = !DILocalVariable(name: "service", scope: !295, file: !1, line: 187, type: !75)
!298 = !DILocation(line: 187, column: 28, scope: !295)
!299 = !DILocalVariable(name: "replace", scope: !295, file: !1, line: 188, type: !59)
!300 = !DILocation(line: 188, column: 15, scope: !295)
!301 = !DILocalVariable(name: "connectSocket", scope: !295, file: !1, line: 189, type: !72)
!302 = !DILocation(line: 189, column: 16, scope: !295)
!303 = !DILocalVariable(name: "dataLen", scope: !295, file: !1, line: 190, type: !102)
!304 = !DILocation(line: 190, column: 16, scope: !295)
!305 = !DILocation(line: 190, column: 33, scope: !295)
!306 = !DILocation(line: 190, column: 26, scope: !295)
!307 = !DILocation(line: 191, column: 9, scope: !295)
!308 = !DILocation(line: 201, column: 29, scope: !309)
!309 = distinct !DILexicalBlock(scope: !295, file: !1, line: 192, column: 9)
!310 = !DILocation(line: 201, column: 27, scope: !309)
!311 = !DILocation(line: 202, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 202, column: 17)
!313 = !DILocation(line: 202, column: 31, scope: !312)
!314 = !DILocation(line: 202, column: 17, scope: !309)
!315 = !DILocation(line: 204, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 203, column: 13)
!317 = !DILocation(line: 206, column: 13, scope: !309)
!318 = !DILocation(line: 207, column: 21, scope: !309)
!319 = !DILocation(line: 207, column: 32, scope: !309)
!320 = !DILocation(line: 208, column: 39, scope: !309)
!321 = !DILocation(line: 208, column: 21, scope: !309)
!322 = !DILocation(line: 208, column: 30, scope: !309)
!323 = !DILocation(line: 208, column: 37, scope: !309)
!324 = !DILocation(line: 209, column: 32, scope: !309)
!325 = !DILocation(line: 209, column: 21, scope: !309)
!326 = !DILocation(line: 209, column: 30, scope: !309)
!327 = !DILocation(line: 210, column: 25, scope: !328)
!328 = distinct !DILexicalBlock(scope: !309, file: !1, line: 210, column: 17)
!329 = !DILocation(line: 210, column: 40, scope: !328)
!330 = !DILocation(line: 210, column: 17, scope: !328)
!331 = !DILocation(line: 210, column: 85, scope: !328)
!332 = !DILocation(line: 210, column: 17, scope: !309)
!333 = !DILocation(line: 212, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 211, column: 13)
!335 = !DILocation(line: 217, column: 31, scope: !309)
!336 = !DILocation(line: 217, column: 55, scope: !309)
!337 = !DILocation(line: 217, column: 62, scope: !309)
!338 = !DILocation(line: 217, column: 60, scope: !309)
!339 = !DILocation(line: 217, column: 94, scope: !309)
!340 = !DILocation(line: 217, column: 92, scope: !309)
!341 = !DILocation(line: 217, column: 102, scope: !309)
!342 = !DILocation(line: 217, column: 85, scope: !309)
!343 = !DILocation(line: 217, column: 26, scope: !309)
!344 = !DILocation(line: 217, column: 24, scope: !309)
!345 = !DILocation(line: 218, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !309, file: !1, line: 218, column: 17)
!347 = !DILocation(line: 218, column: 28, scope: !346)
!348 = !DILocation(line: 218, column: 44, scope: !346)
!349 = !DILocation(line: 218, column: 47, scope: !346)
!350 = !DILocation(line: 218, column: 58, scope: !346)
!351 = !DILocation(line: 218, column: 17, scope: !309)
!352 = !DILocation(line: 220, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 219, column: 13)
!354 = !DILocation(line: 223, column: 13, scope: !309)
!355 = !DILocation(line: 223, column: 18, scope: !309)
!356 = !DILocation(line: 223, column: 28, scope: !309)
!357 = !DILocation(line: 223, column: 39, scope: !309)
!358 = !DILocation(line: 223, column: 26, scope: !309)
!359 = !DILocation(line: 223, column: 55, scope: !309)
!360 = !DILocation(line: 225, column: 30, scope: !309)
!361 = !DILocation(line: 225, column: 23, scope: !309)
!362 = !DILocation(line: 225, column: 21, scope: !309)
!363 = !DILocation(line: 226, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !309, file: !1, line: 226, column: 17)
!365 = !DILocation(line: 226, column: 17, scope: !309)
!366 = !DILocation(line: 228, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 227, column: 13)
!368 = !DILocation(line: 228, column: 26, scope: !367)
!369 = !DILocation(line: 229, column: 13, scope: !367)
!370 = !DILocation(line: 230, column: 30, scope: !309)
!371 = !DILocation(line: 230, column: 23, scope: !309)
!372 = !DILocation(line: 230, column: 21, scope: !309)
!373 = !DILocation(line: 231, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !309, file: !1, line: 231, column: 17)
!375 = !DILocation(line: 231, column: 17, scope: !309)
!376 = !DILocation(line: 233, column: 18, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 232, column: 13)
!378 = !DILocation(line: 233, column: 26, scope: !377)
!379 = !DILocation(line: 234, column: 13, scope: !377)
!380 = !DILocation(line: 235, column: 9, scope: !309)
!381 = !DILocation(line: 237, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !295, file: !1, line: 237, column: 13)
!383 = !DILocation(line: 237, column: 27, scope: !382)
!384 = !DILocation(line: 237, column: 13, scope: !295)
!385 = !DILocation(line: 239, column: 26, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 238, column: 9)
!387 = !DILocation(line: 239, column: 13, scope: !386)
!388 = !DILocation(line: 240, column: 9, scope: !386)
!389 = !DILocation(line: 248, column: 12, scope: !291)
!390 = !DILocation(line: 248, column: 5, scope: !291)
!391 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 251, type: !193, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!392 = !DILocalVariable(name: "data", scope: !391, file: !1, line: 253, type: !59)
!393 = !DILocation(line: 253, column: 12, scope: !391)
!394 = !DILocalVariable(name: "dataBuffer", scope: !391, file: !1, line: 254, type: !198)
!395 = !DILocation(line: 254, column: 10, scope: !391)
!396 = !DILocation(line: 255, column: 12, scope: !391)
!397 = !DILocation(line: 255, column: 10, scope: !391)
!398 = !DILocation(line: 256, column: 26, scope: !391)
!399 = !DILocation(line: 256, column: 12, scope: !391)
!400 = !DILocation(line: 256, column: 10, scope: !391)
!401 = !DILocalVariable(name: "i", scope: !402, file: !1, line: 258, type: !72)
!402 = distinct !DILexicalBlock(scope: !391, file: !1, line: 257, column: 5)
!403 = !DILocation(line: 258, column: 13, scope: !402)
!404 = !DILocalVariable(name: "n", scope: !402, file: !1, line: 258, type: !72)
!405 = !DILocation(line: 258, column: 16, scope: !402)
!406 = !DILocalVariable(name: "intVariable", scope: !402, file: !1, line: 258, type: !72)
!407 = !DILocation(line: 258, column: 19, scope: !402)
!408 = !DILocation(line: 259, column: 20, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !1, line: 259, column: 13)
!410 = !DILocation(line: 259, column: 13, scope: !409)
!411 = !DILocation(line: 259, column: 36, scope: !409)
!412 = !DILocation(line: 259, column: 13, scope: !402)
!413 = !DILocation(line: 262, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 262, column: 17)
!415 = distinct !DILexicalBlock(scope: !409, file: !1, line: 260, column: 9)
!416 = !DILocation(line: 262, column: 19, scope: !414)
!417 = !DILocation(line: 262, column: 17, scope: !415)
!418 = !DILocation(line: 264, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 263, column: 13)
!420 = !DILocation(line: 265, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !1, line: 265, column: 17)
!422 = !DILocation(line: 265, column: 22, scope: !421)
!423 = !DILocation(line: 265, column: 29, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !1, line: 265, column: 17)
!425 = !DILocation(line: 265, column: 33, scope: !424)
!426 = !DILocation(line: 265, column: 31, scope: !424)
!427 = !DILocation(line: 265, column: 17, scope: !421)
!428 = !DILocation(line: 268, column: 32, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !1, line: 266, column: 17)
!430 = !DILocation(line: 269, column: 17, scope: !429)
!431 = !DILocation(line: 265, column: 37, scope: !424)
!432 = !DILocation(line: 265, column: 17, scope: !424)
!433 = distinct !{!433, !427, !434, !236}
!434 = !DILocation(line: 269, column: 17, scope: !421)
!435 = !DILocation(line: 270, column: 30, scope: !419)
!436 = !DILocation(line: 270, column: 17, scope: !419)
!437 = !DILocation(line: 271, column: 13, scope: !419)
!438 = !DILocation(line: 272, column: 9, scope: !415)
!439 = !DILocation(line: 274, column: 1, scope: !391)
!440 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good", scope: !1, file: !1, line: 276, type: !193, scopeLine: 277, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!441 = !DILocation(line: 278, column: 5, scope: !440)
!442 = !DILocation(line: 279, column: 5, scope: !440)
!443 = !DILocation(line: 280, column: 1, scope: !440)
