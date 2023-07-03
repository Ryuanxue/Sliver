; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42159_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42159_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42159_1(i8* %_goodB2GSource_inputBuffer_0, i32 %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2GSource_inputBuffer_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2GSource_recvResult_0 = alloca i32, align 4
  %_goodB2GSource_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2GSource_connectSocket_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2GSource_inputBuffer_0, i8** %_goodB2GSource_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2GSource_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %goodB2GSource_return_, i32* %goodB2GSource_return_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %goodB2GSource_return_.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !78, metadata !DIExpression()), !dbg !80
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSource_recvResult_0, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2GSource_service_0, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSource_connectSocket_0, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 -1, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !110
  br label %do.body, !dbg !111

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !112
  store i32 %call, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !114
  %0 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !115
  %cmp = icmp eq i32 %0, -1, !dbg !117
  br i1 %cmp, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !119

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2GSource_service_0 to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !121
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 0, !dbg !122
  store i16 2, i16* %sin_family, align 4, !dbg !123
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 %call1, i32* %s_addr, align 4, !dbg !127
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 1, !dbg !129
  store i16 %call2, i16* %sin_port, align 2, !dbg !130
  %2 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !131
  %3 = bitcast %struct.sockaddr_in* %_goodB2GSource_service_0 to %struct.sockaddr*, !dbg !133
  %call3 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !134
  %cmp4 = icmp eq i32 %call3, -1, !dbg !135
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !136

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !139
  %5 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !140
  %call7 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !141
  %conv = trunc i64 %call7 to i32, !dbg !141
  store i32 %conv, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !142
  %6 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !143
  %cmp8 = icmp eq i32 %6, -1, !dbg !145
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !147
  %cmp10 = icmp eq i32 %7, 0, !dbg !148
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !149

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !150

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !152
  %9 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !153
  %idxprom = sext i32 %9 to i64, !dbg !152
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !152
  store i8 0, i8* %arrayidx, align 1, !dbg !154
  %10 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !155
  %call14 = call i32 @atoi(i8* %10) #9, !dbg !156
  store i32 %call14, i32* %_goodB2G_data_0, align 4, !dbg !157
  br label %do.end, !dbg !158

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !159
  %cmp15 = icmp ne i32 %11, -1, !dbg !161
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !162

if.then17:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !163
  %call18 = call i32 @close(i32 %12), !dbg !165
  br label %if.end19, !dbg !166

if.end19:                                         ; preds = %if.then17, %do.end
  %13 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !167
  store i32 %13, i32* %goodB2GSource_return_.addr, align 4, !dbg !168
  br label %goodB2GSource_label_, !dbg !169

goodB2GSource_label_:                             ; preds = %if.end19
  call void @llvm.dbg.label(metadata !170), !dbg !171
  %14 = load i32, i32* %goodB2GSource_return_.addr, align 4, !dbg !172
  store i32 %14, i32* %_goodB2G_data_0, align 4, !dbg !173
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !177, metadata !DIExpression()), !dbg !181
  %15 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !181
  %16 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !182
  %cmp20 = icmp sge i32 %16, 0, !dbg !184
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !185

land.lhs.true:                                    ; preds = %goodB2GSource_label_
  %17 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !186
  %cmp22 = icmp slt i32 %17, 10, !dbg !187
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !188

if.then24:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !189
  %idxprom25 = sext i32 %18 to i64, !dbg !191
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom25, !dbg !191
  store i32 1, i32* %arrayidx26, align 4, !dbg !192
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !193
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.then24
  %19 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !196
  %cmp27 = icmp slt i32 %19, 10, !dbg !198
  br i1 %cmp27, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !200
  %idxprom29 = sext i32 %20 to i64, !dbg !202
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom29, !dbg !202
  %21 = load i32, i32* %arrayidx30, align 4, !dbg !202
  call void @printIntLine(i32 %21), !dbg !203
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !205
  %inc = add nsw i32 %22, 1, !dbg !205
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !205
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !210

if.else:                                          ; preds = %land.lhs.true, %goodB2GSource_label_
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !211
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.end
  br label %goodB2G_label_, !dbg !213

