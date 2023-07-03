; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_08205CWE606_Unchecked_Loop_Condition__char_connect_socket_08252_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_08205CWE606_Unchecked_Loop_Condition__char_connect_socket_08252_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_08205CWE606_Unchecked_Loop_Condition__char_connect_socket_08252_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_replace_0 = alloca i8*, align 8
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !82
  %call = call i32 (...) @staticReturnsTrue(), !dbg !83
  %tobool = icmp ne i32 %call, 0, !dbg !83
  br i1 %tobool, label %if.then, label %if.end32, !dbg !85

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !90, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_replace_0, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !117, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !122
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call1, i64* %_goodB2G1_dataLen_0, align 8, !dbg !121
  br label %do.body, !dbg !124

do.body:                                          ; preds = %if.then
  %call2 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !125
  store i32 %call2, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !127
  %2 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !128
  %cmp = icmp eq i32 %2, -1, !dbg !130
  br i1 %cmp, label %if.then3, label %if.end, !dbg !131

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !132

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !134
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !135
  store i16 2, i16* %sin_family, align 4, !dbg !136
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !137
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !138
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !139
  store i32 %call4, i32* %s_addr, align 4, !dbg !140
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !141
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !142
  store i16 %call5, i16* %sin_port, align 2, !dbg !143
  %4 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !144
  %5 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !146
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !147
  %cmp7 = icmp eq i32 %call6, -1, !dbg !148
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !149

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !150

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !152
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !153
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !155
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !156
  %sub = sub i64 100, %9, !dbg !157
  %sub10 = sub i64 %sub, 1, !dbg !158
  %mul = mul i64 1, %sub10, !dbg !159
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !160
  %conv = trunc i64 %call11 to i32, !dbg !160
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !161
  %10 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !162
  %cmp12 = icmp eq i32 %10, -1, !dbg !164
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !166
  %cmp14 = icmp eq i32 %11, 0, !dbg !167
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !168

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !169

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !171
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !172
  %14 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !173
  %conv18 = sext i32 %14 to i64, !dbg !173
  %div = udiv i64 %conv18, 1, !dbg !174
  %add = add i64 %13, %div, !dbg !175
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !171
  store i8 0, i8* %arrayidx, align 1, !dbg !176
  %15 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !177
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !178
  store i8* %call19, i8** %_goodB2G1_replace_0, align 8, !dbg !179
  %16 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !180
  %tobool20 = icmp ne i8* %16, null, !dbg !180
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !182

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !183
  store i8 0, i8* %17, align 1, !dbg !185
  br label %if.end22, !dbg !186

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !187
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !188
  store i8* %call23, i8** %_goodB2G1_replace_0, align 8, !dbg !189
  %19 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !190
  %tobool24 = icmp ne i8* %19, null, !dbg !190
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !192

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !193
  store i8 0, i8* %20, align 1, !dbg !195
  br label %if.end26, !dbg !196

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !197

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !198
  %cmp27 = icmp ne i32 %21, -1, !dbg !200
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !201

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !202
  %call30 = call i32 @close(i32 %22), !dbg !204
  br label %if.end31, !dbg !205

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end32, !dbg !206

if.end32:                                         ; preds = %if.end31, %entry
  %call33 = call i32 (...) @staticReturnsFalse(), !dbg !207
  %tobool34 = icmp ne i32 %call33, 0, !dbg !207
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !209

if.then35:                                        ; preds = %if.end32
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !210
  br label %if.end45, !dbg !212

if.else:                                          ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !219, metadata !DIExpression()), !dbg !220
  %23 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !221
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #8, !dbg !223
  %cmp37 = icmp eq i32 %call36, 1, !dbg !224
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !225

if.then39:                                        ; preds = %if.else
  %24 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !226
  %cmp40 = icmp slt i32 %24, 10000, !dbg !229
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !230

if.then42:                                        ; preds = %if.then39
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !231
  %25 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !233
  %26 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !234
  call void %25(i32 %26), !dbg !233
  %27 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !235
  call void @printIntLine(i32 %27), !dbg !236
  br label %if.end43, !dbg !237

if.end43:                                         ; preds = %if.then42, %if.then39
  br label %if.end44, !dbg !238

if.end44:                                         ; preds = %if.end43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then35
  br label %goodB2G1_label_, !dbg !239

goodB2G1_label_:                                  ; preds = %if.end45
  call void @llvm.dbg.label(metadata !240), !dbg !241
  ret void, !dbg !242
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

