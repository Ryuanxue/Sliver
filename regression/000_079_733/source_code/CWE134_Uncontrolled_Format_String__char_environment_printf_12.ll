; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_12.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad() #0 !dbg !9 {
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
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !23
  %tobool = icmp ne i32 %call, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call1, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !35, metadata !DIExpression()), !dbg !36
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call2, i8** %environment, align 8, !dbg !36
  %2 = load i8*, i8** %environment, align 8, !dbg !38
  %cmp = icmp ne i8* %2, null, !dbg !40
  br i1 %cmp, label %if.then3, label %if.end, !dbg !41

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !42
  %4 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !45
  %5 = load i8*, i8** %environment, align 8, !dbg !46
  %6 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub = sub i64 100, %6, !dbg !48
  %sub4 = sub i64 %sub, 1, !dbg !49
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !52

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %data, align 8, !dbg !53
  %call6 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !55
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %call8 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !56
  %tobool9 = icmp ne i32 %call8, 0, !dbg !56
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !58

if.then10:                                        ; preds = %if.end7
  %8 = load i8*, i8** %data, align 8, !dbg !59
  %call11 = call i32 (i8*, ...) @printf(i8* %8), !dbg !61
  br label %if.end14, !dbg !62

if.else12:                                        ; preds = %if.end7
  %9 = load i8*, i8** %data, align 8, !dbg !63
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !65
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  ret void, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !67 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataLen6 = alloca i64, align 8
  %environment8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !71
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !72
  store i8* %arraydecay, i8** %data, align 8, !dbg !73
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !74
  %tobool = icmp ne i32 %call, 0, !dbg !74
  br i1 %tobool, label %if.then, label %if.else, !dbg !76

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !77, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !82
  store i64 %call1, i64* %dataLen, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !83, metadata !DIExpression()), !dbg !84
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !85
  store i8* %call2, i8** %environment, align 8, !dbg !84
  %2 = load i8*, i8** %environment, align 8, !dbg !86
  %cmp = icmp ne i8* %2, null, !dbg !88
  br i1 %cmp, label %if.then3, label %if.end, !dbg !89

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !90
  %4 = load i64, i64* %dataLen, align 8, !dbg !92
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !93
  %5 = load i8*, i8** %environment, align 8, !dbg !94
  %6 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %6, !dbg !96
  %sub4 = sub i64 %sub, 1, !dbg !97
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end17, !dbg !100

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen6, metadata !101, metadata !DIExpression()), !dbg !104
  %7 = load i8*, i8** %data, align 8, !dbg !105
  %call7 = call i64 @strlen(i8* %7) #6, !dbg !106
  store i64 %call7, i64* %dataLen6, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata i8** %environment8, metadata !107, metadata !DIExpression()), !dbg !108
  %call9 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !109
  store i8* %call9, i8** %environment8, align 8, !dbg !108
  %8 = load i8*, i8** %environment8, align 8, !dbg !110
  %cmp10 = icmp ne i8* %8, null, !dbg !112
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !113

if.then11:                                        ; preds = %if.else
  %9 = load i8*, i8** %data, align 8, !dbg !114
  %10 = load i64, i64* %dataLen6, align 8, !dbg !116
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !117
  %11 = load i8*, i8** %environment8, align 8, !dbg !118
  %12 = load i64, i64* %dataLen6, align 8, !dbg !119
  %sub13 = sub i64 100, %12, !dbg !120
  %sub14 = sub i64 %sub13, 1, !dbg !121
  %call15 = call i8* @strncat(i8* %add.ptr12, i8* %11, i64 %sub14) #7, !dbg !122
  br label %if.end16, !dbg !123

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %call18 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !124
  %tobool19 = icmp ne i32 %call18, 0, !dbg !124
  br i1 %tobool19, label %if.then20, label %if.else22, !dbg !126

if.then20:                                        ; preds = %if.end17
  %13 = load i8*, i8** %data, align 8, !dbg !127
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %13), !dbg !129
  br label %if.end24, !dbg !130

