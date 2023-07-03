; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_16.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_16.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_16_bad() #0 !dbg !10 {
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
  br label %while.body, !dbg !24

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !25, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  %2 = load i64, i64* %dataLen, align 8, !dbg !34
  %sub = sub i64 100, %2, !dbg !36
  %cmp = icmp ugt i64 %sub, 1, !dbg !37
  br i1 %cmp, label %if.then, label %if.end18, !dbg !38

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !39
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %sub1 = sub i64 100, %5, !dbg !45
  %conv = trunc i64 %sub1 to i32, !dbg !46
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !48
  %cmp3 = icmp ne i8* %call2, null, !dbg !49
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !50

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !51
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !53
  store i64 %call6, i64* %dataLen, align 8, !dbg !54
  %8 = load i64, i64* %dataLen, align 8, !dbg !55
  %cmp7 = icmp ugt i64 %8, 0, !dbg !57
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !58

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !59
  %10 = load i64, i64* %dataLen, align 8, !dbg !60
  %sub9 = sub i64 %10, 1, !dbg !61
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !59
  %11 = load i8, i8* %arrayidx, align 1, !dbg !59
  %conv10 = sext i8 %11 to i32, !dbg !59
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !62
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !63

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !64
  %13 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub14 = sub i64 %13, 1, !dbg !67
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !64
  store i8 0, i8* %arrayidx15, align 1, !dbg !68
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !70

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !71
  %14 = load i8*, i8** %data, align 8, !dbg !73
  %15 = load i64, i64* %dataLen, align 8, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !73
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !76

if.end18:                                         ; preds = %if.end17, %while.body
  br label %while.end, !dbg !77

while.end:                                        ; preds = %if.end18
  br label %while.body19, !dbg !78

while.body19:                                     ; preds = %while.end
  %16 = load i8*, i8** %data, align 8, !dbg !79
  %call20 = call i32 (i8*, ...) @printf(i8* %16), !dbg !81
  br label %while.end21, !dbg !82

while.end21:                                      ; preds = %while.body19
  ret void, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
  br label %while.body, !dbg !91

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !92, metadata !DIExpression()), !dbg !95
  %1 = load i8*, i8** %data, align 8, !dbg !96
  %call = call i64 @strlen(i8* %1) #6, !dbg !97
  store i64 %call, i64* %dataLen, align 8, !dbg !95
  %2 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub = sub i64 100, %2, !dbg !100
  %cmp = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end18, !dbg !102

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !103
  %4 = load i64, i64* %dataLen, align 8, !dbg !106
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !107
  %5 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub1 = sub i64 100, %5, !dbg !109
  %conv = trunc i64 %sub1 to i32, !dbg !110
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !111
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !112
  %cmp3 = icmp ne i8* %call2, null, !dbg !113
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !114

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !115
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !117
  store i64 %call6, i64* %dataLen, align 8, !dbg !118
  %8 = load i64, i64* %dataLen, align 8, !dbg !119
  %cmp7 = icmp ugt i64 %8, 0, !dbg !121
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !122

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !123
  %10 = load i64, i64* %dataLen, align 8, !dbg !124
  %sub9 = sub i64 %10, 1, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !123
  %11 = load i8, i8* %arrayidx, align 1, !dbg !123
  %conv10 = sext i8 %11 to i32, !dbg !123
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !126
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !127

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !128
  %13 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub14 = sub i64 %13, 1, !dbg !131
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !128
  store i8 0, i8* %arrayidx15, align 1, !dbg !132
  br label %if.end, !dbg !133

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !134

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !135
  %14 = load i8*, i8** %data, align 8, !dbg !137
  %15 = load i64, i64* %dataLen, align 8, !dbg !138
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !137
  store i8 0, i8* %arrayidx16, align 1, !dbg !139
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !140

if.end18:                                         ; preds = %if.end17, %while.body
  br label %while.end, !dbg !141

while.end:                                        ; preds = %if.end18
  br label %while.body19, !dbg !142

while.body19:                                     ; preds = %while.end
  %16 = load i8*, i8** %data, align 8, !dbg !143
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !145
  br label %while.end21, !dbg !146

while.end21:                                      ; preds = %while.body19
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
  br label %while.body, !dbg !155

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !158
  br label %while.end, !dbg !159

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !160

