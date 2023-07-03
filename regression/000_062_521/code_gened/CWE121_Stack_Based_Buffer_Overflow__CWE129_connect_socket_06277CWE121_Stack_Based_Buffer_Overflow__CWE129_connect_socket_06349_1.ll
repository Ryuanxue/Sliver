; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06277CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06349_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06277CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06349_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@STATIC_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06277CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06349_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_connectSocket_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !79
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !80
  %cmp = icmp eq i32 %0, 5, !dbg !82
  br i1 %cmp, label %if.then, label %if.end22, !dbg !83

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !88, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_connectSocket_0, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !112
  br label %do.body, !dbg !113

do.body:                                          ; preds = %if.then
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !114
  store i32 %call, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !116
  %1 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !117
  %cmp1 = icmp eq i32 %1, -1, !dbg !119
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !120

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !121

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !123
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !124
  store i16 2, i16* %sin_family, align 4, !dbg !125
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !126
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !127
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !128
  store i32 %call3, i32* %s_addr, align 4, !dbg !129
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !130
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !131
  store i16 %call4, i16* %sin_port, align 2, !dbg !132
  %3 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !133
  %4 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !135
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !136
  %cmp6 = icmp eq i32 %call5, -1, !dbg !137
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !138

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !139

if.end8:                                          ; preds = %if.end
  %5 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !141
  %6 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !142
  %call9 = call i64 @recv(i32 %5, i8* %6, i64 13, i32 0), !dbg !143
  %conv = trunc i64 %call9 to i32, !dbg !143
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !144
  %7 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !145
  %cmp10 = icmp eq i32 %7, -1, !dbg !147
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !148

lor.lhs.false:                                    ; preds = %if.end8
  %8 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !149
  %cmp12 = icmp eq i32 %8, 0, !dbg !150
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !151

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !152

if.end15:                                         ; preds = %lor.lhs.false
  %9 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !154
  %10 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !155
  %idxprom = sext i32 %10 to i64, !dbg !154
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !154
  store i8 0, i8* %arrayidx, align 1, !dbg !156
  %11 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !157
  %call16 = call i32 @atoi(i8* %11) #9, !dbg !158
  store i32 %call16, i32* %_goodB2G2_data_0, align 4, !dbg !159
  br label %do.end, !dbg !160

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %12 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !161
  %cmp17 = icmp ne i32 %12, -1, !dbg !163
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !164

if.then19:                                        ; preds = %do.end
  %13 = load i32, i32* %_goodB2G2_connectSocket_0, align 4, !dbg !165
  %call20 = call i32 @close(i32 %13), !dbg !167
  br label %if.end21, !dbg !168

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !169

if.end22:                                         ; preds = %if.end21, %entry
  %14 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !170
  %cmp23 = icmp eq i32 %14, 5, !dbg !172
  br i1 %cmp23, label %if.then25, label %if.end38, !dbg !173

if.then25:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !174, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !178, metadata !DIExpression()), !dbg !182
  %15 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !182
  %16 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !183
  %cmp26 = icmp sge i32 %16, 0, !dbg !185
  br i1 %cmp26, label %land.lhs.true, label %if.else, !dbg !186

land.lhs.true:                                    ; preds = %if.then25
  %17 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !187
  %cmp28 = icmp slt i32 %17, 10, !dbg !188
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !189

if.then30:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !190
  %idxprom31 = sext i32 %18 to i64, !dbg !192
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom31, !dbg !192
  store i32 1, i32* %arrayidx32, align 4, !dbg !193
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !194
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.then30
  %19 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !197
  %cmp33 = icmp slt i32 %19, 10, !dbg !199
  br i1 %cmp33, label %for.body, label %for.end, !dbg !200

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !201
  %idxprom35 = sext i32 %20 to i64, !dbg !203
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom35, !dbg !203
  %21 = load i32, i32* %arrayidx36, align 4, !dbg !203
  call void @printIntLine(i32 %21), !dbg !204
  br label %for.inc, !dbg !205

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !206
  %inc = add nsw i32 %22, 1, !dbg !206
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !206
  br label %for.cond, !dbg !207, !llvm.loop !208

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !211

if.else:                                          ; preds = %land.lhs.true, %if.then25
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !212
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end
  br label %if.end38, !dbg !214

if.end38:                                         ; preds = %if.end37, %if.end22
  br label %goodB2G2_label_, !dbg !215

