; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_32.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_32_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !16, metadata !DIExpression()), !dbg !18
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !18
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !19, metadata !DIExpression()), !dbg !20
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !28, metadata !DIExpression()), !dbg !30
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !31
  %2 = load i8*, i8** %1, align 8, !dbg !32
  store i8* %2, i8** %data1, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !38
  %3 = load i8*, i8** %data1, align 8, !dbg !39
  %call = call i64 @strlen(i8* %3) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !41, metadata !DIExpression()), !dbg !42
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !43
  store i8* %call2, i8** %environment, align 8, !dbg !42
  %4 = load i8*, i8** %environment, align 8, !dbg !44
  %cmp = icmp ne i8* %4, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !48
  %6 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !51
  %7 = load i8*, i8** %environment, align 8, !dbg !52
  %8 = load i64, i64* %dataLen, align 8, !dbg !53
  %sub = sub i64 100, %8, !dbg !54
  %sub3 = sub i64 %sub, 1, !dbg !55
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !58
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !59
  store i8* %9, i8** %10, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !61, metadata !DIExpression()), !dbg !63
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !64
  %12 = load i8*, i8** %11, align 8, !dbg !65
  store i8* %12, i8** %data5, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %n, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !72, metadata !DIExpression()), !dbg !73
  %13 = load i8*, i8** %data5, align 8, !dbg !74
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !76
  %cmp7 = icmp eq i32 %call6, 1, !dbg !77
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !78

if.then8:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !79
  store i32 0, i32* %i, align 4, !dbg !81
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %if.then8
  %14 = load i32, i32* %i, align 4, !dbg !84
  %15 = load i32, i32* %n, align 4, !dbg !86
  %cmp9 = icmp slt i32 %14, %15, !dbg !87
  br i1 %cmp9, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !89
  %inc = add nsw i32 %16, 1, !dbg !89
  store i32 %inc, i32* %intVariable, align 4, !dbg !89
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !92
  %inc10 = add nsw i32 %17, 1, !dbg !92
  store i32 %inc10, i32* %i, align 4, !dbg !92
  br label %for.cond, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !97
  call void @printIntLine(i32 %18), !dbg !98
  br label %if.end11, !dbg !99

if.end11:                                         ; preds = %for.end, %if.end
  ret void, !dbg !100
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !101 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !104, metadata !DIExpression()), !dbg !105
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !106, metadata !DIExpression()), !dbg !107
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i8* %arraydecay, i8** %data, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !112, metadata !DIExpression()), !dbg !114
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !115
  %2 = load i8*, i8** %1, align 8, !dbg !116
  store i8* %2, i8** %data1, align 8, !dbg !114
  %3 = load i8*, i8** %data1, align 8, !dbg !117
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !118
  %4 = load i8*, i8** %data1, align 8, !dbg !119
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !120
  store i8* %4, i8** %5, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !122, metadata !DIExpression()), !dbg !124
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !125
  %7 = load i8*, i8** %6, align 8, !dbg !126
  store i8* %7, i8** %data2, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %i, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %n, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !132, metadata !DIExpression()), !dbg !133
  %8 = load i8*, i8** %data2, align 8, !dbg !134
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !136
  %cmp = icmp eq i32 %call3, 1, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !139
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !144
  %10 = load i32, i32* %n, align 4, !dbg !146
  %cmp4 = icmp slt i32 %9, %10, !dbg !147
  br i1 %cmp4, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !149
  %inc = add nsw i32 %11, 1, !dbg !149
  store i32 %inc, i32* %intVariable, align 4, !dbg !149
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !152
  %inc5 = add nsw i32 %12, 1, !dbg !152
  store i32 %inc5, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !156
  call void @printIntLine(i32 %13), !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !159
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !160 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !163, metadata !DIExpression()), !dbg !164
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !165, metadata !DIExpression()), !dbg !166
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !168
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !169
  store i8* %arraydecay, i8** %data, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !171, metadata !DIExpression()), !dbg !173
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !174
  %2 = load i8*, i8** %1, align 8, !dbg !175
  store i8* %2, i8** %data1, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !176, metadata !DIExpression()), !dbg !178
  %3 = load i8*, i8** %data1, align 8, !dbg !179
  %call = call i64 @strlen(i8* %3) #6, !dbg !180
  store i64 %call, i64* %dataLen, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !181, metadata !DIExpression()), !dbg !182
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !183
  store i8* %call2, i8** %environment, align 8, !dbg !182
  %4 = load i8*, i8** %environment, align 8, !dbg !184
  %cmp = icmp ne i8* %4, null, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !190
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !191
  %7 = load i8*, i8** %environment, align 8, !dbg !192
  %8 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub = sub i64 100, %8, !dbg !194
  %sub3 = sub i64 %sub, 1, !dbg !195
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #7, !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !198
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !199
  store i8* %9, i8** %10, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !201, metadata !DIExpression()), !dbg !203
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !204
  %12 = load i8*, i8** %11, align 8, !dbg !205
  store i8* %12, i8** %data5, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %13 = load i8*, i8** %data5, align 8, !dbg !213
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !215
  %cmp7 = icmp eq i32 %call6, 1, !dbg !216
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !217

