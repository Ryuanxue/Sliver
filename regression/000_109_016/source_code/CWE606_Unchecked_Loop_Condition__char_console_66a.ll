; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_66a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_66a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  %2 = load i64, i64* %dataLen, align 8, !dbg !37
  %sub = sub i64 100, %2, !dbg !39
  %cmp = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end18, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !42
  %4 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub1 = sub i64 100, %5, !dbg !48
  %conv = trunc i64 %sub1 to i32, !dbg !49
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !51
  %cmp3 = icmp ne i8* %call2, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !53

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !54
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !56
  store i64 %call6, i64* %dataLen, align 8, !dbg !57
  %8 = load i64, i64* %dataLen, align 8, !dbg !58
  %cmp7 = icmp ugt i64 %8, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !62
  %10 = load i64, i64* %dataLen, align 8, !dbg !63
  %sub9 = sub i64 %10, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !62
  %11 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv10 = sext i8 %11 to i32, !dbg !62
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !65
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !66

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !67
  %13 = load i64, i64* %dataLen, align 8, !dbg !69
  %sub14 = sub i64 %13, 1, !dbg !70
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !67
  store i8 0, i8* %arrayidx15, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = load i8*, i8** %data, align 8, !dbg !76
  %15 = load i64, i64* %dataLen, align 8, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !76
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !79

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !80
  %arrayidx19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !81
  store i8* %16, i8** %arrayidx19, align 16, !dbg !82
  %arraydecay20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !83
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_badSink(i8** %arraydecay20), !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_badSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !86 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !92
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !93
  store i8* %arraydecay, i8** %data, align 8, !dbg !94
  %1 = load i8*, i8** %data, align 8, !dbg !95
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !96
  %2 = load i8*, i8** %data, align 8, !dbg !97
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !98
  store i8* %2, i8** %arrayidx, align 16, !dbg !99
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !100
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink(i8** %arraydecay1), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !103 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i8* %arraydecay, i8** %data, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !112, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #6, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  %2 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub = sub i64 100, %2, !dbg !119
  %cmp = icmp ugt i64 %sub, 1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end18, !dbg !121

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !122
  %4 = load i64, i64* %dataLen, align 8, !dbg !125
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !126
  %5 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub1 = sub i64 100, %5, !dbg !128
  %conv = trunc i64 %sub1 to i32, !dbg !129
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !130
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !131
  %cmp3 = icmp ne i8* %call2, null, !dbg !132
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !133

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !134
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !136
  store i64 %call6, i64* %dataLen, align 8, !dbg !137
  %8 = load i64, i64* %dataLen, align 8, !dbg !138
  %cmp7 = icmp ugt i64 %8, 0, !dbg !140
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !141

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !142
  %10 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub9 = sub i64 %10, 1, !dbg !144
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !142
  %11 = load i8, i8* %arrayidx, align 1, !dbg !142
  %conv10 = sext i8 %11 to i32, !dbg !142
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !145
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !146

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !147
  %13 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub14 = sub i64 %13, 1, !dbg !150
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !147
  store i8 0, i8* %arrayidx15, align 1, !dbg !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !153

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !154
  %14 = load i8*, i8** %data, align 8, !dbg !156
  %15 = load i64, i64* %dataLen, align 8, !dbg !157
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !156
  store i8 0, i8* %arrayidx16, align 1, !dbg !158
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !159

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !160
  %arrayidx19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !161
  store i8* %16, i8** %arrayidx19, align 16, !dbg !162
  %arraydecay20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !163
  call void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink(i8** %arraydecay20), !dbg !164
  ret void, !dbg !165
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink(i8**) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_66_good() #0 !dbg !166 {
entry:
  call void @goodG2B(), !dbg !167
  call void @goodB2G(), !dbg !168
  ret void, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_016/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66_bad", scope: !1, file: !1, line: 31, type: !11, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 33, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 33, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataArray", scope: !10, file: !1, line: 34, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 5)
