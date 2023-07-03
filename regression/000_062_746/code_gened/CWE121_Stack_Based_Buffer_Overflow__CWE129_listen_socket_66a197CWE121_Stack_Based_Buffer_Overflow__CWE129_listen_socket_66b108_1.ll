; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a197CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b108_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a197CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b108_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a197CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b108_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !68 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_dataArray_0 = alloca [5 x i32], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_listenSocket_0 = alloca i32, align 4
  %_goodB2G_acceptSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata [5 x i32]* %_goodB2G_dataArray_0, metadata !83, metadata !DIExpression()), !dbg !87
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !92, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_listenSocket_0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_acceptSocket_0, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !113
  br label %do.body, !dbg !114

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !115
  store i32 %call, i32* %_goodB2G_listenSocket_0, align 4, !dbg !117
  %0 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !118
  %cmp = icmp eq i32 %0, -1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !122

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !124
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !124
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !125
  store i16 2, i16* %sin_family, align 4, !dbg !126
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !127
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !128
  store i32 0, i32* %s_addr, align 4, !dbg !129
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !130
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !131
  store i16 %call1, i16* %sin_port, align 2, !dbg !132
  %2 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !133
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !135
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !136
  %cmp3 = icmp eq i32 %call2, -1, !dbg !137
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !138

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !139

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !141
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !143
  %cmp7 = icmp eq i32 %call6, -1, !dbg !144
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !145

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !146

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !148
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !149
  store i32 %call10, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !150
  %6 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !151
  %cmp11 = icmp eq i32 %6, -1, !dbg !153
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !154

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !155

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !157
  %8 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !158
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !159
  %conv = trunc i64 %call14 to i32, !dbg !159
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !160
  %9 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !161
  %cmp15 = icmp eq i32 %9, -1, !dbg !163
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !165
  %cmp17 = icmp eq i32 %10, 0, !dbg !166
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !167

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !168

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !170
  %12 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !171
  %idxprom = sext i32 %12 to i64, !dbg !170
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !170
  store i8 0, i8* %arrayidx, align 1, !dbg !172
  %13 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !173
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !174
  store i32 %call21, i32* %_goodB2G_data_0, align 4, !dbg !175
  br label %do.end, !dbg !176

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !177
  %cmp22 = icmp ne i32 %14, -1, !dbg !179
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !180

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !181
  %call25 = call i32 @close(i32 %15), !dbg !183
  br label %if.end26, !dbg !184

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !185
  %cmp27 = icmp ne i32 %16, -1, !dbg !187
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !188

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !189
  %call30 = call i32 @close(i32 %17), !dbg !191
  br label %if.end31, !dbg !192

if.end31:                                         ; preds = %if.then29, %if.end26
  %18 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !193
  %arrayidx32 = getelementptr inbounds [5 x i32], [5 x i32]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !194
  store i32 %18, i32* %arrayidx32, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0, metadata !196, metadata !DIExpression()), !dbg !198
  %arrayidx33 = getelementptr inbounds [5 x i32], [5 x i32]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !199
  %19 = load i32, i32* %arrayidx33, align 8, !dbg !199
  store i32 %19, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, metadata !200, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_buffer_0, metadata !203, metadata !DIExpression()), !dbg !207
  %20 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_buffer_0 to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !207
  %21 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0, align 4, !dbg !208
  %cmp34 = icmp sge i32 %21, 0, !dbg !210
  br i1 %cmp34, label %land.lhs.true, label %if.else, !dbg !211

land.lhs.true:                                    ; preds = %if.end31
  %22 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0, align 4, !dbg !212
  %cmp36 = icmp slt i32 %22, 10, !dbg !213
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !214

if.then38:                                        ; preds = %land.lhs.true
  %23 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !215
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0, align 4, !dbg !217
  call void %23(i32 %24), !dbg !215
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then38
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, align 4, !dbg !221
  %cmp39 = icmp slt i32 %25, 10, !dbg !223
  br i1 %cmp39, label %for.body, label %for.end, !dbg !224

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, align 4, !dbg !225
  %idxprom41 = sext i32 %26 to i64, !dbg !227
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_buffer_0, i64 0, i64 %idxprom41, !dbg !227
  %27 = load i32, i32* %arrayidx42, align 4, !dbg !227
  call void @printIntLine(i32 %27), !dbg !228
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, align 4, !dbg !230
  %inc = add nsw i32 %28, 1, !dbg !230
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !235

if.else:                                          ; preds = %land.lhs.true, %if.end31
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)), !dbg !236
  br label %if.end43

