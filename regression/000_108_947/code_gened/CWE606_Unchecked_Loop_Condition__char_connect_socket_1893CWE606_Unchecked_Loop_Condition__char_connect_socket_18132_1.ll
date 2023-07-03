; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1(i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !80
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataBuffer_0 to i8*, !dbg !80
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !80
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataBuffer_0, i64 0, i64 0, !dbg !81
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !82
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_source, !dbg !83

CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_source: ; preds = %entry
  call void @llvm.dbg.label(metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0, metadata !86, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0, metadata !89, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0, metadata !116, metadata !DIExpression()), !dbg !120
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !121
  %call = call i64 @strlen(i8* %1) #7, !dbg !122
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0, align 8, !dbg !120
  br label %do.body, !dbg !123

do.body:                                          ; preds = %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_source
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !124
  store i32 %call1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !126
  %2 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !127
  %cmp = icmp eq i32 %2, -1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !131

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0 to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !133
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0, i32 0, i32 0, !dbg !134
  store i16 2, i16* %sin_family, align 4, !dbg !135
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !136
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0, i32 0, i32 2, !dbg !137
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !138
  store i32 %call2, i32* %s_addr, align 4, !dbg !139
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !140
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0, i32 0, i32 1, !dbg !141
  store i16 %call3, i16* %sin_port, align 2, !dbg !142
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !143
  %5 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0 to %struct.sockaddr*, !dbg !145
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !146
  %cmp5 = icmp eq i32 %call4, -1, !dbg !147
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !148

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !149

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !151
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !152
  %8 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !154
  %9 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0, align 8, !dbg !155
  %sub = sub i64 100, %9, !dbg !156
  %sub8 = sub i64 %sub, 1, !dbg !157
  %mul = mul i64 1, %sub8, !dbg !158
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !159
  %conv = trunc i64 %call9 to i32, !dbg !159
  store i32 %conv, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0, align 4, !dbg !160
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0, align 4, !dbg !161
  %cmp10 = icmp eq i32 %10, -1, !dbg !163
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0, align 4, !dbg !165
  %cmp12 = icmp eq i32 %11, 0, !dbg !166
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !167

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !168

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !170
  %13 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0, align 8, !dbg !171
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0, align 4, !dbg !172
  %conv16 = sext i32 %14 to i64, !dbg !172
  %div = udiv i64 %conv16, 1, !dbg !173
  %add = add i64 %13, %div, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !170
  store i8 0, i8* %arrayidx, align 1, !dbg !175
  %15 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !176
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !177
  store i8* %call17, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !178
  %16 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !179
  %tobool = icmp ne i8* %16, null, !dbg !179
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !181

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !182
  store i8 0, i8* %17, align 1, !dbg !184
  br label %if.end19, !dbg !185

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !186
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !187
  store i8* %call20, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !188
  %19 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !189
  %tobool21 = icmp ne i8* %19, null, !dbg !189
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !191

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0, align 8, !dbg !192
  store i8 0, i8* %20, align 1, !dbg !194
  br label %if.end23, !dbg !195

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !197
  %cmp24 = icmp ne i32 %21, -1, !dbg !199
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !200

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0, align 4, !dbg !201
  %call27 = call i32 @close(i32 %22), !dbg !203
  br label %if.end28, !dbg !204

if.end28:                                         ; preds = %if.then26, %do.end
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_sink, !dbg !205

CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_sink: ; preds = %if.end28
  call void @llvm.dbg.label(metadata !206), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_i_0, metadata !208, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_intVariable_0, metadata !213, metadata !DIExpression()), !dbg !214
  %23 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0.addr, align 8, !dbg !215
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0) #8, !dbg !217
  %cmp30 = icmp eq i32 %call29, 1, !dbg !218
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !219

if.then32:                                        ; preds = %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_sink
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_intVariable_0, align 4, !dbg !220
  %24 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !222
  %25 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0, align 4, !dbg !223
  call void %24(i32 %25), !dbg !222
  %26 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_intVariable_0, align 4, !dbg !224
  call void @printIntLine(i32 %26), !dbg !225
  br label %if.end33, !dbg !226

if.end33:                                         ; preds = %if.then32, %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_sink
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_label_, !dbg !227

CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_label_: ; preds = %if.end33
  call void @llvm.dbg.label(metadata !228), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_947/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1893CWE606_Unchecked_Loop_Condition__char_connect_socket_18132_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 130, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 206, scope: !64)
!76 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataBuffer_0", scope: !64, file: !1, line: 5, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !DILocation(line: 5, column: 8, scope: !64)
!81 = !DILocation(line: 6, column: 73, scope: !64)
!82 = !DILocation(line: 6, column: 71, scope: !64)
!83 = !DILocation(line: 6, column: 3, scope: !64)
!84 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_source", file: !1, line: 7)
!85 = !DILocation(line: 7, column: 3, scope: !64)
!86 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_recvResult_0", scope: !87, file: !1, line: 9, type: !70)
!87 = distinct !DILexicalBlock(scope: !64, file: !1, line: 8, column: 3)
!88 = !DILocation(line: 9, column: 9, scope: !87)
!89 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_service_0", scope: !87, file: !1, line: 10, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !91)
!91 = !{!92, !93, !99, !106}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !90, file: !17, line: 240, baseType: !51, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !90, file: !17, line: 241, baseType: !94, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 25, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 40, baseType: !53)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !90, file: !17, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !17, line: 33, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 26, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !90, file: !17, line: 245, baseType: !107, size: 64, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !109)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DILocation(line: 10, column: 24, scope: !87)
!112 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_replace_0", scope: !87, file: !1, line: 11, type: !59)
!113 = !DILocation(line: 11, column: 11, scope: !87)
!114 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_connectSocket_0", scope: !87, file: !1, line: 12, type: !70)
!115 = !DILocation(line: 12, column: 9, scope: !87)
!116 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_dataLen_0", scope: !87, file: !1, line: 13, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DILocation(line: 13, column: 12, scope: !87)
!121 = !DILocation(line: 13, column: 92, scope: !87)
!122 = !DILocation(line: 13, column: 85, scope: !87)
!123 = !DILocation(line: 14, column: 5, scope: !87)
!124 = !DILocation(line: 16, column: 86, scope: !125)
!125 = distinct !DILexicalBlock(scope: !87, file: !1, line: 15, column: 5)
!126 = !DILocation(line: 16, column: 84, scope: !125)
!127 = !DILocation(line: 17, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 17, column: 11)
!129 = !DILocation(line: 17, column: 88, scope: !128)
!130 = !DILocation(line: 17, column: 11, scope: !125)
!131 = !DILocation(line: 19, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 18, column: 7)
!133 = !DILocation(line: 22, column: 7, scope: !125)
!134 = !DILocation(line: 23, column: 78, scope: !125)
!135 = !DILocation(line: 23, column: 89, scope: !125)
!136 = !DILocation(line: 24, column: 96, scope: !125)
!137 = !DILocation(line: 24, column: 78, scope: !125)
!138 = !DILocation(line: 24, column: 87, scope: !125)
!139 = !DILocation(line: 24, column: 94, scope: !125)
!140 = !DILocation(line: 25, column: 89, scope: !125)
!141 = !DILocation(line: 25, column: 78, scope: !125)
!142 = !DILocation(line: 25, column: 87, scope: !125)
!143 = !DILocation(line: 26, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !125, file: !1, line: 26, column: 11)
!145 = !DILocation(line: 26, column: 97, scope: !144)
!146 = !DILocation(line: 26, column: 11, scope: !144)
!147 = !DILocation(line: 26, column: 272, scope: !144)
!148 = !DILocation(line: 26, column: 11, scope: !125)
!149 = !DILocation(line: 28, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 27, column: 7)
!151 = !DILocation(line: 31, column: 88, scope: !125)
!152 = !DILocation(line: 31, column: 176, scope: !125)
!153 = !DILocation(line: 31, column: 246, scope: !125)
!154 = !DILocation(line: 31, column: 244, scope: !125)
!155 = !DILocation(line: 31, column: 344, scope: !125)
!156 = !DILocation(line: 31, column: 342, scope: !125)
!157 = !DILocation(line: 31, column: 416, scope: !125)
!158 = !DILocation(line: 31, column: 334, scope: !125)
!159 = !DILocation(line: 31, column: 83, scope: !125)
!160 = !DILocation(line: 31, column: 81, scope: !125)
!161 = !DILocation(line: 32, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !125, file: !1, line: 32, column: 11)
!163 = !DILocation(line: 32, column: 86, scope: !162)
!164 = !DILocation(line: 32, column: 95, scope: !162)
!165 = !DILocation(line: 32, column: 99, scope: !162)
!166 = !DILocation(line: 32, column: 173, scope: !162)
!167 = !DILocation(line: 32, column: 11, scope: !125)
!168 = !DILocation(line: 34, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 33, column: 7)
!170 = !DILocation(line: 37, column: 7, scope: !125)
!171 = !DILocation(line: 37, column: 75, scope: !125)
!172 = !DILocation(line: 37, column: 149, scope: !125)
!173 = !DILocation(line: 37, column: 223, scope: !125)
!174 = !DILocation(line: 37, column: 146, scope: !125)
!175 = !DILocation(line: 37, column: 242, scope: !125)
!176 = !DILocation(line: 38, column: 87, scope: !125)
!177 = !DILocation(line: 38, column: 80, scope: !125)
!178 = !DILocation(line: 38, column: 78, scope: !125)
!179 = !DILocation(line: 39, column: 11, scope: !180)
!180 = distinct !DILexicalBlock(scope: !125, file: !1, line: 39, column: 11)
!181 = !DILocation(line: 39, column: 11, scope: !125)
!182 = !DILocation(line: 41, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 40, column: 7)
!184 = !DILocation(line: 41, column: 81, scope: !183)
!185 = !DILocation(line: 42, column: 7, scope: !183)
!186 = !DILocation(line: 44, column: 87, scope: !125)
!187 = !DILocation(line: 44, column: 80, scope: !125)
!188 = !DILocation(line: 44, column: 78, scope: !125)
!189 = !DILocation(line: 45, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !125, file: !1, line: 45, column: 11)
!191 = !DILocation(line: 45, column: 11, scope: !125)
!192 = !DILocation(line: 47, column: 10, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 46, column: 7)
!194 = !DILocation(line: 47, column: 81, scope: !193)
!195 = !DILocation(line: 48, column: 7, scope: !193)
!196 = !DILocation(line: 50, column: 5, scope: !125)
!197 = !DILocation(line: 52, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !87, file: !1, line: 52, column: 9)
!199 = !DILocation(line: 52, column: 86, scope: !198)
!200 = !DILocation(line: 52, column: 9, scope: !87)
!201 = !DILocation(line: 54, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 53, column: 5)
!203 = !DILocation(line: 54, column: 7, scope: !202)
!204 = !DILocation(line: 55, column: 5, scope: !202)
!205 = !DILocation(line: 59, column: 3, scope: !64)
!206 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_sink", file: !1, line: 60)
!207 = !DILocation(line: 60, column: 3, scope: !64)
!208 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_i_0", scope: !209, file: !1, line: 62, type: !70)
!209 = distinct !DILexicalBlock(scope: !64, file: !1, line: 61, column: 3)
!210 = !DILocation(line: 62, column: 9, scope: !209)
!211 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_n_0", scope: !209, file: !1, line: 63, type: !70)
!212 = !DILocation(line: 63, column: 9, scope: !209)
!213 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_intVariable_0", scope: !209, file: !1, line: 64, type: !70)
!214 = !DILocation(line: 64, column: 9, scope: !209)
!215 = !DILocation(line: 65, column: 16, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 65, column: 9)
!217 = !DILocation(line: 65, column: 9, scope: !216)
!218 = !DILocation(line: 65, column: 158, scope: !216)
!219 = !DILocation(line: 65, column: 9, scope: !209)
!220 = !DILocation(line: 67, column: 82, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !1, line: 66, column: 5)
!222 = !DILocation(line: 68, column: 7, scope: !221)
!223 = !DILocation(line: 68, column: 14, scope: !221)
!224 = !DILocation(line: 69, column: 20, scope: !221)
!225 = !DILocation(line: 69, column: 7, scope: !221)
!226 = !DILocation(line: 70, column: 5, scope: !221)
!227 = !DILocation(line: 72, column: 3, scope: !209)
!228 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_bad_label_", file: !1, line: 74)
!229 = !DILocation(line: 74, column: 3, scope: !64)
!230 = !DILocation(line: 79, column: 1, scope: !64)
