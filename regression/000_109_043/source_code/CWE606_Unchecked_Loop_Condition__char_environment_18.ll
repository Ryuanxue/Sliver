; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_18.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_18_bad() #0 !dbg !9 {
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
  br label %source, !dbg !23

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !34, metadata !DIExpression()), !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !36
  store i8* %call1, i8** %environment, align 8, !dbg !35
  %2 = load i8*, i8** %environment, align 8, !dbg !37
  %cmp = icmp ne i8* %2, null, !dbg !39
  br i1 %cmp, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !41
  %4 = load i64, i64* %dataLen, align 8, !dbg !43
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !44
  %5 = load i8*, i8** %environment, align 8, !dbg !45
  %6 = load i64, i64* %dataLen, align 8, !dbg !46
  %sub = sub i64 100, %6, !dbg !47
  %sub2 = sub i64 %sub, 1, !dbg !48
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !49
  br label %if.end, !dbg !50

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !51

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !52), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %n, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !60, metadata !DIExpression()), !dbg !61
  %7 = load i8*, i8** %data, align 8, !dbg !62
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !64
  %cmp5 = icmp eq i32 %call4, 1, !dbg !65
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !66

if.then6:                                         ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !69
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !72
  %9 = load i32, i32* %n, align 4, !dbg !74
  %cmp7 = icmp slt i32 %8, %9, !dbg !75
  br i1 %cmp7, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !77
  %inc = add nsw i32 %10, 1, !dbg !77
  store i32 %inc, i32* %intVariable, align 4, !dbg !77
  br label %for.inc, !dbg !79

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !80
  %inc8 = add nsw i32 %11, 1, !dbg !80
  store i32 %inc8, i32* %i, align 4, !dbg !80
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !85
  call void @printIntLine(i32 %12), !dbg !86
  br label %if.end9, !dbg !87

if.end9:                                          ; preds = %for.end, %sink
  ret void, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
  br label %source, !dbg !96

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !97), !dbg !98
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !99, metadata !DIExpression()), !dbg !101
  %1 = load i8*, i8** %data, align 8, !dbg !102
  %call = call i64 @strlen(i8* %1) #6, !dbg !103
  store i64 %call, i64* %dataLen, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !104, metadata !DIExpression()), !dbg !105
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !106
  store i8* %call1, i8** %environment, align 8, !dbg !105
  %2 = load i8*, i8** %environment, align 8, !dbg !107
  %cmp = icmp ne i8* %2, null, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !111
  %4 = load i64, i64* %dataLen, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !114
  %5 = load i8*, i8** %environment, align 8, !dbg !115
  %6 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub = sub i64 100, %6, !dbg !117
  %sub2 = sub i64 %sub, 1, !dbg !118
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then, %source
  br label %sink, !dbg !121

sink:                                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !122), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %n, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !129, metadata !DIExpression()), !dbg !130
  %7 = load i8*, i8** %data, align 8, !dbg !131
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !133
  %cmp5 = icmp eq i32 %call4, 1, !dbg !134
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !135

if.then6:                                         ; preds = %sink
  %8 = load i32, i32* %n, align 4, !dbg !136
  %cmp7 = icmp slt i32 %8, 10000, !dbg !139
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !140

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !141
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !146
  %10 = load i32, i32* %n, align 4, !dbg !148
  %cmp9 = icmp slt i32 %9, %10, !dbg !149
  br i1 %cmp9, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !151
  %inc = add nsw i32 %11, 1, !dbg !151
  store i32 %inc, i32* %intVariable, align 4, !dbg !151
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !154
  %inc10 = add nsw i32 %12, 1, !dbg !154
  store i32 %inc10, i32* %i, align 4, !dbg !154
  br label %for.cond, !dbg !155, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !158
  call void @printIntLine(i32 %13), !dbg !159
  br label %if.end11, !dbg !160

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !161

