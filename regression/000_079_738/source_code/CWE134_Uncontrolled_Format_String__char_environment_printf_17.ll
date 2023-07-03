; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_17.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad() #0 !dbg !9 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !44, metadata !DIExpression()), !dbg !45
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !46
  store i8* %call1, i8** %environment, align 8, !dbg !45
  %3 = load i8*, i8** %environment, align 8, !dbg !47
  %cmp2 = icmp ne i8* %3, null, !dbg !49
  br i1 %cmp2, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !51
  %5 = load i64, i64* %dataLen, align 8, !dbg !53
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !54
  %6 = load i8*, i8** %environment, align 8, !dbg !55
  %7 = load i64, i64* %dataLen, align 8, !dbg !56
  %sub = sub i64 100, %7, !dbg !57
  %sub3 = sub i64 %sub, 1, !dbg !58
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !62
  %inc = add nsw i32 %8, 1, !dbg !62
  store i32 %inc, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !67
  br label %for.cond5, !dbg !69

for.cond5:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %j, align 4, !dbg !70
  %cmp6 = icmp slt i32 %9, 1, !dbg !72
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !73

for.body7:                                        ; preds = %for.cond5
  %10 = load i8*, i8** %data, align 8, !dbg !74
  %call8 = call i32 (i8*, ...) @printf(i8* %10), !dbg !76
  br label %for.inc9, !dbg !77

for.inc9:                                         ; preds = %for.body7
  %11 = load i32, i32* %j, align 4, !dbg !78
  %inc10 = add nsw i32 %11, 1, !dbg !78
  store i32 %inc10, i32* %j, align 4, !dbg !78
  br label %for.cond5, !dbg !79, !llvm.loop !80

for.end11:                                        ; preds = %for.cond5
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

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !83 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %k, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !91
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !92
  store i8* %arraydecay, i8** %data, align 8, !dbg !93
  store i32 0, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !97
  %cmp = icmp slt i32 %1, 1, !dbg !99
  br i1 %cmp, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !104
  %2 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i64 @strlen(i8* %2) #6, !dbg !106
  store i64 %call, i64* %dataLen, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !107, metadata !DIExpression()), !dbg !108
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !109
  store i8* %call1, i8** %environment, align 8, !dbg !108
  %3 = load i8*, i8** %environment, align 8, !dbg !110
  %cmp2 = icmp ne i8* %3, null, !dbg !112
  br i1 %cmp2, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !114
  %5 = load i64, i64* %dataLen, align 8, !dbg !116
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !117
  %6 = load i8*, i8** %environment, align 8, !dbg !118
  %7 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub = sub i64 100, %7, !dbg !120
  %sub3 = sub i64 %sub, 1, !dbg !121
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !125
  %inc = add nsw i32 %8, 1, !dbg !125
  store i32 %inc, i32* %i, align 4, !dbg !125
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !129
  br label %for.cond5, !dbg !131

for.cond5:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %k, align 4, !dbg !132
  %cmp6 = icmp slt i32 %9, 1, !dbg !134
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !135

for.body7:                                        ; preds = %for.cond5
  %10 = load i8*, i8** %data, align 8, !dbg !136
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %10), !dbg !138
  br label %for.inc9, !dbg !139

for.inc9:                                         ; preds = %for.body7
  %11 = load i32, i32* %k, align 4, !dbg !140
  %inc10 = add nsw i32 %11, 1, !dbg !140
  store i32 %inc10, i32* %k, align 4, !dbg !140
  br label %for.cond5, !dbg !141, !llvm.loop !142

