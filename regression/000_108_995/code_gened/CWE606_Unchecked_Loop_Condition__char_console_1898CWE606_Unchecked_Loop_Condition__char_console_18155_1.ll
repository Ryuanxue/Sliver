; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  br label %goodB2G_source, !dbg !29

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !37
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !40
  %sub = sub i64 100, %2, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end18, !dbg !44

if.then:                                          ; preds = %goodB2G_source
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %sub1 = sub i64 100, %5, !dbg !51
  %conv = trunc i64 %sub1 to i32, !dbg !52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !54
  %cmp3 = icmp ne i8* %call2, null, !dbg !55
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !56

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !57
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !59
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !60
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %cmp7 = icmp ugt i64 %8, 0, !dbg !63
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !65
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !66
  %sub9 = sub i64 %10, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !65
  %11 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv10 = sext i8 %11 to i32, !dbg !65
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !68
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !69

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !70
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !72
  %sub14 = sub i64 %13, 1, !dbg !73
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !70
  store i8 0, i8* %arrayidx15, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !76

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !79
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !80
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !81
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !82

if.end18:                                         ; preds = %if.end17, %goodB2G_source
  br label %goodB2G_sink, !dbg !83

goodB2G_sink:                                     ; preds = %if.end18
  call void @llvm.dbg.label(metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !86, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !91, metadata !DIExpression()), !dbg !92
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !93
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !95
  %cmp20 = icmp eq i32 %call19, 1, !dbg !96
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !97

if.then22:                                        ; preds = %goodB2G_sink
  %17 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !98
  %cmp23 = icmp slt i32 %17, 10000, !dbg !101
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !102

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !103
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !108
  %19 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !110
  %cmp26 = icmp slt i32 %18, %19, !dbg !111
  br i1 %cmp26, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !113
  %inc = add nsw i32 %20, 1, !dbg !113
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !113
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !116
  %inc28 = add nsw i32 %21, 1, !dbg !116
  store i32 %inc28, i32* %_goodB2G_i_0, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !121
  call void @printIntLine(i32 %22), !dbg !122
  br label %if.end29, !dbg !123

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !124

if.end30:                                         ; preds = %if.end29, %goodB2G_sink
  br label %goodB2G_label_, !dbg !125

goodB2G_label_:                                   ; preds = %if.end30
  call void @llvm.dbg.label(metadata !126), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !131, metadata !DIExpression()), !dbg !132
  %23 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !133
  store i8* %arraydecay31, i8** %_goodG2B_data_0, align 8, !dbg !134
  br label %goodG2B_source, !dbg !135

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !136), !dbg !137
  %24 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !138
  %call32 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !140
  br label %goodG2B_sink, !dbg !141

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !142), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !149, metadata !DIExpression()), !dbg !150
  %25 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !151
  %call33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !153
  %cmp34 = icmp eq i32 %call33, 1, !dbg !154
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !155

if.then36:                                        ; preds = %goodG2B_sink
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !156
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !158
  %27 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !159
  call void %26(i32 %27), !dbg !158
  %28 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !160
  call void @printIntLine(i32 %28), !dbg !161
  br label %if.end37, !dbg !162

if.end37:                                         ; preds = %if.then36, %goodG2B_sink
  br label %goodG2B_label_, !dbg !163

goodG2B_label_:                                   ; preds = %if.end37
  call void @llvm.dbg.label(metadata !164), !dbg !165
  br label %CWE606_Unchecked_Loop_Condition__char_console_18_good_label_, !dbg !166

