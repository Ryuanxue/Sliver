; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  br label %while.body, !dbg !16

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !17, metadata !DIExpression()), !dbg !24
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !25
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !27
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !28
  %cmp = icmp ne i8* %call, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %while.body
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !31
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !33
  store i32 %call2, i32* %data, align 4, !dbg !34
  br label %if.end, !dbg !35

if.else:                                          ; preds = %while.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.end, !dbg !38

while.end:                                        ; preds = %if.end
  br label %while.body3, !dbg !39

while.body3:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !40, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !44, metadata !DIExpression()), !dbg !48
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !48
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !48
  %3 = load i32, i32* %data, align 4, !dbg !49
  %cmp4 = icmp sge i32 %3, 0, !dbg !51
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !52

if.then5:                                         ; preds = %while.body3
  %4 = load i32, i32* %data, align 4, !dbg !53
  %idxprom = sext i32 %4 to i64, !dbg !55
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !55
  store i32 1, i32* %arrayidx, align 4, !dbg !56
  store i32 0, i32* %i, align 4, !dbg !57
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !60
  %cmp6 = icmp slt i32 %5, 10, !dbg !62
  br i1 %cmp6, label %for.body, label %for.end, !dbg !63

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !64
  %idxprom7 = sext i32 %6 to i64, !dbg !66
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !66
  %7 = load i32, i32* %arrayidx8, align 4, !dbg !66
  call void @printIntLine(i32 %7), !dbg !67
  br label %for.inc, !dbg !68

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !69
  %inc = add nsw i32 %8, 1, !dbg !69
  store i32 %inc, i32* %i, align 4, !dbg !69
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !74

if.else9:                                         ; preds = %while.body3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  br label %while.end11, !dbg !77

while.end11:                                      ; preds = %if.end10
  ret void, !dbg !78
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
define dso_local void @goodB2G() #0 !dbg !79 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 -1, i32* %data, align 4, !dbg !82
  br label %while.body, !dbg !83

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !84, metadata !DIExpression()), !dbg !87
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !87
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !88
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !90
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !91
  %cmp = icmp ne i8* %call, null, !dbg !92
  br i1 %cmp, label %if.then, label %if.else, !dbg !93

if.then:                                          ; preds = %while.body
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !94
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !96
  store i32 %call2, i32* %data, align 4, !dbg !97
  br label %if.end, !dbg !98

if.else:                                          ; preds = %while.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !99
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.end, !dbg !101

while.end:                                        ; preds = %if.end
  br label %while.body3, !dbg !102

while.body3:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !107, metadata !DIExpression()), !dbg !108
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !108
  %3 = load i32, i32* %data, align 4, !dbg !109
  %cmp4 = icmp sge i32 %3, 0, !dbg !111
  br i1 %cmp4, label %land.lhs.true, label %if.else10, !dbg !112

land.lhs.true:                                    ; preds = %while.body3
  %4 = load i32, i32* %data, align 4, !dbg !113
  %cmp5 = icmp slt i32 %4, 10, !dbg !114
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !115

if.then6:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !116
  %idxprom = sext i32 %5 to i64, !dbg !118
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !118
  store i32 1, i32* %arrayidx, align 4, !dbg !119
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.then6
  %6 = load i32, i32* %i, align 4, !dbg !123
  %cmp7 = icmp slt i32 %6, 10, !dbg !125
  br i1 %cmp7, label %for.body, label %for.end, !dbg !126

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !127
  %idxprom8 = sext i32 %7 to i64, !dbg !129
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !129
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !129
  call void @printIntLine(i32 %8), !dbg !130
  br label %for.inc, !dbg !131

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !132
  %inc = add nsw i32 %9, 1, !dbg !132
  store i32 %inc, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !133, !llvm.loop !134

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !136

if.else10:                                        ; preds = %land.lhs.true, %while.body3
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  br label %while.end12, !dbg !139

while.end12:                                      ; preds = %if.end11
  ret void, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !141 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 -1, i32* %data, align 4, !dbg !144
  br label %while.body, !dbg !145

while.body:                                       ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !146
  br label %while.end, !dbg !148

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !149

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !150, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !155
  %1 = load i32, i32* %data, align 4, !dbg !156
  %cmp = icmp sge i32 %1, 0, !dbg !158
  br i1 %cmp, label %if.then, label %if.else, !dbg !159

if.then:                                          ; preds = %while.body1
  %2 = load i32, i32* %data, align 4, !dbg !160
  %idxprom = sext i32 %2 to i64, !dbg !162
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !162
  store i32 1, i32* %arrayidx, align 4, !dbg !163
  store i32 0, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !166

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !167
  %cmp2 = icmp slt i32 %3, 10, !dbg !169
  br i1 %cmp2, label %for.body, label %for.end, !dbg !170

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !171
  %idxprom3 = sext i32 %4 to i64, !dbg !173
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !173
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !173
  call void @printIntLine(i32 %5), !dbg !174
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !176
  %inc = add nsw i32 %6, 1, !dbg !176
  store i32 %inc, i32* %i, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !180

