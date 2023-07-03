; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_0.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_0(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_recvResult_022 = alloca i32, align 4
  %_goodB2G_service_023 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_connectSocket_024 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodB2G_i_078 = alloca i32, align 4
  %_goodB2G_buffer_079 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_i_0125 = alloca i32, align 4
  %_goodG2B_buffer_0126 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !79
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !80
  %tobool = icmp ne i32 %call, 0, !dbg !80
  br i1 %tobool, label %if.then, label %if.else, !dbg !82

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !87, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !111
  br label %do.body, !dbg !112

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !113
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !115
  %0 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !116
  %cmp = icmp eq i32 %0, -1, !dbg !118
  br i1 %cmp, label %if.then2, label %if.end, !dbg !119

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !120

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !122
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !123
  store i16 2, i16* %sin_family, align 4, !dbg !124
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !125
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !126
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !127
  store i32 %call3, i32* %s_addr, align 4, !dbg !128
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !129
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !130
  store i16 %call4, i16* %sin_port, align 2, !dbg !131
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !132
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !134
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !135
  %cmp6 = icmp eq i32 %call5, -1, !dbg !136
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !137

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !138

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !140
  %5 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !141
  %call9 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !142
  %conv = trunc i64 %call9 to i32, !dbg !142
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !143
  %6 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !144
  %cmp10 = icmp eq i32 %6, -1, !dbg !146
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !147

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !148
  %cmp12 = icmp eq i32 %7, 0, !dbg !149
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !150

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !151

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !153
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !154
  %idxprom = sext i32 %9 to i64, !dbg !153
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !155
  %10 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !156
  %call16 = call i32 @atoi(i8* %10) #9, !dbg !157
  store i32 %call16, i32* %_goodB2G_data_0, align 4, !dbg !158
  br label %do.end, !dbg !159

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %11 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !160
  %cmp17 = icmp ne i32 %11, -1, !dbg !162
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !163

if.then19:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !164
  %call20 = call i32 @close(i32 %12), !dbg !166
  br label %if.end21, !dbg !167

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end60, !dbg !168

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_022, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_023, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_024, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 -1, i32* %_goodB2G_connectSocket_024, align 4, !dbg !176
  br label %do.body25, !dbg !177

do.body25:                                        ; preds = %if.else
  %call26 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !178
  store i32 %call26, i32* %_goodB2G_connectSocket_024, align 4, !dbg !180
  %13 = load i32, i32* %_goodB2G_connectSocket_024, align 4, !dbg !181
  %cmp27 = icmp eq i32 %13, -1, !dbg !183
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !184

if.then29:                                        ; preds = %do.body25
  br label %do.end54, !dbg !185

if.end30:                                         ; preds = %do.body25
  %14 = bitcast %struct.sockaddr_in* %_goodB2G_service_023 to i8*, !dbg !187
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false), !dbg !187
  %sin_family31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_023, i32 0, i32 0, !dbg !188
  store i16 2, i16* %sin_family31, align 4, !dbg !189
  %call32 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !190
  %sin_addr33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_023, i32 0, i32 2, !dbg !191
  %s_addr34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr33, i32 0, i32 0, !dbg !192
  store i32 %call32, i32* %s_addr34, align 4, !dbg !193
  %call35 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !194
  %sin_port36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_023, i32 0, i32 1, !dbg !195
  store i16 %call35, i16* %sin_port36, align 2, !dbg !196
  %15 = load i32, i32* %_goodB2G_connectSocket_024, align 4, !dbg !197
  %16 = bitcast %struct.sockaddr_in* %_goodB2G_service_023 to %struct.sockaddr*, !dbg !199
  %call37 = call i32 @connect(i32 %15, %struct.sockaddr* %16, i32 16), !dbg !200
  %cmp38 = icmp eq i32 %call37, -1, !dbg !201
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !202

if.then40:                                        ; preds = %if.end30
  br label %do.end54, !dbg !203

if.end41:                                         ; preds = %if.end30
  %17 = load i32, i32* %_goodB2G_connectSocket_024, align 4, !dbg !205
  %18 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !206
  %call42 = call i64 @recv(i32 %17, i8* %18, i64 13, i32 0), !dbg !207
  %conv43 = trunc i64 %call42 to i32, !dbg !207
  store i32 %conv43, i32* %_goodB2G_recvResult_022, align 4, !dbg !208
  %19 = load i32, i32* %_goodB2G_recvResult_022, align 4, !dbg !209
  %cmp44 = icmp eq i32 %19, -1, !dbg !211
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46, !dbg !212

