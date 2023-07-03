; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b89CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a60_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b89CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a60_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b89CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a60_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0, i32 %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_, void (i32)* %opsink) #0 !dbg !68 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr = alloca i8*, align 8
  %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_, i32* %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0, metadata !90, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !111
  br label %do.body, !dbg !112

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !113
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !115
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !116
  %cmp = icmp eq i32 %0, -1, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !120

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0 to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !122
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0, i32 0, i32 0, !dbg !123
  store i16 2, i16* %sin_family, align 4, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 0, i32* %s_addr, align 4, !dbg !127
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0, i32 0, i32 1, !dbg !129
  store i16 %call1, i16* %sin_port, align 2, !dbg !130
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !131
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0 to %struct.sockaddr*, !dbg !133
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !134
  %cmp3 = icmp eq i32 %call2, -1, !dbg !135
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !136

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !139
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !141
  %cmp7 = icmp eq i32 %call6, -1, !dbg !142
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !143

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !144

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !146
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !147
  store i32 %call10, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !148
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !149
  %cmp11 = icmp eq i32 %6, -1, !dbg !151
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !152

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !153

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !155
  %8 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr, align 8, !dbg !156
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !157
  %conv = trunc i64 %call14 to i32, !dbg !157
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0, align 4, !dbg !158
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0, align 4, !dbg !159
  %cmp15 = icmp eq i32 %9, -1, !dbg !161
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !162

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0, align 4, !dbg !163
  %cmp17 = icmp eq i32 %10, 0, !dbg !164
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !165

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !166

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr, align 8, !dbg !168
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0, align 4, !dbg !169
  %idxprom = sext i32 %12 to i64, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !168
  store i8 0, i8* %arrayidx, align 1, !dbg !170
  %13 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0.addr, align 8, !dbg !171
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !172
  store i32 %call21, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !173
  br label %do.end, !dbg !174

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !175
  %cmp22 = icmp ne i32 %14, -1, !dbg !177
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !178

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0, align 4, !dbg !179
  %call25 = call i32 @close(i32 %15), !dbg !181
  br label %if.end26, !dbg !182

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !183
  %cmp27 = icmp ne i32 %16, -1, !dbg !185
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !186

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0, align 4, !dbg !187
  %call30 = call i32 @close(i32 %17), !dbg !189
  br label %if.end31, !dbg !190

if.end31:                                         ; preds = %if.then29, %if.end26
  %18 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !191
  store i32 %18, i32* %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_.addr, align 4, !dbg !192
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_label_, !dbg !193

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_label_: ; preds = %if.end31
  call void @llvm.dbg.label(metadata !194), !dbg !195
  %19 = load i32, i32* %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_.addr, align 4, !dbg !196
  store i32 %19, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_buffer_0, metadata !201, metadata !DIExpression()), !dbg !205
  %20 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_buffer_0 to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !205
  %21 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !206
  %cmp32 = icmp sge i32 %21, 0, !dbg !208
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !209

if.then34:                                        ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_label_
  %22 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !210
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0, align 4, !dbg !212
  call void %22(i32 %23), !dbg !210
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, align 4, !dbg !213
  br label %for.cond, !dbg !215

for.cond:                                         ; preds = %for.inc, %if.then34
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, align 4, !dbg !216
  %cmp35 = icmp slt i32 %24, 10, !dbg !218
  br i1 %cmp35, label %for.body, label %for.end, !dbg !219

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, align 4, !dbg !220
  %idxprom37 = sext i32 %25 to i64, !dbg !222
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_buffer_0, i64 0, i64 %idxprom37, !dbg !222
  %26 = load i32, i32* %arrayidx38, align 4, !dbg !222
  call void @printIntLine(i32 %26), !dbg !223
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, align 4, !dbg !225
  %inc = add nsw i32 %27, 1, !dbg !225
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0, align 4, !dbg !225
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !230

