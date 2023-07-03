; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_04198CWE606_Unchecked_Loop_Condition__char_connect_socket_04379_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_04198CWE606_Unchecked_Loop_Condition__char_connect_socket_04379_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@STATIC_CONST_TRUE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@STATIC_CONST_FALSE = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_04198CWE606_Unchecked_Loop_Condition__char_connect_socket_04379_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_replace_0 = alloca i8*, align 8
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !83
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !84
  %tobool = icmp ne i32 %1, 0, !dbg !84
  br i1 %tobool, label %if.then, label %if.end31, !dbg !86

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !118, metadata !DIExpression()), !dbg !122
  %2 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !123
  %call = call i64 @strlen(i8* %2) #7, !dbg !124
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !126
  store i32 %call1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !128
  %3 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !129
  %cmp = icmp eq i32 %3, -1, !dbg !131
  br i1 %cmp, label %if.then2, label %if.end, !dbg !132

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call3, i32* %s_addr, align 4, !dbg !141
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !143
  store i16 %call4, i16* %sin_port, align 2, !dbg !144
  %5 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !145
  %6 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !147
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !148
  %cmp6 = icmp eq i32 %call5, -1, !dbg !149
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !150

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !153
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !154
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !156
  %10 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !157
  %sub = sub i64 100, %10, !dbg !158
  %sub9 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub9, !dbg !160
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call10 to i32, !dbg !161
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !162
  %11 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !163
  %cmp11 = icmp eq i32 %11, -1, !dbg !165
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !167
  %cmp13 = icmp eq i32 %12, 0, !dbg !168
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !169

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !170

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !172
  %14 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !173
  %15 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !174
  %conv17 = sext i32 %15 to i64, !dbg !174
  %div = udiv i64 %conv17, 1, !dbg !175
  %add = add i64 %14, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %16 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !178
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !179
  store i8* %call18, i8** %_goodB2G1_replace_0, align 8, !dbg !180
  %17 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !181
  %tobool19 = icmp ne i8* %17, null, !dbg !181
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !183

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !184
  store i8 0, i8* %18, align 1, !dbg !186
  br label %if.end21, !dbg !187

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !188
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !189
  store i8* %call22, i8** %_goodB2G1_replace_0, align 8, !dbg !190
  %20 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !191
  %tobool23 = icmp ne i8* %20, null, !dbg !191
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !193

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !194
  store i8 0, i8* %21, align 1, !dbg !196
  br label %if.end25, !dbg !197

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !199
  %cmp26 = icmp ne i32 %22, -1, !dbg !201
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !202

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !203
  %call29 = call i32 @close(i32 %23), !dbg !205
  br label %if.end30, !dbg !206

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !207

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !208
  %tobool32 = icmp ne i32 %24, 0, !dbg !208
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !210

if.then33:                                        ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !211
  br label %if.end46, !dbg !213

if.else:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !214, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !220, metadata !DIExpression()), !dbg !221
  %25 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !222
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #8, !dbg !224
  %cmp35 = icmp eq i32 %call34, 1, !dbg !225
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !226

if.then37:                                        ; preds = %if.else
  %26 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !227
  %cmp38 = icmp slt i32 %26, 10000, !dbg !230
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !231

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !232
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !234
  br label %for.cond, !dbg !236

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !237
  %28 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !239
  %cmp41 = icmp slt i32 %27, %28, !dbg !240
  br i1 %cmp41, label %for.body, label %for.end, !dbg !241

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !242
  %inc = add nsw i32 %29, 1, !dbg !242
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !242
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !245
  %inc43 = add nsw i32 %30, 1, !dbg !245
  store i32 %inc43, i32* %_goodB2G1_i_0, align 4, !dbg !245
  br label %for.cond, !dbg !246, !llvm.loop !247

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !250
  call void @printIntLine(i32 %31), !dbg !251
  br label %if.end44, !dbg !252

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !253

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  br label %goodB2G1_label_, !dbg !208

goodB2G1_label_:                                  ; preds = %if.end46
  call void @llvm.dbg.label(metadata !254), !dbg !255
  call void (...) @goodB2G2(), !dbg !256
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !260, metadata !DIExpression()), !dbg !261
  %32 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay47 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !262
  store i8* %arraydecay47, i8** %_goodG2B1_data_0, align 8, !dbg !263
  %33 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !264
  %tobool48 = icmp ne i32 %33, 0, !dbg !264
  br i1 %tobool48, label %if.then49, label %if.else50, !dbg !266

