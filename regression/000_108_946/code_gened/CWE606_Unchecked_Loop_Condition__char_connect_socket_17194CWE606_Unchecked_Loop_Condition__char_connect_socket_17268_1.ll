; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17268_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17268_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17268_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_1 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !76, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !81, metadata !DIExpression()), !dbg !85
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !85
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !86
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !87
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !88
  br label %for.cond, !dbg !90

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !91
  %cmp = icmp slt i32 %1, 1, !dbg !93
  br i1 %cmp, label %for.body, label %for.end, !dbg !94

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !99, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !125
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !126, metadata !DIExpression()), !dbg !130
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !131
  %call = call i64 @strlen(i8* %2) #7, !dbg !132
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !130
  br label %do.body, !dbg !133

do.body:                                          ; preds = %for.body
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !134
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !136
  %3 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !137
  %cmp2 = icmp eq i32 %3, -1, !dbg !139
  br i1 %cmp2, label %if.then, label %if.end, !dbg !140

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !141

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !143
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !144
  store i16 2, i16* %sin_family, align 4, !dbg !145
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !146
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !147
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !148
  store i32 %call3, i32* %s_addr, align 4, !dbg !149
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !150
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !151
  store i16 %call4, i16* %sin_port, align 2, !dbg !152
  %5 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !153
  %6 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !155
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !156
  %cmp6 = icmp eq i32 %call5, -1, !dbg !157
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !158

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !159

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !161
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !162
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !163
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !164
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !165
  %sub = sub i64 100, %10, !dbg !166
  %sub9 = sub i64 %sub, 1, !dbg !167
  %mul = mul i64 1, %sub9, !dbg !168
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !169
  %conv = trunc i64 %call10 to i32, !dbg !169
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !170
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !171
  %cmp11 = icmp eq i32 %11, -1, !dbg !173
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !174

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !175
  %cmp13 = icmp eq i32 %12, 0, !dbg !176
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !177

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !178

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !180
  %14 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !181
  %15 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !182
  %conv17 = sext i32 %15 to i64, !dbg !182
  %div = udiv i64 %conv17, 1, !dbg !183
  %add = add i64 %14, %div, !dbg !184
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !180
  store i8 0, i8* %arrayidx, align 1, !dbg !185
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !186
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !187
  store i8* %call18, i8** %_goodB2G_replace_0, align 8, !dbg !188
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !189
  %tobool = icmp ne i8* %17, null, !dbg !189
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !191

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !192
  store i8 0, i8* %18, align 1, !dbg !194
  br label %if.end20, !dbg !195

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !196
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !197
  store i8* %call21, i8** %_goodB2G_replace_0, align 8, !dbg !198
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !199
  %tobool22 = icmp ne i8* %20, null, !dbg !199
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !201

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !202
  store i8 0, i8* %21, align 1, !dbg !204
  br label %if.end24, !dbg !205

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !206

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !207
  %cmp25 = icmp ne i32 %22, -1, !dbg !209
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !210

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !211
  %call28 = call i32 @close(i32 %23), !dbg !213
  br label %if.end29, !dbg !214

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !216
  %inc = add nsw i32 %24, 1, !dbg !216
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !216
  br label %for.cond, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !221
  br label %for.cond30, !dbg !223

for.cond30:                                       ; preds = %for.inc51, %for.end
  %25 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !224
  %cmp31 = icmp slt i32 %25, 1, !dbg !226
  br i1 %cmp31, label %for.body33, label %for.end53, !dbg !227

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !228, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !234, metadata !DIExpression()), !dbg !235
  %26 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !236
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !238
  %cmp35 = icmp eq i32 %call34, 1, !dbg !239
  br i1 %cmp35, label %if.then37, label %if.end50, !dbg !240