if.then8:                                         ; preds = %if.end
  %14 = load i32, i32* %n, align 4, !dbg !218
  %cmp9 = icmp slt i32 %14, 10000, !dbg !221
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !222

if.then10:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then10
  %15 = load i32, i32* %i, align 4, !dbg !228
  %16 = load i32, i32* %n, align 4, !dbg !230
  %cmp11 = icmp slt i32 %15, %16, !dbg !231
  br i1 %cmp11, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %17, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !236
  %inc12 = add nsw i32 %18, 1, !dbg !236
  store i32 %inc12, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !240
  call void @printIntLine(i32 %19), !dbg !241
  br label %if.end13, !dbg !242

if.end13:                                         ; preds = %for.end, %if.then8
  br label %if.end14, !dbg !243

if.end14:                                         ; preds = %if.end13, %if.end
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_32_good() #0 !dbg !245 {
entry:
  call void @goodG2B(), !dbg !246
  call void @goodB2G(), !dbg !247
  ret void, !dbg !248
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_047/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_32_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataPtr1", scope: !9, file: !1, line: 40, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!18 = !DILocation(line: 40, column: 13, scope: !9)
!19 = !DILocalVariable(name: "dataPtr2", scope: !9, file: !1, line: 41, type: !17)
!20 = !DILocation(line: 41, column: 13, scope: !9)
!21 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 42, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 42, column: 10, scope: !9)
!26 = !DILocation(line: 43, column: 12, scope: !9)
!27 = !DILocation(line: 43, column: 10, scope: !9)
!28 = !DILocalVariable(name: "data", scope: !29, file: !1, line: 45, type: !13)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 5)
!30 = !DILocation(line: 45, column: 16, scope: !29)
!31 = !DILocation(line: 45, column: 24, scope: !29)
!32 = !DILocation(line: 45, column: 23, scope: !29)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 48, type: !35)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 46, column: 9)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 48, column: 20, scope: !34)
!39 = !DILocation(line: 48, column: 37, scope: !34)
!40 = !DILocation(line: 48, column: 30, scope: !34)
!41 = !DILocalVariable(name: "environment", scope: !34, file: !1, line: 49, type: !13)
!42 = !DILocation(line: 49, column: 20, scope: !34)
!43 = !DILocation(line: 49, column: 34, scope: !34)
!44 = !DILocation(line: 51, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 51, column: 17)
!46 = !DILocation(line: 51, column: 29, scope: !45)
!47 = !DILocation(line: 51, column: 17, scope: !34)
!48 = !DILocation(line: 54, column: 25, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 52, column: 13)
!50 = !DILocation(line: 54, column: 30, scope: !49)
!51 = !DILocation(line: 54, column: 29, scope: !49)
!52 = !DILocation(line: 54, column: 39, scope: !49)
!53 = !DILocation(line: 54, column: 56, scope: !49)
!54 = !DILocation(line: 54, column: 55, scope: !49)
!55 = !DILocation(line: 54, column: 63, scope: !49)
!56 = !DILocation(line: 54, column: 17, scope: !49)
!57 = !DILocation(line: 55, column: 13, scope: !49)
!58 = !DILocation(line: 57, column: 21, scope: !29)
!59 = !DILocation(line: 57, column: 10, scope: !29)
!60 = !DILocation(line: 57, column: 19, scope: !29)
!61 = !DILocalVariable(name: "data", scope: !62, file: !1, line: 60, type: !13)
!62 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 5)
!63 = !DILocation(line: 60, column: 16, scope: !62)
!64 = !DILocation(line: 60, column: 24, scope: !62)
!65 = !DILocation(line: 60, column: 23, scope: !62)
!66 = !DILocalVariable(name: "i", scope: !67, file: !1, line: 62, type: !68)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 61, column: 9)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocation(line: 62, column: 17, scope: !67)
!70 = !DILocalVariable(name: "n", scope: !67, file: !1, line: 62, type: !68)
!71 = !DILocation(line: 62, column: 20, scope: !67)
!72 = !DILocalVariable(name: "intVariable", scope: !67, file: !1, line: 62, type: !68)
!73 = !DILocation(line: 62, column: 23, scope: !67)
!74 = !DILocation(line: 63, column: 24, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 63, column: 17)
!76 = !DILocation(line: 63, column: 17, scope: !75)
!77 = !DILocation(line: 63, column: 40, scope: !75)
!78 = !DILocation(line: 63, column: 17, scope: !67)
!79 = !DILocation(line: 66, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 64, column: 13)
!81 = !DILocation(line: 67, column: 24, scope: !82)
!82 = distinct !DILexicalBlock(scope: !80, file: !1, line: 67, column: 17)
!83 = !DILocation(line: 67, column: 22, scope: !82)
!84 = !DILocation(line: 67, column: 29, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 67, column: 17)
!86 = !DILocation(line: 67, column: 33, scope: !85)
!87 = !DILocation(line: 67, column: 31, scope: !85)
!88 = !DILocation(line: 67, column: 17, scope: !82)
!89 = !DILocation(line: 70, column: 32, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 68, column: 17)
!91 = !DILocation(line: 71, column: 17, scope: !90)
!92 = !DILocation(line: 67, column: 37, scope: !85)
!93 = !DILocation(line: 67, column: 17, scope: !85)
!94 = distinct !{!94, !88, !95, !96}
!95 = !DILocation(line: 71, column: 17, scope: !82)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !DILocation(line: 72, column: 30, scope: !80)
!98 = !DILocation(line: 72, column: 17, scope: !80)
!99 = !DILocation(line: 73, column: 13, scope: !80)
!100 = !DILocation(line: 76, column: 1, scope: !9)
!101 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 83, type: !10, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: "data", scope: !101, file: !1, line: 85, type: !13)
!103 = !DILocation(line: 85, column: 12, scope: !101)
!104 = !DILocalVariable(name: "dataPtr1", scope: !101, file: !1, line: 86, type: !17)
!105 = !DILocation(line: 86, column: 13, scope: !101)
!106 = !DILocalVariable(name: "dataPtr2", scope: !101, file: !1, line: 87, type: !17)
!107 = !DILocation(line: 87, column: 13, scope: !101)
!108 = !DILocalVariable(name: "dataBuffer", scope: !101, file: !1, line: 88, type: !22)
!109 = !DILocation(line: 88, column: 10, scope: !101)
!110 = !DILocation(line: 89, column: 12, scope: !101)
!111 = !DILocation(line: 89, column: 10, scope: !101)
!112 = !DILocalVariable(name: "data", scope: !113, file: !1, line: 91, type: !13)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 90, column: 5)
!114 = !DILocation(line: 91, column: 16, scope: !113)
!115 = !DILocation(line: 91, column: 24, scope: !113)
!116 = !DILocation(line: 91, column: 23, scope: !113)
!117 = !DILocation(line: 93, column: 16, scope: !113)
!118 = !DILocation(line: 93, column: 9, scope: !113)
!119 = !DILocation(line: 94, column: 21, scope: !113)
!120 = !DILocation(line: 94, column: 10, scope: !113)
!121 = !DILocation(line: 94, column: 19, scope: !113)
!122 = !DILocalVariable(name: "data", scope: !123, file: !1, line: 97, type: !13)
!123 = distinct !DILexicalBlock(scope: !101, file: !1, line: 96, column: 5)
!124 = !DILocation(line: 97, column: 16, scope: !123)
!125 = !DILocation(line: 97, column: 24, scope: !123)
!126 = !DILocation(line: 97, column: 23, scope: !123)
!127 = !DILocalVariable(name: "i", scope: !128, file: !1, line: 99, type: !68)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 98, column: 9)
!129 = !DILocation(line: 99, column: 17, scope: !128)
!130 = !DILocalVariable(name: "n", scope: !128, file: !1, line: 99, type: !68)
!131 = !DILocation(line: 99, column: 20, scope: !128)
!132 = !DILocalVariable(name: "intVariable", scope: !128, file: !1, line: 99, type: !68)
!133 = !DILocation(line: 99, column: 23, scope: !128)
!134 = !DILocation(line: 100, column: 24, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !1, line: 100, column: 17)
!136 = !DILocation(line: 100, column: 17, scope: !135)
!137 = !DILocation(line: 100, column: 40, scope: !135)
!138 = !DILocation(line: 100, column: 17, scope: !128)
!139 = !DILocation(line: 103, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 101, column: 13)
!141 = !DILocation(line: 104, column: 24, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !1, line: 104, column: 17)
!143 = !DILocation(line: 104, column: 22, scope: !142)
!144 = !DILocation(line: 104, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 104, column: 17)
!146 = !DILocation(line: 104, column: 33, scope: !145)
!147 = !DILocation(line: 104, column: 31, scope: !145)
!148 = !DILocation(line: 104, column: 17, scope: !142)
!149 = !DILocation(line: 107, column: 32, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 105, column: 17)
!151 = !DILocation(line: 108, column: 17, scope: !150)
!152 = !DILocation(line: 104, column: 37, scope: !145)
!153 = !DILocation(line: 104, column: 17, scope: !145)
!154 = distinct !{!154, !148, !155, !96}
!155 = !DILocation(line: 108, column: 17, scope: !142)
!156 = !DILocation(line: 109, column: 30, scope: !140)
!157 = !DILocation(line: 109, column: 17, scope: !140)
!158 = !DILocation(line: 110, column: 13, scope: !140)
!159 = !DILocation(line: 113, column: 1, scope: !101)
!160 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 116, type: !10, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!161 = !DILocalVariable(name: "data", scope: !160, file: !1, line: 118, type: !13)
!162 = !DILocation(line: 118, column: 12, scope: !160)
!163 = !DILocalVariable(name: "dataPtr1", scope: !160, file: !1, line: 119, type: !17)
!164 = !DILocation(line: 119, column: 13, scope: !160)
!165 = !DILocalVariable(name: "dataPtr2", scope: !160, file: !1, line: 120, type: !17)
!166 = !DILocation(line: 120, column: 13, scope: !160)
!167 = !DILocalVariable(name: "dataBuffer", scope: !160, file: !1, line: 121, type: !22)
!168 = !DILocation(line: 121, column: 10, scope: !160)
!169 = !DILocation(line: 122, column: 12, scope: !160)
!170 = !DILocation(line: 122, column: 10, scope: !160)
!171 = !DILocalVariable(name: "data", scope: !172, file: !1, line: 124, type: !13)
!172 = distinct !DILexicalBlock(scope: !160, file: !1, line: 123, column: 5)
!173 = !DILocation(line: 124, column: 16, scope: !172)
!174 = !DILocation(line: 124, column: 24, scope: !172)
!175 = !DILocation(line: 124, column: 23, scope: !172)
!176 = !DILocalVariable(name: "dataLen", scope: !177, file: !1, line: 127, type: !35)
!177 = distinct !DILexicalBlock(scope: !172, file: !1, line: 125, column: 9)
!178 = !DILocation(line: 127, column: 20, scope: !177)
!179 = !DILocation(line: 127, column: 37, scope: !177)
!180 = !DILocation(line: 127, column: 30, scope: !177)
!181 = !DILocalVariable(name: "environment", scope: !177, file: !1, line: 128, type: !13)
!182 = !DILocation(line: 128, column: 20, scope: !177)
!183 = !DILocation(line: 128, column: 34, scope: !177)
!184 = !DILocation(line: 130, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 130, column: 17)
!186 = !DILocation(line: 130, column: 29, scope: !185)
!187 = !DILocation(line: 130, column: 17, scope: !177)
!188 = !DILocation(line: 133, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 131, column: 13)
!190 = !DILocation(line: 133, column: 30, scope: !189)
!191 = !DILocation(line: 133, column: 29, scope: !189)
!192 = !DILocation(line: 133, column: 39, scope: !189)
!193 = !DILocation(line: 133, column: 56, scope: !189)
!194 = !DILocation(line: 133, column: 55, scope: !189)
!195 = !DILocation(line: 133, column: 63, scope: !189)
!196 = !DILocation(line: 133, column: 17, scope: !189)
!197 = !DILocation(line: 134, column: 13, scope: !189)
!198 = !DILocation(line: 136, column: 21, scope: !172)
!199 = !DILocation(line: 136, column: 10, scope: !172)
!200 = !DILocation(line: 136, column: 19, scope: !172)
!201 = !DILocalVariable(name: "data", scope: !202, file: !1, line: 139, type: !13)
!202 = distinct !DILexicalBlock(scope: !160, file: !1, line: 138, column: 5)
!203 = !DILocation(line: 139, column: 16, scope: !202)
!204 = !DILocation(line: 139, column: 24, scope: !202)
!205 = !DILocation(line: 139, column: 23, scope: !202)
!206 = !DILocalVariable(name: "i", scope: !207, file: !1, line: 141, type: !68)
!207 = distinct !DILexicalBlock(scope: !202, file: !1, line: 140, column: 9)
!208 = !DILocation(line: 141, column: 17, scope: !207)
!209 = !DILocalVariable(name: "n", scope: !207, file: !1, line: 141, type: !68)
!210 = !DILocation(line: 141, column: 20, scope: !207)
!211 = !DILocalVariable(name: "intVariable", scope: !207, file: !1, line: 141, type: !68)
!212 = !DILocation(line: 141, column: 23, scope: !207)
!213 = !DILocation(line: 142, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 142, column: 17)
!215 = !DILocation(line: 142, column: 17, scope: !214)
!216 = !DILocation(line: 142, column: 40, scope: !214)
!217 = !DILocation(line: 142, column: 17, scope: !207)
!218 = !DILocation(line: 145, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 145, column: 21)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 143, column: 13)
!221 = !DILocation(line: 145, column: 23, scope: !219)
!222 = !DILocation(line: 145, column: 21, scope: !220)
!223 = !DILocation(line: 147, column: 33, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 146, column: 17)
!225 = !DILocation(line: 148, column: 28, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !1, line: 148, column: 21)
!227 = !DILocation(line: 148, column: 26, scope: !226)
!228 = !DILocation(line: 148, column: 33, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 148, column: 21)
!230 = !DILocation(line: 148, column: 37, scope: !229)
!231 = !DILocation(line: 148, column: 35, scope: !229)
!232 = !DILocation(line: 148, column: 21, scope: !226)
!233 = !DILocation(line: 151, column: 36, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 149, column: 21)
!235 = !DILocation(line: 152, column: 21, scope: !234)
!236 = !DILocation(line: 148, column: 41, scope: !229)
!237 = !DILocation(line: 148, column: 21, scope: !229)
!238 = distinct !{!238, !232, !239, !96}
!239 = !DILocation(line: 152, column: 21, scope: !226)
!240 = !DILocation(line: 153, column: 34, scope: !224)
!241 = !DILocation(line: 153, column: 21, scope: !224)
!242 = !DILocation(line: 154, column: 17, scope: !224)
!243 = !DILocation(line: 155, column: 13, scope: !220)
!244 = !DILocation(line: 158, column: 1, scope: !160)
!245 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_32_good", scope: !1, file: !1, line: 160, type: !10, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!246 = !DILocation(line: 162, column: 5, scope: !245)
!247 = !DILocation(line: 163, column: 5, scope: !245)
!248 = !DILocation(line: 164, column: 1, scope: !245)
