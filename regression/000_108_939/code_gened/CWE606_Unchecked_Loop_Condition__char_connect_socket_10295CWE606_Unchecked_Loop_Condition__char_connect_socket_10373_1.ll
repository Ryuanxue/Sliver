; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_10295CWE606_Unchecked_Loop_Condition__char_connect_socket_10373_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_10295CWE606_Unchecked_Loop_Condition__char_connect_socket_10373_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_10295CWE606_Unchecked_Loop_Condition__char_connect_socket_10373_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !64 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !84
  %tobool = icmp ne i32 %1, 0, !dbg !84
  br i1 %tobool, label %if.then, label %if.end31, !dbg !86

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_connectSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !118, metadata !DIExpression()), !dbg !122
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !123
  %call = call i64 @strlen(i8* %2) #7, !dbg !124
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !126
  store i32 %call1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !128
  %3 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !129
  %cmp = icmp eq i32 %3, -1, !dbg !131
  br i1 %cmp, label %if.then2, label %if.end, !dbg !132

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call3, i32* %s_addr, align 4, !dbg !141
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !143
  store i16 %call4, i16* %sin_port, align 2, !dbg !144
  %5 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !145
  %6 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !147
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !148
  %cmp6 = icmp eq i32 %call5, -1, !dbg !149
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !150

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !153
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !154
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !156
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !157
  %sub = sub i64 100, %10, !dbg !158
  %sub9 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub9, !dbg !160
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call10 to i32, !dbg !161
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !162
  %11 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !163
  %cmp11 = icmp eq i32 %11, -1, !dbg !165
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !167
  %cmp13 = icmp eq i32 %12, 0, !dbg !168
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !169

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !170

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !172
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !173
  %15 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !174
  %conv17 = sext i32 %15 to i64, !dbg !174
  %div = udiv i64 %conv17, 1, !dbg !175
  %add = add i64 %14, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !178
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !179
  store i8* %call18, i8** %_goodB2G2_replace_0, align 8, !dbg !180
  %17 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !181
  %tobool19 = icmp ne i8* %17, null, !dbg !181
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !183

if.then20:                                        ; preds = %if.end16
  %18 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !184
  store i8 0, i8* %18, align 1, !dbg !186
  br label %if.end21, !dbg !187

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !188
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !189
  store i8* %call22, i8** %_goodB2G2_replace_0, align 8, !dbg !190
  %20 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !191
  %tobool23 = icmp ne i8* %20, null, !dbg !191
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !193

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !194
  store i8 0, i8* %21, align 1, !dbg !196
  br label %if.end25, !dbg !197

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end25, %if.then15, %if.then7, %if.then2
  %22 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !199
  %cmp26 = icmp ne i32 %22, -1, !dbg !201
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !202

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !203
  %call29 = call i32 @close(i32 %23), !dbg !205
  br label %if.end30, !dbg !206

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !207

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalTrue, align 4, !dbg !208
  %tobool32 = icmp ne i32 %24, 0, !dbg !208
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !210

if.then33:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !217, metadata !DIExpression()), !dbg !218
  %25 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !219
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #8, !dbg !221
  %cmp35 = icmp eq i32 %call34, 1, !dbg !222
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !223

if.then37:                                        ; preds = %if.then33
  %26 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !224
  %cmp38 = icmp slt i32 %26, 10000, !dbg !227
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !228

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !229
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !231
  br label %for.cond, !dbg !233

for.cond:                                         ; preds = %for.inc, %if.then40
  %27 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !234
  %28 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !236
  %cmp41 = icmp slt i32 %27, %28, !dbg !237
  br i1 %cmp41, label %for.body, label %for.end, !dbg !238

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !239
  %inc = add nsw i32 %29, 1, !dbg !239
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !239
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !242
  %inc43 = add nsw i32 %30, 1, !dbg !242
  store i32 %inc43, i32* %_goodB2G2_i_0, align 4, !dbg !242
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !247
  call void @printIntLine(i32 %31), !dbg !248
  br label %if.end44, !dbg !249

if.end44:                                         ; preds = %for.end, %if.then37
  br label %if.end45, !dbg !250

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end46, !dbg !251

