; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_34220CWE606_Unchecked_Loop_Condition__char_connect_socket_34262_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_34220CWE606_Unchecked_Loop_Condition__char_connect_socket_34262_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_34220CWE606_Unchecked_Loop_Condition__char_connect_socket_34262_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_myUnion_0 = alloca %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_data_1 = alloca i8*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %_goodB2G_myUnion_0, metadata !76, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !84, metadata !DIExpression()), !dbg !88
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !88
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !89
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !94, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !120
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !121, metadata !DIExpression()), !dbg !125
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !126
  %call = call i64 @strlen(i8* %1) #7, !dbg !127
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !125
  br label %do.body, !dbg !128

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !129
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !131
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !132
  %cmp = icmp eq i32 %2, -1, !dbg !134
  br i1 %cmp, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !136

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !138
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !139
  store i16 2, i16* %sin_family, align 4, !dbg !140
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !141
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !142
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !143
  store i32 %call2, i32* %s_addr, align 4, !dbg !144
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !145
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !146
  store i16 %call3, i16* %sin_port, align 2, !dbg !147
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !148
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !150
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !151
  %cmp5 = icmp eq i32 %call4, -1, !dbg !152
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !153

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !154

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !156
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !157
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !159
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !160
  %sub = sub i64 100, %9, !dbg !161
  %sub8 = sub i64 %sub, 1, !dbg !162
  %mul = mul i64 1, %sub8, !dbg !163
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !164
  %conv = trunc i64 %call9 to i32, !dbg !164
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !165
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !166
  %cmp10 = icmp eq i32 %10, -1, !dbg !168
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !169

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !170
  %cmp12 = icmp eq i32 %11, 0, !dbg !171
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !172

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !173

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !175
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !176
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !177
  %conv16 = sext i32 %14 to i64, !dbg !177
  %div = udiv i64 %conv16, 1, !dbg !178
  %add = add i64 %13, %div, !dbg !179
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !175
  store i8 0, i8* %arrayidx, align 1, !dbg !180
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !181
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !182
  store i8* %call17, i8** %_goodB2G_replace_0, align 8, !dbg !183
  %16 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !184
  %tobool = icmp ne i8* %16, null, !dbg !184
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !186

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !187
  store i8 0, i8* %17, align 1, !dbg !189
  br label %if.end19, !dbg !190

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !191
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !192
  store i8* %call20, i8** %_goodB2G_replace_0, align 8, !dbg !193
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !194
  %tobool21 = icmp ne i8* %19, null, !dbg !194
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !196

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !197
  store i8 0, i8* %20, align 1, !dbg !199
  br label %if.end23, !dbg !200

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !201

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !202
  %cmp24 = icmp ne i32 %21, -1, !dbg !204
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !205

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !206
  %call27 = call i32 @close(i32 %22), !dbg !208
  br label %if.end28, !dbg !209

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !210
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %_goodB2G_myUnion_0 to i8**, !dbg !211
  store i8* %23, i8** %unionFirst, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_1, metadata !213, metadata !DIExpression()), !dbg !215
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType* %_goodB2G_myUnion_0 to i8**, !dbg !216
  %24 = load i8*, i8** %unionSecond, align 8, !dbg !216
  store i8* %24, i8** %_goodB2G_data_1, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !222, metadata !DIExpression()), !dbg !223
  %25 = load i8*, i8** %_goodB2G_data_1, align 8, !dbg !224
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !226
  %cmp30 = icmp eq i32 %call29, 1, !dbg !227
  br i1 %cmp30, label %if.then32, label %if.end37, !dbg !228

if.then32:                                        ; preds = %if.end28
  %26 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !229
  %cmp33 = icmp slt i32 %26, 10000, !dbg !232
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !233

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !234
  %27 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !236
  %28 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !237
  call void %27(i32 %28), !dbg !236
  %29 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !238
  call void @printIntLine(i32 %29), !dbg !239
  br label %if.end36, !dbg !240

if.end36:                                         ; preds = %if.then35, %if.then32
  br label %if.end37, !dbg !241

if.end37:                                         ; preds = %if.end36, %if.end28
  br label %goodB2G_label_, !dbg !242

