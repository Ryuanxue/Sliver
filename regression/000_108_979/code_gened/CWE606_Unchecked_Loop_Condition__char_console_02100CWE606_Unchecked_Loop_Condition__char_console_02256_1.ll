; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_02100CWE606_Unchecked_Loop_Condition__char_console_02256_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_02100CWE606_Unchecked_Loop_Condition__char_console_02256_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_02100CWE606_Unchecked_Loop_Condition__char_console_02256_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_n_0 = alloca i32, align 4
  %_goodG2B2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !36
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !39
  %sub = sub i64 100, %2, !dbg !41
  %cmp = icmp ugt i64 %sub, 1, !dbg !42
  br i1 %cmp, label %if.then, label %if.end18, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !49
  %sub1 = sub i64 100, %5, !dbg !50
  %conv = trunc i64 %sub1 to i32, !dbg !51
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !52
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !53
  %cmp3 = icmp ne i8* %call2, null, !dbg !54
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !55

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !56
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !58
  store i64 %call6, i64* %_goodB2G1_dataLen_0, align 8, !dbg !59
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !60
  %cmp7 = icmp ugt i64 %8, 0, !dbg !62
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !63

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !64
  %10 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !65
  %sub9 = sub i64 %10, 1, !dbg !66
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !64
  %11 = load i8, i8* %arrayidx, align 1, !dbg !64
  %conv10 = sext i8 %11 to i32, !dbg !64
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !67
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !68

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !69
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !71
  %sub14 = sub i64 %13, 1, !dbg !72
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !69
  store i8 0, i8* %arrayidx15, align 1, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !75

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !76
  %14 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !78
  %15 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !79
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !78
  store i8 0, i8* %arrayidx16, align 1, !dbg !80
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !81

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !82, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !89, metadata !DIExpression()), !dbg !90
  %16 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !91
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !93
  %cmp20 = icmp eq i32 %call19, 1, !dbg !94
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !95

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !96
  %cmp23 = icmp slt i32 %17, 10000, !dbg !99
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !100

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !101
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !106
  %19 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !108
  %cmp26 = icmp slt i32 %18, %19, !dbg !109
  br i1 %cmp26, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !111
  %inc = add nsw i32 %20, 1, !dbg !111
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !111
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !114
  %inc28 = add nsw i32 %21, 1, !dbg !114
  store i32 %inc28, i32* %_goodB2G1_i_0, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !119
  call void @printIntLine(i32 %22), !dbg !120
  br label %if.end29, !dbg !121

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !122

if.end30:                                         ; preds = %if.end29, %if.end18
  br label %goodB2G1_label_, !dbg !123

goodB2G1_label_:                                  ; preds = %if.end30
  call void @llvm.dbg.label(metadata !124), !dbg !125
  call void (...) @goodB2G2(), !dbg !126
  call void (...) @goodG2B1(), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !131, metadata !DIExpression()), !dbg !132
  %23 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !133
  store i8* %arraydecay31, i8** %_goodG2B2_data_0, align 8, !dbg !134
  %24 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !135
  %call32 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !139, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !146, metadata !DIExpression()), !dbg !147
  %25 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !148
  %call33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !150
  %cmp34 = icmp eq i32 %call33, 1, !dbg !151
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !152

if.then36:                                        ; preds = %goodB2G1_label_
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !153
  %26 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !155
  %27 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !156
  call void %26(i32 %27), !dbg !155
  %28 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !157
  call void @printIntLine(i32 %28), !dbg !158
  br label %if.end37, !dbg !159

if.end37:                                         ; preds = %if.then36, %goodB2G1_label_
  br label %goodG2B2_label_, !dbg !160

goodG2B2_label_:                                  ; preds = %if.end37
  call void @llvm.dbg.label(metadata !161), !dbg !162
  br label %CWE606_Unchecked_Loop_Condition__char_console_02_good_label_, !dbg !163

CWE606_Unchecked_Loop_Condition__char_console_02_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !164), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #4