if.end46:                                         ; preds = %if.end45, %if.end31
  br label %goodB2G2_label_, !dbg !208

goodB2G2_label_:                                  ; preds = %if.end46
  call void @llvm.dbg.label(metadata !252), !dbg !253
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !254, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !257, metadata !DIExpression()), !dbg !258
  %32 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 100, i1 false), !dbg !258
  %arraydecay47 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !259
  store i8* %arraydecay47, i8** %_goodG2B1_data_0, align 8, !dbg !260
  %33 = load i32, i32* @globalFalse, align 4, !dbg !261
  %tobool48 = icmp ne i32 %33, 0, !dbg !261
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !263

if.then49:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !264
  br label %if.end51, !dbg !266

if.else:                                          ; preds = %goodB2G2_label_
  %34 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !267
  %call50 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !269
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %35 = load i32, i32* @globalTrue, align 4, !dbg !270
  %tobool52 = icmp ne i32 %35, 0, !dbg !270
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !272

if.then53:                                        ; preds = %if.end51
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !279, metadata !DIExpression()), !dbg !280
  %36 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !281
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #8, !dbg !283
  %cmp55 = icmp eq i32 %call54, 1, !dbg !284
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !285

if.then57:                                        ; preds = %if.then53
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !286
  %37 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !288
  %38 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !289
  call void %37(i32 %38), !dbg !288
  %39 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !290
  call void @printIntLine(i32 %39), !dbg !291
  br label %if.end58, !dbg !292

if.end58:                                         ; preds = %if.then57, %if.then53
  br label %if.end59, !dbg !293

if.end59:                                         ; preds = %if.end58, %if.end51
  br label %goodG2B1_label_, !dbg !270

goodG2B1_label_:                                  ; preds = %if.end59
  call void @llvm.dbg.label(metadata !294), !dbg !295
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_10_good_label_, !dbg !296

