; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_01.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_01_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !28
  %1 = load i8*, i8** %data, align 8, !dbg !29
  %call = call i64 @strlen(i8* %1) #6, !dbg !30
  store i64 %call, i64* %dataLen, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !31, metadata !DIExpression()), !dbg !32
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !33
  store i8* %call1, i8** %environment, align 8, !dbg !32
  %2 = load i8*, i8** %environment, align 8, !dbg !34
  %cmp = icmp ne i8* %2, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !38
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i8*, i8** %environment, align 8, !dbg !42
  %6 = load i64, i64* %dataLen, align 8, !dbg !43
  %sub = sub i64 100, %6, !dbg !44
  %sub2 = sub i64 %sub, 1, !dbg !45
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %n, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !54, metadata !DIExpression()), !dbg !55
  %7 = load i8*, i8** %data, align 8, !dbg !56
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !58
  %cmp5 = icmp eq i32 %call4, 1, !dbg !59
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !60

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !66
  %9 = load i32, i32* %n, align 4, !dbg !68
  %cmp7 = icmp slt i32 %8, %9, !dbg !69
  br i1 %cmp7, label %for.body, label %for.end, !dbg !70

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !71
  %inc = add nsw i32 %10, 1, !dbg !71
  store i32 %inc, i32* %intVariable, align 4, !dbg !71
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !74
  %inc8 = add nsw i32 %11, 1, !dbg !74
  store i32 %inc8, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !79
  call void @printIntLine(i32 %12), !dbg !80
  br label %if.end9, !dbg !81

