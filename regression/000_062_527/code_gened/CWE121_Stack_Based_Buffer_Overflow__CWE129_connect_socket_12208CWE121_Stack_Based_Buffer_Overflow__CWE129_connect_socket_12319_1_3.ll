; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12319_1_3.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12319_1_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12319_1_3(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
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
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !79, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !84, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !108
  br label %do.body, !dbg !109

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !110
  store i32 %call, i32* %_goodB2G_connectSocket_0, align 4, !dbg !112
  %0 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !113
  %cmp = icmp eq i32 %0, -1, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !117

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !119
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !120
  store i16 2, i16* %sin_family, align 4, !dbg !121
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 %call1, i32* %s_addr, align 4, !dbg !125
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !127
  store i16 %call2, i16* %sin_port, align 2, !dbg !128
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !129
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !131
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !132
  %cmp4 = icmp eq i32 %call3, -1, !dbg !133
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !134

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !137
  %5 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !138
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !139
  %conv = trunc i64 %call7 to i32, !dbg !139
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !140
  %6 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !141
  %cmp8 = icmp eq i32 %6, -1, !dbg !143
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !144

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !145
  %cmp10 = icmp eq i32 %7, 0, !dbg !146
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !147

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !148

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !150
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !151
  %idxprom = sext i32 %9 to i64, !dbg !150
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !150
  store i8 0, i8* %arrayidx, align 1, !dbg !152
  %10 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !153
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !154
  store i32 %call14, i32* %_goodB2G_data_0, align 4, !dbg !155
  br label %do.end, !dbg !156

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !157
  %cmp15 = icmp ne i32 %11, -1, !dbg !159
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !160

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !161
  %call18 = call i32 @close(i32 %12), !dbg !163
  br label %if.end19, !dbg !164

if.end19:                                         ; preds = %if.then17, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !170, metadata !DIExpression()), !dbg !174
  %13 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !174
  %14 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !175
  %cmp20 = icmp sge i32 %14, 0, !dbg !177
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !178

land.lhs.true:                                    ; preds = %if.end19
  %15 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !179
  %cmp22 = icmp slt i32 %15, 10, !dbg !180
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !181

if.then24:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !182
  %idxprom25 = sext i32 %16 to i64, !dbg !184
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom25, !dbg !184
  store i32 1, i32* %arrayidx26, align 4, !dbg !185
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !186
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.inc, %if.then24
  %17 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !189
  %cmp27 = icmp slt i32 %17, 10, !dbg !191
  br i1 %cmp27, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !193
  %idxprom29 = sext i32 %18 to i64, !dbg !195
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom29, !dbg !195
  %19 = load i32, i32* %arrayidx30, align 4, !dbg !195
  call void @printIntLine(i32 %19), !dbg !196
  br label %for.inc, !dbg !197

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !198
  %inc = add nsw i32 %20, 1, !dbg !198
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !198
  br label %for.cond, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !203

if.else:                                          ; preds = %land.lhs.true, %if.end19
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !204
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %goodB2G_label_, !dbg !206

