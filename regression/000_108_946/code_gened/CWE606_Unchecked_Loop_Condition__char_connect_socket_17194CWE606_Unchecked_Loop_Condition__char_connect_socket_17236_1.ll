; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17236_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17236_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17236_1(i8* %_goodB2G_data_0, i32 %_goodB2G_i_0, i32 %_goodB2G_k_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %_goodB2G_i_0.addr = alloca i32, align 4
  %_goodB2G_k_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_1 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %_goodB2G_i_0, i32* %_goodB2G_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %_goodB2G_k_0, i32* %_goodB2G_k_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !80, metadata !DIExpression()), !dbg !84
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !84
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !84
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !85
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !86
  store i32 0, i32* %_goodB2G_i_0.addr, align 4, !dbg !87
  br label %for.cond, !dbg !89

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !90
  %cmp = icmp slt i32 %1, 1, !dbg !92
  br i1 %cmp, label %for.body, label %for.end, !dbg !93

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !94, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !98, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !123, metadata !DIExpression()), !dbg !124
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !125, metadata !DIExpression()), !dbg !129
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !130
  %call = call i64 @strlen(i8* %2) #7, !dbg !131
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !129
  br label %do.body, !dbg !132

do.body:                                          ; preds = %for.body
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !133
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !135
  %3 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !136
  %cmp2 = icmp eq i32 %3, -1, !dbg !138
  br i1 %cmp2, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !140

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !142
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !143
  store i16 2, i16* %sin_family, align 4, !dbg !144
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !145
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !146
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !147
  store i32 %call3, i32* %s_addr, align 4, !dbg !148
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !149
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !150
  store i16 %call4, i16* %sin_port, align 2, !dbg !151
  %5 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !152
  %6 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !154
  %call5 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !155
  %cmp6 = icmp eq i32 %call5, -1, !dbg !156
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !157

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !158

if.end8:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !160
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !161
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !162
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !163
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !164
  %sub = sub i64 100, %10, !dbg !165
  %sub9 = sub i64 %sub, 1, !dbg !166
  %mul = mul i64 1, %sub9, !dbg !167
  %call10 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !168
  %conv = trunc i64 %call10 to i32, !dbg !168
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !169
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !170
  %cmp11 = icmp eq i32 %11, -1, !dbg !172
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !173

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !174
  %cmp13 = icmp eq i32 %12, 0, !dbg !175
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !176

if.then15:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !177

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !179
  %14 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !180
  %15 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !181
  %conv17 = sext i32 %15 to i64, !dbg !181
  %div = udiv i64 %conv17, 1, !dbg !182
  %add = add i64 %14, %div, !dbg !183
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !179
  store i8 0, i8* %arrayidx, align 1, !dbg !184
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !185
  %call18 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !186
  store i8* %call18, i8** %_goodB2G_replace_0, align 8, !dbg !187
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !188
  %tobool = icmp ne i8* %17, null, !dbg !188
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !190

if.then19:                                        ; preds = %if.end16
  %18 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !191
  store i8 0, i8* %18, align 1, !dbg !193
  br label %if.end20, !dbg !194

if.end20:                                         ; preds = %if.then19, %if.end16
  %19 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !195
  %call21 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !196
  store i8* %call21, i8** %_goodB2G_replace_0, align 8, !dbg !197
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !198
  %tobool22 = icmp ne i8* %20, null, !dbg !198
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !200

if.then23:                                        ; preds = %if.end20
  %21 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !201
  store i8 0, i8* %21, align 1, !dbg !203
  br label %if.end24, !dbg !204

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %do.end, !dbg !205

do.end:                                           ; preds = %if.end24, %if.then15, %if.then7, %if.then
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !206
  %cmp25 = icmp ne i32 %22, -1, !dbg !208
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !209

if.then27:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !210
  %call28 = call i32 @close(i32 %23), !dbg !212
  br label %if.end29, !dbg !213

