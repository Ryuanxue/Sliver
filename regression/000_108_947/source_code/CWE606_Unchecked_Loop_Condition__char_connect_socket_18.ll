; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_18.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad() #0 !dbg !64 {
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
  br label %source, !dbg !77

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !78), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !80, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !84, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 -1, i32* %connectSocket, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !111, metadata !DIExpression()), !dbg !115
  %1 = load i8*, i8** %data, align 8, !dbg !116
  %call = call i64 @strlen(i8* %1) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  br label %do.body, !dbg !118

do.body:                                          ; preds = %source
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !119
  store i32 %call1, i32* %connectSocket, align 4, !dbg !121
  %2 = load i32, i32* %connectSocket, align 4, !dbg !122
  %cmp = icmp eq i32 %2, -1, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !126

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !128
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !129
  store i16 2, i16* %sin_family, align 4, !dbg !130
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !131
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !132
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !133
  store i32 %call2, i32* %s_addr, align 4, !dbg !134
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !135
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !136
  store i16 %call3, i16* %sin_port, align 2, !dbg !137
  %4 = load i32, i32* %connectSocket, align 4, !dbg !138
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !140
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !141
  %cmp5 = icmp eq i32 %call4, -1, !dbg !142
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !143

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !144

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !146
  %7 = load i8*, i8** %data, align 8, !dbg !147
  %8 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !149
  %9 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %9, !dbg !151
  %sub8 = sub i64 %sub, 1, !dbg !152
  %mul = mul i64 1, %sub8, !dbg !153
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !154
  %conv = trunc i64 %call9 to i32, !dbg !154
  store i32 %conv, i32* %recvResult, align 4, !dbg !155
  %10 = load i32, i32* %recvResult, align 4, !dbg !156
  %cmp10 = icmp eq i32 %10, -1, !dbg !158
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !159

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !160
  %cmp12 = icmp eq i32 %11, 0, !dbg !161
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !162

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !163

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !165
  %13 = load i64, i64* %dataLen, align 8, !dbg !166
  %14 = load i32, i32* %recvResult, align 4, !dbg !167
  %conv16 = sext i32 %14 to i64, !dbg !167
  %div = udiv i64 %conv16, 1, !dbg !168
  %add = add i64 %13, %div, !dbg !169
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !165
  store i8 0, i8* %arrayidx, align 1, !dbg !170
  %15 = load i8*, i8** %data, align 8, !dbg !171
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !172
  store i8* %call17, i8** %replace, align 8, !dbg !173
  %16 = load i8*, i8** %replace, align 8, !dbg !174
  %tobool = icmp ne i8* %16, null, !dbg !174
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !176

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !177
  store i8 0, i8* %17, align 1, !dbg !179
  br label %if.end19, !dbg !180

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !181
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !182
  store i8* %call20, i8** %replace, align 8, !dbg !183
  %19 = load i8*, i8** %replace, align 8, !dbg !184
  %tobool21 = icmp ne i8* %19, null, !dbg !184
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !186

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !187
  store i8 0, i8* %20, align 1, !dbg !189
  br label %if.end23, !dbg !190

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !191

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !192
  %cmp24 = icmp ne i32 %21, -1, !dbg !194
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !195

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !196
  %call27 = call i32 @close(i32 %22), !dbg !198
  br label %if.end28, !dbg !199

if.end28:                                         ; preds = %if.then26, %do.end
  br label %sink, !dbg !200

sink:                                             ; preds = %if.end28
  call void @llvm.dbg.label(metadata !201), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %i, metadata !203, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %n, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !208, metadata !DIExpression()), !dbg !209
  %23 = load i8*, i8** %data, align 8, !dbg !210
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !212
  %cmp30 = icmp eq i32 %call29, 1, !dbg !213
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !214

