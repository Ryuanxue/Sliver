; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_31.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_31_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !48, metadata !DIExpression()), !dbg !50
  %7 = load i8*, i8** %data, align 8, !dbg !51
  store i8* %7, i8** %dataCopy, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !52, metadata !DIExpression()), !dbg !53
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !54
  store i8* %8, i8** %data4, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %n, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !61, metadata !DIExpression()), !dbg !62
  %9 = load i8*, i8** %data4, align 8, !dbg !63
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !65
  %cmp6 = icmp eq i32 %call5, 1, !dbg !66
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !67

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !68
  store i32 0, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i32, i32* %i, align 4, !dbg !73
  %11 = load i32, i32* %n, align 4, !dbg !75
  %cmp8 = icmp slt i32 %10, %11, !dbg !76
  br i1 %cmp8, label %for.body, label %for.end, !dbg !77

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !78
  %inc = add nsw i32 %12, 1, !dbg !78
  store i32 %inc, i32* %intVariable, align 4, !dbg !78
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !81
  %inc9 = add nsw i32 %13, 1, !dbg !81
  store i32 %inc9, i32* %i, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !86
  call void @printIntLine(i32 %14), !dbg !87
  br label %if.end10, !dbg !88

if.end10:                                         ; preds = %for.end, %if.end
  ret void, !dbg !89
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
define dso_local void @goodG2B() #0 !dbg !90 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !94
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !94
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !95
  store i8* %arraydecay, i8** %data, align 8, !dbg !96
  %1 = load i8*, i8** %data, align 8, !dbg !97
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !98
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !99, metadata !DIExpression()), !dbg !101
  %2 = load i8*, i8** %data, align 8, !dbg !102
  store i8* %2, i8** %dataCopy, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !105
  store i8* %3, i8** %data1, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %n, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !111, metadata !DIExpression()), !dbg !112
  %4 = load i8*, i8** %data1, align 8, !dbg !113
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !115
  %cmp = icmp eq i32 %call2, 1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !118
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !123
  %6 = load i32, i32* %n, align 4, !dbg !125
  %cmp3 = icmp slt i32 %5, %6, !dbg !126
  br i1 %cmp3, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !128
  %inc = add nsw i32 %7, 1, !dbg !128
  store i32 %inc, i32* %intVariable, align 4, !dbg !128
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !131
  %inc4 = add nsw i32 %8, 1, !dbg !131
  store i32 %inc4, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !135
  call void @printIntLine(i32 %9), !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !143
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !144
  store i8* %arraydecay, i8** %data, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !146, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %data, align 8, !dbg !149
  %call = call i64 @strlen(i8* %1) #6, !dbg !150
  store i64 %call, i64* %dataLen, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !151, metadata !DIExpression()), !dbg !152
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !153
  store i8* %call1, i8** %environment, align 8, !dbg !152
  %2 = load i8*, i8** %environment, align 8, !dbg !154
  %cmp = icmp ne i8* %2, null, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !158
  %4 = load i64, i64* %dataLen, align 8, !dbg !160
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !161
  %5 = load i8*, i8** %environment, align 8, !dbg !162
  %6 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub = sub i64 100, %6, !dbg !164
  %sub2 = sub i64 %sub, 1, !dbg !165
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !168, metadata !DIExpression()), !dbg !170
  %7 = load i8*, i8** %data, align 8, !dbg !171
  store i8* %7, i8** %dataCopy, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !172, metadata !DIExpression()), !dbg !173
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !174
  store i8* %8, i8** %data4, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i32* %i, metadata !175, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %n, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !180, metadata !DIExpression()), !dbg !181
  %9 = load i8*, i8** %data4, align 8, !dbg !182
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !184
  %cmp6 = icmp eq i32 %call5, 1, !dbg !185
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !186

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !187
  %cmp8 = icmp slt i32 %10, 10000, !dbg !190
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !191

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !192
  store i32 0, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.then9
  %11 = load i32, i32* %i, align 4, !dbg !197
  %12 = load i32, i32* %n, align 4, !dbg !199
  %cmp10 = icmp slt i32 %11, %12, !dbg !200
  br i1 %cmp10, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !202
  %inc = add nsw i32 %13, 1, !dbg !202
  store i32 %inc, i32* %intVariable, align 4, !dbg !202
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !205
  %inc11 = add nsw i32 %14, 1, !dbg !205
  store i32 %inc11, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !209
  call void @printIntLine(i32 %15), !dbg !210
  br label %if.end12, !dbg !211

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !212

