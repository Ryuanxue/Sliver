; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_63a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_63a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_63_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !28
  %1 = load i8*, i8** %data, align 8, !dbg !29
  %call = call i64 @strlen(i8* %1) #6, !dbg !30
  store i64 %call, i64* %dataLen, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !31, metadata !DIExpression()), !dbg !32
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !33
  store i8* %call1, i8** %environment, align 8, !dbg !32
  %2 = load i8*, i8** %environment, align 8, !dbg !34
  %cmp = icmp ne i8* %2, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !38
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i8*, i8** %environment, align 8, !dbg !42
  %6 = load i64, i64* %dataLen, align 8, !dbg !43
  %sub = sub i64 100, %6, !dbg !44
  %sub2 = sub i64 %sub, 1, !dbg !45
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  call void @CWE606_Unchecked_Loop_Condition__char_environment_63b_badSink(i8** %data), !dbg !48
  ret void, !dbg !49
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_63b_badSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !50 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !53, metadata !DIExpression()), !dbg !54
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !54
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !55
  store i8* %arraydecay, i8** %data, align 8, !dbg !56
  %1 = load i8*, i8** %data, align 8, !dbg !57
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !58
  call void @CWE606_Unchecked_Loop_Condition__char_environment_63b_goodG2BSink(i8** %data), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_63b_goodG2BSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !70
  %1 = load i8*, i8** %data, align 8, !dbg !71
  %call = call i64 @strlen(i8* %1) #6, !dbg !72
  store i64 %call, i64* %dataLen, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !73, metadata !DIExpression()), !dbg !74
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !75
  store i8* %call1, i8** %environment, align 8, !dbg !74
  %2 = load i8*, i8** %environment, align 8, !dbg !76
  %cmp = icmp ne i8* %2, null, !dbg !78
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !82
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !83
  %5 = load i8*, i8** %environment, align 8, !dbg !84
  %6 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub = sub i64 100, %6, !dbg !86
  %sub2 = sub i64 %sub, 1, !dbg !87
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !88
  br label %if.end, !dbg !89

if.end:                                           ; preds = %if.then, %entry
  call void @CWE606_Unchecked_Loop_Condition__char_environment_63b_goodB2GSink(i8** %data), !dbg !90
  ret void, !dbg !91
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_63b_goodB2GSink(i8**) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_63_good() #0 !dbg !92 {
entry:
  call void @goodG2B(), !dbg !93
  call void @goodB2G(), !dbg !94
  ret void, !dbg !95
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_061/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_63_bad", scope: !1, file: !1, line: 39, type: !10, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 41, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 41, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 42, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 42, column: 10, scope: !9)
!21 = !DILocation(line: 43, column: 12, scope: !9)
!22 = !DILocation(line: 43, column: 10, scope: !9)
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 46, type: !25)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 46, column: 16, scope: !24)
!29 = !DILocation(line: 46, column: 33, scope: !24)
!30 = !DILocation(line: 46, column: 26, scope: !24)
!31 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 47, type: !13)
!32 = !DILocation(line: 47, column: 16, scope: !24)
!33 = !DILocation(line: 47, column: 30, scope: !24)
!34 = !DILocation(line: 49, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 49, column: 13)
!36 = !DILocation(line: 49, column: 25, scope: !35)
!37 = !DILocation(line: 49, column: 13, scope: !24)
!38 = !DILocation(line: 52, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 50, column: 9)
!40 = !DILocation(line: 52, column: 26, scope: !39)
!41 = !DILocation(line: 52, column: 25, scope: !39)
!42 = !DILocation(line: 52, column: 35, scope: !39)
!43 = !DILocation(line: 52, column: 52, scope: !39)
!44 = !DILocation(line: 52, column: 51, scope: !39)
!45 = !DILocation(line: 52, column: 59, scope: !39)
!46 = !DILocation(line: 52, column: 13, scope: !39)
!47 = !DILocation(line: 53, column: 9, scope: !39)
!48 = !DILocation(line: 55, column: 5, scope: !9)
!49 = !DILocation(line: 56, column: 1, scope: !9)
!50 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 64, type: !10, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocalVariable(name: "data", scope: !50, file: !1, line: 66, type: !13)
!52 = !DILocation(line: 66, column: 12, scope: !50)
!53 = !DILocalVariable(name: "dataBuffer", scope: !50, file: !1, line: 67, type: !17)
!54 = !DILocation(line: 67, column: 10, scope: !50)
!55 = !DILocation(line: 68, column: 12, scope: !50)
!56 = !DILocation(line: 68, column: 10, scope: !50)
!57 = !DILocation(line: 70, column: 12, scope: !50)
!58 = !DILocation(line: 70, column: 5, scope: !50)
!59 = !DILocation(line: 71, column: 5, scope: !50)
!60 = !DILocation(line: 72, column: 1, scope: !50)
!61 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 76, type: !10, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocalVariable(name: "data", scope: !61, file: !1, line: 78, type: !13)
!63 = !DILocation(line: 78, column: 12, scope: !61)
!64 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !1, line: 79, type: !17)
!65 = !DILocation(line: 79, column: 10, scope: !61)
!66 = !DILocation(line: 80, column: 12, scope: !61)
!67 = !DILocation(line: 80, column: 10, scope: !61)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !1, line: 83, type: !25)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 81, column: 5)
!70 = !DILocation(line: 83, column: 16, scope: !69)
!71 = !DILocation(line: 83, column: 33, scope: !69)
!72 = !DILocation(line: 83, column: 26, scope: !69)
!73 = !DILocalVariable(name: "environment", scope: !69, file: !1, line: 84, type: !13)
!74 = !DILocation(line: 84, column: 16, scope: !69)
!75 = !DILocation(line: 84, column: 30, scope: !69)
!76 = !DILocation(line: 86, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !1, line: 86, column: 13)
!78 = !DILocation(line: 86, column: 25, scope: !77)
!79 = !DILocation(line: 86, column: 13, scope: !69)
!80 = !DILocation(line: 89, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 87, column: 9)
!82 = !DILocation(line: 89, column: 26, scope: !81)
!83 = !DILocation(line: 89, column: 25, scope: !81)
!84 = !DILocation(line: 89, column: 35, scope: !81)
!85 = !DILocation(line: 89, column: 52, scope: !81)
!86 = !DILocation(line: 89, column: 51, scope: !81)
!87 = !DILocation(line: 89, column: 59, scope: !81)
!88 = !DILocation(line: 89, column: 13, scope: !81)
!89 = !DILocation(line: 90, column: 9, scope: !81)
!90 = !DILocation(line: 92, column: 5, scope: !61)
!91 = !DILocation(line: 93, column: 1, scope: !61)
!92 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_63_good", scope: !1, file: !1, line: 95, type: !10, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DILocation(line: 97, column: 5, scope: !92)
!94 = !DILocation(line: 98, column: 5, scope: !92)
!95 = !DILocation(line: 99, column: 1, scope: !92)
