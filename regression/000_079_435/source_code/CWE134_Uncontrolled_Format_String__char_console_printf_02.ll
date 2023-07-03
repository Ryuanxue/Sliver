; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_02.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_02.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_02_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  %2 = load i64, i64* %dataLen, align 8, !dbg !34
  %sub = sub i64 100, %2, !dbg !36
  %cmp = icmp ugt i64 %sub, 1, !dbg !37
  br i1 %cmp, label %if.then, label %if.end18, !dbg !38

if.then:                                          ; preds = %entry
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

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !77
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !80
  ret void, !dbg !81
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
define dso_local void @goodB2G1() #0 !dbg !82 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !86
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !86
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !87
  store i8* %arraydecay, i8** %data, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !89, metadata !DIExpression()), !dbg !93
  %1 = load i8*, i8** %data, align 8, !dbg !94
  %call = call i64 @strlen(i8* %1) #6, !dbg !95
  store i64 %call, i64* %dataLen, align 8, !dbg !93
  %2 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub = sub i64 100, %2, !dbg !98
  %cmp = icmp ugt i64 %sub, 1, !dbg !99
  br i1 %cmp, label %if.then, label %if.end18, !dbg !100

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !101
  %4 = load i64, i64* %dataLen, align 8, !dbg !104
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !105
  %5 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub1 = sub i64 100, %5, !dbg !107
  %conv = trunc i64 %sub1 to i32, !dbg !108
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !109
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !110
  %cmp3 = icmp ne i8* %call2, null, !dbg !111
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !112

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !113
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !115
  store i64 %call6, i64* %dataLen, align 8, !dbg !116
  %8 = load i64, i64* %dataLen, align 8, !dbg !117
  %cmp7 = icmp ugt i64 %8, 0, !dbg !119
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !120

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !121
  %10 = load i64, i64* %dataLen, align 8, !dbg !122
  %sub9 = sub i64 %10, 1, !dbg !123
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !121
  %11 = load i8, i8* %arrayidx, align 1, !dbg !121
  %conv10 = sext i8 %11 to i32, !dbg !121
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !124
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !125

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !126
  %13 = load i64, i64* %dataLen, align 8, !dbg !128
  %sub14 = sub i64 %13, 1, !dbg !129
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !126
  store i8 0, i8* %arrayidx15, align 1, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !132

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !133
  %14 = load i8*, i8** %data, align 8, !dbg !135
  %15 = load i64, i64* %dataLen, align 8, !dbg !136
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !135
  store i8 0, i8* %arrayidx16, align 1, !dbg !137
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !138

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !139
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !144 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !148
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !148
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !149
  store i8* %arraydecay, i8** %data, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !151, metadata !DIExpression()), !dbg !155
  %1 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i64 @strlen(i8* %1) #6, !dbg !157
  store i64 %call, i64* %dataLen, align 8, !dbg !155
  %2 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub = sub i64 100, %2, !dbg !160
  %cmp = icmp ugt i64 %sub, 1, !dbg !161
  br i1 %cmp, label %if.then, label %if.end18, !dbg !162

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !163
  %4 = load i64, i64* %dataLen, align 8, !dbg !166
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !167
  %5 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub1 = sub i64 100, %5, !dbg !169
  %conv = trunc i64 %sub1 to i32, !dbg !170
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !171
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !172
  %cmp3 = icmp ne i8* %call2, null, !dbg !173
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !174

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !175
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !177
  store i64 %call6, i64* %dataLen, align 8, !dbg !178
  %8 = load i64, i64* %dataLen, align 8, !dbg !179
  %cmp7 = icmp ugt i64 %8, 0, !dbg !181
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !182

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !183
  %10 = load i64, i64* %dataLen, align 8, !dbg !184
  %sub9 = sub i64 %10, 1, !dbg !185
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !183
  %11 = load i8, i8* %arrayidx, align 1, !dbg !183
  %conv10 = sext i8 %11 to i32, !dbg !183
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !186
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !187

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !188
  %13 = load i64, i64* %dataLen, align 8, !dbg !190
  %sub14 = sub i64 %13, 1, !dbg !191
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !188
  store i8 0, i8* %arrayidx15, align 1, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !194

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !195
  %14 = load i8*, i8** %data, align 8, !dbg !197
  %15 = load i64, i64* %dataLen, align 8, !dbg !198
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !197
  store i8 0, i8* %arrayidx16, align 1, !dbg !199
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !200

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !201
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !206 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !216
  %2 = load i8*, i8** %data, align 8, !dbg !217
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !222 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !226
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !227
  store i8* %arraydecay, i8** %data, align 8, !dbg !228
  %1 = load i8*, i8** %data, align 8, !dbg !229
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !232
  %2 = load i8*, i8** %data, align 8, !dbg !233
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_02_good() #0 !dbg !238 {
entry:
  call void @goodB2G1(), !dbg !239
  call void @goodB2G2(), !dbg !240
  call void @goodG2B1(), !dbg !241
  call void @goodG2B2(), !dbg !242
  ret void, !dbg !243
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_435/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_02_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 36, type: !28)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 34, column: 9)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 33, column: 5)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 32, column: 8)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 36, column: 20, scope: !25)
!32 = !DILocation(line: 36, column: 37, scope: !25)
!33 = !DILocation(line: 36, column: 30, scope: !25)
!34 = !DILocation(line: 38, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !25, file: !1, line: 38, column: 17)
!36 = !DILocation(line: 38, column: 20, scope: !35)
!37 = !DILocation(line: 38, column: 29, scope: !35)
!38 = !DILocation(line: 38, column: 17, scope: !25)
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
!77 = !DILocation(line: 63, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 61, column: 5)
!79 = distinct !DILexicalBlock(scope: !10, file: !1, line: 60, column: 8)
!80 = !DILocation(line: 63, column: 9, scope: !78)
!81 = !DILocation(line: 65, column: 1, scope: !10)
!82 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 72, type: !11, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DILocalVariable(name: "data", scope: !82, file: !1, line: 74, type: !14)
!84 = !DILocation(line: 74, column: 12, scope: !82)
!85 = !DILocalVariable(name: "dataBuffer", scope: !82, file: !1, line: 75, type: !18)
!86 = !DILocation(line: 75, column: 10, scope: !82)
!87 = !DILocation(line: 76, column: 12, scope: !82)
!88 = !DILocation(line: 76, column: 10, scope: !82)
!89 = !DILocalVariable(name: "dataLen", scope: !90, file: !1, line: 81, type: !28)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 79, column: 9)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 78, column: 5)
!92 = distinct !DILexicalBlock(scope: !82, file: !1, line: 77, column: 8)
!93 = !DILocation(line: 81, column: 20, scope: !90)
!94 = !DILocation(line: 81, column: 37, scope: !90)
!95 = !DILocation(line: 81, column: 30, scope: !90)
!96 = !DILocation(line: 83, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !1, line: 83, column: 17)
!98 = !DILocation(line: 83, column: 20, scope: !97)
!99 = !DILocation(line: 83, column: 29, scope: !97)
!100 = !DILocation(line: 83, column: 17, scope: !90)
!101 = !DILocation(line: 86, column: 27, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 86, column: 21)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 84, column: 13)
!104 = !DILocation(line: 86, column: 32, scope: !102)
!105 = !DILocation(line: 86, column: 31, scope: !102)
!106 = !DILocation(line: 86, column: 51, scope: !102)
!107 = !DILocation(line: 86, column: 50, scope: !102)
!108 = !DILocation(line: 86, column: 41, scope: !102)
!109 = !DILocation(line: 86, column: 61, scope: !102)
!110 = !DILocation(line: 86, column: 21, scope: !102)
!111 = !DILocation(line: 86, column: 68, scope: !102)
!112 = !DILocation(line: 86, column: 21, scope: !103)
!113 = !DILocation(line: 90, column: 38, scope: !114)
!114 = distinct !DILexicalBlock(scope: !102, file: !1, line: 87, column: 17)
!115 = !DILocation(line: 90, column: 31, scope: !114)
!116 = !DILocation(line: 90, column: 29, scope: !114)
!117 = !DILocation(line: 91, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 91, column: 25)
!119 = !DILocation(line: 91, column: 33, scope: !118)
!120 = !DILocation(line: 91, column: 37, scope: !118)
!121 = !DILocation(line: 91, column: 40, scope: !118)
!122 = !DILocation(line: 91, column: 45, scope: !118)
!123 = !DILocation(line: 91, column: 52, scope: !118)
!124 = !DILocation(line: 91, column: 56, scope: !118)
!125 = !DILocation(line: 91, column: 25, scope: !114)
!126 = !DILocation(line: 93, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !1, line: 92, column: 21)
!128 = !DILocation(line: 93, column: 30, scope: !127)
!129 = !DILocation(line: 93, column: 37, scope: !127)
!130 = !DILocation(line: 93, column: 41, scope: !127)
!131 = !DILocation(line: 94, column: 21, scope: !127)
!132 = !DILocation(line: 95, column: 17, scope: !114)
!133 = !DILocation(line: 98, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !102, file: !1, line: 97, column: 17)
!135 = !DILocation(line: 100, column: 21, scope: !134)
!136 = !DILocation(line: 100, column: 26, scope: !134)
!137 = !DILocation(line: 100, column: 35, scope: !134)
!138 = !DILocation(line: 102, column: 13, scope: !103)
!139 = !DILocation(line: 113, column: 24, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 111, column: 5)
!141 = distinct !DILexicalBlock(scope: !82, file: !1, line: 105, column: 8)
!142 = !DILocation(line: 113, column: 9, scope: !140)
!143 = !DILocation(line: 115, column: 1, scope: !82)
!144 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DILocalVariable(name: "data", scope: !144, file: !1, line: 120, type: !14)
!146 = !DILocation(line: 120, column: 12, scope: !144)
!147 = !DILocalVariable(name: "dataBuffer", scope: !144, file: !1, line: 121, type: !18)
!148 = !DILocation(line: 121, column: 10, scope: !144)
!149 = !DILocation(line: 122, column: 12, scope: !144)
!150 = !DILocation(line: 122, column: 10, scope: !144)
!151 = !DILocalVariable(name: "dataLen", scope: !152, file: !1, line: 127, type: !28)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 125, column: 9)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 124, column: 5)
!154 = distinct !DILexicalBlock(scope: !144, file: !1, line: 123, column: 8)
!155 = !DILocation(line: 127, column: 20, scope: !152)
!156 = !DILocation(line: 127, column: 37, scope: !152)
!157 = !DILocation(line: 127, column: 30, scope: !152)
!158 = !DILocation(line: 129, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !1, line: 129, column: 17)
!160 = !DILocation(line: 129, column: 20, scope: !159)
!161 = !DILocation(line: 129, column: 29, scope: !159)
!162 = !DILocation(line: 129, column: 17, scope: !152)
!163 = !DILocation(line: 132, column: 27, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 132, column: 21)
!165 = distinct !DILexicalBlock(scope: !159, file: !1, line: 130, column: 13)
!166 = !DILocation(line: 132, column: 32, scope: !164)
!167 = !DILocation(line: 132, column: 31, scope: !164)
!168 = !DILocation(line: 132, column: 51, scope: !164)
!169 = !DILocation(line: 132, column: 50, scope: !164)
!170 = !DILocation(line: 132, column: 41, scope: !164)
!171 = !DILocation(line: 132, column: 61, scope: !164)
!172 = !DILocation(line: 132, column: 21, scope: !164)
!173 = !DILocation(line: 132, column: 68, scope: !164)
!174 = !DILocation(line: 132, column: 21, scope: !165)
!175 = !DILocation(line: 136, column: 38, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !1, line: 133, column: 17)
!177 = !DILocation(line: 136, column: 31, scope: !176)
!178 = !DILocation(line: 136, column: 29, scope: !176)
!179 = !DILocation(line: 137, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 137, column: 25)
!181 = !DILocation(line: 137, column: 33, scope: !180)
!182 = !DILocation(line: 137, column: 37, scope: !180)
!183 = !DILocation(line: 137, column: 40, scope: !180)
!184 = !DILocation(line: 137, column: 45, scope: !180)
!185 = !DILocation(line: 137, column: 52, scope: !180)
!186 = !DILocation(line: 137, column: 56, scope: !180)
!187 = !DILocation(line: 137, column: 25, scope: !176)
!188 = !DILocation(line: 139, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !1, line: 138, column: 21)
!190 = !DILocation(line: 139, column: 30, scope: !189)
!191 = !DILocation(line: 139, column: 37, scope: !189)
!192 = !DILocation(line: 139, column: 41, scope: !189)
!193 = !DILocation(line: 140, column: 21, scope: !189)
!194 = !DILocation(line: 141, column: 17, scope: !176)
!195 = !DILocation(line: 144, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !164, file: !1, line: 143, column: 17)
!197 = !DILocation(line: 146, column: 21, scope: !196)
!198 = !DILocation(line: 146, column: 26, scope: !196)
!199 = !DILocation(line: 146, column: 35, scope: !196)
!200 = !DILocation(line: 148, column: 13, scope: !165)
!201 = !DILocation(line: 154, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 152, column: 5)
!203 = distinct !DILexicalBlock(scope: !144, file: !1, line: 151, column: 8)
!204 = !DILocation(line: 154, column: 9, scope: !202)
!205 = !DILocation(line: 156, column: 1, scope: !144)
!206 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 159, type: !11, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DILocalVariable(name: "data", scope: !206, file: !1, line: 161, type: !14)
!208 = !DILocation(line: 161, column: 12, scope: !206)
!209 = !DILocalVariable(name: "dataBuffer", scope: !206, file: !1, line: 162, type: !18)
!210 = !DILocation(line: 162, column: 10, scope: !206)
!211 = !DILocation(line: 163, column: 12, scope: !206)
!212 = !DILocation(line: 163, column: 10, scope: !206)
!213 = !DILocation(line: 172, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 170, column: 5)
!215 = distinct !DILexicalBlock(scope: !206, file: !1, line: 164, column: 8)
!216 = !DILocation(line: 172, column: 9, scope: !214)
!217 = !DILocation(line: 177, column: 16, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 175, column: 5)
!219 = distinct !DILexicalBlock(scope: !206, file: !1, line: 174, column: 8)
!220 = !DILocation(line: 177, column: 9, scope: !218)
!221 = !DILocation(line: 179, column: 1, scope: !206)
!222 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 182, type: !11, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!223 = !DILocalVariable(name: "data", scope: !222, file: !1, line: 184, type: !14)
!224 = !DILocation(line: 184, column: 12, scope: !222)
!225 = !DILocalVariable(name: "dataBuffer", scope: !222, file: !1, line: 185, type: !18)
!226 = !DILocation(line: 185, column: 10, scope: !222)
!227 = !DILocation(line: 186, column: 12, scope: !222)
!228 = !DILocation(line: 186, column: 10, scope: !222)
!229 = !DILocation(line: 190, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 188, column: 5)
!231 = distinct !DILexicalBlock(scope: !222, file: !1, line: 187, column: 8)
!232 = !DILocation(line: 190, column: 9, scope: !230)
!233 = !DILocation(line: 195, column: 16, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 193, column: 5)
!235 = distinct !DILexicalBlock(scope: !222, file: !1, line: 192, column: 8)
!236 = !DILocation(line: 195, column: 9, scope: !234)
!237 = !DILocation(line: 197, column: 1, scope: !222)
!238 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_02_good", scope: !1, file: !1, line: 199, type: !11, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!239 = !DILocation(line: 201, column: 5, scope: !238)
!240 = !DILocation(line: 202, column: 5, scope: !238)
!241 = !DILocation(line: 203, column: 5, scope: !238)
!242 = !DILocation(line: 204, column: 5, scope: !238)
!243 = !DILocation(line: 205, column: 1, scope: !238)
