; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  br label %source, !dbg !16

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !17), !dbg !18
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !19, metadata !DIExpression()), !dbg !25
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !26
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !28
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !29
  %cmp = icmp ne i8* %call, null, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %source
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !32
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !34
  store i32 %call2, i32* %data, align 4, !dbg !35
  br label %if.end, !dbg !36

if.else:                                          ; preds = %source
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sink, !dbg !39

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !40), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !45, metadata !DIExpression()), !dbg !49
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !49
  %3 = load i32, i32* %data, align 4, !dbg !50
  %cmp3 = icmp sge i32 %3, 0, !dbg !52
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !53

if.then4:                                         ; preds = %sink
  %4 = load i32, i32* %data, align 4, !dbg !54
  %idxprom = sext i32 %4 to i64, !dbg !56
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !56
  store i32 1, i32* %arrayidx, align 4, !dbg !57
  store i32 0, i32* %i, align 4, !dbg !58
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !61
  %cmp5 = icmp slt i32 %5, 10, !dbg !63
  br i1 %cmp5, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !65
  %idxprom6 = sext i32 %6 to i64, !dbg !67
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !67
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !67
  call void @printIntLine(i32 %7), !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !70
  %inc = add nsw i32 %8, 1, !dbg !70
  store i32 %inc, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !75

if.else8:                                         ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !76
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
  br label %source, !dbg !83

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !86, metadata !DIExpression()), !dbg !88
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !88
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !89
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !91
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !92
  %cmp = icmp ne i8* %call, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.else, !dbg !94

if.then:                                          ; preds = %source
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !95
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !97
  store i32 %call2, i32* %data, align 4, !dbg !98
  br label %if.end, !dbg !99

if.else:                                          ; preds = %source
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sink, !dbg !102

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !103), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !108, metadata !DIExpression()), !dbg !109
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !109
  %3 = load i32, i32* %data, align 4, !dbg !110
  %cmp3 = icmp sge i32 %3, 0, !dbg !112
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !113

land.lhs.true:                                    ; preds = %sink
  %4 = load i32, i32* %data, align 4, !dbg !114
  %cmp4 = icmp slt i32 %4, 10, !dbg !115
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !116

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !117
  %idxprom = sext i32 %5 to i64, !dbg !119
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !119
  store i32 1, i32* %arrayidx, align 4, !dbg !120
  store i32 0, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !124
  %cmp6 = icmp slt i32 %6, 10, !dbg !126
  br i1 %cmp6, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !128
  %idxprom7 = sext i32 %7 to i64, !dbg !130
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !130
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !130
  call void @printIntLine(i32 %8), !dbg !131
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !133
  %inc = add nsw i32 %9, 1, !dbg !133
  store i32 %inc, i32* %i, align 4, !dbg !133
  br label %for.cond, !dbg !134, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !137

if.else9:                                         ; preds = %land.lhs.true, %sink
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !138
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
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
  br label %source, !dbg !145

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !146), !dbg !147
  store i32 7, i32* %data, align 4, !dbg !148
  br label %sink, !dbg !149

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !150), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %i, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !156
  %1 = load i32, i32* %data, align 4, !dbg !157
  %cmp = icmp sge i32 %1, 0, !dbg !159
  br i1 %cmp, label %if.then, label %if.else, !dbg !160

if.then:                                          ; preds = %sink
  %2 = load i32, i32* %data, align 4, !dbg !161
  %idxprom = sext i32 %2 to i64, !dbg !163
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !163
  store i32 1, i32* %arrayidx, align 4, !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !167

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !168
  %cmp1 = icmp slt i32 %3, 10, !dbg !170
  br i1 %cmp1, label %for.body, label %for.end, !dbg !171

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !172
  %idxprom2 = sext i32 %4 to i64, !dbg !174
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !174
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !174
  call void @printIntLine(i32 %5), !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %6, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !181

