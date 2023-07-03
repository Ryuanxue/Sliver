; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17119_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17119_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17119_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0, i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0, i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr = alloca i8*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0, align 4, !dbg !82
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, align 4, !dbg !86
  %cmp = icmp slt i32 %0, 1, !dbg !88
  br i1 %cmp, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0, metadata !94, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !118
  br label %do.body, !dbg !119

do.body:                                          ; preds = %for.body
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !120
  store i32 %call, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !122
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !123
  %cmp1 = icmp eq i32 %1, -1, !dbg !125
  br i1 %cmp1, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !127

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0 to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !129
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0, i32 0, i32 0, !dbg !130
  store i16 2, i16* %sin_family, align 4, !dbg !131
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !132
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0, i32 0, i32 2, !dbg !133
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !134
  store i32 %call2, i32* %s_addr, align 4, !dbg !135
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !136
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0, i32 0, i32 1, !dbg !137
  store i16 %call3, i16* %sin_port, align 2, !dbg !138
  %3 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !139
  %4 = bitcast %struct.sockaddr_in* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0 to %struct.sockaddr*, !dbg !141
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !142
  %cmp5 = icmp eq i32 %call4, -1, !dbg !143
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !144

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !145

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !147
  %6 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr, align 8, !dbg !148
  %call8 = call i64 @recv(i32 %5, i8* %6, i64 13, i32 0), !dbg !149
  %conv = trunc i64 %call8 to i32, !dbg !149
  store i32 %conv, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0, align 4, !dbg !150
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0, align 4, !dbg !151
  %cmp9 = icmp eq i32 %7, -1, !dbg !153
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !154

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0, align 4, !dbg !155
  %cmp11 = icmp eq i32 %8, 0, !dbg !156
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !157

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !158

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr, align 8, !dbg !160
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0, align 4, !dbg !161
  %idxprom = sext i32 %10 to i64, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !160
  store i8 0, i8* %arrayidx, align 1, !dbg !162
  %11 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0.addr, align 8, !dbg !163
  %call15 = call i32 @atoi(i8* %11) #9, !dbg !164
  store i32 %call15, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0, align 4, !dbg !165
  br label %do.end, !dbg !166

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !167
  %cmp16 = icmp ne i32 %12, -1, !dbg !169
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !170

if.then18:                                        ; preds = %do.end
  %13 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0, align 4, !dbg !171
  %call19 = call i32 @close(i32 %13), !dbg !173
  br label %if.end20, !dbg !174

if.end20:                                         ; preds = %if.then18, %do.end
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end20
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, align 4, !dbg !176
  %inc = add nsw i32 %14, 1, !dbg !176
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0.addr, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, align 4, !dbg !181
  br label %for.cond21, !dbg !183

for.cond21:                                       ; preds = %for.inc38, %for.end
  %15 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, align 4, !dbg !184
  %cmp22 = icmp slt i32 %15, 1, !dbg !186
  br i1 %cmp22, label %for.body24, label %for.end40, !dbg !187

for.body24:                                       ; preds = %for.cond21
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_buffer_0, metadata !192, metadata !DIExpression()), !dbg !196
  %16 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_buffer_0 to i8*, !dbg !196
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !196
  %17 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0, align 4, !dbg !197
  %cmp25 = icmp sge i32 %17, 0, !dbg !199
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !200

if.then27:                                        ; preds = %for.body24
  %18 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !201
  %19 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0, align 4, !dbg !203
  call void %18(i32 %19), !dbg !201
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, align 4, !dbg !204
  br label %for.cond28, !dbg !206

for.cond28:                                       ; preds = %for.inc34, %if.then27
  %20 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, align 4, !dbg !207
  %cmp29 = icmp slt i32 %20, 10, !dbg !209
  br i1 %cmp29, label %for.body31, label %for.end36, !dbg !210

for.body31:                                       ; preds = %for.cond28
  %21 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, align 4, !dbg !211
  %idxprom32 = sext i32 %21 to i64, !dbg !213
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_buffer_0, i64 0, i64 %idxprom32, !dbg !213
  %22 = load i32, i32* %arrayidx33, align 4, !dbg !213
  call void @printIntLine(i32 %22), !dbg !214
  br label %for.inc34, !dbg !215

for.inc34:                                        ; preds = %for.body31
  %23 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, align 4, !dbg !216
  %inc35 = add nsw i32 %23, 1, !dbg !216
  store i32 %inc35, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1, align 4, !dbg !216
  br label %for.cond28, !dbg !217, !llvm.loop !218

