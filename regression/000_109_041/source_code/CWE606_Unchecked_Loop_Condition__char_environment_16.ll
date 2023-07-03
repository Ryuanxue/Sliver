; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_16.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_16_bad() #0 !dbg !9 {
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
  br label %while.body, !dbg !23

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !30
  %1 = load i8*, i8** %data, align 8, !dbg !31
  %call = call i64 @strlen(i8* %1) #6, !dbg !32
  store i64 %call, i64* %dataLen, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !33, metadata !DIExpression()), !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !35
  store i8* %call1, i8** %environment, align 8, !dbg !34
  %2 = load i8*, i8** %environment, align 8, !dbg !36
  %cmp = icmp ne i8* %2, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i8*, i8** %environment, align 8, !dbg !44
  %6 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub = sub i64 100, %6, !dbg !46
  %sub2 = sub i64 %sub, 1, !dbg !47
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !50

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !51

while.body4:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %n, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !59, metadata !DIExpression()), !dbg !60
  %7 = load i8*, i8** %data, align 8, !dbg !61
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !63
  %cmp6 = icmp eq i32 %call5, 1, !dbg !64
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !65

if.then7:                                         ; preds = %while.body4
  store i32 0, i32* %intVariable, align 4, !dbg !66
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.then7
  %8 = load i32, i32* %i, align 4, !dbg !71
  %9 = load i32, i32* %n, align 4, !dbg !73
  %cmp8 = icmp slt i32 %8, %9, !dbg !74
  br i1 %cmp8, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !76
  %inc = add nsw i32 %10, 1, !dbg !76
  store i32 %inc, i32* %intVariable, align 4, !dbg !76
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !79
  %inc9 = add nsw i32 %11, 1, !dbg !79
  store i32 %inc9, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !84
  call void @printIntLine(i32 %12), !dbg !85
  br label %if.end10, !dbg !86

if.end10:                                         ; preds = %for.end, %while.body4
  br label %while.end11, !dbg !87

while.end11:                                      ; preds = %if.end10
  ret void, !dbg !88
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
define dso_local void @goodB2G() #0 !dbg !89 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !94
  store i8* %arraydecay, i8** %data, align 8, !dbg !95
  br label %while.body, !dbg !96

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !97, metadata !DIExpression()), !dbg !100
  %1 = load i8*, i8** %data, align 8, !dbg !101
  %call = call i64 @strlen(i8* %1) #6, !dbg !102
  store i64 %call, i64* %dataLen, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !103, metadata !DIExpression()), !dbg !104
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !105
  store i8* %call1, i8** %environment, align 8, !dbg !104
  %2 = load i8*, i8** %environment, align 8, !dbg !106
  %cmp = icmp ne i8* %2, null, !dbg !108
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !110
  %4 = load i64, i64* %dataLen, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !113
  %5 = load i8*, i8** %environment, align 8, !dbg !114
  %6 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub = sub i64 100, %6, !dbg !116
  %sub2 = sub i64 %sub, 1, !dbg !117
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !118
  br label %if.end, !dbg !119

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !120

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !121

while.body4:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %n, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !128, metadata !DIExpression()), !dbg !129
  %7 = load i8*, i8** %data, align 8, !dbg !130
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !132
  %cmp6 = icmp eq i32 %call5, 1, !dbg !133
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !134

if.then7:                                         ; preds = %while.body4
  %8 = load i32, i32* %n, align 4, !dbg !135
  %cmp8 = icmp slt i32 %8, 10000, !dbg !138
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !139

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !140
  store i32 0, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %if.then9
  %9 = load i32, i32* %i, align 4, !dbg !145
  %10 = load i32, i32* %n, align 4, !dbg !147
  %cmp10 = icmp slt i32 %9, %10, !dbg !148
  br i1 %cmp10, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !150
  %inc = add nsw i32 %11, 1, !dbg !150
  store i32 %inc, i32* %intVariable, align 4, !dbg !150
  br label %for.inc, !dbg !152

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !153
  %inc11 = add nsw i32 %12, 1, !dbg !153
  store i32 %inc11, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !154, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !157
  call void @printIntLine(i32 %13), !dbg !158
  br label %if.end12, !dbg !159

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !160

if.end13:                                         ; preds = %if.end12, %while.body4
  br label %while.end14, !dbg !161