if.then32:                                        ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !215
  store i32 0, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !219

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load i32, i32* %i, align 4, !dbg !220
  %25 = load i32, i32* %n, align 4, !dbg !222
  %cmp33 = icmp slt i32 %24, %25, !dbg !223
  br i1 %cmp33, label %for.body, label %for.end, !dbg !224

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !225
  %inc = add nsw i32 %26, 1, !dbg !225
  store i32 %inc, i32* %intVariable, align 4, !dbg !225
  br label %for.inc, !dbg !227

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !228
  %inc35 = add nsw i32 %27, 1, !dbg !228
  store i32 %inc35, i32* %i, align 4, !dbg !228
  br label %for.cond, !dbg !229, !llvm.loop !230

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !233
  call void @printIntLine(i32 %28), !dbg !234
  br label %if.end36, !dbg !235

if.end36:                                         ; preds = %for.end, %sink
  ret void, !dbg !236
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
define dso_local void @goodB2G() #0 !dbg !237 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !241
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !241
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !242
  store i8* %arraydecay, i8** %data, align 8, !dbg !243
  br label %source, !dbg !244

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !245), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i8** %replace, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %connectSocket, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 -1, i32* %connectSocket, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !256, metadata !DIExpression()), !dbg !257
  %1 = load i8*, i8** %data, align 8, !dbg !258
  %call = call i64 @strlen(i8* %1) #7, !dbg !259
  store i64 %call, i64* %dataLen, align 8, !dbg !257
  br label %do.body, !dbg !260

do.body:                                          ; preds = %source
  %call1 = call i32 @socket(i32 2, i32 1, i32 6) #8, !dbg !261
  store i32 %call1, i32* %connectSocket, align 4, !dbg !263
  %2 = load i32, i32* %connectSocket, align 4, !dbg !264
  %cmp = icmp eq i32 %2, -1, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !268

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !270
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !271
  store i16 2, i16* %sin_family, align 4, !dbg !272
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !273
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !274
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !275
  store i32 %call2, i32* %s_addr, align 4, !dbg !276
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !277
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !278
  store i16 %call3, i16* %sin_port, align 2, !dbg !279
  %4 = load i32, i32* %connectSocket, align 4, !dbg !280
  %5 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !282
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !283
  %cmp5 = icmp eq i32 %call4, -1, !dbg !284
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !285

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !286

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %connectSocket, align 4, !dbg !288
  %7 = load i8*, i8** %data, align 8, !dbg !289
  %8 = load i64, i64* %dataLen, align 8, !dbg !290
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !291
  %9 = load i64, i64* %dataLen, align 8, !dbg !292
  %sub = sub i64 100, %9, !dbg !293
  %sub8 = sub i64 %sub, 1, !dbg !294
  %mul = mul i64 1, %sub8, !dbg !295
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !296
  %conv = trunc i64 %call9 to i32, !dbg !296
  store i32 %conv, i32* %recvResult, align 4, !dbg !297
  %10 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp10 = icmp eq i32 %10, -1, !dbg !300
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !301

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %recvResult, align 4, !dbg !302
  %cmp12 = icmp eq i32 %11, 0, !dbg !303
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !304

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !305

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %data, align 8, !dbg !307
  %13 = load i64, i64* %dataLen, align 8, !dbg !308
  %14 = load i32, i32* %recvResult, align 4, !dbg !309
  %conv16 = sext i32 %14 to i64, !dbg !309
  %div = udiv i64 %conv16, 1, !dbg !310
  %add = add i64 %13, %div, !dbg !311
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !307
  store i8 0, i8* %arrayidx, align 1, !dbg !312
  %15 = load i8*, i8** %data, align 8, !dbg !313
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !314
  store i8* %call17, i8** %replace, align 8, !dbg !315
  %16 = load i8*, i8** %replace, align 8, !dbg !316
  %tobool = icmp ne i8* %16, null, !dbg !316
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !318

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %replace, align 8, !dbg !319
  store i8 0, i8* %17, align 1, !dbg !321
  br label %if.end19, !dbg !322

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %data, align 8, !dbg !323
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !324
  store i8* %call20, i8** %replace, align 8, !dbg !325
  %19 = load i8*, i8** %replace, align 8, !dbg !326
  %tobool21 = icmp ne i8* %19, null, !dbg !326
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !328

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %replace, align 8, !dbg !329
  store i8 0, i8* %20, align 1, !dbg !331
  br label %if.end23, !dbg !332

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !333

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %connectSocket, align 4, !dbg !334
  %cmp24 = icmp ne i32 %21, -1, !dbg !336
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !337

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %connectSocket, align 4, !dbg !338
  %call27 = call i32 @close(i32 %22), !dbg !340
  br label %if.end28, !dbg !341

