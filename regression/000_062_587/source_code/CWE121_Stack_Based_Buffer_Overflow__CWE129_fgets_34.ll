; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType = type { i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !15, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %data, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !24, metadata !DIExpression()), !dbg !30
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !31
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !33
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !34
  %cmp = icmp ne i8* %call, null, !dbg !35
  br i1 %cmp, label %if.then, label %if.else, !dbg !36

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !37
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !39
  store i32 %call2, i32* %data, align 4, !dbg !40
  br label %if.end, !dbg !41

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !44
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !45
  store i32 %2, i32* %unionFirst, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !47, metadata !DIExpression()), !dbg !49
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !50
  %3 = load i32, i32* %unionSecond, align 4, !dbg !50
  store i32 %3, i32* %data3, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !51, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !54, metadata !DIExpression()), !dbg !58
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !58
  %5 = load i32, i32* %data3, align 4, !dbg !59
  %cmp4 = icmp sge i32 %5, 0, !dbg !61
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !62

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !63
  %idxprom = sext i32 %6 to i64, !dbg !65
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !65
  store i32 1, i32* %arrayidx, align 4, !dbg !66
  store i32 0, i32* %i, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %i, align 4, !dbg !70
  %cmp6 = icmp slt i32 %7, 10, !dbg !72
  br i1 %cmp6, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !74
  %idxprom7 = sext i32 %8 to i64, !dbg !76
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !76
  %9 = load i32, i32* %arrayidx8, align 4, !dbg !76
  call void @printIntLine(i32 %9), !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !79
  %inc = add nsw i32 %10, 1, !dbg !79
  store i32 %inc, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !84

if.else9:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !87
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
define dso_local void @goodG2B() #0 !dbg !88 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 -1, i32* %data, align 4, !dbg !93
  store i32 7, i32* %data, align 4, !dbg !94
  %0 = load i32, i32* %data, align 4, !dbg !95
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !96
  store i32 %0, i32* %unionFirst, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !98, metadata !DIExpression()), !dbg !100
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !101
  %1 = load i32, i32* %unionSecond, align 4, !dbg !101
  store i32 %1, i32* %data1, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !106
  %3 = load i32, i32* %data1, align 4, !dbg !107
  %cmp = icmp sge i32 %3, 0, !dbg !109
  br i1 %cmp, label %if.then, label %if.else, !dbg !110

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !111
  %idxprom = sext i32 %4 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !113
  store i32 1, i32* %arrayidx, align 4, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !118
  %cmp2 = icmp slt i32 %5, 10, !dbg !120
  br i1 %cmp2, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !122
  %idxprom3 = sext i32 %6 to i64, !dbg !124
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !124
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !124
  call void @printIntLine(i32 %7), !dbg !125
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !127
  %inc = add nsw i32 %8, 1, !dbg !127
  store i32 %inc, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !131

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !132
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !135 {
entry:
  %data = alloca i32, align 4
  %myUnion = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 -1, i32* %data, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !141, metadata !DIExpression()), !dbg !143
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !143
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !144
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !146
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !147
  %cmp = icmp ne i8* %call, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.else, !dbg !149

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !150
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !152
  store i32 %call2, i32* %data, align 4, !dbg !153
  br label %if.end, !dbg !154

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !157
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !158
  store i32 %2, i32* %unionFirst, align 4, !dbg !159
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !160, metadata !DIExpression()), !dbg !162
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %myUnion to i32*, !dbg !163
  %3 = load i32, i32* %unionSecond, align 4, !dbg !163
  store i32 %3, i32* %data3, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %i, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !167, metadata !DIExpression()), !dbg !168
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !168
  %5 = load i32, i32* %data3, align 4, !dbg !169
  %cmp4 = icmp sge i32 %5, 0, !dbg !171
  br i1 %cmp4, label %land.lhs.true, label %if.else10, !dbg !172

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !173
  %cmp5 = icmp slt i32 %6, 10, !dbg !174
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !175

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data3, align 4, !dbg !176
  %idxprom = sext i32 %7 to i64, !dbg !178
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !178
  store i32 1, i32* %arrayidx, align 4, !dbg !179
  store i32 0, i32* %i, align 4, !dbg !180
  br label %for.cond, !dbg !182

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !183
  %cmp7 = icmp slt i32 %8, 10, !dbg !185
  br i1 %cmp7, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !187
  %idxprom8 = sext i32 %9 to i64, !dbg !189
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !189
  %10 = load i32, i32* %arrayidx9, align 4, !dbg !189
  call void @printIntLine(i32 %10), !dbg !190
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !192
  %inc = add nsw i32 %11, 1, !dbg !192
  store i32 %inc, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !196

