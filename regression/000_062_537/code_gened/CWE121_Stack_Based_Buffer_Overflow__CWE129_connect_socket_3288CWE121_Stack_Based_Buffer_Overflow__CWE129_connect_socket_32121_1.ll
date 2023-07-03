; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_3288CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32121_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_3288CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32121_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_3288CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32121_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr2_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0, metadata !78, metadata !DIExpression()), !dbg !80
  store i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr2_0, metadata !81, metadata !DIExpression()), !dbg !82
  store i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr2_0, align 8, !dbg !82
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1, metadata !84, metadata !DIExpression()), !dbg !86
  %0 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !87
  %1 = load i32, i32* %0, align 4, !dbg !88
  store i32 %1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0, metadata !92, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !116
  br label %do.body, !dbg !117

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !118
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !120
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !121
  %cmp = icmp eq i32 %2, -1, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !125

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0 to i8*, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !127
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0, i32 0, i32 0, !dbg !128
  store i16 2, i16* %sin_family, align 4, !dbg !129
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !130
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0, i32 0, i32 2, !dbg !131
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !132
  store i32 %call1, i32* %s_addr, align 4, !dbg !133
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !134
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0, i32 0, i32 1, !dbg !135
  store i16 %call2, i16* %sin_port, align 2, !dbg !136
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !137
  %5 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0 to %struct.sockaddr*, !dbg !139
  %call3 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !140
  %cmp4 = icmp eq i32 %call3, -1, !dbg !141
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !142

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !143

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !145
  %7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr, align 8, !dbg !146
  %call7 = call i64 @recv(i32 %6, i8* %7, i64 13, i32 0), !dbg !147
  %conv = trunc i64 %call7 to i32, !dbg !147
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0, align 4, !dbg !148
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0, align 4, !dbg !149
  %cmp8 = icmp eq i32 %8, -1, !dbg !151
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !152

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0, align 4, !dbg !153
  %cmp10 = icmp eq i32 %9, 0, !dbg !154
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !155

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  br label %do.end, !dbg !156

if.end13:                                         ; preds = %lor.lhs.false
  %10 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr, align 8, !dbg !158
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0, align 4, !dbg !159
  %idxprom = sext i32 %11 to i64, !dbg !158
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  %12 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0.addr, align 8, !dbg !161
  %call14 = call i32 @atoi(i8* %12) #9, !dbg !162
  store i32 %call14, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1, align 4, !dbg !163
  br label %do.end, !dbg !164

do.end:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %13 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !165
  %cmp15 = icmp ne i32 %13, -1, !dbg !167
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !168

if.then17:                                        ; preds = %do.end
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0, align 4, !dbg !169
  %call18 = call i32 @close(i32 %14), !dbg !171
  br label %if.end19, !dbg !172

if.end19:                                         ; preds = %if.then17, %do.end
  %15 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1, align 4, !dbg !173
  %16 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !174
  store i32 %15, i32* %16, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2, metadata !176, metadata !DIExpression()), !dbg !178
  %17 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr2_0, align 8, !dbg !179
  %18 = load i32, i32* %17, align 4, !dbg !180
  store i32 %18, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_buffer_0, metadata !184, metadata !DIExpression()), !dbg !188
  %19 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_buffer_0 to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 40, i1 false), !dbg !188
  %20 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2, align 4, !dbg !189
  %cmp20 = icmp sge i32 %20, 0, !dbg !191
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !192

if.then22:                                        ; preds = %if.end19
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !193
  %22 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2, align 4, !dbg !195
  call void %21(i32 %22), !dbg !193
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, align 4, !dbg !196
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %if.then22
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, align 4, !dbg !199
  %cmp23 = icmp slt i32 %23, 10, !dbg !201
  br i1 %cmp23, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, align 4, !dbg !203
  %idxprom25 = sext i32 %24 to i64, !dbg !205
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_buffer_0, i64 0, i64 %idxprom25, !dbg !205
  %25 = load i32, i32* %arrayidx26, align 4, !dbg !205
  call void @printIntLine(i32 %25), !dbg !206
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, align 4, !dbg !208
  %inc = add nsw i32 %26, 1, !dbg !208
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  br label %if.end27, !dbg !213