declare dso_local i32 @staticReturnsFalse(...) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08205CWE606_Unchecked_Loop_Condition__char_connect_socket_08252_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_937/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_08205CWE606_Unchecked_Loop_Condition__char_connect_socket_08252_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !64, file: !1, line: 5, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 5, column: 8, scope: !64)
!81 = !DILocation(line: 6, column: 22, scope: !64)
!82 = !DILocation(line: 6, column: 20, scope: !64)
!83 = !DILocation(line: 7, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !64, file: !1, line: 7, column: 7)
!85 = !DILocation(line: 7, column: 7, scope: !64)
!86 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !87, file: !1, line: 10, type: !70)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 9, column: 5)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 8, column: 3)
!89 = !DILocation(line: 10, column: 11, scope: !87)
!90 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !87, file: !1, line: 11, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !92)
!92 = !{!93, !94, !100, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !91, file: !17, line: 240, baseType: !51, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !91, file: !17, line: 241, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !97, line: 25, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !99, line: 40, baseType: !53)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !91, file: !17, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !17, line: 33, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 26, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !5)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !91, file: !17, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 11, column: 26, scope: !87)
!113 = !DILocalVariable(name: "_goodB2G1_replace_0", scope: !87, file: !1, line: 12, type: !59)
!114 = !DILocation(line: 12, column: 13, scope: !87)
!115 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !87, file: !1, line: 13, type: !70)
!116 = !DILocation(line: 13, column: 11, scope: !87)
!117 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !87, file: !1, line: 14, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocation(line: 14, column: 14, scope: !87)
!122 = !DILocation(line: 14, column: 43, scope: !87)
!123 = !DILocation(line: 14, column: 36, scope: !87)
!124 = !DILocation(line: 15, column: 7, scope: !87)
!125 = !DILocation(line: 17, column: 37, scope: !126)
!126 = distinct !DILexicalBlock(scope: !87, file: !1, line: 16, column: 7)
!127 = !DILocation(line: 17, column: 35, scope: !126)
!128 = !DILocation(line: 18, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 18, column: 13)
!130 = !DILocation(line: 18, column: 39, scope: !129)
!131 = !DILocation(line: 18, column: 13, scope: !126)
!132 = !DILocation(line: 20, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 19, column: 9)
!134 = !DILocation(line: 23, column: 9, scope: !126)
!135 = !DILocation(line: 24, column: 29, scope: !126)
!136 = !DILocation(line: 24, column: 40, scope: !126)
!137 = !DILocation(line: 25, column: 47, scope: !126)
!138 = !DILocation(line: 25, column: 29, scope: !126)
!139 = !DILocation(line: 25, column: 38, scope: !126)
!140 = !DILocation(line: 25, column: 45, scope: !126)
!141 = !DILocation(line: 26, column: 40, scope: !126)
!142 = !DILocation(line: 26, column: 29, scope: !126)
!143 = !DILocation(line: 26, column: 38, scope: !126)
!144 = !DILocation(line: 27, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !1, line: 27, column: 13)
!146 = !DILocation(line: 27, column: 48, scope: !145)
!147 = !DILocation(line: 27, column: 13, scope: !145)
!148 = !DILocation(line: 27, column: 121, scope: !145)
!149 = !DILocation(line: 27, column: 13, scope: !126)
!150 = !DILocation(line: 29, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 28, column: 9)
!152 = !DILocation(line: 32, column: 39, scope: !126)
!153 = !DILocation(line: 32, column: 76, scope: !126)
!154 = !DILocation(line: 32, column: 95, scope: !126)
!155 = !DILocation(line: 32, column: 93, scope: !126)
!156 = !DILocation(line: 32, column: 142, scope: !126)
!157 = !DILocation(line: 32, column: 140, scope: !126)
!158 = !DILocation(line: 32, column: 163, scope: !126)
!159 = !DILocation(line: 32, column: 132, scope: !126)
!160 = !DILocation(line: 32, column: 34, scope: !126)
!161 = !DILocation(line: 32, column: 32, scope: !126)
!162 = !DILocation(line: 33, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !126, file: !1, line: 33, column: 13)
!164 = !DILocation(line: 33, column: 37, scope: !163)
!165 = !DILocation(line: 33, column: 46, scope: !163)
!166 = !DILocation(line: 33, column: 50, scope: !163)
!167 = !DILocation(line: 33, column: 73, scope: !163)
!168 = !DILocation(line: 33, column: 13, scope: !126)
!169 = !DILocation(line: 35, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 34, column: 9)
!171 = !DILocation(line: 38, column: 9, scope: !126)
!172 = !DILocation(line: 38, column: 26, scope: !126)
!173 = !DILocation(line: 38, column: 49, scope: !126)
!174 = !DILocation(line: 38, column: 72, scope: !126)
!175 = !DILocation(line: 38, column: 46, scope: !126)
!176 = !DILocation(line: 38, column: 91, scope: !126)
!177 = !DILocation(line: 39, column: 38, scope: !126)
!178 = !DILocation(line: 39, column: 31, scope: !126)
!179 = !DILocation(line: 39, column: 29, scope: !126)
!180 = !DILocation(line: 40, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !126, file: !1, line: 40, column: 13)
!182 = !DILocation(line: 40, column: 13, scope: !126)
!183 = !DILocation(line: 42, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 41, column: 9)
!185 = !DILocation(line: 42, column: 32, scope: !184)
!186 = !DILocation(line: 43, column: 9, scope: !184)
!187 = !DILocation(line: 45, column: 38, scope: !126)
!188 = !DILocation(line: 45, column: 31, scope: !126)
!189 = !DILocation(line: 45, column: 29, scope: !126)
!190 = !DILocation(line: 46, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !126, file: !1, line: 46, column: 13)
!192 = !DILocation(line: 46, column: 13, scope: !126)
!193 = !DILocation(line: 48, column: 12, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 47, column: 9)
!195 = !DILocation(line: 48, column: 32, scope: !194)
!196 = !DILocation(line: 49, column: 9, scope: !194)
!197 = !DILocation(line: 51, column: 7, scope: !126)
!198 = !DILocation(line: 53, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !87, file: !1, line: 53, column: 11)
!200 = !DILocation(line: 53, column: 37, scope: !199)
!201 = !DILocation(line: 53, column: 11, scope: !87)
!202 = !DILocation(line: 55, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 54, column: 7)
!204 = !DILocation(line: 55, column: 9, scope: !203)
!205 = !DILocation(line: 56, column: 7, scope: !203)
!206 = !DILocation(line: 59, column: 3, scope: !88)
!207 = !DILocation(line: 61, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !64, file: !1, line: 61, column: 7)
!209 = !DILocation(line: 61, column: 7, scope: !64)
!210 = !DILocation(line: 63, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 62, column: 3)
!212 = !DILocation(line: 64, column: 3, scope: !211)
!213 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !214, file: !1, line: 68, type: !70)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 67, column: 5)
!215 = distinct !DILexicalBlock(scope: !208, file: !1, line: 66, column: 3)
!216 = !DILocation(line: 68, column: 11, scope: !214)
!217 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !214, file: !1, line: 69, type: !70)
!218 = !DILocation(line: 69, column: 11, scope: !214)
!219 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !214, file: !1, line: 70, type: !70)
!220 = !DILocation(line: 70, column: 11, scope: !214)
!221 = !DILocation(line: 71, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !1, line: 71, column: 11)
!223 = !DILocation(line: 71, column: 11, scope: !222)
!224 = !DILocation(line: 71, column: 58, scope: !222)
!225 = !DILocation(line: 71, column: 11, scope: !214)
!226 = !DILocation(line: 73, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 73, column: 13)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 72, column: 7)
!229 = !DILocation(line: 73, column: 27, scope: !227)
!230 = !DILocation(line: 73, column: 13, scope: !228)
!231 = !DILocation(line: 75, column: 35, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 74, column: 9)
!233 = !DILocation(line: 76, column: 11, scope: !232)
!234 = !DILocation(line: 76, column: 18, scope: !232)
!235 = !DILocation(line: 77, column: 24, scope: !232)
!236 = !DILocation(line: 77, column: 11, scope: !232)
!237 = !DILocation(line: 78, column: 9, scope: !232)
!238 = !DILocation(line: 80, column: 7, scope: !228)
!239 = !DILocation(line: 61, column: 26, scope: !208)
!240 = !DILabel(scope: !64, name: "goodB2G1_label_", file: !1, line: 85)
!241 = !DILocation(line: 85, column: 3, scope: !64)
!242 = !DILocation(line: 90, column: 1, scope: !64)
