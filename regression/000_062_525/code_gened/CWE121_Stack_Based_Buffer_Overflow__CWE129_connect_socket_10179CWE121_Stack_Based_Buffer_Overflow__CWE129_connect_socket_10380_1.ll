; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10380_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10380_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@globalTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10380_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B2_data_0 = alloca i32, align 4
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !79
  %0 = load i32, i32* @globalTrue, align 4, !dbg !80
  %tobool = icmp ne i32 %0, 0, !dbg !80
  br i1 %tobool, label %if.then, label %if.end21, !dbg !82

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !87, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !111
  br label %do.body, !dbg !112

do.body:                                          ; preds = %if.then
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !113
  store i32 %call, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !115
  %1 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !116
  %cmp = icmp eq i32 %1, -1, !dbg !118
  br i1 %cmp, label %if.then1, label %if.end, !dbg !119

if.then1:                                         ; preds = %do.body
  br label %do.end, !dbg !120

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !122
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !123
  store i16 2, i16* %sin_family, align 4, !dbg !124
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !125
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !126
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !127
  store i32 %call2, i32* %s_addr, align 4, !dbg !128
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !129
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !130
  store i16 %call3, i16* %sin_port, align 2, !dbg !131
  %3 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !132
  %4 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !134
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !135
  %cmp5 = icmp eq i32 %call4, -1, !dbg !136
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !137

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !138

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !140
  %6 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !141
  %call8 = call i64 @recv(i32 %5, i8* %6, i64 13, i32 0), !dbg !142
  %conv = trunc i64 %call8 to i32, !dbg !142
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !143
  %7 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !144
  %cmp9 = icmp eq i32 %7, -1, !dbg !146
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !147

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !148
  %cmp11 = icmp eq i32 %8, 0, !dbg !149
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !150

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !151

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !153
  %10 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !154
  %idxprom = sext i32 %10 to i64, !dbg !153
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !155
  %11 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !156
  %call15 = call i32 @atoi(i8* %11) #9, !dbg !157
  store i32 %call15, i32* %_goodB2G1_data_0, align 4, !dbg !158
  br label %do.end, !dbg !159

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then1
  %12 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !160
  %cmp16 = icmp ne i32 %12, -1, !dbg !162
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !163

if.then18:                                        ; preds = %do.end
  %13 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !164
  %call19 = call i32 @close(i32 %13), !dbg !166
  br label %if.end20, !dbg !167

if.end20:                                         ; preds = %if.then18, %do.end
  br label %if.end21, !dbg !168

if.end21:                                         ; preds = %if.end20, %entry
  %14 = load i32, i32* @globalFalse, align 4, !dbg !169
  %tobool22 = icmp ne i32 %14, 0, !dbg !169
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !171

if.then23:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !172
  br label %if.end37, !dbg !174

if.else:                                          ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !175, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !179, metadata !DIExpression()), !dbg !183
  %15 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !183
  %16 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !184
  %cmp24 = icmp sge i32 %16, 0, !dbg !186
  br i1 %cmp24, label %land.lhs.true, label %if.else35, !dbg !187

land.lhs.true:                                    ; preds = %if.else
  %17 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !188
  %cmp26 = icmp slt i32 %17, 10, !dbg !189
  br i1 %cmp26, label %if.then28, label %if.else35, !dbg !190

if.then28:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !191
  %idxprom29 = sext i32 %18 to i64, !dbg !193
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom29, !dbg !193
  store i32 1, i32* %arrayidx30, align 4, !dbg !194
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !195
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !198
  %cmp31 = icmp slt i32 %19, 10, !dbg !200
  br i1 %cmp31, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !202
  %idxprom33 = sext i32 %20 to i64, !dbg !204
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom33, !dbg !204
  %21 = load i32, i32* %arrayidx34, align 4, !dbg !204
  call void @printIntLine(i32 %21), !dbg !205
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !207
  %inc = add nsw i32 %22, 1, !dbg !207
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  br label %if.end36, !dbg !212

if.else35:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !213
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %for.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then23
  br label %goodB2G1_label_, !dbg !169

goodB2G1_label_:                                  ; preds = %if.end37
  call void @llvm.dbg.label(metadata !215), !dbg !216
  call void (...) @goodB2G2(), !dbg !217
  call void (...) @goodG2B1(), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_data_0, metadata !219, metadata !DIExpression()), !dbg !221
  store i32 -1, i32* %_goodG2B2_data_0, align 4, !dbg !222
  %23 = load i32, i32* @globalTrue, align 4, !dbg !223
  %tobool38 = icmp ne i32 %23, 0, !dbg !223
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !225