goodB2G_label_:                                   ; preds = %if.end31
  call void @llvm.dbg.label(metadata !214), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !216, metadata !DIExpression()), !dbg !218
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !219
  %23 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !220
  %call32 = call i32 @goodG2BSource(i32 %23), !dbg !221
  store i32 %call32, i32* %_goodG2B_data_0, align 4, !dbg !222
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !226, metadata !DIExpression()), !dbg !227
  %24 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !227
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 40, i1 false), !dbg !227
  %25 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !228
  %cmp33 = icmp sge i32 %25, 0, !dbg !230
  br i1 %cmp33, label %if.then35, label %if.else45, !dbg !231

if.then35:                                        ; preds = %goodB2G_label_
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !232
  %27 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !234
  call void %26(i32 %27), !dbg !232
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !235
  br label %for.cond36, !dbg !237

for.cond36:                                       ; preds = %for.inc42, %if.then35
  %28 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !238
  %cmp37 = icmp slt i32 %28, 10, !dbg !240
  br i1 %cmp37, label %for.body39, label %for.end44, !dbg !241

for.body39:                                       ; preds = %for.cond36
  %29 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !242
  %idxprom40 = sext i32 %29 to i64, !dbg !244
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom40, !dbg !244
  %30 = load i32, i32* %arrayidx41, align 4, !dbg !244
  call void @printIntLine(i32 %30), !dbg !245
  br label %for.inc42, !dbg !246

for.inc42:                                        ; preds = %for.body39
  %31 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !247
  %inc43 = add nsw i32 %31, 1, !dbg !247
  store i32 %inc43, i32* %_goodG2B_i_0, align 4, !dbg !247
  br label %for.cond36, !dbg !248, !llvm.loop !249

for.end44:                                        ; preds = %for.cond36
  br label %if.end46, !dbg !251

if.else45:                                        ; preds = %goodB2G_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %for.end44
  br label %goodG2B_label_, !dbg !254

goodG2B_label_:                                   ; preds = %if.end46
  call void @llvm.dbg.label(metadata !255), !dbg !256
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good_label_, !dbg !257

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !258), !dbg !259
  ret void, !dbg !260
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

