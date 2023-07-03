; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !16, metadata !DIExpression()), !dbg !22
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !22
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !22
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !25
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !26
  %cmp = icmp ne i8* %call, null, !dbg !27
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !29
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !31
  store i32 %call2, i32* %data, align 4, !dbg !32
  br label %if.end, !dbg !33

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !36
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_badSink(i32 %2), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_badSink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !39 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 -1, i32* %data, align 4, !dbg !42
  store i32 7, i32* %data, align 4, !dbg !43
  %0 = load i32, i32* %data, align 4, !dbg !44
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodG2BSink(i32 %0), !dbg !45
  ret void, !dbg !46
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodG2BSink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !47 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 -1, i32* %data, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !51, metadata !DIExpression()), !dbg !53
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !53
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !54
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !56
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !57
  %cmp = icmp ne i8* %call, null, !dbg !58
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !60
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !62
  store i32 %call2, i32* %data, align 4, !dbg !63
  br label %if.end, !dbg !64

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !65
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !67
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink(i32 %2), !dbg !68
  ret void, !dbg !69
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_good() #0 !dbg !70 {
entry:
  call void @goodG2B(), !dbg !71
  call void @goodB2G(), !dbg !72
  ret void, !dbg !73
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_bad", scope: !1, file: !1, line: 27, type: !10, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 29, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 29, column: 9, scope: !9)
!15 = !DILocation(line: 31, column: 10, scope: !9)
!16 = !DILocalVariable(name: "inputBuffer", scope: !17, file: !1, line: 33, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 32, column: 5)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 112, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DILocation(line: 33, column: 14, scope: !17)
!23 = !DILocation(line: 35, column: 19, scope: !24)
!24 = distinct !DILexicalBlock(scope: !17, file: !1, line: 35, column: 13)
!25 = !DILocation(line: 35, column: 49, scope: !24)
!26 = !DILocation(line: 35, column: 13, scope: !24)
!27 = !DILocation(line: 35, column: 56, scope: !24)
!28 = !DILocation(line: 35, column: 13, scope: !17)
!29 = !DILocation(line: 38, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 36, column: 9)
!31 = !DILocation(line: 38, column: 20, scope: !30)
!32 = !DILocation(line: 38, column: 18, scope: !30)
!33 = !DILocation(line: 39, column: 9, scope: !30)
!34 = !DILocation(line: 42, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 41, column: 9)
!36 = !DILocation(line: 45, column: 66, scope: !9)
!37 = !DILocation(line: 45, column: 5, scope: !9)
!38 = !DILocation(line: 46, column: 1, scope: !9)
!39 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DILocalVariable(name: "data", scope: !39, file: !1, line: 56, type: !13)
!41 = !DILocation(line: 56, column: 9, scope: !39)
!42 = !DILocation(line: 58, column: 10, scope: !39)
!43 = !DILocation(line: 61, column: 10, scope: !39)
!44 = !DILocation(line: 62, column: 70, scope: !39)
!45 = !DILocation(line: 62, column: 5, scope: !39)
!46 = !DILocation(line: 63, column: 1, scope: !39)
!47 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 67, type: !10, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DILocalVariable(name: "data", scope: !47, file: !1, line: 69, type: !13)
!49 = !DILocation(line: 69, column: 9, scope: !47)
!50 = !DILocation(line: 71, column: 10, scope: !47)
!51 = !DILocalVariable(name: "inputBuffer", scope: !52, file: !1, line: 73, type: !18)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 72, column: 5)
!53 = !DILocation(line: 73, column: 14, scope: !52)
!54 = !DILocation(line: 75, column: 19, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 75, column: 13)
!56 = !DILocation(line: 75, column: 49, scope: !55)
!57 = !DILocation(line: 75, column: 13, scope: !55)
!58 = !DILocation(line: 75, column: 56, scope: !55)
!59 = !DILocation(line: 75, column: 13, scope: !52)
!60 = !DILocation(line: 78, column: 25, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 76, column: 9)
!62 = !DILocation(line: 78, column: 20, scope: !61)
!63 = !DILocation(line: 78, column: 18, scope: !61)
!64 = !DILocation(line: 79, column: 9, scope: !61)
!65 = !DILocation(line: 82, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !55, file: !1, line: 81, column: 9)
!67 = !DILocation(line: 85, column: 70, scope: !47)
!68 = !DILocation(line: 85, column: 5, scope: !47)
!69 = !DILocation(line: 86, column: 1, scope: !47)
!70 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53_good", scope: !1, file: !1, line: 88, type: !10, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocation(line: 90, column: 5, scope: !70)
!72 = !DILocation(line: 91, column: 5, scope: !70)
!73 = !DILocation(line: 92, column: 1, scope: !70)
