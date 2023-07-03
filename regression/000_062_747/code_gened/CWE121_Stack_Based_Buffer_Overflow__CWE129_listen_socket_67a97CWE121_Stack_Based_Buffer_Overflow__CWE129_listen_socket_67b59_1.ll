; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b59_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b59_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b59_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !68 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_myStruct_0 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_myStruct_0, metadata !83, metadata !DIExpression()), !dbg !89
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0, metadata !94, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !115
  br label %do.body, !dbg !116

do.body:                                          ; preds = %entry
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !117
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !119
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !120
  %cmp = icmp eq i32 %0, -1, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !124

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0 to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !126
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0, i32 0, i32 0, !dbg !127
  store i16 2, i16* %sin_family, align 4, !dbg !128
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0, i32 0, i32 2, !dbg !129
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !130
  store i32 0, i32* %s_addr, align 4, !dbg !131
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #7, !dbg !132
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0, i32 0, i32 1, !dbg !133
  store i16 %call1, i16* %sin_port, align 2, !dbg !134
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !135
  %3 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0 to %struct.sockaddr*, !dbg !137
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #8, !dbg !138
  %cmp3 = icmp eq i32 %call2, -1, !dbg !139
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !140

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !141

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !143
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %4, i32 5), !dbg !145
  %cmp7 = icmp eq i32 %call6, -1, !dbg !146
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !147

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !148

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !150
  %call10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %5, i32 0, i32 0), !dbg !151
  store i32 %call10, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !152
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !153
  %cmp11 = icmp eq i32 %6, -1, !dbg !155
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !156

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !157

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !159
  %8 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr, align 8, !dbg !160
  %call14 = call i64 @recv(i32 %7, i8* %8, i64 13, i32 0), !dbg !161
  %conv = trunc i64 %call14 to i32, !dbg !161
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0, align 4, !dbg !162
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0, align 4, !dbg !163
  %cmp15 = icmp eq i32 %9, -1, !dbg !165
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0, align 4, !dbg !167
  %cmp17 = icmp eq i32 %10, 0, !dbg !168
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !169

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !170

if.end20:                                         ; preds = %lor.lhs.false
  %11 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr, align 8, !dbg !172
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0, align 4, !dbg !173
  %idxprom = sext i32 %12 to i64, !dbg !172
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !174
  %13 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0.addr, align 8, !dbg !175
  %call21 = call i32 @atoi(i8* %13) #9, !dbg !176
  store i32 %call21, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0, align 4, !dbg !177
  br label %do.end, !dbg !178

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !179
  %cmp22 = icmp ne i32 %14, -1, !dbg !181
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !182

if.then24:                                        ; preds = %do.end
  %15 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0, align 4, !dbg !183
  %call25 = call i32 @close(i32 %15), !dbg !185
  br label %if.end26, !dbg !186

if.end26:                                         ; preds = %if.then24, %do.end
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !187
  %cmp27 = icmp ne i32 %16, -1, !dbg !189
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !190

if.then29:                                        ; preds = %if.end26
  %17 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0, align 4, !dbg !191
  %call30 = call i32 @close(i32 %17), !dbg !193
  br label %if.end31, !dbg !194

if.end31:                                         ; preds = %if.then29, %if.end26
  %18 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0, align 4, !dbg !195
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_myStruct_0, i32 0, i32 0, !dbg !196
  store i32 %18, i32* %structFirst, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0, metadata !198, metadata !DIExpression()), !dbg !200
  %structFirst32 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_myStruct_0, i32 0, i32 0, !dbg !201
  %19 = load i32, i32* %structFirst32, align 4, !dbg !201
  store i32 %19, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_buffer_0, metadata !205, metadata !DIExpression()), !dbg !209
  %20 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_buffer_0 to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false), !dbg !209
  %21 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0, align 4, !dbg !210
  %cmp33 = icmp sge i32 %21, 0, !dbg !212
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !213

if.then35:                                        ; preds = %if.end31
  %22 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !214
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0, align 4, !dbg !216
  call void %22(i32 %23), !dbg !214
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, align 4, !dbg !217
  br label %for.cond, !dbg !219

for.cond:                                         ; preds = %for.inc, %if.then35
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, align 4, !dbg !220
  %cmp36 = icmp slt i32 %24, 10, !dbg !222
  br i1 %cmp36, label %for.body, label %for.end, !dbg !223

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, align 4, !dbg !224
  %idxprom38 = sext i32 %25 to i64, !dbg !226
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_buffer_0, i64 0, i64 %idxprom38, !dbg !226
  %26 = load i32, i32* %arrayidx39, align 4, !dbg !226
  call void @printIntLine(i32 %26), !dbg !227
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, align 4, !dbg !229
  %inc = add nsw i32 %27, 1, !dbg !229
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0, align 4, !dbg !229
  br label %for.cond, !dbg !230, !llvm.loop !231