if.then49:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !267
  br label %if.end52, !dbg !269

if.else50:                                        ; preds = %goodB2G1_label_
  %34 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !270
  %call51 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !272
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  %35 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !273
  %tobool53 = icmp ne i32 %35, 0, !dbg !273
  br i1 %tobool53, label %if.then54, label %if.end60, !dbg !275

if.then54:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !276, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !282, metadata !DIExpression()), !dbg !283
  %36 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !284
  %call55 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2B1_n_0) #8, !dbg !286
  %cmp56 = icmp eq i32 %call55, 1, !dbg !287
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !288

if.then58:                                        ; preds = %if.then54
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !289
  %37 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !291
  %38 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !292
  call void %37(i32 %38), !dbg !291
  %39 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !293
  call void @printIntLine(i32 %39), !dbg !294
  br label %if.end59, !dbg !295

if.end59:                                         ; preds = %if.then58, %if.then54
  br label %if.end60, !dbg !296

if.end60:                                         ; preds = %if.end59, %if.end52
  br label %goodG2B1_label_, !dbg !273

goodG2B1_label_:                                  ; preds = %if.end60
  call void @llvm.dbg.label(metadata !297), !dbg !298
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good_label_, !dbg !299

CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !300), !dbg !301
  ret void, !dbg !302
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

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04198CWE606_Unchecked_Loop_Condition__char_connect_socket_04379_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_933/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04198CWE606_Unchecked_Loop_Condition__char_connect_socket_04379_1", scope: !1, file: !1, line: 5, type: !65, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !64, file: !1, line: 5, type: !59)
!73 = !DILocation(line: 5, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 5, type: !67)
!75 = !DILocation(line: 5, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !77, file: !1, line: 8, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 7, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 8, column: 10, scope: !77)
!82 = !DILocation(line: 9, column: 24, scope: !77)
!83 = !DILocation(line: 9, column: 22, scope: !77)
!84 = !DILocation(line: 10, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !1, line: 10, column: 9)
!86 = !DILocation(line: 10, column: 9, scope: !77)
!87 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !88, file: !1, line: 13, type: !70)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 12, column: 7)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 11, column: 5)
!90 = !DILocation(line: 13, column: 13, scope: !88)
!91 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !88, file: !1, line: 14, type: !92)
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
!113 = !DILocation(line: 14, column: 28, scope: !88)
!114 = !DILocalVariable(name: "_goodB2G1_replace_0", scope: !88, file: !1, line: 15, type: !59)
!115 = !DILocation(line: 15, column: 15, scope: !88)
!116 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !88, file: !1, line: 16, type: !70)
!117 = !DILocation(line: 16, column: 13, scope: !88)
!118 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !88, file: !1, line: 17, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 17, column: 16, scope: !88)
!123 = !DILocation(line: 17, column: 45, scope: !88)
!124 = !DILocation(line: 17, column: 38, scope: !88)
!125 = !DILocation(line: 18, column: 9, scope: !88)
!126 = !DILocation(line: 20, column: 39, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 19, column: 9)
!128 = !DILocation(line: 20, column: 37, scope: !127)
!129 = !DILocation(line: 21, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 21, column: 15)
!131 = !DILocation(line: 21, column: 41, scope: !130)
!132 = !DILocation(line: 21, column: 15, scope: !127)
!133 = !DILocation(line: 23, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 22, column: 11)
!135 = !DILocation(line: 26, column: 11, scope: !127)
!136 = !DILocation(line: 27, column: 31, scope: !127)
!137 = !DILocation(line: 27, column: 42, scope: !127)
!138 = !DILocation(line: 28, column: 49, scope: !127)
!139 = !DILocation(line: 28, column: 31, scope: !127)
!140 = !DILocation(line: 28, column: 40, scope: !127)
!141 = !DILocation(line: 28, column: 47, scope: !127)
!142 = !DILocation(line: 29, column: 42, scope: !127)
!143 = !DILocation(line: 29, column: 31, scope: !127)
!144 = !DILocation(line: 29, column: 40, scope: !127)
!145 = !DILocation(line: 30, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 30, column: 15)
!147 = !DILocation(line: 30, column: 50, scope: !146)
!148 = !DILocation(line: 30, column: 15, scope: !146)
!149 = !DILocation(line: 30, column: 123, scope: !146)
!150 = !DILocation(line: 30, column: 15, scope: !127)
!151 = !DILocation(line: 32, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 31, column: 11)
!153 = !DILocation(line: 35, column: 41, scope: !127)
!154 = !DILocation(line: 35, column: 78, scope: !127)
!155 = !DILocation(line: 35, column: 97, scope: !127)
!156 = !DILocation(line: 35, column: 95, scope: !127)
!157 = !DILocation(line: 35, column: 144, scope: !127)
!158 = !DILocation(line: 35, column: 142, scope: !127)
!159 = !DILocation(line: 35, column: 165, scope: !127)
!160 = !DILocation(line: 35, column: 134, scope: !127)
!161 = !DILocation(line: 35, column: 36, scope: !127)
!162 = !DILocation(line: 35, column: 34, scope: !127)
!163 = !DILocation(line: 36, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 36, column: 15)
!165 = !DILocation(line: 36, column: 39, scope: !164)
!166 = !DILocation(line: 36, column: 48, scope: !164)
!167 = !DILocation(line: 36, column: 52, scope: !164)
!168 = !DILocation(line: 36, column: 75, scope: !164)
!169 = !DILocation(line: 36, column: 15, scope: !127)
!170 = !DILocation(line: 38, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 37, column: 11)
!172 = !DILocation(line: 41, column: 11, scope: !127)
!173 = !DILocation(line: 41, column: 28, scope: !127)
!174 = !DILocation(line: 41, column: 51, scope: !127)
!175 = !DILocation(line: 41, column: 74, scope: !127)
!176 = !DILocation(line: 41, column: 48, scope: !127)
!177 = !DILocation(line: 41, column: 93, scope: !127)
!178 = !DILocation(line: 42, column: 40, scope: !127)
!179 = !DILocation(line: 42, column: 33, scope: !127)
!180 = !DILocation(line: 42, column: 31, scope: !127)
!181 = !DILocation(line: 43, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 43, column: 15)
!183 = !DILocation(line: 43, column: 15, scope: !127)
!184 = !DILocation(line: 45, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 44, column: 11)
!186 = !DILocation(line: 45, column: 34, scope: !185)
!187 = !DILocation(line: 46, column: 11, scope: !185)
!188 = !DILocation(line: 48, column: 40, scope: !127)
!189 = !DILocation(line: 48, column: 33, scope: !127)
!190 = !DILocation(line: 48, column: 31, scope: !127)
!191 = !DILocation(line: 49, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 49, column: 15)
!193 = !DILocation(line: 49, column: 15, scope: !127)
!194 = !DILocation(line: 51, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 50, column: 11)
!196 = !DILocation(line: 51, column: 34, scope: !195)
!197 = !DILocation(line: 52, column: 11, scope: !195)
!198 = !DILocation(line: 54, column: 9, scope: !127)
!199 = !DILocation(line: 56, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 56, column: 13)
!201 = !DILocation(line: 56, column: 39, scope: !200)
!202 = !DILocation(line: 56, column: 13, scope: !88)
!203 = !DILocation(line: 58, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 57, column: 9)
!205 = !DILocation(line: 58, column: 11, scope: !204)
!206 = !DILocation(line: 59, column: 9, scope: !204)
!207 = !DILocation(line: 62, column: 5, scope: !89)
!208 = !DILocation(line: 64, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !77, file: !1, line: 64, column: 9)
!210 = !DILocation(line: 64, column: 9, scope: !77)
!211 = !DILocation(line: 66, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 65, column: 5)
!213 = !DILocation(line: 67, column: 5, scope: !212)
!214 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !215, file: !1, line: 71, type: !70)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 70, column: 7)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 69, column: 5)
!217 = !DILocation(line: 71, column: 13, scope: !215)
!218 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !215, file: !1, line: 72, type: !70)
!219 = !DILocation(line: 72, column: 13, scope: !215)
!220 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !215, file: !1, line: 73, type: !70)
!221 = !DILocation(line: 73, column: 13, scope: !215)
!222 = !DILocation(line: 74, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !1, line: 74, column: 13)
!224 = !DILocation(line: 74, column: 13, scope: !223)
!225 = !DILocation(line: 74, column: 60, scope: !223)
!226 = !DILocation(line: 74, column: 13, scope: !215)
!227 = !DILocation(line: 76, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 76, column: 15)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 75, column: 9)
!230 = !DILocation(line: 76, column: 29, scope: !228)
!231 = !DILocation(line: 76, column: 15, scope: !229)
!232 = !DILocation(line: 78, column: 37, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 77, column: 11)
!234 = !DILocation(line: 79, column: 32, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !1, line: 79, column: 13)
!236 = !DILocation(line: 79, column: 18, scope: !235)
!237 = !DILocation(line: 79, column: 37, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 79, column: 13)
!239 = !DILocation(line: 79, column: 53, scope: !238)
!240 = !DILocation(line: 79, column: 51, scope: !238)
!241 = !DILocation(line: 79, column: 13, scope: !235)
!242 = !DILocation(line: 81, column: 38, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 80, column: 13)
!244 = !DILocation(line: 82, column: 13, scope: !243)
!245 = !DILocation(line: 79, column: 81, scope: !238)
!246 = !DILocation(line: 79, column: 13, scope: !238)
!247 = distinct !{!247, !241, !248, !249}
!248 = !DILocation(line: 82, column: 13, scope: !235)
!249 = !{!"llvm.loop.mustprogress"}
!250 = !DILocation(line: 84, column: 26, scope: !233)
!251 = !DILocation(line: 84, column: 13, scope: !233)
!252 = !DILocation(line: 85, column: 11, scope: !233)
!253 = !DILocation(line: 87, column: 9, scope: !229)
!254 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 92)
!255 = !DILocation(line: 92, column: 5, scope: !77)
!256 = !DILocation(line: 98, column: 3, scope: !64)
!257 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !258, file: !1, line: 100, type: !59)
!258 = distinct !DILexicalBlock(scope: !64, file: !1, line: 99, column: 3)
!259 = !DILocation(line: 100, column: 11, scope: !258)
!260 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !258, file: !1, line: 101, type: !78)
!261 = !DILocation(line: 101, column: 10, scope: !258)
!262 = !DILocation(line: 102, column: 24, scope: !258)
!263 = !DILocation(line: 102, column: 22, scope: !258)
!264 = !DILocation(line: 103, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !1, line: 103, column: 9)
!266 = !DILocation(line: 103, column: 9, scope: !258)
!267 = !DILocation(line: 105, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 104, column: 5)
!269 = !DILocation(line: 106, column: 5, scope: !268)
!270 = !DILocation(line: 109, column: 14, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !1, line: 108, column: 5)
!272 = !DILocation(line: 109, column: 7, scope: !271)
!273 = !DILocation(line: 112, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !1, line: 112, column: 9)
!275 = !DILocation(line: 112, column: 9, scope: !258)
!276 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !277, file: !1, line: 115, type: !70)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 114, column: 7)
!278 = distinct !DILexicalBlock(scope: !274, file: !1, line: 113, column: 5)
!279 = !DILocation(line: 115, column: 13, scope: !277)
!280 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !277, file: !1, line: 116, type: !70)
!281 = !DILocation(line: 116, column: 13, scope: !277)
!282 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !277, file: !1, line: 117, type: !70)
!283 = !DILocation(line: 117, column: 13, scope: !277)
!284 = !DILocation(line: 118, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !277, file: !1, line: 118, column: 13)
!286 = !DILocation(line: 118, column: 13, scope: !285)
!287 = !DILocation(line: 118, column: 60, scope: !285)
!288 = !DILocation(line: 118, column: 13, scope: !277)
!289 = !DILocation(line: 120, column: 35, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 119, column: 9)
!291 = !DILocation(line: 121, column: 11, scope: !290)
!292 = !DILocation(line: 121, column: 18, scope: !290)
!293 = !DILocation(line: 122, column: 24, scope: !290)
!294 = !DILocation(line: 122, column: 11, scope: !290)
!295 = !DILocation(line: 123, column: 9, scope: !290)
!296 = !DILocation(line: 126, column: 5, scope: !278)
!297 = !DILabel(scope: !258, name: "goodG2B1_label_", file: !1, line: 128)
!298 = !DILocation(line: 128, column: 5, scope: !258)
!299 = !DILocation(line: 133, column: 3, scope: !258)
!300 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_04_good_label_", file: !1, line: 134)
!301 = !DILocation(line: 134, column: 3, scope: !64)
!302 = !DILocation(line: 139, column: 1, scope: !64)
