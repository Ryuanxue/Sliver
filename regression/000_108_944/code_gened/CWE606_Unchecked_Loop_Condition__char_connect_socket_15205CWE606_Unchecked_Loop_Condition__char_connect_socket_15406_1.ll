; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_15205CWE606_Unchecked_Loop_Condition__char_connect_socket_15406_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_15205CWE606_Unchecked_Loop_Condition__char_connect_socket_15406_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_15205CWE606_Unchecked_Loop_Condition__char_connect_socket_15406_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !64 {
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
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !87, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_replace_0, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !114, metadata !DIExpression()), !dbg !118
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !119
  %call = call i64 @strlen(i8* %1) #7, !dbg !120
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !118
  br label %do.body, !dbg !121

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !122
  store i32 %call1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !124
  %2 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !125
  %cmp = icmp eq i32 %2, -1, !dbg !127
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !129

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !131
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !132
  store i16 2, i16* %sin_family, align 4, !dbg !133
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !134
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !135
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !136
  store i32 %call2, i32* %s_addr, align 4, !dbg !137
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !138
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !139
  store i16 %call3, i16* %sin_port, align 2, !dbg !140
  %4 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !141
  %5 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !143
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !144
  %cmp5 = icmp eq i32 %call4, -1, !dbg !145
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !146

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !147

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !149
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !150
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !151
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !152
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !153
  %sub = sub i64 100, %9, !dbg !154
  %sub8 = sub i64 %sub, 1, !dbg !155
  %mul = mul i64 1, %sub8, !dbg !156
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !157
  %conv = trunc i64 %call9 to i32, !dbg !157
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !158
  %10 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !159
  %cmp10 = icmp eq i32 %10, -1, !dbg !161
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !162

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !163
  %cmp12 = icmp eq i32 %11, 0, !dbg !164
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !165

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !166

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !168
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !169
  %14 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !170
  %conv16 = sext i32 %14 to i64, !dbg !170
  %div = udiv i64 %conv16, 1, !dbg !171
  %add = add i64 %13, %div, !dbg !172
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !168
  store i8 0, i8* %arrayidx, align 1, !dbg !173
  %15 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !174
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !175
  store i8* %call17, i8** %_goodB2G1_replace_0, align 8, !dbg !176
  %16 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !177
  %tobool = icmp ne i8* %16, null, !dbg !177
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !179

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !180
  store i8 0, i8* %17, align 1, !dbg !182
  br label %if.end19, !dbg !183

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !184
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !185
  store i8* %call20, i8** %_goodB2G1_replace_0, align 8, !dbg !186
  %19 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !187
  %tobool21 = icmp ne i8* %19, null, !dbg !187
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !189

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !190
  store i8 0, i8* %20, align 1, !dbg !192
  br label %if.end23, !dbg !193

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !194

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !195
  %cmp24 = icmp ne i32 %21, -1, !dbg !197
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !198

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !199
  %call27 = call i32 @close(i32 %22), !dbg !201
  br label %if.end28, !dbg !202

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !203, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !208, metadata !DIExpression()), !dbg !209
  %23 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !210
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #8, !dbg !212
  %cmp30 = icmp eq i32 %call29, 1, !dbg !213
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !214

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !215
  %cmp33 = icmp slt i32 %24, 10000, !dbg !218
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !219

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !220
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !225
  %26 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !227
  %cmp36 = icmp slt i32 %25, %26, !dbg !228
  br i1 %cmp36, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !230
  %inc = add nsw i32 %27, 1, !dbg !230
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !230
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !233
  %inc38 = add nsw i32 %28, 1, !dbg !233
  store i32 %inc38, i32* %_goodB2G1_i_0, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !238
  call void @printIntLine(i32 %29), !dbg !239
  br label %if.end39, !dbg !240

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !241

if.end40:                                         ; preds = %if.end39, %if.end28
  br label %goodB2G1_label_, !dbg !242