if.else22:                                        ; preds = %if.end17
  %14 = load i8*, i8** %data, align 8, !dbg !131
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %14), !dbg !133
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
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
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !142
  %tobool = icmp ne i32 %call, 0, !dbg !142
  br i1 %tobool, label %if.then, label %if.else, !dbg !144

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !145
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !147
  br label %if.end, !dbg !148

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !149
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !151
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !152
  %tobool4 = icmp ne i32 %call3, 0, !dbg !152
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !154

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !155
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !157
  br label %if.end9, !dbg !158

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !159
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !161
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_12_good() #0 !dbg !163 {
entry:
  call void @goodB2G(), !dbg !164
  call void @goodG2B(), !dbg !165
  ret void, !dbg !166
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad", scope: !1, file: !1, line: 35, type: !10, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILocation(line: 40, column: 8, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 44, type: !29)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 42, column: 9)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 41, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 44, column: 20, scope: !27)
!33 = !DILocation(line: 44, column: 37, scope: !27)
!34 = !DILocation(line: 44, column: 30, scope: !27)
!35 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 45, type: !13)
!36 = !DILocation(line: 45, column: 20, scope: !27)
!37 = !DILocation(line: 45, column: 34, scope: !27)
!38 = !DILocation(line: 47, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !27, file: !1, line: 47, column: 17)
!40 = !DILocation(line: 47, column: 29, scope: !39)
!41 = !DILocation(line: 47, column: 17, scope: !27)
!42 = !DILocation(line: 50, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 48, column: 13)
!44 = !DILocation(line: 50, column: 30, scope: !43)
!45 = !DILocation(line: 50, column: 29, scope: !43)
!46 = !DILocation(line: 50, column: 39, scope: !43)
!47 = !DILocation(line: 50, column: 56, scope: !43)
!48 = !DILocation(line: 50, column: 55, scope: !43)
!49 = !DILocation(line: 50, column: 63, scope: !43)
!50 = !DILocation(line: 50, column: 17, scope: !43)
!51 = !DILocation(line: 51, column: 13, scope: !43)
!52 = !DILocation(line: 53, column: 5, scope: !28)
!53 = !DILocation(line: 57, column: 16, scope: !54)
!54 = distinct !DILexicalBlock(scope: !24, file: !1, line: 55, column: 5)
!55 = !DILocation(line: 57, column: 9, scope: !54)
!56 = !DILocation(line: 59, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 8)
!58 = !DILocation(line: 59, column: 8, scope: !9)
!59 = !DILocation(line: 62, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 60, column: 5)
!61 = !DILocation(line: 62, column: 9, scope: !60)
!62 = !DILocation(line: 63, column: 5, scope: !60)
!63 = !DILocation(line: 67, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 65, column: 5)
!65 = !DILocation(line: 67, column: 9, scope: !64)
!66 = !DILocation(line: 69, column: 1, scope: !9)
!67 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DILocalVariable(name: "data", scope: !67, file: !1, line: 80, type: !13)
!69 = !DILocation(line: 80, column: 12, scope: !67)
!70 = !DILocalVariable(name: "dataBuffer", scope: !67, file: !1, line: 81, type: !17)
!71 = !DILocation(line: 81, column: 10, scope: !67)
!72 = !DILocation(line: 82, column: 12, scope: !67)
!73 = !DILocation(line: 82, column: 10, scope: !67)
!74 = !DILocation(line: 83, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 83, column: 8)
!76 = !DILocation(line: 83, column: 8, scope: !67)
!77 = !DILocalVariable(name: "dataLen", scope: !78, file: !1, line: 87, type: !29)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 85, column: 9)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 84, column: 5)
!80 = !DILocation(line: 87, column: 20, scope: !78)
!81 = !DILocation(line: 87, column: 37, scope: !78)
!82 = !DILocation(line: 87, column: 30, scope: !78)
!83 = !DILocalVariable(name: "environment", scope: !78, file: !1, line: 88, type: !13)
!84 = !DILocation(line: 88, column: 20, scope: !78)
!85 = !DILocation(line: 88, column: 34, scope: !78)
!86 = !DILocation(line: 90, column: 17, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 90, column: 17)
!88 = !DILocation(line: 90, column: 29, scope: !87)
!89 = !DILocation(line: 90, column: 17, scope: !78)
!90 = !DILocation(line: 93, column: 25, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 91, column: 13)
!92 = !DILocation(line: 93, column: 30, scope: !91)
!93 = !DILocation(line: 93, column: 29, scope: !91)
!94 = !DILocation(line: 93, column: 39, scope: !91)
!95 = !DILocation(line: 93, column: 56, scope: !91)
!96 = !DILocation(line: 93, column: 55, scope: !91)
!97 = !DILocation(line: 93, column: 63, scope: !91)
!98 = !DILocation(line: 93, column: 17, scope: !91)
!99 = !DILocation(line: 94, column: 13, scope: !91)
!100 = !DILocation(line: 96, column: 5, scope: !79)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !1, line: 101, type: !29)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 99, column: 9)
!103 = distinct !DILexicalBlock(scope: !75, file: !1, line: 98, column: 5)
!104 = !DILocation(line: 101, column: 20, scope: !102)
!105 = !DILocation(line: 101, column: 37, scope: !102)
!106 = !DILocation(line: 101, column: 30, scope: !102)
!107 = !DILocalVariable(name: "environment", scope: !102, file: !1, line: 102, type: !13)
!108 = !DILocation(line: 102, column: 20, scope: !102)
!109 = !DILocation(line: 102, column: 34, scope: !102)
!110 = !DILocation(line: 104, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 104, column: 17)
!112 = !DILocation(line: 104, column: 29, scope: !111)
!113 = !DILocation(line: 104, column: 17, scope: !102)
!114 = !DILocation(line: 107, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 105, column: 13)
!116 = !DILocation(line: 107, column: 30, scope: !115)
!117 = !DILocation(line: 107, column: 29, scope: !115)
!118 = !DILocation(line: 107, column: 39, scope: !115)
!119 = !DILocation(line: 107, column: 56, scope: !115)
!120 = !DILocation(line: 107, column: 55, scope: !115)
!121 = !DILocation(line: 107, column: 63, scope: !115)
!122 = !DILocation(line: 107, column: 17, scope: !115)
!123 = !DILocation(line: 108, column: 13, scope: !115)
!124 = !DILocation(line: 111, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !67, file: !1, line: 111, column: 8)
!126 = !DILocation(line: 111, column: 8, scope: !67)
!127 = !DILocation(line: 114, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 112, column: 5)
!129 = !DILocation(line: 114, column: 9, scope: !128)
!130 = !DILocation(line: 115, column: 5, scope: !128)
!131 = !DILocation(line: 119, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 117, column: 5)
!133 = !DILocation(line: 119, column: 9, scope: !132)
!134 = !DILocation(line: 121, column: 1, scope: !67)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 126, type: !10, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", scope: !135, file: !1, line: 128, type: !13)
!137 = !DILocation(line: 128, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !1, line: 129, type: !17)
!139 = !DILocation(line: 129, column: 10, scope: !135)
!140 = !DILocation(line: 130, column: 12, scope: !135)
!141 = !DILocation(line: 130, column: 10, scope: !135)
!142 = !DILocation(line: 131, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 131, column: 8)
!144 = !DILocation(line: 131, column: 8, scope: !135)
!145 = !DILocation(line: 134, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 132, column: 5)
!147 = !DILocation(line: 134, column: 9, scope: !146)
!148 = !DILocation(line: 135, column: 5, scope: !146)
!149 = !DILocation(line: 139, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 137, column: 5)
!151 = !DILocation(line: 139, column: 9, scope: !150)
!152 = !DILocation(line: 141, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !135, file: !1, line: 141, column: 8)
!154 = !DILocation(line: 141, column: 8, scope: !135)
!155 = !DILocation(line: 144, column: 16, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 142, column: 5)
!157 = !DILocation(line: 144, column: 9, scope: !156)
!158 = !DILocation(line: 145, column: 5, scope: !156)
!159 = !DILocation(line: 149, column: 16, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !1, line: 147, column: 5)
!161 = !DILocation(line: 149, column: 9, scope: !160)
!162 = !DILocation(line: 151, column: 1, scope: !135)
!163 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_good", scope: !1, file: !1, line: 153, type: !10, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DILocation(line: 155, column: 5, scope: !163)
!165 = !DILocation(line: 156, column: 5, scope: !163)
!166 = !DILocation(line: 157, column: 1, scope: !163)