CWE606_Unchecked_Loop_Condition__char_connect_socket_10_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !297), !dbg !298
  ret void, !dbg !299
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10295CWE606_Unchecked_Loop_Condition__char_connect_socket_10373_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_939/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10295CWE606_Unchecked_Loop_Condition__char_connect_socket_10373_1", scope: !1, file: !1, line: 5, type: !65, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !64, file: !1, line: 5, type: !59)
!73 = !DILocation(line: 5, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 5, type: !67)
!75 = !DILocation(line: 5, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !77, file: !1, line: 8, type: !78)
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
!87 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !88, file: !1, line: 13, type: !70)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 12, column: 7)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 11, column: 5)
!90 = !DILocation(line: 13, column: 13, scope: !88)
!91 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !88, file: !1, line: 14, type: !92)
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
!114 = !DILocalVariable(name: "_goodB2G2_replace_0", scope: !88, file: !1, line: 15, type: !59)
!115 = !DILocation(line: 15, column: 15, scope: !88)
!116 = !DILocalVariable(name: "_goodB2G2_connectSocket_0", scope: !88, file: !1, line: 16, type: !70)
!117 = !DILocation(line: 16, column: 13, scope: !88)
!118 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !88, file: !1, line: 17, type: !119)
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
!211 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !212, file: !1, line: 67, type: !70)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 66, column: 7)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 65, column: 5)
!214 = !DILocation(line: 67, column: 13, scope: !212)
!215 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !212, file: !1, line: 68, type: !70)
!216 = !DILocation(line: 68, column: 13, scope: !212)
!217 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !212, file: !1, line: 69, type: !70)
!218 = !DILocation(line: 69, column: 13, scope: !212)
!219 = !DILocation(line: 70, column: 20, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !1, line: 70, column: 13)
!221 = !DILocation(line: 70, column: 13, scope: !220)
!222 = !DILocation(line: 70, column: 60, scope: !220)
!223 = !DILocation(line: 70, column: 13, scope: !212)
!224 = !DILocation(line: 72, column: 15, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 72, column: 15)
!226 = distinct !DILexicalBlock(scope: !220, file: !1, line: 71, column: 9)
!227 = !DILocation(line: 72, column: 29, scope: !225)
!228 = !DILocation(line: 72, column: 15, scope: !226)
!229 = !DILocation(line: 74, column: 37, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 73, column: 11)
!231 = !DILocation(line: 75, column: 32, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !1, line: 75, column: 13)
!233 = !DILocation(line: 75, column: 18, scope: !232)
!234 = !DILocation(line: 75, column: 37, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 75, column: 13)
!236 = !DILocation(line: 75, column: 53, scope: !235)
!237 = !DILocation(line: 75, column: 51, scope: !235)
!238 = !DILocation(line: 75, column: 13, scope: !232)
!239 = !DILocation(line: 77, column: 38, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 76, column: 13)
!241 = !DILocation(line: 78, column: 13, scope: !240)
!242 = !DILocation(line: 75, column: 81, scope: !235)
!243 = !DILocation(line: 75, column: 13, scope: !235)
!244 = distinct !{!244, !238, !245, !246}
!245 = !DILocation(line: 78, column: 13, scope: !232)
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocation(line: 80, column: 26, scope: !230)
!248 = !DILocation(line: 80, column: 13, scope: !230)
!249 = !DILocation(line: 81, column: 11, scope: !230)
!250 = !DILocation(line: 83, column: 9, scope: !226)
!251 = !DILocation(line: 86, column: 5, scope: !213)
!252 = !DILabel(scope: !77, name: "goodB2G2_label_", file: !1, line: 88)
!253 = !DILocation(line: 88, column: 5, scope: !77)
!254 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !255, file: !1, line: 95, type: !59)
!255 = distinct !DILexicalBlock(scope: !64, file: !1, line: 94, column: 3)
!256 = !DILocation(line: 95, column: 11, scope: !255)
!257 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !255, file: !1, line: 96, type: !78)
!258 = !DILocation(line: 96, column: 10, scope: !255)
!259 = !DILocation(line: 97, column: 24, scope: !255)
!260 = !DILocation(line: 97, column: 22, scope: !255)
!261 = !DILocation(line: 98, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !1, line: 98, column: 9)
!263 = !DILocation(line: 98, column: 9, scope: !255)
!264 = !DILocation(line: 100, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 99, column: 5)
!266 = !DILocation(line: 101, column: 5, scope: !265)
!267 = !DILocation(line: 104, column: 14, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !1, line: 103, column: 5)
!269 = !DILocation(line: 104, column: 7, scope: !268)
!270 = !DILocation(line: 107, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !255, file: !1, line: 107, column: 9)
!272 = !DILocation(line: 107, column: 9, scope: !255)
!273 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !274, file: !1, line: 110, type: !70)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 109, column: 7)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 108, column: 5)
!276 = !DILocation(line: 110, column: 13, scope: !274)
!277 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !274, file: !1, line: 111, type: !70)
!278 = !DILocation(line: 111, column: 13, scope: !274)
!279 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !274, file: !1, line: 112, type: !70)
!280 = !DILocation(line: 112, column: 13, scope: !274)
!281 = !DILocation(line: 113, column: 20, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !1, line: 113, column: 13)
!283 = !DILocation(line: 113, column: 13, scope: !282)
!284 = !DILocation(line: 113, column: 60, scope: !282)
!285 = !DILocation(line: 113, column: 13, scope: !274)
!286 = !DILocation(line: 115, column: 35, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !1, line: 114, column: 9)
!288 = !DILocation(line: 116, column: 11, scope: !287)
!289 = !DILocation(line: 116, column: 18, scope: !287)
!290 = !DILocation(line: 117, column: 24, scope: !287)
!291 = !DILocation(line: 117, column: 11, scope: !287)
!292 = !DILocation(line: 118, column: 9, scope: !287)
!293 = !DILocation(line: 121, column: 5, scope: !275)
!294 = !DILabel(scope: !255, name: "goodG2B1_label_", file: !1, line: 123)
!295 = !DILocation(line: 123, column: 5, scope: !255)
!296 = !DILocation(line: 128, column: 3, scope: !255)
!297 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_10_good_label_", file: !1, line: 129)
!298 = !DILocation(line: 129, column: 3, scope: !64)
!299 = !DILocation(line: 134, column: 1, scope: !64)