if.end43:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_label_, !dbg !238

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_label_: ; preds = %if.end43
  call void @llvm.dbg.label(metadata !239), !dbg !240
  br label %goodB2G_label_, !dbg !241

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !242), !dbg !243
  ret void, !dbg !244
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a197CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b108_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_746/code_gened")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a197CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b108_1", scope: !1, file: !1, line: 3, type: !69, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !68, file: !1, line: 3, type: !71)
!78 = !DILocation(line: 3, column: 141, scope: !68)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !68, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 172, scope: !68)
!81 = !DILocalVariable(name: "_goodB2G_data_0", scope: !68, file: !1, line: 5, type: !75)
!82 = !DILocation(line: 5, column: 7, scope: !68)
!83 = !DILocalVariable(name: "_goodB2G_dataArray_0", scope: !68, file: !1, line: 6, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 160, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 5)
!87 = !DILocation(line: 6, column: 7, scope: !68)
!88 = !DILocation(line: 7, column: 19, scope: !68)
!89 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !90, file: !1, line: 9, type: !75)
!90 = distinct !DILexicalBlock(scope: !68, file: !1, line: 8, column: 3)
!91 = !DILocation(line: 9, column: 9, scope: !90)
!92 = !DILocalVariable(name: "_goodB2G_service_0", scope: !90, file: !1, line: 10, type: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !94)
!94 = !{!95, !96, !100, !104}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !93, file: !17, line: 240, baseType: !56, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !93, file: !17, line: 241, baseType: !97, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !93, file: !17, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !17, line: 33, baseType: !46, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !93, file: !17, line: 245, baseType: !105, size: 64, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !107)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DILocation(line: 10, column: 24, scope: !90)
!110 = !DILocalVariable(name: "_goodB2G_listenSocket_0", scope: !90, file: !1, line: 11, type: !75)
!111 = !DILocation(line: 11, column: 9, scope: !90)
!112 = !DILocalVariable(name: "_goodB2G_acceptSocket_0", scope: !90, file: !1, line: 12, type: !75)
!113 = !DILocation(line: 12, column: 9, scope: !90)
!114 = !DILocation(line: 13, column: 5, scope: !90)
!115 = !DILocation(line: 15, column: 33, scope: !116)
!116 = distinct !DILexicalBlock(scope: !90, file: !1, line: 14, column: 5)
!117 = !DILocation(line: 15, column: 31, scope: !116)
!118 = !DILocation(line: 16, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 16, column: 11)
!120 = !DILocation(line: 16, column: 35, scope: !119)
!121 = !DILocation(line: 16, column: 11, scope: !116)
!122 = !DILocation(line: 18, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 17, column: 7)
!124 = !DILocation(line: 21, column: 7, scope: !116)
!125 = !DILocation(line: 22, column: 26, scope: !116)
!126 = !DILocation(line: 22, column: 37, scope: !116)
!127 = !DILocation(line: 23, column: 26, scope: !116)
!128 = !DILocation(line: 23, column: 35, scope: !116)
!129 = !DILocation(line: 23, column: 42, scope: !116)
!130 = !DILocation(line: 24, column: 37, scope: !116)
!131 = !DILocation(line: 24, column: 26, scope: !116)
!132 = !DILocation(line: 24, column: 35, scope: !116)
!133 = !DILocation(line: 25, column: 16, scope: !134)
!134 = distinct !DILexicalBlock(scope: !116, file: !1, line: 25, column: 11)
!135 = !DILocation(line: 25, column: 41, scope: !134)
!136 = !DILocation(line: 25, column: 11, scope: !134)
!137 = !DILocation(line: 25, column: 112, scope: !134)
!138 = !DILocation(line: 25, column: 11, scope: !116)
!139 = !DILocation(line: 27, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 26, column: 7)
!141 = !DILocation(line: 30, column: 66, scope: !142)
!142 = distinct !DILexicalBlock(scope: !116, file: !1, line: 30, column: 11)
!143 = !DILocation(line: 30, column: 11, scope: !142)
!144 = !DILocation(line: 30, column: 94, scope: !142)
!145 = !DILocation(line: 30, column: 11, scope: !116)
!146 = !DILocation(line: 32, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 31, column: 7)
!148 = !DILocation(line: 35, column: 88, scope: !116)
!149 = !DILocation(line: 35, column: 33, scope: !116)
!150 = !DILocation(line: 35, column: 31, scope: !116)
!151 = !DILocation(line: 36, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !116, file: !1, line: 36, column: 11)
!153 = !DILocation(line: 36, column: 35, scope: !152)
!154 = !DILocation(line: 36, column: 11, scope: !116)
!155 = !DILocation(line: 38, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 37, column: 7)
!157 = !DILocation(line: 41, column: 36, scope: !116)
!158 = !DILocation(line: 41, column: 61, scope: !116)
!159 = !DILocation(line: 41, column: 31, scope: !116)
!160 = !DILocation(line: 41, column: 29, scope: !116)
!161 = !DILocation(line: 42, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !116, file: !1, line: 42, column: 11)
!163 = !DILocation(line: 42, column: 34, scope: !162)
!164 = !DILocation(line: 42, column: 43, scope: !162)
!165 = !DILocation(line: 42, column: 47, scope: !162)
!166 = !DILocation(line: 42, column: 69, scope: !162)
!167 = !DILocation(line: 42, column: 11, scope: !116)
!168 = !DILocation(line: 44, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 43, column: 7)
!170 = !DILocation(line: 47, column: 7, scope: !116)
!171 = !DILocation(line: 47, column: 30, scope: !116)
!172 = !DILocation(line: 47, column: 53, scope: !116)
!173 = !DILocation(line: 48, column: 30, scope: !116)
!174 = !DILocation(line: 48, column: 25, scope: !116)
!175 = !DILocation(line: 48, column: 23, scope: !116)
!176 = !DILocation(line: 49, column: 5, scope: !116)
!177 = !DILocation(line: 51, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !90, file: !1, line: 51, column: 9)
!179 = !DILocation(line: 51, column: 33, scope: !178)
!180 = !DILocation(line: 51, column: 9, scope: !90)
!181 = !DILocation(line: 53, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 52, column: 5)
!183 = !DILocation(line: 53, column: 7, scope: !182)
!184 = !DILocation(line: 54, column: 5, scope: !182)
!185 = !DILocation(line: 56, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !90, file: !1, line: 56, column: 9)
!187 = !DILocation(line: 56, column: 33, scope: !186)
!188 = !DILocation(line: 56, column: 9, scope: !90)
!189 = !DILocation(line: 58, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 57, column: 5)
!191 = !DILocation(line: 58, column: 7, scope: !190)
!192 = !DILocation(line: 59, column: 5, scope: !190)
!193 = !DILocation(line: 62, column: 29, scope: !68)
!194 = !DILocation(line: 62, column: 3, scope: !68)
!195 = !DILocation(line: 62, column: 27, scope: !68)
!196 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_data_0", scope: !197, file: !1, line: 64, type: !75)
!197 = distinct !DILexicalBlock(scope: !68, file: !1, line: 63, column: 3)
!198 = !DILocation(line: 64, column: 9, scope: !197)
!199 = !DILocation(line: 64, column: 92, scope: !197)
!200 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_i_0", scope: !201, file: !1, line: 66, type: !75)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 65, column: 5)
!202 = !DILocation(line: 66, column: 11, scope: !201)
!203 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_buffer_0", scope: !201, file: !1, line: 67, type: !204)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 320, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 10)
!207 = !DILocation(line: 67, column: 11, scope: !201)
!208 = !DILocation(line: 68, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !201, file: !1, line: 68, column: 11)
!210 = !DILocation(line: 68, column: 93, scope: !209)
!211 = !DILocation(line: 68, column: 99, scope: !209)
!212 = !DILocation(line: 68, column: 103, scope: !209)
!213 = !DILocation(line: 68, column: 184, scope: !209)
!214 = !DILocation(line: 68, column: 11, scope: !201)
!215 = !DILocation(line: 70, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 69, column: 7)
!217 = !DILocation(line: 70, column: 16, scope: !216)
!218 = !DILocation(line: 71, column: 92, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 71, column: 9)
!220 = !DILocation(line: 71, column: 14, scope: !219)
!221 = !DILocation(line: 71, column: 97, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 71, column: 9)
!223 = !DILocation(line: 71, column: 175, scope: !222)
!224 = !DILocation(line: 71, column: 9, scope: !219)
!225 = !DILocation(line: 73, column: 107, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 72, column: 9)
!227 = !DILocation(line: 73, column: 24, scope: !226)
!228 = !DILocation(line: 73, column: 11, scope: !226)
!229 = !DILocation(line: 74, column: 9, scope: !226)
!230 = !DILocation(line: 71, column: 258, scope: !222)
!231 = !DILocation(line: 71, column: 9, scope: !222)
!232 = distinct !{!232, !224, !233, !234}
!233 = !DILocation(line: 74, column: 9, scope: !219)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !DILocation(line: 76, column: 7, scope: !216)
!236 = !DILocation(line: 79, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !209, file: !1, line: 78, column: 7)
!238 = !DILocation(line: 82, column: 5, scope: !201)
!239 = !DILabel(scope: !197, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink_label_", file: !1, line: 83)
!240 = !DILocation(line: 83, column: 5, scope: !197)
!241 = !DILocation(line: 88, column: 3, scope: !197)
!242 = !DILabel(scope: !68, name: "goodB2G_label_", file: !1, line: 89)
!243 = !DILocation(line: 89, column: 3, scope: !68)
!244 = !DILocation(line: 94, column: 1, scope: !68)
