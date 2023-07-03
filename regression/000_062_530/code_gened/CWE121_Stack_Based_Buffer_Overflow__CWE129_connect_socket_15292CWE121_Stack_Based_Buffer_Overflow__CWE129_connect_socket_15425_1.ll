; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15292CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15425_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15292CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15425_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15292CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15425_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_connectSocket_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B2_data_0 = alloca i32, align 4
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !83, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_connectSocket_0, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !107
  br label %do.body, !dbg !108

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !109
  store i32 %call, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !111
  %0 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !112
  %cmp = icmp eq i32 %0, -1, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !116

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !118
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !119
  store i16 2, i16* %sin_family, align 4, !dbg !120
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !121
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !122
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !123
  store i32 %call1, i32* %s_addr, align 4, !dbg !124
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !125
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !126
  store i16 %call2, i16* %sin_port, align 2, !dbg !127
  %2 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !128
  %3 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !130
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !131
  %cmp4 = icmp eq i32 %call3, -1, !dbg !132
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !133

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !134

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !136
  %5 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !137
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !138
  %conv = trunc i64 %call7 to i32, !dbg !138
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !139
  %6 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !140
  %cmp8 = icmp eq i32 %6, -1, !dbg !142
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !143

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !144
  %cmp10 = icmp eq i32 %7, 0, !dbg !145
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !146

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !147

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !149
  %9 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !150
  %idxprom = sext i32 %9 to i64, !dbg !149
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !149
  store i8 0, i8* %arrayidx, align 1, !dbg !151
  %10 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !152
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !153
  store i32 %call14, i32* %_goodB2G2_data_0, align 4, !dbg !154
  br label %do.end, !dbg !155

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !156
  %cmp15 = icmp ne i32 %11, -1, !dbg !158
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !159

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !160
  %call18 = call i32 @close(i32 %12), !dbg !162
  br label %if.end19, !dbg !163

if.end19:                                         ; preds = %if.then17, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !167, metadata !DIExpression()), !dbg !171
  %13 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !171
  %14 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !172
  %cmp20 = icmp sge i32 %14, 0, !dbg !174
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !175

land.lhs.true:                                    ; preds = %if.end19
  %15 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !176
  %cmp22 = icmp slt i32 %15, 10, !dbg !177
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !178

if.then24:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !179
  %idxprom25 = sext i32 %16 to i64, !dbg !181
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom25, !dbg !181
  store i32 1, i32* %arrayidx26, align 4, !dbg !182
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then24
  %17 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !186
  %cmp27 = icmp slt i32 %17, 10, !dbg !188
  br i1 %cmp27, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !190
  %idxprom29 = sext i32 %18 to i64, !dbg !192
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom29, !dbg !192
  %19 = load i32, i32* %arrayidx30, align 4, !dbg !192
  call void @printIntLine(i32 %19), !dbg !193
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !195
  %inc = add nsw i32 %20, 1, !dbg !195
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !195
  br label %for.cond, !dbg !196, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !200

if.else:                                          ; preds = %land.lhs.true, %if.end19
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !201
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %goodB2G2_label_, !dbg !203

goodB2G2_label_:                                  ; preds = %if.end31
  call void @llvm.dbg.label(metadata !204), !dbg !205
  call void (...) @goodG2B1(), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_data_0, metadata !207, metadata !DIExpression()), !dbg !209
  store i32 -1, i32* %_goodG2B2_data_0, align 4, !dbg !210
  store i32 7, i32* %_goodG2B2_data_0, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !212, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B2_buffer_0, metadata !215, metadata !DIExpression()), !dbg !216
  %21 = bitcast [10 x i32]* %_goodG2B2_buffer_0 to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 40, i1 false), !dbg !216
  %22 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !217
  %cmp32 = icmp sge i32 %22, 0, !dbg !219
  br i1 %cmp32, label %if.then34, label %if.else44, !dbg !220

if.then34:                                        ; preds = %goodB2G2_label_
  %23 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !221
  %24 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !223
  call void %23(i32 %24), !dbg !221
  store i32 0, i32* %_goodG2B2_i_0, align 4, !dbg !224
  br label %for.cond35, !dbg !226

for.cond35:                                       ; preds = %for.inc41, %if.then34
  %25 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !227
  %cmp36 = icmp slt i32 %25, 10, !dbg !229
  br i1 %cmp36, label %for.body38, label %for.end43, !dbg !230

for.body38:                                       ; preds = %for.cond35
  %26 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !231
  %idxprom39 = sext i32 %26 to i64, !dbg !233
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B2_buffer_0, i64 0, i64 %idxprom39, !dbg !233
  %27 = load i32, i32* %arrayidx40, align 4, !dbg !233
  call void @printIntLine(i32 %27), !dbg !234
  br label %for.inc41, !dbg !235

for.inc41:                                        ; preds = %for.body38
  %28 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !236
  %inc42 = add nsw i32 %28, 1, !dbg !236
  store i32 %inc42, i32* %_goodG2B2_i_0, align 4, !dbg !236
  br label %for.cond35, !dbg !237, !llvm.loop !238