goodB2G1_label_:                                  ; preds = %if.end40
  call void @llvm.dbg.label(metadata !243), !dbg !244
  call void (...) @goodB2G2(), !dbg !245
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !249, metadata !DIExpression()), !dbg !250
  %30 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay41 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !251
  store i8* %arraydecay41, i8** %_goodG2B1_data_0, align 8, !dbg !252
  %31 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !253
  %call42 = call i8* @strcpy(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !254
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !255, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !260, metadata !DIExpression()), !dbg !261
  %32 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !262
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #8, !dbg !264
  %cmp44 = icmp eq i32 %call43, 1, !dbg !265
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !266

if.then46:                                        ; preds = %goodB2G1_label_
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !267
  %33 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !269
  %34 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !270
  call void %33(i32 %34), !dbg !269
  %35 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !271
  call void @printIntLine(i32 %35), !dbg !272
  br label %if.end47, !dbg !273

if.end47:                                         ; preds = %if.then46, %goodB2G1_label_
  br label %goodG2B1_label_, !dbg !274

goodG2B1_label_:                                  ; preds = %if.end47
  call void @llvm.dbg.label(metadata !275), !dbg !276
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good_label_, !dbg !277

CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !278), !dbg !279
  ret void, !dbg !280
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15205CWE606_Unchecked_Loop_Condition__char_connect_socket_15406_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15205CWE606_Unchecked_Loop_Condition__char_connect_socket_15406_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !77, file: !1, line: 6, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 6, column: 10, scope: !77)
!82 = !DILocation(line: 7, column: 24, scope: !77)
!83 = !DILocation(line: 7, column: 22, scope: !77)
!84 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !85, file: !1, line: 12, type: !70)
!85 = distinct !DILexicalBlock(scope: !77, file: !1, line: 11, column: 7)
!86 = !DILocation(line: 12, column: 13, scope: !85)
!87 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !85, file: !1, line: 13, type: !88)
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
!109 = !DILocation(line: 13, column: 28, scope: !85)
!110 = !DILocalVariable(name: "_goodB2G1_replace_0", scope: !85, file: !1, line: 14, type: !59)
!111 = !DILocation(line: 14, column: 15, scope: !85)
!112 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !85, file: !1, line: 15, type: !70)
!113 = !DILocation(line: 15, column: 13, scope: !85)
!114 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !85, file: !1, line: 16, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 46, baseType: !117)
!116 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !DILocation(line: 16, column: 16, scope: !85)
!119 = !DILocation(line: 16, column: 45, scope: !85)
!120 = !DILocation(line: 16, column: 38, scope: !85)
!121 = !DILocation(line: 17, column: 9, scope: !85)
!122 = !DILocation(line: 19, column: 39, scope: !123)
!123 = distinct !DILexicalBlock(scope: !85, file: !1, line: 18, column: 9)
!124 = !DILocation(line: 19, column: 37, scope: !123)
!125 = !DILocation(line: 20, column: 15, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 20, column: 15)
!127 = !DILocation(line: 20, column: 41, scope: !126)
!128 = !DILocation(line: 20, column: 15, scope: !123)
!129 = !DILocation(line: 22, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 21, column: 11)
!131 = !DILocation(line: 25, column: 11, scope: !123)
!132 = !DILocation(line: 26, column: 31, scope: !123)
!133 = !DILocation(line: 26, column: 42, scope: !123)
!134 = !DILocation(line: 27, column: 49, scope: !123)
!135 = !DILocation(line: 27, column: 31, scope: !123)
!136 = !DILocation(line: 27, column: 40, scope: !123)
!137 = !DILocation(line: 27, column: 47, scope: !123)
!138 = !DILocation(line: 28, column: 42, scope: !123)
!139 = !DILocation(line: 28, column: 31, scope: !123)
!140 = !DILocation(line: 28, column: 40, scope: !123)
!141 = !DILocation(line: 29, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !123, file: !1, line: 29, column: 15)
!143 = !DILocation(line: 29, column: 50, scope: !142)
!144 = !DILocation(line: 29, column: 15, scope: !142)
!145 = !DILocation(line: 29, column: 123, scope: !142)
!146 = !DILocation(line: 29, column: 15, scope: !123)
!147 = !DILocation(line: 31, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 30, column: 11)
!149 = !DILocation(line: 34, column: 41, scope: !123)
!150 = !DILocation(line: 34, column: 78, scope: !123)
!151 = !DILocation(line: 34, column: 97, scope: !123)
!152 = !DILocation(line: 34, column: 95, scope: !123)
!153 = !DILocation(line: 34, column: 144, scope: !123)
!154 = !DILocation(line: 34, column: 142, scope: !123)
!155 = !DILocation(line: 34, column: 165, scope: !123)
!156 = !DILocation(line: 34, column: 134, scope: !123)
!157 = !DILocation(line: 34, column: 36, scope: !123)
!158 = !DILocation(line: 34, column: 34, scope: !123)
!159 = !DILocation(line: 35, column: 16, scope: !160)
!160 = distinct !DILexicalBlock(scope: !123, file: !1, line: 35, column: 15)
!161 = !DILocation(line: 35, column: 39, scope: !160)
!162 = !DILocation(line: 35, column: 48, scope: !160)
!163 = !DILocation(line: 35, column: 52, scope: !160)
!164 = !DILocation(line: 35, column: 75, scope: !160)
!165 = !DILocation(line: 35, column: 15, scope: !123)
!166 = !DILocation(line: 37, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 36, column: 11)
!168 = !DILocation(line: 40, column: 11, scope: !123)
!169 = !DILocation(line: 40, column: 28, scope: !123)
!170 = !DILocation(line: 40, column: 51, scope: !123)
!171 = !DILocation(line: 40, column: 74, scope: !123)
!172 = !DILocation(line: 40, column: 48, scope: !123)
!173 = !DILocation(line: 40, column: 93, scope: !123)
!174 = !DILocation(line: 41, column: 40, scope: !123)
!175 = !DILocation(line: 41, column: 33, scope: !123)
!176 = !DILocation(line: 41, column: 31, scope: !123)
!177 = !DILocation(line: 42, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !123, file: !1, line: 42, column: 15)
!179 = !DILocation(line: 42, column: 15, scope: !123)
!180 = !DILocation(line: 44, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 43, column: 11)
!182 = !DILocation(line: 44, column: 34, scope: !181)
!183 = !DILocation(line: 45, column: 11, scope: !181)
!184 = !DILocation(line: 47, column: 40, scope: !123)
!185 = !DILocation(line: 47, column: 33, scope: !123)
!186 = !DILocation(line: 47, column: 31, scope: !123)
!187 = !DILocation(line: 48, column: 15, scope: !188)
!188 = distinct !DILexicalBlock(scope: !123, file: !1, line: 48, column: 15)
!189 = !DILocation(line: 48, column: 15, scope: !123)
!190 = !DILocation(line: 50, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 49, column: 11)
!192 = !DILocation(line: 50, column: 34, scope: !191)
!193 = !DILocation(line: 51, column: 11, scope: !191)
!194 = !DILocation(line: 53, column: 9, scope: !123)
!195 = !DILocation(line: 55, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !85, file: !1, line: 55, column: 13)
!197 = !DILocation(line: 55, column: 39, scope: !196)
!198 = !DILocation(line: 55, column: 13, scope: !85)
!199 = !DILocation(line: 57, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 56, column: 9)
!201 = !DILocation(line: 57, column: 11, scope: !200)
!202 = !DILocation(line: 58, column: 9, scope: !200)
!203 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !204, file: !1, line: 77, type: !70)
!204 = distinct !DILexicalBlock(scope: !77, file: !1, line: 76, column: 7)
!205 = !DILocation(line: 77, column: 13, scope: !204)
!206 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !204, file: !1, line: 78, type: !70)
!207 = !DILocation(line: 78, column: 13, scope: !204)
!208 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !204, file: !1, line: 79, type: !70)
!209 = !DILocation(line: 79, column: 13, scope: !204)
!210 = !DILocation(line: 80, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !1, line: 80, column: 13)
!212 = !DILocation(line: 80, column: 13, scope: !211)
!213 = !DILocation(line: 80, column: 60, scope: !211)
!214 = !DILocation(line: 80, column: 13, scope: !204)
!215 = !DILocation(line: 82, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 82, column: 15)
!217 = distinct !DILexicalBlock(scope: !211, file: !1, line: 81, column: 9)
!218 = !DILocation(line: 82, column: 29, scope: !216)
!219 = !DILocation(line: 82, column: 15, scope: !217)
!220 = !DILocation(line: 84, column: 37, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !1, line: 83, column: 11)
!222 = !DILocation(line: 85, column: 32, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !1, line: 85, column: 13)
!224 = !DILocation(line: 85, column: 18, scope: !223)
!225 = !DILocation(line: 85, column: 37, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 85, column: 13)
!227 = !DILocation(line: 85, column: 53, scope: !226)
!228 = !DILocation(line: 85, column: 51, scope: !226)
!229 = !DILocation(line: 85, column: 13, scope: !223)
!230 = !DILocation(line: 87, column: 38, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 86, column: 13)
!232 = !DILocation(line: 88, column: 13, scope: !231)
!233 = !DILocation(line: 85, column: 81, scope: !226)
!234 = !DILocation(line: 85, column: 13, scope: !226)
!235 = distinct !{!235, !229, !236, !237}
!236 = !DILocation(line: 88, column: 13, scope: !223)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !DILocation(line: 90, column: 26, scope: !221)
!239 = !DILocation(line: 90, column: 13, scope: !221)
!240 = !DILocation(line: 91, column: 11, scope: !221)
!241 = !DILocation(line: 93, column: 9, scope: !217)
!242 = !DILocation(line: 95, column: 7, scope: !204)
!243 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 100)
!244 = !DILocation(line: 100, column: 5, scope: !77)
!245 = !DILocation(line: 106, column: 3, scope: !64)
!246 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !247, file: !1, line: 108, type: !59)
!247 = distinct !DILexicalBlock(scope: !64, file: !1, line: 107, column: 3)
!248 = !DILocation(line: 108, column: 11, scope: !247)
!249 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !247, file: !1, line: 109, type: !78)
!250 = !DILocation(line: 109, column: 10, scope: !247)
!251 = !DILocation(line: 110, column: 24, scope: !247)
!252 = !DILocation(line: 110, column: 22, scope: !247)
!253 = !DILocation(line: 118, column: 16, scope: !247)
!254 = !DILocation(line: 118, column: 9, scope: !247)
!255 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !256, file: !1, line: 127, type: !70)
!256 = distinct !DILexicalBlock(scope: !247, file: !1, line: 126, column: 7)
!257 = !DILocation(line: 127, column: 13, scope: !256)
!258 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !256, file: !1, line: 128, type: !70)
!259 = !DILocation(line: 128, column: 13, scope: !256)
!260 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !256, file: !1, line: 129, type: !70)
!261 = !DILocation(line: 129, column: 13, scope: !256)
!262 = !DILocation(line: 130, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !1, line: 130, column: 13)
!264 = !DILocation(line: 130, column: 13, scope: !263)
!265 = !DILocation(line: 130, column: 60, scope: !263)
!266 = !DILocation(line: 130, column: 13, scope: !256)
!267 = !DILocation(line: 132, column: 35, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !1, line: 131, column: 9)
!269 = !DILocation(line: 133, column: 11, scope: !268)
!270 = !DILocation(line: 133, column: 18, scope: !268)
!271 = !DILocation(line: 134, column: 24, scope: !268)
!272 = !DILocation(line: 134, column: 11, scope: !268)
!273 = !DILocation(line: 135, column: 9, scope: !268)
!274 = !DILocation(line: 137, column: 7, scope: !256)
!275 = !DILabel(scope: !247, name: "goodG2B1_label_", file: !1, line: 146)
!276 = !DILocation(line: 146, column: 5, scope: !247)
!277 = !DILocation(line: 151, column: 3, scope: !247)
!278 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_good_label_", file: !1, line: 152)
!279 = !DILocation(line: 152, column: 3, scope: !64)
!280 = !DILocation(line: 157, column: 1, scope: !64)