if.else:                                          ; preds = %if.end19
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !214
  br label %if.end27

if.end27:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_label_, !dbg !216

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_label_: ; preds = %if.end27
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_3288CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32121_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_537/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_3288CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32121_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 140, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 228, scope: !63)
!76 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_0", scope: !63, file: !1, line: 5, type: !70)
!77 = !DILocation(line: 5, column: 7, scope: !63)
!78 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr1_0", scope: !63, file: !1, line: 6, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!80 = !DILocation(line: 6, column: 8, scope: !63)
!81 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_dataPtr2_0", scope: !63, file: !1, line: 7, type: !79)
!82 = !DILocation(line: 7, column: 8, scope: !63)
!83 = !DILocation(line: 8, column: 76, scope: !63)
!84 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_1", scope: !85, file: !1, line: 10, type: !70)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 9, column: 3)
!86 = !DILocation(line: 10, column: 9, scope: !85)
!87 = !DILocation(line: 10, column: 85, scope: !85)
!88 = !DILocation(line: 10, column: 84, scope: !85)
!89 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_recvResult_0", scope: !90, file: !1, line: 12, type: !70)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 11, column: 5)
!91 = !DILocation(line: 12, column: 11, scope: !90)
!92 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_service_0", scope: !90, file: !1, line: 13, type: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !94)
!94 = !{!95, !96, !102, !109}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !93, file: !17, line: 240, baseType: !51, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !93, file: !17, line: 241, baseType: !97, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 25, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !101, line: 40, baseType: !53)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !93, file: !17, line: 242, baseType: !103, size: 32, offset: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !103, file: !17, line: 33, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 26, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !101, line: 42, baseType: !5)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !93, file: !17, line: 245, baseType: !110, size: 64, offset: 64)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !112)
!111 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DILocation(line: 13, column: 26, scope: !90)
!115 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_connectSocket_0", scope: !90, file: !1, line: 14, type: !70)
!116 = !DILocation(line: 14, column: 11, scope: !90)
!117 = !DILocation(line: 15, column: 7, scope: !90)
!118 = !DILocation(line: 17, column: 93, scope: !119)
!119 = distinct !DILexicalBlock(scope: !90, file: !1, line: 16, column: 7)
!120 = !DILocation(line: 17, column: 91, scope: !119)
!121 = !DILocation(line: 18, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 18, column: 13)
!123 = !DILocation(line: 18, column: 95, scope: !122)
!124 = !DILocation(line: 18, column: 13, scope: !119)
!125 = !DILocation(line: 20, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 19, column: 9)
!127 = !DILocation(line: 23, column: 9, scope: !119)
!128 = !DILocation(line: 24, column: 85, scope: !119)
!129 = !DILocation(line: 24, column: 96, scope: !119)
!130 = !DILocation(line: 25, column: 103, scope: !119)
!131 = !DILocation(line: 25, column: 85, scope: !119)
!132 = !DILocation(line: 25, column: 94, scope: !119)
!133 = !DILocation(line: 25, column: 101, scope: !119)
!134 = !DILocation(line: 26, column: 96, scope: !119)
!135 = !DILocation(line: 26, column: 85, scope: !119)
!136 = !DILocation(line: 26, column: 94, scope: !119)
!137 = !DILocation(line: 27, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !119, file: !1, line: 27, column: 13)
!139 = !DILocation(line: 27, column: 104, scope: !138)
!140 = !DILocation(line: 27, column: 13, scope: !138)
!141 = !DILocation(line: 27, column: 289, scope: !138)
!142 = !DILocation(line: 27, column: 13, scope: !119)
!143 = !DILocation(line: 29, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 28, column: 9)
!145 = !DILocation(line: 32, column: 95, scope: !119)
!146 = !DILocation(line: 32, column: 178, scope: !119)
!147 = !DILocation(line: 32, column: 90, scope: !119)
!148 = !DILocation(line: 32, column: 88, scope: !119)
!149 = !DILocation(line: 33, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !1, line: 33, column: 13)
!151 = !DILocation(line: 33, column: 93, scope: !150)
!152 = !DILocation(line: 33, column: 102, scope: !150)
!153 = !DILocation(line: 33, column: 106, scope: !150)
!154 = !DILocation(line: 33, column: 185, scope: !150)
!155 = !DILocation(line: 33, column: 13, scope: !119)
!156 = !DILocation(line: 35, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !150, file: !1, line: 34, column: 9)
!158 = !DILocation(line: 38, column: 9, scope: !119)
!159 = !DILocation(line: 38, column: 89, scope: !119)
!160 = !DILocation(line: 38, column: 169, scope: !119)
!161 = !DILocation(line: 39, column: 89, scope: !119)
!162 = !DILocation(line: 39, column: 84, scope: !119)
!163 = !DILocation(line: 39, column: 82, scope: !119)
!164 = !DILocation(line: 40, column: 7, scope: !119)
!165 = !DILocation(line: 42, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !90, file: !1, line: 42, column: 11)
!167 = !DILocation(line: 42, column: 93, scope: !166)
!168 = !DILocation(line: 42, column: 11, scope: !90)
!169 = !DILocation(line: 44, column: 15, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 43, column: 7)
!171 = !DILocation(line: 44, column: 9, scope: !170)
!172 = !DILocation(line: 45, column: 7, scope: !170)
!173 = !DILocation(line: 48, column: 85, scope: !85)
!174 = !DILocation(line: 48, column: 6, scope: !85)
!175 = !DILocation(line: 48, column: 83, scope: !85)
!176 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_data_2", scope: !177, file: !1, line: 51, type: !70)
!177 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 3)
!178 = !DILocation(line: 51, column: 9, scope: !177)
!179 = !DILocation(line: 51, column: 85, scope: !177)
!180 = !DILocation(line: 51, column: 84, scope: !177)
!181 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_i_0", scope: !182, file: !1, line: 53, type: !70)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 52, column: 5)
!183 = !DILocation(line: 53, column: 11, scope: !182)
!184 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_buffer_0", scope: !182, file: !1, line: 54, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 10)
!188 = !DILocation(line: 54, column: 11, scope: !182)
!189 = !DILocation(line: 55, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !1, line: 55, column: 11)
!191 = !DILocation(line: 55, column: 84, scope: !190)
!192 = !DILocation(line: 55, column: 11, scope: !182)
!193 = !DILocation(line: 57, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 56, column: 7)
!195 = !DILocation(line: 57, column: 16, scope: !194)
!196 = !DILocation(line: 58, column: 84, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 58, column: 9)
!198 = !DILocation(line: 58, column: 14, scope: !197)
!199 = !DILocation(line: 58, column: 89, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 58, column: 9)
!201 = !DILocation(line: 58, column: 159, scope: !200)
!202 = !DILocation(line: 58, column: 9, scope: !197)
!203 = !DILocation(line: 60, column: 99, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 59, column: 9)
!205 = !DILocation(line: 60, column: 24, scope: !204)
!206 = !DILocation(line: 60, column: 11, scope: !204)
!207 = !DILocation(line: 61, column: 9, scope: !204)
!208 = !DILocation(line: 58, column: 234, scope: !200)
!209 = !DILocation(line: 58, column: 9, scope: !200)
!210 = distinct !{!210, !202, !211, !212}
!211 = !DILocation(line: 61, column: 9, scope: !197)
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 63, column: 7, scope: !194)
!214 = !DILocation(line: 66, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !190, file: !1, line: 65, column: 7)
!216 = !DILocation(line: 70, column: 3, scope: !177)
!217 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_32_bad_label_", file: !1, line: 71)
!218 = !DILocation(line: 71, column: 3, scope: !63)
!219 = !DILocation(line: 76, column: 1, scope: !63)
