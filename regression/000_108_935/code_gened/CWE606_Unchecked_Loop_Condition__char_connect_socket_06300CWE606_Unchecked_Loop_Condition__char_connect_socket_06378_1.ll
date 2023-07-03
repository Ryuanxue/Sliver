; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_06300CWE606_Unchecked_Loop_Condition__char_connect_socket_06378_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_06300CWE606_Unchecked_Loop_Condition__char_connect_socket_06378_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@STATIC_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_06300CWE606_Unchecked_Loop_Condition__char_connect_socket_06378_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_replace_0 = alloca i8*, align 8
  %_goodB2G2_connectSocket_0 = alloca i32, align 4
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !83
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !84
  %cmp = icmp eq i32 %1, 5, !dbg !86
  br i1 %cmp, label %if.then, label %if.end31, !dbg !87

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !92, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_replace_0, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_connectSocket_0, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !119, metadata !DIExpression()), !dbg !123
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !124
  %call = call i64 @strlen(i8* %2) #7, !dbg !125
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !123
  br label %do.body, !dbg !126

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !127
  store i32 %call1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !129
  %3 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !130
  %cmp2 = icmp eq i32 %3, -1, !dbg !132
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !133

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !134

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !136
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !137
  store i16 2, i16* %sin_family, align 4, !dbg !138
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !139
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !140
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !141
  store i32 %call4, i32* %s_addr, align 4, !dbg !142
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !143
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !144
  store i16 %call5, i16* %sin_port, align 2, !dbg !145
  %5 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !146
  %6 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !148
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !149
  %cmp7 = icmp eq i32 %call6, -1, !dbg !150
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !151

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !152

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !154
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !155
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !157
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !158
  %sub = sub i64 100, %10, !dbg !159
  %sub10 = sub i64 %sub, 1, !dbg !160
  %mul = mul i64 1, %sub10, !dbg !161
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !162
  %conv = trunc i64 %call11 to i32, !dbg !162
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !163
  %11 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !164
  %cmp12 = icmp eq i32 %11, -1, !dbg !166
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !167

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !168
  %cmp14 = icmp eq i32 %12, 0, !dbg !169
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !170

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !171

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !173
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !174
  %15 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !175
  %conv18 = sext i32 %15 to i64, !dbg !175
  %div = udiv i64 %conv18, 1, !dbg !176
  %add = add i64 %14, %div, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !173
  store i8 0, i8* %arrayidx, align 1, !dbg !178
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !179
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !180
  store i8* %call19, i8** %_goodB2G2_replace_0, align 8, !dbg !181
  %17 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !182
  %tobool = icmp ne i8* %17, null, !dbg !182
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !184

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !185
  store i8 0, i8* %18, align 1, !dbg !187
  br label %if.end21, !dbg !188

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !189
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !190
  store i8* %call22, i8** %_goodB2G2_replace_0, align 8, !dbg !191
  %20 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !192
  %tobool23 = icmp ne i8* %20, null, !dbg !192
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !194

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !195
  store i8 0, i8* %21, align 1, !dbg !197
  br label %if.end25, !dbg !198

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !199

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !200
  %cmp26 = icmp ne i32 %22, -1, !dbg !202
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !203

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !204
  %call29 = call i32 @close(i32 %23), !dbg !206
  br label %if.end30, !dbg !207

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !208

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !209
  %cmp32 = icmp eq i32 %24, 5, !dbg !211
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !212

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !219, metadata !DIExpression()), !dbg !220
  %25 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !221
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #8, !dbg !223
  %cmp36 = icmp eq i32 %call35, 1, !dbg !224
  br i1 %cmp36, label %if.then38, label %if.end46, !dbg !225

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !226
  %cmp39 = icmp slt i32 %26, 10000, !dbg !229
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !230

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !231
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.then41
  %27 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !236
  %28 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !238
  %cmp42 = icmp slt i32 %27, %28, !dbg !239
  br i1 %cmp42, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !241
  %inc = add nsw i32 %29, 1, !dbg !241
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !241
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !244
  %inc44 = add nsw i32 %30, 1, !dbg !244
  store i32 %inc44, i32* %_goodB2G2_i_0, align 4, !dbg !244
  br label %for.cond, !dbg !245, !llvm.loop !246

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !249
  call void @printIntLine(i32 %31), !dbg !250
  br label %if.end45, !dbg !251

if.end45:                                         ; preds = %for.end, %if.then38
  br label %if.end46, !dbg !252

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47, !dbg !253

if.end47:                                         ; preds = %if.end46, %if.end31
  br label %goodB2G2_label_, !dbg !254

goodB2G2_label_:                                  ; preds = %if.end47
  call void @llvm.dbg.label(metadata !255), !dbg !256
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !260, metadata !DIExpression()), !dbg !261
  %32 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay48 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !262
  store i8* %arraydecay48, i8** %_goodG2B1_data_0, align 8, !dbg !263
  %33 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !264
  %cmp49 = icmp ne i32 %33, 5, !dbg !266
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !267

