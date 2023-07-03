; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_44.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8*, i8** %data.addr, align 8, !dbg !17
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_44_bad() #0 !dbg !20 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !25, metadata !DIExpression()), !dbg !27
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !28, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %data, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !40
  %1 = load i8*, i8** %data, align 8, !dbg !41
  %call = call i64 @strlen(i8* %1) #6, !dbg !42
  store i64 %call, i64* %dataLen, align 8, !dbg !40
  %2 = load i64, i64* %dataLen, align 8, !dbg !43
  %sub = sub i64 100, %2, !dbg !45
  %cmp = icmp ugt i64 %sub, 1, !dbg !46
  br i1 %cmp, label %if.then, label %if.end18, !dbg !47

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !48
  %4 = load i64, i64* %dataLen, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !52
  %5 = load i64, i64* %dataLen, align 8, !dbg !53
  %sub1 = sub i64 100, %5, !dbg !54
  %conv = trunc i64 %sub1 to i32, !dbg !55
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !56
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !57
  %cmp3 = icmp ne i8* %call2, null, !dbg !58
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !59

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !60
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !62
  store i64 %call6, i64* %dataLen, align 8, !dbg !63
  %8 = load i64, i64* %dataLen, align 8, !dbg !64
  %cmp7 = icmp ugt i64 %8, 0, !dbg !66
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !67

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !68
  %10 = load i64, i64* %dataLen, align 8, !dbg !69
  %sub9 = sub i64 %10, 1, !dbg !70
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !68
  %11 = load i8, i8* %arrayidx, align 1, !dbg !68
  %conv10 = sext i8 %11 to i32, !dbg !68
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !71
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !72

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !73
  %13 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub14 = sub i64 %13, 1, !dbg !76
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !73
  store i8 0, i8* %arrayidx15, align 1, !dbg !77
  br label %if.end, !dbg !78

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !79

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !80
  %14 = load i8*, i8** %data, align 8, !dbg !82
  %15 = load i64, i64* %dataLen, align 8, !dbg !83
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !82
  store i8 0, i8* %arrayidx16, align 1, !dbg !84
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !85

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !86
  %17 = load i8*, i8** %data, align 8, !dbg !87
  call void %16(i8* %17), !dbg !86
  ret void, !dbg !88
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !89 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i8*, i8** %data.addr, align 8, !dbg !92
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !98, metadata !DIExpression()), !dbg !99
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !101
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !102
  store i8* %arraydecay, i8** %data, align 8, !dbg !103
  %1 = load i8*, i8** %data, align 8, !dbg !104
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !105
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !106
  %3 = load i8*, i8** %data, align 8, !dbg !107
  call void %2(i8* %3), !dbg !106
  ret void, !dbg !108
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !109 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load i8*, i8** %data.addr, align 8, !dbg !112
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %0), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !115 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !118, metadata !DIExpression()), !dbg !119
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !122
  store i8* %arraydecay, i8** %data, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !124, metadata !DIExpression()), !dbg !126
  %1 = load i8*, i8** %data, align 8, !dbg !127
  %call = call i64 @strlen(i8* %1) #6, !dbg !128
  store i64 %call, i64* %dataLen, align 8, !dbg !126
  %2 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %2, !dbg !131
  %cmp = icmp ugt i64 %sub, 1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end18, !dbg !133

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !137
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub1 = sub i64 100, %5, !dbg !140
  %conv = trunc i64 %sub1 to i32, !dbg !141
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !142
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !143
  %cmp3 = icmp ne i8* %call2, null, !dbg !144
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !145

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !146
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !148
  store i64 %call6, i64* %dataLen, align 8, !dbg !149
  %8 = load i64, i64* %dataLen, align 8, !dbg !150
  %cmp7 = icmp ugt i64 %8, 0, !dbg !152
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !153

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !154
  %10 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub9 = sub i64 %10, 1, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !154
  %11 = load i8, i8* %arrayidx, align 1, !dbg !154
  %conv10 = sext i8 %11 to i32, !dbg !154
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !157
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !158

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !159
  %13 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub14 = sub i64 %13, 1, !dbg !162
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !159
  store i8 0, i8* %arrayidx15, align 1, !dbg !163
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !165

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !166
  %14 = load i8*, i8** %data, align 8, !dbg !168
  %15 = load i64, i64* %dataLen, align 8, !dbg !169
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !168
  store i8 0, i8* %arrayidx16, align 1, !dbg !170
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !171

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !172
  %17 = load i8*, i8** %data, align 8, !dbg !173
  call void %16(i8* %17), !dbg !172
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_44_good() #0 !dbg !175 {
entry:
  call void @goodG2B(), !dbg !176
  call void @goodB2G(), !dbg !177
  ret void, !dbg !178
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_461/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 27, type: !13)
!16 = !DILocation(line: 27, column: 21, scope: !10)
!17 = !DILocation(line: 30, column: 12, scope: !10)
!18 = !DILocation(line: 30, column: 5, scope: !10)
!19 = !DILocation(line: 31, column: 1, scope: !10)
!20 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_44_bad", scope: !1, file: !1, line: 33, type: !21, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !DILocalVariable(name: "data", scope: !20, file: !1, line: 35, type: !13)
!24 = !DILocation(line: 35, column: 12, scope: !20)
!25 = !DILocalVariable(name: "funcPtr", scope: !20, file: !1, line: 37, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!27 = !DILocation(line: 37, column: 12, scope: !20)
!28 = !DILocalVariable(name: "dataBuffer", scope: !20, file: !1, line: 38, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 100)
!32 = !DILocation(line: 38, column: 10, scope: !20)
!33 = !DILocation(line: 39, column: 12, scope: !20)
!34 = !DILocation(line: 39, column: 10, scope: !20)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 42, type: !37)
!36 = distinct !DILexicalBlock(scope: !20, file: !1, line: 40, column: 5)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 42, column: 16, scope: !36)
!41 = !DILocation(line: 42, column: 33, scope: !36)
!42 = !DILocation(line: 42, column: 26, scope: !36)
!43 = !DILocation(line: 44, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !36, file: !1, line: 44, column: 13)
!45 = !DILocation(line: 44, column: 16, scope: !44)
!46 = !DILocation(line: 44, column: 25, scope: !44)
!47 = !DILocation(line: 44, column: 13, scope: !36)
!48 = !DILocation(line: 47, column: 23, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 47, column: 17)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 45, column: 9)
!51 = !DILocation(line: 47, column: 28, scope: !49)
!52 = !DILocation(line: 47, column: 27, scope: !49)
!53 = !DILocation(line: 47, column: 47, scope: !49)
!54 = !DILocation(line: 47, column: 46, scope: !49)
!55 = !DILocation(line: 47, column: 37, scope: !49)
!56 = !DILocation(line: 47, column: 57, scope: !49)
!57 = !DILocation(line: 47, column: 17, scope: !49)
!58 = !DILocation(line: 47, column: 64, scope: !49)
!59 = !DILocation(line: 47, column: 17, scope: !50)
!60 = !DILocation(line: 51, column: 34, scope: !61)
!61 = distinct !DILexicalBlock(scope: !49, file: !1, line: 48, column: 13)
!62 = !DILocation(line: 51, column: 27, scope: !61)
!63 = !DILocation(line: 51, column: 25, scope: !61)
!64 = !DILocation(line: 52, column: 21, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 52, column: 21)
!66 = !DILocation(line: 52, column: 29, scope: !65)
!67 = !DILocation(line: 52, column: 33, scope: !65)
!68 = !DILocation(line: 52, column: 36, scope: !65)
!69 = !DILocation(line: 52, column: 41, scope: !65)
!70 = !DILocation(line: 52, column: 48, scope: !65)
!71 = !DILocation(line: 52, column: 52, scope: !65)
!72 = !DILocation(line: 52, column: 21, scope: !61)
!73 = !DILocation(line: 54, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 53, column: 17)
!75 = !DILocation(line: 54, column: 26, scope: !74)
!76 = !DILocation(line: 54, column: 33, scope: !74)
!77 = !DILocation(line: 54, column: 37, scope: !74)
!78 = !DILocation(line: 55, column: 17, scope: !74)
!79 = !DILocation(line: 56, column: 13, scope: !61)
!80 = !DILocation(line: 59, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !49, file: !1, line: 58, column: 13)
!82 = !DILocation(line: 61, column: 17, scope: !81)
!83 = !DILocation(line: 61, column: 22, scope: !81)
!84 = !DILocation(line: 61, column: 31, scope: !81)
!85 = !DILocation(line: 63, column: 9, scope: !50)
!86 = !DILocation(line: 66, column: 5, scope: !20)
!87 = !DILocation(line: 66, column: 13, scope: !20)
!88 = !DILocation(line: 67, column: 1, scope: !20)
!89 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 74, type: !11, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", arg: 1, scope: !89, file: !1, line: 74, type: !13)
!91 = !DILocation(line: 74, column: 25, scope: !89)
!92 = !DILocation(line: 77, column: 12, scope: !89)
!93 = !DILocation(line: 77, column: 5, scope: !89)
!94 = !DILocation(line: 78, column: 1, scope: !89)
!95 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 80, type: !21, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "data", scope: !95, file: !1, line: 82, type: !13)
!97 = !DILocation(line: 82, column: 12, scope: !95)
!98 = !DILocalVariable(name: "funcPtr", scope: !95, file: !1, line: 83, type: !26)
!99 = !DILocation(line: 83, column: 12, scope: !95)
!100 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !1, line: 84, type: !29)
!101 = !DILocation(line: 84, column: 10, scope: !95)
!102 = !DILocation(line: 85, column: 12, scope: !95)
!103 = !DILocation(line: 85, column: 10, scope: !95)
!104 = !DILocation(line: 87, column: 12, scope: !95)
!105 = !DILocation(line: 87, column: 5, scope: !95)
!106 = !DILocation(line: 88, column: 5, scope: !95)
!107 = !DILocation(line: 88, column: 13, scope: !95)
!108 = !DILocation(line: 89, column: 1, scope: !95)
!109 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 92, type: !11, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "data", arg: 1, scope: !109, file: !1, line: 92, type: !13)
!111 = !DILocation(line: 92, column: 25, scope: !109)
!112 = !DILocation(line: 95, column: 20, scope: !109)
!113 = !DILocation(line: 95, column: 5, scope: !109)
!114 = !DILocation(line: 96, column: 1, scope: !109)
!115 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 98, type: !21, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", scope: !115, file: !1, line: 100, type: !13)
!117 = !DILocation(line: 100, column: 12, scope: !115)
!118 = !DILocalVariable(name: "funcPtr", scope: !115, file: !1, line: 101, type: !26)
!119 = !DILocation(line: 101, column: 12, scope: !115)
!120 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !1, line: 102, type: !29)
!121 = !DILocation(line: 102, column: 10, scope: !115)
!122 = !DILocation(line: 103, column: 12, scope: !115)
!123 = !DILocation(line: 103, column: 10, scope: !115)
!124 = !DILocalVariable(name: "dataLen", scope: !125, file: !1, line: 106, type: !37)
!125 = distinct !DILexicalBlock(scope: !115, file: !1, line: 104, column: 5)
!126 = !DILocation(line: 106, column: 16, scope: !125)
!127 = !DILocation(line: 106, column: 33, scope: !125)
!128 = !DILocation(line: 106, column: 26, scope: !125)
!129 = !DILocation(line: 108, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 108, column: 13)
!131 = !DILocation(line: 108, column: 16, scope: !130)
!132 = !DILocation(line: 108, column: 25, scope: !130)
!133 = !DILocation(line: 108, column: 13, scope: !125)
!134 = !DILocation(line: 111, column: 23, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 111, column: 17)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 109, column: 9)
!137 = !DILocation(line: 111, column: 28, scope: !135)
!138 = !DILocation(line: 111, column: 27, scope: !135)
!139 = !DILocation(line: 111, column: 47, scope: !135)
!140 = !DILocation(line: 111, column: 46, scope: !135)
!141 = !DILocation(line: 111, column: 37, scope: !135)
!142 = !DILocation(line: 111, column: 57, scope: !135)
!143 = !DILocation(line: 111, column: 17, scope: !135)
!144 = !DILocation(line: 111, column: 64, scope: !135)
!145 = !DILocation(line: 111, column: 17, scope: !136)
!146 = !DILocation(line: 115, column: 34, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !1, line: 112, column: 13)
!148 = !DILocation(line: 115, column: 27, scope: !147)
!149 = !DILocation(line: 115, column: 25, scope: !147)
!150 = !DILocation(line: 116, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 116, column: 21)
!152 = !DILocation(line: 116, column: 29, scope: !151)
!153 = !DILocation(line: 116, column: 33, scope: !151)
!154 = !DILocation(line: 116, column: 36, scope: !151)
!155 = !DILocation(line: 116, column: 41, scope: !151)
!156 = !DILocation(line: 116, column: 48, scope: !151)
!157 = !DILocation(line: 116, column: 52, scope: !151)
!158 = !DILocation(line: 116, column: 21, scope: !147)
!159 = !DILocation(line: 118, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !151, file: !1, line: 117, column: 17)
!161 = !DILocation(line: 118, column: 26, scope: !160)
!162 = !DILocation(line: 118, column: 33, scope: !160)
!163 = !DILocation(line: 118, column: 37, scope: !160)
!164 = !DILocation(line: 119, column: 17, scope: !160)
!165 = !DILocation(line: 120, column: 13, scope: !147)
!166 = !DILocation(line: 123, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !135, file: !1, line: 122, column: 13)
!168 = !DILocation(line: 125, column: 17, scope: !167)
!169 = !DILocation(line: 125, column: 22, scope: !167)
!170 = !DILocation(line: 125, column: 31, scope: !167)
!171 = !DILocation(line: 127, column: 9, scope: !136)
!172 = !DILocation(line: 129, column: 5, scope: !115)
!173 = !DILocation(line: 129, column: 13, scope: !115)
!174 = !DILocation(line: 130, column: 1, scope: !115)
!175 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_44_good", scope: !1, file: !1, line: 132, type: !21, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!176 = !DILocation(line: 134, column: 5, scope: !175)
!177 = !DILocation(line: 135, column: 5, scope: !175)
!178 = !DILocation(line: 136, column: 1, scope: !175)
