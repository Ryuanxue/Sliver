; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4454_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4454_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4454_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0 = alloca i32, align 4
  %_badSink_i_0 = alloca i32, align 4
  %_badSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0, metadata !82, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !106
  br label %do.body, !dbg !107

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !108
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !110
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !111
  %cmp = icmp eq i32 %0, -1, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !115

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0 to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !117
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0, i32 0, i32 0, !dbg !118
  store i16 2, i16* %sin_family, align 4, !dbg !119
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !120
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0, i32 0, i32 2, !dbg !121
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !122
  store i32 %call1, i32* %s_addr, align 4, !dbg !123
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !124
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0, i32 0, i32 1, !dbg !125
  store i16 %call2, i16* %sin_port, align 2, !dbg !126
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !127
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0 to %struct.sockaddr*, !dbg !129
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !130
  %cmp4 = icmp eq i32 %call3, -1, !dbg !131
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !132

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !133

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !135
  %5 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr, align 8, !dbg !136
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !137
  %conv = trunc i64 %call7 to i32, !dbg !137
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0, align 4, !dbg !138
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0, align 4, !dbg !139
  %cmp8 = icmp eq i32 %6, -1, !dbg !141
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !142

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0, align 4, !dbg !143
  %cmp10 = icmp eq i32 %7, 0, !dbg !144
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !145

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !146

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr, align 8, !dbg !148
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0, align 4, !dbg !149
  %idxprom = sext i32 %9 to i64, !dbg !148
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !148
  store i8 0, i8* %arrayidx, align 1, !dbg !150
  %10 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0.addr, align 8, !dbg !151
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !152
  store i32 %call14, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0, align 4, !dbg !153
  br label %do.end, !dbg !154

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !155
  %cmp15 = icmp ne i32 %11, -1, !dbg !157
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !158

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0, align 4, !dbg !159
  %call18 = call i32 @close(i32 %12), !dbg !161
  br label %if.end19, !dbg !162

if.end19:                                         ; preds = %if.then17, %do.end
  call void @llvm.dbg.declare(metadata i32* %_badSink_i_0, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [10 x i32]* %_badSink_buffer_0, metadata !167, metadata !DIExpression()), !dbg !171
  %13 = bitcast [10 x i32]* %_badSink_buffer_0 to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !171
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0, align 4, !dbg !172
  %cmp20 = icmp sge i32 %14, 0, !dbg !174
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !175

if.then22:                                        ; preds = %if.end19
  %15 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !176
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0, align 4, !dbg !178
  call void %15(i32 %16), !dbg !176
  store i32 0, i32* %_badSink_i_0, align 4, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %_badSink_i_0, align 4, !dbg !182
  %cmp23 = icmp slt i32 %17, 10, !dbg !184
  br i1 %cmp23, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_badSink_i_0, align 4, !dbg !186
  %idxprom25 = sext i32 %18 to i64, !dbg !188
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_badSink_buffer_0, i64 0, i64 %idxprom25, !dbg !188
  %19 = load i32, i32* %arrayidx26, align 4, !dbg !188
  call void @printIntLine(i32 %19), !dbg !189
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_badSink_i_0, align 4, !dbg !191
  %inc = add nsw i32 %20, 1, !dbg !191
  store i32 %inc, i32* %_badSink_i_0, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  br label %if.end27, !dbg !196

if.else:                                          ; preds = %if.end19
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  br label %if.end27

if.end27:                                         ; preds = %if.else, %for.end
  br label %badSink_label_, !dbg !199

badSink_label_:                                   ; preds = %if.end27
  call void @llvm.dbg.label(metadata !200), !dbg !201
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_label_, !dbg !202

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_label_: ; preds = %badSink_label_
  call void @llvm.dbg.label(metadata !203), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4454_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_543/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44109CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_4454_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 140, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 228, scope: !63)
