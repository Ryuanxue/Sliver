; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data4 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !15, metadata !DIExpression()), !dbg !17
  store i32* %data, i32** %dataPtr1, align 8, !dbg !17
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %data, i32** %dataPtr2, align 8, !dbg !19
  store i32 -1, i32* %data, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !21, metadata !DIExpression()), !dbg !23
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !24
  %1 = load i32, i32* %0, align 4, !dbg !25
  store i32 %1, i32* %data1, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !26, metadata !DIExpression()), !dbg !32
  %2 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !33
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !35
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %3), !dbg !36
  %cmp = icmp ne i8* %call, null, !dbg !37
  br i1 %cmp, label %if.then, label %if.else, !dbg !38

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !39
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !41
  store i32 %call3, i32* %data1, align 4, !dbg !42
  br label %if.end, !dbg !43

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !44
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %data1, align 4, !dbg !46
  %5 = load i32*, i32** %dataPtr1, align 8, !dbg !47
  store i32 %4, i32* %5, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %data4, metadata !49, metadata !DIExpression()), !dbg !51
  %6 = load i32*, i32** %dataPtr2, align 8, !dbg !52
  %7 = load i32, i32* %6, align 4, !dbg !53
  store i32 %7, i32* %data4, align 4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !57, metadata !DIExpression()), !dbg !61
  %8 = bitcast [10 x i32]* %buffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false), !dbg !61
  %9 = load i32, i32* %data4, align 4, !dbg !62
  %cmp5 = icmp sge i32 %9, 0, !dbg !64
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !65

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %data4, align 4, !dbg !66
  %idxprom = sext i32 %10 to i64, !dbg !68
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !68
  store i32 1, i32* %arrayidx, align 4, !dbg !69
  store i32 0, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %if.then6
  %11 = load i32, i32* %i, align 4, !dbg !73
  %cmp7 = icmp slt i32 %11, 10, !dbg !75
  br i1 %cmp7, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !77
  %idxprom8 = sext i32 %12 to i64, !dbg !79
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !79
  %13 = load i32, i32* %arrayidx9, align 4, !dbg !79
  call void @printIntLine(i32 %13), !dbg !80
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !82
  %inc = add nsw i32 %14, 1, !dbg !82
  store i32 %inc, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !87

