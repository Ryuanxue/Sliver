; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_18.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_18_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  br label %source, !dbg !24

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  %2 = load i64, i64* %dataLen, align 8, !dbg !35
  %sub = sub i64 100, %2, !dbg !37
  %cmp = icmp ugt i64 %sub, 1, !dbg !38
  br i1 %cmp, label %if.then, label %if.end18, !dbg !39

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !43
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !44
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub1 = sub i64 100, %5, !dbg !46
  %conv = trunc i64 %sub1 to i32, !dbg !47
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !48
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !49
  %cmp3 = icmp ne i8* %call2, null, !dbg !50
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !51

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !52
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !54
  store i64 %call6, i64* %dataLen, align 8, !dbg !55
  %8 = load i64, i64* %dataLen, align 8, !dbg !56
  %cmp7 = icmp ugt i64 %8, 0, !dbg !58
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !59

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !60
  %10 = load i64, i64* %dataLen, align 8, !dbg !61
  %sub9 = sub i64 %10, 1, !dbg !62
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !60
  %11 = load i8, i8* %arrayidx, align 1, !dbg !60
  %conv10 = sext i8 %11 to i32, !dbg !60
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !63
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !64

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !65
  %13 = load i64, i64* %dataLen, align 8, !dbg !67
  %sub14 = sub i64 %13, 1, !dbg !68
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !65
  store i8 0, i8* %arrayidx15, align 1, !dbg !69
  br label %if.end, !dbg !70

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !71

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %14 = load i8*, i8** %data, align 8, !dbg !74
  %15 = load i64, i64* %dataLen, align 8, !dbg !75
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !74
  store i8 0, i8* %arrayidx16, align 1, !dbg !76
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !77

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !78

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !79), !dbg !80
  %16 = load i8*, i8** %data, align 8, !dbg !81
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !84 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !88
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !89
  store i8* %arraydecay, i8** %data, align 8, !dbg !90
  br label %source, !dbg !91

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !92), !dbg !93
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !94, metadata !DIExpression()), !dbg !96
  %1 = load i8*, i8** %data, align 8, !dbg !97
  %call = call i64 @strlen(i8* %1) #6, !dbg !98
  store i64 %call, i64* %dataLen, align 8, !dbg !96
  %2 = load i64, i64* %dataLen, align 8, !dbg !99
  %sub = sub i64 100, %2, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then, label %if.end18, !dbg !103

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !104
  %4 = load i64, i64* %dataLen, align 8, !dbg !107
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !108
  %5 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub1 = sub i64 100, %5, !dbg !110
  %conv = trunc i64 %sub1 to i32, !dbg !111
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !112
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !113
  %cmp3 = icmp ne i8* %call2, null, !dbg !114
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !115

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !116
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !118
  store i64 %call6, i64* %dataLen, align 8, !dbg !119
  %8 = load i64, i64* %dataLen, align 8, !dbg !120
  %cmp7 = icmp ugt i64 %8, 0, !dbg !122
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !123

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !124
  %10 = load i64, i64* %dataLen, align 8, !dbg !125
  %sub9 = sub i64 %10, 1, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !124
  %11 = load i8, i8* %arrayidx, align 1, !dbg !124
  %conv10 = sext i8 %11 to i32, !dbg !124
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !127
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !128

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !129
  %13 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub14 = sub i64 %13, 1, !dbg !132
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !129
  store i8 0, i8* %arrayidx15, align 1, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !135

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !136
  %14 = load i8*, i8** %data, align 8, !dbg !138
  %15 = load i64, i64* %dataLen, align 8, !dbg !139
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !138
  store i8 0, i8* %arrayidx16, align 1, !dbg !140
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !141

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !142

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !143), !dbg !144
  %16 = load i8*, i8** %data, align 8, !dbg !145
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !148 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !152
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !153
  store i8* %arraydecay, i8** %data, align 8, !dbg !154
  br label %source, !dbg !155

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !156), !dbg !157
  %1 = load i8*, i8** %data, align 8, !dbg !158
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !159
  br label %sink, !dbg !160

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !161), !dbg !162
  %2 = load i8*, i8** %data, align 8, !dbg !163
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_18_good() #0 !dbg !166 {
entry:
  call void @goodB2G(), !dbg !167
  call void @goodG2B(), !dbg !168
  ret void, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_18_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 29, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 30, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 30, column: 10, scope: !10)