lor.lhs.false46:                                  ; preds = %if.end41
  %20 = load i32, i32* %_goodB2G_recvResult_022, align 4, !dbg !213
  %cmp47 = icmp eq i32 %20, 0, !dbg !214
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !215

if.then49:                                        ; preds = %lor.lhs.false46, %if.end41
  br label %do.end54, !dbg !216

if.end50:                                         ; preds = %lor.lhs.false46
  %21 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !218
  %22 = load i32, i32* %_goodB2G_recvResult_022, align 4, !dbg !219
  %idxprom51 = sext i32 %22 to i64, !dbg !218
  %arrayidx52 = getelementptr inbounds i8, i8* %21, i64 %idxprom51, !dbg !218
  store i8 0, i8* %arrayidx52, align 1, !dbg !220
  %23 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !221
  %call53 = call i32 @atoi(i8* %23) #9, !dbg !222
  store i32 %call53, i32* %_goodB2G_data_0, align 4, !dbg !223
  br label %do.end54, !dbg !224

do.end54:                                         ; preds = %if.end50, %if.then49, %if.then40, %if.then29
  %24 = load i32, i32* %_goodB2G_connectSocket_024, align 4, !dbg !225
  %cmp55 = icmp ne i32 %24, -1, !dbg !227
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !228

if.then57:                                        ; preds = %do.end54
  %25 = load i32, i32* %_goodB2G_connectSocket_024, align 4, !dbg !229
  %call58 = call i32 @close(i32 %25), !dbg !231
  br label %if.end59, !dbg !232

if.end59:                                         ; preds = %if.then57, %do.end54
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end21
  %call61 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !233
  %tobool62 = icmp ne i32 %call61, 0, !dbg !233
  br i1 %tobool62, label %if.then63, label %if.else77, !dbg !235

if.then63:                                        ; preds = %if.end60
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !236, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !240, metadata !DIExpression()), !dbg !244
  %26 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !244
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 40, i1 false), !dbg !244
  %27 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !245
  %cmp64 = icmp sge i32 %27, 0, !dbg !247
  br i1 %cmp64, label %land.lhs.true, label %if.else75, !dbg !248

land.lhs.true:                                    ; preds = %if.then63
  %28 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !249
  %cmp66 = icmp slt i32 %28, 10, !dbg !250
  br i1 %cmp66, label %if.then68, label %if.else75, !dbg !251

if.then68:                                        ; preds = %land.lhs.true
  %29 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !252
  %idxprom69 = sext i32 %29 to i64, !dbg !254
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom69, !dbg !254
  store i32 1, i32* %arrayidx70, align 4, !dbg !255
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !256
  br label %for.cond, !dbg !258

for.cond:                                         ; preds = %for.inc, %if.then68
  %30 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !259
  %cmp71 = icmp slt i32 %30, 10, !dbg !261
  br i1 %cmp71, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !263
  %idxprom73 = sext i32 %31 to i64, !dbg !265
  %arrayidx74 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom73, !dbg !265
  %32 = load i32, i32* %arrayidx74, align 4, !dbg !265
  call void @printIntLine(i32 %32), !dbg !266
  br label %for.inc, !dbg !267

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !268
  %inc = add nsw i32 %33, 1, !dbg !268
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !268
  br label %for.cond, !dbg !269, !llvm.loop !270

for.end:                                          ; preds = %for.cond
  br label %if.end76, !dbg !273

if.else75:                                        ; preds = %land.lhs.true, %if.then63
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !274
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %for.end
  br label %if.end99, !dbg !276

if.else77:                                        ; preds = %if.end60
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_078, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_079, metadata !281, metadata !DIExpression()), !dbg !282
  %34 = bitcast [10 x i32]* %_goodB2G_buffer_079 to i8*, !dbg !282
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 40, i1 false), !dbg !282
  %35 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !283
  %cmp80 = icmp sge i32 %35, 0, !dbg !285
  br i1 %cmp80, label %land.lhs.true82, label %if.else97, !dbg !286