if.then51:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !268
  br label %if.end53, !dbg !270

if.else:                                          ; preds = %goodB2G2_label_
  %34 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !271
  %call52 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !273
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then51
  %35 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !274
  %cmp54 = icmp eq i32 %35, 5, !dbg !276
  br i1 %cmp54, label %if.then56, label %if.end62, !dbg !277

if.then56:                                        ; preds = %if.end53
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !284, metadata !DIExpression()), !dbg !285
  %36 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !286
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #8, !dbg !288
  %cmp58 = icmp eq i32 %call57, 1, !dbg !289
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !290

if.then60:                                        ; preds = %if.then56
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !291
  %37 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !293
  %38 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !294
  call void %37(i32 %38), !dbg !293
  %39 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !295
  call void @printIntLine(i32 %39), !dbg !296
  br label %if.end61, !dbg !297

if.end61:                                         ; preds = %if.then60, %if.then56
  br label %if.end62, !dbg !298

if.end62:                                         ; preds = %if.end61, %if.end53
  br label %goodG2B1_label_, !dbg !299

goodG2B1_label_:                                  ; preds = %if.end62
  call void @llvm.dbg.label(metadata !300), !dbg !301
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_06_good_label_, !dbg !302

CWE606_Unchecked_Loop_Condition__char_connect_socket_06_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !303), !dbg !304
  ret void, !dbg !305
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