for.end:                                          ; preds = %for.cond
  br label %if.end40, !dbg !234

if.else:                                          ; preds = %if.end31
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !235
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_label_, !dbg !237

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_label_: ; preds = %if.end40
  call void @llvm.dbg.label(metadata !238), !dbg !239
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_label_, !dbg !240

CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_label_
  call void @llvm.dbg.label(metadata !241), !dbg !242
  ret void, !dbg !243
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
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b59_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/code_gened")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a97CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b59_1", scope: !1, file: !1, line: 3, type: !69, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_inputBuffer_0", arg: 1, scope: !68, file: !1, line: 3, type: !71)
!78 = !DILocation(line: 3, column: 139, scope: !68)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !68, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 226, scope: !68)
!81 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_data_0", scope: !68, file: !1, line: 5, type: !75)
!82 = !DILocation(line: 5, column: 7, scope: !68)
!83 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_myStruct_0", scope: !68, file: !1, line: 6, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !85, line: 27, baseType: !86)
!85 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/code_gened")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !85, line: 24, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !86, file: !85, line: 26, baseType: !75, size: 32)
!89 = !DILocation(line: 6, column: 74, scope: !68)
!90 = !DILocation(line: 7, column: 75, scope: !68)
!91 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_recvResult_0", scope: !92, file: !1, line: 9, type: !75)
!92 = distinct !DILexicalBlock(scope: !68, file: !1, line: 8, column: 3)
!93 = !DILocation(line: 9, column: 9, scope: !92)
!94 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_service_0", scope: !92, file: !1, line: 10, type: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !96)
!96 = !{!97, !98, !102, !106}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !95, file: !17, line: 240, baseType: !56, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !95, file: !17, line: 241, baseType: !99, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !95, file: !17, line: 242, baseType: !103, size: 32, offset: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !103, file: !17, line: 33, baseType: !46, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !95, file: !17, line: 245, baseType: !107, size: 64, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !109)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DILocation(line: 10, column: 24, scope: !92)
!112 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_listenSocket_0", scope: !92, file: !1, line: 11, type: !75)
!113 = !DILocation(line: 11, column: 9, scope: !92)
!114 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_acceptSocket_0", scope: !92, file: !1, line: 12, type: !75)
!115 = !DILocation(line: 12, column: 9, scope: !92)
!116 = !DILocation(line: 13, column: 5, scope: !92)
!117 = !DILocation(line: 15, column: 89, scope: !118)
!118 = distinct !DILexicalBlock(scope: !92, file: !1, line: 14, column: 5)
!119 = !DILocation(line: 15, column: 87, scope: !118)
!120 = !DILocation(line: 16, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 16, column: 11)
!122 = !DILocation(line: 16, column: 91, scope: !121)
!123 = !DILocation(line: 16, column: 11, scope: !118)
!124 = !DILocation(line: 18, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 17, column: 7)
!126 = !DILocation(line: 21, column: 7, scope: !118)
!127 = !DILocation(line: 22, column: 82, scope: !118)
!128 = !DILocation(line: 22, column: 93, scope: !118)
!129 = !DILocation(line: 23, column: 82, scope: !118)
!130 = !DILocation(line: 23, column: 91, scope: !118)
!131 = !DILocation(line: 23, column: 98, scope: !118)
!132 = !DILocation(line: 24, column: 93, scope: !118)
!133 = !DILocation(line: 24, column: 82, scope: !118)
!134 = !DILocation(line: 24, column: 91, scope: !118)
!135 = !DILocation(line: 25, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !1, line: 25, column: 11)
!137 = !DILocation(line: 25, column: 97, scope: !136)
!138 = !DILocation(line: 25, column: 11, scope: !136)
!139 = !DILocation(line: 25, column: 280, scope: !136)
!140 = !DILocation(line: 25, column: 11, scope: !118)
!141 = !DILocation(line: 27, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 26, column: 7)
!143 = !DILocation(line: 30, column: 66, scope: !144)
!144 = distinct !DILexicalBlock(scope: !118, file: !1, line: 30, column: 11)
!145 = !DILocation(line: 30, column: 11, scope: !144)
!146 = !DILocation(line: 30, column: 150, scope: !144)
!147 = !DILocation(line: 30, column: 11, scope: !118)
!148 = !DILocation(line: 32, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 31, column: 7)
!150 = !DILocation(line: 35, column: 144, scope: !118)
!151 = !DILocation(line: 35, column: 89, scope: !118)
!152 = !DILocation(line: 35, column: 87, scope: !118)
!153 = !DILocation(line: 36, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !118, file: !1, line: 36, column: 11)
!155 = !DILocation(line: 36, column: 91, scope: !154)
!156 = !DILocation(line: 36, column: 11, scope: !118)
!157 = !DILocation(line: 38, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 37, column: 7)
!159 = !DILocation(line: 41, column: 92, scope: !118)
!160 = !DILocation(line: 41, column: 173, scope: !118)
!161 = !DILocation(line: 41, column: 87, scope: !118)
!162 = !DILocation(line: 41, column: 85, scope: !118)
!163 = !DILocation(line: 42, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !118, file: !1, line: 42, column: 11)
!165 = !DILocation(line: 42, column: 90, scope: !164)
!166 = !DILocation(line: 42, column: 99, scope: !164)
!167 = !DILocation(line: 42, column: 103, scope: !164)
!168 = !DILocation(line: 42, column: 181, scope: !164)
!169 = !DILocation(line: 42, column: 11, scope: !118)
!170 = !DILocation(line: 44, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 43, column: 7)
!172 = !DILocation(line: 47, column: 7, scope: !118)
!173 = !DILocation(line: 47, column: 86, scope: !118)
!174 = !DILocation(line: 47, column: 165, scope: !118)
!175 = !DILocation(line: 48, column: 86, scope: !118)
!176 = !DILocation(line: 48, column: 81, scope: !118)
!177 = !DILocation(line: 48, column: 79, scope: !118)
!178 = !DILocation(line: 49, column: 5, scope: !118)
!179 = !DILocation(line: 51, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !92, file: !1, line: 51, column: 9)
!181 = !DILocation(line: 51, column: 89, scope: !180)
!182 = !DILocation(line: 51, column: 9, scope: !92)
!183 = !DILocation(line: 53, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 52, column: 5)
!185 = !DILocation(line: 53, column: 7, scope: !184)
!186 = !DILocation(line: 54, column: 5, scope: !184)
!187 = !DILocation(line: 56, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !92, file: !1, line: 56, column: 9)
!189 = !DILocation(line: 56, column: 89, scope: !188)
!190 = !DILocation(line: 56, column: 9, scope: !92)
!191 = !DILocation(line: 58, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 57, column: 5)
!193 = !DILocation(line: 58, column: 7, scope: !192)
!194 = !DILocation(line: 59, column: 5, scope: !192)
!195 = !DILocation(line: 62, column: 93, scope: !68)
!196 = !DILocation(line: 62, column: 79, scope: !68)
!197 = !DILocation(line: 62, column: 91, scope: !68)
!198 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_data_0", scope: !199, file: !1, line: 64, type: !75)
!199 = distinct !DILexicalBlock(scope: !68, file: !1, line: 63, column: 3)
!200 = !DILocation(line: 64, column: 9, scope: !199)
!201 = !DILocation(line: 64, column: 164, scope: !199)
!202 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_i_0", scope: !203, file: !1, line: 66, type: !75)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 65, column: 5)
!204 = !DILocation(line: 66, column: 11, scope: !203)
!205 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_buffer_0", scope: !203, file: !1, line: 67, type: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 320, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 10)
!209 = !DILocation(line: 67, column: 11, scope: !203)
!210 = !DILocation(line: 68, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !1, line: 68, column: 11)
!212 = !DILocation(line: 68, column: 88, scope: !211)
!213 = !DILocation(line: 68, column: 11, scope: !203)
!214 = !DILocation(line: 70, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 69, column: 7)
!216 = !DILocation(line: 70, column: 16, scope: !215)
!217 = !DILocation(line: 71, column: 88, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !1, line: 71, column: 9)
!219 = !DILocation(line: 71, column: 14, scope: !218)
!220 = !DILocation(line: 71, column: 93, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 71, column: 9)
!222 = !DILocation(line: 71, column: 167, scope: !221)
!223 = !DILocation(line: 71, column: 9, scope: !218)
!224 = !DILocation(line: 73, column: 103, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 72, column: 9)
!226 = !DILocation(line: 73, column: 24, scope: !225)
!227 = !DILocation(line: 73, column: 11, scope: !225)
!228 = !DILocation(line: 74, column: 9, scope: !225)
!229 = !DILocation(line: 71, column: 246, scope: !221)
!230 = !DILocation(line: 71, column: 9, scope: !221)
!231 = distinct !{!231, !223, !232, !233}
!232 = !DILocation(line: 74, column: 9, scope: !218)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 76, column: 7, scope: !215)
!235 = !DILocation(line: 79, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !211, file: !1, line: 78, column: 7)
!237 = !DILocation(line: 82, column: 5, scope: !203)
!238 = !DILabel(scope: !199, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink_label_", file: !1, line: 83)
!239 = !DILocation(line: 83, column: 5, scope: !199)
!240 = !DILocation(line: 88, column: 3, scope: !199)
!241 = !DILabel(scope: !68, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad_label_", file: !1, line: 89)
!242 = !DILocation(line: 89, column: 3, scope: !68)
!243 = !DILocation(line: 94, column: 1, scope: !68)
