; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42.c"
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
define dso_local i32 @badSource(i32 %data) #0 !dbg !9 {
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad() #0 !dbg !37 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 -1, i32* %data, align 4, !dbg !42
  %0 = load i32, i32* %data, align 4, !dbg !43
  %call = call i32 @badSource(i32 %0), !dbg !44
  store i32 %call, i32* %data, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !49, metadata !DIExpression()), !dbg !53
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !53
  %2 = load i32, i32* %data, align 4, !dbg !54
  %cmp = icmp sge i32 %2, 0, !dbg !56
  br i1 %cmp, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !58
  %idxprom = sext i32 %3 to i64, !dbg !60
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !60
  store i32 1, i32* %arrayidx, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !65
  %cmp1 = icmp slt i32 %4, 10, !dbg !67
  br i1 %cmp1, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !69
  %idxprom2 = sext i32 %5 to i64, !dbg !71
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !71
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !71
  call void @printIntLine(i32 %6), !dbg !72
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !74
  %inc = add nsw i32 %7, 1, !dbg !74
  store i32 %inc, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !79

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !80
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !82
}

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodG2BSource(i32 %data) #0 !dbg !83 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 7, i32* %data.addr, align 4, !dbg !86
  %0 = load i32, i32* %data.addr, align 4, !dbg !87
  ret i32 %0, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !89 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 -1, i32* %data, align 4, !dbg !92
  %0 = load i32, i32* %data, align 4, !dbg !93
  %call = call i32 @goodG2BSource(i32 %0), !dbg !94
  store i32 %call, i32* %data, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !99, metadata !DIExpression()), !dbg !100
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !100
  %2 = load i32, i32* %data, align 4, !dbg !101
  %cmp = icmp sge i32 %2, 0, !dbg !103
  br i1 %cmp, label %if.then, label %if.else, !dbg !104

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !105
  %idxprom = sext i32 %3 to i64, !dbg !107
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !107
  store i32 1, i32* %arrayidx, align 4, !dbg !108
  store i32 0, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !112
  %cmp1 = icmp slt i32 %4, 10, !dbg !114
  br i1 %cmp1, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !116
  %idxprom2 = sext i32 %5 to i64, !dbg !118
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !118
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !118
  call void @printIntLine(i32 %6), !dbg !119
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !121
  %inc = add nsw i32 %7, 1, !dbg !121
  store i32 %inc, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !125

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !126
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodB2GSource(i32 %data) #0 !dbg !129 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !132, metadata !DIExpression()), !dbg !134
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !135
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !137
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !138
  %cmp = icmp ne i8* %call, null, !dbg !139
  br i1 %cmp, label %if.then, label %if.else, !dbg !140

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !141
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !143
  store i32 %call2, i32* %data.addr, align 4, !dbg !144
  br label %if.end, !dbg !145

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !146
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !148
  ret i32 %2, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !150 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 -1, i32* %data, align 4, !dbg !153
  %0 = load i32, i32* %data, align 4, !dbg !154
  %call = call i32 @goodB2GSource(i32 %0), !dbg !155
  store i32 %call, i32* %data, align 4, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !160, metadata !DIExpression()), !dbg !161
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !161
  %2 = load i32, i32* %data, align 4, !dbg !162
  %cmp = icmp sge i32 %2, 0, !dbg !164
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !165

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !166
  %cmp1 = icmp slt i32 %3, 10, !dbg !167
  br i1 %cmp1, label %if.then, label %if.else, !dbg !168

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !169
  %idxprom = sext i32 %4 to i64, !dbg !171
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !171
  store i32 1, i32* %arrayidx, align 4, !dbg !172
  store i32 0, i32* %i, align 4, !dbg !173
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !176
  %cmp2 = icmp slt i32 %5, 10, !dbg !178
  br i1 %cmp2, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !180
  %idxprom3 = sext i32 %6 to i64, !dbg !182
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !182
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !182
  call void @printIntLine(i32 %7), !dbg !183
  br label %for.inc, !dbg !184

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !185
  %inc = add nsw i32 %8, 1, !dbg !185
  store i32 %inc, i32* %i, align 4, !dbg !185
  br label %for.cond, !dbg !186, !llvm.loop !187

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !189

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !190
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good() #0 !dbg !193 {
entry:
  call void @goodB2G(), !dbg !194
  call void @goodG2B(), !dbg !195
  ret void, !dbg !196
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 25, type: !12)
!14 = !DILocation(line: 25, column: 19, scope: !9)
!15 = !DILocalVariable(name: "inputBuffer", scope: !16, file: !1, line: 28, type: !17)
!16 = distinct !DILexicalBlock(scope: !9, file: !1, line: 27, column: 5)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 112, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 14)
!21 = !DILocation(line: 28, column: 14, scope: !16)
!22 = !DILocation(line: 30, column: 19, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !1, line: 30, column: 13)
!24 = !DILocation(line: 30, column: 49, scope: !23)
!25 = !DILocation(line: 30, column: 13, scope: !23)
!26 = !DILocation(line: 30, column: 56, scope: !23)
!27 = !DILocation(line: 30, column: 13, scope: !16)
!28 = !DILocation(line: 33, column: 25, scope: !29)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 31, column: 9)
!30 = !DILocation(line: 33, column: 20, scope: !29)
!31 = !DILocation(line: 33, column: 18, scope: !29)
!32 = !DILocation(line: 34, column: 9, scope: !29)
!33 = !DILocation(line: 37, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !1, line: 36, column: 9)
!35 = !DILocation(line: 40, column: 12, scope: !9)
!36 = !DILocation(line: 40, column: 5, scope: !9)
!37 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad", scope: !1, file: !1, line: 43, type: !38, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{null}
!40 = !DILocalVariable(name: "data", scope: !37, file: !1, line: 45, type: !12)
!41 = !DILocation(line: 45, column: 9, scope: !37)
!42 = !DILocation(line: 47, column: 10, scope: !37)
!43 = !DILocation(line: 48, column: 22, scope: !37)
!44 = !DILocation(line: 48, column: 12, scope: !37)
!45 = !DILocation(line: 48, column: 10, scope: !37)
!46 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 50, type: !12)
!47 = distinct !DILexicalBlock(scope: !37, file: !1, line: 49, column: 5)
!48 = !DILocation(line: 50, column: 13, scope: !47)
!49 = !DILocalVariable(name: "buffer", scope: !47, file: !1, line: 51, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 10)
!53 = !DILocation(line: 51, column: 13, scope: !47)
!54 = !DILocation(line: 54, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !1, line: 54, column: 13)
!56 = !DILocation(line: 54, column: 18, scope: !55)
!57 = !DILocation(line: 54, column: 13, scope: !47)
!58 = !DILocation(line: 56, column: 20, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 55, column: 9)
!60 = !DILocation(line: 56, column: 13, scope: !59)
!61 = !DILocation(line: 56, column: 26, scope: !59)
!62 = !DILocation(line: 58, column: 19, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 58, column: 13)
!64 = !DILocation(line: 58, column: 17, scope: !63)
!65 = !DILocation(line: 58, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 58, column: 13)
!67 = !DILocation(line: 58, column: 26, scope: !66)
!68 = !DILocation(line: 58, column: 13, scope: !63)
!69 = !DILocation(line: 60, column: 37, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 59, column: 13)
!71 = !DILocation(line: 60, column: 30, scope: !70)
!72 = !DILocation(line: 60, column: 17, scope: !70)
!73 = !DILocation(line: 61, column: 13, scope: !70)
!74 = !DILocation(line: 58, column: 33, scope: !66)
!75 = !DILocation(line: 58, column: 13, scope: !66)
!76 = distinct !{!76, !68, !77, !78}
!77 = !DILocation(line: 61, column: 13, scope: !63)
!78 = !{!"llvm.loop.mustprogress"}
!79 = !DILocation(line: 62, column: 9, scope: !59)
!80 = !DILocation(line: 65, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !55, file: !1, line: 64, column: 9)
!82 = !DILocation(line: 68, column: 1, scope: !37)
!83 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", arg: 1, scope: !83, file: !1, line: 75, type: !12)
!85 = !DILocation(line: 75, column: 23, scope: !83)
!86 = !DILocation(line: 79, column: 10, scope: !83)
!87 = !DILocation(line: 80, column: 12, scope: !83)
!88 = !DILocation(line: 80, column: 5, scope: !83)
!89 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 83, type: !38, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", scope: !89, file: !1, line: 85, type: !12)
!91 = !DILocation(line: 85, column: 9, scope: !89)
!92 = !DILocation(line: 87, column: 10, scope: !89)
!93 = !DILocation(line: 88, column: 26, scope: !89)
!94 = !DILocation(line: 88, column: 12, scope: !89)
!95 = !DILocation(line: 88, column: 10, scope: !89)
!96 = !DILocalVariable(name: "i", scope: !97, file: !1, line: 90, type: !12)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 89, column: 5)
!98 = !DILocation(line: 90, column: 13, scope: !97)
!99 = !DILocalVariable(name: "buffer", scope: !97, file: !1, line: 91, type: !50)
!100 = !DILocation(line: 91, column: 13, scope: !97)
!101 = !DILocation(line: 94, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 94, column: 13)
!103 = !DILocation(line: 94, column: 18, scope: !102)
!104 = !DILocation(line: 94, column: 13, scope: !97)
!105 = !DILocation(line: 96, column: 20, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 95, column: 9)
!107 = !DILocation(line: 96, column: 13, scope: !106)
!108 = !DILocation(line: 96, column: 26, scope: !106)
!109 = !DILocation(line: 98, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 98, column: 13)
!111 = !DILocation(line: 98, column: 17, scope: !110)
!112 = !DILocation(line: 98, column: 24, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 98, column: 13)
!114 = !DILocation(line: 98, column: 26, scope: !113)
!115 = !DILocation(line: 98, column: 13, scope: !110)
!116 = !DILocation(line: 100, column: 37, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 99, column: 13)
!118 = !DILocation(line: 100, column: 30, scope: !117)
!119 = !DILocation(line: 100, column: 17, scope: !117)
!120 = !DILocation(line: 101, column: 13, scope: !117)
!121 = !DILocation(line: 98, column: 33, scope: !113)
!122 = !DILocation(line: 98, column: 13, scope: !113)
!123 = distinct !{!123, !115, !124, !78}
!124 = !DILocation(line: 101, column: 13, scope: !110)
!125 = !DILocation(line: 102, column: 9, scope: !106)
!126 = !DILocation(line: 105, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !102, file: !1, line: 104, column: 9)
!128 = !DILocation(line: 108, column: 1, scope: !89)
!129 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 111, type: !10, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!130 = !DILocalVariable(name: "data", arg: 1, scope: !129, file: !1, line: 111, type: !12)
!131 = !DILocation(line: 111, column: 23, scope: !129)
!132 = !DILocalVariable(name: "inputBuffer", scope: !133, file: !1, line: 114, type: !17)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 113, column: 5)
!134 = !DILocation(line: 114, column: 14, scope: !133)
!135 = !DILocation(line: 116, column: 19, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 116, column: 13)
!137 = !DILocation(line: 116, column: 49, scope: !136)
!138 = !DILocation(line: 116, column: 13, scope: !136)
!139 = !DILocation(line: 116, column: 56, scope: !136)
!140 = !DILocation(line: 116, column: 13, scope: !133)
!141 = !DILocation(line: 119, column: 25, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 117, column: 9)
!143 = !DILocation(line: 119, column: 20, scope: !142)
!144 = !DILocation(line: 119, column: 18, scope: !142)
!145 = !DILocation(line: 120, column: 9, scope: !142)
!146 = !DILocation(line: 123, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !136, file: !1, line: 122, column: 9)
!148 = !DILocation(line: 126, column: 12, scope: !129)
!149 = !DILocation(line: 126, column: 5, scope: !129)
!150 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 129, type: !38, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!151 = !DILocalVariable(name: "data", scope: !150, file: !1, line: 131, type: !12)
!152 = !DILocation(line: 131, column: 9, scope: !150)
!153 = !DILocation(line: 133, column: 10, scope: !150)
!154 = !DILocation(line: 134, column: 26, scope: !150)
!155 = !DILocation(line: 134, column: 12, scope: !150)
!156 = !DILocation(line: 134, column: 10, scope: !150)
!157 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 136, type: !12)
!158 = distinct !DILexicalBlock(scope: !150, file: !1, line: 135, column: 5)
!159 = !DILocation(line: 136, column: 13, scope: !158)
!160 = !DILocalVariable(name: "buffer", scope: !158, file: !1, line: 137, type: !50)
!161 = !DILocation(line: 137, column: 13, scope: !158)
!162 = !DILocation(line: 139, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 139, column: 13)
!164 = !DILocation(line: 139, column: 18, scope: !163)
!165 = !DILocation(line: 139, column: 23, scope: !163)
!166 = !DILocation(line: 139, column: 26, scope: !163)
!167 = !DILocation(line: 139, column: 31, scope: !163)
!168 = !DILocation(line: 139, column: 13, scope: !158)
!169 = !DILocation(line: 141, column: 20, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 140, column: 9)
!171 = !DILocation(line: 141, column: 13, scope: !170)
!172 = !DILocation(line: 141, column: 26, scope: !170)
!173 = !DILocation(line: 143, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 143, column: 13)
!175 = !DILocation(line: 143, column: 17, scope: !174)
!176 = !DILocation(line: 143, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 143, column: 13)
!178 = !DILocation(line: 143, column: 26, scope: !177)
!179 = !DILocation(line: 143, column: 13, scope: !174)
!180 = !DILocation(line: 145, column: 37, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 144, column: 13)
!182 = !DILocation(line: 145, column: 30, scope: !181)
!183 = !DILocation(line: 145, column: 17, scope: !181)
!184 = !DILocation(line: 146, column: 13, scope: !181)
!185 = !DILocation(line: 143, column: 33, scope: !177)
!186 = !DILocation(line: 143, column: 13, scope: !177)
!187 = distinct !{!187, !179, !188, !78}
!188 = !DILocation(line: 146, column: 13, scope: !174)
!189 = !DILocation(line: 147, column: 9, scope: !170)
!190 = !DILocation(line: 150, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !163, file: !1, line: 149, column: 9)
!192 = !DILocation(line: 153, column: 1, scope: !150)
!193 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good", scope: !1, file: !1, line: 155, type: !38, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!194 = !DILocation(line: 157, column: 5, scope: !193)
!195 = !DILocation(line: 158, column: 5, scope: !193)
!196 = !DILocation(line: 159, column: 1, scope: !193)
