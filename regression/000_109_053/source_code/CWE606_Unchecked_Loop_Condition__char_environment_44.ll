; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_44.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %n, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** %data.addr, align 8, !dbg !24
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !26
  %cmp = icmp eq i32 %call, 1, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !29
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !34
  %2 = load i32, i32* %n, align 4, !dbg !36
  %cmp1 = icmp slt i32 %1, %2, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !39
  %inc = add nsw i32 %3, 1, !dbg !39
  store i32 %inc, i32* %intVariable, align 4, !dbg !39
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !42
  %inc2 = add nsw i32 %4, 1, !dbg !42
  store i32 %inc2, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !47
  call void @printIntLine(i32 %5), !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_44_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !56, metadata !DIExpression()), !dbg !58
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !91
  %8 = load i8*, i8** %data, align 8, !dbg !92
  call void %7(i8* %8), !dbg !91
  ret void, !dbg !93
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !94 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %n, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i8*, i8** %data.addr, align 8, !dbg !104
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !106
  %cmp = icmp eq i32 %call, 1, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !109
  store i32 0, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !114
  %2 = load i32, i32* %n, align 4, !dbg !116
  %cmp1 = icmp slt i32 %1, %2, !dbg !117
  br i1 %cmp1, label %for.body, label %for.end, !dbg !118

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !119
  %inc = add nsw i32 %3, 1, !dbg !119
  store i32 %inc, i32* %intVariable, align 4, !dbg !119
  br label %for.inc, !dbg !121

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !122
  %inc2 = add nsw i32 %4, 1, !dbg !122
  store i32 %inc2, i32* %i, align 4, !dbg !122
  br label %for.cond, !dbg !123, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !126
  call void @printIntLine(i32 %5), !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !133, metadata !DIExpression()), !dbg !134
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !136
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !137
  store i8* %arraydecay, i8** %data, align 8, !dbg !138
  %1 = load i8*, i8** %data, align 8, !dbg !139
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !140
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !141
  %3 = load i8*, i8** %data, align 8, !dbg !142
  call void %2(i8* %3), !dbg !141
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !144 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %i, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %n, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i8*, i8** %data.addr, align 8, !dbg !154
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !156
  %cmp = icmp eq i32 %call, 1, !dbg !157
  br i1 %cmp, label %if.then, label %if.end5, !dbg !158

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !159
  %cmp1 = icmp slt i32 %1, 10000, !dbg !162
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !163

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !164
  store i32 0, i32* %i, align 4, !dbg !166
  br label %for.cond, !dbg !168

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !169
  %3 = load i32, i32* %n, align 4, !dbg !171
  %cmp3 = icmp slt i32 %2, %3, !dbg !172
  br i1 %cmp3, label %for.body, label %for.end, !dbg !173

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !174
  %inc = add nsw i32 %4, 1, !dbg !174
  store i32 %inc, i32* %intVariable, align 4, !dbg !174
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !177
  %inc4 = add nsw i32 %5, 1, !dbg !177
  store i32 %inc4, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !181
  call void @printIntLine(i32 %6), !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !184

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !186 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !189, metadata !DIExpression()), !dbg !190
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !192
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !193
  store i8* %arraydecay, i8** %data, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !195, metadata !DIExpression()), !dbg !197
  %1 = load i8*, i8** %data, align 8, !dbg !198
  %call = call i64 @strlen(i8* %1) #7, !dbg !199
  store i64 %call, i64* %dataLen, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !200, metadata !DIExpression()), !dbg !201
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !202
  store i8* %call1, i8** %environment, align 8, !dbg !201
  %2 = load i8*, i8** %environment, align 8, !dbg !203
  %cmp = icmp ne i8* %2, null, !dbg !205
  br i1 %cmp, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !207
  %4 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !210
  %5 = load i8*, i8** %environment, align 8, !dbg !211
  %6 = load i64, i64* %dataLen, align 8, !dbg !212
  %sub = sub i64 100, %6, !dbg !213
  %sub2 = sub i64 %sub, 1, !dbg !214
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !217
  %8 = load i8*, i8** %data, align 8, !dbg !218
  call void %7(i8* %8), !dbg !217
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_44_good() #0 !dbg !220 {
entry:
  call void @goodG2B(), !dbg !221
  call void @goodB2G(), !dbg !222
  ret void, !dbg !223
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_053/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 37, type: !12)
!15 = !DILocation(line: 37, column: 21, scope: !9)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 40, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 39, column: 5)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocation(line: 40, column: 13, scope: !17)
!20 = !DILocalVariable(name: "n", scope: !17, file: !1, line: 40, type: !18)
!21 = !DILocation(line: 40, column: 16, scope: !17)
!22 = !DILocalVariable(name: "intVariable", scope: !17, file: !1, line: 40, type: !18)
!23 = !DILocation(line: 40, column: 19, scope: !17)
!24 = !DILocation(line: 41, column: 20, scope: !25)
!25 = distinct !DILexicalBlock(scope: !17, file: !1, line: 41, column: 13)
!26 = !DILocation(line: 41, column: 13, scope: !25)
!27 = !DILocation(line: 41, column: 36, scope: !25)
!28 = !DILocation(line: 41, column: 13, scope: !17)
!29 = !DILocation(line: 44, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 42, column: 9)
!31 = !DILocation(line: 45, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 13)
!33 = !DILocation(line: 45, column: 18, scope: !32)
!34 = !DILocation(line: 45, column: 25, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 45, column: 13)
!36 = !DILocation(line: 45, column: 29, scope: !35)
!37 = !DILocation(line: 45, column: 27, scope: !35)
!38 = !DILocation(line: 45, column: 13, scope: !32)
!39 = !DILocation(line: 48, column: 28, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 46, column: 13)
!41 = !DILocation(line: 49, column: 13, scope: !40)
!42 = !DILocation(line: 45, column: 33, scope: !35)
!43 = !DILocation(line: 45, column: 13, scope: !35)
!44 = distinct !{!44, !38, !45, !46}
!45 = !DILocation(line: 49, column: 13, scope: !32)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 50, column: 26, scope: !30)
!48 = !DILocation(line: 50, column: 13, scope: !30)
!49 = !DILocation(line: 51, column: 9, scope: !30)
!50 = !DILocation(line: 53, column: 1, scope: !9)
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_44_bad", scope: !1, file: !1, line: 55, type: !52, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 57, type: !12)
!55 = !DILocation(line: 57, column: 12, scope: !51)
!56 = !DILocalVariable(name: "funcPtr", scope: !51, file: !1, line: 59, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!58 = !DILocation(line: 59, column: 12, scope: !51)
!59 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 60, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 60, column: 10, scope: !51)
!64 = !DILocation(line: 61, column: 12, scope: !51)
!65 = !DILocation(line: 61, column: 10, scope: !51)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !1, line: 64, type: !68)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 62, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 64, column: 16, scope: !67)
!72 = !DILocation(line: 64, column: 33, scope: !67)
!73 = !DILocation(line: 64, column: 26, scope: !67)
!74 = !DILocalVariable(name: "environment", scope: !67, file: !1, line: 65, type: !12)
!75 = !DILocation(line: 65, column: 16, scope: !67)
!76 = !DILocation(line: 65, column: 30, scope: !67)
!77 = !DILocation(line: 67, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !1, line: 67, column: 13)
!79 = !DILocation(line: 67, column: 25, scope: !78)
!80 = !DILocation(line: 67, column: 13, scope: !67)
!81 = !DILocation(line: 70, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 68, column: 9)
!83 = !DILocation(line: 70, column: 26, scope: !82)
!84 = !DILocation(line: 70, column: 25, scope: !82)
!85 = !DILocation(line: 70, column: 35, scope: !82)
!86 = !DILocation(line: 70, column: 52, scope: !82)
!87 = !DILocation(line: 70, column: 51, scope: !82)
!88 = !DILocation(line: 70, column: 59, scope: !82)
!89 = !DILocation(line: 70, column: 13, scope: !82)
!90 = !DILocation(line: 71, column: 9, scope: !82)
!91 = !DILocation(line: 74, column: 5, scope: !51)
!92 = !DILocation(line: 74, column: 13, scope: !51)
!93 = !DILocation(line: 75, column: 1, scope: !51)
!94 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 82, type: !10, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "data", arg: 1, scope: !94, file: !1, line: 82, type: !12)
!96 = !DILocation(line: 82, column: 25, scope: !94)
!97 = !DILocalVariable(name: "i", scope: !98, file: !1, line: 85, type: !18)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 84, column: 5)
!99 = !DILocation(line: 85, column: 13, scope: !98)
!100 = !DILocalVariable(name: "n", scope: !98, file: !1, line: 85, type: !18)
!101 = !DILocation(line: 85, column: 16, scope: !98)
!102 = !DILocalVariable(name: "intVariable", scope: !98, file: !1, line: 85, type: !18)
!103 = !DILocation(line: 85, column: 19, scope: !98)
!104 = !DILocation(line: 86, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 86, column: 13)
!106 = !DILocation(line: 86, column: 13, scope: !105)
!107 = !DILocation(line: 86, column: 36, scope: !105)
!108 = !DILocation(line: 86, column: 13, scope: !98)
!109 = !DILocation(line: 89, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 87, column: 9)
!111 = !DILocation(line: 90, column: 20, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !1, line: 90, column: 13)
!113 = !DILocation(line: 90, column: 18, scope: !112)
!114 = !DILocation(line: 90, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 90, column: 13)
!116 = !DILocation(line: 90, column: 29, scope: !115)
!117 = !DILocation(line: 90, column: 27, scope: !115)
!118 = !DILocation(line: 90, column: 13, scope: !112)
!119 = !DILocation(line: 93, column: 28, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 91, column: 13)
!121 = !DILocation(line: 94, column: 13, scope: !120)
!122 = !DILocation(line: 90, column: 33, scope: !115)
!123 = !DILocation(line: 90, column: 13, scope: !115)
!124 = distinct !{!124, !118, !125, !46}
!125 = !DILocation(line: 94, column: 13, scope: !112)
!126 = !DILocation(line: 95, column: 26, scope: !110)
!127 = !DILocation(line: 95, column: 13, scope: !110)
!128 = !DILocation(line: 96, column: 9, scope: !110)
!129 = !DILocation(line: 98, column: 1, scope: !94)
!130 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 100, type: !52, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!131 = !DILocalVariable(name: "data", scope: !130, file: !1, line: 102, type: !12)
!132 = !DILocation(line: 102, column: 12, scope: !130)
!133 = !DILocalVariable(name: "funcPtr", scope: !130, file: !1, line: 103, type: !57)
!134 = !DILocation(line: 103, column: 12, scope: !130)
!135 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !1, line: 104, type: !60)
!136 = !DILocation(line: 104, column: 10, scope: !130)
!137 = !DILocation(line: 105, column: 12, scope: !130)
!138 = !DILocation(line: 105, column: 10, scope: !130)
!139 = !DILocation(line: 107, column: 12, scope: !130)
!140 = !DILocation(line: 107, column: 5, scope: !130)
!141 = !DILocation(line: 108, column: 5, scope: !130)
!142 = !DILocation(line: 108, column: 13, scope: !130)
!143 = !DILocation(line: 109, column: 1, scope: !130)
!144 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 112, type: !10, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DILocalVariable(name: "data", arg: 1, scope: !144, file: !1, line: 112, type: !12)
!146 = !DILocation(line: 112, column: 25, scope: !144)
!147 = !DILocalVariable(name: "i", scope: !148, file: !1, line: 115, type: !18)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 114, column: 5)
!149 = !DILocation(line: 115, column: 13, scope: !148)
!150 = !DILocalVariable(name: "n", scope: !148, file: !1, line: 115, type: !18)
!151 = !DILocation(line: 115, column: 16, scope: !148)
!152 = !DILocalVariable(name: "intVariable", scope: !148, file: !1, line: 115, type: !18)
!153 = !DILocation(line: 115, column: 19, scope: !148)
!154 = !DILocation(line: 116, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !1, line: 116, column: 13)
!156 = !DILocation(line: 116, column: 13, scope: !155)
!157 = !DILocation(line: 116, column: 36, scope: !155)
!158 = !DILocation(line: 116, column: 13, scope: !148)
!159 = !DILocation(line: 119, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 119, column: 17)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 117, column: 9)
!162 = !DILocation(line: 119, column: 19, scope: !160)
!163 = !DILocation(line: 119, column: 17, scope: !161)
!164 = !DILocation(line: 121, column: 29, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 120, column: 13)
!166 = !DILocation(line: 122, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !1, line: 122, column: 17)
!168 = !DILocation(line: 122, column: 22, scope: !167)
!169 = !DILocation(line: 122, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 122, column: 17)
!171 = !DILocation(line: 122, column: 33, scope: !170)
!172 = !DILocation(line: 122, column: 31, scope: !170)
!173 = !DILocation(line: 122, column: 17, scope: !167)
!174 = !DILocation(line: 125, column: 32, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 123, column: 17)
!176 = !DILocation(line: 126, column: 17, scope: !175)
!177 = !DILocation(line: 122, column: 37, scope: !170)
!178 = !DILocation(line: 122, column: 17, scope: !170)
!179 = distinct !{!179, !173, !180, !46}
!180 = !DILocation(line: 126, column: 17, scope: !167)
!181 = !DILocation(line: 127, column: 30, scope: !165)
!182 = !DILocation(line: 127, column: 17, scope: !165)
!183 = !DILocation(line: 128, column: 13, scope: !165)
!184 = !DILocation(line: 129, column: 9, scope: !161)
!185 = !DILocation(line: 131, column: 1, scope: !144)
!186 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 133, type: !52, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!187 = !DILocalVariable(name: "data", scope: !186, file: !1, line: 135, type: !12)
!188 = !DILocation(line: 135, column: 12, scope: !186)
!189 = !DILocalVariable(name: "funcPtr", scope: !186, file: !1, line: 136, type: !57)
!190 = !DILocation(line: 136, column: 12, scope: !186)
!191 = !DILocalVariable(name: "dataBuffer", scope: !186, file: !1, line: 137, type: !60)
!192 = !DILocation(line: 137, column: 10, scope: !186)
!193 = !DILocation(line: 138, column: 12, scope: !186)
!194 = !DILocation(line: 138, column: 10, scope: !186)
!195 = !DILocalVariable(name: "dataLen", scope: !196, file: !1, line: 141, type: !68)
!196 = distinct !DILexicalBlock(scope: !186, file: !1, line: 139, column: 5)
!197 = !DILocation(line: 141, column: 16, scope: !196)
!198 = !DILocation(line: 141, column: 33, scope: !196)
!199 = !DILocation(line: 141, column: 26, scope: !196)
!200 = !DILocalVariable(name: "environment", scope: !196, file: !1, line: 142, type: !12)
!201 = !DILocation(line: 142, column: 16, scope: !196)
!202 = !DILocation(line: 142, column: 30, scope: !196)
!203 = !DILocation(line: 144, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !1, line: 144, column: 13)
!205 = !DILocation(line: 144, column: 25, scope: !204)
!206 = !DILocation(line: 144, column: 13, scope: !196)
!207 = !DILocation(line: 147, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 145, column: 9)
!209 = !DILocation(line: 147, column: 26, scope: !208)
!210 = !DILocation(line: 147, column: 25, scope: !208)
!211 = !DILocation(line: 147, column: 35, scope: !208)
!212 = !DILocation(line: 147, column: 52, scope: !208)
!213 = !DILocation(line: 147, column: 51, scope: !208)
!214 = !DILocation(line: 147, column: 59, scope: !208)
!215 = !DILocation(line: 147, column: 13, scope: !208)
!216 = !DILocation(line: 148, column: 9, scope: !208)
!217 = !DILocation(line: 150, column: 5, scope: !186)
!218 = !DILocation(line: 150, column: 13, scope: !186)
!219 = !DILocation(line: 151, column: 1, scope: !186)
!220 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_44_good", scope: !1, file: !1, line: 153, type: !52, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!221 = !DILocation(line: 155, column: 5, scope: !220)
!222 = !DILocation(line: 156, column: 5, scope: !220)
!223 = !DILocation(line: 157, column: 1, scope: !220)
