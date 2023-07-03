; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_41.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_41.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_41_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !56, metadata !DIExpression()), !dbg !60
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !60
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !60
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !61
  store i8* %arraydecay, i8** %data, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !63, metadata !DIExpression()), !dbg !68
  %1 = load i8*, i8** %data, align 8, !dbg !69
  %call = call i64 @strlen(i8* %1) #7, !dbg !70
  store i64 %call, i64* %dataLen, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !71, metadata !DIExpression()), !dbg !72
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !73
  store i8* %call1, i8** %environment, align 8, !dbg !72
  %2 = load i8*, i8** %environment, align 8, !dbg !74
  %cmp = icmp ne i8* %2, null, !dbg !76
  br i1 %cmp, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !78
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i8*, i8** %environment, align 8, !dbg !82
  %6 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %6, !dbg !84
  %sub2 = sub i64 %sub, 1, !dbg !85
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !86
  br label %if.end, !dbg !87

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !88
  call void @badSink(i8* %7), !dbg !89
  ret void, !dbg !90
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !91 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %n, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i8*, i8** %data.addr, align 8, !dbg !101
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !103
  %cmp = icmp eq i32 %call, 1, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !106
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !111
  %2 = load i32, i32* %n, align 4, !dbg !113
  %cmp1 = icmp slt i32 %1, %2, !dbg !114
  br i1 %cmp1, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !116
  %inc = add nsw i32 %3, 1, !dbg !116
  store i32 %inc, i32* %intVariable, align 4, !dbg !116
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !119
  %inc2 = add nsw i32 %4, 1, !dbg !119
  store i32 %inc2, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !123
  call void @printIntLine(i32 %5), !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !135
  %2 = load i8*, i8** %data, align 8, !dbg !136
  call void @goodG2BSink(i8* %2), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !139 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %i, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %n, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i8*, i8** %data.addr, align 8, !dbg !149
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !151
  %cmp = icmp eq i32 %call, 1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end5, !dbg !153

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !154
  %cmp1 = icmp slt i32 %1, 10000, !dbg !157
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !158

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !159
  store i32 0, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !164
  %3 = load i32, i32* %n, align 4, !dbg !166
  %cmp3 = icmp slt i32 %2, %3, !dbg !167
  br i1 %cmp3, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !169
  %inc = add nsw i32 %4, 1, !dbg !169
  store i32 %inc, i32* %intVariable, align 4, !dbg !169
  br label %for.inc, !dbg !171

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !172
  %inc4 = add nsw i32 %5, 1, !dbg !172
  store i32 %inc4, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !173, !llvm.loop !174

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !176
  call void @printIntLine(i32 %6), !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !179

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !181 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i64 @strlen(i8* %1) #7, !dbg !192
  store i64 %call, i64* %dataLen, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !193, metadata !DIExpression()), !dbg !194
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !195
  store i8* %call1, i8** %environment, align 8, !dbg !194
  %2 = load i8*, i8** %environment, align 8, !dbg !196
  %cmp = icmp ne i8* %2, null, !dbg !198
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !200
  %4 = load i64, i64* %dataLen, align 8, !dbg !202
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !203
  %5 = load i8*, i8** %environment, align 8, !dbg !204
  %6 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub = sub i64 100, %6, !dbg !206
  %sub2 = sub i64 %sub, 1, !dbg !207
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !210
  call void @goodB2GSink(i8* %7), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_41_good() #0 !dbg !213 {