if.end13:                                         ; preds = %if.end12, %if.end
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_31_good() #0 !dbg !214 {
entry:
  call void @goodG2B(), !dbg !215
  call void @goodB2G(), !dbg !216
  ret void, !dbg !217
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_046/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_31_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!48 = !DILocalVariable(name: "dataCopy", scope: !49, file: !1, line: 54, type: !13)
!49 = distinct !DILexicalBlock(scope: !9, file: !1, line: 53, column: 5)
!50 = !DILocation(line: 54, column: 16, scope: !49)
!51 = !DILocation(line: 54, column: 27, scope: !49)
!52 = !DILocalVariable(name: "data", scope: !49, file: !1, line: 55, type: !13)
!53 = !DILocation(line: 55, column: 16, scope: !49)
!54 = !DILocation(line: 55, column: 23, scope: !49)
!55 = !DILocalVariable(name: "i", scope: !56, file: !1, line: 57, type: !57)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 56, column: 9)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocation(line: 57, column: 17, scope: !56)
!59 = !DILocalVariable(name: "n", scope: !56, file: !1, line: 57, type: !57)
!60 = !DILocation(line: 57, column: 20, scope: !56)
!61 = !DILocalVariable(name: "intVariable", scope: !56, file: !1, line: 57, type: !57)
!62 = !DILocation(line: 57, column: 23, scope: !56)
!63 = !DILocation(line: 58, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 58, column: 17)
!65 = !DILocation(line: 58, column: 17, scope: !64)
!66 = !DILocation(line: 58, column: 40, scope: !64)
!67 = !DILocation(line: 58, column: 17, scope: !56)
!68 = !DILocation(line: 61, column: 29, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 59, column: 13)
!70 = !DILocation(line: 62, column: 24, scope: !71)
!71 = distinct !DILexicalBlock(scope: !69, file: !1, line: 62, column: 17)
!72 = !DILocation(line: 62, column: 22, scope: !71)
!73 = !DILocation(line: 62, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 62, column: 17)
!75 = !DILocation(line: 62, column: 33, scope: !74)
!76 = !DILocation(line: 62, column: 31, scope: !74)
!77 = !DILocation(line: 62, column: 17, scope: !71)
!78 = !DILocation(line: 65, column: 32, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 63, column: 17)
!80 = !DILocation(line: 66, column: 17, scope: !79)
!81 = !DILocation(line: 62, column: 37, scope: !74)
!82 = !DILocation(line: 62, column: 17, scope: !74)
!83 = distinct !{!83, !77, !84, !85}
!84 = !DILocation(line: 66, column: 17, scope: !71)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 67, column: 30, scope: !69)
!87 = !DILocation(line: 67, column: 17, scope: !69)
!88 = !DILocation(line: 68, column: 13, scope: !69)
!89 = !DILocation(line: 71, column: 1, scope: !9)
!90 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DILocalVariable(name: "data", scope: !90, file: !1, line: 80, type: !13)
!92 = !DILocation(line: 80, column: 12, scope: !90)
!93 = !DILocalVariable(name: "dataBuffer", scope: !90, file: !1, line: 81, type: !17)
!94 = !DILocation(line: 81, column: 10, scope: !90)
!95 = !DILocation(line: 82, column: 12, scope: !90)
!96 = !DILocation(line: 82, column: 10, scope: !90)
!97 = !DILocation(line: 84, column: 12, scope: !90)
!98 = !DILocation(line: 84, column: 5, scope: !90)
!99 = !DILocalVariable(name: "dataCopy", scope: !100, file: !1, line: 86, type: !13)
!100 = distinct !DILexicalBlock(scope: !90, file: !1, line: 85, column: 5)
!101 = !DILocation(line: 86, column: 16, scope: !100)
!102 = !DILocation(line: 86, column: 27, scope: !100)
!103 = !DILocalVariable(name: "data", scope: !100, file: !1, line: 87, type: !13)
!104 = !DILocation(line: 87, column: 16, scope: !100)
!105 = !DILocation(line: 87, column: 23, scope: !100)
!106 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 89, type: !57)
!107 = distinct !DILexicalBlock(scope: !100, file: !1, line: 88, column: 9)
!108 = !DILocation(line: 89, column: 17, scope: !107)
!109 = !DILocalVariable(name: "n", scope: !107, file: !1, line: 89, type: !57)
!110 = !DILocation(line: 89, column: 20, scope: !107)
!111 = !DILocalVariable(name: "intVariable", scope: !107, file: !1, line: 89, type: !57)
!112 = !DILocation(line: 89, column: 23, scope: !107)
!113 = !DILocation(line: 90, column: 24, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 90, column: 17)
!115 = !DILocation(line: 90, column: 17, scope: !114)
!116 = !DILocation(line: 90, column: 40, scope: !114)
!117 = !DILocation(line: 90, column: 17, scope: !107)
!118 = !DILocation(line: 93, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 91, column: 13)
!120 = !DILocation(line: 94, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !1, line: 94, column: 17)
!122 = !DILocation(line: 94, column: 22, scope: !121)
!123 = !DILocation(line: 94, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 94, column: 17)
!125 = !DILocation(line: 94, column: 33, scope: !124)
!126 = !DILocation(line: 94, column: 31, scope: !124)
!127 = !DILocation(line: 94, column: 17, scope: !121)
!128 = !DILocation(line: 97, column: 32, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 95, column: 17)
!130 = !DILocation(line: 98, column: 17, scope: !129)
!131 = !DILocation(line: 94, column: 37, scope: !124)
!132 = !DILocation(line: 94, column: 17, scope: !124)
!133 = distinct !{!133, !127, !134, !85}
!134 = !DILocation(line: 98, column: 17, scope: !121)
!135 = !DILocation(line: 99, column: 30, scope: !119)
!136 = !DILocation(line: 99, column: 17, scope: !119)
!137 = !DILocation(line: 100, column: 13, scope: !119)
!138 = !DILocation(line: 103, column: 1, scope: !90)
!139 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 106, type: !10, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 108, type: !13)
!141 = !DILocation(line: 108, column: 12, scope: !139)
!142 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !1, line: 109, type: !17)
!143 = !DILocation(line: 109, column: 10, scope: !139)
!144 = !DILocation(line: 110, column: 12, scope: !139)
!145 = !DILocation(line: 110, column: 10, scope: !139)
!146 = !DILocalVariable(name: "dataLen", scope: !147, file: !1, line: 113, type: !25)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 111, column: 5)
!148 = !DILocation(line: 113, column: 16, scope: !147)
!149 = !DILocation(line: 113, column: 33, scope: !147)
!150 = !DILocation(line: 113, column: 26, scope: !147)
!151 = !DILocalVariable(name: "environment", scope: !147, file: !1, line: 114, type: !13)
!152 = !DILocation(line: 114, column: 16, scope: !147)
!153 = !DILocation(line: 114, column: 30, scope: !147)
!154 = !DILocation(line: 116, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 116, column: 13)
!156 = !DILocation(line: 116, column: 25, scope: !155)
!157 = !DILocation(line: 116, column: 13, scope: !147)
!158 = !DILocation(line: 119, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 117, column: 9)
!160 = !DILocation(line: 119, column: 26, scope: !159)
!161 = !DILocation(line: 119, column: 25, scope: !159)
!162 = !DILocation(line: 119, column: 35, scope: !159)
!163 = !DILocation(line: 119, column: 52, scope: !159)
!164 = !DILocation(line: 119, column: 51, scope: !159)
!165 = !DILocation(line: 119, column: 59, scope: !159)
!166 = !DILocation(line: 119, column: 13, scope: !159)
!167 = !DILocation(line: 120, column: 9, scope: !159)
!168 = !DILocalVariable(name: "dataCopy", scope: !169, file: !1, line: 123, type: !13)
!169 = distinct !DILexicalBlock(scope: !139, file: !1, line: 122, column: 5)
!170 = !DILocation(line: 123, column: 16, scope: !169)
!171 = !DILocation(line: 123, column: 27, scope: !169)
!172 = !DILocalVariable(name: "data", scope: !169, file: !1, line: 124, type: !13)
!173 = !DILocation(line: 124, column: 16, scope: !169)
!174 = !DILocation(line: 124, column: 23, scope: !169)
!175 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 126, type: !57)
!176 = distinct !DILexicalBlock(scope: !169, file: !1, line: 125, column: 9)
!177 = !DILocation(line: 126, column: 17, scope: !176)
!178 = !DILocalVariable(name: "n", scope: !176, file: !1, line: 126, type: !57)
!179 = !DILocation(line: 126, column: 20, scope: !176)
!180 = !DILocalVariable(name: "intVariable", scope: !176, file: !1, line: 126, type: !57)
!181 = !DILocation(line: 126, column: 23, scope: !176)
!182 = !DILocation(line: 127, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 127, column: 17)
!184 = !DILocation(line: 127, column: 17, scope: !183)
!185 = !DILocation(line: 127, column: 40, scope: !183)
!186 = !DILocation(line: 127, column: 17, scope: !176)
!187 = !DILocation(line: 130, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 130, column: 21)
!189 = distinct !DILexicalBlock(scope: !183, file: !1, line: 128, column: 13)
!190 = !DILocation(line: 130, column: 23, scope: !188)
!191 = !DILocation(line: 130, column: 21, scope: !189)
!192 = !DILocation(line: 132, column: 33, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !1, line: 131, column: 17)
!194 = !DILocation(line: 133, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !193, file: !1, line: 133, column: 21)
!196 = !DILocation(line: 133, column: 26, scope: !195)
!197 = !DILocation(line: 133, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 133, column: 21)
!199 = !DILocation(line: 133, column: 37, scope: !198)
!200 = !DILocation(line: 133, column: 35, scope: !198)
!201 = !DILocation(line: 133, column: 21, scope: !195)
!202 = !DILocation(line: 136, column: 36, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 134, column: 21)
!204 = !DILocation(line: 137, column: 21, scope: !203)
!205 = !DILocation(line: 133, column: 41, scope: !198)
!206 = !DILocation(line: 133, column: 21, scope: !198)
!207 = distinct !{!207, !201, !208, !85}
!208 = !DILocation(line: 137, column: 21, scope: !195)
!209 = !DILocation(line: 138, column: 34, scope: !193)
!210 = !DILocation(line: 138, column: 21, scope: !193)
!211 = !DILocation(line: 139, column: 17, scope: !193)
!212 = !DILocation(line: 140, column: 13, scope: !189)
!213 = !DILocation(line: 143, column: 1, scope: !139)
!214 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_31_good", scope: !1, file: !1, line: 145, type: !10, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DILocation(line: 147, column: 5, scope: !214)
!216 = !DILocation(line: 148, column: 5, scope: !214)
!217 = !DILocation(line: 149, column: 1, scope: !214)
