; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1186CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11118_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1186CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11118_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1186CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11118_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0, align 4, !dbg !78
  %call = call i32 (...) @globalReturnsTrue(), !dbg !79
  %tobool = icmp ne i32 %call, 0, !dbg !79
  br i1 %tobool, label %if.then, label %if.end22, !dbg !81

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !110
  br label %do.body, !dbg !111

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !112
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !114
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !115
  %cmp = icmp eq i32 %0, -1, !dbg !117
  br i1 %cmp, label %if.then2, label %if.end, !dbg !118

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !119

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0 to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !121
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0, i32 0, i32 0, !dbg !122
  store i16 2, i16* %sin_family, align 4, !dbg !123
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 %call3, i32* %s_addr, align 4, !dbg !127
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0, i32 0, i32 1, !dbg !129
  store i16 %call4, i16* %sin_port, align 2, !dbg !130
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !131
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0 to %struct.sockaddr*, !dbg !133
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !134
  %cmp6 = icmp eq i32 %call5, -1, !dbg !135
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !136

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !139
  %5 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr, align 8, !dbg !140
  %call9 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !141
  %conv = trunc i64 %call9 to i32, !dbg !141
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0, align 4, !dbg !142
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0, align 4, !dbg !143
  %cmp10 = icmp eq i32 %6, -1, !dbg !145
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0, align 4, !dbg !147
  %cmp12 = icmp eq i32 %7, 0, !dbg !148
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !149

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !150

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr, align 8, !dbg !152
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0, align 4, !dbg !153
  %idxprom = sext i32 %9 to i64, !dbg !152
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !152
  store i8 0, i8* %arrayidx, align 1, !dbg !154
  %10 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0.addr, align 8, !dbg !155
  %call16 = call i32 @atoi(i8* %10) #9, !dbg !156
  store i32 %call16, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0, align 4, !dbg !157
  br label %do.end, !dbg !158

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !159
  %cmp17 = icmp ne i32 %11, -1, !dbg !161
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !162

if.then19:                                        ; preds = %do.end
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0, align 4, !dbg !163
  %call20 = call i32 @close(i32 %12), !dbg !165
  br label %if.end21, !dbg !166

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !167

if.end22:                                         ; preds = %if.end21, %entry
  %call23 = call i32 (...) @globalReturnsTrue(), !dbg !168
  %tobool24 = icmp ne i32 %call23, 0, !dbg !168
  br i1 %tobool24, label %if.then25, label %if.end34, !dbg !170

if.then25:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_buffer_0, metadata !175, metadata !DIExpression()), !dbg !179
  %13 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_buffer_0 to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !179
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0, align 4, !dbg !180
  %cmp26 = icmp sge i32 %14, 0, !dbg !182
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !183

if.then28:                                        ; preds = %if.then25
  %15 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !184
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0, align 4, !dbg !186
  call void %15(i32 %16), !dbg !184
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then28
  %17 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, align 4, !dbg !190
  %cmp29 = icmp slt i32 %17, 10, !dbg !192
  br i1 %cmp29, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, align 4, !dbg !194
  %idxprom31 = sext i32 %18 to i64, !dbg !196
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_buffer_0, i64 0, i64 %idxprom31, !dbg !196
  %19 = load i32, i32* %arrayidx32, align 4, !dbg !196
  call void @printIntLine(i32 %19), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, align 4, !dbg !199
  %inc = add nsw i32 %20, 1, !dbg !199
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  br label %if.end33, !dbg !204

if.else:                                          ; preds = %if.then25
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  br label %if.end34, !dbg !207

if.end34:                                         ; preds = %if.end33, %if.end22
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_label_, !dbg !208

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_label_: ; preds = %if.end34
  call void @llvm.dbg.label(metadata !209), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrue(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1186CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11118_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_526/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1186CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11118_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 140, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 228, scope: !63)
