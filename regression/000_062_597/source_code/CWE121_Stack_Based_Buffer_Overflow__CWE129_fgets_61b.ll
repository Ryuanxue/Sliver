; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource(i32 %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !15, metadata !DIExpression()), !dbg !21
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !22
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !24
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !25
  %cmp = icmp ne i8* %call, null, !dbg !26
  br i1 %cmp, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !28
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !30
  store i32 %call2, i32* %data.addr, align 4, !dbg !31
  br label %if.end, !dbg !32

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !35
  ret i32 %2, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource(i32 %data) #0 !dbg !37 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 7, i32* %data.addr, align 4, !dbg !40
  %0 = load i32, i32* %data.addr, align 4, !dbg !41
  ret i32 %0, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource(i32 %data) #0 !dbg !43 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !46, metadata !DIExpression()), !dbg !48
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !48
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !48
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !49
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !51
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !52
  %cmp = icmp ne i8* %call, null, !dbg !53
  br i1 %cmp, label %if.then, label %if.else, !dbg !54

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !55
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !57
  store i32 %call2, i32* %data.addr, align 4, !dbg !58
  br label %if.end, !dbg !59

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !60
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !62
  ret i32 %2, !dbg !63
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_597/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource", scope: !1, file: !1, line: 24, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 24, type: !12)
!14 = !DILocation(line: 24, column: 72, scope: !9)
!15 = !DILocalVariable(name: "inputBuffer", scope: !16, file: !1, line: 27, type: !17)
!16 = distinct !DILexicalBlock(scope: !9, file: !1, line: 26, column: 5)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 112, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 14)
!21 = !DILocation(line: 27, column: 14, scope: !16)
!22 = !DILocation(line: 29, column: 19, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !1, line: 29, column: 13)
!24 = !DILocation(line: 29, column: 49, scope: !23)
!25 = !DILocation(line: 29, column: 13, scope: !23)
!26 = !DILocation(line: 29, column: 56, scope: !23)
!27 = !DILocation(line: 29, column: 13, scope: !16)
!28 = !DILocation(line: 32, column: 25, scope: !29)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 30, column: 9)
!30 = !DILocation(line: 32, column: 20, scope: !29)
!31 = !DILocation(line: 32, column: 18, scope: !29)
!32 = !DILocation(line: 33, column: 9, scope: !29)
!33 = !DILocation(line: 36, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !1, line: 35, column: 9)
!35 = !DILocation(line: 39, column: 12, scope: !9)
!36 = !DILocation(line: 39, column: 5, scope: !9)
!37 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource", scope: !1, file: !1, line: 47, type: !10, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DILocalVariable(name: "data", arg: 1, scope: !37, file: !1, line: 47, type: !12)
!39 = !DILocation(line: 47, column: 76, scope: !37)
!40 = !DILocation(line: 51, column: 10, scope: !37)
!41 = !DILocation(line: 52, column: 12, scope: !37)
!42 = !DILocation(line: 52, column: 5, scope: !37)
!43 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource", scope: !1, file: !1, line: 56, type: !10, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DILocalVariable(name: "data", arg: 1, scope: !43, file: !1, line: 56, type: !12)
!45 = !DILocation(line: 56, column: 76, scope: !43)
!46 = !DILocalVariable(name: "inputBuffer", scope: !47, file: !1, line: 59, type: !17)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 58, column: 5)
!48 = !DILocation(line: 59, column: 14, scope: !47)
!49 = !DILocation(line: 61, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 61, column: 13)
!51 = !DILocation(line: 61, column: 49, scope: !50)
!52 = !DILocation(line: 61, column: 13, scope: !50)
!53 = !DILocation(line: 61, column: 56, scope: !50)
!54 = !DILocation(line: 61, column: 13, scope: !47)
!55 = !DILocation(line: 64, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 62, column: 9)
!57 = !DILocation(line: 64, column: 20, scope: !56)
!58 = !DILocation(line: 64, column: 18, scope: !56)
!59 = !DILocation(line: 65, column: 9, scope: !56)
!60 = !DILocation(line: 68, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !50, file: !1, line: 67, column: 9)
!62 = !DILocation(line: 71, column: 12, scope: !43)
!63 = !DILocation(line: 71, column: 5, scope: !43)
