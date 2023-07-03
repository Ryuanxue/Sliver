; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data3 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !36, metadata !DIExpression()), !dbg !38
  %2 = load i32, i32* %data, align 4, !dbg !39
  store i32 %2, i32* %dataCopy, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load i32, i32* %dataCopy, align 4, !dbg !42
  store i32 %3, i32* %data3, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !46, metadata !DIExpression()), !dbg !50
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !50
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !50
  %5 = load i32, i32* %data3, align 4, !dbg !51
  %cmp4 = icmp sge i32 %5, 0, !dbg !53
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !54

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !55
  %idxprom = sext i32 %6 to i64, !dbg !57
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !57
  store i32 1, i32* %arrayidx, align 4, !dbg !58
  store i32 0, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %i, align 4, !dbg !62
  %cmp6 = icmp slt i32 %7, 10, !dbg !64
  br i1 %cmp6, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !66
  %idxprom7 = sext i32 %8 to i64, !dbg !68
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !68
  %9 = load i32, i32* %arrayidx8, align 4, !dbg !68
  call void @printIntLine(i32 %9), !dbg !69
  br label %for.inc, !dbg !70

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !71
  %inc = add nsw i32 %10, 1, !dbg !71
  store i32 %inc, i32* %i, align 4, !dbg !71
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !76

if.else9:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !77
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !79
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
define dso_local void @goodG2B() #0 !dbg !80 {
entry:
  %data = alloca i32, align 4
  %dataCopy = alloca i32, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 -1, i32* %data, align 4, !dbg !83
  store i32 7, i32* %data, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !85, metadata !DIExpression()), !dbg !87
  %0 = load i32, i32* %data, align 4, !dbg !88
  store i32 %0, i32* %dataCopy, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !89, metadata !DIExpression()), !dbg !90
  %1 = load i32, i32* %dataCopy, align 4, !dbg !91
  store i32 %1, i32* %data1, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !95, metadata !DIExpression()), !dbg !96
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !96
  %3 = load i32, i32* %data1, align 4, !dbg !97
  %cmp = icmp sge i32 %3, 0, !dbg !99
  br i1 %cmp, label %if.then, label %if.else, !dbg !100

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !101
  %idxprom = sext i32 %4 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !103
  store i32 1, i32* %arrayidx, align 4, !dbg !104
  store i32 0, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !108
  %cmp2 = icmp slt i32 %5, 10, !dbg !110
  br i1 %cmp2, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !112
  %idxprom3 = sext i32 %6 to i64, !dbg !114
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !114
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !114
  call void @printIntLine(i32 %7), !dbg !115
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !117
  %inc = add nsw i32 %8, 1, !dbg !117
  store i32 %inc, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !121

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !125 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 -1, i32* %data, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !129, metadata !DIExpression()), !dbg !131
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !132
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !134
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !135
  %cmp = icmp ne i8* %call, null, !dbg !136
  br i1 %cmp, label %if.then, label %if.else, !dbg !137

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !138
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !140
  store i32 %call2, i32* %data, align 4, !dbg !141
  br label %if.end, !dbg !142

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !143
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !145, metadata !DIExpression()), !dbg !147
  %2 = load i32, i32* %data, align 4, !dbg !148
  store i32 %2, i32* %dataCopy, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !149, metadata !DIExpression()), !dbg !150
  %3 = load i32, i32* %dataCopy, align 4, !dbg !151
  store i32 %3, i32* %data3, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !155, metadata !DIExpression()), !dbg !156
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !156
  %5 = load i32, i32* %data3, align 4, !dbg !157
  %cmp4 = icmp sge i32 %5, 0, !dbg !159
  br i1 %cmp4, label %land.lhs.true, label %if.else10, !dbg !160

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !161
  %cmp5 = icmp slt i32 %6, 10, !dbg !162
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !163

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data3, align 4, !dbg !164
  %idxprom = sext i32 %7 to i64, !dbg !166
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !166
  store i32 1, i32* %arrayidx, align 4, !dbg !167
  store i32 0, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !171
  %cmp7 = icmp slt i32 %8, 10, !dbg !173
  br i1 %cmp7, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !175
  %idxprom8 = sext i32 %9 to i64, !dbg !177
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !177
  %10 = load i32, i32* %arrayidx9, align 4, !dbg !177
  call void @printIntLine(i32 %10), !dbg !178
  br label %for.inc, !dbg !179

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !180
  %inc = add nsw i32 %11, 1, !dbg !180
  store i32 %inc, i32* %i, align 4, !dbg !180
  br label %for.cond, !dbg !181, !llvm.loop !182

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !184

