; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_17.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_17.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_17_bad() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  %3 = load i64, i64* %dataLen, align 8, !dbg !44
  %sub = sub i64 100, %3, !dbg !46
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !47
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !48

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !49
  %5 = load i64, i64* %dataLen, align 8, !dbg !52
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !53
  %6 = load i64, i64* %dataLen, align 8, !dbg !54
  %sub2 = sub i64 100, %6, !dbg !55
  %conv = trunc i64 %sub2 to i32, !dbg !56
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !57
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !58
  %cmp4 = icmp ne i8* %call3, null, !dbg !59
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !60

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !61
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !63
  store i64 %call7, i64* %dataLen, align 8, !dbg !64
  %9 = load i64, i64* %dataLen, align 8, !dbg !65
  %cmp8 = icmp ugt i64 %9, 0, !dbg !67
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !68

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !69
  %11 = load i64, i64* %dataLen, align 8, !dbg !70
  %sub10 = sub i64 %11, 1, !dbg !71
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !69
  %12 = load i8, i8* %arrayidx, align 1, !dbg !69
  %conv11 = sext i8 %12 to i32, !dbg !69
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !72
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !73

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !74
  %14 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub15 = sub i64 %14, 1, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !74
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end, !dbg !79

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !80

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !81
  %15 = load i8*, i8** %data, align 8, !dbg !83
  %16 = load i64, i64* %dataLen, align 8, !dbg !84
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !83
  store i8 0, i8* %arrayidx17, align 1, !dbg !85
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !86

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !88
  %inc = add nsw i32 %17, 1, !dbg !88
  store i32 %inc, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !93
  br label %for.cond20, !dbg !95

for.cond20:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, i32* %j, align 4, !dbg !96
  %cmp21 = icmp slt i32 %18, 1, !dbg !98
  br i1 %cmp21, label %for.body23, label %for.end27, !dbg !99

for.body23:                                       ; preds = %for.cond20
  %19 = load i8*, i8** %data, align 8, !dbg !100
  %call24 = call i32 (i8*, ...) @printf(i8* %19), !dbg !102
  br label %for.inc25, !dbg !103

for.inc25:                                        ; preds = %for.body23
  %20 = load i32, i32* %j, align 4, !dbg !104
  %inc26 = add nsw i32 %20, 1, !dbg !104
  store i32 %inc26, i32* %j, align 4, !dbg !104
  br label %for.cond20, !dbg !105, !llvm.loop !106

for.end27:                                        ; preds = %for.cond20
  ret void, !dbg !108
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
define dso_local void @goodB2G() #0 !dbg !109 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %k, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !118
  store i8* %arraydecay, i8** %data, align 8, !dbg !119
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !123
  %cmp = icmp slt i32 %1, 1, !dbg !125
  br i1 %cmp, label %for.body, label %for.end, !dbg !126

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !127, metadata !DIExpression()), !dbg !130
  %2 = load i8*, i8** %data, align 8, !dbg !131
  %call = call i64 @strlen(i8* %2) #6, !dbg !132
  store i64 %call, i64* %dataLen, align 8, !dbg !130
  %3 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %3, !dbg !135
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !137

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !141
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !142
  %6 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub2 = sub i64 100, %6, !dbg !144
  %conv = trunc i64 %sub2 to i32, !dbg !145
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !146
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !147
  %cmp4 = icmp ne i8* %call3, null, !dbg !148
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !149

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !150
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !152
  store i64 %call7, i64* %dataLen, align 8, !dbg !153
  %9 = load i64, i64* %dataLen, align 8, !dbg !154
  %cmp8 = icmp ugt i64 %9, 0, !dbg !156
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !157

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !158
  %11 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub10 = sub i64 %11, 1, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !158
  %12 = load i8, i8* %arrayidx, align 1, !dbg !158
  %conv11 = sext i8 %12 to i32, !dbg !158
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !161
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !162

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !163
  %14 = load i64, i64* %dataLen, align 8, !dbg !165
  %sub15 = sub i64 %14, 1, !dbg !166
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !163
  store i8 0, i8* %arrayidx16, align 1, !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !169

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !170
  %15 = load i8*, i8** %data, align 8, !dbg !172
  %16 = load i64, i64* %dataLen, align 8, !dbg !173
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !172
  store i8 0, i8* %arrayidx17, align 1, !dbg !174
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !175

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %17, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !181
  br label %for.cond20, !dbg !183

for.cond20:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, i32* %k, align 4, !dbg !184
  %cmp21 = icmp slt i32 %18, 1, !dbg !186
  br i1 %cmp21, label %for.body23, label %for.end27, !dbg !187

for.body23:                                       ; preds = %for.cond20
  %19 = load i8*, i8** %data, align 8, !dbg !188
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19), !dbg !190
  br label %for.inc25, !dbg !191