!22 = !DILocation(line: 31, column: 12, scope: !10)
!23 = !DILocation(line: 31, column: 10, scope: !10)
!24 = !DILocation(line: 32, column: 5, scope: !10)
!25 = !DILabel(scope: !10, name: "source", file: !1, line: 33)
!26 = !DILocation(line: 33, column: 1, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 36, type: !29)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 36, column: 16, scope: !28)
!33 = !DILocation(line: 36, column: 33, scope: !28)
!34 = !DILocation(line: 36, column: 26, scope: !28)
!35 = !DILocation(line: 38, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 38, column: 13)
!37 = !DILocation(line: 38, column: 16, scope: !36)
!38 = !DILocation(line: 38, column: 25, scope: !36)
!39 = !DILocation(line: 38, column: 13, scope: !28)
!40 = !DILocation(line: 41, column: 23, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 17)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 39, column: 9)
!43 = !DILocation(line: 41, column: 28, scope: !41)
!44 = !DILocation(line: 41, column: 27, scope: !41)
!45 = !DILocation(line: 41, column: 47, scope: !41)
!46 = !DILocation(line: 41, column: 46, scope: !41)
!47 = !DILocation(line: 41, column: 37, scope: !41)
!48 = !DILocation(line: 41, column: 57, scope: !41)
!49 = !DILocation(line: 41, column: 17, scope: !41)
!50 = !DILocation(line: 41, column: 64, scope: !41)
!51 = !DILocation(line: 41, column: 17, scope: !42)
!52 = !DILocation(line: 45, column: 34, scope: !53)
!53 = distinct !DILexicalBlock(scope: !41, file: !1, line: 42, column: 13)
!54 = !DILocation(line: 45, column: 27, scope: !53)
!55 = !DILocation(line: 45, column: 25, scope: !53)
!56 = !DILocation(line: 46, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 46, column: 21)
!58 = !DILocation(line: 46, column: 29, scope: !57)
!59 = !DILocation(line: 46, column: 33, scope: !57)
!60 = !DILocation(line: 46, column: 36, scope: !57)
!61 = !DILocation(line: 46, column: 41, scope: !57)
!62 = !DILocation(line: 46, column: 48, scope: !57)
!63 = !DILocation(line: 46, column: 52, scope: !57)
!64 = !DILocation(line: 46, column: 21, scope: !53)
!65 = !DILocation(line: 48, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 47, column: 17)
!67 = !DILocation(line: 48, column: 26, scope: !66)
!68 = !DILocation(line: 48, column: 33, scope: !66)
!69 = !DILocation(line: 48, column: 37, scope: !66)
!70 = !DILocation(line: 49, column: 17, scope: !66)
!71 = !DILocation(line: 50, column: 13, scope: !53)
!72 = !DILocation(line: 53, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !41, file: !1, line: 52, column: 13)
!74 = !DILocation(line: 55, column: 17, scope: !73)
!75 = !DILocation(line: 55, column: 22, scope: !73)
!76 = !DILocation(line: 55, column: 31, scope: !73)
!77 = !DILocation(line: 57, column: 9, scope: !42)
!78 = !DILocation(line: 59, column: 5, scope: !10)
!79 = !DILabel(scope: !10, name: "sink", file: !1, line: 60)
!80 = !DILocation(line: 60, column: 1, scope: !10)
!81 = !DILocation(line: 62, column: 12, scope: !10)
!82 = !DILocation(line: 62, column: 5, scope: !10)
!83 = !DILocation(line: 63, column: 1, scope: !10)
!84 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 70, type: !11, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "data", scope: !84, file: !1, line: 72, type: !14)
!86 = !DILocation(line: 72, column: 12, scope: !84)
!87 = !DILocalVariable(name: "dataBuffer", scope: !84, file: !1, line: 73, type: !18)
!88 = !DILocation(line: 73, column: 10, scope: !84)
!89 = !DILocation(line: 74, column: 12, scope: !84)
!90 = !DILocation(line: 74, column: 10, scope: !84)
!91 = !DILocation(line: 75, column: 5, scope: !84)
!92 = !DILabel(scope: !84, name: "source", file: !1, line: 76)
!93 = !DILocation(line: 76, column: 1, scope: !84)
!94 = !DILocalVariable(name: "dataLen", scope: !95, file: !1, line: 79, type: !29)
!95 = distinct !DILexicalBlock(scope: !84, file: !1, line: 77, column: 5)
!96 = !DILocation(line: 79, column: 16, scope: !95)
!97 = !DILocation(line: 79, column: 33, scope: !95)
!98 = !DILocation(line: 79, column: 26, scope: !95)
!99 = !DILocation(line: 81, column: 17, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 81, column: 13)
!101 = !DILocation(line: 81, column: 16, scope: !100)
!102 = !DILocation(line: 81, column: 25, scope: !100)
!103 = !DILocation(line: 81, column: 13, scope: !95)
!104 = !DILocation(line: 84, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 84, column: 17)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 82, column: 9)
!107 = !DILocation(line: 84, column: 28, scope: !105)
!108 = !DILocation(line: 84, column: 27, scope: !105)
!109 = !DILocation(line: 84, column: 47, scope: !105)
!110 = !DILocation(line: 84, column: 46, scope: !105)
!111 = !DILocation(line: 84, column: 37, scope: !105)
!112 = !DILocation(line: 84, column: 57, scope: !105)
!113 = !DILocation(line: 84, column: 17, scope: !105)
!114 = !DILocation(line: 84, column: 64, scope: !105)
!115 = !DILocation(line: 84, column: 17, scope: !106)
!116 = !DILocation(line: 88, column: 34, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 85, column: 13)
!118 = !DILocation(line: 88, column: 27, scope: !117)
!119 = !DILocation(line: 88, column: 25, scope: !117)
!120 = !DILocation(line: 89, column: 21, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 89, column: 21)
!122 = !DILocation(line: 89, column: 29, scope: !121)
!123 = !DILocation(line: 89, column: 33, scope: !121)
!124 = !DILocation(line: 89, column: 36, scope: !121)
!125 = !DILocation(line: 89, column: 41, scope: !121)
!126 = !DILocation(line: 89, column: 48, scope: !121)
!127 = !DILocation(line: 89, column: 52, scope: !121)
!128 = !DILocation(line: 89, column: 21, scope: !117)
!129 = !DILocation(line: 91, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !121, file: !1, line: 90, column: 17)
!131 = !DILocation(line: 91, column: 26, scope: !130)
!132 = !DILocation(line: 91, column: 33, scope: !130)
!133 = !DILocation(line: 91, column: 37, scope: !130)
!134 = !DILocation(line: 92, column: 17, scope: !130)
!135 = !DILocation(line: 93, column: 13, scope: !117)
!136 = !DILocation(line: 96, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !105, file: !1, line: 95, column: 13)
!138 = !DILocation(line: 98, column: 17, scope: !137)
!139 = !DILocation(line: 98, column: 22, scope: !137)
!140 = !DILocation(line: 98, column: 31, scope: !137)
!141 = !DILocation(line: 100, column: 9, scope: !106)
!142 = !DILocation(line: 102, column: 5, scope: !84)
!143 = !DILabel(scope: !84, name: "sink", file: !1, line: 103)
!144 = !DILocation(line: 103, column: 1, scope: !84)
!145 = !DILocation(line: 105, column: 20, scope: !84)
!146 = !DILocation(line: 105, column: 5, scope: !84)
!147 = !DILocation(line: 106, column: 1, scope: !84)
!148 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 109, type: !11, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DILocalVariable(name: "data", scope: !148, file: !1, line: 111, type: !14)
!150 = !DILocation(line: 111, column: 12, scope: !148)
!151 = !DILocalVariable(name: "dataBuffer", scope: !148, file: !1, line: 112, type: !18)
!152 = !DILocation(line: 112, column: 10, scope: !148)
!153 = !DILocation(line: 113, column: 12, scope: !148)
!154 = !DILocation(line: 113, column: 10, scope: !148)
!155 = !DILocation(line: 114, column: 5, scope: !148)
!156 = !DILabel(scope: !148, name: "source", file: !1, line: 115)
!157 = !DILocation(line: 115, column: 1, scope: !148)
!158 = !DILocation(line: 117, column: 12, scope: !148)
!159 = !DILocation(line: 117, column: 5, scope: !148)
!160 = !DILocation(line: 118, column: 5, scope: !148)
!161 = !DILabel(scope: !148, name: "sink", file: !1, line: 119)
!162 = !DILocation(line: 119, column: 1, scope: !148)
!163 = !DILocation(line: 121, column: 12, scope: !148)
!164 = !DILocation(line: 121, column: 5, scope: !148)
!165 = !DILocation(line: 122, column: 1, scope: !148)
!166 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_18_good", scope: !1, file: !1, line: 124, type: !11, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DILocation(line: 126, column: 5, scope: !166)
!168 = !DILocation(line: 127, column: 5, scope: !166)
!169 = !DILocation(line: 128, column: 1, scope: !166)