if.else:                                          ; preds = %sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !182
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good() #0 !dbg !185 {
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_581/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocation(line: 30, column: 5, scope: !9)
!17 = !DILabel(scope: !9, name: "source", file: !1, line: 31)
!18 = !DILocation(line: 31, column: 1, scope: !9)
!19 = !DILocalVariable(name: "inputBuffer", scope: !20, file: !1, line: 33, type: !21)
!20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 32, column: 5)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 112, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 14)
!25 = !DILocation(line: 33, column: 14, scope: !20)
!26 = !DILocation(line: 35, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 35, column: 13)
!28 = !DILocation(line: 35, column: 49, scope: !27)
!29 = !DILocation(line: 35, column: 13, scope: !27)
!30 = !DILocation(line: 35, column: 56, scope: !27)
!31 = !DILocation(line: 35, column: 13, scope: !20)
!32 = !DILocation(line: 38, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 36, column: 9)
!34 = !DILocation(line: 38, column: 20, scope: !33)
!35 = !DILocation(line: 38, column: 18, scope: !33)
!36 = !DILocation(line: 39, column: 9, scope: !33)
!37 = !DILocation(line: 42, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !27, file: !1, line: 41, column: 9)
!39 = !DILocation(line: 45, column: 5, scope: !9)
!40 = !DILabel(scope: !9, name: "sink", file: !1, line: 46)
!41 = !DILocation(line: 46, column: 1, scope: !9)
!42 = !DILocalVariable(name: "i", scope: !43, file: !1, line: 48, type: !13)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 5)
!44 = !DILocation(line: 48, column: 13, scope: !43)
!45 = !DILocalVariable(name: "buffer", scope: !43, file: !1, line: 49, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DILocation(line: 49, column: 13, scope: !43)
!50 = !DILocation(line: 52, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !43, file: !1, line: 52, column: 13)
!52 = !DILocation(line: 52, column: 18, scope: !51)
!53 = !DILocation(line: 52, column: 13, scope: !43)
!54 = !DILocation(line: 54, column: 20, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 53, column: 9)
!56 = !DILocation(line: 54, column: 13, scope: !55)
!57 = !DILocation(line: 54, column: 26, scope: !55)
!58 = !DILocation(line: 56, column: 19, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 56, column: 13)
!60 = !DILocation(line: 56, column: 17, scope: !59)
!61 = !DILocation(line: 56, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 56, column: 13)
!63 = !DILocation(line: 56, column: 26, scope: !62)
!64 = !DILocation(line: 56, column: 13, scope: !59)
!65 = !DILocation(line: 58, column: 37, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 57, column: 13)
!67 = !DILocation(line: 58, column: 30, scope: !66)
!68 = !DILocation(line: 58, column: 17, scope: !66)
!69 = !DILocation(line: 59, column: 13, scope: !66)
!70 = !DILocation(line: 56, column: 33, scope: !62)
!71 = !DILocation(line: 56, column: 13, scope: !62)
!72 = distinct !{!72, !64, !73, !74}
!73 = !DILocation(line: 59, column: 13, scope: !59)
!74 = !{!"llvm.loop.mustprogress"}
!75 = !DILocation(line: 60, column: 9, scope: !55)
!76 = !DILocation(line: 63, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !51, file: !1, line: 62, column: 9)
!78 = !DILocation(line: 66, column: 1, scope: !9)
!79 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 73, type: !10, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = !DILocalVariable(name: "data", scope: !79, file: !1, line: 75, type: !13)
!81 = !DILocation(line: 75, column: 9, scope: !79)
!82 = !DILocation(line: 77, column: 10, scope: !79)
!83 = !DILocation(line: 78, column: 5, scope: !79)
!84 = !DILabel(scope: !79, name: "source", file: !1, line: 79)
!85 = !DILocation(line: 79, column: 1, scope: !79)
!86 = !DILocalVariable(name: "inputBuffer", scope: !87, file: !1, line: 81, type: !21)
!87 = distinct !DILexicalBlock(scope: !79, file: !1, line: 80, column: 5)
!88 = !DILocation(line: 81, column: 14, scope: !87)
!89 = !DILocation(line: 83, column: 19, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 83, column: 13)
!91 = !DILocation(line: 83, column: 49, scope: !90)
!92 = !DILocation(line: 83, column: 13, scope: !90)
!93 = !DILocation(line: 83, column: 56, scope: !90)
!94 = !DILocation(line: 83, column: 13, scope: !87)
!95 = !DILocation(line: 86, column: 25, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !1, line: 84, column: 9)
!97 = !DILocation(line: 86, column: 20, scope: !96)
!98 = !DILocation(line: 86, column: 18, scope: !96)
!99 = !DILocation(line: 87, column: 9, scope: !96)
!100 = !DILocation(line: 90, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !90, file: !1, line: 89, column: 9)
!102 = !DILocation(line: 93, column: 5, scope: !79)
!103 = !DILabel(scope: !79, name: "sink", file: !1, line: 94)
!104 = !DILocation(line: 94, column: 1, scope: !79)
!105 = !DILocalVariable(name: "i", scope: !106, file: !1, line: 96, type: !13)
!106 = distinct !DILexicalBlock(scope: !79, file: !1, line: 95, column: 5)
!107 = !DILocation(line: 96, column: 13, scope: !106)
!108 = !DILocalVariable(name: "buffer", scope: !106, file: !1, line: 97, type: !46)
!109 = !DILocation(line: 97, column: 13, scope: !106)
!110 = !DILocation(line: 99, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 99, column: 13)
!112 = !DILocation(line: 99, column: 18, scope: !111)
!113 = !DILocation(line: 99, column: 23, scope: !111)
!114 = !DILocation(line: 99, column: 26, scope: !111)
!115 = !DILocation(line: 99, column: 31, scope: !111)
!116 = !DILocation(line: 99, column: 13, scope: !106)
!117 = !DILocation(line: 101, column: 20, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !1, line: 100, column: 9)
!119 = !DILocation(line: 101, column: 13, scope: !118)
!120 = !DILocation(line: 101, column: 26, scope: !118)
!121 = !DILocation(line: 103, column: 19, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 103, column: 13)
!123 = !DILocation(line: 103, column: 17, scope: !122)
!124 = !DILocation(line: 103, column: 24, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 103, column: 13)
!126 = !DILocation(line: 103, column: 26, scope: !125)
!127 = !DILocation(line: 103, column: 13, scope: !122)
!128 = !DILocation(line: 105, column: 37, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 104, column: 13)
!130 = !DILocation(line: 105, column: 30, scope: !129)
!131 = !DILocation(line: 105, column: 17, scope: !129)
!132 = !DILocation(line: 106, column: 13, scope: !129)
!133 = !DILocation(line: 103, column: 33, scope: !125)
!134 = !DILocation(line: 103, column: 13, scope: !125)
!135 = distinct !{!135, !127, !136, !74}
!136 = !DILocation(line: 106, column: 13, scope: !122)
!137 = !DILocation(line: 107, column: 9, scope: !118)
!138 = !DILocation(line: 110, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !111, file: !1, line: 109, column: 9)
!140 = !DILocation(line: 113, column: 1, scope: !79)
!141 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 116, type: !10, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!142 = !DILocalVariable(name: "data", scope: !141, file: !1, line: 118, type: !13)
!143 = !DILocation(line: 118, column: 9, scope: !141)
!144 = !DILocation(line: 120, column: 10, scope: !141)
!145 = !DILocation(line: 121, column: 5, scope: !141)
!146 = !DILabel(scope: !141, name: "source", file: !1, line: 122)
!147 = !DILocation(line: 122, column: 1, scope: !141)
!148 = !DILocation(line: 125, column: 10, scope: !141)
!149 = !DILocation(line: 126, column: 5, scope: !141)
!150 = !DILabel(scope: !141, name: "sink", file: !1, line: 127)
!151 = !DILocation(line: 127, column: 1, scope: !141)
!152 = !DILocalVariable(name: "i", scope: !153, file: !1, line: 129, type: !13)
!153 = distinct !DILexicalBlock(scope: !141, file: !1, line: 128, column: 5)
!154 = !DILocation(line: 129, column: 13, scope: !153)
!155 = !DILocalVariable(name: "buffer", scope: !153, file: !1, line: 130, type: !46)
!156 = !DILocation(line: 130, column: 13, scope: !153)
!157 = !DILocation(line: 133, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 133, column: 13)
!159 = !DILocation(line: 133, column: 18, scope: !158)
!160 = !DILocation(line: 133, column: 13, scope: !153)
!161 = !DILocation(line: 135, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 134, column: 9)
!163 = !DILocation(line: 135, column: 13, scope: !162)
!164 = !DILocation(line: 135, column: 26, scope: !162)
!165 = !DILocation(line: 137, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 137, column: 13)
!167 = !DILocation(line: 137, column: 17, scope: !166)
!168 = !DILocation(line: 137, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 137, column: 13)
!170 = !DILocation(line: 137, column: 26, scope: !169)
!171 = !DILocation(line: 137, column: 13, scope: !166)
!172 = !DILocation(line: 139, column: 37, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 138, column: 13)
!174 = !DILocation(line: 139, column: 30, scope: !173)
!175 = !DILocation(line: 139, column: 17, scope: !173)
!176 = !DILocation(line: 140, column: 13, scope: !173)
!177 = !DILocation(line: 137, column: 33, scope: !169)
!178 = !DILocation(line: 137, column: 13, scope: !169)
!179 = distinct !{!179, !171, !180, !74}
!180 = !DILocation(line: 140, column: 13, scope: !166)
!181 = !DILocation(line: 141, column: 9, scope: !162)
!182 = !DILocation(line: 144, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !158, file: !1, line: 143, column: 9)
!184 = !DILocation(line: 147, column: 1, scope: !141)
!185 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good", scope: !1, file: !1, line: 149, type: !10, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!186 = !DILocation(line: 151, column: 5, scope: !185)
!187 = !DILocation(line: 152, column: 5, scope: !185)
!188 = !DILocation(line: 153, column: 1, scope: !185)
