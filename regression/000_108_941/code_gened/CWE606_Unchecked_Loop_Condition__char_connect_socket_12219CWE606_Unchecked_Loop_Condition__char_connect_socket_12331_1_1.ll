; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12331_1_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12331_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12331_1_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !88, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !115, metadata !DIExpression()), !dbg !119
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !120
  %call = call i64 @strlen(i8* %1) #7, !dbg !121
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !119
  br label %do.body, !dbg !122

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !123
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !125
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !126
  %cmp = icmp eq i32 %2, -1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !130

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !132
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !133
  store i16 2, i16* %sin_family, align 4, !dbg !134
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !135
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !136
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !137
  store i32 %call2, i32* %s_addr, align 4, !dbg !138
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !139
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !140
  store i16 %call3, i16* %sin_port, align 2, !dbg !141
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !142
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !144
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !145
  %cmp5 = icmp eq i32 %call4, -1, !dbg !146
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !147

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !148

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !150
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !151
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !153
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !154
  %sub = sub i64 100, %9, !dbg !155
  %sub8 = sub i64 %sub, 1, !dbg !156
  %mul = mul i64 1, %sub8, !dbg !157
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !158
  %conv = trunc i64 %call9 to i32, !dbg !158
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !159
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !160
  %cmp10 = icmp eq i32 %10, -1, !dbg !162
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !163

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !164
  %cmp12 = icmp eq i32 %11, 0, !dbg !165
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !166

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !167

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !169
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !170
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !171
  %conv16 = sext i32 %14 to i64, !dbg !171
  %div = udiv i64 %conv16, 1, !dbg !172
  %add = add i64 %13, %div, !dbg !173
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !169
  store i8 0, i8* %arrayidx, align 1, !dbg !174
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !175
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !176
  store i8* %call17, i8** %_goodB2G_replace_0, align 8, !dbg !177
  %16 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !178
  %tobool = icmp ne i8* %16, null, !dbg !178
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !180

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !181
  store i8 0, i8* %17, align 1, !dbg !183
  br label %if.end19, !dbg !184

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !185
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !186
  store i8* %call20, i8** %_goodB2G_replace_0, align 8, !dbg !187
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !188
  %tobool21 = icmp ne i8* %19, null, !dbg !188
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !190

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !191
  store i8 0, i8* %20, align 1, !dbg !193
  br label %if.end23, !dbg !194

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !195

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !196
  %cmp24 = icmp ne i32 %21, -1, !dbg !198
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !199

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !200
  %call27 = call i32 @close(i32 %22), !dbg !202
  br label %if.end28, !dbg !203

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !204, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !211, metadata !DIExpression()), !dbg !212
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !213
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !215
  %cmp30 = icmp eq i32 %call29, 1, !dbg !216
  br i1 %cmp30, label %if.then32, label %if.end37, !dbg !217

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !218
  %cmp33 = icmp slt i32 %24, 10000, !dbg !221
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !222

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !223
  %25 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !225
  %26 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !226
  call void %25(i32 %26), !dbg !225
  %27 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !227
  call void @printIntLine(i32 %27), !dbg !228
  br label %if.end36, !dbg !229

if.end36:                                         ; preds = %if.then35, %if.then32
  br label %if.end37, !dbg !230

if.end37:                                         ; preds = %if.end36, %if.end28
  br label %goodB2G_label_, !dbg !231

