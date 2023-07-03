; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34213CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34244_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34213CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34244_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34213CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34244_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_myUnion_0 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_data_1 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %_goodB2G_myUnion_0, metadata !78, metadata !DIExpression()), !dbg !85
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !90, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !114
  br label %do.body, !dbg !115

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !116
  store i32 %call, i32* %_goodB2G_connectSocket_0, align 4, !dbg !118
  %0 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !119
  %cmp = icmp eq i32 %0, -1, !dbg !121
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !123

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !125
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !126
  store i16 2, i16* %sin_family, align 4, !dbg !127
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !128
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !129
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !130
  store i32 %call1, i32* %s_addr, align 4, !dbg !131
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !132
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !133
  store i16 %call2, i16* %sin_port, align 2, !dbg !134
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !135
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !137
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !138
  %cmp4 = icmp eq i32 %call3, -1, !dbg !139
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !140

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !141

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !143
  %5 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !144
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !145
  %conv = trunc i64 %call7 to i32, !dbg !145
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !146
  %6 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !147
  %cmp8 = icmp eq i32 %6, -1, !dbg !149
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !150

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !151
  %cmp10 = icmp eq i32 %7, 0, !dbg !152
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !153

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !154

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !156
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !157
  %idxprom = sext i32 %9 to i64, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !156
  store i8 0, i8* %arrayidx, align 1, !dbg !158
  %10 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !159
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !160
  store i32 %call14, i32* %_goodB2G_data_0, align 4, !dbg !161
  br label %do.end, !dbg !162

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !163
  %cmp15 = icmp ne i32 %11, -1, !dbg !165
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !166

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !167
  %call18 = call i32 @close(i32 %12), !dbg !169
  br label %if.end19, !dbg !170

if.end19:                                         ; preds = %if.then17, %do.end
  %13 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !171
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %_goodB2G_myUnion_0 to i32*, !dbg !172
  store i32 %13, i32* %unionFirst, align 4, !dbg !173
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_1, metadata !174, metadata !DIExpression()), !dbg !176
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %_goodB2G_myUnion_0 to i32*, !dbg !177
  %14 = load i32, i32* %unionSecond, align 4, !dbg !177
  store i32 %14, i32* %_goodB2G_data_1, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !181, metadata !DIExpression()), !dbg !185
  %15 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !185
  %16 = load i32, i32* %_goodB2G_data_1, align 4, !dbg !186
  %cmp20 = icmp sge i32 %16, 0, !dbg !188
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !189

land.lhs.true:                                    ; preds = %if.end19
  %17 = load i32, i32* %_goodB2G_data_1, align 4, !dbg !190
  %cmp22 = icmp slt i32 %17, 10, !dbg !191
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !192

if.then24:                                        ; preds = %land.lhs.true
  %18 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !193
  %19 = load i32, i32* %_goodB2G_data_1, align 4, !dbg !195
  call void %18(i32 %19), !dbg !193
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !196
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %if.then24
  %20 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !199
  %cmp25 = icmp slt i32 %20, 10, !dbg !201
  br i1 %cmp25, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !203
  %idxprom27 = sext i32 %21 to i64, !dbg !205
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom27, !dbg !205
  %22 = load i32, i32* %arrayidx28, align 4, !dbg !205
  call void @printIntLine(i32 %22), !dbg !206
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !208
  %inc = add nsw i32 %23, 1, !dbg !208
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  br label %if.end29, !dbg !213

if.else:                                          ; preds = %land.lhs.true, %if.end19
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !214
  br label %if.end29

if.end29:                                         ; preds = %if.else, %for.end
  br label %goodB2G_label_, !dbg !216