!21 = !DILocation(line: 34, column: 12, scope: !10)
!22 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 35, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 35, column: 10, scope: !10)
!27 = !DILocation(line: 36, column: 12, scope: !10)
!28 = !DILocation(line: 36, column: 10, scope: !10)
!29 = !DILocalVariable(name: "dataLen", scope: !30, file: !1, line: 39, type: !31)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 37, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 39, column: 16, scope: !30)
!35 = !DILocation(line: 39, column: 33, scope: !30)
!36 = !DILocation(line: 39, column: 26, scope: !30)
!37 = !DILocation(line: 41, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 41, column: 13)
!39 = !DILocation(line: 41, column: 16, scope: !38)
!40 = !DILocation(line: 41, column: 25, scope: !38)
!41 = !DILocation(line: 41, column: 13, scope: !30)
!42 = !DILocation(line: 44, column: 23, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 44, column: 17)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 42, column: 9)
!45 = !DILocation(line: 44, column: 28, scope: !43)
!46 = !DILocation(line: 44, column: 27, scope: !43)
!47 = !DILocation(line: 44, column: 47, scope: !43)
!48 = !DILocation(line: 44, column: 46, scope: !43)
!49 = !DILocation(line: 44, column: 37, scope: !43)
!50 = !DILocation(line: 44, column: 57, scope: !43)
!51 = !DILocation(line: 44, column: 17, scope: !43)
!52 = !DILocation(line: 44, column: 64, scope: !43)
!53 = !DILocation(line: 44, column: 17, scope: !44)
!54 = !DILocation(line: 48, column: 34, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 45, column: 13)
!56 = !DILocation(line: 48, column: 27, scope: !55)
!57 = !DILocation(line: 48, column: 25, scope: !55)
!58 = !DILocation(line: 49, column: 21, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 49, column: 21)
!60 = !DILocation(line: 49, column: 29, scope: !59)
!61 = !DILocation(line: 49, column: 33, scope: !59)
!62 = !DILocation(line: 49, column: 36, scope: !59)
!63 = !DILocation(line: 49, column: 41, scope: !59)
!64 = !DILocation(line: 49, column: 48, scope: !59)
!65 = !DILocation(line: 49, column: 52, scope: !59)
!66 = !DILocation(line: 49, column: 21, scope: !55)
!67 = !DILocation(line: 51, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 50, column: 17)
!69 = !DILocation(line: 51, column: 26, scope: !68)
!70 = !DILocation(line: 51, column: 33, scope: !68)
!71 = !DILocation(line: 51, column: 37, scope: !68)
!72 = !DILocation(line: 52, column: 17, scope: !68)
!73 = !DILocation(line: 53, column: 13, scope: !55)
!74 = !DILocation(line: 56, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 55, column: 13)
!76 = !DILocation(line: 58, column: 17, scope: !75)
!77 = !DILocation(line: 58, column: 22, scope: !75)
!78 = !DILocation(line: 58, column: 31, scope: !75)
!79 = !DILocation(line: 60, column: 9, scope: !44)
!80 = !DILocation(line: 63, column: 20, scope: !10)
!81 = !DILocation(line: 63, column: 5, scope: !10)
!82 = !DILocation(line: 63, column: 18, scope: !10)
!83 = !DILocation(line: 64, column: 63, scope: !10)
!84 = !DILocation(line: 64, column: 5, scope: !10)
!85 = !DILocation(line: 65, column: 1, scope: !10)
!86 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 73, type: !11, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocalVariable(name: "data", scope: !86, file: !1, line: 75, type: !14)
!88 = !DILocation(line: 75, column: 12, scope: !86)
!89 = !DILocalVariable(name: "dataArray", scope: !86, file: !1, line: 76, type: !18)
!90 = !DILocation(line: 76, column: 12, scope: !86)
!91 = !DILocalVariable(name: "dataBuffer", scope: !86, file: !1, line: 77, type: !23)
!92 = !DILocation(line: 77, column: 10, scope: !86)
!93 = !DILocation(line: 78, column: 12, scope: !86)
!94 = !DILocation(line: 78, column: 10, scope: !86)
!95 = !DILocation(line: 80, column: 12, scope: !86)
!96 = !DILocation(line: 80, column: 5, scope: !86)
!97 = !DILocation(line: 81, column: 20, scope: !86)
!98 = !DILocation(line: 81, column: 5, scope: !86)
!99 = !DILocation(line: 81, column: 18, scope: !86)
!100 = !DILocation(line: 82, column: 67, scope: !86)
!101 = !DILocation(line: 82, column: 5, scope: !86)
!102 = !DILocation(line: 83, column: 1, scope: !86)
!103 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 87, type: !11, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DILocalVariable(name: "data", scope: !103, file: !1, line: 89, type: !14)
!105 = !DILocation(line: 89, column: 12, scope: !103)
!106 = !DILocalVariable(name: "dataArray", scope: !103, file: !1, line: 90, type: !18)
!107 = !DILocation(line: 90, column: 12, scope: !103)
!108 = !DILocalVariable(name: "dataBuffer", scope: !103, file: !1, line: 91, type: !23)
!109 = !DILocation(line: 91, column: 10, scope: !103)
!110 = !DILocation(line: 92, column: 12, scope: !103)
!111 = !DILocation(line: 92, column: 10, scope: !103)
!112 = !DILocalVariable(name: "dataLen", scope: !113, file: !1, line: 95, type: !31)
!113 = distinct !DILexicalBlock(scope: !103, file: !1, line: 93, column: 5)
!114 = !DILocation(line: 95, column: 16, scope: !113)
!115 = !DILocation(line: 95, column: 33, scope: !113)
!116 = !DILocation(line: 95, column: 26, scope: !113)
!117 = !DILocation(line: 97, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 97, column: 13)
!119 = !DILocation(line: 97, column: 16, scope: !118)
!120 = !DILocation(line: 97, column: 25, scope: !118)
!121 = !DILocation(line: 97, column: 13, scope: !113)
!122 = !DILocation(line: 100, column: 23, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 100, column: 17)
!124 = distinct !DILexicalBlock(scope: !118, file: !1, line: 98, column: 9)
!125 = !DILocation(line: 100, column: 28, scope: !123)
!126 = !DILocation(line: 100, column: 27, scope: !123)
!127 = !DILocation(line: 100, column: 47, scope: !123)
!128 = !DILocation(line: 100, column: 46, scope: !123)
!129 = !DILocation(line: 100, column: 37, scope: !123)
!130 = !DILocation(line: 100, column: 57, scope: !123)
!131 = !DILocation(line: 100, column: 17, scope: !123)
!132 = !DILocation(line: 100, column: 64, scope: !123)
!133 = !DILocation(line: 100, column: 17, scope: !124)
!134 = !DILocation(line: 104, column: 34, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !1, line: 101, column: 13)
!136 = !DILocation(line: 104, column: 27, scope: !135)
!137 = !DILocation(line: 104, column: 25, scope: !135)
!138 = !DILocation(line: 105, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 105, column: 21)
!140 = !DILocation(line: 105, column: 29, scope: !139)
!141 = !DILocation(line: 105, column: 33, scope: !139)
!142 = !DILocation(line: 105, column: 36, scope: !139)
!143 = !DILocation(line: 105, column: 41, scope: !139)
!144 = !DILocation(line: 105, column: 48, scope: !139)
!145 = !DILocation(line: 105, column: 52, scope: !139)
!146 = !DILocation(line: 105, column: 21, scope: !135)
!147 = !DILocation(line: 107, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !139, file: !1, line: 106, column: 17)
!149 = !DILocation(line: 107, column: 26, scope: !148)
!150 = !DILocation(line: 107, column: 33, scope: !148)
!151 = !DILocation(line: 107, column: 37, scope: !148)
!152 = !DILocation(line: 108, column: 17, scope: !148)
!153 = !DILocation(line: 109, column: 13, scope: !135)
!154 = !DILocation(line: 112, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !123, file: !1, line: 111, column: 13)
!156 = !DILocation(line: 114, column: 17, scope: !155)
!157 = !DILocation(line: 114, column: 22, scope: !155)
!158 = !DILocation(line: 114, column: 31, scope: !155)
!159 = !DILocation(line: 116, column: 9, scope: !124)
!160 = !DILocation(line: 118, column: 20, scope: !103)
!161 = !DILocation(line: 118, column: 5, scope: !103)
!162 = !DILocation(line: 118, column: 18, scope: !103)
!163 = !DILocation(line: 119, column: 67, scope: !103)
!164 = !DILocation(line: 119, column: 5, scope: !103)
!165 = !DILocation(line: 120, column: 1, scope: !103)
!166 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_66_good", scope: !1, file: !1, line: 122, type: !11, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DILocation(line: 124, column: 5, scope: !166)
!168 = !DILocation(line: 125, column: 5, scope: !166)
!169 = !DILocation(line: 126, column: 1, scope: !166)
