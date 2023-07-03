; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !39, metadata !DIExpression()), !dbg !43
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !43
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !43
  %3 = load i32, i32* %data, align 4, !dbg !44
  %cmp3 = icmp sge i32 %3, 0, !dbg !46
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !47

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !48
  %idxprom = sext i32 %4 to i64, !dbg !50
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !50
  store i32 1, i32* %arrayidx, align 4, !dbg !51
  store i32 0, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !55
  %cmp5 = icmp slt i32 %5, 10, !dbg !57
  br i1 %cmp5, label %for.body, label %for.end, !dbg !58

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !59
  %idxprom6 = sext i32 %6 to i64, !dbg !61
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !61
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !61
  call void @printIntLine(i32 %7), !dbg !62
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !64
  %inc = add nsw i32 %8, 1, !dbg !64
  store i32 %inc, i32* %i, align 4, !dbg !64
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !69

if.else8:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !70
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !73 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 -1, i32* %data, align 4, !dbg !76
  store i32 7, i32* %data, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !82
  %1 = load i32, i32* %data, align 4, !dbg !83
  %cmp = icmp sge i32 %1, 0, !dbg !85
  br i1 %cmp, label %if.then, label %if.else, !dbg !86

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !87
  %idxprom = sext i32 %2 to i64, !dbg !89
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !89
  store i32 1, i32* %arrayidx, align 4, !dbg !90
  store i32 0, i32* %i, align 4, !dbg !91
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !94
  %cmp1 = icmp slt i32 %3, 10, !dbg !96
  br i1 %cmp1, label %for.body, label %for.end, !dbg !97

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !98
  %idxprom2 = sext i32 %4 to i64, !dbg !100
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !100
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !100
  call void @printIntLine(i32 %5), !dbg !101
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !103
  %inc = add nsw i32 %6, 1, !dbg !103
  store i32 %inc, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !104, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !107

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !111 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %data, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !115, metadata !DIExpression()), !dbg !117
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !118
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !120
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !121
  %cmp = icmp ne i8* %call, null, !dbg !122
  br i1 %cmp, label %if.then, label %if.else, !dbg !123

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !124
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !126
  store i32 %call2, i32* %data, align 4, !dbg !127
  br label %if.end, !dbg !128

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !134, metadata !DIExpression()), !dbg !135
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !135
  %3 = load i32, i32* %data, align 4, !dbg !136
  %cmp3 = icmp sge i32 %3, 0, !dbg !138
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !139

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !140
  %cmp4 = icmp slt i32 %4, 10, !dbg !141
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !142

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !143
  %idxprom = sext i32 %5 to i64, !dbg !145
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !145
  store i32 1, i32* %arrayidx, align 4, !dbg !146
  store i32 0, i32* %i, align 4, !dbg !147
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !150
  %cmp6 = icmp slt i32 %6, 10, !dbg !152
  br i1 %cmp6, label %for.body, label %for.end, !dbg !153

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !154
  %idxprom7 = sext i32 %7 to i64, !dbg !156
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !156
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !156
  call void @printIntLine(i32 %8), !dbg !157
  br label %for.inc, !dbg !158

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !159
  %inc = add nsw i32 %9, 1, !dbg !159
  store i32 %inc, i32* %i, align 4, !dbg !159
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !163

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !164
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good() #0 !dbg !167 {
entry:
  call void @goodG2B(), !dbg !168
  call void @goodB2G(), !dbg !169
  ret void, !dbg !170
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_564/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocalVariable(name: "inputBuffer", scope: !17, file: !1, line: 31, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 5)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 112, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DILocation(line: 31, column: 14, scope: !17)
!23 = !DILocation(line: 33, column: 19, scope: !24)
!24 = distinct !DILexicalBlock(scope: !17, file: !1, line: 33, column: 13)
!25 = !DILocation(line: 33, column: 49, scope: !24)
!26 = !DILocation(line: 33, column: 13, scope: !24)
!27 = !DILocation(line: 33, column: 56, scope: !24)
!28 = !DILocation(line: 33, column: 13, scope: !17)
!29 = !DILocation(line: 36, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 34, column: 9)
!31 = !DILocation(line: 36, column: 20, scope: !30)
!32 = !DILocation(line: 36, column: 18, scope: !30)
!33 = !DILocation(line: 37, column: 9, scope: !30)
!34 = !DILocation(line: 40, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 39, column: 9)
!36 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 44, type: !13)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!38 = !DILocation(line: 44, column: 13, scope: !37)
!39 = !DILocalVariable(name: "buffer", scope: !37, file: !1, line: 45, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 10)
!43 = !DILocation(line: 45, column: 13, scope: !37)
!44 = !DILocation(line: 48, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 48, column: 13)
!46 = !DILocation(line: 48, column: 18, scope: !45)
!47 = !DILocation(line: 48, column: 13, scope: !37)
!48 = !DILocation(line: 50, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 49, column: 9)
!50 = !DILocation(line: 50, column: 13, scope: !49)
!51 = !DILocation(line: 50, column: 26, scope: !49)
!52 = !DILocation(line: 52, column: 19, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 52, column: 13)
!54 = !DILocation(line: 52, column: 17, scope: !53)
!55 = !DILocation(line: 52, column: 24, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 52, column: 13)
!57 = !DILocation(line: 52, column: 26, scope: !56)
!58 = !DILocation(line: 52, column: 13, scope: !53)
!59 = !DILocation(line: 54, column: 37, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 53, column: 13)
!61 = !DILocation(line: 54, column: 30, scope: !60)
!62 = !DILocation(line: 54, column: 17, scope: !60)
!63 = !DILocation(line: 55, column: 13, scope: !60)
!64 = !DILocation(line: 52, column: 33, scope: !56)
!65 = !DILocation(line: 52, column: 13, scope: !56)
!66 = distinct !{!66, !58, !67, !68}
!67 = !DILocation(line: 55, column: 13, scope: !53)
!68 = !{!"llvm.loop.mustprogress"}
!69 = !DILocation(line: 56, column: 9, scope: !49)
!70 = !DILocation(line: 59, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !45, file: !1, line: 58, column: 9)
!72 = !DILocation(line: 62, column: 1, scope: !9)
!73 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 69, type: !10, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocalVariable(name: "data", scope: !73, file: !1, line: 71, type: !13)
!75 = !DILocation(line: 71, column: 9, scope: !73)
!76 = !DILocation(line: 73, column: 10, scope: !73)
!77 = !DILocation(line: 76, column: 10, scope: !73)
!78 = !DILocalVariable(name: "i", scope: !79, file: !1, line: 78, type: !13)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 77, column: 5)
!80 = !DILocation(line: 78, column: 13, scope: !79)
!81 = !DILocalVariable(name: "buffer", scope: !79, file: !1, line: 79, type: !40)
!82 = !DILocation(line: 79, column: 13, scope: !79)
!83 = !DILocation(line: 82, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 82, column: 13)
!85 = !DILocation(line: 82, column: 18, scope: !84)
!86 = !DILocation(line: 82, column: 13, scope: !79)
!87 = !DILocation(line: 84, column: 20, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 83, column: 9)
!89 = !DILocation(line: 84, column: 13, scope: !88)
!90 = !DILocation(line: 84, column: 26, scope: !88)
!91 = !DILocation(line: 86, column: 19, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 86, column: 13)
!93 = !DILocation(line: 86, column: 17, scope: !92)
!94 = !DILocation(line: 86, column: 24, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 86, column: 13)
!96 = !DILocation(line: 86, column: 26, scope: !95)
!97 = !DILocation(line: 86, column: 13, scope: !92)
!98 = !DILocation(line: 88, column: 37, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 87, column: 13)
!100 = !DILocation(line: 88, column: 30, scope: !99)
!101 = !DILocation(line: 88, column: 17, scope: !99)
!102 = !DILocation(line: 89, column: 13, scope: !99)
!103 = !DILocation(line: 86, column: 33, scope: !95)
!104 = !DILocation(line: 86, column: 13, scope: !95)
!105 = distinct !{!105, !97, !106, !68}
!106 = !DILocation(line: 89, column: 13, scope: !92)
!107 = !DILocation(line: 90, column: 9, scope: !88)
!108 = !DILocation(line: 93, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !84, file: !1, line: 92, column: 9)
!110 = !DILocation(line: 96, column: 1, scope: !73)
!111 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 99, type: !10, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DILocalVariable(name: "data", scope: !111, file: !1, line: 101, type: !13)
!113 = !DILocation(line: 101, column: 9, scope: !111)
!114 = !DILocation(line: 103, column: 10, scope: !111)
!115 = !DILocalVariable(name: "inputBuffer", scope: !116, file: !1, line: 105, type: !18)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 104, column: 5)
!117 = !DILocation(line: 105, column: 14, scope: !116)
!118 = !DILocation(line: 107, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 107, column: 13)
!120 = !DILocation(line: 107, column: 49, scope: !119)
!121 = !DILocation(line: 107, column: 13, scope: !119)
!122 = !DILocation(line: 107, column: 56, scope: !119)
!123 = !DILocation(line: 107, column: 13, scope: !116)
!124 = !DILocation(line: 110, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 108, column: 9)
!126 = !DILocation(line: 110, column: 20, scope: !125)
!127 = !DILocation(line: 110, column: 18, scope: !125)
!128 = !DILocation(line: 111, column: 9, scope: !125)
!129 = !DILocation(line: 114, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !119, file: !1, line: 113, column: 9)
!131 = !DILocalVariable(name: "i", scope: !132, file: !1, line: 118, type: !13)
!132 = distinct !DILexicalBlock(scope: !111, file: !1, line: 117, column: 5)
!133 = !DILocation(line: 118, column: 13, scope: !132)
!134 = !DILocalVariable(name: "buffer", scope: !132, file: !1, line: 119, type: !40)
!135 = !DILocation(line: 119, column: 13, scope: !132)
!136 = !DILocation(line: 121, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 121, column: 13)
!138 = !DILocation(line: 121, column: 18, scope: !137)
!139 = !DILocation(line: 121, column: 23, scope: !137)
!140 = !DILocation(line: 121, column: 26, scope: !137)
!141 = !DILocation(line: 121, column: 31, scope: !137)
!142 = !DILocation(line: 121, column: 13, scope: !132)
!143 = !DILocation(line: 123, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 122, column: 9)
!145 = !DILocation(line: 123, column: 13, scope: !144)
!146 = !DILocation(line: 123, column: 26, scope: !144)
!147 = !DILocation(line: 125, column: 19, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 125, column: 13)
!149 = !DILocation(line: 125, column: 17, scope: !148)
!150 = !DILocation(line: 125, column: 24, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 125, column: 13)
!152 = !DILocation(line: 125, column: 26, scope: !151)
!153 = !DILocation(line: 125, column: 13, scope: !148)
!154 = !DILocation(line: 127, column: 37, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 126, column: 13)
!156 = !DILocation(line: 127, column: 30, scope: !155)
!157 = !DILocation(line: 127, column: 17, scope: !155)
!158 = !DILocation(line: 128, column: 13, scope: !155)
!159 = !DILocation(line: 125, column: 33, scope: !151)
!160 = !DILocation(line: 125, column: 13, scope: !151)
!161 = distinct !{!161, !153, !162, !68}
!162 = !DILocation(line: 128, column: 13, scope: !148)
!163 = !DILocation(line: 129, column: 9, scope: !144)
!164 = !DILocation(line: 132, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !137, file: !1, line: 131, column: 9)
!166 = !DILocation(line: 135, column: 1, scope: !111)
!167 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good", scope: !1, file: !1, line: 137, type: !10, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!168 = !DILocation(line: 139, column: 5, scope: !167)
!169 = !DILocation(line: 140, column: 5, scope: !167)
!170 = !DILocation(line: 141, column: 1, scope: !167)
