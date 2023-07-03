; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18177CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18207_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18177CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18207_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18177CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18207_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !78
  br label %goodB2G_source, !dbg !79

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !80), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !82, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %goodB2G_source
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !111
  store i32 %call, i32* %_goodB2G_connectSocket_0, align 4, !dbg !113
  %0 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !114
  %cmp = icmp eq i32 %0, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !123
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !124
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !125
  store i32 %call1, i32* %s_addr, align 4, !dbg !126
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !127
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !128
  store i16 %call2, i16* %sin_port, align 2, !dbg !129
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !130
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !132
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !133
  %cmp4 = icmp eq i32 %call3, -1, !dbg !134
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !135

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !136

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !138
  %5 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !139
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !140
  %conv = trunc i64 %call7 to i32, !dbg !140
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !141
  %6 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !142
  %cmp8 = icmp eq i32 %6, -1, !dbg !144
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !145

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !146
  %cmp10 = icmp eq i32 %7, 0, !dbg !147
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !148

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !149

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !151
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !152
  %idxprom = sext i32 %9 to i64, !dbg !151
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !151
  store i8 0, i8* %arrayidx, align 1, !dbg !153
  %10 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !154
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !155
  store i32 %call14, i32* %_goodB2G_data_0, align 4, !dbg !156
  br label %do.end, !dbg !157

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !158
  %cmp15 = icmp ne i32 %11, -1, !dbg !160
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !161

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !162
  %call18 = call i32 @close(i32 %12), !dbg !164
  br label %if.end19, !dbg !165

if.end19:                                         ; preds = %if.then17, %do.end
  br label %goodB2G_sink, !dbg !166

goodB2G_sink:                                     ; preds = %if.end19
  call void @llvm.dbg.label(metadata !167), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !172, metadata !DIExpression()), !dbg !176
  %13 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !176
  %14 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !177
  %cmp20 = icmp sge i32 %14, 0, !dbg !179
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !180

land.lhs.true:                                    ; preds = %goodB2G_sink
  %15 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !181
  %cmp22 = icmp slt i32 %15, 10, !dbg !182
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !183

if.then24:                                        ; preds = %land.lhs.true
  %16 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !184
  %17 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !186
  call void %16(i32 %17), !dbg !184
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then24
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !190
  %cmp25 = icmp slt i32 %18, 10, !dbg !192
  br i1 %cmp25, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !194
  %idxprom27 = sext i32 %19 to i64, !dbg !196
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom27, !dbg !196
  %20 = load i32, i32* %arrayidx28, align 4, !dbg !196
  call void @printIntLine(i32 %20), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !199
  %inc = add nsw i32 %21, 1, !dbg !199
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  br label %if.end29, !dbg !204

if.else:                                          ; preds = %land.lhs.true, %goodB2G_sink
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end29

if.end29:                                         ; preds = %if.else, %for.end
  br label %goodB2G_label_, !dbg !207

goodB2G_label_:                                   ; preds = %if.end29
  call void @llvm.dbg.label(metadata !208), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18177CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18207_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_533/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18177CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_18207_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 172, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G_data_0", scope: !63, file: !1, line: 5, type: !70)
