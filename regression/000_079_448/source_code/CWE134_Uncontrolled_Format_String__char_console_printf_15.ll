; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_15.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_15.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_15_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = load i8*, i8** %data, align 8, !dbg !30
  %call = call i64 @strlen(i8* %1) #6, !dbg !31
  store i64 %call, i64* %dataLen, align 8, !dbg !29
  %2 = load i64, i64* %dataLen, align 8, !dbg !32
  %sub = sub i64 100, %2, !dbg !34
  %cmp = icmp ugt i64 %sub, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end18, !dbg !36

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !37
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub1 = sub i64 100, %5, !dbg !43
  %conv = trunc i64 %sub1 to i32, !dbg !44
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !46
  %cmp3 = icmp ne i8* %call2, null, !dbg !47
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !48

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !49
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !51
  store i64 %call6, i64* %dataLen, align 8, !dbg !52
  %8 = load i64, i64* %dataLen, align 8, !dbg !53
  %cmp7 = icmp ugt i64 %8, 0, !dbg !55
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !56

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !57
  %10 = load i64, i64* %dataLen, align 8, !dbg !58
  %sub9 = sub i64 %10, 1, !dbg !59
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !57
  %11 = load i8, i8* %arrayidx, align 1, !dbg !57
  %conv10 = sext i8 %11 to i32, !dbg !57
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !60
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !61

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !62
  %13 = load i64, i64* %dataLen, align 8, !dbg !64
  %sub14 = sub i64 %13, 1, !dbg !65
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !62
  store i8 0, i8* %arrayidx15, align 1, !dbg !66
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !68

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %14 = load i8*, i8** %data, align 8, !dbg !71
  %15 = load i64, i64* %dataLen, align 8, !dbg !72
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !73
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !74

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !75
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !76
  ret void, !dbg !77
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
define dso_local void @goodB2G1() #0 !dbg !78 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !82
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !83
  store i8* %arraydecay, i8** %data, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !85, metadata !DIExpression()), !dbg !87
  %1 = load i8*, i8** %data, align 8, !dbg !88
  %call = call i64 @strlen(i8* %1) #6, !dbg !89
  store i64 %call, i64* %dataLen, align 8, !dbg !87
  %2 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %2, !dbg !92
  %cmp = icmp ugt i64 %sub, 1, !dbg !93
  br i1 %cmp, label %if.then, label %if.end18, !dbg !94

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !95
  %4 = load i64, i64* %dataLen, align 8, !dbg !98
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !99
  %5 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub1 = sub i64 100, %5, !dbg !101
  %conv = trunc i64 %sub1 to i32, !dbg !102
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !103
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !104
  %cmp3 = icmp ne i8* %call2, null, !dbg !105
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !106

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !107
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !109
  store i64 %call6, i64* %dataLen, align 8, !dbg !110
  %8 = load i64, i64* %dataLen, align 8, !dbg !111
  %cmp7 = icmp ugt i64 %8, 0, !dbg !113
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !114

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !115
  %10 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub9 = sub i64 %10, 1, !dbg !117
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !115
  %11 = load i8, i8* %arrayidx, align 1, !dbg !115
  %conv10 = sext i8 %11 to i32, !dbg !115
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !118
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !119

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !120
  %13 = load i64, i64* %dataLen, align 8, !dbg !122
  %sub14 = sub i64 %13, 1, !dbg !123
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !120
  store i8 0, i8* %arrayidx15, align 1, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !126

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !127
  %14 = load i8*, i8** %data, align 8, !dbg !129
  %15 = load i64, i64* %dataLen, align 8, !dbg !130
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !129
  store i8 0, i8* %arrayidx16, align 1, !dbg !131
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !132

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !133
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !136 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !140
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !141
  store i8* %arraydecay, i8** %data, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !143, metadata !DIExpression()), !dbg !145
  %1 = load i8*, i8** %data, align 8, !dbg !146
  %call = call i64 @strlen(i8* %1) #6, !dbg !147
  store i64 %call, i64* %dataLen, align 8, !dbg !145
  %2 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub = sub i64 100, %2, !dbg !150
  %cmp = icmp ugt i64 %sub, 1, !dbg !151
  br i1 %cmp, label %if.then, label %if.end18, !dbg !152

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !153
  %4 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !157
  %5 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub1 = sub i64 100, %5, !dbg !159
  %conv = trunc i64 %sub1 to i32, !dbg !160
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !161
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !162
  %cmp3 = icmp ne i8* %call2, null, !dbg !163
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !164

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !165
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !167
  store i64 %call6, i64* %dataLen, align 8, !dbg !168
  %8 = load i64, i64* %dataLen, align 8, !dbg !169
  %cmp7 = icmp ugt i64 %8, 0, !dbg !171
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !172

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !173
  %10 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub9 = sub i64 %10, 1, !dbg !175
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !173
  %11 = load i8, i8* %arrayidx, align 1, !dbg !173
  %conv10 = sext i8 %11 to i32, !dbg !173
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !176
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !177

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !178
  %13 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub14 = sub i64 %13, 1, !dbg !181
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !178
  store i8 0, i8* %arrayidx15, align 1, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !184

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !185
  %14 = load i8*, i8** %data, align 8, !dbg !187
  %15 = load i64, i64* %dataLen, align 8, !dbg !188
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !187
  store i8 0, i8* %arrayidx16, align 1, !dbg !189
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !190

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !191
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !194 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !198
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !198
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !199
  store i8* %arraydecay, i8** %data, align 8, !dbg !200
  %1 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !202
  %2 = load i8*, i8** %data, align 8, !dbg !203
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !206 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !214
  %2 = load i8*, i8** %data, align 8, !dbg !215
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !216
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_15_good() #0 !dbg !218 {
entry:
  call void @goodB2G1(), !dbg !219
  call void @goodB2G2(), !dbg !220
  call void @goodG2B1(), !dbg !221
  call void @goodG2B2(), !dbg !222
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_448/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_15_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 37, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 35, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 37, column: 16, scope: !25)
!30 = !DILocation(line: 37, column: 33, scope: !25)
!31 = !DILocation(line: 37, column: 26, scope: !25)
!32 = !DILocation(line: 39, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 39, column: 13)
!34 = !DILocation(line: 39, column: 16, scope: !33)
!35 = !DILocation(line: 39, column: 25, scope: !33)
!36 = !DILocation(line: 39, column: 13, scope: !25)
!37 = !DILocation(line: 42, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 42, column: 17)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 40, column: 9)
!40 = !DILocation(line: 42, column: 28, scope: !38)
!41 = !DILocation(line: 42, column: 27, scope: !38)
!42 = !DILocation(line: 42, column: 47, scope: !38)
!43 = !DILocation(line: 42, column: 46, scope: !38)
!44 = !DILocation(line: 42, column: 37, scope: !38)
!45 = !DILocation(line: 42, column: 57, scope: !38)
!46 = !DILocation(line: 42, column: 17, scope: !38)
!47 = !DILocation(line: 42, column: 64, scope: !38)
!48 = !DILocation(line: 42, column: 17, scope: !39)
!49 = !DILocation(line: 46, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 43, column: 13)
!51 = !DILocation(line: 46, column: 27, scope: !50)
!52 = !DILocation(line: 46, column: 25, scope: !50)
!53 = !DILocation(line: 47, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 47, column: 21)
!55 = !DILocation(line: 47, column: 29, scope: !54)
!56 = !DILocation(line: 47, column: 33, scope: !54)
!57 = !DILocation(line: 47, column: 36, scope: !54)
!58 = !DILocation(line: 47, column: 41, scope: !54)
!59 = !DILocation(line: 47, column: 48, scope: !54)
!60 = !DILocation(line: 47, column: 52, scope: !54)
!61 = !DILocation(line: 47, column: 21, scope: !50)
!62 = !DILocation(line: 49, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 17)
!64 = !DILocation(line: 49, column: 26, scope: !63)
!65 = !DILocation(line: 49, column: 33, scope: !63)
!66 = !DILocation(line: 49, column: 37, scope: !63)
!67 = !DILocation(line: 50, column: 17, scope: !63)
!68 = !DILocation(line: 51, column: 13, scope: !50)
!69 = !DILocation(line: 54, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !38, file: !1, line: 53, column: 13)
!71 = !DILocation(line: 56, column: 17, scope: !70)
!72 = !DILocation(line: 56, column: 22, scope: !70)
!73 = !DILocation(line: 56, column: 31, scope: !70)
!74 = !DILocation(line: 58, column: 9, scope: !39)
!75 = !DILocation(line: 70, column: 16, scope: !10)
!76 = !DILocation(line: 70, column: 9, scope: !10)
!77 = !DILocation(line: 77, column: 1, scope: !10)
!78 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DILocalVariable(name: "data", scope: !78, file: !1, line: 86, type: !14)
!80 = !DILocation(line: 86, column: 12, scope: !78)
!81 = !DILocalVariable(name: "dataBuffer", scope: !78, file: !1, line: 87, type: !18)
!82 = !DILocation(line: 87, column: 10, scope: !78)
!83 = !DILocation(line: 88, column: 12, scope: !78)
!84 = !DILocation(line: 88, column: 10, scope: !78)
!85 = !DILocalVariable(name: "dataLen", scope: !86, file: !1, line: 94, type: !26)
!86 = distinct !DILexicalBlock(scope: !78, file: !1, line: 92, column: 5)
!87 = !DILocation(line: 94, column: 16, scope: !86)
!88 = !DILocation(line: 94, column: 33, scope: !86)
!89 = !DILocation(line: 94, column: 26, scope: !86)
!90 = !DILocation(line: 96, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 96, column: 13)
!92 = !DILocation(line: 96, column: 16, scope: !91)
!93 = !DILocation(line: 96, column: 25, scope: !91)
!94 = !DILocation(line: 96, column: 13, scope: !86)
!95 = !DILocation(line: 99, column: 23, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 99, column: 17)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 97, column: 9)
!98 = !DILocation(line: 99, column: 28, scope: !96)
!99 = !DILocation(line: 99, column: 27, scope: !96)
!100 = !DILocation(line: 99, column: 47, scope: !96)
!101 = !DILocation(line: 99, column: 46, scope: !96)
!102 = !DILocation(line: 99, column: 37, scope: !96)
!103 = !DILocation(line: 99, column: 57, scope: !96)
!104 = !DILocation(line: 99, column: 17, scope: !96)
!105 = !DILocation(line: 99, column: 64, scope: !96)
!106 = !DILocation(line: 99, column: 17, scope: !97)
!107 = !DILocation(line: 103, column: 34, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !1, line: 100, column: 13)
!109 = !DILocation(line: 103, column: 27, scope: !108)
!110 = !DILocation(line: 103, column: 25, scope: !108)
!111 = !DILocation(line: 104, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 104, column: 21)
!113 = !DILocation(line: 104, column: 29, scope: !112)
!114 = !DILocation(line: 104, column: 33, scope: !112)
!115 = !DILocation(line: 104, column: 36, scope: !112)
!116 = !DILocation(line: 104, column: 41, scope: !112)
!117 = !DILocation(line: 104, column: 48, scope: !112)
!118 = !DILocation(line: 104, column: 52, scope: !112)
!119 = !DILocation(line: 104, column: 21, scope: !108)
!120 = !DILocation(line: 106, column: 21, scope: !121)
!121 = distinct !DILexicalBlock(scope: !112, file: !1, line: 105, column: 17)
!122 = !DILocation(line: 106, column: 26, scope: !121)
!123 = !DILocation(line: 106, column: 33, scope: !121)
!124 = !DILocation(line: 106, column: 37, scope: !121)
!125 = !DILocation(line: 107, column: 17, scope: !121)
!126 = !DILocation(line: 108, column: 13, scope: !108)
!127 = !DILocation(line: 111, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !96, file: !1, line: 110, column: 13)
!129 = !DILocation(line: 113, column: 17, scope: !128)
!130 = !DILocation(line: 113, column: 22, scope: !128)
!131 = !DILocation(line: 113, column: 31, scope: !128)
!132 = !DILocation(line: 115, column: 9, scope: !97)
!133 = !DILocation(line: 131, column: 24, scope: !78)
!134 = !DILocation(line: 131, column: 9, scope: !78)
!135 = !DILocation(line: 134, column: 1, scope: !78)
!136 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 137, type: !11, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!137 = !DILocalVariable(name: "data", scope: !136, file: !1, line: 139, type: !14)
!138 = !DILocation(line: 139, column: 12, scope: !136)
!139 = !DILocalVariable(name: "dataBuffer", scope: !136, file: !1, line: 140, type: !18)
!140 = !DILocation(line: 140, column: 10, scope: !136)
!141 = !DILocation(line: 141, column: 12, scope: !136)
!142 = !DILocation(line: 141, column: 10, scope: !136)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !1, line: 147, type: !26)
!144 = distinct !DILexicalBlock(scope: !136, file: !1, line: 145, column: 5)
!145 = !DILocation(line: 147, column: 16, scope: !144)
!146 = !DILocation(line: 147, column: 33, scope: !144)
!147 = !DILocation(line: 147, column: 26, scope: !144)
!148 = !DILocation(line: 149, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 149, column: 13)
!150 = !DILocation(line: 149, column: 16, scope: !149)
!151 = !DILocation(line: 149, column: 25, scope: !149)
!152 = !DILocation(line: 149, column: 13, scope: !144)
!153 = !DILocation(line: 152, column: 23, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 152, column: 17)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 150, column: 9)
!156 = !DILocation(line: 152, column: 28, scope: !154)
!157 = !DILocation(line: 152, column: 27, scope: !154)
!158 = !DILocation(line: 152, column: 47, scope: !154)
!159 = !DILocation(line: 152, column: 46, scope: !154)
!160 = !DILocation(line: 152, column: 37, scope: !154)
!161 = !DILocation(line: 152, column: 57, scope: !154)
!162 = !DILocation(line: 152, column: 17, scope: !154)
!163 = !DILocation(line: 152, column: 64, scope: !154)
!164 = !DILocation(line: 152, column: 17, scope: !155)
!165 = !DILocation(line: 156, column: 34, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !1, line: 153, column: 13)
!167 = !DILocation(line: 156, column: 27, scope: !166)
!168 = !DILocation(line: 156, column: 25, scope: !166)
!169 = !DILocation(line: 157, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 157, column: 21)
!171 = !DILocation(line: 157, column: 29, scope: !170)
!172 = !DILocation(line: 157, column: 33, scope: !170)
!173 = !DILocation(line: 157, column: 36, scope: !170)
!174 = !DILocation(line: 157, column: 41, scope: !170)
!175 = !DILocation(line: 157, column: 48, scope: !170)
!176 = !DILocation(line: 157, column: 52, scope: !170)
!177 = !DILocation(line: 157, column: 21, scope: !166)
!178 = !DILocation(line: 159, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 158, column: 17)
!180 = !DILocation(line: 159, column: 26, scope: !179)
!181 = !DILocation(line: 159, column: 33, scope: !179)
!182 = !DILocation(line: 159, column: 37, scope: !179)
!183 = !DILocation(line: 160, column: 17, scope: !179)
!184 = !DILocation(line: 161, column: 13, scope: !166)
!185 = !DILocation(line: 164, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !154, file: !1, line: 163, column: 13)
!187 = !DILocation(line: 166, column: 17, scope: !186)
!188 = !DILocation(line: 166, column: 22, scope: !186)
!189 = !DILocation(line: 166, column: 31, scope: !186)
!190 = !DILocation(line: 168, column: 9, scope: !155)
!191 = !DILocation(line: 180, column: 24, scope: !136)
!192 = !DILocation(line: 180, column: 9, scope: !136)
!193 = !DILocation(line: 187, column: 1, scope: !136)
!194 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 190, type: !11, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocalVariable(name: "data", scope: !194, file: !1, line: 192, type: !14)
!196 = !DILocation(line: 192, column: 12, scope: !194)
!197 = !DILocalVariable(name: "dataBuffer", scope: !194, file: !1, line: 193, type: !18)
!198 = !DILocation(line: 193, column: 10, scope: !194)
!199 = !DILocation(line: 194, column: 12, scope: !194)
!200 = !DILocation(line: 194, column: 10, scope: !194)
!201 = !DILocation(line: 203, column: 16, scope: !194)
!202 = !DILocation(line: 203, column: 9, scope: !194)
!203 = !DILocation(line: 210, column: 16, scope: !194)
!204 = !DILocation(line: 210, column: 9, scope: !194)
!205 = !DILocation(line: 217, column: 1, scope: !194)
!206 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 220, type: !11, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DILocalVariable(name: "data", scope: !206, file: !1, line: 222, type: !14)
!208 = !DILocation(line: 222, column: 12, scope: !206)
!209 = !DILocalVariable(name: "dataBuffer", scope: !206, file: !1, line: 223, type: !18)
!210 = !DILocation(line: 223, column: 10, scope: !206)
!211 = !DILocation(line: 224, column: 12, scope: !206)
!212 = !DILocation(line: 224, column: 10, scope: !206)
!213 = !DILocation(line: 229, column: 16, scope: !206)
!214 = !DILocation(line: 229, column: 9, scope: !206)
!215 = !DILocation(line: 240, column: 16, scope: !206)
!216 = !DILocation(line: 240, column: 9, scope: !206)
!217 = !DILocation(line: 247, column: 1, scope: !206)
!218 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_15_good", scope: !1, file: !1, line: 249, type: !11, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocation(line: 251, column: 5, scope: !218)
!220 = !DILocation(line: 252, column: 5, scope: !218)
!221 = !DILocation(line: 253, column: 5, scope: !218)
!222 = !DILocation(line: 254, column: 5, scope: !218)
!223 = !DILocation(line: 255, column: 1, scope: !218)