if.end29:                                         ; preds = %if.then27, %do.end
  br label %for.inc, !dbg !214

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !215
  %inc = add nsw i32 %24, 1, !dbg !215
  store i32 %inc, i32* %_goodB2G_i_0.addr, align 4, !dbg !215
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0.addr, align 4, !dbg !220
  br label %for.cond30, !dbg !222

for.cond30:                                       ; preds = %for.inc43, %for.end
  %25 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !223
  %cmp31 = icmp slt i32 %25, 1, !dbg !225
  br i1 %cmp31, label %for.body33, label %for.end45, !dbg !226

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !227, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !233, metadata !DIExpression()), !dbg !234
  %26 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !235
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !237
  %cmp35 = icmp eq i32 %call34, 1, !dbg !238
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !239

if.then37:                                        ; preds = %for.body33
  %27 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !240
  %cmp38 = icmp slt i32 %27, 10000, !dbg !243
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !244

if.then40:                                        ; preds = %if.then37
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !245
  %28 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !247
  %29 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !248
  call void %28(i32 %29), !dbg !247
  %30 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !249
  call void @printIntLine(i32 %30), !dbg !250
  br label %if.end41, !dbg !251

if.end41:                                         ; preds = %if.then40, %if.then37
  br label %if.end42, !dbg !252

if.end42:                                         ; preds = %if.end41, %for.body33
  br label %for.inc43, !dbg !253

for.inc43:                                        ; preds = %if.end42
  %31 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !254
  %inc44 = add nsw i32 %31, 1, !dbg !254
  store i32 %inc44, i32* %_goodB2G_k_0.addr, align 4, !dbg !254
  br label %for.cond30, !dbg !255, !llvm.loop !256

for.end45:                                        ; preds = %for.cond30
  br label %goodB2G_label_, !dbg !257

