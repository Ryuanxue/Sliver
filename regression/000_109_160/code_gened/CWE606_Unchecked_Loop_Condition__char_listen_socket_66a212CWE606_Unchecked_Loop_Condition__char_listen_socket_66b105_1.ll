; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_66a212CWE606_Unchecked_Loop_Condition__char_listen_socket_66b105_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a212CWE606_Unchecked_Loop_Condition__char_listen_socket_66b105_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_66a212CWE606_Unchecked_Loop_Condition__char_listen_socket_66b105_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !69 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataArray_0 = alloca [5 x i8*], align 16
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_listenSocket_0 = alloca i32, align 4
  %_goodB2G_acceptSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [5 x i8*]* %_goodB2G_dataArray_0, metadata !81, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !86, metadata !DIExpression()), !dbg !90
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !90
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !90
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !91
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !93, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !96, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_listenSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_acceptSocket_0, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 -1, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !120, metadata !DIExpression()), !dbg !124
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !125
  %call = call i64 @strlen(i8* %1) #7, !dbg !126
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !124
  br label %do.body, !dbg !127

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !128
  store i32 %call1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !130
  %2 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !131
  %cmp = icmp eq i32 %2, -1, !dbg !133
  br i1 %cmp, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !135

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !137
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !138
  store i16 2, i16* %sin_family, align 4, !dbg !139
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !140
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !141
  store i32 0, i32* %s_addr, align 4, !dbg !142
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !143
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !144
  store i16 %call2, i16* %sin_port, align 2, !dbg !145
  %4 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !146
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !148
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #9, !dbg !149
  %cmp4 = icmp eq i32 %call3, -1, !dbg !150
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !151

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !152

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !154
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %6, i32 5), !dbg !156
  %cmp8 = icmp eq i32 %call7, -1, !dbg !157
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !158

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !159

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !161
  %call11 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %7, i32 0, i32 0), !dbg !162
  store i32 %call11, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !163
  %8 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !164
  %cmp12 = icmp eq i32 %8, -1, !dbg !166
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !167

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !168

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !170
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !171
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !172
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !173
  %12 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !174
  %sub = sub i64 100, %12, !dbg !175
  %sub15 = sub i64 %sub, 1, !dbg !176
  %mul = mul i64 1, %sub15, !dbg !177
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !178
  %conv = trunc i64 %call16 to i32, !dbg !178
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !179
  %13 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !180
  %cmp17 = icmp eq i32 %13, -1, !dbg !182
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !183

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !184
  %cmp19 = icmp eq i32 %14, 0, !dbg !185
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !186

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !187

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !189
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !190
  %17 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !191
  %conv23 = sext i32 %17 to i64, !dbg !191
  %div = udiv i64 %conv23, 1, !dbg !192
  %add = add i64 %16, %div, !dbg !193
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !189
  store i8 0, i8* %arrayidx, align 1, !dbg !194
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !195
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !196
  store i8* %call24, i8** %_goodB2G_replace_0, align 8, !dbg !197
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !198
  %tobool = icmp ne i8* %19, null, !dbg !198
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !200

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !201
  store i8 0, i8* %20, align 1, !dbg !203
  br label %if.end26, !dbg !204

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !205
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !206
  store i8* %call27, i8** %_goodB2G_replace_0, align 8, !dbg !207
  %22 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !208
  %tobool28 = icmp ne i8* %22, null, !dbg !208
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !210

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !211
  store i8 0, i8* %23, align 1, !dbg !213
  br label %if.end30, !dbg !214

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !215

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !216
  %cmp31 = icmp ne i32 %24, -1, !dbg !218
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !219

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !220
  %call34 = call i32 @close(i32 %25), !dbg !222
  br label %if.end35, !dbg !223

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !224
  %cmp36 = icmp ne i32 %26, -1, !dbg !226
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !227

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !228
  %call39 = call i32 @close(i32 %27), !dbg !230
  br label %if.end40, !dbg !231

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !232
  %arrayidx41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !233
  store i8* %28, i8** %arrayidx41, align 16, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_data_0, metadata !235, metadata !DIExpression()), !dbg !237
  %arrayidx42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !238
  %29 = load i8*, i8** %arrayidx42, align 16, !dbg !238
  store i8* %29, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_data_0, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_i_0, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_intVariable_0, metadata !244, metadata !DIExpression()), !dbg !245
  %30 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_data_0, align 8, !dbg !246
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0) #9, !dbg !248
  %cmp44 = icmp eq i32 %call43, 1, !dbg !249
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !250

