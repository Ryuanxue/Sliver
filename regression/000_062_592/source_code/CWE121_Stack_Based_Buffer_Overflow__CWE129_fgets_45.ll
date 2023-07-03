; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData = dso_local global i32 0, align 4, !dbg !8
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData = dso_local global i32 0, align 4, !dbg !11
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !17 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4, !dbg !22
  store i32 %0, i32* %data, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !26, metadata !DIExpression()), !dbg !30
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !30
  %2 = load i32, i32* %data, align 4, !dbg !31
  %cmp = icmp sge i32 %2, 0, !dbg !33
  br i1 %cmp, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !35
  %idxprom = sext i32 %3 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !37
  store i32 1, i32* %arrayidx, align 4, !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !42
  %cmp1 = icmp slt i32 %4, 10, !dbg !44
  br i1 %cmp1, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !46
  %idxprom2 = sext i32 %5 to i64, !dbg !48
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !48
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !48
  call void @printIntLine(i32 %6), !dbg !49
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !51
  %inc = add nsw i32 %7, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !56

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !57
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_bad() #0 !dbg !60 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 -1, i32* %data, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !64, metadata !DIExpression()), !dbg !70
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !71
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !73
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !74
  %cmp = icmp ne i8* %call, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.else, !dbg !76

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !77
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !79
  store i32 %call2, i32* %data, align 4, !dbg !80
  br label %if.end, !dbg !81

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !82
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !84
  store i32 %2, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4, !dbg !85
  call void @badSink(), !dbg !86
  ret void, !dbg !87
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !88 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData, align 4, !dbg !91
  store i32 %0, i32* %data, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !95, metadata !DIExpression()), !dbg !96
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !96
  %2 = load i32, i32* %data, align 4, !dbg !97
  %cmp = icmp sge i32 %2, 0, !dbg !99
  br i1 %cmp, label %if.then, label %if.else, !dbg !100

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !101
  %idxprom = sext i32 %3 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !103
  store i32 1, i32* %arrayidx, align 4, !dbg !104
  store i32 0, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !108
  %cmp1 = icmp slt i32 %4, 10, !dbg !110
  br i1 %cmp1, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !112
  %idxprom2 = sext i32 %5 to i64, !dbg !114
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !114
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !114
  call void @printIntLine(i32 %6), !dbg !115
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !117
  %inc = add nsw i32 %7, 1, !dbg !117
  store i32 %inc, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !121

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !122
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !125 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 -1, i32* %data, align 4, !dbg !128
  store i32 7, i32* %data, align 4, !dbg !129
  %0 = load i32, i32* %data, align 4, !dbg !130
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData, align 4, !dbg !131
  call void @goodG2BSink(), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !134 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4, !dbg !137
  store i32 %0, i32* %data, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !141, metadata !DIExpression()), !dbg !142
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !142
  %2 = load i32, i32* %data, align 4, !dbg !143
  %cmp = icmp sge i32 %2, 0, !dbg !145
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !146

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !147
  %cmp1 = icmp slt i32 %3, 10, !dbg !148
  br i1 %cmp1, label %if.then, label %if.else, !dbg !149

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !150
  %idxprom = sext i32 %4 to i64, !dbg !152
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !152
  store i32 1, i32* %arrayidx, align 4, !dbg !153
  store i32 0, i32* %i, align 4, !dbg !154
  br label %for.cond, !dbg !156

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !157
  %cmp2 = icmp slt i32 %5, 10, !dbg !159
  br i1 %cmp2, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !161
  %idxprom3 = sext i32 %6 to i64, !dbg !163
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !163
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !163
  call void @printIntLine(i32 %7), !dbg !164
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !166
  %inc = add nsw i32 %8, 1, !dbg !166
  store i32 %inc, i32* %i, align 4, !dbg !166
  br label %for.cond, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !170

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !171
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !174 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 -1, i32* %data, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !178, metadata !DIExpression()), !dbg !180
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !181
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !183
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !184
  %cmp = icmp ne i8* %call, null, !dbg !185
  br i1 %cmp, label %if.then, label %if.else, !dbg !186

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !187
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !189
  store i32 %call2, i32* %data, align 4, !dbg !190
  br label %if.end, !dbg !191

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !194
  store i32 %2, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4, !dbg !195
  call void @goodB2GSink(), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_good() #0 !dbg !198 {