if.end12:                                         ; preds = %if.end11, %sink
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
  br label %source, !dbg !170

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !171), !dbg !172
  %1 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !174
  br label %sink, !dbg !175

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !176), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %n, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !183, metadata !DIExpression()), !dbg !184
  %2 = load i8*, i8** %data, align 8, !dbg !185
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !187
  %cmp = icmp eq i32 %call1, 1, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !190
  store i32 0, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !194

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !195
  %4 = load i32, i32* %n, align 4, !dbg !197
  %cmp2 = icmp slt i32 %3, %4, !dbg !198
  br i1 %cmp2, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !200
  %inc = add nsw i32 %5, 1, !dbg !200
  store i32 %inc, i32* %intVariable, align 4, !dbg !200
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !203
  %inc3 = add nsw i32 %6, 1, !dbg !203
  store i32 %inc3, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !207
  call void @printIntLine(i32 %7), !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !210
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_18_good() #0 !dbg !211 {
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_043/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_18_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILabel(scope: !9, name: "source", file: !1, line: 43)
!25 = !DILocation(line: 43, column: 1, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 46, type: !28)
!27 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 46, column: 16, scope: !27)
!32 = !DILocation(line: 46, column: 33, scope: !27)
!33 = !DILocation(line: 46, column: 26, scope: !27)
!34 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 47, type: !13)
!35 = !DILocation(line: 47, column: 16, scope: !27)
!36 = !DILocation(line: 47, column: 30, scope: !27)
!37 = !DILocation(line: 49, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !27, file: !1, line: 49, column: 13)
!39 = !DILocation(line: 49, column: 25, scope: !38)
!40 = !DILocation(line: 49, column: 13, scope: !27)
!41 = !DILocation(line: 52, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 50, column: 9)
!43 = !DILocation(line: 52, column: 26, scope: !42)
!44 = !DILocation(line: 52, column: 25, scope: !42)
!45 = !DILocation(line: 52, column: 35, scope: !42)
!46 = !DILocation(line: 52, column: 52, scope: !42)
!47 = !DILocation(line: 52, column: 51, scope: !42)
!48 = !DILocation(line: 52, column: 59, scope: !42)
!49 = !DILocation(line: 52, column: 13, scope: !42)
!50 = !DILocation(line: 53, column: 9, scope: !42)
!51 = !DILocation(line: 55, column: 5, scope: !9)
!52 = !DILabel(scope: !9, name: "sink", file: !1, line: 56)
!53 = !DILocation(line: 56, column: 1, scope: !9)
!54 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 58, type: !56)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 5)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DILocation(line: 58, column: 13, scope: !55)
!58 = !DILocalVariable(name: "n", scope: !55, file: !1, line: 58, type: !56)
!59 = !DILocation(line: 58, column: 16, scope: !55)
!60 = !DILocalVariable(name: "intVariable", scope: !55, file: !1, line: 58, type: !56)
!61 = !DILocation(line: 58, column: 19, scope: !55)
!62 = !DILocation(line: 59, column: 20, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 59, column: 13)
!64 = !DILocation(line: 59, column: 13, scope: !63)
!65 = !DILocation(line: 59, column: 36, scope: !63)
!66 = !DILocation(line: 59, column: 13, scope: !55)
!67 = !DILocation(line: 62, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 60, column: 9)
!69 = !DILocation(line: 63, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !68, file: !1, line: 63, column: 13)
!71 = !DILocation(line: 63, column: 18, scope: !70)
!72 = !DILocation(line: 63, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 63, column: 13)
!74 = !DILocation(line: 63, column: 29, scope: !73)
!75 = !DILocation(line: 63, column: 27, scope: !73)
!76 = !DILocation(line: 63, column: 13, scope: !70)
!77 = !DILocation(line: 66, column: 28, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 64, column: 13)
!79 = !DILocation(line: 67, column: 13, scope: !78)
!80 = !DILocation(line: 63, column: 33, scope: !73)
!81 = !DILocation(line: 63, column: 13, scope: !73)
!82 = distinct !{!82, !76, !83, !84}
!83 = !DILocation(line: 67, column: 13, scope: !70)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 68, column: 26, scope: !68)
!86 = !DILocation(line: 68, column: 13, scope: !68)
!87 = !DILocation(line: 69, column: 9, scope: !68)
!88 = !DILocation(line: 71, column: 1, scope: !9)
!89 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", scope: !89, file: !1, line: 80, type: !13)
!91 = !DILocation(line: 80, column: 12, scope: !89)
!92 = !DILocalVariable(name: "dataBuffer", scope: !89, file: !1, line: 81, type: !17)
!93 = !DILocation(line: 81, column: 10, scope: !89)
!94 = !DILocation(line: 82, column: 12, scope: !89)
!95 = !DILocation(line: 82, column: 10, scope: !89)
!96 = !DILocation(line: 83, column: 5, scope: !89)
!97 = !DILabel(scope: !89, name: "source", file: !1, line: 84)
!98 = !DILocation(line: 84, column: 1, scope: !89)
!99 = !DILocalVariable(name: "dataLen", scope: !100, file: !1, line: 87, type: !28)
!100 = distinct !DILexicalBlock(scope: !89, file: !1, line: 85, column: 5)
!101 = !DILocation(line: 87, column: 16, scope: !100)
!102 = !DILocation(line: 87, column: 33, scope: !100)
!103 = !DILocation(line: 87, column: 26, scope: !100)
!104 = !DILocalVariable(name: "environment", scope: !100, file: !1, line: 88, type: !13)
!105 = !DILocation(line: 88, column: 16, scope: !100)
!106 = !DILocation(line: 88, column: 30, scope: !100)
!107 = !DILocation(line: 90, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 90, column: 13)
!109 = !DILocation(line: 90, column: 25, scope: !108)
!110 = !DILocation(line: 90, column: 13, scope: !100)
!111 = !DILocation(line: 93, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 91, column: 9)
!113 = !DILocation(line: 93, column: 26, scope: !112)
!114 = !DILocation(line: 93, column: 25, scope: !112)
!115 = !DILocation(line: 93, column: 35, scope: !112)
!116 = !DILocation(line: 93, column: 52, scope: !112)
!117 = !DILocation(line: 93, column: 51, scope: !112)
!118 = !DILocation(line: 93, column: 59, scope: !112)
!119 = !DILocation(line: 93, column: 13, scope: !112)
!120 = !DILocation(line: 94, column: 9, scope: !112)
!121 = !DILocation(line: 96, column: 5, scope: !89)
!122 = !DILabel(scope: !89, name: "sink", file: !1, line: 97)
!123 = !DILocation(line: 97, column: 1, scope: !89)
!124 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 99, type: !56)
!125 = distinct !DILexicalBlock(scope: !89, file: !1, line: 98, column: 5)
!126 = !DILocation(line: 99, column: 13, scope: !125)
!127 = !DILocalVariable(name: "n", scope: !125, file: !1, line: 99, type: !56)
!128 = !DILocation(line: 99, column: 16, scope: !125)
!129 = !DILocalVariable(name: "intVariable", scope: !125, file: !1, line: 99, type: !56)
!130 = !DILocation(line: 99, column: 19, scope: !125)
!131 = !DILocation(line: 100, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 100, column: 13)
!133 = !DILocation(line: 100, column: 13, scope: !132)
!134 = !DILocation(line: 100, column: 36, scope: !132)
!135 = !DILocation(line: 100, column: 13, scope: !125)
!136 = !DILocation(line: 103, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 103, column: 17)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 101, column: 9)
!139 = !DILocation(line: 103, column: 19, scope: !137)
!140 = !DILocation(line: 103, column: 17, scope: !138)
!141 = !DILocation(line: 105, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 104, column: 13)
!143 = !DILocation(line: 106, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !1, line: 106, column: 17)
!145 = !DILocation(line: 106, column: 22, scope: !144)
!146 = !DILocation(line: 106, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 106, column: 17)
!148 = !DILocation(line: 106, column: 33, scope: !147)
!149 = !DILocation(line: 106, column: 31, scope: !147)
!150 = !DILocation(line: 106, column: 17, scope: !144)
!151 = !DILocation(line: 109, column: 32, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 107, column: 17)
!153 = !DILocation(line: 110, column: 17, scope: !152)
!154 = !DILocation(line: 106, column: 37, scope: !147)
!155 = !DILocation(line: 106, column: 17, scope: !147)
!156 = distinct !{!156, !150, !157, !84}
!157 = !DILocation(line: 110, column: 17, scope: !144)
!158 = !DILocation(line: 111, column: 30, scope: !142)
!159 = !DILocation(line: 111, column: 17, scope: !142)
!160 = !DILocation(line: 112, column: 13, scope: !142)
!161 = !DILocation(line: 113, column: 9, scope: !138)
!162 = !DILocation(line: 115, column: 1, scope: !89)
!163 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 118, type: !10, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DILocalVariable(name: "data", scope: !163, file: !1, line: 120, type: !13)
!165 = !DILocation(line: 120, column: 12, scope: !163)
!166 = !DILocalVariable(name: "dataBuffer", scope: !163, file: !1, line: 121, type: !17)
!167 = !DILocation(line: 121, column: 10, scope: !163)
!168 = !DILocation(line: 122, column: 12, scope: !163)
!169 = !DILocation(line: 122, column: 10, scope: !163)
!170 = !DILocation(line: 123, column: 5, scope: !163)
!171 = !DILabel(scope: !163, name: "source", file: !1, line: 124)
!172 = !DILocation(line: 124, column: 1, scope: !163)
!173 = !DILocation(line: 126, column: 12, scope: !163)
!174 = !DILocation(line: 126, column: 5, scope: !163)
!175 = !DILocation(line: 127, column: 5, scope: !163)
!176 = !DILabel(scope: !163, name: "sink", file: !1, line: 128)
!177 = !DILocation(line: 128, column: 1, scope: !163)
!178 = !DILocalVariable(name: "i", scope: !179, file: !1, line: 130, type: !56)
!179 = distinct !DILexicalBlock(scope: !163, file: !1, line: 129, column: 5)
!180 = !DILocation(line: 130, column: 13, scope: !179)
!181 = !DILocalVariable(name: "n", scope: !179, file: !1, line: 130, type: !56)
!182 = !DILocation(line: 130, column: 16, scope: !179)
!183 = !DILocalVariable(name: "intVariable", scope: !179, file: !1, line: 130, type: !56)
!184 = !DILocation(line: 130, column: 19, scope: !179)
!185 = !DILocation(line: 131, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !1, line: 131, column: 13)
!187 = !DILocation(line: 131, column: 13, scope: !186)
!188 = !DILocation(line: 131, column: 36, scope: !186)
!189 = !DILocation(line: 131, column: 13, scope: !179)
!190 = !DILocation(line: 134, column: 25, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 132, column: 9)
!192 = !DILocation(line: 135, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !1, line: 135, column: 13)
!194 = !DILocation(line: 135, column: 18, scope: !193)
!195 = !DILocation(line: 135, column: 25, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 135, column: 13)
!197 = !DILocation(line: 135, column: 29, scope: !196)
!198 = !DILocation(line: 135, column: 27, scope: !196)
!199 = !DILocation(line: 135, column: 13, scope: !193)
!200 = !DILocation(line: 138, column: 28, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 136, column: 13)
!202 = !DILocation(line: 139, column: 13, scope: !201)
!203 = !DILocation(line: 135, column: 33, scope: !196)
!204 = !DILocation(line: 135, column: 13, scope: !196)
!205 = distinct !{!205, !199, !206, !84}
!206 = !DILocation(line: 139, column: 13, scope: !193)
!207 = !DILocation(line: 140, column: 26, scope: !191)
!208 = !DILocation(line: 140, column: 13, scope: !191)
!209 = !DILocation(line: 141, column: 9, scope: !191)
!210 = !DILocation(line: 143, column: 1, scope: !163)
!211 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_18_good", scope: !1, file: !1, line: 145, type: !10, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocation(line: 147, column: 5, scope: !211)
!213 = !DILocation(line: 148, column: 5, scope: !211)
!214 = !DILocation(line: 149, column: 1, scope: !211)