while.body1:                                      ; preds = %while.end
  %2 = load i8*, i8** %data, align 8, !dbg !161
  %call2 = call i32 (i8*, ...) @printf(i8* %2), !dbg !163
  br label %while.end3, !dbg !164

while.end3:                                       ; preds = %while.body1
  ret void, !dbg !165
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_16_good() #0 !dbg !166 {
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_449/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_16_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILocalVariable(name: "dataLen", scope: !26, file: !1, line: 36, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 34, column: 9)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 33, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 36, column: 20, scope: !26)
!32 = !DILocation(line: 36, column: 37, scope: !26)
!33 = !DILocation(line: 36, column: 30, scope: !26)
!34 = !DILocation(line: 38, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 38, column: 17)
!36 = !DILocation(line: 38, column: 20, scope: !35)
!37 = !DILocation(line: 38, column: 29, scope: !35)
!38 = !DILocation(line: 38, column: 17, scope: !26)
!39 = !DILocation(line: 41, column: 27, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 41, column: 21)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 39, column: 13)
!42 = !DILocation(line: 41, column: 32, scope: !40)
!43 = !DILocation(line: 41, column: 31, scope: !40)
!44 = !DILocation(line: 41, column: 51, scope: !40)
!45 = !DILocation(line: 41, column: 50, scope: !40)
!46 = !DILocation(line: 41, column: 41, scope: !40)
!47 = !DILocation(line: 41, column: 61, scope: !40)
!48 = !DILocation(line: 41, column: 21, scope: !40)
!49 = !DILocation(line: 41, column: 68, scope: !40)
!50 = !DILocation(line: 41, column: 21, scope: !41)
!51 = !DILocation(line: 45, column: 38, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !1, line: 42, column: 17)
!53 = !DILocation(line: 45, column: 31, scope: !52)
!54 = !DILocation(line: 45, column: 29, scope: !52)
!55 = !DILocation(line: 46, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 46, column: 25)
!57 = !DILocation(line: 46, column: 33, scope: !56)
!58 = !DILocation(line: 46, column: 37, scope: !56)
!59 = !DILocation(line: 46, column: 40, scope: !56)
!60 = !DILocation(line: 46, column: 45, scope: !56)
!61 = !DILocation(line: 46, column: 52, scope: !56)
!62 = !DILocation(line: 46, column: 56, scope: !56)
!63 = !DILocation(line: 46, column: 25, scope: !52)
!64 = !DILocation(line: 48, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !1, line: 47, column: 21)
!66 = !DILocation(line: 48, column: 30, scope: !65)
!67 = !DILocation(line: 48, column: 37, scope: !65)
!68 = !DILocation(line: 48, column: 41, scope: !65)
!69 = !DILocation(line: 49, column: 21, scope: !65)
!70 = !DILocation(line: 50, column: 17, scope: !52)
!71 = !DILocation(line: 53, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !1, line: 52, column: 17)
!73 = !DILocation(line: 55, column: 21, scope: !72)
!74 = !DILocation(line: 55, column: 26, scope: !72)
!75 = !DILocation(line: 55, column: 35, scope: !72)
!76 = !DILocation(line: 57, column: 13, scope: !41)
!77 = !DILocation(line: 59, column: 9, scope: !27)
!78 = !DILocation(line: 61, column: 5, scope: !10)
!79 = !DILocation(line: 64, column: 16, scope: !80)
!80 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 5)
!81 = !DILocation(line: 64, column: 9, scope: !80)
!82 = !DILocation(line: 65, column: 9, scope: !80)
!83 = !DILocation(line: 67, column: 1, scope: !10)
!84 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 74, type: !11, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "data", scope: !84, file: !1, line: 76, type: !14)
!86 = !DILocation(line: 76, column: 12, scope: !84)
!87 = !DILocalVariable(name: "dataBuffer", scope: !84, file: !1, line: 77, type: !18)
!88 = !DILocation(line: 77, column: 10, scope: !84)
!89 = !DILocation(line: 78, column: 12, scope: !84)
!90 = !DILocation(line: 78, column: 10, scope: !84)
!91 = !DILocation(line: 79, column: 5, scope: !84)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !1, line: 83, type: !28)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 81, column: 9)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 80, column: 5)
!95 = !DILocation(line: 83, column: 20, scope: !93)
!96 = !DILocation(line: 83, column: 37, scope: !93)
!97 = !DILocation(line: 83, column: 30, scope: !93)
!98 = !DILocation(line: 85, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 85, column: 17)
!100 = !DILocation(line: 85, column: 20, scope: !99)
!101 = !DILocation(line: 85, column: 29, scope: !99)
!102 = !DILocation(line: 85, column: 17, scope: !93)
!103 = !DILocation(line: 88, column: 27, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 88, column: 21)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 86, column: 13)
!106 = !DILocation(line: 88, column: 32, scope: !104)
!107 = !DILocation(line: 88, column: 31, scope: !104)
!108 = !DILocation(line: 88, column: 51, scope: !104)
!109 = !DILocation(line: 88, column: 50, scope: !104)
!110 = !DILocation(line: 88, column: 41, scope: !104)
!111 = !DILocation(line: 88, column: 61, scope: !104)
!112 = !DILocation(line: 88, column: 21, scope: !104)
!113 = !DILocation(line: 88, column: 68, scope: !104)
!114 = !DILocation(line: 88, column: 21, scope: !105)
!115 = !DILocation(line: 92, column: 38, scope: !116)
!116 = distinct !DILexicalBlock(scope: !104, file: !1, line: 89, column: 17)
!117 = !DILocation(line: 92, column: 31, scope: !116)
!118 = !DILocation(line: 92, column: 29, scope: !116)
!119 = !DILocation(line: 93, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 93, column: 25)
!121 = !DILocation(line: 93, column: 33, scope: !120)
!122 = !DILocation(line: 93, column: 37, scope: !120)
!123 = !DILocation(line: 93, column: 40, scope: !120)
!124 = !DILocation(line: 93, column: 45, scope: !120)
!125 = !DILocation(line: 93, column: 52, scope: !120)
!126 = !DILocation(line: 93, column: 56, scope: !120)
!127 = !DILocation(line: 93, column: 25, scope: !116)
!128 = !DILocation(line: 95, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !120, file: !1, line: 94, column: 21)
!130 = !DILocation(line: 95, column: 30, scope: !129)
!131 = !DILocation(line: 95, column: 37, scope: !129)
!132 = !DILocation(line: 95, column: 41, scope: !129)
!133 = !DILocation(line: 96, column: 21, scope: !129)
!134 = !DILocation(line: 97, column: 17, scope: !116)
!135 = !DILocation(line: 100, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !104, file: !1, line: 99, column: 17)
!137 = !DILocation(line: 102, column: 21, scope: !136)
!138 = !DILocation(line: 102, column: 26, scope: !136)
!139 = !DILocation(line: 102, column: 35, scope: !136)
!140 = !DILocation(line: 104, column: 13, scope: !105)
!141 = !DILocation(line: 106, column: 9, scope: !94)
!142 = !DILocation(line: 108, column: 5, scope: !84)
!143 = !DILocation(line: 111, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !84, file: !1, line: 109, column: 5)
!145 = !DILocation(line: 111, column: 9, scope: !144)
!146 = !DILocation(line: 112, column: 9, scope: !144)
!147 = !DILocation(line: 114, column: 1, scope: !84)
!148 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 117, type: !11, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DILocalVariable(name: "data", scope: !148, file: !1, line: 119, type: !14)
!150 = !DILocation(line: 119, column: 12, scope: !148)
!151 = !DILocalVariable(name: "dataBuffer", scope: !148, file: !1, line: 120, type: !18)
!152 = !DILocation(line: 120, column: 10, scope: !148)
!153 = !DILocation(line: 121, column: 12, scope: !148)
!154 = !DILocation(line: 121, column: 10, scope: !148)
!155 = !DILocation(line: 122, column: 5, scope: !148)
!156 = !DILocation(line: 125, column: 16, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !1, line: 123, column: 5)
!158 = !DILocation(line: 125, column: 9, scope: !157)
!159 = !DILocation(line: 126, column: 9, scope: !157)
!160 = !DILocation(line: 128, column: 5, scope: !148)
!161 = !DILocation(line: 131, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !1, line: 129, column: 5)
!163 = !DILocation(line: 131, column: 9, scope: !162)
!164 = !DILocation(line: 132, column: 9, scope: !162)
!165 = !DILocation(line: 134, column: 1, scope: !148)
!166 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_16_good", scope: !1, file: !1, line: 136, type: !11, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DILocation(line: 138, column: 5, scope: !166)
!168 = !DILocation(line: 139, column: 5, scope: !166)
!169 = !DILocation(line: 140, column: 1, scope: !166)