entry:
  call void @goodG2B(), !dbg !199
  call void @goodB2G(), !dbg !200
  ret void, !dbg !201
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData", scope: !2, file: !3, line: 23, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_592/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData", scope: !2, file: !3, line: 24, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData", scope: !2, file: !3, line: 25, type: !10, isLocal: false, isDefinition: true)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 12.0.0"}
!17 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 29, type: !18, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = !DILocalVariable(name: "data", scope: !17, file: !3, line: 31, type: !10)
!21 = !DILocation(line: 31, column: 9, scope: !17)
!22 = !DILocation(line: 31, column: 16, scope: !17)
!23 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 33, type: !10)
!24 = distinct !DILexicalBlock(scope: !17, file: !3, line: 32, column: 5)
!25 = !DILocation(line: 33, column: 13, scope: !24)
!26 = !DILocalVariable(name: "buffer", scope: !24, file: !3, line: 34, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DILocation(line: 34, column: 13, scope: !24)
!31 = !DILocation(line: 37, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !3, line: 37, column: 13)
!33 = !DILocation(line: 37, column: 18, scope: !32)
!34 = !DILocation(line: 37, column: 13, scope: !24)
!35 = !DILocation(line: 39, column: 20, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !3, line: 38, column: 9)
!37 = !DILocation(line: 39, column: 13, scope: !36)
!38 = !DILocation(line: 39, column: 26, scope: !36)
!39 = !DILocation(line: 41, column: 19, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 41, column: 13)
!41 = !DILocation(line: 41, column: 17, scope: !40)
!42 = !DILocation(line: 41, column: 24, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 41, column: 13)
!44 = !DILocation(line: 41, column: 26, scope: !43)
!45 = !DILocation(line: 41, column: 13, scope: !40)
!46 = !DILocation(line: 43, column: 37, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !3, line: 42, column: 13)
!48 = !DILocation(line: 43, column: 30, scope: !47)
!49 = !DILocation(line: 43, column: 17, scope: !47)
!50 = !DILocation(line: 44, column: 13, scope: !47)
!51 = !DILocation(line: 41, column: 33, scope: !43)
!52 = !DILocation(line: 41, column: 13, scope: !43)
!53 = distinct !{!53, !45, !54, !55}
!54 = !DILocation(line: 44, column: 13, scope: !40)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 45, column: 9, scope: !36)
!57 = !DILocation(line: 48, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !32, file: !3, line: 47, column: 9)
!59 = !DILocation(line: 51, column: 1, scope: !17)
!60 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_bad", scope: !3, file: !3, line: 53, type: !18, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DILocalVariable(name: "data", scope: !60, file: !3, line: 55, type: !10)
!62 = !DILocation(line: 55, column: 9, scope: !60)
!63 = !DILocation(line: 57, column: 10, scope: !60)
!64 = !DILocalVariable(name: "inputBuffer", scope: !65, file: !3, line: 59, type: !66)
!65 = distinct !DILexicalBlock(scope: !60, file: !3, line: 58, column: 5)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 112, elements: !68)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 14)
!70 = !DILocation(line: 59, column: 14, scope: !65)
!71 = !DILocation(line: 61, column: 19, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !3, line: 61, column: 13)
!73 = !DILocation(line: 61, column: 49, scope: !72)
!74 = !DILocation(line: 61, column: 13, scope: !72)
!75 = !DILocation(line: 61, column: 56, scope: !72)
!76 = !DILocation(line: 61, column: 13, scope: !65)
!77 = !DILocation(line: 64, column: 25, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 62, column: 9)
!79 = !DILocation(line: 64, column: 20, scope: !78)
!80 = !DILocation(line: 64, column: 18, scope: !78)
!81 = !DILocation(line: 65, column: 9, scope: !78)
!82 = !DILocation(line: 68, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !3, line: 67, column: 9)
!84 = !DILocation(line: 71, column: 67, scope: !60)
!85 = !DILocation(line: 71, column: 65, scope: !60)
!86 = !DILocation(line: 72, column: 5, scope: !60)
!87 = !DILocation(line: 73, column: 1, scope: !60)
!88 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 80, type: !18, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DILocalVariable(name: "data", scope: !88, file: !3, line: 82, type: !10)
!90 = !DILocation(line: 82, column: 9, scope: !88)
!91 = !DILocation(line: 82, column: 16, scope: !88)
!92 = !DILocalVariable(name: "i", scope: !93, file: !3, line: 84, type: !10)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 83, column: 5)
!94 = !DILocation(line: 84, column: 13, scope: !93)
!95 = !DILocalVariable(name: "buffer", scope: !93, file: !3, line: 85, type: !27)
!96 = !DILocation(line: 85, column: 13, scope: !93)
!97 = !DILocation(line: 88, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !3, line: 88, column: 13)
!99 = !DILocation(line: 88, column: 18, scope: !98)
!100 = !DILocation(line: 88, column: 13, scope: !93)
!101 = !DILocation(line: 90, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 89, column: 9)
!103 = !DILocation(line: 90, column: 13, scope: !102)
!104 = !DILocation(line: 90, column: 26, scope: !102)
!105 = !DILocation(line: 92, column: 19, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 92, column: 13)
!107 = !DILocation(line: 92, column: 17, scope: !106)
!108 = !DILocation(line: 92, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !3, line: 92, column: 13)
!110 = !DILocation(line: 92, column: 26, scope: !109)
!111 = !DILocation(line: 92, column: 13, scope: !106)
!112 = !DILocation(line: 94, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !3, line: 93, column: 13)
!114 = !DILocation(line: 94, column: 30, scope: !113)
!115 = !DILocation(line: 94, column: 17, scope: !113)
!116 = !DILocation(line: 95, column: 13, scope: !113)
!117 = !DILocation(line: 92, column: 33, scope: !109)
!118 = !DILocation(line: 92, column: 13, scope: !109)
!119 = distinct !{!119, !111, !120, !55}
!120 = !DILocation(line: 95, column: 13, scope: !106)
!121 = !DILocation(line: 96, column: 9, scope: !102)
!122 = !DILocation(line: 99, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !98, file: !3, line: 98, column: 9)
!124 = !DILocation(line: 102, column: 1, scope: !88)
!125 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 104, type: !18, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!126 = !DILocalVariable(name: "data", scope: !125, file: !3, line: 106, type: !10)
!127 = !DILocation(line: 106, column: 9, scope: !125)
!128 = !DILocation(line: 108, column: 10, scope: !125)
!129 = !DILocation(line: 111, column: 10, scope: !125)
!130 = !DILocation(line: 112, column: 71, scope: !125)
!131 = !DILocation(line: 112, column: 69, scope: !125)
!132 = !DILocation(line: 113, column: 5, scope: !125)
!133 = !DILocation(line: 114, column: 1, scope: !125)
!134 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 117, type: !18, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!135 = !DILocalVariable(name: "data", scope: !134, file: !3, line: 119, type: !10)
!136 = !DILocation(line: 119, column: 9, scope: !134)
!137 = !DILocation(line: 119, column: 16, scope: !134)
!138 = !DILocalVariable(name: "i", scope: !139, file: !3, line: 121, type: !10)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 120, column: 5)
!140 = !DILocation(line: 121, column: 13, scope: !139)
!141 = !DILocalVariable(name: "buffer", scope: !139, file: !3, line: 122, type: !27)
!142 = !DILocation(line: 122, column: 13, scope: !139)
!143 = !DILocation(line: 124, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 124, column: 13)
!145 = !DILocation(line: 124, column: 18, scope: !144)
!146 = !DILocation(line: 124, column: 23, scope: !144)
!147 = !DILocation(line: 124, column: 26, scope: !144)
!148 = !DILocation(line: 124, column: 31, scope: !144)
!149 = !DILocation(line: 124, column: 13, scope: !139)
!150 = !DILocation(line: 126, column: 20, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !3, line: 125, column: 9)
!152 = !DILocation(line: 126, column: 13, scope: !151)
!153 = !DILocation(line: 126, column: 26, scope: !151)
!154 = !DILocation(line: 128, column: 19, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 128, column: 13)
!156 = !DILocation(line: 128, column: 17, scope: !155)
!157 = !DILocation(line: 128, column: 24, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 128, column: 13)
!159 = !DILocation(line: 128, column: 26, scope: !158)
!160 = !DILocation(line: 128, column: 13, scope: !155)
!161 = !DILocation(line: 130, column: 37, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 129, column: 13)
!163 = !DILocation(line: 130, column: 30, scope: !162)
!164 = !DILocation(line: 130, column: 17, scope: !162)
!165 = !DILocation(line: 131, column: 13, scope: !162)
!166 = !DILocation(line: 128, column: 33, scope: !158)
!167 = !DILocation(line: 128, column: 13, scope: !158)
!168 = distinct !{!168, !160, !169, !55}
!169 = !DILocation(line: 131, column: 13, scope: !155)
!170 = !DILocation(line: 132, column: 9, scope: !151)
!171 = !DILocation(line: 135, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !144, file: !3, line: 134, column: 9)
!173 = !DILocation(line: 138, column: 1, scope: !134)
!174 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 140, type: !18, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!175 = !DILocalVariable(name: "data", scope: !174, file: !3, line: 142, type: !10)
!176 = !DILocation(line: 142, column: 9, scope: !174)
!177 = !DILocation(line: 144, column: 10, scope: !174)
!178 = !DILocalVariable(name: "inputBuffer", scope: !179, file: !3, line: 146, type: !66)
!179 = distinct !DILexicalBlock(scope: !174, file: !3, line: 145, column: 5)
!180 = !DILocation(line: 146, column: 14, scope: !179)
!181 = !DILocation(line: 148, column: 19, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 148, column: 13)
!183 = !DILocation(line: 148, column: 49, scope: !182)
!184 = !DILocation(line: 148, column: 13, scope: !182)
!185 = !DILocation(line: 148, column: 56, scope: !182)
!186 = !DILocation(line: 148, column: 13, scope: !179)
!187 = !DILocation(line: 151, column: 25, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 149, column: 9)
!189 = !DILocation(line: 151, column: 20, scope: !188)
!190 = !DILocation(line: 151, column: 18, scope: !188)
!191 = !DILocation(line: 152, column: 9, scope: !188)
!192 = !DILocation(line: 155, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !182, file: !3, line: 154, column: 9)
!194 = !DILocation(line: 158, column: 71, scope: !174)
!195 = !DILocation(line: 158, column: 69, scope: !174)
!196 = !DILocation(line: 159, column: 5, scope: !174)
!197 = !DILocation(line: 160, column: 1, scope: !174)
!198 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_good", scope: !3, file: !3, line: 162, type: !18, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!199 = !DILocation(line: 164, column: 5, scope: !198)
!200 = !DILocation(line: 165, column: 5, scope: !198)
!201 = !DILocation(line: 166, column: 1, scope: !198)