for.end11:                                        ; preds = %for.cond5
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !145 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %j, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %data, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !153
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !154
  store i8* %arraydecay, i8** %data, align 8, !dbg !155
  store i32 0, i32* %h, align 4, !dbg !156
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !159
  %cmp = icmp slt i32 %1, 1, !dbg !161
  br i1 %cmp, label %for.body, label %for.end, !dbg !162

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !165
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !167
  %inc = add nsw i32 %3, 1, !dbg !167
  store i32 %inc, i32* %h, align 4, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !171
  br label %for.cond1, !dbg !173

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !174
  %cmp2 = icmp slt i32 %4, 1, !dbg !176
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !177

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !178
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !180
  br label %for.inc5, !dbg !181

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !182
  %inc6 = add nsw i32 %6, 1, !dbg !182
  store i32 %inc6, i32* %j, align 4, !dbg !182
  br label %for.cond1, !dbg !183, !llvm.loop !184

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !186
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_17_good() #0 !dbg !187 {
entry:
  call void @goodB2G(), !dbg !188
  call void @goodG2B(), !dbg !189
  ret void, !dbg !190
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 37, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 37, column: 9, scope: !9)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 37, type: !13)
!16 = !DILocation(line: 37, column: 11, scope: !9)
!17 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 38, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 38, column: 12, scope: !9)
!21 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 39, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 39, column: 10, scope: !9)
!26 = !DILocation(line: 40, column: 12, scope: !9)
!27 = !DILocation(line: 40, column: 10, scope: !9)
!28 = !DILocation(line: 41, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 5)
!30 = !DILocation(line: 41, column: 9, scope: !29)
!31 = !DILocation(line: 41, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 5)
!33 = !DILocation(line: 41, column: 18, scope: !32)
!34 = !DILocation(line: 41, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 45, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 43, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 42, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 45, column: 20, scope: !36)
!42 = !DILocation(line: 45, column: 37, scope: !36)
!43 = !DILocation(line: 45, column: 30, scope: !36)
!44 = !DILocalVariable(name: "environment", scope: !36, file: !1, line: 46, type: !18)
!45 = !DILocation(line: 46, column: 20, scope: !36)
!46 = !DILocation(line: 46, column: 34, scope: !36)
!47 = !DILocation(line: 48, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !36, file: !1, line: 48, column: 17)
!49 = !DILocation(line: 48, column: 29, scope: !48)
!50 = !DILocation(line: 48, column: 17, scope: !36)
!51 = !DILocation(line: 51, column: 25, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 49, column: 13)
!53 = !DILocation(line: 51, column: 30, scope: !52)
!54 = !DILocation(line: 51, column: 29, scope: !52)
!55 = !DILocation(line: 51, column: 39, scope: !52)
!56 = !DILocation(line: 51, column: 56, scope: !52)
!57 = !DILocation(line: 51, column: 55, scope: !52)
!58 = !DILocation(line: 51, column: 63, scope: !52)
!59 = !DILocation(line: 51, column: 17, scope: !52)
!60 = !DILocation(line: 52, column: 13, scope: !52)
!61 = !DILocation(line: 54, column: 5, scope: !37)
!62 = !DILocation(line: 41, column: 24, scope: !32)
!63 = !DILocation(line: 41, column: 5, scope: !32)
!64 = distinct !{!64, !34, !65, !66}
!65 = !DILocation(line: 54, column: 5, scope: !29)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 55, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !9, file: !1, line: 55, column: 5)
!69 = !DILocation(line: 55, column: 9, scope: !68)
!70 = !DILocation(line: 55, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 55, column: 5)
!72 = !DILocation(line: 55, column: 18, scope: !71)
!73 = !DILocation(line: 55, column: 5, scope: !68)
!74 = !DILocation(line: 58, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 56, column: 5)
!76 = !DILocation(line: 58, column: 9, scope: !75)
!77 = !DILocation(line: 59, column: 5, scope: !75)
!78 = !DILocation(line: 55, column: 24, scope: !71)
!79 = !DILocation(line: 55, column: 5, scope: !71)
!80 = distinct !{!80, !73, !81, !66}
!81 = !DILocation(line: 59, column: 5, scope: !68)
!82 = !DILocation(line: 60, column: 1, scope: !9)
!83 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 67, type: !10, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "i", scope: !83, file: !1, line: 69, type: !13)
!85 = !DILocation(line: 69, column: 9, scope: !83)
!86 = !DILocalVariable(name: "k", scope: !83, file: !1, line: 69, type: !13)
!87 = !DILocation(line: 69, column: 11, scope: !83)
!88 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 70, type: !18)
!89 = !DILocation(line: 70, column: 12, scope: !83)
!90 = !DILocalVariable(name: "dataBuffer", scope: !83, file: !1, line: 71, type: !22)
!91 = !DILocation(line: 71, column: 10, scope: !83)
!92 = !DILocation(line: 72, column: 12, scope: !83)
!93 = !DILocation(line: 72, column: 10, scope: !83)
!94 = !DILocation(line: 73, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !1, line: 73, column: 5)
!96 = !DILocation(line: 73, column: 9, scope: !95)
!97 = !DILocation(line: 73, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 73, column: 5)
!99 = !DILocation(line: 73, column: 18, scope: !98)
!100 = !DILocation(line: 73, column: 5, scope: !95)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !1, line: 77, type: !38)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 75, column: 9)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 74, column: 5)
!104 = !DILocation(line: 77, column: 20, scope: !102)
!105 = !DILocation(line: 77, column: 37, scope: !102)
!106 = !DILocation(line: 77, column: 30, scope: !102)
!107 = !DILocalVariable(name: "environment", scope: !102, file: !1, line: 78, type: !18)
!108 = !DILocation(line: 78, column: 20, scope: !102)
!109 = !DILocation(line: 78, column: 34, scope: !102)
!110 = !DILocation(line: 80, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 80, column: 17)
!112 = !DILocation(line: 80, column: 29, scope: !111)
!113 = !DILocation(line: 80, column: 17, scope: !102)
!114 = !DILocation(line: 83, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 81, column: 13)
!116 = !DILocation(line: 83, column: 30, scope: !115)
!117 = !DILocation(line: 83, column: 29, scope: !115)
!118 = !DILocation(line: 83, column: 39, scope: !115)
!119 = !DILocation(line: 83, column: 56, scope: !115)
!120 = !DILocation(line: 83, column: 55, scope: !115)
!121 = !DILocation(line: 83, column: 63, scope: !115)
!122 = !DILocation(line: 83, column: 17, scope: !115)
!123 = !DILocation(line: 84, column: 13, scope: !115)
!124 = !DILocation(line: 86, column: 5, scope: !103)
!125 = !DILocation(line: 73, column: 24, scope: !98)
!126 = !DILocation(line: 73, column: 5, scope: !98)
!127 = distinct !{!127, !100, !128, !66}
!128 = !DILocation(line: 86, column: 5, scope: !95)
!129 = !DILocation(line: 87, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !83, file: !1, line: 87, column: 5)
!131 = !DILocation(line: 87, column: 9, scope: !130)
!132 = !DILocation(line: 87, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 87, column: 5)
!134 = !DILocation(line: 87, column: 18, scope: !133)
!135 = !DILocation(line: 87, column: 5, scope: !130)
!136 = !DILocation(line: 90, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 88, column: 5)
!138 = !DILocation(line: 90, column: 9, scope: !137)
!139 = !DILocation(line: 91, column: 5, scope: !137)
!140 = !DILocation(line: 87, column: 24, scope: !133)
!141 = !DILocation(line: 87, column: 5, scope: !133)
!142 = distinct !{!142, !135, !143, !66}
!143 = !DILocation(line: 91, column: 5, scope: !130)
!144 = !DILocation(line: 92, column: 1, scope: !83)
!145 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 95, type: !10, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!146 = !DILocalVariable(name: "h", scope: !145, file: !1, line: 97, type: !13)
!147 = !DILocation(line: 97, column: 9, scope: !145)
!148 = !DILocalVariable(name: "j", scope: !145, file: !1, line: 97, type: !13)
!149 = !DILocation(line: 97, column: 11, scope: !145)
!150 = !DILocalVariable(name: "data", scope: !145, file: !1, line: 98, type: !18)
!151 = !DILocation(line: 98, column: 12, scope: !145)
!152 = !DILocalVariable(name: "dataBuffer", scope: !145, file: !1, line: 99, type: !22)
!153 = !DILocation(line: 99, column: 10, scope: !145)
!154 = !DILocation(line: 100, column: 12, scope: !145)
!155 = !DILocation(line: 100, column: 10, scope: !145)
!156 = !DILocation(line: 101, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !1, line: 101, column: 5)
!158 = !DILocation(line: 101, column: 9, scope: !157)
!159 = !DILocation(line: 101, column: 16, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 101, column: 5)
!161 = !DILocation(line: 101, column: 18, scope: !160)
!162 = !DILocation(line: 101, column: 5, scope: !157)
!163 = !DILocation(line: 104, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 102, column: 5)
!165 = !DILocation(line: 104, column: 9, scope: !164)
!166 = !DILocation(line: 105, column: 5, scope: !164)
!167 = !DILocation(line: 101, column: 24, scope: !160)
!168 = !DILocation(line: 101, column: 5, scope: !160)
!169 = distinct !{!169, !162, !170, !66}
!170 = !DILocation(line: 105, column: 5, scope: !157)
!171 = !DILocation(line: 106, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !145, file: !1, line: 106, column: 5)
!173 = !DILocation(line: 106, column: 9, scope: !172)
!174 = !DILocation(line: 106, column: 16, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 106, column: 5)
!176 = !DILocation(line: 106, column: 18, scope: !175)
!177 = !DILocation(line: 106, column: 5, scope: !172)
!178 = !DILocation(line: 109, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 107, column: 5)
!180 = !DILocation(line: 109, column: 9, scope: !179)
!181 = !DILocation(line: 110, column: 5, scope: !179)
!182 = !DILocation(line: 106, column: 24, scope: !175)
!183 = !DILocation(line: 106, column: 5, scope: !175)
!184 = distinct !{!184, !177, !185, !66}
!185 = !DILocation(line: 110, column: 5, scope: !172)
!186 = !DILocation(line: 111, column: 1, scope: !145)
!187 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_17_good", scope: !1, file: !1, line: 113, type: !10, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!188 = !DILocation(line: 115, column: 5, scope: !187)
!189 = !DILocation(line: 116, column: 5, scope: !187)
!190 = !DILocation(line: 117, column: 1, scope: !187)