entry:
  call void @goodB2G(), !dbg !214
  call void @goodG2B(), !dbg !215
  ret void, !dbg !216
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_050/source_code")
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
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_41_bad", scope: !1, file: !1, line: 55, type: !52, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 57, type: !12)
!55 = !DILocation(line: 57, column: 12, scope: !51)
!56 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 58, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 100)
!60 = !DILocation(line: 58, column: 10, scope: !51)
!61 = !DILocation(line: 59, column: 12, scope: !51)
!62 = !DILocation(line: 59, column: 10, scope: !51)
!63 = !DILocalVariable(name: "dataLen", scope: !64, file: !1, line: 62, type: !65)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 5)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 62, column: 16, scope: !64)
!69 = !DILocation(line: 62, column: 33, scope: !64)
!70 = !DILocation(line: 62, column: 26, scope: !64)
!71 = !DILocalVariable(name: "environment", scope: !64, file: !1, line: 63, type: !12)
!72 = !DILocation(line: 63, column: 16, scope: !64)
!73 = !DILocation(line: 63, column: 30, scope: !64)
!74 = !DILocation(line: 65, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !64, file: !1, line: 65, column: 13)
!76 = !DILocation(line: 65, column: 25, scope: !75)
!77 = !DILocation(line: 65, column: 13, scope: !64)
!78 = !DILocation(line: 68, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 66, column: 9)
!80 = !DILocation(line: 68, column: 26, scope: !79)
!81 = !DILocation(line: 68, column: 25, scope: !79)
!82 = !DILocation(line: 68, column: 35, scope: !79)
!83 = !DILocation(line: 68, column: 52, scope: !79)
!84 = !DILocation(line: 68, column: 51, scope: !79)
!85 = !DILocation(line: 68, column: 59, scope: !79)
!86 = !DILocation(line: 68, column: 13, scope: !79)
!87 = !DILocation(line: 69, column: 9, scope: !79)
!88 = !DILocation(line: 71, column: 13, scope: !51)
!89 = !DILocation(line: 71, column: 5, scope: !51)
!90 = !DILocation(line: 72, column: 1, scope: !51)
!91 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 79, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "data", arg: 1, scope: !91, file: !1, line: 79, type: !12)
!93 = !DILocation(line: 79, column: 25, scope: !91)
!94 = !DILocalVariable(name: "i", scope: !95, file: !1, line: 82, type: !18)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 5)
!96 = !DILocation(line: 82, column: 13, scope: !95)
!97 = !DILocalVariable(name: "n", scope: !95, file: !1, line: 82, type: !18)
!98 = !DILocation(line: 82, column: 16, scope: !95)
!99 = !DILocalVariable(name: "intVariable", scope: !95, file: !1, line: 82, type: !18)
!100 = !DILocation(line: 82, column: 19, scope: !95)
!101 = !DILocation(line: 83, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 83, column: 13)
!103 = !DILocation(line: 83, column: 13, scope: !102)
!104 = !DILocation(line: 83, column: 36, scope: !102)
!105 = !DILocation(line: 83, column: 13, scope: !95)
!106 = !DILocation(line: 86, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 84, column: 9)
!108 = !DILocation(line: 87, column: 20, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 87, column: 13)
!110 = !DILocation(line: 87, column: 18, scope: !109)
!111 = !DILocation(line: 87, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 87, column: 13)
!113 = !DILocation(line: 87, column: 29, scope: !112)
!114 = !DILocation(line: 87, column: 27, scope: !112)
!115 = !DILocation(line: 87, column: 13, scope: !109)
!116 = !DILocation(line: 90, column: 28, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 88, column: 13)
!118 = !DILocation(line: 91, column: 13, scope: !117)
!119 = !DILocation(line: 87, column: 33, scope: !112)
!120 = !DILocation(line: 87, column: 13, scope: !112)
!121 = distinct !{!121, !115, !122, !46}
!122 = !DILocation(line: 91, column: 13, scope: !109)
!123 = !DILocation(line: 92, column: 26, scope: !107)
!124 = !DILocation(line: 92, column: 13, scope: !107)
!125 = !DILocation(line: 93, column: 9, scope: !107)
!126 = !DILocation(line: 95, column: 1, scope: !91)
!127 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 97, type: !52, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 99, type: !12)
!129 = !DILocation(line: 99, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 100, type: !57)
!131 = !DILocation(line: 100, column: 10, scope: !127)
!132 = !DILocation(line: 101, column: 12, scope: !127)
!133 = !DILocation(line: 101, column: 10, scope: !127)
!134 = !DILocation(line: 103, column: 12, scope: !127)
!135 = !DILocation(line: 103, column: 5, scope: !127)
!136 = !DILocation(line: 104, column: 17, scope: !127)
!137 = !DILocation(line: 104, column: 5, scope: !127)
!138 = !DILocation(line: 105, column: 1, scope: !127)
!139 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 108, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "data", arg: 1, scope: !139, file: !1, line: 108, type: !12)
!141 = !DILocation(line: 108, column: 25, scope: !139)
!142 = !DILocalVariable(name: "i", scope: !143, file: !1, line: 111, type: !18)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 110, column: 5)
!144 = !DILocation(line: 111, column: 13, scope: !143)
!145 = !DILocalVariable(name: "n", scope: !143, file: !1, line: 111, type: !18)
!146 = !DILocation(line: 111, column: 16, scope: !143)
!147 = !DILocalVariable(name: "intVariable", scope: !143, file: !1, line: 111, type: !18)
!148 = !DILocation(line: 111, column: 19, scope: !143)
!149 = !DILocation(line: 112, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 112, column: 13)
!151 = !DILocation(line: 112, column: 13, scope: !150)
!152 = !DILocation(line: 112, column: 36, scope: !150)
!153 = !DILocation(line: 112, column: 13, scope: !143)
!154 = !DILocation(line: 115, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 115, column: 17)
!156 = distinct !DILexicalBlock(scope: !150, file: !1, line: 113, column: 9)
!157 = !DILocation(line: 115, column: 19, scope: !155)
!158 = !DILocation(line: 115, column: 17, scope: !156)
!159 = !DILocation(line: 117, column: 29, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 116, column: 13)
!161 = !DILocation(line: 118, column: 24, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !1, line: 118, column: 17)
!163 = !DILocation(line: 118, column: 22, scope: !162)
!164 = !DILocation(line: 118, column: 29, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 118, column: 17)
!166 = !DILocation(line: 118, column: 33, scope: !165)
!167 = !DILocation(line: 118, column: 31, scope: !165)
!168 = !DILocation(line: 118, column: 17, scope: !162)
!169 = !DILocation(line: 121, column: 32, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 119, column: 17)
!171 = !DILocation(line: 122, column: 17, scope: !170)
!172 = !DILocation(line: 118, column: 37, scope: !165)
!173 = !DILocation(line: 118, column: 17, scope: !165)
!174 = distinct !{!174, !168, !175, !46}
!175 = !DILocation(line: 122, column: 17, scope: !162)
!176 = !DILocation(line: 123, column: 30, scope: !160)
!177 = !DILocation(line: 123, column: 17, scope: !160)
!178 = !DILocation(line: 124, column: 13, scope: !160)
!179 = !DILocation(line: 125, column: 9, scope: !156)
!180 = !DILocation(line: 127, column: 1, scope: !139)
!181 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 129, type: !52, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!182 = !DILocalVariable(name: "data", scope: !181, file: !1, line: 131, type: !12)
!183 = !DILocation(line: 131, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !1, line: 132, type: !57)
!185 = !DILocation(line: 132, column: 10, scope: !181)
!186 = !DILocation(line: 133, column: 12, scope: !181)
!187 = !DILocation(line: 133, column: 10, scope: !181)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !1, line: 136, type: !65)
!189 = distinct !DILexicalBlock(scope: !181, file: !1, line: 134, column: 5)
!190 = !DILocation(line: 136, column: 16, scope: !189)
!191 = !DILocation(line: 136, column: 33, scope: !189)
!192 = !DILocation(line: 136, column: 26, scope: !189)
!193 = !DILocalVariable(name: "environment", scope: !189, file: !1, line: 137, type: !12)
!194 = !DILocation(line: 137, column: 16, scope: !189)
!195 = !DILocation(line: 137, column: 30, scope: !189)
!196 = !DILocation(line: 139, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !189, file: !1, line: 139, column: 13)
!198 = !DILocation(line: 139, column: 25, scope: !197)
!199 = !DILocation(line: 139, column: 13, scope: !189)
!200 = !DILocation(line: 142, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 140, column: 9)
!202 = !DILocation(line: 142, column: 26, scope: !201)
!203 = !DILocation(line: 142, column: 25, scope: !201)
!204 = !DILocation(line: 142, column: 35, scope: !201)
!205 = !DILocation(line: 142, column: 52, scope: !201)
!206 = !DILocation(line: 142, column: 51, scope: !201)
!207 = !DILocation(line: 142, column: 59, scope: !201)
!208 = !DILocation(line: 142, column: 13, scope: !201)
!209 = !DILocation(line: 143, column: 9, scope: !201)
!210 = !DILocation(line: 145, column: 17, scope: !181)
!211 = !DILocation(line: 145, column: 5, scope: !181)
!212 = !DILocation(line: 146, column: 1, scope: !181)
!213 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_41_good", scope: !1, file: !1, line: 148, type: !52, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!214 = !DILocation(line: 150, column: 5, scope: !213)
!215 = !DILocation(line: 151, column: 5, scope: !213)
!216 = !DILocation(line: 152, column: 1, scope: !213)