if.else10:                                        ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !90
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
define dso_local void @goodG2B() #0 !dbg !91 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %data2 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !94, metadata !DIExpression()), !dbg !95
  store i32* %data, i32** %dataPtr1, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !96, metadata !DIExpression()), !dbg !97
  store i32* %data, i32** %dataPtr2, align 8, !dbg !97
  store i32 -1, i32* %data, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !99, metadata !DIExpression()), !dbg !101
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !102
  %1 = load i32, i32* %0, align 4, !dbg !103
  store i32 %1, i32* %data1, align 4, !dbg !101
  store i32 7, i32* %data1, align 4, !dbg !104
  %2 = load i32, i32* %data1, align 4, !dbg !105
  %3 = load i32*, i32** %dataPtr1, align 8, !dbg !106
  store i32 %2, i32* %3, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %data2, metadata !108, metadata !DIExpression()), !dbg !110
  %4 = load i32*, i32** %dataPtr2, align 8, !dbg !111
  %5 = load i32, i32* %4, align 4, !dbg !112
  store i32 %5, i32* %data2, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !116, metadata !DIExpression()), !dbg !117
  %6 = bitcast [10 x i32]* %buffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !117
  %7 = load i32, i32* %data2, align 4, !dbg !118
  %cmp = icmp sge i32 %7, 0, !dbg !120
  br i1 %cmp, label %if.then, label %if.else, !dbg !121

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %data2, align 4, !dbg !122
  %idxprom = sext i32 %8 to i64, !dbg !124
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !124
  store i32 1, i32* %arrayidx, align 4, !dbg !125
  store i32 0, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !128

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !129
  %cmp3 = icmp slt i32 %9, 10, !dbg !131
  br i1 %cmp3, label %for.body, label %for.end, !dbg !132

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !133
  %idxprom4 = sext i32 %10 to i64, !dbg !135
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !135
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !135
  call void @printIntLine(i32 %11), !dbg !136
  br label %for.inc, !dbg !137

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !138
  %inc = add nsw i32 %12, 1, !dbg !138
  store i32 %inc, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !142

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !146 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data4 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !149, metadata !DIExpression()), !dbg !150
  store i32* %data, i32** %dataPtr1, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !151, metadata !DIExpression()), !dbg !152
  store i32* %data, i32** %dataPtr2, align 8, !dbg !152
  store i32 -1, i32* %data, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !154, metadata !DIExpression()), !dbg !156
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !157
  %1 = load i32, i32* %0, align 4, !dbg !158
  store i32 %1, i32* %data1, align 4, !dbg !156
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !159, metadata !DIExpression()), !dbg !161
  %2 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !161
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !162
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !164
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %3), !dbg !165
  %cmp = icmp ne i8* %call, null, !dbg !166
  br i1 %cmp, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !168
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !170
  store i32 %call3, i32* %data1, align 4, !dbg !171
  br label %if.end, !dbg !172

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !173
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %data1, align 4, !dbg !175
  %5 = load i32*, i32** %dataPtr1, align 8, !dbg !176
  store i32 %4, i32* %5, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %data4, metadata !178, metadata !DIExpression()), !dbg !180
  %6 = load i32*, i32** %dataPtr2, align 8, !dbg !181
  %7 = load i32, i32* %6, align 4, !dbg !182
  store i32 %7, i32* %data4, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %i, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !186, metadata !DIExpression()), !dbg !187
  %8 = bitcast [10 x i32]* %buffer to i8*, !dbg !187
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false), !dbg !187
  %9 = load i32, i32* %data4, align 4, !dbg !188
  %cmp5 = icmp sge i32 %9, 0, !dbg !190
  br i1 %cmp5, label %land.lhs.true, label %if.else11, !dbg !191

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %data4, align 4, !dbg !192
  %cmp6 = icmp slt i32 %10, 10, !dbg !193
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !194

if.then7:                                         ; preds = %land.lhs.true
  %11 = load i32, i32* %data4, align 4, !dbg !195
  %idxprom = sext i32 %11 to i64, !dbg !197
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !197
  store i32 1, i32* %arrayidx, align 4, !dbg !198
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then7
  %12 = load i32, i32* %i, align 4, !dbg !202
  %cmp8 = icmp slt i32 %12, 10, !dbg !204
  br i1 %cmp8, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !206
  %idxprom9 = sext i32 %13 to i64, !dbg !208
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom9, !dbg !208
  %14 = load i32, i32* %arrayidx10, align 4, !dbg !208
  call void @printIntLine(i32 %14), !dbg !209
  br label %for.inc, !dbg !210

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !211
  %inc = add nsw i32 %15, 1, !dbg !211
  store i32 %inc, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !212, !llvm.loop !213

for.end:                                          ; preds = %for.cond
  br label %if.end12, !dbg !215

