; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17129_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17129_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17129_1(i8* %_goodB2G_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !32
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !36
  %cmp = icmp slt i32 %1, 1, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !40, metadata !DIExpression()), !dbg !46
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !47
  %call = call i64 @strlen(i8* %2) #6, !dbg !48
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %3 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %3, !dbg !51
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !52
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !53

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !54
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !57
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !58
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !59
  %sub2 = sub i64 100, %6, !dbg !60
  %conv = trunc i64 %sub2 to i32, !dbg !61
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !62
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !63
  %cmp4 = icmp ne i8* %call3, null, !dbg !64
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !65

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !66
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !68
  store i64 %call7, i64* %_goodB2G_dataLen_0, align 8, !dbg !69
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !70
  %cmp8 = icmp ugt i64 %9, 0, !dbg !72
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !73

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !74
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !75
  %sub10 = sub i64 %11, 1, !dbg !76
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !74
  %12 = load i8, i8* %arrayidx, align 1, !dbg !74
  %conv11 = sext i8 %12 to i32, !dbg !74
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !77
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !78

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !79
  %14 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !81
  %sub15 = sub i64 %14, 1, !dbg !82
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !83
  br label %if.end, !dbg !84

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !85

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !86
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !88
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !89
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !88
  store i8 0, i8* %arrayidx17, align 1, !dbg !90
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !91

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !93
  %inc = add nsw i32 %17, 1, !dbg !93
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !98
  br label %for.cond20, !dbg !100

for.cond20:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !101
  %cmp21 = icmp slt i32 %18, 1, !dbg !103
  br i1 %cmp21, label %for.body23, label %for.end27, !dbg !104

for.body23:                                       ; preds = %for.cond20
  %19 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !105
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19), !dbg !107
  br label %for.inc25, !dbg !108

for.inc25:                                        ; preds = %for.body23
  %20 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !109
  %inc26 = add nsw i32 %20, 1, !dbg !109
  store i32 %inc26, i32* %_goodB2G_k_0, align 4, !dbg !109
  br label %for.cond20, !dbg !110, !llvm.loop !111

for.end27:                                        ; preds = %for.cond20
  br label %goodB2G_label_, !dbg !112

goodB2G_label_:                                   ; preds = %for.end27
  call void @llvm.dbg.label(metadata !113), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !122, metadata !DIExpression()), !dbg !123
  %21 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 100, i1 false), !dbg !123
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !124
  store i8* %arraydecay28, i8** %_goodG2B_data_0, align 8, !dbg !125
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !126
  br label %for.cond29, !dbg !128

for.cond29:                                       ; preds = %for.inc34, %goodB2G_label_
  %22 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !129
  %cmp30 = icmp slt i32 %22, 1, !dbg !131
  br i1 %cmp30, label %for.body32, label %for.end36, !dbg !132

for.body32:                                       ; preds = %for.cond29
  %23 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !133
  %call33 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !135
  br label %for.inc34, !dbg !136

for.inc34:                                        ; preds = %for.body32
  %24 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !137
  %inc35 = add nsw i32 %24, 1, !dbg !137
  store i32 %inc35, i32* %_goodG2B_h_0, align 4, !dbg !137
  br label %for.cond29, !dbg !138, !llvm.loop !139

for.end36:                                        ; preds = %for.cond29
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !141
  br label %for.cond37, !dbg !143

for.cond37:                                       ; preds = %for.inc41, %for.end36
  %25 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !144
  %cmp38 = icmp slt i32 %25, 1, !dbg !146
  br i1 %cmp38, label %for.body40, label %for.end43, !dbg !147

for.body40:                                       ; preds = %for.cond37
  %26 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !148
  %27 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !150
  call void %26(i8* %27), !dbg !148
  br label %for.inc41, !dbg !151

for.inc41:                                        ; preds = %for.body40
  %28 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !152
  %inc42 = add nsw i32 %28, 1, !dbg !152
  store i32 %inc42, i32* %_goodG2B_j_0, align 4, !dbg !152
  br label %for.cond37, !dbg !153, !llvm.loop !154

