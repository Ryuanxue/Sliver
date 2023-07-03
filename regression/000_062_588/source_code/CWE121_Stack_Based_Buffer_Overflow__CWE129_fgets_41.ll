; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i32 %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !18, metadata !DIExpression()), !dbg !22
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !22
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !22
  %1 = load i32, i32* %data.addr, align 4, !dbg !23
  %cmp = icmp sge i32 %1, 0, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !27
  %idxprom = sext i32 %2 to i64, !dbg !29
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !29
  store i32 1, i32* %arrayidx, align 4, !dbg !30
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !34
  %cmp1 = icmp slt i32 %3, 10, !dbg !36
  br i1 %cmp1, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !38
  %idxprom2 = sext i32 %4 to i64, !dbg !40
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !40
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !40
  call void @printIntLine(i32 %5), !dbg !41
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !43
  %inc = add nsw i32 %6, 1, !dbg !43
  store i32 %inc, i32* %i, align 4, !dbg !43
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !48

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !49
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !58, metadata !DIExpression()), !dbg !64
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !65
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !67
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !68
  %cmp = icmp ne i8* %call, null, !dbg !69
  br i1 %cmp, label %if.then, label %if.else, !dbg !70

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !71
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !73
  store i32 %call2, i32* %data, align 4, !dbg !74
  br label %if.end, !dbg !75

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !76
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !78
  call void @badSink(i32 %2), !dbg !79
  ret void, !dbg !80
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !81 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !88
  %1 = load i32, i32* %data.addr, align 4, !dbg !89
  %cmp = icmp sge i32 %1, 0, !dbg !91
  br i1 %cmp, label %if.then, label %if.else, !dbg !92

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !93
  %idxprom = sext i32 %2 to i64, !dbg !95
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !95
  store i32 1, i32* %arrayidx, align 4, !dbg !96
  store i32 0, i32* %i, align 4, !dbg !97
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !100
  %cmp1 = icmp slt i32 %3, 10, !dbg !102
  br i1 %cmp1, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !104
  %idxprom2 = sext i32 %4 to i64, !dbg !106
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !106
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !106
  call void @printIntLine(i32 %5), !dbg !107
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !109
  %inc = add nsw i32 %6, 1, !dbg !109
  store i32 %inc, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !113

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !114
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !117 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 -1, i32* %data, align 4, !dbg !120
  store i32 7, i32* %data, align 4, !dbg !121
  %0 = load i32, i32* %data, align 4, !dbg !122
  call void @goodG2BSink(i32 %0), !dbg !123
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !125 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !132
  %1 = load i32, i32* %data.addr, align 4, !dbg !133
  %cmp = icmp sge i32 %1, 0, !dbg !135
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !136

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !137
  %cmp1 = icmp slt i32 %2, 10, !dbg !138
  br i1 %cmp1, label %if.then, label %if.else, !dbg !139

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !140
  %idxprom = sext i32 %3 to i64, !dbg !142
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !142
  store i32 1, i32* %arrayidx, align 4, !dbg !143
  store i32 0, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !146

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !147
  %cmp2 = icmp slt i32 %4, 10, !dbg !149
  br i1 %cmp2, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !151
  %idxprom3 = sext i32 %5 to i64, !dbg !153
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !153
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !153
  call void @printIntLine(i32 %6), !dbg !154
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !156
  %inc = add nsw i32 %7, 1, !dbg !156
  store i32 %inc, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !157, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !160

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !164 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !165, metadata !DIExpression()), !dbg !166
  store i32 -1, i32* %data, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !168, metadata !DIExpression()), !dbg !170
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !171
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !173
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !174
  %cmp = icmp ne i8* %call, null, !dbg !175
  br i1 %cmp, label %if.then, label %if.else, !dbg !176

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !177
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !179
  store i32 %call2, i32* %data, align 4, !dbg !180
  br label %if.end, !dbg !181

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !182
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !184
  call void @goodB2GSink(i32 %2), !dbg !185
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good() #0 !dbg !187 {
entry:
  call void @goodB2G(), !dbg !188
  call void @goodG2B(), !dbg !189
  ret void, !dbg !190
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_588/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 25, type: !12)
!14 = !DILocation(line: 25, column: 18, scope: !9)
!15 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 28, type: !12)
!16 = distinct !DILexicalBlock(scope: !9, file: !1, line: 27, column: 5)
!17 = !DILocation(line: 28, column: 13, scope: !16)
!18 = !DILocalVariable(name: "buffer", scope: !16, file: !1, line: 29, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DILocation(line: 29, column: 13, scope: !16)
!23 = !DILocation(line: 32, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !16, file: !1, line: 32, column: 13)
!25 = !DILocation(line: 32, column: 18, scope: !24)
!26 = !DILocation(line: 32, column: 13, scope: !16)
!27 = !DILocation(line: 34, column: 20, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 33, column: 9)
!29 = !DILocation(line: 34, column: 13, scope: !28)
!30 = !DILocation(line: 34, column: 26, scope: !28)
!31 = !DILocation(line: 36, column: 19, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 36, column: 13)
!33 = !DILocation(line: 36, column: 17, scope: !32)
!34 = !DILocation(line: 36, column: 24, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 36, column: 13)
!36 = !DILocation(line: 36, column: 26, scope: !35)
!37 = !DILocation(line: 36, column: 13, scope: !32)
!38 = !DILocation(line: 38, column: 37, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 37, column: 13)
!40 = !DILocation(line: 38, column: 30, scope: !39)
!41 = !DILocation(line: 38, column: 17, scope: !39)
!42 = !DILocation(line: 39, column: 13, scope: !39)
!43 = !DILocation(line: 36, column: 33, scope: !35)
!44 = !DILocation(line: 36, column: 13, scope: !35)
!45 = distinct !{!45, !37, !46, !47}
!46 = !DILocation(line: 39, column: 13, scope: !32)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !DILocation(line: 40, column: 9, scope: !28)
!49 = !DILocation(line: 43, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !24, file: !1, line: 42, column: 9)
!51 = !DILocation(line: 46, column: 1, scope: !9)
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_bad", scope: !1, file: !1, line: 48, type: !53, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !1, line: 50, type: !12)
!56 = !DILocation(line: 50, column: 9, scope: !52)
!57 = !DILocation(line: 52, column: 10, scope: !52)
!58 = !DILocalVariable(name: "inputBuffer", scope: !59, file: !1, line: 54, type: !60)
!59 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 5)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 112, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !DILocation(line: 54, column: 14, scope: !59)
!65 = !DILocation(line: 56, column: 19, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 56, column: 13)
!67 = !DILocation(line: 56, column: 49, scope: !66)
!68 = !DILocation(line: 56, column: 13, scope: !66)
!69 = !DILocation(line: 56, column: 56, scope: !66)
!70 = !DILocation(line: 56, column: 13, scope: !59)
!71 = !DILocation(line: 59, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 57, column: 9)
!73 = !DILocation(line: 59, column: 20, scope: !72)
!74 = !DILocation(line: 59, column: 18, scope: !72)
!75 = !DILocation(line: 60, column: 9, scope: !72)
!76 = !DILocation(line: 63, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !66, file: !1, line: 62, column: 9)
!78 = !DILocation(line: 66, column: 13, scope: !52)
!79 = !DILocation(line: 66, column: 5, scope: !52)
!80 = !DILocation(line: 67, column: 1, scope: !52)
!81 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 74, type: !10, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!82 = !DILocalVariable(name: "data", arg: 1, scope: !81, file: !1, line: 74, type: !12)
!83 = !DILocation(line: 74, column: 22, scope: !81)
!84 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 77, type: !12)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 76, column: 5)
!86 = !DILocation(line: 77, column: 13, scope: !85)
!87 = !DILocalVariable(name: "buffer", scope: !85, file: !1, line: 78, type: !19)
!88 = !DILocation(line: 78, column: 13, scope: !85)
!89 = !DILocation(line: 81, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 81, column: 13)
!91 = !DILocation(line: 81, column: 18, scope: !90)
!92 = !DILocation(line: 81, column: 13, scope: !85)
!93 = !DILocation(line: 83, column: 20, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 82, column: 9)
!95 = !DILocation(line: 83, column: 13, scope: !94)
!96 = !DILocation(line: 83, column: 26, scope: !94)
!97 = !DILocation(line: 85, column: 19, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 85, column: 13)
!99 = !DILocation(line: 85, column: 17, scope: !98)
!100 = !DILocation(line: 85, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 85, column: 13)
!102 = !DILocation(line: 85, column: 26, scope: !101)
!103 = !DILocation(line: 85, column: 13, scope: !98)
!104 = !DILocation(line: 87, column: 37, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 13)
!106 = !DILocation(line: 87, column: 30, scope: !105)
!107 = !DILocation(line: 87, column: 17, scope: !105)
!108 = !DILocation(line: 88, column: 13, scope: !105)
!109 = !DILocation(line: 85, column: 33, scope: !101)
!110 = !DILocation(line: 85, column: 13, scope: !101)
!111 = distinct !{!111, !103, !112, !47}
!112 = !DILocation(line: 88, column: 13, scope: !98)
!113 = !DILocation(line: 89, column: 9, scope: !94)
!114 = !DILocation(line: 92, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !90, file: !1, line: 91, column: 9)
!116 = !DILocation(line: 95, column: 1, scope: !81)
!117 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 97, type: !53, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!118 = !DILocalVariable(name: "data", scope: !117, file: !1, line: 99, type: !12)
!119 = !DILocation(line: 99, column: 9, scope: !117)
!120 = !DILocation(line: 101, column: 10, scope: !117)
!121 = !DILocation(line: 104, column: 10, scope: !117)
!122 = !DILocation(line: 105, column: 17, scope: !117)
!123 = !DILocation(line: 105, column: 5, scope: !117)
!124 = !DILocation(line: 106, column: 1, scope: !117)
!125 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 109, type: !10, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(name: "data", arg: 1, scope: !125, file: !1, line: 109, type: !12)
!127 = !DILocation(line: 109, column: 22, scope: !125)
!128 = !DILocalVariable(name: "i", scope: !129, file: !1, line: 112, type: !12)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 111, column: 5)
!130 = !DILocation(line: 112, column: 13, scope: !129)
!131 = !DILocalVariable(name: "buffer", scope: !129, file: !1, line: 113, type: !19)
!132 = !DILocation(line: 113, column: 13, scope: !129)
!133 = !DILocation(line: 115, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 115, column: 13)
!135 = !DILocation(line: 115, column: 18, scope: !134)
!136 = !DILocation(line: 115, column: 23, scope: !134)
!137 = !DILocation(line: 115, column: 26, scope: !134)
!138 = !DILocation(line: 115, column: 31, scope: !134)
!139 = !DILocation(line: 115, column: 13, scope: !129)
!140 = !DILocation(line: 117, column: 20, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 116, column: 9)
!142 = !DILocation(line: 117, column: 13, scope: !141)
!143 = !DILocation(line: 117, column: 26, scope: !141)
!144 = !DILocation(line: 119, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 119, column: 13)
!146 = !DILocation(line: 119, column: 17, scope: !145)
!147 = !DILocation(line: 119, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 119, column: 13)
!149 = !DILocation(line: 119, column: 26, scope: !148)
!150 = !DILocation(line: 119, column: 13, scope: !145)
!151 = !DILocation(line: 121, column: 37, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 120, column: 13)
!153 = !DILocation(line: 121, column: 30, scope: !152)
!154 = !DILocation(line: 121, column: 17, scope: !152)
!155 = !DILocation(line: 122, column: 13, scope: !152)
!156 = !DILocation(line: 119, column: 33, scope: !148)
!157 = !DILocation(line: 119, column: 13, scope: !148)
!158 = distinct !{!158, !150, !159, !47}
!159 = !DILocation(line: 122, column: 13, scope: !145)
!160 = !DILocation(line: 123, column: 9, scope: !141)
!161 = !DILocation(line: 126, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !134, file: !1, line: 125, column: 9)
!163 = !DILocation(line: 129, column: 1, scope: !125)
!164 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 131, type: !53, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 133, type: !12)
!166 = !DILocation(line: 133, column: 9, scope: !164)
!167 = !DILocation(line: 135, column: 10, scope: !164)
!168 = !DILocalVariable(name: "inputBuffer", scope: !169, file: !1, line: 137, type: !60)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 136, column: 5)
!170 = !DILocation(line: 137, column: 14, scope: !169)
!171 = !DILocation(line: 139, column: 19, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 139, column: 13)
!173 = !DILocation(line: 139, column: 49, scope: !172)
!174 = !DILocation(line: 139, column: 13, scope: !172)
!175 = !DILocation(line: 139, column: 56, scope: !172)
!176 = !DILocation(line: 139, column: 13, scope: !169)
!177 = !DILocation(line: 142, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !1, line: 140, column: 9)
!179 = !DILocation(line: 142, column: 20, scope: !178)
!180 = !DILocation(line: 142, column: 18, scope: !178)
!181 = !DILocation(line: 143, column: 9, scope: !178)
!182 = !DILocation(line: 146, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !172, file: !1, line: 145, column: 9)
!184 = !DILocation(line: 149, column: 17, scope: !164)
!185 = !DILocation(line: 149, column: 5, scope: !164)
!186 = !DILocation(line: 150, column: 1, scope: !164)
!187 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good", scope: !1, file: !1, line: 152, type: !53, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!188 = !DILocation(line: 154, column: 5, scope: !187)
!189 = !DILocation(line: 155, column: 5, scope: !187)
!190 = !DILocation(line: 156, column: 1, scope: !187)