goodB2G2_label_:                                  ; preds = %if.end38
  call void @llvm.dbg.label(metadata !216), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !218, metadata !DIExpression()), !dbg !220
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !221
  %23 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !222
  %cmp39 = icmp ne i32 %23, 5, !dbg !224
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !225

if.then41:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !226
  br label %if.end43, !dbg !228

if.else42:                                        ; preds = %goodB2G2_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !229
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  %24 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !231
  %cmp44 = icmp eq i32 %24, 5, !dbg !233
  br i1 %cmp44, label %if.then46, label %if.end61, !dbg !234

if.then46:                                        ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !235, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !239, metadata !DIExpression()), !dbg !240
  %25 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !240
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 40, i1 false), !dbg !240
  %26 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !241
  %cmp47 = icmp sge i32 %26, 0, !dbg !243
  br i1 %cmp47, label %if.then49, label %if.else59, !dbg !244

if.then49:                                        ; preds = %if.then46
  %27 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !245
  %28 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !247
  call void %27(i32 %28), !dbg !245
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !248
  br label %for.cond50, !dbg !250

for.cond50:                                       ; preds = %for.inc56, %if.then49
  %29 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !251
  %cmp51 = icmp slt i32 %29, 10, !dbg !253
  br i1 %cmp51, label %for.body53, label %for.end58, !dbg !254

for.body53:                                       ; preds = %for.cond50
  %30 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !255
  %idxprom54 = sext i32 %30 to i64, !dbg !257
  %arrayidx55 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom54, !dbg !257
  %31 = load i32, i32* %arrayidx55, align 4, !dbg !257
  call void @printIntLine(i32 %31), !dbg !258
  br label %for.inc56, !dbg !259

for.inc56:                                        ; preds = %for.body53
  %32 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !260
  %inc57 = add nsw i32 %32, 1, !dbg !260
  store i32 %inc57, i32* %_goodG2B1_i_0, align 4, !dbg !260
  br label %for.cond50, !dbg !261, !llvm.loop !262

for.end58:                                        ; preds = %for.cond50
  br label %if.end60, !dbg !264

if.else59:                                        ; preds = %if.then46
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !265
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %for.end58
  br label %if.end61, !dbg !267

if.end61:                                         ; preds = %if.end60, %if.end43
  br label %goodG2B1_label_, !dbg !268

