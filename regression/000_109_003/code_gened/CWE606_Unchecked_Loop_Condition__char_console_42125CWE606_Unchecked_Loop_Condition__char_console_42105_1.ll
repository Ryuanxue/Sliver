; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1(i8* %_goodB2G_data_0, i8** %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2GSource_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i8** %goodB2GSource_return_, i8*** %goodB2GSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %goodB2GSource_return_.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !24, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_goodB2GSource_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then, label %if.end18, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !51
  %sub1 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub1 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp3 = icmp ne i8* %call2, null, !dbg !56
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !57

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !58
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call6, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !62
  %cmp7 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !67
  %sub9 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv10 = sext i8 %11 to i32, !dbg !66
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !69
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !70

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !73
  %sub14 = sub i64 %13, 1, !dbg !74
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !71
  store i8 0, i8* %arrayidx15, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !77

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !81
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx16, align 1, !dbg !82
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !83

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !84
  %17 = bitcast i8* %16 to i8**, !dbg !84
  store i8** %17, i8*** %goodB2GSource_return_.addr, align 8, !dbg !85
  br label %goodB2GSource_label_, !dbg !86

goodB2GSource_label_:                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !87), !dbg !88
  %18 = load i8**, i8*** %goodB2GSource_return_.addr, align 8, !dbg !89
  %19 = bitcast i8** %18 to i8*, !dbg !89
  store i8* %19, i8** %_goodB2G_data_0.addr, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !96, metadata !DIExpression()), !dbg !97
  %20 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !98
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !100
  %cmp20 = icmp eq i32 %call19, 1, !dbg !101
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !102

if.then22:                                        ; preds = %goodB2GSource_label_
  %21 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !103
  %cmp23 = icmp slt i32 %21, 10000, !dbg !106
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !107

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !108
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !110
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %if.then25
  %22 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !113
  %23 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !115
  %cmp26 = icmp slt i32 %22, %23, !dbg !116
  br i1 %cmp26, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !118
  %inc = add nsw i32 %24, 1, !dbg !118
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !118
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !121
  %inc28 = add nsw i32 %25, 1, !dbg !121
  store i32 %inc28, i32* %_goodB2G_i_0, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !126
  call void @printIntLine(i32 %26), !dbg !127
  br label %if.end29, !dbg !128

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !129

if.end30:                                         ; preds = %if.end29, %goodB2GSource_label_
  br label %goodB2G_label_, !dbg !130

goodB2G_label_:                                   ; preds = %if.end30
  call void @llvm.dbg.label(metadata !131), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !136, metadata !DIExpression()), !dbg !137
  %27 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !138
  store i8* %arraydecay31, i8** %_goodG2B_data_0, align 8, !dbg !139
  %28 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !140
  %call32 = call i8* @goodG2BSource(i8* %28), !dbg !141
  store i8* %call32, i8** %_goodG2B_data_0, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !143, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !148, metadata !DIExpression()), !dbg !149
  %29 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !150
  %call33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !152
  %cmp34 = icmp eq i32 %call33, 1, !dbg !153
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !154

if.then36:                                        ; preds = %goodB2G_label_
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !155
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !157
  %31 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !158
  call void %30(i32 %31), !dbg !157
  %32 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !159
  call void @printIntLine(i32 %32), !dbg !160
  br label %if.end37, !dbg !161

if.end37:                                         ; preds = %if.then36, %goodB2G_label_
  br label %goodG2B_label_, !dbg !162

goodG2B_label_:                                   ; preds = %if.end37
  call void @llvm.dbg.label(metadata !163), !dbg !164
  br label %CWE606_Unchecked_Loop_Condition__char_console_42_good_label_, !dbg !165

CWE606_Unchecked_Loop_Condition__char_console_42_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !166), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

