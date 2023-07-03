; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !57, metadata !DIExpression()), !dbg !59
  store void (i32)* @badSink, void (i32)** %funcPtr, align 8, !dbg !59
  store i32 -1, i32* %data, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !61, metadata !DIExpression()), !dbg !67
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !68
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !70
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !71
  %cmp = icmp ne i8* %call, null, !dbg !72
  br i1 %cmp, label %if.then, label %if.else, !dbg !73

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !74
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !76
  store i32 %call2, i32* %data, align 4, !dbg !77
  br label %if.end, !dbg !78

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !81
  %3 = load i32, i32* %data, align 4, !dbg !82
  call void %2(i32 %3), !dbg !81
  ret void, !dbg !83
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !84 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !91
  %1 = load i32, i32* %data.addr, align 4, !dbg !92
  %cmp = icmp sge i32 %1, 0, !dbg !94
  br i1 %cmp, label %if.then, label %if.else, !dbg !95

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !96
  %idxprom = sext i32 %2 to i64, !dbg !98
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !98
  store i32 1, i32* %arrayidx, align 4, !dbg !99
  store i32 0, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !103
  %cmp1 = icmp slt i32 %3, 10, !dbg !105
  br i1 %cmp1, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !107
  %idxprom2 = sext i32 %4 to i64, !dbg !109
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !109
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !109
  call void @printIntLine(i32 %5), !dbg !110
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !112
  %inc = add nsw i32 %6, 1, !dbg !112
  store i32 %inc, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !116

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !117
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !119
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !120 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !123, metadata !DIExpression()), !dbg !124
  store void (i32)* @goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !124
  store i32 -1, i32* %data, align 4, !dbg !125
  store i32 7, i32* %data, align 4, !dbg !126
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !127
  %1 = load i32, i32* %data, align 4, !dbg !128
  call void %0(i32 %1), !dbg !127
  ret void, !dbg !129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !130 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %i, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !137
  %1 = load i32, i32* %data.addr, align 4, !dbg !138
  %cmp = icmp sge i32 %1, 0, !dbg !140
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !141

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !142
  %cmp1 = icmp slt i32 %2, 10, !dbg !143
  br i1 %cmp1, label %if.then, label %if.else, !dbg !144

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !145
  %idxprom = sext i32 %3 to i64, !dbg !147
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !147
  store i32 1, i32* %arrayidx, align 4, !dbg !148
  store i32 0, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !151

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !152
  %cmp2 = icmp slt i32 %4, 10, !dbg !154
  br i1 %cmp2, label %for.body, label %for.end, !dbg !155

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !156
  %idxprom3 = sext i32 %5 to i64, !dbg !158
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !158
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !158
  call void @printIntLine(i32 %6), !dbg !159
  br label %for.inc, !dbg !160

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !161
  %inc = add nsw i32 %7, 1, !dbg !161
  store i32 %inc, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !165

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !166
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !168
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !169 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !172, metadata !DIExpression()), !dbg !173
  store void (i32)* @goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !173
  store i32 -1, i32* %data, align 4, !dbg !174
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !175, metadata !DIExpression()), !dbg !177
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !177
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !178
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !180
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !181
  %cmp = icmp ne i8* %call, null, !dbg !182
  br i1 %cmp, label %if.then, label %if.else, !dbg !183

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !184
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !186
  store i32 %call2, i32* %data, align 4, !dbg !187
  br label %if.end, !dbg !188

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !189
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !191
  %3 = load i32, i32* %data, align 4, !dbg !192
  call void %2(i32 %3), !dbg !191
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_good() #0 !dbg !194 {
entry:
  call void @goodG2B(), !dbg !195
  call void @goodB2G(), !dbg !196
  ret void, !dbg !197
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_591/source_code")
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
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_bad", scope: !1, file: !1, line: 48, type: !53, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !1, line: 50, type: !12)
!56 = !DILocation(line: 50, column: 9, scope: !52)
!57 = !DILocalVariable(name: "funcPtr", scope: !52, file: !1, line: 52, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!59 = !DILocation(line: 52, column: 12, scope: !52)
!60 = !DILocation(line: 54, column: 10, scope: !52)
!61 = !DILocalVariable(name: "inputBuffer", scope: !62, file: !1, line: 56, type: !63)
!62 = distinct !DILexicalBlock(scope: !52, file: !1, line: 55, column: 5)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 112, elements: !65)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !{!66}
!66 = !DISubrange(count: 14)
!67 = !DILocation(line: 56, column: 14, scope: !62)
!68 = !DILocation(line: 58, column: 19, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !1, line: 58, column: 13)
!70 = !DILocation(line: 58, column: 49, scope: !69)
!71 = !DILocation(line: 58, column: 13, scope: !69)
!72 = !DILocation(line: 58, column: 56, scope: !69)
!73 = !DILocation(line: 58, column: 13, scope: !62)
!74 = !DILocation(line: 61, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !1, line: 59, column: 9)
!76 = !DILocation(line: 61, column: 20, scope: !75)
!77 = !DILocation(line: 61, column: 18, scope: !75)
!78 = !DILocation(line: 62, column: 9, scope: !75)
!79 = !DILocation(line: 65, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !1, line: 64, column: 9)
!81 = !DILocation(line: 69, column: 5, scope: !52)
!82 = !DILocation(line: 69, column: 13, scope: !52)
!83 = !DILocation(line: 70, column: 1, scope: !52)
!84 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "data", arg: 1, scope: !84, file: !1, line: 77, type: !12)
!86 = !DILocation(line: 77, column: 22, scope: !84)
!87 = !DILocalVariable(name: "i", scope: !88, file: !1, line: 80, type: !12)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 79, column: 5)
!89 = !DILocation(line: 80, column: 13, scope: !88)
!90 = !DILocalVariable(name: "buffer", scope: !88, file: !1, line: 81, type: !19)
!91 = !DILocation(line: 81, column: 13, scope: !88)
!92 = !DILocation(line: 84, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 84, column: 13)
!94 = !DILocation(line: 84, column: 18, scope: !93)
!95 = !DILocation(line: 84, column: 13, scope: !88)
!96 = !DILocation(line: 86, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 85, column: 9)
!98 = !DILocation(line: 86, column: 13, scope: !97)
!99 = !DILocation(line: 86, column: 26, scope: !97)
!100 = !DILocation(line: 88, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 88, column: 13)
!102 = !DILocation(line: 88, column: 17, scope: !101)
!103 = !DILocation(line: 88, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 88, column: 13)
!105 = !DILocation(line: 88, column: 26, scope: !104)
!106 = !DILocation(line: 88, column: 13, scope: !101)
!107 = !DILocation(line: 90, column: 37, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 89, column: 13)
!109 = !DILocation(line: 90, column: 30, scope: !108)
!110 = !DILocation(line: 90, column: 17, scope: !108)
!111 = !DILocation(line: 91, column: 13, scope: !108)
!112 = !DILocation(line: 88, column: 33, scope: !104)
!113 = !DILocation(line: 88, column: 13, scope: !104)
!114 = distinct !{!114, !106, !115, !47}
!115 = !DILocation(line: 91, column: 13, scope: !101)
!116 = !DILocation(line: 92, column: 9, scope: !97)
!117 = !DILocation(line: 95, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !93, file: !1, line: 94, column: 9)
!119 = !DILocation(line: 98, column: 1, scope: !84)
!120 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 100, type: !53, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocalVariable(name: "data", scope: !120, file: !1, line: 102, type: !12)
!122 = !DILocation(line: 102, column: 9, scope: !120)
!123 = !DILocalVariable(name: "funcPtr", scope: !120, file: !1, line: 103, type: !58)
!124 = !DILocation(line: 103, column: 12, scope: !120)
!125 = !DILocation(line: 105, column: 10, scope: !120)
!126 = !DILocation(line: 108, column: 10, scope: !120)
!127 = !DILocation(line: 109, column: 5, scope: !120)
!128 = !DILocation(line: 109, column: 13, scope: !120)
!129 = !DILocation(line: 110, column: 1, scope: !120)
!130 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 113, type: !10, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!131 = !DILocalVariable(name: "data", arg: 1, scope: !130, file: !1, line: 113, type: !12)
!132 = !DILocation(line: 113, column: 22, scope: !130)
!133 = !DILocalVariable(name: "i", scope: !134, file: !1, line: 116, type: !12)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 115, column: 5)
!135 = !DILocation(line: 116, column: 13, scope: !134)
!136 = !DILocalVariable(name: "buffer", scope: !134, file: !1, line: 117, type: !19)
!137 = !DILocation(line: 117, column: 13, scope: !134)
!138 = !DILocation(line: 119, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 119, column: 13)
!140 = !DILocation(line: 119, column: 18, scope: !139)
!141 = !DILocation(line: 119, column: 23, scope: !139)
!142 = !DILocation(line: 119, column: 26, scope: !139)
!143 = !DILocation(line: 119, column: 31, scope: !139)
!144 = !DILocation(line: 119, column: 13, scope: !134)
!145 = !DILocation(line: 121, column: 20, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !1, line: 120, column: 9)
!147 = !DILocation(line: 121, column: 13, scope: !146)
!148 = !DILocation(line: 121, column: 26, scope: !146)
!149 = !DILocation(line: 123, column: 19, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 123, column: 13)
!151 = !DILocation(line: 123, column: 17, scope: !150)
!152 = !DILocation(line: 123, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 123, column: 13)
!154 = !DILocation(line: 123, column: 26, scope: !153)
!155 = !DILocation(line: 123, column: 13, scope: !150)
!156 = !DILocation(line: 125, column: 37, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 124, column: 13)
!158 = !DILocation(line: 125, column: 30, scope: !157)
!159 = !DILocation(line: 125, column: 17, scope: !157)
!160 = !DILocation(line: 126, column: 13, scope: !157)
!161 = !DILocation(line: 123, column: 33, scope: !153)
!162 = !DILocation(line: 123, column: 13, scope: !153)
!163 = distinct !{!163, !155, !164, !47}
!164 = !DILocation(line: 126, column: 13, scope: !150)
!165 = !DILocation(line: 127, column: 9, scope: !146)
!166 = !DILocation(line: 130, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !139, file: !1, line: 129, column: 9)
!168 = !DILocation(line: 133, column: 1, scope: !130)
!169 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 135, type: !53, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DILocalVariable(name: "data", scope: !169, file: !1, line: 137, type: !12)
!171 = !DILocation(line: 137, column: 9, scope: !169)
!172 = !DILocalVariable(name: "funcPtr", scope: !169, file: !1, line: 138, type: !58)
!173 = !DILocation(line: 138, column: 12, scope: !169)
!174 = !DILocation(line: 140, column: 10, scope: !169)
!175 = !DILocalVariable(name: "inputBuffer", scope: !176, file: !1, line: 142, type: !63)
!176 = distinct !DILexicalBlock(scope: !169, file: !1, line: 141, column: 5)
!177 = !DILocation(line: 142, column: 14, scope: !176)
!178 = !DILocation(line: 144, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 144, column: 13)
!180 = !DILocation(line: 144, column: 49, scope: !179)
!181 = !DILocation(line: 144, column: 13, scope: !179)
!182 = !DILocation(line: 144, column: 56, scope: !179)
!183 = !DILocation(line: 144, column: 13, scope: !176)
!184 = !DILocation(line: 147, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !1, line: 145, column: 9)
!186 = !DILocation(line: 147, column: 20, scope: !185)
!187 = !DILocation(line: 147, column: 18, scope: !185)
!188 = !DILocation(line: 148, column: 9, scope: !185)
!189 = !DILocation(line: 151, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !179, file: !1, line: 150, column: 9)
!191 = !DILocation(line: 154, column: 5, scope: !169)
!192 = !DILocation(line: 154, column: 13, scope: !169)
!193 = !DILocation(line: 155, column: 1, scope: !169)
!194 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_good", scope: !1, file: !1, line: 157, type: !53, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocation(line: 159, column: 5, scope: !194)
!196 = !DILocation(line: 160, column: 5, scope: !194)
!197 = !DILocation(line: 161, column: 1, scope: !194)