for.end43:                                        ; preds = %for.cond37
  br label %goodG2B_label_, !dbg !155

goodG2B_label_:                                   ; preds = %for.end43
  call void @llvm.dbg.label(metadata !156), !dbg !157
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_17_good_label_, !dbg !158

CWE134_Uncontrolled_Format_String__char_console_printf_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !159), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17129_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17129_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 134, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 158, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_i_0", scope: !22, file: !1, line: 6, type: !4)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DILocation(line: 6, column: 9, scope: !22)
!24 = !DILocalVariable(name: "_goodB2G_k_0", scope: !22, file: !1, line: 7, type: !4)
!25 = !DILocation(line: 7, column: 9, scope: !22)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 8, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 8, column: 10, scope: !22)
!31 = !DILocation(line: 9, column: 23, scope: !22)
!32 = !DILocation(line: 9, column: 21, scope: !22)
!33 = !DILocation(line: 10, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!35 = !DILocation(line: 10, column: 10, scope: !34)
!36 = !DILocation(line: 10, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 10, column: 41, scope: !37)
!39 = !DILocation(line: 10, column: 5, scope: !34)
!40 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !41, file: !1, line: 13, type: !43)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 7)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 5)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 13, column: 16, scope: !41)
!47 = !DILocation(line: 13, column: 44, scope: !41)
!48 = !DILocation(line: 13, column: 37, scope: !41)
!49 = !DILocation(line: 14, column: 20, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 13)
!51 = !DILocation(line: 14, column: 18, scope: !50)
!52 = !DILocation(line: 14, column: 40, scope: !50)
!53 = !DILocation(line: 14, column: 13, scope: !41)
!54 = !DILocation(line: 16, column: 21, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 16, column: 15)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 15, column: 9)
!57 = !DILocation(line: 16, column: 39, scope: !55)
!58 = !DILocation(line: 16, column: 37, scope: !55)
!59 = !DILocation(line: 16, column: 72, scope: !55)
!60 = !DILocation(line: 16, column: 70, scope: !55)
!61 = !DILocation(line: 16, column: 59, scope: !55)
!62 = !DILocation(line: 16, column: 93, scope: !55)
!63 = !DILocation(line: 16, column: 15, scope: !55)
!64 = !DILocation(line: 16, column: 100, scope: !55)
!65 = !DILocation(line: 16, column: 15, scope: !56)
!66 = !DILocation(line: 18, column: 41, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !1, line: 17, column: 11)
!68 = !DILocation(line: 18, column: 34, scope: !67)
!69 = !DILocation(line: 18, column: 32, scope: !67)
!70 = !DILocation(line: 19, column: 18, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 19, column: 17)
!72 = !DILocation(line: 19, column: 37, scope: !71)
!73 = !DILocation(line: 19, column: 42, scope: !71)
!74 = !DILocation(line: 19, column: 46, scope: !71)
!75 = !DILocation(line: 19, column: 62, scope: !71)
!76 = !DILocation(line: 19, column: 81, scope: !71)
!77 = !DILocation(line: 19, column: 86, scope: !71)
!78 = !DILocation(line: 19, column: 17, scope: !67)
!79 = !DILocation(line: 21, column: 15, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !1, line: 20, column: 13)
!81 = !DILocation(line: 21, column: 31, scope: !80)
!82 = !DILocation(line: 21, column: 50, scope: !80)
!83 = !DILocation(line: 21, column: 55, scope: !80)
!84 = !DILocation(line: 22, column: 13, scope: !80)
!85 = !DILocation(line: 24, column: 11, scope: !67)
!86 = !DILocation(line: 27, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !55, file: !1, line: 26, column: 11)
!88 = !DILocation(line: 28, column: 13, scope: !87)
!89 = !DILocation(line: 28, column: 29, scope: !87)
!90 = !DILocation(line: 28, column: 49, scope: !87)
!91 = !DILocation(line: 31, column: 9, scope: !56)
!92 = !DILocation(line: 34, column: 5, scope: !42)
!93 = !DILocation(line: 10, column: 58, scope: !37)
!94 = !DILocation(line: 10, column: 5, scope: !37)
!95 = distinct !{!95, !39, !96, !97}
!96 = !DILocation(line: 34, column: 5, scope: !34)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 36, column: 23, scope: !99)
!99 = distinct !DILexicalBlock(scope: !22, file: !1, line: 36, column: 5)
!100 = !DILocation(line: 36, column: 10, scope: !99)
!101 = !DILocation(line: 36, column: 28, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 36, column: 5)
!103 = !DILocation(line: 36, column: 41, scope: !102)
!104 = !DILocation(line: 36, column: 5, scope: !99)
!105 = !DILocation(line: 38, column: 22, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 37, column: 5)
!107 = !DILocation(line: 38, column: 7, scope: !106)
!108 = !DILocation(line: 39, column: 5, scope: !106)
!109 = !DILocation(line: 36, column: 58, scope: !102)
!110 = !DILocation(line: 36, column: 5, scope: !102)
!111 = distinct !{!111, !104, !112, !97}
!112 = !DILocation(line: 39, column: 5, scope: !99)
!113 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 41)
!114 = !DILocation(line: 41, column: 5, scope: !22)
!115 = !DILocalVariable(name: "_goodG2B_h_0", scope: !116, file: !1, line: 48, type: !4)
!116 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 3)
!117 = !DILocation(line: 48, column: 9, scope: !116)
!118 = !DILocalVariable(name: "_goodG2B_j_0", scope: !116, file: !1, line: 49, type: !4)
!119 = !DILocation(line: 49, column: 9, scope: !116)
!120 = !DILocalVariable(name: "_goodG2B_data_0", scope: !116, file: !1, line: 50, type: !12)
!121 = !DILocation(line: 50, column: 11, scope: !116)
!122 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !116, file: !1, line: 51, type: !27)
!123 = !DILocation(line: 51, column: 10, scope: !116)
!124 = !DILocation(line: 52, column: 23, scope: !116)
!125 = !DILocation(line: 52, column: 21, scope: !116)
!126 = !DILocation(line: 53, column: 23, scope: !127)
!127 = distinct !DILexicalBlock(scope: !116, file: !1, line: 53, column: 5)
!128 = !DILocation(line: 53, column: 10, scope: !127)
!129 = !DILocation(line: 53, column: 28, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 53, column: 5)
!131 = !DILocation(line: 53, column: 41, scope: !130)
!132 = !DILocation(line: 53, column: 5, scope: !127)
!133 = !DILocation(line: 55, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 54, column: 5)
!135 = !DILocation(line: 55, column: 7, scope: !134)
!136 = !DILocation(line: 56, column: 5, scope: !134)
!137 = !DILocation(line: 53, column: 58, scope: !130)
!138 = !DILocation(line: 53, column: 5, scope: !130)
!139 = distinct !{!139, !132, !140, !97}
!140 = !DILocation(line: 56, column: 5, scope: !127)
!141 = !DILocation(line: 58, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !116, file: !1, line: 58, column: 5)
!143 = !DILocation(line: 58, column: 10, scope: !142)
!144 = !DILocation(line: 58, column: 28, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 58, column: 5)
!146 = !DILocation(line: 58, column: 41, scope: !145)
!147 = !DILocation(line: 58, column: 5, scope: !142)
!148 = !DILocation(line: 60, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 59, column: 5)
!150 = !DILocation(line: 60, column: 14, scope: !149)
!151 = !DILocation(line: 61, column: 5, scope: !149)
!152 = !DILocation(line: 58, column: 58, scope: !145)
!153 = !DILocation(line: 58, column: 5, scope: !145)
!154 = distinct !{!154, !147, !155, !97}
!155 = !DILocation(line: 61, column: 5, scope: !142)
!156 = !DILabel(scope: !116, name: "goodG2B_label_", file: !1, line: 63)
!157 = !DILocation(line: 63, column: 5, scope: !116)
!158 = !DILocation(line: 68, column: 3, scope: !116)
!159 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_17_good_label_", file: !1, line: 69)
!160 = !DILocation(line: 69, column: 3, scope: !9)
!161 = !DILocation(line: 74, column: 1, scope: !9)