goodB2G_label_:                                   ; preds = %if.end37
  call void @llvm.dbg.label(metadata !243), !dbg !244
  ret void, !dbg !245
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34220CWE606_Unchecked_Loop_Condition__char_connect_socket_34262_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34220CWE606_Unchecked_Loop_Condition__char_connect_socket_34262_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 155, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_myUnion_0", scope: !64, file: !1, line: 5, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_34_unionType", file: !78, line: 31, baseType: !79)
!78 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_953/code_gened")
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !78, line: 27, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !79, file: !78, line: 29, baseType: !59, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !79, file: !78, line: 30, baseType: !59, size: 64)
!83 = !DILocation(line: 5, column: 69, scope: !64)
!84 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !64, file: !1, line: 6, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 100)
!88 = !DILocation(line: 6, column: 8, scope: !64)
!89 = !DILocation(line: 7, column: 21, scope: !64)
!90 = !DILocation(line: 7, column: 19, scope: !64)
!91 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !92, file: !1, line: 9, type: !70)
!92 = distinct !DILexicalBlock(scope: !64, file: !1, line: 8, column: 3)
!93 = !DILocation(line: 9, column: 9, scope: !92)
!94 = !DILocalVariable(name: "_goodB2G_service_0", scope: !92, file: !1, line: 10, type: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !96)
!96 = !{!97, !98, !104, !111}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !95, file: !17, line: 240, baseType: !51, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !95, file: !17, line: 241, baseType: !99, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !101, line: 25, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !103, line: 40, baseType: !53)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !95, file: !17, line: 242, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !105, file: !17, line: 33, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 26, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !103, line: 42, baseType: !5)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !95, file: !17, line: 245, baseType: !112, size: 64, offset: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !114)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DILocation(line: 10, column: 24, scope: !92)
!117 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !92, file: !1, line: 11, type: !59)
!118 = !DILocation(line: 11, column: 11, scope: !92)
!119 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !92, file: !1, line: 12, type: !70)
!120 = !DILocation(line: 12, column: 9, scope: !92)
!121 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !92, file: !1, line: 13, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !124)
!123 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!124 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !DILocation(line: 13, column: 12, scope: !92)
!126 = !DILocation(line: 13, column: 40, scope: !92)
!127 = !DILocation(line: 13, column: 33, scope: !92)
!128 = !DILocation(line: 14, column: 5, scope: !92)
!129 = !DILocation(line: 16, column: 34, scope: !130)
!130 = distinct !DILexicalBlock(scope: !92, file: !1, line: 15, column: 5)
!131 = !DILocation(line: 16, column: 32, scope: !130)
!132 = !DILocation(line: 17, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 17, column: 11)
!134 = !DILocation(line: 17, column: 36, scope: !133)
!135 = !DILocation(line: 17, column: 11, scope: !130)
!136 = !DILocation(line: 19, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 18, column: 7)
!138 = !DILocation(line: 22, column: 7, scope: !130)
!139 = !DILocation(line: 23, column: 26, scope: !130)
!140 = !DILocation(line: 23, column: 37, scope: !130)
!141 = !DILocation(line: 24, column: 44, scope: !130)
!142 = !DILocation(line: 24, column: 26, scope: !130)
!143 = !DILocation(line: 24, column: 35, scope: !130)
!144 = !DILocation(line: 24, column: 42, scope: !130)
!145 = !DILocation(line: 25, column: 37, scope: !130)
!146 = !DILocation(line: 25, column: 26, scope: !130)
!147 = !DILocation(line: 25, column: 35, scope: !130)
!148 = !DILocation(line: 26, column: 19, scope: !149)
!149 = distinct !DILexicalBlock(scope: !130, file: !1, line: 26, column: 11)
!150 = !DILocation(line: 26, column: 45, scope: !149)
!151 = !DILocation(line: 26, column: 11, scope: !149)
!152 = !DILocation(line: 26, column: 116, scope: !149)
!153 = !DILocation(line: 26, column: 11, scope: !130)
!154 = !DILocation(line: 28, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 27, column: 7)
!156 = !DILocation(line: 31, column: 36, scope: !130)
!157 = !DILocation(line: 31, column: 72, scope: !130)
!158 = !DILocation(line: 31, column: 90, scope: !130)
!159 = !DILocation(line: 31, column: 88, scope: !130)
!160 = !DILocation(line: 31, column: 136, scope: !130)
!161 = !DILocation(line: 31, column: 134, scope: !130)
!162 = !DILocation(line: 31, column: 156, scope: !130)
!163 = !DILocation(line: 31, column: 126, scope: !130)
!164 = !DILocation(line: 31, column: 31, scope: !130)
!165 = !DILocation(line: 31, column: 29, scope: !130)
!166 = !DILocation(line: 32, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !130, file: !1, line: 32, column: 11)
!168 = !DILocation(line: 32, column: 34, scope: !167)
!169 = !DILocation(line: 32, column: 43, scope: !167)
!170 = !DILocation(line: 32, column: 47, scope: !167)
!171 = !DILocation(line: 32, column: 69, scope: !167)
!172 = !DILocation(line: 32, column: 11, scope: !130)
!173 = !DILocation(line: 34, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !1, line: 33, column: 7)
!175 = !DILocation(line: 37, column: 7, scope: !130)
!176 = !DILocation(line: 37, column: 23, scope: !130)
!177 = !DILocation(line: 37, column: 45, scope: !130)
!178 = !DILocation(line: 37, column: 67, scope: !130)
!179 = !DILocation(line: 37, column: 42, scope: !130)
!180 = !DILocation(line: 37, column: 86, scope: !130)
!181 = !DILocation(line: 38, column: 35, scope: !130)
!182 = !DILocation(line: 38, column: 28, scope: !130)
!183 = !DILocation(line: 38, column: 26, scope: !130)
!184 = !DILocation(line: 39, column: 11, scope: !185)
!185 = distinct !DILexicalBlock(scope: !130, file: !1, line: 39, column: 11)
!186 = !DILocation(line: 39, column: 11, scope: !130)
!187 = !DILocation(line: 41, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 40, column: 7)
!189 = !DILocation(line: 41, column: 29, scope: !188)
!190 = !DILocation(line: 42, column: 7, scope: !188)
!191 = !DILocation(line: 44, column: 35, scope: !130)
!192 = !DILocation(line: 44, column: 28, scope: !130)
!193 = !DILocation(line: 44, column: 26, scope: !130)
!194 = !DILocation(line: 45, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !130, file: !1, line: 45, column: 11)
!196 = !DILocation(line: 45, column: 11, scope: !130)
!197 = !DILocation(line: 47, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 46, column: 7)
!199 = !DILocation(line: 47, column: 29, scope: !198)
!200 = !DILocation(line: 48, column: 7, scope: !198)
!201 = !DILocation(line: 50, column: 5, scope: !130)
!202 = !DILocation(line: 52, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !92, file: !1, line: 52, column: 9)
!204 = !DILocation(line: 52, column: 34, scope: !203)
!205 = !DILocation(line: 52, column: 9, scope: !92)
!206 = !DILocation(line: 54, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 53, column: 5)
!208 = !DILocation(line: 54, column: 7, scope: !207)
!209 = !DILocation(line: 55, column: 5, scope: !207)
!210 = !DILocation(line: 58, column: 35, scope: !64)
!211 = !DILocation(line: 58, column: 22, scope: !64)
!212 = !DILocation(line: 58, column: 33, scope: !64)
!213 = !DILocalVariable(name: "_goodB2G_data_1", scope: !214, file: !1, line: 60, type: !59)
!214 = distinct !DILexicalBlock(scope: !64, file: !1, line: 59, column: 3)
!215 = !DILocation(line: 60, column: 11, scope: !214)
!216 = !DILocation(line: 60, column: 48, scope: !214)
!217 = !DILocalVariable(name: "_goodB2G_i_0", scope: !218, file: !1, line: 62, type: !70)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 61, column: 5)
!219 = !DILocation(line: 62, column: 11, scope: !218)
!220 = !DILocalVariable(name: "_goodB2G_n_0", scope: !218, file: !1, line: 63, type: !70)
!221 = !DILocation(line: 63, column: 11, scope: !218)
!222 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !218, file: !1, line: 64, type: !70)
!223 = !DILocation(line: 64, column: 11, scope: !218)
!224 = !DILocation(line: 65, column: 18, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !1, line: 65, column: 11)
!226 = !DILocation(line: 65, column: 11, scope: !225)
!227 = !DILocation(line: 65, column: 56, scope: !225)
!228 = !DILocation(line: 65, column: 11, scope: !218)
!229 = !DILocation(line: 67, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 67, column: 13)
!231 = distinct !DILexicalBlock(scope: !225, file: !1, line: 66, column: 7)
!232 = !DILocation(line: 67, column: 26, scope: !230)
!233 = !DILocation(line: 67, column: 13, scope: !231)
!234 = !DILocation(line: 69, column: 34, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 68, column: 9)
!236 = !DILocation(line: 70, column: 11, scope: !235)
!237 = !DILocation(line: 70, column: 18, scope: !235)
!238 = !DILocation(line: 71, column: 24, scope: !235)
!239 = !DILocation(line: 71, column: 11, scope: !235)
!240 = !DILocation(line: 72, column: 9, scope: !235)
!241 = !DILocation(line: 74, column: 7, scope: !231)
!242 = !DILocation(line: 77, column: 3, scope: !214)
!243 = !DILabel(scope: !64, name: "goodB2G_label_", file: !1, line: 78)
!244 = !DILocation(line: 78, column: 3, scope: !64)
!245 = !DILocation(line: 83, column: 1, scope: !64)
