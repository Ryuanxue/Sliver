; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_45.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE606_Unchecked_Loop_Condition__char_environment_45_badData = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData = dso_local global i8* null, align 8, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !18 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_badData, align 8, !dbg !23
  store i8* %0, i8** %data, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %n, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !30, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !34
  %cmp = icmp eq i32 %call, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !42
  %3 = load i32, i32* %n, align 4, !dbg !44
  %cmp1 = icmp slt i32 %2, %3, !dbg !45
  br i1 %cmp1, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !47
  %inc = add nsw i32 %4, 1, !dbg !47
  store i32 %inc, i32* %intVariable, align 4, !dbg !47
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !50
  %inc2 = add nsw i32 %5, 1, !dbg !50
  store i32 %inc2, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !55
  call void @printIntLine(i32 %6), !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_45_bad() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !69, metadata !DIExpression()), !dbg !74
  %1 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %1) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !77, metadata !DIExpression()), !dbg !78
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !79
  store i8* %call1, i8** %environment, align 8, !dbg !78
  %2 = load i8*, i8** %environment, align 8, !dbg !80
  %cmp = icmp ne i8* %2, null, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %4 = load i64, i64* %dataLen, align 8, !dbg !86
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !87
  %5 = load i8*, i8** %environment, align 8, !dbg !88
  %6 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub = sub i64 100, %6, !dbg !90
  %sub2 = sub i64 %sub, 1, !dbg !91
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !94
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_badData, align 8, !dbg !95
  call void @badSink(), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData, align 8, !dbg !101
  store i8* %0, i8** %data, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %n, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !107, metadata !DIExpression()), !dbg !108
  %1 = load i8*, i8** %data, align 8, !dbg !109
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !111
  %cmp = icmp eq i32 %call, 1, !dbg !112
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !119
  %3 = load i32, i32* %n, align 4, !dbg !121
  %cmp1 = icmp slt i32 %2, %3, !dbg !122
  br i1 %cmp1, label %for.body, label %for.end, !dbg !123

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !124
  %inc = add nsw i32 %4, 1, !dbg !124
  store i32 %inc, i32* %intVariable, align 4, !dbg !124
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !127
  %inc2 = add nsw i32 %5, 1, !dbg !127
  store i32 %inc2, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !131
  call void @printIntLine(i32 %6), !dbg !132
  br label %if.end, !dbg !133

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %1 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !143
  %2 = load i8*, i8** %data, align 8, !dbg !144
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData, align 8, !dbg !145
  call void @goodG2BSink(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !148 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData, align 8, !dbg !151
  store i8* %0, i8** %data, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %n, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !157, metadata !DIExpression()), !dbg !158
  %1 = load i8*, i8** %data, align 8, !dbg !159
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !161
  %cmp = icmp eq i32 %call, 1, !dbg !162
  br i1 %cmp, label %if.then, label %if.end5, !dbg !163

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !164
  %cmp1 = icmp slt i32 %2, 10000, !dbg !167
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !168

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !169
  store i32 0, i32* %i, align 4, !dbg !171
  br label %for.cond, !dbg !173

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !174
  %4 = load i32, i32* %n, align 4, !dbg !176
  %cmp3 = icmp slt i32 %3, %4, !dbg !177
  br i1 %cmp3, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !179
  %inc = add nsw i32 %5, 1, !dbg !179
  store i32 %inc, i32* %intVariable, align 4, !dbg !179
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !182
  %inc4 = add nsw i32 %6, 1, !dbg !182
  store i32 %inc4, i32* %i, align 4, !dbg !182
  br label %for.cond, !dbg !183, !llvm.loop !184

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !186
  call void @printIntLine(i32 %7), !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !189

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !191 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !195
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !196
  store i8* %arraydecay, i8** %data, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !198, metadata !DIExpression()), !dbg !200
  %1 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i64 @strlen(i8* %1) #7, !dbg !202
  store i64 %call, i64* %dataLen, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !203, metadata !DIExpression()), !dbg !204
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !205
  store i8* %call1, i8** %environment, align 8, !dbg !204
  %2 = load i8*, i8** %environment, align 8, !dbg !206
  %cmp = icmp ne i8* %2, null, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !210
  %4 = load i64, i64* %dataLen, align 8, !dbg !212
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !213
  %5 = load i8*, i8** %environment, align 8, !dbg !214
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub = sub i64 100, %6, !dbg !216
  %sub2 = sub i64 %sub, 1, !dbg !217
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !218
  br label %if.end, !dbg !219

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !220
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData, align 8, !dbg !221
  call void @goodB2GSink(), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_45_good() #0 !dbg !224 {
