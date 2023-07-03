; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1(i8* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0, i8** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr = alloca i8*, align 8
  %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0 = alloca i64, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_, i8*** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0 to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr, align 8, !dbg !41
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !46
  %4 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0.addr, align 8, !dbg !50
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !56
  %8 = bitcast i8* %7 to i8**, !dbg !56
  store i8** %8, i8*** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_.addr, align 8, !dbg !57
  br label %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_label_, !dbg !58

CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !59), !dbg !60
  %9 = load i8**, i8*** %CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_.addr, align 8, !dbg !61
  %10 = bitcast i8** %9 to i8*, !dbg !61
  store i8* %10, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !62
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !63
  %12 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !64
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %12), !dbg !65
  %13 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !66
  %14 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0, align 8, !dbg !67
  call void %13(i8* %14), !dbg !66
  ret void, !dbg !68
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

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b39CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a44_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !10}
!16 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 145, scope: !7)
!18 = !DILocalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_return_", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 243, scope: !7)
!20 = !DILocalVariable(name: "opsink", arg: 3, scope: !7, file: !1, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 333, scope: !7)
!22 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!23 = !DILocation(line: 5, column: 9, scope: !7)
!24 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 6, column: 8, scope: !7)
!29 = !DILocation(line: 7, column: 80, scope: !7)
!30 = !DILocation(line: 7, column: 78, scope: !7)
!31 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_dataLen_0", scope: !32, file: !1, line: 10, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 5)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 10, column: 14, scope: !32)
!38 = !DILocation(line: 10, column: 108, scope: !32)
!39 = !DILocation(line: 10, column: 101, scope: !32)
!40 = !DILocation(line: 11, column: 98, scope: !32)
!41 = !DILocation(line: 11, column: 96, scope: !32)
!42 = !DILocation(line: 12, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 11)
!44 = !DILocation(line: 12, column: 100, scope: !43)
!45 = !DILocation(line: 12, column: 11, scope: !32)
!46 = !DILocation(line: 14, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 7)
!48 = !DILocation(line: 14, column: 94, scope: !47)
!49 = !DILocation(line: 14, column: 92, scope: !47)
!50 = !DILocation(line: 14, column: 180, scope: !47)
!51 = !DILocation(line: 14, column: 277, scope: !47)
!52 = !DILocation(line: 14, column: 275, scope: !47)
!53 = !DILocation(line: 14, column: 363, scope: !47)
!54 = !DILocation(line: 14, column: 9, scope: !47)
!55 = !DILocation(line: 15, column: 7, scope: !47)
!56 = !DILocation(line: 18, column: 89, scope: !33)
!57 = !DILocation(line: 18, column: 87, scope: !33)
!58 = !DILocation(line: 19, column: 5, scope: !33)
!59 = !DILabel(scope: !33, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource_label_", file: !1, line: 20)
!60 = !DILocation(line: 20, column: 5, scope: !33)
!61 = !DILocation(line: 26, column: 80, scope: !7)
!62 = !DILocation(line: 26, column: 78, scope: !7)
!63 = !DILocation(line: 27, column: 11, scope: !7)
!64 = !DILocation(line: 27, column: 19, scope: !7)
!65 = !DILocation(line: 27, column: 3, scope: !7)
!66 = !DILocation(line: 28, column: 3, scope: !7)
!67 = !DILocation(line: 28, column: 10, scope: !7)
!68 = !DILocation(line: 29, column: 1, scope: !7)