if.then39:                                        ; preds = %goodB2G1_label_
  store i32 7, i32* %_goodG2B2_data_0, align 4, !dbg !226
  br label %if.end40, !dbg !228

if.end40:                                         ; preds = %if.then39, %goodB2G1_label_
  %24 = load i32, i32* @globalTrue, align 4, !dbg !229
  %tobool41 = icmp ne i32 %24, 0, !dbg !229
  br i1 %tobool41, label %if.then42, label %if.end57, !dbg !231

if.then42:                                        ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B2_buffer_0, metadata !236, metadata !DIExpression()), !dbg !237
  %25 = bitcast [10 x i32]* %_goodG2B2_buffer_0 to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 40, i1 false), !dbg !237
  %26 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !238
  %cmp43 = icmp sge i32 %26, 0, !dbg !240
  br i1 %cmp43, label %if.then45, label %if.else55, !dbg !241

if.then45:                                        ; preds = %if.then42
  %27 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !242
  %28 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !244
  call void %27(i32 %28), !dbg !242
  store i32 0, i32* %_goodG2B2_i_0, align 4, !dbg !245
  br label %for.cond46, !dbg !247

for.cond46:                                       ; preds = %for.inc52, %if.then45
  %29 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !248
  %cmp47 = icmp slt i32 %29, 10, !dbg !250
  br i1 %cmp47, label %for.body49, label %for.end54, !dbg !251

for.body49:                                       ; preds = %for.cond46
  %30 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !252
  %idxprom50 = sext i32 %30 to i64, !dbg !254
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B2_buffer_0, i64 0, i64 %idxprom50, !dbg !254
  %31 = load i32, i32* %arrayidx51, align 4, !dbg !254
  call void @printIntLine(i32 %31), !dbg !255
  br label %for.inc52, !dbg !256

for.inc52:                                        ; preds = %for.body49
  %32 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !257
  %inc53 = add nsw i32 %32, 1, !dbg !257
  store i32 %inc53, i32* %_goodG2B2_i_0, align 4, !dbg !257
  br label %for.cond46, !dbg !258, !llvm.loop !259

for.end54:                                        ; preds = %for.cond46
  br label %if.end56, !dbg !261

if.else55:                                        ; preds = %if.then42
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !262
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %for.end54
  br label %if.end57, !dbg !264

if.end57:                                         ; preds = %if.end56, %if.end40
  br label %goodG2B2_label_, !dbg !229

goodG2B2_label_:                                  ; preds = %if.end57
  call void @llvm.dbg.label(metadata !265), !dbg !266
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10_good_label_, !dbg !267

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !268), !dbg !269
  ret void, !dbg !270
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

declare dso_local void @printLine(i8*) #2

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #2

