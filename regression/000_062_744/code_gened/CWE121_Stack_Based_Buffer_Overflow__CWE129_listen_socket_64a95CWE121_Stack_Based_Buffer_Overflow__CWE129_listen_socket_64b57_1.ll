; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b57_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b57_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b57_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !70 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_dataPtr_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0, metadata !88, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !111
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !113
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !114
  %cmp = icmp eq i32 %0, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0 to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 0, i32* %s_addr, align 4, !dbg !125
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0, i32 0, i32 1, !dbg !127
  store i16 %call1, i16* %sin_port, align 2, !dbg !128
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !129
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0 to %struct.sockaddr*, !dbg !131
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !132
  %cmp3 = icmp eq i32 %call2, -1, !dbg !133
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !134

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !137
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !139
  %cmp7 = icmp eq i32 %call6, -1, !dbg !140
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !141

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !142

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !144
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !145
  store i32 %call10, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !146
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !147
  %cmp11 = icmp eq i32 %6, -1, !dbg !149
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !150

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !151

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !153
  %8 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr, align 8, !dbg !154
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !155
  %conv = trunc i64 %call14 to i32, !dbg !155
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0, align 4, !dbg !156
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0, align 4, !dbg !157
  %cmp15 = icmp eq i32 %9, -1, !dbg !159
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0, align 4, !dbg !161
  %cmp17 = icmp eq i32 %10, 0, !dbg !162
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !163

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !164

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr, align 8, !dbg !166
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0, align 4, !dbg !167
  %idxprom = sext i32 %12 to i64, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !166
  store i8 0, i8* %arrayidx, align 1, !dbg !168
  %13 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0.addr, align 8, !dbg !169
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !170
  store i32 %call21, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0, align 4, !dbg !171
  br label %do.end, !dbg !172

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !173
  %cmp22 = icmp ne i32 %14, -1, !dbg !175
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !176

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0, align 4, !dbg !177
  %call25 = call i32 @close(i32 %15), !dbg !179
  br label %if.end26, !dbg !180

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !181
  %cmp27 = icmp ne i32 %16, -1, !dbg !183
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !184

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0, align 4, !dbg !185
  %call30 = call i32 @close(i32 %17), !dbg !187
  br label %if.end31, !dbg !188

if.end31:                                         ; preds = %if.then29, %if.end26
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_dataPtr_0, metadata !189, metadata !DIExpression()), !dbg !191
  store i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_dataPtr_0, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0, metadata !192, metadata !DIExpression()), !dbg !193
  %18 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_dataPtr_0, align 8, !dbg !194
  %19 = load i32, i32* %18, align 4, !dbg !195
  store i32 %19, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, metadata !196, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_buffer_0, metadata !199, metadata !DIExpression()), !dbg !203
  %20 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_buffer_0 to i8*, !dbg !203
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !203
  %21 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0, align 4, !dbg !204
  %cmp32 = icmp sge i32 %21, 0, !dbg !206
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !207

if.then34:                                        ; preds = %if.end31
  %22 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !208
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0, align 4, !dbg !210
  call void %22(i32 %23), !dbg !208
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then34
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, align 4, !dbg !214
  %cmp35 = icmp slt i32 %24, 10, !dbg !216
  br i1 %cmp35, label %for.body, label %for.end, !dbg !217

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, align 4, !dbg !218
  %idxprom37 = sext i32 %25 to i64, !dbg !220
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_buffer_0, i64 0, i64 %idxprom37, !dbg !220
  %26 = load i32, i32* %arrayidx38, align 4, !dbg !220
  call void @printIntLine(i32 %26), !dbg !221
  br label %for.inc, !dbg !222

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, align 4, !dbg !223
  %inc = add nsw i32 %27, 1, !dbg !223
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0, align 4, !dbg !223
  br label %for.cond, !dbg !224, !llvm.loop !225

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !228

