; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_22a.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_bad() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !22, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %data, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  %2 = load i64, i64* %dataLen, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then, label %if.end18, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !46
  %4 = load i64, i64* %dataLen, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub1 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub1 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp3 = icmp ne i8* %call2, null, !dbg !56
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !57

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !58
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call6, i64* %dataLen, align 8, !dbg !61
  %8 = load i64, i64* %dataLen, align 8, !dbg !62
  %cmp7 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !66
  %10 = load i64, i64* %dataLen, align 8, !dbg !67
  %sub9 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv10 = sext i8 %11 to i32, !dbg !66
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !69
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !70

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !71
  %13 = load i64, i64* %dataLen, align 8, !dbg !73
  %sub14 = sub i64 %13, 1, !dbg !74
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !71
  store i8 0, i8* %arrayidx15, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !77

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %data, align 8, !dbg !80
  %15 = load i64, i64* %dataLen, align 8, !dbg !81
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx16, align 1, !dbg !82
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !83

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal, align 4, !dbg !84
  %16 = load i8*, i8** %data, align 8, !dbg !85
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_badSink(i8* %16), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_badSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !88 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !92
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !93
  store i8* %arraydecay, i8** %data, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !95, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i64 @strlen(i8* %1) #6, !dbg !99
  store i64 %call, i64* %dataLen, align 8, !dbg !97
  %2 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end18, !dbg !104

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !105
  %4 = load i64, i64* %dataLen, align 8, !dbg !108
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !109
  %5 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub1 = sub i64 100, %5, !dbg !111
  %conv = trunc i64 %sub1 to i32, !dbg !112
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !113
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !114
  %cmp3 = icmp ne i8* %call2, null, !dbg !115
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !116

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !117
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !119
  store i64 %call6, i64* %dataLen, align 8, !dbg !120
  %8 = load i64, i64* %dataLen, align 8, !dbg !121
  %cmp7 = icmp ugt i64 %8, 0, !dbg !123
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !124

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !125
  %10 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub9 = sub i64 %10, 1, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !125
  %11 = load i8, i8* %arrayidx, align 1, !dbg !125
  %conv10 = sext i8 %11 to i32, !dbg !125
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !128
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !129

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !130
  %13 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub14 = sub i64 %13, 1, !dbg !133
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !130
  store i8 0, i8* %arrayidx15, align 1, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !136

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !137
  %14 = load i8*, i8** %data, align 8, !dbg !139
  %15 = load i64, i64* %dataLen, align 8, !dbg !140
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !139
  store i8 0, i8* %arrayidx16, align 1, !dbg !141
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !142

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global, align 4, !dbg !143
  %16 = load i8*, i8** %data, align 8, !dbg !144
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(i8* %16), !dbg !145
  ret void, !dbg !146
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !147 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !151
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !152
  store i8* %arraydecay, i8** %data, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i64 @strlen(i8* %1) #6, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  %2 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %2, !dbg !161
  %cmp = icmp ugt i64 %sub, 1, !dbg !162
  br i1 %cmp, label %if.then, label %if.end18, !dbg !163

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !164
  %4 = load i64, i64* %dataLen, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !168
  %5 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub1 = sub i64 100, %5, !dbg !170
  %conv = trunc i64 %sub1 to i32, !dbg !171
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !172
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !173
  %cmp3 = icmp ne i8* %call2, null, !dbg !174
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !175

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !176
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !178
  store i64 %call6, i64* %dataLen, align 8, !dbg !179
  %8 = load i64, i64* %dataLen, align 8, !dbg !180
  %cmp7 = icmp ugt i64 %8, 0, !dbg !182
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !183

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !184
  %10 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub9 = sub i64 %10, 1, !dbg !186
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !184
  %11 = load i8, i8* %arrayidx, align 1, !dbg !184
  %conv10 = sext i8 %11 to i32, !dbg !184
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !187
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !188

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !189
  %13 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub14 = sub i64 %13, 1, !dbg !192
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !189
  store i8 0, i8* %arrayidx15, align 1, !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !195

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !196
  %14 = load i8*, i8** %data, align 8, !dbg !198
  %15 = load i64, i64* %dataLen, align 8, !dbg !199
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !198
  store i8 0, i8* %arrayidx16, align 1, !dbg !200
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !201

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global, align 4, !dbg !202
  %16 = load i8*, i8** %data, align 8, !dbg !203
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(i8* %16), !dbg !204
  ret void, !dbg !205
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !206 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !210
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !211
  store i8* %arraydecay, i8** %data, align 8, !dbg !212
  %1 = load i8*, i8** %data, align 8, !dbg !213
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !214
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal, align 4, !dbg !215
  %2 = load i8*, i8** %data, align 8, !dbg !216
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(i8* %2), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_good() #0 !dbg !219 {
entry:
  call void @goodB2G1(), !dbg !220
  call void @goodB2G2(), !dbg !221
  call void @goodG2B(), !dbg !222
  ret void, !dbg !223
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_997/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global", scope: !2, file: !3, line: 72, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global", scope: !2, file: !3, line: 73, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal", scope: !2, file: !3, line: 74, type: !6, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_bad", scope: !3, file: !3, line: 33, type: !20, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 35, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocation(line: 35, column: 12, scope: !19)
!26 = !DILocalVariable(name: "dataBuffer", scope: !19, file: !3, line: 36, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 36, column: 10, scope: !19)
!31 = !DILocation(line: 37, column: 12, scope: !19)
!32 = !DILocation(line: 37, column: 10, scope: !19)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !3, line: 40, type: !35)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 38, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 40, column: 16, scope: !34)
!39 = !DILocation(line: 40, column: 33, scope: !34)
!40 = !DILocation(line: 40, column: 26, scope: !34)
!41 = !DILocation(line: 42, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !34, file: !3, line: 42, column: 13)
!43 = !DILocation(line: 42, column: 16, scope: !42)
!44 = !DILocation(line: 42, column: 25, scope: !42)
!45 = !DILocation(line: 42, column: 13, scope: !34)
!46 = !DILocation(line: 45, column: 23, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 45, column: 17)
!48 = distinct !DILexicalBlock(scope: !42, file: !3, line: 43, column: 9)
!49 = !DILocation(line: 45, column: 28, scope: !47)
!50 = !DILocation(line: 45, column: 27, scope: !47)
!51 = !DILocation(line: 45, column: 47, scope: !47)
!52 = !DILocation(line: 45, column: 46, scope: !47)
!53 = !DILocation(line: 45, column: 37, scope: !47)
!54 = !DILocation(line: 45, column: 57, scope: !47)
!55 = !DILocation(line: 45, column: 17, scope: !47)
!56 = !DILocation(line: 45, column: 64, scope: !47)
!57 = !DILocation(line: 45, column: 17, scope: !48)
!58 = !DILocation(line: 49, column: 34, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !3, line: 46, column: 13)
!60 = !DILocation(line: 49, column: 27, scope: !59)
!61 = !DILocation(line: 49, column: 25, scope: !59)
!62 = !DILocation(line: 50, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 50, column: 21)
!64 = !DILocation(line: 50, column: 29, scope: !63)
!65 = !DILocation(line: 50, column: 33, scope: !63)
!66 = !DILocation(line: 50, column: 36, scope: !63)
!67 = !DILocation(line: 50, column: 41, scope: !63)
!68 = !DILocation(line: 50, column: 48, scope: !63)
!69 = !DILocation(line: 50, column: 52, scope: !63)
!70 = !DILocation(line: 50, column: 21, scope: !59)
!71 = !DILocation(line: 52, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !3, line: 51, column: 17)
!73 = !DILocation(line: 52, column: 26, scope: !72)
!74 = !DILocation(line: 52, column: 33, scope: !72)
!75 = !DILocation(line: 52, column: 37, scope: !72)
!76 = !DILocation(line: 53, column: 17, scope: !72)
!77 = !DILocation(line: 54, column: 13, scope: !59)
!78 = !DILocation(line: 57, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !3, line: 56, column: 13)
!80 = !DILocation(line: 59, column: 17, scope: !79)
!81 = !DILocation(line: 59, column: 22, scope: !79)
!82 = !DILocation(line: 59, column: 31, scope: !79)
!83 = !DILocation(line: 61, column: 9, scope: !48)
!84 = !DILocation(line: 63, column: 64, scope: !19)
!85 = !DILocation(line: 64, column: 62, scope: !19)
!86 = !DILocation(line: 64, column: 5, scope: !19)
!87 = !DILocation(line: 65, column: 1, scope: !19)
!88 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !20, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DILocalVariable(name: "data", scope: !88, file: !3, line: 80, type: !23)
!90 = !DILocation(line: 80, column: 12, scope: !88)
!91 = !DILocalVariable(name: "dataBuffer", scope: !88, file: !3, line: 81, type: !27)
!92 = !DILocation(line: 81, column: 10, scope: !88)
!93 = !DILocation(line: 82, column: 12, scope: !88)
!94 = !DILocation(line: 82, column: 10, scope: !88)
!95 = !DILocalVariable(name: "dataLen", scope: !96, file: !3, line: 85, type: !35)
!96 = distinct !DILexicalBlock(scope: !88, file: !3, line: 83, column: 5)
!97 = !DILocation(line: 85, column: 16, scope: !96)
!98 = !DILocation(line: 85, column: 33, scope: !96)
!99 = !DILocation(line: 85, column: 26, scope: !96)
!100 = !DILocation(line: 87, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !3, line: 87, column: 13)
!102 = !DILocation(line: 87, column: 16, scope: !101)
!103 = !DILocation(line: 87, column: 25, scope: !101)
!104 = !DILocation(line: 87, column: 13, scope: !96)
!105 = !DILocation(line: 90, column: 23, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 90, column: 17)
!107 = distinct !DILexicalBlock(scope: !101, file: !3, line: 88, column: 9)
!108 = !DILocation(line: 90, column: 28, scope: !106)
!109 = !DILocation(line: 90, column: 27, scope: !106)
!110 = !DILocation(line: 90, column: 47, scope: !106)
!111 = !DILocation(line: 90, column: 46, scope: !106)
!112 = !DILocation(line: 90, column: 37, scope: !106)
!113 = !DILocation(line: 90, column: 57, scope: !106)
!114 = !DILocation(line: 90, column: 17, scope: !106)
!115 = !DILocation(line: 90, column: 64, scope: !106)
!116 = !DILocation(line: 90, column: 17, scope: !107)
!117 = !DILocation(line: 94, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !106, file: !3, line: 91, column: 13)
!119 = !DILocation(line: 94, column: 27, scope: !118)
!120 = !DILocation(line: 94, column: 25, scope: !118)
!121 = !DILocation(line: 95, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 95, column: 21)
!123 = !DILocation(line: 95, column: 29, scope: !122)
!124 = !DILocation(line: 95, column: 33, scope: !122)
!125 = !DILocation(line: 95, column: 36, scope: !122)
!126 = !DILocation(line: 95, column: 41, scope: !122)
!127 = !DILocation(line: 95, column: 48, scope: !122)
!128 = !DILocation(line: 95, column: 52, scope: !122)
!129 = !DILocation(line: 95, column: 21, scope: !118)
!130 = !DILocation(line: 97, column: 21, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !3, line: 96, column: 17)
!132 = !DILocation(line: 97, column: 26, scope: !131)
!133 = !DILocation(line: 97, column: 33, scope: !131)
!134 = !DILocation(line: 97, column: 37, scope: !131)
!135 = !DILocation(line: 98, column: 17, scope: !131)
!136 = !DILocation(line: 99, column: 13, scope: !118)
!137 = !DILocation(line: 102, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !106, file: !3, line: 101, column: 13)
!139 = !DILocation(line: 104, column: 17, scope: !138)
!140 = !DILocation(line: 104, column: 22, scope: !138)
!141 = !DILocation(line: 104, column: 31, scope: !138)
!142 = !DILocation(line: 106, column: 9, scope: !107)
!143 = !DILocation(line: 108, column: 69, scope: !88)
!144 = !DILocation(line: 109, column: 67, scope: !88)
!145 = !DILocation(line: 109, column: 5, scope: !88)
!146 = !DILocation(line: 110, column: 1, scope: !88)
!147 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 114, type: !20, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!148 = !DILocalVariable(name: "data", scope: !147, file: !3, line: 116, type: !23)
!149 = !DILocation(line: 116, column: 12, scope: !147)
!150 = !DILocalVariable(name: "dataBuffer", scope: !147, file: !3, line: 117, type: !27)
!151 = !DILocation(line: 117, column: 10, scope: !147)
!152 = !DILocation(line: 118, column: 12, scope: !147)
!153 = !DILocation(line: 118, column: 10, scope: !147)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !3, line: 121, type: !35)
!155 = distinct !DILexicalBlock(scope: !147, file: !3, line: 119, column: 5)
!156 = !DILocation(line: 121, column: 16, scope: !155)
!157 = !DILocation(line: 121, column: 33, scope: !155)
!158 = !DILocation(line: 121, column: 26, scope: !155)
!159 = !DILocation(line: 123, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !3, line: 123, column: 13)
!161 = !DILocation(line: 123, column: 16, scope: !160)
!162 = !DILocation(line: 123, column: 25, scope: !160)
!163 = !DILocation(line: 123, column: 13, scope: !155)
!164 = !DILocation(line: 126, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 126, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !3, line: 124, column: 9)
!167 = !DILocation(line: 126, column: 28, scope: !165)
!168 = !DILocation(line: 126, column: 27, scope: !165)
!169 = !DILocation(line: 126, column: 47, scope: !165)
!170 = !DILocation(line: 126, column: 46, scope: !165)
!171 = !DILocation(line: 126, column: 37, scope: !165)
!172 = !DILocation(line: 126, column: 57, scope: !165)
!173 = !DILocation(line: 126, column: 17, scope: !165)
!174 = !DILocation(line: 126, column: 64, scope: !165)
!175 = !DILocation(line: 126, column: 17, scope: !166)
!176 = !DILocation(line: 130, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !3, line: 127, column: 13)
!178 = !DILocation(line: 130, column: 27, scope: !177)
!179 = !DILocation(line: 130, column: 25, scope: !177)
!180 = !DILocation(line: 131, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 131, column: 21)
!182 = !DILocation(line: 131, column: 29, scope: !181)
!183 = !DILocation(line: 131, column: 33, scope: !181)
!184 = !DILocation(line: 131, column: 36, scope: !181)
!185 = !DILocation(line: 131, column: 41, scope: !181)
!186 = !DILocation(line: 131, column: 48, scope: !181)
!187 = !DILocation(line: 131, column: 52, scope: !181)
!188 = !DILocation(line: 131, column: 21, scope: !177)
!189 = !DILocation(line: 133, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !3, line: 132, column: 17)
!191 = !DILocation(line: 133, column: 26, scope: !190)
!192 = !DILocation(line: 133, column: 33, scope: !190)
!193 = !DILocation(line: 133, column: 37, scope: !190)
!194 = !DILocation(line: 134, column: 17, scope: !190)
!195 = !DILocation(line: 135, column: 13, scope: !177)
!196 = !DILocation(line: 138, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !165, file: !3, line: 137, column: 13)
!198 = !DILocation(line: 140, column: 17, scope: !197)
!199 = !DILocation(line: 140, column: 22, scope: !197)
!200 = !DILocation(line: 140, column: 31, scope: !197)
!201 = !DILocation(line: 142, column: 9, scope: !166)
!202 = !DILocation(line: 144, column: 69, scope: !147)
!203 = !DILocation(line: 145, column: 67, scope: !147)
!204 = !DILocation(line: 145, column: 5, scope: !147)
!205 = !DILocation(line: 146, column: 1, scope: !147)
!206 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 150, type: !20, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!207 = !DILocalVariable(name: "data", scope: !206, file: !3, line: 152, type: !23)
!208 = !DILocation(line: 152, column: 12, scope: !206)
!209 = !DILocalVariable(name: "dataBuffer", scope: !206, file: !3, line: 153, type: !27)
!210 = !DILocation(line: 153, column: 10, scope: !206)
!211 = !DILocation(line: 154, column: 12, scope: !206)
!212 = !DILocation(line: 154, column: 10, scope: !206)
!213 = !DILocation(line: 156, column: 12, scope: !206)
!214 = !DILocation(line: 156, column: 5, scope: !206)
!215 = !DILocation(line: 157, column: 68, scope: !206)
!216 = !DILocation(line: 158, column: 66, scope: !206)
!217 = !DILocation(line: 158, column: 5, scope: !206)
!218 = !DILocation(line: 159, column: 1, scope: !206)
!219 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_good", scope: !3, file: !3, line: 161, type: !20, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!220 = !DILocation(line: 163, column: 5, scope: !219)
!221 = !DILocation(line: 164, column: 5, scope: !219)
!222 = !DILocation(line: 165, column: 5, scope: !219)
!223 = !DILocation(line: 166, column: 1, scope: !219)
