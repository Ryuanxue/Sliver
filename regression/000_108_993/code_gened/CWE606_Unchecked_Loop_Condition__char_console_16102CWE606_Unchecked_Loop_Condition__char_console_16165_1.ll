; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
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
  br label %while.body, !dbg !29

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !39
  %sub = sub i64 100, %2, !dbg !41
  %cmp = icmp ugt i64 %sub, 1, !dbg !42
  br i1 %cmp, label %if.then, label %if.end18, !dbg !43

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub1 = sub i64 100, %5, !dbg !50
  %conv = trunc i64 %sub1 to i32, !dbg !51
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !52
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !53
  %cmp3 = icmp ne i8* %call2, null, !dbg !54
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !55

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !56
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !58
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !59
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !60
  %cmp7 = icmp ugt i64 %8, 0, !dbg !62
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !63

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !64
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !65
  %sub9 = sub i64 %10, 1, !dbg !66
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !64
  %11 = load i8, i8* %arrayidx, align 1, !dbg !64
  %conv10 = sext i8 %11 to i32, !dbg !64
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !67
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !68

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !69
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !71
  %sub14 = sub i64 %13, 1, !dbg !72
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !69
  store i8 0, i8* %arrayidx15, align 1, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !75

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !76
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !78
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !79
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !78
  store i8 0, i8* %arrayidx16, align 1, !dbg !80
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !81

if.end18:                                         ; preds = %if.end17, %while.body
  br label %while.end, !dbg !82

while.end:                                        ; preds = %if.end18
  br label %while.body19, !dbg !83

while.body19:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !90, metadata !DIExpression()), !dbg !91
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !92
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !94
  %cmp21 = icmp eq i32 %call20, 1, !dbg !95
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !96

if.then23:                                        ; preds = %while.body19
  %17 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !97
  %cmp24 = icmp slt i32 %17, 10000, !dbg !100
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !101

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !102
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then26
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !107
  %19 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !109
  %cmp27 = icmp slt i32 %18, %19, !dbg !110
  br i1 %cmp27, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !112
  %inc = add nsw i32 %20, 1, !dbg !112
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !112
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !115
  %inc29 = add nsw i32 %21, 1, !dbg !115
  store i32 %inc29, i32* %_goodB2G_i_0, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !120
  call void @printIntLine(i32 %22), !dbg !121
  br label %if.end30, !dbg !122

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !123

if.end31:                                         ; preds = %if.end30, %while.body19
  br label %while.end32, !dbg !124

while.end32:                                      ; preds = %if.end31
  br label %goodB2G_label_, !dbg !83

goodB2G_label_:                                   ; preds = %while.end32
  call void @llvm.dbg.label(metadata !125), !dbg !126
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !130, metadata !DIExpression()), !dbg !131
  %23 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay33 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !132
  store i8* %arraydecay33, i8** %_goodG2B_data_0, align 8, !dbg !133
  br label %while.body34, !dbg !134

while.body34:                                     ; preds = %goodB2G_label_
  %24 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !135
  %call35 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !137
  br label %while.end36, !dbg !138

while.end36:                                      ; preds = %while.body34
  br label %while.body37, !dbg !139

while.body37:                                     ; preds = %while.end36
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !146, metadata !DIExpression()), !dbg !147
  %25 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !148
  %call38 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !150
  %cmp39 = icmp eq i32 %call38, 1, !dbg !151
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !152

if.then41:                                        ; preds = %while.body37
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !153
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !155
  %27 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !156
  call void %26(i32 %27), !dbg !155
  %28 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !157
  call void @printIntLine(i32 %28), !dbg !158
  br label %if.end42, !dbg !159

if.end42:                                         ; preds = %if.then41, %while.body37
  br label %while.end43, !dbg !160

while.end43:                                      ; preds = %if.end42
  br label %goodG2B_label_, !dbg !139

goodG2B_label_:                                   ; preds = %while.end43
  call void @llvm.dbg.label(metadata !161), !dbg !162
  br label %CWE606_Unchecked_Loop_Condition__char_console_16_good_label_, !dbg !163