land.lhs.true82:                                  ; preds = %if.else77
  %36 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !287
  %cmp83 = icmp slt i32 %36, 10, !dbg !288
  br i1 %cmp83, label %if.then85, label %if.else97, !dbg !289

if.then85:                                        ; preds = %land.lhs.true82
  %37 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !290
  %idxprom86 = sext i32 %37 to i64, !dbg !292
  %arrayidx87 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_079, i64 0, i64 %idxprom86, !dbg !292
  store i32 1, i32* %arrayidx87, align 4, !dbg !293
  store i32 0, i32* %_goodB2G_i_078, align 4, !dbg !294
  br label %for.cond88, !dbg !296

for.cond88:                                       ; preds = %for.inc94, %if.then85
  %38 = load i32, i32* %_goodB2G_i_078, align 4, !dbg !297
  %cmp89 = icmp slt i32 %38, 10, !dbg !299
  br i1 %cmp89, label %for.body91, label %for.end96, !dbg !300

for.body91:                                       ; preds = %for.cond88
  %39 = load i32, i32* %_goodB2G_i_078, align 4, !dbg !301
  %idxprom92 = sext i32 %39 to i64, !dbg !303
  %arrayidx93 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_079, i64 0, i64 %idxprom92, !dbg !303
  %40 = load i32, i32* %arrayidx93, align 4, !dbg !303
  call void @printIntLine(i32 %40), !dbg !304
  br label %for.inc94, !dbg !305

for.inc94:                                        ; preds = %for.body91
  %41 = load i32, i32* %_goodB2G_i_078, align 4, !dbg !306
  %inc95 = add nsw i32 %41, 1, !dbg !306
  store i32 %inc95, i32* %_goodB2G_i_078, align 4, !dbg !306
  br label %for.cond88, !dbg !307, !llvm.loop !308

for.end96:                                        ; preds = %for.cond88
  br label %if.end98, !dbg !310

if.else97:                                        ; preds = %land.lhs.true82, %if.else77
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !311
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %for.end96
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end76
  br label %goodB2G_label_, !dbg !313

goodB2G_label_:                                   ; preds = %if.end99
  call void @llvm.dbg.label(metadata !314), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !316, metadata !DIExpression()), !dbg !318
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !319
  %call100 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !320
  %tobool101 = icmp ne i32 %call100, 0, !dbg !320
  br i1 %tobool101, label %if.then102, label %if.else103, !dbg !322

if.then102:                                       ; preds = %goodB2G_label_
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !323
  br label %if.end104, !dbg !325

if.else103:                                       ; preds = %goodB2G_label_
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !326
  br label %if.end104

if.end104:                                        ; preds = %if.else103, %if.then102
  %call105 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !328
  %tobool106 = icmp ne i32 %call105, 0, !dbg !328
  br i1 %tobool106, label %if.then107, label %if.else124, !dbg !330

if.then107:                                       ; preds = %if.end104
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !335, metadata !DIExpression()), !dbg !336
  %42 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !336
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 40, i1 false), !dbg !336
  %43 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !337
  %cmp108 = icmp sge i32 %43, 0, !dbg !339
  br i1 %cmp108, label %if.then110, label %if.else122, !dbg !340

if.then110:                                       ; preds = %if.then107
  %44 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !341
  %idxprom111 = sext i32 %44 to i64, !dbg !343
  %arrayidx112 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom111, !dbg !343
  store i32 1, i32* %arrayidx112, align 4, !dbg !344
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !345
  br label %for.cond113, !dbg !347

for.cond113:                                      ; preds = %for.inc119, %if.then110
  %45 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !348
  %cmp114 = icmp slt i32 %45, 10, !dbg !350
  br i1 %cmp114, label %for.body116, label %for.end121, !dbg !351

for.body116:                                      ; preds = %for.cond113
  %46 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !352
  %idxprom117 = sext i32 %46 to i64, !dbg !354
  %arrayidx118 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom117, !dbg !354
  %47 = load i32, i32* %arrayidx118, align 4, !dbg !354
  call void @printIntLine(i32 %47), !dbg !355
  br label %for.inc119, !dbg !356

