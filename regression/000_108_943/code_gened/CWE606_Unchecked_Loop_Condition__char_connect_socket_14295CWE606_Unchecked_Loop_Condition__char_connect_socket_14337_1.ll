; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_replace_0 = alloca i8*, align 8
  %_goodB2G2_connectSocket_0 = alloca i32, align 4
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !82
  %1 = load i32, i32* @globalFive, align 4, !dbg !83
  %cmp = icmp eq i32 %1, 5, !dbg !85
  br i1 %cmp, label %if.then, label %if.end31, !dbg !86

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_connectSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !118, metadata !DIExpression()), !dbg !122
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !123
  %call = call i64 @strlen(i8* %2) #7, !dbg !124
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !126
  store i32 %call1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !128
  %3 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !129
  %cmp2 = icmp eq i32 %3, -1, !dbg !131
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !132

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %4 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call4, i32* %s_addr, align 4, !dbg !141
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !143
  store i16 %call5, i16* %sin_port, align 2, !dbg !144
  %5 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !145
  %6 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !147
  %call6 = call i32 @connect(i32 %5, %struct.sockaddr* %6, i32 16), !dbg !148
  %cmp7 = icmp eq i32 %call6, -1, !dbg !149
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !150

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end9:                                          ; preds = %if.end
  %7 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !153
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !154
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !156
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !157
  %sub = sub i64 100, %10, !dbg !158
  %sub10 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub10, !dbg !160
  %call11 = call i64 @recv(i32 %7, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call11 to i32, !dbg !161
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !162
  %11 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !163
  %cmp12 = icmp eq i32 %11, -1, !dbg !165
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !167
  %cmp14 = icmp eq i32 %12, 0, !dbg !168
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !169

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !170

if.end17:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !172
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !173
  %15 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !174
  %conv18 = sext i32 %15 to i64, !dbg !174
  %div = udiv i64 %conv18, 1, !dbg !175
  %add = add i64 %14, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !178
  %call19 = call i8* @strchr(i8* %16, i32 13) #7, !dbg !179
  store i8* %call19, i8** %_goodB2G2_replace_0, align 8, !dbg !180
  %17 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !181
  %tobool = icmp ne i8* %17, null, !dbg !181
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !183

if.then20:                                        ; preds = %if.end17
  %18 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !184
  store i8 0, i8* %18, align 1, !dbg !186
  br label %if.end21, !dbg !187

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !188
  %call22 = call i8* @strchr(i8* %19, i32 10) #7, !dbg !189
  store i8* %call22, i8** %_goodB2G2_replace_0, align 8, !dbg !190
  %20 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !191
  %tobool23 = icmp ne i8* %20, null, !dbg !191
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !193

if.then24:                                        ; preds = %if.end21
  %21 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !194
  store i8 0, i8* %21, align 1, !dbg !196
  br label %if.end25, !dbg !197

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end25, %if.then16, %if.then8, %if.then3
  %22 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !199
  %cmp26 = icmp ne i32 %22, -1, !dbg !201
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !202

if.then28:                                        ; preds = %do.end
  %23 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !203
  %call29 = call i32 @close(i32 %23), !dbg !205
  br label %if.end30, !dbg !206

if.end30:                                         ; preds = %if.then28, %do.end
  br label %if.end31, !dbg !207

if.end31:                                         ; preds = %if.end30, %entry
  %24 = load i32, i32* @globalFive, align 4, !dbg !208
  %cmp32 = icmp eq i32 %24, 5, !dbg !210
  br i1 %cmp32, label %if.then34, label %if.end44, !dbg !211

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !212, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !218, metadata !DIExpression()), !dbg !219
  %25 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !220
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #8, !dbg !222
  %cmp36 = icmp eq i32 %call35, 1, !dbg !223
  br i1 %cmp36, label %if.then38, label %if.end43, !dbg !224

if.then38:                                        ; preds = %if.then34
  %26 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !225
  %cmp39 = icmp slt i32 %26, 10000, !dbg !228
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !229

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !230
  %27 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !232
  %28 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !233
  call void %27(i32 %28), !dbg !232
  %29 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !234
  call void @printIntLine(i32 %29), !dbg !235
  br label %if.end42, !dbg !236

if.end42:                                         ; preds = %if.then41, %if.then38
  br label %if.end43, !dbg !237

if.end43:                                         ; preds = %if.end42, %if.then34
  br label %if.end44, !dbg !238