goodB2G_label_:                                   ; preds = %if.end29
  call void @llvm.dbg.label(metadata !217), !dbg !218
  ret void, !dbg !219
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34213CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34244_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34213CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34244_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
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
!78 = !DILocalVariable(name: "_goodB2G_myUnion_0", scope: !63, file: !1, line: 6, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType", file: !80, line: 28, baseType: !81)
!80 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_539/code_gened")
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !80, line: 24, size: 32, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !81, file: !80, line: 26, baseType: !70, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !81, file: !80, line: 27, baseType: !70, size: 32)
!85 = !DILocation(line: 6, column: 74, scope: !63)
!86 = !DILocation(line: 7, column: 19, scope: !63)
!87 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !88, file: !1, line: 9, type: !70)
!88 = distinct !DILexicalBlock(scope: !63, file: !1, line: 8, column: 3)
!89 = !DILocation(line: 9, column: 9, scope: !88)
!90 = !DILocalVariable(name: "_goodB2G_service_0", scope: !88, file: !1, line: 10, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !92)
!92 = !{!93, !94, !100, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !91, file: !17, line: 240, baseType: !51, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !91, file: !17, line: 241, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !97, line: 25, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !99, line: 40, baseType: !53)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !91, file: !17, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !17, line: 33, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 26, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !5)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !91, file: !17, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 10, column: 24, scope: !88)
!113 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !88, file: !1, line: 11, type: !70)
!114 = !DILocation(line: 11, column: 9, scope: !88)
!115 = !DILocation(line: 12, column: 5, scope: !88)
!116 = !DILocation(line: 14, column: 34, scope: !117)
!117 = distinct !DILexicalBlock(scope: !88, file: !1, line: 13, column: 5)
!118 = !DILocation(line: 14, column: 32, scope: !117)
!119 = !DILocation(line: 15, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 15, column: 11)
!121 = !DILocation(line: 15, column: 36, scope: !120)
!122 = !DILocation(line: 15, column: 11, scope: !117)
!123 = !DILocation(line: 17, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 16, column: 7)
!125 = !DILocation(line: 20, column: 7, scope: !117)
!126 = !DILocation(line: 21, column: 26, scope: !117)
!127 = !DILocation(line: 21, column: 37, scope: !117)
!128 = !DILocation(line: 22, column: 44, scope: !117)
!129 = !DILocation(line: 22, column: 26, scope: !117)
!130 = !DILocation(line: 22, column: 35, scope: !117)
!131 = !DILocation(line: 22, column: 42, scope: !117)
!132 = !DILocation(line: 23, column: 37, scope: !117)
!133 = !DILocation(line: 23, column: 26, scope: !117)
!134 = !DILocation(line: 23, column: 35, scope: !117)
!135 = !DILocation(line: 24, column: 19, scope: !136)
!136 = distinct !DILexicalBlock(scope: !117, file: !1, line: 24, column: 11)
!137 = !DILocation(line: 24, column: 45, scope: !136)
!138 = !DILocation(line: 24, column: 11, scope: !136)
!139 = !DILocation(line: 24, column: 116, scope: !136)
!140 = !DILocation(line: 24, column: 11, scope: !117)
!141 = !DILocation(line: 26, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 25, column: 7)
!143 = !DILocation(line: 29, column: 36, scope: !117)
!144 = !DILocation(line: 29, column: 62, scope: !117)
!145 = !DILocation(line: 29, column: 31, scope: !117)
!146 = !DILocation(line: 29, column: 29, scope: !117)
!147 = !DILocation(line: 30, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !117, file: !1, line: 30, column: 11)
!149 = !DILocation(line: 30, column: 34, scope: !148)
!150 = !DILocation(line: 30, column: 43, scope: !148)
!151 = !DILocation(line: 30, column: 47, scope: !148)
!152 = !DILocation(line: 30, column: 69, scope: !148)
!153 = !DILocation(line: 30, column: 11, scope: !117)
!154 = !DILocation(line: 32, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !1, line: 31, column: 7)
!156 = !DILocation(line: 35, column: 7, scope: !117)
!157 = !DILocation(line: 35, column: 30, scope: !117)
!158 = !DILocation(line: 35, column: 53, scope: !117)
!159 = !DILocation(line: 36, column: 30, scope: !117)
!160 = !DILocation(line: 36, column: 25, scope: !117)
!161 = !DILocation(line: 36, column: 23, scope: !117)
!162 = !DILocation(line: 37, column: 5, scope: !117)
!163 = !DILocation(line: 39, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !88, file: !1, line: 39, column: 9)
!165 = !DILocation(line: 39, column: 34, scope: !164)
!166 = !DILocation(line: 39, column: 9, scope: !88)
!167 = !DILocation(line: 41, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 40, column: 5)
!169 = !DILocation(line: 41, column: 7, scope: !168)
!170 = !DILocation(line: 42, column: 5, scope: !168)
!171 = !DILocation(line: 45, column: 35, scope: !63)
!172 = !DILocation(line: 45, column: 22, scope: !63)
!173 = !DILocation(line: 45, column: 33, scope: !63)
!174 = !DILocalVariable(name: "_goodB2G_data_1", scope: !175, file: !1, line: 47, type: !70)
!175 = distinct !DILexicalBlock(scope: !63, file: !1, line: 46, column: 3)
!176 = !DILocation(line: 47, column: 9, scope: !175)
!177 = !DILocation(line: 47, column: 46, scope: !175)
!178 = !DILocalVariable(name: "_goodB2G_i_0", scope: !179, file: !1, line: 49, type: !70)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 48, column: 5)
!180 = !DILocation(line: 49, column: 11, scope: !179)
!181 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !179, file: !1, line: 50, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 10)
!185 = !DILocation(line: 50, column: 11, scope: !179)
!186 = !DILocation(line: 51, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !1, line: 51, column: 11)
!188 = !DILocation(line: 51, column: 28, scope: !187)
!189 = !DILocation(line: 51, column: 34, scope: !187)
!190 = !DILocation(line: 51, column: 38, scope: !187)
!191 = !DILocation(line: 51, column: 54, scope: !187)
!192 = !DILocation(line: 51, column: 11, scope: !179)
!193 = !DILocation(line: 53, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !187, file: !1, line: 52, column: 7)
!195 = !DILocation(line: 53, column: 16, scope: !194)
!196 = !DILocation(line: 54, column: 27, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 54, column: 9)
!198 = !DILocation(line: 54, column: 14, scope: !197)
!199 = !DILocation(line: 54, column: 32, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 54, column: 9)
!201 = !DILocation(line: 54, column: 45, scope: !200)
!202 = !DILocation(line: 54, column: 9, scope: !197)
!203 = !DILocation(line: 56, column: 42, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 55, column: 9)
!205 = !DILocation(line: 56, column: 24, scope: !204)
!206 = !DILocation(line: 56, column: 11, scope: !204)
!207 = !DILocation(line: 57, column: 9, scope: !204)
!208 = !DILocation(line: 54, column: 63, scope: !200)
!209 = !DILocation(line: 54, column: 9, scope: !200)
!210 = distinct !{!210, !202, !211, !212}
!211 = !DILocation(line: 57, column: 9, scope: !197)
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 59, column: 7, scope: !194)
!214 = !DILocation(line: 62, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !187, file: !1, line: 61, column: 7)
!216 = !DILocation(line: 66, column: 3, scope: !175)
!217 = !DILabel(scope: !63, name: "goodB2G_label_", file: !1, line: 67)
!218 = !DILocation(line: 67, column: 3, scope: !63)
!219 = !DILocation(line: 72, column: 1, scope: !63)