declare dso_local i8* @goodG2BSource(i8*) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_003/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !4}
!18 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 117, scope: !9)
!20 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 142, scope: !9)
!22 = !DILocalVariable(name: "opsink", arg: 3, scope: !9, file: !1, line: 3, type: !15)
!23 = !DILocation(line: 3, column: 172, scope: !9)
!24 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !25, file: !1, line: 6, type: !26)
!25 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 6, column: 10, scope: !25)
!30 = !DILocation(line: 7, column: 23, scope: !25)
!31 = !DILocation(line: 7, column: 21, scope: !25)
!32 = !DILocalVariable(name: "_goodB2GSource_dataLen_0", scope: !33, file: !1, line: 10, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 9, column: 7)
!34 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 10, column: 16, scope: !33)
!39 = !DILocation(line: 10, column: 50, scope: !33)
!40 = !DILocation(line: 10, column: 43, scope: !33)
!41 = !DILocation(line: 11, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 13)
!43 = !DILocation(line: 11, column: 18, scope: !42)
!44 = !DILocation(line: 11, column: 46, scope: !42)
!45 = !DILocation(line: 11, column: 13, scope: !33)
!46 = !DILocation(line: 13, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 13, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 9)
!49 = !DILocation(line: 13, column: 39, scope: !47)
!50 = !DILocation(line: 13, column: 37, scope: !47)
!51 = !DILocation(line: 13, column: 78, scope: !47)
!52 = !DILocation(line: 13, column: 76, scope: !47)
!53 = !DILocation(line: 13, column: 65, scope: !47)
!54 = !DILocation(line: 13, column: 105, scope: !47)
!55 = !DILocation(line: 13, column: 15, scope: !47)
!56 = !DILocation(line: 13, column: 112, scope: !47)
!57 = !DILocation(line: 13, column: 15, scope: !48)
!58 = !DILocation(line: 15, column: 47, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 11)
!60 = !DILocation(line: 15, column: 40, scope: !59)
!61 = !DILocation(line: 15, column: 38, scope: !59)
!62 = !DILocation(line: 16, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 16, column: 17)
!64 = !DILocation(line: 16, column: 43, scope: !63)
!65 = !DILocation(line: 16, column: 48, scope: !63)
!66 = !DILocation(line: 16, column: 52, scope: !63)
!67 = !DILocation(line: 16, column: 68, scope: !63)
!68 = !DILocation(line: 16, column: 93, scope: !63)
!69 = !DILocation(line: 16, column: 98, scope: !63)
!70 = !DILocation(line: 16, column: 17, scope: !59)
!71 = !DILocation(line: 18, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 17, column: 13)
!73 = !DILocation(line: 18, column: 31, scope: !72)
!74 = !DILocation(line: 18, column: 56, scope: !72)
!75 = !DILocation(line: 18, column: 61, scope: !72)
!76 = !DILocation(line: 19, column: 13, scope: !72)
!77 = !DILocation(line: 21, column: 11, scope: !59)
!78 = !DILocation(line: 24, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 23, column: 11)
!80 = !DILocation(line: 25, column: 13, scope: !79)
!81 = !DILocation(line: 25, column: 29, scope: !79)
!82 = !DILocation(line: 25, column: 55, scope: !79)
!83 = !DILocation(line: 28, column: 9, scope: !48)
!84 = !DILocation(line: 31, column: 31, scope: !34)
!85 = !DILocation(line: 31, column: 29, scope: !34)
!86 = !DILocation(line: 32, column: 7, scope: !34)
!87 = !DILabel(scope: !34, name: "goodB2GSource_label_", file: !1, line: 33)
!88 = !DILocation(line: 33, column: 7, scope: !34)
!89 = !DILocation(line: 39, column: 23, scope: !25)
!90 = !DILocation(line: 39, column: 21, scope: !25)
!91 = !DILocalVariable(name: "_goodB2G_i_0", scope: !92, file: !1, line: 41, type: !4)
!92 = distinct !DILexicalBlock(scope: !25, file: !1, line: 40, column: 5)
!93 = !DILocation(line: 41, column: 11, scope: !92)
!94 = !DILocalVariable(name: "_goodB2G_n_0", scope: !92, file: !1, line: 42, type: !4)
!95 = !DILocation(line: 42, column: 11, scope: !92)
!96 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !92, file: !1, line: 43, type: !4)
!97 = !DILocation(line: 43, column: 11, scope: !92)
!98 = !DILocation(line: 44, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 44, column: 11)
!100 = !DILocation(line: 44, column: 11, scope: !99)
!101 = !DILocation(line: 44, column: 56, scope: !99)
!102 = !DILocation(line: 44, column: 11, scope: !92)
!103 = !DILocation(line: 46, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 46, column: 13)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 45, column: 7)
!106 = !DILocation(line: 46, column: 26, scope: !104)
!107 = !DILocation(line: 46, column: 13, scope: !105)
!108 = !DILocation(line: 48, column: 34, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 47, column: 9)
!110 = !DILocation(line: 49, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !1, line: 49, column: 11)
!112 = !DILocation(line: 49, column: 16, scope: !111)
!113 = !DILocation(line: 49, column: 34, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 49, column: 11)
!115 = !DILocation(line: 49, column: 49, scope: !114)
!116 = !DILocation(line: 49, column: 47, scope: !114)
!117 = !DILocation(line: 49, column: 11, scope: !111)
!118 = !DILocation(line: 51, column: 35, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 50, column: 11)
!120 = !DILocation(line: 52, column: 11, scope: !119)
!121 = !DILocation(line: 49, column: 75, scope: !114)
!122 = !DILocation(line: 49, column: 11, scope: !114)
!123 = distinct !{!123, !117, !124, !125}
!124 = !DILocation(line: 52, column: 11, scope: !111)
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 54, column: 24, scope: !109)
!127 = !DILocation(line: 54, column: 11, scope: !109)
!128 = !DILocation(line: 55, column: 9, scope: !109)
!129 = !DILocation(line: 57, column: 7, scope: !105)
!130 = !DILocation(line: 59, column: 5, scope: !92)
!131 = !DILabel(scope: !25, name: "goodB2G_label_", file: !1, line: 60)
!132 = !DILocation(line: 60, column: 5, scope: !25)
!133 = !DILocalVariable(name: "_goodG2B_data_0", scope: !134, file: !1, line: 67, type: !12)
!134 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 3)
!135 = !DILocation(line: 67, column: 11, scope: !134)
!136 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !134, file: !1, line: 68, type: !26)
!137 = !DILocation(line: 68, column: 10, scope: !134)
!138 = !DILocation(line: 69, column: 23, scope: !134)
!139 = !DILocation(line: 69, column: 21, scope: !134)
!140 = !DILocation(line: 70, column: 37, scope: !134)
!141 = !DILocation(line: 70, column: 23, scope: !134)
!142 = !DILocation(line: 70, column: 21, scope: !134)
!143 = !DILocalVariable(name: "_goodG2B_i_0", scope: !144, file: !1, line: 72, type: !4)
!144 = distinct !DILexicalBlock(scope: !134, file: !1, line: 71, column: 5)
!145 = !DILocation(line: 72, column: 11, scope: !144)
!146 = !DILocalVariable(name: "_goodG2B_n_0", scope: !144, file: !1, line: 73, type: !4)
!147 = !DILocation(line: 73, column: 11, scope: !144)
!148 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !144, file: !1, line: 74, type: !4)
!149 = !DILocation(line: 74, column: 11, scope: !144)
!150 = !DILocation(line: 75, column: 18, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 75, column: 11)
!152 = !DILocation(line: 75, column: 11, scope: !151)
!153 = !DILocation(line: 75, column: 56, scope: !151)
!154 = !DILocation(line: 75, column: 11, scope: !144)
!155 = !DILocation(line: 77, column: 32, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 76, column: 7)
!157 = !DILocation(line: 78, column: 9, scope: !156)
!158 = !DILocation(line: 78, column: 16, scope: !156)
!159 = !DILocation(line: 79, column: 22, scope: !156)
!160 = !DILocation(line: 79, column: 9, scope: !156)
!161 = !DILocation(line: 80, column: 7, scope: !156)
!162 = !DILocation(line: 82, column: 5, scope: !144)
!163 = !DILabel(scope: !134, name: "goodG2B_label_", file: !1, line: 83)
!164 = !DILocation(line: 83, column: 5, scope: !134)
!165 = !DILocation(line: 88, column: 3, scope: !134)
!166 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_42_good_label_", file: !1, line: 89)
!167 = !DILocation(line: 89, column: 3, scope: !9)
!168 = !DILocation(line: 94, column: 1, scope: !9)
