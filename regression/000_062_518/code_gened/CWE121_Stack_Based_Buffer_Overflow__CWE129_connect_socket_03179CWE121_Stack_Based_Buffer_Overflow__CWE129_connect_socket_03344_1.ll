; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03344_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03344_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03344_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !111
  store i32 %call, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !113
  %0 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !114
  %cmp = icmp eq i32 %0, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !123
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !124
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !125
  store i32 %call1, i32* %s_addr, align 4, !dbg !126
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !127
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !128
  store i16 %call2, i16* %sin_port, align 2, !dbg !129
  %2 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !130
  %3 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !132
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !133
  %cmp4 = icmp eq i32 %call3, -1, !dbg !134
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !135

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !136

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !138
  %5 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !139
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !140
  %conv = trunc i64 %call7 to i32, !dbg !140
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !141
  %6 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !142
  %cmp8 = icmp eq i32 %6, -1, !dbg !144
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !145

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !146
  %cmp10 = icmp eq i32 %7, 0, !dbg !147
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !148

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !149

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !151
  %9 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !152
  %idxprom = sext i32 %9 to i64, !dbg !151
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !151
  store i8 0, i8* %arrayidx, align 1, !dbg !153
  %10 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !154
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !155
  store i32 %call14, i32* %_goodB2G1_data_0, align 4, !dbg !156
  br label %do.end, !dbg !157

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !158
  %cmp15 = icmp ne i32 %11, -1, !dbg !160
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !161

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !162
  %call18 = call i32 @close(i32 %12), !dbg !164
  br label %if.end19, !dbg !165

if.end19:                                         ; preds = %if.then17, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !171, metadata !DIExpression()), !dbg !175
  %13 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !175
  %14 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !176
  %cmp20 = icmp sge i32 %14, 0, !dbg !178
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !179

land.lhs.true:                                    ; preds = %if.end19
  %15 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !180
  %cmp22 = icmp slt i32 %15, 10, !dbg !181
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !182

if.then24:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !183
  %idxprom25 = sext i32 %16 to i64, !dbg !185
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom25, !dbg !185
  store i32 1, i32* %arrayidx26, align 4, !dbg !186
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then24
  %17 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !190
  %cmp27 = icmp slt i32 %17, 10, !dbg !192
  br i1 %cmp27, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !194
  %idxprom29 = sext i32 %18 to i64, !dbg !196
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom29, !dbg !196
  %19 = load i32, i32* %arrayidx30, align 4, !dbg !196
  call void @printIntLine(i32 %19), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !199
  %inc = add nsw i32 %20, 1, !dbg !199
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !204

if.else:                                          ; preds = %land.lhs.true, %if.end19
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %goodB2G1_label_, !dbg !207

goodB2G1_label_:                                  ; preds = %if.end31
  call void @llvm.dbg.label(metadata !208), !dbg !209
  call void (...) @goodB2G2(), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !211, metadata !DIExpression()), !dbg !213
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !214
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !223, metadata !DIExpression()), !dbg !224
  %21 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 40, i1 false), !dbg !224
  %22 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !225
  %cmp32 = icmp sge i32 %22, 0, !dbg !227
  br i1 %cmp32, label %if.then34, label %if.else44, !dbg !228

if.then34:                                        ; preds = %goodB2G1_label_
  %23 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !229
  %24 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !231
  call void %23(i32 %24), !dbg !229
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !232
  br label %for.cond35, !dbg !234

for.cond35:                                       ; preds = %for.inc41, %if.then34
  %25 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !235
  %cmp36 = icmp slt i32 %25, 10, !dbg !237
  br i1 %cmp36, label %for.body38, label %for.end43, !dbg !238

for.body38:                                       ; preds = %for.cond35
  %26 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !239
  %idxprom39 = sext i32 %26 to i64, !dbg !241
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom39, !dbg !241
  %27 = load i32, i32* %arrayidx40, align 4, !dbg !241
  call void @printIntLine(i32 %27), !dbg !242
  br label %for.inc41, !dbg !243

for.inc41:                                        ; preds = %for.body38
  %28 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !244
  %inc42 = add nsw i32 %28, 1, !dbg !244
  store i32 %inc42, i32* %_goodG2B1_i_0, align 4, !dbg !244
  br label %for.cond35, !dbg !245, !llvm.loop !246

for.end43:                                        ; preds = %for.cond35
  br label %if.end45, !dbg !248

if.else44:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !249
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %for.end43
  br label %goodG2B1_label_, !dbg !251