entry:
  call void @goodG2B(), !dbg !225
  call void @goodB2G(), !dbg !226
  ret void, !dbg !227
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_badData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_054/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 12.0.0"}
!18 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 41, type: !19, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !DILocalVariable(name: "data", scope: !18, file: !3, line: 43, type: !10)
!22 = !DILocation(line: 43, column: 12, scope: !18)
!23 = !DILocation(line: 43, column: 19, scope: !18)
!24 = !DILocalVariable(name: "i", scope: !25, file: !3, line: 45, type: !26)
!25 = distinct !DILexicalBlock(scope: !18, file: !3, line: 44, column: 5)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocation(line: 45, column: 13, scope: !25)
!28 = !DILocalVariable(name: "n", scope: !25, file: !3, line: 45, type: !26)
!29 = !DILocation(line: 45, column: 16, scope: !25)
!30 = !DILocalVariable(name: "intVariable", scope: !25, file: !3, line: 45, type: !26)
!31 = !DILocation(line: 45, column: 19, scope: !25)
!32 = !DILocation(line: 46, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !3, line: 46, column: 13)
!34 = !DILocation(line: 46, column: 13, scope: !33)
!35 = !DILocation(line: 46, column: 36, scope: !33)
!36 = !DILocation(line: 46, column: 13, scope: !25)
!37 = !DILocation(line: 49, column: 25, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !3, line: 47, column: 9)
!39 = !DILocation(line: 50, column: 20, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !3, line: 50, column: 13)
!41 = !DILocation(line: 50, column: 18, scope: !40)
!42 = !DILocation(line: 50, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 50, column: 13)
!44 = !DILocation(line: 50, column: 29, scope: !43)
!45 = !DILocation(line: 50, column: 27, scope: !43)
!46 = !DILocation(line: 50, column: 13, scope: !40)
!47 = !DILocation(line: 53, column: 28, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !3, line: 51, column: 13)
!49 = !DILocation(line: 54, column: 13, scope: !48)
!50 = !DILocation(line: 50, column: 33, scope: !43)
!51 = !DILocation(line: 50, column: 13, scope: !43)
!52 = distinct !{!52, !46, !53, !54}
!53 = !DILocation(line: 54, column: 13, scope: !40)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 55, column: 26, scope: !38)
!56 = !DILocation(line: 55, column: 13, scope: !38)
!57 = !DILocation(line: 56, column: 9, scope: !38)
!58 = !DILocation(line: 58, column: 1, scope: !18)
!59 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_bad", scope: !3, file: !3, line: 60, type: !19, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 62, type: !10)
!61 = !DILocation(line: 62, column: 12, scope: !59)
!62 = !DILocalVariable(name: "dataBuffer", scope: !59, file: !3, line: 63, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 63, column: 10, scope: !59)
!67 = !DILocation(line: 64, column: 12, scope: !59)
!68 = !DILocation(line: 64, column: 10, scope: !59)
!69 = !DILocalVariable(name: "dataLen", scope: !70, file: !3, line: 67, type: !71)
!70 = distinct !DILexicalBlock(scope: !59, file: !3, line: 65, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 67, column: 16, scope: !70)
!75 = !DILocation(line: 67, column: 33, scope: !70)
!76 = !DILocation(line: 67, column: 26, scope: !70)
!77 = !DILocalVariable(name: "environment", scope: !70, file: !3, line: 68, type: !10)
!78 = !DILocation(line: 68, column: 16, scope: !70)
!79 = !DILocation(line: 68, column: 30, scope: !70)
!80 = !DILocation(line: 70, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !70, file: !3, line: 70, column: 13)
!82 = !DILocation(line: 70, column: 25, scope: !81)
!83 = !DILocation(line: 70, column: 13, scope: !70)
!84 = !DILocation(line: 73, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 71, column: 9)
!86 = !DILocation(line: 73, column: 26, scope: !85)
!87 = !DILocation(line: 73, column: 25, scope: !85)
!88 = !DILocation(line: 73, column: 35, scope: !85)
!89 = !DILocation(line: 73, column: 52, scope: !85)
!90 = !DILocation(line: 73, column: 51, scope: !85)
!91 = !DILocation(line: 73, column: 59, scope: !85)
!92 = !DILocation(line: 73, column: 13, scope: !85)
!93 = !DILocation(line: 74, column: 9, scope: !85)
!94 = !DILocation(line: 76, column: 68, scope: !59)
!95 = !DILocation(line: 76, column: 66, scope: !59)
!96 = !DILocation(line: 77, column: 5, scope: !59)
!97 = !DILocation(line: 78, column: 1, scope: !59)
!98 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 85, type: !19, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DILocalVariable(name: "data", scope: !98, file: !3, line: 87, type: !10)
!100 = !DILocation(line: 87, column: 12, scope: !98)
!101 = !DILocation(line: 87, column: 19, scope: !98)
!102 = !DILocalVariable(name: "i", scope: !103, file: !3, line: 89, type: !26)
!103 = distinct !DILexicalBlock(scope: !98, file: !3, line: 88, column: 5)
!104 = !DILocation(line: 89, column: 13, scope: !103)
!105 = !DILocalVariable(name: "n", scope: !103, file: !3, line: 89, type: !26)
!106 = !DILocation(line: 89, column: 16, scope: !103)
!107 = !DILocalVariable(name: "intVariable", scope: !103, file: !3, line: 89, type: !26)
!108 = !DILocation(line: 89, column: 19, scope: !103)
!109 = !DILocation(line: 90, column: 20, scope: !110)
!110 = distinct !DILexicalBlock(scope: !103, file: !3, line: 90, column: 13)
!111 = !DILocation(line: 90, column: 13, scope: !110)
!112 = !DILocation(line: 90, column: 36, scope: !110)
!113 = !DILocation(line: 90, column: 13, scope: !103)
!114 = !DILocation(line: 93, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 91, column: 9)
!116 = !DILocation(line: 94, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !115, file: !3, line: 94, column: 13)
!118 = !DILocation(line: 94, column: 18, scope: !117)
!119 = !DILocation(line: 94, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 94, column: 13)
!121 = !DILocation(line: 94, column: 29, scope: !120)
!122 = !DILocation(line: 94, column: 27, scope: !120)
!123 = !DILocation(line: 94, column: 13, scope: !117)
!124 = !DILocation(line: 97, column: 28, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !3, line: 95, column: 13)
!126 = !DILocation(line: 98, column: 13, scope: !125)
!127 = !DILocation(line: 94, column: 33, scope: !120)
!128 = !DILocation(line: 94, column: 13, scope: !120)
!129 = distinct !{!129, !123, !130, !54}
!130 = !DILocation(line: 98, column: 13, scope: !117)
!131 = !DILocation(line: 99, column: 26, scope: !115)
!132 = !DILocation(line: 99, column: 13, scope: !115)
!133 = !DILocation(line: 100, column: 9, scope: !115)
!134 = !DILocation(line: 102, column: 1, scope: !98)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 104, type: !19, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!136 = !DILocalVariable(name: "data", scope: !135, file: !3, line: 106, type: !10)
!137 = !DILocation(line: 106, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !3, line: 107, type: !63)
!139 = !DILocation(line: 107, column: 10, scope: !135)
!140 = !DILocation(line: 108, column: 12, scope: !135)
!141 = !DILocation(line: 108, column: 10, scope: !135)
!142 = !DILocation(line: 110, column: 12, scope: !135)
!143 = !DILocation(line: 110, column: 5, scope: !135)
!144 = !DILocation(line: 111, column: 72, scope: !135)
!145 = !DILocation(line: 111, column: 70, scope: !135)
!146 = !DILocation(line: 112, column: 5, scope: !135)
!147 = !DILocation(line: 113, column: 1, scope: !135)
!148 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 116, type: !19, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DILocalVariable(name: "data", scope: !148, file: !3, line: 118, type: !10)
!150 = !DILocation(line: 118, column: 12, scope: !148)
!151 = !DILocation(line: 118, column: 19, scope: !148)
!152 = !DILocalVariable(name: "i", scope: !153, file: !3, line: 120, type: !26)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 119, column: 5)
!154 = !DILocation(line: 120, column: 13, scope: !153)
!155 = !DILocalVariable(name: "n", scope: !153, file: !3, line: 120, type: !26)
!156 = !DILocation(line: 120, column: 16, scope: !153)
!157 = !DILocalVariable(name: "intVariable", scope: !153, file: !3, line: 120, type: !26)
!158 = !DILocation(line: 120, column: 19, scope: !153)
!159 = !DILocation(line: 121, column: 20, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !3, line: 121, column: 13)
!161 = !DILocation(line: 121, column: 13, scope: !160)
!162 = !DILocation(line: 121, column: 36, scope: !160)
!163 = !DILocation(line: 121, column: 13, scope: !153)
!164 = !DILocation(line: 124, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 124, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !3, line: 122, column: 9)
!167 = !DILocation(line: 124, column: 19, scope: !165)
!168 = !DILocation(line: 124, column: 17, scope: !166)
!169 = !DILocation(line: 126, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 125, column: 13)
!171 = !DILocation(line: 127, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !3, line: 127, column: 17)
!173 = !DILocation(line: 127, column: 22, scope: !172)
!174 = !DILocation(line: 127, column: 29, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 127, column: 17)
!176 = !DILocation(line: 127, column: 33, scope: !175)
!177 = !DILocation(line: 127, column: 31, scope: !175)
!178 = !DILocation(line: 127, column: 17, scope: !172)
!179 = !DILocation(line: 130, column: 32, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 128, column: 17)
!181 = !DILocation(line: 131, column: 17, scope: !180)
!182 = !DILocation(line: 127, column: 37, scope: !175)
!183 = !DILocation(line: 127, column: 17, scope: !175)
!184 = distinct !{!184, !178, !185, !54}
!185 = !DILocation(line: 131, column: 17, scope: !172)
!186 = !DILocation(line: 132, column: 30, scope: !170)
!187 = !DILocation(line: 132, column: 17, scope: !170)
!188 = !DILocation(line: 133, column: 13, scope: !170)
!189 = !DILocation(line: 134, column: 9, scope: !166)
!190 = !DILocation(line: 136, column: 1, scope: !148)
!191 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 138, type: !19, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!192 = !DILocalVariable(name: "data", scope: !191, file: !3, line: 140, type: !10)
!193 = !DILocation(line: 140, column: 12, scope: !191)
!194 = !DILocalVariable(name: "dataBuffer", scope: !191, file: !3, line: 141, type: !63)
!195 = !DILocation(line: 141, column: 10, scope: !191)
!196 = !DILocation(line: 142, column: 12, scope: !191)
!197 = !DILocation(line: 142, column: 10, scope: !191)
!198 = !DILocalVariable(name: "dataLen", scope: !199, file: !3, line: 145, type: !71)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 143, column: 5)
!200 = !DILocation(line: 145, column: 16, scope: !199)
!201 = !DILocation(line: 145, column: 33, scope: !199)
!202 = !DILocation(line: 145, column: 26, scope: !199)
!203 = !DILocalVariable(name: "environment", scope: !199, file: !3, line: 146, type: !10)
!204 = !DILocation(line: 146, column: 16, scope: !199)
!205 = !DILocation(line: 146, column: 30, scope: !199)
!206 = !DILocation(line: 148, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !3, line: 148, column: 13)
!208 = !DILocation(line: 148, column: 25, scope: !207)
!209 = !DILocation(line: 148, column: 13, scope: !199)
!210 = !DILocation(line: 151, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 149, column: 9)
!212 = !DILocation(line: 151, column: 26, scope: !211)
!213 = !DILocation(line: 151, column: 25, scope: !211)
!214 = !DILocation(line: 151, column: 35, scope: !211)
!215 = !DILocation(line: 151, column: 52, scope: !211)
!216 = !DILocation(line: 151, column: 51, scope: !211)
!217 = !DILocation(line: 151, column: 59, scope: !211)
!218 = !DILocation(line: 151, column: 13, scope: !211)
!219 = !DILocation(line: 152, column: 9, scope: !211)
!220 = !DILocation(line: 154, column: 72, scope: !191)
!221 = !DILocation(line: 154, column: 70, scope: !191)
!222 = !DILocation(line: 155, column: 5, scope: !191)
!223 = !DILocation(line: 156, column: 1, scope: !191)
!224 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_good", scope: !3, file: !3, line: 158, type: !19, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!225 = !DILocation(line: 160, column: 5, scope: !224)
!226 = !DILocation(line: 161, column: 5, scope: !224)
!227 = !DILocation(line: 162, column: 1, scope: !224)