goodG2B1_label_:                                  ; preds = %if.end61
  call void @llvm.dbg.label(metadata !269), !dbg !270
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good_label_, !dbg !271

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !272), !dbg !273
  ret void, !dbg !274
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06277CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06349_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_521/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06277CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06349_1", scope: !1, file: !1, line: 4, type: !64, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 4, type: !66)
!73 = !DILocation(line: 4, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 4, type: !67)
!75 = !DILocation(line: 4, column: 173, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !77, file: !1, line: 7, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 6, column: 3)
!78 = !DILocation(line: 7, column: 9, scope: !77)
!79 = !DILocation(line: 8, column: 22, scope: !77)
!80 = !DILocation(line: 9, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 9, column: 9)
!82 = !DILocation(line: 9, column: 27, scope: !81)
!83 = !DILocation(line: 9, column: 9, scope: !77)
!84 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !85, file: !1, line: 12, type: !70)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 11, column: 7)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 10, column: 5)
!87 = !DILocation(line: 12, column: 13, scope: !85)
!88 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !85, file: !1, line: 13, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !90)
!90 = !{!91, !92, !98, !105}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !89, file: !17, line: 240, baseType: !51, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !89, file: !17, line: 241, baseType: !93, size: 16, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 25, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !97, line: 40, baseType: !53)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !89, file: !17, line: 242, baseType: !99, size: 32, offset: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !99, file: !17, line: 33, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 26, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !97, line: 42, baseType: !5)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !89, file: !17, line: 245, baseType: !106, size: 64, offset: 64)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !108)
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DILocation(line: 13, column: 28, scope: !85)
!111 = !DILocalVariable(name: "_goodB2G2_connectSocket_0", scope: !85, file: !1, line: 14, type: !70)
!112 = !DILocation(line: 14, column: 13, scope: !85)
!113 = !DILocation(line: 15, column: 9, scope: !85)
!114 = !DILocation(line: 17, column: 39, scope: !115)
!115 = distinct !DILexicalBlock(scope: !85, file: !1, line: 16, column: 9)
!116 = !DILocation(line: 17, column: 37, scope: !115)
!117 = !DILocation(line: 18, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 18, column: 15)
!119 = !DILocation(line: 18, column: 41, scope: !118)
!120 = !DILocation(line: 18, column: 15, scope: !115)
!121 = !DILocation(line: 20, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 19, column: 11)
!123 = !DILocation(line: 23, column: 11, scope: !115)
!124 = !DILocation(line: 24, column: 31, scope: !115)
!125 = !DILocation(line: 24, column: 42, scope: !115)
!126 = !DILocation(line: 25, column: 49, scope: !115)
!127 = !DILocation(line: 25, column: 31, scope: !115)
!128 = !DILocation(line: 25, column: 40, scope: !115)
!129 = !DILocation(line: 25, column: 47, scope: !115)
!130 = !DILocation(line: 26, column: 42, scope: !115)
!131 = !DILocation(line: 26, column: 31, scope: !115)
!132 = !DILocation(line: 26, column: 40, scope: !115)
!133 = !DILocation(line: 27, column: 23, scope: !134)
!134 = distinct !DILexicalBlock(scope: !115, file: !1, line: 27, column: 15)
!135 = !DILocation(line: 27, column: 50, scope: !134)
!136 = !DILocation(line: 27, column: 15, scope: !134)
!137 = !DILocation(line: 27, column: 123, scope: !134)
!138 = !DILocation(line: 27, column: 15, scope: !115)
!139 = !DILocation(line: 29, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 28, column: 11)
!141 = !DILocation(line: 32, column: 41, scope: !115)
!142 = !DILocation(line: 32, column: 68, scope: !115)
!143 = !DILocation(line: 32, column: 36, scope: !115)
!144 = !DILocation(line: 32, column: 34, scope: !115)
!145 = !DILocation(line: 33, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !115, file: !1, line: 33, column: 15)
!147 = !DILocation(line: 33, column: 39, scope: !146)
!148 = !DILocation(line: 33, column: 48, scope: !146)
!149 = !DILocation(line: 33, column: 52, scope: !146)
!150 = !DILocation(line: 33, column: 75, scope: !146)
!151 = !DILocation(line: 33, column: 15, scope: !115)
!152 = !DILocation(line: 35, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !146, file: !1, line: 34, column: 11)
!154 = !DILocation(line: 38, column: 11, scope: !115)
!155 = !DILocation(line: 38, column: 35, scope: !115)
!156 = !DILocation(line: 38, column: 59, scope: !115)
!157 = !DILocation(line: 39, column: 35, scope: !115)
!158 = !DILocation(line: 39, column: 30, scope: !115)
!159 = !DILocation(line: 39, column: 28, scope: !115)
!160 = !DILocation(line: 40, column: 9, scope: !115)
!161 = !DILocation(line: 42, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !85, file: !1, line: 42, column: 13)
!163 = !DILocation(line: 42, column: 39, scope: !162)
!164 = !DILocation(line: 42, column: 13, scope: !85)
!165 = !DILocation(line: 44, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 43, column: 9)
!167 = !DILocation(line: 44, column: 11, scope: !166)
!168 = !DILocation(line: 45, column: 9, scope: !166)
!169 = !DILocation(line: 48, column: 5, scope: !86)
!170 = !DILocation(line: 50, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !77, file: !1, line: 50, column: 9)
!172 = !DILocation(line: 50, column: 27, scope: !171)
!173 = !DILocation(line: 50, column: 9, scope: !77)
!174 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !175, file: !1, line: 53, type: !70)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 52, column: 7)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 51, column: 5)
!177 = !DILocation(line: 53, column: 13, scope: !175)
!178 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !175, file: !1, line: 54, type: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 10)
!182 = !DILocation(line: 54, column: 13, scope: !175)
!183 = !DILocation(line: 55, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !1, line: 55, column: 13)
!185 = !DILocation(line: 55, column: 31, scope: !184)
!186 = !DILocation(line: 55, column: 37, scope: !184)
!187 = !DILocation(line: 55, column: 41, scope: !184)
!188 = !DILocation(line: 55, column: 58, scope: !184)
!189 = !DILocation(line: 55, column: 13, scope: !175)
!190 = !DILocation(line: 57, column: 30, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !1, line: 56, column: 9)
!192 = !DILocation(line: 57, column: 11, scope: !191)
!193 = !DILocation(line: 57, column: 48, scope: !191)
!194 = !DILocation(line: 58, column: 30, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 58, column: 11)
!196 = !DILocation(line: 58, column: 16, scope: !195)
!197 = !DILocation(line: 58, column: 35, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 58, column: 11)
!199 = !DILocation(line: 58, column: 49, scope: !198)
!200 = !DILocation(line: 58, column: 11, scope: !195)
!201 = !DILocation(line: 60, column: 45, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 59, column: 11)
!203 = !DILocation(line: 60, column: 26, scope: !202)
!204 = !DILocation(line: 60, column: 13, scope: !202)
!205 = !DILocation(line: 61, column: 11, scope: !202)
!206 = !DILocation(line: 58, column: 68, scope: !198)
!207 = !DILocation(line: 58, column: 11, scope: !198)
!208 = distinct !{!208, !200, !209, !210}
!209 = !DILocation(line: 61, column: 11, scope: !195)
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 63, column: 9, scope: !191)
!212 = !DILocation(line: 66, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !184, file: !1, line: 65, column: 9)
!214 = !DILocation(line: 70, column: 5, scope: !176)
!215 = !DILocation(line: 50, column: 30, scope: !171)
!216 = !DILabel(scope: !77, name: "goodB2G2_label_", file: !1, line: 72)
!217 = !DILocation(line: 72, column: 5, scope: !77)
!218 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !219, file: !1, line: 79, type: !70)
!219 = distinct !DILexicalBlock(scope: !63, file: !1, line: 78, column: 3)
!220 = !DILocation(line: 79, column: 9, scope: !219)
!221 = !DILocation(line: 80, column: 22, scope: !219)
!222 = !DILocation(line: 81, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 81, column: 9)
!224 = !DILocation(line: 81, column: 27, scope: !223)
!225 = !DILocation(line: 81, column: 9, scope: !219)
!226 = !DILocation(line: 83, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 82, column: 5)
!228 = !DILocation(line: 84, column: 5, scope: !227)
!229 = !DILocation(line: 87, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !1, line: 86, column: 5)
!231 = !DILocation(line: 90, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !219, file: !1, line: 90, column: 9)
!233 = !DILocation(line: 90, column: 27, scope: !232)
!234 = !DILocation(line: 90, column: 9, scope: !219)
!235 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !236, file: !1, line: 93, type: !70)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 92, column: 7)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 91, column: 5)
!238 = !DILocation(line: 93, column: 13, scope: !236)
!239 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !236, file: !1, line: 94, type: !179)
!240 = !DILocation(line: 94, column: 13, scope: !236)
!241 = !DILocation(line: 95, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 95, column: 13)
!243 = !DILocation(line: 95, column: 30, scope: !242)
!244 = !DILocation(line: 95, column: 13, scope: !236)
!245 = !DILocation(line: 97, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 96, column: 9)
!247 = !DILocation(line: 97, column: 18, scope: !246)
!248 = !DILocation(line: 98, column: 30, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !1, line: 98, column: 11)
!250 = !DILocation(line: 98, column: 16, scope: !249)
!251 = !DILocation(line: 98, column: 35, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 98, column: 11)
!253 = !DILocation(line: 98, column: 49, scope: !252)
!254 = !DILocation(line: 98, column: 11, scope: !249)
!255 = !DILocation(line: 100, column: 45, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 99, column: 11)
!257 = !DILocation(line: 100, column: 26, scope: !256)
!258 = !DILocation(line: 100, column: 13, scope: !256)
!259 = !DILocation(line: 101, column: 11, scope: !256)
!260 = !DILocation(line: 98, column: 68, scope: !252)
!261 = !DILocation(line: 98, column: 11, scope: !252)
!262 = distinct !{!262, !254, !263, !210}
!263 = !DILocation(line: 101, column: 11, scope: !249)
!264 = !DILocation(line: 103, column: 9, scope: !246)
!265 = !DILocation(line: 106, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !242, file: !1, line: 105, column: 9)
!267 = !DILocation(line: 110, column: 5, scope: !237)
!268 = !DILocation(line: 90, column: 30, scope: !232)
!269 = !DILabel(scope: !219, name: "goodG2B1_label_", file: !1, line: 112)
!270 = !DILocation(line: 112, column: 5, scope: !219)
!271 = !DILocation(line: 117, column: 3, scope: !219)
!272 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_06_good_label_", file: !1, line: 118)
!273 = !DILocation(line: 118, column: 3, scope: !63)
!274 = !DILocation(line: 123, column: 1, scope: !63)
