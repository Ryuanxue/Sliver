; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_34.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_34_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !16, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %data, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %dataLen, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !39, metadata !DIExpression()), !dbg !40
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call1, i8** %environment, align 8, !dbg !40
  %2 = load i8*, i8** %environment, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !46
  %4 = load i64, i64* %dataLen, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %environment, align 8, !dbg !50
  %6 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !56
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !57
  store i8* %7, i8** %unionFirst, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !59, metadata !DIExpression()), !dbg !61
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !62
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !62
  store i8* %8, i8** %data4, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %n, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !69, metadata !DIExpression()), !dbg !70
  %9 = load i8*, i8** %data4, align 8, !dbg !71
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !73
  %cmp6 = icmp eq i32 %call5, 1, !dbg !74
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !75

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !76
  store i32 0, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i32, i32* %i, align 4, !dbg !81
  %11 = load i32, i32* %n, align 4, !dbg !83
  %cmp8 = icmp slt i32 %10, %11, !dbg !84
  br i1 %cmp8, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !86
  %inc = add nsw i32 %12, 1, !dbg !86
  store i32 %inc, i32* %intVariable, align 4, !dbg !86
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !89
  %inc9 = add nsw i32 %13, 1, !dbg !89
  store i32 %inc9, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !94
  call void @printIntLine(i32 %14), !dbg !95
  br label %if.end10, !dbg !96

if.end10:                                         ; preds = %for.end, %if.end
  ret void, !dbg !97
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
define dso_local void @goodG2B() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !108
  %2 = load i8*, i8** %data, align 8, !dbg !109
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !110
  store i8* %2, i8** %unionFirst, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !112, metadata !DIExpression()), !dbg !114
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !115
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !115
  store i8* %3, i8** %data1, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %i, metadata !116, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %n, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !121, metadata !DIExpression()), !dbg !122
  %4 = load i8*, i8** %data1, align 8, !dbg !123
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !125
  %cmp = icmp eq i32 %call2, 1, !dbg !126
  br i1 %cmp, label %if.then, label %if.end, !dbg !127

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !128
  store i32 0, i32* %i, align 4, !dbg !130
  br label %for.cond, !dbg !132

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !133
  %6 = load i32, i32* %n, align 4, !dbg !135
  %cmp3 = icmp slt i32 %5, %6, !dbg !136
  br i1 %cmp3, label %for.body, label %for.end, !dbg !137

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !138
  %inc = add nsw i32 %7, 1, !dbg !138
  store i32 %inc, i32* %intVariable, align 4, !dbg !138
  br label %for.inc, !dbg !140

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !141
  %inc4 = add nsw i32 %8, 1, !dbg !141
  store i32 %inc4, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !142, !llvm.loop !143

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !145
  call void @printIntLine(i32 %9), !dbg !146
  br label %if.end, !dbg !147

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !148
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !149 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !155
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !156
  store i8* %arraydecay, i8** %data, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !158, metadata !DIExpression()), !dbg !160
  %1 = load i8*, i8** %data, align 8, !dbg !161
  %call = call i64 @strlen(i8* %1) #6, !dbg !162
  store i64 %call, i64* %dataLen, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !163, metadata !DIExpression()), !dbg !164
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !165
  store i8* %call1, i8** %environment, align 8, !dbg !164
  %2 = load i8*, i8** %environment, align 8, !dbg !166
  %cmp = icmp ne i8* %2, null, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !170
  %4 = load i64, i64* %dataLen, align 8, !dbg !172
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !173
  %5 = load i8*, i8** %environment, align 8, !dbg !174
  %6 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub = sub i64 100, %6, !dbg !176
  %sub2 = sub i64 %sub, 1, !dbg !177
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !180
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !181
  store i8* %7, i8** %unionFirst, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !183, metadata !DIExpression()), !dbg !185
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !186
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !186
  store i8* %8, i8** %data4, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %i, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %n, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !192, metadata !DIExpression()), !dbg !193
  %9 = load i8*, i8** %data4, align 8, !dbg !194
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !196
  %cmp6 = icmp eq i32 %call5, 1, !dbg !197
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !198

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !199
  %cmp8 = icmp slt i32 %10, 10000, !dbg !202
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !203

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !204
  store i32 0, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc, %if.then9
  %11 = load i32, i32* %i, align 4, !dbg !209
  %12 = load i32, i32* %n, align 4, !dbg !211
  %cmp10 = icmp slt i32 %11, %12, !dbg !212
  br i1 %cmp10, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !214
  %inc = add nsw i32 %13, 1, !dbg !214
  store i32 %inc, i32* %intVariable, align 4, !dbg !214
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !217
  %inc11 = add nsw i32 %14, 1, !dbg !217
  store i32 %inc11, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !221
  call void @printIntLine(i32 %15), !dbg !222
  br label %if.end12, !dbg !223

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !224