if.end28:                                         ; preds = %if.then26, %do.end
  br label %sink, !dbg !342

sink:                                             ; preds = %if.end28
  call void @llvm.dbg.label(metadata !343), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %i, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i32* %n, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !350, metadata !DIExpression()), !dbg !351
  %23 = load i8*, i8** %data, align 8, !dbg !352
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !354
  %cmp30 = icmp eq i32 %call29, 1, !dbg !355
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !356

if.then32:                                        ; preds = %sink
  %24 = load i32, i32* %n, align 4, !dbg !357
  %cmp33 = icmp slt i32 %24, 10000, !dbg !360
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !361

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %intVariable, align 4, !dbg !362
  store i32 0, i32* %i, align 4, !dbg !364
  br label %for.cond, !dbg !366

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %i, align 4, !dbg !367
  %26 = load i32, i32* %n, align 4, !dbg !369
  %cmp36 = icmp slt i32 %25, %26, !dbg !370
  br i1 %cmp36, label %for.body, label %for.end, !dbg !371

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !372
  %inc = add nsw i32 %27, 1, !dbg !372
  store i32 %inc, i32* %intVariable, align 4, !dbg !372
  br label %for.inc, !dbg !374

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !375
  %inc38 = add nsw i32 %28, 1, !dbg !375
  store i32 %inc38, i32* %i, align 4, !dbg !375
  br label %for.cond, !dbg !376, !llvm.loop !377

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %intVariable, align 4, !dbg !379
  call void @printIntLine(i32 %29), !dbg !380
  br label %if.end39, !dbg !381

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !382

