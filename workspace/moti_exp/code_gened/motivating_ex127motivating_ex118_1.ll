; ModuleID = 'motivating_ex127motivating_ex118_1.c'
source_filename = "motivating_ex127motivating_ex118_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@sensitive_data = external dso_local global i8*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @motivating_ex127motivating_ex118_1(i8* %__src__secret, i8** %_main_argv_0, i32 %auth_return_, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %__src__secret.addr = alloca i8*, align 8
  %_main_argv_0.addr = alloca i8**, align 8
  %auth_return_.addr = alloca i32, align 4
  %opsink.addr = alloca void (i8*)*, align 8
  %_main_auth_ret_0 = alloca i32, align 4
  store i8* %__src__secret, i8** %__src__secret.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__src__secret.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i8** %_main_argv_0, i8*** %_main_argv_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %_main_argv_0.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %auth_return_, i32* %auth_return_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %auth_return_.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i8**, i8*** %_main_argv_0.addr, align 8, !dbg !25
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !25
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !25
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4, !dbg !28
  %tobool = icmp ne i32 %call, 0, !dbg !28
  br i1 %tobool, label %if.end, label %if.then, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %__src__secret.addr, align 8, !dbg !30
  call void @op(i8* (i8*, i8*)* @copy, i8* %2), !dbg !32
  store i32 1, i32* %auth_return_.addr, align 4, !dbg !33
  br label %auth_label_, !dbg !34

if.end:                                           ; preds = %entry
  store i32 0, i32* %auth_return_.addr, align 4, !dbg !35
  br label %auth_label_, !dbg !36

auth_label_:                                      ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %_main_auth_ret_0, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i8**, i8*** %_main_argv_0.addr, align 8, !dbg !41
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !41
  %4 = load i8*, i8** %arrayidx1, align 8, !dbg !41
  %call2 = call i32 @auth(i8* %4), !dbg !42
  store i32 %call2, i32* %_main_auth_ret_0, align 4, !dbg !40
  %5 = load i32, i32* %_main_auth_ret_0, align 4, !dbg !43
  %tobool3 = icmp ne i32 %5, 0, !dbg !43
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !45

if.then4:                                         ; preds = %auth_label_
  call void (...) @dummy(), !dbg !46
  %6 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !48
  %7 = load i8*, i8** @sensitive_data, align 8, !dbg !51
  call void %6(i8* %7), !dbg !48
  br label %sink_mtd_label_, !dbg !48

sink_mtd_label_:                                  ; preds = %if.then4
  call void @llvm.dbg.label(metadata !52), !dbg !53
  br label %pass_label_, !dbg !54

pass_label_:                                      ; preds = %sink_mtd_label_
  call void @llvm.dbg.label(metadata !55), !dbg !56
  br label %if.end5, !dbg !57

if.else:                                          ; preds = %auth_label_
  call void (...) @fail(), !dbg !58
  br label %if.end5

if.end5:                                          ; preds = %if.else, %pass_label_
  br label %main_label_, !dbg !43

main_label_:                                      ; preds = %if.end5
  call void @llvm.dbg.label(metadata !60), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local void @op(i8* (i8*, i8*)*, i8*) #3

declare dso_local i8* @copy(i8*, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @auth(i8*) #3

declare dso_local void @dummy(...) #3

declare dso_local void @fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "motivating_ex127motivating_ex118_1.c", directory: "/home/raoxue/Desktop/My_sliver/Sliver/workspace/moti_exp/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "motivating_ex127motivating_ex118_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !10}
!17 = !DILocalVariable(name: "__src__secret", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 47, scope: !7)
!19 = !DILocalVariable(name: "_main_argv_0", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!20 = !DILocation(line: 4, column: 69, scope: !7)
!21 = !DILocalVariable(name: "auth_return_", arg: 3, scope: !7, file: !1, line: 4, type: !13)
!22 = !DILocation(line: 4, column: 87, scope: !7)
!23 = !DILocalVariable(name: "opsink", arg: 4, scope: !7, file: !1, line: 4, type: !14)
!24 = !DILocation(line: 4, column: 108, scope: !7)
!25 = !DILocation(line: 7, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 7, column: 9)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!28 = !DILocation(line: 7, column: 10, scope: !26)
!29 = !DILocation(line: 7, column: 9, scope: !27)
!30 = !DILocation(line: 9, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 5)
!32 = !DILocation(line: 9, column: 7, scope: !31)
!33 = !DILocation(line: 10, column: 20, scope: !31)
!34 = !DILocation(line: 11, column: 7, scope: !31)
!35 = !DILocation(line: 14, column: 18, scope: !27)
!36 = !DILocation(line: 15, column: 5, scope: !27)
!37 = !DILabel(scope: !27, name: "auth_label_", file: !1, line: 16)
!38 = !DILocation(line: 16, column: 5, scope: !27)
!39 = !DILocalVariable(name: "_main_auth_ret_0", scope: !7, file: !1, line: 22, type: !13)
!40 = !DILocation(line: 22, column: 7, scope: !7)
!41 = !DILocation(line: 22, column: 31, scope: !7)
!42 = !DILocation(line: 22, column: 26, scope: !7)
!43 = !DILocation(line: 23, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 7)
!45 = !DILocation(line: 23, column: 7, scope: !7)
!46 = !DILocation(line: 25, column: 5, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 24, column: 3)
!48 = !DILocation(line: 28, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 27, column: 7)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 26, column: 5)
!51 = !DILocation(line: 28, column: 16, scope: !49)
!52 = !DILabel(scope: !49, name: "sink_mtd_label_", file: !1, line: 29)
!53 = !DILocation(line: 29, column: 9, scope: !49)
!54 = !DILocation(line: 34, column: 7, scope: !49)
!55 = !DILabel(scope: !50, name: "pass_label_", file: !1, line: 35)
!56 = !DILocation(line: 35, column: 7, scope: !50)
!57 = !DILocation(line: 41, column: 3, scope: !47)
!58 = !DILocation(line: 44, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !44, file: !1, line: 43, column: 3)
!60 = !DILabel(scope: !7, name: "main_label_", file: !1, line: 47)
!61 = !DILocation(line: 47, column: 3, scope: !7)
!62 = !DILocation(line: 52, column: 1, scope: !7)