for.end36:                                        ; preds = %for.cond28
  br label %if.end37, !dbg !220

if.else:                                          ; preds = %for.body24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !221
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end36
  br label %for.inc38, !dbg !223

for.inc38:                                        ; preds = %if.end37
  %24 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, align 4, !dbg !224
  %inc39 = add nsw i32 %24, 1, !dbg !224
  store i32 %inc39, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0.addr, align 4, !dbg !224
  br label %for.cond21, !dbg !225, !llvm.loop !226

for.end40:                                        ; preds = %for.cond21
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_label_, !dbg !227

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_label_: ; preds = %for.end40
  call void @llvm.dbg.label(metadata !228), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

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
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17119_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/code_gened")
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
!45 = !{!46}
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
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{!"clang version 12.0.0"}
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17119_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !67}
!71 = !{}
!72 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 140, scope: !63)
!74 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_0", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 225, scope: !63)
!76 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_j_0", arg: 3, scope: !63, file: !1, line: 3, type: !67)
!77 = !DILocation(line: 3, column: 300, scope: !63)
!78 = !DILocalVariable(name: "opsink", arg: 4, scope: !63, file: !1, line: 3, type: !68)
!79 = !DILocation(line: 3, column: 378, scope: !63)
!80 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_data_0", scope: !63, file: !1, line: 5, type: !67)
!81 = !DILocation(line: 5, column: 7, scope: !63)
!82 = !DILocation(line: 6, column: 76, scope: !63)
!83 = !DILocation(line: 7, column: 78, scope: !84)
!84 = distinct !DILexicalBlock(scope: !63, file: !1, line: 7, column: 3)
!85 = !DILocation(line: 7, column: 8, scope: !84)
!86 = !DILocation(line: 7, column: 83, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 7, column: 3)
!88 = !DILocation(line: 7, column: 153, scope: !87)
!89 = !DILocation(line: 7, column: 3, scope: !84)
!90 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_recvResult_0", scope: !91, file: !1, line: 10, type: !67)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 9, column: 5)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 8, column: 3)
!93 = !DILocation(line: 10, column: 11, scope: !91)
!94 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_service_0", scope: !91, file: !1, line: 11, type: !95)
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
!116 = !DILocation(line: 11, column: 26, scope: !91)
!117 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_connectSocket_0", scope: !91, file: !1, line: 12, type: !67)
!118 = !DILocation(line: 12, column: 11, scope: !91)
!119 = !DILocation(line: 13, column: 7, scope: !91)
!120 = !DILocation(line: 15, column: 93, scope: !121)
!121 = distinct !DILexicalBlock(scope: !91, file: !1, line: 14, column: 7)
!122 = !DILocation(line: 15, column: 91, scope: !121)
!123 = !DILocation(line: 16, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 16, column: 13)
!125 = !DILocation(line: 16, column: 95, scope: !124)
!126 = !DILocation(line: 16, column: 13, scope: !121)
!127 = !DILocation(line: 18, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 17, column: 9)
!129 = !DILocation(line: 21, column: 9, scope: !121)
!130 = !DILocation(line: 22, column: 85, scope: !121)
!131 = !DILocation(line: 22, column: 96, scope: !121)
!132 = !DILocation(line: 23, column: 103, scope: !121)
!133 = !DILocation(line: 23, column: 85, scope: !121)
!134 = !DILocation(line: 23, column: 94, scope: !121)
!135 = !DILocation(line: 23, column: 101, scope: !121)
!136 = !DILocation(line: 24, column: 96, scope: !121)
!137 = !DILocation(line: 24, column: 85, scope: !121)
!138 = !DILocation(line: 24, column: 94, scope: !121)
!139 = !DILocation(line: 25, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !121, file: !1, line: 25, column: 13)
!141 = !DILocation(line: 25, column: 104, scope: !140)
!142 = !DILocation(line: 25, column: 13, scope: !140)
!143 = !DILocation(line: 25, column: 289, scope: !140)
!144 = !DILocation(line: 25, column: 13, scope: !121)
!145 = !DILocation(line: 27, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !140, file: !1, line: 26, column: 9)
!147 = !DILocation(line: 30, column: 95, scope: !121)
!148 = !DILocation(line: 30, column: 178, scope: !121)
!149 = !DILocation(line: 30, column: 90, scope: !121)
!150 = !DILocation(line: 30, column: 88, scope: !121)
!151 = !DILocation(line: 31, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !121, file: !1, line: 31, column: 13)
!153 = !DILocation(line: 31, column: 93, scope: !152)
!154 = !DILocation(line: 31, column: 102, scope: !152)
!155 = !DILocation(line: 31, column: 106, scope: !152)
!156 = !DILocation(line: 31, column: 185, scope: !152)
!157 = !DILocation(line: 31, column: 13, scope: !121)
!158 = !DILocation(line: 33, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !1, line: 32, column: 9)
!160 = !DILocation(line: 36, column: 9, scope: !121)
!161 = !DILocation(line: 36, column: 89, scope: !121)
!162 = !DILocation(line: 36, column: 169, scope: !121)
!163 = !DILocation(line: 37, column: 89, scope: !121)
!164 = !DILocation(line: 37, column: 84, scope: !121)
!165 = !DILocation(line: 37, column: 82, scope: !121)
!166 = !DILocation(line: 38, column: 7, scope: !121)
!167 = !DILocation(line: 40, column: 11, scope: !168)
!168 = distinct !DILexicalBlock(scope: !91, file: !1, line: 40, column: 11)
!169 = !DILocation(line: 40, column: 93, scope: !168)
!170 = !DILocation(line: 40, column: 11, scope: !91)
!171 = !DILocation(line: 42, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 41, column: 7)
!173 = !DILocation(line: 42, column: 9, scope: !172)
!174 = !DILocation(line: 43, column: 7, scope: !172)
!175 = !DILocation(line: 46, column: 3, scope: !92)
!176 = !DILocation(line: 7, column: 227, scope: !87)
!177 = !DILocation(line: 7, column: 3, scope: !87)
!178 = distinct !{!178, !89, !179, !180}
!179 = !DILocation(line: 46, column: 3, scope: !84)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 48, column: 78, scope: !182)
!182 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 3)
!183 = !DILocation(line: 48, column: 8, scope: !182)
!184 = !DILocation(line: 48, column: 83, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 48, column: 3)
!186 = !DILocation(line: 48, column: 153, scope: !185)
!187 = !DILocation(line: 48, column: 3, scope: !182)
!188 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_i_1", scope: !189, file: !1, line: 51, type: !67)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 50, column: 5)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 49, column: 3)
!191 = !DILocation(line: 51, column: 11, scope: !189)
!192 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_buffer_0", scope: !189, file: !1, line: 52, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 320, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 10)
!196 = !DILocation(line: 52, column: 11, scope: !189)
!197 = !DILocation(line: 53, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !1, line: 53, column: 11)
!199 = !DILocation(line: 53, column: 84, scope: !198)
!200 = !DILocation(line: 53, column: 11, scope: !189)
!201 = !DILocation(line: 55, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 54, column: 7)
!203 = !DILocation(line: 55, column: 16, scope: !202)
!204 = !DILocation(line: 56, column: 84, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 56, column: 9)
!206 = !DILocation(line: 56, column: 14, scope: !205)
!207 = !DILocation(line: 56, column: 89, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 56, column: 9)
!209 = !DILocation(line: 56, column: 159, scope: !208)
!210 = !DILocation(line: 56, column: 9, scope: !205)
!211 = !DILocation(line: 58, column: 99, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 57, column: 9)
!213 = !DILocation(line: 58, column: 24, scope: !212)
!214 = !DILocation(line: 58, column: 11, scope: !212)
!215 = !DILocation(line: 59, column: 9, scope: !212)
!216 = !DILocation(line: 56, column: 234, scope: !208)
!217 = !DILocation(line: 56, column: 9, scope: !208)
!218 = distinct !{!218, !210, !219, !180}
!219 = !DILocation(line: 59, column: 9, scope: !205)
!220 = !DILocation(line: 61, column: 7, scope: !202)
!221 = !DILocation(line: 64, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !198, file: !1, line: 63, column: 7)
!223 = !DILocation(line: 68, column: 3, scope: !190)
!224 = !DILocation(line: 48, column: 227, scope: !185)
!225 = !DILocation(line: 48, column: 3, scope: !185)
!226 = distinct !{!226, !187, !227, !180}
!227 = !DILocation(line: 68, column: 3, scope: !182)
!228 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad_label_", file: !1, line: 70)
!229 = !DILocation(line: 70, column: 3, scope: !63)
!230 = !DILocation(line: 75, column: 1, scope: !63)