if.then37:                                        ; preds = %for.body33
  %27 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !241
  %cmp38 = icmp slt i32 %27, 10000, !dbg !244
  br i1 %cmp38, label %if.then40, label %if.end49, !dbg !245

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !246
  store i32 0, i32* %_goodB2G_i_1, align 4, !dbg !248
  br label %for.cond41, !dbg !250

for.cond41:                                       ; preds = %for.inc46, %if.then40
  %28 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !251
  %29 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !253
  %cmp42 = icmp slt i32 %28, %29, !dbg !254
  br i1 %cmp42, label %for.body44, label %for.end48, !dbg !255

for.body44:                                       ; preds = %for.cond41
  %30 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !256
  %inc45 = add nsw i32 %30, 1, !dbg !256
  store i32 %inc45, i32* %_goodB2G_intVariable_0, align 4, !dbg !256
  br label %for.inc46, !dbg !258

for.inc46:                                        ; preds = %for.body44
  %31 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !259
  %inc47 = add nsw i32 %31, 1, !dbg !259
  store i32 %inc47, i32* %_goodB2G_i_1, align 4, !dbg !259
  br label %for.cond41, !dbg !260, !llvm.loop !261

for.end48:                                        ; preds = %for.cond41
  %32 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !263
  call void @printIntLine(i32 %32), !dbg !264
  br label %if.end49, !dbg !265

if.end49:                                         ; preds = %for.end48, %if.then37
  br label %if.end50, !dbg !266

if.end50:                                         ; preds = %if.end49, %for.body33
  br label %for.inc51, !dbg !267

for.inc51:                                        ; preds = %if.end50
  %33 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !268
  %inc52 = add nsw i32 %33, 1, !dbg !268
  store i32 %inc52, i32* %_goodB2G_k_0, align 4, !dbg !268
  br label %for.cond30, !dbg !269, !llvm.loop !270

for.end53:                                        ; preds = %for.cond30
  br label %goodB2G_label_, !dbg !271

goodB2G_label_:                                   ; preds = %for.end53
  call void @llvm.dbg.label(metadata !272), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !281, metadata !DIExpression()), !dbg !282
  %34 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !282
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 100, i1 false), !dbg !282
  %arraydecay54 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !283
  store i8* %arraydecay54, i8** %_goodG2B_data_0, align 8, !dbg !284
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !285
  br label %for.cond55, !dbg !287

for.cond55:                                       ; preds = %for.inc60, %goodB2G_label_
  %35 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !288
  %cmp56 = icmp slt i32 %35, 1, !dbg !290
  br i1 %cmp56, label %for.body58, label %for.end62, !dbg !291

for.body58:                                       ; preds = %for.cond55
  %36 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !292
  %call59 = call i8* @strcpy(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !294
  br label %for.inc60, !dbg !295

for.inc60:                                        ; preds = %for.body58
  %37 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !296
  %inc61 = add nsw i32 %37, 1, !dbg !296
  store i32 %inc61, i32* %_goodG2B_h_0, align 4, !dbg !296
  br label %for.cond55, !dbg !297, !llvm.loop !298

for.end62:                                        ; preds = %for.cond55
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !300
  br label %for.cond63, !dbg !302

for.cond63:                                       ; preds = %for.inc72, %for.end62
  %38 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !303
  %cmp64 = icmp slt i32 %38, 1, !dbg !305
  br i1 %cmp64, label %for.body66, label %for.end74, !dbg !306

for.body66:                                       ; preds = %for.cond63
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !313, metadata !DIExpression()), !dbg !314
  %39 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !315
  %call67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #8, !dbg !317
  %cmp68 = icmp eq i32 %call67, 1, !dbg !318
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !319

if.then70:                                        ; preds = %for.body66
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !320
  %40 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !322
  %41 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !323
  call void %40(i32 %41), !dbg !322
  %42 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !324
  call void @printIntLine(i32 %42), !dbg !325
  br label %if.end71, !dbg !326

if.end71:                                         ; preds = %if.then70, %for.body66
  br label %for.inc72, !dbg !327