declare dso_local i32 @goodG2BSource(i32) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42159_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_541/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42159_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !67}
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2GSource_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 175, scope: !63)
!76 = !DILocalVariable(name: "opsink", arg: 3, scope: !63, file: !1, line: 3, type: !68)
!77 = !DILocation(line: 3, column: 205, scope: !63)
!78 = !DILocalVariable(name: "_goodB2G_data_0", scope: !79, file: !1, line: 6, type: !67)
!79 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!80 = !DILocation(line: 6, column: 9, scope: !79)
!81 = !DILocation(line: 7, column: 21, scope: !79)
!82 = !DILocalVariable(name: "_goodB2GSource_recvResult_0", scope: !83, file: !1, line: 10, type: !67)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 9, column: 7)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 8, column: 5)
!85 = !DILocation(line: 10, column: 13, scope: !83)
!86 = !DILocalVariable(name: "_goodB2GSource_service_0", scope: !83, file: !1, line: 11, type: !87)
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
!108 = !DILocation(line: 11, column: 28, scope: !83)
!109 = !DILocalVariable(name: "_goodB2GSource_connectSocket_0", scope: !83, file: !1, line: 12, type: !67)
!110 = !DILocation(line: 12, column: 13, scope: !83)
!111 = !DILocation(line: 13, column: 9, scope: !83)
!112 = !DILocation(line: 15, column: 44, scope: !113)
!113 = distinct !DILexicalBlock(scope: !83, file: !1, line: 14, column: 9)
!114 = !DILocation(line: 15, column: 42, scope: !113)
!115 = !DILocation(line: 16, column: 15, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 16, column: 15)
!117 = !DILocation(line: 16, column: 46, scope: !116)
!118 = !DILocation(line: 16, column: 15, scope: !113)
!119 = !DILocation(line: 18, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 17, column: 11)
!121 = !DILocation(line: 21, column: 11, scope: !113)
!122 = !DILocation(line: 22, column: 36, scope: !113)
!123 = !DILocation(line: 22, column: 47, scope: !113)
!124 = !DILocation(line: 23, column: 54, scope: !113)
!125 = !DILocation(line: 23, column: 36, scope: !113)
!126 = !DILocation(line: 23, column: 45, scope: !113)
!127 = !DILocation(line: 23, column: 52, scope: !113)
!128 = !DILocation(line: 24, column: 47, scope: !113)
!129 = !DILocation(line: 24, column: 36, scope: !113)
!130 = !DILocation(line: 24, column: 45, scope: !113)
!131 = !DILocation(line: 25, column: 23, scope: !132)
!132 = distinct !DILexicalBlock(scope: !113, file: !1, line: 25, column: 15)
!133 = !DILocation(line: 25, column: 55, scope: !132)
!134 = !DILocation(line: 25, column: 15, scope: !132)
!135 = !DILocation(line: 25, column: 138, scope: !132)
!136 = !DILocation(line: 25, column: 15, scope: !113)
!137 = !DILocation(line: 27, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 26, column: 11)
!139 = !DILocation(line: 30, column: 46, scope: !113)
!140 = !DILocation(line: 30, column: 78, scope: !113)
!141 = !DILocation(line: 30, column: 41, scope: !113)
!142 = !DILocation(line: 30, column: 39, scope: !113)
!143 = !DILocation(line: 31, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !113, file: !1, line: 31, column: 15)
!145 = !DILocation(line: 31, column: 44, scope: !144)
!146 = !DILocation(line: 31, column: 53, scope: !144)
!147 = !DILocation(line: 31, column: 57, scope: !144)
!148 = !DILocation(line: 31, column: 85, scope: !144)
!149 = !DILocation(line: 31, column: 15, scope: !113)
!150 = !DILocation(line: 33, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 32, column: 11)
!152 = !DILocation(line: 36, column: 11, scope: !113)
!153 = !DILocation(line: 36, column: 40, scope: !113)
!154 = !DILocation(line: 36, column: 69, scope: !113)
!155 = !DILocation(line: 37, column: 34, scope: !113)
!156 = !DILocation(line: 37, column: 29, scope: !113)
!157 = !DILocation(line: 37, column: 27, scope: !113)
!158 = !DILocation(line: 38, column: 9, scope: !113)
!159 = !DILocation(line: 40, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !83, file: !1, line: 40, column: 13)
!161 = !DILocation(line: 40, column: 44, scope: !160)
!162 = !DILocation(line: 40, column: 13, scope: !83)
!163 = !DILocation(line: 42, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 41, column: 9)
!165 = !DILocation(line: 42, column: 11, scope: !164)
!166 = !DILocation(line: 43, column: 9, scope: !164)
!167 = !DILocation(line: 46, column: 31, scope: !84)
!168 = !DILocation(line: 46, column: 29, scope: !84)
!169 = !DILocation(line: 47, column: 7, scope: !84)
!170 = !DILabel(scope: !84, name: "goodB2GSource_label_", file: !1, line: 48)
!171 = !DILocation(line: 48, column: 7, scope: !84)
!172 = !DILocation(line: 54, column: 23, scope: !79)
!173 = !DILocation(line: 54, column: 21, scope: !79)
!174 = !DILocalVariable(name: "_goodB2G_i_0", scope: !175, file: !1, line: 56, type: !67)
!175 = distinct !DILexicalBlock(scope: !79, file: !1, line: 55, column: 5)
!176 = !DILocation(line: 56, column: 11, scope: !175)
!177 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !175, file: !1, line: 57, type: !178)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 320, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 10)
!181 = !DILocation(line: 57, column: 11, scope: !175)
!182 = !DILocation(line: 58, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !1, line: 58, column: 11)
!184 = !DILocation(line: 58, column: 28, scope: !183)
!185 = !DILocation(line: 58, column: 34, scope: !183)
!186 = !DILocation(line: 58, column: 38, scope: !183)
!187 = !DILocation(line: 58, column: 54, scope: !183)
!188 = !DILocation(line: 58, column: 11, scope: !175)
!189 = !DILocation(line: 60, column: 27, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !1, line: 59, column: 7)
!191 = !DILocation(line: 60, column: 9, scope: !190)
!192 = !DILocation(line: 60, column: 44, scope: !190)
!193 = !DILocation(line: 61, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 61, column: 9)
!195 = !DILocation(line: 61, column: 14, scope: !194)
!196 = !DILocation(line: 61, column: 32, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 61, column: 9)
!198 = !DILocation(line: 61, column: 45, scope: !197)
!199 = !DILocation(line: 61, column: 9, scope: !194)
!200 = !DILocation(line: 63, column: 42, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 62, column: 9)
!202 = !DILocation(line: 63, column: 24, scope: !201)
!203 = !DILocation(line: 63, column: 11, scope: !201)
!204 = !DILocation(line: 64, column: 9, scope: !201)
!205 = !DILocation(line: 61, column: 63, scope: !197)
!206 = !DILocation(line: 61, column: 9, scope: !197)
!207 = distinct !{!207, !199, !208, !209}
!208 = !DILocation(line: 64, column: 9, scope: !194)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 66, column: 7, scope: !190)
!211 = !DILocation(line: 69, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !183, file: !1, line: 68, column: 7)
!213 = !DILocation(line: 72, column: 5, scope: !175)
!214 = !DILabel(scope: !79, name: "goodB2G_label_", file: !1, line: 73)
!215 = !DILocation(line: 73, column: 5, scope: !79)
!216 = !DILocalVariable(name: "_goodG2B_data_0", scope: !217, file: !1, line: 80, type: !67)
!217 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 3)
!218 = !DILocation(line: 80, column: 9, scope: !217)
!219 = !DILocation(line: 81, column: 21, scope: !217)
!220 = !DILocation(line: 82, column: 37, scope: !217)
!221 = !DILocation(line: 82, column: 23, scope: !217)
!222 = !DILocation(line: 82, column: 21, scope: !217)
!223 = !DILocalVariable(name: "_goodG2B_i_0", scope: !224, file: !1, line: 84, type: !67)
!224 = distinct !DILexicalBlock(scope: !217, file: !1, line: 83, column: 5)
!225 = !DILocation(line: 84, column: 11, scope: !224)
!226 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !224, file: !1, line: 85, type: !178)
!227 = !DILocation(line: 85, column: 11, scope: !224)
!228 = !DILocation(line: 86, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 86, column: 11)
!230 = !DILocation(line: 86, column: 27, scope: !229)
!231 = !DILocation(line: 86, column: 11, scope: !224)
!232 = !DILocation(line: 88, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 87, column: 7)
!234 = !DILocation(line: 88, column: 16, scope: !233)
!235 = !DILocation(line: 89, column: 27, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 89, column: 9)
!237 = !DILocation(line: 89, column: 14, scope: !236)
!238 = !DILocation(line: 89, column: 32, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 89, column: 9)
!240 = !DILocation(line: 89, column: 45, scope: !239)
!241 = !DILocation(line: 89, column: 9, scope: !236)
!242 = !DILocation(line: 91, column: 42, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 90, column: 9)
!244 = !DILocation(line: 91, column: 24, scope: !243)
!245 = !DILocation(line: 91, column: 11, scope: !243)
!246 = !DILocation(line: 92, column: 9, scope: !243)
!247 = !DILocation(line: 89, column: 63, scope: !239)
!248 = !DILocation(line: 89, column: 9, scope: !239)
!249 = distinct !{!249, !241, !250, !209}
!250 = !DILocation(line: 92, column: 9, scope: !236)
!251 = !DILocation(line: 94, column: 7, scope: !233)
!252 = !DILocation(line: 97, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !229, file: !1, line: 96, column: 7)
!254 = !DILocation(line: 100, column: 5, scope: !224)
!255 = !DILabel(scope: !217, name: "goodG2B_label_", file: !1, line: 101)
!256 = !DILocation(line: 101, column: 5, scope: !217)
!257 = !DILocation(line: 106, column: 3, scope: !217)
!258 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42_good_label_", file: !1, line: 107)
!259 = !DILocation(line: 107, column: 3, scope: !63)
!260 = !DILocation(line: 112, column: 1, scope: !63)