if.end40:                                         ; preds = %if.end39, %sink
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !384 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !388
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !388
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !389
  store i8* %arraydecay, i8** %data, align 8, !dbg !390
  br label %source, !dbg !391

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !392), !dbg !393
  %1 = load i8*, i8** %data, align 8, !dbg !394
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !395
  br label %sink, !dbg !396

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !397), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %i, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %n, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !404, metadata !DIExpression()), !dbg !405
  %2 = load i8*, i8** %data, align 8, !dbg !406
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !408
  %cmp = icmp eq i32 %call1, 1, !dbg !409
  br i1 %cmp, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !411
  store i32 0, i32* %i, align 4, !dbg !413
  br label %for.cond, !dbg !415

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !416
  %4 = load i32, i32* %n, align 4, !dbg !418
  %cmp2 = icmp slt i32 %3, %4, !dbg !419
  br i1 %cmp2, label %for.body, label %for.end, !dbg !420

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !421
  %inc = add nsw i32 %5, 1, !dbg !421
  store i32 %inc, i32* %intVariable, align 4, !dbg !421
  br label %for.inc, !dbg !423

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !424
  %inc3 = add nsw i32 %6, 1, !dbg !424
  store i32 %inc3, i32* %i, align 4, !dbg !424
  br label %for.cond, !dbg !425, !llvm.loop !426

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !428
  call void @printIntLine(i32 %7), !dbg !429
  br label %if.end, !dbg !430

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !431
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_18_good() #0 !dbg !432 {
entry:
  call void @goodB2G(), !dbg !433
  call void @goodG2B(), !dbg !434
  ret void, !dbg !435
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_947/source_code")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad", scope: !1, file: !1, line: 50, type: !65, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
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
!77 = !DILocation(line: 55, column: 5, scope: !64)
!78 = !DILabel(scope: !64, name: "source", file: !1, line: 56)
!79 = !DILocation(line: 56, column: 1, scope: !64)
!80 = !DILocalVariable(name: "recvResult", scope: !81, file: !1, line: 62, type: !82)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 5)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DILocation(line: 62, column: 13, scope: !81)
!84 = !DILocalVariable(name: "service", scope: !81, file: !1, line: 63, type: !85)
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
!106 = !DILocation(line: 63, column: 28, scope: !81)
!107 = !DILocalVariable(name: "replace", scope: !81, file: !1, line: 64, type: !59)
!108 = !DILocation(line: 64, column: 15, scope: !81)
!109 = !DILocalVariable(name: "connectSocket", scope: !81, file: !1, line: 65, type: !82)
!110 = !DILocation(line: 65, column: 16, scope: !81)
!111 = !DILocalVariable(name: "dataLen", scope: !81, file: !1, line: 66, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DILocation(line: 66, column: 16, scope: !81)
!116 = !DILocation(line: 66, column: 33, scope: !81)
!117 = !DILocation(line: 66, column: 26, scope: !81)
!118 = !DILocation(line: 67, column: 9, scope: !81)
!119 = !DILocation(line: 77, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !81, file: !1, line: 68, column: 9)
!121 = !DILocation(line: 77, column: 27, scope: !120)
!122 = !DILocation(line: 78, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 78, column: 17)
!124 = !DILocation(line: 78, column: 31, scope: !123)
!125 = !DILocation(line: 78, column: 17, scope: !120)
!126 = !DILocation(line: 80, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 79, column: 13)
!128 = !DILocation(line: 82, column: 13, scope: !120)
!129 = !DILocation(line: 83, column: 21, scope: !120)
!130 = !DILocation(line: 83, column: 32, scope: !120)
!131 = !DILocation(line: 84, column: 39, scope: !120)
!132 = !DILocation(line: 84, column: 21, scope: !120)
!133 = !DILocation(line: 84, column: 30, scope: !120)
!134 = !DILocation(line: 84, column: 37, scope: !120)
!135 = !DILocation(line: 85, column: 32, scope: !120)
!136 = !DILocation(line: 85, column: 21, scope: !120)
!137 = !DILocation(line: 85, column: 30, scope: !120)
!138 = !DILocation(line: 86, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !120, file: !1, line: 86, column: 17)
!140 = !DILocation(line: 86, column: 40, scope: !139)
!141 = !DILocation(line: 86, column: 17, scope: !139)
!142 = !DILocation(line: 86, column: 85, scope: !139)
!143 = !DILocation(line: 86, column: 17, scope: !120)
!144 = !DILocation(line: 88, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 87, column: 13)
!146 = !DILocation(line: 93, column: 31, scope: !120)
!147 = !DILocation(line: 93, column: 55, scope: !120)
!148 = !DILocation(line: 93, column: 62, scope: !120)
!149 = !DILocation(line: 93, column: 60, scope: !120)
!150 = !DILocation(line: 93, column: 94, scope: !120)
!151 = !DILocation(line: 93, column: 92, scope: !120)
!152 = !DILocation(line: 93, column: 102, scope: !120)
!153 = !DILocation(line: 93, column: 85, scope: !120)
!154 = !DILocation(line: 93, column: 26, scope: !120)
!155 = !DILocation(line: 93, column: 24, scope: !120)
!156 = !DILocation(line: 94, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !120, file: !1, line: 94, column: 17)
!158 = !DILocation(line: 94, column: 28, scope: !157)
!159 = !DILocation(line: 94, column: 44, scope: !157)
!160 = !DILocation(line: 94, column: 47, scope: !157)
!161 = !DILocation(line: 94, column: 58, scope: !157)
!162 = !DILocation(line: 94, column: 17, scope: !120)
!163 = !DILocation(line: 96, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !1, line: 95, column: 13)
!165 = !DILocation(line: 99, column: 13, scope: !120)
!166 = !DILocation(line: 99, column: 18, scope: !120)
!167 = !DILocation(line: 99, column: 28, scope: !120)
!168 = !DILocation(line: 99, column: 39, scope: !120)
!169 = !DILocation(line: 99, column: 26, scope: !120)
!170 = !DILocation(line: 99, column: 55, scope: !120)
!171 = !DILocation(line: 101, column: 30, scope: !120)
!172 = !DILocation(line: 101, column: 23, scope: !120)
!173 = !DILocation(line: 101, column: 21, scope: !120)
!174 = !DILocation(line: 102, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !120, file: !1, line: 102, column: 17)
!176 = !DILocation(line: 102, column: 17, scope: !120)
!177 = !DILocation(line: 104, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 103, column: 13)
!179 = !DILocation(line: 104, column: 26, scope: !178)
!180 = !DILocation(line: 105, column: 13, scope: !178)
!181 = !DILocation(line: 106, column: 30, scope: !120)
!182 = !DILocation(line: 106, column: 23, scope: !120)
!183 = !DILocation(line: 106, column: 21, scope: !120)
!184 = !DILocation(line: 107, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !120, file: !1, line: 107, column: 17)
!186 = !DILocation(line: 107, column: 17, scope: !120)
!187 = !DILocation(line: 109, column: 18, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 108, column: 13)
!189 = !DILocation(line: 109, column: 26, scope: !188)
!190 = !DILocation(line: 110, column: 13, scope: !188)
!191 = !DILocation(line: 111, column: 9, scope: !120)
!192 = !DILocation(line: 113, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !81, file: !1, line: 113, column: 13)
!194 = !DILocation(line: 113, column: 27, scope: !193)
!195 = !DILocation(line: 113, column: 13, scope: !81)
!196 = !DILocation(line: 115, column: 26, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 114, column: 9)
!198 = !DILocation(line: 115, column: 13, scope: !197)
!199 = !DILocation(line: 116, column: 9, scope: !197)
!200 = !DILocation(line: 124, column: 5, scope: !64)
!201 = !DILabel(scope: !64, name: "sink", file: !1, line: 125)
!202 = !DILocation(line: 125, column: 1, scope: !64)
!203 = !DILocalVariable(name: "i", scope: !204, file: !1, line: 127, type: !82)
!204 = distinct !DILexicalBlock(scope: !64, file: !1, line: 126, column: 5)
!205 = !DILocation(line: 127, column: 13, scope: !204)
!206 = !DILocalVariable(name: "n", scope: !204, file: !1, line: 127, type: !82)
!207 = !DILocation(line: 127, column: 16, scope: !204)
!208 = !DILocalVariable(name: "intVariable", scope: !204, file: !1, line: 127, type: !82)
!209 = !DILocation(line: 127, column: 19, scope: !204)
!210 = !DILocation(line: 128, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !1, line: 128, column: 13)
!212 = !DILocation(line: 128, column: 13, scope: !211)
!213 = !DILocation(line: 128, column: 36, scope: !211)
!214 = !DILocation(line: 128, column: 13, scope: !204)
!215 = !DILocation(line: 131, column: 25, scope: !216)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 129, column: 9)
!217 = !DILocation(line: 132, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !216, file: !1, line: 132, column: 13)
!219 = !DILocation(line: 132, column: 18, scope: !218)
!220 = !DILocation(line: 132, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 132, column: 13)
!222 = !DILocation(line: 132, column: 29, scope: !221)
!223 = !DILocation(line: 132, column: 27, scope: !221)
!224 = !DILocation(line: 132, column: 13, scope: !218)
!225 = !DILocation(line: 135, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 133, column: 13)
!227 = !DILocation(line: 136, column: 13, scope: !226)
!228 = !DILocation(line: 132, column: 33, scope: !221)
!229 = !DILocation(line: 132, column: 13, scope: !221)
!230 = distinct !{!230, !224, !231, !232}
!231 = !DILocation(line: 136, column: 13, scope: !218)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 137, column: 26, scope: !216)
!234 = !DILocation(line: 137, column: 13, scope: !216)
!235 = !DILocation(line: 138, column: 9, scope: !216)
!236 = !DILocation(line: 140, column: 1, scope: !64)
!237 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 147, type: !65, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!238 = !DILocalVariable(name: "data", scope: !237, file: !1, line: 149, type: !59)
!239 = !DILocation(line: 149, column: 12, scope: !237)
!240 = !DILocalVariable(name: "dataBuffer", scope: !237, file: !1, line: 150, type: !71)
!241 = !DILocation(line: 150, column: 10, scope: !237)
!242 = !DILocation(line: 151, column: 12, scope: !237)
!243 = !DILocation(line: 151, column: 10, scope: !237)
!244 = !DILocation(line: 152, column: 5, scope: !237)
!245 = !DILabel(scope: !237, name: "source", file: !1, line: 153)
!246 = !DILocation(line: 153, column: 1, scope: !237)
!247 = !DILocalVariable(name: "recvResult", scope: !248, file: !1, line: 159, type: !82)
!248 = distinct !DILexicalBlock(scope: !237, file: !1, line: 154, column: 5)
!249 = !DILocation(line: 159, column: 13, scope: !248)
!250 = !DILocalVariable(name: "service", scope: !248, file: !1, line: 160, type: !85)
!251 = !DILocation(line: 160, column: 28, scope: !248)
!252 = !DILocalVariable(name: "replace", scope: !248, file: !1, line: 161, type: !59)
!253 = !DILocation(line: 161, column: 15, scope: !248)
!254 = !DILocalVariable(name: "connectSocket", scope: !248, file: !1, line: 162, type: !82)
!255 = !DILocation(line: 162, column: 16, scope: !248)
!256 = !DILocalVariable(name: "dataLen", scope: !248, file: !1, line: 163, type: !112)
!257 = !DILocation(line: 163, column: 16, scope: !248)
!258 = !DILocation(line: 163, column: 33, scope: !248)
!259 = !DILocation(line: 163, column: 26, scope: !248)
!260 = !DILocation(line: 164, column: 9, scope: !248)
!261 = !DILocation(line: 174, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !248, file: !1, line: 165, column: 9)
!263 = !DILocation(line: 174, column: 27, scope: !262)
!264 = !DILocation(line: 175, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 175, column: 17)
!266 = !DILocation(line: 175, column: 31, scope: !265)
!267 = !DILocation(line: 175, column: 17, scope: !262)
!268 = !DILocation(line: 177, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 176, column: 13)
!270 = !DILocation(line: 179, column: 13, scope: !262)
!271 = !DILocation(line: 180, column: 21, scope: !262)
!272 = !DILocation(line: 180, column: 32, scope: !262)
!273 = !DILocation(line: 181, column: 39, scope: !262)
!274 = !DILocation(line: 181, column: 21, scope: !262)
!275 = !DILocation(line: 181, column: 30, scope: !262)
!276 = !DILocation(line: 181, column: 37, scope: !262)
!277 = !DILocation(line: 182, column: 32, scope: !262)
!278 = !DILocation(line: 182, column: 21, scope: !262)
!279 = !DILocation(line: 182, column: 30, scope: !262)
!280 = !DILocation(line: 183, column: 25, scope: !281)
!281 = distinct !DILexicalBlock(scope: !262, file: !1, line: 183, column: 17)
!282 = !DILocation(line: 183, column: 40, scope: !281)
!283 = !DILocation(line: 183, column: 17, scope: !281)
!284 = !DILocation(line: 183, column: 85, scope: !281)
!285 = !DILocation(line: 183, column: 17, scope: !262)
!286 = !DILocation(line: 185, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !1, line: 184, column: 13)
!288 = !DILocation(line: 190, column: 31, scope: !262)
!289 = !DILocation(line: 190, column: 55, scope: !262)
!290 = !DILocation(line: 190, column: 62, scope: !262)
!291 = !DILocation(line: 190, column: 60, scope: !262)
!292 = !DILocation(line: 190, column: 94, scope: !262)
!293 = !DILocation(line: 190, column: 92, scope: !262)
!294 = !DILocation(line: 190, column: 102, scope: !262)
!295 = !DILocation(line: 190, column: 85, scope: !262)
!296 = !DILocation(line: 190, column: 26, scope: !262)
!297 = !DILocation(line: 190, column: 24, scope: !262)
!298 = !DILocation(line: 191, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !262, file: !1, line: 191, column: 17)
!300 = !DILocation(line: 191, column: 28, scope: !299)
!301 = !DILocation(line: 191, column: 44, scope: !299)
!302 = !DILocation(line: 191, column: 47, scope: !299)
!303 = !DILocation(line: 191, column: 58, scope: !299)
!304 = !DILocation(line: 191, column: 17, scope: !262)
!305 = !DILocation(line: 193, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !1, line: 192, column: 13)
!307 = !DILocation(line: 196, column: 13, scope: !262)
!308 = !DILocation(line: 196, column: 18, scope: !262)
!309 = !DILocation(line: 196, column: 28, scope: !262)
!310 = !DILocation(line: 196, column: 39, scope: !262)
!311 = !DILocation(line: 196, column: 26, scope: !262)
!312 = !DILocation(line: 196, column: 55, scope: !262)
!313 = !DILocation(line: 198, column: 30, scope: !262)
!314 = !DILocation(line: 198, column: 23, scope: !262)
!315 = !DILocation(line: 198, column: 21, scope: !262)
!316 = !DILocation(line: 199, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !262, file: !1, line: 199, column: 17)
!318 = !DILocation(line: 199, column: 17, scope: !262)
!319 = !DILocation(line: 201, column: 18, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !1, line: 200, column: 13)
!321 = !DILocation(line: 201, column: 26, scope: !320)
!322 = !DILocation(line: 202, column: 13, scope: !320)
!323 = !DILocation(line: 203, column: 30, scope: !262)
!324 = !DILocation(line: 203, column: 23, scope: !262)
!325 = !DILocation(line: 203, column: 21, scope: !262)
!326 = !DILocation(line: 204, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !262, file: !1, line: 204, column: 17)
!328 = !DILocation(line: 204, column: 17, scope: !262)
!329 = !DILocation(line: 206, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 205, column: 13)
!331 = !DILocation(line: 206, column: 26, scope: !330)
!332 = !DILocation(line: 207, column: 13, scope: !330)
!333 = !DILocation(line: 208, column: 9, scope: !262)
!334 = !DILocation(line: 210, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !248, file: !1, line: 210, column: 13)
!336 = !DILocation(line: 210, column: 27, scope: !335)
!337 = !DILocation(line: 210, column: 13, scope: !248)
!338 = !DILocation(line: 212, column: 26, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 211, column: 9)
!340 = !DILocation(line: 212, column: 13, scope: !339)
!341 = !DILocation(line: 213, column: 9, scope: !339)
!342 = !DILocation(line: 221, column: 5, scope: !237)
!343 = !DILabel(scope: !237, name: "sink", file: !1, line: 222)
!344 = !DILocation(line: 222, column: 1, scope: !237)
!345 = !DILocalVariable(name: "i", scope: !346, file: !1, line: 224, type: !82)
!346 = distinct !DILexicalBlock(scope: !237, file: !1, line: 223, column: 5)
!347 = !DILocation(line: 224, column: 13, scope: !346)
!348 = !DILocalVariable(name: "n", scope: !346, file: !1, line: 224, type: !82)
!349 = !DILocation(line: 224, column: 16, scope: !346)
!350 = !DILocalVariable(name: "intVariable", scope: !346, file: !1, line: 224, type: !82)
!351 = !DILocation(line: 224, column: 19, scope: !346)
!352 = !DILocation(line: 225, column: 20, scope: !353)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 225, column: 13)
!354 = !DILocation(line: 225, column: 13, scope: !353)
!355 = !DILocation(line: 225, column: 36, scope: !353)
!356 = !DILocation(line: 225, column: 13, scope: !346)
!357 = !DILocation(line: 228, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 228, column: 17)
!359 = distinct !DILexicalBlock(scope: !353, file: !1, line: 226, column: 9)
!360 = !DILocation(line: 228, column: 19, scope: !358)
!361 = !DILocation(line: 228, column: 17, scope: !359)
!362 = !DILocation(line: 230, column: 29, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !1, line: 229, column: 13)
!364 = !DILocation(line: 231, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !363, file: !1, line: 231, column: 17)
!366 = !DILocation(line: 231, column: 22, scope: !365)
!367 = !DILocation(line: 231, column: 29, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !1, line: 231, column: 17)
!369 = !DILocation(line: 231, column: 33, scope: !368)
!370 = !DILocation(line: 231, column: 31, scope: !368)
!371 = !DILocation(line: 231, column: 17, scope: !365)
!372 = !DILocation(line: 234, column: 32, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !1, line: 232, column: 17)
!374 = !DILocation(line: 235, column: 17, scope: !373)
!375 = !DILocation(line: 231, column: 37, scope: !368)
!376 = !DILocation(line: 231, column: 17, scope: !368)
!377 = distinct !{!377, !371, !378, !232}
!378 = !DILocation(line: 235, column: 17, scope: !365)
!379 = !DILocation(line: 236, column: 30, scope: !363)
!380 = !DILocation(line: 236, column: 17, scope: !363)
!381 = !DILocation(line: 237, column: 13, scope: !363)
!382 = !DILocation(line: 238, column: 9, scope: !359)
!383 = !DILocation(line: 240, column: 1, scope: !237)
!384 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 243, type: !65, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!385 = !DILocalVariable(name: "data", scope: !384, file: !1, line: 245, type: !59)
!386 = !DILocation(line: 245, column: 12, scope: !384)
!387 = !DILocalVariable(name: "dataBuffer", scope: !384, file: !1, line: 246, type: !71)
!388 = !DILocation(line: 246, column: 10, scope: !384)
!389 = !DILocation(line: 247, column: 12, scope: !384)
!390 = !DILocation(line: 247, column: 10, scope: !384)
!391 = !DILocation(line: 248, column: 5, scope: !384)
!392 = !DILabel(scope: !384, name: "source", file: !1, line: 249)
!393 = !DILocation(line: 249, column: 1, scope: !384)
!394 = !DILocation(line: 251, column: 12, scope: !384)
!395 = !DILocation(line: 251, column: 5, scope: !384)
!396 = !DILocation(line: 252, column: 5, scope: !384)
!397 = !DILabel(scope: !384, name: "sink", file: !1, line: 253)
!398 = !DILocation(line: 253, column: 1, scope: !384)
!399 = !DILocalVariable(name: "i", scope: !400, file: !1, line: 255, type: !82)
!400 = distinct !DILexicalBlock(scope: !384, file: !1, line: 254, column: 5)
!401 = !DILocation(line: 255, column: 13, scope: !400)
!402 = !DILocalVariable(name: "n", scope: !400, file: !1, line: 255, type: !82)
!403 = !DILocation(line: 255, column: 16, scope: !400)
!404 = !DILocalVariable(name: "intVariable", scope: !400, file: !1, line: 255, type: !82)
!405 = !DILocation(line: 255, column: 19, scope: !400)
!406 = !DILocation(line: 256, column: 20, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !1, line: 256, column: 13)
!408 = !DILocation(line: 256, column: 13, scope: !407)
!409 = !DILocation(line: 256, column: 36, scope: !407)
!410 = !DILocation(line: 256, column: 13, scope: !400)
!411 = !DILocation(line: 259, column: 25, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !1, line: 257, column: 9)
!413 = !DILocation(line: 260, column: 20, scope: !414)
!414 = distinct !DILexicalBlock(scope: !412, file: !1, line: 260, column: 13)
!415 = !DILocation(line: 260, column: 18, scope: !414)
!416 = !DILocation(line: 260, column: 25, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !1, line: 260, column: 13)
!418 = !DILocation(line: 260, column: 29, scope: !417)
!419 = !DILocation(line: 260, column: 27, scope: !417)
!420 = !DILocation(line: 260, column: 13, scope: !414)
!421 = !DILocation(line: 263, column: 28, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !1, line: 261, column: 13)
!423 = !DILocation(line: 264, column: 13, scope: !422)
!424 = !DILocation(line: 260, column: 33, scope: !417)
!425 = !DILocation(line: 260, column: 13, scope: !417)
!426 = distinct !{!426, !420, !427, !232}
!427 = !DILocation(line: 264, column: 13, scope: !414)
!428 = !DILocation(line: 265, column: 26, scope: !412)
!429 = !DILocation(line: 265, column: 13, scope: !412)
!430 = !DILocation(line: 266, column: 9, scope: !412)
!431 = !DILocation(line: 268, column: 1, scope: !384)
!432 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_good", scope: !1, file: !1, line: 270, type: !65, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !67)
!433 = !DILocation(line: 272, column: 5, scope: !432)
!434 = !DILocation(line: 273, column: 5, scope: !432)
!435 = !DILocation(line: 274, column: 1, scope: !432)