goodG2B1_label_:                                  ; preds = %if.end45
  call void @llvm.dbg.label(metadata !252), !dbg !253
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_good_label_, !dbg !254

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !255), !dbg !256
  ret void, !dbg !257
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

declare dso_local void @goodB2G2(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03344_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_518/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03344_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 173, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocation(line: 7, column: 22, scope: !77)
!80 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !81, file: !1, line: 11, type: !70)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 10, column: 7)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 9, column: 5)
!83 = distinct !DILexicalBlock(scope: !77, file: !1, line: 8, column: 9)
!84 = !DILocation(line: 11, column: 13, scope: !81)
!85 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !81, file: !1, line: 12, type: !86)
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
!107 = !DILocation(line: 12, column: 28, scope: !81)
!108 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !81, file: !1, line: 13, type: !70)
!109 = !DILocation(line: 13, column: 13, scope: !81)
!110 = !DILocation(line: 14, column: 9, scope: !81)
!111 = !DILocation(line: 16, column: 39, scope: !112)
!112 = distinct !DILexicalBlock(scope: !81, file: !1, line: 15, column: 9)
!113 = !DILocation(line: 16, column: 37, scope: !112)
!114 = !DILocation(line: 17, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 17, column: 15)
!116 = !DILocation(line: 17, column: 41, scope: !115)
!117 = !DILocation(line: 17, column: 15, scope: !112)
!118 = !DILocation(line: 19, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 18, column: 11)
!120 = !DILocation(line: 22, column: 11, scope: !112)
!121 = !DILocation(line: 23, column: 31, scope: !112)
!122 = !DILocation(line: 23, column: 42, scope: !112)
!123 = !DILocation(line: 24, column: 49, scope: !112)
!124 = !DILocation(line: 24, column: 31, scope: !112)
!125 = !DILocation(line: 24, column: 40, scope: !112)
!126 = !DILocation(line: 24, column: 47, scope: !112)
!127 = !DILocation(line: 25, column: 42, scope: !112)
!128 = !DILocation(line: 25, column: 31, scope: !112)
!129 = !DILocation(line: 25, column: 40, scope: !112)
!130 = !DILocation(line: 26, column: 23, scope: !131)
!131 = distinct !DILexicalBlock(scope: !112, file: !1, line: 26, column: 15)
!132 = !DILocation(line: 26, column: 50, scope: !131)
!133 = !DILocation(line: 26, column: 15, scope: !131)
!134 = !DILocation(line: 26, column: 123, scope: !131)
!135 = !DILocation(line: 26, column: 15, scope: !112)
!136 = !DILocation(line: 28, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 27, column: 11)
!138 = !DILocation(line: 31, column: 41, scope: !112)
!139 = !DILocation(line: 31, column: 68, scope: !112)
!140 = !DILocation(line: 31, column: 36, scope: !112)
!141 = !DILocation(line: 31, column: 34, scope: !112)
!142 = !DILocation(line: 32, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !112, file: !1, line: 32, column: 15)
!144 = !DILocation(line: 32, column: 39, scope: !143)
!145 = !DILocation(line: 32, column: 48, scope: !143)
!146 = !DILocation(line: 32, column: 52, scope: !143)
!147 = !DILocation(line: 32, column: 75, scope: !143)
!148 = !DILocation(line: 32, column: 15, scope: !112)
!149 = !DILocation(line: 34, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 33, column: 11)
!151 = !DILocation(line: 37, column: 11, scope: !112)
!152 = !DILocation(line: 37, column: 35, scope: !112)
!153 = !DILocation(line: 37, column: 59, scope: !112)
!154 = !DILocation(line: 38, column: 35, scope: !112)
!155 = !DILocation(line: 38, column: 30, scope: !112)
!156 = !DILocation(line: 38, column: 28, scope: !112)
!157 = !DILocation(line: 39, column: 9, scope: !112)
!158 = !DILocation(line: 41, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !81, file: !1, line: 41, column: 13)
!160 = !DILocation(line: 41, column: 39, scope: !159)
!161 = !DILocation(line: 41, column: 13, scope: !81)
!162 = !DILocation(line: 43, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 42, column: 9)
!164 = !DILocation(line: 43, column: 11, scope: !163)
!165 = !DILocation(line: 44, column: 9, scope: !163)
!166 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !167, file: !1, line: 56, type: !70)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 55, column: 7)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 54, column: 5)
!169 = distinct !DILexicalBlock(scope: !77, file: !1, line: 49, column: 9)
!170 = !DILocation(line: 56, column: 13, scope: !167)
!171 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !167, file: !1, line: 57, type: !172)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 10)
!175 = !DILocation(line: 57, column: 13, scope: !167)
!176 = !DILocation(line: 58, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !167, file: !1, line: 58, column: 13)
!178 = !DILocation(line: 58, column: 31, scope: !177)
!179 = !DILocation(line: 58, column: 37, scope: !177)
!180 = !DILocation(line: 58, column: 41, scope: !177)
!181 = !DILocation(line: 58, column: 58, scope: !177)
!182 = !DILocation(line: 58, column: 13, scope: !167)
!183 = !DILocation(line: 60, column: 30, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 59, column: 9)
!185 = !DILocation(line: 60, column: 11, scope: !184)
!186 = !DILocation(line: 60, column: 48, scope: !184)
!187 = !DILocation(line: 61, column: 30, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 61, column: 11)
!189 = !DILocation(line: 61, column: 16, scope: !188)
!190 = !DILocation(line: 61, column: 35, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 61, column: 11)
!192 = !DILocation(line: 61, column: 49, scope: !191)
!193 = !DILocation(line: 61, column: 11, scope: !188)
!194 = !DILocation(line: 63, column: 45, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 62, column: 11)
!196 = !DILocation(line: 63, column: 26, scope: !195)
!197 = !DILocation(line: 63, column: 13, scope: !195)
!198 = !DILocation(line: 64, column: 11, scope: !195)
!199 = !DILocation(line: 61, column: 68, scope: !191)
!200 = !DILocation(line: 61, column: 11, scope: !191)
!201 = distinct !{!201, !193, !202, !203}
!202 = !DILocation(line: 64, column: 11, scope: !188)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 66, column: 9, scope: !184)
!205 = !DILocation(line: 69, column: 11, scope: !206)
!206 = distinct !DILexicalBlock(scope: !177, file: !1, line: 68, column: 9)
!207 = !DILocation(line: 49, column: 14, scope: !169)
!208 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 75)
!209 = !DILocation(line: 75, column: 5, scope: !77)
!210 = !DILocation(line: 81, column: 3, scope: !63)
!211 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !212, file: !1, line: 83, type: !70)
!212 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 3)
!213 = !DILocation(line: 83, column: 9, scope: !212)
!214 = !DILocation(line: 84, column: 22, scope: !212)
!215 = !DILocation(line: 91, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 90, column: 5)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 85, column: 9)
!218 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !219, file: !1, line: 97, type: !70)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 96, column: 7)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 95, column: 5)
!221 = distinct !DILexicalBlock(scope: !212, file: !1, line: 94, column: 9)
!222 = !DILocation(line: 97, column: 13, scope: !219)
!223 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !219, file: !1, line: 98, type: !172)
!224 = !DILocation(line: 98, column: 13, scope: !219)
!225 = !DILocation(line: 99, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !1, line: 99, column: 13)
!227 = !DILocation(line: 99, column: 30, scope: !226)
!228 = !DILocation(line: 99, column: 13, scope: !219)
!229 = !DILocation(line: 101, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 100, column: 9)
!231 = !DILocation(line: 101, column: 18, scope: !230)
!232 = !DILocation(line: 102, column: 30, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 102, column: 11)
!234 = !DILocation(line: 102, column: 16, scope: !233)
!235 = !DILocation(line: 102, column: 35, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 102, column: 11)
!237 = !DILocation(line: 102, column: 49, scope: !236)
!238 = !DILocation(line: 102, column: 11, scope: !233)
!239 = !DILocation(line: 104, column: 45, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 103, column: 11)
!241 = !DILocation(line: 104, column: 26, scope: !240)
!242 = !DILocation(line: 104, column: 13, scope: !240)
!243 = !DILocation(line: 105, column: 11, scope: !240)
!244 = !DILocation(line: 102, column: 68, scope: !236)
!245 = !DILocation(line: 102, column: 11, scope: !236)
!246 = distinct !{!246, !238, !247, !203}
!247 = !DILocation(line: 105, column: 11, scope: !233)
!248 = !DILocation(line: 107, column: 9, scope: !230)
!249 = !DILocation(line: 110, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !226, file: !1, line: 109, column: 9)
!251 = !DILocation(line: 94, column: 14, scope: !221)
!252 = !DILabel(scope: !212, name: "goodG2B1_label_", file: !1, line: 116)
!253 = !DILocation(line: 116, column: 5, scope: !212)
!254 = !DILocation(line: 121, column: 3, scope: !212)
!255 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_03_good_label_", file: !1, line: 122)
!256 = !DILocation(line: 122, column: 3, scope: !63)
!257 = !DILocation(line: 127, column: 1, scope: !63)