CWE606_Unchecked_Loop_Condition__char_console_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !167), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_995/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_1898CWE606_Unchecked_Loop_Condition__char_console_18155_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 116, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 140, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 5, scope: !22)
!30 = !DILabel(scope: !22, name: "goodB2G_source", file: !1, line: 9)
!31 = !DILocation(line: 9, column: 5, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !33, file: !1, line: 11, type: !34)
!33 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 11, column: 14, scope: !33)
!38 = !DILocation(line: 11, column: 42, scope: !33)
!39 = !DILocation(line: 11, column: 35, scope: !33)
!40 = !DILocation(line: 12, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 11)
!42 = !DILocation(line: 12, column: 16, scope: !41)
!43 = !DILocation(line: 12, column: 38, scope: !41)
!44 = !DILocation(line: 12, column: 11, scope: !33)
!45 = !DILocation(line: 14, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 7)
!48 = !DILocation(line: 14, column: 37, scope: !46)
!49 = !DILocation(line: 14, column: 35, scope: !46)
!50 = !DILocation(line: 14, column: 70, scope: !46)
!51 = !DILocation(line: 14, column: 68, scope: !46)
!52 = !DILocation(line: 14, column: 57, scope: !46)
!53 = !DILocation(line: 14, column: 91, scope: !46)
!54 = !DILocation(line: 14, column: 13, scope: !46)
!55 = !DILocation(line: 14, column: 98, scope: !46)
!56 = !DILocation(line: 14, column: 13, scope: !47)
!57 = !DILocation(line: 16, column: 39, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 9)
!59 = !DILocation(line: 16, column: 32, scope: !58)
!60 = !DILocation(line: 16, column: 30, scope: !58)
!61 = !DILocation(line: 17, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 17, column: 15)
!63 = !DILocation(line: 17, column: 35, scope: !62)
!64 = !DILocation(line: 17, column: 40, scope: !62)
!65 = !DILocation(line: 17, column: 44, scope: !62)
!66 = !DILocation(line: 17, column: 60, scope: !62)
!67 = !DILocation(line: 17, column: 79, scope: !62)
!68 = !DILocation(line: 17, column: 84, scope: !62)
!69 = !DILocation(line: 17, column: 15, scope: !58)
!70 = !DILocation(line: 19, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 18, column: 11)
!72 = !DILocation(line: 19, column: 29, scope: !71)
!73 = !DILocation(line: 19, column: 48, scope: !71)
!74 = !DILocation(line: 19, column: 53, scope: !71)
!75 = !DILocation(line: 20, column: 11, scope: !71)
!76 = !DILocation(line: 22, column: 9, scope: !58)
!77 = !DILocation(line: 25, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 24, column: 9)
!79 = !DILocation(line: 26, column: 11, scope: !78)
!80 = !DILocation(line: 26, column: 27, scope: !78)
!81 = !DILocation(line: 26, column: 47, scope: !78)
!82 = !DILocation(line: 29, column: 7, scope: !47)
!83 = !DILocation(line: 33, column: 5, scope: !22)
!84 = !DILabel(scope: !22, name: "goodB2G_sink", file: !1, line: 34)
!85 = !DILocation(line: 34, column: 5, scope: !22)
!86 = !DILocalVariable(name: "_goodB2G_i_0", scope: !87, file: !1, line: 36, type: !4)
!87 = distinct !DILexicalBlock(scope: !22, file: !1, line: 35, column: 5)
!88 = !DILocation(line: 36, column: 11, scope: !87)
!89 = !DILocalVariable(name: "_goodB2G_n_0", scope: !87, file: !1, line: 37, type: !4)
!90 = !DILocation(line: 37, column: 11, scope: !87)
!91 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !87, file: !1, line: 38, type: !4)
!92 = !DILocation(line: 38, column: 11, scope: !87)
!93 = !DILocation(line: 39, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 39, column: 11)
!95 = !DILocation(line: 39, column: 11, scope: !94)
!96 = !DILocation(line: 39, column: 56, scope: !94)
!97 = !DILocation(line: 39, column: 11, scope: !87)
!98 = !DILocation(line: 41, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 41, column: 13)
!100 = distinct !DILexicalBlock(scope: !94, file: !1, line: 40, column: 7)
!101 = !DILocation(line: 41, column: 26, scope: !99)
!102 = !DILocation(line: 41, column: 13, scope: !100)
!103 = !DILocation(line: 43, column: 34, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 42, column: 9)
!105 = !DILocation(line: 44, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !104, file: !1, line: 44, column: 11)
!107 = !DILocation(line: 44, column: 16, scope: !106)
!108 = !DILocation(line: 44, column: 34, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 44, column: 11)
!110 = !DILocation(line: 44, column: 49, scope: !109)
!111 = !DILocation(line: 44, column: 47, scope: !109)
!112 = !DILocation(line: 44, column: 11, scope: !106)
!113 = !DILocation(line: 46, column: 35, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 45, column: 11)
!115 = !DILocation(line: 47, column: 11, scope: !114)
!116 = !DILocation(line: 44, column: 75, scope: !109)
!117 = !DILocation(line: 44, column: 11, scope: !109)
!118 = distinct !{!118, !112, !119, !120}
!119 = !DILocation(line: 47, column: 11, scope: !106)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !DILocation(line: 49, column: 24, scope: !104)
!122 = !DILocation(line: 49, column: 11, scope: !104)
!123 = !DILocation(line: 50, column: 9, scope: !104)
!124 = !DILocation(line: 52, column: 7, scope: !100)
!125 = !DILocation(line: 54, column: 5, scope: !87)
!126 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 56)
!127 = !DILocation(line: 56, column: 5, scope: !22)
!128 = !DILocalVariable(name: "_goodG2B_data_0", scope: !129, file: !1, line: 63, type: !12)
!129 = distinct !DILexicalBlock(scope: !9, file: !1, line: 62, column: 3)
!130 = !DILocation(line: 63, column: 11, scope: !129)
!131 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !129, file: !1, line: 64, type: !23)
!132 = !DILocation(line: 64, column: 10, scope: !129)
!133 = !DILocation(line: 65, column: 23, scope: !129)
!134 = !DILocation(line: 65, column: 21, scope: !129)
!135 = !DILocation(line: 66, column: 5, scope: !129)
!136 = !DILabel(scope: !129, name: "goodG2B_source", file: !1, line: 67)
!137 = !DILocation(line: 67, column: 5, scope: !129)
!138 = !DILocation(line: 69, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !1, line: 68, column: 5)
!140 = !DILocation(line: 69, column: 7, scope: !139)
!141 = !DILocation(line: 72, column: 5, scope: !129)
!142 = !DILabel(scope: !129, name: "goodG2B_sink", file: !1, line: 73)
!143 = !DILocation(line: 73, column: 5, scope: !129)
!144 = !DILocalVariable(name: "_goodG2B_i_0", scope: !145, file: !1, line: 75, type: !4)
!145 = distinct !DILexicalBlock(scope: !129, file: !1, line: 74, column: 5)
!146 = !DILocation(line: 75, column: 11, scope: !145)
!147 = !DILocalVariable(name: "_goodG2B_n_0", scope: !145, file: !1, line: 76, type: !4)
!148 = !DILocation(line: 76, column: 11, scope: !145)
!149 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !145, file: !1, line: 77, type: !4)
!150 = !DILocation(line: 77, column: 11, scope: !145)
!151 = !DILocation(line: 78, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 78, column: 11)
!153 = !DILocation(line: 78, column: 11, scope: !152)
!154 = !DILocation(line: 78, column: 56, scope: !152)
!155 = !DILocation(line: 78, column: 11, scope: !145)
!156 = !DILocation(line: 80, column: 32, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 79, column: 7)
!158 = !DILocation(line: 81, column: 9, scope: !157)
!159 = !DILocation(line: 81, column: 16, scope: !157)
!160 = !DILocation(line: 82, column: 22, scope: !157)
!161 = !DILocation(line: 82, column: 9, scope: !157)
!162 = !DILocation(line: 83, column: 7, scope: !157)
!163 = !DILocation(line: 85, column: 5, scope: !145)
!164 = !DILabel(scope: !129, name: "goodG2B_label_", file: !1, line: 87)
!165 = !DILocation(line: 87, column: 5, scope: !129)
!166 = !DILocation(line: 92, column: 3, scope: !129)
!167 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_18_good_label_", file: !1, line: 93)
!168 = !DILocation(line: 93, column: 3, scope: !9)
!169 = !DILocation(line: 98, column: 1, scope: !9)
