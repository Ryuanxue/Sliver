; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_61a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_61a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_61_bad() #0 !dbg !7 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !10, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !14, metadata !DIExpression()), !dbg !18
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !18
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !18
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !19
  store i8* %arraydecay, i8** %data, align 8, !dbg !20
  %1 = load i8*, i8** %data, align 8, !dbg !21
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource(i8* %1), !dbg !22
  store i8* %call, i8** %data, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !30, metadata !DIExpression()), !dbg !31
  %2 = load i8*, i8** %data, align 8, !dbg !32
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #5, !dbg !34
  %cmp = icmp eq i32 %call1, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !42
  %4 = load i32, i32* %n, align 4, !dbg !44
  %cmp2 = icmp slt i32 %3, %4, !dbg !45
  br i1 %cmp2, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !47
  %inc = add nsw i32 %5, 1, !dbg !47
  store i32 %inc, i32* %intVariable, align 4, !dbg !47
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !50
  %inc3 = add nsw i32 %6, 1, !dbg !50
  store i32 %inc3, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !55
  call void @printIntLine(i32 %7), !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_badSource(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %n, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i8*, i8** %data, align 8, !dbg !76
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #5, !dbg !78
  %cmp = icmp eq i32 %call1, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !86
  %4 = load i32, i32* %n, align 4, !dbg !88
  %cmp2 = icmp slt i32 %3, %4, !dbg !89
  br i1 %cmp2, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !91
  %inc = add nsw i32 %5, 1, !dbg !91
  store i32 %inc, i32* %intVariable, align 4, !dbg !91
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !94
  %inc3 = add nsw i32 %6, 1, !dbg !94
  store i32 %inc3, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !98
  call void @printIntLine(i32 %7), !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !101
}

declare dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodG2BSource(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !102 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !107
  store i8* %arraydecay, i8** %data, align 8, !dbg !108
  %1 = load i8*, i8** %data, align 8, !dbg !109
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource(i8* %1), !dbg !110
  store i8* %call, i8** %data, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !112, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %n, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !117, metadata !DIExpression()), !dbg !118
  %2 = load i8*, i8** %data, align 8, !dbg !119
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #5, !dbg !121
  %cmp = icmp eq i32 %call1, 1, !dbg !122
  br i1 %cmp, label %if.then, label %if.end6, !dbg !123

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !124
  %cmp2 = icmp slt i32 %3, 10000, !dbg !127
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !128

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !129
  store i32 0, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !133

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !134
  %5 = load i32, i32* %n, align 4, !dbg !136
  %cmp4 = icmp slt i32 %4, %5, !dbg !137
  br i1 %cmp4, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !139
  %inc = add nsw i32 %6, 1, !dbg !139
  store i32 %inc, i32* %intVariable, align 4, !dbg !139
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !142
  %inc5 = add nsw i32 %7, 1, !dbg !142
  store i32 %inc5, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !143, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !146
  call void @printIntLine(i32 %8), !dbg !147
  br label %if.end, !dbg !148

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !149

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !150
}

declare dso_local i8* @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_61_good() #0 !dbg !151 {
entry:
  call void @goodG2B(), !dbg !152
  call void @goodB2G(), !dbg !153
  ret void, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61_bad", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 54, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 54, column: 12, scope: !7)
