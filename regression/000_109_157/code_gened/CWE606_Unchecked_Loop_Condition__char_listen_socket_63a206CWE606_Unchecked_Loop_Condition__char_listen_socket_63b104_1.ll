; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_63a206CWE606_Unchecked_Loop_Condition__char_listen_socket_63b104_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a206CWE606_Unchecked_Loop_Condition__char_listen_socket_63b104_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_63a206CWE606_Unchecked_Loop_Condition__char_listen_socket_63b104_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !69 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_listenSocket_0 = alloca i32, align 4
  %_goodB2G_acceptSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !81, metadata !DIExpression()), !dbg !85
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !85
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !86
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !91, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_listenSocket_0, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_acceptSocket_0, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 -1, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !115, metadata !DIExpression()), !dbg !119
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !120
  %call = call i64 @strlen(i8* %1) #7, !dbg !121
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !119
  br label %do.body, !dbg !122

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !123
  store i32 %call1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !125
  %2 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !126
  %cmp = icmp eq i32 %2, -1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !130

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !132
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !133
  store i16 2, i16* %sin_family, align 4, !dbg !134
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !135
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !136
  store i32 0, i32* %s_addr, align 4, !dbg !137
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !138
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !139
  store i16 %call2, i16* %sin_port, align 2, !dbg !140
  %4 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !141
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !143
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #9, !dbg !144
  %cmp4 = icmp eq i32 %call3, -1, !dbg !145
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !146

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !147

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !149
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %6, i32 5), !dbg !151
  %cmp8 = icmp eq i32 %call7, -1, !dbg !152
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !153

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !154

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !156
  %call11 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %7, i32 0, i32 0), !dbg !157
  store i32 %call11, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !158
  %8 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !159
  %cmp12 = icmp eq i32 %8, -1, !dbg !161
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !162

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !163

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !165
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !166
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !168
  %12 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !169
  %sub = sub i64 100, %12, !dbg !170
  %sub15 = sub i64 %sub, 1, !dbg !171
  %mul = mul i64 1, %sub15, !dbg !172
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !173
  %conv = trunc i64 %call16 to i32, !dbg !173
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !174
  %13 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !175
  %cmp17 = icmp eq i32 %13, -1, !dbg !177
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !178

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !179
  %cmp19 = icmp eq i32 %14, 0, !dbg !180
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !181

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !182

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !184
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !185
  %17 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !186
  %conv23 = sext i32 %17 to i64, !dbg !186
  %div = udiv i64 %conv23, 1, !dbg !187
  %add = add i64 %16, %div, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !184
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !190
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !191
  store i8* %call24, i8** %_goodB2G_replace_0, align 8, !dbg !192
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !193
  %tobool = icmp ne i8* %19, null, !dbg !193
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !195

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !196
  store i8 0, i8* %20, align 1, !dbg !198
  br label %if.end26, !dbg !199

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !200
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !201
  store i8* %call27, i8** %_goodB2G_replace_0, align 8, !dbg !202
  %22 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !203
  %tobool28 = icmp ne i8* %22, null, !dbg !203
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !205

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !206
  store i8 0, i8* %23, align 1, !dbg !208
  br label %if.end30, !dbg !209

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !210

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !211
  %cmp31 = icmp ne i32 %24, -1, !dbg !213
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !214

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !215
  %call34 = call i32 @close(i32 %25), !dbg !217
  br label %if.end35, !dbg !218

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !219
  %cmp36 = icmp ne i32 %26, -1, !dbg !221
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !222

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !223
  %call39 = call i32 @close(i32 %27), !dbg !225
  br label %if.end40, !dbg !226

if.end40:                                         ; preds = %if.then38, %if.end35
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_data_0, metadata !227, metadata !DIExpression()), !dbg !229
  %28 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !230
  store i8* %28, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_data_0, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_i_0, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_intVariable_0, metadata !236, metadata !DIExpression()), !dbg !237
  %29 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_data_0, align 8, !dbg !238
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0) #9, !dbg !240
  %cmp42 = icmp eq i32 %call41, 1, !dbg !241
  br i1 %cmp42, label %if.then44, label %if.end49, !dbg !242