goodB2G_label_:                                   ; preds = %for.end45
  call void @llvm.dbg.label(metadata !258), !dbg !259
  ret void, !dbg !260
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17236_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_946/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_17194CWE606_Unchecked_Loop_Condition__char_connect_socket_17236_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67, !67, !68}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !67}
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "_goodB2G_i_0", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 152, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_k_0", arg: 3, scope: !64, file: !1, line: 3, type: !67)
!77 = !DILocation(line: 3, column: 170, scope: !64)
!78 = !DILocalVariable(name: "opsink", arg: 4, scope: !64, file: !1, line: 3, type: !68)
!79 = !DILocation(line: 3, column: 191, scope: !64)
!80 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !64, file: !1, line: 5, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 100)
!84 = !DILocation(line: 5, column: 8, scope: !64)
!85 = !DILocation(line: 6, column: 21, scope: !64)
!86 = !DILocation(line: 6, column: 19, scope: !64)
!87 = !DILocation(line: 7, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !64, file: !1, line: 7, column: 3)
!89 = !DILocation(line: 7, column: 8, scope: !88)
!90 = !DILocation(line: 7, column: 26, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 7, column: 3)
!92 = !DILocation(line: 7, column: 39, scope: !91)
!93 = !DILocation(line: 7, column: 3, scope: !88)
!94 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !95, file: !1, line: 10, type: !67)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 9, column: 5)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 8, column: 3)
!97 = !DILocation(line: 10, column: 11, scope: !95)
!98 = !DILocalVariable(name: "_goodB2G_service_0", scope: !95, file: !1, line: 11, type: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !100)
!100 = !{!101, !102, !108, !115}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !99, file: !17, line: 240, baseType: !51, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !99, file: !17, line: 241, baseType: !103, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !105, line: 25, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !107, line: 40, baseType: !53)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !99, file: !17, line: 242, baseType: !109, size: 32, offset: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !109, file: !17, line: 33, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 26, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !5)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !99, file: !17, line: 245, baseType: !116, size: 64, offset: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !118)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DILocation(line: 11, column: 26, scope: !95)
!121 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !95, file: !1, line: 12, type: !59)
!122 = !DILocation(line: 12, column: 13, scope: !95)
!123 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !95, file: !1, line: 13, type: !67)
!124 = !DILocation(line: 13, column: 11, scope: !95)
!125 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !95, file: !1, line: 14, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!128 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!129 = !DILocation(line: 14, column: 14, scope: !95)
!130 = !DILocation(line: 14, column: 42, scope: !95)
!131 = !DILocation(line: 14, column: 35, scope: !95)
!132 = !DILocation(line: 15, column: 7, scope: !95)
!133 = !DILocation(line: 17, column: 36, scope: !134)
!134 = distinct !DILexicalBlock(scope: !95, file: !1, line: 16, column: 7)
!135 = !DILocation(line: 17, column: 34, scope: !134)
!136 = !DILocation(line: 18, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 18, column: 13)
!138 = !DILocation(line: 18, column: 38, scope: !137)
!139 = !DILocation(line: 18, column: 13, scope: !134)
!140 = !DILocation(line: 20, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 19, column: 9)
!142 = !DILocation(line: 23, column: 9, scope: !134)
!143 = !DILocation(line: 24, column: 28, scope: !134)
!144 = !DILocation(line: 24, column: 39, scope: !134)
!145 = !DILocation(line: 25, column: 46, scope: !134)
!146 = !DILocation(line: 25, column: 28, scope: !134)
!147 = !DILocation(line: 25, column: 37, scope: !134)
!148 = !DILocation(line: 25, column: 44, scope: !134)
!149 = !DILocation(line: 26, column: 39, scope: !134)
!150 = !DILocation(line: 26, column: 28, scope: !134)
!151 = !DILocation(line: 26, column: 37, scope: !134)
!152 = !DILocation(line: 27, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !134, file: !1, line: 27, column: 13)
!154 = !DILocation(line: 27, column: 47, scope: !153)
!155 = !DILocation(line: 27, column: 13, scope: !153)
!156 = !DILocation(line: 27, column: 118, scope: !153)
!157 = !DILocation(line: 27, column: 13, scope: !134)
!158 = !DILocation(line: 29, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !1, line: 28, column: 9)
!160 = !DILocation(line: 32, column: 38, scope: !134)
!161 = !DILocation(line: 32, column: 74, scope: !134)
!162 = !DILocation(line: 32, column: 92, scope: !134)
!163 = !DILocation(line: 32, column: 90, scope: !134)
!164 = !DILocation(line: 32, column: 138, scope: !134)
!165 = !DILocation(line: 32, column: 136, scope: !134)
!166 = !DILocation(line: 32, column: 158, scope: !134)
!167 = !DILocation(line: 32, column: 128, scope: !134)
!168 = !DILocation(line: 32, column: 33, scope: !134)
!169 = !DILocation(line: 32, column: 31, scope: !134)
!170 = !DILocation(line: 33, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !134, file: !1, line: 33, column: 13)
!172 = !DILocation(line: 33, column: 36, scope: !171)
!173 = !DILocation(line: 33, column: 45, scope: !171)
!174 = !DILocation(line: 33, column: 49, scope: !171)
!175 = !DILocation(line: 33, column: 71, scope: !171)
!176 = !DILocation(line: 33, column: 13, scope: !134)
!177 = !DILocation(line: 35, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !1, line: 34, column: 9)
!179 = !DILocation(line: 38, column: 9, scope: !134)
!180 = !DILocation(line: 38, column: 25, scope: !134)
!181 = !DILocation(line: 38, column: 47, scope: !134)
!182 = !DILocation(line: 38, column: 69, scope: !134)
!183 = !DILocation(line: 38, column: 44, scope: !134)
!184 = !DILocation(line: 38, column: 88, scope: !134)
!185 = !DILocation(line: 39, column: 37, scope: !134)
!186 = !DILocation(line: 39, column: 30, scope: !134)
!187 = !DILocation(line: 39, column: 28, scope: !134)
!188 = !DILocation(line: 40, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !134, file: !1, line: 40, column: 13)
!190 = !DILocation(line: 40, column: 13, scope: !134)
!191 = !DILocation(line: 42, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 41, column: 9)
!193 = !DILocation(line: 42, column: 31, scope: !192)
!194 = !DILocation(line: 43, column: 9, scope: !192)
!195 = !DILocation(line: 45, column: 37, scope: !134)
!196 = !DILocation(line: 45, column: 30, scope: !134)
!197 = !DILocation(line: 45, column: 28, scope: !134)
!198 = !DILocation(line: 46, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !134, file: !1, line: 46, column: 13)
!200 = !DILocation(line: 46, column: 13, scope: !134)
!201 = !DILocation(line: 48, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 47, column: 9)
!203 = !DILocation(line: 48, column: 31, scope: !202)
!204 = !DILocation(line: 49, column: 9, scope: !202)
!205 = !DILocation(line: 51, column: 7, scope: !134)
!206 = !DILocation(line: 53, column: 11, scope: !207)
!207 = distinct !DILexicalBlock(scope: !95, file: !1, line: 53, column: 11)
!208 = !DILocation(line: 53, column: 36, scope: !207)
!209 = !DILocation(line: 53, column: 11, scope: !95)
!210 = !DILocation(line: 55, column: 15, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 54, column: 7)
!212 = !DILocation(line: 55, column: 9, scope: !211)
!213 = !DILocation(line: 56, column: 7, scope: !211)
!214 = !DILocation(line: 59, column: 3, scope: !96)
!215 = !DILocation(line: 7, column: 56, scope: !91)
!216 = !DILocation(line: 7, column: 3, scope: !91)
!217 = distinct !{!217, !93, !218, !219}
!218 = !DILocation(line: 59, column: 3, scope: !88)
!219 = !{!"llvm.loop.mustprogress"}
!220 = !DILocation(line: 61, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !64, file: !1, line: 61, column: 3)
!222 = !DILocation(line: 61, column: 8, scope: !221)
!223 = !DILocation(line: 61, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 61, column: 3)
!225 = !DILocation(line: 61, column: 39, scope: !224)
!226 = !DILocation(line: 61, column: 3, scope: !221)
!227 = !DILocalVariable(name: "_goodB2G_i_1", scope: !228, file: !1, line: 64, type: !67)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 63, column: 5)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 62, column: 3)
!230 = !DILocation(line: 64, column: 11, scope: !228)
!231 = !DILocalVariable(name: "_goodB2G_n_0", scope: !228, file: !1, line: 65, type: !67)
!232 = !DILocation(line: 65, column: 11, scope: !228)
!233 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !228, file: !1, line: 66, type: !67)
!234 = !DILocation(line: 66, column: 11, scope: !228)
!235 = !DILocation(line: 67, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !228, file: !1, line: 67, column: 11)
!237 = !DILocation(line: 67, column: 11, scope: !236)
!238 = !DILocation(line: 67, column: 56, scope: !236)
!239 = !DILocation(line: 67, column: 11, scope: !228)
!240 = !DILocation(line: 69, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 69, column: 13)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 68, column: 7)
!243 = !DILocation(line: 69, column: 26, scope: !241)
!244 = !DILocation(line: 69, column: 13, scope: !242)
!245 = !DILocation(line: 71, column: 34, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 70, column: 9)
!247 = !DILocation(line: 72, column: 11, scope: !246)
!248 = !DILocation(line: 72, column: 18, scope: !246)
!249 = !DILocation(line: 73, column: 24, scope: !246)
!250 = !DILocation(line: 73, column: 11, scope: !246)
!251 = !DILocation(line: 74, column: 9, scope: !246)
!252 = !DILocation(line: 76, column: 7, scope: !242)
!253 = !DILocation(line: 79, column: 3, scope: !229)
!254 = !DILocation(line: 61, column: 56, scope: !224)
!255 = !DILocation(line: 61, column: 3, scope: !224)
!256 = distinct !{!256, !226, !257, !219}
!257 = !DILocation(line: 79, column: 3, scope: !221)
!258 = !DILabel(scope: !64, name: "goodB2G_label_", file: !1, line: 81)
!259 = !DILocation(line: 81, column: 3, scope: !64)
!260 = !DILocation(line: 86, column: 1, scope: !64)