for.inc119:                                       ; preds = %for.body116
  %48 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !357
  %inc120 = add nsw i32 %48, 1, !dbg !357
  store i32 %inc120, i32* %_goodG2B_i_0, align 4, !dbg !357
  br label %for.cond113, !dbg !358, !llvm.loop !359

for.end121:                                       ; preds = %for.cond113
  br label %if.end123, !dbg !361

if.else122:                                       ; preds = %if.then107
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !362
  br label %if.end123

if.end123:                                        ; preds = %if.else122, %for.end121
  br label %if.end141, !dbg !364

if.else124:                                       ; preds = %if.end104
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0125, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0126, metadata !369, metadata !DIExpression()), !dbg !370
  %49 = bitcast [10 x i32]* %_goodG2B_buffer_0126 to i8*, !dbg !370
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 40, i1 false), !dbg !370
  %50 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !371
  %cmp127 = icmp sge i32 %50, 0, !dbg !373
  br i1 %cmp127, label %if.then129, label %if.else139, !dbg !374

if.then129:                                       ; preds = %if.else124
  %51 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !375
  %52 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !377
  call void %51(i32 %52), !dbg !375
  store i32 0, i32* %_goodG2B_i_0125, align 4, !dbg !378
  br label %for.cond130, !dbg !380

for.cond130:                                      ; preds = %for.inc136, %if.then129
  %53 = load i32, i32* %_goodG2B_i_0125, align 4, !dbg !381
  %cmp131 = icmp slt i32 %53, 10, !dbg !383
  br i1 %cmp131, label %for.body133, label %for.end138, !dbg !384

for.body133:                                      ; preds = %for.cond130
  %54 = load i32, i32* %_goodG2B_i_0125, align 4, !dbg !385
  %idxprom134 = sext i32 %54 to i64, !dbg !387
  %arrayidx135 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0126, i64 0, i64 %idxprom134, !dbg !387
  %55 = load i32, i32* %arrayidx135, align 4, !dbg !387
  call void @printIntLine(i32 %55), !dbg !388
  br label %for.inc136, !dbg !389

for.inc136:                                       ; preds = %for.body133
  %56 = load i32, i32* %_goodG2B_i_0125, align 4, !dbg !390
  %inc137 = add nsw i32 %56, 1, !dbg !390
  store i32 %inc137, i32* %_goodG2B_i_0125, align 4, !dbg !390
  br label %for.cond130, !dbg !391, !llvm.loop !392

for.end138:                                       ; preds = %for.cond130
  br label %if.end140, !dbg !394

if.else139:                                       ; preds = %if.else124
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !395
  br label %if.end140

if.end140:                                        ; preds = %if.else139, %for.end138
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end123
  br label %goodG2B_label_, !dbg !397

