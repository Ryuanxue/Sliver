; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_1594CWE606_Unchecked_Loop_Condition__char_connect_socket_15140_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_1594CWE606_Unchecked_Loop_Condition__char_connect_socket_15140_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_1594CWE606_Unchecked_Loop_Condition__char_connect_socket_15140_1(i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataBuffer_0 to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataBuffer_0, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0, metadata !83, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0, metadata !113, metadata !DIExpression()), !dbg !117
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !118
  %call = call i64 @strlen(i8* %1) #7, !dbg !119
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0, align 8, !dbg !117
  br label %do.body, !dbg !120

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !121
  store i32 %call1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !123
  %2 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !124
  %cmp = icmp eq i32 %2, -1, !dbg !126
  br i1 %cmp, label %if.then, label %if.end, !dbg !127

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !128

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0 to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !130
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0, i32 0, i32 0, !dbg !131
  store i16 2, i16* %sin_family, align 4, !dbg !132
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !133
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0, i32 0, i32 2, !dbg !134
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !135
  store i32 %call2, i32* %s_addr, align 4, !dbg !136
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !137
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0, i32 0, i32 1, !dbg !138
  store i16 %call3, i16* %sin_port, align 2, !dbg !139
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !140
  %5 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0 to %struct.sockaddr*, !dbg !142
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !143
  %cmp5 = icmp eq i32 %call4, -1, !dbg !144
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !145

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !146

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !148
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !149
  %8 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !151
  %9 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0, align 8, !dbg !152
  %sub = sub i64 100, %9, !dbg !153
  %sub8 = sub i64 %sub, 1, !dbg !154
  %mul = mul i64 1, %sub8, !dbg !155
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !156
  %conv = trunc i64 %call9 to i32, !dbg !156
  store i32 %conv, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0, align 4, !dbg !157
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0, align 4, !dbg !158
  %cmp10 = icmp eq i32 %10, -1, !dbg !160
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !161

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0, align 4, !dbg !162
  %cmp12 = icmp eq i32 %11, 0, !dbg !163
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !164

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !165

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !167
  %13 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0, align 8, !dbg !168
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0, align 4, !dbg !169
  %conv16 = sext i32 %14 to i64, !dbg !169
  %div = udiv i64 %conv16, 1, !dbg !170
  %add = add i64 %13, %div, !dbg !171
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !172
  %15 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !173
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !174
  store i8* %call17, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !175
  %16 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !176
  %tobool = icmp ne i8* %16, null, !dbg !176
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !178

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !179
  store i8 0, i8* %17, align 1, !dbg !181
  br label %if.end19, !dbg !182

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !183
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !184
  store i8* %call20, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !185
  %19 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !186
  %tobool21 = icmp ne i8* %19, null, !dbg !186
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !188

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0, align 8, !dbg !189
  store i8 0, i8* %20, align 1, !dbg !191
  br label %if.end23, !dbg !192

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !193

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !194
  %cmp24 = icmp ne i32 %21, -1, !dbg !196
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !197

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0, align 4, !dbg !198
  %call27 = call i32 @close(i32 %22), !dbg !200
  br label %if.end28, !dbg !201

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_i_0, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_n_0, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_intVariable_0, metadata !207, metadata !DIExpression()), !dbg !208
  %23 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0.addr, align 8, !dbg !209
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_n_0) #8, !dbg !211
  %cmp30 = icmp eq i32 %call29, 1, !dbg !212
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !213

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_intVariable_0, align 4, !dbg !214
  %24 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !216
  %25 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_n_0, align 4, !dbg !217
  call void %24(i32 %25), !dbg !216
  %26 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_intVariable_0, align 4, !dbg !218
  call void @printIntLine(i32 %26), !dbg !219
  br label %if.end33, !dbg !220

if.end33:                                         ; preds = %if.then32, %if.end28
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_label_, !dbg !221

CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_label_: ; preds = %if.end33
  call void @llvm.dbg.label(metadata !222), !dbg !223
  ret void, !dbg !224
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1594CWE606_Unchecked_Loop_Condition__char_connect_socket_15140_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_944/code_gened")
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
!45 = !{!46, !59}
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
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0"}
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1594CWE606_Unchecked_Loop_Condition__char_connect_socket_15140_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 130, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 206, scope: !64)
!76 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataBuffer_0", scope: !64, file: !1, line: 5, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 5, column: 8, scope: !64)
!81 = !DILocation(line: 6, column: 73, scope: !64)
!82 = !DILocation(line: 6, column: 71, scope: !64)
!83 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_recvResult_0", scope: !84, file: !1, line: 11, type: !70)
!84 = distinct !DILexicalBlock(scope: !64, file: !1, line: 10, column: 5)
!85 = !DILocation(line: 11, column: 11, scope: !84)
!86 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_service_0", scope: !84, file: !1, line: 12, type: !87)
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
!108 = !DILocation(line: 12, column: 26, scope: !84)
!109 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_replace_0", scope: !84, file: !1, line: 13, type: !59)
!110 = !DILocation(line: 13, column: 13, scope: !84)
!111 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_connectSocket_0", scope: !84, file: !1, line: 14, type: !70)
!112 = !DILocation(line: 14, column: 11, scope: !84)
!113 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_dataLen_0", scope: !84, file: !1, line: 15, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!116 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DILocation(line: 15, column: 14, scope: !84)
!118 = !DILocation(line: 15, column: 94, scope: !84)
!119 = !DILocation(line: 15, column: 87, scope: !84)
!120 = !DILocation(line: 16, column: 7, scope: !84)
!121 = !DILocation(line: 18, column: 88, scope: !122)
!122 = distinct !DILexicalBlock(scope: !84, file: !1, line: 17, column: 7)
!123 = !DILocation(line: 18, column: 86, scope: !122)
!124 = !DILocation(line: 19, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 19, column: 13)
!126 = !DILocation(line: 19, column: 90, scope: !125)
!127 = !DILocation(line: 19, column: 13, scope: !122)
!128 = !DILocation(line: 21, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 20, column: 9)
!130 = !DILocation(line: 24, column: 9, scope: !122)
!131 = !DILocation(line: 25, column: 80, scope: !122)
!132 = !DILocation(line: 25, column: 91, scope: !122)
!133 = !DILocation(line: 26, column: 98, scope: !122)
!134 = !DILocation(line: 26, column: 80, scope: !122)
!135 = !DILocation(line: 26, column: 89, scope: !122)
!136 = !DILocation(line: 26, column: 96, scope: !122)
!137 = !DILocation(line: 27, column: 91, scope: !122)
!138 = !DILocation(line: 27, column: 80, scope: !122)
!139 = !DILocation(line: 27, column: 89, scope: !122)
!140 = !DILocation(line: 28, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !1, line: 28, column: 13)
!142 = !DILocation(line: 28, column: 99, scope: !141)
!143 = !DILocation(line: 28, column: 13, scope: !141)
!144 = !DILocation(line: 28, column: 274, scope: !141)
!145 = !DILocation(line: 28, column: 13, scope: !122)
!146 = !DILocation(line: 30, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 29, column: 9)
!148 = !DILocation(line: 33, column: 90, scope: !122)
!149 = !DILocation(line: 33, column: 178, scope: !122)
!150 = !DILocation(line: 33, column: 248, scope: !122)
!151 = !DILocation(line: 33, column: 246, scope: !122)
!152 = !DILocation(line: 33, column: 346, scope: !122)
!153 = !DILocation(line: 33, column: 344, scope: !122)
!154 = !DILocation(line: 33, column: 418, scope: !122)
!155 = !DILocation(line: 33, column: 336, scope: !122)
!156 = !DILocation(line: 33, column: 85, scope: !122)
!157 = !DILocation(line: 33, column: 83, scope: !122)
!158 = !DILocation(line: 34, column: 14, scope: !159)
!159 = distinct !DILexicalBlock(scope: !122, file: !1, line: 34, column: 13)
!160 = !DILocation(line: 34, column: 88, scope: !159)
!161 = !DILocation(line: 34, column: 97, scope: !159)
!162 = !DILocation(line: 34, column: 101, scope: !159)
!163 = !DILocation(line: 34, column: 175, scope: !159)
!164 = !DILocation(line: 34, column: 13, scope: !122)
!165 = !DILocation(line: 36, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !1, line: 35, column: 9)
!167 = !DILocation(line: 39, column: 9, scope: !122)
!168 = !DILocation(line: 39, column: 77, scope: !122)
!169 = !DILocation(line: 39, column: 151, scope: !122)
!170 = !DILocation(line: 39, column: 225, scope: !122)
!171 = !DILocation(line: 39, column: 148, scope: !122)
!172 = !DILocation(line: 39, column: 244, scope: !122)
!173 = !DILocation(line: 40, column: 89, scope: !122)
!174 = !DILocation(line: 40, column: 82, scope: !122)
!175 = !DILocation(line: 40, column: 80, scope: !122)
!176 = !DILocation(line: 41, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !122, file: !1, line: 41, column: 13)
!178 = !DILocation(line: 41, column: 13, scope: !122)
!179 = !DILocation(line: 43, column: 12, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !1, line: 42, column: 9)
!181 = !DILocation(line: 43, column: 83, scope: !180)
!182 = !DILocation(line: 44, column: 9, scope: !180)
!183 = !DILocation(line: 46, column: 89, scope: !122)
!184 = !DILocation(line: 46, column: 82, scope: !122)
!185 = !DILocation(line: 46, column: 80, scope: !122)
!186 = !DILocation(line: 47, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !122, file: !1, line: 47, column: 13)
!188 = !DILocation(line: 47, column: 13, scope: !122)
!189 = !DILocation(line: 49, column: 12, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 48, column: 9)
!191 = !DILocation(line: 49, column: 83, scope: !190)
!192 = !DILocation(line: 50, column: 9, scope: !190)
!193 = !DILocation(line: 52, column: 7, scope: !122)
!194 = !DILocation(line: 54, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !84, file: !1, line: 54, column: 11)
!196 = !DILocation(line: 54, column: 88, scope: !195)
!197 = !DILocation(line: 54, column: 11, scope: !84)
!198 = !DILocation(line: 56, column: 15, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 55, column: 7)
!200 = !DILocation(line: 56, column: 9, scope: !199)
!201 = !DILocation(line: 57, column: 7, scope: !199)
!202 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_i_0", scope: !203, file: !1, line: 72, type: !70)
!203 = distinct !DILexicalBlock(scope: !64, file: !1, line: 71, column: 5)
!204 = !DILocation(line: 72, column: 11, scope: !203)
!205 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_n_0", scope: !203, file: !1, line: 73, type: !70)
!206 = !DILocation(line: 73, column: 11, scope: !203)
!207 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_intVariable_0", scope: !203, file: !1, line: 74, type: !70)
!208 = !DILocation(line: 74, column: 11, scope: !203)
!209 = !DILocation(line: 75, column: 18, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !1, line: 75, column: 11)
!211 = !DILocation(line: 75, column: 11, scope: !210)
!212 = !DILocation(line: 75, column: 160, scope: !210)
!213 = !DILocation(line: 75, column: 11, scope: !203)
!214 = !DILocation(line: 77, column: 84, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 76, column: 7)
!216 = !DILocation(line: 78, column: 9, scope: !215)
!217 = !DILocation(line: 78, column: 16, scope: !215)
!218 = !DILocation(line: 79, column: 22, scope: !215)
!219 = !DILocation(line: 79, column: 9, scope: !215)
!220 = !DILocation(line: 80, column: 7, scope: !215)
!221 = !DILocation(line: 82, column: 5, scope: !203)
!222 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_15_bad_label_", file: !1, line: 91)
!223 = !DILocation(line: 91, column: 3, scope: !64)
!224 = !DILocation(line: 96, column: 1, scope: !64)
