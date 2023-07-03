; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_61b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource(i8* %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !16, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %data.addr, align 8, !dbg !22
  %call = call i64 @strlen(i8* %0) #4, !dbg !23
  store i64 %call, i64* %dataLen, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !24, metadata !DIExpression()), !dbg !25
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5, !dbg !26
  store i8* %call1, i8** %environment, align 8, !dbg !25
  %1 = load i8*, i8** %environment, align 8, !dbg !27
  %cmp = icmp ne i8* %1, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !31
  %3 = load i64, i64* %dataLen, align 8, !dbg !33
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !34
  %4 = load i8*, i8** %environment, align 8, !dbg !35
  %5 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %5, !dbg !37
  %sub2 = sub i64 %sub, 1, !dbg !38
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #5, !dbg !39
  br label %if.end, !dbg !40

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !41
  ret i8* %6, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource(i8* %data) #0 !dbg !43 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i8*, i8** %data.addr, align 8, !dbg !46
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !47
  %1 = load i8*, i8** %data.addr, align 8, !dbg !48
  ret i8* %1, !dbg !49
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource(i8* %data) #0 !dbg !50 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !53, metadata !DIExpression()), !dbg !55
  %0 = load i8*, i8** %data.addr, align 8, !dbg !56
  %call = call i64 @strlen(i8* %0) #4, !dbg !57
  store i64 %call, i64* %dataLen, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !58, metadata !DIExpression()), !dbg !59
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5, !dbg !60
  store i8* %call1, i8** %environment, align 8, !dbg !59
  %1 = load i8*, i8** %environment, align 8, !dbg !61
  %cmp = icmp ne i8* %1, null, !dbg !63
  br i1 %cmp, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !65
  %3 = load i64, i64* %dataLen, align 8, !dbg !67
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !68
  %4 = load i8*, i8** %environment, align 8, !dbg !69
  %5 = load i64, i64* %dataLen, align 8, !dbg !70
  %sub = sub i64 100, %5, !dbg !71
  %sub2 = sub i64 %sub, 1, !dbg !72
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #5, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !75
  ret i8* %6, !dbg !76
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource", scope: !1, file: !1, line: 36, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 36, type: !12)
!15 = !DILocation(line: 36, column: 79, scope: !9)
!16 = !DILocalVariable(name: "dataLen", scope: !17, file: !1, line: 40, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 5)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 40, column: 16, scope: !17)
!22 = !DILocation(line: 40, column: 33, scope: !17)
!23 = !DILocation(line: 40, column: 26, scope: !17)
!24 = !DILocalVariable(name: "environment", scope: !17, file: !1, line: 41, type: !12)
!25 = !DILocation(line: 41, column: 16, scope: !17)
!26 = !DILocation(line: 41, column: 30, scope: !17)
!27 = !DILocation(line: 43, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !17, file: !1, line: 43, column: 13)
!29 = !DILocation(line: 43, column: 25, scope: !28)
!30 = !DILocation(line: 43, column: 13, scope: !17)
!31 = !DILocation(line: 46, column: 21, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 9)
!33 = !DILocation(line: 46, column: 26, scope: !32)
!34 = !DILocation(line: 46, column: 25, scope: !32)
!35 = !DILocation(line: 46, column: 35, scope: !32)
!36 = !DILocation(line: 46, column: 52, scope: !32)
!37 = !DILocation(line: 46, column: 51, scope: !32)
!38 = !DILocation(line: 46, column: 59, scope: !32)
!39 = !DILocation(line: 46, column: 13, scope: !32)
!40 = !DILocation(line: 47, column: 9, scope: !32)
!41 = !DILocation(line: 49, column: 12, scope: !9)
!42 = !DILocation(line: 49, column: 5, scope: !9)
!43 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource", scope: !1, file: !1, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DILocalVariable(name: "data", arg: 1, scope: !43, file: !1, line: 57, type: !12)
!45 = !DILocation(line: 57, column: 83, scope: !43)
!46 = !DILocation(line: 60, column: 12, scope: !43)
!47 = !DILocation(line: 60, column: 5, scope: !43)
!48 = !DILocation(line: 61, column: 12, scope: !43)
!49 = !DILocation(line: 61, column: 5, scope: !43)
!50 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource", scope: !1, file: !1, line: 65, type: !10, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocalVariable(name: "data", arg: 1, scope: !50, file: !1, line: 65, type: !12)
!52 = !DILocation(line: 65, column: 83, scope: !50)
!53 = !DILocalVariable(name: "dataLen", scope: !54, file: !1, line: 69, type: !18)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 67, column: 5)
!55 = !DILocation(line: 69, column: 16, scope: !54)
!56 = !DILocation(line: 69, column: 33, scope: !54)
!57 = !DILocation(line: 69, column: 26, scope: !54)
!58 = !DILocalVariable(name: "environment", scope: !54, file: !1, line: 70, type: !12)
!59 = !DILocation(line: 70, column: 16, scope: !54)
!60 = !DILocation(line: 70, column: 30, scope: !54)
!61 = !DILocation(line: 72, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 72, column: 13)
!63 = !DILocation(line: 72, column: 25, scope: !62)
!64 = !DILocation(line: 72, column: 13, scope: !54)
!65 = !DILocation(line: 75, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 73, column: 9)
!67 = !DILocation(line: 75, column: 26, scope: !66)
!68 = !DILocation(line: 75, column: 25, scope: !66)
!69 = !DILocation(line: 75, column: 35, scope: !66)
!70 = !DILocation(line: 75, column: 52, scope: !66)
!71 = !DILocation(line: 75, column: 51, scope: !66)
!72 = !DILocation(line: 75, column: 59, scope: !66)
!73 = !DILocation(line: 75, column: 13, scope: !66)
!74 = !DILocation(line: 76, column: 9, scope: !66)
!75 = !DILocation(line: 78, column: 12, scope: !50)
!76 = !DILocation(line: 78, column: 5, scope: !50)