if.else10:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !197
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_good() #0 !dbg !200 {
entry:
  call void @goodG2B(), !dbg !201
  call void @goodB2G(), !dbg !202
  ret void, !dbg !203
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad", scope: !1, file: !1, line: 26, type: !10, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 28, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 28, column: 9, scope: !9)
!15 = !DILocalVariable(name: "myUnion", scope: !9, file: !1, line: 29, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType", file: !17, line: 9, baseType: !18)
!17 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/source_code")
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !17, line: 5, size: 32, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !18, file: !17, line: 7, baseType: !13, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !18, file: !17, line: 8, baseType: !13, size: 32)
!22 = !DILocation(line: 29, column: 67, scope: !9)
!23 = !DILocation(line: 31, column: 10, scope: !9)
!24 = !DILocalVariable(name: "inputBuffer", scope: !25, file: !1, line: 33, type: !26)
!25 = distinct !DILexicalBlock(scope: !9, file: !1, line: 32, column: 5)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 112, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 14)
!30 = !DILocation(line: 33, column: 14, scope: !25)
!31 = !DILocation(line: 35, column: 19, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 35, column: 13)
!33 = !DILocation(line: 35, column: 49, scope: !32)
!34 = !DILocation(line: 35, column: 13, scope: !32)
!35 = !DILocation(line: 35, column: 56, scope: !32)
!36 = !DILocation(line: 35, column: 13, scope: !25)
!37 = !DILocation(line: 38, column: 25, scope: !38)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 36, column: 9)
!39 = !DILocation(line: 38, column: 20, scope: !38)
!40 = !DILocation(line: 38, column: 18, scope: !38)
!41 = !DILocation(line: 39, column: 9, scope: !38)
!42 = !DILocation(line: 42, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 41, column: 9)
!44 = !DILocation(line: 45, column: 26, scope: !9)
!45 = !DILocation(line: 45, column: 13, scope: !9)
!46 = !DILocation(line: 45, column: 24, scope: !9)
!47 = !DILocalVariable(name: "data", scope: !48, file: !1, line: 47, type: !13)
!48 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 5)
!49 = !DILocation(line: 47, column: 13, scope: !48)
!50 = !DILocation(line: 47, column: 28, scope: !48)
!51 = !DILocalVariable(name: "i", scope: !52, file: !1, line: 49, type: !13)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 48, column: 9)
!53 = !DILocation(line: 49, column: 17, scope: !52)
!54 = !DILocalVariable(name: "buffer", scope: !52, file: !1, line: 50, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 10)
!58 = !DILocation(line: 50, column: 17, scope: !52)
!59 = !DILocation(line: 53, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 17)
!61 = !DILocation(line: 53, column: 22, scope: !60)
!62 = !DILocation(line: 53, column: 17, scope: !52)
!63 = !DILocation(line: 55, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 54, column: 13)
!65 = !DILocation(line: 55, column: 17, scope: !64)
!66 = !DILocation(line: 55, column: 30, scope: !64)
!67 = !DILocation(line: 57, column: 23, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 17)
!69 = !DILocation(line: 57, column: 21, scope: !68)
!70 = !DILocation(line: 57, column: 28, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 57, column: 17)
!72 = !DILocation(line: 57, column: 30, scope: !71)
!73 = !DILocation(line: 57, column: 17, scope: !68)
!74 = !DILocation(line: 59, column: 41, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 58, column: 17)
!76 = !DILocation(line: 59, column: 34, scope: !75)
!77 = !DILocation(line: 59, column: 21, scope: !75)
!78 = !DILocation(line: 60, column: 17, scope: !75)
!79 = !DILocation(line: 57, column: 37, scope: !71)
!80 = !DILocation(line: 57, column: 17, scope: !71)
!81 = distinct !{!81, !73, !82, !83}
!82 = !DILocation(line: 60, column: 17, scope: !68)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 61, column: 13, scope: !64)
!85 = !DILocation(line: 64, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !60, file: !1, line: 63, column: 13)
!87 = !DILocation(line: 68, column: 1, scope: !9)
!88 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", scope: !88, file: !1, line: 77, type: !13)
!90 = !DILocation(line: 77, column: 9, scope: !88)
!91 = !DILocalVariable(name: "myUnion", scope: !88, file: !1, line: 78, type: !16)
!92 = !DILocation(line: 78, column: 67, scope: !88)
!93 = !DILocation(line: 80, column: 10, scope: !88)
!94 = !DILocation(line: 83, column: 10, scope: !88)
!95 = !DILocation(line: 84, column: 26, scope: !88)
!96 = !DILocation(line: 84, column: 13, scope: !88)
!97 = !DILocation(line: 84, column: 24, scope: !88)
!98 = !DILocalVariable(name: "data", scope: !99, file: !1, line: 86, type: !13)
!99 = distinct !DILexicalBlock(scope: !88, file: !1, line: 85, column: 5)
!100 = !DILocation(line: 86, column: 13, scope: !99)
!101 = !DILocation(line: 86, column: 28, scope: !99)
!102 = !DILocalVariable(name: "i", scope: !103, file: !1, line: 88, type: !13)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 87, column: 9)
!104 = !DILocation(line: 88, column: 17, scope: !103)
!105 = !DILocalVariable(name: "buffer", scope: !103, file: !1, line: 89, type: !55)
!106 = !DILocation(line: 89, column: 17, scope: !103)
!107 = !DILocation(line: 92, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 92, column: 17)
!109 = !DILocation(line: 92, column: 22, scope: !108)
!110 = !DILocation(line: 92, column: 17, scope: !103)
!111 = !DILocation(line: 94, column: 24, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 93, column: 13)
!113 = !DILocation(line: 94, column: 17, scope: !112)
!114 = !DILocation(line: 94, column: 30, scope: !112)
!115 = !DILocation(line: 96, column: 23, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 96, column: 17)
!117 = !DILocation(line: 96, column: 21, scope: !116)
!118 = !DILocation(line: 96, column: 28, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 96, column: 17)
!120 = !DILocation(line: 96, column: 30, scope: !119)
!121 = !DILocation(line: 96, column: 17, scope: !116)
!122 = !DILocation(line: 98, column: 41, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 97, column: 17)
!124 = !DILocation(line: 98, column: 34, scope: !123)
!125 = !DILocation(line: 98, column: 21, scope: !123)
!126 = !DILocation(line: 99, column: 17, scope: !123)
!127 = !DILocation(line: 96, column: 37, scope: !119)
!128 = !DILocation(line: 96, column: 17, scope: !119)
!129 = distinct !{!129, !121, !130, !83}
!130 = !DILocation(line: 99, column: 17, scope: !116)
!131 = !DILocation(line: 100, column: 13, scope: !112)
!132 = !DILocation(line: 103, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !108, file: !1, line: 102, column: 13)
!134 = !DILocation(line: 107, column: 1, scope: !88)
!135 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 110, type: !10, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", scope: !135, file: !1, line: 112, type: !13)
!137 = !DILocation(line: 112, column: 9, scope: !135)
!138 = !DILocalVariable(name: "myUnion", scope: !135, file: !1, line: 113, type: !16)
!139 = !DILocation(line: 113, column: 67, scope: !135)
!140 = !DILocation(line: 115, column: 10, scope: !135)
!141 = !DILocalVariable(name: "inputBuffer", scope: !142, file: !1, line: 117, type: !26)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 116, column: 5)
!143 = !DILocation(line: 117, column: 14, scope: !142)
!144 = !DILocation(line: 119, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 119, column: 13)
!146 = !DILocation(line: 119, column: 49, scope: !145)
!147 = !DILocation(line: 119, column: 13, scope: !145)
!148 = !DILocation(line: 119, column: 56, scope: !145)
!149 = !DILocation(line: 119, column: 13, scope: !142)
!150 = !DILocation(line: 122, column: 25, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 120, column: 9)
!152 = !DILocation(line: 122, column: 20, scope: !151)
!153 = !DILocation(line: 122, column: 18, scope: !151)
!154 = !DILocation(line: 123, column: 9, scope: !151)
!155 = !DILocation(line: 126, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !145, file: !1, line: 125, column: 9)
!157 = !DILocation(line: 129, column: 26, scope: !135)
!158 = !DILocation(line: 129, column: 13, scope: !135)
!159 = !DILocation(line: 129, column: 24, scope: !135)
!160 = !DILocalVariable(name: "data", scope: !161, file: !1, line: 131, type: !13)
!161 = distinct !DILexicalBlock(scope: !135, file: !1, line: 130, column: 5)
!162 = !DILocation(line: 131, column: 13, scope: !161)
!163 = !DILocation(line: 131, column: 28, scope: !161)
!164 = !DILocalVariable(name: "i", scope: !165, file: !1, line: 133, type: !13)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 132, column: 9)
!166 = !DILocation(line: 133, column: 17, scope: !165)
!167 = !DILocalVariable(name: "buffer", scope: !165, file: !1, line: 134, type: !55)
!168 = !DILocation(line: 134, column: 17, scope: !165)
!169 = !DILocation(line: 136, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 136, column: 17)
!171 = !DILocation(line: 136, column: 22, scope: !170)
!172 = !DILocation(line: 136, column: 27, scope: !170)
!173 = !DILocation(line: 136, column: 30, scope: !170)
!174 = !DILocation(line: 136, column: 35, scope: !170)
!175 = !DILocation(line: 136, column: 17, scope: !165)
!176 = !DILocation(line: 138, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 137, column: 13)
!178 = !DILocation(line: 138, column: 17, scope: !177)
!179 = !DILocation(line: 138, column: 30, scope: !177)
!180 = !DILocation(line: 140, column: 23, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 140, column: 17)
!182 = !DILocation(line: 140, column: 21, scope: !181)
!183 = !DILocation(line: 140, column: 28, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 140, column: 17)
!185 = !DILocation(line: 140, column: 30, scope: !184)
!186 = !DILocation(line: 140, column: 17, scope: !181)
!187 = !DILocation(line: 142, column: 41, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 141, column: 17)
!189 = !DILocation(line: 142, column: 34, scope: !188)
!190 = !DILocation(line: 142, column: 21, scope: !188)
!191 = !DILocation(line: 143, column: 17, scope: !188)
!192 = !DILocation(line: 140, column: 37, scope: !184)
!193 = !DILocation(line: 140, column: 17, scope: !184)
!194 = distinct !{!194, !186, !195, !83}
!195 = !DILocation(line: 143, column: 17, scope: !181)
!196 = !DILocation(line: 144, column: 13, scope: !177)
!197 = !DILocation(line: 147, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !170, file: !1, line: 146, column: 13)
!199 = !DILocation(line: 151, column: 1, scope: !135)
!200 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_good", scope: !1, file: !1, line: 153, type: !10, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocation(line: 155, column: 5, scope: !200)
!202 = !DILocation(line: 156, column: 5, scope: !200)
!203 = !DILocation(line: 157, column: 1, scope: !200)