for.end43:                                        ; preds = %for.cond35
  br label %if.end45, !dbg !240

if.else44:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !241
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %for.end43
  br label %goodG2B2_label_, !dbg !243

goodG2B2_label_:                                  ; preds = %if.end45
  call void @llvm.dbg.label(metadata !244), !dbg !245
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good_label_, !dbg !246

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !247), !dbg !248
  ret void, !dbg !249
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

declare dso_local void @goodG2B1(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15292CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15425_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_530/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15292CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15425_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 173, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocation(line: 7, column: 22, scope: !77)
!80 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !81, file: !1, line: 12, type: !70)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 11, column: 7)
!82 = !DILocation(line: 12, column: 13, scope: !81)
!83 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !81, file: !1, line: 13, type: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !85)
!85 = !{!86, !87, !93, !100}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !84, file: !17, line: 240, baseType: !51, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !84, file: !17, line: 241, baseType: !88, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 25, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !92, line: 40, baseType: !53)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !84, file: !17, line: 242, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !94, file: !17, line: 33, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !90, line: 26, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !92, line: 42, baseType: !5)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !84, file: !17, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 13, column: 28, scope: !81)
!106 = !DILocalVariable(name: "_goodB2G2_connectSocket_0", scope: !81, file: !1, line: 14, type: !70)
!107 = !DILocation(line: 14, column: 13, scope: !81)
!108 = !DILocation(line: 15, column: 9, scope: !81)
!109 = !DILocation(line: 17, column: 39, scope: !110)
!110 = distinct !DILexicalBlock(scope: !81, file: !1, line: 16, column: 9)
!111 = !DILocation(line: 17, column: 37, scope: !110)
!112 = !DILocation(line: 18, column: 15, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 18, column: 15)
!114 = !DILocation(line: 18, column: 41, scope: !113)
!115 = !DILocation(line: 18, column: 15, scope: !110)
!116 = !DILocation(line: 20, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 19, column: 11)
!118 = !DILocation(line: 23, column: 11, scope: !110)
!119 = !DILocation(line: 24, column: 31, scope: !110)
!120 = !DILocation(line: 24, column: 42, scope: !110)
!121 = !DILocation(line: 25, column: 49, scope: !110)
!122 = !DILocation(line: 25, column: 31, scope: !110)
!123 = !DILocation(line: 25, column: 40, scope: !110)
!124 = !DILocation(line: 25, column: 47, scope: !110)
!125 = !DILocation(line: 26, column: 42, scope: !110)
!126 = !DILocation(line: 26, column: 31, scope: !110)
!127 = !DILocation(line: 26, column: 40, scope: !110)
!128 = !DILocation(line: 27, column: 23, scope: !129)
!129 = distinct !DILexicalBlock(scope: !110, file: !1, line: 27, column: 15)
!130 = !DILocation(line: 27, column: 50, scope: !129)
!131 = !DILocation(line: 27, column: 15, scope: !129)
!132 = !DILocation(line: 27, column: 123, scope: !129)
!133 = !DILocation(line: 27, column: 15, scope: !110)
!134 = !DILocation(line: 29, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 28, column: 11)
!136 = !DILocation(line: 32, column: 41, scope: !110)
!137 = !DILocation(line: 32, column: 68, scope: !110)
!138 = !DILocation(line: 32, column: 36, scope: !110)
!139 = !DILocation(line: 32, column: 34, scope: !110)
!140 = !DILocation(line: 33, column: 16, scope: !141)
!141 = distinct !DILexicalBlock(scope: !110, file: !1, line: 33, column: 15)
!142 = !DILocation(line: 33, column: 39, scope: !141)
!143 = !DILocation(line: 33, column: 48, scope: !141)
!144 = !DILocation(line: 33, column: 52, scope: !141)
!145 = !DILocation(line: 33, column: 75, scope: !141)
!146 = !DILocation(line: 33, column: 15, scope: !110)
!147 = !DILocation(line: 35, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !1, line: 34, column: 11)
!149 = !DILocation(line: 38, column: 11, scope: !110)
!150 = !DILocation(line: 38, column: 35, scope: !110)
!151 = !DILocation(line: 38, column: 59, scope: !110)
!152 = !DILocation(line: 39, column: 35, scope: !110)
!153 = !DILocation(line: 39, column: 30, scope: !110)
!154 = !DILocation(line: 39, column: 28, scope: !110)
!155 = !DILocation(line: 40, column: 9, scope: !110)
!156 = !DILocation(line: 42, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !81, file: !1, line: 42, column: 13)
!158 = !DILocation(line: 42, column: 39, scope: !157)
!159 = !DILocation(line: 42, column: 13, scope: !81)
!160 = !DILocation(line: 44, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 43, column: 9)
!162 = !DILocation(line: 44, column: 11, scope: !161)
!163 = !DILocation(line: 45, column: 9, scope: !161)
!164 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !165, file: !1, line: 60, type: !70)
!165 = distinct !DILexicalBlock(scope: !77, file: !1, line: 59, column: 7)
!166 = !DILocation(line: 60, column: 13, scope: !165)
!167 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !165, file: !1, line: 61, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 10)
!171 = !DILocation(line: 61, column: 13, scope: !165)
!172 = !DILocation(line: 62, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !1, line: 62, column: 13)
!174 = !DILocation(line: 62, column: 31, scope: !173)
!175 = !DILocation(line: 62, column: 37, scope: !173)
!176 = !DILocation(line: 62, column: 41, scope: !173)
!177 = !DILocation(line: 62, column: 58, scope: !173)
!178 = !DILocation(line: 62, column: 13, scope: !165)
!179 = !DILocation(line: 64, column: 30, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 63, column: 9)
!181 = !DILocation(line: 64, column: 11, scope: !180)
!182 = !DILocation(line: 64, column: 48, scope: !180)
!183 = !DILocation(line: 65, column: 30, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 65, column: 11)
!185 = !DILocation(line: 65, column: 16, scope: !184)
!186 = !DILocation(line: 65, column: 35, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 65, column: 11)
!188 = !DILocation(line: 65, column: 49, scope: !187)
!189 = !DILocation(line: 65, column: 11, scope: !184)
!190 = !DILocation(line: 67, column: 45, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 66, column: 11)
!192 = !DILocation(line: 67, column: 26, scope: !191)
!193 = !DILocation(line: 67, column: 13, scope: !191)
!194 = !DILocation(line: 68, column: 11, scope: !191)
!195 = !DILocation(line: 65, column: 68, scope: !187)
!196 = !DILocation(line: 65, column: 11, scope: !187)
!197 = distinct !{!197, !189, !198, !199}
!198 = !DILocation(line: 68, column: 11, scope: !184)
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 70, column: 9, scope: !180)
!201 = !DILocation(line: 73, column: 11, scope: !202)
!202 = distinct !DILexicalBlock(scope: !173, file: !1, line: 72, column: 9)
!203 = !DILocation(line: 76, column: 7, scope: !165)
!204 = !DILabel(scope: !77, name: "goodB2G2_label_", file: !1, line: 85)
!205 = !DILocation(line: 85, column: 5, scope: !77)
!206 = !DILocation(line: 91, column: 3, scope: !63)
!207 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !208, file: !1, line: 93, type: !70)
!208 = distinct !DILexicalBlock(scope: !63, file: !1, line: 92, column: 3)
!209 = !DILocation(line: 93, column: 9, scope: !208)
!210 = !DILocation(line: 94, column: 22, scope: !208)
!211 = !DILocation(line: 98, column: 26, scope: !208)
!212 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !213, file: !1, line: 111, type: !70)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 110, column: 7)
!214 = !DILocation(line: 111, column: 13, scope: !213)
!215 = !DILocalVariable(name: "_goodG2B2_buffer_0", scope: !213, file: !1, line: 112, type: !168)
!216 = !DILocation(line: 112, column: 13, scope: !213)
!217 = !DILocation(line: 113, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 113, column: 13)
!219 = !DILocation(line: 113, column: 30, scope: !218)
!220 = !DILocation(line: 113, column: 13, scope: !213)
!221 = !DILocation(line: 115, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 114, column: 9)
!223 = !DILocation(line: 115, column: 18, scope: !222)
!224 = !DILocation(line: 116, column: 30, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 116, column: 11)
!226 = !DILocation(line: 116, column: 16, scope: !225)
!227 = !DILocation(line: 116, column: 35, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 116, column: 11)
!229 = !DILocation(line: 116, column: 49, scope: !228)
!230 = !DILocation(line: 116, column: 11, scope: !225)
!231 = !DILocation(line: 118, column: 45, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 117, column: 11)
!233 = !DILocation(line: 118, column: 26, scope: !232)
!234 = !DILocation(line: 118, column: 13, scope: !232)
!235 = !DILocation(line: 119, column: 11, scope: !232)
!236 = !DILocation(line: 116, column: 68, scope: !228)
!237 = !DILocation(line: 116, column: 11, scope: !228)
!238 = distinct !{!238, !230, !239, !199}
!239 = !DILocation(line: 119, column: 11, scope: !225)
!240 = !DILocation(line: 121, column: 9, scope: !222)
!241 = !DILocation(line: 124, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !218, file: !1, line: 123, column: 9)
!243 = !DILocation(line: 127, column: 7, scope: !213)
!244 = !DILabel(scope: !208, name: "goodG2B2_label_", file: !1, line: 136)
!245 = !DILocation(line: 136, column: 5, scope: !208)
!246 = !DILocation(line: 141, column: 3, scope: !208)
!247 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_15_good_label_", file: !1, line: 142)
!248 = !DILocation(line: 142, column: 3, scope: !63)
!249 = !DILocation(line: 147, column: 1, scope: !63)
