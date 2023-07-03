; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_08.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !9 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end6, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !42, metadata !DIExpression()), !dbg !43
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !44
  store i8* %call2, i8** %environment, align 8, !dbg !43
  %2 = load i8*, i8** %environment, align 8, !dbg !45
  %cmp = icmp ne i8* %2, null, !dbg !47
  br i1 %cmp, label %if.then3, label %if.end, !dbg !48

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !49
  %4 = load i64, i64* %dataLen, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !52
  %5 = load i8*, i8** %environment, align 8, !dbg !53
  %6 = load i64, i64* %dataLen, align 8, !dbg !54
  %sub = sub i64 100, %6, !dbg !55
  %sub4 = sub i64 %sub, 1, !dbg !56
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !57
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !59

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !60
  %tobool8 = icmp ne i32 %call7, 0, !dbg !60
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !62

if.then9:                                         ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !63
  %call10 = call i32 (i8*, ...) @printf(i8* %7), !dbg !65
  br label %if.end11, !dbg !66

if.end11:                                         ; preds = %if.then9, %if.end6
  ret void, !dbg !67
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
define dso_local void @goodB2G1() #0 !dbg !68 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  %call = call i32 @staticReturnsTrue(), !dbg !75
  %tobool = icmp ne i32 %call, 0, !dbg !75
  br i1 %tobool, label %if.then, label %if.end6, !dbg !77

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !78, metadata !DIExpression()), !dbg !81
  %1 = load i8*, i8** %data, align 8, !dbg !82
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !83
  store i64 %call1, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !84, metadata !DIExpression()), !dbg !85
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !86
  store i8* %call2, i8** %environment, align 8, !dbg !85
  %2 = load i8*, i8** %environment, align 8, !dbg !87
  %cmp = icmp ne i8* %2, null, !dbg !89
  br i1 %cmp, label %if.then3, label %if.end, !dbg !90

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !91
  %4 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !94
  %5 = load i8*, i8** %environment, align 8, !dbg !95
  %6 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub = sub i64 100, %6, !dbg !97
  %sub4 = sub i64 %sub, 1, !dbg !98
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !101

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsFalse(), !dbg !102
  %tobool8 = icmp ne i32 %call7, 0, !dbg !102
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !104

if.then9:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  br label %if.end11, !dbg !107

if.else:                                          ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !108
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %7), !dbg !110
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  ret void, !dbg !111
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !116
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !116
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !117
  store i8* %arraydecay, i8** %data, align 8, !dbg !118
  %call = call i32 @staticReturnsTrue(), !dbg !119
  %tobool = icmp ne i32 %call, 0, !dbg !119
  br i1 %tobool, label %if.then, label %if.end6, !dbg !121

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !122, metadata !DIExpression()), !dbg !125
  %1 = load i8*, i8** %data, align 8, !dbg !126
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !127
  store i64 %call1, i64* %dataLen, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !128, metadata !DIExpression()), !dbg !129
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !130
  store i8* %call2, i8** %environment, align 8, !dbg !129
  %2 = load i8*, i8** %environment, align 8, !dbg !131
  %cmp = icmp ne i8* %2, null, !dbg !133
  br i1 %cmp, label %if.then3, label %if.end, !dbg !134

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !135
  %4 = load i64, i64* %dataLen, align 8, !dbg !137
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !138
  %5 = load i8*, i8** %environment, align 8, !dbg !139
  %6 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub = sub i64 100, %6, !dbg !141
  %sub4 = sub i64 %sub, 1, !dbg !142
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !145

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !146
  %tobool8 = icmp ne i32 %call7, 0, !dbg !146
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !148

if.then9:                                         ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !149
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %7), !dbg !151
  br label %if.end11, !dbg !152