if.else:                                          ; preds = %while.body1
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !181
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %while.end5, !dbg !183

while.end5:                                       ; preds = %if.end
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good() #0 !dbg !185 {
entry:
  call void @goodB2G(), !dbg !186
  call void @goodG2B(), !dbg !187
  ret void, !dbg !188
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_579/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocation(line: 30, column: 5, scope: !9)
!17 = !DILocalVariable(name: "inputBuffer", scope: !18, file: !1, line: 33, type: !20)
!18 = distinct !DILexicalBlock(scope: !19, file: !1, line: 32, column: 9)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 5)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 14)
!24 = !DILocation(line: 33, column: 18, scope: !18)
!25 = !DILocation(line: 35, column: 23, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 17)
!27 = !DILocation(line: 35, column: 53, scope: !26)
!28 = !DILocation(line: 35, column: 17, scope: !26)
!29 = !DILocation(line: 35, column: 60, scope: !26)
!30 = !DILocation(line: 35, column: 17, scope: !18)
!31 = !DILocation(line: 38, column: 29, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 36, column: 13)
!33 = !DILocation(line: 38, column: 24, scope: !32)
!34 = !DILocation(line: 38, column: 22, scope: !32)
!35 = !DILocation(line: 39, column: 13, scope: !32)
!36 = !DILocation(line: 42, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !26, file: !1, line: 41, column: 13)
!38 = !DILocation(line: 45, column: 9, scope: !19)
!39 = !DILocation(line: 47, column: 5, scope: !9)
!40 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 50, type: !13)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 49, column: 9)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 48, column: 5)
!43 = !DILocation(line: 50, column: 17, scope: !41)
!44 = !DILocalVariable(name: "buffer", scope: !41, file: !1, line: 51, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 10)
!48 = !DILocation(line: 51, column: 17, scope: !41)
!49 = !DILocation(line: 54, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 54, column: 17)
!51 = !DILocation(line: 54, column: 22, scope: !50)
!52 = !DILocation(line: 54, column: 17, scope: !41)
!53 = !DILocation(line: 56, column: 24, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 55, column: 13)
!55 = !DILocation(line: 56, column: 17, scope: !54)
!56 = !DILocation(line: 56, column: 30, scope: !54)
!57 = !DILocation(line: 58, column: 23, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 58, column: 17)
!59 = !DILocation(line: 58, column: 21, scope: !58)
!60 = !DILocation(line: 58, column: 28, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 58, column: 17)
!62 = !DILocation(line: 58, column: 30, scope: !61)
!63 = !DILocation(line: 58, column: 17, scope: !58)
!64 = !DILocation(line: 60, column: 41, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 59, column: 17)
!66 = !DILocation(line: 60, column: 34, scope: !65)
!67 = !DILocation(line: 60, column: 21, scope: !65)
!68 = !DILocation(line: 61, column: 17, scope: !65)
!69 = !DILocation(line: 58, column: 37, scope: !61)
!70 = !DILocation(line: 58, column: 17, scope: !61)
!71 = distinct !{!71, !63, !72, !73}
!72 = !DILocation(line: 61, column: 17, scope: !58)
!73 = !{!"llvm.loop.mustprogress"}
!74 = !DILocation(line: 62, column: 13, scope: !54)
!75 = !DILocation(line: 65, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !50, file: !1, line: 64, column: 13)
!77 = !DILocation(line: 68, column: 9, scope: !42)
!78 = !DILocation(line: 70, column: 1, scope: !9)
!79 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 77, type: !10, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = !DILocalVariable(name: "data", scope: !79, file: !1, line: 79, type: !13)
!81 = !DILocation(line: 79, column: 9, scope: !79)
!82 = !DILocation(line: 81, column: 10, scope: !79)
!83 = !DILocation(line: 82, column: 5, scope: !79)
!84 = !DILocalVariable(name: "inputBuffer", scope: !85, file: !1, line: 85, type: !20)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 84, column: 9)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 83, column: 5)
!87 = !DILocation(line: 85, column: 18, scope: !85)
!88 = !DILocation(line: 87, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 87, column: 17)
!90 = !DILocation(line: 87, column: 53, scope: !89)
!91 = !DILocation(line: 87, column: 17, scope: !89)
!92 = !DILocation(line: 87, column: 60, scope: !89)
!93 = !DILocation(line: 87, column: 17, scope: !85)
!94 = !DILocation(line: 90, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !1, line: 88, column: 13)
!96 = !DILocation(line: 90, column: 24, scope: !95)
!97 = !DILocation(line: 90, column: 22, scope: !95)
!98 = !DILocation(line: 91, column: 13, scope: !95)
!99 = !DILocation(line: 94, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !89, file: !1, line: 93, column: 13)
!101 = !DILocation(line: 97, column: 9, scope: !86)
!102 = !DILocation(line: 99, column: 5, scope: !79)
!103 = !DILocalVariable(name: "i", scope: !104, file: !1, line: 102, type: !13)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 101, column: 9)
!105 = distinct !DILexicalBlock(scope: !79, file: !1, line: 100, column: 5)
!106 = !DILocation(line: 102, column: 17, scope: !104)
!107 = !DILocalVariable(name: "buffer", scope: !104, file: !1, line: 103, type: !45)
!108 = !DILocation(line: 103, column: 17, scope: !104)
!109 = !DILocation(line: 105, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 105, column: 17)
!111 = !DILocation(line: 105, column: 22, scope: !110)
!112 = !DILocation(line: 105, column: 27, scope: !110)
!113 = !DILocation(line: 105, column: 30, scope: !110)
!114 = !DILocation(line: 105, column: 35, scope: !110)
!115 = !DILocation(line: 105, column: 17, scope: !104)
!116 = !DILocation(line: 107, column: 24, scope: !117)
!117 = distinct !DILexicalBlock(scope: !110, file: !1, line: 106, column: 13)
!118 = !DILocation(line: 107, column: 17, scope: !117)
!119 = !DILocation(line: 107, column: 30, scope: !117)
!120 = !DILocation(line: 109, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 109, column: 17)
!122 = !DILocation(line: 109, column: 21, scope: !121)
!123 = !DILocation(line: 109, column: 28, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 109, column: 17)
!125 = !DILocation(line: 109, column: 30, scope: !124)
!126 = !DILocation(line: 109, column: 17, scope: !121)
!127 = !DILocation(line: 111, column: 41, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 110, column: 17)
!129 = !DILocation(line: 111, column: 34, scope: !128)
!130 = !DILocation(line: 111, column: 21, scope: !128)
!131 = !DILocation(line: 112, column: 17, scope: !128)
!132 = !DILocation(line: 109, column: 37, scope: !124)
!133 = !DILocation(line: 109, column: 17, scope: !124)
!134 = distinct !{!134, !126, !135, !73}
!135 = !DILocation(line: 112, column: 17, scope: !121)
!136 = !DILocation(line: 113, column: 13, scope: !117)
!137 = !DILocation(line: 116, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !110, file: !1, line: 115, column: 13)
!139 = !DILocation(line: 119, column: 9, scope: !105)
!140 = !DILocation(line: 121, column: 1, scope: !79)
!141 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 124, type: !10, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!142 = !DILocalVariable(name: "data", scope: !141, file: !1, line: 126, type: !13)
!143 = !DILocation(line: 126, column: 9, scope: !141)
!144 = !DILocation(line: 128, column: 10, scope: !141)
!145 = !DILocation(line: 129, column: 5, scope: !141)
!146 = !DILocation(line: 133, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 130, column: 5)
!148 = !DILocation(line: 134, column: 9, scope: !147)
!149 = !DILocation(line: 136, column: 5, scope: !141)
!150 = !DILocalVariable(name: "i", scope: !151, file: !1, line: 139, type: !13)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 138, column: 9)
!152 = distinct !DILexicalBlock(scope: !141, file: !1, line: 137, column: 5)
!153 = !DILocation(line: 139, column: 17, scope: !151)
!154 = !DILocalVariable(name: "buffer", scope: !151, file: !1, line: 140, type: !45)
!155 = !DILocation(line: 140, column: 17, scope: !151)
!156 = !DILocation(line: 143, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !1, line: 143, column: 17)
!158 = !DILocation(line: 143, column: 22, scope: !157)
!159 = !DILocation(line: 143, column: 17, scope: !151)
!160 = !DILocation(line: 145, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 144, column: 13)
!162 = !DILocation(line: 145, column: 17, scope: !161)
!163 = !DILocation(line: 145, column: 30, scope: !161)
!164 = !DILocation(line: 147, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 147, column: 17)
!166 = !DILocation(line: 147, column: 21, scope: !165)
!167 = !DILocation(line: 147, column: 28, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 147, column: 17)
!169 = !DILocation(line: 147, column: 30, scope: !168)
!170 = !DILocation(line: 147, column: 17, scope: !165)
!171 = !DILocation(line: 149, column: 41, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 148, column: 17)
!173 = !DILocation(line: 149, column: 34, scope: !172)
!174 = !DILocation(line: 149, column: 21, scope: !172)
!175 = !DILocation(line: 150, column: 17, scope: !172)
!176 = !DILocation(line: 147, column: 37, scope: !168)
!177 = !DILocation(line: 147, column: 17, scope: !168)
!178 = distinct !{!178, !170, !179, !73}
!179 = !DILocation(line: 150, column: 17, scope: !165)
!180 = !DILocation(line: 151, column: 13, scope: !161)
!181 = !DILocation(line: 154, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !157, file: !1, line: 153, column: 13)
!183 = !DILocation(line: 157, column: 9, scope: !152)
!184 = !DILocation(line: 159, column: 1, scope: !141)
!185 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good", scope: !1, file: !1, line: 161, type: !10, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!186 = !DILocation(line: 163, column: 5, scope: !185)
!187 = !DILocation(line: 164, column: 5, scope: !185)
!188 = !DILocation(line: 165, column: 1, scope: !185)