if.end44:                                         ; preds = %if.end43, %if.end31
  br label %goodB2G2_label_, !dbg !239

goodB2G2_label_:                                  ; preds = %if.end44
  call void @llvm.dbg.label(metadata !240), !dbg !241
  ret void, !dbg !242
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_943/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_14295CWE606_Unchecked_Loop_Condition__char_connect_socket_14337_1", scope: !1, file: !1, line: 4, type: !65, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !64, file: !1, line: 4, type: !59)
!73 = !DILocation(line: 4, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 4, type: !67)
!75 = !DILocation(line: 4, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !64, file: !1, line: 6, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 6, column: 8, scope: !64)
!81 = !DILocation(line: 7, column: 22, scope: !64)
!82 = !DILocation(line: 7, column: 20, scope: !64)
!83 = !DILocation(line: 8, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !64, file: !1, line: 8, column: 7)
!85 = !DILocation(line: 8, column: 18, scope: !84)
!86 = !DILocation(line: 8, column: 7, scope: !64)
!87 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !88, file: !1, line: 11, type: !70)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 10, column: 5)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 9, column: 3)
!90 = !DILocation(line: 11, column: 11, scope: !88)
!91 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !88, file: !1, line: 12, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !101, !108}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !51, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100, line: 40, baseType: !53)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !17, line: 33, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !109, size: 64, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !111)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DILocation(line: 12, column: 26, scope: !88)
!114 = !DILocalVariable(name: "_goodB2G2_replace_0", scope: !88, file: !1, line: 13, type: !59)
!115 = !DILocation(line: 13, column: 13, scope: !88)
!116 = !DILocalVariable(name: "_goodB2G2_connectSocket_0", scope: !88, file: !1, line: 14, type: !70)
!117 = !DILocation(line: 14, column: 11, scope: !88)
!118 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !88, file: !1, line: 15, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 15, column: 14, scope: !88)
!123 = !DILocation(line: 15, column: 43, scope: !88)
!124 = !DILocation(line: 15, column: 36, scope: !88)
!125 = !DILocation(line: 16, column: 7, scope: !88)
!126 = !DILocation(line: 18, column: 37, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 17, column: 7)
!128 = !DILocation(line: 18, column: 35, scope: !127)
!129 = !DILocation(line: 19, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 19, column: 13)
!131 = !DILocation(line: 19, column: 39, scope: !130)
!132 = !DILocation(line: 19, column: 13, scope: !127)
!133 = !DILocation(line: 21, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 20, column: 9)
!135 = !DILocation(line: 24, column: 9, scope: !127)
!136 = !DILocation(line: 25, column: 29, scope: !127)
!137 = !DILocation(line: 25, column: 40, scope: !127)
!138 = !DILocation(line: 26, column: 47, scope: !127)
!139 = !DILocation(line: 26, column: 29, scope: !127)
!140 = !DILocation(line: 26, column: 38, scope: !127)
!141 = !DILocation(line: 26, column: 45, scope: !127)
!142 = !DILocation(line: 27, column: 40, scope: !127)
!143 = !DILocation(line: 27, column: 29, scope: !127)
!144 = !DILocation(line: 27, column: 38, scope: !127)
!145 = !DILocation(line: 28, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 28, column: 13)
!147 = !DILocation(line: 28, column: 48, scope: !146)
!148 = !DILocation(line: 28, column: 13, scope: !146)
!149 = !DILocation(line: 28, column: 121, scope: !146)
!150 = !DILocation(line: 28, column: 13, scope: !127)
!151 = !DILocation(line: 30, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 29, column: 9)
!153 = !DILocation(line: 33, column: 39, scope: !127)
!154 = !DILocation(line: 33, column: 76, scope: !127)
!155 = !DILocation(line: 33, column: 95, scope: !127)
!156 = !DILocation(line: 33, column: 93, scope: !127)
!157 = !DILocation(line: 33, column: 142, scope: !127)
!158 = !DILocation(line: 33, column: 140, scope: !127)
!159 = !DILocation(line: 33, column: 163, scope: !127)
!160 = !DILocation(line: 33, column: 132, scope: !127)
!161 = !DILocation(line: 33, column: 34, scope: !127)
!162 = !DILocation(line: 33, column: 32, scope: !127)
!163 = !DILocation(line: 34, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 34, column: 13)
!165 = !DILocation(line: 34, column: 37, scope: !164)
!166 = !DILocation(line: 34, column: 46, scope: !164)
!167 = !DILocation(line: 34, column: 50, scope: !164)
!168 = !DILocation(line: 34, column: 73, scope: !164)
!169 = !DILocation(line: 34, column: 13, scope: !127)
!170 = !DILocation(line: 36, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 35, column: 9)
!172 = !DILocation(line: 39, column: 9, scope: !127)
!173 = !DILocation(line: 39, column: 26, scope: !127)
!174 = !DILocation(line: 39, column: 49, scope: !127)
!175 = !DILocation(line: 39, column: 72, scope: !127)
!176 = !DILocation(line: 39, column: 46, scope: !127)
!177 = !DILocation(line: 39, column: 91, scope: !127)
!178 = !DILocation(line: 40, column: 38, scope: !127)
!179 = !DILocation(line: 40, column: 31, scope: !127)
!180 = !DILocation(line: 40, column: 29, scope: !127)
!181 = !DILocation(line: 41, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 41, column: 13)
!183 = !DILocation(line: 41, column: 13, scope: !127)
!184 = !DILocation(line: 43, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 42, column: 9)
!186 = !DILocation(line: 43, column: 32, scope: !185)
!187 = !DILocation(line: 44, column: 9, scope: !185)
!188 = !DILocation(line: 46, column: 38, scope: !127)
!189 = !DILocation(line: 46, column: 31, scope: !127)
!190 = !DILocation(line: 46, column: 29, scope: !127)
!191 = !DILocation(line: 47, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 47, column: 13)
!193 = !DILocation(line: 47, column: 13, scope: !127)
!194 = !DILocation(line: 49, column: 12, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 48, column: 9)
!196 = !DILocation(line: 49, column: 32, scope: !195)
!197 = !DILocation(line: 50, column: 9, scope: !195)
!198 = !DILocation(line: 52, column: 7, scope: !127)
!199 = !DILocation(line: 54, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 54, column: 11)
!201 = !DILocation(line: 54, column: 37, scope: !200)
!202 = !DILocation(line: 54, column: 11, scope: !88)
!203 = !DILocation(line: 56, column: 15, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 55, column: 7)
!205 = !DILocation(line: 56, column: 9, scope: !204)
!206 = !DILocation(line: 57, column: 7, scope: !204)
!207 = !DILocation(line: 60, column: 3, scope: !89)
!208 = !DILocation(line: 62, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !64, file: !1, line: 62, column: 7)
!210 = !DILocation(line: 62, column: 18, scope: !209)
!211 = !DILocation(line: 62, column: 7, scope: !64)
!212 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !213, file: !1, line: 65, type: !70)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 64, column: 5)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 3)
!215 = !DILocation(line: 65, column: 11, scope: !213)
!216 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !213, file: !1, line: 66, type: !70)
!217 = !DILocation(line: 66, column: 11, scope: !213)
!218 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !213, file: !1, line: 67, type: !70)
!219 = !DILocation(line: 67, column: 11, scope: !213)
!220 = !DILocation(line: 68, column: 18, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !1, line: 68, column: 11)
!222 = !DILocation(line: 68, column: 11, scope: !221)
!223 = !DILocation(line: 68, column: 58, scope: !221)
!224 = !DILocation(line: 68, column: 11, scope: !213)
!225 = !DILocation(line: 70, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 70, column: 13)
!227 = distinct !DILexicalBlock(scope: !221, file: !1, line: 69, column: 7)
!228 = !DILocation(line: 70, column: 27, scope: !226)
!229 = !DILocation(line: 70, column: 13, scope: !227)
!230 = !DILocation(line: 72, column: 35, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 71, column: 9)
!232 = !DILocation(line: 73, column: 11, scope: !231)
!233 = !DILocation(line: 73, column: 18, scope: !231)
!234 = !DILocation(line: 74, column: 24, scope: !231)
!235 = !DILocation(line: 74, column: 11, scope: !231)
!236 = !DILocation(line: 75, column: 9, scope: !231)
!237 = !DILocation(line: 77, column: 7, scope: !227)
!238 = !DILocation(line: 80, column: 3, scope: !214)
!239 = !DILocation(line: 62, column: 21, scope: !209)
!240 = !DILabel(scope: !64, name: "goodB2G2_label_", file: !1, line: 82)
!241 = !DILocation(line: 82, column: 3, scope: !64)
!242 = !DILocation(line: 87, column: 1, scope: !64)