if.else10:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !185
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_good() #0 !dbg !188 {
entry:
  call void @goodG2B(), !dbg !189
  call void @goodB2G(), !dbg !190
  ret void, !dbg !191
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_584/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!36 = !DILocalVariable(name: "dataCopy", scope: !37, file: !1, line: 44, type: !13)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!38 = !DILocation(line: 44, column: 13, scope: !37)
!39 = !DILocation(line: 44, column: 24, scope: !37)
!40 = !DILocalVariable(name: "data", scope: !37, file: !1, line: 45, type: !13)
!41 = !DILocation(line: 45, column: 13, scope: !37)
!42 = !DILocation(line: 45, column: 20, scope: !37)
!43 = !DILocalVariable(name: "i", scope: !44, file: !1, line: 47, type: !13)
!44 = distinct !DILexicalBlock(scope: !37, file: !1, line: 46, column: 9)
!45 = !DILocation(line: 47, column: 17, scope: !44)
!46 = !DILocalVariable(name: "buffer", scope: !44, file: !1, line: 48, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DILocation(line: 48, column: 17, scope: !44)
!51 = !DILocation(line: 51, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 51, column: 17)
!53 = !DILocation(line: 51, column: 22, scope: !52)
!54 = !DILocation(line: 51, column: 17, scope: !44)
!55 = !DILocation(line: 53, column: 24, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 52, column: 13)
!57 = !DILocation(line: 53, column: 17, scope: !56)
!58 = !DILocation(line: 53, column: 30, scope: !56)
!59 = !DILocation(line: 55, column: 23, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 55, column: 17)
!61 = !DILocation(line: 55, column: 21, scope: !60)
!62 = !DILocation(line: 55, column: 28, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 55, column: 17)
!64 = !DILocation(line: 55, column: 30, scope: !63)
!65 = !DILocation(line: 55, column: 17, scope: !60)
!66 = !DILocation(line: 57, column: 41, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 56, column: 17)
!68 = !DILocation(line: 57, column: 34, scope: !67)
!69 = !DILocation(line: 57, column: 21, scope: !67)
!70 = !DILocation(line: 58, column: 17, scope: !67)
!71 = !DILocation(line: 55, column: 37, scope: !63)
!72 = !DILocation(line: 55, column: 17, scope: !63)
!73 = distinct !{!73, !65, !74, !75}
!74 = !DILocation(line: 58, column: 17, scope: !60)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !DILocation(line: 59, column: 13, scope: !56)
!77 = !DILocation(line: 62, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !52, file: !1, line: 61, column: 13)
!79 = !DILocation(line: 66, column: 1, scope: !9)
!80 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 73, type: !10, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!81 = !DILocalVariable(name: "data", scope: !80, file: !1, line: 75, type: !13)
!82 = !DILocation(line: 75, column: 9, scope: !80)
!83 = !DILocation(line: 77, column: 10, scope: !80)
!84 = !DILocation(line: 80, column: 10, scope: !80)
!85 = !DILocalVariable(name: "dataCopy", scope: !86, file: !1, line: 82, type: !13)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 81, column: 5)
!87 = !DILocation(line: 82, column: 13, scope: !86)
!88 = !DILocation(line: 82, column: 24, scope: !86)
!89 = !DILocalVariable(name: "data", scope: !86, file: !1, line: 83, type: !13)
!90 = !DILocation(line: 83, column: 13, scope: !86)
!91 = !DILocation(line: 83, column: 20, scope: !86)
!92 = !DILocalVariable(name: "i", scope: !93, file: !1, line: 85, type: !13)
!93 = distinct !DILexicalBlock(scope: !86, file: !1, line: 84, column: 9)
!94 = !DILocation(line: 85, column: 17, scope: !93)
!95 = !DILocalVariable(name: "buffer", scope: !93, file: !1, line: 86, type: !47)
!96 = !DILocation(line: 86, column: 17, scope: !93)
!97 = !DILocation(line: 89, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 89, column: 17)
!99 = !DILocation(line: 89, column: 22, scope: !98)
!100 = !DILocation(line: 89, column: 17, scope: !93)
!101 = !DILocation(line: 91, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 90, column: 13)
!103 = !DILocation(line: 91, column: 17, scope: !102)
!104 = !DILocation(line: 91, column: 30, scope: !102)
!105 = !DILocation(line: 93, column: 23, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 93, column: 17)
!107 = !DILocation(line: 93, column: 21, scope: !106)
!108 = !DILocation(line: 93, column: 28, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 93, column: 17)
!110 = !DILocation(line: 93, column: 30, scope: !109)
!111 = !DILocation(line: 93, column: 17, scope: !106)
!112 = !DILocation(line: 95, column: 41, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 94, column: 17)
!114 = !DILocation(line: 95, column: 34, scope: !113)
!115 = !DILocation(line: 95, column: 21, scope: !113)
!116 = !DILocation(line: 96, column: 17, scope: !113)
!117 = !DILocation(line: 93, column: 37, scope: !109)
!118 = !DILocation(line: 93, column: 17, scope: !109)
!119 = distinct !{!119, !111, !120, !75}
!120 = !DILocation(line: 96, column: 17, scope: !106)
!121 = !DILocation(line: 97, column: 13, scope: !102)
!122 = !DILocation(line: 100, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !98, file: !1, line: 99, column: 13)
!124 = !DILocation(line: 104, column: 1, scope: !80)
!125 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 107, type: !10, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(name: "data", scope: !125, file: !1, line: 109, type: !13)
!127 = !DILocation(line: 109, column: 9, scope: !125)
!128 = !DILocation(line: 111, column: 10, scope: !125)
!129 = !DILocalVariable(name: "inputBuffer", scope: !130, file: !1, line: 113, type: !18)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 112, column: 5)
!131 = !DILocation(line: 113, column: 14, scope: !130)
!132 = !DILocation(line: 115, column: 19, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 115, column: 13)
!134 = !DILocation(line: 115, column: 49, scope: !133)
!135 = !DILocation(line: 115, column: 13, scope: !133)
!136 = !DILocation(line: 115, column: 56, scope: !133)
!137 = !DILocation(line: 115, column: 13, scope: !130)
!138 = !DILocation(line: 118, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 116, column: 9)
!140 = !DILocation(line: 118, column: 20, scope: !139)
!141 = !DILocation(line: 118, column: 18, scope: !139)
!142 = !DILocation(line: 119, column: 9, scope: !139)
!143 = !DILocation(line: 122, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !133, file: !1, line: 121, column: 9)
!145 = !DILocalVariable(name: "dataCopy", scope: !146, file: !1, line: 126, type: !13)
!146 = distinct !DILexicalBlock(scope: !125, file: !1, line: 125, column: 5)
!147 = !DILocation(line: 126, column: 13, scope: !146)
!148 = !DILocation(line: 126, column: 24, scope: !146)
!149 = !DILocalVariable(name: "data", scope: !146, file: !1, line: 127, type: !13)
!150 = !DILocation(line: 127, column: 13, scope: !146)
!151 = !DILocation(line: 127, column: 20, scope: !146)
!152 = !DILocalVariable(name: "i", scope: !153, file: !1, line: 129, type: !13)
!153 = distinct !DILexicalBlock(scope: !146, file: !1, line: 128, column: 9)
!154 = !DILocation(line: 129, column: 17, scope: !153)
!155 = !DILocalVariable(name: "buffer", scope: !153, file: !1, line: 130, type: !47)
!156 = !DILocation(line: 130, column: 17, scope: !153)
!157 = !DILocation(line: 132, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 132, column: 17)
!159 = !DILocation(line: 132, column: 22, scope: !158)
!160 = !DILocation(line: 132, column: 27, scope: !158)
!161 = !DILocation(line: 132, column: 30, scope: !158)
!162 = !DILocation(line: 132, column: 35, scope: !158)
!163 = !DILocation(line: 132, column: 17, scope: !153)
!164 = !DILocation(line: 134, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 133, column: 13)
!166 = !DILocation(line: 134, column: 17, scope: !165)
!167 = !DILocation(line: 134, column: 30, scope: !165)
!168 = !DILocation(line: 136, column: 23, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 136, column: 17)
!170 = !DILocation(line: 136, column: 21, scope: !169)
!171 = !DILocation(line: 136, column: 28, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 136, column: 17)
!173 = !DILocation(line: 136, column: 30, scope: !172)
!174 = !DILocation(line: 136, column: 17, scope: !169)
!175 = !DILocation(line: 138, column: 41, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 137, column: 17)
!177 = !DILocation(line: 138, column: 34, scope: !176)
!178 = !DILocation(line: 138, column: 21, scope: !176)
!179 = !DILocation(line: 139, column: 17, scope: !176)
!180 = !DILocation(line: 136, column: 37, scope: !172)
!181 = !DILocation(line: 136, column: 17, scope: !172)
!182 = distinct !{!182, !174, !183, !75}
!183 = !DILocation(line: 139, column: 17, scope: !169)
!184 = !DILocation(line: 140, column: 13, scope: !165)
!185 = !DILocation(line: 143, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !158, file: !1, line: 142, column: 13)
!187 = !DILocation(line: 147, column: 1, scope: !125)
!188 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_good", scope: !1, file: !1, line: 149, type: !10, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DILocation(line: 151, column: 5, scope: !188)
!190 = !DILocation(line: 152, column: 5, scope: !188)
!191 = !DILocation(line: 153, column: 1, scope: !188)