CWE606_Unchecked_Loop_Condition__char_console_16_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !164), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_993/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 141, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 5, scope: !22)
!30 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !31, file: !1, line: 11, type: !33)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 7)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 16, scope: !31)
!37 = !DILocation(line: 11, column: 44, scope: !31)
!38 = !DILocation(line: 11, column: 37, scope: !31)
!39 = !DILocation(line: 12, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 12, column: 13)
!41 = !DILocation(line: 12, column: 18, scope: !40)
!42 = !DILocation(line: 12, column: 40, scope: !40)
!43 = !DILocation(line: 12, column: 13, scope: !31)
!44 = !DILocation(line: 14, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 14, column: 15)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 9)
!47 = !DILocation(line: 14, column: 39, scope: !45)
!48 = !DILocation(line: 14, column: 37, scope: !45)
!49 = !DILocation(line: 14, column: 72, scope: !45)
!50 = !DILocation(line: 14, column: 70, scope: !45)
!51 = !DILocation(line: 14, column: 59, scope: !45)
!52 = !DILocation(line: 14, column: 93, scope: !45)
!53 = !DILocation(line: 14, column: 15, scope: !45)
!54 = !DILocation(line: 14, column: 100, scope: !45)
!55 = !DILocation(line: 14, column: 15, scope: !46)
!56 = !DILocation(line: 16, column: 41, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 11)
!58 = !DILocation(line: 16, column: 34, scope: !57)
!59 = !DILocation(line: 16, column: 32, scope: !57)
!60 = !DILocation(line: 17, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 17, column: 17)
!62 = !DILocation(line: 17, column: 37, scope: !61)
!63 = !DILocation(line: 17, column: 42, scope: !61)
!64 = !DILocation(line: 17, column: 46, scope: !61)
!65 = !DILocation(line: 17, column: 62, scope: !61)
!66 = !DILocation(line: 17, column: 81, scope: !61)
!67 = !DILocation(line: 17, column: 86, scope: !61)
!68 = !DILocation(line: 17, column: 17, scope: !57)
!69 = !DILocation(line: 19, column: 15, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 13)
!71 = !DILocation(line: 19, column: 31, scope: !70)
!72 = !DILocation(line: 19, column: 50, scope: !70)
!73 = !DILocation(line: 19, column: 55, scope: !70)
!74 = !DILocation(line: 20, column: 13, scope: !70)
!75 = !DILocation(line: 22, column: 11, scope: !57)
!76 = !DILocation(line: 25, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 24, column: 11)
!78 = !DILocation(line: 26, column: 13, scope: !77)
!79 = !DILocation(line: 26, column: 29, scope: !77)
!80 = !DILocation(line: 26, column: 49, scope: !77)
!81 = !DILocation(line: 29, column: 9, scope: !46)
!82 = !DILocation(line: 32, column: 7, scope: !32)
!83 = !DILocation(line: 35, column: 5, scope: !22)
!84 = !DILocalVariable(name: "_goodB2G_i_0", scope: !85, file: !1, line: 38, type: !4)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 7)
!86 = distinct !DILexicalBlock(scope: !22, file: !1, line: 36, column: 5)
!87 = !DILocation(line: 38, column: 13, scope: !85)
!88 = !DILocalVariable(name: "_goodB2G_n_0", scope: !85, file: !1, line: 39, type: !4)
!89 = !DILocation(line: 39, column: 13, scope: !85)
!90 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !85, file: !1, line: 40, type: !4)
!91 = !DILocation(line: 40, column: 13, scope: !85)
!92 = !DILocation(line: 41, column: 20, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 41, column: 13)
!94 = !DILocation(line: 41, column: 13, scope: !93)
!95 = !DILocation(line: 41, column: 58, scope: !93)
!96 = !DILocation(line: 41, column: 13, scope: !85)
!97 = !DILocation(line: 43, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 43, column: 15)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 42, column: 9)
!100 = !DILocation(line: 43, column: 28, scope: !98)
!101 = !DILocation(line: 43, column: 15, scope: !99)
!102 = !DILocation(line: 45, column: 36, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 44, column: 11)
!104 = !DILocation(line: 46, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !1, line: 46, column: 13)
!106 = !DILocation(line: 46, column: 18, scope: !105)
!107 = !DILocation(line: 46, column: 36, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 46, column: 13)
!109 = !DILocation(line: 46, column: 51, scope: !108)
!110 = !DILocation(line: 46, column: 49, scope: !108)
!111 = !DILocation(line: 46, column: 13, scope: !105)
!112 = !DILocation(line: 48, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 47, column: 13)
!114 = !DILocation(line: 49, column: 13, scope: !113)
!115 = !DILocation(line: 46, column: 77, scope: !108)
!116 = !DILocation(line: 46, column: 13, scope: !108)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 49, column: 13, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 51, column: 26, scope: !103)
!121 = !DILocation(line: 51, column: 13, scope: !103)
!122 = !DILocation(line: 52, column: 11, scope: !103)
!123 = !DILocation(line: 54, column: 9, scope: !99)
!124 = !DILocation(line: 57, column: 7, scope: !86)
!125 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 60)
!126 = !DILocation(line: 60, column: 5, scope: !22)
!127 = !DILocalVariable(name: "_goodG2B_data_0", scope: !128, file: !1, line: 67, type: !12)
!128 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 3)
!129 = !DILocation(line: 67, column: 11, scope: !128)
!130 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !128, file: !1, line: 68, type: !23)
!131 = !DILocation(line: 68, column: 10, scope: !128)
!132 = !DILocation(line: 69, column: 23, scope: !128)
!133 = !DILocation(line: 69, column: 21, scope: !128)
!134 = !DILocation(line: 70, column: 5, scope: !128)
!135 = !DILocation(line: 72, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !128, file: !1, line: 71, column: 5)
!137 = !DILocation(line: 72, column: 7, scope: !136)
!138 = !DILocation(line: 73, column: 7, scope: !136)
!139 = !DILocation(line: 76, column: 5, scope: !128)
!140 = !DILocalVariable(name: "_goodG2B_i_0", scope: !141, file: !1, line: 79, type: !4)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 78, column: 7)
!142 = distinct !DILexicalBlock(scope: !128, file: !1, line: 77, column: 5)
!143 = !DILocation(line: 79, column: 13, scope: !141)
!144 = !DILocalVariable(name: "_goodG2B_n_0", scope: !141, file: !1, line: 80, type: !4)
!145 = !DILocation(line: 80, column: 13, scope: !141)
!146 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !141, file: !1, line: 81, type: !4)
!147 = !DILocation(line: 81, column: 13, scope: !141)
!148 = !DILocation(line: 82, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !1, line: 82, column: 13)
!150 = !DILocation(line: 82, column: 13, scope: !149)
!151 = !DILocation(line: 82, column: 58, scope: !149)
!152 = !DILocation(line: 82, column: 13, scope: !141)
!153 = !DILocation(line: 84, column: 34, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 83, column: 9)
!155 = !DILocation(line: 85, column: 11, scope: !154)
!156 = !DILocation(line: 85, column: 18, scope: !154)
!157 = !DILocation(line: 86, column: 24, scope: !154)
!158 = !DILocation(line: 86, column: 11, scope: !154)
!159 = !DILocation(line: 87, column: 9, scope: !154)
!160 = !DILocation(line: 90, column: 7, scope: !142)
!161 = !DILabel(scope: !128, name: "goodG2B_label_", file: !1, line: 93)
!162 = !DILocation(line: 93, column: 5, scope: !128)
!163 = !DILocation(line: 98, column: 3, scope: !128)
!164 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_16_good_label_", file: !1, line: 99)
!165 = !DILocation(line: 99, column: 3, scope: !9)
!166 = !DILocation(line: 104, column: 1, scope: !9)
