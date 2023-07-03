; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global = external dso_local global i32, align 4
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal = external dso_local global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !68 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_listenSocket_0 = alloca i32, align 4
  %_goodB2G2_acceptSocket_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !81, metadata !DIExpression()), !dbg !83
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !88, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_listenSocket_0, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_acceptSocket_0, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !111
  store i32 %call, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !113
  %0 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !114
  %cmp = icmp eq i32 %0, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 0, i32* %s_addr, align 4, !dbg !125
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !127
  store i16 %call1, i16* %sin_port, align 2, !dbg !128
  %2 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !129
  %3 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !131
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !132
  %cmp3 = icmp eq i32 %call2, -1, !dbg !133
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !134

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !137
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !139
  %cmp7 = icmp eq i32 %call6, -1, !dbg !140
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !141

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !142

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !144
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !145
  store i32 %call10, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !146
  %6 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !147
  %cmp11 = icmp eq i32 %6, -1, !dbg !149
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !150

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !151

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !153
  %8 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !154
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !155
  %conv = trunc i64 %call14 to i32, !dbg !155
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !156
  %9 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !157
  %cmp15 = icmp eq i32 %9, -1, !dbg !159
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !161
  %cmp17 = icmp eq i32 %10, 0, !dbg !162
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !163

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !164

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !166
  %12 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !167
  %idxprom = sext i32 %12 to i64, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !166
  store i8 0, i8* %arrayidx, align 1, !dbg !168
  %13 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !169
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !170
  store i32 %call21, i32* %_goodB2G2_data_0, align 4, !dbg !171
  br label %do.end, !dbg !172

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !173
  %cmp22 = icmp ne i32 %14, -1, !dbg !175
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !176

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !177
  %call25 = call i32 @close(i32 %15), !dbg !179
  br label %if.end26, !dbg !180

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !181
  %cmp27 = icmp ne i32 %16, -1, !dbg !183
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !184

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !185
  %call30 = call i32 @close(i32 %17), !dbg !187
  br label %if.end31, !dbg !188

if.end31:                                         ; preds = %if.then29, %if.end26
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global, align 4, !dbg !189
  %18 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !190
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32 %18), !dbg !191
  br label %goodB2G2_label_, !dbg !191

goodB2G2_label_:                                  ; preds = %if.end31
  call void @llvm.dbg.label(metadata !192), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !194, metadata !DIExpression()), !dbg !196
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !197
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !198
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal, align 4, !dbg !199
  %19 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal, align 4, !dbg !200
  %tobool = icmp ne i32 %19, 0, !dbg !200
  br i1 %tobool, label %if.then32, label %if.end41, !dbg !203

if.then32:                                        ; preds = %goodB2G2_label_
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_buffer_0, metadata !208, metadata !DIExpression()), !dbg !212
  %20 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_buffer_0 to i8*, !dbg !212
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !212
  %21 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !213
  %cmp33 = icmp sge i32 %21, 0, !dbg !215
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !216

if.then35:                                        ; preds = %if.then32
  %22 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !217
  %23 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !219
  call void %22(i32 %23), !dbg !217
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, align 4, !dbg !220
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %if.then35
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, align 4, !dbg !223
  %cmp36 = icmp slt i32 %24, 10, !dbg !225
  br i1 %cmp36, label %for.body, label %for.end, !dbg !226

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, align 4, !dbg !227
  %idxprom38 = sext i32 %25 to i64, !dbg !229
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_buffer_0, i64 0, i64 %idxprom38, !dbg !229
  %26 = load i32, i32* %arrayidx39, align 4, !dbg !229
  call void @printIntLine(i32 %26), !dbg !230
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, align 4, !dbg !232
  %inc = add nsw i32 %27, 1, !dbg !232
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0, align 4, !dbg !232
  br label %for.cond, !dbg !233, !llvm.loop !234

for.end:                                          ; preds = %for.cond
  br label %if.end40, !dbg !237

if.else:                                          ; preds = %if.then32
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !238
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.end
  br label %if.end41, !dbg !240

if.end41:                                         ; preds = %if.end40, %goodB2G2_label_
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_label_, !dbg !200

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_label_: ; preds = %if.end41
  call void @llvm.dbg.label(metadata !241), !dbg !242
  br label %goodG2B_label_, !dbg !243

