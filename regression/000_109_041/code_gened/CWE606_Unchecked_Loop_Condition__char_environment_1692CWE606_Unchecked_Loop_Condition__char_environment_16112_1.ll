; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16112_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16112_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16112_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !28
  br label %while.body, !dbg !29

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !39
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !40
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !49
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !55

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !56

while.body4:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !57, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !63, metadata !DIExpression()), !dbg !64
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !65
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !67
  %cmp6 = icmp eq i32 %call5, 1, !dbg !68
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !69

if.then7:                                         ; preds = %while.body4
  %8 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !70
  %cmp8 = icmp slt i32 %8, 10000, !dbg !73
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !74

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !75
  %9 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !77
  %10 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !78
  call void %9(i32 %10), !dbg !77
  %11 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !79
  call void @printIntLine(i32 %11), !dbg !80
  br label %if.end10, !dbg !81

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end11, !dbg !82

if.end11:                                         ; preds = %if.end10, %while.body4
  br label %while.end12, !dbg !83

while.end12:                                      ; preds = %if.end11
  br label %goodB2G_label_, !dbg !56

goodB2G_label_:                                   ; preds = %while.end12
  call void @llvm.dbg.label(metadata !84), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16112_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_041/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16112_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 21, scope: !7)
!28 = !DILocation(line: 7, column: 19, scope: !7)
!29 = !DILocation(line: 8, column: 3, scope: !7)
!30 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !31, file: !1, line: 11, type: !33)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 5)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 14, scope: !31)
!37 = !DILocation(line: 11, column: 42, scope: !31)
!38 = !DILocation(line: 11, column: 35, scope: !31)
!39 = !DILocation(line: 12, column: 32, scope: !31)
!40 = !DILocation(line: 12, column: 30, scope: !31)
!41 = !DILocation(line: 13, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !31, file: !1, line: 13, column: 11)
!43 = !DILocation(line: 13, column: 34, scope: !42)
!44 = !DILocation(line: 13, column: 11, scope: !31)
!45 = !DILocation(line: 15, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 14, column: 7)
!47 = !DILocation(line: 15, column: 35, scope: !46)
!48 = !DILocation(line: 15, column: 33, scope: !46)
!49 = !DILocation(line: 15, column: 55, scope: !46)
!50 = !DILocation(line: 15, column: 86, scope: !46)
!51 = !DILocation(line: 15, column: 84, scope: !46)
!52 = !DILocation(line: 15, column: 106, scope: !46)
!53 = !DILocation(line: 15, column: 9, scope: !46)
!54 = !DILocation(line: 16, column: 7, scope: !46)
!55 = !DILocation(line: 19, column: 5, scope: !32)
!56 = !DILocation(line: 22, column: 3, scope: !7)
!57 = !DILocalVariable(name: "_goodB2G_i_0", scope: !58, file: !1, line: 25, type: !15)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 24, column: 5)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!60 = !DILocation(line: 25, column: 11, scope: !58)
!61 = !DILocalVariable(name: "_goodB2G_n_0", scope: !58, file: !1, line: 26, type: !15)
!62 = !DILocation(line: 26, column: 11, scope: !58)
!63 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !58, file: !1, line: 27, type: !15)
!64 = !DILocation(line: 27, column: 11, scope: !58)
!65 = !DILocation(line: 28, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !1, line: 28, column: 11)
!67 = !DILocation(line: 28, column: 11, scope: !66)
!68 = !DILocation(line: 28, column: 56, scope: !66)
!69 = !DILocation(line: 28, column: 11, scope: !58)
!70 = !DILocation(line: 30, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 30, column: 13)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 29, column: 7)
!73 = !DILocation(line: 30, column: 26, scope: !71)
!74 = !DILocation(line: 30, column: 13, scope: !72)
!75 = !DILocation(line: 32, column: 34, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 31, column: 9)
!77 = !DILocation(line: 33, column: 11, scope: !76)
!78 = !DILocation(line: 33, column: 18, scope: !76)
!79 = !DILocation(line: 34, column: 24, scope: !76)
!80 = !DILocation(line: 34, column: 11, scope: !76)
!81 = !DILocation(line: 35, column: 9, scope: !76)
!82 = !DILocation(line: 37, column: 7, scope: !72)
!83 = !DILocation(line: 40, column: 5, scope: !59)
!84 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 43)
!85 = !DILocation(line: 43, column: 3, scope: !7)
!86 = !DILocation(line: 48, column: 1, scope: !7)