goodB2G_label_:                                   ; preds = %if.end37
  call void @llvm.dbg.label(metadata !232), !dbg !233
  ret void, !dbg !234
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12331_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12331_1_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 133, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 157, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !64, file: !1, line: 5, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 5, column: 8, scope: !64)
!81 = !DILocation(line: 6, column: 21, scope: !64)
!82 = !DILocation(line: 6, column: 19, scope: !64)
!83 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !84, file: !1, line: 63, type: !70)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 62, column: 5)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 61, column: 3)
!86 = distinct !DILexicalBlock(scope: !64, file: !1, line: 7, column: 7)
!87 = !DILocation(line: 63, column: 11, scope: !84)
!88 = !DILocalVariable(name: "_goodB2G_service_0", scope: !84, file: !1, line: 64, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !90)
!90 = !{!91, !92, !98, !105}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !89, file: !17, line: 240, baseType: !51, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !89, file: !17, line: 241, baseType: !93, size: 16, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 25, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !97, line: 40, baseType: !53)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !89, file: !17, line: 242, baseType: !99, size: 32, offset: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !99, file: !17, line: 33, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 26, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !97, line: 42, baseType: !5)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !89, file: !17, line: 245, baseType: !106, size: 64, offset: 64)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !108)
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DILocation(line: 64, column: 26, scope: !84)
!111 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !84, file: !1, line: 65, type: !59)
!112 = !DILocation(line: 65, column: 13, scope: !84)
!113 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !84, file: !1, line: 66, type: !70)
!114 = !DILocation(line: 66, column: 11, scope: !84)
!115 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !84, file: !1, line: 67, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DILocation(line: 67, column: 14, scope: !84)
!120 = !DILocation(line: 67, column: 42, scope: !84)
!121 = !DILocation(line: 67, column: 35, scope: !84)
!122 = !DILocation(line: 68, column: 7, scope: !84)
!123 = !DILocation(line: 70, column: 36, scope: !124)
!124 = distinct !DILexicalBlock(scope: !84, file: !1, line: 69, column: 7)
!125 = !DILocation(line: 70, column: 34, scope: !124)
!126 = !DILocation(line: 71, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 71, column: 13)
!128 = !DILocation(line: 71, column: 38, scope: !127)
!129 = !DILocation(line: 71, column: 13, scope: !124)
!130 = !DILocation(line: 73, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 72, column: 9)
!132 = !DILocation(line: 76, column: 9, scope: !124)
!133 = !DILocation(line: 77, column: 28, scope: !124)
!134 = !DILocation(line: 77, column: 39, scope: !124)
!135 = !DILocation(line: 78, column: 46, scope: !124)
!136 = !DILocation(line: 78, column: 28, scope: !124)
!137 = !DILocation(line: 78, column: 37, scope: !124)
!138 = !DILocation(line: 78, column: 44, scope: !124)
!139 = !DILocation(line: 79, column: 39, scope: !124)
!140 = !DILocation(line: 79, column: 28, scope: !124)
!141 = !DILocation(line: 79, column: 37, scope: !124)
!142 = !DILocation(line: 80, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 13)
!144 = !DILocation(line: 80, column: 47, scope: !143)
!145 = !DILocation(line: 80, column: 13, scope: !143)
!146 = !DILocation(line: 80, column: 118, scope: !143)
!147 = !DILocation(line: 80, column: 13, scope: !124)
!148 = !DILocation(line: 82, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 81, column: 9)
!150 = !DILocation(line: 85, column: 38, scope: !124)
!151 = !DILocation(line: 85, column: 74, scope: !124)
!152 = !DILocation(line: 85, column: 92, scope: !124)
!153 = !DILocation(line: 85, column: 90, scope: !124)
!154 = !DILocation(line: 85, column: 138, scope: !124)
!155 = !DILocation(line: 85, column: 136, scope: !124)
!156 = !DILocation(line: 85, column: 158, scope: !124)
!157 = !DILocation(line: 85, column: 128, scope: !124)
!158 = !DILocation(line: 85, column: 33, scope: !124)
!159 = !DILocation(line: 85, column: 31, scope: !124)
!160 = !DILocation(line: 86, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !124, file: !1, line: 86, column: 13)
!162 = !DILocation(line: 86, column: 36, scope: !161)
!163 = !DILocation(line: 86, column: 45, scope: !161)
!164 = !DILocation(line: 86, column: 49, scope: !161)
!165 = !DILocation(line: 86, column: 71, scope: !161)
!166 = !DILocation(line: 86, column: 13, scope: !124)
!167 = !DILocation(line: 88, column: 11, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !1, line: 87, column: 9)
!169 = !DILocation(line: 91, column: 9, scope: !124)
!170 = !DILocation(line: 91, column: 25, scope: !124)
!171 = !DILocation(line: 91, column: 47, scope: !124)
!172 = !DILocation(line: 91, column: 69, scope: !124)
!173 = !DILocation(line: 91, column: 44, scope: !124)
!174 = !DILocation(line: 91, column: 88, scope: !124)
!175 = !DILocation(line: 92, column: 37, scope: !124)
!176 = !DILocation(line: 92, column: 30, scope: !124)
!177 = !DILocation(line: 92, column: 28, scope: !124)
!178 = !DILocation(line: 93, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !124, file: !1, line: 93, column: 13)
!180 = !DILocation(line: 93, column: 13, scope: !124)
!181 = !DILocation(line: 95, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 94, column: 9)
!183 = !DILocation(line: 95, column: 31, scope: !182)
!184 = !DILocation(line: 96, column: 9, scope: !182)
!185 = !DILocation(line: 98, column: 37, scope: !124)
!186 = !DILocation(line: 98, column: 30, scope: !124)
!187 = !DILocation(line: 98, column: 28, scope: !124)
!188 = !DILocation(line: 99, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !124, file: !1, line: 99, column: 13)
!190 = !DILocation(line: 99, column: 13, scope: !124)
!191 = !DILocation(line: 101, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 100, column: 9)
!193 = !DILocation(line: 101, column: 31, scope: !192)
!194 = !DILocation(line: 102, column: 9, scope: !192)
!195 = !DILocation(line: 104, column: 7, scope: !124)
!196 = !DILocation(line: 106, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !84, file: !1, line: 106, column: 11)
!198 = !DILocation(line: 106, column: 36, scope: !197)
!199 = !DILocation(line: 106, column: 11, scope: !84)
!200 = !DILocation(line: 108, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 107, column: 7)
!202 = !DILocation(line: 108, column: 9, scope: !201)
!203 = !DILocation(line: 109, column: 7, scope: !201)
!204 = !DILocalVariable(name: "_goodB2G_i_0", scope: !205, file: !1, line: 117, type: !70)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 116, column: 5)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 115, column: 3)
!207 = distinct !DILexicalBlock(scope: !64, file: !1, line: 114, column: 7)
!208 = !DILocation(line: 117, column: 11, scope: !205)
!209 = !DILocalVariable(name: "_goodB2G_n_0", scope: !205, file: !1, line: 118, type: !70)
!210 = !DILocation(line: 118, column: 11, scope: !205)
!211 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !205, file: !1, line: 119, type: !70)
!212 = !DILocation(line: 119, column: 11, scope: !205)
!213 = !DILocation(line: 120, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !1, line: 120, column: 11)
!215 = !DILocation(line: 120, column: 11, scope: !214)
!216 = !DILocation(line: 120, column: 56, scope: !214)
!217 = !DILocation(line: 120, column: 11, scope: !205)
!218 = !DILocation(line: 122, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 122, column: 13)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 121, column: 7)
!221 = !DILocation(line: 122, column: 26, scope: !219)
!222 = !DILocation(line: 122, column: 13, scope: !220)
!223 = !DILocation(line: 124, column: 34, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 123, column: 9)
!225 = !DILocation(line: 125, column: 11, scope: !224)
!226 = !DILocation(line: 125, column: 18, scope: !224)
!227 = !DILocation(line: 126, column: 24, scope: !224)
!228 = !DILocation(line: 126, column: 11, scope: !224)
!229 = !DILocation(line: 127, column: 9, scope: !224)
!230 = !DILocation(line: 129, column: 7, scope: !220)
!231 = !DILocation(line: 114, column: 7, scope: !207)
!232 = !DILabel(scope: !64, name: "goodB2G_label_", file: !1, line: 157)
!233 = !DILocation(line: 157, column: 3, scope: !64)
!234 = !DILocation(line: 162, column: 1, scope: !64)
