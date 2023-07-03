; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_14.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_14_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  %1 = load i32, i32* @globalFive, align 4, !dbg !23
  %cmp = icmp eq i32 %1, 5, !dbg !25
  br i1 %cmp, label %if.then, label %if.end6, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %2 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %2) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !36, metadata !DIExpression()), !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !38
  store i8* %call1, i8** %environment, align 8, !dbg !37
  %3 = load i8*, i8** %environment, align 8, !dbg !39
  %cmp2 = icmp ne i8* %3, null, !dbg !41
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !42

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !43
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !46
  %6 = load i8*, i8** %environment, align 8, !dbg !47
  %7 = load i64, i64* %dataLen, align 8, !dbg !48
  %sub = sub i64 100, %7, !dbg !49
  %sub4 = sub i64 %sub, 1, !dbg !50
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !53

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !54
  %cmp7 = icmp eq i32 %8, 5, !dbg !56
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !57

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !58
  %call9 = call i32 (i8*, ...) @printf(i8* %9), !dbg !60
  br label %if.end10, !dbg !61

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !62
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
define dso_local void @goodB2G1() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  %1 = load i32, i32* @globalFive, align 4, !dbg !70
  %cmp = icmp eq i32 %1, 5, !dbg !72
  br i1 %cmp, label %if.then, label %if.end6, !dbg !73

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !74, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #6, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !80, metadata !DIExpression()), !dbg !81
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !82
  store i8* %call1, i8** %environment, align 8, !dbg !81
  %3 = load i8*, i8** %environment, align 8, !dbg !83
  %cmp2 = icmp ne i8* %3, null, !dbg !85
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !86

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !87
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !90
  %6 = load i8*, i8** %environment, align 8, !dbg !91
  %7 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %7, !dbg !93
  %sub4 = sub i64 %sub, 1, !dbg !94
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !97

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !98
  %cmp7 = icmp ne i32 %8, 5, !dbg !100
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !101

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  br label %if.end10, !dbg !104

if.else:                                          ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !105
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !107
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret void, !dbg !108
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !109 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !113
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !114
  store i8* %arraydecay, i8** %data, align 8, !dbg !115
  %1 = load i32, i32* @globalFive, align 4, !dbg !116
  %cmp = icmp eq i32 %1, 5, !dbg !118
  br i1 %cmp, label %if.then, label %if.end6, !dbg !119

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !120, metadata !DIExpression()), !dbg !123
  %2 = load i8*, i8** %data, align 8, !dbg !124
  %call = call i64 @strlen(i8* %2) #6, !dbg !125
  store i64 %call, i64* %dataLen, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !126, metadata !DIExpression()), !dbg !127
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !128
  store i8* %call1, i8** %environment, align 8, !dbg !127
  %3 = load i8*, i8** %environment, align 8, !dbg !129
  %cmp2 = icmp ne i8* %3, null, !dbg !131
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !132

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !133
  %5 = load i64, i64* %dataLen, align 8, !dbg !135
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !136
  %6 = load i8*, i8** %environment, align 8, !dbg !137
  %7 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %7, !dbg !139
  %sub4 = sub i64 %sub, 1, !dbg !140
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !141
  br label %if.end, !dbg !142

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !143

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !144
  %cmp7 = icmp eq i32 %8, 5, !dbg !146
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !147

if.then8:                                         ; preds = %if.end6
  %9 = load i8*, i8** %data, align 8, !dbg !148
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !150
  br label %if.end10, !dbg !151