if.end11:                                         ; preds = %if.then9, %if.end6
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !154 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !158
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !159
  store i8* %arraydecay, i8** %data, align 8, !dbg !160
  %call = call i32 @staticReturnsFalse(), !dbg !161
  %tobool = icmp ne i32 %call, 0, !dbg !161
  br i1 %tobool, label %if.then, label %if.else, !dbg !163

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !164
  br label %if.end, !dbg !166

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !167
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !169
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !170
  %tobool3 = icmp ne i32 %call2, 0, !dbg !170
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !172

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !173
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !175
  br label %if.end6, !dbg !176

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !177
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  %call = call i32 @staticReturnsTrue(), !dbg !185
  %tobool = icmp ne i32 %call, 0, !dbg !185
  br i1 %tobool, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !188
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !190
  br label %if.end, !dbg !191

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !192
  %tobool3 = icmp ne i32 %call2, 0, !dbg !192
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !194

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !195
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !197
  br label %if.end6, !dbg !198

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_08_good() #0 !dbg !200 {
entry:
  call void @goodB2G1(), !dbg !201
  call void @goodB2G2(), !dbg !202
  call void @goodG2B1(), !dbg !203
  call void @goodG2B2(), !dbg !204
  ret void, !dbg !205
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_729/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 36, type: !10, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 38, column: 5, scope: !9)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 41, type: !10, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 43, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad", scope: !1, file: !1, line: 48, type: !17, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 50, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 50, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 51, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 51, column: 10, scope: !16)
!28 = !DILocation(line: 52, column: 12, scope: !16)
!29 = !DILocation(line: 52, column: 10, scope: !16)
!30 = !DILocation(line: 53, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 53, column: 8)
!32 = !DILocation(line: 53, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 57, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 55, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 54, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 57, column: 20, scope: !34)
!40 = !DILocation(line: 57, column: 37, scope: !34)
!41 = !DILocation(line: 57, column: 30, scope: !34)
!42 = !DILocalVariable(name: "environment", scope: !34, file: !1, line: 58, type: !20)
!43 = !DILocation(line: 58, column: 20, scope: !34)
!44 = !DILocation(line: 58, column: 34, scope: !34)
!45 = !DILocation(line: 60, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !34, file: !1, line: 60, column: 17)
!47 = !DILocation(line: 60, column: 29, scope: !46)
!48 = !DILocation(line: 60, column: 17, scope: !34)
!49 = !DILocation(line: 63, column: 25, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 61, column: 13)
!51 = !DILocation(line: 63, column: 30, scope: !50)
!52 = !DILocation(line: 63, column: 29, scope: !50)
!53 = !DILocation(line: 63, column: 39, scope: !50)
!54 = !DILocation(line: 63, column: 56, scope: !50)
!55 = !DILocation(line: 63, column: 55, scope: !50)
!56 = !DILocation(line: 63, column: 63, scope: !50)
!57 = !DILocation(line: 63, column: 17, scope: !50)
!58 = !DILocation(line: 64, column: 13, scope: !50)
!59 = !DILocation(line: 66, column: 5, scope: !35)
!60 = !DILocation(line: 67, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !16, file: !1, line: 67, column: 8)
!62 = !DILocation(line: 67, column: 8, scope: !16)
!63 = !DILocation(line: 70, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 68, column: 5)
!65 = !DILocation(line: 70, column: 9, scope: !64)
!66 = !DILocation(line: 71, column: 5, scope: !64)
!67 = !DILocation(line: 72, column: 1, scope: !16)
!68 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 79, type: !17, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocalVariable(name: "data", scope: !68, file: !1, line: 81, type: !20)
!70 = !DILocation(line: 81, column: 12, scope: !68)
!71 = !DILocalVariable(name: "dataBuffer", scope: !68, file: !1, line: 82, type: !24)
!72 = !DILocation(line: 82, column: 10, scope: !68)
!73 = !DILocation(line: 83, column: 12, scope: !68)
!74 = !DILocation(line: 83, column: 10, scope: !68)
!75 = !DILocation(line: 84, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 84, column: 8)
!77 = !DILocation(line: 84, column: 8, scope: !68)
!78 = !DILocalVariable(name: "dataLen", scope: !79, file: !1, line: 88, type: !36)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 86, column: 9)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 85, column: 5)
!81 = !DILocation(line: 88, column: 20, scope: !79)
!82 = !DILocation(line: 88, column: 37, scope: !79)
!83 = !DILocation(line: 88, column: 30, scope: !79)
!84 = !DILocalVariable(name: "environment", scope: !79, file: !1, line: 89, type: !20)
!85 = !DILocation(line: 89, column: 20, scope: !79)
!86 = !DILocation(line: 89, column: 34, scope: !79)
!87 = !DILocation(line: 91, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !79, file: !1, line: 91, column: 17)
!89 = !DILocation(line: 91, column: 29, scope: !88)
!90 = !DILocation(line: 91, column: 17, scope: !79)
!91 = !DILocation(line: 94, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 92, column: 13)
!93 = !DILocation(line: 94, column: 30, scope: !92)
!94 = !DILocation(line: 94, column: 29, scope: !92)
!95 = !DILocation(line: 94, column: 39, scope: !92)
!96 = !DILocation(line: 94, column: 56, scope: !92)
!97 = !DILocation(line: 94, column: 55, scope: !92)
!98 = !DILocation(line: 94, column: 63, scope: !92)
!99 = !DILocation(line: 94, column: 17, scope: !92)
!100 = !DILocation(line: 95, column: 13, scope: !92)
!101 = !DILocation(line: 97, column: 5, scope: !80)
!102 = !DILocation(line: 98, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !68, file: !1, line: 98, column: 8)
!104 = !DILocation(line: 98, column: 8, scope: !68)
!105 = !DILocation(line: 101, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 99, column: 5)
!107 = !DILocation(line: 102, column: 5, scope: !106)
!108 = !DILocation(line: 106, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 104, column: 5)
!110 = !DILocation(line: 106, column: 9, scope: !109)
!111 = !DILocation(line: 108, column: 1, scope: !68)
!112 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 111, type: !17, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!113 = !DILocalVariable(name: "data", scope: !112, file: !1, line: 113, type: !20)
!114 = !DILocation(line: 113, column: 12, scope: !112)
!115 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !1, line: 114, type: !24)
!116 = !DILocation(line: 114, column: 10, scope: !112)
!117 = !DILocation(line: 115, column: 12, scope: !112)
!118 = !DILocation(line: 115, column: 10, scope: !112)
!119 = !DILocation(line: 116, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !1, line: 116, column: 8)
!121 = !DILocation(line: 116, column: 8, scope: !112)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !1, line: 120, type: !36)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 118, column: 9)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 117, column: 5)
!125 = !DILocation(line: 120, column: 20, scope: !123)
!126 = !DILocation(line: 120, column: 37, scope: !123)
!127 = !DILocation(line: 120, column: 30, scope: !123)
!128 = !DILocalVariable(name: "environment", scope: !123, file: !1, line: 121, type: !20)
!129 = !DILocation(line: 121, column: 20, scope: !123)
!130 = !DILocation(line: 121, column: 34, scope: !123)
!131 = !DILocation(line: 123, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !123, file: !1, line: 123, column: 17)
!133 = !DILocation(line: 123, column: 29, scope: !132)
!134 = !DILocation(line: 123, column: 17, scope: !123)
!135 = !DILocation(line: 126, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 124, column: 13)
!137 = !DILocation(line: 126, column: 30, scope: !136)
!138 = !DILocation(line: 126, column: 29, scope: !136)
!139 = !DILocation(line: 126, column: 39, scope: !136)
!140 = !DILocation(line: 126, column: 56, scope: !136)
!141 = !DILocation(line: 126, column: 55, scope: !136)
!142 = !DILocation(line: 126, column: 63, scope: !136)
!143 = !DILocation(line: 126, column: 17, scope: !136)
!144 = !DILocation(line: 127, column: 13, scope: !136)
!145 = !DILocation(line: 129, column: 5, scope: !124)
!146 = !DILocation(line: 130, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !112, file: !1, line: 130, column: 8)
!148 = !DILocation(line: 130, column: 8, scope: !112)
!149 = !DILocation(line: 133, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 131, column: 5)
!151 = !DILocation(line: 133, column: 9, scope: !150)
!152 = !DILocation(line: 134, column: 5, scope: !150)
!153 = !DILocation(line: 135, column: 1, scope: !112)
!154 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 138, type: !17, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!155 = !DILocalVariable(name: "data", scope: !154, file: !1, line: 140, type: !20)
!156 = !DILocation(line: 140, column: 12, scope: !154)
!157 = !DILocalVariable(name: "dataBuffer", scope: !154, file: !1, line: 141, type: !24)
!158 = !DILocation(line: 141, column: 10, scope: !154)
!159 = !DILocation(line: 142, column: 12, scope: !154)
!160 = !DILocation(line: 142, column: 10, scope: !154)
!161 = !DILocation(line: 143, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !1, line: 143, column: 8)
!163 = !DILocation(line: 143, column: 8, scope: !154)
!164 = !DILocation(line: 146, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 144, column: 5)
!166 = !DILocation(line: 147, column: 5, scope: !165)
!167 = !DILocation(line: 151, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !162, file: !1, line: 149, column: 5)
!169 = !DILocation(line: 151, column: 9, scope: !168)
!170 = !DILocation(line: 153, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !154, file: !1, line: 153, column: 8)
!172 = !DILocation(line: 153, column: 8, scope: !154)
!173 = !DILocation(line: 156, column: 16, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 154, column: 5)
!175 = !DILocation(line: 156, column: 9, scope: !174)
!176 = !DILocation(line: 157, column: 5, scope: !174)
!177 = !DILocation(line: 158, column: 1, scope: !154)
!178 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 161, type: !17, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!179 = !DILocalVariable(name: "data", scope: !178, file: !1, line: 163, type: !20)
!180 = !DILocation(line: 163, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !1, line: 164, type: !24)
!182 = !DILocation(line: 164, column: 10, scope: !178)
!183 = !DILocation(line: 165, column: 12, scope: !178)
!184 = !DILocation(line: 165, column: 10, scope: !178)
!185 = !DILocation(line: 166, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !1, line: 166, column: 8)
!187 = !DILocation(line: 166, column: 8, scope: !178)
!188 = !DILocation(line: 169, column: 16, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 167, column: 5)
!190 = !DILocation(line: 169, column: 9, scope: !189)
!191 = !DILocation(line: 170, column: 5, scope: !189)
!192 = !DILocation(line: 171, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !178, file: !1, line: 171, column: 8)
!194 = !DILocation(line: 171, column: 8, scope: !178)
!195 = !DILocation(line: 174, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 172, column: 5)
!197 = !DILocation(line: 174, column: 9, scope: !196)
!198 = !DILocation(line: 175, column: 5, scope: !196)
!199 = !DILocation(line: 176, column: 1, scope: !178)
!200 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_08_good", scope: !1, file: !1, line: 178, type: !17, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocation(line: 180, column: 5, scope: !200)
!202 = !DILocation(line: 181, column: 5, scope: !200)
!203 = !DILocation(line: 182, column: 5, scope: !200)
!204 = !DILocation(line: 183, column: 5, scope: !200)
!205 = !DILocation(line: 184, column: 1, scope: !200)