declare dso_local void @printLine(i8*) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06300CWE606_Unchecked_Loop_Condition__char_connect_socket_06378_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_935/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06300CWE606_Unchecked_Loop_Condition__char_connect_socket_06378_1", scope: !1, file: !1, line: 4, type: !65, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !64, file: !1, line: 4, type: !59)
!73 = !DILocation(line: 4, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 4, type: !67)
!75 = !DILocation(line: 4, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !77, file: !1, line: 7, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 6, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 7, column: 10, scope: !77)
!82 = !DILocation(line: 8, column: 24, scope: !77)
!83 = !DILocation(line: 8, column: 22, scope: !77)
!84 = !DILocation(line: 9, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !1, line: 9, column: 9)
!86 = !DILocation(line: 9, column: 27, scope: !85)
!87 = !DILocation(line: 9, column: 9, scope: !77)
!88 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !89, file: !1, line: 12, type: !70)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 11, column: 7)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 10, column: 5)
!91 = !DILocation(line: 12, column: 13, scope: !89)
!92 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !89, file: !1, line: 13, type: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !94)
!94 = !{!95, !96, !102, !109}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !93, file: !17, line: 240, baseType: !51, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !93, file: !17, line: 241, baseType: !97, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 25, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !101, line: 40, baseType: !53)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !93, file: !17, line: 242, baseType: !103, size: 32, offset: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !103, file: !17, line: 33, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 26, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !101, line: 42, baseType: !5)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !93, file: !17, line: 245, baseType: !110, size: 64, offset: 64)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !112)
!111 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DILocation(line: 13, column: 28, scope: !89)
!115 = !DILocalVariable(name: "_goodB2G2_replace_0", scope: !89, file: !1, line: 14, type: !59)
!116 = !DILocation(line: 14, column: 15, scope: !89)
!117 = !DILocalVariable(name: "_goodB2G2_connectSocket_0", scope: !89, file: !1, line: 15, type: !70)
!118 = !DILocation(line: 15, column: 13, scope: !89)
!119 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !89, file: !1, line: 16, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DILocation(line: 16, column: 16, scope: !89)
!124 = !DILocation(line: 16, column: 45, scope: !89)
!125 = !DILocation(line: 16, column: 38, scope: !89)
!126 = !DILocation(line: 17, column: 9, scope: !89)
!127 = !DILocation(line: 19, column: 39, scope: !128)
!128 = distinct !DILexicalBlock(scope: !89, file: !1, line: 18, column: 9)
!129 = !DILocation(line: 19, column: 37, scope: !128)
!130 = !DILocation(line: 20, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 20, column: 15)
!132 = !DILocation(line: 20, column: 41, scope: !131)
!133 = !DILocation(line: 20, column: 15, scope: !128)
!134 = !DILocation(line: 22, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 21, column: 11)
!136 = !DILocation(line: 25, column: 11, scope: !128)
!137 = !DILocation(line: 26, column: 31, scope: !128)
!138 = !DILocation(line: 26, column: 42, scope: !128)
!139 = !DILocation(line: 27, column: 49, scope: !128)
!140 = !DILocation(line: 27, column: 31, scope: !128)
!141 = !DILocation(line: 27, column: 40, scope: !128)
!142 = !DILocation(line: 27, column: 47, scope: !128)
!143 = !DILocation(line: 28, column: 42, scope: !128)
!144 = !DILocation(line: 28, column: 31, scope: !128)
!145 = !DILocation(line: 28, column: 40, scope: !128)
!146 = !DILocation(line: 29, column: 23, scope: !147)
!147 = distinct !DILexicalBlock(scope: !128, file: !1, line: 29, column: 15)
!148 = !DILocation(line: 29, column: 50, scope: !147)
!149 = !DILocation(line: 29, column: 15, scope: !147)
!150 = !DILocation(line: 29, column: 123, scope: !147)
!151 = !DILocation(line: 29, column: 15, scope: !128)
!152 = !DILocation(line: 31, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !1, line: 30, column: 11)
!154 = !DILocation(line: 34, column: 41, scope: !128)
!155 = !DILocation(line: 34, column: 78, scope: !128)
!156 = !DILocation(line: 34, column: 97, scope: !128)
!157 = !DILocation(line: 34, column: 95, scope: !128)
!158 = !DILocation(line: 34, column: 144, scope: !128)
!159 = !DILocation(line: 34, column: 142, scope: !128)
!160 = !DILocation(line: 34, column: 165, scope: !128)
!161 = !DILocation(line: 34, column: 134, scope: !128)
!162 = !DILocation(line: 34, column: 36, scope: !128)
!163 = !DILocation(line: 34, column: 34, scope: !128)
!164 = !DILocation(line: 35, column: 16, scope: !165)
!165 = distinct !DILexicalBlock(scope: !128, file: !1, line: 35, column: 15)
!166 = !DILocation(line: 35, column: 39, scope: !165)
!167 = !DILocation(line: 35, column: 48, scope: !165)
!168 = !DILocation(line: 35, column: 52, scope: !165)
!169 = !DILocation(line: 35, column: 75, scope: !165)
!170 = !DILocation(line: 35, column: 15, scope: !128)
!171 = !DILocation(line: 37, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !1, line: 36, column: 11)
!173 = !DILocation(line: 40, column: 11, scope: !128)
!174 = !DILocation(line: 40, column: 28, scope: !128)
!175 = !DILocation(line: 40, column: 51, scope: !128)
!176 = !DILocation(line: 40, column: 74, scope: !128)
!177 = !DILocation(line: 40, column: 48, scope: !128)
!178 = !DILocation(line: 40, column: 93, scope: !128)
!179 = !DILocation(line: 41, column: 40, scope: !128)
!180 = !DILocation(line: 41, column: 33, scope: !128)
!181 = !DILocation(line: 41, column: 31, scope: !128)
!182 = !DILocation(line: 42, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !128, file: !1, line: 42, column: 15)
!184 = !DILocation(line: 42, column: 15, scope: !128)
!185 = !DILocation(line: 44, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 43, column: 11)
!187 = !DILocation(line: 44, column: 34, scope: !186)
!188 = !DILocation(line: 45, column: 11, scope: !186)
!189 = !DILocation(line: 47, column: 40, scope: !128)
!190 = !DILocation(line: 47, column: 33, scope: !128)
!191 = !DILocation(line: 47, column: 31, scope: !128)
!192 = !DILocation(line: 48, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !128, file: !1, line: 48, column: 15)
!194 = !DILocation(line: 48, column: 15, scope: !128)
!195 = !DILocation(line: 50, column: 14, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 49, column: 11)
!197 = !DILocation(line: 50, column: 34, scope: !196)
!198 = !DILocation(line: 51, column: 11, scope: !196)
!199 = !DILocation(line: 53, column: 9, scope: !128)
!200 = !DILocation(line: 55, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !89, file: !1, line: 55, column: 13)
!202 = !DILocation(line: 55, column: 39, scope: !201)
!203 = !DILocation(line: 55, column: 13, scope: !89)
!204 = !DILocation(line: 57, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 56, column: 9)
!206 = !DILocation(line: 57, column: 11, scope: !205)
!207 = !DILocation(line: 58, column: 9, scope: !205)
!208 = !DILocation(line: 61, column: 5, scope: !90)
!209 = !DILocation(line: 63, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !77, file: !1, line: 63, column: 9)
!211 = !DILocation(line: 63, column: 27, scope: !210)
!212 = !DILocation(line: 63, column: 9, scope: !77)
!213 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !214, file: !1, line: 66, type: !70)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 65, column: 7)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 64, column: 5)
!216 = !DILocation(line: 66, column: 13, scope: !214)
!217 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !214, file: !1, line: 67, type: !70)
!218 = !DILocation(line: 67, column: 13, scope: !214)
!219 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !214, file: !1, line: 68, type: !70)
!220 = !DILocation(line: 68, column: 13, scope: !214)
!221 = !DILocation(line: 69, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !1, line: 69, column: 13)
!223 = !DILocation(line: 69, column: 13, scope: !222)
!224 = !DILocation(line: 69, column: 60, scope: !222)
!225 = !DILocation(line: 69, column: 13, scope: !214)
!226 = !DILocation(line: 71, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 71, column: 15)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 70, column: 9)
!229 = !DILocation(line: 71, column: 29, scope: !227)
!230 = !DILocation(line: 71, column: 15, scope: !228)
!231 = !DILocation(line: 73, column: 37, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 72, column: 11)
!233 = !DILocation(line: 74, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !1, line: 74, column: 13)
!235 = !DILocation(line: 74, column: 18, scope: !234)
!236 = !DILocation(line: 74, column: 37, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 74, column: 13)
!238 = !DILocation(line: 74, column: 53, scope: !237)
!239 = !DILocation(line: 74, column: 51, scope: !237)
!240 = !DILocation(line: 74, column: 13, scope: !234)
!241 = !DILocation(line: 76, column: 38, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 75, column: 13)
!243 = !DILocation(line: 77, column: 13, scope: !242)
!244 = !DILocation(line: 74, column: 81, scope: !237)
!245 = !DILocation(line: 74, column: 13, scope: !237)
!246 = distinct !{!246, !240, !247, !248}
!247 = !DILocation(line: 77, column: 13, scope: !234)
!248 = !{!"llvm.loop.mustprogress"}
!249 = !DILocation(line: 79, column: 26, scope: !232)
!250 = !DILocation(line: 79, column: 13, scope: !232)
!251 = !DILocation(line: 80, column: 11, scope: !232)
!252 = !DILocation(line: 82, column: 9, scope: !228)
!253 = !DILocation(line: 85, column: 5, scope: !215)
!254 = !DILocation(line: 63, column: 30, scope: !210)
!255 = !DILabel(scope: !77, name: "goodB2G2_label_", file: !1, line: 87)
!256 = !DILocation(line: 87, column: 5, scope: !77)
!257 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !258, file: !1, line: 94, type: !59)
!258 = distinct !DILexicalBlock(scope: !64, file: !1, line: 93, column: 3)
!259 = !DILocation(line: 94, column: 11, scope: !258)
!260 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !258, file: !1, line: 95, type: !78)
!261 = !DILocation(line: 95, column: 10, scope: !258)
!262 = !DILocation(line: 96, column: 24, scope: !258)
!263 = !DILocation(line: 96, column: 22, scope: !258)
!264 = !DILocation(line: 97, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !1, line: 97, column: 9)
!266 = !DILocation(line: 97, column: 27, scope: !265)
!267 = !DILocation(line: 97, column: 9, scope: !258)
!268 = !DILocation(line: 99, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 98, column: 5)
!270 = !DILocation(line: 100, column: 5, scope: !269)
!271 = !DILocation(line: 103, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 102, column: 5)
!273 = !DILocation(line: 103, column: 7, scope: !272)
!274 = !DILocation(line: 106, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !258, file: !1, line: 106, column: 9)
!276 = !DILocation(line: 106, column: 27, scope: !275)
!277 = !DILocation(line: 106, column: 9, scope: !258)
!278 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !279, file: !1, line: 109, type: !70)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 108, column: 7)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 107, column: 5)
!281 = !DILocation(line: 109, column: 13, scope: !279)
!282 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !279, file: !1, line: 110, type: !70)
!283 = !DILocation(line: 110, column: 13, scope: !279)
!284 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !279, file: !1, line: 111, type: !70)
!285 = !DILocation(line: 111, column: 13, scope: !279)
!286 = !DILocation(line: 112, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !1, line: 112, column: 13)
!288 = !DILocation(line: 112, column: 13, scope: !287)
!289 = !DILocation(line: 112, column: 60, scope: !287)
!290 = !DILocation(line: 112, column: 13, scope: !279)
!291 = !DILocation(line: 114, column: 35, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 113, column: 9)
!293 = !DILocation(line: 115, column: 11, scope: !292)
!294 = !DILocation(line: 115, column: 18, scope: !292)
!295 = !DILocation(line: 116, column: 24, scope: !292)
!296 = !DILocation(line: 116, column: 11, scope: !292)
!297 = !DILocation(line: 117, column: 9, scope: !292)
!298 = !DILocation(line: 120, column: 5, scope: !280)
!299 = !DILocation(line: 106, column: 30, scope: !275)
!300 = !DILabel(scope: !258, name: "goodG2B1_label_", file: !1, line: 122)
!301 = !DILocation(line: 122, column: 5, scope: !258)
!302 = !DILocation(line: 127, column: 3, scope: !258)
!303 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_06_good_label_", file: !1, line: 128)
!304 = !DILocation(line: 128, column: 3, scope: !64)
!305 = !DILocation(line: 133, column: 1, scope: !64)