goodB2G_label_:                                   ; preds = %if.end31
  call void @llvm.dbg.label(metadata !207), !dbg !208
  ret void, !dbg !209
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12319_1_3.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12208CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12319_1_3", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
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
!76 = !DILocalVariable(name: "_goodB2G_data_0", scope: !63, file: !1, line: 5, type: !70)
!77 = !DILocation(line: 5, column: 7, scope: !63)
!78 = !DILocation(line: 6, column: 19, scope: !63)
!79 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !80, file: !1, line: 10, type: !70)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 9, column: 5)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 8, column: 3)
!82 = distinct !DILexicalBlock(scope: !63, file: !1, line: 7, column: 7)
!83 = !DILocation(line: 10, column: 11, scope: !80)
!84 = !DILocalVariable(name: "_goodB2G_service_0", scope: !80, file: !1, line: 11, type: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !86)
!86 = !{!87, !88, !94, !101}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !85, file: !17, line: 240, baseType: !51, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !85, file: !17, line: 241, baseType: !89, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !53)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !85, file: !17, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !17, line: 33, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !5)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !85, file: !17, line: 245, baseType: !102, size: 64, offset: 64)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !104)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !{!105}
!105 = !DISubrange(count: 8)
!106 = !DILocation(line: 11, column: 26, scope: !80)
!107 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !80, file: !1, line: 12, type: !70)
!108 = !DILocation(line: 12, column: 11, scope: !80)
!109 = !DILocation(line: 13, column: 7, scope: !80)
!110 = !DILocation(line: 15, column: 36, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !1, line: 14, column: 7)
!112 = !DILocation(line: 15, column: 34, scope: !111)
!113 = !DILocation(line: 16, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 16, column: 13)
!115 = !DILocation(line: 16, column: 38, scope: !114)
!116 = !DILocation(line: 16, column: 13, scope: !111)
!117 = !DILocation(line: 18, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 17, column: 9)
!119 = !DILocation(line: 21, column: 9, scope: !111)
!120 = !DILocation(line: 22, column: 28, scope: !111)
!121 = !DILocation(line: 22, column: 39, scope: !111)
!122 = !DILocation(line: 23, column: 46, scope: !111)
!123 = !DILocation(line: 23, column: 28, scope: !111)
!124 = !DILocation(line: 23, column: 37, scope: !111)
!125 = !DILocation(line: 23, column: 44, scope: !111)
!126 = !DILocation(line: 24, column: 39, scope: !111)
!127 = !DILocation(line: 24, column: 28, scope: !111)
!128 = !DILocation(line: 24, column: 37, scope: !111)
!129 = !DILocation(line: 25, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !111, file: !1, line: 25, column: 13)
!131 = !DILocation(line: 25, column: 47, scope: !130)
!132 = !DILocation(line: 25, column: 13, scope: !130)
!133 = !DILocation(line: 25, column: 118, scope: !130)
!134 = !DILocation(line: 25, column: 13, scope: !111)
!135 = !DILocation(line: 27, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 26, column: 9)
!137 = !DILocation(line: 30, column: 38, scope: !111)
!138 = !DILocation(line: 30, column: 64, scope: !111)
!139 = !DILocation(line: 30, column: 33, scope: !111)
!140 = !DILocation(line: 30, column: 31, scope: !111)
!141 = !DILocation(line: 31, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !111, file: !1, line: 31, column: 13)
!143 = !DILocation(line: 31, column: 36, scope: !142)
!144 = !DILocation(line: 31, column: 45, scope: !142)
!145 = !DILocation(line: 31, column: 49, scope: !142)
!146 = !DILocation(line: 31, column: 71, scope: !142)
!147 = !DILocation(line: 31, column: 13, scope: !111)
!148 = !DILocation(line: 33, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 32, column: 9)
!150 = !DILocation(line: 36, column: 9, scope: !111)
!151 = !DILocation(line: 36, column: 32, scope: !111)
!152 = !DILocation(line: 36, column: 55, scope: !111)
!153 = !DILocation(line: 37, column: 32, scope: !111)
!154 = !DILocation(line: 37, column: 27, scope: !111)
!155 = !DILocation(line: 37, column: 25, scope: !111)
!156 = !DILocation(line: 38, column: 7, scope: !111)
!157 = !DILocation(line: 40, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !80, file: !1, line: 40, column: 11)
!159 = !DILocation(line: 40, column: 36, scope: !158)
!160 = !DILocation(line: 40, column: 11, scope: !80)
!161 = !DILocation(line: 42, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 41, column: 7)
!163 = !DILocation(line: 42, column: 9, scope: !162)
!164 = !DILocation(line: 43, column: 7, scope: !162)
!165 = !DILocalVariable(name: "_goodB2G_i_0", scope: !166, file: !1, line: 91, type: !70)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 90, column: 5)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 89, column: 3)
!168 = distinct !DILexicalBlock(scope: !63, file: !1, line: 88, column: 7)
!169 = !DILocation(line: 91, column: 11, scope: !166)
!170 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !166, file: !1, line: 92, type: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DILocation(line: 92, column: 11, scope: !166)
!175 = !DILocation(line: 93, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !1, line: 93, column: 11)
!177 = !DILocation(line: 93, column: 28, scope: !176)
!178 = !DILocation(line: 93, column: 34, scope: !176)
!179 = !DILocation(line: 93, column: 38, scope: !176)
!180 = !DILocation(line: 93, column: 54, scope: !176)
!181 = !DILocation(line: 93, column: 11, scope: !166)
!182 = !DILocation(line: 95, column: 27, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 94, column: 7)
!184 = !DILocation(line: 95, column: 9, scope: !183)
!185 = !DILocation(line: 95, column: 44, scope: !183)
!186 = !DILocation(line: 96, column: 27, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 96, column: 9)
!188 = !DILocation(line: 96, column: 14, scope: !187)
!189 = !DILocation(line: 96, column: 32, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 96, column: 9)
!191 = !DILocation(line: 96, column: 45, scope: !190)
!192 = !DILocation(line: 96, column: 9, scope: !187)
!193 = !DILocation(line: 98, column: 42, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 97, column: 9)
!195 = !DILocation(line: 98, column: 24, scope: !194)
!196 = !DILocation(line: 98, column: 11, scope: !194)
!197 = !DILocation(line: 99, column: 9, scope: !194)
!198 = !DILocation(line: 96, column: 63, scope: !190)
!199 = !DILocation(line: 96, column: 9, scope: !190)
!200 = distinct !{!200, !192, !201, !202}
!201 = !DILocation(line: 99, column: 9, scope: !187)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 101, column: 7, scope: !183)
!204 = !DILocation(line: 104, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !176, file: !1, line: 103, column: 7)
!206 = !DILocation(line: 88, column: 7, scope: !168)
!207 = !DILabel(scope: !63, name: "goodB2G_label_", file: !1, line: 131)
!208 = !DILocation(line: 131, column: 3, scope: !63)
!209 = !DILocation(line: 136, column: 1, scope: !63)