!14 = !DILocalVariable(name: "dataBuffer", scope: !7, file: !1, line: 55, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocation(line: 55, column: 10, scope: !7)
!19 = !DILocation(line: 56, column: 12, scope: !7)
!20 = !DILocation(line: 56, column: 10, scope: !7)
!21 = !DILocation(line: 57, column: 78, scope: !7)
!22 = !DILocation(line: 57, column: 12, scope: !7)
!23 = !DILocation(line: 57, column: 10, scope: !7)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 59, type: !26)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 5)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocation(line: 59, column: 13, scope: !25)
!28 = !DILocalVariable(name: "n", scope: !25, file: !1, line: 59, type: !26)
!29 = !DILocation(line: 59, column: 16, scope: !25)
!30 = !DILocalVariable(name: "intVariable", scope: !25, file: !1, line: 59, type: !26)
!31 = !DILocation(line: 59, column: 19, scope: !25)
!32 = !DILocation(line: 60, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 60, column: 13)
!34 = !DILocation(line: 60, column: 13, scope: !33)
!35 = !DILocation(line: 60, column: 36, scope: !33)
!36 = !DILocation(line: 60, column: 13, scope: !25)
!37 = !DILocation(line: 63, column: 25, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 61, column: 9)
!39 = !DILocation(line: 64, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !1, line: 64, column: 13)
!41 = !DILocation(line: 64, column: 18, scope: !40)
!42 = !DILocation(line: 64, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 64, column: 13)
!44 = !DILocation(line: 64, column: 29, scope: !43)
!45 = !DILocation(line: 64, column: 27, scope: !43)
!46 = !DILocation(line: 64, column: 13, scope: !40)
!47 = !DILocation(line: 67, column: 28, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 65, column: 13)
!49 = !DILocation(line: 68, column: 13, scope: !48)
!50 = !DILocation(line: 64, column: 33, scope: !43)
!51 = !DILocation(line: 64, column: 13, scope: !43)
!52 = distinct !{!52, !46, !53, !54}
!53 = !DILocation(line: 68, column: 13, scope: !40)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 69, column: 26, scope: !38)
!56 = !DILocation(line: 69, column: 13, scope: !38)
!57 = !DILocation(line: 70, column: 9, scope: !38)
!58 = !DILocation(line: 72, column: 1, scope: !7)
!59 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 80, type: !8, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!60 = !DILocalVariable(name: "data", scope: !59, file: !1, line: 82, type: !11)
!61 = !DILocation(line: 82, column: 12, scope: !59)
!62 = !DILocalVariable(name: "dataBuffer", scope: !59, file: !1, line: 83, type: !15)
!63 = !DILocation(line: 83, column: 10, scope: !59)
!64 = !DILocation(line: 84, column: 12, scope: !59)
!65 = !DILocation(line: 84, column: 10, scope: !59)
!66 = !DILocation(line: 85, column: 82, scope: !59)
!67 = !DILocation(line: 85, column: 12, scope: !59)
!68 = !DILocation(line: 85, column: 10, scope: !59)
!69 = !DILocalVariable(name: "i", scope: !70, file: !1, line: 87, type: !26)
!70 = distinct !DILexicalBlock(scope: !59, file: !1, line: 86, column: 5)
!71 = !DILocation(line: 87, column: 13, scope: !70)
!72 = !DILocalVariable(name: "n", scope: !70, file: !1, line: 87, type: !26)
!73 = !DILocation(line: 87, column: 16, scope: !70)
!74 = !DILocalVariable(name: "intVariable", scope: !70, file: !1, line: 87, type: !26)
!75 = !DILocation(line: 87, column: 19, scope: !70)
!76 = !DILocation(line: 88, column: 20, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !1, line: 88, column: 13)
!78 = !DILocation(line: 88, column: 13, scope: !77)
!79 = !DILocation(line: 88, column: 36, scope: !77)
!80 = !DILocation(line: 88, column: 13, scope: !70)
!81 = !DILocation(line: 91, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 89, column: 9)
!83 = !DILocation(line: 92, column: 20, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !1, line: 92, column: 13)
!85 = !DILocation(line: 92, column: 18, scope: !84)
!86 = !DILocation(line: 92, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 92, column: 13)
!88 = !DILocation(line: 92, column: 29, scope: !87)
!89 = !DILocation(line: 92, column: 27, scope: !87)
!90 = !DILocation(line: 92, column: 13, scope: !84)
!91 = !DILocation(line: 95, column: 28, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 93, column: 13)
!93 = !DILocation(line: 96, column: 13, scope: !92)
!94 = !DILocation(line: 92, column: 33, scope: !87)
!95 = !DILocation(line: 92, column: 13, scope: !87)
!96 = distinct !{!96, !90, !97, !54}
!97 = !DILocation(line: 96, column: 13, scope: !84)
!98 = !DILocation(line: 97, column: 26, scope: !82)
!99 = !DILocation(line: 97, column: 13, scope: !82)
!100 = !DILocation(line: 98, column: 9, scope: !82)
!101 = !DILocation(line: 100, column: 1, scope: !59)
!102 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 104, type: !8, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocalVariable(name: "data", scope: !102, file: !1, line: 106, type: !11)
!104 = !DILocation(line: 106, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !1, line: 107, type: !15)
!106 = !DILocation(line: 107, column: 10, scope: !102)
!107 = !DILocation(line: 108, column: 12, scope: !102)
!108 = !DILocation(line: 108, column: 10, scope: !102)
!109 = !DILocation(line: 109, column: 82, scope: !102)
!110 = !DILocation(line: 109, column: 12, scope: !102)
!111 = !DILocation(line: 109, column: 10, scope: !102)
!112 = !DILocalVariable(name: "i", scope: !113, file: !1, line: 111, type: !26)
!113 = distinct !DILexicalBlock(scope: !102, file: !1, line: 110, column: 5)
!114 = !DILocation(line: 111, column: 13, scope: !113)
!115 = !DILocalVariable(name: "n", scope: !113, file: !1, line: 111, type: !26)
!116 = !DILocation(line: 111, column: 16, scope: !113)
!117 = !DILocalVariable(name: "intVariable", scope: !113, file: !1, line: 111, type: !26)
!118 = !DILocation(line: 111, column: 19, scope: !113)
!119 = !DILocation(line: 112, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 112, column: 13)
!121 = !DILocation(line: 112, column: 13, scope: !120)
!122 = !DILocation(line: 112, column: 36, scope: !120)
!123 = !DILocation(line: 112, column: 13, scope: !113)
!124 = !DILocation(line: 115, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 115, column: 17)
!126 = distinct !DILexicalBlock(scope: !120, file: !1, line: 113, column: 9)
!127 = !DILocation(line: 115, column: 19, scope: !125)
!128 = !DILocation(line: 115, column: 17, scope: !126)
!129 = !DILocation(line: 117, column: 29, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 116, column: 13)
!131 = !DILocation(line: 118, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !130, file: !1, line: 118, column: 17)
!133 = !DILocation(line: 118, column: 22, scope: !132)
!134 = !DILocation(line: 118, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 118, column: 17)
!136 = !DILocation(line: 118, column: 33, scope: !135)
!137 = !DILocation(line: 118, column: 31, scope: !135)
!138 = !DILocation(line: 118, column: 17, scope: !132)
!139 = !DILocation(line: 121, column: 32, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 119, column: 17)
!141 = !DILocation(line: 122, column: 17, scope: !140)
!142 = !DILocation(line: 118, column: 37, scope: !135)
!143 = !DILocation(line: 118, column: 17, scope: !135)
!144 = distinct !{!144, !138, !145, !54}
!145 = !DILocation(line: 122, column: 17, scope: !132)
!146 = !DILocation(line: 123, column: 30, scope: !130)
!147 = !DILocation(line: 123, column: 17, scope: !130)
!148 = !DILocation(line: 124, column: 13, scope: !130)
!149 = !DILocation(line: 125, column: 9, scope: !126)
!150 = !DILocation(line: 127, column: 1, scope: !102)
!151 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61_good", scope: !1, file: !1, line: 129, type: !8, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocation(line: 131, column: 5, scope: !151)
!153 = !DILocation(line: 132, column: 5, scope: !151)
!154 = !DILocation(line: 133, column: 1, scope: !151)