goodG2B_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_label_
  call void @llvm.dbg.label(metadata !244), !dbg !245
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good_label_, !dbg !246

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !247), !dbg !248
  ret void, !dbg !249
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

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_727/code_gened")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a266CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b129_1", scope: !1, file: !1, line: 5, type: !69, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !68, file: !1, line: 5, type: !71)
!78 = !DILocation(line: 5, column: 141, scope: !68)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !68, file: !1, line: 5, type: !72)
!80 = !DILocation(line: 5, column: 173, scope: !68)
!81 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !82, file: !1, line: 8, type: !75)
!82 = distinct !DILexicalBlock(scope: !68, file: !1, line: 7, column: 3)
!83 = !DILocation(line: 8, column: 9, scope: !82)
!84 = !DILocation(line: 9, column: 22, scope: !82)
!85 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !86, file: !1, line: 11, type: !75)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 10, column: 5)
!87 = !DILocation(line: 11, column: 11, scope: !86)
!88 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !86, file: !1, line: 12, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !90)
!90 = !{!91, !92, !96, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !89, file: !17, line: 240, baseType: !56, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !89, file: !17, line: 241, baseType: !93, size: 16, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !89, file: !17, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !17, line: 33, baseType: !46, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !89, file: !17, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 12, column: 26, scope: !86)
!106 = !DILocalVariable(name: "_goodB2G2_listenSocket_0", scope: !86, file: !1, line: 13, type: !75)
!107 = !DILocation(line: 13, column: 11, scope: !86)
!108 = !DILocalVariable(name: "_goodB2G2_acceptSocket_0", scope: !86, file: !1, line: 14, type: !75)
!109 = !DILocation(line: 14, column: 11, scope: !86)
!110 = !DILocation(line: 15, column: 7, scope: !86)
!111 = !DILocation(line: 17, column: 36, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !1, line: 16, column: 7)
!113 = !DILocation(line: 17, column: 34, scope: !112)
!114 = !DILocation(line: 18, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 18, column: 13)
!116 = !DILocation(line: 18, column: 38, scope: !115)
!117 = !DILocation(line: 18, column: 13, scope: !112)
!118 = !DILocation(line: 20, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 19, column: 9)
!120 = !DILocation(line: 23, column: 9, scope: !112)
!121 = !DILocation(line: 24, column: 29, scope: !112)
!122 = !DILocation(line: 24, column: 40, scope: !112)
!123 = !DILocation(line: 25, column: 29, scope: !112)
!124 = !DILocation(line: 25, column: 38, scope: !112)
!125 = !DILocation(line: 25, column: 45, scope: !112)
!126 = !DILocation(line: 26, column: 40, scope: !112)
!127 = !DILocation(line: 26, column: 29, scope: !112)
!128 = !DILocation(line: 26, column: 38, scope: !112)
!129 = !DILocation(line: 27, column: 18, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 27, column: 13)
!131 = !DILocation(line: 27, column: 44, scope: !130)
!132 = !DILocation(line: 27, column: 13, scope: !130)
!133 = !DILocation(line: 27, column: 117, scope: !130)
!134 = !DILocation(line: 27, column: 13, scope: !112)
!135 = !DILocation(line: 29, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 28, column: 9)
!137 = !DILocation(line: 32, column: 68, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 32, column: 13)
!139 = !DILocation(line: 32, column: 13, scope: !138)
!140 = !DILocation(line: 32, column: 97, scope: !138)
!141 = !DILocation(line: 32, column: 13, scope: !112)
!142 = !DILocation(line: 34, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 33, column: 9)
!144 = !DILocation(line: 37, column: 91, scope: !112)
!145 = !DILocation(line: 37, column: 36, scope: !112)
!146 = !DILocation(line: 37, column: 34, scope: !112)
!147 = !DILocation(line: 38, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !1, line: 38, column: 13)
!149 = !DILocation(line: 38, column: 38, scope: !148)
!150 = !DILocation(line: 38, column: 13, scope: !112)
!151 = !DILocation(line: 40, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 39, column: 9)
!153 = !DILocation(line: 43, column: 39, scope: !112)
!154 = !DILocation(line: 43, column: 65, scope: !112)
!155 = !DILocation(line: 43, column: 34, scope: !112)
!156 = !DILocation(line: 43, column: 32, scope: !112)
!157 = !DILocation(line: 44, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !112, file: !1, line: 44, column: 13)
!159 = !DILocation(line: 44, column: 37, scope: !158)
!160 = !DILocation(line: 44, column: 46, scope: !158)
!161 = !DILocation(line: 44, column: 50, scope: !158)
!162 = !DILocation(line: 44, column: 73, scope: !158)
!163 = !DILocation(line: 44, column: 13, scope: !112)
!164 = !DILocation(line: 46, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 45, column: 9)
!166 = !DILocation(line: 49, column: 9, scope: !112)
!167 = !DILocation(line: 49, column: 33, scope: !112)
!168 = !DILocation(line: 49, column: 57, scope: !112)
!169 = !DILocation(line: 50, column: 33, scope: !112)
!170 = !DILocation(line: 50, column: 28, scope: !112)
!171 = !DILocation(line: 50, column: 26, scope: !112)
!172 = !DILocation(line: 51, column: 7, scope: !112)
!173 = !DILocation(line: 53, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !86, file: !1, line: 53, column: 11)
!175 = !DILocation(line: 53, column: 36, scope: !174)
!176 = !DILocation(line: 53, column: 11, scope: !86)
!177 = !DILocation(line: 55, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 54, column: 7)
!179 = !DILocation(line: 55, column: 9, scope: !178)
!180 = !DILocation(line: 56, column: 7, scope: !178)
!181 = !DILocation(line: 58, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 11)
!183 = !DILocation(line: 58, column: 36, scope: !182)
!184 = !DILocation(line: 58, column: 11, scope: !86)
!185 = !DILocation(line: 60, column: 15, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 59, column: 7)
!187 = !DILocation(line: 60, column: 9, scope: !186)
!188 = !DILocation(line: 61, column: 7, scope: !186)
!189 = !DILocation(line: 64, column: 80, scope: !82)
!190 = !DILocation(line: 65, column: 78, scope: !82)
!191 = !DILocation(line: 65, column: 5, scope: !82)
!192 = !DILabel(scope: !82, name: "goodB2G2_label_", file: !1, line: 66)
!193 = !DILocation(line: 66, column: 5, scope: !82)
!194 = !DILocalVariable(name: "_goodG2B_data_0", scope: !195, file: !1, line: 73, type: !75)
!195 = distinct !DILexicalBlock(scope: !68, file: !1, line: 72, column: 3)
!196 = !DILocation(line: 73, column: 9, scope: !195)
!197 = !DILocation(line: 74, column: 21, scope: !195)
!198 = !DILocation(line: 75, column: 21, scope: !195)
!199 = !DILocation(line: 76, column: 79, scope: !195)
!200 = !DILocation(line: 78, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 78, column: 11)
!202 = distinct !DILexicalBlock(scope: !195, file: !1, line: 77, column: 5)
!203 = !DILocation(line: 78, column: 11, scope: !202)
!204 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_i_0", scope: !205, file: !1, line: 81, type: !75)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 80, column: 9)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 79, column: 7)
!207 = !DILocation(line: 81, column: 15, scope: !205)
!208 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_buffer_0", scope: !205, file: !1, line: 82, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 320, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 10)
!212 = !DILocation(line: 82, column: 15, scope: !205)
!213 = !DILocation(line: 83, column: 15, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !1, line: 83, column: 15)
!215 = !DILocation(line: 83, column: 31, scope: !214)
!216 = !DILocation(line: 83, column: 15, scope: !205)
!217 = !DILocation(line: 85, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 84, column: 11)
!219 = !DILocation(line: 85, column: 20, scope: !218)
!220 = !DILocation(line: 86, column: 95, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 86, column: 13)
!222 = !DILocation(line: 86, column: 18, scope: !221)
!223 = !DILocation(line: 86, column: 100, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 86, column: 13)
!225 = !DILocation(line: 86, column: 177, scope: !224)
!226 = !DILocation(line: 86, column: 13, scope: !221)
!227 = !DILocation(line: 88, column: 110, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 87, column: 13)
!229 = !DILocation(line: 88, column: 28, scope: !228)
!230 = !DILocation(line: 88, column: 15, scope: !228)
!231 = !DILocation(line: 89, column: 13, scope: !228)
!232 = !DILocation(line: 86, column: 259, scope: !224)
!233 = !DILocation(line: 86, column: 13, scope: !224)
!234 = distinct !{!234, !226, !235, !236}
!235 = !DILocation(line: 89, column: 13, scope: !221)
!236 = !{!"llvm.loop.mustprogress"}
!237 = !DILocation(line: 91, column: 11, scope: !218)
!238 = !DILocation(line: 94, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !214, file: !1, line: 93, column: 11)
!240 = !DILocation(line: 98, column: 7, scope: !206)
!241 = !DILabel(scope: !202, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink_label_", file: !1, line: 100)
!242 = !DILocation(line: 100, column: 7, scope: !202)
!243 = !DILocation(line: 105, column: 5, scope: !202)
!244 = !DILabel(scope: !195, name: "goodG2B_label_", file: !1, line: 106)
!245 = !DILocation(line: 106, column: 5, scope: !195)
!246 = !DILocation(line: 111, column: 3, scope: !195)
!247 = !DILabel(scope: !68, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good_label_", file: !1, line: 112)
!248 = !DILocation(line: 112, column: 3, scope: !68)
!249 = !DILocation(line: 117, column: 1, scope: !68)