for.inc25:                                        ; preds = %for.body23
  %20 = load i32, i32* %k, align 4, !dbg !192
  %inc26 = add nsw i32 %20, 1, !dbg !192
  store i32 %inc26, i32* %k, align 4, !dbg !192
  br label %for.cond20, !dbg !193, !llvm.loop !194

for.end27:                                        ; preds = %for.cond20
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !197 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %j, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %data, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !205
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !206
  store i8* %arraydecay, i8** %data, align 8, !dbg !207
  store i32 0, i32* %h, align 4, !dbg !208
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !211
  %cmp = icmp slt i32 %1, 1, !dbg !213
  br i1 %cmp, label %for.body, label %for.end, !dbg !214

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !217
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !219
  %inc = add nsw i32 %3, 1, !dbg !219
  store i32 %inc, i32* %h, align 4, !dbg !219
  br label %for.cond, !dbg !220, !llvm.loop !221

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !223
  br label %for.cond1, !dbg !225

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !226
  %cmp2 = icmp slt i32 %4, 1, !dbg !228
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !229

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !230
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !232
  br label %for.inc5, !dbg !233

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !234
  %inc6 = add nsw i32 %6, 1, !dbg !234
  store i32 %inc6, i32* %j, align 4, !dbg !234
  br label %for.cond1, !dbg !235, !llvm.loop !236

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !238
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_17_good() #0 !dbg !239 {
entry:
  call void @goodB2G(), !dbg !240
  call void @goodG2B(), !dbg !241
  ret void, !dbg !242
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_17_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 29, type: !4)
!14 = !DILocation(line: 29, column: 9, scope: !10)
!15 = !DILocalVariable(name: "j", scope: !10, file: !1, line: 29, type: !4)
!16 = !DILocation(line: 29, column: 11, scope: !10)
!17 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 30, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 30, column: 12, scope: !10)
!21 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 31, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 31, column: 10, scope: !10)
!26 = !DILocation(line: 32, column: 12, scope: !10)
!27 = !DILocation(line: 32, column: 10, scope: !10)
!28 = !DILocation(line: 33, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 33, column: 5)
!30 = !DILocation(line: 33, column: 9, scope: !29)
!31 = !DILocation(line: 33, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 33, column: 5)
!33 = !DILocation(line: 33, column: 18, scope: !32)
!34 = !DILocation(line: 33, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 37, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 35, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 34, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 37, column: 20, scope: !36)
!42 = !DILocation(line: 37, column: 37, scope: !36)
!43 = !DILocation(line: 37, column: 30, scope: !36)
!44 = !DILocation(line: 39, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !36, file: !1, line: 39, column: 17)
!46 = !DILocation(line: 39, column: 20, scope: !45)
!47 = !DILocation(line: 39, column: 29, scope: !45)
!48 = !DILocation(line: 39, column: 17, scope: !36)
!49 = !DILocation(line: 42, column: 27, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 42, column: 21)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 40, column: 13)
!52 = !DILocation(line: 42, column: 32, scope: !50)
!53 = !DILocation(line: 42, column: 31, scope: !50)
!54 = !DILocation(line: 42, column: 51, scope: !50)
!55 = !DILocation(line: 42, column: 50, scope: !50)
!56 = !DILocation(line: 42, column: 41, scope: !50)
!57 = !DILocation(line: 42, column: 61, scope: !50)
!58 = !DILocation(line: 42, column: 21, scope: !50)
!59 = !DILocation(line: 42, column: 68, scope: !50)
!60 = !DILocation(line: 42, column: 21, scope: !51)
!61 = !DILocation(line: 46, column: 38, scope: !62)
!62 = distinct !DILexicalBlock(scope: !50, file: !1, line: 43, column: 17)
!63 = !DILocation(line: 46, column: 31, scope: !62)
!64 = !DILocation(line: 46, column: 29, scope: !62)
!65 = !DILocation(line: 47, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 47, column: 25)
!67 = !DILocation(line: 47, column: 33, scope: !66)
!68 = !DILocation(line: 47, column: 37, scope: !66)
!69 = !DILocation(line: 47, column: 40, scope: !66)
!70 = !DILocation(line: 47, column: 45, scope: !66)
!71 = !DILocation(line: 47, column: 52, scope: !66)
!72 = !DILocation(line: 47, column: 56, scope: !66)
!73 = !DILocation(line: 47, column: 25, scope: !62)
!74 = !DILocation(line: 49, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !1, line: 48, column: 21)
!76 = !DILocation(line: 49, column: 30, scope: !75)
!77 = !DILocation(line: 49, column: 37, scope: !75)
!78 = !DILocation(line: 49, column: 41, scope: !75)
!79 = !DILocation(line: 50, column: 21, scope: !75)
!80 = !DILocation(line: 51, column: 17, scope: !62)
!81 = !DILocation(line: 54, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !50, file: !1, line: 53, column: 17)
!83 = !DILocation(line: 56, column: 21, scope: !82)
!84 = !DILocation(line: 56, column: 26, scope: !82)
!85 = !DILocation(line: 56, column: 35, scope: !82)
!86 = !DILocation(line: 58, column: 13, scope: !51)
!87 = !DILocation(line: 60, column: 5, scope: !37)
!88 = !DILocation(line: 33, column: 24, scope: !32)
!89 = !DILocation(line: 33, column: 5, scope: !32)
!90 = distinct !{!90, !34, !91, !92}
!91 = !DILocation(line: 60, column: 5, scope: !29)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 61, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !10, file: !1, line: 61, column: 5)
!95 = !DILocation(line: 61, column: 9, scope: !94)
!96 = !DILocation(line: 61, column: 16, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 61, column: 5)
!98 = !DILocation(line: 61, column: 18, scope: !97)
!99 = !DILocation(line: 61, column: 5, scope: !94)
!100 = !DILocation(line: 64, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 62, column: 5)
!102 = !DILocation(line: 64, column: 9, scope: !101)
!103 = !DILocation(line: 65, column: 5, scope: !101)
!104 = !DILocation(line: 61, column: 24, scope: !97)
!105 = !DILocation(line: 61, column: 5, scope: !97)
!106 = distinct !{!106, !99, !107, !92}
!107 = !DILocation(line: 65, column: 5, scope: !94)
!108 = !DILocation(line: 66, column: 1, scope: !10)
!109 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 73, type: !11, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "i", scope: !109, file: !1, line: 75, type: !4)
!111 = !DILocation(line: 75, column: 9, scope: !109)
!112 = !DILocalVariable(name: "k", scope: !109, file: !1, line: 75, type: !4)
!113 = !DILocation(line: 75, column: 11, scope: !109)
!114 = !DILocalVariable(name: "data", scope: !109, file: !1, line: 76, type: !18)
!115 = !DILocation(line: 76, column: 12, scope: !109)
!116 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !1, line: 77, type: !22)
!117 = !DILocation(line: 77, column: 10, scope: !109)
!118 = !DILocation(line: 78, column: 12, scope: !109)
!119 = !DILocation(line: 78, column: 10, scope: !109)
!120 = !DILocation(line: 79, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !109, file: !1, line: 79, column: 5)
!122 = !DILocation(line: 79, column: 9, scope: !121)
!123 = !DILocation(line: 79, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 79, column: 5)
!125 = !DILocation(line: 79, column: 18, scope: !124)
!126 = !DILocation(line: 79, column: 5, scope: !121)
!127 = !DILocalVariable(name: "dataLen", scope: !128, file: !1, line: 83, type: !38)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 81, column: 9)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 5)
!130 = !DILocation(line: 83, column: 20, scope: !128)
!131 = !DILocation(line: 83, column: 37, scope: !128)
!132 = !DILocation(line: 83, column: 30, scope: !128)
!133 = !DILocation(line: 85, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 85, column: 17)
!135 = !DILocation(line: 85, column: 20, scope: !134)
!136 = !DILocation(line: 85, column: 29, scope: !134)
!137 = !DILocation(line: 85, column: 17, scope: !128)
!138 = !DILocation(line: 88, column: 27, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 88, column: 21)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 86, column: 13)
!141 = !DILocation(line: 88, column: 32, scope: !139)
!142 = !DILocation(line: 88, column: 31, scope: !139)
!143 = !DILocation(line: 88, column: 51, scope: !139)
!144 = !DILocation(line: 88, column: 50, scope: !139)
!145 = !DILocation(line: 88, column: 41, scope: !139)
!146 = !DILocation(line: 88, column: 61, scope: !139)
!147 = !DILocation(line: 88, column: 21, scope: !139)
!148 = !DILocation(line: 88, column: 68, scope: !139)
!149 = !DILocation(line: 88, column: 21, scope: !140)
!150 = !DILocation(line: 92, column: 38, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !1, line: 89, column: 17)
!152 = !DILocation(line: 92, column: 31, scope: !151)
!153 = !DILocation(line: 92, column: 29, scope: !151)
!154 = !DILocation(line: 93, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 93, column: 25)
!156 = !DILocation(line: 93, column: 33, scope: !155)
!157 = !DILocation(line: 93, column: 37, scope: !155)
!158 = !DILocation(line: 93, column: 40, scope: !155)
!159 = !DILocation(line: 93, column: 45, scope: !155)
!160 = !DILocation(line: 93, column: 52, scope: !155)
!161 = !DILocation(line: 93, column: 56, scope: !155)
!162 = !DILocation(line: 93, column: 25, scope: !151)
!163 = !DILocation(line: 95, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !1, line: 94, column: 21)
!165 = !DILocation(line: 95, column: 30, scope: !164)
!166 = !DILocation(line: 95, column: 37, scope: !164)
!167 = !DILocation(line: 95, column: 41, scope: !164)
!168 = !DILocation(line: 96, column: 21, scope: !164)
!169 = !DILocation(line: 97, column: 17, scope: !151)
!170 = !DILocation(line: 100, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !139, file: !1, line: 99, column: 17)
!172 = !DILocation(line: 102, column: 21, scope: !171)
!173 = !DILocation(line: 102, column: 26, scope: !171)
!174 = !DILocation(line: 102, column: 35, scope: !171)
!175 = !DILocation(line: 104, column: 13, scope: !140)
!176 = !DILocation(line: 106, column: 5, scope: !129)
!177 = !DILocation(line: 79, column: 24, scope: !124)
!178 = !DILocation(line: 79, column: 5, scope: !124)
!179 = distinct !{!179, !126, !180, !92}
!180 = !DILocation(line: 106, column: 5, scope: !121)
!181 = !DILocation(line: 107, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !109, file: !1, line: 107, column: 5)
!183 = !DILocation(line: 107, column: 9, scope: !182)
!184 = !DILocation(line: 107, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 107, column: 5)
!186 = !DILocation(line: 107, column: 18, scope: !185)
!187 = !DILocation(line: 107, column: 5, scope: !182)
!188 = !DILocation(line: 110, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 108, column: 5)
!190 = !DILocation(line: 110, column: 9, scope: !189)
!191 = !DILocation(line: 111, column: 5, scope: !189)
!192 = !DILocation(line: 107, column: 24, scope: !185)
!193 = !DILocation(line: 107, column: 5, scope: !185)
!194 = distinct !{!194, !187, !195, !92}
!195 = !DILocation(line: 111, column: 5, scope: !182)
!196 = !DILocation(line: 112, column: 1, scope: !109)
!197 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 115, type: !11, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!198 = !DILocalVariable(name: "h", scope: !197, file: !1, line: 117, type: !4)
!199 = !DILocation(line: 117, column: 9, scope: !197)
!200 = !DILocalVariable(name: "j", scope: !197, file: !1, line: 117, type: !4)
!201 = !DILocation(line: 117, column: 11, scope: !197)
!202 = !DILocalVariable(name: "data", scope: !197, file: !1, line: 118, type: !18)
!203 = !DILocation(line: 118, column: 12, scope: !197)
!204 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !1, line: 119, type: !22)
!205 = !DILocation(line: 119, column: 10, scope: !197)
!206 = !DILocation(line: 120, column: 12, scope: !197)
!207 = !DILocation(line: 120, column: 10, scope: !197)
!208 = !DILocation(line: 121, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !197, file: !1, line: 121, column: 5)
!210 = !DILocation(line: 121, column: 9, scope: !209)
!211 = !DILocation(line: 121, column: 16, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 121, column: 5)
!213 = !DILocation(line: 121, column: 18, scope: !212)
!214 = !DILocation(line: 121, column: 5, scope: !209)
!215 = !DILocation(line: 124, column: 16, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 122, column: 5)
!217 = !DILocation(line: 124, column: 9, scope: !216)
!218 = !DILocation(line: 125, column: 5, scope: !216)
!219 = !DILocation(line: 121, column: 24, scope: !212)
!220 = !DILocation(line: 121, column: 5, scope: !212)
!221 = distinct !{!221, !214, !222, !92}
!222 = !DILocation(line: 125, column: 5, scope: !209)
!223 = !DILocation(line: 126, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !197, file: !1, line: 126, column: 5)
!225 = !DILocation(line: 126, column: 9, scope: !224)
!226 = !DILocation(line: 126, column: 16, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 126, column: 5)
!228 = !DILocation(line: 126, column: 18, scope: !227)
!229 = !DILocation(line: 126, column: 5, scope: !224)
!230 = !DILocation(line: 129, column: 16, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 127, column: 5)
!232 = !DILocation(line: 129, column: 9, scope: !231)
!233 = !DILocation(line: 130, column: 5, scope: !231)
!234 = !DILocation(line: 126, column: 24, scope: !227)
!235 = !DILocation(line: 126, column: 5, scope: !227)
!236 = distinct !{!236, !229, !237, !92}
!237 = !DILocation(line: 130, column: 5, scope: !224)
!238 = !DILocation(line: 131, column: 1, scope: !197)
!239 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_17_good", scope: !1, file: !1, line: 133, type: !11, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!240 = !DILocation(line: 135, column: 5, scope: !239)
!241 = !DILocation(line: 136, column: 5, scope: !239)
!242 = !DILocation(line: 137, column: 1, scope: !239)
