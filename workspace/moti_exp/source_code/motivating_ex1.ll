; ModuleID = 'motivating_ex1.c'
source_filename = "motivating_ex1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@sensitive_data = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dummy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @copy(i8* %dest, i8* %src) #0 !dbg !14 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %dest.addr, align 8, !dbg !22
  %1 = load i8*, i8** %src.addr, align 8, !dbg !23
  %call = call i8* @strcpy(i8* %0, i8* %1) #5, !dbg !24
  ret i8* %call, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass() #0 !dbg !26 {
entry:
  call void @sink_mtd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sink_mtd(i8* %cmd) #0 !dbg !31 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cmd.addr, metadata !34, metadata !DIExpression()), !dbg !35
  %0 = load i8*, i8** %cmd.addr, align 8, !dbg !36
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0)), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fail() #0 !dbg !39 {
entry:
  call void @sink_mtd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  ret void, !dbg !41
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op(i8* (i8*, i8*)* %str_op, i8* %data) #0 !dbg !42 {
entry:
  %str_op.addr = alloca i8* (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i8* (i8*, i8*)* %str_op, i8* (i8*, i8*)** %str_op.addr, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*)** %str_op.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !48, metadata !DIExpression()), !dbg !49
  %0 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %str_op.addr, align 8, !dbg !50
  %1 = load i8*, i8** %data.addr, align 8, !dbg !51
  %call = call i8* %0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0), i8* %1), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth(i8* %buf) #0 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !60
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !62
  %tobool = icmp ne i32 %call, 0, !dbg !62
  br i1 %tobool, label %if.end, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  call void @op(i8* (i8*, i8*)* @copy, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !64
  store i32 1, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !67
  br label %return, !dbg !67

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %1, !dbg !68
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummy() #0 !dbg !69 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main(i32 %argc, i8** %argv) #0 !dbg !72 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %auth_ret = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %auth_ret, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !82
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !82
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !82
  %call = call i32 @auth(i8* %1), !dbg !83
  store i32 %call, i32* %auth_ret, align 4, !dbg !81
  %2 = load i32, i32* %auth_ret, align 4, !dbg !84
  %tobool = icmp ne i32 %2, 0, !dbg !84
  br i1 %tobool, label %if.then, label %if.else, !dbg !86

if.then:                                          ; preds = %entry
  call void @dummy(), !dbg !87
  call void @pass(), !dbg !89
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  call void @fail(), !dbg !91
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !93
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sensitive_data", scope: !2, file: !3, line: 5, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "motivating_ex1.c", directory: "/home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/source_code")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 20)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 12.0.0"}
!14 = distinct !DISubprogram(name: "copy", scope: !3, file: !3, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!18 = !DILocalVariable(name: "dest", arg: 1, scope: !14, file: !3, line: 7, type: !17)
!19 = !DILocation(line: 7, column: 18, scope: !14)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !14, file: !3, line: 7, type: !17)
!21 = !DILocation(line: 7, column: 31, scope: !14)
!22 = !DILocation(line: 8, column: 16, scope: !14)
!23 = !DILocation(line: 8, column: 22, scope: !14)
!24 = !DILocation(line: 8, column: 9, scope: !14)
!25 = !DILocation(line: 8, column: 2, scope: !14)
!26 = distinct !DISubprogram(name: "pass", scope: !3, file: !3, line: 11, type: !27, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{null}
!29 = !DILocation(line: 12, column: 2, scope: !26)
!30 = !DILocation(line: 13, column: 1, scope: !26)
!31 = distinct !DISubprogram(name: "sink_mtd", scope: !3, file: !3, line: 17, type: !32, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !17}
!34 = !DILocalVariable(name: "cmd", arg: 1, scope: !31, file: !3, line: 17, type: !17)
!35 = !DILocation(line: 17, column: 21, scope: !31)
!36 = !DILocation(line: 18, column: 23, scope: !31)
!37 = !DILocation(line: 18, column: 5, scope: !31)
!38 = !DILocation(line: 19, column: 1, scope: !31)
!39 = distinct !DISubprogram(name: "fail", scope: !3, file: !3, line: 14, type: !27, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!40 = !DILocation(line: 15, column: 2, scope: !39)
!41 = !DILocation(line: 16, column: 1, scope: !39)
!42 = distinct !DISubprogram(name: "op", scope: !3, file: !3, line: 21, type: !43, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !17}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!46 = !DILocalVariable(name: "str_op", arg: 1, scope: !42, file: !3, line: 21, type: !45)
!47 = !DILocation(line: 21, column: 16, scope: !42)
!48 = !DILocalVariable(name: "data", arg: 2, scope: !42, file: !3, line: 21, type: !17)
!49 = !DILocation(line: 21, column: 49, scope: !42)
!50 = !DILocation(line: 22, column: 4, scope: !42)
!51 = !DILocation(line: 22, column: 28, scope: !42)
!52 = !DILocation(line: 22, column: 2, scope: !42)
!53 = !DILocation(line: 23, column: 1, scope: !42)
!54 = distinct !DISubprogram(name: "auth", scope: !3, file: !3, line: 25, type: !55, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !17}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocalVariable(name: "buf", arg: 1, scope: !54, file: !3, line: 25, type: !17)
!59 = !DILocation(line: 25, column: 17, scope: !54)
!60 = !DILocation(line: 26, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !3, line: 26, column: 6)
!62 = !DILocation(line: 26, column: 7, scope: !61)
!63 = !DILocation(line: 26, column: 6, scope: !54)
!64 = !DILocation(line: 27, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 26, column: 30)
!66 = !DILocation(line: 28, column: 3, scope: !65)
!67 = !DILocation(line: 30, column: 2, scope: !54)
!68 = !DILocation(line: 31, column: 1, scope: !54)
!69 = distinct !DISubprogram(name: "dummy", scope: !3, file: !3, line: 32, type: !27, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!70 = !DILocation(line: 33, column: 2, scope: !69)
!71 = !DILocation(line: 34, column: 1, scope: !69)
!72 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 35, type: !73, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !57, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!76 = !DILocalVariable(name: "argc", arg: 1, scope: !72, file: !3, line: 35, type: !57)
!77 = !DILocation(line: 35, column: 15, scope: !72)
!78 = !DILocalVariable(name: "argv", arg: 2, scope: !72, file: !3, line: 35, type: !75)
!79 = !DILocation(line: 35, column: 28, scope: !72)
!80 = !DILocalVariable(name: "auth_ret", scope: !72, file: !3, line: 36, type: !57)
!81 = !DILocation(line: 36, column: 6, scope: !72)
!82 = !DILocation(line: 36, column: 20, scope: !72)
!83 = !DILocation(line: 36, column: 15, scope: !72)
!84 = !DILocation(line: 37, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 37, column: 6)
!86 = !DILocation(line: 37, column: 6, scope: !72)
!87 = !DILocation(line: 38, column: 3, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 37, column: 15)
!89 = !DILocation(line: 39, column: 3, scope: !88)
!90 = !DILocation(line: 40, column: 2, scope: !88)
!91 = !DILocation(line: 41, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !3, line: 40, column: 9)
!93 = !DILocation(line: 43, column: 1, scope: !72)