if.end10:                                         ; preds = %if.then8, %if.end6
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !153 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  %1 = load i32, i32* @globalFive, align 4, !dbg !160
  %cmp = icmp ne i32 %1, 5, !dbg !162
  br i1 %cmp, label %if.then, label %if.else, !dbg !163

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !164
  br label %if.end, !dbg !166

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !167
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !169
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !170
  %cmp1 = icmp eq i32 %3, 5, !dbg !172
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !173

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !174
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !176
  br label %if.end4, !dbg !177

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !178
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !179 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !183
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !184
  store i8* %arraydecay, i8** %data, align 8, !dbg !185
  %1 = load i32, i32* @globalFive, align 4, !dbg !186
  %cmp = icmp eq i32 %1, 5, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !190
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !194
  %cmp1 = icmp eq i32 %3, 5, !dbg !196
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !197

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !198
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !200
  br label %if.end4, !dbg !201

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_14_good() #0 !dbg !203 {
entry:
  call void @goodB2G1(), !dbg !204
  call void @goodB2G2(), !dbg !205
  call void @goodG2B1(), !dbg !206
  call void @goodG2B2(), !dbg !207
  ret void, !dbg !208
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_735/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_14_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 37, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 37, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 38, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 38, column: 10, scope: !9)
!21 = !DILocation(line: 39, column: 12, scope: !9)
!22 = !DILocation(line: 39, column: 10, scope: !9)
!23 = !DILocation(line: 40, column: 8, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 8)
!25 = !DILocation(line: 40, column: 18, scope: !24)
!26 = !DILocation(line: 40, column: 8, scope: !9)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 44, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 42, column: 9)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 41, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 44, column: 20, scope: !28)
!34 = !DILocation(line: 44, column: 37, scope: !28)
!35 = !DILocation(line: 44, column: 30, scope: !28)
!36 = !DILocalVariable(name: "environment", scope: !28, file: !1, line: 45, type: !13)
!37 = !DILocation(line: 45, column: 20, scope: !28)
!38 = !DILocation(line: 45, column: 34, scope: !28)
!39 = !DILocation(line: 47, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !28, file: !1, line: 47, column: 17)
!41 = !DILocation(line: 47, column: 29, scope: !40)
!42 = !DILocation(line: 47, column: 17, scope: !28)
!43 = !DILocation(line: 50, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 48, column: 13)
!45 = !DILocation(line: 50, column: 30, scope: !44)
!46 = !DILocation(line: 50, column: 29, scope: !44)
!47 = !DILocation(line: 50, column: 39, scope: !44)
!48 = !DILocation(line: 50, column: 56, scope: !44)
!49 = !DILocation(line: 50, column: 55, scope: !44)
!50 = !DILocation(line: 50, column: 63, scope: !44)
!51 = !DILocation(line: 50, column: 17, scope: !44)
!52 = !DILocation(line: 51, column: 13, scope: !44)
!53 = !DILocation(line: 53, column: 5, scope: !29)
!54 = !DILocation(line: 54, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 8)
!56 = !DILocation(line: 54, column: 18, scope: !55)
!57 = !DILocation(line: 54, column: 8, scope: !9)
!58 = !DILocation(line: 57, column: 16, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 55, column: 5)
!60 = !DILocation(line: 57, column: 9, scope: !59)
!61 = !DILocation(line: 58, column: 5, scope: !59)
!62 = !DILocation(line: 59, column: 1, scope: !9)
!63 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 66, type: !10, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocalVariable(name: "data", scope: !63, file: !1, line: 68, type: !13)
!65 = !DILocation(line: 68, column: 12, scope: !63)
!66 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !1, line: 69, type: !17)
!67 = !DILocation(line: 69, column: 10, scope: !63)
!68 = !DILocation(line: 70, column: 12, scope: !63)
!69 = !DILocation(line: 70, column: 10, scope: !63)
!70 = !DILocation(line: 71, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 71, column: 8)
!72 = !DILocation(line: 71, column: 18, scope: !71)
!73 = !DILocation(line: 71, column: 8, scope: !63)
!74 = !DILocalVariable(name: "dataLen", scope: !75, file: !1, line: 75, type: !30)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 73, column: 9)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 72, column: 5)
!77 = !DILocation(line: 75, column: 20, scope: !75)
!78 = !DILocation(line: 75, column: 37, scope: !75)
!79 = !DILocation(line: 75, column: 30, scope: !75)
!80 = !DILocalVariable(name: "environment", scope: !75, file: !1, line: 76, type: !13)
!81 = !DILocation(line: 76, column: 20, scope: !75)
!82 = !DILocation(line: 76, column: 34, scope: !75)
!83 = !DILocation(line: 78, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 78, column: 17)
!85 = !DILocation(line: 78, column: 29, scope: !84)
!86 = !DILocation(line: 78, column: 17, scope: !75)
!87 = !DILocation(line: 81, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 79, column: 13)
!89 = !DILocation(line: 81, column: 30, scope: !88)
!90 = !DILocation(line: 81, column: 29, scope: !88)
!91 = !DILocation(line: 81, column: 39, scope: !88)
!92 = !DILocation(line: 81, column: 56, scope: !88)
!93 = !DILocation(line: 81, column: 55, scope: !88)
!94 = !DILocation(line: 81, column: 63, scope: !88)
!95 = !DILocation(line: 81, column: 17, scope: !88)
!96 = !DILocation(line: 82, column: 13, scope: !88)
!97 = !DILocation(line: 84, column: 5, scope: !76)
!98 = !DILocation(line: 85, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !63, file: !1, line: 85, column: 8)
!100 = !DILocation(line: 85, column: 18, scope: !99)
!101 = !DILocation(line: 85, column: 8, scope: !63)
!102 = !DILocation(line: 88, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 86, column: 5)
!104 = !DILocation(line: 89, column: 5, scope: !103)
!105 = !DILocation(line: 93, column: 24, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 91, column: 5)
!107 = !DILocation(line: 93, column: 9, scope: !106)
!108 = !DILocation(line: 95, column: 1, scope: !63)
!109 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 98, type: !10, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "data", scope: !109, file: !1, line: 100, type: !13)
!111 = !DILocation(line: 100, column: 12, scope: !109)
!112 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !1, line: 101, type: !17)
!113 = !DILocation(line: 101, column: 10, scope: !109)
!114 = !DILocation(line: 102, column: 12, scope: !109)
!115 = !DILocation(line: 102, column: 10, scope: !109)
!116 = !DILocation(line: 103, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 103, column: 8)
!118 = !DILocation(line: 103, column: 18, scope: !117)
!119 = !DILocation(line: 103, column: 8, scope: !109)
!120 = !DILocalVariable(name: "dataLen", scope: !121, file: !1, line: 107, type: !30)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 105, column: 9)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 104, column: 5)
!123 = !DILocation(line: 107, column: 20, scope: !121)
!124 = !DILocation(line: 107, column: 37, scope: !121)
!125 = !DILocation(line: 107, column: 30, scope: !121)
!126 = !DILocalVariable(name: "environment", scope: !121, file: !1, line: 108, type: !13)
!127 = !DILocation(line: 108, column: 20, scope: !121)
!128 = !DILocation(line: 108, column: 34, scope: !121)
!129 = !DILocation(line: 110, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !121, file: !1, line: 110, column: 17)
!131 = !DILocation(line: 110, column: 29, scope: !130)
!132 = !DILocation(line: 110, column: 17, scope: !121)
!133 = !DILocation(line: 113, column: 25, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 111, column: 13)
!135 = !DILocation(line: 113, column: 30, scope: !134)
!136 = !DILocation(line: 113, column: 29, scope: !134)
!137 = !DILocation(line: 113, column: 39, scope: !134)
!138 = !DILocation(line: 113, column: 56, scope: !134)
!139 = !DILocation(line: 113, column: 55, scope: !134)
!140 = !DILocation(line: 113, column: 63, scope: !134)
!141 = !DILocation(line: 113, column: 17, scope: !134)
!142 = !DILocation(line: 114, column: 13, scope: !134)
!143 = !DILocation(line: 116, column: 5, scope: !122)
!144 = !DILocation(line: 117, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !109, file: !1, line: 117, column: 8)
!146 = !DILocation(line: 117, column: 18, scope: !145)
!147 = !DILocation(line: 117, column: 8, scope: !109)
!148 = !DILocation(line: 120, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 118, column: 5)
!150 = !DILocation(line: 120, column: 9, scope: !149)
!151 = !DILocation(line: 121, column: 5, scope: !149)
!152 = !DILocation(line: 122, column: 1, scope: !109)
!153 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DILocalVariable(name: "data", scope: !153, file: !1, line: 127, type: !13)
!155 = !DILocation(line: 127, column: 12, scope: !153)
!156 = !DILocalVariable(name: "dataBuffer", scope: !153, file: !1, line: 128, type: !17)
!157 = !DILocation(line: 128, column: 10, scope: !153)
!158 = !DILocation(line: 129, column: 12, scope: !153)
!159 = !DILocation(line: 129, column: 10, scope: !153)
!160 = !DILocation(line: 130, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !1, line: 130, column: 8)
!162 = !DILocation(line: 130, column: 18, scope: !161)
!163 = !DILocation(line: 130, column: 8, scope: !153)
!164 = !DILocation(line: 133, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 131, column: 5)
!166 = !DILocation(line: 134, column: 5, scope: !165)
!167 = !DILocation(line: 138, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !1, line: 136, column: 5)
!169 = !DILocation(line: 138, column: 9, scope: !168)
!170 = !DILocation(line: 140, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !1, line: 140, column: 8)
!172 = !DILocation(line: 140, column: 18, scope: !171)
!173 = !DILocation(line: 140, column: 8, scope: !153)
!174 = !DILocation(line: 143, column: 16, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 141, column: 5)
!176 = !DILocation(line: 143, column: 9, scope: !175)
!177 = !DILocation(line: 144, column: 5, scope: !175)
!178 = !DILocation(line: 145, column: 1, scope: !153)
!179 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 148, type: !10, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DILocalVariable(name: "data", scope: !179, file: !1, line: 150, type: !13)
!181 = !DILocation(line: 150, column: 12, scope: !179)
!182 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !1, line: 151, type: !17)
!183 = !DILocation(line: 151, column: 10, scope: !179)
!184 = !DILocation(line: 152, column: 12, scope: !179)
!185 = !DILocation(line: 152, column: 10, scope: !179)
!186 = !DILocation(line: 153, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !1, line: 153, column: 8)
!188 = !DILocation(line: 153, column: 18, scope: !187)
!189 = !DILocation(line: 153, column: 8, scope: !179)
!190 = !DILocation(line: 156, column: 16, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 154, column: 5)
!192 = !DILocation(line: 156, column: 9, scope: !191)
!193 = !DILocation(line: 157, column: 5, scope: !191)
!194 = !DILocation(line: 158, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !179, file: !1, line: 158, column: 8)
!196 = !DILocation(line: 158, column: 18, scope: !195)
!197 = !DILocation(line: 158, column: 8, scope: !179)
!198 = !DILocation(line: 161, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 159, column: 5)
!200 = !DILocation(line: 161, column: 9, scope: !199)
!201 = !DILocation(line: 162, column: 5, scope: !199)
!202 = !DILocation(line: 163, column: 1, scope: !179)
!203 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_14_good", scope: !1, file: !1, line: 165, type: !10, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!204 = !DILocation(line: 167, column: 5, scope: !203)
!205 = !DILocation(line: 168, column: 5, scope: !203)
!206 = !DILocation(line: 169, column: 5, scope: !203)
!207 = !DILocation(line: 170, column: 5, scope: !203)
!208 = !DILocation(line: 171, column: 1, scope: !203)