if.then44:                                        ; preds = %if.end40
  %30 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0, align 4, !dbg !243
  %cmp45 = icmp slt i32 %30, 10000, !dbg !246
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !247

if.then47:                                        ; preds = %if.then44
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_intVariable_0, align 4, !dbg !248
  %31 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !250
  %32 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0, align 4, !dbg !251
  call void %31(i32 %32), !dbg !250
  %33 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_intVariable_0, align 4, !dbg !252
  call void @printIntLine(i32 %33), !dbg !253
  br label %if.end48, !dbg !254

if.end48:                                         ; preds = %if.then47, %if.then44
  br label %if.end49, !dbg !255

if.end49:                                         ; preds = %if.end48, %if.end40
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_label_, !dbg !256

CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_label_: ; preds = %if.end49
  call void @llvm.dbg.label(metadata !257), !dbg !258
  br label %goodB2G_label_, !dbg !259

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !260), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #6

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen(...) #4

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept(...) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a206CWE606_Unchecked_Loop_Condition__char_listen_socket_63b104_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_157/code_gened")
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
!45 = !{!46, !51, !64}
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
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 12.0.0"}
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63a206CWE606_Unchecked_Loop_Condition__char_listen_socket_63b104_1", scope: !1, file: !1, line: 3, type: !70, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !69, file: !1, line: 3, type: !64)
!78 = !DILocation(line: 3, column: 131, scope: !69)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !69, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 155, scope: !69)
!81 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !69, file: !1, line: 5, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 100)
!85 = !DILocation(line: 5, column: 8, scope: !69)
!86 = !DILocation(line: 6, column: 21, scope: !69)
!87 = !DILocation(line: 6, column: 19, scope: !69)
!88 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !89, file: !1, line: 8, type: !75)
!89 = distinct !DILexicalBlock(scope: !69, file: !1, line: 7, column: 3)
!90 = !DILocation(line: 8, column: 9, scope: !89)
!91 = !DILocalVariable(name: "_goodB2G_service_0", scope: !89, file: !1, line: 9, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !99, !103}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !56, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !17, line: 33, baseType: !46, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !104, size: 64, offset: 64)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !106)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DILocation(line: 9, column: 24, scope: !89)
!109 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !89, file: !1, line: 10, type: !64)
!110 = !DILocation(line: 10, column: 11, scope: !89)
!111 = !DILocalVariable(name: "_goodB2G_listenSocket_0", scope: !89, file: !1, line: 11, type: !75)
!112 = !DILocation(line: 11, column: 9, scope: !89)
!113 = !DILocalVariable(name: "_goodB2G_acceptSocket_0", scope: !89, file: !1, line: 12, type: !75)
!114 = !DILocation(line: 12, column: 9, scope: !89)
!115 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !89, file: !1, line: 13, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DILocation(line: 13, column: 12, scope: !89)
!120 = !DILocation(line: 13, column: 40, scope: !89)
!121 = !DILocation(line: 13, column: 33, scope: !89)
!122 = !DILocation(line: 14, column: 5, scope: !89)
!123 = !DILocation(line: 16, column: 33, scope: !124)
!124 = distinct !DILexicalBlock(scope: !89, file: !1, line: 15, column: 5)
!125 = !DILocation(line: 16, column: 31, scope: !124)
!126 = !DILocation(line: 17, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 17, column: 11)
!128 = !DILocation(line: 17, column: 35, scope: !127)
!129 = !DILocation(line: 17, column: 11, scope: !124)
!130 = !DILocation(line: 19, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 18, column: 7)
!132 = !DILocation(line: 22, column: 7, scope: !124)
!133 = !DILocation(line: 23, column: 26, scope: !124)
!134 = !DILocation(line: 23, column: 37, scope: !124)
!135 = !DILocation(line: 24, column: 26, scope: !124)
!136 = !DILocation(line: 24, column: 35, scope: !124)
!137 = !DILocation(line: 24, column: 42, scope: !124)
!138 = !DILocation(line: 25, column: 37, scope: !124)
!139 = !DILocation(line: 25, column: 26, scope: !124)
!140 = !DILocation(line: 25, column: 35, scope: !124)
!141 = !DILocation(line: 26, column: 16, scope: !142)
!142 = distinct !DILexicalBlock(scope: !124, file: !1, line: 26, column: 11)
!143 = !DILocation(line: 26, column: 41, scope: !142)
!144 = !DILocation(line: 26, column: 11, scope: !142)
!145 = !DILocation(line: 26, column: 112, scope: !142)
!146 = !DILocation(line: 26, column: 11, scope: !124)
!147 = !DILocation(line: 28, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 27, column: 7)
!149 = !DILocation(line: 31, column: 66, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !1, line: 31, column: 11)
!151 = !DILocation(line: 31, column: 11, scope: !150)
!152 = !DILocation(line: 31, column: 94, scope: !150)
!153 = !DILocation(line: 31, column: 11, scope: !124)
!154 = !DILocation(line: 33, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 32, column: 7)
!156 = !DILocation(line: 36, column: 88, scope: !124)
!157 = !DILocation(line: 36, column: 33, scope: !124)
!158 = !DILocation(line: 36, column: 31, scope: !124)
!159 = !DILocation(line: 37, column: 11, scope: !160)
!160 = distinct !DILexicalBlock(scope: !124, file: !1, line: 37, column: 11)
!161 = !DILocation(line: 37, column: 35, scope: !160)
!162 = !DILocation(line: 37, column: 11, scope: !124)
!163 = !DILocation(line: 39, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 38, column: 7)
!165 = !DILocation(line: 42, column: 36, scope: !124)
!166 = !DILocation(line: 42, column: 71, scope: !124)
!167 = !DILocation(line: 42, column: 89, scope: !124)
!168 = !DILocation(line: 42, column: 87, scope: !124)
!169 = !DILocation(line: 42, column: 135, scope: !124)
!170 = !DILocation(line: 42, column: 133, scope: !124)
!171 = !DILocation(line: 42, column: 155, scope: !124)
!172 = !DILocation(line: 42, column: 125, scope: !124)
!173 = !DILocation(line: 42, column: 31, scope: !124)
!174 = !DILocation(line: 42, column: 29, scope: !124)
!175 = !DILocation(line: 43, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !124, file: !1, line: 43, column: 11)
!177 = !DILocation(line: 43, column: 34, scope: !176)
!178 = !DILocation(line: 43, column: 43, scope: !176)
!179 = !DILocation(line: 43, column: 47, scope: !176)
!180 = !DILocation(line: 43, column: 69, scope: !176)
!181 = !DILocation(line: 43, column: 11, scope: !124)
!182 = !DILocation(line: 45, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 44, column: 7)
!184 = !DILocation(line: 48, column: 7, scope: !124)
!185 = !DILocation(line: 48, column: 23, scope: !124)
!186 = !DILocation(line: 48, column: 45, scope: !124)
!187 = !DILocation(line: 48, column: 67, scope: !124)
!188 = !DILocation(line: 48, column: 42, scope: !124)
!189 = !DILocation(line: 48, column: 86, scope: !124)
!190 = !DILocation(line: 49, column: 35, scope: !124)
!191 = !DILocation(line: 49, column: 28, scope: !124)
!192 = !DILocation(line: 49, column: 26, scope: !124)
!193 = !DILocation(line: 50, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !124, file: !1, line: 50, column: 11)
!195 = !DILocation(line: 50, column: 11, scope: !124)
!196 = !DILocation(line: 52, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 51, column: 7)
!198 = !DILocation(line: 52, column: 29, scope: !197)
!199 = !DILocation(line: 53, column: 7, scope: !197)
!200 = !DILocation(line: 55, column: 35, scope: !124)
!201 = !DILocation(line: 55, column: 28, scope: !124)
!202 = !DILocation(line: 55, column: 26, scope: !124)
!203 = !DILocation(line: 56, column: 11, scope: !204)
!204 = distinct !DILexicalBlock(scope: !124, file: !1, line: 56, column: 11)
!205 = !DILocation(line: 56, column: 11, scope: !124)
!206 = !DILocation(line: 58, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 57, column: 7)
!208 = !DILocation(line: 58, column: 29, scope: !207)
!209 = !DILocation(line: 59, column: 7, scope: !207)
!210 = !DILocation(line: 61, column: 5, scope: !124)
!211 = !DILocation(line: 63, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !89, file: !1, line: 63, column: 9)
!213 = !DILocation(line: 63, column: 33, scope: !212)
!214 = !DILocation(line: 63, column: 9, scope: !89)
!215 = !DILocation(line: 65, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 64, column: 5)
!217 = !DILocation(line: 65, column: 7, scope: !216)
!218 = !DILocation(line: 66, column: 5, scope: !216)
!219 = !DILocation(line: 68, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !89, file: !1, line: 68, column: 9)
!221 = !DILocation(line: 68, column: 33, scope: !220)
!222 = !DILocation(line: 68, column: 9, scope: !89)
!223 = !DILocation(line: 70, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 69, column: 5)
!225 = !DILocation(line: 70, column: 7, scope: !224)
!226 = !DILocation(line: 71, column: 5, scope: !224)
!227 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_data_0", scope: !228, file: !1, line: 75, type: !64)
!228 = distinct !DILexicalBlock(scope: !69, file: !1, line: 74, column: 3)
!229 = !DILocation(line: 75, column: 11, scope: !228)
!230 = !DILocation(line: 75, column: 89, scope: !228)
!231 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_i_0", scope: !232, file: !1, line: 77, type: !75)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 76, column: 5)
!233 = !DILocation(line: 77, column: 11, scope: !232)
!234 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_n_0", scope: !232, file: !1, line: 78, type: !75)
!235 = !DILocation(line: 78, column: 11, scope: !232)
!236 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_intVariable_0", scope: !232, file: !1, line: 79, type: !75)
!237 = !DILocation(line: 79, column: 11, scope: !232)
!238 = !DILocation(line: 80, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !1, line: 80, column: 11)
!240 = !DILocation(line: 80, column: 11, scope: !239)
!241 = !DILocation(line: 80, column: 176, scope: !239)
!242 = !DILocation(line: 80, column: 11, scope: !232)
!243 = !DILocation(line: 82, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 82, column: 13)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 81, column: 7)
!246 = !DILocation(line: 82, column: 86, scope: !244)
!247 = !DILocation(line: 82, column: 13, scope: !245)
!248 = !DILocation(line: 84, column: 94, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !1, line: 83, column: 9)
!250 = !DILocation(line: 85, column: 11, scope: !249)
!251 = !DILocation(line: 85, column: 18, scope: !249)
!252 = !DILocation(line: 86, column: 24, scope: !249)
!253 = !DILocation(line: 86, column: 11, scope: !249)
!254 = !DILocation(line: 87, column: 9, scope: !249)
!255 = !DILocation(line: 89, column: 7, scope: !245)
!256 = !DILocation(line: 91, column: 5, scope: !232)
!257 = !DILabel(scope: !228, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_63b_goodB2GSink_label_", file: !1, line: 92)
!258 = !DILocation(line: 92, column: 5, scope: !228)
!259 = !DILocation(line: 97, column: 3, scope: !228)
!260 = !DILabel(scope: !69, name: "goodB2G_label_", file: !1, line: 98)
!261 = !DILocation(line: 98, column: 3, scope: !69)
!262 = !DILocation(line: 103, column: 1, scope: !69)
