; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_1691_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_1691_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_1691_1(i8* %_goodB2G_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !27
  br label %while.body, !dbg !28

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #5, !dbg !37
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !38
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !39
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !40
  %cmp = icmp ne i8* %2, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !48
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %6, !dbg !50
  %sub2 = sub i64 %sub, 1, !dbg !51
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !54

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !55

while.body4:                                      ; preds = %while.end
  %7 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !56
  %8 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !58
  call void %7(i8* %8), !dbg !56
  br label %while.end5, !dbg !59

while.end5:                                       ; preds = %while.body4
  br label %goodB2G_label_, !dbg !55

goodB2G_label_:                                   ; preds = %while.end5
  call void @llvm.dbg.label(metadata !60), !dbg !61
  ret void, !dbg !62
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_1691_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_737/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_1691_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 141, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 172, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 9, scope: !7)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !7, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !7)
!26 = !DILocation(line: 7, column: 21, scope: !7)
!27 = !DILocation(line: 7, column: 19, scope: !7)
!28 = !DILocation(line: 8, column: 3, scope: !7)
!29 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !30, file: !1, line: 11, type: !32)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 5)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 11, column: 14, scope: !30)
!36 = !DILocation(line: 11, column: 42, scope: !30)
!37 = !DILocation(line: 11, column: 35, scope: !30)
!38 = !DILocation(line: 12, column: 32, scope: !30)
!39 = !DILocation(line: 12, column: 30, scope: !30)
!40 = !DILocation(line: 13, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 11)
!42 = !DILocation(line: 13, column: 34, scope: !41)
!43 = !DILocation(line: 13, column: 11, scope: !30)
!44 = !DILocation(line: 15, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 7)
!46 = !DILocation(line: 15, column: 35, scope: !45)
!47 = !DILocation(line: 15, column: 33, scope: !45)
!48 = !DILocation(line: 15, column: 55, scope: !45)
!49 = !DILocation(line: 15, column: 86, scope: !45)
!50 = !DILocation(line: 15, column: 84, scope: !45)
!51 = !DILocation(line: 15, column: 106, scope: !45)
!52 = !DILocation(line: 15, column: 9, scope: !45)
!53 = !DILocation(line: 16, column: 7, scope: !45)
!54 = !DILocation(line: 19, column: 5, scope: !31)
!55 = !DILocation(line: 22, column: 3, scope: !7)
!56 = !DILocation(line: 24, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!58 = !DILocation(line: 24, column: 12, scope: !57)
!59 = !DILocation(line: 25, column: 5, scope: !57)
!60 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 28)
!61 = !DILocation(line: 28, column: 3, scope: !7)
!62 = !DILocation(line: 33, column: 1, scope: !7)