declare dso_local void @goodG2B1(...) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_02100CWE606_Unchecked_Loop_Condition__char_console_02256_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_979/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_02100CWE606_Unchecked_Loop_Condition__char_console_02256_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !30, file: !1, line: 11, type: !33)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 7)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 5)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 16, scope: !30)
!37 = !DILocation(line: 11, column: 45, scope: !30)
!38 = !DILocation(line: 11, column: 38, scope: !30)
!39 = !DILocation(line: 12, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 13)
!41 = !DILocation(line: 12, column: 18, scope: !40)
!42 = !DILocation(line: 12, column: 41, scope: !40)
!43 = !DILocation(line: 12, column: 13, scope: !30)
!44 = !DILocation(line: 14, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 14, column: 15)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 9)
!47 = !DILocation(line: 14, column: 40, scope: !45)
!48 = !DILocation(line: 14, column: 38, scope: !45)
!49 = !DILocation(line: 14, column: 74, scope: !45)
!50 = !DILocation(line: 14, column: 72, scope: !45)
!51 = !DILocation(line: 14, column: 61, scope: !45)
!52 = !DILocation(line: 14, column: 96, scope: !45)
!53 = !DILocation(line: 14, column: 15, scope: !45)
!54 = !DILocation(line: 14, column: 103, scope: !45)
!55 = !DILocation(line: 14, column: 15, scope: !46)
!56 = !DILocation(line: 16, column: 42, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 11)
!58 = !DILocation(line: 16, column: 35, scope: !57)
!59 = !DILocation(line: 16, column: 33, scope: !57)
!60 = !DILocation(line: 17, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 17, column: 17)
!62 = !DILocation(line: 17, column: 38, scope: !61)
!63 = !DILocation(line: 17, column: 43, scope: !61)
!64 = !DILocation(line: 17, column: 47, scope: !61)
!65 = !DILocation(line: 17, column: 64, scope: !61)
!66 = !DILocation(line: 17, column: 84, scope: !61)
!67 = !DILocation(line: 17, column: 89, scope: !61)
!68 = !DILocation(line: 17, column: 17, scope: !57)
!69 = !DILocation(line: 19, column: 15, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 18, column: 13)
!71 = !DILocation(line: 19, column: 32, scope: !70)
!72 = !DILocation(line: 19, column: 52, scope: !70)
!73 = !DILocation(line: 19, column: 57, scope: !70)
!74 = !DILocation(line: 20, column: 13, scope: !70)
!75 = !DILocation(line: 22, column: 11, scope: !57)
!76 = !DILocation(line: 25, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 24, column: 11)
!78 = !DILocation(line: 26, column: 13, scope: !77)
!79 = !DILocation(line: 26, column: 30, scope: !77)
!80 = !DILocation(line: 26, column: 51, scope: !77)
!81 = !DILocation(line: 29, column: 9, scope: !46)
!82 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !83, file: !1, line: 41, type: !4)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 40, column: 7)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 39, column: 5)
!85 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 9)
!86 = !DILocation(line: 41, column: 13, scope: !83)
!87 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !83, file: !1, line: 42, type: !4)
!88 = !DILocation(line: 42, column: 13, scope: !83)
!89 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !83, file: !1, line: 43, type: !4)
!90 = !DILocation(line: 43, column: 13, scope: !83)
!91 = !DILocation(line: 44, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !1, line: 44, column: 13)
!93 = !DILocation(line: 44, column: 13, scope: !92)
!94 = !DILocation(line: 44, column: 60, scope: !92)
!95 = !DILocation(line: 44, column: 13, scope: !83)
!96 = !DILocation(line: 46, column: 15, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 46, column: 15)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 45, column: 9)
!99 = !DILocation(line: 46, column: 29, scope: !97)
!100 = !DILocation(line: 46, column: 15, scope: !98)
!101 = !DILocation(line: 48, column: 37, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 47, column: 11)
!103 = !DILocation(line: 49, column: 32, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !1, line: 49, column: 13)
!105 = !DILocation(line: 49, column: 18, scope: !104)
!106 = !DILocation(line: 49, column: 37, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 49, column: 13)
!108 = !DILocation(line: 49, column: 53, scope: !107)
!109 = !DILocation(line: 49, column: 51, scope: !107)
!110 = !DILocation(line: 49, column: 13, scope: !104)
!111 = !DILocation(line: 51, column: 38, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 50, column: 13)
!113 = !DILocation(line: 52, column: 13, scope: !112)
!114 = !DILocation(line: 49, column: 81, scope: !107)
!115 = !DILocation(line: 49, column: 13, scope: !107)
!116 = distinct !{!116, !110, !117, !118}
!117 = !DILocation(line: 52, column: 13, scope: !104)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 54, column: 26, scope: !102)
!120 = !DILocation(line: 54, column: 13, scope: !102)
!121 = !DILocation(line: 55, column: 11, scope: !102)
!122 = !DILocation(line: 57, column: 9, scope: !98)
!123 = !DILocation(line: 34, column: 9, scope: !85)
!124 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 62)
!125 = !DILocation(line: 62, column: 5, scope: !22)
!126 = !DILocation(line: 68, column: 3, scope: !9)
!127 = !DILocation(line: 69, column: 3, scope: !9)
!128 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !129, file: !1, line: 71, type: !12)
!129 = distinct !DILexicalBlock(scope: !9, file: !1, line: 70, column: 3)
!130 = !DILocation(line: 71, column: 11, scope: !129)
!131 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !129, file: !1, line: 72, type: !23)
!132 = !DILocation(line: 72, column: 10, scope: !129)
!133 = !DILocation(line: 73, column: 24, scope: !129)
!134 = !DILocation(line: 73, column: 22, scope: !129)
!135 = !DILocation(line: 76, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 75, column: 5)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 74, column: 9)
!138 = !DILocation(line: 76, column: 7, scope: !136)
!139 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !140, file: !1, line: 82, type: !4)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 81, column: 7)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 80, column: 5)
!142 = distinct !DILexicalBlock(scope: !129, file: !1, line: 79, column: 9)
!143 = !DILocation(line: 82, column: 13, scope: !140)
!144 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !140, file: !1, line: 83, type: !4)
!145 = !DILocation(line: 83, column: 13, scope: !140)
!146 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !140, file: !1, line: 84, type: !4)
!147 = !DILocation(line: 84, column: 13, scope: !140)
!148 = !DILocation(line: 85, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !140, file: !1, line: 85, column: 13)
!150 = !DILocation(line: 85, column: 13, scope: !149)
!151 = !DILocation(line: 85, column: 60, scope: !149)
!152 = !DILocation(line: 85, column: 13, scope: !140)
!153 = !DILocation(line: 87, column: 35, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 86, column: 9)
!155 = !DILocation(line: 88, column: 11, scope: !154)
!156 = !DILocation(line: 88, column: 18, scope: !154)
!157 = !DILocation(line: 89, column: 24, scope: !154)
!158 = !DILocation(line: 89, column: 11, scope: !154)
!159 = !DILocation(line: 90, column: 9, scope: !154)
!160 = !DILocation(line: 79, column: 9, scope: !142)
!161 = !DILabel(scope: !129, name: "goodG2B2_label_", file: !1, line: 95)
!162 = !DILocation(line: 95, column: 5, scope: !129)
!163 = !DILocation(line: 100, column: 3, scope: !129)
!164 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_02_good_label_", file: !1, line: 101)
!165 = !DILocation(line: 101, column: 3, scope: !9)
!166 = !DILocation(line: 106, column: 1, scope: !9)