if.else11:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %for.end
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_good() #0 !dbg !219 {
entry:
  call void @goodG2B(), !dbg !220
  call void @goodB2G(), !dbg !221
  ret void, !dbg !222
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_585/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocalVariable(name: "dataPtr1", scope: !9, file: !1, line: 28, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!17 = !DILocation(line: 28, column: 10, scope: !9)
!18 = !DILocalVariable(name: "dataPtr2", scope: !9, file: !1, line: 29, type: !16)
!19 = !DILocation(line: 29, column: 10, scope: !9)
!20 = !DILocation(line: 31, column: 10, scope: !9)
!21 = !DILocalVariable(name: "data", scope: !22, file: !1, line: 33, type: !13)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 32, column: 5)
!23 = !DILocation(line: 33, column: 13, scope: !22)
!24 = !DILocation(line: 33, column: 21, scope: !22)
!25 = !DILocation(line: 33, column: 20, scope: !22)
!26 = !DILocalVariable(name: "inputBuffer", scope: !27, file: !1, line: 35, type: !28)
!27 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 9)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 112, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: 14)
!32 = !DILocation(line: 35, column: 18, scope: !27)
!33 = !DILocation(line: 37, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !27, file: !1, line: 37, column: 17)
!35 = !DILocation(line: 37, column: 53, scope: !34)
!36 = !DILocation(line: 37, column: 17, scope: !34)
!37 = !DILocation(line: 37, column: 60, scope: !34)
!38 = !DILocation(line: 37, column: 17, scope: !27)
!39 = !DILocation(line: 40, column: 29, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !1, line: 38, column: 13)
!41 = !DILocation(line: 40, column: 24, scope: !40)
!42 = !DILocation(line: 40, column: 22, scope: !40)
!43 = !DILocation(line: 41, column: 13, scope: !40)
!44 = !DILocation(line: 44, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 43, column: 13)
!46 = !DILocation(line: 47, column: 21, scope: !22)
!47 = !DILocation(line: 47, column: 10, scope: !22)
!48 = !DILocation(line: 47, column: 19, scope: !22)
!49 = !DILocalVariable(name: "data", scope: !50, file: !1, line: 50, type: !13)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 49, column: 5)
!51 = !DILocation(line: 50, column: 13, scope: !50)
!52 = !DILocation(line: 50, column: 21, scope: !50)
!53 = !DILocation(line: 50, column: 20, scope: !50)
!54 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 52, type: !13)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 51, column: 9)
!56 = !DILocation(line: 52, column: 17, scope: !55)
!57 = !DILocalVariable(name: "buffer", scope: !55, file: !1, line: 53, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 10)
!61 = !DILocation(line: 53, column: 17, scope: !55)
!62 = !DILocation(line: 56, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 56, column: 17)
!64 = !DILocation(line: 56, column: 22, scope: !63)
!65 = !DILocation(line: 56, column: 17, scope: !55)
!66 = !DILocation(line: 58, column: 24, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 57, column: 13)
!68 = !DILocation(line: 58, column: 17, scope: !67)
!69 = !DILocation(line: 58, column: 30, scope: !67)
!70 = !DILocation(line: 60, column: 23, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 17)
!72 = !DILocation(line: 60, column: 21, scope: !71)
!73 = !DILocation(line: 60, column: 28, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 60, column: 17)
!75 = !DILocation(line: 60, column: 30, scope: !74)
!76 = !DILocation(line: 60, column: 17, scope: !71)
!77 = !DILocation(line: 62, column: 41, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 61, column: 17)
!79 = !DILocation(line: 62, column: 34, scope: !78)
!80 = !DILocation(line: 62, column: 21, scope: !78)
!81 = !DILocation(line: 63, column: 17, scope: !78)
!82 = !DILocation(line: 60, column: 37, scope: !74)
!83 = !DILocation(line: 60, column: 17, scope: !74)
!84 = distinct !{!84, !76, !85, !86}
!85 = !DILocation(line: 63, column: 17, scope: !71)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 64, column: 13, scope: !67)
!88 = !DILocation(line: 67, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !63, file: !1, line: 66, column: 13)
!90 = !DILocation(line: 71, column: 1, scope: !9)
!91 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "data", scope: !91, file: !1, line: 80, type: !13)
!93 = !DILocation(line: 80, column: 9, scope: !91)
!94 = !DILocalVariable(name: "dataPtr1", scope: !91, file: !1, line: 81, type: !16)
!95 = !DILocation(line: 81, column: 10, scope: !91)
!96 = !DILocalVariable(name: "dataPtr2", scope: !91, file: !1, line: 82, type: !16)
!97 = !DILocation(line: 82, column: 10, scope: !91)
!98 = !DILocation(line: 84, column: 10, scope: !91)
!99 = !DILocalVariable(name: "data", scope: !100, file: !1, line: 86, type: !13)
!100 = distinct !DILexicalBlock(scope: !91, file: !1, line: 85, column: 5)
!101 = !DILocation(line: 86, column: 13, scope: !100)
!102 = !DILocation(line: 86, column: 21, scope: !100)
!103 = !DILocation(line: 86, column: 20, scope: !100)
!104 = !DILocation(line: 89, column: 14, scope: !100)
!105 = !DILocation(line: 90, column: 21, scope: !100)
!106 = !DILocation(line: 90, column: 10, scope: !100)
!107 = !DILocation(line: 90, column: 19, scope: !100)
!108 = !DILocalVariable(name: "data", scope: !109, file: !1, line: 93, type: !13)
!109 = distinct !DILexicalBlock(scope: !91, file: !1, line: 92, column: 5)
!110 = !DILocation(line: 93, column: 13, scope: !109)
!111 = !DILocation(line: 93, column: 21, scope: !109)
!112 = !DILocation(line: 93, column: 20, scope: !109)
!113 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 95, type: !13)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 94, column: 9)
!115 = !DILocation(line: 95, column: 17, scope: !114)
!116 = !DILocalVariable(name: "buffer", scope: !114, file: !1, line: 96, type: !58)
!117 = !DILocation(line: 96, column: 17, scope: !114)
!118 = !DILocation(line: 99, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 99, column: 17)
!120 = !DILocation(line: 99, column: 22, scope: !119)
!121 = !DILocation(line: 99, column: 17, scope: !114)
!122 = !DILocation(line: 101, column: 24, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 100, column: 13)
!124 = !DILocation(line: 101, column: 17, scope: !123)
!125 = !DILocation(line: 101, column: 30, scope: !123)
!126 = !DILocation(line: 103, column: 23, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 103, column: 17)
!128 = !DILocation(line: 103, column: 21, scope: !127)
!129 = !DILocation(line: 103, column: 28, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 103, column: 17)
!131 = !DILocation(line: 103, column: 30, scope: !130)
!132 = !DILocation(line: 103, column: 17, scope: !127)
!133 = !DILocation(line: 105, column: 41, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 104, column: 17)
!135 = !DILocation(line: 105, column: 34, scope: !134)
!136 = !DILocation(line: 105, column: 21, scope: !134)
!137 = !DILocation(line: 106, column: 17, scope: !134)
!138 = !DILocation(line: 103, column: 37, scope: !130)
!139 = !DILocation(line: 103, column: 17, scope: !130)
!140 = distinct !{!140, !132, !141, !86}
!141 = !DILocation(line: 106, column: 17, scope: !127)
!142 = !DILocation(line: 107, column: 13, scope: !123)
!143 = !DILocation(line: 110, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !119, file: !1, line: 109, column: 13)
!145 = !DILocation(line: 114, column: 1, scope: !91)
!146 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 117, type: !10, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!147 = !DILocalVariable(name: "data", scope: !146, file: !1, line: 119, type: !13)
!148 = !DILocation(line: 119, column: 9, scope: !146)
!149 = !DILocalVariable(name: "dataPtr1", scope: !146, file: !1, line: 120, type: !16)
!150 = !DILocation(line: 120, column: 10, scope: !146)
!151 = !DILocalVariable(name: "dataPtr2", scope: !146, file: !1, line: 121, type: !16)
!152 = !DILocation(line: 121, column: 10, scope: !146)
!153 = !DILocation(line: 123, column: 10, scope: !146)
!154 = !DILocalVariable(name: "data", scope: !155, file: !1, line: 125, type: !13)
!155 = distinct !DILexicalBlock(scope: !146, file: !1, line: 124, column: 5)
!156 = !DILocation(line: 125, column: 13, scope: !155)
!157 = !DILocation(line: 125, column: 21, scope: !155)
!158 = !DILocation(line: 125, column: 20, scope: !155)
!159 = !DILocalVariable(name: "inputBuffer", scope: !160, file: !1, line: 127, type: !28)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 126, column: 9)
!161 = !DILocation(line: 127, column: 18, scope: !160)
!162 = !DILocation(line: 129, column: 23, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 129, column: 17)
!164 = !DILocation(line: 129, column: 53, scope: !163)
!165 = !DILocation(line: 129, column: 17, scope: !163)
!166 = !DILocation(line: 129, column: 60, scope: !163)
!167 = !DILocation(line: 129, column: 17, scope: !160)
!168 = !DILocation(line: 132, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !1, line: 130, column: 13)
!170 = !DILocation(line: 132, column: 24, scope: !169)
!171 = !DILocation(line: 132, column: 22, scope: !169)
!172 = !DILocation(line: 133, column: 13, scope: !169)
!173 = !DILocation(line: 136, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !163, file: !1, line: 135, column: 13)
!175 = !DILocation(line: 139, column: 21, scope: !155)
!176 = !DILocation(line: 139, column: 10, scope: !155)
!177 = !DILocation(line: 139, column: 19, scope: !155)
!178 = !DILocalVariable(name: "data", scope: !179, file: !1, line: 142, type: !13)
!179 = distinct !DILexicalBlock(scope: !146, file: !1, line: 141, column: 5)
!180 = !DILocation(line: 142, column: 13, scope: !179)
!181 = !DILocation(line: 142, column: 21, scope: !179)
!182 = !DILocation(line: 142, column: 20, scope: !179)
!183 = !DILocalVariable(name: "i", scope: !184, file: !1, line: 144, type: !13)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 143, column: 9)
!185 = !DILocation(line: 144, column: 17, scope: !184)
!186 = !DILocalVariable(name: "buffer", scope: !184, file: !1, line: 145, type: !58)
!187 = !DILocation(line: 145, column: 17, scope: !184)
!188 = !DILocation(line: 147, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !1, line: 147, column: 17)
!190 = !DILocation(line: 147, column: 22, scope: !189)
!191 = !DILocation(line: 147, column: 27, scope: !189)
!192 = !DILocation(line: 147, column: 30, scope: !189)
!193 = !DILocation(line: 147, column: 35, scope: !189)
!194 = !DILocation(line: 147, column: 17, scope: !184)
!195 = !DILocation(line: 149, column: 24, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !1, line: 148, column: 13)
!197 = !DILocation(line: 149, column: 17, scope: !196)
!198 = !DILocation(line: 149, column: 30, scope: !196)
!199 = !DILocation(line: 151, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 151, column: 17)
!201 = !DILocation(line: 151, column: 21, scope: !200)
!202 = !DILocation(line: 151, column: 28, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 151, column: 17)
!204 = !DILocation(line: 151, column: 30, scope: !203)
!205 = !DILocation(line: 151, column: 17, scope: !200)
!206 = !DILocation(line: 153, column: 41, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 152, column: 17)
!208 = !DILocation(line: 153, column: 34, scope: !207)
!209 = !DILocation(line: 153, column: 21, scope: !207)
!210 = !DILocation(line: 154, column: 17, scope: !207)
!211 = !DILocation(line: 151, column: 37, scope: !203)
!212 = !DILocation(line: 151, column: 17, scope: !203)
!213 = distinct !{!213, !205, !214, !86}
!214 = !DILocation(line: 154, column: 17, scope: !200)
!215 = !DILocation(line: 155, column: 13, scope: !196)
!216 = !DILocation(line: 158, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !189, file: !1, line: 157, column: 13)
!218 = !DILocation(line: 162, column: 1, scope: !146)
!219 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_good", scope: !1, file: !1, line: 164, type: !10, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!220 = !DILocation(line: 166, column: 5, scope: !219)
!221 = !DILocation(line: 167, column: 5, scope: !219)
!222 = !DILocation(line: 168, column: 1, scope: !219)
