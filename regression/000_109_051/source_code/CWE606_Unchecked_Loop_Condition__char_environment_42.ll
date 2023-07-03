; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_42.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @badSource(i8* %data) #0 !dbg !9 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !16, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %data.addr, align 8, !dbg !22
  %call = call i64 @strlen(i8* %0) #6, !dbg !23
  store i64 %call, i64* %dataLen, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !24, metadata !DIExpression()), !dbg !25
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !26
  store i8* %call1, i8** %environment, align 8, !dbg !25
  %1 = load i8*, i8** %environment, align 8, !dbg !27
  %cmp = icmp ne i8* %1, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !31
  %3 = load i64, i64* %dataLen, align 8, !dbg !33
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !34
  %4 = load i8*, i8** %environment, align 8, !dbg !35
  %5 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %5, !dbg !37
  %sub2 = sub i64 %sub, 1, !dbg !38
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #7, !dbg !39
  br label %if.end, !dbg !40

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !41
  ret i8* %6, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_42_bad() #0 !dbg !43 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !48, metadata !DIExpression()), !dbg !52
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !52
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !52
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !53
  store i8* %arraydecay, i8** %data, align 8, !dbg !54
  %1 = load i8*, i8** %data, align 8, !dbg !55
  %call = call i8* @badSource(i8* %1), !dbg !56
  store i8* %call, i8** %data, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !58, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %n, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i8*, i8** %data, align 8, !dbg !66
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !68
  %cmp = icmp eq i32 %call1, 1, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !71
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !76
  %4 = load i32, i32* %n, align 4, !dbg !78
  %cmp2 = icmp slt i32 %3, %4, !dbg !79
  br i1 %cmp2, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !81
  %inc = add nsw i32 %5, 1, !dbg !81
  store i32 %inc, i32* %intVariable, align 4, !dbg !81
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !84
  %inc3 = add nsw i32 %6, 1, !dbg !84
  store i32 %inc3, i32* %i, align 4, !dbg !84
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !89
  call void @printIntLine(i32 %7), !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !92
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !93 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i8*, i8** %data.addr, align 8, !dbg !96
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !97
  %1 = load i8*, i8** %data.addr, align 8, !dbg !98
  ret i8* %1, !dbg !99
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !100 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i8* @goodG2BSource(i8* %1), !dbg !108
  store i8* %call, i8** %data, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %n, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !115, metadata !DIExpression()), !dbg !116
  %2 = load i8*, i8** %data, align 8, !dbg !117
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !119
  %cmp = icmp eq i32 %call1, 1, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !122
  store i32 0, i32* %i, align 4, !dbg !124
  br label %for.cond, !dbg !126

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !127
  %4 = load i32, i32* %n, align 4, !dbg !129
  %cmp2 = icmp slt i32 %3, %4, !dbg !130
  br i1 %cmp2, label %for.body, label %for.end, !dbg !131

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !132
  %inc = add nsw i32 %5, 1, !dbg !132
  store i32 %inc, i32* %intVariable, align 4, !dbg !132
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !135
  %inc3 = add nsw i32 %6, 1, !dbg !135
  store i32 %inc3, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !139
  call void @printIntLine(i32 %7), !dbg !140
  br label %if.end, !dbg !141

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !143 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !146, metadata !DIExpression()), !dbg !148
  %0 = load i8*, i8** %data.addr, align 8, !dbg !149
  %call = call i64 @strlen(i8* %0) #6, !dbg !150
  store i64 %call, i64* %dataLen, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !151, metadata !DIExpression()), !dbg !152
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !153
  store i8* %call1, i8** %environment, align 8, !dbg !152
  %1 = load i8*, i8** %environment, align 8, !dbg !154
  %cmp = icmp ne i8* %1, null, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !158
  %3 = load i64, i64* %dataLen, align 8, !dbg !160
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !161
  %4 = load i8*, i8** %environment, align 8, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub = sub i64 100, %5, !dbg !164
  %sub2 = sub i64 %sub, 1, !dbg !165
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #7, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !168
  ret i8* %6, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i8* @goodB2GSource(i8* %1), !dbg !178
  store i8* %call, i8** %data, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %i, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %n, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !185, metadata !DIExpression()), !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !189
  %cmp = icmp eq i32 %call1, 1, !dbg !190
  br i1 %cmp, label %if.then, label %if.end6, !dbg !191

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !192
  %cmp2 = icmp slt i32 %3, 10000, !dbg !195
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !196

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !197
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !202
  %5 = load i32, i32* %n, align 4, !dbg !204
  %cmp4 = icmp slt i32 %4, %5, !dbg !205
  br i1 %cmp4, label %for.body, label %for.end, !dbg !206

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !207
  %inc = add nsw i32 %6, 1, !dbg !207
  store i32 %inc, i32* %intVariable, align 4, !dbg !207
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !210
  %inc5 = add nsw i32 %7, 1, !dbg !210
  store i32 %inc5, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !214
  call void @printIntLine(i32 %8), !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !217

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_42_good() #0 !dbg !219 {
entry:
  call void @goodB2G(), !dbg !220
  call void @goodG2B(), !dbg !221
  ret void, !dbg !222
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_051/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 37, type: !12)
!15 = !DILocation(line: 37, column: 25, scope: !9)
!16 = !DILocalVariable(name: "dataLen", scope: !17, file: !1, line: 41, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 39, column: 5)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 41, column: 16, scope: !17)
!22 = !DILocation(line: 41, column: 33, scope: !17)
!23 = !DILocation(line: 41, column: 26, scope: !17)
!24 = !DILocalVariable(name: "environment", scope: !17, file: !1, line: 42, type: !12)
!25 = !DILocation(line: 42, column: 16, scope: !17)
!26 = !DILocation(line: 42, column: 30, scope: !17)
!27 = !DILocation(line: 44, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !17, file: !1, line: 44, column: 13)
!29 = !DILocation(line: 44, column: 25, scope: !28)
!30 = !DILocation(line: 44, column: 13, scope: !17)
!31 = !DILocation(line: 47, column: 21, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 45, column: 9)
!33 = !DILocation(line: 47, column: 26, scope: !32)
!34 = !DILocation(line: 47, column: 25, scope: !32)
!35 = !DILocation(line: 47, column: 35, scope: !32)
!36 = !DILocation(line: 47, column: 52, scope: !32)
!37 = !DILocation(line: 47, column: 51, scope: !32)
!38 = !DILocation(line: 47, column: 59, scope: !32)
!39 = !DILocation(line: 47, column: 13, scope: !32)
!40 = !DILocation(line: 48, column: 9, scope: !32)
!41 = !DILocation(line: 50, column: 12, scope: !9)
!42 = !DILocation(line: 50, column: 5, scope: !9)
!43 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_42_bad", scope: !1, file: !1, line: 53, type: !44, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{null}
!46 = !DILocalVariable(name: "data", scope: !43, file: !1, line: 55, type: !12)
!47 = !DILocation(line: 55, column: 12, scope: !43)
!48 = !DILocalVariable(name: "dataBuffer", scope: !43, file: !1, line: 56, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 100)
!52 = !DILocation(line: 56, column: 10, scope: !43)
!53 = !DILocation(line: 57, column: 12, scope: !43)
!54 = !DILocation(line: 57, column: 10, scope: !43)
!55 = !DILocation(line: 58, column: 22, scope: !43)
!56 = !DILocation(line: 58, column: 12, scope: !43)
!57 = !DILocation(line: 58, column: 10, scope: !43)
!58 = !DILocalVariable(name: "i", scope: !59, file: !1, line: 60, type: !60)
!59 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 5)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DILocation(line: 60, column: 13, scope: !59)
!62 = !DILocalVariable(name: "n", scope: !59, file: !1, line: 60, type: !60)
!63 = !DILocation(line: 60, column: 16, scope: !59)
!64 = !DILocalVariable(name: "intVariable", scope: !59, file: !1, line: 60, type: !60)
!65 = !DILocation(line: 60, column: 19, scope: !59)
!66 = !DILocation(line: 61, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !1, line: 61, column: 13)
!68 = !DILocation(line: 61, column: 13, scope: !67)
!69 = !DILocation(line: 61, column: 36, scope: !67)
!70 = !DILocation(line: 61, column: 13, scope: !59)
!71 = !DILocation(line: 64, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 62, column: 9)
!73 = !DILocation(line: 65, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 65, column: 13)
!75 = !DILocation(line: 65, column: 18, scope: !74)
!76 = !DILocation(line: 65, column: 25, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 65, column: 13)
!78 = !DILocation(line: 65, column: 29, scope: !77)
!79 = !DILocation(line: 65, column: 27, scope: !77)
!80 = !DILocation(line: 65, column: 13, scope: !74)
!81 = !DILocation(line: 68, column: 28, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 66, column: 13)
!83 = !DILocation(line: 69, column: 13, scope: !82)
!84 = !DILocation(line: 65, column: 33, scope: !77)
!85 = !DILocation(line: 65, column: 13, scope: !77)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 69, column: 13, scope: !74)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !DILocation(line: 70, column: 26, scope: !72)
!90 = !DILocation(line: 70, column: 13, scope: !72)
!91 = !DILocation(line: 71, column: 9, scope: !72)
!92 = !DILocation(line: 73, column: 1, scope: !43)
!93 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: "data", arg: 1, scope: !93, file: !1, line: 80, type: !12)
!95 = !DILocation(line: 80, column: 29, scope: !93)
!96 = !DILocation(line: 83, column: 12, scope: !93)
!97 = !DILocation(line: 83, column: 5, scope: !93)
!98 = !DILocation(line: 84, column: 12, scope: !93)
!99 = !DILocation(line: 84, column: 5, scope: !93)
!100 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 87, type: !44, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!101 = !DILocalVariable(name: "data", scope: !100, file: !1, line: 89, type: !12)
!102 = !DILocation(line: 89, column: 12, scope: !100)
!103 = !DILocalVariable(name: "dataBuffer", scope: !100, file: !1, line: 90, type: !49)
!104 = !DILocation(line: 90, column: 10, scope: !100)
!105 = !DILocation(line: 91, column: 12, scope: !100)
!106 = !DILocation(line: 91, column: 10, scope: !100)
!107 = !DILocation(line: 92, column: 26, scope: !100)
!108 = !DILocation(line: 92, column: 12, scope: !100)
!109 = !DILocation(line: 92, column: 10, scope: !100)
!110 = !DILocalVariable(name: "i", scope: !111, file: !1, line: 94, type: !60)
!111 = distinct !DILexicalBlock(scope: !100, file: !1, line: 93, column: 5)
!112 = !DILocation(line: 94, column: 13, scope: !111)
!113 = !DILocalVariable(name: "n", scope: !111, file: !1, line: 94, type: !60)
!114 = !DILocation(line: 94, column: 16, scope: !111)
!115 = !DILocalVariable(name: "intVariable", scope: !111, file: !1, line: 94, type: !60)
!116 = !DILocation(line: 94, column: 19, scope: !111)
!117 = !DILocation(line: 95, column: 20, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !1, line: 95, column: 13)
!119 = !DILocation(line: 95, column: 13, scope: !118)
!120 = !DILocation(line: 95, column: 36, scope: !118)
!121 = !DILocation(line: 95, column: 13, scope: !111)
!122 = !DILocation(line: 98, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 96, column: 9)
!124 = !DILocation(line: 99, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !123, file: !1, line: 99, column: 13)
!126 = !DILocation(line: 99, column: 18, scope: !125)
!127 = !DILocation(line: 99, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 99, column: 13)
!129 = !DILocation(line: 99, column: 29, scope: !128)
!130 = !DILocation(line: 99, column: 27, scope: !128)
!131 = !DILocation(line: 99, column: 13, scope: !125)
!132 = !DILocation(line: 102, column: 28, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 100, column: 13)
!134 = !DILocation(line: 103, column: 13, scope: !133)
!135 = !DILocation(line: 99, column: 33, scope: !128)
!136 = !DILocation(line: 99, column: 13, scope: !128)
!137 = distinct !{!137, !131, !138, !88}
!138 = !DILocation(line: 103, column: 13, scope: !125)
!139 = !DILocation(line: 104, column: 26, scope: !123)
!140 = !DILocation(line: 104, column: 13, scope: !123)
!141 = !DILocation(line: 105, column: 9, scope: !123)
!142 = !DILocation(line: 107, column: 1, scope: !100)
!143 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 110, type: !10, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DILocalVariable(name: "data", arg: 1, scope: !143, file: !1, line: 110, type: !12)
!145 = !DILocation(line: 110, column: 29, scope: !143)
!146 = !DILocalVariable(name: "dataLen", scope: !147, file: !1, line: 114, type: !18)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 112, column: 5)
!148 = !DILocation(line: 114, column: 16, scope: !147)
!149 = !DILocation(line: 114, column: 33, scope: !147)
!150 = !DILocation(line: 114, column: 26, scope: !147)
!151 = !DILocalVariable(name: "environment", scope: !147, file: !1, line: 115, type: !12)
!152 = !DILocation(line: 115, column: 16, scope: !147)
!153 = !DILocation(line: 115, column: 30, scope: !147)
!154 = !DILocation(line: 117, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 117, column: 13)
!156 = !DILocation(line: 117, column: 25, scope: !155)
!157 = !DILocation(line: 117, column: 13, scope: !147)
!158 = !DILocation(line: 120, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 118, column: 9)
!160 = !DILocation(line: 120, column: 26, scope: !159)
!161 = !DILocation(line: 120, column: 25, scope: !159)
!162 = !DILocation(line: 120, column: 35, scope: !159)
!163 = !DILocation(line: 120, column: 52, scope: !159)
!164 = !DILocation(line: 120, column: 51, scope: !159)
!165 = !DILocation(line: 120, column: 59, scope: !159)
!166 = !DILocation(line: 120, column: 13, scope: !159)
!167 = !DILocation(line: 121, column: 9, scope: !159)
!168 = !DILocation(line: 123, column: 12, scope: !143)
!169 = !DILocation(line: 123, column: 5, scope: !143)
!170 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 126, type: !44, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DILocalVariable(name: "data", scope: !170, file: !1, line: 128, type: !12)
!172 = !DILocation(line: 128, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !1, line: 129, type: !49)
!174 = !DILocation(line: 129, column: 10, scope: !170)
!175 = !DILocation(line: 130, column: 12, scope: !170)
!176 = !DILocation(line: 130, column: 10, scope: !170)
!177 = !DILocation(line: 131, column: 26, scope: !170)
!178 = !DILocation(line: 131, column: 12, scope: !170)
!179 = !DILocation(line: 131, column: 10, scope: !170)
!180 = !DILocalVariable(name: "i", scope: !181, file: !1, line: 133, type: !60)
!181 = distinct !DILexicalBlock(scope: !170, file: !1, line: 132, column: 5)
!182 = !DILocation(line: 133, column: 13, scope: !181)
!183 = !DILocalVariable(name: "n", scope: !181, file: !1, line: 133, type: !60)
!184 = !DILocation(line: 133, column: 16, scope: !181)
!185 = !DILocalVariable(name: "intVariable", scope: !181, file: !1, line: 133, type: !60)
!186 = !DILocation(line: 133, column: 19, scope: !181)
!187 = !DILocation(line: 134, column: 20, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !1, line: 134, column: 13)
!189 = !DILocation(line: 134, column: 13, scope: !188)
!190 = !DILocation(line: 134, column: 36, scope: !188)
!191 = !DILocation(line: 134, column: 13, scope: !181)
!192 = !DILocation(line: 137, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 137, column: 17)
!194 = distinct !DILexicalBlock(scope: !188, file: !1, line: 135, column: 9)
!195 = !DILocation(line: 137, column: 19, scope: !193)
!196 = !DILocation(line: 137, column: 17, scope: !194)
!197 = !DILocation(line: 139, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 138, column: 13)
!199 = !DILocation(line: 140, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !1, line: 140, column: 17)
!201 = !DILocation(line: 140, column: 22, scope: !200)
!202 = !DILocation(line: 140, column: 29, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 140, column: 17)
!204 = !DILocation(line: 140, column: 33, scope: !203)
!205 = !DILocation(line: 140, column: 31, scope: !203)
!206 = !DILocation(line: 140, column: 17, scope: !200)
!207 = !DILocation(line: 143, column: 32, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 141, column: 17)
!209 = !DILocation(line: 144, column: 17, scope: !208)
!210 = !DILocation(line: 140, column: 37, scope: !203)
!211 = !DILocation(line: 140, column: 17, scope: !203)
!212 = distinct !{!212, !206, !213, !88}
!213 = !DILocation(line: 144, column: 17, scope: !200)
!214 = !DILocation(line: 145, column: 30, scope: !198)
!215 = !DILocation(line: 145, column: 17, scope: !198)
!216 = !DILocation(line: 146, column: 13, scope: !198)
!217 = !DILocation(line: 147, column: 9, scope: !194)
!218 = !DILocation(line: 149, column: 1, scope: !170)
!219 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_42_good", scope: !1, file: !1, line: 151, type: !44, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!220 = !DILocation(line: 153, column: 5, scope: !219)
!221 = !DILocation(line: 154, column: 5, scope: !219)
!222 = !DILocation(line: 155, column: 1, scope: !219)