!77 = !DILocation(line: 5, column: 7, scope: !63)
!78 = !DILocation(line: 6, column: 19, scope: !63)
!79 = !DILocation(line: 6, column: 3, scope: !63)
!80 = !DILabel(scope: !63, name: "goodB2G_source", file: !1, line: 7)
!81 = !DILocation(line: 7, column: 3, scope: !63)
!82 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !83, file: !1, line: 9, type: !70)
!83 = distinct !DILexicalBlock(scope: !63, file: !1, line: 8, column: 3)
!84 = !DILocation(line: 9, column: 9, scope: !83)
!85 = !DILocalVariable(name: "_goodB2G_service_0", scope: !83, file: !1, line: 10, type: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !87)
!87 = !{!88, !89, !95, !102}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !86, file: !17, line: 240, baseType: !51, size: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !86, file: !17, line: 241, baseType: !90, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 25, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !94, line: 40, baseType: !53)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !86, file: !17, line: 242, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !96, file: !17, line: 33, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 26, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !94, line: 42, baseType: !5)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !86, file: !17, line: 245, baseType: !103, size: 64, offset: 64)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !105)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DILocation(line: 10, column: 24, scope: !83)
!108 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !83, file: !1, line: 11, type: !70)
!109 = !DILocation(line: 11, column: 9, scope: !83)
!110 = !DILocation(line: 12, column: 5, scope: !83)
!111 = !DILocation(line: 14, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !83, file: !1, line: 13, column: 5)
!113 = !DILocation(line: 14, column: 32, scope: !112)
!114 = !DILocation(line: 15, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 15, column: 11)
!116 = !DILocation(line: 15, column: 36, scope: !115)
!117 = !DILocation(line: 15, column: 11, scope: !112)
!118 = !DILocation(line: 17, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 16, column: 7)
!120 = !DILocation(line: 20, column: 7, scope: !112)
!121 = !DILocation(line: 21, column: 26, scope: !112)
!122 = !DILocation(line: 21, column: 37, scope: !112)
!123 = !DILocation(line: 22, column: 44, scope: !112)
!124 = !DILocation(line: 22, column: 26, scope: !112)
!125 = !DILocation(line: 22, column: 35, scope: !112)
!126 = !DILocation(line: 22, column: 42, scope: !112)
!127 = !DILocation(line: 23, column: 37, scope: !112)
!128 = !DILocation(line: 23, column: 26, scope: !112)
!129 = !DILocation(line: 23, column: 35, scope: !112)
!130 = !DILocation(line: 24, column: 19, scope: !131)
!131 = distinct !DILexicalBlock(scope: !112, file: !1, line: 24, column: 11)
!132 = !DILocation(line: 24, column: 45, scope: !131)
!133 = !DILocation(line: 24, column: 11, scope: !131)
!134 = !DILocation(line: 24, column: 116, scope: !131)
!135 = !DILocation(line: 24, column: 11, scope: !112)
!136 = !DILocation(line: 26, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 25, column: 7)
!138 = !DILocation(line: 29, column: 36, scope: !112)
!139 = !DILocation(line: 29, column: 62, scope: !112)
!140 = !DILocation(line: 29, column: 31, scope: !112)
!141 = !DILocation(line: 29, column: 29, scope: !112)
!142 = !DILocation(line: 30, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !112, file: !1, line: 30, column: 11)
!144 = !DILocation(line: 30, column: 34, scope: !143)
!145 = !DILocation(line: 30, column: 43, scope: !143)
!146 = !DILocation(line: 30, column: 47, scope: !143)
!147 = !DILocation(line: 30, column: 69, scope: !143)
!148 = !DILocation(line: 30, column: 11, scope: !112)
!149 = !DILocation(line: 32, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 31, column: 7)
!151 = !DILocation(line: 35, column: 7, scope: !112)
!152 = !DILocation(line: 35, column: 30, scope: !112)
!153 = !DILocation(line: 35, column: 53, scope: !112)
!154 = !DILocation(line: 36, column: 30, scope: !112)
!155 = !DILocation(line: 36, column: 25, scope: !112)
!156 = !DILocation(line: 36, column: 23, scope: !112)
!157 = !DILocation(line: 37, column: 5, scope: !112)
!158 = !DILocation(line: 39, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !83, file: !1, line: 39, column: 9)
!160 = !DILocation(line: 39, column: 34, scope: !159)
!161 = !DILocation(line: 39, column: 9, scope: !83)
!162 = !DILocation(line: 41, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 40, column: 5)
!164 = !DILocation(line: 41, column: 7, scope: !163)
!165 = !DILocation(line: 42, column: 5, scope: !163)
!166 = !DILocation(line: 46, column: 3, scope: !63)
!167 = !DILabel(scope: !63, name: "goodB2G_sink", file: !1, line: 47)
!168 = !DILocation(line: 47, column: 3, scope: !63)
!169 = !DILocalVariable(name: "_goodB2G_i_0", scope: !170, file: !1, line: 49, type: !70)
!170 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 3)
!171 = !DILocation(line: 49, column: 9, scope: !170)
!172 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !170, file: !1, line: 50, type: !173)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 10)
!176 = !DILocation(line: 50, column: 9, scope: !170)
!177 = !DILocation(line: 51, column: 10, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !1, line: 51, column: 9)
!179 = !DILocation(line: 51, column: 26, scope: !178)
!180 = !DILocation(line: 51, column: 32, scope: !178)
!181 = !DILocation(line: 51, column: 36, scope: !178)
!182 = !DILocation(line: 51, column: 52, scope: !178)
!183 = !DILocation(line: 51, column: 9, scope: !170)
!184 = !DILocation(line: 53, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !1, line: 52, column: 5)
!186 = !DILocation(line: 53, column: 14, scope: !185)
!187 = !DILocation(line: 54, column: 25, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 54, column: 7)
!189 = !DILocation(line: 54, column: 12, scope: !188)
!190 = !DILocation(line: 54, column: 30, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 54, column: 7)
!192 = !DILocation(line: 54, column: 43, scope: !191)
!193 = !DILocation(line: 54, column: 7, scope: !188)
!194 = !DILocation(line: 56, column: 40, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 55, column: 7)
!196 = !DILocation(line: 56, column: 22, scope: !195)
!197 = !DILocation(line: 56, column: 9, scope: !195)
!198 = !DILocation(line: 57, column: 7, scope: !195)
!199 = !DILocation(line: 54, column: 61, scope: !191)
!200 = !DILocation(line: 54, column: 7, scope: !191)
!201 = distinct !{!201, !193, !202, !203}
!202 = !DILocation(line: 57, column: 7, scope: !188)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 59, column: 5, scope: !185)
!205 = !DILocation(line: 62, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !178, file: !1, line: 61, column: 5)
!207 = !DILocation(line: 65, column: 3, scope: !170)
!208 = !DILabel(scope: !63, name: "goodB2G_label_", file: !1, line: 67)
!209 = !DILocation(line: 67, column: 3, scope: !63)
!210 = !DILocation(line: 72, column: 1, scope: !63)