while.end14:                                      ; preds = %if.end13
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !163 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !167
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !168
  store i8* %arraydecay, i8** %data, align 8, !dbg !169
  br label %while.body, !dbg !170

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !171
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !173
  br label %while.end, !dbg !174

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !175

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %n, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !182, metadata !DIExpression()), !dbg !183
  %2 = load i8*, i8** %data, align 8, !dbg !184
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !186
  %cmp = icmp eq i32 %call2, 1, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %while.body1
  store i32 0, i32* %intVariable, align 4, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !193

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !194
  %4 = load i32, i32* %n, align 4, !dbg !196
  %cmp3 = icmp slt i32 %3, %4, !dbg !197
  br i1 %cmp3, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !199
  %inc = add nsw i32 %5, 1, !dbg !199
  store i32 %inc, i32* %intVariable, align 4, !dbg !199
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !202
  %inc4 = add nsw i32 %6, 1, !dbg !202
  store i32 %inc4, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !206
  call void @printIntLine(i32 %7), !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %for.end, %while.body1
  br label %while.end5, !dbg !209

while.end5:                                       ; preds = %if.end
  ret void, !dbg !210
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_16_good() #0 !dbg !211 {
entry:
  call void @goodB2G(), !dbg !212
  call void @goodG2B(), !dbg !213
  ret void, !dbg !214
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_041/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_16_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocation(line: 42, column: 5, scope: !9)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 46, type: !27)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 44, column: 9)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 46, column: 20, scope: !25)
!31 = !DILocation(line: 46, column: 37, scope: !25)
!32 = !DILocation(line: 46, column: 30, scope: !25)
!33 = !DILocalVariable(name: "environment", scope: !25, file: !1, line: 47, type: !13)
!34 = !DILocation(line: 47, column: 20, scope: !25)
!35 = !DILocation(line: 47, column: 34, scope: !25)
!36 = !DILocation(line: 49, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !1, line: 49, column: 17)
!38 = !DILocation(line: 49, column: 29, scope: !37)
!39 = !DILocation(line: 49, column: 17, scope: !25)
!40 = !DILocation(line: 52, column: 25, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 50, column: 13)
!42 = !DILocation(line: 52, column: 30, scope: !41)
!43 = !DILocation(line: 52, column: 29, scope: !41)
!44 = !DILocation(line: 52, column: 39, scope: !41)
!45 = !DILocation(line: 52, column: 56, scope: !41)
!46 = !DILocation(line: 52, column: 55, scope: !41)
!47 = !DILocation(line: 52, column: 63, scope: !41)
!48 = !DILocation(line: 52, column: 17, scope: !41)
!49 = !DILocation(line: 53, column: 13, scope: !41)
!50 = !DILocation(line: 55, column: 9, scope: !26)
!51 = !DILocation(line: 57, column: 5, scope: !9)
!52 = !DILocalVariable(name: "i", scope: !53, file: !1, line: 60, type: !55)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 59, column: 9)
!54 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 5)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 60, column: 17, scope: !53)
!57 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 60, type: !55)
!58 = !DILocation(line: 60, column: 20, scope: !53)
!59 = !DILocalVariable(name: "intVariable", scope: !53, file: !1, line: 60, type: !55)
!60 = !DILocation(line: 60, column: 23, scope: !53)
!61 = !DILocation(line: 61, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !53, file: !1, line: 61, column: 17)
!63 = !DILocation(line: 61, column: 17, scope: !62)
!64 = !DILocation(line: 61, column: 40, scope: !62)
!65 = !DILocation(line: 61, column: 17, scope: !53)
!66 = !DILocation(line: 64, column: 29, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 62, column: 13)
!68 = !DILocation(line: 65, column: 24, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !1, line: 65, column: 17)
!70 = !DILocation(line: 65, column: 22, scope: !69)
!71 = !DILocation(line: 65, column: 29, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 65, column: 17)
!73 = !DILocation(line: 65, column: 33, scope: !72)
!74 = !DILocation(line: 65, column: 31, scope: !72)
!75 = !DILocation(line: 65, column: 17, scope: !69)
!76 = !DILocation(line: 68, column: 32, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 66, column: 17)
!78 = !DILocation(line: 69, column: 17, scope: !77)
!79 = !DILocation(line: 65, column: 37, scope: !72)
!80 = !DILocation(line: 65, column: 17, scope: !72)
!81 = distinct !{!81, !75, !82, !83}
!82 = !DILocation(line: 69, column: 17, scope: !69)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 70, column: 30, scope: !67)
!85 = !DILocation(line: 70, column: 17, scope: !67)
!86 = !DILocation(line: 71, column: 13, scope: !67)
!87 = !DILocation(line: 73, column: 9, scope: !54)
!88 = !DILocation(line: 75, column: 1, scope: !9)
!89 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 82, type: !10, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", scope: !89, file: !1, line: 84, type: !13)
!91 = !DILocation(line: 84, column: 12, scope: !89)
!92 = !DILocalVariable(name: "dataBuffer", scope: !89, file: !1, line: 85, type: !17)
!93 = !DILocation(line: 85, column: 10, scope: !89)
!94 = !DILocation(line: 86, column: 12, scope: !89)
!95 = !DILocation(line: 86, column: 10, scope: !89)
!96 = !DILocation(line: 87, column: 5, scope: !89)
!97 = !DILocalVariable(name: "dataLen", scope: !98, file: !1, line: 91, type: !27)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 89, column: 9)
!99 = distinct !DILexicalBlock(scope: !89, file: !1, line: 88, column: 5)
!100 = !DILocation(line: 91, column: 20, scope: !98)
!101 = !DILocation(line: 91, column: 37, scope: !98)
!102 = !DILocation(line: 91, column: 30, scope: !98)
!103 = !DILocalVariable(name: "environment", scope: !98, file: !1, line: 92, type: !13)
!104 = !DILocation(line: 92, column: 20, scope: !98)
!105 = !DILocation(line: 92, column: 34, scope: !98)
!106 = !DILocation(line: 94, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !1, line: 94, column: 17)
!108 = !DILocation(line: 94, column: 29, scope: !107)
!109 = !DILocation(line: 94, column: 17, scope: !98)
!110 = !DILocation(line: 97, column: 25, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 95, column: 13)
!112 = !DILocation(line: 97, column: 30, scope: !111)
!113 = !DILocation(line: 97, column: 29, scope: !111)
!114 = !DILocation(line: 97, column: 39, scope: !111)
!115 = !DILocation(line: 97, column: 56, scope: !111)
!116 = !DILocation(line: 97, column: 55, scope: !111)
!117 = !DILocation(line: 97, column: 63, scope: !111)
!118 = !DILocation(line: 97, column: 17, scope: !111)
!119 = !DILocation(line: 98, column: 13, scope: !111)
!120 = !DILocation(line: 100, column: 9, scope: !99)
!121 = !DILocation(line: 102, column: 5, scope: !89)
!122 = !DILocalVariable(name: "i", scope: !123, file: !1, line: 105, type: !55)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 104, column: 9)
!124 = distinct !DILexicalBlock(scope: !89, file: !1, line: 103, column: 5)
!125 = !DILocation(line: 105, column: 17, scope: !123)
!126 = !DILocalVariable(name: "n", scope: !123, file: !1, line: 105, type: !55)
!127 = !DILocation(line: 105, column: 20, scope: !123)
!128 = !DILocalVariable(name: "intVariable", scope: !123, file: !1, line: 105, type: !55)
!129 = !DILocation(line: 105, column: 23, scope: !123)
!130 = !DILocation(line: 106, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !1, line: 106, column: 17)
!132 = !DILocation(line: 106, column: 17, scope: !131)
!133 = !DILocation(line: 106, column: 40, scope: !131)
!134 = !DILocation(line: 106, column: 17, scope: !123)
!135 = !DILocation(line: 109, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 109, column: 21)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 107, column: 13)
!138 = !DILocation(line: 109, column: 23, scope: !136)
!139 = !DILocation(line: 109, column: 21, scope: !137)
!140 = !DILocation(line: 111, column: 33, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 110, column: 17)
!142 = !DILocation(line: 112, column: 28, scope: !143)
!143 = distinct !DILexicalBlock(scope: !141, file: !1, line: 112, column: 21)
!144 = !DILocation(line: 112, column: 26, scope: !143)
!145 = !DILocation(line: 112, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 112, column: 21)
!147 = !DILocation(line: 112, column: 37, scope: !146)
!148 = !DILocation(line: 112, column: 35, scope: !146)
!149 = !DILocation(line: 112, column: 21, scope: !143)
!150 = !DILocation(line: 115, column: 36, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 113, column: 21)
!152 = !DILocation(line: 116, column: 21, scope: !151)
!153 = !DILocation(line: 112, column: 41, scope: !146)
!154 = !DILocation(line: 112, column: 21, scope: !146)
!155 = distinct !{!155, !149, !156, !83}
!156 = !DILocation(line: 116, column: 21, scope: !143)
!157 = !DILocation(line: 117, column: 34, scope: !141)
!158 = !DILocation(line: 117, column: 21, scope: !141)
!159 = !DILocation(line: 118, column: 17, scope: !141)
!160 = !DILocation(line: 119, column: 13, scope: !137)
!161 = !DILocation(line: 121, column: 9, scope: !124)
!162 = !DILocation(line: 123, column: 1, scope: !89)
!163 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 126, type: !10, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DILocalVariable(name: "data", scope: !163, file: !1, line: 128, type: !13)
!165 = !DILocation(line: 128, column: 12, scope: !163)
!166 = !DILocalVariable(name: "dataBuffer", scope: !163, file: !1, line: 129, type: !17)
!167 = !DILocation(line: 129, column: 10, scope: !163)
!168 = !DILocation(line: 130, column: 12, scope: !163)
!169 = !DILocation(line: 130, column: 10, scope: !163)
!170 = !DILocation(line: 131, column: 5, scope: !163)
!171 = !DILocation(line: 134, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !1, line: 132, column: 5)
!173 = !DILocation(line: 134, column: 9, scope: !172)
!174 = !DILocation(line: 135, column: 9, scope: !172)
!175 = !DILocation(line: 137, column: 5, scope: !163)
!176 = !DILocalVariable(name: "i", scope: !177, file: !1, line: 140, type: !55)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 139, column: 9)
!178 = distinct !DILexicalBlock(scope: !163, file: !1, line: 138, column: 5)
!179 = !DILocation(line: 140, column: 17, scope: !177)
!180 = !DILocalVariable(name: "n", scope: !177, file: !1, line: 140, type: !55)
!181 = !DILocation(line: 140, column: 20, scope: !177)
!182 = !DILocalVariable(name: "intVariable", scope: !177, file: !1, line: 140, type: !55)
!183 = !DILocation(line: 140, column: 23, scope: !177)
!184 = !DILocation(line: 141, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 141, column: 17)
!186 = !DILocation(line: 141, column: 17, scope: !185)
!187 = !DILocation(line: 141, column: 40, scope: !185)
!188 = !DILocation(line: 141, column: 17, scope: !177)
!189 = !DILocation(line: 144, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 142, column: 13)
!191 = !DILocation(line: 145, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !1, line: 145, column: 17)
!193 = !DILocation(line: 145, column: 22, scope: !192)
!194 = !DILocation(line: 145, column: 29, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 145, column: 17)
!196 = !DILocation(line: 145, column: 33, scope: !195)
!197 = !DILocation(line: 145, column: 31, scope: !195)
!198 = !DILocation(line: 145, column: 17, scope: !192)
!199 = !DILocation(line: 148, column: 32, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 146, column: 17)
!201 = !DILocation(line: 149, column: 17, scope: !200)
!202 = !DILocation(line: 145, column: 37, scope: !195)
!203 = !DILocation(line: 145, column: 17, scope: !195)
!204 = distinct !{!204, !198, !205, !83}
!205 = !DILocation(line: 149, column: 17, scope: !192)
!206 = !DILocation(line: 150, column: 30, scope: !190)
!207 = !DILocation(line: 150, column: 17, scope: !190)
!208 = !DILocation(line: 151, column: 13, scope: !190)
!209 = !DILocation(line: 153, column: 9, scope: !178)
!210 = !DILocation(line: 155, column: 1, scope: !163)
!211 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_16_good", scope: !1, file: !1, line: 157, type: !10, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocation(line: 159, column: 5, scope: !211)
!213 = !DILocation(line: 160, column: 5, scope: !211)
!214 = !DILocation(line: 161, column: 1, scope: !211)