if.end13:                                         ; preds = %if.end12, %if.end
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_34_good() #0 !dbg !226 {
entry:
  call void @goodG2B(), !dbg !227
  call void @goodB2G(), !dbg !228
  ret void, !dbg !229
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_34_bad", scope: !1, file: !1, line: 38, type: !10, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 40, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 40, column: 12, scope: !9)
!16 = !DILocalVariable(name: "myUnion", scope: !9, file: !1, line: 41, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_34_unionType", file: !18, line: 9, baseType: !19)
!18 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 5, size: 64, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !19, file: !18, line: 7, baseType: !13, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !19, file: !18, line: 8, baseType: !13, size: 64)
!23 = !DILocation(line: 41, column: 68, scope: !9)
!24 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 42, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 42, column: 10, scope: !9)
!29 = !DILocation(line: 43, column: 12, scope: !9)
!30 = !DILocation(line: 43, column: 10, scope: !9)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !1, line: 46, type: !33)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 46, column: 16, scope: !32)
!37 = !DILocation(line: 46, column: 33, scope: !32)
!38 = !DILocation(line: 46, column: 26, scope: !32)
!39 = !DILocalVariable(name: "environment", scope: !32, file: !1, line: 47, type: !13)
!40 = !DILocation(line: 47, column: 16, scope: !32)
!41 = !DILocation(line: 47, column: 30, scope: !32)
!42 = !DILocation(line: 49, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 49, column: 13)
!44 = !DILocation(line: 49, column: 25, scope: !43)
!45 = !DILocation(line: 49, column: 13, scope: !32)
!46 = !DILocation(line: 52, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 50, column: 9)
!48 = !DILocation(line: 52, column: 26, scope: !47)
!49 = !DILocation(line: 52, column: 25, scope: !47)
!50 = !DILocation(line: 52, column: 35, scope: !47)
!51 = !DILocation(line: 52, column: 52, scope: !47)
!52 = !DILocation(line: 52, column: 51, scope: !47)
!53 = !DILocation(line: 52, column: 59, scope: !47)
!54 = !DILocation(line: 52, column: 13, scope: !47)
!55 = !DILocation(line: 53, column: 9, scope: !47)
!56 = !DILocation(line: 55, column: 26, scope: !9)
!57 = !DILocation(line: 55, column: 13, scope: !9)
!58 = !DILocation(line: 55, column: 24, scope: !9)
!59 = !DILocalVariable(name: "data", scope: !60, file: !1, line: 57, type: !13)
!60 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 5)
!61 = !DILocation(line: 57, column: 16, scope: !60)
!62 = !DILocation(line: 57, column: 31, scope: !60)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 59, type: !65)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 58, column: 9)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DILocation(line: 59, column: 17, scope: !64)
!67 = !DILocalVariable(name: "n", scope: !64, file: !1, line: 59, type: !65)
!68 = !DILocation(line: 59, column: 20, scope: !64)
!69 = !DILocalVariable(name: "intVariable", scope: !64, file: !1, line: 59, type: !65)
!70 = !DILocation(line: 59, column: 23, scope: !64)
!71 = !DILocation(line: 60, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 60, column: 17)
!73 = !DILocation(line: 60, column: 17, scope: !72)
!74 = !DILocation(line: 60, column: 40, scope: !72)
!75 = !DILocation(line: 60, column: 17, scope: !64)
!76 = !DILocation(line: 63, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 61, column: 13)
!78 = !DILocation(line: 64, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !1, line: 64, column: 17)
!80 = !DILocation(line: 64, column: 22, scope: !79)
!81 = !DILocation(line: 64, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 64, column: 17)
!83 = !DILocation(line: 64, column: 33, scope: !82)
!84 = !DILocation(line: 64, column: 31, scope: !82)
!85 = !DILocation(line: 64, column: 17, scope: !79)
!86 = !DILocation(line: 67, column: 32, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 65, column: 17)
!88 = !DILocation(line: 68, column: 17, scope: !87)
!89 = !DILocation(line: 64, column: 37, scope: !82)
!90 = !DILocation(line: 64, column: 17, scope: !82)
!91 = distinct !{!91, !85, !92, !93}
!92 = !DILocation(line: 68, column: 17, scope: !79)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 69, column: 30, scope: !77)
!95 = !DILocation(line: 69, column: 17, scope: !77)
!96 = !DILocation(line: 70, column: 13, scope: !77)
!97 = !DILocation(line: 73, column: 1, scope: !9)
!98 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DILocalVariable(name: "data", scope: !98, file: !1, line: 82, type: !13)
!100 = !DILocation(line: 82, column: 12, scope: !98)
!101 = !DILocalVariable(name: "myUnion", scope: !98, file: !1, line: 83, type: !17)
!102 = !DILocation(line: 83, column: 68, scope: !98)
!103 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !1, line: 84, type: !25)
!104 = !DILocation(line: 84, column: 10, scope: !98)
!105 = !DILocation(line: 85, column: 12, scope: !98)
!106 = !DILocation(line: 85, column: 10, scope: !98)
!107 = !DILocation(line: 87, column: 12, scope: !98)
!108 = !DILocation(line: 87, column: 5, scope: !98)
!109 = !DILocation(line: 88, column: 26, scope: !98)
!110 = !DILocation(line: 88, column: 13, scope: !98)
!111 = !DILocation(line: 88, column: 24, scope: !98)
!112 = !DILocalVariable(name: "data", scope: !113, file: !1, line: 90, type: !13)
!113 = distinct !DILexicalBlock(scope: !98, file: !1, line: 89, column: 5)
!114 = !DILocation(line: 90, column: 16, scope: !113)
!115 = !DILocation(line: 90, column: 31, scope: !113)
!116 = !DILocalVariable(name: "i", scope: !117, file: !1, line: 92, type: !65)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 91, column: 9)
!118 = !DILocation(line: 92, column: 17, scope: !117)
!119 = !DILocalVariable(name: "n", scope: !117, file: !1, line: 92, type: !65)
!120 = !DILocation(line: 92, column: 20, scope: !117)
!121 = !DILocalVariable(name: "intVariable", scope: !117, file: !1, line: 92, type: !65)
!122 = !DILocation(line: 92, column: 23, scope: !117)
!123 = !DILocation(line: 93, column: 24, scope: !124)
!124 = distinct !DILexicalBlock(scope: !117, file: !1, line: 93, column: 17)
!125 = !DILocation(line: 93, column: 17, scope: !124)
!126 = !DILocation(line: 93, column: 40, scope: !124)
!127 = !DILocation(line: 93, column: 17, scope: !117)
!128 = !DILocation(line: 96, column: 29, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 94, column: 13)
!130 = !DILocation(line: 97, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !1, line: 97, column: 17)
!132 = !DILocation(line: 97, column: 22, scope: !131)
!133 = !DILocation(line: 97, column: 29, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 97, column: 17)
!135 = !DILocation(line: 97, column: 33, scope: !134)
!136 = !DILocation(line: 97, column: 31, scope: !134)
!137 = !DILocation(line: 97, column: 17, scope: !131)
!138 = !DILocation(line: 100, column: 32, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 98, column: 17)
!140 = !DILocation(line: 101, column: 17, scope: !139)
!141 = !DILocation(line: 97, column: 37, scope: !134)
!142 = !DILocation(line: 97, column: 17, scope: !134)
!143 = distinct !{!143, !137, !144, !93}
!144 = !DILocation(line: 101, column: 17, scope: !131)
!145 = !DILocation(line: 102, column: 30, scope: !129)
!146 = !DILocation(line: 102, column: 17, scope: !129)
!147 = !DILocation(line: 103, column: 13, scope: !129)
!148 = !DILocation(line: 106, column: 1, scope: !98)
!149 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 109, type: !10, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!150 = !DILocalVariable(name: "data", scope: !149, file: !1, line: 111, type: !13)
!151 = !DILocation(line: 111, column: 12, scope: !149)
!152 = !DILocalVariable(name: "myUnion", scope: !149, file: !1, line: 112, type: !17)
!153 = !DILocation(line: 112, column: 68, scope: !149)
!154 = !DILocalVariable(name: "dataBuffer", scope: !149, file: !1, line: 113, type: !25)
!155 = !DILocation(line: 113, column: 10, scope: !149)
!156 = !DILocation(line: 114, column: 12, scope: !149)
!157 = !DILocation(line: 114, column: 10, scope: !149)
!158 = !DILocalVariable(name: "dataLen", scope: !159, file: !1, line: 117, type: !33)
!159 = distinct !DILexicalBlock(scope: !149, file: !1, line: 115, column: 5)
!160 = !DILocation(line: 117, column: 16, scope: !159)
!161 = !DILocation(line: 117, column: 33, scope: !159)
!162 = !DILocation(line: 117, column: 26, scope: !159)
!163 = !DILocalVariable(name: "environment", scope: !159, file: !1, line: 118, type: !13)
!164 = !DILocation(line: 118, column: 16, scope: !159)
!165 = !DILocation(line: 118, column: 30, scope: !159)
!166 = !DILocation(line: 120, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !1, line: 120, column: 13)
!168 = !DILocation(line: 120, column: 25, scope: !167)
!169 = !DILocation(line: 120, column: 13, scope: !159)
!170 = !DILocation(line: 123, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 121, column: 9)
!172 = !DILocation(line: 123, column: 26, scope: !171)
!173 = !DILocation(line: 123, column: 25, scope: !171)
!174 = !DILocation(line: 123, column: 35, scope: !171)
!175 = !DILocation(line: 123, column: 52, scope: !171)
!176 = !DILocation(line: 123, column: 51, scope: !171)
!177 = !DILocation(line: 123, column: 59, scope: !171)
!178 = !DILocation(line: 123, column: 13, scope: !171)
!179 = !DILocation(line: 124, column: 9, scope: !171)
!180 = !DILocation(line: 126, column: 26, scope: !149)
!181 = !DILocation(line: 126, column: 13, scope: !149)
!182 = !DILocation(line: 126, column: 24, scope: !149)
!183 = !DILocalVariable(name: "data", scope: !184, file: !1, line: 128, type: !13)
!184 = distinct !DILexicalBlock(scope: !149, file: !1, line: 127, column: 5)
!185 = !DILocation(line: 128, column: 16, scope: !184)
!186 = !DILocation(line: 128, column: 31, scope: !184)
!187 = !DILocalVariable(name: "i", scope: !188, file: !1, line: 130, type: !65)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 129, column: 9)
!189 = !DILocation(line: 130, column: 17, scope: !188)
!190 = !DILocalVariable(name: "n", scope: !188, file: !1, line: 130, type: !65)
!191 = !DILocation(line: 130, column: 20, scope: !188)
!192 = !DILocalVariable(name: "intVariable", scope: !188, file: !1, line: 130, type: !65)
!193 = !DILocation(line: 130, column: 23, scope: !188)
!194 = !DILocation(line: 131, column: 24, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !1, line: 131, column: 17)
!196 = !DILocation(line: 131, column: 17, scope: !195)
!197 = !DILocation(line: 131, column: 40, scope: !195)
!198 = !DILocation(line: 131, column: 17, scope: !188)
!199 = !DILocation(line: 134, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 134, column: 21)
!201 = distinct !DILexicalBlock(scope: !195, file: !1, line: 132, column: 13)
!202 = !DILocation(line: 134, column: 23, scope: !200)
!203 = !DILocation(line: 134, column: 21, scope: !201)
!204 = !DILocation(line: 136, column: 33, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 135, column: 17)
!206 = !DILocation(line: 137, column: 28, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !1, line: 137, column: 21)
!208 = !DILocation(line: 137, column: 26, scope: !207)
!209 = !DILocation(line: 137, column: 33, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 137, column: 21)
!211 = !DILocation(line: 137, column: 37, scope: !210)
!212 = !DILocation(line: 137, column: 35, scope: !210)
!213 = !DILocation(line: 137, column: 21, scope: !207)
!214 = !DILocation(line: 140, column: 36, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 138, column: 21)
!216 = !DILocation(line: 141, column: 21, scope: !215)
!217 = !DILocation(line: 137, column: 41, scope: !210)
!218 = !DILocation(line: 137, column: 21, scope: !210)
!219 = distinct !{!219, !213, !220, !93}
!220 = !DILocation(line: 141, column: 21, scope: !207)
!221 = !DILocation(line: 142, column: 34, scope: !205)
!222 = !DILocation(line: 142, column: 21, scope: !205)
!223 = !DILocation(line: 143, column: 17, scope: !205)
!224 = !DILocation(line: 144, column: 13, scope: !201)
!225 = !DILocation(line: 147, column: 1, scope: !149)
!226 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_34_good", scope: !1, file: !1, line: 149, type: !10, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!227 = !DILocation(line: 151, column: 5, scope: !226)
!228 = !DILocation(line: 152, column: 5, scope: !226)
!229 = !DILocation(line: 153, column: 1, scope: !226)