!76 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_data_0", scope: !63, file: !1, line: 5, type: !70)
!77 = !DILocation(line: 5, column: 7, scope: !63)
!78 = !DILocation(line: 6, column: 76, scope: !63)
!79 = !DILocation(line: 7, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !63, file: !1, line: 7, column: 7)
!81 = !DILocation(line: 7, column: 7, scope: !63)
!82 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_recvResult_0", scope: !83, file: !1, line: 10, type: !70)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 9, column: 5)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 8, column: 3)
!85 = !DILocation(line: 10, column: 11, scope: !83)
!86 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_service_0", scope: !83, file: !1, line: 11, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !96, !103}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !17, line: 240, baseType: !51, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !17, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 25, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 40, baseType: !53)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !17, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !17, line: 33, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 26, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !5)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !17, line: 245, baseType: !104, size: 64, offset: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !106)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DILocation(line: 11, column: 26, scope: !83)
!109 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_connectSocket_0", scope: !83, file: !1, line: 12, type: !70)
!110 = !DILocation(line: 12, column: 11, scope: !83)
!111 = !DILocation(line: 13, column: 7, scope: !83)
!112 = !DILocation(line: 15, column: 93, scope: !113)
!113 = distinct !DILexicalBlock(scope: !83, file: !1, line: 14, column: 7)
!114 = !DILocation(line: 15, column: 91, scope: !113)
!115 = !DILocation(line: 16, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 16, column: 13)
!117 = !DILocation(line: 16, column: 95, scope: !116)
!118 = !DILocation(line: 16, column: 13, scope: !113)
!119 = !DILocation(line: 18, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 17, column: 9)
!121 = !DILocation(line: 21, column: 9, scope: !113)
!122 = !DILocation(line: 22, column: 85, scope: !113)
!123 = !DILocation(line: 22, column: 96, scope: !113)
!124 = !DILocation(line: 23, column: 103, scope: !113)
!125 = !DILocation(line: 23, column: 85, scope: !113)
!126 = !DILocation(line: 23, column: 94, scope: !113)
!127 = !DILocation(line: 23, column: 101, scope: !113)
!128 = !DILocation(line: 24, column: 96, scope: !113)
!129 = !DILocation(line: 24, column: 85, scope: !113)
!130 = !DILocation(line: 24, column: 94, scope: !113)
!131 = !DILocation(line: 25, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !1, line: 25, column: 13)
!133 = !DILocation(line: 25, column: 104, scope: !132)
!134 = !DILocation(line: 25, column: 13, scope: !132)
!135 = !DILocation(line: 25, column: 289, scope: !132)
!136 = !DILocation(line: 25, column: 13, scope: !113)
!137 = !DILocation(line: 27, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 26, column: 9)
!139 = !DILocation(line: 30, column: 95, scope: !113)
!140 = !DILocation(line: 30, column: 178, scope: !113)
!141 = !DILocation(line: 30, column: 90, scope: !113)
!142 = !DILocation(line: 30, column: 88, scope: !113)
!143 = !DILocation(line: 31, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !113, file: !1, line: 31, column: 13)
!145 = !DILocation(line: 31, column: 93, scope: !144)
!146 = !DILocation(line: 31, column: 102, scope: !144)
!147 = !DILocation(line: 31, column: 106, scope: !144)
!148 = !DILocation(line: 31, column: 185, scope: !144)
!149 = !DILocation(line: 31, column: 13, scope: !113)
!150 = !DILocation(line: 33, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 32, column: 9)
!152 = !DILocation(line: 36, column: 9, scope: !113)
!153 = !DILocation(line: 36, column: 89, scope: !113)
!154 = !DILocation(line: 36, column: 169, scope: !113)
!155 = !DILocation(line: 37, column: 89, scope: !113)
!156 = !DILocation(line: 37, column: 84, scope: !113)
!157 = !DILocation(line: 37, column: 82, scope: !113)
!158 = !DILocation(line: 38, column: 7, scope: !113)
!159 = !DILocation(line: 40, column: 11, scope: !160)
!160 = distinct !DILexicalBlock(scope: !83, file: !1, line: 40, column: 11)
!161 = !DILocation(line: 40, column: 93, scope: !160)
!162 = !DILocation(line: 40, column: 11, scope: !83)
!163 = !DILocation(line: 42, column: 15, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 41, column: 7)
!165 = !DILocation(line: 42, column: 9, scope: !164)
!166 = !DILocation(line: 43, column: 7, scope: !164)
!167 = !DILocation(line: 46, column: 3, scope: !84)
!168 = !DILocation(line: 48, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 7)
!170 = !DILocation(line: 48, column: 7, scope: !63)
!171 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_i_0", scope: !172, file: !1, line: 51, type: !70)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 50, column: 5)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 49, column: 3)
!174 = !DILocation(line: 51, column: 11, scope: !172)
!175 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_buffer_0", scope: !172, file: !1, line: 52, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 10)
!179 = !DILocation(line: 52, column: 11, scope: !172)
!180 = !DILocation(line: 53, column: 11, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !1, line: 53, column: 11)
!182 = !DILocation(line: 53, column: 84, scope: !181)
!183 = !DILocation(line: 53, column: 11, scope: !172)
!184 = !DILocation(line: 55, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 54, column: 7)
!186 = !DILocation(line: 55, column: 16, scope: !185)
!187 = !DILocation(line: 56, column: 84, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 56, column: 9)
!189 = !DILocation(line: 56, column: 14, scope: !188)
!190 = !DILocation(line: 56, column: 89, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 56, column: 9)
!192 = !DILocation(line: 56, column: 159, scope: !191)
!193 = !DILocation(line: 56, column: 9, scope: !188)
!194 = !DILocation(line: 58, column: 99, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 57, column: 9)
!196 = !DILocation(line: 58, column: 24, scope: !195)
!197 = !DILocation(line: 58, column: 11, scope: !195)
!198 = !DILocation(line: 59, column: 9, scope: !195)
!199 = !DILocation(line: 56, column: 234, scope: !191)
!200 = !DILocation(line: 56, column: 9, scope: !191)
!201 = distinct !{!201, !193, !202, !203}
!202 = !DILocation(line: 59, column: 9, scope: !188)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 61, column: 7, scope: !185)
!205 = !DILocation(line: 64, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !181, file: !1, line: 63, column: 7)
!207 = !DILocation(line: 68, column: 3, scope: !173)
!208 = !DILocation(line: 48, column: 25, scope: !169)
!209 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_bad_label_", file: !1, line: 70)
!210 = !DILocation(line: 70, column: 3, scope: !63)
!211 = !DILocation(line: 75, column: 1, scope: !63)