goodG2B_label_:                                   ; preds = %if.end141
  call void @llvm.dbg.label(metadata !398), !dbg !399
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good_label_, !dbg !400

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !401), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #2

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_0.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_0", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 143, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 174, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G_data_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocation(line: 7, column: 21, scope: !77)
!80 = !DILocation(line: 8, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 8, column: 9)
!82 = !DILocation(line: 8, column: 9, scope: !77)
!83 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !84, file: !1, line: 11, type: !70)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 10, column: 7)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 9, column: 5)
!86 = !DILocation(line: 11, column: 13, scope: !84)
!87 = !DILocalVariable(name: "_goodB2G_service_0", scope: !84, file: !1, line: 12, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !89)
!89 = !{!90, !91, !97, !104}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !88, file: !17, line: 240, baseType: !51, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !88, file: !17, line: 241, baseType: !92, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !96, line: 40, baseType: !53)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !88, file: !17, line: 242, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !98, file: !17, line: 33, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 26, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !88, file: !17, line: 245, baseType: !105, size: 64, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !107)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DILocation(line: 12, column: 28, scope: !84)
!110 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !84, file: !1, line: 13, type: !70)
!111 = !DILocation(line: 13, column: 13, scope: !84)
!112 = !DILocation(line: 14, column: 9, scope: !84)
!113 = !DILocation(line: 16, column: 38, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !1, line: 15, column: 9)
!115 = !DILocation(line: 16, column: 36, scope: !114)
!116 = !DILocation(line: 17, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 17, column: 15)
!118 = !DILocation(line: 17, column: 40, scope: !117)
!119 = !DILocation(line: 17, column: 15, scope: !114)
!120 = !DILocation(line: 19, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 18, column: 11)
!122 = !DILocation(line: 22, column: 11, scope: !114)
!123 = !DILocation(line: 23, column: 30, scope: !114)
!124 = !DILocation(line: 23, column: 41, scope: !114)
!125 = !DILocation(line: 24, column: 48, scope: !114)
!126 = !DILocation(line: 24, column: 30, scope: !114)
!127 = !DILocation(line: 24, column: 39, scope: !114)
!128 = !DILocation(line: 24, column: 46, scope: !114)
!129 = !DILocation(line: 25, column: 41, scope: !114)
!130 = !DILocation(line: 25, column: 30, scope: !114)
!131 = !DILocation(line: 25, column: 39, scope: !114)
!132 = !DILocation(line: 26, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !114, file: !1, line: 26, column: 15)
!134 = !DILocation(line: 26, column: 49, scope: !133)
!135 = !DILocation(line: 26, column: 15, scope: !133)
!136 = !DILocation(line: 26, column: 120, scope: !133)
!137 = !DILocation(line: 26, column: 15, scope: !114)
!138 = !DILocation(line: 28, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 27, column: 11)
!140 = !DILocation(line: 31, column: 40, scope: !114)
!141 = !DILocation(line: 31, column: 66, scope: !114)
!142 = !DILocation(line: 31, column: 35, scope: !114)
!143 = !DILocation(line: 31, column: 33, scope: !114)
!144 = !DILocation(line: 32, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !114, file: !1, line: 32, column: 15)
!146 = !DILocation(line: 32, column: 38, scope: !145)
!147 = !DILocation(line: 32, column: 47, scope: !145)
!148 = !DILocation(line: 32, column: 51, scope: !145)
!149 = !DILocation(line: 32, column: 73, scope: !145)
!150 = !DILocation(line: 32, column: 15, scope: !114)
!151 = !DILocation(line: 34, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 33, column: 11)
!153 = !DILocation(line: 37, column: 11, scope: !114)
!154 = !DILocation(line: 37, column: 34, scope: !114)
!155 = !DILocation(line: 37, column: 57, scope: !114)
!156 = !DILocation(line: 38, column: 34, scope: !114)
!157 = !DILocation(line: 38, column: 29, scope: !114)
!158 = !DILocation(line: 38, column: 27, scope: !114)
!159 = !DILocation(line: 39, column: 9, scope: !114)
!160 = !DILocation(line: 41, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !84, file: !1, line: 41, column: 13)
!162 = !DILocation(line: 41, column: 38, scope: !161)
!163 = !DILocation(line: 41, column: 13, scope: !84)
!164 = !DILocation(line: 43, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 42, column: 9)
!166 = !DILocation(line: 43, column: 11, scope: !165)
!167 = !DILocation(line: 44, column: 9, scope: !165)
!168 = !DILocation(line: 47, column: 5, scope: !85)
!169 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !170, file: !1, line: 51, type: !70)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 50, column: 7)
!171 = distinct !DILexicalBlock(scope: !81, file: !1, line: 49, column: 5)
!172 = !DILocation(line: 51, column: 13, scope: !170)
!173 = !DILocalVariable(name: "_goodB2G_service_0", scope: !170, file: !1, line: 52, type: !88)
!174 = !DILocation(line: 52, column: 28, scope: !170)
!175 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !170, file: !1, line: 53, type: !70)
!176 = !DILocation(line: 53, column: 13, scope: !170)
!177 = !DILocation(line: 54, column: 9, scope: !170)
!178 = !DILocation(line: 56, column: 38, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 55, column: 9)
!180 = !DILocation(line: 56, column: 36, scope: !179)
!181 = !DILocation(line: 57, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 57, column: 15)
!183 = !DILocation(line: 57, column: 40, scope: !182)
!184 = !DILocation(line: 57, column: 15, scope: !179)
!185 = !DILocation(line: 59, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 58, column: 11)
!187 = !DILocation(line: 62, column: 11, scope: !179)
!188 = !DILocation(line: 63, column: 30, scope: !179)
!189 = !DILocation(line: 63, column: 41, scope: !179)
!190 = !DILocation(line: 64, column: 48, scope: !179)
!191 = !DILocation(line: 64, column: 30, scope: !179)
!192 = !DILocation(line: 64, column: 39, scope: !179)
!193 = !DILocation(line: 64, column: 46, scope: !179)
!194 = !DILocation(line: 65, column: 41, scope: !179)
!195 = !DILocation(line: 65, column: 30, scope: !179)
!196 = !DILocation(line: 65, column: 39, scope: !179)
!197 = !DILocation(line: 66, column: 23, scope: !198)
!198 = distinct !DILexicalBlock(scope: !179, file: !1, line: 66, column: 15)
!199 = !DILocation(line: 66, column: 49, scope: !198)
!200 = !DILocation(line: 66, column: 15, scope: !198)
!201 = !DILocation(line: 66, column: 120, scope: !198)
!202 = !DILocation(line: 66, column: 15, scope: !179)
!203 = !DILocation(line: 68, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !198, file: !1, line: 67, column: 11)
!205 = !DILocation(line: 71, column: 40, scope: !179)
!206 = !DILocation(line: 71, column: 66, scope: !179)
!207 = !DILocation(line: 71, column: 35, scope: !179)
!208 = !DILocation(line: 71, column: 33, scope: !179)
!209 = !DILocation(line: 72, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !179, file: !1, line: 72, column: 15)
!211 = !DILocation(line: 72, column: 38, scope: !210)
!212 = !DILocation(line: 72, column: 47, scope: !210)
!213 = !DILocation(line: 72, column: 51, scope: !210)
!214 = !DILocation(line: 72, column: 73, scope: !210)
!215 = !DILocation(line: 72, column: 15, scope: !179)
!216 = !DILocation(line: 74, column: 13, scope: !217)
!217 = distinct !DILexicalBlock(scope: !210, file: !1, line: 73, column: 11)
!218 = !DILocation(line: 77, column: 11, scope: !179)
!219 = !DILocation(line: 77, column: 34, scope: !179)
!220 = !DILocation(line: 77, column: 57, scope: !179)
!221 = !DILocation(line: 78, column: 34, scope: !179)
!222 = !DILocation(line: 78, column: 29, scope: !179)
!223 = !DILocation(line: 78, column: 27, scope: !179)
!224 = !DILocation(line: 79, column: 9, scope: !179)
!225 = !DILocation(line: 81, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !170, file: !1, line: 81, column: 13)
!227 = !DILocation(line: 81, column: 38, scope: !226)
!228 = !DILocation(line: 81, column: 13, scope: !170)
!229 = !DILocation(line: 83, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 82, column: 9)
!231 = !DILocation(line: 83, column: 11, scope: !230)
!232 = !DILocation(line: 84, column: 9, scope: !230)
!233 = !DILocation(line: 89, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !77, file: !1, line: 89, column: 9)
!235 = !DILocation(line: 89, column: 9, scope: !77)
!236 = !DILocalVariable(name: "_goodB2G_i_0", scope: !237, file: !1, line: 92, type: !70)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 91, column: 7)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 90, column: 5)
!239 = !DILocation(line: 92, column: 13, scope: !237)
!240 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !237, file: !1, line: 93, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 10)
!244 = !DILocation(line: 93, column: 13, scope: !237)
!245 = !DILocation(line: 94, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !237, file: !1, line: 94, column: 13)
!247 = !DILocation(line: 94, column: 30, scope: !246)
!248 = !DILocation(line: 94, column: 36, scope: !246)
!249 = !DILocation(line: 94, column: 40, scope: !246)
!250 = !DILocation(line: 94, column: 56, scope: !246)
!251 = !DILocation(line: 94, column: 13, scope: !237)
!252 = !DILocation(line: 96, column: 29, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 95, column: 9)
!254 = !DILocation(line: 96, column: 11, scope: !253)
!255 = !DILocation(line: 96, column: 46, scope: !253)
!256 = !DILocation(line: 97, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 97, column: 11)
!258 = !DILocation(line: 97, column: 16, scope: !257)
!259 = !DILocation(line: 97, column: 34, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 97, column: 11)
!261 = !DILocation(line: 97, column: 47, scope: !260)
!262 = !DILocation(line: 97, column: 11, scope: !257)
!263 = !DILocation(line: 99, column: 44, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 98, column: 11)
!265 = !DILocation(line: 99, column: 26, scope: !264)
!266 = !DILocation(line: 99, column: 13, scope: !264)
!267 = !DILocation(line: 100, column: 11, scope: !264)
!268 = !DILocation(line: 97, column: 65, scope: !260)
!269 = !DILocation(line: 97, column: 11, scope: !260)
!270 = distinct !{!270, !262, !271, !272}
!271 = !DILocation(line: 100, column: 11, scope: !257)
!272 = !{!"llvm.loop.mustprogress"}
!273 = !DILocation(line: 102, column: 9, scope: !253)
!274 = !DILocation(line: 105, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !246, file: !1, line: 104, column: 9)
!276 = !DILocation(line: 109, column: 5, scope: !238)
!277 = !DILocalVariable(name: "_goodB2G_i_0", scope: !278, file: !1, line: 113, type: !70)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 112, column: 7)
!279 = distinct !DILexicalBlock(scope: !234, file: !1, line: 111, column: 5)
!280 = !DILocation(line: 113, column: 13, scope: !278)
!281 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !278, file: !1, line: 114, type: !241)
!282 = !DILocation(line: 114, column: 13, scope: !278)
!283 = !DILocation(line: 115, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !1, line: 115, column: 13)
!285 = !DILocation(line: 115, column: 30, scope: !284)
!286 = !DILocation(line: 115, column: 36, scope: !284)
!287 = !DILocation(line: 115, column: 40, scope: !284)
!288 = !DILocation(line: 115, column: 56, scope: !284)
!289 = !DILocation(line: 115, column: 13, scope: !278)
!290 = !DILocation(line: 117, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !1, line: 116, column: 9)
!292 = !DILocation(line: 117, column: 11, scope: !291)
!293 = !DILocation(line: 117, column: 46, scope: !291)
!294 = !DILocation(line: 118, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 118, column: 11)
!296 = !DILocation(line: 118, column: 16, scope: !295)
!297 = !DILocation(line: 118, column: 34, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !1, line: 118, column: 11)
!299 = !DILocation(line: 118, column: 47, scope: !298)
!300 = !DILocation(line: 118, column: 11, scope: !295)
!301 = !DILocation(line: 120, column: 44, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 119, column: 11)
!303 = !DILocation(line: 120, column: 26, scope: !302)
!304 = !DILocation(line: 120, column: 13, scope: !302)
!305 = !DILocation(line: 121, column: 11, scope: !302)
!306 = !DILocation(line: 118, column: 65, scope: !298)
!307 = !DILocation(line: 118, column: 11, scope: !298)
!308 = distinct !{!308, !300, !309, !272}
!309 = !DILocation(line: 121, column: 11, scope: !295)
!310 = !DILocation(line: 123, column: 9, scope: !291)
!311 = !DILocation(line: 126, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !284, file: !1, line: 125, column: 9)
!313 = !DILocation(line: 89, column: 34, scope: !234)
!314 = !DILabel(scope: !77, name: "goodB2G_label_", file: !1, line: 132)
!315 = !DILocation(line: 132, column: 5, scope: !77)
!316 = !DILocalVariable(name: "_goodG2B_data_0", scope: !317, file: !1, line: 139, type: !70)
!317 = distinct !DILexicalBlock(scope: !63, file: !1, line: 138, column: 3)
!318 = !DILocation(line: 139, column: 9, scope: !317)
!319 = !DILocation(line: 140, column: 21, scope: !317)
!320 = !DILocation(line: 141, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !1, line: 141, column: 9)
!322 = !DILocation(line: 141, column: 9, scope: !317)
!323 = !DILocation(line: 143, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 142, column: 5)
!325 = !DILocation(line: 144, column: 5, scope: !324)
!326 = !DILocation(line: 147, column: 23, scope: !327)
!327 = distinct !DILexicalBlock(scope: !321, file: !1, line: 146, column: 5)
!328 = !DILocation(line: 150, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !317, file: !1, line: 150, column: 9)
!330 = !DILocation(line: 150, column: 9, scope: !317)
!331 = !DILocalVariable(name: "_goodG2B_i_0", scope: !332, file: !1, line: 153, type: !70)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 152, column: 7)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 151, column: 5)
!334 = !DILocation(line: 153, column: 13, scope: !332)
!335 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !332, file: !1, line: 154, type: !241)
!336 = !DILocation(line: 154, column: 13, scope: !332)
!337 = !DILocation(line: 155, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !332, file: !1, line: 155, column: 13)
!339 = !DILocation(line: 155, column: 29, scope: !338)
!340 = !DILocation(line: 155, column: 13, scope: !332)
!341 = !DILocation(line: 157, column: 29, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 156, column: 9)
!343 = !DILocation(line: 157, column: 11, scope: !342)
!344 = !DILocation(line: 157, column: 46, scope: !342)
!345 = !DILocation(line: 158, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 158, column: 11)
!347 = !DILocation(line: 158, column: 16, scope: !346)
!348 = !DILocation(line: 158, column: 34, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !1, line: 158, column: 11)
!350 = !DILocation(line: 158, column: 47, scope: !349)
!351 = !DILocation(line: 158, column: 11, scope: !346)
!352 = !DILocation(line: 160, column: 44, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !1, line: 159, column: 11)
!354 = !DILocation(line: 160, column: 26, scope: !353)
!355 = !DILocation(line: 160, column: 13, scope: !353)
!356 = !DILocation(line: 161, column: 11, scope: !353)
!357 = !DILocation(line: 158, column: 65, scope: !349)
!358 = !DILocation(line: 158, column: 11, scope: !349)
!359 = distinct !{!359, !351, !360, !272}
!360 = !DILocation(line: 161, column: 11, scope: !346)
!361 = !DILocation(line: 163, column: 9, scope: !342)
!362 = !DILocation(line: 166, column: 11, scope: !363)
!363 = distinct !DILexicalBlock(scope: !338, file: !1, line: 165, column: 9)
!364 = !DILocation(line: 170, column: 5, scope: !333)
!365 = !DILocalVariable(name: "_goodG2B_i_0", scope: !366, file: !1, line: 174, type: !70)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 173, column: 7)
!367 = distinct !DILexicalBlock(scope: !329, file: !1, line: 172, column: 5)
!368 = !DILocation(line: 174, column: 13, scope: !366)
!369 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !366, file: !1, line: 175, type: !241)
!370 = !DILocation(line: 175, column: 13, scope: !366)
!371 = !DILocation(line: 176, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !1, line: 176, column: 13)
!373 = !DILocation(line: 176, column: 29, scope: !372)
!374 = !DILocation(line: 176, column: 13, scope: !366)
!375 = !DILocation(line: 178, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 177, column: 9)
!377 = !DILocation(line: 178, column: 18, scope: !376)
!378 = !DILocation(line: 179, column: 29, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !1, line: 179, column: 11)
!380 = !DILocation(line: 179, column: 16, scope: !379)
!381 = !DILocation(line: 179, column: 34, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 179, column: 11)
!383 = !DILocation(line: 179, column: 47, scope: !382)
!384 = !DILocation(line: 179, column: 11, scope: !379)
!385 = !DILocation(line: 181, column: 44, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 180, column: 11)
!387 = !DILocation(line: 181, column: 26, scope: !386)
!388 = !DILocation(line: 181, column: 13, scope: !386)
!389 = !DILocation(line: 182, column: 11, scope: !386)
!390 = !DILocation(line: 179, column: 65, scope: !382)
!391 = !DILocation(line: 179, column: 11, scope: !382)
!392 = distinct !{!392, !384, !393, !272}
!393 = !DILocation(line: 182, column: 11, scope: !379)
!394 = !DILocation(line: 184, column: 9, scope: !376)
!395 = !DILocation(line: 187, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !372, file: !1, line: 186, column: 9)
!397 = !DILocation(line: 150, column: 34, scope: !329)
!398 = !DILabel(scope: !317, name: "goodG2B_label_", file: !1, line: 193)
!399 = !DILocation(line: 193, column: 5, scope: !317)
!400 = !DILocation(line: 198, column: 3, scope: !317)
!401 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good_label_", file: !1, line: 199)
!402 = !DILocation(line: 199, column: 3, scope: !63)
!403 = !DILocation(line: 204, column: 1, scope: !63)