declare dso_local void @goodG2B1(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10380_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_525/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10380_1", scope: !1, file: !1, line: 5, type: !64, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 5, type: !66)
!73 = !DILocation(line: 5, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 5, type: !67)
!75 = !DILocation(line: 5, column: 173, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !77, file: !1, line: 8, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 7, column: 3)
!78 = !DILocation(line: 8, column: 9, scope: !77)
!79 = !DILocation(line: 9, column: 22, scope: !77)
!80 = !DILocation(line: 10, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 10, column: 9)
!82 = !DILocation(line: 10, column: 9, scope: !77)
!83 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !84, file: !1, line: 13, type: !70)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 12, column: 7)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 11, column: 5)
!86 = !DILocation(line: 13, column: 13, scope: !84)
!87 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !84, file: !1, line: 14, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !89)
!89 = !{!90, !91, !97, !104}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !88, file: !17, line: 240, baseType: !51, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !88, file: !17, line: 241, baseType: !92, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !96, line: 40, baseType: !53)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !88, file: !17, line: 242, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !98, file: !17, line: 33, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 26, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !88, file: !17, line: 245, baseType: !105, size: 64, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !107)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DILocation(line: 14, column: 28, scope: !84)
!110 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !84, file: !1, line: 15, type: !70)
!111 = !DILocation(line: 15, column: 13, scope: !84)
!112 = !DILocation(line: 16, column: 9, scope: !84)
!113 = !DILocation(line: 18, column: 39, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !1, line: 17, column: 9)
!115 = !DILocation(line: 18, column: 37, scope: !114)
!116 = !DILocation(line: 19, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 19, column: 15)
!118 = !DILocation(line: 19, column: 41, scope: !117)
!119 = !DILocation(line: 19, column: 15, scope: !114)
!120 = !DILocation(line: 21, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 20, column: 11)
!122 = !DILocation(line: 24, column: 11, scope: !114)
!123 = !DILocation(line: 25, column: 31, scope: !114)
!124 = !DILocation(line: 25, column: 42, scope: !114)
!125 = !DILocation(line: 26, column: 49, scope: !114)
!126 = !DILocation(line: 26, column: 31, scope: !114)
!127 = !DILocation(line: 26, column: 40, scope: !114)
!128 = !DILocation(line: 26, column: 47, scope: !114)
!129 = !DILocation(line: 27, column: 42, scope: !114)
!130 = !DILocation(line: 27, column: 31, scope: !114)
!131 = !DILocation(line: 27, column: 40, scope: !114)
!132 = !DILocation(line: 28, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !114, file: !1, line: 28, column: 15)
!134 = !DILocation(line: 28, column: 50, scope: !133)
!135 = !DILocation(line: 28, column: 15, scope: !133)
!136 = !DILocation(line: 28, column: 123, scope: !133)
!137 = !DILocation(line: 28, column: 15, scope: !114)
!138 = !DILocation(line: 30, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 29, column: 11)
!140 = !DILocation(line: 33, column: 41, scope: !114)
!141 = !DILocation(line: 33, column: 68, scope: !114)
!142 = !DILocation(line: 33, column: 36, scope: !114)
!143 = !DILocation(line: 33, column: 34, scope: !114)
!144 = !DILocation(line: 34, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !114, file: !1, line: 34, column: 15)
!146 = !DILocation(line: 34, column: 39, scope: !145)
!147 = !DILocation(line: 34, column: 48, scope: !145)
!148 = !DILocation(line: 34, column: 52, scope: !145)
!149 = !DILocation(line: 34, column: 75, scope: !145)
!150 = !DILocation(line: 34, column: 15, scope: !114)
!151 = !DILocation(line: 36, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 35, column: 11)
!153 = !DILocation(line: 39, column: 11, scope: !114)
!154 = !DILocation(line: 39, column: 35, scope: !114)
!155 = !DILocation(line: 39, column: 59, scope: !114)
!156 = !DILocation(line: 40, column: 35, scope: !114)
!157 = !DILocation(line: 40, column: 30, scope: !114)
!158 = !DILocation(line: 40, column: 28, scope: !114)
!159 = !DILocation(line: 41, column: 9, scope: !114)
!160 = !DILocation(line: 43, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !84, file: !1, line: 43, column: 13)
!162 = !DILocation(line: 43, column: 39, scope: !161)
!163 = !DILocation(line: 43, column: 13, scope: !84)
!164 = !DILocation(line: 45, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 44, column: 9)
!166 = !DILocation(line: 45, column: 11, scope: !165)
!167 = !DILocation(line: 46, column: 9, scope: !165)
!168 = !DILocation(line: 49, column: 5, scope: !85)
!169 = !DILocation(line: 51, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !77, file: !1, line: 51, column: 9)
!171 = !DILocation(line: 51, column: 9, scope: !77)
!172 = !DILocation(line: 53, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 52, column: 5)
!174 = !DILocation(line: 54, column: 5, scope: !173)
!175 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !176, file: !1, line: 58, type: !70)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 57, column: 7)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 56, column: 5)
!178 = !DILocation(line: 58, column: 13, scope: !176)
!179 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !176, file: !1, line: 59, type: !180)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DILocation(line: 59, column: 13, scope: !176)
!184 = !DILocation(line: 60, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !176, file: !1, line: 60, column: 13)
!186 = !DILocation(line: 60, column: 31, scope: !185)
!187 = !DILocation(line: 60, column: 37, scope: !185)
!188 = !DILocation(line: 60, column: 41, scope: !185)
!189 = !DILocation(line: 60, column: 58, scope: !185)
!190 = !DILocation(line: 60, column: 13, scope: !176)
!191 = !DILocation(line: 62, column: 30, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !1, line: 61, column: 9)
!193 = !DILocation(line: 62, column: 11, scope: !192)
!194 = !DILocation(line: 62, column: 48, scope: !192)
!195 = !DILocation(line: 63, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 63, column: 11)
!197 = !DILocation(line: 63, column: 16, scope: !196)
!198 = !DILocation(line: 63, column: 35, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 63, column: 11)
!200 = !DILocation(line: 63, column: 49, scope: !199)
!201 = !DILocation(line: 63, column: 11, scope: !196)
!202 = !DILocation(line: 65, column: 45, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 64, column: 11)
!204 = !DILocation(line: 65, column: 26, scope: !203)
!205 = !DILocation(line: 65, column: 13, scope: !203)
!206 = !DILocation(line: 66, column: 11, scope: !203)
!207 = !DILocation(line: 63, column: 68, scope: !199)
!208 = !DILocation(line: 63, column: 11, scope: !199)
!209 = distinct !{!209, !201, !210, !211}
!210 = !DILocation(line: 66, column: 11, scope: !196)
!211 = !{!"llvm.loop.mustprogress"}
!212 = !DILocation(line: 68, column: 9, scope: !192)
!213 = !DILocation(line: 71, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !185, file: !1, line: 70, column: 9)
!215 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 77)
!216 = !DILocation(line: 77, column: 5, scope: !77)
!217 = !DILocation(line: 83, column: 3, scope: !63)
!218 = !DILocation(line: 84, column: 3, scope: !63)
!219 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !220, file: !1, line: 86, type: !70)
!220 = distinct !DILexicalBlock(scope: !63, file: !1, line: 85, column: 3)
!221 = !DILocation(line: 86, column: 9, scope: !220)
!222 = !DILocation(line: 87, column: 22, scope: !220)
!223 = !DILocation(line: 88, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 88, column: 9)
!225 = !DILocation(line: 88, column: 9, scope: !220)
!226 = !DILocation(line: 90, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 89, column: 5)
!228 = !DILocation(line: 91, column: 5, scope: !227)
!229 = !DILocation(line: 93, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !220, file: !1, line: 93, column: 9)
!231 = !DILocation(line: 93, column: 9, scope: !220)
!232 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !233, file: !1, line: 96, type: !70)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 95, column: 7)
!234 = distinct !DILexicalBlock(scope: !230, file: !1, line: 94, column: 5)
!235 = !DILocation(line: 96, column: 13, scope: !233)
!236 = !DILocalVariable(name: "_goodG2B2_buffer_0", scope: !233, file: !1, line: 97, type: !180)
!237 = !DILocation(line: 97, column: 13, scope: !233)
!238 = !DILocation(line: 98, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 98, column: 13)
!240 = !DILocation(line: 98, column: 30, scope: !239)
!241 = !DILocation(line: 98, column: 13, scope: !233)
!242 = !DILocation(line: 100, column: 11, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 99, column: 9)
!244 = !DILocation(line: 100, column: 18, scope: !243)
!245 = !DILocation(line: 101, column: 30, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 101, column: 11)
!247 = !DILocation(line: 101, column: 16, scope: !246)
!248 = !DILocation(line: 101, column: 35, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !1, line: 101, column: 11)
!250 = !DILocation(line: 101, column: 49, scope: !249)
!251 = !DILocation(line: 101, column: 11, scope: !246)
!252 = !DILocation(line: 103, column: 45, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 102, column: 11)
!254 = !DILocation(line: 103, column: 26, scope: !253)
!255 = !DILocation(line: 103, column: 13, scope: !253)
!256 = !DILocation(line: 104, column: 11, scope: !253)
!257 = !DILocation(line: 101, column: 68, scope: !249)
!258 = !DILocation(line: 101, column: 11, scope: !249)
!259 = distinct !{!259, !251, !260, !211}
!260 = !DILocation(line: 104, column: 11, scope: !246)
!261 = !DILocation(line: 106, column: 9, scope: !243)
!262 = !DILocation(line: 109, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !239, file: !1, line: 108, column: 9)
!264 = !DILocation(line: 113, column: 5, scope: !234)
!265 = !DILabel(scope: !220, name: "goodG2B2_label_", file: !1, line: 115)
!266 = !DILocation(line: 115, column: 5, scope: !220)
!267 = !DILocation(line: 120, column: 3, scope: !220)
!268 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_10_good_label_", file: !1, line: 121)
!269 = !DILocation(line: 121, column: 3, scope: !63)
!270 = !DILocation(line: 126, column: 1, scope: !63)
