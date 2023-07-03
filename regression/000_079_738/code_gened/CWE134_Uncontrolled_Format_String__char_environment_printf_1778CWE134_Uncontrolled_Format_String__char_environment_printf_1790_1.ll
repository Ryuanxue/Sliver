; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_1790_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_1790_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_1790_1(i8* %_goodB2G_environment_0, i32 %_goodB2G_i_0, i32 %_goodB2G_k_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %_goodB2G_i_0.addr = alloca i32, align 4
  %_goodB2G_k_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %_goodB2G_i_0, i32* %_goodB2G_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %_goodB2G_k_0, i32* %_goodB2G_k_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !32
  store i32 0, i32* %_goodB2G_i_0.addr, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !36
  %cmp = icmp slt i32 %1, 1, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !40, metadata !DIExpression()), !dbg !46
  %2 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !47
  %call = call i64 @strlen(i8* %2) #5, !dbg !48
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !49
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !50
  %3 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !51
  %cmp2 = icmp ne i8* %3, null, !dbg !53
  br i1 %cmp2, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !55
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !57
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !58
  %6 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !59
  %7 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !60
  %sub = sub i64 100, %7, !dbg !61
  %sub3 = sub i64 %sub, 1, !dbg !62
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #6, !dbg !63
  br label %if.end, !dbg !64

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !66
  %inc = add nsw i32 %8, 1, !dbg !66
  store i32 %inc, i32* %_goodB2G_i_0.addr, align 4, !dbg !66
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0.addr, align 4, !dbg !71
  br label %for.cond5, !dbg !73

for.cond5:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !74
  %cmp6 = icmp slt i32 %9, 1, !dbg !76
  br i1 %cmp6, label %for.body7, label %for.end10, !dbg !77

for.body7:                                        ; preds = %for.cond5
  %10 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !78
  %11 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !80
  call void %10(i8* %11), !dbg !78
  br label %for.inc8, !dbg !81

for.inc8:                                         ; preds = %for.body7
  %12 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !82
  %inc9 = add nsw i32 %12, 1, !dbg !82
  store i32 %inc9, i32* %_goodB2G_k_0.addr, align 4, !dbg !82
  br label %for.cond5, !dbg !83, !llvm.loop !84

for.end10:                                        ; preds = %for.cond5
  br label %goodB2G_label_, !dbg !85

goodB2G_label_:                                   ; preds = %for.end10
  call void @llvm.dbg.label(metadata !86), !dbg !87
  ret void, !dbg !88
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_1790_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_1790_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !10}
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 141, scope: !7)
!18 = !DILocalVariable(name: "_goodB2G_i_0", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 169, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_k_0", arg: 3, scope: !7, file: !1, line: 3, type: !12)
!21 = !DILocation(line: 3, column: 187, scope: !7)
!22 = !DILocalVariable(name: "opsink", arg: 4, scope: !7, file: !1, line: 3, type: !13)
!23 = !DILocation(line: 3, column: 208, scope: !7)
!24 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !10)
!25 = !DILocation(line: 5, column: 9, scope: !7)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !7, file: !1, line: 6, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 6, column: 8, scope: !7)
!31 = !DILocation(line: 7, column: 21, scope: !7)
!32 = !DILocation(line: 7, column: 19, scope: !7)
!33 = !DILocation(line: 8, column: 21, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!35 = !DILocation(line: 8, column: 8, scope: !34)
!36 = !DILocation(line: 8, column: 26, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 8, column: 3)
!38 = !DILocation(line: 8, column: 39, scope: !37)
!39 = !DILocation(line: 8, column: 3, scope: !34)
!40 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !41, file: !1, line: 11, type: !43)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 10, column: 5)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 9, column: 3)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 11, column: 14, scope: !41)
!47 = !DILocation(line: 11, column: 42, scope: !41)
!48 = !DILocation(line: 11, column: 35, scope: !41)
!49 = !DILocation(line: 12, column: 32, scope: !41)
!50 = !DILocation(line: 12, column: 30, scope: !41)
!51 = !DILocation(line: 13, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 11)
!53 = !DILocation(line: 13, column: 34, scope: !52)
!54 = !DILocation(line: 13, column: 11, scope: !41)
!55 = !DILocation(line: 15, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 14, column: 7)
!57 = !DILocation(line: 15, column: 35, scope: !56)
!58 = !DILocation(line: 15, column: 33, scope: !56)
!59 = !DILocation(line: 15, column: 55, scope: !56)
!60 = !DILocation(line: 15, column: 86, scope: !56)
!61 = !DILocation(line: 15, column: 84, scope: !56)
!62 = !DILocation(line: 15, column: 106, scope: !56)
!63 = !DILocation(line: 15, column: 9, scope: !56)
!64 = !DILocation(line: 16, column: 7, scope: !56)
!65 = !DILocation(line: 19, column: 3, scope: !42)
!66 = !DILocation(line: 8, column: 56, scope: !37)
!67 = !DILocation(line: 8, column: 3, scope: !37)
!68 = distinct !{!68, !39, !69, !70}
!69 = !DILocation(line: 19, column: 3, scope: !34)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !DILocation(line: 21, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!73 = !DILocation(line: 21, column: 8, scope: !72)
!74 = !DILocation(line: 21, column: 26, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 21, column: 3)
!76 = !DILocation(line: 21, column: 39, scope: !75)
!77 = !DILocation(line: 21, column: 3, scope: !72)
!78 = !DILocation(line: 23, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 22, column: 3)
!80 = !DILocation(line: 23, column: 12, scope: !79)
!81 = !DILocation(line: 24, column: 3, scope: !79)
!82 = !DILocation(line: 21, column: 56, scope: !75)
!83 = !DILocation(line: 21, column: 3, scope: !75)
!84 = distinct !{!84, !77, !85, !70}
!85 = !DILocation(line: 24, column: 3, scope: !72)
!86 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 26)
!87 = !DILocation(line: 26, column: 3, scope: !7)
!88 = !DILocation(line: 31, column: 1, scope: !7)
