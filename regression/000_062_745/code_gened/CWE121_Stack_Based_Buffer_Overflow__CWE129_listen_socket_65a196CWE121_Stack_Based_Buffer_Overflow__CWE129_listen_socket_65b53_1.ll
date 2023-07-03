; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a196CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b53_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a196CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b53_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a196CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b53_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !68 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_listenSocket_0 = alloca i32, align 4
  %_goodB2G_acceptSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !87, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_listenSocket_0, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 -1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_acceptSocket_0, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 -1, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !108
  br label %do.body, !dbg !109

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !110
  store i32 %call, i32* %_goodB2G_listenSocket_0, align 4, !dbg !112
  %0 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !113
  %cmp = icmp eq i32 %0, -1, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !117

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !119
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !120
  store i16 2, i16* %sin_family, align 4, !dbg !121
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !122
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !123
  store i32 0, i32* %s_addr, align 4, !dbg !124
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !125
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !126
  store i16 %call1, i16* %sin_port, align 2, !dbg !127
  %2 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !128
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !130
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !131
  %cmp3 = icmp eq i32 %call2, -1, !dbg !132
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !133

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !134

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !136
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !138
  %cmp7 = icmp eq i32 %call6, -1, !dbg !139
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !140

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !141

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !143
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !144
  store i32 %call10, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !145
  %6 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !146
  %cmp11 = icmp eq i32 %6, -1, !dbg !148
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !149

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !150

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !152
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !153
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !154
  %conv = trunc i64 %call14 to i32, !dbg !154
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !155
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !156
  %cmp15 = icmp eq i32 %9, -1, !dbg !158
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !159

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !160
  %cmp17 = icmp eq i32 %10, 0, !dbg !161
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !162

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !163

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !165
  %12 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !166
  %idxprom = sext i32 %12 to i64, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !165
  store i8 0, i8* %arrayidx, align 1, !dbg !167
  %13 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !168
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !169
  store i32 %call21, i32* %_goodB2G_data_0, align 4, !dbg !170
  br label %do.end, !dbg !171

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !172
  %cmp22 = icmp ne i32 %14, -1, !dbg !174
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !175

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !176
  %call25 = call i32 @close(i32 %15), !dbg !178
  br label %if.end26, !dbg !179

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !180
  %cmp27 = icmp ne i32 %16, -1, !dbg !182
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !183

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !184
  %call30 = call i32 @close(i32 %17), !dbg !186
  br label %if.end31, !dbg !187

if.end31:                                         ; preds = %if.then29, %if.end26
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_buffer_0, metadata !192, metadata !DIExpression()), !dbg !196
  %18 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_buffer_0 to i8*, !dbg !196
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false), !dbg !196
  %19 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !197
  %cmp32 = icmp sge i32 %19, 0, !dbg !199
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !200

if.then34:                                        ; preds = %if.end31
  %20 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !201
  %21 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !203
  call void %20(i32 %21), !dbg !201
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, align 4, !dbg !204
  br label %for.cond, !dbg !206

for.cond:                                         ; preds = %for.inc, %if.then34
  %22 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, align 4, !dbg !207
  %cmp35 = icmp slt i32 %22, 10, !dbg !209
  br i1 %cmp35, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, align 4, !dbg !211
  %idxprom37 = sext i32 %23 to i64, !dbg !213
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_buffer_0, i64 0, i64 %idxprom37, !dbg !213
  %24 = load i32, i32* %arrayidx38, align 4, !dbg !213
  call void @printIntLine(i32 %24), !dbg !214
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, align 4, !dbg !216
  %inc = add nsw i32 %25, 1, !dbg !216
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0, align 4, !dbg !216
  br label %for.cond, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !221