if.end9:                                          ; preds = %for.end, %if.end
  ret void, !dbg !82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !83 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !87
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !88
  store i8* %arraydecay, i8** %data, align 8, !dbg !89
  %1 = load i8*, i8** %data, align 8, !dbg !90
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %n, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !97, metadata !DIExpression()), !dbg !98
  %2 = load i8*, i8** %data, align 8, !dbg !99
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !101
  %cmp = icmp eq i32 %call1, 1, !dbg !102
  br i1 %cmp, label %if.then, label %if.end, !dbg !103

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !104
  store i32 0, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !109
  %4 = load i32, i32* %n, align 4, !dbg !111
  %cmp2 = icmp slt i32 %3, %4, !dbg !112
  br i1 %cmp2, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !114
  %inc = add nsw i32 %5, 1, !dbg !114
  store i32 %inc, i32* %intVariable, align 4, !dbg !114
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !117
  %inc3 = add nsw i32 %6, 1, !dbg !117
  store i32 %inc3, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !121
  call void @printIntLine(i32 %7), !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !124
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !125 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !129
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !130
  store i8* %arraydecay, i8** %data, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !132, metadata !DIExpression()), !dbg !134
  %1 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i64 @strlen(i8* %1) #6, !dbg !136
  store i64 %call, i64* %dataLen, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !137, metadata !DIExpression()), !dbg !138
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !139
  store i8* %call1, i8** %environment, align 8, !dbg !138
  %2 = load i8*, i8** %environment, align 8, !dbg !140
  %cmp = icmp ne i8* %2, null, !dbg !142
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !144
  %4 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !147
  %5 = load i8*, i8** %environment, align 8, !dbg !148
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub = sub i64 100, %6, !dbg !150
  %sub2 = sub i64 %sub, 1, !dbg !151
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !152
  br label %if.end, !dbg !153

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !154, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %n, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !159, metadata !DIExpression()), !dbg !160
  %7 = load i8*, i8** %data, align 8, !dbg !161
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !163
  %cmp5 = icmp eq i32 %call4, 1, !dbg !164
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !165

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !166
  %cmp7 = icmp slt i32 %8, 10000, !dbg !169
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !170

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !171
  store i32 0, i32* %i, align 4, !dbg !173
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !176
  %10 = load i32, i32* %n, align 4, !dbg !178
  %cmp9 = icmp slt i32 %9, %10, !dbg !179
  br i1 %cmp9, label %for.body, label %for.end, !dbg !180

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !181
  %inc = add nsw i32 %11, 1, !dbg !181
  store i32 %inc, i32* %intVariable, align 4, !dbg !181
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !184
  %inc10 = add nsw i32 %12, 1, !dbg !184
  store i32 %inc10, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !185, !llvm.loop !186

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !188
  call void @printIntLine(i32 %13), !dbg !189
  br label %if.end11, !dbg !190

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !191

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_01_good() #0 !dbg !193 {
entry:
  call void @goodG2B(), !dbg !194
  call void @goodB2G(), !dbg !195
  ret void, !dbg !196
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_026/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_01_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 40, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 40, column: 10, scope: !9)
!21 = !DILocation(line: 41, column: 12, scope: !9)
!22 = !DILocation(line: 41, column: 10, scope: !9)
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 44, type: !25)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 44, column: 16, scope: !24)
!29 = !DILocation(line: 44, column: 33, scope: !24)
!30 = !DILocation(line: 44, column: 26, scope: !24)
!31 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 45, type: !13)
!32 = !DILocation(line: 45, column: 16, scope: !24)
!33 = !DILocation(line: 45, column: 30, scope: !24)
!34 = !DILocation(line: 47, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 47, column: 13)
!36 = !DILocation(line: 47, column: 25, scope: !35)
!37 = !DILocation(line: 47, column: 13, scope: !24)
!38 = !DILocation(line: 50, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 48, column: 9)
!40 = !DILocation(line: 50, column: 26, scope: !39)
!41 = !DILocation(line: 50, column: 25, scope: !39)
!42 = !DILocation(line: 50, column: 35, scope: !39)
!43 = !DILocation(line: 50, column: 52, scope: !39)
!44 = !DILocation(line: 50, column: 51, scope: !39)
!45 = !DILocation(line: 50, column: 59, scope: !39)
!46 = !DILocation(line: 50, column: 13, scope: !39)
!47 = !DILocation(line: 51, column: 9, scope: !39)
!48 = !DILocalVariable(name: "i", scope: !49, file: !1, line: 54, type: !50)
!49 = distinct !DILexicalBlock(scope: !9, file: !1, line: 53, column: 5)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocation(line: 54, column: 13, scope: !49)
!52 = !DILocalVariable(name: "n", scope: !49, file: !1, line: 54, type: !50)
!53 = !DILocation(line: 54, column: 16, scope: !49)
!54 = !DILocalVariable(name: "intVariable", scope: !49, file: !1, line: 54, type: !50)
!55 = !DILocation(line: 54, column: 19, scope: !49)
!56 = !DILocation(line: 55, column: 20, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 55, column: 13)
!58 = !DILocation(line: 55, column: 13, scope: !57)
!59 = !DILocation(line: 55, column: 36, scope: !57)
!60 = !DILocation(line: 55, column: 13, scope: !49)
!61 = !DILocation(line: 58, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 56, column: 9)
!63 = !DILocation(line: 59, column: 20, scope: !64)
!64 = distinct !DILexicalBlock(scope: !62, file: !1, line: 59, column: 13)
!65 = !DILocation(line: 59, column: 18, scope: !64)
!66 = !DILocation(line: 59, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 59, column: 13)
!68 = !DILocation(line: 59, column: 29, scope: !67)
!69 = !DILocation(line: 59, column: 27, scope: !67)
!70 = !DILocation(line: 59, column: 13, scope: !64)
!71 = !DILocation(line: 62, column: 28, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 13)
!73 = !DILocation(line: 63, column: 13, scope: !72)
!74 = !DILocation(line: 59, column: 33, scope: !67)
!75 = !DILocation(line: 59, column: 13, scope: !67)
!76 = distinct !{!76, !70, !77, !78}
!77 = !DILocation(line: 63, column: 13, scope: !64)
!78 = !{!"llvm.loop.mustprogress"}
!79 = !DILocation(line: 64, column: 26, scope: !62)
!80 = !DILocation(line: 64, column: 13, scope: !62)
!81 = !DILocation(line: 65, column: 9, scope: !62)
!82 = !DILocation(line: 67, column: 1, scope: !9)
!83 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 74, type: !10, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 76, type: !13)
!85 = !DILocation(line: 76, column: 12, scope: !83)
!86 = !DILocalVariable(name: "dataBuffer", scope: !83, file: !1, line: 77, type: !17)
!87 = !DILocation(line: 77, column: 10, scope: !83)
!88 = !DILocation(line: 78, column: 12, scope: !83)
!89 = !DILocation(line: 78, column: 10, scope: !83)
!90 = !DILocation(line: 80, column: 12, scope: !83)
!91 = !DILocation(line: 80, column: 5, scope: !83)
!92 = !DILocalVariable(name: "i", scope: !93, file: !1, line: 82, type: !50)
!93 = distinct !DILexicalBlock(scope: !83, file: !1, line: 81, column: 5)
!94 = !DILocation(line: 82, column: 13, scope: !93)
!95 = !DILocalVariable(name: "n", scope: !93, file: !1, line: 82, type: !50)
!96 = !DILocation(line: 82, column: 16, scope: !93)
!97 = !DILocalVariable(name: "intVariable", scope: !93, file: !1, line: 82, type: !50)
!98 = !DILocation(line: 82, column: 19, scope: !93)
!99 = !DILocation(line: 83, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 83, column: 13)
!101 = !DILocation(line: 83, column: 13, scope: !100)
!102 = !DILocation(line: 83, column: 36, scope: !100)
!103 = !DILocation(line: 83, column: 13, scope: !93)
!104 = !DILocation(line: 86, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 84, column: 9)
!106 = !DILocation(line: 87, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !105, file: !1, line: 87, column: 13)
!108 = !DILocation(line: 87, column: 18, scope: !107)
!109 = !DILocation(line: 87, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 87, column: 13)
!111 = !DILocation(line: 87, column: 29, scope: !110)
!112 = !DILocation(line: 87, column: 27, scope: !110)
!113 = !DILocation(line: 87, column: 13, scope: !107)
!114 = !DILocation(line: 90, column: 28, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 88, column: 13)
!116 = !DILocation(line: 91, column: 13, scope: !115)
!117 = !DILocation(line: 87, column: 33, scope: !110)
!118 = !DILocation(line: 87, column: 13, scope: !110)
!119 = distinct !{!119, !113, !120, !78}
!120 = !DILocation(line: 91, column: 13, scope: !107)
!121 = !DILocation(line: 92, column: 26, scope: !105)
!122 = !DILocation(line: 92, column: 13, scope: !105)
!123 = !DILocation(line: 93, column: 9, scope: !105)
!124 = !DILocation(line: 95, column: 1, scope: !83)
!125 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 98, type: !10, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(name: "data", scope: !125, file: !1, line: 100, type: !13)
!127 = !DILocation(line: 100, column: 12, scope: !125)
!128 = !DILocalVariable(name: "dataBuffer", scope: !125, file: !1, line: 101, type: !17)
!129 = !DILocation(line: 101, column: 10, scope: !125)
!130 = !DILocation(line: 102, column: 12, scope: !125)
!131 = !DILocation(line: 102, column: 10, scope: !125)
!132 = !DILocalVariable(name: "dataLen", scope: !133, file: !1, line: 105, type: !25)
!133 = distinct !DILexicalBlock(scope: !125, file: !1, line: 103, column: 5)
!134 = !DILocation(line: 105, column: 16, scope: !133)
!135 = !DILocation(line: 105, column: 33, scope: !133)
!136 = !DILocation(line: 105, column: 26, scope: !133)
!137 = !DILocalVariable(name: "environment", scope: !133, file: !1, line: 106, type: !13)
!138 = !DILocation(line: 106, column: 16, scope: !133)
!139 = !DILocation(line: 106, column: 30, scope: !133)
!140 = !DILocation(line: 108, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 108, column: 13)
!142 = !DILocation(line: 108, column: 25, scope: !141)
!143 = !DILocation(line: 108, column: 13, scope: !133)
!144 = !DILocation(line: 111, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 109, column: 9)
!146 = !DILocation(line: 111, column: 26, scope: !145)
!147 = !DILocation(line: 111, column: 25, scope: !145)
!148 = !DILocation(line: 111, column: 35, scope: !145)
!149 = !DILocation(line: 111, column: 52, scope: !145)
!150 = !DILocation(line: 111, column: 51, scope: !145)
!151 = !DILocation(line: 111, column: 59, scope: !145)
!152 = !DILocation(line: 111, column: 13, scope: !145)
!153 = !DILocation(line: 112, column: 9, scope: !145)
!154 = !DILocalVariable(name: "i", scope: !155, file: !1, line: 115, type: !50)
!155 = distinct !DILexicalBlock(scope: !125, file: !1, line: 114, column: 5)
!156 = !DILocation(line: 115, column: 13, scope: !155)
!157 = !DILocalVariable(name: "n", scope: !155, file: !1, line: 115, type: !50)
!158 = !DILocation(line: 115, column: 16, scope: !155)
!159 = !DILocalVariable(name: "intVariable", scope: !155, file: !1, line: 115, type: !50)
!160 = !DILocation(line: 115, column: 19, scope: !155)
!161 = !DILocation(line: 116, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 116, column: 13)
!163 = !DILocation(line: 116, column: 13, scope: !162)
!164 = !DILocation(line: 116, column: 36, scope: !162)
!165 = !DILocation(line: 116, column: 13, scope: !155)
!166 = !DILocation(line: 119, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 119, column: 17)
!168 = distinct !DILexicalBlock(scope: !162, file: !1, line: 117, column: 9)
!169 = !DILocation(line: 119, column: 19, scope: !167)
!170 = !DILocation(line: 119, column: 17, scope: !168)
!171 = !DILocation(line: 121, column: 29, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !1, line: 120, column: 13)
!173 = !DILocation(line: 122, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !1, line: 122, column: 17)
!175 = !DILocation(line: 122, column: 22, scope: !174)
!176 = !DILocation(line: 122, column: 29, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 122, column: 17)
!178 = !DILocation(line: 122, column: 33, scope: !177)
!179 = !DILocation(line: 122, column: 31, scope: !177)
!180 = !DILocation(line: 122, column: 17, scope: !174)
!181 = !DILocation(line: 125, column: 32, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 123, column: 17)
!183 = !DILocation(line: 126, column: 17, scope: !182)
!184 = !DILocation(line: 122, column: 37, scope: !177)
!185 = !DILocation(line: 122, column: 17, scope: !177)
!186 = distinct !{!186, !180, !187, !78}
!187 = !DILocation(line: 126, column: 17, scope: !174)
!188 = !DILocation(line: 127, column: 30, scope: !172)
!189 = !DILocation(line: 127, column: 17, scope: !172)
!190 = !DILocation(line: 128, column: 13, scope: !172)
!191 = !DILocation(line: 129, column: 9, scope: !168)
!192 = !DILocation(line: 131, column: 1, scope: !125)
!193 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_01_good", scope: !1, file: !1, line: 133, type: !10, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!194 = !DILocation(line: 135, column: 5, scope: !193)
!195 = !DILocation(line: 136, column: 5, scope: !193)
!196 = !DILocation(line: 137, column: 1, scope: !193)