if.then46:                                        ; preds = %if.end40
  %31 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0, align 4, !dbg !251
  %cmp47 = icmp slt i32 %31, 10000, !dbg !254
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !255

if.then49:                                        ; preds = %if.then46
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_intVariable_0, align 4, !dbg !256
  %32 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !258
  %33 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0, align 4, !dbg !259
  call void %32(i32 %33), !dbg !258
  %34 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_intVariable_0, align 4, !dbg !260
  call void @printIntLine(i32 %34), !dbg !261
  br label %if.end50, !dbg !262

if.end50:                                         ; preds = %if.then49, %if.then46
  br label %if.end51, !dbg !263

if.end51:                                         ; preds = %if.end50, %if.end40
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_label_, !dbg !264

CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_label_: ; preds = %if.end51
  call void @llvm.dbg.label(metadata !265), !dbg !266
  br label %goodB2G_label_, !dbg !267

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !268), !dbg !269
  ret void, !dbg !270
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a212CWE606_Unchecked_Loop_Condition__char_listen_socket_66b105_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_160/code_gened")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66a212CWE606_Unchecked_Loop_Condition__char_listen_socket_66b105_1", scope: !1, file: !1, line: 3, type: !70, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
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
!81 = !DILocalVariable(name: "_goodB2G_dataArray_0", scope: !69, file: !1, line: 5, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 5)
!85 = !DILocation(line: 5, column: 9, scope: !69)
!86 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !69, file: !1, line: 6, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 100)
!90 = !DILocation(line: 6, column: 8, scope: !69)
!91 = !DILocation(line: 7, column: 21, scope: !69)
!92 = !DILocation(line: 7, column: 19, scope: !69)
!93 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !94, file: !1, line: 9, type: !75)
!94 = distinct !DILexicalBlock(scope: !69, file: !1, line: 8, column: 3)
!95 = !DILocation(line: 9, column: 9, scope: !94)
!96 = !DILocalVariable(name: "_goodB2G_service_0", scope: !94, file: !1, line: 10, type: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !98)
!98 = !{!99, !100, !104, !108}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !97, file: !17, line: 240, baseType: !56, size: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !97, file: !17, line: 241, baseType: !101, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !97, file: !17, line: 242, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !105, file: !17, line: 33, baseType: !46, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !97, file: !17, line: 245, baseType: !109, size: 64, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !111)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DILocation(line: 10, column: 24, scope: !94)
!114 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !94, file: !1, line: 11, type: !64)
!115 = !DILocation(line: 11, column: 11, scope: !94)
!116 = !DILocalVariable(name: "_goodB2G_listenSocket_0", scope: !94, file: !1, line: 12, type: !75)
!117 = !DILocation(line: 12, column: 9, scope: !94)
!118 = !DILocalVariable(name: "_goodB2G_acceptSocket_0", scope: !94, file: !1, line: 13, type: !75)
!119 = !DILocation(line: 13, column: 9, scope: !94)
!120 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !94, file: !1, line: 14, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DILocation(line: 14, column: 12, scope: !94)
!125 = !DILocation(line: 14, column: 40, scope: !94)
!126 = !DILocation(line: 14, column: 33, scope: !94)
!127 = !DILocation(line: 15, column: 5, scope: !94)
!128 = !DILocation(line: 17, column: 33, scope: !129)
!129 = distinct !DILexicalBlock(scope: !94, file: !1, line: 16, column: 5)
!130 = !DILocation(line: 17, column: 31, scope: !129)
!131 = !DILocation(line: 18, column: 11, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 18, column: 11)
!133 = !DILocation(line: 18, column: 35, scope: !132)
!134 = !DILocation(line: 18, column: 11, scope: !129)
!135 = !DILocation(line: 20, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 19, column: 7)
!137 = !DILocation(line: 23, column: 7, scope: !129)
!138 = !DILocation(line: 24, column: 26, scope: !129)
!139 = !DILocation(line: 24, column: 37, scope: !129)
!140 = !DILocation(line: 25, column: 26, scope: !129)
!141 = !DILocation(line: 25, column: 35, scope: !129)
!142 = !DILocation(line: 25, column: 42, scope: !129)
!143 = !DILocation(line: 26, column: 37, scope: !129)
!144 = !DILocation(line: 26, column: 26, scope: !129)
!145 = !DILocation(line: 26, column: 35, scope: !129)
!146 = !DILocation(line: 27, column: 16, scope: !147)
!147 = distinct !DILexicalBlock(scope: !129, file: !1, line: 27, column: 11)
!148 = !DILocation(line: 27, column: 41, scope: !147)
!149 = !DILocation(line: 27, column: 11, scope: !147)
!150 = !DILocation(line: 27, column: 112, scope: !147)
!151 = !DILocation(line: 27, column: 11, scope: !129)
!152 = !DILocation(line: 29, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !1, line: 28, column: 7)
!154 = !DILocation(line: 32, column: 66, scope: !155)
!155 = distinct !DILexicalBlock(scope: !129, file: !1, line: 32, column: 11)
!156 = !DILocation(line: 32, column: 11, scope: !155)
!157 = !DILocation(line: 32, column: 94, scope: !155)
!158 = !DILocation(line: 32, column: 11, scope: !129)
!159 = !DILocation(line: 34, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 33, column: 7)
!161 = !DILocation(line: 37, column: 88, scope: !129)
!162 = !DILocation(line: 37, column: 33, scope: !129)
!163 = !DILocation(line: 37, column: 31, scope: !129)
!164 = !DILocation(line: 38, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !129, file: !1, line: 38, column: 11)
!166 = !DILocation(line: 38, column: 35, scope: !165)
!167 = !DILocation(line: 38, column: 11, scope: !129)
!168 = !DILocation(line: 40, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 39, column: 7)
!170 = !DILocation(line: 43, column: 36, scope: !129)
!171 = !DILocation(line: 43, column: 71, scope: !129)
!172 = !DILocation(line: 43, column: 89, scope: !129)
!173 = !DILocation(line: 43, column: 87, scope: !129)
!174 = !DILocation(line: 43, column: 135, scope: !129)
!175 = !DILocation(line: 43, column: 133, scope: !129)
!176 = !DILocation(line: 43, column: 155, scope: !129)
!177 = !DILocation(line: 43, column: 125, scope: !129)
!178 = !DILocation(line: 43, column: 31, scope: !129)
!179 = !DILocation(line: 43, column: 29, scope: !129)
!180 = !DILocation(line: 44, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !129, file: !1, line: 44, column: 11)
!182 = !DILocation(line: 44, column: 34, scope: !181)
!183 = !DILocation(line: 44, column: 43, scope: !181)
!184 = !DILocation(line: 44, column: 47, scope: !181)
!185 = !DILocation(line: 44, column: 69, scope: !181)
!186 = !DILocation(line: 44, column: 11, scope: !129)
!187 = !DILocation(line: 46, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !1, line: 45, column: 7)
!189 = !DILocation(line: 49, column: 7, scope: !129)
!190 = !DILocation(line: 49, column: 23, scope: !129)
!191 = !DILocation(line: 49, column: 45, scope: !129)
!192 = !DILocation(line: 49, column: 67, scope: !129)
!193 = !DILocation(line: 49, column: 42, scope: !129)
!194 = !DILocation(line: 49, column: 86, scope: !129)
!195 = !DILocation(line: 50, column: 35, scope: !129)
!196 = !DILocation(line: 50, column: 28, scope: !129)
!197 = !DILocation(line: 50, column: 26, scope: !129)
!198 = !DILocation(line: 51, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !129, file: !1, line: 51, column: 11)
!200 = !DILocation(line: 51, column: 11, scope: !129)
!201 = !DILocation(line: 53, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 52, column: 7)
!203 = !DILocation(line: 53, column: 29, scope: !202)
!204 = !DILocation(line: 54, column: 7, scope: !202)
!205 = !DILocation(line: 56, column: 35, scope: !129)
!206 = !DILocation(line: 56, column: 28, scope: !129)
!207 = !DILocation(line: 56, column: 26, scope: !129)
!208 = !DILocation(line: 57, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !129, file: !1, line: 57, column: 11)
!210 = !DILocation(line: 57, column: 11, scope: !129)
!211 = !DILocation(line: 59, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 58, column: 7)
!213 = !DILocation(line: 59, column: 29, scope: !212)
!214 = !DILocation(line: 60, column: 7, scope: !212)
!215 = !DILocation(line: 62, column: 5, scope: !129)
!216 = !DILocation(line: 64, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !94, file: !1, line: 64, column: 9)
!218 = !DILocation(line: 64, column: 33, scope: !217)
!219 = !DILocation(line: 64, column: 9, scope: !94)
!220 = !DILocation(line: 66, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 65, column: 5)
!222 = !DILocation(line: 66, column: 7, scope: !221)
!223 = !DILocation(line: 67, column: 5, scope: !221)
!224 = !DILocation(line: 69, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !94, file: !1, line: 69, column: 9)
!226 = !DILocation(line: 69, column: 33, scope: !225)
!227 = !DILocation(line: 69, column: 9, scope: !94)
!228 = !DILocation(line: 71, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 70, column: 5)
!230 = !DILocation(line: 71, column: 7, scope: !229)
!231 = !DILocation(line: 72, column: 5, scope: !229)
!232 = !DILocation(line: 75, column: 29, scope: !69)
!233 = !DILocation(line: 75, column: 3, scope: !69)
!234 = !DILocation(line: 75, column: 27, scope: !69)
!235 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_data_0", scope: !236, file: !1, line: 77, type: !64)
!236 = distinct !DILexicalBlock(scope: !69, file: !1, line: 76, column: 3)
!237 = !DILocation(line: 77, column: 11, scope: !236)
!238 = !DILocation(line: 77, column: 89, scope: !236)
!239 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_i_0", scope: !240, file: !1, line: 79, type: !75)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 78, column: 5)
!241 = !DILocation(line: 79, column: 11, scope: !240)
!242 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_n_0", scope: !240, file: !1, line: 80, type: !75)
!243 = !DILocation(line: 80, column: 11, scope: !240)
!244 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_intVariable_0", scope: !240, file: !1, line: 81, type: !75)
!245 = !DILocation(line: 81, column: 11, scope: !240)
!246 = !DILocation(line: 82, column: 18, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !1, line: 82, column: 11)
!248 = !DILocation(line: 82, column: 11, scope: !247)
!249 = !DILocation(line: 82, column: 176, scope: !247)
!250 = !DILocation(line: 82, column: 11, scope: !240)
!251 = !DILocation(line: 84, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 84, column: 13)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 83, column: 7)
!254 = !DILocation(line: 84, column: 86, scope: !252)
!255 = !DILocation(line: 84, column: 13, scope: !253)
!256 = !DILocation(line: 86, column: 94, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 85, column: 9)
!258 = !DILocation(line: 87, column: 11, scope: !257)
!259 = !DILocation(line: 87, column: 18, scope: !257)
!260 = !DILocation(line: 88, column: 24, scope: !257)
!261 = !DILocation(line: 88, column: 11, scope: !257)
!262 = !DILocation(line: 89, column: 9, scope: !257)
!263 = !DILocation(line: 91, column: 7, scope: !253)
!264 = !DILocation(line: 93, column: 5, scope: !240)
!265 = !DILabel(scope: !236, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_66b_goodB2GSink_label_", file: !1, line: 94)
!266 = !DILocation(line: 94, column: 5, scope: !236)
!267 = !DILocation(line: 99, column: 3, scope: !236)
!268 = !DILabel(scope: !69, name: "goodB2G_label_", file: !1, line: 100)
!269 = !DILocation(line: 100, column: 3, scope: !69)
!270 = !DILocation(line: 105, column: 1, scope: !69)