if.else:                                          ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !222
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_label_, !dbg !224

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_label_: ; preds = %if.end39
  call void @llvm.dbg.label(metadata !225), !dbg !226
  br label %goodB2G_label_, !dbg !227

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_label_
  call void @llvm.dbg.label(metadata !228), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #5

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen(...) #2

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept(...) #2

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
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a196CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b53_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/code_gened")
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
!45 = !{!46, !51}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !53, line: 178, size: 128, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !52, file: !53, line: 180, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !57, line: 28, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !52, file: !53, line: 181, baseType: !60, size: 112, offset: 16)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 112, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !{i32 7, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{!"clang version 12.0.0"}
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a196CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b53_1", scope: !1, file: !1, line: 3, type: !69, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !68, file: !1, line: 3, type: !71)
!78 = !DILocation(line: 3, column: 140, scope: !68)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !68, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 171, scope: !68)
!81 = !DILocalVariable(name: "_goodB2G_data_0", scope: !68, file: !1, line: 5, type: !75)
!82 = !DILocation(line: 5, column: 7, scope: !68)
!83 = !DILocation(line: 6, column: 19, scope: !68)
!84 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !85, file: !1, line: 8, type: !75)
!85 = distinct !DILexicalBlock(scope: !68, file: !1, line: 7, column: 3)
!86 = !DILocation(line: 8, column: 9, scope: !85)
!87 = !DILocalVariable(name: "_goodB2G_service_0", scope: !85, file: !1, line: 9, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !89)
!89 = !{!90, !91, !95, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !88, file: !17, line: 240, baseType: !56, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !88, file: !17, line: 241, baseType: !92, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !88, file: !17, line: 242, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !96, file: !17, line: 33, baseType: !46, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !88, file: !17, line: 245, baseType: !100, size: 64, offset: 64)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !102)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DILocation(line: 9, column: 24, scope: !85)
!105 = !DILocalVariable(name: "_goodB2G_listenSocket_0", scope: !85, file: !1, line: 10, type: !75)
!106 = !DILocation(line: 10, column: 9, scope: !85)
!107 = !DILocalVariable(name: "_goodB2G_acceptSocket_0", scope: !85, file: !1, line: 11, type: !75)
!108 = !DILocation(line: 11, column: 9, scope: !85)
!109 = !DILocation(line: 12, column: 5, scope: !85)
!110 = !DILocation(line: 14, column: 33, scope: !111)
!111 = distinct !DILexicalBlock(scope: !85, file: !1, line: 13, column: 5)
!112 = !DILocation(line: 14, column: 31, scope: !111)
!113 = !DILocation(line: 15, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 15, column: 11)
!115 = !DILocation(line: 15, column: 35, scope: !114)
!116 = !DILocation(line: 15, column: 11, scope: !111)
!117 = !DILocation(line: 17, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 16, column: 7)
!119 = !DILocation(line: 20, column: 7, scope: !111)
!120 = !DILocation(line: 21, column: 26, scope: !111)
!121 = !DILocation(line: 21, column: 37, scope: !111)
!122 = !DILocation(line: 22, column: 26, scope: !111)
!123 = !DILocation(line: 22, column: 35, scope: !111)
!124 = !DILocation(line: 22, column: 42, scope: !111)
!125 = !DILocation(line: 23, column: 37, scope: !111)
!126 = !DILocation(line: 23, column: 26, scope: !111)
!127 = !DILocation(line: 23, column: 35, scope: !111)
!128 = !DILocation(line: 24, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !111, file: !1, line: 24, column: 11)
!130 = !DILocation(line: 24, column: 41, scope: !129)
!131 = !DILocation(line: 24, column: 11, scope: !129)
!132 = !DILocation(line: 24, column: 112, scope: !129)
!133 = !DILocation(line: 24, column: 11, scope: !111)
!134 = !DILocation(line: 26, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 25, column: 7)
!136 = !DILocation(line: 29, column: 66, scope: !137)
!137 = distinct !DILexicalBlock(scope: !111, file: !1, line: 29, column: 11)
!138 = !DILocation(line: 29, column: 11, scope: !137)
!139 = !DILocation(line: 29, column: 94, scope: !137)
!140 = !DILocation(line: 29, column: 11, scope: !111)
!141 = !DILocation(line: 31, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 30, column: 7)
!143 = !DILocation(line: 34, column: 88, scope: !111)
!144 = !DILocation(line: 34, column: 33, scope: !111)
!145 = !DILocation(line: 34, column: 31, scope: !111)
!146 = !DILocation(line: 35, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !111, file: !1, line: 35, column: 11)
!148 = !DILocation(line: 35, column: 35, scope: !147)
!149 = !DILocation(line: 35, column: 11, scope: !111)
!150 = !DILocation(line: 37, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 36, column: 7)
!152 = !DILocation(line: 40, column: 36, scope: !111)
!153 = !DILocation(line: 40, column: 61, scope: !111)
!154 = !DILocation(line: 40, column: 31, scope: !111)
!155 = !DILocation(line: 40, column: 29, scope: !111)
!156 = !DILocation(line: 41, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !111, file: !1, line: 41, column: 11)
!158 = !DILocation(line: 41, column: 34, scope: !157)
!159 = !DILocation(line: 41, column: 43, scope: !157)
!160 = !DILocation(line: 41, column: 47, scope: !157)
!161 = !DILocation(line: 41, column: 69, scope: !157)
!162 = !DILocation(line: 41, column: 11, scope: !111)
!163 = !DILocation(line: 43, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !1, line: 42, column: 7)
!165 = !DILocation(line: 46, column: 7, scope: !111)
!166 = !DILocation(line: 46, column: 30, scope: !111)
!167 = !DILocation(line: 46, column: 53, scope: !111)
!168 = !DILocation(line: 47, column: 30, scope: !111)
!169 = !DILocation(line: 47, column: 25, scope: !111)
!170 = !DILocation(line: 47, column: 23, scope: !111)
!171 = !DILocation(line: 48, column: 5, scope: !111)
!172 = !DILocation(line: 50, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !85, file: !1, line: 50, column: 9)
!174 = !DILocation(line: 50, column: 33, scope: !173)
!175 = !DILocation(line: 50, column: 9, scope: !85)
!176 = !DILocation(line: 52, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 51, column: 5)
!178 = !DILocation(line: 52, column: 7, scope: !177)
!179 = !DILocation(line: 53, column: 5, scope: !177)
!180 = !DILocation(line: 55, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !85, file: !1, line: 55, column: 9)
!182 = !DILocation(line: 55, column: 33, scope: !181)
!183 = !DILocation(line: 55, column: 9, scope: !85)
!184 = !DILocation(line: 57, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 56, column: 5)
!186 = !DILocation(line: 57, column: 7, scope: !185)
!187 = !DILocation(line: 58, column: 5, scope: !185)
!188 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_i_0", scope: !189, file: !1, line: 63, type: !75)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 5)
!190 = distinct !DILexicalBlock(scope: !68, file: !1, line: 61, column: 3)
!191 = !DILocation(line: 63, column: 11, scope: !189)
!192 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_buffer_0", scope: !189, file: !1, line: 64, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 320, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 10)
!196 = !DILocation(line: 64, column: 11, scope: !189)
!197 = !DILocation(line: 65, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !1, line: 65, column: 11)
!199 = !DILocation(line: 65, column: 27, scope: !198)
!200 = !DILocation(line: 65, column: 11, scope: !189)
!201 = !DILocation(line: 67, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 66, column: 7)
!203 = !DILocation(line: 67, column: 16, scope: !202)
!204 = !DILocation(line: 68, column: 88, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 68, column: 9)
!206 = !DILocation(line: 68, column: 14, scope: !205)
!207 = !DILocation(line: 68, column: 93, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 68, column: 9)
!209 = !DILocation(line: 68, column: 167, scope: !208)
!210 = !DILocation(line: 68, column: 9, scope: !205)
!211 = !DILocation(line: 70, column: 103, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 69, column: 9)
!213 = !DILocation(line: 70, column: 24, scope: !212)
!214 = !DILocation(line: 70, column: 11, scope: !212)
!215 = !DILocation(line: 71, column: 9, scope: !212)
!216 = !DILocation(line: 68, column: 246, scope: !208)
!217 = !DILocation(line: 68, column: 9, scope: !208)
!218 = distinct !{!218, !210, !219, !220}
!219 = !DILocation(line: 71, column: 9, scope: !205)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 73, column: 7, scope: !202)
!222 = !DILocation(line: 76, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !198, file: !1, line: 75, column: 7)
!224 = !DILocation(line: 79, column: 5, scope: !189)
!225 = !DILabel(scope: !190, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink_label_", file: !1, line: 80)
!226 = !DILocation(line: 80, column: 5, scope: !190)
!227 = !DILocation(line: 85, column: 3, scope: !190)
!228 = !DILabel(scope: !68, name: "goodB2G_label_", file: !1, line: 86)
!229 = !DILocation(line: 86, column: 3, scope: !68)
!230 = !DILocation(line: 91, column: 1, scope: !68)