!76 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_data_0", scope: !63, file: !1, line: 5, type: !70)
!77 = !DILocation(line: 5, column: 7, scope: !63)
!78 = !DILocation(line: 6, column: 76, scope: !63)
!79 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_recvResult_0", scope: !80, file: !1, line: 8, type: !70)
!80 = distinct !DILexicalBlock(scope: !63, file: !1, line: 7, column: 3)
!81 = !DILocation(line: 8, column: 9, scope: !80)
!82 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_service_0", scope: !80, file: !1, line: 9, type: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !84)
!84 = !{!85, !86, !92, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !83, file: !17, line: 240, baseType: !51, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !83, file: !17, line: 241, baseType: !87, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 25, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !91, line: 40, baseType: !53)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !83, file: !17, line: 242, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !93, file: !17, line: 33, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 26, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !91, line: 42, baseType: !5)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !83, file: !17, line: 245, baseType: !100, size: 64, offset: 64)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !102)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DILocation(line: 9, column: 24, scope: !80)
!105 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_connectSocket_0", scope: !80, file: !1, line: 10, type: !70)
!106 = !DILocation(line: 10, column: 9, scope: !80)
!107 = !DILocation(line: 11, column: 5, scope: !80)
!108 = !DILocation(line: 13, column: 91, scope: !109)
!109 = distinct !DILexicalBlock(scope: !80, file: !1, line: 12, column: 5)
!110 = !DILocation(line: 13, column: 89, scope: !109)
!111 = !DILocation(line: 14, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 14, column: 11)
!113 = !DILocation(line: 14, column: 93, scope: !112)
!114 = !DILocation(line: 14, column: 11, scope: !109)
!115 = !DILocation(line: 16, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 15, column: 7)
!117 = !DILocation(line: 19, column: 7, scope: !109)
!118 = !DILocation(line: 20, column: 83, scope: !109)
!119 = !DILocation(line: 20, column: 94, scope: !109)
!120 = !DILocation(line: 21, column: 101, scope: !109)
!121 = !DILocation(line: 21, column: 83, scope: !109)
!122 = !DILocation(line: 21, column: 92, scope: !109)
!123 = !DILocation(line: 21, column: 99, scope: !109)
!124 = !DILocation(line: 22, column: 94, scope: !109)
!125 = !DILocation(line: 22, column: 83, scope: !109)
!126 = !DILocation(line: 22, column: 92, scope: !109)
!127 = !DILocation(line: 23, column: 19, scope: !128)
!128 = distinct !DILexicalBlock(scope: !109, file: !1, line: 23, column: 11)
!129 = !DILocation(line: 23, column: 102, scope: !128)
!130 = !DILocation(line: 23, column: 11, scope: !128)
!131 = !DILocation(line: 23, column: 287, scope: !128)
!132 = !DILocation(line: 23, column: 11, scope: !109)
!133 = !DILocation(line: 25, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 24, column: 7)
!135 = !DILocation(line: 28, column: 93, scope: !109)
!136 = !DILocation(line: 28, column: 176, scope: !109)
!137 = !DILocation(line: 28, column: 88, scope: !109)
!138 = !DILocation(line: 28, column: 86, scope: !109)
!139 = !DILocation(line: 29, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !109, file: !1, line: 29, column: 11)
!141 = !DILocation(line: 29, column: 91, scope: !140)
!142 = !DILocation(line: 29, column: 100, scope: !140)
!143 = !DILocation(line: 29, column: 104, scope: !140)
!144 = !DILocation(line: 29, column: 183, scope: !140)
!145 = !DILocation(line: 29, column: 11, scope: !109)
!146 = !DILocation(line: 31, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !1, line: 30, column: 7)
!148 = !DILocation(line: 34, column: 7, scope: !109)
!149 = !DILocation(line: 34, column: 87, scope: !109)
!150 = !DILocation(line: 34, column: 167, scope: !109)
!151 = !DILocation(line: 35, column: 87, scope: !109)
!152 = !DILocation(line: 35, column: 82, scope: !109)
!153 = !DILocation(line: 35, column: 80, scope: !109)
!154 = !DILocation(line: 36, column: 5, scope: !109)
!155 = !DILocation(line: 38, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !80, file: !1, line: 38, column: 9)
!157 = !DILocation(line: 38, column: 91, scope: !156)
!158 = !DILocation(line: 38, column: 9, scope: !80)
!159 = !DILocation(line: 40, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 39, column: 5)
!161 = !DILocation(line: 40, column: 7, scope: !160)
!162 = !DILocation(line: 41, column: 5, scope: !160)
!163 = !DILocalVariable(name: "_badSink_i_0", scope: !164, file: !1, line: 46, type: !70)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 45, column: 5)
!165 = distinct !DILexicalBlock(scope: !63, file: !1, line: 44, column: 3)
!166 = !DILocation(line: 46, column: 11, scope: !164)
!167 = !DILocalVariable(name: "_badSink_buffer_0", scope: !164, file: !1, line: 47, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 10)
!171 = !DILocation(line: 47, column: 11, scope: !164)
!172 = !DILocation(line: 48, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !1, line: 48, column: 11)
!174 = !DILocation(line: 48, column: 84, scope: !173)
!175 = !DILocation(line: 48, column: 11, scope: !164)
!176 = !DILocation(line: 50, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 49, column: 7)
!178 = !DILocation(line: 50, column: 16, scope: !177)
!179 = !DILocation(line: 51, column: 27, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 51, column: 9)
!181 = !DILocation(line: 51, column: 14, scope: !180)
!182 = !DILocation(line: 51, column: 32, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 51, column: 9)
!184 = !DILocation(line: 51, column: 45, scope: !183)
!185 = !DILocation(line: 51, column: 9, scope: !180)
!186 = !DILocation(line: 53, column: 42, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 52, column: 9)
!188 = !DILocation(line: 53, column: 24, scope: !187)
!189 = !DILocation(line: 53, column: 11, scope: !187)
!190 = !DILocation(line: 54, column: 9, scope: !187)
!191 = !DILocation(line: 51, column: 63, scope: !183)
!192 = !DILocation(line: 51, column: 9, scope: !183)
!193 = distinct !{!193, !185, !194, !195}
!194 = !DILocation(line: 54, column: 9, scope: !180)
!195 = !{!"llvm.loop.mustprogress"}
!196 = !DILocation(line: 56, column: 7, scope: !177)
!197 = !DILocation(line: 59, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !173, file: !1, line: 58, column: 7)
!199 = !DILocation(line: 62, column: 5, scope: !164)
!200 = !DILabel(scope: !165, name: "badSink_label_", file: !1, line: 63)
!201 = !DILocation(line: 63, column: 5, scope: !165)
!202 = !DILocation(line: 68, column: 3, scope: !165)
!203 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_44_bad_label_", file: !1, line: 69)
!204 = !DILocation(line: 69, column: 3, scope: !63)
!205 = !DILocation(line: 74, column: 1, scope: !63)