if.else:                                          ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !231
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_label_, !dbg !233

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_label_: ; preds = %if.end39
  call void @llvm.dbg.label(metadata !234), !dbg !235
  ret void, !dbg !236
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

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
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b89CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a60_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/code_gened")
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
!45 = !{!46, !51}
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
!64 = !{i32 7, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{!"clang version 12.0.0"}
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b89CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a60_1", scope: !1, file: !1, line: 3, type: !69, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72, !73}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !72}
!76 = !{}
!77 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_inputBuffer_0", arg: 1, scope: !68, file: !1, line: 3, type: !71)
!78 = !DILocation(line: 3, column: 139, scope: !68)
!79 = !DILocalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_return_", arg: 2, scope: !68, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 230, scope: !68)
!81 = !DILocalVariable(name: "opsink", arg: 3, scope: !68, file: !1, line: 3, type: !73)
!82 = !DILocation(line: 3, column: 317, scope: !68)
!83 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_data_0", scope: !68, file: !1, line: 5, type: !72)
!84 = !DILocation(line: 5, column: 7, scope: !68)
!85 = !DILocation(line: 6, column: 75, scope: !68)
!86 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_recvResult_0", scope: !87, file: !1, line: 9, type: !72)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 8, column: 5)
!88 = distinct !DILexicalBlock(scope: !68, file: !1, line: 7, column: 3)
!89 = !DILocation(line: 9, column: 11, scope: !87)
!90 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_service_0", scope: !87, file: !1, line: 10, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !92)
!92 = !{!93, !94, !98, !102}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !91, file: !17, line: 240, baseType: !56, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !91, file: !17, line: 241, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !91, file: !17, line: 242, baseType: !99, size: 32, offset: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !99, file: !17, line: 33, baseType: !46, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !91, file: !17, line: 245, baseType: !103, size: 64, offset: 64)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !105)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DILocation(line: 10, column: 26, scope: !87)
!108 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_listenSocket_0", scope: !87, file: !1, line: 11, type: !72)
!109 = !DILocation(line: 11, column: 11, scope: !87)
!110 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_acceptSocket_0", scope: !87, file: !1, line: 12, type: !72)
!111 = !DILocation(line: 12, column: 11, scope: !87)
!112 = !DILocation(line: 13, column: 7, scope: !87)
!113 = !DILocation(line: 15, column: 98, scope: !114)
!114 = distinct !DILexicalBlock(scope: !87, file: !1, line: 14, column: 7)
!115 = !DILocation(line: 15, column: 96, scope: !114)
!116 = !DILocation(line: 16, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 16, column: 13)
!118 = !DILocation(line: 16, column: 100, scope: !117)
!119 = !DILocation(line: 16, column: 13, scope: !114)
!120 = !DILocation(line: 18, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 17, column: 9)
!122 = !DILocation(line: 21, column: 9, scope: !114)
!123 = !DILocation(line: 22, column: 91, scope: !114)
!124 = !DILocation(line: 22, column: 102, scope: !114)
!125 = !DILocation(line: 23, column: 91, scope: !114)
!126 = !DILocation(line: 23, column: 100, scope: !114)
!127 = !DILocation(line: 23, column: 107, scope: !114)
!128 = !DILocation(line: 24, column: 102, scope: !114)
!129 = !DILocation(line: 24, column: 91, scope: !114)
!130 = !DILocation(line: 24, column: 100, scope: !114)
!131 = !DILocation(line: 25, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !114, file: !1, line: 25, column: 13)
!133 = !DILocation(line: 25, column: 106, scope: !132)
!134 = !DILocation(line: 25, column: 13, scope: !132)
!135 = !DILocation(line: 25, column: 303, scope: !132)
!136 = !DILocation(line: 25, column: 13, scope: !114)
!137 = !DILocation(line: 27, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 26, column: 9)
!139 = !DILocation(line: 30, column: 68, scope: !140)
!140 = distinct !DILexicalBlock(scope: !114, file: !1, line: 30, column: 13)
!141 = !DILocation(line: 30, column: 13, scope: !140)
!142 = !DILocation(line: 30, column: 159, scope: !140)
!143 = !DILocation(line: 30, column: 13, scope: !114)
!144 = !DILocation(line: 32, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 31, column: 9)
!146 = !DILocation(line: 35, column: 153, scope: !114)
!147 = !DILocation(line: 35, column: 98, scope: !114)
!148 = !DILocation(line: 35, column: 96, scope: !114)
!149 = !DILocation(line: 36, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !114, file: !1, line: 36, column: 13)
!151 = !DILocation(line: 36, column: 100, scope: !150)
!152 = !DILocation(line: 36, column: 13, scope: !114)
!153 = !DILocation(line: 38, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 37, column: 9)
!155 = !DILocation(line: 41, column: 101, scope: !114)
!156 = !DILocation(line: 41, column: 189, scope: !114)
!157 = !DILocation(line: 41, column: 96, scope: !114)
!158 = !DILocation(line: 41, column: 94, scope: !114)
!159 = !DILocation(line: 42, column: 14, scope: !160)
!160 = distinct !DILexicalBlock(scope: !114, file: !1, line: 42, column: 13)
!161 = !DILocation(line: 42, column: 99, scope: !160)
!162 = !DILocation(line: 42, column: 108, scope: !160)
!163 = !DILocation(line: 42, column: 112, scope: !160)
!164 = !DILocation(line: 42, column: 197, scope: !160)
!165 = !DILocation(line: 42, column: 13, scope: !114)
!166 = !DILocation(line: 44, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 43, column: 9)
!168 = !DILocation(line: 47, column: 9, scope: !114)
!169 = !DILocation(line: 47, column: 95, scope: !114)
!170 = !DILocation(line: 47, column: 181, scope: !114)
!171 = !DILocation(line: 48, column: 88, scope: !114)
!172 = !DILocation(line: 48, column: 83, scope: !114)
!173 = !DILocation(line: 48, column: 81, scope: !114)
!174 = !DILocation(line: 49, column: 7, scope: !114)
!175 = !DILocation(line: 51, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !87, file: !1, line: 51, column: 11)
!177 = !DILocation(line: 51, column: 98, scope: !176)
!178 = !DILocation(line: 51, column: 11, scope: !87)
!179 = !DILocation(line: 53, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 52, column: 7)
!181 = !DILocation(line: 53, column: 9, scope: !180)
!182 = !DILocation(line: 54, column: 7, scope: !180)
!183 = !DILocation(line: 56, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !87, file: !1, line: 56, column: 11)
!185 = !DILocation(line: 56, column: 98, scope: !184)
!186 = !DILocation(line: 56, column: 11, scope: !87)
!187 = !DILocation(line: 58, column: 15, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 57, column: 7)
!189 = !DILocation(line: 58, column: 9, scope: !188)
!190 = !DILocation(line: 59, column: 7, scope: !188)
!191 = !DILocation(line: 62, column: 86, scope: !88)
!192 = !DILocation(line: 62, column: 84, scope: !88)
!193 = !DILocation(line: 63, column: 5, scope: !88)
!194 = !DILabel(scope: !88, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource_label_", file: !1, line: 64)
!195 = !DILocation(line: 64, column: 5, scope: !88)
!196 = !DILocation(line: 70, column: 77, scope: !68)
!197 = !DILocation(line: 70, column: 75, scope: !68)
!198 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_i_0", scope: !199, file: !1, line: 72, type: !72)
!199 = distinct !DILexicalBlock(scope: !68, file: !1, line: 71, column: 3)
!200 = !DILocation(line: 72, column: 9, scope: !199)
!201 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_buffer_0", scope: !199, file: !1, line: 73, type: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 320, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 10)
!205 = !DILocation(line: 73, column: 9, scope: !199)
!206 = !DILocation(line: 74, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !1, line: 74, column: 9)
!208 = !DILocation(line: 74, column: 81, scope: !207)
!209 = !DILocation(line: 74, column: 9, scope: !199)
!210 = !DILocation(line: 76, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 75, column: 5)
!212 = !DILocation(line: 76, column: 14, scope: !211)
!213 = !DILocation(line: 77, column: 81, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 77, column: 7)
!215 = !DILocation(line: 77, column: 12, scope: !214)
!216 = !DILocation(line: 77, column: 86, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 77, column: 7)
!218 = !DILocation(line: 77, column: 155, scope: !217)
!219 = !DILocation(line: 77, column: 7, scope: !214)
!220 = !DILocation(line: 79, column: 96, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 78, column: 7)
!222 = !DILocation(line: 79, column: 22, scope: !221)
!223 = !DILocation(line: 79, column: 9, scope: !221)
!224 = !DILocation(line: 80, column: 7, scope: !221)
!225 = !DILocation(line: 77, column: 229, scope: !217)
!226 = !DILocation(line: 77, column: 7, scope: !217)
!227 = distinct !{!227, !219, !228, !229}
!228 = !DILocation(line: 80, column: 7, scope: !214)
!229 = !{!"llvm.loop.mustprogress"}
!230 = !DILocation(line: 82, column: 5, scope: !211)
!231 = !DILocation(line: 85, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !207, file: !1, line: 84, column: 5)
!233 = !DILocation(line: 88, column: 3, scope: !199)
!234 = !DILabel(scope: !68, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad_label_", file: !1, line: 89)
!235 = !DILocation(line: 89, column: 3, scope: !68)
!236 = !DILocation(line: 94, column: 1, scope: !68)