if.else:                                          ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !229
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_label_, !dbg !231

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_label_: ; preds = %if.end39
  call void @llvm.dbg.label(metadata !232), !dbg !233
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_label_, !dbg !234

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_label_
  call void @llvm.dbg.label(metadata !235), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #5

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen(...) #2

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept(...) #2

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
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b57_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/code_gened")
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
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{!"clang version 12.0.0"}
!70 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a95CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b57_1", scope: !1, file: !1, line: 3, type: !71, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !65}
!77 = !{}
!78 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_inputBuffer_0", arg: 1, scope: !70, file: !1, line: 3, type: !73)
!79 = !DILocation(line: 3, column: 139, scope: !70)
!80 = !DILocalVariable(name: "opsink", arg: 2, scope: !70, file: !1, line: 3, type: !74)
!81 = !DILocation(line: 3, column: 226, scope: !70)
!82 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_data_0", scope: !70, file: !1, line: 5, type: !65)
!83 = !DILocation(line: 5, column: 7, scope: !70)
!84 = !DILocation(line: 6, column: 75, scope: !70)
!85 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_recvResult_0", scope: !86, file: !1, line: 8, type: !65)
!86 = distinct !DILexicalBlock(scope: !70, file: !1, line: 7, column: 3)
!87 = !DILocation(line: 8, column: 9, scope: !86)
!88 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_service_0", scope: !86, file: !1, line: 9, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !90)
!90 = !{!91, !92, !96, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !89, file: !17, line: 240, baseType: !56, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !89, file: !17, line: 241, baseType: !93, size: 16, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !89, file: !17, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !17, line: 33, baseType: !46, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !89, file: !17, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 9, column: 24, scope: !86)
!106 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_listenSocket_0", scope: !86, file: !1, line: 10, type: !65)
!107 = !DILocation(line: 10, column: 9, scope: !86)
!108 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_acceptSocket_0", scope: !86, file: !1, line: 11, type: !65)
!109 = !DILocation(line: 11, column: 9, scope: !86)
!110 = !DILocation(line: 12, column: 5, scope: !86)
!111 = !DILocation(line: 14, column: 89, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !1, line: 13, column: 5)
!113 = !DILocation(line: 14, column: 87, scope: !112)
!114 = !DILocation(line: 15, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 15, column: 11)
!116 = !DILocation(line: 15, column: 91, scope: !115)
!117 = !DILocation(line: 15, column: 11, scope: !112)
!118 = !DILocation(line: 17, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 16, column: 7)
!120 = !DILocation(line: 20, column: 7, scope: !112)
!121 = !DILocation(line: 21, column: 82, scope: !112)
!122 = !DILocation(line: 21, column: 93, scope: !112)
!123 = !DILocation(line: 22, column: 82, scope: !112)
!124 = !DILocation(line: 22, column: 91, scope: !112)
!125 = !DILocation(line: 22, column: 98, scope: !112)
!126 = !DILocation(line: 23, column: 93, scope: !112)
!127 = !DILocation(line: 23, column: 82, scope: !112)
!128 = !DILocation(line: 23, column: 91, scope: !112)
!129 = !DILocation(line: 24, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 24, column: 11)
!131 = !DILocation(line: 24, column: 97, scope: !130)
!132 = !DILocation(line: 24, column: 11, scope: !130)
!133 = !DILocation(line: 24, column: 280, scope: !130)
!134 = !DILocation(line: 24, column: 11, scope: !112)
!135 = !DILocation(line: 26, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 25, column: 7)
!137 = !DILocation(line: 29, column: 66, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 29, column: 11)
!139 = !DILocation(line: 29, column: 11, scope: !138)
!140 = !DILocation(line: 29, column: 150, scope: !138)
!141 = !DILocation(line: 29, column: 11, scope: !112)
!142 = !DILocation(line: 31, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 30, column: 7)
!144 = !DILocation(line: 34, column: 144, scope: !112)
!145 = !DILocation(line: 34, column: 89, scope: !112)
!146 = !DILocation(line: 34, column: 87, scope: !112)
!147 = !DILocation(line: 35, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !1, line: 35, column: 11)
!149 = !DILocation(line: 35, column: 91, scope: !148)
!150 = !DILocation(line: 35, column: 11, scope: !112)
!151 = !DILocation(line: 37, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 36, column: 7)
!153 = !DILocation(line: 40, column: 92, scope: !112)
!154 = !DILocation(line: 40, column: 173, scope: !112)
!155 = !DILocation(line: 40, column: 87, scope: !112)
!156 = !DILocation(line: 40, column: 85, scope: !112)
!157 = !DILocation(line: 41, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !112, file: !1, line: 41, column: 11)
!159 = !DILocation(line: 41, column: 90, scope: !158)
!160 = !DILocation(line: 41, column: 99, scope: !158)
!161 = !DILocation(line: 41, column: 103, scope: !158)
!162 = !DILocation(line: 41, column: 181, scope: !158)
!163 = !DILocation(line: 41, column: 11, scope: !112)
!164 = !DILocation(line: 43, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 42, column: 7)
!166 = !DILocation(line: 46, column: 7, scope: !112)
!167 = !DILocation(line: 46, column: 86, scope: !112)
!168 = !DILocation(line: 46, column: 165, scope: !112)
!169 = !DILocation(line: 47, column: 86, scope: !112)
!170 = !DILocation(line: 47, column: 81, scope: !112)
!171 = !DILocation(line: 47, column: 79, scope: !112)
!172 = !DILocation(line: 48, column: 5, scope: !112)
!173 = !DILocation(line: 50, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !86, file: !1, line: 50, column: 9)
!175 = !DILocation(line: 50, column: 89, scope: !174)
!176 = !DILocation(line: 50, column: 9, scope: !86)
!177 = !DILocation(line: 52, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 51, column: 5)
!179 = !DILocation(line: 52, column: 7, scope: !178)
!180 = !DILocation(line: 53, column: 5, scope: !178)
!181 = !DILocation(line: 55, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !86, file: !1, line: 55, column: 9)
!183 = !DILocation(line: 55, column: 89, scope: !182)
!184 = !DILocation(line: 55, column: 9, scope: !86)
!185 = !DILocation(line: 57, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 56, column: 5)
!187 = !DILocation(line: 57, column: 7, scope: !186)
!188 = !DILocation(line: 58, column: 5, scope: !186)
!189 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_dataPtr_0", scope: !190, file: !1, line: 62, type: !64)
!190 = distinct !DILexicalBlock(scope: !70, file: !1, line: 61, column: 3)
!191 = !DILocation(line: 62, column: 10, scope: !190)
!192 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_data_0", scope: !190, file: !1, line: 63, type: !65)
!193 = !DILocation(line: 63, column: 9, scope: !190)
!194 = !DILocation(line: 63, column: 89, scope: !190)
!195 = !DILocation(line: 63, column: 88, scope: !190)
!196 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_i_0", scope: !197, file: !1, line: 65, type: !65)
!197 = distinct !DILexicalBlock(scope: !190, file: !1, line: 64, column: 5)
!198 = !DILocation(line: 65, column: 11, scope: !197)
!199 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_buffer_0", scope: !197, file: !1, line: 66, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 320, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DILocation(line: 66, column: 11, scope: !197)
!204 = !DILocation(line: 67, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !1, line: 67, column: 11)
!206 = !DILocation(line: 67, column: 88, scope: !205)
!207 = !DILocation(line: 67, column: 11, scope: !197)
!208 = !DILocation(line: 69, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 68, column: 7)
!210 = !DILocation(line: 69, column: 16, scope: !209)
!211 = !DILocation(line: 70, column: 88, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 70, column: 9)
!213 = !DILocation(line: 70, column: 14, scope: !212)
!214 = !DILocation(line: 70, column: 93, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 70, column: 9)
!216 = !DILocation(line: 70, column: 167, scope: !215)
!217 = !DILocation(line: 70, column: 9, scope: !212)
!218 = !DILocation(line: 72, column: 103, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 71, column: 9)
!220 = !DILocation(line: 72, column: 24, scope: !219)
!221 = !DILocation(line: 72, column: 11, scope: !219)
!222 = !DILocation(line: 73, column: 9, scope: !219)
!223 = !DILocation(line: 70, column: 246, scope: !215)
!224 = !DILocation(line: 70, column: 9, scope: !215)
!225 = distinct !{!225, !217, !226, !227}
!226 = !DILocation(line: 73, column: 9, scope: !212)
!227 = !{!"llvm.loop.mustprogress"}
!228 = !DILocation(line: 75, column: 7, scope: !209)
!229 = !DILocation(line: 78, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !205, file: !1, line: 77, column: 7)
!231 = !DILocation(line: 81, column: 5, scope: !197)
!232 = !DILabel(scope: !190, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink_label_", file: !1, line: 82)
!233 = !DILocation(line: 82, column: 5, scope: !190)
!234 = !DILocation(line: 87, column: 3, scope: !190)
!235 = !DILabel(scope: !70, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad_label_", file: !1, line: 88)
!236 = !DILocation(line: 88, column: 3, scope: !70)
!237 = !DILocation(line: 93, column: 1, scope: !70)