for.inc72:                                        ; preds = %if.end71
  %43 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !328
  %inc73 = add nsw i32 %43, 1, !dbg !328
  store i32 %inc73, i32* %_goodG2B_j_0, align 4, !dbg !328
  br label %for.cond63, !dbg !329, !llvm.loop !330

for.end74:                                        ; preds = %for.cond63
  br label %goodG2B_label_, !dbg !331

goodG2B_label_:                                   ; preds = %for.end74
  call void @llvm.dbg.label(metadata !332), !dbg !333
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good_label_, !dbg !334

CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !335), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17268_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17268_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 155, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_i_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocalVariable(name: "_goodB2G_k_0", scope: !77, file: !1, line: 7, type: !70)
!80 = !DILocation(line: 7, column: 9, scope: !77)
!81 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !77, file: !1, line: 8, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 100)
!85 = !DILocation(line: 8, column: 10, scope: !77)
!86 = !DILocation(line: 9, column: 23, scope: !77)
!87 = !DILocation(line: 9, column: 21, scope: !77)
!88 = !DILocation(line: 10, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !77, file: !1, line: 10, column: 5)
!90 = !DILocation(line: 10, column: 10, scope: !89)
!91 = !DILocation(line: 10, column: 28, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 10, column: 5)
!93 = !DILocation(line: 10, column: 41, scope: !92)
!94 = !DILocation(line: 10, column: 5, scope: !89)
!95 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !96, file: !1, line: 13, type: !70)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 12, column: 7)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 11, column: 5)
!98 = !DILocation(line: 13, column: 13, scope: !96)
!99 = !DILocalVariable(name: "_goodB2G_service_0", scope: !96, file: !1, line: 14, type: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !101)
!101 = !{!102, !103, !109, !116}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !100, file: !17, line: 240, baseType: !51, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !100, file: !17, line: 241, baseType: !104, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 25, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !108, line: 40, baseType: !53)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !100, file: !17, line: 242, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !110, file: !17, line: 33, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 26, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !108, line: 42, baseType: !5)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !100, file: !17, line: 245, baseType: !117, size: 64, offset: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !119)
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DILocation(line: 14, column: 28, scope: !96)
!122 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !96, file: !1, line: 15, type: !59)
!123 = !DILocation(line: 15, column: 15, scope: !96)
!124 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !96, file: !1, line: 16, type: !70)
!125 = !DILocation(line: 16, column: 13, scope: !96)
!126 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !96, file: !1, line: 17, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !129)
!128 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DILocation(line: 17, column: 16, scope: !96)
!131 = !DILocation(line: 17, column: 44, scope: !96)
!132 = !DILocation(line: 17, column: 37, scope: !96)
!133 = !DILocation(line: 18, column: 9, scope: !96)
!134 = !DILocation(line: 20, column: 38, scope: !135)
!135 = distinct !DILexicalBlock(scope: !96, file: !1, line: 19, column: 9)
!136 = !DILocation(line: 20, column: 36, scope: !135)
!137 = !DILocation(line: 21, column: 15, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 21, column: 15)
!139 = !DILocation(line: 21, column: 40, scope: !138)
!140 = !DILocation(line: 21, column: 15, scope: !135)
!141 = !DILocation(line: 23, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 22, column: 11)
!143 = !DILocation(line: 26, column: 11, scope: !135)
!144 = !DILocation(line: 27, column: 30, scope: !135)
!145 = !DILocation(line: 27, column: 41, scope: !135)
!146 = !DILocation(line: 28, column: 48, scope: !135)
!147 = !DILocation(line: 28, column: 30, scope: !135)
!148 = !DILocation(line: 28, column: 39, scope: !135)
!149 = !DILocation(line: 28, column: 46, scope: !135)
!150 = !DILocation(line: 29, column: 41, scope: !135)
!151 = !DILocation(line: 29, column: 30, scope: !135)
!152 = !DILocation(line: 29, column: 39, scope: !135)
!153 = !DILocation(line: 30, column: 23, scope: !154)
!154 = distinct !DILexicalBlock(scope: !135, file: !1, line: 30, column: 15)
!155 = !DILocation(line: 30, column: 49, scope: !154)
!156 = !DILocation(line: 30, column: 15, scope: !154)
!157 = !DILocation(line: 30, column: 120, scope: !154)
!158 = !DILocation(line: 30, column: 15, scope: !135)
!159 = !DILocation(line: 32, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !1, line: 31, column: 11)
!161 = !DILocation(line: 35, column: 40, scope: !135)
!162 = !DILocation(line: 35, column: 76, scope: !135)
!163 = !DILocation(line: 35, column: 94, scope: !135)
!164 = !DILocation(line: 35, column: 92, scope: !135)
!165 = !DILocation(line: 35, column: 140, scope: !135)
!166 = !DILocation(line: 35, column: 138, scope: !135)
!167 = !DILocation(line: 35, column: 160, scope: !135)
!168 = !DILocation(line: 35, column: 130, scope: !135)
!169 = !DILocation(line: 35, column: 35, scope: !135)
!170 = !DILocation(line: 35, column: 33, scope: !135)
!171 = !DILocation(line: 36, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !135, file: !1, line: 36, column: 15)
!173 = !DILocation(line: 36, column: 38, scope: !172)
!174 = !DILocation(line: 36, column: 47, scope: !172)
!175 = !DILocation(line: 36, column: 51, scope: !172)
!176 = !DILocation(line: 36, column: 73, scope: !172)
!177 = !DILocation(line: 36, column: 15, scope: !135)
!178 = !DILocation(line: 38, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !1, line: 37, column: 11)
!180 = !DILocation(line: 41, column: 11, scope: !135)
!181 = !DILocation(line: 41, column: 27, scope: !135)
!182 = !DILocation(line: 41, column: 49, scope: !135)
!183 = !DILocation(line: 41, column: 71, scope: !135)
!184 = !DILocation(line: 41, column: 46, scope: !135)
!185 = !DILocation(line: 41, column: 90, scope: !135)
!186 = !DILocation(line: 42, column: 39, scope: !135)
!187 = !DILocation(line: 42, column: 32, scope: !135)
!188 = !DILocation(line: 42, column: 30, scope: !135)
!189 = !DILocation(line: 43, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !135, file: !1, line: 43, column: 15)
!191 = !DILocation(line: 43, column: 15, scope: !135)
!192 = !DILocation(line: 45, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 44, column: 11)
!194 = !DILocation(line: 45, column: 33, scope: !193)
!195 = !DILocation(line: 46, column: 11, scope: !193)
!196 = !DILocation(line: 48, column: 39, scope: !135)
!197 = !DILocation(line: 48, column: 32, scope: !135)
!198 = !DILocation(line: 48, column: 30, scope: !135)
!199 = !DILocation(line: 49, column: 15, scope: !200)
!200 = distinct !DILexicalBlock(scope: !135, file: !1, line: 49, column: 15)
!201 = !DILocation(line: 49, column: 15, scope: !135)
!202 = !DILocation(line: 51, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 50, column: 11)
!204 = !DILocation(line: 51, column: 33, scope: !203)
!205 = !DILocation(line: 52, column: 11, scope: !203)
!206 = !DILocation(line: 54, column: 9, scope: !135)
!207 = !DILocation(line: 56, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !96, file: !1, line: 56, column: 13)
!209 = !DILocation(line: 56, column: 38, scope: !208)
!210 = !DILocation(line: 56, column: 13, scope: !96)
!211 = !DILocation(line: 58, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 57, column: 9)
!213 = !DILocation(line: 58, column: 11, scope: !212)
!214 = !DILocation(line: 59, column: 9, scope: !212)
!215 = !DILocation(line: 62, column: 5, scope: !97)
!216 = !DILocation(line: 10, column: 58, scope: !92)
!217 = !DILocation(line: 10, column: 5, scope: !92)
!218 = distinct !{!218, !94, !219, !220}
!219 = !DILocation(line: 62, column: 5, scope: !89)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 64, column: 23, scope: !222)
!222 = distinct !DILexicalBlock(scope: !77, file: !1, line: 64, column: 5)
!223 = !DILocation(line: 64, column: 10, scope: !222)
!224 = !DILocation(line: 64, column: 28, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 64, column: 5)
!226 = !DILocation(line: 64, column: 41, scope: !225)
!227 = !DILocation(line: 64, column: 5, scope: !222)
!228 = !DILocalVariable(name: "_goodB2G_i_1", scope: !229, file: !1, line: 67, type: !70)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 66, column: 7)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 65, column: 5)
!231 = !DILocation(line: 67, column: 13, scope: !229)
!232 = !DILocalVariable(name: "_goodB2G_n_0", scope: !229, file: !1, line: 68, type: !70)
!233 = !DILocation(line: 68, column: 13, scope: !229)
!234 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !229, file: !1, line: 69, type: !70)
!235 = !DILocation(line: 69, column: 13, scope: !229)
!236 = !DILocation(line: 70, column: 20, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !1, line: 70, column: 13)
!238 = !DILocation(line: 70, column: 13, scope: !237)
!239 = !DILocation(line: 70, column: 58, scope: !237)
!240 = !DILocation(line: 70, column: 13, scope: !229)
!241 = !DILocation(line: 72, column: 15, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 72, column: 15)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 71, column: 9)
!244 = !DILocation(line: 72, column: 28, scope: !242)
!245 = !DILocation(line: 72, column: 15, scope: !243)
!246 = !DILocation(line: 74, column: 36, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 73, column: 11)
!248 = !DILocation(line: 75, column: 31, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !1, line: 75, column: 13)
!250 = !DILocation(line: 75, column: 18, scope: !249)
!251 = !DILocation(line: 75, column: 36, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 75, column: 13)
!253 = !DILocation(line: 75, column: 51, scope: !252)
!254 = !DILocation(line: 75, column: 49, scope: !252)
!255 = !DILocation(line: 75, column: 13, scope: !249)
!256 = !DILocation(line: 77, column: 37, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 76, column: 13)
!258 = !DILocation(line: 78, column: 13, scope: !257)
!259 = !DILocation(line: 75, column: 77, scope: !252)
!260 = !DILocation(line: 75, column: 13, scope: !252)
!261 = distinct !{!261, !255, !262, !220}
!262 = !DILocation(line: 78, column: 13, scope: !249)
!263 = !DILocation(line: 80, column: 26, scope: !247)
!264 = !DILocation(line: 80, column: 13, scope: !247)
!265 = !DILocation(line: 81, column: 11, scope: !247)
!266 = !DILocation(line: 83, column: 9, scope: !243)
!267 = !DILocation(line: 86, column: 5, scope: !230)
!268 = !DILocation(line: 64, column: 58, scope: !225)
!269 = !DILocation(line: 64, column: 5, scope: !225)
!270 = distinct !{!270, !227, !271, !220}
!271 = !DILocation(line: 86, column: 5, scope: !222)
!272 = !DILabel(scope: !77, name: "goodB2G_label_", file: !1, line: 88)
!273 = !DILocation(line: 88, column: 5, scope: !77)
!274 = !DILocalVariable(name: "_goodG2B_h_0", scope: !275, file: !1, line: 95, type: !70)
!275 = distinct !DILexicalBlock(scope: !64, file: !1, line: 94, column: 3)
!276 = !DILocation(line: 95, column: 9, scope: !275)
!277 = !DILocalVariable(name: "_goodG2B_j_0", scope: !275, file: !1, line: 96, type: !70)
!278 = !DILocation(line: 96, column: 9, scope: !275)
!279 = !DILocalVariable(name: "_goodG2B_data_0", scope: !275, file: !1, line: 97, type: !59)
!280 = !DILocation(line: 97, column: 11, scope: !275)
!281 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !275, file: !1, line: 98, type: !82)
!282 = !DILocation(line: 98, column: 10, scope: !275)
!283 = !DILocation(line: 99, column: 23, scope: !275)
!284 = !DILocation(line: 99, column: 21, scope: !275)
!285 = !DILocation(line: 100, column: 23, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !1, line: 100, column: 5)
!287 = !DILocation(line: 100, column: 10, scope: !286)
!288 = !DILocation(line: 100, column: 28, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 100, column: 5)
!290 = !DILocation(line: 100, column: 41, scope: !289)
!291 = !DILocation(line: 100, column: 5, scope: !286)
!292 = !DILocation(line: 102, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 101, column: 5)
!294 = !DILocation(line: 102, column: 7, scope: !293)
!295 = !DILocation(line: 103, column: 5, scope: !293)
!296 = !DILocation(line: 100, column: 58, scope: !289)
!297 = !DILocation(line: 100, column: 5, scope: !289)
!298 = distinct !{!298, !291, !299, !220}
!299 = !DILocation(line: 103, column: 5, scope: !286)
!300 = !DILocation(line: 105, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !275, file: !1, line: 105, column: 5)
!302 = !DILocation(line: 105, column: 10, scope: !301)
!303 = !DILocation(line: 105, column: 28, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 105, column: 5)
!305 = !DILocation(line: 105, column: 41, scope: !304)
!306 = !DILocation(line: 105, column: 5, scope: !301)
!307 = !DILocalVariable(name: "_goodG2B_i_0", scope: !308, file: !1, line: 108, type: !70)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 107, column: 7)
!309 = distinct !DILexicalBlock(scope: !304, file: !1, line: 106, column: 5)
!310 = !DILocation(line: 108, column: 13, scope: !308)
!311 = !DILocalVariable(name: "_goodG2B_n_0", scope: !308, file: !1, line: 109, type: !70)
!312 = !DILocation(line: 109, column: 13, scope: !308)
!313 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !308, file: !1, line: 110, type: !70)
!314 = !DILocation(line: 110, column: 13, scope: !308)
!315 = !DILocation(line: 111, column: 20, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !1, line: 111, column: 13)
!317 = !DILocation(line: 111, column: 13, scope: !316)
!318 = !DILocation(line: 111, column: 58, scope: !316)
!319 = !DILocation(line: 111, column: 13, scope: !308)
!320 = !DILocation(line: 113, column: 34, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 112, column: 9)
!322 = !DILocation(line: 114, column: 11, scope: !321)
!323 = !DILocation(line: 114, column: 18, scope: !321)
!324 = !DILocation(line: 115, column: 24, scope: !321)
!325 = !DILocation(line: 115, column: 11, scope: !321)
!326 = !DILocation(line: 116, column: 9, scope: !321)
!327 = !DILocation(line: 119, column: 5, scope: !309)
!328 = !DILocation(line: 105, column: 58, scope: !304)
!329 = !DILocation(line: 105, column: 5, scope: !304)
!330 = distinct !{!330, !306, !331, !220}
!331 = !DILocation(line: 119, column: 5, scope: !301)
!332 = !DILabel(scope: !275, name: "goodG2B_label_", file: !1, line: 121)
!333 = !DILocation(line: 121, column: 5, scope: !275)
!334 = !DILocation(line: 126, column: 3, scope: !275)
!335 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17_good_label_", file: !1, line: 127)
!336 = !DILocation(line: 127, column: 3, scope: !64)
!337 = !DILocation(line: 132, column: 1, scope: !64)
